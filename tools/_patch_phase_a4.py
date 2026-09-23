"""Phase A part-4: remaining audit gaps (facility/guest_services/depart). One-shot."""
import io

ROOT = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py"


def patch(path, pairs):
    p = ROOT + "\\" + path.replace("/", "\\")
    with io.open(p, "r", encoding="utf-8", errors="replace") as fh:
        txt = fh.read()
    miss = []
    for old, new in pairs:
        if old not in txt:
            miss.append(path + " :: " + old[:60])
            continue
        txt = txt.replace(old, new, 1)
    with io.open(p, "w", encoding="utf-8", newline="") as fh:
        fh.write(txt)
    return miss


missed = []

# ---------- core/facility_billing: get_fbill1 + header+line insert + aliases ----------
with io.open(ROOT + r"\HMS_py\core\facility_billing.py", "r",
             encoding="utf-8", errors="replace") as fh:
    fb = fh.read()
fb += '''


# ============================================================
# Phase A (api-mismatch audit): UI facility_billing_ui list_all/
# get/insert call karta tha. FacilityBill header me Amount column
# nahi hai (schema-verified) — bill = header (FacilityBill) + line
# (FacilityBill1). insert() dono ek transaction me banata hai.
# ============================================================
def get_fbill1(docid, cn=None):
    rows = db.query("SELECT * FROM FacilityBill1 WHERE Docid = ? ORDER BY Sno",
                    (docid,), cn=cn)
    return _map_fbill1(rows[0]) if rows else None


def insert_bill_with_line(rec, cn=None, commit: bool = True) -> dict:
    own = cn is None
    cn = cn or db.connect()
    try:
        hdr = insert_fbill({"partycode": rec.get("partycode", ""),
                            "remark": rec.get("remark", "")},
                           cn=cn, commit=False)
        line = insert_fbill1({"docid": hdr["docid"], "vno": hdr["vno"],
                              "partycode": rec.get("partycode", ""),
                              "facilitycode": rec.get("facilitycode", ""),
                              "unitrate": rec.get("unitrate", 0) or 0,
                              "amount": rec.get("amount", 0) or 0},
                             cn=cn, commit=False)
        if commit:
            cn.commit()
        return {**hdr, "line": line}
    finally:
        if own:
            cn.close()


list_all = list_fbill1
get = get_fbill1
insert = insert_bill_with_line
'''
with io.open(ROOT + r"\HMS_py\core\facility_billing.py", "w",
             encoding="utf-8", newline="") as fh:
    fh.write(fb)

# ---------- core/guest_services + depart aliases ----------
with io.open(ROOT + r"\HMS_py\core\guest_services.py", "a",
             encoding="utf-8", newline="") as fh:
    fh.write('''


# Phase A: UI singular/plural dono naam use karta tha — aliases.
insert_comment = insert_comments
delete_comment = delete_comments
list_complaints = list_complaint
''')
with io.open(ROOT + r"\HMS_py\core\depart.py", "a",
             encoding="utf-8", newline="") as fh:
    fh.write('''


# Phase A: UI inventory.py depart_list() call karta tha.
depart_list = list_all
''')

# ---------- facility_billing_ui: duplicate _new_bill remove + dict _fill + keys ----------
missed += patch("HMS_py/ui/facility_billing_ui.py", [
    # injected duplicate (dead code) hatao — original neeche wala patched jaayega
    ("""    def _new_bill(self):
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
            QMessageBox.warning(self, "Error", str(e))

    def _new_bill(self):
        rec = {
            "FacilityCode": self.txt_facility.text(),
            "MemberCode": self.txt_member.text(),
            "BillDate": self.txt_date.text(),
            "Amount": self.txt_amount.text(),
            "Remarks": self.txt_remarks.text(),
        }
        try:
            facility_billing.insert(rec)
            self._refresh()
            self._clear_form()
        except Exception as e:
            QMessageBox.warning(self, "Error", str(e))""",
     """    def _new_bill(self):
        if not self.txt_facility.text().strip():
            QMessageBox.warning(self, "Validation", "FacilityCode required.")
            return
        rec = {
            "facilitycode": self.txt_facility.text(),
            "partycode": self.txt_member.text(),
            "amount": self.txt_amount.text() or 0,
            "unitrate": self.txt_amount.text() or 0,
            "remark": self.txt_remarks.text(),
        }
        try:
            facility_billing.insert(rec)
            self._refresh()
            self._clear_form()
            QMessageBox.information(self, "Success", "Bill saved.")
        except Exception as e:
            QMessageBox.warning(self, "Error", str(e))"""),
    # dict-rows render (pehle dict.keys() iterate ho raha tha)
    ("""    def _fill(self, rows):
        self.table.setRowCount(0)
        for row_data in rows:
            idx = self.table.rowCount()
            self.table.insertRow(idx)
            for c, val in enumerate(row_data):
                item = QTableWidgetItem(str(val) if val is not None else "")
                item.setForeground(QColor(_theme.palette()["text"]))
                self.table.setItem(idx, c, item)""",
     """    def _fill(self, rows):
        self.table.setRowCount(0)
        for row_data in rows or []:
            vals = ([row_data.get("vno", ""), row_data.get("facilitycode", ""),
                     row_data.get("partycode", ""),
                     str(row_data.get("vdate") or ""),
                     row_data.get("amount", 0), row_data.get("u_ae", "")]
                    if isinstance(row_data, dict) else list(row_data))
            idx = self.table.rowCount()
            self.table.insertRow(idx)
            for c, val in enumerate(vals):
                item = QTableWidgetItem(str(val) if val is not None else "")
                item.setForeground(QColor(_theme.palette()["text"]))
                self.table.setItem(idx, c, item)"""),
])

print("part-4 done; missed:", len(missed))
for m in missed:
    print("  MISS:", m)
