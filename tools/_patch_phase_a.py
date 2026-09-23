"""Phase A core patches (api-mismatch audit fixes). One-shot; delete after run."""
import io


def append(path, block):
    with io.open(path, "r", encoding="utf-8", errors="replace") as fh:
        txt = fh.read()
    with io.open(path, "a", encoding="utf-8", newline="") as fh:
        fh.write(block)


# ---------- 1. hr_payroll: missing update_* fns ----------
append("HMS_py/core/hr_payroll.py", '''


# ============================================================
# Phase A (api-mismatch audit): UI hr_payroll_ui.py in update fns ko
# call karta tha par core me the hi nahi -> Edit buttons AttributeError.
# ============================================================
def update_salary(mth_year, emp_code, rec, cn=None, commit=True,
                  user=USER) -> dict:
    sets, params = [], []
    for fld in ("Work_Day", "CL", "Leave", "Sunday", "Holiday", "Absent",
                "Basic", "DA", "HRA", "Income_Tax", "Other_Allow",
                "Other_Deduc", "Conveyance", "Medical", "LTA", "PF", "EPF",
                "ESI", "Loan", "Advance", "Net_Salary", "Loan_Bal",
                "OverTime", "OverTimeAmt"):
        key = fld.lower()
        if key in rec:
            sets.append(fld + " = ?")
            params.append(float(rec[key] or 0))
    if not sets:
        raise ValueError("Koi field update nahi diya")
    sets += ["U_Name = ?", "U_EntDt = getdate()", "U_AE = 'E'"]
    params += [user, mth_year, emp_code]
    db.execute("UPDATE Salary SET " + ", ".join(sets) +
               " WHERE Mth_Year = ? AND Emp_Code = ?", params,
               cn=cn, commit=commit)
    return get_salary(mth_year, emp_code, cn=cn)


def update_attendence(emp_code, date_or_mth, rec, cn=None, commit=True,
                      user=USER) -> dict:
    # UI (Emp_Code, Date, rec) bhejta hai; DB key Mth_Year+Emp_Code hai.
    # Attn_Str = "In-Out-Status" composite (VB6 Attendence string pattern).
    attn = rec.get("attn_str")
    if attn is None:
        parts = [str(rec.get("intime", "") or ""),
                 str(rec.get("outtime", "") or ""),
                 str(rec.get("status", "") or "")]
        attn = "-".join(p for p in parts if p)
    mth = str(rec.get("mth_year") or "")
    d = str(date_or_mth or "")
    if not mth and len(d) >= 7 and d[4:5] == "-":
        mth = d[:7]
    db.execute(
        "UPDATE Attendence SET Attn_Str = ?, U_Name = ?, "
        "U_EntDt = getdate(), U_AE = 'E' WHERE Mth_Year = ? AND Emp_Code = ?",
        (attn, user, mth, emp_code), cn=cn, commit=commit)
    return get_attendence(mth, emp_code, cn=cn)


def update_loan(emp_code, sr_no, rec, cn=None, commit=True,
                user=USER) -> dict:
    sr = rec.get("sr_no", sr_no)
    sets, params = [], []
    if "amount" in rec:
        sets.append("Amount = ?"); params.append(float(rec["amount"] or 0))
    if "installment" in rec:
        sets.append("Installment = ?"); params.append(float(rec["installment"] or 0))
    if "remark" in rec:
        sets.append("Remark = ?"); params.append(str(rec["remark"] or ""))
    if "ac_code" in rec:
        sets.append("AC_Code = ?"); params.append(str(rec["ac_code"] or ""))
    if "mth_year" in rec:
        sets.append("Mth_Year = ?"); params.append(str(rec["mth_year"] or ""))
    if not sets:
        raise ValueError("Koi field update nahi diya")
    sets += ["U_Name = ?", "U_EntDt = getdate()", "U_AE = 'E'"]
    params += [user, sr]
    db.execute("UPDATE Loan SET " + ", ".join(sets) + " WHERE Sr_No = ?",
               params, cn=cn, commit=commit)
    return get_loan(sr, cn=cn)


def update_overtime(empcode, date_or_none, rec, cn=None, commit=True,
                    user=USER) -> dict:
    sets, params = [], []
    if "otime" in rec:
        sets.append("OTime = ?"); params.append(float(rec["otime"] or 0))
    if "otrate" in rec:
        sets.append("OTRate = ?"); params.append(float(rec["otrate"] or 0))
    if "amount" in rec:
        sets.append("Amount = ?"); params.append(float(rec["amount"] or 0))
    if "remark" in rec:
        sets.append("Remark = ?"); params.append(str(rec["remark"] or ""))
    if not sets:
        raise ValueError("Koi field update nahi diya")
    sets += ["U_Name = ?", "U_EntDt = getdate()", "U_AE = 'E'"]
    params += [user, empcode]
    db.execute("UPDATE OverTime SET " + ", ".join(sets) +
               " WHERE EmpCode = ?", params, cn=cn, commit=commit)
    return get_overtime(empcode, cn=cn)
''')

# ---------- 2. member_billing: aliases ----------
append("HMS_py/core/member_billing.py", '''


# Phase A (api-mismatch audit): UI member_billing_ui list_all/get/insert
# call karta tha — MemBill ke canonical fns ke aliases.
list_all = list_membill
get = get_membill
insert = insert_membill
''')

# ---------- 3. pos: KOT browser + report helpers ----------
append("HMS_py/core/pos.py", '''


# ============================================================
# Phase A (api-mismatch audit): pos_na.py KOT-browser + report fns
# jo core me the hi nahi (AttributeError on first click).
# Outlet master = Depart (POS='Y'/'KotYn'='Y'), RestMast DB me NAHI hai.
# ============================================================
def kot_list(cn=None, limit: int = 300) -> list:
    rows = db.query(
        "SELECT TOP " + str(int(limit)) + " k.DocId, k.VNo, k.VDate, "
        "k.RestCode, d.Name, ISNULL(SUM(k.Amount), 0) AS Amount, "
        "COUNT(*) AS Lines "
        "FROM KOT k LEFT JOIN Depart d ON d.Code = k.RestCode "
        "WHERE ISNULL(k.VoidYN, 'N') <> 'Y' "
        "GROUP BY k.DocId, k.VNo, k.VDate, k.RestCode, d.Name "
        "ORDER BY k.VNo DESC", cn=cn)
    return [{"docid": r.DocId, "vno": r.VNo, "vdate": r.VDate,
             "rest": r.RestCode or "", "outlet": r.Name or r.RestCode or "",
             "lines": int(r.Lines or 0), "amount": float(r.Amount or 0)}
            for r in rows]


def kot_lines(docid: str, cn=None) -> list:
    rows = db.query(
        "SELECT k.Sno, k.Item, i.Name, k.Qty, k.Unit, k.Amount "
        "FROM KOT k LEFT JOIN ItemMast i ON i.Code = k.Item "
        "WHERE k.DocId = ? ORDER BY k.Sno", (docid,), cn=cn)
    return [{"sno": r.Sno, "item": r.Item or "", "name": r.Name or r.Item or "",
             "qty": r.Qty, "unit": r.Unit or "",
             "amount": float(r.Amount or 0)} for r in rows]


def sales_summary(cn=None, limit: int = 300) -> list:
    rows = db.query(
        "SELECT TOP " + str(int(limit)) + " k.RestCode, d.Name, "
        "COUNT(DISTINCT k.DocId) AS KOTs, ISNULL(SUM(k.Amount), 0) AS Amount "
        "FROM KOT k LEFT JOIN Depart d ON d.Code = k.RestCode "
        "WHERE ISNULL(k.VoidYN, 'N') <> 'Y' "
        "GROUP BY k.RestCode, d.Name ORDER BY Amount DESC", cn=cn)
    return [{"rest": r.RestCode or "", "outlet": r.Name or r.RestCode or "",
             "kots": int(r.KOTs or 0), "amount": float(r.Amount or 0)}
            for r in rows]


def itemwise_sale(cn=None, limit: int = 300) -> list:
    rows = db.query(
        "SELECT TOP " + str(int(limit)) + " k.Item, i.Name, "
        "ISNULL(SUM(k.Qty), 0) AS Qty, ISNULL(SUM(k.Amount), 0) AS Amount "
        "FROM KOT k LEFT JOIN ItemMast i ON i.Code = k.Item "
        "WHERE ISNULL(k.VoidYN, 'N') <> 'Y' "
        "GROUP BY k.Item, i.Name ORDER BY Amount DESC", cn=cn)
    return [{"item": r.Item or "", "name": r.Name or r.Item or "",
             "qty": float(r.Qty or 0), "amount": float(r.Amount or 0)}
            for r in rows]
''')

# ---------- 4. pos_packing: UI-shaped wrappers ----------
append("HMS_py/core/pos_packing.py", '''


# ============================================================
# Phase A (api-mismatch audit): UI pos_packing_ui list_all/get/
# insert/update (docid-keyed) call karta tha. insert() UI-keys
# (PartyName/ItemName/Qty/...) se PackingOrder+detail bhar deta hai.
# ============================================================
def list_all(cn=None, limit: int = 500) -> list:
    return packing_list(cn=cn, limit=limit)


def get(docid: str, cn=None):
    return packing_get(docid, cn=cn)


def insert(rec: dict, cn=None, commit: bool = True) -> int:
    if not str(rec.get("docid", "")).strip():
        vno_rows = db.query(
            "SELECT MAX(VNo) FROM PackingOrder WITH (UPDLOCK, HOLDLOCK)",
            cn=cn)
        vno = (vno_rows[0][0] or 0) + 1 if vno_rows and vno_rows[0][0] else 1
        vtype = str(rec.get("vtype") or "PK")
        rec = {**rec,
               "docid": ("D" + SITE_CODE.ljust(2) + "PK".ljust(6) +
                         str(rec.get("vprefix", "2026")).ljust(4) +
                         str(vno).rjust(8))[:21],
               "vno": vno, "vtype": vtype,
               "custname": str(rec.get("custname") or rec.get("PartyName") or ""),
               "remark": str(rec.get("remark") or rec.get("Remarks") or ""),
               "items": rec.get("items") or [{
                   "sno": 1, "vtype": vtype,
                   "vprefix": rec.get("vprefix", "2026"),
                   "vdate": rec.get("vdate"), "itemcode": "",
                   "qty": rec.get("Qty", 0) or 0, "rate": 0,
                   "amount": 0, "remark": rec.get("ItemName", "")}]}
    return packing_insert(rec, cn=cn, commit=commit)


def update(docid: str, rec: dict, cn=None, commit: bool = True) -> int:
    n = packing_update(docid, rec, cn=cn, commit=commit)
    # UI ka fake "Status" field -> PrintedYN par map (Packed = printed)
    if "status" in rec:
        db.execute(
            "UPDATE PackingOrder SET PrintedYN = ? WHERE Docid = ?",
            ("Y" if str(rec["status"]).lower() == "packed" else "N", docid),
            cn=cn, commit=commit)
    return n
''')

print("Phase A core patches appended")
