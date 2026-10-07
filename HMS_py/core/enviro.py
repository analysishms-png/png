"""Enviro system settings core (VB6 frmEnviro.frm ka port) — 'Parameter'.

EVIDENCE (decompiled frmEnviro.frm + live Enviro row):
- MDIForm1 GENMas_Click Index=4 -> `global_52 = New frmEnviro` — General
  Setup -> 'Parameter' leaf isi ko kholta hai. User_Module: code='GENMas',
  name='Parameter', Module_Name='General Setup', srno=46.
- frmEnviro Cmd_Click: giant `Update Enviro Set AdvanceAc=...` UPDATE —
  single-row settings table (live: exactly 1 row, LogSite_Code='KK',
  SiteCode='KK'). Koi INSERT nahi — VB6 bhi sirf UPDATE karta hai.
- VB6 UPDATE cols (frmEnviro 4117-4230 chain se, exact list):
  AdvanceAc, Loan_Ac, Salary_Ac, PF_Limit, PF_Employee, PF_Employer,
  ESI_Limit, ESI_Employee, Bill_Header, CashPurchAc, Variation,
  VariationBefore, Checkout, checkoutvar, RoomChrgDueAc, RoomTaxDueAc,
  Rate1..Rate5, DefCompGroup, ArrDateTimeEdit(Left 1), CashPayType,
  RoomPayType, OutletDiscAc, OutletRoundAc, CommissionAc, Bill_Footer,
  CalcMethod, CancellationAC, HallDiscAC, HallRoundOff, PostingTYPE,
  OutDoorCatering, CatalogLimit, OutDoorSaleAC, IndoorSaleAC,
  OutDoorPartyAC, IndoorPartyAC, KOTPrinting, KOTPrintEdited, TaxSummary,
  TOKENPrint, KOTOutletSelection, DummyTravelAc, RcptPrinting,
  POSBillAtNightAudit, KOTAtNightAudit, NoShowAtNightAudit,
  BookingSlipFooter1/2, CashCardDebitAc, CashCardCreditAc,
  CashCardSecurityAc, OrderBookingPrintType, BillPrintingSummerised,
  PurchaseGodown, RptCashierSettlementAllUser, POSSaleBillEditLog,
  GuestChargesDeleteLog, GRCMandatory(Left 1), RoomRateEditable(Left 1),
  RoomIncTaxEditable(Left 1), RoomServiceChargeEditable(Left 1),
  CreditCardInfoMandatory(Left 1), NCKOTPercentage, KOTHeader1..4,
  GAppCompYear, GMonthConsidered, GWorkingDaysInAMonth, GDaysSalary,
  ReqCompWise, AcFieldAlterable, ExpMfdDateInMR, RateEditableInPO,
  RateEditableInStockIssue, BarCodeFeatureInPurchase,
  ReprintingOnSaleBillYN, HideSettledBillsOnSaleBillYN,
  ExciseInvoiceTaxStru, PurchaseTaxVAT, SaleTaxVAT,
  AddModifyEntryInBackDate, ResInstruction1..12, FPInstruction1..12,
  PlanTariffNarration, ESIBasic..ESILTA, KitchenStockReport,
  ItemRateInMRBasedOn, ItemRateInPurchaseBillBasedOn, SmartCardItem
  WHERE SITECODE='<site>'.
- Live defaults (probe): Cash_Ac KKCASH, CashPayType KKCASH,
  RoomPayType KKROOM, Checkout 'Other', Variation '01:00',
  CheckoutVar '10:00', Postingtype 'Daily Bill wise Posting',
  KOT/POS/NoShow AtNightAudit 'Yes', SplitYN 'Yes',
  AllowRoomSettlement 'Yes', RoomRateEditable 'Y', FomBillCopies 0.
- EDITABLE-WHITE-LIST (safety): hum sirf operational YN/timing/header
  settings write karte hain — accounting AC-code cols (AdvanceAc,
  Loan_Ac, Salary_Ac, Cash_Ac aadi) READ-ONLY rahenge (finance-integrity;
  VB6 me bhi ye FaEnviro side se hote the). Rejected: HR/GAppCompYear
  numbers bhi guarded (GL approval note MIGRATION_STATUS me).
- MS-013 Tier-1 (2026-10-02): 6 AC-cols jo VB6 frmEnviro me editable the
  par port ke white-list/read-only dono se bahar the (save poori fail ho
  jaati thi) — ab EDITABLE me: OutdoorSaleAC, IndoorSaleAC,
  OutdoorPartyAC, IndoorPartyAC, HallDiscAC, HallRoundOff.
  CASE NOTE: VB6 SQL `OutDoorSaleAC`/`OutDoorPartyAC` likhta hai (SQL
  Server case-insensitive) par live declared col casing hai
  `OutdoorSaleAC`/`OutdoorPartyAC` — r.keys() declared casing return
  karta hai, isliye port keys declared casing use karta hai.
  Save par light SubGroup existence check (VB6 reverse-resolve
  `Select Name From SubGroup Where Code=?`).

NOTE: FrmControlPanel.frm (Winsock LockSystem#/Shutdown#, port 0x1F45)
alag hidden utility hai — woh separate ticket; is module ka scope =
frmEnviro 'Parameter' settings screen.
"""
from __future__ import annotations

import datetime

from HMS_py.core import db

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = db.get_user()

# VB6 Cmd_Click UPDATE-chain se SAFELY-editable operational settings.
# (col, type) — type validate ke liye: yn3='Yes'/'No', yn1='Y'/'N',
# time=HH:MM, int, str
EDITABLE = {
    # Front Office / Folio behaviour (live values evidence)
    "Checkout": "str",            # 'Other' (checkout time rule label)
    "CheckoutVar": "time",        # '10:00'
    "Variation": "time",          # '01:00'
    "VariationBefore": "str",     # '' (varchar 5)
    "ArrDateTimeEdit": "yn1",     # 'Y'/'N' (Left 1 in VB6)
    "GRCMandatory": "yn1",        # 'N' live
    "RoomRateEditable": "yn1",    # 'Y' live
    "RoomIncTaxEditable": "yn1",
    "RoomServiceChargeEditable": "yn1",
    "CreditCardInfoMandatory": "yn1",
    "SplitYN": "yn3",             # 'Yes' live
    "AllowRoomSettlement": "yn3",  # 'Yes' live
    "MultiBillGeneration": "yn3",
    "AllowBillOnHoldSettlement": "yn3",
    "PostComplimentaryBills": "yn3",
    "PostNilLT": "yn3",
    "RoomRentBefChkOut": "yn3",
    "PostRoomDiscSeparately": "yn3",
    "GuestChargesDeleteLog": "yn3",
    # Night Audit gates (VB6 MDIForm1 var_8C=2 checks KOTAtNightAudit etc.)
    "KOTAtNightAudit": "yn3",         # 'Yes' live
    "POSBillAtNightAudit": "yn3",     # 'Yes' live
    "NoShowAtNightAudit": "yn3",      # 'Yes' live
    "ResetTokenAtNightAudit": "yn3",
    # POS / KOT printing
    "KOTPrinting": "str",         # 'For All Kitchen' live
    "KOTPrintEdited": "str",
    "KOTOutletSelection": "yn3",
    "TaxSummary": "yn3",          # 'Yes' live
    "TOKENPrint": "yn3",          # 'No' live
    "AutoPrintKOTYN": "yn3",
    "FreeItemInKOT": "yn3",
    "POSSaleBillModification": "yn3",
    "POSSaleBillEditLog": "yn3",
    "BillPrintingSummerised": "yn3",
    "ReprintingOnSaleBillYN": "yn3",
    "HideSettledBillsOnSaleBillYN": "yn3",
    # Bill headers/footers (varchar 250/75)
    "Bill_Header": "str",
    "Bill_Footer": "str",
    "BookingSlipFooter1": "str",
    "BookingSlipFooter2": "str",
    # Misc operational
    "ReservationPrinting": "str",  # 'W' live (width mode)
    "RcptPrinting": "str",         # 'W' live
    "FomBillCopies": "int",        # 0 live (smallint)
    "NCKOTPercentage": "int",      # smallint
    "AddModifyEntryInBackDate": "yn3",
    "ImprestAmount": "float",
    "CashPayType": "str",
    "RoomPayType": "str",
    # MS-013 Tier-1: VB6 frmEnviro AC-cols (loader :4690ff, UPDATE :2216ff)
    # live-editable; declared casing (VB6 me OutDoor* likha jaata tha).
    "OutdoorSaleAC": "str",   # 'KK000004' live
    "IndoorSaleAC": "str",    # 'KK000004' live
    "OutdoorPartyAC": "str",  # 'KK000003' live
    "IndoorPartyAC": "str",   # 'KK000003' live
    "HallDiscAC": "str",      # 'KKDISC' live
    "HallRoundOff": "str",    # 'KKROFF' live
    "OutDoorCatering": "yn3",
    "CatalogLimit": "yn3",  # VB6 IIf(IsNull,"No",...) — Y/N, live 'Yes'
    "OrderBookingPrintType": "str",
    "ExciseInvoiceTaxStru": "str",
    "PurchaseTaxVAT": "str",
    "SaleTaxVAT": "str",
    "ResInstruction1": "yn3",
    "ResInstruction2": "yn3",
    "ResInstruction3": "yn3",
    "ResInstruction4": "yn3",
    "ResInstruction5": "yn3",
    "ResInstruction6": "yn3",
    "ResInstruction7": "yn3",
    "ResInstruction8": "yn3",
    "ResInstruction9": "yn3",
    "ResInstruction10": "yn3",
    "ResInstruction11": "yn3",
    "ResInstruction12": "yn3",
    "FPInstruction1": "yn3",
    "FPInstruction2": "yn3",
    "FPInstruction3": "yn3",
    "FPInstruction4": "yn3",
    "FPInstruction5": "yn3",
    "FPInstruction6": "yn3",
    "FPInstruction7": "yn3",
    "FPInstruction8": "yn3",
    "FPInstruction9": "yn3",
    "FPInstruction10": "yn3",
    "FPInstruction11": "yn3",
    "FPInstruction12": "yn3",
    "PlanTariffNarration": "str",
    # MS-038: plan/tariff switches. VB6 frmEnviro Cmd_Click writes all three
    # in its UPDATE SET chain -- PlanMastType at loc_1CB268B/1CB26B1,
    # PlanSelectionBasedOn + PlanCalc at loc_1CB2801 -- and each has a bound
    # edit control (loc_1DE1F76 / loc_1DE1510). They were missing here, so
    # ParameterTab._save_enviro silently dropped them on Save even though the
    # HR/Payroll group renders all three controls.
    # Spec "str" (not yn3): VB6 wraps these in Proc_6_38_E68A98 (string
    # escape) with NO Yes/No check, so no enum validation is invented here.
    # PlanMastType additionally drives the "Plan Master" form choice --
    # see core/plan_definition.plan_master_mode.
    "PlanMastType": "str",
    "PlanCalc": "str",
    "PlanSelectionBasedOn": "str",
    "KitchenStockReport": "str",  # VB6 IIf(Trim(..)="","Standard",..) — live 'Standard'
    "ItemRateInMRBasedOn": "str",
    "SmartCardItem": "str",  # VB6 ItemMast.Code (varchar 8) — Yes/No nahi hai
    # ---------------------------------------------------------------
    # AUDIT-20261005 P2-O / MS-013 re-estimate (Batch D): VB6 frmEnviro ke
    # UPDATE chain (loc_1CB2322..loc_1CB2E64) me ye operational cols
    # update hote hain par port ke EDITABLE/READ_ONLY dono se bahar the —
    # yani save par silently DROP ho jaate the. Ab EDITABLE me.
    # Har col ka VB6 line aur live value niche comment me hai.
    # (Live types: INFORMATION_SCHEMA Enviro, 2026-10-06.)
    "AutoSplitYN": "yn1",             # loc_1CB2717 IIf(flag,"Y","N") — live 'N'
    "RoomChrgPostingType": "str",      # loc_1CB268B — live 'Daily' (varchar 50)
    "BillAmendMode": "str",            # loc_1CB27AF — live '' (varchar 10)
    "PrintRcpt": "yn3",                # loc_1CB2827 — live 'Yes'
    "RptCashierSettlementAllUser": "yn3",  # loc_1CB2928 — live 'Yes'
    "ExpMfdDateInMR": "yn3",           # loc_1CB2A71 — live 'No'
    "RRIncTaxDefault": "yn3",          # loc_1CB2CF5 — live 'No'
    "RRSerChrgDefault": "yn3",         # loc_1CB2D1B — live 'Yes'
    "ServiceTaxOnServiceChargeYN": "yn3",  # loc_1CB2D67 — live 'No'
    "ItemRateInPurchaseBillBasedOn": "str",  # loc_1CB2E23 — live 'Last Purchase Rate'
    # Rate1..Rate5 = tariff-slot LABELS (varchar 20), live: 'High Rate',
    # 'Rack Rate', 'Disc1 Rate', 'Disc2 Rate', 'Disc3 Rate'
    # (VB6 loc_1CB2464/1CB2493).
    "Rate1": "str",
    "Rate2": "str",
    "Rate3": "str",
    "Rate4": "str",
    "Rate5": "str",
}

# Finance/HR AC-code cols — VB6 frmEnviro inhe update karta hai par hum
# GL-integrity ke liye read-only rakhte hain (documented decision).
# MS-013 Tier-1: Outlet/Banquet ke 6 AC-cols ab EDITABLE (upar) — yahan se
# taaki koi col EDITABLE + READ_ONLY dono na dikhe:
# OutdoorSaleAC, IndoorSaleAC, OutdoorPartyAC, IndoorPartyAC,
# HallDiscAC, HallRoundOff.
READ_ONLY = (
    "Cash_Ac", "DiscountAc", "RoundOffAc", "CommAC", "SALARY_AC",
    "Loan_AC", "AdvanceAc", "RoomChrgDueAc", "RoomTaxDueAc",
    "CancellationAC", "CashPurchAc",
    "OutletDiscAc", "OutletRoundAc", "CommissionAc", "DummyTravelAc",
    "BookingPartyAc", "CashCardDebitAc", "CashCardCreditAc",
    "CashCardSecurityAc", "DefCompGroup",
    "PF_LIMIT", "PF_EMPLOYEE", "PF_EMPLOYER", "ESI_LIMIT", "esi_employee",
    "GAppCompYear", "GMonthConsidered", "GWorkingDaysInAMonth",
    "GDaysSalary", "ESIBasic", "ESIDA", "ESIHRA", "ESIConvey", "ESIOther",
    "ESILTA", "AttendType",
    # AUDIT-20261005 P2-O: VB6 frmEnviro inhe bhi update karta hai, par ye
    # A/C-code (GL) columns hain — GL-integrity ke liye READ-ONLY hi rakhe:
    #   AdvanceRRoomRent  varchar(8), live 'KK000002' (SubGroup SubCode)
    #   AmendRevenue      varchar(6), revenue A/C target (loc_1CB27AF)
    "AdvanceRRoomRent", "AmendRevenue",
)


def get(cn=None) -> dict:
    """Poora Enviro row (dict) — live single row."""
    row = db.query("SELECT * FROM Enviro WHERE LogSite_Code = ? OR "
                   "LogSite_Code = 'HO'", (SITE_CODE,), cn=cn)
    if not row:
        raise ValueError("Enviro row hi nahi mila (settings table khali)")
    r = row[0]
    if hasattr(r, "keys"):
        return {k: r[k] for k in r.keys()}
    cols = [c[0] for c in db.query(
        "SELECT name FROM sys.columns WHERE object_id = "
        "OBJECT_ID('Enviro') ORDER BY column_id", cn=cn)]
    return dict(zip(cols, r))


def get_setting(key: str, default="", cn=None):
    """Ek setting ki value (EDITABLE+READ_ONLY dono read hote hain)."""
    row = db.query(f"SELECT [{key}] FROM Enviro WHERE LogSite_Code = ? "
                   "OR LogSite_Code = 'HO'", (SITE_CODE,), cn=cn)
    if not row or row[0][0] is None:
        return default
    v = row[0][0]
    if isinstance(v, bytes):  # image col guard
        return default
    return v


# MS-013 Tier-1: ye6 AC-cols VB6 frmEnviro me SubGroup se reverse-resolve
# hote hain — save par light existence check (parameterized, RTRIM style
# core/account_merge.py jaisa). Blank = cleared, skip.
AC_SUBGROUP_KEYS = frozenset({
    "OutdoorSaleAC", "IndoorSaleAC", "OutdoorPartyAC", "IndoorPartyAC",
    "HallDiscAC", "HallRoundOff",
})


def _validate(key: str, value, cn=None):
    """VB6 validation rules (type-wise) — frmEnviro ke IIf/Left(1) logic.

    MS-013 Tier-1: AC-cols par SubGroup existence check bhi (VB6
    reverse-resolve `Select Name From SubGroup Where Code=?`)."""
    if key not in EDITABLE:
        raise ValueError(
            f"'{key}' editable nahi hai (white-list dekho; finance/HR "
            "AC-cols READ-ONLY hain — GL integrity decision)")
    t = EDITABLE[key]
    s = str(value if value is not None else "").strip()
    if s == "" and t in ("yn3", "yn1", "time", "int", "float"):
        return ""  # blank is valid live-state (kai cols NULL/'' hain)
    if t == "yn3":
        if s.lower() not in ("yes", "no"):
            raise ValueError(f"{key}: 'Yes'/'No' hi (VB6 IIf Y/N)")
        return s.capitalize()
    if t == "yn1":
        if s.upper() not in ("Y", "N"):
            raise ValueError(f"{key}: 'Y'/'N' hi (VB6 Left(x,1))")
        return s.upper()
    if t == "time":
        try:
            hh, mm = s.split(":")
            if not (0 <= int(hh) <= 23 and 0 <= int(mm) <= 59):
                raise ValueError
        except Exception:
            raise ValueError(f"{key}: HH:MM format chahiye (jaise '10:00')")
        return f"{int(hh):02d}:{int(mm):02d}"
    if t == "int":
        try:
            return int(float(s))
        except Exception:
            raise ValueError(f"{key}: integer chahiye")
    if t == "float":
        try:
            return float(s)
        except Exception:
            raise ValueError(f"{key}: number chahiye")
    if key in AC_SUBGROUP_KEYS and s:
        # VB6: `Select Name From SubGroup Where Code=?` reverse-resolve
        # (light existence check; bad code save ko rokta hai).
        if not db.query(
                "SELECT 1 FROM [SubGroup] WHERE RTRIM([SubCode]) = ?",
                (s,), cn=cn):
            raise ValueError(
                f"{key}: SubGroup me code '{s}' nahi mila "
                "(Help/ledger grid se code chuno)")
    return s  # str


def update_settings(changes: dict, user: str = USER, cn=None,
                    commit: bool = True) -> int:
    """Multi-setting update (VB6 Cmd_Click ka UPDATE, parametrized —
    VB6 string-concat SQL ka injection-safe port). Audit: U_AE='E',
    U_Name (Enviro me U_Name/U_EntDt cols hain — live schema check).
    Return: affected rows (0/1)."""
    if not changes:
        raise ValueError("Khaali changes")
    # LIVE-SCHEMA NOTE: Enviro me U_Name/U_EntDt cols NAHI hain (222 cols
    # checked) — audit trail EnviroLog nahi, bas U_AE bhi nahi. VB6 ne bhi
    # plain UPDATE kiya tha. Audit yahan: caller-side logging.
    # cn pehle kholte hain kyunki _validate ka AC/SubGroup check isi cn
    # ko reuse karta hai (extra connections nahi).
    own = cn is None
    cn = cn or db.connect()
    try:
        validated = {k: _validate(k, v, cn=cn)
                     for k, v in changes.items()}
        sets = ", ".join(f"[{k}] = ?" for k in validated)
        n = db.execute(
            f"UPDATE Enviro SET {sets} WHERE LogSite_Code = ? "
            "OR LogSite_Code = 'HO'",
            tuple(validated.values()) + (SITE_CODE,), cn=cn, commit=False)
        print(f"[enviro] {user} updated: "
              + ", ".join(f"{k}={v!r}" for k, v in validated.items()))
        if commit:
            cn.commit()
        return n
    finally:
        if own:
            cn.close()


def update_setting(key: str, value, user: str = USER, cn=None,
                   commit: bool = True) -> int:
    return update_settings({key: value}, user=user, cn=cn, commit=commit)


def snapshot(cn=None) -> dict:
    """Pre-update snapshot (rollback tests ke liye — sirf EDITABLE cols)."""
    full = get(cn=cn)
    return {k: full.get(k) for k in EDITABLE}
