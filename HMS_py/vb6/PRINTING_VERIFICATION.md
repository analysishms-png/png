# HMS Printing Verification

| Module | Form | Report | Printer Selection | Page Layout | Reprint | Error Handling | Status |
|---|---|---|---|---|---|---|---|
| Main Setup | Company Master | Profile Print | VERIFIED | VERIFIED | N/A | VERIFIED | VERIFIED |
| ... | ... | ... | ... | ... | ... | ... | ... |
| Point Of Sale | RsPaymentReceice (Payment Receive Entry (POS)) | VB6 Crystal `POSPAYMENTRECIEPT.RPT` + `PosPaymentRecieptBillInfo` subreport | NOT PORTED | NOT PORTED | NOT PORTED | N/A | **PENDING** — artifact khaali hai (evidence 2026-10-03: repo ke saare 752 `.rpt` files me `POSPAYMENTRECIEPT` 0 match; HMS2526/Reports me `PaymentReceiveRep.rpt` alag (member) report hai; Python `core/reports.py` 278 keys me iska koi key nahi). Isliye `ui/rs_payment_receive_ui.py` ka Print button disabled hai tooltip ke saath — fake print nahi dikhaya jaata |
