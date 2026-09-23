import sys
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import reports as rp
by = rp.by_key()
cands = ["ArrivalDepList","arrival_departure_list","AttendanceRep","CashierSummary","CashierCollection",
"cashier_collection","GuestPayments","guest_payments","ItemWiseGroupWiseSaleReport","ItemWiseSale",
"KotEditDelete","KOTRateChange","MonthOutletWiseSale","PlanReport","SaleSumm","CashierSettlement",
"SettleRep","TaxDetails","TaxwiseDetailReportHall","TaxWiseSale","FOMTaxWiseChargeDetail",
"RoomWisePlan","ChargePayment","ChargePaymentDetail","PaymentReceive","PaymentDueLetterReport",
"StewardWiseSale","StewardSale","RoomWisePlanDetail","PlanDetail"]
for c in cands:
    print(f"{'YES' if c in by else 'no ':3} {c}")
# search keys containing steward / plan / charge / roomwise / monthly
for tok in ["steward","plan","charge","roomwise","room_wise","monthly","month","payment","kot"]:
    hits = [k for k in by if tok in k.lower()]
    print(f"\n{tok}: {hits[:15]}")
