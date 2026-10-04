"""FODER cleanup — Phase 2: classified remaining files.

Categories (evidence: foder_census.json + REMAINING_PRIORITY_PLAN.md):
- JUST-PORTED  : is session me logic implement hua (RateList/GroupCatalog)
                 + port exists (paymenttype/menu/auth/company)
- DEAD-REFS    : core ported; flagged live tables sab 0 rows (VB6 dead staging)
- BLOCKED      : live tables hi nahi (REMAINING_PRIORITY_PLAN P8 documented)
- RUNTIME      : VB6 UI plumbing (MsgBox/menu runtime); port core me hai
- KEEP-DOC     : .md/.txt/.bas/.cls/.vbp docs+utilities (reference)

Run from HMS_py/ project root:
  python MODULE_FIX_PLANS/FODER/_apply_phase2.py --apply
"""
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))

JUST_PORTED = [
    "FrmRoomCatMast.frm",     # ratelist.py + RoomCategoryMasterForm (is session)
    "HallMenuCatalog.frm",    # grouplimits_set/list (is session)
    "FrmPayTypeMast.frm",     # paymenttype.py + PAY_TYPES (B009 fix)
    "FrmPlanPackMast.frm",    # plans.py PlanMasterForm
    "FrmPackageMast.frm",     # packagemaster.py p2 config
    "FrmVenueFeat.frm",       # venue.py features
    "OutLetMast.frm",         # depart.py outlet CRUD
    "DMTree.frm",             # menu.py User_Module/User1 rights port
    "UserPermission.frm",     # user_permissions_ui.py (menuHelp editor)
    "frmPassword.frm",        # auth.py login port
    "frmCompany.frm",         # company.py + GrpBookingDetails/StockLog read
    "frmFixedChargeMast.frm", # fixcharge.py
]
DEAD_REFS = [
    "FrmPOSBillDeletion.frm",              # TempPosDel 0
    "FrmPOSBillModificationDatewise.frm",  # TempPosDel 0
    "FrmPOSBillModificationItemGroupwise.frm",  # TempPosDel 0
    "FrmPOSRecycleData.frm",               # SplitSale1/2, SplitedSunTran 0
    "FrmParty.frm",                        # CATEGORY 0
    "FrmUserPaymentCollection.frm",        # UserCollection 0
    "FrmRevenueWiseBudget.frm",            # BudgetDetails 0 (live port Budget table use karta hai)
    "memCatRevMast.frm",                   # MemCatRevWise 0
    "RsAssignDelivery.frm",                # SplitSale1 0
    "RsStatusScreen.frm",                  # MemFacilityBilling 0
    "HallBill.frm",                        # HallBooking/HallBill tables GONE
    "FrmFomBillDeletion.frm",              # FomBillChangeDetails 0
]
BLOCKED = [
    "frmGodrejLockSettings.frm",  # door-lock vendor DLL; settings port godrej_locks.py
    "frmMessage.frm",             # messaging tables nahi
    "FrmImage.frm",               # image capture hardware
    "LockForm.frm",               # door lock runtime
]
RUNTIME = [
    "FrmMsgBox.frm", "FrmMenuList.frm", "REPVIEW.frm", "Form1.frm",
    "CsehDemoForm.frm", "FrmNAMessageA.frm", "FrmNAMessageB.frm",
    "FrmNAMessageC.frm", "FrmDataRecieving.frm",
    "RsTouchScreenFAFind.frm", "FrmControlPanel.frm",
]
PORT_EXISTS_RUNTIME = [
    "FrmExpense.frm",          # expenseentry.py port
    "FrmReceivePayment.frm",   # folio.receive_payment (B009/B010)
    "hAdvanceDepDialog.frm",   # folio settlement port (DepartPay lookup port me)
    "rsAdvanceDepDialog.frm",
    "rrsAdvanceDepDialog.frm",
    "HallAdvanceDepDialog.frm",
    "RsBookingEntry.frm",      # reservation.py + misc_vb6_ui (OrderPersonDetails)
    "RsKOTEntry.frm",          # pos_kot.py
    "fdNDAcPostChrg.frm",      # nightaudit posting (mCurStk VB6 rebuild-table)
    "frmFomB.frm",             # bill reprint port (psub open_bill_reprint)
    "resGroup.frm",            # group lookup — RateList join ab ratelist.py me
    "resRoomType.frm",         # reservation lookup port
    "rFomRepView.frm",         # reports.py engine
    "rHallRepView.frm",
    "rInventRepView.frm",      # inventory reports 33/33 pass
    "rMemberRepView.frm",
    "rPOSRepView.frm",
    "FaRepView.frm",
]
KEEP_DOC = [
    "FrmChangeKitch.frm" if os.path.exists(
        os.path.join(HERE, "FrmChangeKitch.frm")) else None,
]
ALL_DELETE = (JUST_PORTED + DEAD_REFS + BLOCKED + RUNTIME
              + PORT_EXISTS_RUNTIME)

def main():
    targets, missing = [], []
    for f in ALL_DELETE:
        p = os.path.join(HERE, f)
        (targets if os.path.exists(p) else missing).append(f)
    # orphan .frx of deleted forms
    frxs = []
    for f in targets:
        if f.lower().endswith(".frm"):
            fx = f[:-4] + ".frx"
            if os.path.exists(os.path.join(HERE, fx)):
                frxs.append(fx)
    targets += frxs
    print(f"DELETE {len(targets)} files "
          f"({len(missing)} listed-but-absent)")
    for f in targets:
        print("  -", f)
    if "--apply" not in sys.argv:
        print("(dry-run; --apply ke saath chalao)")
        return
    for f in targets:
        os.remove(os.path.join(HERE, f))
    print("DONE")

if __name__ == "__main__":
    main()
