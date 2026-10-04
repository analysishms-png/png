import sys

sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from HMS_py.core import db  # noqa: E402

r = db.query("SELECT TOP 5 RODisc, Remark, Remarks FROM GuestFolio "
             "WHERE RODisc IS NOT NULL OR Remark IS NOT NULL "
             "ORDER BY U_EntDt DESC")
print("RODisc/Remark samples:", r)
r2 = db.query("SELECT DISTINCT RODisc FROM GuestFolio WHERE RODisc IS NOT NULL")
print("RODisc distinct:", [x[0] for x in r2][:10])
r3 = db.query("SELECT TOP 3 RoomCat, RoomRate, DepTime FROM RoomOcc "
              "WHERE RoomCat IS NOT NULL AND LTRIM(RTRIM(RoomCat)) <> '' "
              "ORDER BY U_EntDt DESC")
print("RoomOcc samples:", r3)
