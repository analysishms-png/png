import db


def q(sql, p=None):
    try:
        return db.query(sql, p)
    except Exception as e:
        return [("ERR", str(e)[:200])]


def show(title, sql, p=None):
    print(f"--- {title} ---")
    for r in q(sql, p)[:25]:
        print(list(r) if not isinstance(r, tuple) else r)
    print()


# 1) Covers candidates
show(
    "Sale1 ExpAtt/GuarAtt",
    "SELECT TOP 12 ExpAtt, GuarAtt, CoverRate, TotalPerCover, RoomNo, RestCode FROM Sale1 ORDER BY Vdate DESC",
)
show(
    "Sale1 ExpAtt nonzero count",
    "SELECT COUNT(*), SUM(CASE WHEN ISNULL(ExpAtt,0)<>0 THEN 1 ELSE 0 END), SUM(CASE WHEN ISNULL(GuarAtt,0)<>0 THEN 1 ELSE 0 END) FROM Sale1",
)
# 2) Sale1.RoomNo as table? (POS bills)
show(
    "Sale1 RoomNo distinct (POS)",
    "SELECT DISTINCT RoomNo, RoomCat, RoomType FROM Sale1 WHERE ISNULL(RoomNo,'')<>''",
)
show("Sale1 RoomCat distinct", "SELECT DISTINCT RoomCat FROM Sale1")
# 3) hall mapping
show("HallSale1 RestCode distinct", "SELECT DISTINCT RestCode FROM HallSale1")
show("VenueMast codes", "SELECT Code, Name FROM VenueMast")
show("FunctionType codes", "SELECT TOP 10 Code, Name, Status FROM FunctionType")
show(
    "HallSale1 sample",
    "SELECT TOP 8 Vdate, RestCode, Party, NoOfPax, Amount, BookDocId, Narration FROM HallSale1",
)
# 4) HallStock sample
show(
    "HallStock sample",
    "SELECT TOP 8 Vdate, Party, RestCode, Item, QtyIss, Amount FROM HallStock",
)
# 5) CompanyProfile fields
show(
    "CompanyProfile FieldName distinct",
    "SELECT DISTINCT FieldName, Hotel FROM CompanyProfile",
)
show("Company sample", "SELECT TOP 1 * FROM Company")
# 6) FunctionWiseItemDetail sql source? check HallSale1 has Item? no. HallStock join key to hall name
# 7) revenue source: SunTran / RoomCharge candidates
show(
    "tables like revenue/charge/tran",
    "SELECT name FROM sys.tables WHERE name LIKE '%Charge%' OR name LIKE '%SunTran%' OR name LIKE '%Revenue%' OR name LIKE '%Fol%' ORDER BY name",
)
# 8) Sale2 sample (BaseValue?)
show("Sale2 cols", "SELECT TOP 1 * FROM Sale2")
