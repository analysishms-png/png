# HMS DEEP BUG ANALYSIS — Codebase-Wide Patterns & Risk Assessment

| | |
|---|---|
| **Document ID** | BDA-001 |
| **System** | HMS — Hotel Management System (HMS.exe, VB6) + MOONData2627 (SQL Server 2008 R2) |
| **Date** | 2026-09-29 |
| **Classification** | INTERNAL — RESTRICTED |
| **Status** | ANALYSIS COMPLETE — READ-ONLY |
| **Related** | BUG_REGISTER.md (BUG-001..020), SECURITY_REMEDIATION_NOTE_SRN-001.md |

---

## 1. Executive Summary

EXTRAS.text (54MB decompiled VB6 trace) ke 200+ patterns analyze kiye gaye. **20 bugs** register
ho chuke hain (BUG-001..020). Is document mein **root-cause patterns**, **vulnerability categories**,
**risk matrix**, aur **remediation roadmap** diya hai.

**Key findings:**
- **SQL Injection** — 100+ instances of string concatenation in queries (BUG-011)
- **Hardcoded paths** — C:\reptmp\ dependency for all printing (BUG-012)
- **Error handling** — 88 instances of `On Error Resume Next` without proper handling (BUG-013)
- **Division by zero** — 50+ instances without zero checks (BUG-014)
- **Recordset navigation** — 30+ MoveNext without EOF guards (BUG-015)
- **Memory leaks** — Objects not set to Nothing (BUG-016)
- **Transaction gaps** — Some posting routines lack RollbackTrans (BUG-018)
- **Shell execution** — 100+ Shell() calls to batch files (BUG-019)

---

## 2. Bug Pattern Categories

### 2.1 SQL Injection (CRITICAL)
**Pattern:** `"SELECT ... WHERE field='" & userInput & "'"`
**Count:** 100+ instances
**Locations:** KOT queries, HallBook queries, PayCharge queries, PlanMast queries, GuestProfFor queries, RevMast queries, Depart queries
**Evidence:** EXTRAS.text lines 65365, 65536, 65728, 66659, 66882, 67130, 67344, 231697, 231704, 233622, 235521, 235528, 240180, 240234, 240619, 240643, 241340, 241346, 241359, 241372, 241386, 241401, 241438, 241448, 241460, 241982, 241991, 242002, 242052, 242072, 242085, 242099, 242114, 242148, 242157, 242170, 242202, 242223, 242244, 242266, 242293, 243000, 243006, 243019, 243032, 243046, 243062, 243099, 243108, 243120, 243634, 243643, 243654, 243704, 243724, 243737, 243751, 243766, 243800, 243809, 243822, 243854, 243875, 243896, 243918, 243945, 244480, 244488, 245552, 257454, 257459, 257484, 258554, 258562, 260713, 290019, 290024, 290049, 291093, 291101, 293268, 294345, 294353, 296394, 296448, 296835, 296859, 297556, 297562, 297575, 297588, 297602, 297617, 297654, 297663, 297675, 298180, 298189, 298200, 298250

**Root cause:** VB6-era ADODB without parameterized queries; string concatenation used throughout.

**Impact:** Any user who can influence form fields can inject SQL. Combined with BUG-008 (backdoor) and BUG-002 (reversible passwords), this creates a complete attack chain.

---

### 2.2 Hardcoded File Paths (HIGH)
**Pattern:** `Open "C:\reptmp\..." For Output` and `Shell("C:\reptmp\...")`
**Count:** 200+ instances
**Locations:** All report printing (KOT, SBILL, SCRBILL, REPPRINT)
**Evidence:** EXTRAS.text lines 50485, 50681, 61157, 61164, 61166, 61173, 64477, 64484, 64486, 64491, 64597, 64601, 64606, 64608, 65218, 65379, 65381, 65387, 65391, 65553, 65567, 65738, 66476, 66672, 66688, 66692, 66702, 66899, 66915, 66919, 66928, 67140, 67146, 67150, 67154, 67158, 67165, 67354, 67360, 67364, 67368, 67372, 81640, 81841, 81845, 81847, 99140, 99235, 99239, 99241, 99960, 100050, 100054, 100056, 100117, 100227, 100231, 100233, 115567, 115702, 115706, 115708, 132243, 132473, 137551, 137719, 137723, 137725, 139510, 139677, 139681, 139683, 163424, 163714, 163718, 163720, 163816, 164198, 164205, 164207, 166958, 167265, 167269, 167271, 170241, 170341, 170345, 170347, 170379, 170467, 170471, 170473, 170505, 170603, 170607, 170609, 170641, 170695, 170699, 170701, 170779, 170961, 170965, 170967, 171287, 171453, 171457, 171459, 171787, 171969, 171973, 171975, 172521, 173127, 173131, 173133, 173136, 173140, 173142, 176134, 176320, 176324, 176326, 235153, 235157, 235393, 235397, 235399, 235404, 235413, 235417, 235510, 235513, 235877, 235881, 235883, 235888, 235896, 235899, 236782, 236786, 237052, 237056, 237058, 237064, 237074, 237078, 237191, 237528, 237532, 237534, 237540, 237549, 237553, 237562, 237567, 237570, 237585, 238163, 238688, 238692, 238694, 239075, 239653, 239657, 239659, 239913, 240723, 240727, 240729, 241000, 242382, 242386, 242388, 242660, 244032, 244036, 244038, 244286, 245090, 245094, 245096, 246204, 246206, 247239, 247241, 248262

**Root cause:** Development path hardcoded; never made configurable via INI or registry.

**Impact:** Single point of failure; if C:\reptmp\ is missing or compromised, all printing fails or arbitrary code executes.

---

### 2.3 Error Handling Gaps (HIGH)
**Pattern:** `On Error Resume Next` without corresponding error handling
**Count:** 88 instances
**Locations:** All modules
**Evidence:** EXTRAS.text lines 3198, 3443, 3492, 3522, 3547, 3578, 3632, 7399, 8753, 11690, 13878, 13970, 16463, 18059, 18425, 18693, 19113, 19133, 19149, 19157, 19187, 19222, 19254, 19275, 19294, 19327, 19773, 19792, 81665, 120700, 133416, 143607, 204879, 204902, 204926, 204954, 226695, 265829, 266051, 268734, 282584, 370660, 448697, 461072, 475692, 477022, 480842, 480861, 480889, 480924, 487067, 487214, 519853, 520455, 521623, 542576, 542724, 555795, 572472, 586901, 622316, 624957, 626049, 626091, 638262, 662858, 726389, 764694, 778478, 831669, 840114, 844308, 844342, 846961, 846999, 847053, 847091, 853061, 869341, 884454, 901794, 901802, 987474, 987520, 987575, 988014, 989784, 989999

**Root cause:** VB6 default error handling; no structured exception handling (Try/Catch equivalent).

**Impact:** Errors silently swallowed; application continues in inconsistent state; data corruption risk.

---

### 2.4 Division by Zero (MEDIUM)
**Pattern:** `Val(userInput) / Val(anotherInput)` without zero check
**Count:** 50+ instances
**Locations:** POS, Inventory, Purchase, Sales modules
**Evidence:** EXTRAS.text lines 57214, 73776, 93606, 104611, 105390, 106157, 106269, 106333, 106483, 106705, 106769, 106919, 129611, 147948, 150427, 151195, 151280, 151398, 151462, 151565, 151603, 151619, 151636, 151852, 151916, 152019, 152057, 152073, 152090, 152321, 152376, 152393, 152434, 152474, 152511, 152519, 152540, 152556, 152573, 152746, 152790, 152799, 152814, 212556, 212585, 427581, 473249, 473330, 473403, 473612, 473646, 473684, 553524, 553726, 957652, 958576, 959123, 959245, 959309, 959496, 959734, 959798, 959980, 960232, 960287, 960304, 960345, 960382, 960495

**Root cause:** Missing input validation; no defensive coding.

**Impact:** Runtime error 11 (Division by zero); crash on bad input.

---

### 2.5 Recordset Navigation (MEDIUM)
**Pattern:** `MoveNext` without EOF check
**Count:** 30+ instances
**Locations:** All data-bound forms
**Evidence:** EXTRAS.text lines 3652, 3769, 4093, 6569, 6574, 6597, 6642, 6658, 6678, 6730, 6761, 6795, 6827, 6852, 7863, 8248, 8329, 8406, 8640, 8642, 10641, 11667, 11906, 12102, 14327, 14918, 15101, 15116, 15326, 15347

**Root cause:** Missing EOF guards; assumes recordset always has data.

**Impact:** Runtime error 3021 (Either BOF or EOF is True); crash on edge cases.

---

### 2.6 Memory Leaks (LOW-MEDIUM)
**Pattern:** Objects not set to Nothing
**Count:** ~100 Set Nothing vs thousands of recordset creations
**Locations:** All forms
**Evidence:** EXTRAS.text — only ~100 instances of `Set ... = Nothing` found

**Root cause:** VB6 garbage collection not deterministic; manual cleanup inconsistent.

**Impact:** Gradual performance degradation; long-running sessions consume more memory.

---

### 2.7 Transaction Gaps (HIGH)
**Pattern:** BeginTrans/CommitTrans without RollbackTrans
**Count:** 15+ instances
**Locations:** KOT posting, Bill posting
**Evidence:** EXTRAS.text lines 6241-6247, 6449-6491, 6499-6515, 6520-6579, 6581-6601, 6602-6627, 6628-6646, 6647-6662, 6665-6682, 6683-6688, 6697-6704, 6711-6733, 6740-6764, 6781-6798, 6804-6831, 6832-6856

**Root cause:** Inconsistent error handling; some routines added transactions later without rollback.

**Impact:** Partial posting possible; data corruption risk.

---

### 2.8 Shell Execution (HIGH)
**Pattern:** `Shell("C:\reptmp\...", 0)`
**Count:** 100+ instances
**Locations:** All report printing
**Evidence:** EXTRAS.text lines 4081, 50685, 50687, 61164, 61166, 61300, 61302, 64484, 64486, 64606, 64608, 65387, 65561, 65746, 66688, 66692, 66915, 66919, 67154, 67158, 67368, 67372, 81845, 81847, 99239, 99241, 100054, 100056, 100231, 100233, 115706, 115708, 137723, 137725, 139681, 139683, 163718, 163720, 164205, 164207, 167269, 167271, 170345, 170347, 170471, 170473, 170607, 170609, 170699, 170701, 170965, 170967, 171457, 171459, 171973, 171975, 173131, 173133, 173140, 173142, 176324, 176326, 235397, 235399, 235413, 235417, 235881, 235883, 235896, 235899, 237056, 237058, 237074, 237078, 237532, 237534, 237549, 237553, 237567, 237570, 237585, 238692, 238694, 239657, 239659, 240727, 240729, 242386, 242388, 244036, 244038, 245094, 245096, 246204, 246206, 247239, 247241, 248262

**Root cause:** VB6-era printing workaround; no secure alternative.

**Impact:** If attacker can write to C:\reptmp\, they can execute arbitrary code.

---

### 2.9 File Operations Without Error Handling (LOW)
**Pattern:** `Kill` without error handling
**Count:** 6 instances
**Locations:** eInvoice QR code generation
**Evidence:** EXTRAS.text lines 448698, 448724, 448753, 989809, 989890, 990071

**Root cause:** Missing error handling; assumes file always exists.

**Impact:** Runtime error 53 (File not found); eInvoice QR generation fails.

---

### 2.10 Hardcoded Dates (LOW)
**Pattern:** `"01/01/99"` as default
**Count:** 2 instances
**Locations:** Global date handling
**Evidence:** EXTRAS.text lines 9715, 9716

**Root cause:** Development placeholder never updated.

**Impact:** Edge case; may affect reports or date-sensitive logic.

---

## 3. Risk Assessment Matrix

| Bug ID | Category | Severity | Likelihood | Impact | Risk Rating |
|---|---|---|---|---|---|
| BUG-011 | SQL Injection | HIGH | Medium | Full DB compromise | **CRITICAL** |
| BUG-012 | Hardcoded Paths | MEDIUM | High | All printing fails | **HIGH** |
| BUG-013 | Error Handling | MEDIUM | High | Data corruption | **HIGH** |
| BUG-014 | Division by Zero | MEDIUM | Medium | Form crash | **MEDIUM** |
| BUG-015 | Recordset Navigation | MEDIUM | Medium | Form crash | **MEDIUM** |
| BUG-016 | Memory Leaks | LOW-MEDIUM | High | Performance degradation | **MEDIUM** |
| BUG-017 | Hardcoded Dates | LOW | Low | Incorrect calculations | **LOW** |
| BUG-018 | Transaction Gaps | HIGH | Medium | Data corruption | **HIGH** |
| BUG-019 | Shell Execution | HIGH | Low | Arbitrary code execution | **HIGH** |
| BUG-020 | File Operations | LOW | Low | Feature failure | **LOW** |

---

## 4. Vulnerability Categories (OWASP Mapping)

| OWASP Category | HMS Instances | Bugs |
|---|---|---|
| A01:2021 — Broken Access Control | Backdoor password, missing authz | BUG-008 |
| A02:2021 — Cryptographic Failures | Reversible passwords, plaintext tokens | BUG-010, F-2 |
| A03:2021 — Injection | SQL injection via concatenation | BUG-011 |
| A04:2021 — Insecure Design | Hardcoded paths, Shell execution | BUG-012, BUG-019 |
| A05:2021 — Security Misconfiguration | On Error Resume Next, missing error handling | BUG-013 |
| A06:2021 — Vulnerable Components | VB6 runtime, SQL Server 2008 R2 | Systemic |
| A07:2021 — Auth Failures | No lockout, case-insensitive comparison | F-2 |
| A08:2021 — Data Integrity Failures | Missing transactions, no FK/triggers | BUG-018, BUG-007 |
| A09:2021 — Logging Failures | Silent error swallowing | BUG-013 |
| A10:2021 — SSRF | Shell execution to batch files | BUG-019 |

---

## 5. Code Quality Issues

### 5.1 VB6-Specific Issues
- **No structured exception handling** — `On Error Resume Next` used instead of Try/Catch
- **No parameterized queries** — string concatenation everywhere
- **No garbage collection** — objects must be manually released
- **No namespace support** — global variables everywhere
- **No threading** — single-threaded apartment model

### 5.2 Database Design Issues
- **0 foreign keys** — referential integrity 100% in application
- **0 triggers** — no database-level validation
- **0 stored procedures** — all logic in VB6
- **0 functions** — no reusable DB logic
- **SIMPLE recovery** — no point-in-time recovery

### 5.3 Architecture Issues
- **Monolithic VB6 executable** — no separation of concerns
- **Client-side transactions** — BeginTrans/CommitTrans in VB6
- **Hardcoded configuration** — C:\reptmp\, C:\PENDRIVE\HMS\
- **No audit trail** — U_Name/U_EntDt columns exist but not consistently populated

---

## 6. Recommended Security Improvements

### 6.1 Immediate (Days)
1. **Create C:\reptmp\** — ensure it exists with proper ACLs (BUG-012)
2. **Rotate all passwords** — recover from any past exposure (F-2)
3. **Restrict C:\reptmp\ access** — ACL to HMS service account only (BUG-019)
4. **Add monitoring** — alert on SQL errors, failed logins

### 6.2 Short-Term (Weeks)
1. **Parameterized queries** — replace all string concatenation (BUG-011)
2. **Error handling** — replace `On Error Resume Next` with proper handlers (BUG-013)
3. **Input validation** — add zero checks before division (BUG-014)
4. **EOF guards** — add EOF checks after MoveNext (BUG-015)
5. **Transaction rollback** — add RollbackTrans to all posting routines (BUG-018)

### 6.3 Medium-Term (Months)
1. **Move to .NET** — modern language with structured exception handling
2. **ORM framework** — Entity Framework or Dapper for parameterized queries
3. **Database upgrade** — SQL Server 2019+ with FKs, triggers, SPs
4. **Audit logging** — comprehensive audit trail for all operations

### 6.4 Long-Term (Years)
1. **Microservices architecture** — separate modules into services
2. **API gateway** — centralized authentication and authorization
3. **Secrets vault** — Azure Key Vault or similar for credentials
4. **CI/CD pipeline** — automated testing and deployment

---

## 7. Evidence Summary

| Evidence Type | Source | Count |
|---|---|---|
| VB6 Code Patterns | EXTRAS.text | 200+ patterns |
| SQL Statements | write_statements.txt | 40 statements |
| Database Schema | LIVE_DATABASE_DICTIONARY.md | 277 tables |
| Runtime Logs | FaLog.Log, ErrorLog.Log | 1000+ entries |
| Security Findings | SRN-001 | 5 findings (F-1..F-5) |
| Bug Register | BUG_REGISTER.md | 20 bugs (BUG-001..020) |

---

## 8. Conclusion

HMS mein **20 bugs** identify kiye hain, jismein **5 HIGH severity** hain. Sabse critical
**SQL injection** (BUG-011) hai — 100+ instances. **Hardcoded paths** (BUG-012) aur
**Shell execution** (BUG-019) bhi high risk hain. **Error handling gaps** (BUG-013) aur
**transaction gaps** (BUG-018) data corruption risk create karte hain.

**Immediate action:** C:\reptmp\ create karo, passwords rotate karo, aur C:\reptmp\ ACL restrict karo.

**Short-term action:** Parameterized queries, error handling, input validation, EOF guards,
aur transaction rollback add karo.

**Long-term action:** Modernization program start karo — .NET migration, ORM framework,
database upgrade, aur microservices architecture.

---

*Document generated: 2026-09-29*
*Analysis type: READ-ONLY — no code or database modifications made*
