# HMS MODERNIZATION BLUEPRINT

Folder: `HMS_REVERSE_ENGINEERING/23_Modernization_Blueprint/` | Date: 2026-09-28
Rule: **business rules preserved 1:1** — ye blueprint existing behavior ka modern avatar hai,
naya behavior invent nahi karta. Har section evidence-backed hai (charts measured data se).

---

## 1. Vision

VB6 + SQL Server 2008 R2 wale HMS ko phased tarike se modern stack pe le jana —
bina business logic todhe, bina data loss, bina "big bang" risk.

**Target stack (recommended):**

| Layer | Abhi (Legacy) | Target |
|---|---|---|
| UI | VB6 MDI forms (351 objects) | Web app — React/Vue ya .NET Blazor; hotel LAN + optional cloud |
| Business logic | Form events me embedded (AEDP rights, validations) | Service layer (Python FastAPI / .NET) — same rules, testable |
| Data access | Inline ADODB SQL, client-side BeginTrans | ORM/repository + **server-side transactions** (BUG-007 class fix) |
| Database | SQL Server 2008 R2, MOONData2627, 0 FK/0 triggers | SQL Server 2019+ (ya Azure SQL) — schema pehle compatible rakho |
| Reporting | Crystal Reports 524 files | Modern engine (SSRS / Stimulsoft / Crystal .NET runtime bridge) |
| Auth | userMast + reversible PASSWD + India12 backdoor | Central auth — bcrypt/argon2, lockout, claims (SRN-001 fix) |
| Side stores | DMEPABX.mdb, Fadata.mdb, Temp.mdb, SaleTransfer.mdb (Jet 4.0) | SQL tables / dedicated microservice |
| Config | Analysis.ini | Structured config + secrets vault |

---

## 2. Charts (measured evidence — `charts/` folder)

| Chart | File | Data source |
|---|---|---|
| Top 15 tables by SQL usage | `chart1_top_tables.png` | Decompiled code frequency [VERIFIED-VB6] |
| Module-wise VB6 objects (351) | `chart2_module_complexity.png` | Form inventory [VERIFIED-VB6] |
| Bugs by severity | `chart3_bug_severity.png` | BUG_REGISTER.md [VERIFIED-SQL] |
| Live DB object counts | `chart4_db_objects.png` | sys.* queries 2026-09-28 [VERIFIED-SQL] |
| Effort estimate (1–10) | `chart5_effort.png` | **[INFERRED]** — code volume + coupling se |

**Chart1 ka matlab:** Depart (1378), PayCharge (873), GuestFolio (869), GuestProf (840),
RevMast (835) = system ka core. Migration me in tables ke column semantics sabse pehle
freeze karne honge (1:1 mapping doc).

**Chart4 ka matlab:** 0 triggers / 0 FKs / 0 functions — saara integrity VB6 app me hai.
Isliye **DB-first migration safe nahi** — app behavior ko service layer me replicate karna
padega, warna data integrity khatam.

---

## 3. Module-wise Migration Map (priority order)

Priority = business criticality (Front Office revenue core) × complexity (chart2/5).

| Priority | Module | VB6 forms | Target approach | Key tables (preserve 1:1) |
|---|---|---|---|---|
| P1 | **Front Office** | 55 | Full rebuild, highest test coverage | GuestFolio, RoomOcc, PayCharge, GuestProf |
| P1 | **Night Audit** | 5 (engine) | Service job — exact SQL port, transaction-per-site | Enviro, NightAuditLog, ExpSheet, Ledger |
| P1 | **Reservation** | 19 | Full rebuild | Booking, BookingMore, BookingCancelDetails |
| P2 | Finance/GL | 25 | Rebuild + Tally export retain | Ledger, SubGroup, AcGroup, Voucher_Type |
| P2 | POS | 49 | Touch-first UI (already Rs*Touch forms ka concept) | Sale1/2, KOT, TOKEN |
| P2 | Main Setup/Security | 18 | Auth service + masters | UserMast, user1, MenuHelp, company |
| P3 | Inventory | 21 | Standard CRUD rebuild | ItemMast, Stock, BOM, Godown |
| P3 | Banquet | 17 | Rebuild | HallBook, HallSale1, VenueMast |
| P3 | Members/SmartCard | 24+7 | Rebuild + ACR SDK re-integration | MemCatMast, SmartCard* |
| P3 | House Keeping | 11 | Rebuild | RoomMast, RoomBlockOut |
| P4 | HR & Payroll | 11 | Consider SaaS replace vs rebuild | Employee, Attend, LOAN |
| P4 | EPABX | 7 | MSCOMM → modern serial/TCP service | EPABX_IN (Jet → SQL) |
| P4 | Messaging/SMS | 8 | API-based provider | EmailSMSForward |
| P4 | Mall Mgmt | 5 | Rebuild (Godrej lock API) | DepOpStk, KClStk |
| — | Reports | 524 files | .ttx field maps reuse; engine replace | PrintFormats |

---

## 4. Phased Roadmap

### Phase A — Foundation (4–6 weeks)
1. SQL Server 2019+ upgrade (schema as-is; 2008 R2 EOL risk)
2. New DB project: schema snapshot 1:1 (277 tables — `18_Database/` extracts use karo)
3. Auth service (SRN-001 structural fixes: hashing, lockout, claims)
4. CI/CD + test DB (SHUDHA_TEST/TestDstDB copies already hain is instance pe)

### Phase B — Core pilot (8–12 weeks)
5. Front Office read-only screens (folio view, room status) — live data pe verify vs VB6
6. Reservation + Check-In flows (dual-run: VB6 aur naya app parallel, same DB read)
7. Night Audit engine as separate service — **test DB pe** TC-008 chalao

### Phase C — Transaction modules (12–16 weeks)
8. Posting/Payment/Settlement/Check-Out
9. POS + KOT (touch UI)
10. Finance vouchers + Tally export

### Phase D — Remainder + cutover (8–12 weeks)
11. Baaki modules priority order me
12. Crystal Reports replacement (priority: BillPrint, Cashier*, registers, GST)
13. VB6 retire; Jet .mdb side stores SQL me migrate; Analysis.ini → config service

**Dual-run principle:** har module ke liye purana aur naya output side-by-side verify
(PayCharge rows, bill totals, NightAuditLog) — jab tak 100% match nahi, cutover nahi.

---

## 5. Data Migration Strategy

- **In-place schema evolution** preferred (SQL Server → SQL Server): .bak restore on new server,
  phir incremental modernization. Historical data 1:1 preserved.
- New normalized model sirf naye modules ke liye; legacy tables view-layer se expose.
- eInvoice tables (active: 211/540 rows) GST compliance ke liye as-is preserve.
- Cleanup candidates (0-row staging): TempPosDel, SplitSale1/2, TOKEN, GuestMessage —
  migrate but mark optional.

## 6. Risk Register

| Risk | Mitigation |
|---|---|
| Business logic VB6 forms me hidden (351 objects) | Decomp + live SQL tracing se extraction continue; module freeze docs |
| 0 FK/0 trigger — integrity service me re-create karna | Har table ke app-side rules document karo (columns_dictionary se) |
| Night Audit regression = revenue corruption | Exact SQL port; test DB pe parallel audit; NightAuditLog diff verify |
| Counter desync bugs (BUG-003/004) naye system me aa jaye | Centralized numbering service (Voucher_Prefix/LASTVOU replace) |
| Crystal Reports parity | .ttx field maps already extracted; report-by-report signoff |
| Vendor backdoor (BUG-008) modern build me na ho | SRN-001 verification plan V1–V5 |
| Team knowledge loss | Ye workspace + manual hi knowledge base hai |

## 7. Effort & Timeline Summary (chart5)

Total realistic estimate: **8–12 months** phased (team of 3–5) — P1 modules pehle live,
VB6 parallel me chalta rahega. Effort chart [INFERRED] hai — measured code complexity se
derived, contract ke liye refined estimation Phase A ke baad.

## 8. Immediate Next Steps

1. Owner sign-off: target stack + Phase A budget
2. SRN-001 containment items (password rotation etc.) — aaj se applicable
3. GUI walkthrough complete karo (screenshots → module manuals final)
4. Front Office module ka field-level spec freeze (screens + SQL + validations)
