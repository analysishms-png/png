# Main Setup Backend Bugs

**Last Updated:** 2026-10-01  
**Scope:** Backend logic, SQL, database mapping, validation, permissions, transactions differences

---

## Bug Format
| Field | Description |
|-------|-------------|
| Component | Module/Table |
| VB6 Logic | Expected from VB6 source |
| Python Logic | Current implementation |
| Difference Type | Classification |
| Root Cause | Why it differs |
| Fix Required | What to change |
| Priority | P0=Critical, P1=High, P2=Medium |

---

## 1. Database Connection & Configuration

| Component | VB6 Logic | Python Logic | Difference Type | Root Cause | Fix Required | Priority |
|-----------|-----------|--------------|-----------------|------------|--------------|----------|
| DB Provider | SQLNCLI.1 (preferred) or SQLOLEDB.1 fallback | pyodbc with ODBC Driver 17/18 | [SQL BUG] | Different drivers | Test both, document | P0 |
| Connection String | Built from Analysis.ini keys: UID, PWD, Server, Database | db.load_config() reads INI, db.connect() builds | PARTIAL | Verify all INI keys mapped | Audit INI key mapping | P0 |
| SA User Creation | Form_Load: INSERT INTO usermast(USER_NAME,PASSWD,LABEL,ShortName) VALUES('SA','\','1','SA') | Not in Python startup | [DATABASE BUG] | Missing initialization | Add SA creation in app init | P0 |
| Backup Path | Reads from INI, validates, creates \\server\share\path\Temp.mdb | Not implemented | [MISSING PYTHON LOGIC] | Not ported | Add backup path logic | P1 |
| Date Format | Forces Registry sShortDate = "dd/MMM/yyyy" on load | Not enforced | [DATE BUG] | Regional settings | Document or set in Python | P1 |
| Cursor/Transaction | ADO CursorLocation=3 (adUseClient), IsolationLevel=0x10 | pyodbc default cursor | [SQL BUG] | Different defaults | Set cursor/transaction explicitly | P1 |

---

## 2. Site/LogSite_Code Handling (Critical for Multi-Site)

| Component | VB6 Logic | Python Logic | Difference Type | Root Cause | Fix Required | Priority |
|-----------|-----------|--------------|-----------------|------------|--------------|----------|
| LogSite_Code Source | Analysis.ini key 7 (Company Code) → MemVar_1F92078 | db.get_site_code() from INI | OK | — | Verify key 7 mapping | P0 |
| Query Pattern | WHERE (LogSite_Code='KK' OR LogSite_Code='HO') | Mixed: some use WHERE LogSite_Code=?, some use OR 'HO' | [SITE BUG] | Inconsistent porting | Standardize ALL queries | P0 |
| Site Filter in Enviro | Form_Load: SELECT * FROM Enviro WHERE (LOGSITE_CODE='KK') | enviro.get(): WHERE LogSite_Code=? OR 'HO' | OK | — | Verify | P1 |
| Site Filter in FAEnviro | Form_Load: WHERE (LOGSITE_CODE='KK' OR LOGSITE_CODE='HO') | fa_enviro.get(): WHERE Site_Code=? OR LogSite_Code='HO' | [SITE BUG] | Site_Code vs LogSite_Code mismatch | Use consistent column | P0 |
| Site Filter in Masters | All masters: WHERE (LOGSITE_CODE='KK' OR LOGSITE_CODE='HO') | general_setup APIs use _v_scope() with HO fallback | OK | — | Audit all master queries | P1 |
| Company Code | Analysis.ini key 7 → MemVar_1F92128 (CompCode) | Not explicitly used | [MISSING PYTHON LOGIC] | CompCode not tracked | Add CompCode to session | P1 |
| Site Table | CompMast uses Site table for properties | company.py list_companies() uses Company table | [WRONG PYTHON LOGIC] | Different tables | Verify correct table per VB6 | P0 |

---

## 3. Company Master (CompMast) Backend

| Component | VB6 Logic | Python Logic | Difference Type | Root Cause | Fix Required | Priority |
|-----------|-----------|--------------|-----------------|------------|--------------|----------|
| Table | Company (Comp_Name, SName, cyear, Start_Dt, etc.) | company.py queries Company table | OK | — | Verify all columns | P1 |
| Fields Mapped | 42 fields across Company + Site tables | Only 5 fields (name, short, year) | [MISSING PYTHON LOGIC] | Incomplete mapping | Map all 42 fields | P0 |
| Insert | Not directly in CompMast (uses Company master) | Not implemented | [MISSING PYTHON LOGIC] | No CRUD | Implement full CRUD | P0 |
| Update | btnok_UnknownEvent_9 with validation | Not implemented | [MISSING PYTHON LOGIC] | No CRUD | Implement full CRUD | P0 |
| Delete | Not in CompMast (Company master separate) | Not implemented | [MISSING PYTHON LOGIC] | No CRUD | Implement if needed | P1 |
| Lookups | City → CityMast, User → UserMast, A/C → Acgroup, Group → Acgroup | No lookup implementation | [MISSING PYTHON LOGIC] | No lookup services | Implement lookup APIs | P0 |
| Validation | ValidationModule.bas per field | None | [VALIDATION BUG] | Not ported | Port validation logic | P0 |
| Opening Balance | Linked to Acgroup (Under Group) | Not implemented | [MISSING PYTHON LOGIC] | No accounting integration | Add Acgroup linkage | P1 |
| Audit Fields | U_Name, U_EntDt, U_AE on all tables | Some tables have, some don't | [AUD BUG] | Inconsistent | Add audit to all masters | P1 |

---

## 4. FA Environment (FAEnviro) Backend

| Component | VB6 Logic | Python Logic | Difference Type | Root Cause | Fix Required | Priority |
|-----------|-----------|--------------|-----------------|------------|--------------|----------|
| Table | FAEnviro (single row per Site_Code/LogSite_Code) | fa_enviro.py uses FAEnviro | OK | — | Verify PK | P1 |
| Fields | 58 columns (Age1-6, Amt1-6, TagadaHeader1-5, TagadaFooter1-5, CreditLimit, DebitLimit, etc.) | fa_enviro.get() selects 58 columns | OK | — | Verify all columns | P1 |
| Update | Cmd_Click builds UPDATE with ALL 41 editable fields + U_Name, U_EntDt=getdate(), U_AE='E' | update_settings() only updates passed dict keys, NO audit fields | [SQL BUG] | Audit fields missing | Add U_Name, U_EntDt, U_AE to UPDATE | P0 |
| Insert | VB6 doesn't INSERT (single row exists) | fa_enviro.py doesn't INSERT | OK | — | Verify row exists | P1 |
| Ageing Validation | Age1-6: integer days, Amt1-6: numeric amounts | No validation in Python | [VALIDATION BUG] | Not implemented | Add numeric validation | P1 |
| Tagada Fields | Header1-5 (varchar 250), Footer1-5 (varchar 250) | Retrieved but no length validation | [VALIDATION BUG] | Not implemented | Add varchar length checks | P1 |
| RoundOffSetting | Separate table, edited in FGrid, saved in TopCtrl1_UnknownEvent_16 | Not implemented | [MISSING PYTHON LOGIC] | Not ported | Add RoundOffSetting CRUD | P0 |
| OptRoundOff | OptionButton array sets global_88 (RoundOffType) | Not implemented | [MISSING PYTHON LOGIC] | Not ported | Add RoundOffType field | P1 |
| Stock Values | OpStockQTY/Value, ClStockQTY/Value (Frame6) | Retrieved but read-only | [MISSING PYTHON LOGIC] | UI read-only | Enable editing | P1 |

---

## 5. Enviro/Parameter Settings Backend

| Component | VB6 Logic | Python Logic | Difference Type | Root Cause | Fix Required | Priority |
|-----------|-----------|--------------|-----------------|------------|--------------|----------|
| Table | Enviro (single row per LogSite_Code) | enviro.py uses Enviro | OK | — | Verify PK | P1 |
| Fields | 200+ columns | EDITABLE white-list (55) + READ_ONLY (78) | [INTENTIONAL MODERNIZATION] | Finance fields protected | Document protection | P0 |
| Update | Cmd_Click giant UPDATE with 200+ columns | update_settings() only EDITABLE fields | [SQL BUG] + [INTENTIONAL MODERNIZATION] | Finance fields via FaEnvron | Document: finance in FaEnvron | P0 |
| Audit Fields | VB6: U_Name, U_EntDt, U_AE in UPDATE | Python: NO audit fields in UPDATE | [AUD BUG] | Missing audit | Add audit fields to UPDATE | P0 |
| Validation | VB6: IIf(Left(x,1)='Y') for YN, time format for Checkout | _validate() has yn1/yn3/time | PARTIAL | — | Verify all rules match | P1 |
| Sub-tab Fields | 26 sub-tabs with specific fields | ParameterTab has field_map for all | OK | — | Verify field_map complete | P1 |
| RoundOffSetting | Updated in TopCtrl1_UnknownEvent_16 with LogSite_Code | general_setup.enviro_update() doesn't handle | [MISSING PYTHON LOGIC] | Not connected | Connect RoundOffSetting save | P0 |
| Printing Settings | Analysis.ini keys 2,3,4 + Enviro print flags | printing_settings_snapshot() combines both | OK | — | Verify INI key mapping | P1 |

---

## 6. User Master (UserMast) Backend

| Component | VB6 Logic | Python Logic | Difference Type | Root Cause | Fix Required | Priority |
|-----------|-----------|--------------|-----------------|------------|--------------|----------|
| Table | UserMast (USER_NAME PK, PASSWD, LABEL, ShortName, ActiveYN, GodCode, FloorCode, AllowDtChng, BackColor) | usermaster.py maps 5 fields | [MISSING PYTHON LOGIC] | 4 fields missing | Add GodCode, FloorCode, AllowDtChng, BackColor | P1 |
| Password Encryption | VB6 custom encryption (auth.py enc_bytes) | auth.enc_bytes() used | OK | — | Verify byte-exact match | P0 |
| LABEL Column | VARCHAR(30) in VB6, but some DBs have SMALLINT | _label_column_is_int() detects dynamically | [LEGACY BEHAVIOR] | Schema drift | Keep dynamic detection | VERIFIED |
| Insert | TopCtrl Add → INSERT with encrypted password | insert() uses auth.enc_bytes() | OK | — | Verify | P1 |
| Update | TopCtrl Edit → UPDATE (password optional) | update() with plain_password=None | OK | — | Verify | P1 |
| Delete | TopCtrl Delete → DELETE (SA protected) | delete() with SA guard | OK | — | Verify | P1 |
| Validation | Field-level max lengths, required | _validate() only username/label/short | [VALIDATION BUG] | Incomplete | Add all field validations | P1 |
| Duplicate Check | Form_Load checks USER_NAME | exists() function | OK | — | Verify | P1 |
| PYT* Guard | Only PYT* users deletable | usermaster_ui.py has same | OK | — | Verify | P1 |

---

## 7. General Setup Masters Backend

### 7.1 RoomFeature (RoomFeature table)

| Component | VB6 Logic | Python Logic | Difference Type | Root Cause | Fix Required | Priority |
|-----------|-----------|--------------|-----------------|------------|--------------|----------|
| CRUD | Full CRUD in General Setup | RoomFeatAPI has full CRUD | OK | — | Verify all fields | P1 |
| Fields | Code(5), Name(25), U_Name, U_EntDt, U_AE, Site_Code, LogSite_Code | RoomFeatAPI maps all | OK | — | Verify audit fields | P1 |
| Validation | Code required, Name required | roomfeat_insert validates | OK | — | Verify | P1 |

### 7.2 GodownMast (GodownMast table)

| Component | VB6 Logic | Python Logic | Difference Type | Root Cause | Fix Required | Priority |
|-----------|-----------|--------------|-----------------|------------|--------------|----------|
| CRUD | Full CRUD in General Setup | GodownAPI has full CRUD | OK | — | Verify all fields | P1 |
| Fields | Code(6), Name(30), ShortName(6), DepartCode(6), SysYn(1), U_Name, U_EntDt, U_AE, Site_Code, LogSite_Code | GodownAPI maps all | OK | — | Verify SysYn delete guard | P1 |
| Delete Guard | SysYn='Y' prevents delete | godown_delete checks SysYn | OK | — | Verify | P1 |

### 7.3 Voucher_Type (Voucher_Type table)

| Component | VB6 Logic | Python Logic | Difference Type | Root Cause | Fix Required | Priority |
|-----------|-----------|--------------|-----------------|------------|--------------|----------|
| Access | Read-only in General Setup | voucher_type_list() read-only | OK | — | Verify | P1 |
| Fields | V_Type(10), Category(10), NCat(5), Description(50), Number_Method(20), Start_No, Short_Name(10), Site_Code, LogSite_Code, U_NAME, U_EntDt, U_AE | voucher_type_list maps all | OK | — | Verify | P1 |
| Config | VoucherCat, Voucher_Prefix, Voucher_Include, Voucher_Exclude | general_setup has APIs for all | OK | — | Verify linkage | P1 |

### 7.4 Tax Master (RevMast FieldType='T')

| Component | VB6 Logic | Python Logic | Difference Type | Root Cause | Fix Required | Priority |
|-----------|-----------|--------------|-----------------|------------|--------------|----------|
| Table | RevMast where FieldType='T' | taxmaster.py uses RevMast | OK | — | Verify | P1 |
| Fields | Code, Name, ShortName, SundryName, LedgerAC, PayableAC, UnregisteredAC, SysYn | taxmaster maps all | OK | — | Verify | P1 |
| System Defined | SysYn='Y' shows "System Defined" red tag | TaxMasterTab shows this | OK | — | Verify | P1 |

### 7.5 Tax Structure (TaxStru header + lines)

| Component | VB6 Logic | Python Logic | Difference Type | Root Cause | Fix Required | Priority |
|-----------|-----------|--------------|-----------------|------------|--------------|----------|
| Tables | TaxStru (header) + TaxStru lines | taxstru.py has both | OK | — | Verify | P1 |
| Inline Edit | FGrid double-click edit, Save replaces all lines | TaxStructureTab has inline edit | OK | — | Verify transaction | P0 |
| Validation | Rate/L.Limit/U.Limit numeric, Nature/Comparison/Condition combos | _collect_lines validates | OK | — | Verify all combos | P1 |

### 7.6 Payment Type (RevMast PAYTYPE<>'')

| Component | VB6 Logic | Python Logic | Difference Type | Root Cause | Fix Required | Priority |
|-----------|-----------|--------------|-----------------|------------|--------------|----------|
| Table | RevMast where PAYTYPE<>'' | paymenttype.py uses RevMast | OK | — | Verify | P1 |
| Fields | Code, Name, Short, LedgerAC, A/C Posting, Nature, SysYn | paymenttype maps all | OK | — | Verify | P1 |
| Outlet Checkboxes | 10 outlets as checkbox buttons | PaymentTypeTab has 10 checkboxes | OK | — | Verify mapping | P1 |

---

## 8. Validation Rules Backend

| Rule Type | VB6 (ValidationModule.bas) | Python (core/validation.py) | Difference Type | Root Cause | Fix Required | Priority |
|-----------|----------------------------|----------------------------|-----------------|------------|--------------|----------|
| Required | Per-field empty check | Only username required | [VALIDATION BUG] | Incomplete | Add per-field required | P1 |
| Max Length | Per-field MaxLength property | Only username/label/short | [VALIDATION BUG] | Incomplete | Add per-field maxlen | P1 |
| Numeric | IsNumeric() | try/except int/float | OK | — | Verify edge cases | P1 |
| Date | IsDate() + dd/MMM/yyyy format | No date validation | [VALIDATION BUG] | Not implemented | Add date validation | P1 |
| Y/N (3-char) | IIf(Left(UCase(x),1)='Y') | _validate yn3: Yes/No | OK | — | Verify | P1 |
| Y/N (1-char) | IIf(Left(UCase(x),1)='Y') | _validate yn1: Y/N | OK | — | Verify | P1 |
| Time | HH:MM format | _validate time: HH:MM | OK | — | Verify | P1 |
| Uppercase | UCase() on LostFocus | Manual .upper() in some places | [VALIDATION BUG] | Inconsistent | Auto-uppercase on save | P1 |
| Email | Not in VB6 | Not in Python | — | — | Add if needed | P2 |
| Phone | Format with DataFormat | No format validation | [VALIDATION BUG] | Not implemented | Add phone format | P1 |

---

## 9. Permissions Backend

| Component | VB6 Logic | Python Logic | Difference Type | Root Cause | Fix Required | Priority |
|-----------|-----------|--------------|-----------------|------------|--------------|----------|
| USER_MODULE | Links User → Module with permissions | menu_help.py has USER_MODULE logic | PARTIAL | Not enforced in UI | Enforce in all forms | P0 |
| MENUHELP | Menu help with Opt1-7 flags | menu_help.py has MENUHELP logic | PARTIAL | Not enforced in UI | Enforce in shell + forms | P0 |
| Menu Building | MDIForm1 builds menu from USER_MODULE + MENUHELP | shell.py builds static menu | [PERMISSION BUG] | Dynamic menu not ported | Implement dynamic menu | P0 |
| Form-Level | Each form checks permission on load | No form-level checks | [PERMISSION BUG] | Not implemented | Add permission checks | P0 |
| Button-Level | Add/Edit/Delete/Save/Print buttons enabled per Opt2-5 | usermaster_ui.py has some | [PERMISSION BUG] | Partial | Complete button-level | P1 |
| Report Permission | Opt6=Report controls report access | Not implemented | [PERMISSION BUG] | Not ported | Add report permission | P1 |
| Admin Permission | Opt7=Admin for super-user | Not implemented | [PERMISSION BUG] | Not ported | Add admin permission | P1 |

---

## 10. Transaction & Audit Handling

| Component | VB6 Logic | Python Logic | Difference Type | Root Cause | Fix Required | Priority |
|-----------|-----------|--------------|-----------------|------------|--------------|----------|
| Transactions | VB6: BeginTrans/CommitTrans/RollbackTopCtrl1_UnknownEvent_16 | Python: db.execute(commit=False) + cn.commit() | OK | — | Verify all CRUD use transactions | P1 |
| Rollback | VB6: RollbackTrans on error | Python: try/finally with rollback | OK | — | Verify error paths | P1 |
| Audit Fields | U_Name, U_EntDt=getdate(), U_AE ('A'/'E'/'D') | Some APIs have, some don't | [AUD BUG] | Inconsistent | Add to ALL CRUD operations | P0 |
| LogSite_Code in Audit | VB6: LogSite_Code in RoundOffSetting INSERT | Python: Missing in some INSERTs | [AUD BUG] | Missing | Add LogSite_Code to all INSERTs | P0 |
| Soft Delete | VB6: ActiveYN='N' for users | Python: Hard DELETE for users | [WRONG PYTHON LOGIC] | Delete vs deactivate | Change to soft delete (ActiveYN='N') | P1 |

---

## 11. Printing/Report Backend

| Component | VB6 Logic | Python Logic | Difference Type | Root Cause | Fix Required | Priority |
|-----------|-----------|--------------|-----------------|------------|--------------|----------|
| Report Engine | VB6 DataReport + custom modules (MemBillPrintingModule, POSBillPrint, frmPrintModule) | reports.py + print_preview.py | [INTENTIONAL MODERNIZATION] | Different tech stack | Document mapping | P1 |
| Report Parameters | VB6: Form values passed to report DataSource | Python: Parameter dict passed | PARTIAL | — | Verify all parameters | P1 |
| Preview | VB6: PrintPreview method | print_preview.py has preview | PARTIAL | — | Verify all reports | P1 |
| Direct Print | VB6: PrintOut to printer | Not traced | [PRT BUG] | Not analyzed | Trace printer logic | P1 |
| Reprinting | VB6: Original doc ID + same params | Not traced | [RPRT BUG] | Not analyzed | Trace reprint logic | P0 |
| Printer Selection | VB6: CommonDialog + Analysis.ini key 4 | Not traced | [PRT BUG] | Not analyzed | Trace printer selection | P1 |

---

## 12. Business Date & Financial Year

| Component | VB6 Logic | Python Logic | Difference Type | Root Cause | Fix Required | Priority |
|-----------|-----------|--------------|-----------------|------------|--------------|----------|
| Financial Year | Apr-Mar, format "2026-27" | current_year() returns same | OK | — | Verify edge cases (Jan-Mar) | P1 |
| Business Date | From Enviro/INI, used in transactions | Not explicitly in session | [DATE BUG] | Not tracked | Add business date to session context | P0 |
| Year Start/End | Company table has YearStartDt, YearEndDt | Not in company.py | [MISSING PYTHON LOGIC] | Missing fields | Add to Company model | P1 |
| Date Format | dd/MMM/yyyy forced via Registry | Not enforced | [DATE BUG] | Regional settings | Document or enforce | P1 |

---

## 13. Error Handling

| Component | VB6 Logic | Python Logic | Difference Type | Root Cause | Fix Required | Priority |
|-----------|-----------|--------------|-----------------|------------|--------------|----------|
| Error Module | ErrorHandlingModule.bas with central handler | core/error_handling.py, core/error_handler.py | OK | — | Verify coverage | P1 |
| Error Display | MsgBox with error number/description | QMessageBox.critical/warning | OK | — | Verify messages | P1 |
| Error Logging | Not in VB6 (MsgBox only) | Python logs to console | [INTENTIONAL MODERNIZATION] | Better logging | Add file logging | P2 |
| DB Errors | VB6: Err.Number/Description in MsgBox | Python: Exception messages | OK | — | Map error codes | P1 |

---

## Summary

| Category | Count | P0 | P1 | P2 |
|----------|-------|----|----|----|
| MISSING PYTHON LOGIC | 18 | 8 | 9 | 1 |
| SQL BUG | 6 | 4 | 2 | 0 |
| VALIDATION BUG | 7 | 0 | 7 | 0 |
| SITE BUG | 4 | 3 | 1 | 0 |
| DATABASE BUG | 2 | 2 | 0 | 0 |
| AUDIT BUG | 4 | 3 | 1 | 0 |
| DATE BUG | 3 | 1 | 2 | 0 |
| PERMISSION BUG | 5 | 3 | 2 | 0 |
| LEGACY BEHAVIOR | 1 | 0 | 0 | 0 |
| INTENTIONAL MODERNIZATION | 3 | 0 | 1 | 1 |
| WRONG PYTHON LOGIC | 2 | 0 | 2 | 0 |
| PRINT/REPRINT BUG | 4 | 1 | 3 | 0 |
| **TOTAL** | **59** | **25** | **30** | **2** |

---

## Verification Method
For each backend bug:
1. Trace VB6 procedure → SQL → Table
2. Trace Python function → SQL → Table
3. Compare exact SQL statements
4. Verify with live DB (before/after rows)
5. Test edge cases (NULL, empty, boundary)
6. Verify audit fields populated
7. Verify transactions commit/rollback
8. Mark VERIFIED only after DB verification