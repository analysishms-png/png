# ==========================================================
# Report : ChkInRegister (Check-In Register)  -- DIRECT SQL RUN VERSION
# Module : rFomRepView  ->  Sub ChkInRegister(formName, FRow, Fcol)
# Source : C:\FODER\HMS.bas  (Sub at ~line 672611, byte offset 1781900)
#
# Ye Check-In Register report ka data bananewale SQL queries hain.
# Ye report check-in hue guests ki list dikhata hai: folio no, guest name,
# address, mobile, room no, pax, check-in date/time, arrival-from,
# destination, purpose, room rate, nationality, business source, tariff.
#
# MODIFIED FOR DIRECT RUN: sabhi params concrete values se badal diye hain.
# Run karo -> records dikhenge.
#
# </FromDate>/<ToDate> ki jagah abhi example '2024-01-01'..'2024-01-31' hai.
# Per-folio queries (Q2,Q3) khud real folio subquery se lete hain.
#
# Tables: GuestFolio, RoomOcc, GuestProf, Country, BussSource, PlanMast, SubGroup.
# (visahl.sql dump me inme se koi bhi NAAHi hai - schema unknown.)
# ==========================================================


-- ==========================================================
-- QUERY 1 : MAIN CHECK-IN REGISTER DATASET
-- Ise RUN karo -> poora check-in register dikhega.
-- ==========================================================
SELECT
    GuestFolio.Docid AS FolionoDocid,
    Foliono =
        CASE
            WHEN GuestFolio.mFoliono = 0 THEN GuestFolio.FolioNo
            ELSE GuestFolio.mFoliono
        END,
    GuestProf.Name,
    GuestProf.Add1,
    GuestProf.Add2,
    GuestProf.MobileNo,
    RoomOcc.RoomNo,
    RoomOcc.Adult + RoomOcc.Children AS Pax,
    RoomOcc.ChkinDate,
    RoomOcc.ChkinTime,
    GuestFolio.U_Name,
    GuestFolio.ArrFrom,
    GuestFolio.Destination,
    GuestFolio.PurVisit,
    GuestFolio.Remark,
    RoomOcc.RoomRate,
    RoomOcc.RRTaxInc,
    Country.Name AS Nationality,
    ISNULL(BussSource.Name,'') AS BussSource,
    PM.Tariff
FROM GuestFolio
    INNER JOIN RoomOcc ON RoomOcc.Docid = GuestFolio.Docid
    INNER JOIN GuestProf ON GuestProf.Code = GuestFolio.GuestProf
    LEFT JOIN Country ON GuestProf.Nationality = Country.Code
    LEFT JOIN BussSource ON GuestFolio.BussSource = BussSource.Code
    LEFT JOIN PlanMast PM ON RoomOcc.PlanCode = PM.Code
WHERE vdate BETWEEN '2024-01-01' AND '2024-01-31'
  AND RoomOcc.Sno = 1
ORDER BY GuestFolio.vprefix, GuestFolio.FolioNo


-- ==========================================================
-- QUERY 2 : OCCUPIED ROOM CHECK-OUT DETAILS (per folio)
-- Jab koi bill/night already checkout ho uski date/time detail.
-- (RoomOcc where Chkoutdate not null, Type='O')
-- ==========================================================
SELECT *
FROM RoomOcc
WHERE Chkoutdate IS NOT NULL
  AND Type = 'O'
  AND Docid = (
        SELECT TOP 1 Docid
        FROM GuestFolio
        WHERE vdate BETWEEN '2024-01-01' AND '2024-01-31'
          AND Docid IS NOT NULL
          AND Docid <> ''
  )


-- ==========================================================
-- QUERY 3 : COMPANY + TRAVEL AGENT + GSTIN (per folio)
-- Guestfolio G ke Company (SubGroup) aur TravelAgent (sg) se
-- company name + GSTIN nikalti hai.
-- ==========================================================
SELECT
    ISNULL(MAX(SubGroup.Name),'') + '/' + ISNULL(MAX(sg.Name),'') AS mCompany,
    ISNULL(MAX(SubGroup.GSTIN),'') AS GSTIN
FROM guestfolio G
    LEFT JOIN SubGroup ON G.Company = SubGroup.Subcode
    LEFT JOIN SubGroup sg ON G.TravelAgent = sg.Subcode
WHERE G.Docid = (
        SELECT TOP 1 Docid
        FROM GuestFolio
        WHERE vdate BETWEEN '2024-01-01' AND '2024-01-31'
          AND Docid IS NOT NULL
          AND Docid <> ''
  )


# ==========================================================
# SCHEMA NOTES
# ==========================================================
# GuestFolio, RoomOcc, GuestProf, Country, BussSource, PlanMast, SubGroup
# -> visahl.sql dump me NAAHI hain (schema unknown).
# Known columns used (from code): GuestFolio.Docid/mFoliono/FolioNo/
#   U_Name/ArrFrom/Destination/PurVisit/Remark/BussSource/Company/
#   TravelAgent/vprefix/vdate; RoomOcc.Docid/Sno/Type/RoomNo/Adult/Children/
#   ChkinDate/ChkinTime/ChkoutDate/ChkoutTime/RoomRate/RRTaxInc/PlanCode;
#   GuestProf.Code/Name/Add1/Add2/MobileNo/Nationality; Country.Code/Name;
#   BussSource.Code/Name; PlanMast.Code/Tariff; SubGroup.Subcode/Name/GSTIN.
