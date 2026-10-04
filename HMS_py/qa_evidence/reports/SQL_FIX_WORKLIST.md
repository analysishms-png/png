# SQL 42S22 Fix Worklist

Generated from the latest registry sweep. Failing captions: 92

## Grouped by missing column

### Missing: Vdate  (15 captions, 11 report keys)

- **Attendance Report** -> `AttendanceRep`
  - report cols: ['EmpCode', 'EmpName', 'Date', 'Status']
  - sql: `SELECT TOP ({L}) Code,Name,Vdate,ISNULL(Status,'') FROM Attend WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate`
- **Attendence Report** -> `AttendanceRep`
  - report cols: ['EmpCode', 'EmpName', 'Date', 'Status']
  - sql: `SELECT TOP ({L}) Code,Name,Vdate,ISNULL(Status,'') FROM Attend WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate`
- **Card Collection Summary** -> `CashCardCollectSumm`
  - report cols: ['Vdate', 'SettMode', 'Bills', 'NetAmt']
  - sql: `SELECT TOP ({L}) Vdate,ISNULL(SettMode,''),COUNT(*),SUM(SettAmt) FROM FOMBillDetails WHERE Bill_Date BETWEEN ? AND ? GROUP BY Vdate,SettMode ORDER BY Vdate`
- **Cash/Card Collection Summary** -> `CashCardCollectSumm`
  - report cols: ['Vdate', 'SettMode', 'Bills', 'NetAmt']
  - sql: `SELECT TOP ({L}) Vdate,ISNULL(SettMode,''),COUNT(*),SUM(SettAmt) FROM FOMBillDetails WHERE Bill_Date BETWEEN ? AND ? GROUP BY Vdate,SettMode ORDER BY Vdate`
- **Cashier Collection MIS** -> `CashierCollectionMIS`
  - report cols: ['Vdate', 'SettMode', 'Bills', 'NetAmt']
  - sql: `SELECT TOP ({L}) Vdate,ISNULL(SettMode,''),COUNT(*),SUM(SettAmt) FROM FOMBillDetails WHERE Bill_Date BETWEEN ? AND ? GROUP BY Vdate,SettMode ORDER BY Vdate`
- **Cashier Settlement** -> `CashierSettlement`
  - report cols: ['Vdate', 'SettMode', 'Bills', 'BillAmt']
  - sql: `SELECT TOP ({L}) Vdate,ISNULL(SettMode,''),COUNT(*),SUM(BillAmt) FROM FOMBillDetails WHERE Bill_Date BETWEEN ? AND ? GROUP BY Vdate,SettMode ORDER BY Vdate`
- **Form 6 Tourism** -> `Form6TourismReport`
  - report cols: ['Guest', 'RoomNo', 'Nights', 'RoomRevenue']
  - sql: `SELECT TOP ({L}) ISNULL(f.Name,''),o.RoomNo,ISNULL(o.NoDays,0),ISNULL(o.RoomRevenue,0) FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.Vdate BETWEEN ? AND ? ORDER BY o.ChkInDate`
- **Guest Observation** -> `GuestObservRep`
  - report cols: ['FolioNo', 'RoomNo', 'Guest', 'Remarks', 'Date']
  - sql: `SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),ISNULL(o.Remarks,''),o.ChkInDate FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.Vdate BETWEEN ? AND ? ORDER BY o.ChkInDate`
- **Revenue During the stay** -> `GuestwiseRevenue`
  - report cols: ['Guest', 'FolioNo', 'RoomNo', 'Nights', 'RoomRevenue', 'TotalRevenue']
  - sql: `SELECT TOP ({L}) ISNULL(f.Name,''),o.FolioNo,o.RoomNo,ISNULL(o.NoDays,0),ISNULL(o.RoomRevenue,0),ISNULL(o.RoomRevenue,0)+ISNULL(o.OtherRevenue,0) FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.Vdate BETWEEN ? AND ? ORDER BY o.ChkInDate`
- **Room Change History** -> `RoomChangeHistory`
  - report cols: ['FolioNo', 'RoomNo', 'ChangeDate', 'User']
  - sql: `SELECT TOP ({L}) o.FolioNo,o.RoomNo,o.ChkInDate,ISNULL(o.ChkoutUser,'') FROM RoomOcc o WHERE o.Vdate BETWEEN ? AND ? ORDER BY o.Vdate`
- **Room Nights** -> `RoomNights`
  - report cols: ['RoomNo', 'Nights', 'Revenue']
  - sql: `SELECT TOP ({L}) o.RoomNo,ISNULL(o.NoDays,0),ISNULL(o.RoomRevenue,0) FROM RoomOcc o WHERE o.Vdate BETWEEN ? AND ? ORDER BY o.RoomNo`
- **Room Rent Audit Report** -> `RoomRentAuditRpt`
  - report cols: ['FolioNo', 'RoomNo', 'RoomRate', 'ChkInDate', 'DepDate', 'Nights', 'TotalRent']
  - sql: `SELECT TOP ({L}) o.FolioNo,o.RoomNo,o.RoomRate,o.ChkInDate,o.DepDate,ISNULL(o.NoDays,0),ISNULL(o.NoDays,0)*o.RoomRate FROM RoomOcc o WHERE o.Vdate BETWEEN ? AND ? ORDER BY o.ChkInDate`
- **Room Wise Room Revenue** -> `RoomWiseRoomRevenueReport`
  - report cols: ['RoomNo', 'RoomType', 'RoomRate', 'Nights', 'Revenue']
  - sql: `SELECT TOP ({L}) o.RoomNo,ISNULL(o.RoomType,''),o.RoomRate,ISNULL(o.NoDays,0),ISNULL(o.RoomRevenue,0) FROM RoomOcc o WHERE o.Vdate BETWEEN ? AND ? ORDER BY o.RoomNo`
- **Settlement Summary** -> `CashierSettlement`
  - report cols: ['Vdate', 'SettMode', 'Bills', 'BillAmt']
  - sql: `SELECT TOP ({L}) Vdate,ISNULL(SettMode,''),COUNT(*),SUM(BillAmt) FROM FOMBillDetails WHERE Bill_Date BETWEEN ? AND ? GROUP BY Vdate,SettMode ORDER BY Vdate`
- **Tourism Form 6** -> `Form6TourismReport`
  - report cols: ['Guest', 'RoomNo', 'Nights', 'RoomRevenue']
  - sql: `SELECT TOP ({L}) ISNULL(f.Name,''),o.RoomNo,ISNULL(o.NoDays,0),ISNULL(o.RoomRevenue,0) FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.Vdate BETWEEN ? AND ? ORDER BY o.ChkInDate`

### Missing: Vtype  (6 captions, 5 report keys)

- **&Interest Ledger** -> `LedInt`
  - report cols: ['V_Date', 'DocId', 'Account', 'AmtDr', 'AmtCr']
  - sql: `SELECT TOP ({L}) l.V_Date,l.DocId,ISNULL(s.Name,'?'),l.AmtDr,l.AmtCr FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode WHERE l.Vtype='INT' AND l.V_Date BETWEEN ? AND ? ORDER BY l.V_Date`
- **&Journal Books** -> `JournalBook`
  - report cols: ['V_Date', 'DocId', 'Vtype', 'Account', 'AmtDr', 'AmtCr', 'Narration']
  - sql: `SELECT TOP ({L}) l.V_Date,l.DocId,ISNULL(l.Vtype,''),ISNULL(s.Name,'?'),l.AmtDr,l.AmtCr,ISNULL(l.Narration,'') FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode WHERE l.Vtype IN ('JV','CV','DV') AND l.V_Date BETWEEN ? AND ? ORDER BY l.V_Date,l.DocId`
- **&Ledger** -> `Led`
  - report cols: ['V_Date', 'DocId', 'Vtype', 'Account', 'AmtDr', 'AmtCr', 'Narration']
  - sql: `SELECT TOP ({L}) l.V_Date,l.DocId,ISNULL(l.Vtype,''),ISNULL(s.Name,'?'),l.AmtDr,l.AmtCr,ISNULL(l.Narration,'') FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode WHERE l.V_Date BETWEEN ? AND ? ORDER BY l.V_Date,l.DocId`
- **Journal Book Log** -> `JournalBookLog`
  - report cols: ['V_Date', 'DocId', 'Vtype', 'Account', 'Narration']
  - sql: `SELECT TOP ({L}) l.V_Date,l.DocId,ISNULL(l.Vtype,''),ISNULL(s.Name,'?'),ISNULL(l.Narration,'') FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode WHERE l.V_Date BETWEEN ? AND ? ORDER BY l.V_Date`
- **Journal Books Log** -> `JournalBookLog`
  - report cols: ['V_Date', 'DocId', 'Vtype', 'Account', 'Narration']
  - sql: `SELECT TOP ({L}) l.V_Date,l.DocId,ISNULL(l.Vtype,''),ISNULL(s.Name,'?'),ISNULL(l.Narration,'') FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode WHERE l.V_Date BETWEEN ? AND ? ORDER BY l.V_Date`
- **Roz Namcha** -> `RozNamcha`
  - report cols: ['V_Date', 'DocId', 'Vtype', 'Account', 'AmtDr', 'AmtCr', 'Narration']
  - sql: `SELECT TOP ({L}) l.V_Date,l.DocId,ISNULL(l.Vtype,''),ISNULL(s.Name,'?'),l.AmtDr,l.AmtCr,ISNULL(l.Narration,'') FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode WHERE l.V_Date BETWEEN ? AND ? ORDER BY l.V_Date,l.DocId`

### Missing: (no column)  (6 captions, 6 report keys)

- **ABC  Analysis** -> `abc_analysis`
  - report cols: ['Item', 'ConsValue', 'CumPct', 'Class']
  - sql: `WITH Cons AS (SELECT Item, SUM(ISNULL(QtyIss,0)*ISNULL(Rate,0)) AS ConsValue FROM Stock GROUP BY Item) SELECT TOP ({L}) c.Item, c.ConsValue, (SELECT SUM(c2.ConsValue) FROM Cons c2  WHERE c2.ConsValue >= c.ConsValue) * 100.0 / NULLIF((SELECT SUM(ConsValue) FROM Cons), 0) AS CumPct, CASE WHEN (SELECT SUM(c2.ConsValue) FROM Cons c2  WHERE c2.ConsValue >= c.ConsValue) * 100.0 / NULLIF((SELECT SUM(ConsValue) FROM Cons), 0) <= 70 THEN 'A' WHEN (SELECT SUM(c2.ConsValue) FROM Cons c2  WHERE c2.ConsValue >= c.ConsValue) * 100.0 / NULLIF((SELECT SUM(ConsValue) FROM Cons), 0) <= 90 THEN 'B' ELSE 'C' END AS Class FROM Cons c ORDER BY c.ConsValue DESC`
- **Due List Creditor OverLay** -> `DueListCreditorOverLay`
  - report cols: ['SubCode', 'Account', 'Balance']
  - sql: `SELECT TOP ({L}) l.SubCode,ISNULL(s.Name,'?'),SUM(l.AmtCr)-SUM(l.AmtDr) FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode GROUP BY l.SubCode HAVING SUM(l.AmtCr)-SUM(l.AmtDr)>0 ORDER BY SUM(l.AmtCr)-SUM(l.AmtDr) DESC`
- **DUELIST** -> `DUELIST`
  - report cols: ['SubCode', 'Account', 'Balance', 'LastTxn']
  - sql: `SELECT TOP ({L}) l.SubCode,ISNULL(s.Name,'?'),SUM(l.AmtDr)-SUM(l.AmtCr),MAX(l.V_Date) FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode GROUP BY l.SubCode HAVING ABS(SUM(l.AmtDr)-SUM(l.AmtCr))>0 ORDER BY MAX(l.V_Date)`
- **Non Transaction Report** -> `NonTrans`
  - report cols: ['SubCode', 'Account', 'LastTxnDate', 'Balance']
  - sql: `SELECT TOP ({L}) l.SubCode,ISNULL(s.Name,'?'),MAX(l.V_Date),SUM(l.AmtDr)-SUM(l.AmtCr) FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode GROUP BY l.SubCode,s.Name HAVING DATEDIFF(day,MAX(l.V_Date),?)>90 ORDER BY MAX(l.V_Date)`
- **Tagada Letter Settings** -> `fa_enviro_tagada`
  - report cols: ['Header1', 'Header2', 'Header3', 'Header4', 'Header5', 'Footer1', 'Footer2', 'Footer3', 'Footer4', 'Footer5']
  - sql: `SELECT TagadaHeader1, TagadaHeader2, TagadaHeader3, TagadaHeader4, TagadaHeader5, TagadaFooter1, TagadaFooter2, TagadaFooter3, TagadaFooter3fa, TagadaFooter4, TagadaFooter5 FROM FAEnviro WHERE Site_Code = ? OR LogSite_Code = 'HO'`
- **Tax Structure List** -> `tax_structure_list`
  - report cols: ['StructureCode', 'StructureName', 'TaxCode', 'TaxName', 'Rate', 'ApplyOn', 'LLimit', 'Comparison', 'ULimit', 'Condition']
  - sql: `SELECT t.Code AS StructureCode, t.Name AS StructureName, l.TaxCode, tm.Name AS TaxName, l.Rate, l.Nature, l.Limit, l.CondApp, l.Limit1, l.CompOp FROM TaxStru t JOIN TaxStruLines l ON t.Code = l.StrCode JOIN TaxMast tm ON tm.Code = l.TaxCode WHERE t.LogSite_Code = ? OR t.LogSite_Code = 'HO' ORDER BY t.Code, l.SNo`

### Missing: Item, Qty  (6 captions, 3 report keys)

- **Delivery Status** -> `DeliveryStatus`
  - report cols: ['DocId', 'Vdate', 'Outlet', 'Item', 'Qty']
  - sql: `SELECT TOP ({L}) s1.DocId,s1.Vdate,s1.RestCode,ISNULL(s2.Item,''),ISNULL(s2.Qty,0) FROM Sale1 s1 LEFT JOIN Sale2 s2 ON s2.DocId=s1.DocId WHERE s1.Vdate BETWEEN ? AND ? ORDER BY s1.Vdate`
- **NC KOT Detail** -> `NCKOTWiseDetails`
  - report cols: ['Vdate', 'DocId', 'Party', 'Item', 'Qty', 'Amount']
  - sql: `SELECT TOP ({L}) s1.Vdate,s1.DocId,ISNULL(s1.Party,''),ISNULL(s2.Item,''),ISNULL(s2.Qty,0),ISNULL(s2.Amount,0) FROM Sale1 s1 LEFT JOIN Sale2 s2 ON s2.DocId=s1.DocId WHERE ISNULL(s1.Party,'')<>'' AND s1.Vdate BETWEEN ? AND ? ORDER BY s1.Vdate`
- **NC KOT Wise Details** -> `NCKOTWiseDetails`
  - report cols: ['Vdate', 'DocId', 'Party', 'Item', 'Qty', 'Amount']
  - sql: `SELECT TOP ({L}) s1.Vdate,s1.DocId,ISNULL(s1.Party,''),ISNULL(s2.Item,''),ISNULL(s2.Qty,0),ISNULL(s2.Amount,0) FROM Sale1 s1 LEFT JOIN Sale2 s2 ON s2.DocId=s1.DocId WHERE ISNULL(s1.Party,'')<>'' AND s1.Vdate BETWEEN ? AND ? ORDER BY s1.Vdate`
- **Not Delivered Order** -> `DeliveryStatus`
  - report cols: ['DocId', 'Vdate', 'Outlet', 'Item', 'Qty']
  - sql: `SELECT TOP ({L}) s1.DocId,s1.Vdate,s1.RestCode,ISNULL(s2.Item,''),ISNULL(s2.Qty,0) FROM Sale1 s1 LEFT JOIN Sale2 s2 ON s2.DocId=s1.DocId WHERE s1.Vdate BETWEEN ? AND ? ORDER BY s1.Vdate`
- **Open Item Sale** -> `OpenItemSale`
  - report cols: ['Vdate', 'DocId', 'Item', 'Qty', 'Rate', 'Amount']
  - sql: `SELECT TOP ({L}) Vdate,DocId,ISNULL(Item,''),ISNULL(Qty,0),ISNULL(Rate,0),ISNULL(Amount,0) FROM Sale2 WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate,DocId`
- **Open Item Sales** -> `OpenItemSale`
  - report cols: ['Vdate', 'DocId', 'Item', 'Qty', 'Rate', 'Amount']
  - sql: `SELECT TOP ({L}) Vdate,DocId,ISNULL(Item,''),ISNULL(Qty,0),ISNULL(Rate,0),ISNULL(Amount,0) FROM Sale2 WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate,DocId`

### Missing: PassportNo  (6 captions, 3 report keys)

- **Form  C** -> `FormC`
  - report cols: ['FolioNo', 'RoomNo', 'Guest', 'Nationality', 'PassportNo', 'ChkInDate', 'DepDate']
  - sql: `SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),ISNULL(f.Nationality,''),ISNULL(f.PassportNo,''),o.ChkInDate,o.DepDate FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate BETWEEN ? AND ? ORDER BY o.ChkInDate`
- **Form  C ** -> `FormC`
  - report cols: ['FolioNo', 'RoomNo', 'Guest', 'Nationality', 'PassportNo', 'ChkInDate', 'DepDate']
  - sql: `SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),ISNULL(f.Nationality,''),ISNULL(f.PassportNo,''),o.ChkInDate,o.DepDate FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate BETWEEN ? AND ? ORDER BY o.ChkInDate`
- **Form 2 Tourism** -> `Form2TourismReport`
  - report cols: ['FolioNo', 'RoomNo', 'Guest', 'Nationality', 'PassportNo']
  - sql: `SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),ISNULL(f.Nationality,''),ISNULL(f.PassportNo,'') FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate BETWEEN ? AND ? ORDER BY o.ChkInDate`
- **Form C** -> `FormCReport`
  - report cols: ['FolioNo', 'RoomNo', 'Guest', 'Nationality', 'PassportNo']
  - sql: `SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),ISNULL(f.Nationality,''),ISNULL(f.PassportNo,'') FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate BETWEEN ? AND ? ORDER BY o.ChkInDate`
- **Form C Report** -> `FormCReport`
  - report cols: ['FolioNo', 'RoomNo', 'Guest', 'Nationality', 'PassportNo']
  - sql: `SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),ISNULL(f.Nationality,''),ISNULL(f.PassportNo,'') FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate BETWEEN ? AND ? ORDER BY o.ChkInDate`
- **Tourism Form 2** -> `Form2TourismReport`
  - report cols: ['FolioNo', 'RoomNo', 'Guest', 'Nationality', 'PassportNo']
  - sql: `SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),ISNULL(f.Nationality,''),ISNULL(f.PassportNo,'') FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate BETWEEN ? AND ? ORDER BY o.ChkInDate`

### Missing: KOTNo  (5 captions, 4 report keys)

- **KOT Change Report** -> `KOTRateChange`
  - report cols: ['Vdate', 'KOTNo', 'Item', 'OldRate', 'NewRate', 'User']
  - sql: `SELECT TOP ({L}) Vdate,KOTNo,ISNULL(Item,''),0,0,ISNULL(U_Name,'') FROM KOT WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate`
- **KOT Edit/Delete** -> `KotEditDelete`
  - report cols: ['Vdate', 'KOTNo', 'Item', 'Qty', 'User']
  - sql: `SELECT TOP ({L}) Vdate,KOTNo,ISNULL(Item,''),ISNULL(Qty,0),ISNULL(U_Name,'') FROM KOT WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate`
- **KOT Rate Change** -> `KOTRateChange`
  - report cols: ['Vdate', 'KOTNo', 'Item', 'OldRate', 'NewRate', 'User']
  - sql: `SELECT TOP ({L}) Vdate,KOTNo,ISNULL(Item,''),0,0,ISNULL(U_Name,'') FROM KOT WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate`
- **KOT Wise Details** -> `KOTWiseDetails`
  - report cols: ['Vdate', 'KOTNo', 'Item', 'Qty', 'Rate', 'Amount']
  - sql: `SELECT TOP ({L}) Vdate,KOTNo,ISNULL(Item,''),ISNULL(Qty,0),ISNULL(Rate,0),ISNULL(Amount,0) FROM KOT WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate,KOTNo`
- **Order Detail Report** -> `OrderDetailReport`
  - report cols: ['Vdate', 'KOTNo', 'Item', 'Qty', 'Rate', 'Amount']
  - sql: `SELECT TOP ({L}) Vdate,KOTNo,ISNULL(Item,''),ISNULL(Qty,0),ISNULL(Rate,0),ISNULL(Amount,0) FROM KOT WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate,KOTNo`

### Missing: RoomRevenue  (4 captions, 4 report keys)

- **Business Analysis** -> `BusinessAnalysis`
  - report cols: ['BussSource', 'Folios', 'Nights', 'Revenue']
  - sql: `SELECT TOP ({L}) ISNULL(NULLIF(BussSource,''),'(None)'),COUNT(*),SUM(ISNULL(NoDays,0)),SUM(ISNULL(RoomRevenue,0)) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY BussSource ORDER BY COUNT(*) DESC`
- **FOCC Report** -> `FOCC Report`
  - report cols: ['Date', 'Folios', 'Nights', 'RoomRevenue']
  - sql: `SELECT TOP ({L}) Vdate,COUNT(*),SUM(ISNULL(NoDays,0)),SUM(ISNULL(RoomRevenue,0)) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate ORDER BY Vdate`
- **Market Segment Analysis** -> `MarketSegAnalysis`
  - report cols: ['MarketSeg', 'Folios', 'Nights', 'Revenue']
  - sql: `SELECT TOP ({L}) ISNULL(NULLIF(MarketSeg,''),'(None)'),COUNT(*),SUM(ISNULL(NoDays,0)),SUM(ISNULL(RoomRevenue,0)) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY MarketSeg ORDER BY COUNT(*) DESC`
- **Travel Agent Analysis** -> `TravelAgentAnalysis`
  - report cols: ['TravelAgent', 'Folios', 'Nights', 'Revenue']
  - sql: `SELECT TOP ({L}) ISNULL(NULLIF(TravelAgent,''),'(None)'),COUNT(*),SUM(ISNULL(NoDays,0)),SUM(ISNULL(RoomRevenue,0)) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY TravelAgent ORDER BY COUNT(*) DESC`

### Missing: Item  (4 captions, 3 report keys)

- **Item Sale** -> `ItemSale`
  - report cols: ['Item', 'Qty', 'Amount']
  - sql: `SELECT TOP ({L}) ISNULL(Item,''),SUM(ISNULL(Qty,0)),SUM(ISNULL(Amount,0)) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY Item ORDER BY SUM(ISNULL(Amount,0)) DESC`
- **Item Wise Sale** -> `ItemWiseSale`
  - report cols: ['Item', 'Qty', 'Amount']
  - sql: `SELECT TOP ({L}) ISNULL(Item,''),SUM(ISNULL(Qty,0)),SUM(ISNULL(Amount,0)) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY Item ORDER BY SUM(ISNULL(Amount,0)) DESC`
- **Item Wise Sale (Hall)** -> `ItemWiseSaleHall`
  - report cols: ['Item', 'Qty', 'Amount']
  - sql: `SELECT TOP ({L}) ISNULL(Item,''),SUM(ISNULL(Qty,0)),SUM(ISNULL(Amount,0)) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY Item ORDER BY SUM(ISNULL(Amount,0)) DESC`
- **Item Wise Sales Report** -> `ItemWiseSale`
  - report cols: ['Item', 'Qty', 'Amount']
  - sql: `SELECT TOP ({L}) ISNULL(Item,''),SUM(ISNULL(Qty,0)),SUM(ISNULL(Amount,0)) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY Item ORDER BY SUM(ISNULL(Amount,0)) DESC`

### Missing: LogSite_Code  (3 captions, 3 report keys)

- **Company Detail** -> `company_detail`
  - report cols: ['CompCode', 'CompanyName', 'ShortName', 'Address1', 'Address2', 'Address3', 'City', 'Pin', 'Phone', 'Fax', 'Email', 'GSTIN', 'PAN', 'CST', 'LST', 'ContactPerson', 'ContactTitle', 'CompanyType', 'Active']
  - sql: `SELECT TOP ({L}) CompCode, Comp_Name, SName, Add1, Add2, Add3, City, Pin, Phone, Fax, EMail, GSTIN, PANNo, CSTNo, LSTNo, ConPerson, ConPrefix, CompanyType, ActiveYN FROM Company WHERE (LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO') ORDER BY CompCode`
- **Company Master List** -> `company_list`
  - report cols: ['CompCode', 'CompanyName', 'ShortName', 'City', 'State', 'Phone', 'Active']
  - sql: `SELECT TOP ({L}) CompCode, Comp_Name, SName, City, State, Phone, ActiveYN FROM Company WHERE (LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO') ORDER BY CompCode`
- **User Master List** -> `user_master_list`
  - report cols: ['UserName', 'FullName', 'ShortName', 'Active', 'GodCode', 'FloorCode', 'AllowDateChange', 'BackColor']
  - sql: `SELECT TOP ({L}) USER_NAME, LABEL, ShortName, ActiveYN, GodCode, FloorCode, AllowDtChng, BackColor FROM UserMast WHERE (LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO') ORDER BY USER_NAME`

### Missing: Covers  (3 captions, 2 report keys)

- **Cover Analysis** -> `CoverAnalysis`
  - report cols: ['Date', 'Covers', 'NetAmt', 'PerCover']
  - sql: `SELECT TOP ({L}) Vdate,SUM(ISNULL(Covers,0)),SUM(NetAmt),CASE WHEN SUM(ISNULL(Covers,0))>0 THEN SUM(NetAmt)/SUM(ISNULL(Covers,0)) ELSE 0 END FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate ORDER BY Vdate`
- **Cover Analysis Report** -> `CoverAnalysis`
  - report cols: ['Date', 'Covers', 'NetAmt', 'PerCover']
  - sql: `SELECT TOP ({L}) Vdate,SUM(ISNULL(Covers,0)),SUM(NetAmt),CASE WHEN SUM(ISNULL(Covers,0))>0 THEN SUM(NetAmt)/SUM(ISNULL(Covers,0)) ELSE 0 END FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate ORDER BY Vdate`
- **Sal Reg Per Cover** -> `SalRegPerCover`
  - report cols: ['Vdate', 'Outlet', 'Covers', 'NetAmt', 'PerCover']
  - sql: `SELECT TOP ({L}) Vdate,RestCode,ISNULL(Covers,0),SUM(NetAmt),CASE WHEN ISNULL(Covers,0)>0 THEN SUM(NetAmt)/Covers ELSE 0 END FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate,RestCode,Covers ORDER BY Vdate`

### Missing: Discount  (3 captions, 3 report keys)

- **Discount Party Wise Register** -> `DiscountPartyWiseReg`
  - report cols: ['Party', 'Bills', 'DiscAmt']
  - sql: `SELECT TOP ({L}) ISNULL(NULLIF(Party,''),'(Cash)'),COUNT(*),SUM(ISNULL(Discount,0)) FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY Party ORDER BY SUM(ISNULL(Discount,0)) DESC`
- **Discount Register** -> `DiscountReg`
  - report cols: ['Vdate', 'DocId', 'Party', 'DiscAmt', 'User']
  - sql: `SELECT TOP ({L}) Vdate,DocId,ISNULL(NULLIF(Party,''),'' ),ISNULL(Discount,0),ISNULL(U_Name,'') FROM Sale1 WHERE ISNULL(Discount,0)>0 AND Vdate BETWEEN ? AND ? ORDER BY Vdate`
- **Discount Summary** -> `DiscountSumm`
  - report cols: ['Vdate', 'Bills', 'DiscAmt']
  - sql: `SELECT TOP ({L}) Vdate,COUNT(*),SUM(ISNULL(Discount,0)) FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate ORDER BY Vdate`

### Missing: Party  (3 captions, 2 report keys)

- **Member Tax Report** -> `MemTaxReport`
  - report cols: ['Party', 'Taxable', 'TaxAmt']
  - sql: `SELECT TOP ({L}) ISNULL(Party,''),SUM(Taxable),SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY Party ORDER BY SUM(TaxAmt) DESC`
- **Settlement  Report** -> `SettleRepHall`
  - report cols: ['Bill_No', 'Bill_Date', 'Party', 'BillAmt', 'SettMode', 'SettAmt']
  - sql: `SELECT TOP ({L}) Bill_No,Bill_Date,ISNULL(Party,''),BillAmt,ISNULL(SettMode,''),SettAmt FROM FOMBillDetails WHERE Bill_Date BETWEEN ? AND ? ORDER BY Bill_Date`
- **Settlement Report (Hall)** -> `SettleRepHall`
  - report cols: ['Bill_No', 'Bill_Date', 'Party', 'BillAmt', 'SettMode', 'SettAmt']
  - sql: `SELECT TOP ({L}) Bill_No,Bill_Date,ISNULL(Party,''),BillAmt,ISNULL(SettMode,''),SettAmt FROM FOMBillDetails WHERE Bill_Date BETWEEN ? AND ? ORDER BY Bill_Date`

### Missing: Status  (2 captions, 1 report keys)

- **Del/Unset Bill** -> `DelBillUnsetBill`
  - report cols: ['DocId', 'Vdate', 'Outlet', 'NetAmt', 'Status']
  - sql: `SELECT TOP ({L}) DocId,Vdate,RestCode,NetAmt,ISNULL(Status,'') FROM Sale1 WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate`
- **Deleted Unsettled Bill** -> `DelBillUnsetBill`
  - report cols: ['DocId', 'Vdate', 'Outlet', 'NetAmt', 'Status']
  - sql: `SELECT TOP ({L}) DocId,Vdate,RestCode,NetAmt,ISNULL(Status,'') FROM Sale1 WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate`

### Missing: Item, ItemGroup  (2 captions, 1 report keys)

- **Group Wise Sale** -> `ItemWiseGroupWiseSaleReport`
  - report cols: ['ItemGroup', 'Item', 'Qty', 'Amount']
  - sql: `SELECT TOP ({L}) ISNULL(ItemGroup,''),ISNULL(Item,''),SUM(ISNULL(Qty,0)),SUM(ISNULL(Amount,0)) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY ItemGroup,Item ORDER BY ItemGroup,SUM(ISNULL(Amount,0)) DESC`
- **Item Wise Group Wise Sale Report** -> `ItemWiseGroupWiseSaleReport`
  - report cols: ['ItemGroup', 'Item', 'Qty', 'Amount']
  - sql: `SELECT TOP ({L}) ISNULL(ItemGroup,''),ISNULL(Item,''),SUM(ISNULL(Qty,0)),SUM(ISNULL(Amount,0)) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY ItemGroup,Item ORDER BY ItemGroup,SUM(ISNULL(Amount,0)) DESC`

### Missing: ChkInDate, RoomRevenue  (2 captions, 1 report keys)

- **Monthly Return** -> `MonthlyStatisticalReturn`
  - report cols: ['Month', 'Arrivals', 'Departures', 'RoomRevenue', 'TotalRevenue']
  - sql: `SELECT TOP ({L}) CONVERT(VARCHAR(7),Vdate,120),COUNT(CASE WHEN ChkInDate=Vdate THEN 1 END),COUNT(CASE WHEN DepDate=Vdate THEN 1 END),SUM(RoomRevenue),SUM(RoomRevenue+OtherRevenue) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY CONVERT(VARCHAR(7),Vdate,120) ORDER BY CONVERT(VARCHAR(7),Vdate,120)`
- **Monthly Statistical Return** -> `MonthlyStatisticalReturn`
  - report cols: ['Month', 'Arrivals', 'Departures', 'RoomRevenue', 'TotalRevenue']
  - sql: `SELECT TOP ({L}) CONVERT(VARCHAR(7),Vdate,120),COUNT(CASE WHEN ChkInDate=Vdate THEN 1 END),COUNT(CASE WHEN DepDate=Vdate THEN 1 END),SUM(RoomRevenue),SUM(RoomRevenue+OtherRevenue) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY CONVERT(VARCHAR(7),Vdate,120) ORDER BY CONVERT(VARCHAR(7),Vdate,120)`

### Missing: PlanCode  (2 captions, 1 report keys)

- **Plan Report** -> `PlanReport`
  - report cols: ['PlanCode', 'Folios', 'Nights']
  - sql: `SELECT TOP ({L}) ISNULL(NULLIF(PlanCode,''),'(None)'),COUNT(*),SUM(ISNULL(NoDays,0)) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY PlanCode ORDER BY COUNT(*) DESC`
- **Room Wise Plan Detail** -> `PlanReport`
  - report cols: ['PlanCode', 'Folios', 'Nights']
  - sql: `SELECT TOP ({L}) ISNULL(NULLIF(PlanCode,''),'(None)'),COUNT(*),SUM(ISNULL(NoDays,0)) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY PlanCode ORDER BY COUNT(*) DESC`

### Missing: TableNo  (2 captions, 1 report keys)

- **Table wise Sale** -> `TableWiseSale`
  - report cols: ['Table', 'Bills', 'NetAmt']
  - sql: `SELECT TOP ({L}) ISNULL(TableNo,''),COUNT(*),SUM(NetAmt) FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY TableNo ORDER BY SUM(NetAmt) DESC`
- **Table Wise Sale** -> `TableWiseSale`
  - report cols: ['Table', 'Bills', 'NetAmt']
  - sql: `SELECT TOP ({L}) ISNULL(TableNo,''),COUNT(*),SUM(NetAmt) FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY TableNo ORDER BY SUM(NetAmt) DESC`

### Missing: ActiveYN  (1 captions, 1 report keys)

- **23 Day Room Type Availability Forecast** -> `RoomTypeAvailForecast23`
  - report cols: ['Date', 'RoomType', 'TypeName', 'TotalRooms', 'OccupiedRooms', 'AvailableRooms', 'OccupancyPct']
  - sql: `WITH Dates AS (SELECT CAST(? AS date) AS d UNION ALL SELECT DATEADD(day,1,d) FROM Dates WHERE d < ?), TypeRooms AS (SELECT rc.Code AS RoomType, rc.Name AS TypeName, COUNT(*) AS cnt FROM RoomMast rm JOIN RoomCat rc ON rc.Code = rm.RoomCat WHERE rm.Site_Code = 'KK' AND rm.ActiveYN = 'Y' AND rc.ActiveYN = 'Y' GROUP BY rc.Code, rc.Name) SELECT d, tr.RoomType, tr.TypeName, tr.cnt AS TotalRooms, (SELECT COUNT(*) FROM RoomOcc o JOIN RoomMast rm2 ON rm2.Code = o.RoomNo WHERE rm2.RoomCat = tr.RoomType AND o.ChkInDate <= d AND ISNULL(o.ChkOutDate,'9999-12-31') > d) AS OccupiedRooms, tr.cnt - (SELECT COUNT(*) FROM RoomOcc o JOIN RoomMast rm2 ON rm2.Code = o.RoomNo WHERE rm2.RoomCat = tr.RoomType AND o.ChkInDate <= d AND ISNULL(o.ChkOutDate,'9999-12-31') > d) AS AvailableRooms, CASE WHEN tr.cnt > 0 THEN CAST((SELECT COUNT(*) FROM RoomOcc o JOIN RoomMast rm2 ON rm2.Code = o.RoomNo WHERE rm2.RoomCat = tr.RoomType AND o.ChkInDate <= d AND ISNULL(o.ChkOutDate,'9999-12-31') > d) * 100.0 / tr.cnt AS DECIMAL(5,2)) ELSE 0 END AS OccupancyPct FROM Dates CROSS JOIN TypeRooms tr ORDER BY d, tr.RoomType OPTION (MAXRECURSION 0)`

### Missing: ChkInDate  (1 captions, 1 report keys)

- **AMR Morning Report** -> `AMRMorningReport`
  - report cols: ['Date', 'Arrivals', 'Departures', 'InHouse']
  - sql: `SELECT TOP ({L}) Vdate,COUNT(DISTINCT CASE WHEN ChkInDate=Vdate THEN DocId END),COUNT(DISTINCT CASE WHEN DepDate=Vdate THEN DocId END),COUNT(DISTINCT CASE WHEN ChkInDate<=Vdate AND ISNULL(ChkOutDate,'9999-12-31')>Vdate THEN DocId END) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate ORDER BY Vdate`

### Missing: Address, Phone  (1 captions, 1 report keys)

- **Customer Detail** -> `CustomerDetail`
  - report cols: ['Name', 'Address', 'City', 'Phone']
  - sql: `SELECT TOP ({L}) ISNULL(Name,''),ISNULL(Address,''),ISNULL(City,''),ISNULL(Phone,'') FROM GuestFolio WHERE Vdate BETWEEN ? AND ? ORDER BY Name`

### Missing: FunctionType, HallName  (1 captions, 1 report keys)

- **Daily Function Sheet** -> `DailyFuncSheet`
  - report cols: ['Date', 'Hall', 'Function', 'Guests', 'Amount']
  - sql: `SELECT TOP ({L}) Vdate,ISNULL(HallName,''),ISNULL(FunctionType,''),ISNULL(GuestCount,0),ISNULL(Amount,0) FROM HallSale1 WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate`

### Missing: FNBRevenue, RoomRevenue  (1 captions, 1 report keys)

- **Daily Report-II** -> `NightAuditReportI`
  - report cols: ['Date', 'RoomRevenue', 'FNBRevenue', 'OtherRevenue']
  - sql: `SELECT TOP ({L}) Vdate,SUM(ISNULL(RoomRevenue,0)),SUM(ISNULL(FNBRevenue,0)),SUM(ISNULL(OtherRevenue,0)) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate ORDER BY Vdate`

### Missing: HallName, Item  (1 captions, 1 report keys)

- **Function Wise Item Detail** -> `FunctionWiseItemDetail`
  - report cols: ['Hall', 'Item', 'Qty', 'Amount']
  - sql: `SELECT TOP ({L}) ISNULL(HallName,''),ISNULL(Item,''),ISNULL(Qty,0),ISNULL(Amount,0) FROM HallSale2 WHERE Vdate BETWEEN ? AND ? ORDER BY HallName,Item`

### Missing: Remarks  (1 captions, 1 report keys)

- **House Keeping Report** -> `HouseKeeping`
  - report cols: ['RoomNo', 'RoomType', 'Status', 'Remarks']
  - sql: `SELECT TOP ({L}) o.RoomNo,ISNULL(o.RoomType,''),CASE WHEN o.ChkOutDate IS NULL THEN 'Occupied' ELSE 'Vacant' END,ISNULL(o.Remarks,'') FROM RoomOcc o ORDER BY o.RoomNo`

### Missing: KOTNo, TableNo  (1 captions, 1 report keys)

- **Pending KOT** -> `PendingKot`
  - report cols: ['Vdate', 'KOTNo', 'Table', 'Item', 'Qty']
  - sql: `SELECT TOP ({L}) Vdate,KOTNo,ISNULL(TableNo,''),ISNULL(Item,''),ISNULL(Qty,0) FROM KOT WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate`

### Missing: ItemName, Rate  (1 captions, 1 report keys)

- **PLU File** -> `PLUFile`
  - report cols: ['Item', 'Rate', 'Category']
  - sql: `SELECT TOP ({L}) ISNULL(ItemName,''),ISNULL(Rate,0),ISNULL(ItemGroup,'') FROM ItemMast ORDER BY ItemName`

### Missing: OtherRevenue, RoomRevenue  (1 captions, 1 report keys)

- **Revenue Analysis** -> `RevAnalysis`
  - report cols: ['Date', 'RoomRevenue', 'OtherRevenue', 'TotalRevenue']
  - sql: `SELECT TOP ({L}) Vdate,SUM(ISNULL(RoomRevenue,0)),SUM(ISNULL(OtherRevenue,0)),SUM(ISNULL(RoomRevenue,0)+ISNULL(OtherRevenue,0)) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate ORDER BY Vdate`

### Missing: SysYN  (1 captions, 1 report keys)

- **Room Feature Master List** -> `room_feature_list`
  - report cols: ['Code', 'Name', 'SystemDefined']
  - sql: `SELECT TOP ({L}) Code, Name, CASE WHEN SysYN = 'Y' THEN 'Yes' ELSE 'No' END AS SystemDefined FROM RoomFeature WHERE (LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO') ORDER BY Code`

### Missing: name, value  (1 captions, 1 report keys)

- **System Parameters** -> `system_parameters`
  - report cols: ['Setting', 'Value', 'Type']
  - sql: `SELECT TOP ({L}) c.name AS Setting, CAST(ISNULL(e.[value], '') AS varchar(255)) AS Value, CASE WHEN c.name IN ('Age1','Age2','Age3','Age4','Age5','Age6','Amt1','Amt2','Amt3','Amt4','Amt5','Amt6','FomBillCopies','NCKOTPercentage') THEN 'int' WHEN c.name IN ('TagadaHeader1','TagadaHeader2','TagadaHeader3','TagadaHeader4','TagadaHeader5','TagadaFooter1','TagadaFooter2','TagadaFooter3','TagadaFooter3fa','TagadaFooter4','TagadaFooter5','Bill_Header','Bill_Footer','KOTHeader1','KOTHeader2','KOTHeader3','KOTHeader4','Checkout','CheckoutVar','Variation','VariationBefore','KOTPrinting','KOTPrintEdited','KOTOutletSelection','TaxSummary','TOKENPrint','RcptPrinting','ReservationPrinting','BillPrintingSummerised','FomBillCopies','NCKOTPercentage') THEN 'varchar' WHEN c.name IN ('ArrDateTimeEdit','GRCMandatory','RoomRateEditable','RoomIncTaxEditable','RoomServiceChargeEditable','CreditCardInfoMandatoryYN') THEN 'yn1' WHEN c.name IN ('Checkout','CheckoutVar','Variation','VariationBefore','KOTPrinting','KOTPrintEdited','KOTOutletSelection','TaxSummary','TOKENPrint','RcptPrinting','ReservationPrinting','BillPrintingSummerised','FomBillCopies','NCKOTPercentage') THEN 'str' ELSE 'other' END AS Type FROM sys.columns c LEFT JOIN Enviro e ON c.name = e.name WHERE c.object_id = OBJECT_ID('Enviro') ORDER BY c.column_id`

### Missing: ActiveYN, SundryName  (1 captions, 1 report keys)

- **Tax Master List** -> `tax_master_list`
  - report cols: ['Code', 'TaxName', 'ShortName', 'SundryName', 'LedgerAC', 'PayableAC', 'UnregisteredAC', 'SystemDefined']
  - sql: `SELECT TOP ({L}) Code, Name, ShortName, SundryName, Accode, PayableAC, UnregisteredAC, CASE WHEN ActiveYN = 'Y' THEN 'Yes' ELSE 'No' END AS SystemDefined FROM RevMast WHERE FieldType = 'T' AND (LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO') ORDER BY Code`

## ERROR_BOX with no resolvable report key

- **Call Control Master** -> key=`None` missing Name
- **Cash Card Collection Summary** -> key=`None` missing Vdate
- **Current Balance Updation** -> key=`None` missing CurrBal
- **Interest Ledger** -> key=`None` missing Vtype
- **PLU File (W.Scale)** -> key=`None` missing ItemName, Rate
