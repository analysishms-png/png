-- ============================================================================
-- 06_House_Keeping -- extracted VB6 SQL
-- Source: HMS_REVERSE_ENGINEERING\EXTRAS.text  (line numbers in -- comments)
-- Form:   as emitted by the VB6 client. Strings are CONCATENATED, never
--         parameterised. Placeholders '<...>' are the VB6 expressions.
-- NEVER execute against the live DB.  [VERIFIED-VB6]
-- ============================================================================


-- ----------------------------------------------------------------------------
-- A. HHOUSEKEEPING  (EXTRAS.text L80459-L81618) -- housekeeping board
-- ----------------------------------------------------------------------------

-- A1  Remove an Out-Of-Order block when the room is returned to service
-- L80743
DELETE FROM RoomBlockOut WHERE RoomCode = '<FGrid1.TextMatrix>' AND Type = 'O';

-- A2  Insert the OOO block (full column list)
-- L80755
INSERT INTO RoomBlockOut
       (RoomCode, Reasons, FromDate, ToDate, Type,
        Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code, VTime)
VALUES ('<RoomCode>', '<Reasons>', '<FromDate>', '<ToDate>', '<Type>',
        '<Site_Code>', '<U_Name>', '<U_EntDt>', '<U_AE>', '<LogSite_Code>', '<VTime>');

-- A3  Remove every block for the room at the current logsite
-- L80860
DELETE FROM RoomBlockOut
 WHERE (LOGSITE_CODE = '<MemVar_1F81078>')
   AND RoomCode = '<FGrid1.TextMatrix>';

-- A4  Push the new room status onto RoomMast (housekeeping owns RoomStat)
-- L80884
UPDATE RoomMast
   SET RoomStat = '<FGrid1.TextMatrix>'
 WHERE (LOGSITE_CODE = '<MemVar_1F81078>')
   AND Code     = '<room code>';

-- A5  Lightweight block insert (no Reasons/ToDate) -- alternate code path
-- L80890
INSERT INTO RoomBlockOut
       (RoomCode, Type, Site_Code, U_Name, FromDate, LogSite_Code, VTime)
VALUES ('<RoomCode>', '<Type>', '<Site_Code>', '<U_Name>', '<FromDate>',
        '<LogSite_Code>', '<VTime>');

-- A6  Read blocks for a room; 'HO' is the shared/global logsite marker
-- L81181
SELECT * FROM RoomBlockOut
 WHERE (LOGSITE_CODE = '<MemVar_1F81078>' OR LOGSITE_CODE = 'HO')
   AND Type IN ('O','M')
   AND RoomCode = '<room>';

-- A7  Room name lookup (nullable)
-- L81197
SELECT IsNull(Max(Name), '') FROM roommast
 WHERE (LOGSITE_CODE = '<MemVar_1F81078>' OR LOGSITE_CODE = 'HO')
   AND Code = '<room>';

-- A8  Occupancy count excluding Out-Of-Order / Cancelled
-- L81239
SELECT Count(*) FROM RoomOcc
 WHERE (LOGSITE_CODE = '<MemVar_1F81078>')
   AND Type NOT IN ('O','C')
   AND (CHKINDATE < '<date>');

-- A9  Rooms of type 'RO' that participate in the occupancy count
-- L81253
SELECT * FROM roommast
 WHERE (LOGSITE_CODE = '<MemVar_1F81078>' OR LOGSITE_CODE = 'HO')
   AND Type = 'RO' AND InclCount = 'Y'
 ORDER BY Code;

-- A10 Currently in-house (no checkout date)
-- L81256
SELECT * FROM RoomOcc
 WHERE (LOGSITE_CODE = '<MemVar_1F81078>') AND ChkOutDate IS NULL;

-- A11 Active OOO blocks
-- L81258
SELECT * FROM RoomBlockOut
 WHERE (LOGSITE_CODE = '<MemVar_1F81078>' OR LOGSITE_CODE = 'HO')
   AND Type = 'O' AND <overlap predicate>;


-- ----------------------------------------------------------------------------
-- B. HKHOUSEOPSTK  (EXTRAS.text L81996-L84053) -- opening stock voucher
-- ----------------------------------------------------------------------------

-- B1  Voucher type description
-- L82038
SELECT Description, V_Type FROM Voucher_Type WHERE V_TYPE = '<global_120>';

-- B2  Replace-on-edit: drop old header lines first
-- L82088
DELETE FROM STOCK WHERE Docid = '<SearchCode>';

-- B3  Search / browse list (3-table left join)
-- L82158
SELECT DISTINCT Docid AS SearchCode,
       V.Description      AS VType,
       S.VNo              AS VrNo,
       S.VDate            AS V_Date,
       R.Name             AS Depart
  FROM ((STOCK S
         LEFT JOIN Voucher_Type V ON S.VType = V.V_Type)
         LEFT JOIN Depart R       ON S.RestCode = R.Code)
 WHERE V.V_Type = '<global_120>'
   AND <site filters>;

-- B4  Row-count guard before delete
-- L82307
SELECT Count(*) FROM STOCK WHERE DocID = '<DocID>';

-- B5  Hard delete of the voucher
-- L82327
DELETE FROM STOCK WHERE DocID = '<DocID>';

-- B6  Insert one opening-stock line (Qtyrec direction)
-- L82366
INSERT INTO Stock
       (Docid, VNo, VDate, VType, VPrefix, Site_Code, RestCode, RoomCat,
        RoomType, RoomNo, Sno, Item, Unit, Qtyrec, Rate, Amount,
        U_Name, U_EntDt, U_AE, TOTAL)
VALUES ('<Docid>', '<VNo>', '<VDate>', '<VType>', '<VPrefix>', '<Site_Code>',
        '<RestCode>', '<RoomCat>', '<RoomType>', '<RoomNo>', '<Sno>', '<Item>',
        '<Unit>', '<Qtyrec>', '<Rate>', '<Amount>',
        '<U_Name>', '<U_EntDt>', '<U_AE>', '<TOTAL>');

-- B7  Serial allocation -- READ (no transaction observed around B7+B8)
-- L82378
SELECT VT.Number_Method, VP.V_Type, VP.Date_From, VP.Prefix, VP.Start_Srl_No
  FROM Voucher_Type VT
 INNER JOIN Voucher_Prefix VP
         ON (VT.V_Type = VP.V_Type
         AND VT.SITE_CODE = VP.SITE_CODE
         AND VT.LOGSITE_CODE = VP.LOGSITE_CODE)
 WHERE (VP.SITE_CODE = '<MemVar_1F81070>' AND <more site predicates>);

-- B8  Serial allocation -- WRITE
-- L82398
UPDATE Voucher_Prefix
   SET Start_Srl_No = <next serial>
 WHERE (SITE_CODE = '<MemVar_1F81070>' AND LOGSITE_CODE = '<MemVar_1F81078>');

-- B9  Per-user "last voucher" cache
-- L82405 / L82414 / L82420
SELECT COUNT(*) FROM LASTVOU WHERE UNAME = '<MemVar_1F810C8>' AND <more>;
UPDATE LASTVOU SET DOCID = '<doc>' WHERE <same key>;
INSERT INTO LASTVOU (UNAME, ENAME, DOCID, Site_Code, U_EntDt, U_AE, LogSite_Code)
VALUES ('<MemVar_1F810C8>', '<ename>', '<doc>', '<Site_Code>', '<U_EntDt>',
        '<U_AE>', '<LogSite_Code>');

-- B10 Housekeeping voucher prefix derived from the department short name
-- L82473
SELECT 'O' + Depart.ShortName FROM Depart WHERE Code = '<MemVar_1F811B8>';

-- B11 Voucher-type picker
-- L82481
SELECT V_Type AS Code, Description AS Name, NCat
  FROM Voucher_Type
 WHERE V_TYPE = '<global_120>'
 ORDER BY Description;

-- B12 Store item picker (store items only, both item and group typed)
-- L82492
SELECT I.Code, I.Name AS Name, I.Unit, IG.Name AS ItemGroup, I.LPurRate
  FROM ItemMast I
  LEFT JOIN ItemGrp IG ON I.ItemGroup = IG.Code
 WHERE I.TYPE IN ('Store Item','Consumables')
   AND IG.TYPE IN ('Store Item','Consumables')
   AND I.ItemType = 'Store'
 ORDER BY I.Name;

-- B13 Browse list for this voucher type
-- L82504
SELECT DISTINCT S.DocId AS SearchCode, S.DocID
  FROM STOCK S
 WHERE VTYPE = '<global_120>' AND <site filters>;


-- ----------------------------------------------------------------------------
-- C. HKISSREC  (EXTRAS.text L84054-L86468) -- issue / receipt
-- ----------------------------------------------------------------------------

-- C1  Issue direction (QtyIss)
-- L85187
INSERT INTO Stock
       (Docid, VNo, VDate, VType, VPrefix, Site_Code, RestCode, RoomCat,
        RoomType, RoomNo, Sno, Item, Unit, QtyIss, Rate, Amount,
        U_Name, U_EntDt, U_AE, TOTAL)
VALUES (…);

-- C2  Receipt direction (Qtyrec) -- same columns, different quantity field
-- L85229
INSERT INTO Stock
       (Docid, VNo, VDate, VType, VPrefix, Site_Code, RestCode, RoomCat,
        RoomType, RoomNo, Sno, Item, Unit, Qtyrec, Rate, Amount,
        U_Name, U_EntDt, U_AE, TOTAL)
VALUES (…);

-- C3  Serial allocation -- identical to B7/B8
-- L85243 / L85263 / L85270 / L85279 / L85285
SELECT VT.Number_Method, VP.V_Type, VP.Date_From, VP.Prefix, VP.Start_Srl_No
  FROM Voucher_Type VT INNER JOIN Voucher_Prefix VP ON (…) WHERE …;
UPDATE Voucher_Prefix SET Start_Srl_No = <n> WHERE (SITE_CODE=… AND LOGSITE_CODE=…);
SELECT COUNT(*) FROM LASTVOU WHERE UNAME = '<user>' AND …;
UPDATE LASTVOU SET DOCID = …;
INSERT INTO LASTVOU (UNAME, ENAME, DOCID, Site_Code, U_EntDt, U_AE, LogSite_Code) VALUES (…);

-- C4  Direction encoded in the voucher prefix: 'I' = issue, 'R' = receipt
-- L85622 (issue)  /  L85628 (receipt)
SELECT 'I' + ShortName FROM Depart WHERE Code = '<global_132>';
SELECT 'R' + ShortName FROM Depart WHERE Code = '<global_132>';

-- C5  Voucher-type list restricted to a set
-- L85636
SELECT V_Type AS Code, Description AS Name, NCat
  FROM Voucher_Type
 WHERE V_TYPE IN <global_100>
 ORDER BY Description;

-- C6  Housekeeping godowns = departments joined to GodownMast
-- L85652
SELECT D.Code, GodownMast.Name
  FROM Depart AS D
 RIGHT JOIN GodownMast ON D.Code = GodownMast.Code
 WHERE RestType = 'House Keeping';

-- C7  Browse list joining Voucher_Type + Depart
-- L85346
SELECT DISTINCT Docid AS SearchCode, V.Description AS VType, S.VNo AS VrNo,
       S.VDate AS V_Date, R.Name AS Department
  FROM ((STOCK S LEFT JOIN Voucher_Type V ON S.VType = V.V_Type)
         LEFT JOIN Depart R ON S.RestCode = R.Code)
 WHERE V.V_Type IN <global_100> AND <site filters>;

-- C8  Detail load for an existing voucher
-- L86056
SELECT S.* FROM STOCK S WHERE S.Docid = '<DocID>';


-- ----------------------------------------------------------------------------
-- D. HROOMCHECKOUTCLEARANCE  (EXTRAS.text L628394-L629139)
-- ----------------------------------------------------------------------------

-- D1  Replace idiom (delete then insert) -- should become an UPSERT
-- L628528 / L628557
DELETE FROM RoomCheckOutStatus
 WHERE FolioNoDocId = '<DocId>' AND RoomCode = '<RoomCode>';

-- L628538 / L628566
INSERT INTO RoomCheckOutStatus
       (FolionoDocId, RoomCode, ChkOutClearanceYN, Site_Code,
        U_Name, U_EntDt, U_AE, LogSite_Code)
VALUES ('<DocId>', '<RoomCode>', '<YN>', '<Site_Code>',
        '<U_Name>', '<U_EntDt>', '<U_AE>', '<LogSite_Code>');

-- D2  Clearance dashboard -- NOTE the OR inside a JOIN predicate: row-multiplying
-- L628771
SELECT R.DocId,
       MAX(R.RoomNo)              RoomNo,
       MAX(IsNull(P.Bill_No,''))  Bill_No,
       MAX(IsNull(RC.ChkOutClearanceYN,'')) CHKOUTCLYN
  FROM RoomOcc R
  LEFT JOIN PayCharge P
         ON P.FolionoDocID = R.DocId
         OR P.RelatedFolioNoDocId = R.DocId
  LEFT JOIN RoomCheckOutStatus RC
         ON R.DocId = RC.FolionoDocid
        AND R.RoomNo = RC.RoomCode
 WHERE (R.LOGSITE_CODE = '<MemVar_1F81078>' AND …)
 GROUP BY R.DocId;                      -- grouping implied by the MAX() usage [INFERRED]

-- D3  In-house count excluding OOO / cancelled
-- L628754
SELECT Count(*) FROM RoomOcc
 WHERE (LOGSITE_CODE = '<MemVar_1F81078>')
   AND Type NOT IN ('O','C') AND (CHKINDATE < '<date>');

-- D4  Countable rooms joined to occupancy
-- L628768
SELECT * FROM roommast R
  LEFT JOIN roomocc O ON O.roomno = R.code
 WHERE (R.LOGSITE_CODE = '<MemVar_1F81078>' OR R.LOGSITE_CODE = 'HO')
   AND R.Type = 'RO' AND R.InclCount = 'Y'
   AND O.Type NOT IN ('O','C')
 ORDER BY Code;

-- D5  Block / room-name reads (3 sites of the same pattern)
-- L628609, L628642, L628677, L628774
SELECT * FROM RoomBlockOut
 WHERE (LOGSITE_CODE = '<…>' OR LOGSITE_CODE = 'HO')
   AND Type = 'O' AND RoomCode = '<room>';
-- L628617, L628651, L628686
SELECT Name FROM roommast
 WHERE (LOGSITE_CODE = '<…>' OR LOGSITE_CODE = 'HO') AND Code = '<room>';


-- ----------------------------------------------------------------------------
-- E. FRMCOMPLAINTMAST  (EXTRAS.text L481015-L482172)
--    FRMCOMPLAINTCLEARING (EXTRAS.text L448800-L449832)
-- ----------------------------------------------------------------------------

-- E1  Department list for the complaint form
-- L481371
SELECT Code, Name FROM Depart
 WHERE (LOGSITE_CODE = '<…>' OR LOGSITE_CODE = 'HO')
 ORDER BY Name;

-- E2  Category picker
-- L481375  (also L448927, L449270 without the logsite filter)
SELECT Code AS Scode, Category FROM ComplaintCategory
 WHERE (LOGSITE_CODE = '<…>' OR LOGSITE_CODE = 'HO')
 ORDER BY Category;

-- E3  Complaint grid, category left-joined
-- L481380
SELECT CD.Code AS Scode, CD.Category AS CatCode, CD.CDate AS CDate,
       CD.CTime AS CTime, CC.Category AS Category, CD.Description AS Description,
       CD.Depart AS Depart, CD.UName AS UName, CD.Status AS Status,
       CD.Site_Code, CD.LogSite_Code
  FROM ComplaintDetail CD
  LEFT JOIN ComplaintCategory CC ON CD.Category = CC.Code
 WHERE (CD.LOGSITE_CODE = '<…>' AND …);

-- E4  Complaint grid, inner-joined (clearing screen)
-- L481680
SELECT CD.Code AS Scode, CD.CDate AS CDate, CD.CTime AS CTime,
       CC.Category AS Category, CD.Description AS Description,
       D.Name AS Depart, CD.UName AS UName, CD.Status AS Status
  FROM (ComplaintDetail CD
        INNER JOIN ComplaintCategory CC ON CD.Category = CC.Code)
  INNER JOIN Depart D ON CD.Depart = D.Code
 WHERE CD.LogSite_Code = '<…>';

-- E5  Report grid (also carries ClearingDate/ClearingPerson)
-- L449626
SELECT CD.Code AS Scode, CD.Category, CD.CDate AS CDate, CD.CTime AS CTime,
       CD.Description AS Description, Depart.Name AS Depart,
       IsNull(CD.ClearingDate, …) …
  FROM … ;

-- E6  Search list
-- L481621
SELECT C.Code AS SearchCode, C.Description AS Description,
       C.UName AS ComplaintBy, Depart.Name AS Department
  FROM ComplaintDetail C
  INNER JOIN Depart ON C.Depart = Depart.Code
 WHERE C.LogSite_Code = '<…>';

-- E7  Code generation -- substring-position based (2-char prefix, 4 digits)
-- L481791
SELECT IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)), 1) + 1 AS MyCode
  FROM ComplaintDetail WHERE Site_Code = '<MemVar_1F81070>' AND …;

-- E8  Code generation for the category master (3-digit tail)
-- L481812
SELECT IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)), 1) + 1 AS MyCode
  FROM ComplaintCategory WHERE Site_Code = '<MemVar_1F81070>' AND …;

-- E9  Duplicate guards
-- L481804, L481833
SELECT Count(*) FROM ComplaintCategory WHERE Category = '<text>';
-- L482074
SELECT Count(*) FROM ComplaintDetail WHERE Description = '<text>';
-- L482088
SELECT Count(*) FROM ComplaintDetail WHERE Category = '<text>';

-- E10 Inserts / updates / deletes
-- L481839
INSERT INTO ComplaintCategory (Code, Category, Site_Code, U_EntDt, U_AE, LogSite_Code)
VALUES ('<Code>', '<Category>', '<Site_Code>', '<U_EntDt>', '<U_AE>', '<LogSite_Code>');

-- L481847
INSERT INTO ComplaintDetail
       (Code, Category, CDate, CTime, Description, Depart, UName, Status,
        Site_Code, U_EntDt, U_AE, LogSite_Code)
VALUES ('<Code>', '<Category>', '<CDate>', '<CTime>', '<Description>',
        '<Depart>', '<UName>', '<Status>',
        '<Site_Code>', '<U_EntDt>', '<U_AE>', '<LogSite_Code>');

-- L481871
UPDATE ComplaintDetail
   SET Description = '<TxtDesc.Text>', Status = '<status>' , …

-- L449123   clear / solve
UPDATE ComplaintDetail
   SET Status = 'Solved', ClearingDate = <date>, ClearingPerson = '<person>' …

-- L449141   re-open
UPDATE ComplaintDetail
   SET Status = 'UnSolved', ClearingDate = NULL, ClearingPerson = '',
       Description = '<text>' …;

-- L448856, L481515
DELETE FROM ComplaintDetail WHERE Code = '<SCode>';


-- ----------------------------------------------------------------------------
-- F. FRMLOSTFOUND (L449833-L450496) / FRMCLAIMENTRY (L450497-L451328)
-- ----------------------------------------------------------------------------

-- F1  Code generation (2-char prefix, 6-digit tail)
-- L450172
SELECT IsNull(Max(CAST(SUBSTRING(Code,3,6) AS INT)), 1) + 1 AS MyCode
  FROM LostFoundDetail WHERE Site_Code = '<MemVar_1F81070>' AND …;

-- F2  Insert
-- L450191
INSERT INTO LostFoundDetail
       (Code, FDate, FTime, FArea, AppValue, Description, FindBy,
        FFDate, FFTime, FPlace, UName1, Status,
        Site_Code, U_EntDt, U_AE, LogSite_Code)
VALUES (…);

-- F3  Update / delete
-- L450226
UPDATE LostFoundDetail SET FDate = <date> …;
-- L449914
DELETE FROM LostFoundDetail WHERE Code = '<SCode>';

-- F4  Lists and search
-- L450005
SELECT Code AS SCode, Description, FArea AS [Item Lost/Found Area]
  FROM LostFoundDetail;
-- L450060
SELECT FDate, FTime, FArea, FindBy, Description, UName1, Status
  FROM LostFoundDetail ORDER BY Code;
-- L450284
SELECT Code AS Scode, FDate, FTime, FArea, Description, Appvalue, FindBy,
       FFDate, FFTime, FPlace, UName1, Status, Site_Code, LogSite_code
  FROM LostFoundDetail
 WHERE (LOGSITE_CODE = '<MemVar_1F81078>' AND …);
-- L450516  (claim screen full list)
SELECT Code AS Scode, FDate, Ftime, FArea, FindBy, Description, UName1,
       ClaimedBy, ContactNo, OtherDetail, DeliveredBy, DDate, Status
  FROM LostFoundDetail ORDER BY Code;
-- L450853 / L450865  date-range variant of the same list
… WHERE FDate BETWEEN <from> AND <to> …;

-- F5  Mark delivered
-- L450964
UPDATE LostFoundDetail
   SET Status = 'Delivered', DDate = <date>, ClaimedBy = '<name>',
       ContactNo = '<phone>', …;


-- ----------------------------------------------------------------------------
-- G. FRMBLOCKMAST  (EXTRAS.text L797827-L798637)
-- ----------------------------------------------------------------------------

-- L798031 / L798276
SELECT Code, Name FROM BlockMast
 WHERE (LOGSITE_CODE = '<…>' OR LOGSITE_CODE = 'HO') ORDER BY Name;
-- L798035
SELECT * FROM BlockMast
 WHERE (LOGSITE_CODE = '<…>' OR LOGSITE_CODE = 'HO') ORDER BY Name;
-- L798220
SELECT BlockMast.Code AS SearchCode, BlockMast.Name, ShortName, Status
  FROM BlockMast
 WHERE (LOGSITE_CODE = '<…>' OR LOGSITE_CODE = 'HO')
 ORDER BY BlockMast.Name;
-- L798376  code generation (2-char prefix, 3-digit tail)
SELECT IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)), 1) + 1 AS MyCode
  FROM BlockMast WHERE Site_Code = '<MemVar_1F81070>' AND …;
-- L798396
INSERT INTO BlockMast (Code, Name, ShortName, Status, Site_Code,
                       U_Name, U_EntDt, U_AE, LogSite_Code)
VALUES ('<Code>', '<Name>', '<ShortName>', '<Status>', '<Site_Code>',
        '<U_Name>', '<U_EntDt>', '<U_AE>', '<LogSite_Code>');
-- L798415
UPDATE BlockMast SET Name = '<Name>' …;
-- L798533  audit stamp read
SELECT U_Name, U_AE, U_EntDt FROM BlockMast WHERE Code = '<Code>';
-- L798596 / L798609 / L798623  uniqueness
SELECT Count(*) FROM BlockMast
 WHERE (LOGSITE_CODE='<…>' OR LOGSITE_CODE='HO') AND Name = '<Name>';
SELECT Count(*) FROM BlockMast
 WHERE (LOGSITE_CODE='<…>' OR LOGSITE_CODE='HO') AND ShortName = '<ShortName>';
-- L798140
DELETE FROM BlockMast WHERE Code = '<Code>';
-- L831640  consumed by HKRoomBlock
SELECT DISTINCT Code AS Code, Name, ShortName FROM BlockMast
 WHERE (LOGSITE_CODE = '<…>' OR LOGSITE_CODE = 'HO') ORDER BY Name;


-- ----------------------------------------------------------------------------
-- H. FRMITEMISSUEDONCLEANING  (EXTRAS.text L604299-L605913)
--     *** MENU ITEM HAS NO DISPATCHER BRANCH -- UNREACHABLE  ***
--     *** TABLE DepartWiseItemIssueList DOES NOT EXIST IN THE DB ***
-- ----------------------------------------------------------------------------

-- L604385 / L604515
DELETE FROM DepartWiseItemIssueList WHERE FrDepart = '<code>' AND …;
-- L604488
SELECT Count(*) FROM DepartWiseItemIssueList WHERE FrDepart = '<code>';
-- L604538
INSERT INTO DepartWiseItemIssueList
       (Sno, Site_Code, Item, FrDepart, ToDepart, IssQty,
        U_Name, U_EntDt, U_AE, LogSite_Code)
VALUES (…);
-- L604607
SELECT DISTINCT FrDepart + ToDepart AS SearchCode,
       FrG.Name AS From_Location, ToG.Name AS To_Location
  FROM DepartWiseItemIssueList D
  LEFT JOIN GodownMast FrG ON D.FrDepart = FrG.code
  LEFT JOIN GodownMast ToG ON D.ToDepart = ToG.code
 WHERE D.LOGSITE_CODE = '<…>';
-- L604659
SELECT DISTINCT FrDepart + ToDepart AS SearchCode, D.Site_Code, D.LogSite_Code
  FROM DepartWiseItemIssueList D
  INNER JOIN ItemMast ON D.item = ItemMast.code AND ItemMast.ItemType = 'Store'
 WHERE D.LOGSITE_CODE = '<…>';
-- L605666
SELECT D.SNo, D.Item, I.Name AS ItemName, I.Unit, D.IssQty,
       D.FrDepart, FrG.Name AS FrDepartName,
       D.ToDepart, ToG.Name AS ToDepartName, I.RestCode
  FROM DepartWiseItemIssueList D
  LEFT JOIN ItemMast I    ON I.Code = D.Item AND I.ItemType = 'Store'
  LEFT JOIN GodownMast FrG ON D.FrDepart = FrG.Code
  LEFT JOIN GodownMast ToG ON D.ToDepart = ToG.Code
 WHERE D.FrDepart + D.ToDepart = '<key>';
-- L604639 / L604646 / L604653 / L604723 / L604753  pickers
SELECT I.Code, I.Name, I.Unit, I.IssueUnit, I.PurchRate AS Rate,
       I.ConvRatio, I.RestCode
  FROM ItemMast I WHERE (LOGSITE_CODE = '<…>' AND …);
SELECT G.Code, G.Name FROM GodownMast G
  INNER JOIN Depart D ON (D.Code = G.Code AND D.LogSite_Code = G.LogSite_Code)
 WHERE (G.LOGSITE_CODE = '<…>' AND …);
-- L605571
SELECT RATE FROM ITEMRATE WHERE ITEMCODE = '<code>' AND RestCode = '<rest>';


-- ----------------------------------------------------------------------------
-- I. REPORT DATA SOURCES (Crystal field definitions regenerated at run time)
-- ----------------------------------------------------------------------------

-- I1  Complaint report query -- feeds rRepHousePreview / "ComplaintList"
-- L121505, L121509   (object rRepHousePreview, L120613-L122609)
SELECT C.Code AS Scode, C.CDate AS CDate, C.CTime AS CTime,
       CC.Category AS Category, C.Description AS Description,
       Depart.Name AS Depart, C.UName AS UName, C.Status AS Status
  FROM (ComplaintDetail AS C
        INNER JOIN Depart ON C.Depart = Depart.Code)
  INNER JOIN ComplaintCategory CC ON C.Category = CC.Code
 <runtime filter>;

-- I2  Category list used inside the report form
-- L124733
SELECT '' AS O, Category AS Category, Code AS Code
  FROM ComplaintCategory ORDER BY Category;


-- ----------------------------------------------------------------------------
-- J. CROSS-MODULE CONTRACT
-- ----------------------------------------------------------------------------

-- J1  04_Reservation READS what 06_House_Keeping WRITES.
--     Reservation side (EXTRAS.text L97971) does an overlap test on Type='O'.
--     House Keeping writes: L80755, L80890.  Deletes: L80743, L80860.
--     RoomBlockOut currently holds 1 row.  [VERIFIED-SQL]

-- J2  04_Reservation also reads RoomMast.RoomStat, which this module owns and
--     updates at L80884.  [VERIFIED-VB6]

-- J3  There are ZERO declared foreign keys in MOONData2627
--     (18_Database\foreign_keys.txt is 0 bytes).  [VERIFIED-SQL]
--     Every cascade above is performed by client code.
