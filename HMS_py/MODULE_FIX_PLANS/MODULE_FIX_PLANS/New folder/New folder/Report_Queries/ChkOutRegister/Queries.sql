# ==========================================================
# Report : ChkOutRegister (Check-Out Register)  -- DIRECT SQL RUN VERSION
# Module : rFomRepView  ->  Sub ChkOutRegister(formName, FRow, Fcol)
# Source : C:\FODER\HMS.bas  (Sub starts at ~line 669743, byte offset 1A62C70)
#
# Ye Check-Out Register report ka data bananewale SQL queries hain.
# Ye report settled bills (check-out) ki list dikhata hai: bill no,
# guest name, room, check-in/out date-time, bill amount, payment mode,
# room settlement, advance, net amount waghera.
#
# MODIFIED FOR DIRECT RUN:
#   - Sabhi <Param> placeholders hata diye hain (concrete values dal di hain).
#   - Aap seedha apne SQL tool (SSMS / SQL query) me copy-paste karke
#     RUN kar sakte ho aur records dekh sakte ho.
#
# JO VALUES AAPKO APNE DATA KE HISAB SE BADALNI PADENGI:
#   <FromDate>/<ToDate>  -> date range (abhi example '2024-01-01'..'2024-01-31')
#   SiteCode 'RRROFF'    -> aapke LogSite_Code se bana code (2 chars + 'ROFF')
#   <PayType>            -> e.g. 'CASH' / 'CREDIT' (query 2b)
# Per-folio queries (Q3-Q10) khud ek real folio subquery se lete hain
# taaki wo bhi bina kuch badle chal jayen.
#
# Tables: RevMast, BillDet, GuestProf, RoomOcc, PayCharge.
# (visahl.sql dump me sirf PayCharge available hai - schema neeche diya hai.)
# ==========================================================


-- ==========================================================
-- QUERY 1 : REVENUE HEADS (RevMast)
-- Check-out period me jinke payments hain wo revenue heads
-- (payment-type masters) + ROFF head list karta hai.
-- ==========================================================
SELECT *
FROM RevMast
WHERE (
        code IN (
            SELECT DISTINCT Paycode
            FROM paycharge
            WHERE settledate BETWEEN '2024-01-01' AND '2024-01-31'
              AND foliono <> 0
        )
        AND (
             (FlagType = 'FOM' AND FlagAMR <> 'Header')
             OR (FieldType = 'T')
        )
      )
   OR cODE = 'RRROFF'
ORDER BY SEQNO


-- ==========================================================
-- QUERY 2 : MAIN CHECK-OUT REGISTER DATASET  (UNION ALL)
-- Ise RUN karo -> poora check-out register dikhega.
--
-- Ye do hisson ka UNION hai:
--   (a) jo bills ka PayCharge Modeset='S' & PayCode<>'RRROFF' ho
--   (b) PURE bills jinme (a) koi bill na mila ho (payment row nahi)
-- Result: bill no, guest, room, in/out date-time, bill amount,
--         payment type + amount, chkOut user.
-- ==========================================================
SELECT DISTINCT
    BillDet.FolioNoDocid,
    MAX(BillDet.BillSettleDate)          AS BillSettleDate,
    MAX(BillDet.Bill_no)                 AS Bill_No,
    CAST(MAX(BillDet.Bill_no) AS Numeric) OBill_No,
    MAX(BillDet.ChkOutRoom)              AS ChkOutRoom,
    MAX(GuestProf.Name)                  AS Name,
    MAX(BillDet.Nights)                  AS Nights,
    SUM(BillDet.Bill_Amt)                AS Bill_Amt,
    MAX(BillDet.ChkOutDate)              AS ChkOutDate,
    MAX(BillDet.ChkOutTime)              AS ChkOutTime,
    BillDet.FolionoDocid,
    MAX(RoomOcc.ChkinDate)               AS ChkinDate,
    MAX(RoomOcc.ChkinTime)               AS ChkinTime,
    PayCharge.PayType,
    SUM(PayCharge.Amtcr)                 AS AmtCr
FROM (
        (BillDet INNER JOIN GuestProf ON BillDet.GuestProf = GuestProf.Code)
        INNER JOIN RoomOcc ON RoomOcc.Docid = BillDet.FolionoDocid
     )
    INNER JOIN PayCharge ON PayCharge.FolionoDocid = BillDet.FolionoDocid
WHERE BillSettleDate BETWEEN '2024-01-01' AND '2024-01-31'
  AND RoomOcc.Sno = 1
  AND PayCharge.Modeset = 'S'
  AND PayCharge.PayCode <> 'RRROFF'
GROUP BY BillDet.FolioNoDocid, PayCharge.PayType

UNION ALL

SELECT DISTINCT
    BillDet.FolioNoDocid,
    MAX(BillDet.BillSettleDate)          AS BillSettleDate,
    MAX(BillDet.Bill_no)                 AS Bill_No,
    CAST(MAX(BillDet.Bill_no) AS Numeric) OBill_No,
    MAX(BillDet.ChkOutRoom)              AS ChkOutRoom,
    MAX(GuestProf.Name)                  AS Name,
    MAX(BillDet.Nights)                  AS Nights,
    SUM(BillDet.Bill_Amt)                AS Bill_Amt,
    MAX(BillDet.ChkOutDate)              AS ChkOutDate,
    MAX(BillDet.ChkOutTime)              AS ChkOutTime,
    BillDet.FolionoDocid,
    MAX(RoomOcc.ChkinDate)               AS ChkinDate,
    MAX(RoomOcc.ChkinTime)               AS ChkinTime,
    '' AS PayType,
    0  AS AmtCr
FROM (
        (BillDet INNER JOIN GuestProf ON BillDet.GuestProf = GuestProf.Code)
        INNER JOIN RoomOcc ON RoomOcc.Docid = BillDet.FolionoDocid
     )
    INNER JOIN PayCharge ON PayCharge.FolionoDocid = BillDet.FolionoDocid
WHERE BillSettleDate BETWEEN '2024-01-01' AND '2024-01-31'
  AND RoomOcc.Sno = 1
  AND BillDet.FolionoDocid NOT IN (
        SELECT ISNULL(FolionoDocid,'')
        FROM PayCharge
        WHERE Modeset = 'S'
          AND PayCharge.PayCode <> 'RRROFF'
  )
GROUP BY BillDet.FolioNoDocid, PayCharge.PayType

ORDER BY OBill_No, MAX(BillDet.ChkOutDate), MAX(BillDet.ChkOutTime)


-- ==========================================================
-- QUERY 2b : MAIN CHECK-OUT REGISTER DATASET  (PayType-FILTERED)
-- Sirf ek specific PayType wale bills dekhne ho to ye chalao.
-- <PayType> apne data ke hisab se badlo (e.g. 'CASH','CREDIT').
-- ==========================================================
SELECT DISTINCT
    BillDet.FolioNoDocid,
    MAX(BillDet.BillSettleDate)          AS BillSettleDate,
    MAX(BillDet.Bill_no)                 AS Bill_No,
    CAST(MAX(BillDet.Bill_no) AS Numeric) OBill_No,
    MAX(BillDet.ChkOutRoom)              AS ChkOutRoom,
    MAX(GuestProf.Name)                  AS Name,
    MAX(BillDet.Nights)                  AS Nights,
    SUM(BillDet.Bill_Amt)                AS Bill_Amt,
    MAX(BillDet.ChkOutDate)              AS ChkOutDate,
    MAX(BillDet.ChkOutTime)              AS ChkOutTime,
    BillDet.FolionoDocid,
    MAX(RoomOcc.ChkinDate)               AS ChkinDate,
    MAX(RoomOcc.ChkinTime)               AS ChkinTime,
    PayCharge.PayType,
    SUM(PayCharge.Amtcr)                 AS AmtCr
FROM (
        (BillDet INNER JOIN GuestProf ON BillDet.GuestProf = GuestProf.Code)
        INNER JOIN RoomOcc ON RoomOcc.Docid = BillDet.FolionoDocid
     )
    INNER JOIN PayCharge ON PayCharge.FolionoDocid = BillDet.FolionoDocid
WHERE BillSettleDate BETWEEN '2024-01-01' AND '2024-01-31'
  AND RoomOcc.Sno = 1
  AND PayCharge.Modeset = 'S'
  AND PayCharge.Paytype = 'CASH'
GROUP BY BillDet.FolioNoDocid, PayCharge.PayType
ORDER BY MAX(BillDet.Bill_no), MAX(BillDet.ChkOutDate), MAX(BillDet.ChkOutTime)


-- ==========================================================
-- QUERY 3 : DISTINCT BILL NUMBERS (per folio)
-- Khud ek real folio le leta hai -> direct run karo.
-- ==========================================================
SELECT DISTINCT Bill_No
FROM Paycharge
WHERE Bill_No IS NOT NULL
  AND Bill_No <> ''
  AND FolioNoDocid = (
        SELECT TOP 1 FolioNoDocid
        FROM Paycharge
        WHERE settledate BETWEEN '2024-01-01' AND '2024-01-31'
          AND FolioNoDocid IS NOT NULL
          AND FolioNoDocid <> ''
  )


-- ==========================================================
-- QUERY 4 : OCCUPANCY (Pax) per folio
-- ==========================================================
SELECT Adult + Children AS Pax
FROM Roomocc
WHERE docid = (
        SELECT TOP 1 FolioNoDocid
        FROM Paycharge
        WHERE settledate BETWEEN '2024-01-01' AND '2024-01-31'
          AND FolioNoDocid IS NOT NULL
          AND FolioNoDocid <> ''
  )
  AND type = 'O'


-- ==========================================================
-- QUERY 5 : PAYMENT SUM BY REVENUE HEAD (per folio, per PayCode)
-- ==========================================================
SELECT TOP 100 SUM(AmtDr - AmtCr) AS Amount
FROM Paycharge
WHERE FolioNoDocid = (
        SELECT TOP 1 FolioNoDocid
        FROM Paycharge
        WHERE settledate BETWEEN '2024-01-01' AND '2024-01-31'
          AND FolioNoDocid IS NOT NULL
          AND FolioNoDocid <> ''
  )
  AND PayCode = (
        SELECT TOP 1 Paycode
        FROM paycharge
        WHERE settledate BETWEEN '2024-01-01' AND '2024-01-31'
          AND PayCode IS NOT NULL
          AND PayCode <> ''
  )


-- ==========================================================
-- QUERY 6 : ROOM SETTLEMENT  (REC / Chk settled, Room type)
-- ==========================================================
SELECT SUM(AMTDR - AmtCr) AS RoomSettlement
FROM Paycharge
WHERE vtype IN ('REC','Chk')
  AND Modeset <> 'S'
  AND settledate BETWEEN '2024-01-01' AND '2024-01-31'
  AND folionodocid = (
        SELECT TOP 1 FolioNoDocid
        FROM Paycharge
        WHERE settledate BETWEEN '2024-01-01' AND '2024-01-31'
          AND FolioNoDocid IS NOT NULL
          AND FolioNoDocid <> ''
  )
  AND (PayType = 'Room')


-- ==========================================================
-- QUERY 7 : ADVANCE  (REC / Chk credit, non-Room paytypes)
-- ==========================================================
SELECT SUM(AMTCR - AMTDR) AS Advance
FROM Paycharge
WHERE vtype IN ('REC','Chk')
  AND Modeset <> 'S'
  AND settledate BETWEEN '2024-01-01' AND '2024-01-31'
  AND folionodocid = (
        SELECT TOP 1 FolioNoDocid
        FROM Paycharge
        WHERE settledate BETWEEN '2024-01-01' AND '2024-01-31'
          AND FolioNoDocid IS NOT NULL
          AND FolioNoDocid <> ''
  )
  AND (Paytype IS NOT NULL AND paytype <> '' AND PayType <> 'Room')


-- ==========================================================
-- QUERY 8 : BILL AMOUNT (per folio)
-- ==========================================================
SELECT SUM(BillDet.Bill_Amt) AS Bill_Amt
FROM BillDet
WHERE FolionoDocid = (
        SELECT TOP 1 FolioNoDocid
        FROM Paycharge
        WHERE settledate BETWEEN '2024-01-01' AND '2024-01-31'
          AND FolioNoDocid IS NOT NULL
          AND FolioNoDocid <> ''
  )


-- ==========================================================
-- QUERY 9 : CHECKOUT USER (per folio)
-- ==========================================================
SELECT chkoutuser
FROM Roomocc
WHERE docid = (
        SELECT TOP 1 FolioNoDocid
        FROM Paycharge
        WHERE settledate BETWEEN '2024-01-01' AND '2024-01-31'
          AND FolioNoDocid IS NOT NULL
          AND FolioNoDocid <> ''
  )
  AND type = 'O'


-- ==========================================================
-- QUERY 10 : EXTRA / DUE ROOM OCCUPANCIES (multi-room, per folio)
-- Jab folio ke paas ek se zyada occupied rooms hon (Roomocc.Type='O').
-- ==========================================================
SELECT
    RoomOcc.Roomno,
    (RoomOcc.Adult + RoomOcc.Children) AS Pax
FROM guestFolio
    INNER JOIN roomocc ON Guestfolio.docid = roomocc.docid
WHERE Roomocc.Type = 'O'
  AND mFolioNoDocid = (
        SELECT TOP 1 FolioNoDocid
        FROM Paycharge
        WHERE settledate BETWEEN '2024-01-01' AND '2024-01-31'
          AND FolioNoDocid IS NOT NULL
          AND FolioNoDocid <> ''
  )
  AND GuestFolio.Docid <> (
        SELECT TOP 1 FolioNoDocid
        FROM Paycharge
        WHERE settledate BETWEEN '2024-01-01' AND '2024-01-31'
          AND FolioNoDocid IS NOT NULL
          AND FolioNoDocid <> ''
  )


# ==========================================================
# SCHEMA NOTES
# ==========================================================
# RevMast, BillDet, GuestProf, RoomOcc -> visahl.sql dump me NAHI hain (schema unknown).
# PayCharge -> visahl.sql dump me hai (neeche):

-- Table [PayCharge]  (schema from visahl.sql):
--     DocId                  varchar (21) NOT NULL
--     SNo                    int NOT NULL
--     Vtype                  varchar (8) NULL
--     VNo                    int NULL
--     Site_Code              varchar (2) NULL
--     VPrefix                varchar (5) NULL
--     Vdate                  datetime NULL
--     VTime                  varchar (5) NULL
--     GuestProf              varchar (8) NULL
--     EmpCode                varchar (8) NULL
--     CompCode               varchar (8) NULL
--     Comments               varchar (255) NULL
--     PayCode                varchar (6) NULL
--     PayType                varchar (15) NULL
--     AmtCr                  float NULL
--     AmtDr                  float NULL
--     TipAmt                 float NULL
--     RoomCat                varchar (5) NULL
--     RoomType               varchar (2) NULL
--     RoomNo                 varchar (5) NULL
--     FolioNo                int NULL
--     CardNo                 varchar (20) NULL
--     CardHolder             varchar (35) NULL
--     ChqNo                  varchar (20) NULL
--     ChqDate                datetime NULL
--     ExpDate                datetime NULL
--     BookNo                 int NULL
--     BookType               varchar (5) NULL
--     U_Name                 varchar (10) NULL
--     U_EntDt                datetime NULL
--     U_AE                   varchar (1) NULL
--     RestCode               varchar (6) NULL
--     BillAmount             float NULL
--     ContraDocID            varchar (21) NULL
--     DbtChkIn               varchar (3) NULL
--     TaxPer                 float NULL
--     OnAmt                  float NULL
--     Split                  varchar (2) NULL
--     Bill_No                varchar (8) NULL
--     MarkEntry              varchar (1) NULL
--     ModeSet                varchar (1) NULL
--     SettleDate             datetime NULL
--     BatchNo                smallint NULL
--     OldBill_No             varchar (8) NULL
--     PlanCharge             varchar (6) NULL
--     FixedChargeCode        varchar (5) NULL
--     RelatedFolioNo         int NULL
--     FolioNoDocid           varchar (21) NULL
--     LogSite_Code           varchar (2) NOT NULL
--     RefNo                  int NULL
--     PlanCode               varchar (5) NULL
--     SeqNo                  smallint NULL
--     RelatedFolionoDocId    varchar (21) NULL
--     RefDocId               varchar (21) NULL
--     Remarks                varchar (255) NULL
--     AU_Name                varchar (10) NULL
--     AU_EntDt               datetime NULL
--     TaxCondAmt             float NULL
--     TaxStru                varchar (6) NULL
--     AgAc                   varchar (8) NULL
--     TxnNo                  varchar (20) NULL
