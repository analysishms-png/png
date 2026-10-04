# Main Setup Report Parameters

**Last Updated:** 2026-10-01  
**Scope:** Report parameter mapping between VB6 and Python for all Main Setup reports

---

## Parameter Format
| Field | Description |
|-------|-------------|
| Report Name | VB6 Report / Python Report |
| Report Code | VB6 report identifier |
| Data Source | Table/View/Query |
| Parameter | Parameter name |
| VB6 Value | How VB6 passes it |
| Python Value | How Python passes it |
| Expected Type | Data type |
| Actual Type | Current type |
| Required | Y/N |
| Default | Default value |
| Site | Site filtering |
| Company | Company context |
| Business Date | Date context |
| User | User context |
| Status | OK/MISMATCH/MISSING |

---

## 1. Company Master Reports

| Report Name | Report Code | Data Source | Parameter | VB6 Value | Python Value | Expected Type | Actual Type | Required | Default | Site | Company | Business Date | User | Status |
|-------------|-------------|-------------|-----------|-----------|--------------|---------------|-------------|----------|---------|------|---------|---------------|------|--------|
| Company List | RptCompMast | Company table | CompCode | MemVar_1F92128 (INI key 7) | Not implemented | varchar(10) | — | Y | — | LogSite_Code | CompCode | — | MemVar_1F920C8 | MISSING |
| Company List | RptCompMast | Company table | SiteCode | MemVar_1F92078 (INI key 7) | Not implemented | varchar(6) | — | Y | — | LogSite_Code | — | — | — | MISSING |
| Company List | RptCompMast | Company table | FromDate | Business Date | Not implemented | datetime | — | N | Business Date | — | — | Business Date | — | MISSING |
| Company Detail | RptCompDet | Company + Site | CompCode | Form Txt(0) | Not implemented | varchar(10) | — | Y | — | LogSite_Code | CompCode | — | Current User | MISSING |

---

## 2. FA Environment Reports

| Report Name | Report Code | Data Source | Parameter | VB6 Value | Python Value | Expected Type | Actual Type | Required | Default | Site | Company | Business Date | User | Status |
|-------------|-------------|-------------|-----------|-----------|--------------|---------------|-------------|----------|---------|------|---------|---------------|------|--------|
| Ageing Analysis | RptAgeing | FAEnviro + Ledger | SiteCode | MemVar_1F92078 | Not implemented | varchar(6) | — | Y | — | LogSite_Code | — | — | — | MISSING |
| Ageing Analysis | RptAgeing | FAEnviro + Ledger | CompCode | MemVar_1F92128 | Not implemented | varchar(10) | — | Y | — | — | CompCode | — | — | MISSING |
| Ageing Analysis | RptAgeing | FAEnviro + Ledger | AsOnDate | Business Date | Not implemented | datetime | — | Y | Business Date | — | — | Business Date | — | MISSING |
| Ageing Analysis | RptAgeing | FAEnviro + Ledger | Age1-Age6 | FAEnviro.Age1-6 | Not implemented | int | — | Y | FAEnviro vals | — | — | — | — | MISSING |
| Ageing Analysis | RptAgeing | FAEnviro + Ledger | Amt1-Amt6 | FAEnviro.Amt1-6 | Not implemented | decimal | — | Y | FAEnviro vals | — | — | — | — | MISSING |
| Tagada Letters | RptTagada | FAEnviro + Debtors | SiteCode | MemVar_1F92078 | Not implemented | varchar(6) | — | Y | — | LogSite_Code | — | — | — | MISSING |
| Tagada Letters | RptTagada | FAEnviro + Debtors | Header1-5 | FAEnviro.TagadaHeader1-5 | Not implemented | varchar(250) | — | N | FAEnviro vals | — | — | — | — | MISSING |
| Tagada Letters | RptTagada | FAEnviro + Debtors | Footer1-5 | FAEnviro.TagadaFooter1-5 | Not implemented | varchar(250) | — | N | FAEnviro vals | — | — | — | — | MISSING |
| Credit Limit | RptCreditLimit | FAEnviro + Party | CreditLimit | FAEnviro.CreditLimit | Not implemented | decimal | — | Y | FAEnviro val | — | — | — | — | MISSING |

---

## 3. General Setup Reports

### 3.1 Tax Master Reports

| Report Name | Report Code | Data Source | Parameter | VB6 Value | Python Value | Expected Type | Actual Type | Required | Default | Site | Company | Business Date | User | Status |
|-------------|-------------|-------------|-----------|-----------|--------------|---------------|-------------|----------|---------|------|---------|---------------|------|--------|
| Tax Master List | RptTaxMast | RevMast (FieldType='T') | SiteCode | MemVar_1F92078 | Not implemented | varchar(6) | — | Y | — | LogSite_Code | — | — | — | MISSING |
| Tax Master List | RptTaxMast | RevMast | CompCode | MemVar_1F92128 | Not implemented | varchar(10) | — | Y | — | — | CompCode | — | — | MISSING |
| Tax Structure | RptTaxStru | TaxStru header+lines | StructureCode | Form Combo selection | Not implemented | varchar(10) | — | Y | — | LogSite_Code | — | — | — | MISSING |

### 3.2 Payment Type Reports

| Report Name | Report Code | Data Source | Parameter | VB6 Value | Python Value | Expected Type | Actual Type | Required | Default | Site | Company | Business Date | User | Status |
|-------------|-------------|-------------|-----------|-----------|--------------|---------------|-------------|----------|---------|------|---------|---------------|------|--------|
| Payment Type List | RptPayType | RevMast (PAYTYPE<>'') | SiteCode | MemVar_1F92078 | Not implemented | varchar(6) | — | Y | — | LogSite_Code | — | — | — | MISSING |
| Payment Type List | RptPayType | RevMast | CompCode | MemVar_1F92128 | Not implemented | varchar(10) | — | Y | — | — | CompCode | — | — | MISSING |

### 3.3 Room Feature / Godown Reports

| Report Name | Report Code | Data Source | Parameter | VB6 Value | Python Value | Expected Type | Actual Type | Required | Default | Site | Company | Business Date | User | Status |
|-------------|-------------|-------------|-----------|-----------|--------------|---------------|-------------|----------|---------|------|---------|---------------|------|--------|
| Room Feature List | RptRoomFeat | RoomFeature | SiteCode | MemVar_1F92078 | Not implemented | varchar(6) | — | Y | — | LogSite_Code | — | — | — | MISSING |
| Godown List | RptGodown | GodownMast | SiteCode | MemVar_1F92078 | Not implemented | varchar(6) | — | Y | — | LogSite_Code | — | — | — | MISSING |

### 3.4 Voucher Type Reports

| Report Name | Report Code | Data Source | Parameter | VB6 Value | Python Value | Expected Type | Actual Type | Required | Default | Site | Company | Business Date | User | Status |
|-------------|-------------|-------------|-----------|-----------|--------------|---------------|-------------|----------|---------|------|---------|---------------|------|--------|
| Voucher Type Config | RptVouchType | Voucher_Type + VoucherCat + Voucher_Prefix + Voucher_Include/Exclude | SiteCode | MemVar_1F92078 | Not implemented | varchar(6) | — | Y | — | LogSite_Code | — | — | — | MISSING |
| Voucher Type Config | RptVouchType | Voucher_Type | CompCode | MemVar_1F92128 | Not implemented | varchar(10) | — | Y | — | — | CompCode | — | — | MISSING |

---

## 4. User Master Reports

| Report Name | Report Code | Data Source | Parameter | VB6 Value | Python Value | Expected Type | Actual Type | Required | Default | Site | Company | Business Date | User | Status |
|-------------|-------------|-------------|-----------|-----------|--------------|---------------|-------------|----------|---------|------|---------|---------------|------|--------|
| User List | RptUserMast | UserMast | SiteCode | MemVar_1F92078 | Not implemented | varchar(6) | — | Y | — | LogSite_Code | — | — | — | MISSING |
| User Permissions | RptUserPerm | USER_MODULE + MENUHELP | UserName | Form selection | Not implemented | varchar(10) | — | Y | — | LogSite_Code | CompCode | — | Selected User | MISSING |

---

## 5. Parameter/Enviro Reports

| Report Name | Report Code | Data Source | Parameter | VB6 Value | Python Value | Expected Type | Actual Type | Required | Default | Site | Company | Business Date | User | Status |
|-------------|-------------|-------------|-----------|-----------|--------------|---------------|-------------|----------|---------|------|---------|---------------|------|--------|
| System Parameters | RptEnviro | Enviro table | SiteCode | MemVar_1F92078 | Not implemented | varchar(6) | — | Y | — | LogSite_Code | — | — | — | MISSING |
| System Parameters | RptEnviro | Enviro table | CompCode | MemVar_1F92128 | Not implemented | varchar(10) | — | Y | — | — | CompCode | — | — | MISSING |
| Printing Setup | RptPrintSetup | Analysis.ini + Enviro | ReportsPath | INI Key 2 | printing_settings_snapshot().reports | varchar(255) | str | Y | — | — | — | — | — | OK |
| Printing Setup | RptPrintSetup | Analysis.ini + Enviro | TempPath | INI Key 3 | printing_settings_snapshot().temp | varchar(255) | str | Y | — | — | — | — | — | OK |
| Printing Setup | RptPrintSetup | Analysis.ini + Enviro | PrinterName | INI Key 4 | printing_settings_snapshot().printer | varchar(50) | str | Y | Prn | — | — | — | — | OK |
| Printing Setup | RptPrintSetup | Enviro flags | KOTPrinting | Enviro.KOTPrinting | enviro.get_setting('KOTPrinting') | varchar(50) | str | N | — | LogSite_Code | — | — | — | OK |

---

## 6. Critical Parameter Mismatches

| Parameter | VB6 Source | Python Source | Issue | Impact |
|-----------|------------|---------------|-------|--------|
| LogSite_Code | Analysis.ini key 7 → MemVar_1F92078 | db.get_site_code() | May differ if INI not read correctly | All reports filtered wrong |
| CompCode | Analysis.ini key 7 → MemVar_1F92128 | Not tracked in session | Company context missing | Multi-company reports wrong |
| Business Date | Enviro/INI → session variable | Not in session context | Date-sensitive reports wrong | Financial reports incorrect |
| User Name | MemVar_1F920C8 (login) | db.get_user() | May differ | Audit trail wrong |
| Site Code in Reports | VB6: WHERE (LogSite_Code='KK' OR 'HO') | Python: Mixed patterns | Inconsistent filtering | Data leakage across sites |

---

## 7. Report Parameter Passing Mechanism

### VB6 Mechanism
```
1. Form collects parameters from controls
2. Calls Report.Show vbModal
3. Report.DataSource = SQL with parameters
4. Report uses global MemVar_1F92078 (LogSite_Code), MemVar_1F92128 (CompCode), MemVar_1F920C8 (User)
5. Business Date from Enviro or INI
```

### Python Mechanism (Target)
```
1. UI collects parameters from widgets
2. Calls report API with parameter dict
3. Report service builds parameterized query
4. Query uses db.get_site_code(), db.get_user(), business_date from session
5. All queries: WHERE LogSite_Code=? OR LogSite_Code='HO'
```

---

## 8. Missing Report Parameter Implementations

| Report Category | VB6 Reports | Python Reports | Gap |
|-----------------|-------------|----------------|-----|
| Company Master | 2 | 0 | All missing |
| FA Environment | 4 | 0 | All missing |
| Tax Master | 2 | 0 | All missing |
| Payment Type | 1 | 0 | All missing |
| Room/Godown | 2 | 0 | All missing |
| Voucher Type | 1 | 0 | All missing |
| User Master | 2 | 0 | All missing |
| Enviro/Parameter | 3 | 1 (partial) | Mostly missing |
| **TOTAL** | **17** | **1** | **16 missing** |

---

## 9. Parameter Validation Rules

| Parameter | VB6 Validation | Python Validation Needed |
|-----------|----------------|-------------------------|
| LogSite_Code | Must exist in Site table | Validate against Site table |
| CompCode | Must exist in Company table | Validate against Company table |
| Business Date | Must be within financial year | Validate Apr-Mar range |
| From/To Date | FromDate <= ToDate | Validate range |
| User Name | Must exist in UserMast | Validate against UserMast |
| Structure Code | Must exist in TaxStru | Validate against TaxStru |

---

## 10. Action Items

1. [ ] Implement report parameter service in core/reports.py
2. [ ] Add business date to session context
3. [ ] Standardize LogSite_Code/CompCode passing in all report queries
3. [ ] Implement Company Master reports (2)
4. [ ] Implement FA Environment reports (4)
5. [ ] Implement Tax Master reports (2)
6. [ ] Implement Payment Type reports (1)
7. [ ] Implement Room/Godown reports (2)
8. [ ] Implement Voucher Type reports (1)
9. [ ] Implement User Master reports (2)
10. [ ] Complete Enviro/Parameter reports (2 more)
11. [ ] Add parameter validation per rules above
12. [ ] Test all reports with multi-site data