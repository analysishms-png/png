<?php

namespace App\Http\Controllers;

use App\Models\MallChargemast;
use App\Models\MallLeaseCommercial;
use App\Models\MallLeaseHdr;
use App\Models\MallLeaseDtl;
use App\Models\MallPartylocation;
use App\Models\MallShopmast;
use App\Models\MallUnittype;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use App\Models\Companyreg;
use App\Models\MallMeterReading;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use App\Jobs\SendEnviroNotificationJob;
use App\Services\ImageCompressionService;
use App\Services\NotificationCreatorService;

class MallManagement extends Controller
{
    protected $propertyid;
    protected $username;
    protected $ncurdate;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (!isset(Auth::user()->name)) {
                return redirect('/');
            }

            $this->username   = Auth::user()->name;
            $prpid            = Auth::user()->propertyid;
            $propertydata     = DB::table('users')->where('propertyid', $prpid)->first();
            $this->propertyid = $propertydata->propertyid;
            $this->ncurdate   = DB::table('enviro_general')
                ->where('propertyid', $this->propertyid)
                ->value('ncur');

            return $next($request);
        });
    }

    // 
    public function leaseagreemententry(Request $request)
    {
        // Floors from hkfloors master
        $floors = collect();
        if (DB::getSchemaBuilder()->hasTable('hkfloors')) {
            $floors = DB::table('hkfloors')
                ->where('propertyid', $this->propertyid)
                ->orderBy('name')
                ->get();
        }

        // Tenants from subgroup (party master group_code like 28{propertyid}% = SUNDRY DEBTORS)
        $tenants = collect();
        if (DB::getSchemaBuilder()->hasTable('subgroup')) {
            $tenants = DB::table('subgroup')
                ->where('propertyid', $this->propertyid)
                ->where('group_code', 'like', '28' . $this->propertyid . '%')
                ->orderBy('name')
                ->get(['sub_code', 'name']);
        }

        // Units from mall_shopmast if table exists
        $units = collect();
        if (DB::getSchemaBuilder()->hasTable('mall_shopmast')) {
            $units = DB::table('mall_shopmast')
                ->where('propertyid', $this->propertyid)
                ->where('activeyn', 1)
                ->orderBy('shopname')
                ->get();
        }

        // Unit Types from mall_unittype master (connected via unitype page)
        $unittypes = collect();
        if (DB::getSchemaBuilder()->hasTable('mall_unittype')) {
            $unittypes = MallUnittype::where('propertyid', $this->propertyid)
                ->where('activeyn', 1)
                ->orderBy('typename')
                ->get(['sn', 'typecode', 'typename']);
        }

        // Load existing record if sn passed (for edit)
        $lease = null;
        if ($request->has('sn') && $request->sn && DB::getSchemaBuilder()->hasTable('mall_lease_hdr')) {
            $lease = MallLeaseHdr::where('sn', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->first();
        }

        // Load lease detail (unittype lives here, not in header)
        $leasedtl = null;
        if ($lease && DB::getSchemaBuilder()->hasTable('mall_lease_dtl')) {
            $leasedtl = MallLeaseDtl::where('lease_id', $lease->sn)
                ->where('propertyid', $this->propertyid)
                ->first();
        }

        // Agreement No: existing lease pe usi ka no, naye lease pe agla serial pre-filled
        $agreementNo = null;
        $nextAgreementNo = null;
        if (DB::getSchemaBuilder()->hasTable('mall_lease_hdr')) {
            $agreementNo = ($lease && $lease->agreementno)
                ? $lease->agreementno
                : $this->nextAgreementNo(date('Y'));
            // Hamesha agla serial (naye lease / grey shop click ke liye)
            $nextAgreementNo = $this->nextAgreementNo(date('Y'));
        }

        // Saved Escalation rows for edit mode (RENT only)
        $escalations = collect();
        if ($lease && DB::getSchemaBuilder()->hasTable('mall_lease_escalation')) {
            $escalations = DB::table('mall_lease_escalation')
                ->where('leaseid', $lease->sn)
                ->where('propertyid', $this->propertyid)
                ->where('chargecode', 'RENT')
                ->orderBy('effectivefrom')
                ->get();
        }

        // Saved CAM escalation rows for edit mode (chargecode = CAM)
        $camescalations = collect();
        if ($lease && DB::getSchemaBuilder()->hasTable('mall_lease_escalation')) {
            $camescalations = DB::table('mall_lease_escalation')
                ->where('leaseid', $lease->sn)
                ->where('propertyid', $this->propertyid)
                ->where('chargecode', 'CAM')
                ->orderBy('sno')
                ->get();
        }

        // Saved Charges rows for edit mode
        $chargerows = collect();
        if ($lease && DB::getSchemaBuilder()->hasTable('mall_lease_charges')) {
            $chargerows = DB::table('mall_lease_charges')
                ->where('leaseid', $lease->sn)
                ->where('propertyid', $this->propertyid)
                ->orderBy('effectivefrom')
                ->get();
        }

        // All agreements list (bottom table) — tenant name + shop name ke saath
        $agreements = $this->buildAgreementsList();

        return view('property.mallmanagement.leaseagreemententry', [
            'floors'        => $floors,
            'tenants'       => $tenants,
            'units'         => $units,
            'unittypes'     => $unittypes,
            'lease'         => $lease,
            'leasedtl'      => $leasedtl,
            'agreementNo'   => $agreementNo,
            'nextAgreementNo' => $nextAgreementNo,
            'escalations'   => $escalations,
            'camescalations' => $camescalations,
            'chargerows'    => $chargerows,
            'agreements'    => $agreements,
            'username'      => $this->username,
            'ncurdate'      => $this->ncurdate,
            'propertyid'    => $this->propertyid,
        ]);
    }

    // Next Agreement No: AGR-YYYY-SSS (per property + year, unique serial)
    private function nextAgreementNo($year = null, $lock = false)
    {
        $year   = $year ?: date('Y');
        $prefix = 'AGR-' . $year . '-';

        $query = MallLeaseHdr::where('propertyid', $this->propertyid)
            ->where('agreementno', 'like', $prefix . '%');

        if ($lock) {
            $query->lockForUpdate();
        }

        $last = $query->orderByRaw('CAST(SUBSTRING_INDEX(agreementno, "-", -1) AS UNSIGNED) DESC')
            ->value('agreementno');

        $serial = 1;
        if ($last) {
            $serial = ((int) substr($last, strrpos($last, '-') + 1)) + 1;
        }

        return $prefix . str_pad($serial, 3, '0', STR_PAD_LEFT);
    }

    // Bottom "Agreements List": tenant + shop name ke saath, latest pehle
    private function buildAgreementsList()
    {
        if (!DB::getSchemaBuilder()->hasTable('mall_lease_hdr')) {
            return collect();
        }

        return DB::table('mall_lease_hdr')
            ->leftJoin('subgroup', function ($join) {
                $join->on('subgroup.sub_code', '=', 'mall_lease_hdr.tenantid')
                    ->on('subgroup.propertyid', '=', 'mall_lease_hdr.propertyid');
            })
            ->leftJoin('mall_shopmast', function ($join) {
                $join->on('mall_shopmast.sn', '=', 'mall_lease_hdr.unitid')
                    ->on('mall_shopmast.propertyid', '=', 'mall_lease_hdr.propertyid');
            })
            ->where('mall_lease_hdr.propertyid', $this->propertyid)
            ->select(
                'mall_lease_hdr.sn',
                'mall_lease_hdr.agreementno',
                'mall_lease_hdr.agreement_date',
                'mall_lease_hdr.leasecommencementdate',
                'mall_lease_hdr.leaseexpirydate',
                'mall_lease_hdr.leasestatus',
                'subgroup.name as tenant_name',
                'mall_shopmast.shopname as shop_name'
            )
            ->orderBy('mall_lease_hdr.sn', 'desc')
            ->get();
    }

    public function leasecommercialterms(Request $request)
    {
        $lease = null;
        $commercial = null;

        if ($request->has('sn') && $request->sn) {
            $lease = MallLeaseHdr::where('sn', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->first();

            // Load existing commercial term for edit mode (1 row per lease)
            $commercial = MallLeaseCommercial::where('leaseid', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->first();
        }

        // Chargeable area from shop master for the selected unit (fallback to lease detail)
        $chargeablearea = $lease->chargeablearea ?? 0;
        if ($lease && $lease->unitid && DB::getSchemaBuilder()->hasTable('mall_shopmast')) {
            $shop = DB::table('mall_shopmast')
                ->where('propertyid', $this->propertyid)
                ->where('sn', $lease->unitid)
                ->first();
            if ($shop) {
                $chargeablearea = $shop->chargeablearea ?? $chargeablearea;
            }
        }

        // Charges from mall_chargemast master (connected via chargesmaster page)
        $charges = collect();
        if (DB::getSchemaBuilder()->hasTable('mall_chargemast')) {
            $charges = MallChargemast::where('propertyid', $this->propertyid)
                ->where('activeyn', 1)
                ->orderBy('chargename')
                ->get();
        }

        return view('property.mallmanagement.leasecommercialterms', [
            'lease'          => $lease,
            'commercial'     => $commercial,
            'chargeablearea' => $chargeablearea,
            'charges'        => $charges,
            'username'       => $this->username,
            'ncurdate'       => $this->ncurdate,
            'propertyid'     => $this->propertyid,
        ]);
    }

    // Save lease agreement (header + detail) from entry form
    public function leaseagreementsave(Request $request)
    {
        if ($request->has('duedateofmonth') && !$request->filled('duedateofmonth')) {
            $request->merge(['duedateofmonth' => null]);
        }

        $request->validate([
            'tenantid'             => 'required',
            'unitid'               => 'required',
            'leasecommencementdate' => 'required|date',
            'leaseexpirydate'      => 'required|date',
            'duedateofmonth'       => 'nullable|integer|min:1|max:31',
        ]);

        try {
            $existingSn = $request->sn;

            $data = [
                'propertyid'             => $this->propertyid,
                'floorid'                => $request->floorid ?: null,
                'unitid'                 => $request->unitid,
                'tenantid'               => $request->tenantid,
                'leasetype'              => $request->leasetype ?? 'NEW',
                'leasestatus'            => $request->leasestatus ?? 'DRAFT',
                'loino'                  => $request->loino ?: null,
                'loidate'                => $request->loidate ?: null,
                'agreementno'            => $request->agreementno ?: null,
                'agreement_date'         => $request->agreement_date ?: null,
                'commercialmodel'        => $request->commercialmodel ?: null,
                'leasecommencementdate'  => $request->leasecommencementdate,
                'leaseexpirydate'        => $request->leaseexpirydate,
                'lockinstartdate'        => $request->lockinstartdate ?: null,
                'lockinenddate'          => $request->lockinenddate ?: null,
                'possessiondate'         => $request->possessiondate ?: null,
                'fitoutstartdate'        => $request->fitoutstartdate ?: null,
                'fitout_completion_date' => $request->fitout_completion_date ?: null,
                'storeopeningdate'       => $request->storeopeningdate ?: null,
                'moveindate'             => $request->moveindate ?: null,
                'noticeperioddays'       => $request->noticeperioddays ?? 0,
                'renewalrequired'        => $request->has('renewalrequired') ? 1 : 0,
                'renewaldate'            => $request->renewaldate ?: null,
                'remarks'                => $request->remarks ?: null,
                'billingcycle'           => $request->billingcycle ?: 'MONTHLY',
                'billingstartfrom'       => $request->billingstartfrom ?: null,
                'duedateofmonth'         => $request->duedateofmonth ?: null,
                'U_name'                 => Auth::id(),
                'u_ae'                   => $existingSn ? 'E' : 'A',
                'U_entdt'               => now(),
                'activeyn'               => 1,
            ];

            [$data, $skippedHdr] = $this->onlyExistingColumns($data, 'mall_lease_hdr');
            $skipped = $skippedHdr;

            if ($existingSn) {
                // Update Eloquent
                $lease = MallLeaseHdr::where('sn', $existingSn)
                    ->where('propertyid', $this->propertyid)
                    ->firstOrFail();

                // Agreement No immutable — sirf wahi rahega jo pehle mila tha
                $data['agreementno'] = $lease->agreementno;

                $lease->update($data);

                $sn      = $existingSn;
                $leaseno = $lease->fresh()->leaseno;
                $message = 'Lease Agreement updated successfully.';

                // Update detail record (updateOrCreate: safe even if row missing)
                $dtlData = [
                    'floorid'            => $request->floorid ?: null,
                    'unitid'             => $request->unitid,
                    'unittype'           => $request->unittype ?: null,
                    'carpetarea'         => $request->carpetarea ?: 0,
                    'chargeablearea'     => $request->chargeablearea ?: 0,
                    'renttype'           => $request->renttype ?: 'FIXED_SQFT',
                    'rentbasis'          => $request->rentbasis ?: 'PER_SQFT',
                    'rentrate'           => $request->rentrate ?? 0,
                    'minimumrent'        => $request->minimumrent ?? 0,
                    'currentrent'        => $request->currentrent ?? 0,
                    'effectivefrom'      => $request->leasecommencementdate ?: null,
                    'effectiveto'        => $request->leaseexpirydate ?: null,
                    'u_ae'               => 'E',
                    'u_name'             => Auth::id(),
                    'u_entdt'            => now(),
                ];
                [$dtlData, $skippedDtl] = $this->onlyExistingColumns($dtlData, 'mall_lease_dtl');

                MallLeaseDtl::updateOrCreate(
                    [
                        'lease_id'     => $sn,
                        'propertyid'   => $this->propertyid,
                    ],
                    $dtlData
                );

                $skipped = array_merge($skipped, $skippedDtl);
            } else {
                // Insert auto code + leaseno + unique agreement no (transaction + lock)
                $leaseOut = DB::transaction(function () use ($data, $request) {
                    $lastCode = MallLeaseHdr::where('propertyid', $this->propertyid)->max('code') ?? 0;
                    $code     = $lastCode + 1;
                    $leaseno  = 'AGR/' . date('Y') . '/' . str_pad($code, 4, '0', STR_PAD_LEFT);

                    $data['code']             = $code;
                    $data['leaseno']          = $leaseno;
                    $data['agreementno']      = $this->nextAgreementNo(date('Y'), true);
                    $data['approvalstatus']   = 'PENDING';

                    $lease = MallLeaseHdr::create($data);
                    $sn    = $lease->sn;

                    // Insert detail record
                    $dtlData = [
                        'lease_id'           => $sn,
                        'propertyid'         => $this->propertyid,
                        'floorid'            => $request->floorid ?: null,
                        'unitid'             => $request->unitid,
                        'unittype'           => $request->unittype ?: null,
                        'carpetarea'         => $request->carpetarea ?: 0,
                        'builtuparea'        => 0,
                        'chargeablearea'     => $request->chargeablearea ?: 0,
                        'areaunit'           => 'SQFT',
                        'frontage'           => 0,
                        'ceilingheight'      => 0,
                        'possession_status'  => 'PENDING',
                        'fitoutstatus'       => 'PENDING',
                        'storestatus'        => 'NOT_OPEN',
                        'renttype'           => $request->renttype ?: 'FIXED_SQFT',
                        'rentbasis'          => $request->rentbasis ?: 'PER_SQFT',
                        'rentrate'           => $request->rentrate ?? 0,
                        'minimumrent'        => $request->minimumrent ?? 0,
                        'currentrent'        => $request->currentrent ?? 0,
                        'effectivefrom'      => $request->leasecommencementdate ?: null,
                        'effectiveto'        => $request->leaseexpirydate ?: null,
                        'remarks'            => $request->remarks ?: null,
                        'u_ae'               => 'A',
                        'u_name'             => Auth::id(),
                        'u_entdt'            => now(),
                        'activeyn'           => 1,
                    ];
                    [$dtlData, $skippedDtl] = $this->onlyExistingColumns($dtlData, 'mall_lease_dtl');

                    MallLeaseDtl::create($dtlData);

                    return [$lease, $sn, $leaseno, $dtlData['unittype'] ?? null, $skippedDtl];
                });

                $lease   = $leaseOut[0];
                $sn      = $leaseOut[1];
                $leaseno = $leaseOut[2];
                $skipped = array_merge($skipped, $leaseOut[4]);
                $message = 'Lease Agreement saved successfully.';
            }

            // In menu me jo Escalation + Charges rows hain unhe tables me sync karo (delete + re-insert)
            $this->syncEscalation($sn, $request);
            $this->syncCamEscalation($sn, $request);
            $this->syncCharges($sn, $request);

            return response()->json([
                'success'        => true,
                'message'        => $message,
                'sn'             => $sn,
                'leaseno'        => $leaseno ?? '',
                'leasestatus'    => $request->leasestatus ?? 'DRAFT',
                'data_not_saved' => array_values(array_unique($skipped)),
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: ' . $e->getMessage(),
            ]);
        }
    }

    // Escalation Schedule rows → mall_lease_escalation (delete + re-insert)
    private function syncEscalation($leaseid, Request $request)
    {
        $tbl = 'mall_lease_escalation';
        if (!DB::getSchemaBuilder()->hasTable($tbl)) {
            return;
        }

        DB::table($tbl)->where('leaseid', $leaseid)
            ->where('propertyid', $this->propertyid)
            ->delete();

        $eff     = array_values($request->input('esc_effectivefrom', []));
        $months  = array_values($request->input('esc_aftermonths', []));
        $types   = array_values($request->input('esc_increasetype', []));
        $values  = array_values($request->input('esc_increasevalue', []));
        $newrate = array_values($request->input('esc_newrate', []));
        $newrent = array_values($request->input('esc_newmonthlyrent', []));

        $area  = $request->chargeablearea ?: 0;
        $rate0 = $request->rentrate ?? 0;
        $rent0 = $request->currentrent ?? ($rate0 * $area);

        $rows = [];
        $prevRate  = $rate0;
        $prevRent  = $rent0;
        $sno       = 0;
        foreach ($eff as $i => $from) {
            if (!$from) {
                continue;
            }
            $sno++;
            $type = $types[$i] ?? 'Percentage';
            $val  = (float) ($values[$i] ?? 0);
            $rows[] = [
                'propertyid'      => $this->propertyid,
                'leaseid'         => $leaseid,
                'chargecode'      => 'RENT',
                'sno'             => $sno,
                'effectivefrom'   => $from,
                'effectiveto'     => $request->leaseexpirydate ?: null,
                'aftermonths'     => (int) ($months[$i] ?? 0),
                'increasetype'    => $type ?: 'Percentage',
                'increasepercent' => $type === 'Percentage' ? $val : 0,
                'increaseamount'  => $type === 'Fixed Amount' ? $val : 0,
                'oldrate'         => $prevRate,
                'newrate'         => (float) ($newrate[$i] ?? 0),
                'oldamount'       => $prevRent,
                'newamount'       => (float) ($newrent[$i] ?? 0),
                'area'            => $area,
                'u_name'          => $this->username,
                'u_entdt'         => now(),
                'u_updatedby'     => $this->username,
                'u_updatedt'      => now(),
            ];
            $prevRate = (float) ($newrate[$i] ?? 0);
            $prevRent = (float) ($newrent[$i] ?? 0);
        }

        if ($rows) {
            DB::table($tbl)->insert($rows);
        }
    }

    // CAM (Common Area Maintenance) Schedule rows → mall_lease_escalation (chargecode = CAM, delete + re-insert)
    private function syncCamEscalation($leaseid, Request $request)
    {
        $tbl = 'mall_lease_escalation';
        if (!DB::getSchemaBuilder()->hasTable($tbl)) {
            return;
        }

        DB::table($tbl)->where('leaseid', $leaseid)
            ->where('propertyid', $this->propertyid)
            ->where('chargecode', 'CAM')
            ->delete();

        $eff     = array_values($request->input('cam_effectivefrom', []));
        $months  = array_values($request->input('cam_aftermonths', []));
        $types   = array_values($request->input('cam_increasetype', []));
        $values  = array_values($request->input('cam_increasevalue', []));
        $newrate = array_values($request->input('cam_newrate', []));
        $newamt  = array_values($request->input('cam_newamount', []));

        $area = $request->chargeablearea ?: 0;

        $rows     = [];
        $prevRate = 0;
        $prevAmt  = 0;
        $sno      = 0;
        foreach ($eff as $i => $from) {
            if (!$from) {
                continue;
            }
            $sno++;
            $type = $types[$i] ?? 'Percentage';
            $val  = (float) ($values[$i] ?? 0);
            $rows[] = [
                'propertyid'      => $this->propertyid,
                'leaseid'         => $leaseid,
                'chargecode'      => 'CAM',
                'sno'             => $sno,
                'effectivefrom'   => $from,
                'effectiveto'     => $request->leaseexpirydate ?: null,
                'aftermonths'     => (int) ($months[$i] ?? 0),
                'increasetype'    => $type ?: 'Percentage',
                'increasepercent' => $type === 'Percentage' ? $val : 0,
                'increaseamount'  => $type === 'Fixed Amount' ? $val : 0,
                'oldrate'         => $prevRate,
                'newrate'         => (float) ($newrate[$i] ?? 0),
                'oldamount'       => $prevAmt,
                'newamount'       => (float) ($newamt[$i] ?? 0),
                'area'            => $area,
                'u_name'          => $this->username,
                'u_entdt'         => now(),
                'u_updatedby'     => $this->username,
                'u_updatedt'      => now(),
            ];
            $prevRate = (float) ($newrate[$i] ?? 0);
            $prevAmt  = (float) ($newamt[$i] ?? 0);
        }

        if ($rows) {
            DB::table($tbl)->insert($rows);
        }
    }

    // Charges Summary rows → mall_lease_charges (delete + re-insert)
    private function syncCharges($leaseid, Request $request)
    {
        $tbl = 'mall_lease_charges';
        if (!DB::getSchemaBuilder()->hasTable($tbl)) {
            return;
        }

        DB::table($tbl)->where('leaseid', $leaseid)
            ->where('propertyid', $this->propertyid)
            ->delete();

        $codes   = array_values($request->input('chg_chargecode', []));
        $names   = array_values($request->input('chg_chargename', []));
        $methods = array_values($request->input('chg_calculationmethod', []));
        $basis   = array_values($request->input('chg_basis', []));
        $rates   = array_values($request->input('chg_rate', []));
        $amounts = array_values($request->input('chg_amount', []));
        $cycles  = array_values($request->input('chg_billingcycle', []));
        $efff    = array_values($request->input('chg_effectivefrom', []));
        $efft    = array_values($request->input('chg_effectiveto', []));

        $area = $request->chargeablearea ?: 0;

        $rows = [];
        foreach ($codes as $i => $code) {
            if (!$code) {
                continue;
            }
            $rows[] = [
                'propertyid'        => $this->propertyid,
                'leaseid'           => $leaseid,
                'chargecode'        => $code,
                'chargename'        => $names[$i] ?? null,
                'calculationmethod' => $methods[$i] ?? null,
                'basis'             => $basis[$i] ?? null,
                'area'              => $area,
                'rate'              => (float) ($rates[$i] ?? 0),
                'amount'            => (float) ($amounts[$i] ?? 0),
                'billingcycle'      => $cycles[$i] ?? 'MONTHLY',
                'gstapplicable'     => 1,
                'gstpercent'        => 0,
                'effectivefrom'     => $efff[$i] ?? $request->leasecommencementdate,
                'effectiveto'       => $efft[$i] ?? $request->leaseexpirydate,
                'u_name'            => $this->username,
                'u_entdt'           => now(),
                'u_updatedby'       => $this->username,
                'u_updatedt'        => now(),
            ];
        }

        if ($rows) {
            DB::table($tbl)->insert($rows);
        }
    }

    // 
    public function leasecommercialterms_save(Request $request)
    {
        // Lease header (sn) required this links the commercial terms to the lease
        $lease = MallLeaseHdr::where('sn', $request->sn)
            ->where('propertyid', $this->propertyid)
            ->first();

        if (!$lease) {
            return response()->json([
                'success' => false,
                'message' => 'Lease agreement not found. Please save the agreement first.',
            ]);
        }

        try {
            // Chargeable area from shop master for the selected unit
            $chargeablearea = 0;
            if ($lease->unitid && DB::getSchemaBuilder()->hasTable('mall_shopmast')) {
                $shop = DB::table('mall_shopmast')
                    ->where('propertyid', $this->propertyid)
                    ->where('sn', $lease->unitid)
                    ->first();
                $chargeablearea = $shop->chargeablearea ?? 0;
            }

            $data = [
                'leaseid'            => $lease->sn,
                'propertyid'         => $this->propertyid,
                'shopid'             => $lease->unitid,
                'tenantid'           => $lease->tenantid,
                'commercialmodel'    => $lease->commercialmodel ?: 'GENERAL',
                'rent_basis'         => $request->rent_basis,
                'chargeablearea'     => $chargeablearea,
                'areaunit'           => 'SQFT',
                'rentrate'           => $request->rentrate ?? 0,
                'monthlyrent'        => $request->current_monthly_rent ?? 0,
                'mgamount'           => $request->min_monthly_rent ?? 0,
                'revenuesharepercent' => $request->revenuesharepercent ?? 0,
                'turnoverbasis'      => $request->turnoverbasis,
                'rentfree_to'        => $request->rentfree_to ?: null,
                'fitout_period_to'   => $request->fitout_period_to ?: null,
                'due_day'            => $request->due_day_of_month ?? 10,
                'review_basis'       => $request->review_basis,
                'grace_period_days'  => $request->grace_period_days ?? 5,
                'payment_mode'       => $request->payment_mode,
                'late_interest_type' => $request->late_interest_type,
                'late_interest_pct'  => $request->late_interest_pct ?? 0,
                'interest_calculation' => $request->interest_calculation,
                'interest_start_from'  => $request->interest_start_from,
                'security_deposit_adj' => $request->security_deposit_adj,
                'fixedamount'        => $request->fixedamount ?? 0,
                'effectivefrom'      => $lease->leasecommencementdate,
                'effectiveto'        => $lease->leaseexpirydate,
                'billingfrequency'   => $request->billing_cycle,
                'remarks'            => $request->remarks,
                'u_name'             => Auth::id(),
                'u_entdt'            => now(),
                'activeyn'           => 1,
            ];

            [$data, $skipped] = $this->onlyExistingColumns($data, 'mall_lease_commercial');

            // 1 row per lease insert if none, update if exists
            $existing = MallLeaseCommercial::where('leaseid', $lease->sn)
                ->where('propertyid', $this->propertyid)
                ->first();

            if ($existing) {
                $data['u_ae'] = 'U';
                $existing->update($data);
                $message = 'Commercial Terms updated successfully.';
            } else {
                $data['u_ae'] = 'I';
                MallLeaseCommercial::create($data);
                $message = 'Commercial Terms saved successfully.';
            }

            return response()->json([
                'success'        => true,
                'message'        => $message,
                'data_not_saved' => $skipped,
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: ' . $e->getMessage(),
            ]);
        }
    }

    //
    public function getunitbyfloor(Request $request)
    {
        if (!DB::getSchemaBuilder()->hasTable('mall_shopmast')) {
            return response()->json([]);
        }

        $units = DB::table('mall_shopmast')
            ->where('propertyid', $this->propertyid)
            ->where('floorid', $request->floorid)
            ->where('activeyn', 1)
            ->orderBy('shopname')
            ->get(['sn', 'shopcode', 'shopname', 'floorid', 'shoptype', 'carpetarea', 'builtuparea', 'chargeablearea']);

        return response()->json($units);
    }

    // Fetch shop/unit details from mall_shopmast (shop master) for auto-fill on unit select
    public function getshop(Request $request)
    {
        $shop = null;
        if (DB::getSchemaBuilder()->hasTable('mall_shopmast')) {
            $shop = DB::table('mall_shopmast')
                ->where('propertyid', $this->propertyid)
                ->where('sn', $request->sn)
                ->first();
        }

        return response()->json($shop ?: []);
    }

    // Fetch tenant details from subgroup master for auto-fill on tenant select
    public function gettenant(Request $request)
    {
        $tenant = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->where('sub_code', $request->tenantid)
            ->first(['sub_code', 'name', 'conperson', 'mobile', 'email', 'address', 'panno', 'gstin', 'tradename']);

        $data = $tenant ? (array) $tenant : [];

        // Tenant ka previous agreement no (latest lease) — sirf jaankari ke liye
        $data['prev_agreementno'] = null;
        if (DB::getSchemaBuilder()->hasTable('mall_lease_hdr')) {
            $prev = MallLeaseHdr::where('propertyid', $this->propertyid)
                ->where('tenantid', $request->tenantid)
                ->whereNotNull('agreementno')
                ->orderBy('sn', 'desc')
                ->value('agreementno');
            $data['prev_agreementno'] = $prev;
        }

        return response()->json($data);
    }

    // Tenant Shop Panel — tenant ki saari shops + har shop ka lease status
    public function gettenantshops(Request $request)
    {
        $tenantcode = $request->tenantcode;
        $shops = collect();

        if (
            $tenantcode
            && DB::getSchemaBuilder()->hasTable('mall_partylocation')
            && DB::getSchemaBuilder()->hasTable('mall_shopmast')
        ) {

            // 1) Tenant Location setup se tenant ki mapped shops (DISTINCT)
            $shops = DB::table('mall_partylocation as pl')
                ->join('mall_shopmast as sh', function ($j) {
                    $j->on('sh.shopcode', '=', 'pl.shopcode')
                        ->on('sh.propertyid', '=', 'pl.propertyid');
                })
                ->leftJoin('hkfloors as f', 'f.id', '=', 'sh.floorid')
                ->where('pl.propertyid', $this->propertyid)
                ->where('pl.tenantcode', $tenantcode)
                ->where('pl.activeyn', 1)
                ->where('sh.activeyn', 1)
                ->orderBy('sh.shopcode')
                ->select(
                    'sh.sn',
                    'sh.shopcode',
                    'sh.shopname',
                    'sh.floorid',
                    'f.name as floorname',
                    'sh.chargeablearea',
                    'sh.shoptype'
                )
                ->distinct()
                ->get();

            // 2) FALLBACK — mapping na ho to tenant ki existing leases wali shops bhi dikhao
            $mappedSn = $shops->pluck('sn');
            $leased = DB::table('mall_lease_hdr')
                ->join('mall_shopmast as sh', function ($j) {
                    $j->on('sh.sn', '=', 'mall_lease_hdr.unitid')
                        ->on('sh.propertyid', '=', 'mall_lease_hdr.propertyid');
                })
                ->leftJoin('hkfloors as f', 'f.id', '=', 'sh.floorid')
                ->where('mall_lease_hdr.propertyid', $this->propertyid)
                ->where('mall_lease_hdr.tenantid', $tenantcode)
                ->where('mall_lease_hdr.activeyn', 1)
                ->select(
                    'sh.sn',
                    'sh.shopcode',
                    'sh.shopname',
                    'sh.floorid',
                    'f.name as floorname',
                    'sh.chargeablearea',
                    'sh.shoptype'
                )
                ->get();

            foreach ($leased as $ls) {
                if (!$mappedSn->contains($ls->sn)) {
                    $shops->push($ls);
                }
            }
        }

        // Har shop ka latest lease check
        $result = [];
        foreach ($shops as $shop) {
            $lease = null;
            if (DB::getSchemaBuilder()->hasTable('mall_lease_hdr')) {
                $lease = DB::table('mall_lease_hdr')
                    ->where('propertyid', $this->propertyid)
                    ->where('tenantid', $tenantcode)
                    ->where('unitid', $shop->sn)
                    ->where('activeyn', 1)
                    ->orderBy('sn', 'desc')
                    ->first(['sn', 'agreementno', 'leasestatus']);
            }

            $result[] = [
                'sn'             => $shop->sn,
                'shopcode'       => $shop->shopcode,
                'shopname'       => $shop->shopname,
                'floorname'      => $shop->floorname ?? null,
                'chargeablearea' => $shop->chargeablearea,
                'shoptype'       => $shop->shoptype,
                'lease_sn'       => $lease ? $lease->sn : null,
                'agreementno'    => $lease ? $lease->agreementno : null,
                'leasestatus'    => $lease ? $lease->leasestatus : null,
                'has_lease'      => (bool) $lease,
            ];
        }

        return response()->json($result);
    }

    // Charges Summary source — tenant+shop ki mapped charges mall_partylocation se
    public function getpartylocationcharges(Request $request)
    {
        $tenantcode = $request->tenantcode;
        $unitid     = $request->unitid;

        $charges = collect();
        if (
            $tenantcode && $unitid
            && DB::getSchemaBuilder()->hasTable('mall_partylocation')
            && DB::getSchemaBuilder()->hasTable('mall_shopmast')
            && DB::getSchemaBuilder()->hasTable('mall_chargemast')
        ) {

            $charges = DB::table('mall_partylocation as pl')
                ->join('mall_shopmast as sh', function ($j) {
                    $j->on('sh.shopcode', '=', 'pl.shopcode')
                        ->on('sh.propertyid', '=', 'pl.propertyid');
                })
                ->leftJoin('mall_chargemast as cm', function ($j) {
                    $j->on('cm.chargecode', '=', 'pl.servicecode')
                        ->on('cm.propertyid', '=', 'pl.propertyid');
                })
                ->where('pl.propertyid', $this->propertyid)
                ->where('pl.tenantcode', $tenantcode)
                ->where('sh.sn', $unitid)
                ->where('pl.activeyn', 1)
                ->orderBy('pl.sno')
                ->select(
                    'pl.servicecode as chargecode',
                    'cm.chargename',
                    'cm.calculationbasis',
                    'cm.billingfrequency'
                )
                ->distinct()
                ->get();
        }

        return response()->json($charges);
    }

    // ─── Shop Master ─────────────────────────────────────────────────────────
    public function shopmaster()
    {
        $floors = collect();
        if (DB::getSchemaBuilder()->hasTable('hkfloors')) {
            $floors = DB::table('hkfloors')
                ->where('propertyid', $this->propertyid)
                ->orderBy('name')
                ->get();
        }

        $unittypes = collect();
        if (DB::getSchemaBuilder()->hasTable('mall_unittype')) {
            $unittypes = MallUnittype::where('propertyid', $this->propertyid)
                ->where('activeyn', 1)
                ->orderBy('typename')
                ->get(['sn', 'typecode', 'typename']);
        }

        $unitdata = collect();
        if (DB::getSchemaBuilder()->hasTable('unitmast')) {
            $unitdata = DB::table('unitmast')
                ->where('propertyid', $this->propertyid)
                ->where('activeYN', 'Y')
                ->orderBy('name', 'ASC')
                ->get(['ucode', 'name']);
        }

        $data = MallShopmast::where('propertyid', $this->propertyid)
            ->orderBy('shopcode')
            ->get();

        return view('property.mallmanagement.shopmaster', [
            'data'       => $data,
            'floors'     => $floors,
            'unittypes'  => $unittypes,
            'unitdata'   => $unitdata,
            'username'   => $this->username,
            'ncurdate'   => $this->ncurdate,
            'propertyid' => $this->propertyid,
        ]);
    }

    public function shopmasterstore(Request $request)
    {
        $request->validate([
            'shopname'          => 'nullable|max:150',
            'shoptype'          => 'nullable|max:50',
            'businesscategory'  => 'nullable|max:100',
            'carpetarea'        => 'nullable|numeric',
            'builtuparea'       => 'nullable|numeric',
            'chargeablearea'    => 'nullable|numeric',
            'areaunit'          => 'nullable|string|max:20',
            'frontage'          => 'nullable|numeric',
            'ceilingheight'     => 'nullable|numeric',
            'shopstatus'        => 'nullable|string|max:30',
            'electricitymeterno' => 'nullable|string|max:50',
            'activeyn'          => 'nullable|in:0,1',
        ]);

        // Auto-generate shopcode: sequence prefix + propertyid  e.g. 1103, 2103, 3103
        $lastCode = MallShopmast::where('propertyid', $this->propertyid)
            ->orderByRaw('shopcode * 1 DESC')
            ->value('shopcode');
        $shopcode = $lastCode ? ((int)substr($lastCode, 0, -strlen((string) $this->propertyid)) + 1) . $this->propertyid : '1' . $this->propertyid;

        try {
            MallShopmast::create([
                'propertyid'         => $this->propertyid,
                'floorid'            => $request->floorid ?: null,
                'shopcode'           => $shopcode,
                'shopname'           => strtoupper($request->shopname) ?: null,
                'shoptype'           => $request->shoptype ?: null,
                'businesscategory'   => strtoupper($request->businesscategory) ?: null,
                'carpetarea'         => $request->carpetarea ?? 0,
                'builtuparea'        => $request->builtuparea ?? 0,
                'chargeablearea'     => $request->chargeablearea ?? 0,
                'areaunit'           => $request->areaunit ?: 'SQFT',
                'frontage'           => $request->frontage ?? 0,
                'ceilingheight'      => $request->ceilingheight ?? 0,
                'shopstatus'         => $request->shopstatus ?: 'VACANT',
                'electricitymeterno' => strtoupper($request->electricitymeterno) ?: null,
                'u_name'             => Auth::id(),
                'u_entdt'            => now(),
                'u_ae'               => 'A',
                'activeyn'           => $request->activeyn === '0' ? 0 : 1,
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Shop created successfully.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: ' . $e->getMessage(),
            ]);
        }
    }

    public function shopmasterupdate(Request $request)
    {
        $request->validate([
            'sn'                => 'required|numeric',
            'shopname'          => 'nullable|max:150',
            'shoptype'          => 'nullable|max:50',
            'businesscategory'  => 'nullable|max:100',
            'carpetarea'        => 'nullable|numeric',
            'builtuparea'       => 'nullable|numeric',
            'chargeablearea'    => 'nullable|numeric',
            'areaunit'          => 'nullable|string|max:20',
            'frontage'          => 'nullable|numeric',
            'ceilingheight'     => 'nullable|numeric',
            'shopstatus'        => 'nullable|string|max:30',
            'electricitymeterno' => 'nullable|string|max:50',
            'activeyn'          => 'nullable|in:0,1',
        ]);

        try {
            $shop = MallShopmast::where('sn', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->firstOrFail();

            $shop->update([
                'floorid'            => $request->floorid ?: null,
                'shopname'           => strtoupper($request->shopname) ?: null,
                'shoptype'           => $request->shoptype ?: null,
                'businesscategory'   => strtoupper($request->businesscategory) ?: null,
                'carpetarea'         => $request->carpetarea ?? 0,
                'builtuparea'        => $request->builtuparea ?? 0,
                'chargeablearea'     => $request->chargeablearea ?? 0,
                'areaunit'           => $request->areaunit ?: 'SQFT',
                'frontage'           => $request->frontage ?? 0,
                'ceilingheight'      => $request->ceilingheight ?? 0,
                'shopstatus'         => $request->shopstatus ?: 'VACANT',
                'electricitymeterno' => strtoupper($request->electricitymeterno) ?: null,
                'u_name'             => Auth::id(),
                'u_entdt'            => now(),
                'u_ae'               => 'U',
                'activeyn'           => $request->activeyn === '0' ? 0 : 1,
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Shop updated successfully.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: ' . $e->getMessage(),
            ]);
        }
    }

    public function shopmasterdelete($sn)
    {
        try {
            $shop = MallShopmast::where('sn', $sn)
                ->where('propertyid', $this->propertyid)
                ->firstOrFail();

            $shop->delete();

            return response()->json([
                'success' => true,
                'message' => 'Shop deleted successfully.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: ' . $e->getMessage(),
            ]);
        }
    }

    public function exportShopmasterExcel()
    {
        try {
            $data = MallShopmast::where('propertyid', $this->propertyid)
                ->orderBy('shopcode')
                ->get();

            $company   = Companyreg::where('propertyid', $this->propertyid)->first();
            $compName  = $company->comp_name ?? 'Shop Master Report';

            $spreadsheet = new Spreadsheet();
            $sheet       = $spreadsheet->getActiveSheet();
            $sheet->setTitle('Shop Master');

            $lastCol = 'P';

            // Row 1: Company Name
            $sheet->mergeCells('A1:' . $lastCol . '1');
            $sheet->setCellValue('A1', $compName);
            $sheet->getStyle('A1')->applyFromArray([
                'font'      => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 2: Report Title
            $sheet->mergeCells('A2:' . $lastCol . '2');
            $sheet->setCellValue('A2', 'Shop Master Report');
            $sheet->getStyle('A2')->applyFromArray([
                'font'      => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 3: Date
            $sheet->mergeCells('A3:' . $lastCol . '3');
            $sheet->setCellValue('A3', 'Generated on: ' . date('d/m/Y h:i A'));
            $sheet->getStyle('A3')->applyFromArray([
                'font'      => ['size' => 10],
                'alignment' => ['horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 5: Headers
            $headers = [
                '#',
                'Shop Code',
                'Shop Name',
                'Shop Type',
                'Business Category',
                'Carpet Area',
                'Built-up Area',
                'Chargeable Area',
                'Area Unit',
                'Frontage',
                'Ceiling Height',
                'Shop Status',
                'Electricity Meter No',
                'Active'
            ];
            $headerRow = 5;
            foreach ($headers as $i => $h) {
                $col = \PhpOffice\PhpSpreadsheet\Cell\Coordinate::stringFromColumnIndex($i + 1);
                $sheet->setCellValue($col . $headerRow, $h);
            }
            $sheet->getStyle('A' . $headerRow . ':' . $lastCol . $headerRow)->applyFromArray([
                'font'      => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill'      => ['fillType' => \PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
                'alignment' => [
                    'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER,
                    'vertical'   => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER
                ],
                'borders'   => ['allBorders' => ['borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN]],
            ]);

            // Data Rows
            $currentRow = $headerRow + 1;
            foreach ($data as $i => $row) {
                $sheet->setCellValue('A' . $currentRow, $i + 1);
                $sheet->setCellValue('B' . $currentRow, $row->shopcode);
                $sheet->setCellValue('C' . $currentRow, $row->shopname);
                $sheet->setCellValue('D' . $currentRow, $row->shoptype);
                $sheet->setCellValue('E' . $currentRow, $row->businesscategory);
                $sheet->setCellValue('F' . $currentRow, $row->carpetarea);
                $sheet->setCellValue('G' . $currentRow, $row->builtuparea);
                $sheet->setCellValue('H' . $currentRow, $row->chargeablearea);
                $sheet->setCellValue('I' . $currentRow, $row->areaunit);
                $sheet->setCellValue('J' . $currentRow, $row->frontage);
                $sheet->setCellValue('K' . $currentRow, $row->ceilingheight);
                $sheet->setCellValue('L' . $currentRow, $row->shopstatus);
                $sheet->setCellValue('M' . $currentRow, $row->electricitymeterno);
                $sheet->setCellValue('N' . $currentRow, $row->activeyn == 1 ? 'Active' : 'Inactive');

                $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)->applyFromArray([
                    'borders'   => ['allBorders' => [
                        'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                        'color'       => ['argb' => 'FFDDDDDD']
                    ]],
                    'alignment' => ['horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER],
                ]);
                if ($i % 2 === 1) {
                    $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)
                        ->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)
                        ->getStartColor()->setARGB('FFF2F2F2');
                }
                $sheet->getStyle('B' . $currentRow)->getAlignment()
                    ->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT);
                $sheet->getStyle('C' . $currentRow)->getAlignment()
                    ->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT);

                $currentRow++;
            }

            // Column widths
            $sheet->getColumnDimension('A')->setWidth(5);
            $sheet->getColumnDimension('B')->setWidth(15);
            $sheet->getColumnDimension('C')->setWidth(25);
            $sheet->getColumnDimension('D')->setWidth(15);
            $sheet->getColumnDimension('E')->setWidth(20);
            $sheet->getColumnDimension('F')->setWidth(14);
            $sheet->getColumnDimension('G')->setWidth(14);
            $sheet->getColumnDimension('H')->setWidth(16);
            $sheet->getColumnDimension('I')->setWidth(12);
            $sheet->getColumnDimension('J')->setWidth(12);
            $sheet->getColumnDimension('K')->setwIDTH(15);
            $sheet->getColumnDimension('L')->setWidth(16);
            $sheet->getColumnDimension('M')->setWidth(20);
            $sheet->getColumnDimension('N')->setWidth(10);

            $filename = 'Shop_Master_Report_' . date('YmdHis') . '.xlsx';

            if (ob_get_length()) ob_end_clean();

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="' . $filename . '"');
            header('Cache-Control: max-age=0');

            (new Xlsx($spreadsheet))->save('php://output');
            exit;
        } catch (\Exception $e) {
            Log::error('Shop Master Excel Export Error: ' . $e->getMessage(), [
                'file'  => $e->getFile(),
                'line'  => $e->getLine(),
                'trace' => $e->getTraceAsString(),
            ]);

            return response()->json([
                'error' => 'Failed to generate Excel file: ' . $e->getMessage()
            ], 500);
        }
    }

    public function printShopmaster()
    {
        $data = MallShopmast::where('propertyid', $this->propertyid)
            ->orderBy('shopcode')
            ->get();

        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        $pdf = \Barryvdh\DomPDF\Facade\Pdf::loadView('property.print.shopmasterprint', [
            'company'     => $company,
            'data'        => $data,
            'reportTitle' => 'Shop Master Report',
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('shop-master-report-' . date('YmdHis') . '.pdf');
    }

    // ─── Unit Type Master ──────────────────────────────────────────────────────
    public function unitype()
    {
        $data = MallUnittype::where('propertyid', $this->propertyid)
            ->orderBy('typename')
            ->get();

        return view('property.mallmanagement.unitype', [
            'data'       => $data,
            'username'   => $this->username,
            'ncurdate'   => $this->ncurdate,
            'propertyid' => $this->propertyid,
        ]);
    }

    public function submitunitype(Request $request)
    {
        $request->validate([
            'typename'  => 'required|max:100',
        ], [
            'typename.required' => 'Type Name is required.',
        ]);

        // Auto-generate typecode: sequence prefix + propertyid  e.g. 1103, 2103, 3103
        $lastCode = MallUnittype::where('propertyid', $this->propertyid)
            ->orderByRaw('typecode * 1 DESC')
            ->value('typecode');
        $typecode = $lastCode ? ((int)substr($lastCode, 0, -strlen((string) $this->propertyid)) + 1) . $this->propertyid : '1' . $this->propertyid;

        try {
            MallUnittype::create([
                'propertyid' => $this->propertyid,
                'typecode'   => $typecode,
                'typename'   => strtoupper($request->typename),
                'description' => $request->description ?: null,
                'u_name'     => Auth::id(),
                'u_entdt'    => now(),
                'u_ae'       => 'A',
                'activeyn'   => $request->activeyn === '0' ? 0 : 1,
            ]);

            $notificationMessage = app(NotificationCreatorService::class)
                ->unitmaster(
                    propertyId: $this->propertyid,
                    typecode: $typecode,
                );

            SendEnviroNotificationJob::dispatch(
                propertyId: $this->propertyid,
                route: 'unitype',
                customMessage: $notificationMessage,
            );

            return response()->json([
                'success' => true,
                'message' => 'Unit Type saved successfully.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: ' . $e->getMessage(),
            ]);
        }
    }

    public function updateunitype(Request $request)
    {
        $request->validate([
            'sn'        => 'required|numeric',
            'typename'  => 'required|max:100',
        ]);

        try {
            $unittype = MallUnittype::where('sn', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->firstOrFail();

            $unittype->update([
                'typename'    => strtoupper($request->typename),
                'description' => $request->description ?: null,
                'u_name'      => Auth::id(),
                'u_ae'        => 'U',
                'u_entdt'     => now(),
                'activeyn'    => $request->activeyn === '0' ? 0 : 1,
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Unit Type updated successfully.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: ' . $e->getMessage(),
            ]);
        }
    }

    public function deleteunitype($sn)
    {
        try {
            $unittype = MallUnittype::where('sn', $sn)
                ->where('propertyid', $this->propertyid)
                ->firstOrFail();

            $unittype->delete();

            return response()->json([
                'success' => true,
                'message' => 'Unit Type deleted successfully.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: ' . $e->getMessage(),
            ]);
        }
    }

    public function exportUnitypeExcel()
    {
        try {
            $data = MallUnittype::where('propertyid', $this->propertyid)
                ->orderBy('typename')
                ->get();

            $company   = Companyreg::where('propertyid', $this->propertyid)->first();
            $compName  = $company->comp_name ?? 'Unit Type Report';

            $spreadsheet = new Spreadsheet();
            $sheet       = $spreadsheet->getActiveSheet();
            $sheet->setTitle('Unit Type');

            $lastCol = 'E';

            // Row 1: Company Name
            $sheet->mergeCells('A1:' . $lastCol . '1');
            $sheet->setCellValue('A1', $compName);
            $sheet->getStyle('A1')->applyFromArray([
                'font'      => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 2: Report Title
            $sheet->mergeCells('A2:' . $lastCol . '2');
            $sheet->setCellValue('A2', 'Unit Type Master Report');
            $sheet->getStyle('A2')->applyFromArray([
                'font'      => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 3: Date
            $sheet->mergeCells('A3:' . $lastCol . '3');
            $sheet->setCellValue('A3', 'Generated on: ' . date('d/m/Y h:i A'));
            $sheet->getStyle('A3')->applyFromArray([
                'font'      => ['size' => 10],
                'alignment' => ['horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 5: Headers
            $headers = ['#', 'Type Code', 'Type Name', 'Description', 'Active'];
            $headerRow = 5;
            foreach ($headers as $i => $h) {
                $col = \PhpOffice\PhpSpreadsheet\Cell\Coordinate::stringFromColumnIndex($i + 1);
                $sheet->setCellValue($col . $headerRow, $h);
            }
            $sheet->getStyle('A' . $headerRow . ':' . $lastCol . $headerRow)->applyFromArray([
                'font'      => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill'      => ['fillType' => \PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
                'alignment' => [
                    'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER,
                    'vertical'   => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER
                ],
                'borders'   => ['allBorders' => ['borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN]],
            ]);

            // Data Rows
            $currentRow = $headerRow + 1;
            foreach ($data as $i => $row) {
                $sheet->setCellValue('A' . $currentRow, $i + 1);
                $sheet->setCellValue('B' . $currentRow, $row->typecode);
                $sheet->setCellValue('C' . $currentRow, $row->typename);
                $sheet->setCellValue('D' . $currentRow, $row->description);
                $sheet->setCellValue('E' . $currentRow, $row->activeyn == 1 ? 'Active' : 'Inactive');

                $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)->applyFromArray([
                    'borders'   => ['allBorders' => [
                        'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                        'color'       => ['argb' => 'FFDDDDDD']
                    ]],
                    'alignment' => ['horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER],
                ]);
                if ($i % 2 === 1) {
                    $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)
                        ->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)
                        ->getStartColor()->setARGB('FFF2F2F2');
                }
                $sheet->getStyle('B' . $currentRow)->getAlignment()
                    ->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT);
                $sheet->getStyle('C' . $currentRow)->getAlignment()
                    ->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT);
                $sheet->getStyle('D' . $currentRow)->getAlignment()
                    ->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT);

                $currentRow++;
            }

            // Column widths
            $sheet->getColumnDimension('A')->setWidth(5);
            $sheet->getColumnDimension('B')->setWidth(15);
            $sheet->getColumnDimension('C')->setWidth(25);
            $sheet->getColumnDimension('D')->setWidth(40);
            $sheet->getColumnDimension('E')->setWidth(10);

            $filename = 'Unit_Type_Report_' . date('YmdHis') . '.xlsx';

            if (ob_get_length()) ob_end_clean();

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="' . $filename . '"');
            header('Cache-Control: max-age=0');

            (new Xlsx($spreadsheet))->save('php://output');
            exit;
        } catch (\Exception $e) {
            Log::error('Unit Type Excel Export Error: ' . $e->getMessage(), [
                'file'  => $e->getFile(),
                'line'  => $e->getLine(),
                'trace' => $e->getTraceAsString(),
            ]);

            return response()->json([
                'error' => 'Failed to generate Excel file: ' . $e->getMessage()
            ], 500);
        }
    }

    public function printUnitype()
    {
        $data = MallUnittype::where('propertyid', $this->propertyid)
            ->orderBy('typename')
            ->get();

        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        $pdf = \Barryvdh\DomPDF\Facade\Pdf::loadView('property.print.unitypeprint', [
            'company'     => $company,
            'data'        => $data,
            'reportTitle' => 'Unit Type Master Report',
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('unit-type-report-' . date('YmdHis') . '.pdf');
    }

    // ─── Charge Master ─────────────────────────────────────────────────────────
    public function chargesmaster()
    {
        $data = DB::table('mall_chargemast')
            ->leftJoin('subgroup', function ($join) {
                $join->on('subgroup.sub_code', '=', 'mall_chargemast.accountcode')
                    ->where('subgroup.propertyid', '=', $this->propertyid);
            })
            ->select(
                'mall_chargemast.*',
                'subgroup.name as accountname',
                DB::raw('(SELECT name FROM taxstru WHERE taxstru.propertyid = mall_chargemast.propertyid AND taxstru.str_code = mall_chargemast.taxstru ORDER BY taxstru.sno LIMIT 1) as taxstruname')
            )
            ->where('mall_chargemast.propertyid', $this->propertyid)
            ->orderBy('mall_chargemast.chargename')
            ->get();

        // Account Name: sub-group me se sirf SAle A/c (nature = Sale) wale show karo
        $subgroupdata = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->where('nature', 'Sale')
            ->orderBy('name', 'ASC')
            ->get();

        $unitdata = collect();
        if (DB::getSchemaBuilder()->hasTable('unitmast')) {
            $unitdata = DB::table('unitmast')
                ->where('propertyid', $this->propertyid)
                ->where('activeYN', 'Y')
                ->orderBy('name', 'ASC')
                ->get(['ucode', 'name']);
        }

        $taxstrudata = DB::table('taxstru')
            ->where('propertyid', $this->propertyid)
            ->distinct()
            ->orderBy('name', 'ASC')
            ->get(['str_code', 'name']);

        return view('property.mallmanagement.chargesmaster', [
            'data'         => $data,
            'subgroupdata' => $subgroupdata,
            'unitdata'     => $unitdata,
            'taxstrudata'  => $taxstrudata,
            'username'     => $this->username,
            'ncurdate'     => $this->ncurdate,
            'propertyid'   => $this->propertyid,
        ]);
    }

    public function submitchargesmaster(Request $request)
    {
        $request->merge(['shortcode' => strtoupper(trim($request->shortcode))]);

        $request->validate([
            'chargename' => 'required|max:30',
            'shortcode'  => ['required', 'between:3,5', 'regex:/^[A-Za-z ]+$/'],
        ], [
            'chargename.required' => 'Charge Name is required.',
            'shortcode.required'  => 'Short Code is required.',
            'shortcode.between'   => 'Short Code must be between 3 and 5 characters.',
            'shortcode.regex'     => 'Short Code must contain only letters (space allowed), no special characters.',
        ]);

        $shortcode = $request->shortcode;

        // Duplicate shortcode check — same property
        $exists = MallChargemast::where('propertyid', $this->propertyid)
            ->where('shortcode', $shortcode)
            ->exists();

        if ($exists) {
            return response()->json([
                'success' => false,
                'message' => "Short Code '{$shortcode}' already exists. Please use a different one.",
            ]);
        }

        // Also check voucher_prefix for same v_type + propertyid (cross-check)
        $vpExists = DB::table('voucher_prefix')
            ->where('propertyid', $this->propertyid)
            ->where('v_type', $shortcode)
            ->exists();

        if ($vpExists) {
            return response()->json([
                'success' => false,
                'message' => "Short Code '{$shortcode}' is already used in voucher prefix. Please choose another.",
            ]);
        }

        // Auto-generate chargecode: sequence prefix + propertyid  e.g. 1103, 2103, 3103
        $lastCode   = MallChargemast::where('propertyid', $this->propertyid)
            ->orderByRaw('chargecode * 1 DESC')
            ->value('chargecode');
        $chargecode = $lastCode ? ((int)substr($lastCode, 0, -strlen((string) $this->propertyid)) + 1) . $this->propertyid : '1' . $this->propertyid;

        try {
            MallChargemast::create([
                'propertyid'        => $this->propertyid,
                'chargecode'        => $chargecode,
                'chargename'        => strtoupper($request->chargename),
                'shortcode'         => $shortcode,
                'saccode'           => $request->saccode ?: null,
                'chargecategory'    => $request->chargecategory ?: null,
                'calculationbasis'  => $request->calculationbasis ?: null,
                'unit'              => $request->unit ?: null,
                'taxstru'           => $request->taxstru ?? 0.00,
                'escalationyn'      => $request->escalationyn === '0' ? 0 : 1,
                'billingfrequency'  => $request->billingfrequency ?: 'MONTHLY',
                'accountcode'       => $request->accountcode ?: null,
                'u_name'            => $this->username,
                'u_entdt'           => now(),
                'u_ae'              => 'A',
                'activeyn'          => $request->activeyn === '0' ? 0 : 1,
            ]);

            // Save shortcode in voucher_prefix (v_type = shortcode, serial_no = 0)
            $vp_date_from = date('Y') . '-04-01';
            $vp_date_to   = (date('Y') + 1) . '-03-31';
            DB::table('voucher_prefix')->insert([
                'propertyid'   => $this->propertyid,
                'v_type'       => $shortcode,
                'short_name'   => $shortcode,
                'date_from'    => $vp_date_from,
                'date_to'      => $vp_date_to,
                'prefix'       => (int) substr($vp_date_from, 0, 4),
                'start_srl_no' => 0,
                'u_name'       => $this->username,
                'u_entdt'      => now(),
                'u_ae'         => 'a',
                'sysYN'        => 'N',
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Charge Master saved successfully.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: ' . $e->getMessage(),
            ]);
        }
    }

    public function updatechargesmaster(Request $request)
    {
        $request->merge(['shortcode' => strtoupper(trim($request->shortcode))]);

        $request->validate([
            'sn'         => 'required|numeric',
            'chargename' => 'required|max:30',
            'shortcode'  => ['required', 'between:3,5', 'regex:/^[A-Za-z ]+$/'],
        ], [
            'shortcode.required' => 'Short Code is required.',
            'shortcode.between'  => 'Short Code must be between 3 and 5 characters.',
            'shortcode.regex'    => 'Short Code must contain only letters (space allowed), no special characters.',
        ]);

        $shortcode = $request->shortcode;

        try {
            $charge = MallChargemast::where('sn', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->firstOrFail();

            $oldShortcode = $charge->shortcode;

            // Duplicate check — exclude current record
            if ($shortcode !== $oldShortcode) {
                $exists = MallChargemast::where('propertyid', $this->propertyid)
                    ->where('shortcode', $shortcode)
                    ->where('sn', '!=', $request->sn)
                    ->exists();

                if ($exists) {
                    return response()->json([
                        'success' => false,
                        'message' => "Short Code '{$shortcode}' already exists. Please use a different one.",
                    ]);
                }

                $vpExists = DB::table('voucher_prefix')
                    ->where('propertyid', $this->propertyid)
                    ->where('v_type', $shortcode)
                    ->exists();

                if ($vpExists) {
                    return response()->json([
                        'success' => false,
                        'message' => "Short Code '{$shortcode}' is already used in voucher prefix. Please choose another.",
                    ]);
                }
            }

            $charge->update([
                'chargename'        => strtoupper($request->chargename),
                'shortcode'         => $shortcode,
                'saccode'           => $request->saccode ?: null,
                'chargecategory'    => $request->chargecategory ?: null,
                'calculationbasis'  => $request->calculationbasis ?: null,
                'unit'              => $request->unit ?: null,
                'taxstru'           => $request->taxstru ?? 0.00,
                'escalationyn'      => $request->escalationyn === '0' ? 0 : 1,
                'billingfrequency'  => $request->billingfrequency ?: 'MONTHLY',
                'accountcode'       => $request->accountcode ?: null,
                'u_name'            => $this->username,
                'u_ae'              => 'U',
                'u_entdt'           => now(),
                'activeyn'          => $request->activeyn === '0' ? 0 : 1,
            ]);

            // Update voucher_prefix — v_type = shortcode
            // Agar oldShortcode null tha (purani entry) to INSERT karo, warna UPDATE
            if (empty($oldShortcode)) {
                // Purani entry thi bina shortcode ke — fresh insert
                $vpAlreadyExists = DB::table('voucher_prefix')
                    ->where('propertyid', $this->propertyid)
                    ->where('v_type', $shortcode)
                    ->exists();

                if (!$vpAlreadyExists) {
                    $vp_date_from = date('Y') . '-04-01';
                    $vp_date_to   = (date('Y') + 1) . '-03-31';
                    DB::table('voucher_prefix')->insert([
                        'propertyid'   => $this->propertyid,
                        'v_type'       => $shortcode,
                        'short_name'   => $shortcode,
                        'date_from'    => $vp_date_from,
                        'date_to'      => $vp_date_to,
                        'prefix'       => (int) substr($vp_date_from, 0, 4),
                        'start_srl_no' => 0,
                        'u_name'       => $this->username,
                        'u_entdt'      => now(),
                        'u_ae'         => 'a',
                        'sysYN'        => 'N',
                    ]);
                }
            }

            return response()->json([
                'success' => true,
                'message' => 'Charge Master updated successfully.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: ' . $e->getMessage(),
            ]);
        }
    }

    public function deletechargesmaster($sn)
    {
        try {
            $charge = MallChargemast::where('sn', $sn)
                ->where('propertyid', $this->propertyid)
                ->firstOrFail();

            $shortcode = $charge->shortcode;

            $charge->delete();

            return response()->json([
                'success' => true,
                'message' => 'Charge Master deleted successfully.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: ' . $e->getMessage(),
            ]);
        }
    }

    public function exportChargesmasterExcel()
    {
        try {
            $data = DB::table('mall_chargemast')
                ->leftJoin('subgroup', function ($join) {
                    $join->on('subgroup.sub_code', '=', 'mall_chargemast.accountcode')
                        ->where('subgroup.propertyid', '=', $this->propertyid);
                })
                ->select(
                    'mall_chargemast.*',
                    'subgroup.name as accountname',
                    DB::raw('(SELECT name FROM taxstru WHERE taxstru.propertyid = mall_chargemast.propertyid AND taxstru.str_code = mall_chargemast.taxstru ORDER BY taxstru.sno LIMIT 1) as taxstruname')
                )
                ->where('mall_chargemast.propertyid', $this->propertyid)
                ->orderBy('mall_chargemast.chargename')
                ->get();

            $company   = Companyreg::where('propertyid', $this->propertyid)->first();
            $compName  = $company->comp_name ?? 'Charge Master Report';

            $spreadsheet = new Spreadsheet();
            $sheet       = $spreadsheet->getActiveSheet();
            $sheet->setTitle('Charge Master');

            $lastCol = 'M';

            // Row 1: Company Name
            $sheet->mergeCells('A1:' . $lastCol . '1');
            $sheet->setCellValue('A1', $compName);
            $sheet->getStyle('A1')->applyFromArray([
                'font'      => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 2: Report Title
            $sheet->mergeCells('A2:' . $lastCol . '2');
            $sheet->setCellValue('A2', 'Charge Master Report');
            $sheet->getStyle('A2')->applyFromArray([
                'font'      => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 3: Date
            $sheet->mergeCells('A3:' . $lastCol . '3');
            $sheet->setCellValue('A3', 'Generated on: ' . date('d/m/Y h:i A'));
            $sheet->getStyle('A3')->applyFromArray([
                'font'      => ['size' => 10],
                'alignment' => ['horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 5: Headers
            $headers = [
                '#',
                'Charge Code',
                'Charge Name',
                'SAC Code',
                'Category',
                'Calculation Basis',
                'Unit',
                'Tax %',
                'Escalation',
                'Frequency',
                'Account Name',
                'Active'
            ];
            $headerRow = 5;
            foreach ($headers as $i => $h) {
                $col = \PhpOffice\PhpSpreadsheet\Cell\Coordinate::stringFromColumnIndex($i + 1);
                $sheet->setCellValue($col . $headerRow, $h);
            }
            $sheet->getStyle('A' . $headerRow . ':' . $lastCol . $headerRow)->applyFromArray([
                'font'      => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill'      => ['fillType' => \PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
                'alignment' => [
                    'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER,
                    'vertical'   => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER
                ],
                'borders'   => ['allBorders' => ['borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN]],
            ]);

            // Data Rows
            $currentRow = $headerRow + 1;
            foreach ($data as $i => $row) {
                $sheet->setCellValue('A' . $currentRow, $i + 1);
                $sheet->setCellValue('B' . $currentRow, $row->chargecode);
                $sheet->setCellValue('C' . $currentRow, $row->chargename);
                $sheet->setCellValue('D' . $currentRow, $row->saccode);
                $sheet->setCellValue('E' . $currentRow, $row->chargecategory);
                $sheet->setCellValue('F' . $currentRow, $row->calculationbasis);
                $sheet->setCellValue('G' . $currentRow, $row->unit);
                $sheet->setCellValue('H' . $currentRow, $row->taxstruname ?? $row->taxstru);
                $sheet->setCellValue('I' . $currentRow, $row->escalationyn == 1 ? 'Yes' : 'No');
                $sheet->setCellValue('J' . $currentRow, $row->billingfrequency);
                $sheet->setCellValue('K' . $currentRow, $row->accountname ?? $row->accountcode);
                $sheet->setCellValue('L' . $currentRow, $row->activeyn == 1 ? 'Active' : 'Inactive');

                $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)->applyFromArray([
                    'borders'   => ['allBorders' => [
                        'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                        'color'       => ['argb' => 'FFDDDDDD']
                    ]],
                    'alignment' => ['horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER],
                ]);
                if ($i % 2 === 1) {
                    $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)
                        ->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)
                        ->getStartColor()->setARGB('FFF2F2F2');
                }
                $sheet->getStyle('B' . $currentRow)->getAlignment()
                    ->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT);
                $sheet->getStyle('C' . $currentRow)->getAlignment()
                    ->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT);

                $currentRow++;
            }

            // Column widths
            $sheet->getColumnDimension('A')->setWidth(5);
            $sheet->getColumnDimension('B')->setWidth(15);
            $sheet->getColumnDimension('C')->setWidth(20);
            $sheet->getColumnDimension('D')->setWidth(18);
            $sheet->getColumnDimension('E')->setwIDTH(18);
            $sheet->getColumnDimension('F')->setWidth(10);
            $sheet->getColumnDimension('G')->setWidth(10);
            $sheet->getColumnDimension('H')->setWidth(12);
            $sheet->getColumnDimension('I')->setWidth(15);
            $sheet->getColumnDimension('J')->setWidth(15);
            $sheet->getColumnDimension('K')->setWidth(10);
            $sheet->getColumnDimension('L')->setWidth(10);

            $filename = 'Charge_Master_Report_' . date('YmdHis') . '.xlsx';

            if (ob_get_length()) ob_end_clean();

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="' . $filename . '"');
            header('Cache-Control: max-age=0');

            (new Xlsx($spreadsheet))->save('php://output');
            exit;
        } catch (\Exception $e) {
            Log::error('Charge Master Excel Export Error: ' . $e->getMessage(), [
                'file'  => $e->getFile(),
                'line'  => $e->getLine(),
                'trace' => $e->getTraceAsString(),
            ]);

            return response()->json([
                'error' => 'Failed to generate Excel file: ' . $e->getMessage()
            ], 500);
        }
    }

    public function printChargesmaster()
    {
        $data = DB::table('mall_chargemast')
            ->leftJoin('subgroup', function ($join) {
                $join->on('subgroup.sub_code', '=', 'mall_chargemast.accountcode')
                    ->where('subgroup.propertyid', '=', $this->propertyid);
            })
            ->select(
                'mall_chargemast.*',
                'subgroup.name as accountname',
                DB::raw('(SELECT name FROM taxstru WHERE taxstru.propertyid = mall_chargemast.propertyid AND taxstru.str_code = mall_chargemast.taxstru ORDER BY taxstru.sno LIMIT 1) as taxstruname')
            )
            ->where('mall_chargemast.propertyid', $this->propertyid)
            ->orderBy('mall_chargemast.chargename')
            ->get();

        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        $pdf = \Barryvdh\DomPDF\Facade\Pdf::loadView('property.print.chargesmasterprint', [
            'company'     => $company,
            'data'        => $data,
            'reportTitle' => 'Charge Master Report',
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('charge-master-report-' . date('YmdHis') . '.pdf');
    }

    /* ------------------------------------------------------------------
       TESTING PHASE HELPERS
       Only columns that ACTUALLY exist in the table get saved.
       The rest are returned as "data_not_saved" so the view can warn.
    ------------------------------------------------------------------ */
    private function existingColumns($table)
    {
        if (!DB::getSchemaBuilder()->hasTable($table)) {
            return collect();
        }
        return collect(DB::getSchemaBuilder()->getColumnListing($table))
            ->map(function ($col) {
                return strtolower($col);
            });
    }

    private function onlyExistingColumns(array $data, $table)
    {
        $cols = $this->existingColumns($table);
        if ($cols->isEmpty()) {
            return [$data, array_keys($data)];
        }
        $skipped = [];
        foreach ($data as $key => $value) {
            if (!$cols->contains(strtolower($key))) {
                $skipped[] = $key;
                unset($data[$key]);
            }
        }
        return [$data, $skipped];
    }

    // Manual Service Bill Entry (Mall Management)
    public function servicebillentry()
    {
        $services = collect();
        if (DB::getSchemaBuilder()->hasTable('mall_chargemast')) {
            $services = DB::table('mall_chargemast')
                ->where('propertyid', $this->propertyid)
                ->where('activeyn', 1)
                ->orderBy('chargename')
                ->get(['chargecode', 'chargename', 'shortcode', 'calculationbasis', 'unit', 'taxstru', 'billingfrequency']);
        }

        $tenants = collect();
        if (DB::getSchemaBuilder()->hasTable('subgroup')) {
            $tenants = DB::table('subgroup')
                ->where('propertyid', $this->propertyid)
                ->where('group_code', 'like', '28' . $this->propertyid . '%')
                ->orderBy('name')
                ->get(['sub_code', 'name']);
        }

        $units = collect();
        if (DB::getSchemaBuilder()->hasTable('mall_shopmast')) {
            $units = DB::table('mall_shopmast')
                ->where('propertyid', $this->propertyid)
                ->where('activeyn', 1)
                ->orderBy('shopname')
                ->get(['sn', 'shopcode', 'shopname', 'floorid', 'carpetarea', 'builtuparea', 'chargeablearea', 'shopstatus']);
        }

        $floors = collect();
        if (DB::getSchemaBuilder()->hasTable('hkfloors')) {
            $floors = DB::table('hkfloors')
                ->where('propertyid', $this->propertyid)
                ->orderBy('name')
                ->get(['id', 'name']);
        }

        return view('property.mallmanagement.servicebillentry', [
            'services'   => $services,
            'tenants'    => $tenants,
            'units'      => $units,
            'floors'     => $floors,
            'username'   => $this->username,
            'ncurdate'   => $this->ncurdate,
            'propertyid' => $this->propertyid,
        ]);
    }

    // AJAX: Units leased to a tenant (for unit dropdown on tenant select)
    public function getunitsbytenant(Request $request)
    {
        $units = collect();
        if (DB::getSchemaBuilder()->hasTable('mall_lease_hdr') && DB::getSchemaBuilder()->hasTable('mall_shopmast')) {
            $units = DB::table('mall_lease_hdr')
                ->join('mall_shopmast', function ($join) {
                    $join->on('mall_shopmast.sn', '=', 'mall_lease_hdr.unitid')
                        ->on('mall_shopmast.propertyid', '=', 'mall_lease_hdr.propertyid');
                })
                ->where('mall_lease_hdr.propertyid', $this->propertyid)
                ->where('mall_lease_hdr.tenantid', $request->tenantid)
                ->where('mall_shopmast.activeyn', 1)
                ->orderBy('mall_shopmast.shopname')
                ->select(
                    'mall_shopmast.sn',
                    'mall_shopmast.shopcode',
                    'mall_shopmast.shopname',
                    'mall_shopmast.floorid',
                    'mall_shopmast.carpetarea',
                    'mall_shopmast.builtuparea',
                    'mall_shopmast.chargeablearea',
                    'mall_shopmast.shopstatus',
                    'mall_lease_hdr.leasestatus',
                    'mall_lease_hdr.agreementno'
                )
                ->get();
        }

        return response()->json($units);
    }

    // AJAX: Active lease + agreed charges for selected tenant+unit
    public function fetchleasecharges(Request $request)
    {
        $lease = null;
        if (DB::getSchemaBuilder()->hasTable('mall_lease_hdr')) {
            $lease = DB::table('mall_lease_hdr')
                ->where('propertyid', $this->propertyid)
                ->where('tenantid', $request->tenantid)
                ->where('unitid', $request->unitid)
                ->whereIn('leasestatus', ['ACTIVE', 'DRAFT'])
                ->orderBy('sn', 'desc')
                ->first();
        }

        $charges = collect();
        if ($lease && DB::getSchemaBuilder()->hasTable('mall_lease_charges')) {
            $charges = DB::table('mall_lease_charges')
                ->where('propertyid', $this->propertyid)
                ->where('leaseid', $lease->sn)
                ->orderBy('chargecode')
                ->get();
        }

        return response()->json([
            'lease'   => $lease,
            'charges' => $charges,
        ]);
    }

    // ─── Party-Location (tenantlocation) ─────────────────────────────────
    public function tenantlocation(Request $request)
    {
        // Parties from subgroup (party master)
        $parties = collect();
        if (DB::getSchemaBuilder()->hasTable('subgroup')) {
            $parties = DB::table('subgroup')
                ->where('propertyid', $this->propertyid)
                ->where('group_code', 'like', '28' . $this->propertyid . '%')
                ->orderBy('name')
                ->get(['sub_code', 'name']);
        }

        // Services (same source as servicebillentry: mall_chargemast)
        $services = collect();
        if (DB::getSchemaBuilder()->hasTable('mall_chargemast')) {
            $services = DB::table('mall_chargemast')
                ->where('propertyid', $this->propertyid)
                ->where('activeyn', 1)
                ->orderBy('chargename')
                ->get(['chargecode', 'chargename']);
        }

        // Locations (mall_shopmast + floor name)
        $locations = collect();
        if (DB::getSchemaBuilder()->hasTable('mall_shopmast')) {
            $locations = DB::table('mall_shopmast')
                ->leftJoin('hkfloors', 'hkfloors.id', '=', 'mall_shopmast.floorid')
                ->where('mall_shopmast.propertyid', $this->propertyid)
                ->where('mall_shopmast.activeyn', 1)
                ->orderBy('mall_shopmast.shopname')
                ->select('mall_shopmast.shopcode', 'mall_shopmast.shopname', 'hkfloors.name as floorname')
                ->get();
        }

        // Listing: party name + service name + location name
        $data = collect();
        if (DB::getSchemaBuilder()->hasTable('mall_partylocation')) {
            $data = DB::table('mall_partylocation as pl')
                ->leftJoin('subgroup as p', function ($j) {
                    $j->on('p.sub_code', '=', 'pl.tenantcode')
                        ->on('p.propertyid', '=', 'pl.propertyid');
                })
                ->leftJoin('mall_chargemast as s', function ($j) {
                    $j->on('s.chargecode', '=', 'pl.servicecode')
                        ->on('s.propertyid', '=', 'pl.propertyid');
                })
                ->leftJoin('mall_shopmast as sh', function ($j) {
                    $j->on('sh.shopcode', '=', 'pl.shopcode')
                        ->on('sh.propertyid', '=', 'pl.propertyid');
                })
                ->leftJoin('hkfloors as f', 'f.id', '=', 'sh.floorid')
                ->where('pl.propertyid', $this->propertyid)
                ->where('pl.activeyn', 1)
                ->orderBy('pl.sn', 'desc')
                ->select(
                    'pl.sn',
                    'pl.sno',
                    'pl.tenantcode',
                    'p.name as partyname',
                    'pl.servicecode',
                    's.chargename as servicename',
                    'pl.shopcode',
                    'sh.shopname as shopname',
                    'f.name as floorname',
                    'pl.activeyn'
                )
                ->get();
        }

        // Edit mode (sn pass hone pe)
        $row = null;
        if ($request->has('sn') && $request->sn && DB::getSchemaBuilder()->hasTable('mall_partylocation')) {
            $row = MallPartylocation::where('sn', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->first();
        }

        return view('property.mallmanagement.tenantlocation', [
            'parties'    => $parties,
            'services'   => $services,
            'locations'  => $locations,
            'data'       => $data,
            'row'        => $row,
            'username'   => $this->username,
            'ncurdate'   => $this->ncurdate,
            'propertyid' => $this->propertyid,
        ]);
    }

    // Save party location: 1 party + 1 service + multiple shops ek saath
    public function submittenantlocation(Request $request)
    {
        $request->validate([
            'tenantcode'  => 'required|max:8',
            'servicecode' => 'required|max:6',
        ], [
            'tenantcode.required'  => 'Party select karein.',
            'servicecode.required' => 'Service select karein.',
        ]);

        $tenantcode    = $request->tenantcode;
        $servicecode   = $request->servicecode;
        $shopcodes     = array_values(array_filter((array) $request->input('shopcode', [])));

        if (!$shopcodes) {
            return response()->json([
                'success' => false,
                'message' => 'Kam se kam ek Location (Shop) add karen.',
            ]);
        }

        try {
            // sno = is party+service ki agli serial (rent: 1,2,3 / cam: 1,2,3 / power: 1,2,3)
            $nextSno = (int) MallPartylocation::where('propertyid', $this->propertyid)
                ->where('tenantcode', $tenantcode)
                ->where('servicecode', $servicecode)
                ->max('sno');

            $created    = 0;
            $duplicates = [];

            foreach ($shopcodes as $shopcode) {
                // Duplicate check: party + service + location ek party me ek baar
                $exists = MallPartylocation::where('propertyid', $this->propertyid)
                    ->where('tenantcode', $tenantcode)
                    ->where('servicecode', $servicecode)
                    ->where('shopcode', $shopcode)
                    ->where('activeyn', 1)
                    ->first();

                if ($exists) {
                    $duplicates[] = $shopcode;
                    continue;
                }

                $nextSno++;

                MallPartylocation::create([
                    'propertyid'  => $this->propertyid,
                    'tenantcode'  => $tenantcode,
                    'servicecode' => $servicecode,
                    'sno'         => $nextSno,
                    'shopcode'    => $shopcode,
                    'activeyn'    => 1,
                    'u_name'      => $this->username,
                    'u_enddt'     => now(),
                    'u_ae'        => 'A',
                ]);
                $created++;
            }

            $message = $created . ' row(s) saved successfully.';
            if ($duplicates) {
                $message .= ' | Duplicate skip: ' . implode(', ', $duplicates);
            }

            return response()->json([
                'success' => true,
                'message' => $message,
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: ' . $e->getMessage(),
            ]);
        }
    }

    public function updatetenantlocation(Request $request)
    {
        $request->validate([
            'sn'          => 'required|numeric',
            'tenantcode'  => 'required|max:8',
            'servicecode' => 'required|max:6',
            'sno'         => 'required|numeric|min:1',
            'shopcode'    => 'required|max:8',
        ]);

        try {
            $row = MallPartylocation::where('sn', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->firstOrFail();

            $dup = MallPartylocation::where('propertyid', $this->propertyid)
                ->where('tenantcode', $request->tenantcode)
                ->where('servicecode', $request->servicecode)
                ->where('shopcode', $request->shopcode)
                ->where('activeyn', 1)
                ->where('sn', '!=', $request->sn)
                ->first();

            if ($dup) {
                return response()->json([
                    'success' => false,
                    'message' => 'Ye party + service + location pehle se mapped hai (S.No: ' . $dup->sno . ').',
                ]);
            }

            $row->update([
                'tenantcode'  => $request->tenantcode,
                'servicecode' => $request->servicecode,
                'sno'         => $request->sno,
                'shopcode'    => $request->shopcode,
                'u_name'      => $this->username,
                'u_enddt'     => now(),
                'u_ae'        => 'U',
                'activeyn'    => $request->activeyn === '0' ? 0 : 1,
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Party location updated successfully.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: ' . $e->getMessage(),
            ]);
        }
    }

    public function deletetenantlocation($sn)
    {
        try {
            $row = MallPartylocation::where('sn', $sn)
                ->where('propertyid', $this->propertyid)
                ->firstOrFail();

            $row->update([
                'activeyn' => 0,
                'u_name'   => $this->username,
                'u_enddt'  => now(),
                'u_ae'     => 'U',
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Party location deactivated successfully.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: ' . $e->getMessage(),
            ]);
        }
    }

    public function dailymeterreading()
    {
        $company     = Companyreg::where('propertyid', $this->propertyid)->first(['comp_name']);
        $companyname = $company->comp_name ?? 'Company Name';

        return view('property.mallmanagement.meterreading', [
            'username'    => $this->username,
            'ncurdate'    => $this->ncurdate,
            'todaydate'   => now()->format('Y-m-d'), 
            'propertyid'  => $this->propertyid,
            'companyname' => $companyname,
        ]);
    }

    public function meterReadingShopList(Request $request)
    {
        $propertyid = $this->propertyid;
        $date       = $request->input('date', now()->format('Y-m-d'));
        $filter     = $request->input('filter', 'all');   // all | pending | completed
        $search     = trim((string) $request->input('search', ''));

        $shops = DB::table('mall_shopmast as s')
            ->leftJoin('mall_meter_reading as r', function ($join) use ($date) {
                $join->on('r.shopid', '=', 's.sn')
                    ->where('r.propertyid', '=', DB::raw('s.propertyid'))
                    ->where('r.reading_date', '=', $date);
            })
            ->where('s.propertyid', $propertyid)
            ->where('s.activeyn', 1)
            ->when($search !== '', function ($q) use ($search) {
                $q->where(function ($qq) use ($search) {
                    $qq->where('s.shopcode', 'like', "%{$search}%")
                        ->orWhere('s.shopname', 'like', "%{$search}%");
                });
            })
            ->select([
                's.sn as shopid',
                's.shopcode',
                's.shopname',
                's.floorid',
                's.chargeablearea',
                's.areaunit',
                's.electricitymeterno',
                'r.sn as reading_sn',
                'r.current_reading',
                'r.consumption',
            ])
            ->orderBy('s.shopcode')
            ->get()
            ->map(function ($row) {
                $row->status = $row->reading_sn ? 'completed' : 'pending';
                return $row;
            });

        if ($filter === 'pending') {
            $shops = $shops->where('status', 'pending')->values();
        } elseif ($filter === 'completed') {
            $shops = $shops->where('status', 'completed')->values();
        }

        $all = DB::table('mall_shopmast as s')
            ->leftJoin('mall_meter_reading as r', function ($join) use ($date) {
                $join->on('r.shopid', '=', 's.sn')
                    ->where('r.propertyid', '=', DB::raw('s.propertyid'))
                    ->where('r.reading_date', '=', $date);
            })
            ->where('s.propertyid', $propertyid)
            ->where('s.activeyn', 1)
            ->select('s.sn', DB::raw('r.sn as reading_sn'))
            ->get();

        return response()->json([
            'date'   => $date,
            'counts' => [
                'all'       => $all->count(),
                'pending'   => $all->whereNull('reading_sn')->count(),
                'completed' => $all->whereNotNull('reading_sn')->count(),
            ],
            'shops' => $shops,
        ]);
    }

   
    public function meterReadingShopDetail(Request $request)
    {
        $propertyid = $this->propertyid;
        $shopid     = $request->input('shopid');
        $date       = $request->input('date', now()->format('Y-m-d'));

        $shop = MallShopmast::where('propertyid', $propertyid)
            ->where('sn', $shopid)
            ->first(['sn', 'shopcode', 'shopname', 'chargeablearea', 'areaunit', 'electricitymeterno']);

        if (!$shop) {
            return response()->json(['success' => false, 'message' => 'Shop not found'], 404);
        }

        $previous = MallMeterReading::where('propertyid', $propertyid)
            ->where('shopid', $shopid)
            ->where('reading_date', '<', $date)
            ->orderByDesc('reading_date')
            ->first(['current_reading']);

        $today = MallMeterReading::where('propertyid', $propertyid)
            ->where('shopid', $shopid)
            ->where('reading_date', $date)
            ->first(['current_reading', 'multiplication_factor', 'consumption', 'remarks', 'meter_photo', 'reading_status']);

        return response()->json([
            'success' => true,
            'shop' => [
                'shopid'             => $shop->sn,
                'shopcode'           => $shop->shopcode,
                'shopname'           => $shop->shopname,
                'chargeablearea'     => $shop->chargeablearea,
                'areaunit'           => $shop->areaunit,
                'electricitymeterno' => $shop->electricitymeterno,
            ],
            'previous_reading'      => $previous->current_reading ?? '0.0000',
            'has_previous_reading'  => (bool) $previous,
            'multiplication_factor' => $today->multiplication_factor ?? '1.0000',
            'existing' => $today ? [
                'current_reading' => $today->current_reading,
                'consumption'     => $today->consumption,
                'remarks'         => $today->remarks,
                'meter_photo'     => $today->meter_photo ? asset('storage/' . ltrim($today->meter_photo, '/')) : null,
                'reading_status'  => $today->reading_status,
            ] : null,
        ]);
    }

    
    public function meterReadingSave(Request $request)
    {
        $propertyid = $this->propertyid;

        $validator = Validator::make($request->all(), [
            'shopid'          => 'required|integer',
            'reading_date'    => 'required|date',
            'current_reading' => 'required|numeric|min:0',
            'remarks'         => 'nullable|string|max:50',
            'photo'           => 'nullable|file',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors'  => $validator->errors(),
            ], 422);
        }

        $shopid      = $request->input('shopid');
        $readingDate = $request->input('reading_date');
        $currReading = $request->input('current_reading');

        try {
            $previousRow = MallMeterReading::where('propertyid', $propertyid)
                ->where('shopid', $shopid)
                ->where('reading_date', '<', $readingDate)
                ->orderByDesc('reading_date')
                ->first();

            $previous             = $previousRow->current_reading ?? 0;
            $multiplicationFactor = $previousRow->multiplication_factor ?? 1;

            if ($currReading < $previous) {
                return response()->json([
                    'success' => false,
                    'message' => 'Current reading cannot be less than previous reading.',
                ], 422);
            }

            $consumption = $previousRow
                ? ($currReading - $previous) * $multiplicationFactor
                : 0;

            $photoPath = null;
            if ($request->hasFile('photo')) {
                $photoPath = app(ImageCompressionService::class)
                    ->compress($request->file('photo'), 'meter_photos', 'public');
            }

            $existing = MallMeterReading::where('propertyid', $propertyid)
                ->where('shopid', $shopid)
                ->where('reading_date', $readingDate)
                ->first();

            $data = [
                'previous_reading'      => $previous,
                'current_reading'       => $currReading,
                'multiplication_factor' => $multiplicationFactor,
                'consumption'           => $consumption,
                'reading_status'        => 'Normal',
                'remarks'               => $request->input('remarks'),
                'entry_source'          => 'MOBILE',
                'u_ae'                  => $existing ? 'E' : 'A',
            ];

            if ($photoPath) {
                $data['meter_photo'] = $photoPath;
            }

            if ($existing) {
                $data['u_updatedby'] = $this->username;
                $data['u_updatedt']  = now();
                $existing->update($data);
            } else {
                $data = array_merge($data, [
                    'propertyid'   => $propertyid,
                    'shopid'       => $shopid,
                    'reading_date' => $readingDate,
                    'u_name'       => $this->username,
                    'u_entdt'      => now(),
                ]);
                MallMeterReading::create($data);
            }

            return response()->json([
                'success' => true,
                'message' => 'Reading saved successfully!',
                'data'    => [
                    'consumption' => number_format($consumption, 2),
                ],
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: ' . $e->getMessage(),
            ]);
        }
    }

    // Daily Meter Reading Register — page with From Date filter
    public function dailymeterreadingregister(Request $request)
    {
        $fromDate = $request->input('from_date', date('Y-m-d'));

        $rows = $this->meterReadingRegisterQuery($fromDate)->get();

        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        return view('property.mallmanagement.dailymeterreadingregister', [
            'company'   => $company,
            'rows'      => $rows,
            'fromDate'  => $fromDate,
            'ncurdate'  => $this->ncurdate,
        ]);
    }

    // Daily Meter Reading Register — DomPDF print (contributionreport format)
    public function printdailymeterreadingregister(Request $request)
    {
        $fromDate = $request->input('from_date', date('Y-m-d'));

        $rows = $this->meterReadingRegisterQuery($fromDate)->get();

        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        $pdf = \Barryvdh\DomPDF\Facade\Pdf::loadView('property.print.dailymeterreadingregisterprint', [
            'company'  => $company,
            'rows'     => $rows,
            'fromDate' => $fromDate,
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('daily-meter-reading-register-' . date('YmdHis') . '.pdf');
    }

    protected function meterReadingRegisterQuery($fromDate)
    {
        $query = DB::table('mall_meter_reading as R')
            ->leftJoin('mall_shopmast as S', function ($j) {
                $j->on(DB::raw('R.shopid COLLATE utf8mb4_general_ci'), '=', 'S.shopcode');
            })
            ->leftJoin('hkfloors as F', 'S.floorid', '=', 'F.code')
            ->where('R.propertyid', $this->propertyid)
            ->select(
                'F.name as Floor',
                'S.shopname as ShopNo',
                'S.electricitymeterno as MeterNo',
                'R.previous_reading as Previous',
                'R.current_reading as Current',
                'R.meter_photo as Photo',
                'R.multiplication_factor as MF',
                'R.consumption as Consumption',
                'R.u_name as ReadingBy',
                'R.u_entdt as Time'
            )
            ->orderBy('F.name')
            ->orderBy('S.shopname')
            ->orderBy('R.u_entdt');

        if (!empty($fromDate)) {
            $query->whereDate('R.reading_date', '=', $fromDate);
        }

        return $query;
    }
}
