"""Inconsistency Check (VB6 FrmInc) — read-only data-audit port.

VB6 FrmInc.frm "Integrity" run (lines ~2946-3067) ne ye checks chalaye the:
  1. PayType set but PayCode empty
  2. SETTLEDATE set but BILL_NO empty (MODESET<>'S', vtype not ARRES/ADRES)
  3. FolioNoDocid + BILL_NO set but SETTLEDATE NULL (same exclusions)
  4. Per-folio Debit-Credit mismatch: SUM(AmtDr)-SUM(AmtCr) HAVING <>0
  5. PayCode NOT IN (SELECT Code FROM RevMast)
  6. Null/empty DocId rows in PayCharge & GuestFolio (VB6 inhe DELETE
     karta tha — python port read-only hai, sirf count report karta hai;
     destructive repair alag decision hai)

VB6 ke repair UPDATEs (AMTDR/AMTCR/COMMENTS null-fix, GuestProf backfill)
bhi mutate karte the — port audit-only rakha hai taaki form kisi bhi DB
par bina permission ke data na badle. Har check offending rows (ya count)
return karta hai; empty list = clean.

SQL VB6 queries ka param-bound transliteration hai (semantics same).
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()


def check_missing_paycode(cn=None) -> list[dict]:
    """PayCharge: PayType bhara hai par PayCode khaali."""
    rows = db.query(
        "SELECT DocId, SNo, PayType, FolioNoDocid FROM PayCharge "
        "WHERE PayType IS NOT NULL AND PayType <> '' AND "
        "(PayCode IS NULL OR PayCode = '')", (), cn=cn)
    return [{"docid": (r.DocId or "").strip(), "sno": int(r.SNo or 0),
             "paytype": (r.PayType or "").strip(),
             "folio": (r.FolioNoDocid or "").strip()} for r in rows]


def check_no_bill_no(cn=None) -> list[dict]:
    """PayCharge: settle date hai par bill number nahi (normal settle paths)."""
    rows = db.query(
        "SELECT DocId, FolioNoDocid, SettleDate FROM PayCharge "
        "WHERE SettleDate IS NOT NULL AND (Bill_No IS NULL OR Bill_No = '') "
        "AND ModeSet <> 'S' AND VType NOT IN ('ARRES', 'ADRES')", (), cn=cn)
    return [{"docid": (r.DocId or "").strip(),
             "folio": (r.FolioNoDocid or "").strip(),
             "settledate": str(r.SettleDate)} for r in rows]


def check_no_settle_date(cn=None) -> list[dict]:
    """PayCharge: bill number hai par settle date nahi (same exclusions)."""
    rows = db.query(
        "SELECT DocId, FolioNoDocid, Bill_No FROM PayCharge "
        "WHERE (FolioNoDocid IS NOT NULL AND FolioNoDocid <> '') AND "
        "SettleDate IS NULL AND (Bill_No IS NOT NULL AND Bill_No <> '') "
        "AND ModeSet <> 'S' AND VType NOT IN ('ARRES', 'ADRES')", (), cn=cn)
    return [{"docid": (r.DocId or "").strip(),
             "folio": (r.FolioNoDocid or "").strip(),
             "bill_no": (r.Bill_No or "").strip()} for r in rows]


def check_dr_cr_mismatch(cn=None) -> list[dict]:
    """PayCharge: jis folio ke Debit-Credit totals barabar nahi."""
    rows = db.query(
        "SELECT FolioNoDocId, SUM(AmtDr) AS AmtDr, SUM(AmtCr) AS AmtCr, "
        "SUM(AmtDr) - SUM(AmtCr) AS Diff, MAX(Bill_No) AS Bill_No "
        "FROM PayCharge GROUP BY FolioNoDocId "
        "HAVING ROUND(SUM(AmtDr) - SUM(AmtCr), 2) <> 0 "
        "ORDER BY FolioNoDocId", (), cn=cn)
    return [{"folio": (r.FolioNoDocId or "").strip(),
             "amt_dr": float(r.AmtDr or 0), "amt_cr": float(r.AmtCr or 0),
             "diff": round(float(r.Diff or 0), 2),
             "bill_no": (r.Bill_No or "").strip()} for r in rows]


def check_invalid_paycode(cn=None) -> list[dict]:
    """PayCharge: PayCode jo RevMast me exist nahi karta."""
    rows = db.query(
        "SELECT DocId, PayCode FROM PayCharge "
        "WHERE PayCode NOT IN (SELECT Code FROM RevMast)", (), cn=cn)
    return [{"docid": (r.DocId or "").strip(),
             "paycode": (r.PayCode or "").strip()} for r in rows]


def check_null_docid(cn=None) -> dict:
    """PayCharge & GuestFolio: null/empty DocId rows ki count (VB6 inhe
    delete karta tha; port sirf report karta hai)."""
    out = {}
    for label, table in (("paycharge", "PayCharge"), ("guestfolio", "GuestFolio")):
        rows = db.query(
            f"SELECT COUNT(*) AS N FROM {table} "
            "WHERE DocId IS NULL OR DocId = ''", (), cn=cn)
        out[label] = int(rows[0].N or 0) if rows else 0
    return out


CHECKS = (
    ("Missing PayCode (PayType set, PayCode empty)", check_missing_paycode),
    ("Bill No missing (SettleDate set, Bill_No empty)", check_no_bill_no),
    ("SettleDate missing (Bill_No set, SettleDate NULL)", check_no_settle_date),
    ("Debit-Credit mismatch per folio", check_dr_cr_mismatch),
    ("Invalid PayCode (not in RevMast)", check_invalid_paycode),
    ("Null/empty DocId counts (PayCharge/GuestFolio)", check_null_docid),
)


def run_all(cn=None) -> dict:
    """Saare 6 checks; return {title: rows-list (ya count-dict)}. UI grid
    isi dict ko render karta hai."""
    return {title: fn(cn=cn) for title, fn in CHECKS}
