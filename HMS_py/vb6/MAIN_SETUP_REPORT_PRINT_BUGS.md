# Main Setup Report Print/Reprint Bugs

**Last Updated:** 2026-10-01  
**Scope:** Printing, preview, and reprinting behavior differences between VB6 and Python

---

## Bug Format
| Field | Description |
|-------|-------------|
| Report/Function | VB6 Report/Form / Python Report/Function |
| VB6 Behavior | Expected from VB6 |
| Python Behavior | Current implementation |
| Difference | Classification |
| Root Cause | Why it differs |
| Fix Required | What to change |
| Priority | P0=Critical, P1=High, P2=Medium |

---

## 1. Print Engine Architecture

| Report/Function | VB6 Behavior | Python Behavior | Difference | Root Cause | Fix Required | Priority |
|-----------------|--------------|-----------------|------------|------------|--------------|----------|
| Report Engine | VB6 DataReport (.rpt files) + custom print modules | Python reports.py + print_preview.py (Qt) | [INTENTIONAL MODERNIZATION] | Different tech | Document mapping, verify output parity | P1 |
| Report Files | .rpt files in VB6 project | No .rpt files in Python | [MISSING PYTHON LOGIC] | Not ported | Create report templates or code-based | P0 |
| Data Binding | DataReport.DataSource = ADO Recordset | Python: query → dict → template | [WRONG PYTHON LOGIC] | Different binding | Verify data matches exactly | P0 |
| Sections | ReportHeader, PageHeader, Detail, PageFooter, ReportFooter | Python: template sections | PARTIAL | — | Verify all sections render | P1 |

---

## 2. Print Preview

| Report/Function | VB6 Behavior | Python Behavior | Difference | Root Cause | Fix Required | Priority |
|-----------------|--------------|-----------------|------------|------------|--------------|----------|
| Preview Method | Report.PrintPreview (modal) | print_preview.py shows QDialog | PARTIAL | — | Verify modal behavior | P1 |
| Preview Zoom | VB6: 50%, 75%, 100%, 150%, 200% | print_preview: basic zoom | [MISSING PYTHON LOGIC] | Not full feature | Add zoom levels | P2 |
| Preview Navigation | First, Prev, Next, Last page buttons | print_preview: basic nav | PARTIAL | — | Verify all nav buttons | P1 |
| Preview Print Button | Click → Print dialog | print_preview: print button | OK | — | Verify | P1 |
| Preview Close | Close preview window | print_preview: close | OK | — | Verify | P1 |
| Multiple Preview | Can open multiple previews | Not tested | [MISSING PYTHON LOGIC] | Not verified | Test multiple | P2 |

---

## 3. Direct Printing

| Report/Function | VB6 Behavior | Python Behavior | Difference | Root Cause | Fix Required | Priority |
|-----------------|--------------|-----------------|------------|------------|--------------|----------|
| Print Method | Report.PrintOut (to default/selected printer) | Not implemented in reports.py | [PRT BUG] | Not ported | Implement PrintOut equivalent | P0 |
| Printer Selection | CommonDialog.ShowPrinter → Analysis.ini key 4 | Not implemented | [PRT BUG] | Not ported | Add printer selection dialog | P0 |
| Copies | VB6: Report.PrintOut Copies:=n | Not implemented | [PRT BUG] | Not ported | Add copies parameter | P1 |
| Collate | VB6: Collate option | Not implemented | [PRT BUG] | Not ported | Add collate option | P2 |
| Paper Size | VB6: PaperSize from printer | Not implemented | [PRT BUG] | Not ported | Add paper size | P2 |
| Orientation | VB6: Orientation from report | Not implemented | [PRT BUG] | Not ported | Add orientation | P2 |
| Margins | VB6: Margins from report | Not implemented | [PRT BUG] | Not ported | Add margins | P2 |
| Print to File | VB6: PrintToFile option | Not implemented | [PRT BUG] | Not ported | Add print to file | P2 |
| Print Range | VB6: FromPage, ToPage | Not implemented | [PRT BUG] | Not ported | Add page range | P1 |

---

## 4. Reprinting (Critical)

| Report/Function | VB6 Behavior | Python Behavior | Difference | Root Cause | Fix Required | Priority |
|-----------------|--------------|-----------------|------------|------------|--------------|----------|
| Reprint Concept | Reprint uses ORIGINAL document ID + same parameters | Not implemented | [RPRT BUG] | Not analyzed | Trace VB6 reprint logic | P0 |
| Bill Reprint | POSBillReprint.frm: Select bill → Reprint with same data | Not in Python | [RPRT BUG] | Not ported | Implement bill reprint | P0 |
| Folio Reprint | fdDisplayFolio: Reprint folio with original data | Not in Python | [RPRT BUG] | Not ported | Implement folio reprint | P0 |
| KOT Reprint | KOTPrinting settings + Reprint button | Not in Python | [RPRT BUG] | Not ported | Implement KOT reprint | P0 |
| Receipt Reprint | RcptPrinting + Reprint | Not in Python | [RPRT BUG] | Not ported | Implement receipt reprint | P0 |
| Tagada Reprint | Tagada letters reprint | Not in Python | [RPRT BUG] | Not ported | Implement Tagada reprint | P1 |
| Audit Trail | Reprint logs: U_AE='R', U_Name, U_EntDt | Not implemented | [AUD BUG] | Not ported | Add reprint audit | P1 |
| Reprint Count | Tracks reprint count on document | Not implemented | [MISSING PYTHON LOGIC] | Not ported | Add reprint counter | P1 |

---

## 5. Printing Parameters (Analysis.ini + Enviro)

| Parameter | VB6 Source | Python Source | Difference | Root Cause | Fix Required | Priority |
|-----------|------------|---------------|------------|------------|--------------|----------|
| Reports Path | Analysis.ini Key 2 | printing_settings_snapshot().reports | OK | — | Verify path exists | P1 |
| Temp Folder | Analysis.ini Key 3 | printing_settings_snapshot().temp | OK | — | Verify path exists | P1 |
| Printer Name | Analysis.ini Key 4 | printing_settings_snapshot().printer | OK | — | Verify printer exists | P1 |
| KOT Printing | Enviro.KOTPrinting | enviro.get_setting('KOTPrinting') | OK | — | Verify values match | P1 |
| KOT Outlet Selection | Enviro.KOTOutletSelection | enviro.get_setting('KOTOutletSelection') | OK | — | Verify | P1 |
| Bill Header | Enviro.Bill_Header | enviro.get_setting('Bill_Header') | OK | — | Verify | P1 |
| Bill Footer | Enviro.Bill_Footer | enviro.get_setting('Bill_Footer') | OK | — | Verify | P1 |
| Receipt Printing | Enviro.RcptPrinting | enviro.get_setting('RcptPrinting') | OK | — | Verify | P1 |
| Reservation Printing | Enviro.ReservationPrinting | enviro.get_setting('ReservationPrinting') | OK | — | Verify | P1 |
| Token Print | Enviro.TOKENPrint | enviro.get_setting('TOKENPrint') | OK | — | Verify | P1 |
| FOM Bill Copies | Enviro.FomBillCopies | enviro.get_setting('FomBillCopies') | OK | — | Verify | P1 |

---

## 6. Specific Form Print Functions

### 6.1 Company Master (CompMast.frm)

| Function | VB6 Behavior | Python Behavior | Difference | Root Cause | Fix Required | Priority |
|----------|--------------|-----------------|------------|------------|--------------|----------|
| Print Company | btnok or menu Print → Company report | Not implemented | [PRT BUG] | No report | Implement company report | P1 |
| Preview Company | Preview button → PrintPreview | Not implemented | [PRT BUG] | No preview | Implement preview | P1 |

### 6.2 FA Environment (FaEnvron.frm)

| Function | VB6 Behavior | Python Behavior | Difference | Root Cause | Fix Required | Priority |
|----------|--------------|-----------------|------------|------------|--------------|----------|
| Print FA Env | BtnIntegrity or menu Print → FA Env report | fa_enviro_ui.py read-only, no print | [PRT BUG] | No print | Add print to fa_enviro_ui | P1 |
| Preview FA Env | Preview button | Not implemented | [PRT BUG] | No preview | Add preview | P1 |

### 6.3 User Master (UserMast.frm)

| Function | VB6 Behavior | Python Behavior | Difference | Root Cause | Fix Required | Priority |
|----------|--------------|-----------------|------------|------------|--------------|----------|
| Print User List | Menu Print → User list report | usermaster_ui.py no print | [PRT BUG] | No print | Add print user list | P1 |
| Print User Detail | Select user → Print detail | Not implemented | [PRT BUG] | No print | Add print user detail | P1 |

### 6.4 General Setup (FDGENMAS)

| Function | VB6 Behavior | Python Behavior | Difference | Root Cause | Fix Required | Priority |
|----------|--------------|-----------------|------------|------------|--------------|----------|
| Print Tax Master | Tax Master tab → Print | TaxMasterTab no print | [PRT BUG] | No print | Add print | P1 |
| Print Tax Structure | Tax Structure tab → Print | TaxStructureTab no print | [PRT BUG] | No print | Add print | P1 |
| Print Payment Type | Payment Type tab → Print | PaymentTypeTab no print | [PRT BUG] | No print | Add print | P1 |
| Print Parameter | Parameter tab → Print | ParameterTab no print | [PRT BUG] | No print | Add print | P1 |
| Print Room Feature | Room Feature → Print | RoomFeature form no print | [PRT BUG] | No print | Add print | P1 |
| Print Godown | Godown → Print | Godown form no print | [PRT BUG] | No print | Add print | P1 |
| Print Voucher Type | Voucher Type → Print | VoucherTypeBrowser no print | [PRT BUG] | No print | Add print | P1 |

---

## 7. POS/FO Printing (Referenced from Main Setup)

| Function | VB6 Behavior | Python Behavior | Difference | Root Cause | Fix Required | Priority |
|----------|--------------|-----------------|------------|------------|--------------|----------|
| POS Bill Print | POSBillPrint.bas: PrintOut to kitchen/bill printer | core/pos_sales.py has print | PARTIAL | — | Verify all printers | P0 |
| KOT Print | Enviro.KOTPrinting → Kitchen printer | core/pos_sales.py has KOT | PARTIAL | — | Verify outlet selection | P0 |
| Receipt Print | Enviro.RcptPrinting → Receipt printer | Not fully traced | [PRT BUG] | Not analyzed | Trace receipt print | P0 |
| Bill Reprint | POSBillReprint.frm: Select bill → Reprint | Not in Python | [RPRT BUG] | Not ported | Implement bill reprint | P0 |
| Night Audit Print | Enviro.POSBillAtNightAudit, KOTAtNightAudit, NoShowAtNightAudit | Not traced | [PRT BUG] | Not analyzed | Trace night audit print | P1 |

---

## 8. Print Output Format Issues

| Aspect | VB6 Output | Python Output | Difference | Root Cause | Fix Required | Priority |
|--------|------------|---------------|------------|------------|--------------|----------|
| Font | VB6 report fonts (Arial, Tahoma) | Qt default fonts | [PRT BUG] | Font mismatch | Match VB6 fonts exactly | P1 |
| Font Size | VB6: 8-12pt per field | Qt: may differ | [PRT BUG] | Font size mismatch | Match VB6 sizes | P1 |
| Alignment | VB6: Left/Center/Right per field | Qt: may differ | [PRT BUG] | Alignment mismatch | Match VB6 alignment | P1 |
| Lines/Boxes | VB6: Line/Box controls in report | Qt: CSS borders | [PRT BUG] | Rendering diff | Match VB6 lines | P1 |
| Images | VB6: Picture controls (logo) | Qt: QPixmap in template | PARTIAL | — | Verify logo prints | P1 |
| Page Breaks | VB6: ForceNewPage property | Qt: CSS page-break | [PRT BUG] | Different engine | Match page breaks | P1 |
| Numeric Format | VB6: Format(amt, "##,##0.00") | Python: f"{amt:,.2f}" | PARTIAL | — | Verify all formats | P1 |
| Date Format | VB6: dd/MMM/yyyy | Python: dd/MMM/yyyy | OK | — | Verify | P1 |
| Currency Symbol | VB6: Rs. or ₹ per region | Python: hardcoded or config | [PRT BUG] | May differ | Use config/region | P1 |

---

## 9. Printer-Specific Issues

| Issue | VB6 Handling | Python Handling | Difference | Root Cause | Fix Required | Priority |
|-------|--------------|-----------------|------------|------------|--------------|----------|
| Dot Matrix | VB6: Generic/Text only driver | Python: May not support | [PRT BUG] | Driver diff | Test dot matrix | P1 |
| Thermal Receipt | VB6: ESC/POS commands | Python: ESC/POS in pos_sales | PARTIAL | — | Verify commands | P0 |
| Kitchen Printer | VB6: KOTPrinting → specific printer | Python: KOTPrinter config | PARTIAL | — | Verify mapping | P0 |
| Network Printer | VB6: \\server\printer via Analysis.ini | Python: Same path | OK | — | Verify UNC paths | P1 |
| Printer Tray | VB6: PaperSource property | Python: Not implemented | [PRT BUG] | Not ported | Add tray selection | P2 |

---

## 10. Error Handling in Print

| Scenario | VB6 Behavior | Python Behavior | Difference | Root Cause | Fix Required | Priority |
|----------|--------------|-----------------|------------|------------|--------------|----------|
| Printer Offline | MsgBox "Printer not ready" | Exception unhandled | [ERR BUG] | Not handled | Add try/catch | P0 |
| Paper Out | MsgBox "Paper out" | Exception unhandled | [ERR BUG] | Not handled | Add try/catch | P0 |
| Print Cancelled | VB6: User cancels print dialog | Python: Dialog cancel | OK | — | Verify | P1 |
| Invalid Printer | VB6: Error 482 | Python: Exception | PARTIAL | — | Map error codes | P1 |
| Print Queue Full | VB6: Error spooler | Python: Exception | [ERR BUG] | Not handled | Add handling | P2 |

---

## 11. Summary of Missing Print/Reprint Features

| Feature | VB6 | Python | Status |
|---------|-----|--------|--------|
| Report Templates (.rpt) | 20+ reports | 0 | MISSING |
| Print Preview Dialog | Full featured | Basic | PARTIAL |
| Direct Print (PrintOut) | Yes | No | MISSING |
| Printer Selection Dialog | CommonDialog | No | MISSING |
| Copies/Collate/Paper/Options | Full | None | MISSING |
| Reprint (Bill/Folio/KOT/Receipt) | 5+ functions | 0 | MISSING |
| Reprint Audit Trail | Yes | No | MISSING |
| Reprint Counter | Yes | No | MISSING |
| KOT/Receipt/POS Printing | Full | Partial | PARTIAL |
| Night Audit Printing | Yes | Not traced | UNKNOWN |
| Dot Matrix Support | Yes | Untested | UNKNOWN |
| Thermal ESC/POS | Yes | Partial | PARTIAL |

---

## 12. Action Items

1. [ ] Create report template system (code-based or .rpt equivalent)
2. [ ] Implement PrintOut equivalent in reports.py
3. [ ] Add printer selection dialog (QPrintDialog)
4. [ ] Add print options: copies, collate, paper, orientation, margins
5. [ ] Implement Bill Reprint (POSBillReprint.frm equivalent)
6. [ ] Implement Folio Reprint (fdDisplayFolio equivalent)
7. [ ] Implement KOT Reprint
8. [ ] Implement Receipt Reprint
9. [ ] Add Reprint audit trail (U_AE='R')
10. [ ] Add Reprint counter on documents
11. [ ] Add print to all Master forms (Company, FA Env, User, Tax, Payment, Room, Godown, Voucher)
12. [ ] Trace and implement POS/FO printing (KOT, Receipt, Bill, Night Audit)
13. [ ] Test dot matrix and thermal printers
14. [ ] Verify print output format matches VB6 exactly
15. [ ] Add print error handling (offline, paper out, queue full)