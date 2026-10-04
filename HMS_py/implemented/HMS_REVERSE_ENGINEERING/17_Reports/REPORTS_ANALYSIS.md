# HMS_REPORTS_ANALYSIS (partial - Phase 14 ongoing)  [VERIFIED-CONFIG + VERIFIED-SQL]

Folder: Reports\ — 524 files: Crystal Reports .rpt + .ttx ADO field-definition stubs.
Report path comes from INI key 2 (C:\PENDRIVE\HMS\Reports). Runtime errors confirm
Crystal Reports ActiveX Designer (Seagate CR 7/8 era).

## Report → data source mapping (from .ttx field lists + code)
- BillPrint.rpt/.ttx → PayCharge-style fields (DocId, Vtype, VNo, FolioNo, AmtDr/AmtCr,
  PayType, RoomNo, TaxPer, OnAmt, Bill_No, SettleDate, GuestProf, City/State/Country names)
  → bill/guest invoice print.
- Advance Reciept.rpt/.ttx → advance receipt voucher.
- CashierReport/CashierCollect/CashierSettlement(.ttx) → shift cashier totals.
- ChkInRegister / ChkOutRegister / ArrDepReg / ArrivalDepList → arrivals/departures registers.
- DailyReport / DailyRepII / Day23RoomAvail(.ttx) / Day23RoomType → night-audit daily pack.
- NightAuditReport / NightAuditReportI (GRepFormName values, MDI menu lines 36/471).
- BookingDetail / BOOKINGPrint → reservation docs; CancellLetter / ConfirmLetter.
- BusinessAnalysis / CompanyAnalysis / CompanySumm / BussSource / MarketSeg reports → MIS.
- GST: EGST.rar in Reports + GSTR1_Excel_Workbook_Template_V1.5.xlsx at root +
  eInvoice/eInvoiceBill1 runtime tables → GST billing & e-invoice JSON flow.
- catlog/catlog1, HallMenuCatalog → banquet menu catalog; HallEstimate/HallBill → banquet.

## Form names driving reports (from MDI menu handlers)
global_52.GRepFormName values seen: "NightAuditReport", "NightAuditReportI";
viewers: rFomRepView, rHallRepView, rInventRepView, rMemberRepView, rPOSRepView, REPVIEW.

## PrintFormats table
39 references in code — per-form print format overrides.

## Next steps (remaining)
- Extract .ttx field lists for all ~60 .ttx files (scripted).
- Map each .rpt to menu location via MenuHelp/form references.
- Estimate: full report mapping is a Phase-14 continuation task.
