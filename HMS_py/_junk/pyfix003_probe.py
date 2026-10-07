"""pyfix003_probe: locate missing columns cross-table + data probes for batch 2."""

import os, sys

sys.path.insert(0, os.path.dirname(os.getcwd()))
sys.path.insert(0, os.getcwd())
from HMS_py.core import db


def main():
    cols = [
        "Item",
        "Qty",
        "Amount",
        "ItemGroup",
        "LogSite_Code",
        "SiteCode",
        "Covers",
        "Discount",
        "Status",
        "Party",
        "Taxable",
        "ChkInDate",
        "RoomRevenue",
        "FNBRevenue",
        "OtherRevenue",
        "PlanCode",
        "TableNo",
        "Address",
        "Phone",
        "FunctionType",
        "HallName",
        "KOTNo",
        "ItemName",
        "Rate",
        "Remarks",
        "SysYN",
        "SundryName",
        "CurrBal",
        "ActiveYN",
    ]
    q = (
        "SELECT COLUMN_NAME, TABLE_NAME FROM INFORMATION_SCHEMA.COLUMNS "
        "WHERE COLUMN_NAME IN (%s) ORDER BY COLUMN_NAME, TABLE_NAME"
        % ",".join("'%s'" % c for c in cols)
    )
    from collections import defaultdict

    d = defaultdict(list)
    for c, t in db.query(q):
        d[str(c)].append(str(t))
    print("=== cross-table column presence ===")
    for c in cols:
        print("%s: %d -> %s" % (c, len(d[c]), ", ".join(d[c][:30])))

    print("\n=== data probes ===")

    def scalar(sql, *p):
        r = db.query(sql, *p)
        return list(r)

    # RoomStat values (ActiveYN substitute on RoomMast?)
    print(
        "RoomMast.RoomStat:",
        [
            (r[0], r[1])
            for r in scalar("SELECT RoomStat, COUNT(*) FROM RoomMast GROUP BY RoomStat")
        ],
    )
    print("RoomMast rows:", scalar("SELECT COUNT(*) FROM RoomMast")[0][0])
    # RevMast.Sundry values
    print(
        "RevMast.Sundry:",
        [
            (r[0], r[1])
            for r in scalar(
                "SELECT TOP 10 Sundry, COUNT(*) FROM RevMast GROUP BY Sundry"
            )
        ],
    )
    print(
        "SundryMast cols:",
        [
            str(r[0])
            for r in scalar(
                "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='SundryMast'"
            )
        ],
    )
    print(
        "RevMast.Active:",
        [
            (r[0], r[1])
            for r in scalar("SELECT Active, COUNT(*) FROM RevMast GROUP BY Active")
        ],
    )
    # Company / UserMast site columns
    print(
        "Company cols:",
        [
            str(r[0])
            for r in scalar(
                "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='Company'"
            )
        ],
    )
    print(
        "UserMast cols:",
        [
            str(r[0])
            for r in scalar(
                "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='UserMast'"
            )
        ],
    )
    # FeatureMast / RoomFeature SysYN
    print(
        "FeatureMast cols:",
        [
            str(r[0])
            for r in scalar(
                "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='FeatureMast'"
            )
        ],
    )
    # GuestFolio Vdate vs RoomOcc ChkInDate alignment
    print(
        "GF vs RO ChkInDate equal%:",
        scalar(
            "SELECT COUNT(*), SUM(CASE WHEN CONVERT(date,g.Vdate)=CONVERT(date,o.ChkInDate) THEN 1 ELSE 0 END) "
            "FROM GuestFolio g JOIN RoomOcc o ON o.FolioNo=g.FolioNo"
        )[0],
    )
    print(
        "GF Vdate vs DepDate sample:",
        [
            tuple(r)
            for r in scalar("SELECT TOP 5 Vdate, DepDate, NoDays FROM GuestFolio")
        ],
    )
    # HallSale1 / FunctionType
    print(
        "HallSale1 cols:",
        [
            str(r[0])
            for r in scalar(
                "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='HallSale1'"
            )
        ],
    )
    print(
        "FunctionType cols:",
        [
            str(r[0])
            for r in scalar(
                "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='FunctionType'"
            )
        ],
    )
    # KOT VNo sample + TableNo candidates
    print(
        "KOT VNo sample:",
        [tuple(r) for r in scalar("SELECT TOP 3 VNo, TokenNo, RestCode FROM KOT")],
    )
    # FOMBillDetails cols (SettleRepHall Party)
    print(
        "FOMBillDetails cols:",
        [
            str(r[0])
            for r in scalar(
                "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='FOMBillDetails'"
            )
        ],
    )
    # RoomOcc remarks candidates
    print(
        "RoomOccDet cols:",
        [
            str(r[0])
            for r in scalar(
                "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='RoomOccDet'"
            )
        ],
    )
    # tax structure tables
    print(
        "TaxStru cols:",
        [
            str(r[0])
            for r in scalar(
                "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='TaxStru'"
            )
        ],
    )
    print(
        "TaxStruLines cols:",
        [
            str(r[0])
            for r in scalar(
                "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='TaxStruLines'"
            )
        ],
    )
    print(
        "TaxMast cols:",
        [
            str(r[0])
            for r in scalar(
                "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='TaxMast'"
            )
        ],
    )
    # FAEnviro (Tagada)
    print(
        "FaEnviro cols:",
        [
            str(r[0])
            for r in scalar(
                "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='FaEnviro'"
            )
        ],
    )


if __name__ == "__main__":
    main()
