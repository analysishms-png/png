"""pyfix003_probe2: column dumps of candidate tables + data semantics probes (batch 2)."""

import os, sys

sys.path.insert(0, os.path.dirname(os.getcwd()))
sys.path.insert(0, os.getcwd())
from HMS_py.core import db


def cols(t):
    return [
        str(r[0])
        for r in db.query(
            "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME=? ORDER BY ORDINAL_POSITION",
            t,
        )
    ]


def show(label, t):
    print("%s cols: %s" % (label, cols(t)))


def main():
    for t in [
        "BillDet",
        "BillSummary",
        "TOKEN",
        "SplitBillDetail",
        "HallStock",
        "GuestStat",
        "SaleMIS",
        "GuestProf",
        "HallBook",
        "VenueMast",
        "RoomMast1",
        "CompanyProfile",
        "Attend",
        "SubGroupCurrBal",
        "AcGroupCurrBal",
    ]:
        try:
            show(t, t)
        except Exception as e:
            print("%s: ERR %s" % (t, e))

    def q(sql, *p):
        try:
            return [tuple(r) for r in db.query(sql, *p)]
        except Exception as e:
            return ["ERR: %s" % e]

    print("\n--- CoverRate/TotalPerCover sample (Sale1) ---")
    print(q("SELECT TOP 8 CoverRate, TotalPerCover, NetAmt FROM Sale1"))
    print(
        "nulls:",
        q(
            "SELECT SUM(CASE WHEN CoverRate IS NULL THEN 1 ELSE 0 END), SUM(CASE WHEN TotalPerCover IS NULL THEN 1 ELSE 0 END), COUNT(*) FROM Sale1"
        ),
    )

    print("--- Sale1 settle flags ---")
    print("cols:", cols("Sale1"))
    print("DelFlag:", q("SELECT DelFlag, COUNT(*) FROM Sale1 GROUP BY DelFlag"))
    print(
        "RecDate null:",
        q(
            "SELECT SUM(CASE WHEN RecDate IS NULL THEN 1 ELSE 0 END), COUNT(*) FROM Sale1"
        ),
    )
    print("CashRecd:", q("SELECT CashRecd, COUNT(*) FROM Sale1 GROUP BY CashRecd"))

    print("--- RoomOcc.Reason sample ---")
    print(q("SELECT TOP 8 RoomNo, Type, Reason FROM RoomOcc"))

    print("--- RoomOcc Type / ChkOutDate null (HouseKeeping status) ---")
    print(q("SELECT Type, COUNT(*) FROM RoomOcc GROUP BY Type"))

    print("--- GF <-> RoomOcc join keys ---")
    print(
        "by DocId:",
        q(
            "SELECT COUNT(*), SUM(CASE WHEN CONVERT(date,g.Vdate)=CONVERT(date,o.ChkInDate) THEN 1 ELSE 0 END) FROM GuestFolio g JOIN RoomOcc o ON o.DocId=g.DocId"
        ),
    )
    print("gf per docid:", q("SELECT COUNT(*), COUNT(DISTINCT DocId) FROM GuestFolio"))
    print("ro per docid:", q("SELECT COUNT(*), COUNT(DISTINCT DocId) FROM RoomOcc"))

    print("--- FeatureMast vs RoomFeature ---")
    print(
        "FeatureMast Status:",
        q("SELECT Status, COUNT(*) FROM FeatureMast GROUP BY Status"),
    )
    print("RoomFeature all:", q("SELECT Code, Name FROM RoomFeature"))
    print("FeatureMast sample:", q("SELECT TOP 8 Code, Name, Status FROM FeatureMast"))

    print("--- RoomMast RoomStat x RoomCat ---")
    print(
        q("SELECT RoomStat, RoomCat, COUNT(*) FROM RoomMast GROUP BY RoomStat, RoomCat")
    )

    print(
        "--- Sale1 item-line sanity: does Sale1 have Qty/Item? (no) ; KOT table cols ---"
    )
    print("KOT cols:", cols("KOT"))

    print("--- Enviro value row count / shape ---")
    print(q("SELECT COUNT(*) FROM Enviro"))


if __name__ == "__main__":
    main()
