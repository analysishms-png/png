@extends('property.layouts.main')
@section('main-container')

<div class="content-body">
    <div class="container-fluid">

        <div class="row mb-2">
            <div class="col-12">
                <div class="d-flex align-items-center justify-content-between flex-wrap">
                    <div>
                        <h4 class="font-weight-bold mb-0">Manual Bill Entry (Service-wise)</h4>
                        <small class="text-muted">Mall Management &rsaquo; Billing &rsaquo; Manual Bill Entry</small>
                    </div>
                    <div class="d-flex align-items-center flex-wrap" style="gap:6px;">
                        <button type="button" class="btn btn-sm btn-success" id="newbtn"><i class="fa fa-plus"></i> New</button>
                        <button type="button" class="btn btn-sm btn-primary" id="submitbtn"><i class="fa fa-save"></i> Save</button>
                        <button type="button" class="btn btn-sm btn-secondary" onclick="window.print()"><i class="fa fa-print"></i> Print</button>
                        <button type="button" class="btn btn-sm btn-light border" id="viewbtn"><i class="fa fa-eye"></i> View</button>
                    </div>
                </div>
            </div>
        </div>

        <form id="servicebillentryform">
            @csrf

            {{-- HIDDEN DATA --}}
            <input type="hidden" id="floorsjson" value="{{ json_encode($floors) }}">
            <input type="hidden" id="servicesjson" value="{{ json_encode($services) }}">

            <div class="row">

                {{-- LEFT COLUMN --}}
                <div class="col-lg-8 col-12">

                    {{-- 1. Tenant & Shop Details --}}
                    <div class="card shadow-sm mb-3">
                        <div class="card-header py-2 bg-secondary text-white">
                            <strong style="font-size:12px;">1. Tenant &amp; Shop Details</strong>
                        </div>
                        <div class="card-body py-2 px-3">
                            <div class="form-group row mb-1">
                                <label class="col-md-3 col-form-label col-form-label-sm text-muted">Tenant <span class="text-danger">*</span></label>
                                <div class="col-md-9">
                                    <select class="form-control form-control-sm" id="tenantid" name="tenantid" required>
                                        <option value="">-- Select Tenant --</option>
                                        @foreach($tenants as $t)
                                            <option value="{{ $t->sub_code }}">{{ $t->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-md-3 col-form-label col-form-label-sm text-muted">Shop / Unit <span class="text-danger">*</span></label>
                                <div class="col-md-4">
                                    <select class="form-control form-control-sm" id="unitid" name="unitid" required disabled>
                                        <option value="">-- Select Unit --</option>
                                    </select>
                                </div>
                                <label class="col-md-2 col-form-label col-form-label-sm text-muted">Brand</label>
                                <div class="col-md-3">
                                    <input type="text" class="form-control form-control-sm" id="brand" name="brand" readonly>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-md-3 col-form-label col-form-label-sm text-muted">Floor</label>
                                <div class="col-md-3">
                                    <input type="text" class="form-control form-control-sm" id="floor" name="floor" readonly>
                                </div>
                                <label class="col-md-3 col-form-label col-form-label-sm text-muted">Contact Person</label>
                                <div class="col-md-3">
                                    <input type="text" class="form-control form-control-sm" id="contactperson" name="contactperson" readonly>
                                </div>
                            </div>
                            <div class="form-group row mb-0">
                                <label class="col-md-3 col-form-label col-form-label-sm text-muted">Mobile</label>
                                <div class="col-md-3">
                                    <input type="text" class="form-control form-control-sm" id="mobile" name="mobile" readonly>
                                </div>
                                <label class="col-md-3 col-form-label col-form-label-sm text-muted">Email</label>
                                <div class="col-md-3">
                                    <input type="text" class="form-control form-control-sm" id="email" name="email" readonly>
                                </div>
                            </div>
                        </div>
                    </div>

                    {{-- 2. Bill Information --}}
                    <div class="card shadow-sm mb-3">
                        <div class="card-header py-2 bg-secondary text-white">
                            <strong style="font-size:12px;">2. Bill Information</strong>
                        </div>
                        <div class="card-body py-2 px-3">
                            <div class="form-group row mb-1">
                                <label class="col-md-3 col-form-label col-form-label-sm text-muted">Service / Charge <span class="text-danger">*</span></label>
                                <div class="col-md-5">
                                    <select class="form-control form-control-sm" id="chargecode" name="chargecode" required>
                                        <option value="">-- Select Service --</option>
                                        @foreach($services as $s)
                                            <option value="{{ $s->chargecode }}" data-shortcode="{{ $s->shortcode }}">{{ $s->chargename }} ({{ $s->shortcode }})</option>
                                        @endforeach
                                    </select>
                                </div>
                                <label class="col-md-2 col-form-label col-form-label-sm text-muted">Bill No.</label>
                                <div class="col-md-2">
                                    <input type="text" class="form-control form-control-sm" id="billno" name="billno" readonly placeholder="--">
                                </div>
                            </div>
                            <div class="form-group row mb-0">
                                <label class="col-md-3 col-form-label col-form-label-sm text-muted">Bill Date <span class="text-danger">*</span></label>
                                <div class="col-md-3">
                                    <input type="date" class="form-control form-control-sm" id="billdate" name="billdate" value="{{ date('Y-m-d') }}" required>
                                </div>
                                <label class="col-md-3 col-form-label col-form-label-sm text-muted">Billing Period <span class="text-danger">*</span></label>
                                <div class="col-md-3">
                                    <input type="month" class="form-control form-control-sm" id="billingperiod" name="billingperiod" required>
                                </div>
                            </div>
                        </div>
                    </div>

                    {{-- 3. Charge Details --}}
                    <div class="card shadow-sm mb-3">
                        <div class="card-header py-2 bg-secondary text-white d-flex justify-content-between align-items-center">
                            <strong style="font-size:12px;">3. Charge Details</strong>
                            <div>
                                <a href="javascript:void(0)" class="btn btn-sm btn-light" id="fetchagreement"><i class="fa fa-download"></i> Fetch from Agreement</a>
                                <button type="button" class="btn btn-sm btn-light" id="addrow"><i class="fa fa-arrow-down"></i> Add Row</button>
                            </div>
                        </div>
                        <div class="card-body py-2 px-3">
                            <div class="form-group row mb-2">
                                <label class="col-md-2 col-form-label col-form-label-sm text-muted">Calculation Method</label>
                                <div class="col-md-2">
                                    <select class="form-control form-control-sm" id="calcmethod">
                                        <option>Per Sq.Ft</option>
                                    </select>
                                </div>
                                <label class="col-md-2 col-form-label col-form-label-sm text-muted">Area Type</label>
                                <div class="col-md-2">
                                    <select class="form-control form-control-sm" id="areatype">
                                        <option>Chargeable Area</option>
                                    </select>
                                </div>
                                <label class="col-md-1 col-form-label col-form-label-sm text-muted">Area</label>
                                <div class="col-md-3">
                                    <input type="text" class="form-control form-control-sm text-right" id="areaval" readonly>
                                </div>
                            </div>
                            <div class="form-group row mb-2">
                                <label class="col-md-2 col-form-label col-form-label-sm text-muted">From Period <span class="text-danger">*</span></label>
                                <div class="col-md-4">
                                    <input type="month" class="form-control form-control-sm" id="fromperiod" name="fromperiod">
                                </div>
                                <label class="col-md-2 col-form-label col-form-label-sm text-muted">To Period <span class="text-danger">*</span></label>
                                <div class="col-md-4">
                                    <input type="month" class="form-control form-control-sm" id="toperiod" name="toperiod">
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table id="chargedetail" class="table table-bordered table-hover table-striped mb-0">
                                    <thead class="thead-light text-muted" style="font-size:11px;">
                                        <tr>
                                            <th style="width:30px;"><input type="checkbox" id="chkall"></th>
                                            <th style="width:35px;">S.No.</th>
                                            <th>Description</th>
                                            <th>Area</th>
                                            <th>Rate (₹)</th>
                                            <th>Amount (₹)</th>
                                            <th>GST %</th>
                                            <th>GST Amt (₹)</th>
                                            <th>Total (₹)</th>
                                            <th>Remarks</th>
                                            <th style="width:60px;">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody id="chargedetails_tbody">
                                        <tr id="emptyrow"><td colspan="11" class="text-center text-muted">Select Tenant + Unit then click <strong>Fetch from Agreement</strong></td></tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    {{-- 6. Previous Bills --}}
                    <div class="card shadow-sm mb-3">
                        <div class="card-header py-2 bg-secondary text-white">
                            <strong style="font-size:12px;">6. Previous Bills (Same Service)</strong>
                        </div>
                        <div class="card-body py-2 px-3">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover table-striped mb-0">
                                    <thead class="thead-light text-muted" style="font-size:11px;">
                                        <tr>
                                            <th>S.No.</th>
                                            <th>Bill No.</th>
                                            <th>Bill Date</th>
                                            <th>Period</th>
                                            <th class="text-right">Amount (₹)</th>
                                            <th class="text-right">Balance (₹)</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody id="prevbills_tbody">
                                        <tr><td colspan="7" class="text-center text-muted">No previous bills</td></tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>

                {{-- RIGHT COLUMN --}}
                <div class="col-lg-4 col-12">

                    <div class="card shadow-sm mb-3">
                        <div class="card-header py-2 bg-secondary text-white">
                            <strong style="font-size:12px;">Bill Summary</strong>
                        </div>
                        <div class="card-body py-2 px-3">
                            <div class="d-flex justify-content-between mb-1" style="font-size:12px;">
                                <span class="text-muted">Total Amount (₹)</span>
                                <span id="totalamount">0.00</span>
                            </div>
                            <div class="d-flex justify-content-between mb-1" style="font-size:12px;">
                                <span class="text-muted">CGST (9%)</span>
                                <span id="cgst">0.00</span>
                            </div>
                            <div class="d-flex justify-content-between mb-1" style="font-size:12px;">
                                <span class="text-muted">SGST (9%)</span>
                                <span id="sgst">0.00</span>
                            </div>
                            <div class="d-flex justify-content-between mb-1" style="font-size:12px;">
                                <span class="text-muted">IGST (0%)</span>
                                <span>0.00</span>
                            </div>
                            <div class="border-top border-bottom my-2 py-1 d-flex justify-content-between" style="font-size:12px;">
                                <span class="text-muted">Total Tax (₹)</span>
                                <span id="totaltax">0.00</span>
                            </div>
                            <div class="d-flex justify-content-between mb-1" style="font-size:13px; font-weight:600;">
                                <span>Bill Amount (₹)</span>
                                <span id="billamount">0.00</span>
                            </div>
                            <div class="d-flex justify-content-between mb-1 mt-3" style="font-size:12px;">
                                <span class="text-muted">Previous Outstanding (₹)</span>
                                <span>0.00</span>
                            </div>
                            <div class="d-flex justify-content-between mb-1" style="font-size:12px;">
                                <span class="text-muted">Adjustment (₹)</span>
                                <span>0.00</span>
                            </div>
                            <div class="d-flex justify-content-between mt-3" style="font-size:15px; font-weight:600;">
                                <span>Net Payable (₹)</span>
                                <span id="netpayable">0.00</span>
                            </div>
                            <div class="border-top mt-3 pt-2" style="font-size:11px;">
                                <div class="text-muted mb-1">Amount in Words:</div>
                                <div id="amountwords">Rupees Zero Only</div>
                            </div>
                        </div>
                    </div>

                    <div class="card shadow-sm mb-3">
                        <div class="card-header py-2 bg-secondary text-white">
                            <strong style="font-size:12px;">Remarks</strong>
                        </div>
                        <div class="card-body py-2 px-3">
                            <textarea class="form-control form-control-sm" id="remarks" name="remarks" rows="3"></textarea>
                        </div>
                    </div>

                </div>
            </div>
        </form>

    </div>
</div>

@endsection

<script>
(function(){
    var floors  = $('#floorsjson').val() ? JSON.parse($('#floorsjson').val()) : [];
    var services = $('#servicesjson').val() ? JSON.parse($('#servicesjson').val()) : [];
    var floorMap = {};
    floors.forEach(function(f){ floorMap[f.id] = f.name; });

    function formatINR(n){ return Number(n).toLocaleString('en-IN', {minimumFractionDigits:2, maximumFractionDigits:2}); }
    function numToWords(num){
        if(!num || num===0) return 'Rupees Zero Only';
        var ones=['','One','Two','Three','Four','Five','Six','Seven','Eight','Nine','Ten','Eleven','Twelve','Thirteen','Fourteen','Fifteen','Sixteen','Seventeen','Eighteen','Nineteen'];
        var tens=['','','Twenty','Thirty','Forty','Fifty','Sixty','Seventy','Eighty','Ninety'];
        function below1000(n){
            if(n===0) return '';
            if(n<20) return ones[n];
            if(n<100) return tens[Math.floor(n/10)] + (n%10?' '+ones[n%10]:'');
            return ones[Math.floor(n/100)]+' Hundred'+(n%100?' '+below1000(n%100):'');
        }
        if(num<10000000){
            var intPart=Math.floor(num), dec=Math.round((num-intPart)*100);
            var words='Rupees '+below1000(intPart);
            if(dec>0) words+=' and '+below1000(dec)+' Paise';
            return words+' Only';
        }
        return 'Rupees '+formatINR(num)+' Only';
    }

    // --- TENANT SELECT ---
    var $tenant = $('#tenantid'), $unit=$('#unitid'), $charge=$('#chargecode'), $billnogroup=$('#billno');

    $tenant.on('change', function(){
        var tid=$(this).val();
        $unit.prop('disabled',true).html('<option value="">-- Loading... --</option>');
        $('#brand,#floor,#contactperson,#mobile,#email').val('');
        $billnogroup.val('').attr('placeholder','--');
        if(!tid){ $unit.prop('disabled',true).html('<option value="">-- Select Unit --</option>'); return; }

        // Fetch tenant details
        $.post('gettenant',{tenantid:tid, _token:$('meta[name="csrf-token"]').attr('content')},function(d){
            $('#brand').val(d.tradename||d.name||'');
            $('#contactperson').val(d.conperson||'');
            $('#mobile').val(d.mobile||'');
            $('#email').val(d.email||'');
        });

        // Fetch tenant's units
        $.post('getunitsbytenant',{tenantid:tid, _token:$('meta[name="csrf-token"]').attr('content')},function(units){
            var h='<option value="">-- Select Unit --</option>';
            units.forEach(function(u){ h+='<option value="'+u.sn+'" data-floor="'+u.floorid+'" data-area="'+u.chargeablearea+'">'+u.shopname+'</option>'; });
            $unit.html(h).prop('disabled',false);
        });
    });

    // --- UNIT SELECT ---
    $unit.on('change', function(){
        var sn=$(this).val(), $opt=$(this).find('option:selected');
        $('#floor').val(floorMap[$opt.data('floor')]||'');
        $('#areaval').val($opt.data('area')?Number($opt.data('area')).toLocaleString('en-IN',{minimumFractionDigits:2}):'');
        if(sn && $tenant.val()) fetchAgreementCharges($tenant.val(), sn);
    });

    // --- CHARGE SELECT (Bill No) ---
    $charge.on('change', function(){
        var val=$(this).val(), $sel=$(this).find('option:selected');
        if(!val){ $billnogroup.val('').attr('placeholder','--'); return; }
        var sc=$sel.data('shortcode')||'', fy=new Date().getFullYear();
        $billnogroup.val(sc+'/'+fy+'/000001');
    });

    // --- FETCH FROM AGREEMENT ---
    $('#fetchagreement').on('click', function(){
        if(!$tenant.val()||!$unit.val()){ Swal.fire({icon:'info',title:'Select Tenant & Unit first'}); return; }
        fetchAgreementCharges($tenant.val(), $unit.val());
    });

    function fetchAgreementCharges(tid, uid){
        $.post('fetchleasecharges',{tenantid:tid, unitid:uid, _token:$('meta[name="csrf-token"]').attr('content')},function(d){
            renderChargeRows(d.charges||[]);
            if(d.lease && d.lease.duedateofmonth){
                var fy=new Date().getFullYear();
                $('#billdate').val(fy+'-'+String(d.lease.duedateofmonth).padStart(2,'0')+'-'+String(d.lease.duedateofmonth).padStart(2,'0'));
            }
        });
    }

    // --- RENDER CHARGE ROWS ---
    var sno=0;
    function renderChargeRows(charges){
        sno=0;
        var tbody=$('#chargedetails_tbody');
        tbody.empty();
        if(!charges.length){ tbody.html('<tr><td colspan="11" class="text-center text-muted">No lease charges found</td></tr>'); updateSummary(); return; }
        charges.forEach(function(c){
            sno++;
            var area=Number(c.area)||0, rate=Number(c.rate)||0, gst=Number(c.gstpercent)||0;
            var amt=area*rate;
            var gstAmt = c.gstapplicable ? amt*gst/100 : 0;
            var total = amt + gstAmt;
            tbody.append('<tr>'
                +'<td><input type="checkbox" class="rowchk"></td>'
                +'<td>'+sno+'</td>'
                +'<td><input type="text" class="form-control form-control-sm rowdesc" value="'+(c.chargename||'')+'" readonly></td>'
                +'<td><input type="text" class="form-control form-control-sm text-right rowarea" value="'+formatINR(area)+'" readonly></td>'
                +'<td><input type="text" class="form-control form-control-sm text-right rowrate" value="'+formatINR(rate)+'" readonly></td>'
                +'<td><input type="text" class="form-control form-control-sm text-right rowamt" value="'+formatINR(amt)+'" readonly></td>'
                +'<td><select class="form-control form-control-sm rowgstpct"><option value="'+gst+'" '+(gst?'selected':'')+'>'+gst+'%</option><option value="0" '+(gst?'':'')+' >0%</option></select></td>'
                +'<td><input type="text" class="form-control form-control-sm text-right rowgstamt" value="'+formatINR(gstAmt)+'" readonly></td>'
                +'<td><input type="text" class="form-control form-control-sm text-right rowtotal" value="'+formatINR(total)+'" readonly></td>'
                +'<td><input type="text" class="form-control form-control-sm rowremark"></td>'
                +'<td class="text-center text-muted"><a href="javascript:void(0)" class="deleterow mr-2"><i class="fa fa-trash text-danger"></i></a></td>'
                +'</tr>');
        });
        updateSummary();
    }

    // --- SUMMARY CALC ---
    $(document).on('change','.rowgstpct',function(){ recalcRow($(this).closest('tr')); updateSummary(); });
    $(document).on('click','.deleterow',function(){ $(this).closest('tr').remove(); renumberRows(); updateSummary(); });
    $('#chkall').on('change', function(){ $('.rowchk').prop('checked', $(this).prop('checked')); });
    $('#addrow').on('click', function(){
        sno++;
        $('#chargedetails_tbody').append('<tr>'
            +'<td><input type="checkbox" class="rowchk"></td>'
            +'<td>'+sno+'</td>'
            +'<td><input type="text" class="form-control form-control-sm rowdesc"></td>'
            +'<td><input type="text" class="form-control form-control-sm text-right rowarea" value="0.00"></td>'
            +'<td><input type="text" class="form-control form-control-sm text-right rowrate" value="0.00"></td>'
            +'<td><input type="text" class="form-control form-control-sm text-right rowamt" value="0.00" readonly></td>'
            +'<td><select class="form-control form-control-sm rowgstpct"><option value="18">18%</option><option value="0">0%</option></select></td>'
            +'<td><input type="text" class="form-control form-control-sm text-right rowgstamt" value="0.00" readonly></td>'
            +'<td><input type="text" class="form-control form-control-sm text-right rowtotal" value="0.00" readonly></td>'
            +'<td><input type="text" class="form-control form-control-sm rowremark"></td>'
            +'<td class="text-center text-muted"><a href="javascript:void(0)" class="deleterow mr-2"><i class="fa fa-trash text-danger"></i></a></td>'
            +'</tr>');
        updateSummary();
    });

    function recalcRow($tr){
        var area=parseFloat($tr.find('.rowarea').val().replace(/,/g,''))||0;
        var rate=parseFloat($tr.find('.rowrate').val().replace(/,/g,''))||0;
        var gst=parseFloat($tr.find('.rowgstpct').val())||0;
        var amt=area*rate;
        var gstAmt=amt*gst/100;
        $tr.find('.rowamt').val(formatINR(amt));
        $tr.find('.rowgstamt').val(formatINR(gstAmt));
        $tr.find('.rowtotal').val(formatINR(amt+gstAmt));
    }

    function renumberRows(){
        sno=0;
        $('#chargedetails_tbody tr').each(function(){
            sno++;
            $(this).find('td:eq(1)').text(sno);
        });
    }

    function updateSummary(){
        var totalAmt=0, totalGst=0;
        $('#chargedetails_tbody tr').each(function(){
            var a=parseFloat($(this).find('.rowamt').val().replace(/,/g,''))||0;
            var g=parseFloat($(this).find('.rowgstamt').val().replace(/,/g,''))||0;
            totalAmt+=a; totalGst+=g;
        });
        var half=Math.round(totalGst*50)/100;
        $('#totalamount').text(formatINR(totalAmt));
        $('#cgst').text(formatINR(half));
        $('#sgst').text(formatINR(half));
        $('#totaltax').text(formatINR(totalGst));
        var billAmt=totalAmt+totalGst;
        $('#billamount').text(formatINR(billAmt));
        $('#netpayable').text(formatINR(billAmt));
        $('#amountwords').text(numToWords(billAmt));
    }
})();
</script>