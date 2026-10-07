# ==========================================================
# Module: RrLookUpGuest
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: GuestProf
-- Uses table: RoomCat
-- --------------------------------------------
SELECT Booking.DocId AS CODE, Booking.BookNo AS ResNo, GuestProf.Name, Booking.DocId AS ID, RoomCat.Name AS RoomType, Booking.RoomNo, Booking.ArrDate AS Arr_Date, Booking.NoDays AS tot_Days FROM (ViewBooking Booking
    LEFT JOIN RoomCat ON Booking.RoomCat = RoomCat.Code)
    LEFT JOIN GuestProf ON Booking.GuestProf = GuestProf.Code
    Order By GuestProf.Name,Booking.ArrDate;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [GuestProf]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomCat]  NOT present in visahl.sql dump (schema unknown)
