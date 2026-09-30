# GST E-INVOICE FLOW — DEEP DIVE  [VERIFIED-VB6 + VERIFIED-SQL]

Sources: decompiled HMS.exe (EXTRAS.text — eInvoice module @ line 988705, JSON helpers
@ 987455/988250, submit engine @ 266543, staging INSERTs @ 276635/325455/399180),
live schema MOONData2627 (2026-09-28), live aggregate counts (no PII read).

## 1. Architecture summary

```
Bill settlement (PayCharge / POS / Banquet bill with GSTIN buyer)
   |
   |  [CmdeInvoiceSql_Click] — build staging (3 code sites: FO, POS?, Banquet?)
   v
eInvoiceBill1 (header, NIC schema)  +  eInvoiceBill2 (line items)
   |
   |  [Proc_96_103_188981C] — read staging, write JSON v1.1
   v
GeneInvBody.Txt  (App.Path — flat JSON file, Print# statements)
   |
   |  [eInvoice module] — AuthToken mgmt + WinHttp.WinHttpRequest.5.1
   v
GSP: Chartered Information (CI)  ->  IRP (NIC)
  prod : https://einvapi.charteredinfo.com/aspapi/v1.0/
  fail : einvapimum1... , einvapidel2...
  sand : http://gstsandbox.charteredinfo.com/
   |
   v
Response -> eInvoiceBill1 (JsonResponse, AckNo, AckDt, IRN, SignedInvoice,
            SignedQRCode, QrCodeImage, Status, EwayBillNo ...)
   |
   v
Bill print recordset: Select IRN,AckNo,AckDt From eInvoiceBill1 Where DocID=...
  -> eInvAckNo field -> QR image (QrImage control via Proc_348_21) on printed bill
```

## 2. Data model (live-verified)

### eInvoiceBill1 — header (PK: DocId + DocDtls_No + DocDtls_Typ)
- **TranDtls_**: TaxSch, SupTyp, RegRev, EcmGstin, IgstOnIntra
- **DocDtls_**: Typ, No, Dt
- **SellerDtls_/BuyerDtls_**: Gstin, LglNm, TrdNm, Addr1/2, Loc, Pin, Stcd, Ph, Em
  (Buyer also Pos = place of supply)
- **PayDtls_**: DirDr, CrDay, PaidAmt, Paymtdue
- **RefDtls_** (PreDoc), **AddlDocDtls_**, **ExpDtls_** (export)
- **EwbDtls_**: TransId, TransName, Distance, TransDocNo/Dt, VehNo, VehType, TransMode
- **Response**: JsonResponse(max), AckNo(15), AckDt, IRN(64), SignedInvoice(max),
  SignedQRCode(max), QrCodeImage(max), Status(5), EwayBillNo(15), EwayBillDate,
  EwayBillvalidUpto, Remarks, InvCancel_IRN, Inv_CancelDate, supplyType, subSupplyType

### eInvoiceBill2 — items (PK: DocId + SlNo)
PrdDesc, IsServc, HsnCd, Barcde, Qty, FreeQty, Unit, UnitPrice, TotAmt, Discount,
PreTaxVal, AssAmt, GstRt, IgstAmt, CgstAmt, SgstAmt, CesRt, CesAmt, CesNonAdvlAmt,
StateCesRt, StateCesAmt, StateCesNonAdvlAmt, OthChrg, TotItemVal, OrdLineRef,
OrgCntry, PrdSlNo, BchDtls_*, AttribDtls_*, ItemNo, PrdNm, IgstRt/CgstRt/SgstRt/cessrate
→ This is the **NIC ItemList 1:1 mirror** — schema auto-created by the app at runtime
(CREATE TABLE IF NOT EXISTS, EXTRAS.text line 10342+), so it travels with every site copy.

### eInvoiceEnviro — GSP credentials (1 row, live)
ASPId, **ASPPwd**, eInvUserName, **eInvPwd**  ← plaintext credentials (see §7)

### eInvoiceToken — auth token store (0 rows live; app caches to file too)
TokenNo, TokenDateTime, ClientId, UserName, TokenExpiry

## 3. JSON payload build [VERIFIED-VB6, addr 188981C]

- Reads `Select * From eInvoiceBill1 Where DocId='...'` and
  `Select * From eInvoiceBill2 Where DocId='...' Order By Cast(SlNo As Integer)`.
- Writes `App.Path\GeneInvBody.Txt` line-by-line with `Print #1` statements:
  `"Version": "1.1"`, then TranDtls, DocDtls (date as dd/MM/yyyy), SellerDtls,
  BuyerDtls, ItemList[...] (comma logic via EOF check), ValDtls, PayDtls, EwbDtls...
- String quoting helper: Proc_96_104_EA912C; numeric helper: Proc_96_105_E6D028
  (decimal places per field: Qty 3, money 2, Pin 0).
- No JSON library used for the payload — hand-built text (JSON class @987455 is used
  for response parsing / other APIs).

## 4. Transport & auth [VERIFIED-VB6]

- HTTP client: `WinHttp.WinHttpRequest.5.1` (created at 2 sites — eway bill APIs);
  the eInvoice module (object @988705) builds querystring URLs:
  `<base>&action=...&aspid=<Me(28)>&password=<Me(32)>&Gstin=<Me(64)>&user_name=<Me(68)>&AuthToken=<Me(128)>`
  and `&eInvPwd=<Me(72)>` for some calls.
- Base URLs (verified strings): prod einvapi.charteredinfo.com (+mum1, del2 failovers),
  sandbox gstsandbox.charteredinfo.com (site default Me(0) in settings form).
- **AuthToken**: obtained via a "Get Auth Token" step ("Do you want to call AuthToken"
  prompt @159D1A2); stored into eInvoiceToken table AND written plaintext to
  `App.Path\LastAuthToken.txt` (@1133CD5, @159D377). Expiry handled
  ("AuthToken not found or expired..." MsgBox @12CDFB2).
- **E-way bill** ancillary APIs (all CI-hosted):
  `action=CANEWB` (cancel), `action=GetEwayBill`, `printewb` (print), `dynamicqr`
  (dynamic QR for display) — eway data written back to EwbDtls_/EwayBill* columns.

## 5. Bill-side integration [VERIFIED-VB6]

- UI: `CmdeInvoiceJson_Click` = (1) CmdeInvoiceSql_Click → re-stage current bill into
  eInvoiceBill1/2, (2) Proc_96_103 → build JSON. `CmdGeneInvoice_Click` → QR render
  (Proc_348_21 → Me.QrImage) + IRN/ack refresh (Proc_348_15).
- Print: ad-hoc recordsets append `eInvAckNo` field (@235942, @250083, @255658) and
  pull `Select IRN,AckNo,AckDt From eInvoiceBill1 Where DocID='...'` (@249698, @255417)
  → **printed guest bill carries IRN + AckNo + signed QR** when e-invoice active
  (Enviro.MemVar_1F81190='Yes' shows QrImage/CmdeInvoiceJson on the form @11ACB9B+).
- Cancellation: InvCancel_IRN / Inv_CancelDate columns + CANEWB action.

## 6. Live operational snapshot (2026-09-28, aggregates only)  [VERIFIED-SQL]

| Metric | Value |
|---|---|
| Staged bills (eInvoiceBill1) | 211 — all DocDtls_Typ=INV, TranDtls_SupTyp=B2B |
| With IRN + AckNo | 185 (87.7%) |
| With SignedQRCode | 185 |
| Line items (eInvoiceBill2) | 540 |
| Without IRN & without JsonResponse | 26 (never submitted — draft/staging leftovers) |
| Latest AckDt | **2026-08-01** (current GST usage confirmed) |
| E-way bills | none issued from this site (EwayBillNo column absent in live table, EwbDtls_ only) |

Failure handling note: the 26 non-submitted rows carry NO JsonResponse → there is no
retry-queue semantics visible in DB; submission appears manual/per-bill via UI button.

## 7. Security findings (register: BUG-010; SRN-001 addendum F-5)

1. **Plaintext GSP credentials in DB** — eInvoiceEnviro.ASPPwd / eInvPwd readable by
   anyone with SELECT on the table. Rating HIGH (combined with F-2 exposure class).
2. **AuthToken cached plaintext** in App.Path\LastAuthToken.txt (not present on this
   machine currently — file created only after a token call on this install).
3. **Credentials in URL query strings** (aspid=...&password=...) — these land in web
   server logs / any proxy log; inherent to CI legacy API style. MEDIUM.
4. Modernization note: replace with vault-stored secrets + server-side token refresh.

## 8. Modernization mapping (blueprint §3 annex)

| Legacy | Target |
|---|---|
| eInvoiceBill1/2 staging tables | Keep 1:1 (already NIC-mirror) or move to outbox pattern |
| GeneInvBody.Txt hand-built JSON | JSON serializer + schema validation (NIC v1.1) |
| WinHttp per-call + file token cache | Resilient HTTP client, vault secrets, token refresh service |
| Manual per-bill submit button | Outbox + retry queue with backoff; admin dashboard for 26 stuck drafts |
| CI GSP endpoints | Same GSP or NIC direct; keep failover list |

## 9. Evidence index

| Item | Location |
|---|---|
| Runtime CREATE TABLEs | EXTRAS.text lines 10342–10359 |
| Staging INSERT (header/items) | 276635/276785, 325455/325612, 399180/399435 |
| JSON builder Proc_96_103 | 266543–2669xx |
| eInvoice module (auth/URLs) | 988705–990082 region |
| Base URLs | 989954–989978 |
| Eway actions | 989342, 989500, 989602, 989646, 989854 |
| Token file writes | 988766, 989523, 159D377 |
| Bill print IRN join | 249698, 255417, 235942, 250083, 255658 |
| Live schema/counts | 18_Database/columns_dictionary.txt; queries in §2/§6 |
