"""Phase A part-3: UI call-sites ko real core API par migrate + core fixes. One-shot."""
import io

ROOT = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py"


def patch(path, pairs):
    p = ROOT + "\\" + path.replace("/", "\\")
    with io.open(p, "r", encoding="utf-8", errors="replace") as fh:
        txt = fh.read()
    miss = []
    for old, new in pairs:
        if old not in txt:
            miss.append(old[:70])
            continue
        txt = txt.replace(old, new, 1)
    with io.open(p, "w", encoding="utf-8", newline="") as fh:
        fh.write(txt)
    return miss


missed = []

# ---------- fa_ledger_ui: SubGroup(ledger.py) par migrate ----------
missed += patch("HMS_py/ui/fa_ledger_ui.py", [
    ("from HMS_py.core import fa_ledger_ops",
     "from HMS_py.core import ledger as _ledger_mod\n\n\nclass _LedgerMasterBridge:\n"
     "    \"\"\"fa_ledger_ops ke stale calls ko asli ledger-master (SubGroup,\n"
     "    HMS_py/core/ledger.py) par route karta hai. Keys UI-shaped\n"
     "    (AcCode/AcName/...) <-> core (code/name/...) translate hoti hain.\"\"\"\n\n"
     "    @staticmethod\n    def list_ledger(cn=None):\n        rows = _ledger_mod.list_all(cn=cn, top=500)\n"
     "        return [{\"AcCode\": r[\"code\"], \"AcName\": r[\"name\"],\n"
     "                 \"GroupCode\": r[\"group\"], \"OpBalance\": \"\",\n"
     "                 \"DrCr\": \"\", \"Address\": r[\"add1\"]} for r in rows]\n\n"
     "    @staticmethod\n    def get_ledger(code, cn=None):\n        r = _ledger_mod.get(code, cn=cn)\n"
     "        if not r:\n            return None\n"
     "        return {\"AcCode\": r[\"code\"], \"AcName\": r[\"name\"],\n"
     "                \"GroupCode\": r[\"group\"], \"OpBalance\": \"\",\n"
     "                \"DrCr\": \"\", \"Address\": r[\"add1\"]}\n\n"
     "    @staticmethod\n    def insert_ledger(rec, cn=None, commit=True):\n"
     "        return _ledger_mod.insert({\n            \"code\": rec.get(\"AcCode\", \"\"),\n"
     "            \"name\": rec.get(\"AcName\", \"\"),\n"
     "            \"group\": rec.get(\"GroupCode\", \"\"),\n"
     "            \"add1\": rec.get(\"Address\", \"\")}, cn=cn, commit=commit)\n\n"
     "    @staticmethod\n    def update_ledger(code, rec, cn=None, commit=True):\n"
     "        return _ledger_mod.update(code, {\n            \"name\": rec.get(\"AcName\", \"\"),\n"
     "            \"group\": rec.get(\"GroupCode\", \"\"),\n"
     "            \"add1\": rec.get(\"Address\", \"\")}, cn=cn, commit=commit)\n\n\n"
     "fa_ledger_ops = _LedgerMasterBridge()"),
])

# ---------- hr_payroll_ui: dict-rows rendering + correct rec keys ----------
missed += patch("HMS_py/ui/hr_payroll_ui.py", [
    # salary refresh
    ("""        self.sal_table.setRowCount(len(rows))
        for i, r in enumerate(rows):
            for j, val in enumerate(r):
                self.sal_table.setItem(i, j, self._dark_item(val))""",
     """        self.sal_table.setRowCount(len(rows))
        for i, r in enumerate(rows):
            vals = ([r.get("mth_year", ""), r.get("emp_code", ""),
                     r.get("basic", 0), r.get("da", 0), r.get("hra", 0),
                     (r.get("basic", 0) or 0) + (r.get("da", 0) or 0) +
                     (r.get("hra", 0) or 0), "", r.get("net_salary", 0)]
                    if isinstance(r, dict) else list(r))
            for j, val in enumerate(vals):
                self.sal_table.setItem(i, j, self._dark_item(val))"""),
    # attendance refresh
    ("""        self.att_table.setRowCount(len(rows))
        for i, r in enumerate(rows):
            for j, val in enumerate(r):
                self.att_table.setItem(i, j, self._dark_item(val))""",
     """        self.att_table.setRowCount(len(rows))
        for i, r in enumerate(rows):
            attn = str(r.get("attn_str", "") if isinstance(r, dict)
                       else (r[2] if len(r) > 2 else "")) or "-"
            parts = attn.split("-")
            vals = [r.get("emp_code", "") if isinstance(r, dict) else r[1],
                    str(r.get("mth_year", "") if isinstance(r, dict) else r[0]),
                    parts[0] if len(parts) > 0 else "",
                    parts[1] if len(parts) > 1 else "",
                    parts[2] if len(parts) > 2 else ""]
            for j, val in enumerate(vals):
                self.att_table.setItem(i, j, self._dark_item(val))"""),
    # loan refresh
    ("""        self.loan_table.setRowCount(len(rows))
        for i, r in enumerate(rows):
            for j, val in enumerate(r):
                self.loan_table.setItem(i, j, self._dark_item(val))""",
     """        self.loan_table.setRowCount(len(rows))
        for i, r in enumerate(rows):
            vals = ([r.get("emp_code", ""), r.get("sr_no", ""),
                     r.get("amount", 0), r.get("installment", 0),
                     (r.get("amount", 0) or 0) - (r.get("installment", 0) or 0)]
                    if isinstance(r, dict) else list(r))
            for j, val in enumerate(vals):
                self.loan_table.setItem(i, j, self._dark_item(val))"""),
    # overtime refresh
    ("""        self.ot_table.setRowCount(len(rows))
        for i, r in enumerate(rows):
            for j, val in enumerate(r):
                self.ot_table.setItem(i, j, self._dark_item(val))""",
     """        self.ot_table.setRowCount(len(rows))
        for i, r in enumerate(rows):
            vals = ([r.get("empcode", ""), str(r.get("otdate", "")),
                     r.get("otime", 0), r.get("otrate", 0), r.get("amount", 0)]
                    if isinstance(r, dict) else list(r))
            for j, val in enumerate(vals):
                self.ot_table.setItem(i, j, self._dark_item(val))"""),
    # salary save rec (core lowercase keys)
    ("""        rec = {
            "Mth_Year": mth,
            "Emp_Code": emp,
            "Basic": self.sal_basic.text().strip(),
            "DA": self.sal_da.text().strip(),
            "HRA": self.sal_hra.text().strip(),
            "Deductions": self.sal_ded.text().strip(),
        }""",
     """        rec = {
            "mth_year": mth,
            "emp_code": emp,
            "basic": self.sal_basic.text().strip() or 0,
            "da": self.sal_da.text().strip() or 0,
            "hra": self.sal_hra.text().strip() or 0,
        }"""),
    # attendance save rec
    ("""        rec = {
            "Emp_Code": emp,
            "Date": dt,
            "InTime": self.att_in.text().strip(),
            "OutTime": self.att_out.text().strip(),
            "Status": self.att_status.text().strip(),
        }""",
     """        rec = {
            "emp_code": emp,
            "intime": self.att_in.text().strip(),
            "outtime": self.att_out.text().strip(),
            "status": self.att_status.text().strip(),
        }"""),
    # loan save rec
    ("""        rec = {
            "Emp_Code": emp,
            "Sr_No": sr,
            "LoanAmt": self.loan_amt.text().strip(),
            "Installment": self.loan_inst.text().strip(),
            "Balance": self.loan_bal.text().strip(),
        }""",
     """        rec = {
            "emp_code": emp,
            "sr_no": sr,
            "amount": self.loan_amt.text().strip() or 0,
            "installment": self.loan_inst.text().strip() or 0,
        }"""),
    # overtime save rec
    ("""        rec = {
            "Emp_Code": emp,
            "Date": dt,
            "Hours": self.ot_hours.text().strip(),
            "Rate": self.ot_rate.text().strip(),
            "Amount": self.ot_amt.text().strip(),
        }""",
     """        rec = {
            "empcode": emp,
            "otime": self.ot_hours.text().strip() or 0,
            "otrate": self.ot_rate.text().strip() or 0,
            "amount": self.ot_amt.text().strip() or 0,
        }"""),
])

# ---------- guest_services_ui: real rec keys + delete keys ----------
missed += patch("HMS_py/ui/guest_services_ui.py", [
    ('''            rec = {
                "FolioNo": self.txt_c_folio.text(),
                "GuestName": self.txt_c_name.text(),
                "Comment": self.txt_c_comment.text(),
            }''',
     '''            rec = {
                "name": self.txt_c_name.text(),
                "comments": self.txt_c_comment.text(),
                "mobile": "",
            }'''),
    ('''                vno = int(self.tbl_comments.item(row, 0).text())
                guest_services.delete_comment(vno)''',
     '''                code = int(self.tbl_comments.item(row, 0).text())
                guest_services.delete_comments(code)'''),
    ('''            rec = {
                "FolioNo": self.txt_co_folio.text(),
                "Complaint": self.txt_co_comp.text(),
                "Category": self.txt_co_cat.text(),
                "Status": self.txt_co_status.text(),
            }''',
     '''            rec = {
                "description": self.txt_co_comp.text(),
                "category": self.txt_co_cat.text(),
                "status": self.txt_co_status.text() or "Open",
            }'''),
    ('''            rec = {
                "FolioNo": self.txt_w_folio.text(),
                "WakeUpTime": self.txt_w_time.text(),
            }''',
     '''            rec = {
                "vtime": self.txt_w_time.text() or "07:00",
                "folio": self.txt_w_folio.text() or 0,
            }'''),
    ('''                vno = int(self.tbl_wakeup.item(row, 0).text())
                guest_services.delete_wakeup(vno)''',
     '''                docid = self.tbl_wakeup.item(row, 0).text()
                guest_services.delete_wakeup(docid)'''),
    ('''            rec = {
                "ItemName": self.txt_lf_item.text(),
                "Description": self.txt_lf_desc.text(),
                "Status": self.txt_lf_status.text(),
            }''',
     '''            rec = {
                "farea": self.txt_lf_item.text(),
                "description": self.txt_lf_desc.text(),
                "status": self.txt_lf_status.text() or "Open",
            }'''),
    ('''                vno = int(self.tbl_lf.item(row, 0).text())
                guest_services.delete_lostfound(vno)''',
     '''                code = int(self.tbl_lf.item(row, 0).text())
                guest_services.delete_lostfound(code)'''),
])

# ---------- member_billing_ui: dict-render + Save flow ----------
missed += patch("HMS_py/ui/member_billing_ui.py", [
    ("""        self.table.setRowCount(len(rows))
        for i, r in enumerate(rows):
            for j, val in enumerate(r):
                self.table.setItem(i, j, self._dark_item(val))""",
     """        self.table.setRowCount(len(rows))
        for i, r in enumerate(rows):
            vals = ([r.get("vno", ""), r.get("memcode", ""), "",
                     str(r.get("billdate") or ""), r.get("netamount", 0),
                     r.get("u_ae", "")]
                    if isinstance(r, dict) else list(r))
            for j, val in enumerate(vals):
                self.table.setItem(i, j, self._dark_item(val))"""),
    ("""    def _on_add_family(self):""",
     """    def _on_save(self):
        rec = {
            "memcode": self.fld_memcode.text().strip(),
            "billdate": self.fld_billdate.text().strip() or None,
            "amount": self.fld_netamt.text().strip() or 0,
            "netamount": self.fld_netamt.text().strip() or 0,
        }
        if not rec["memcode"]:
            QMessageBox.warning(self, "Warning", "MemCode required.")
            return
        try:
            if self.current_mode == "new":
                member_billing.insert(rec)
            elif self.current_mode == "edit" and self.current_vno:
                member_billing.get(self.current_vno)  # exists-check
                member_billing.delete_membill(self.current_vno)
                member_billing.insert(rec)
            self._refresh()
            self._clear_form()
            self._fields_enabled(False)
            self.current_mode = None
            QMessageBox.information(self, "Success", "Bill saved.")
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e))

    def _on_add_family(self):"""),
    ("""        for b in (self.btn_new, self.btn_view, self.btn_refresh, self.btn_exit):
            btn_row.addWidget(b)""",
     """        self.btn_save = QPushButton("Save Bill")
        self.btn_save.setToolTip("Save the billing record to database")
        self.btn_save.clicked.connect(self._on_save)
        for b in (self.btn_new, self.btn_save, self.btn_view,
                  self.btn_refresh, self.btn_exit):
            btn_row.addWidget(b)"""),
    # keys rec me lowercase chahiye (core insert_family)
    ("""        rec = {"MemCode": memcode, "FamilyName": famname}""",
     """        rec = {"subcode": memcode, "name": famname}"""),
])

# ---------- facility_billing_ui: FacilityBill1-backed form ----------
missed += patch("HMS_py/ui/facility_billing_ui.py", [
    ("""        try:
            rec = facility_billing.get(int(vno))
            if rec:
                self.txt_facility.setText(str(rec.get("FacilityCode", "")))
                self.txt_member.setText(str(rec.get("MemberCode", "")))
                self.txt_date.setText(str(rec.get("BillDate", "")))
                self.txt_amount.setText(str(rec.get("Amount", "")))
                self.txt_remarks.setText(str(rec.get("Remarks", "")))
                self._selected_vno = int(vno)
        except Exception as e:
            QMessageBox.warning(self, "Error", str(e))""",
     """        try:
            rec = facility_billing.get_fbill1(vno)
            if rec:
                self.txt_facility.setText(str(rec.get("facilitycode", "")))
                self.txt_member.setText(str(rec.get("partycode", "")))
                self.txt_amount.setText(str(rec.get("amount", "")))
                self._selected_vno = int(vno)
        except Exception as e:
            QMessageBox.warning(self, "Error", str(e))"""),
    ("""        try:
            rows = facility_billing.list_all()
            self._fill(rows)
        except Exception as e:
            QMessageBox.warning(self, "Error", str(e))""",
     """        try:
            rows = facility_billing.list_all()
            self._fill(rows)
        except Exception as e:
            QMessageBox.warning(self, "Error", str(e))

    def _new_bill(self):
        rec = {
            "facilitycode": self.txt_facility.text(),
            "partycode": self.txt_member.text(),
            "amount": self.txt_amount.text() or 0,
            "unitrate": self.txt_amount.text() or 0,
        }
        try:
            facility_billing.insert(rec)
            self._refresh()
            self._clear_form()
        except Exception as e:
            QMessageBox.warning(self, "Error", str(e))"""),
])

# ---------- pos_na: reports aliases ----------
missed += patch("HMS_py/ui/pos_na.py", [
    ("rows = pos.kot_list()", "rows = pos.kot_list()"),
    ("rows = pos.sales_summary()", "rows = pos.sales_summary()"),
    ("rows = pos.itemwise_sale()", "rows = pos.itemwise_sale()"),
])

# ---------- shell: report text dump (PDF path safe) ----------
missed += patch("HMS_py/ui/shell.py", [
    ("""            from HMS_py.core import reports
            rows = reports.res_status(mode)
            pdf = reports.res_status_pdf(rows, mode)
            QMessageBox.information(
                w, f"Reservation Status ({mode})",
                f"{len(rows)} rows | PDF bana: {pdf}")""",
     """            from HMS_py.core import reports
            rows = reports.res_status(mode)
            try:
                pdf = reports.res_status_pdf(rows, mode)
            except Exception:
                pdf = "(PDF preview unavailable)"
            QMessageBox.information(
                w, f"Reservation Status ({mode})",
                f"{len(rows)} rows | PDF: {pdf}")"""),
])

# ---------- core fixes: fbill1 docid-col, ledgerm vno, packing detail docid ----------
missed += patch("HMS_py/core/facility_billing.py", [
    ('''    db.execute(
        "INSERT INTO FacilityBill1 (Docid,Vno,Sno,VType,Vdate,Vprefix,PartyCode,FacilityCode,Unit,UnitRate,Amount,ForPeriod,ToPeriod,AppDate,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code)"
        " VALUES (?,?,?,?,?,?,?,?,?,?,?,getdate(),'A',getdate(),?,?)",''',
     '''    db.execute(
        "INSERT INTO FacilityBill1 (Docid,Vno,Sno,VType,Vdate,Vprefix,PartyCode,FacilityCode,Unit,UnitRate,Amount,AppDate,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code)"
        " VALUES (?,?,?,?,?,?,?,?,?,?,?,getdate(),?,getdate(),?,?,?)",'''),
    ('''        (rec.get("docid",""), rec.get("vno",0), sno, rec.get("vtype",""),
         rec.get("vprefix","2026"), rec.get("partycode",""),
         rec.get("facilitycode",""), rec.get("unit",""), rec.get("unitrate",0.0),
         rec.get("amount",0.0), user, site, site),
        cn=cn, commit=commit)
    return {"docid": rec.get("docid",""), "sno": sno}''',
     '''        (rec.get("docid",""), rec.get("vno",0), sno, rec.get("vtype","FB"),
         rec.get("vprefix","2026"), rec.get("partycode",""),
         rec.get("facilitycode",""), rec.get("unit",""), rec.get("unitrate",0.0),
         rec.get("amount",0.0), user, site, site),
        cn=cn, commit=commit)
    return {"docid": rec.get("docid",""), "sno": sno}'''),
])

missed += patch("HMS_py/core/fa_ledger_ops.py", [
    ('''        (rec["docid"], rec.get("vtype", ""), rec.get("v_prefix", ""),
         rec.get("vno", 0), SITE_CODE,''',
     '''        (rec["docid"], rec.get("vtype", ""), rec.get("v_prefix", ""),
         rec.get("vno", 1) or 1, SITE_CODE,'''),
])

missed += patch("HMS_py/core/pos_packing.py", [
    ('''        "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?, "
        "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'N', ?)",''',
     '''        "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?, "
        "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'N', ?)",'''),
])

missed += patch("HMS_py/core/reservation.py", [
    ('''        det_docid = ("C" + str(row["DocId"]))[:21]''',
     '''        det_docid = ("C" + str(row["DocId"])[:14] +
                     str(bookno).rjust(6))[:21]'''),
])

print("UI+core patches applied; missed:", len(missed))
for m in missed:
    print("  MISS:", m)
