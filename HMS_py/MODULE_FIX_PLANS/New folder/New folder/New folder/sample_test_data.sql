--============================================================================
-- SAMPLE TEST DATA - SSMS me test karne ke liye
-- Pehle ye run karo: visahl.sql ka schema (5 tables) phir ye script.
-- Ye script IDEMPOTENT hai - pehle data delete karta hai, phir insert.
-- Dates September 2016 ke hain (queries ke default dates se match).
--============================================================================

------------------------------------------------------------------ CLEANUP
-- (Optional) purana test data hatao
DELETE FROM Stock   WHERE U_Name = 'TESTUSER';
DELETE FROM Sale1   WHERE U_Name = 'TESTUSER';
DELETE FROM Sale2   WHERE U_Name = 'TESTUSER';
DELETE FROM SunTran WHERE U_Name = 'TESTUSER';
DELETE FROM PayCharge WHERE U_Name = 'TESTUSER';
GO

------------------------------------------------------------------ STOCK
-- 3 items x (1 purchase + 1 issue) + 1 excess-consumption item
-- Items: RICE001 (rice), OIL001 (oil), WHKY001 (whisky - liquor), SUGR001
INSERT INTO Stock (DocId,Sno,Vtype,VNo,Vdate,PartyCode,RestCode,GodownCode,Item,Unit,
                   QtyRec,QtyIss,Rate,Amount,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,VoidYN)
VALUES
-- Purchase bills (QtyRec)
('P0001/1609',1,'PBR',1,'2016-09-02','PARTY01','MAIN','GD1','RICE001','KG', 100,0, 40.0, 4000.0, 5, 200.0,'TESTUSER','2016-09-02','I','N'),
('P0001/1609',2,'PBR',1,'2016-09-02','PARTY01','MAIN','GD1','OIL001', 'LTR',50,0,120.0, 6000.0, 5, 300.0,'TESTUSER','2016-09-02','I','N'),
('P0002/1609',1,'PBR',2,'2016-09-05','PARTY02','MAIN','GD1','WHKY001','BTL', 24,0,850.0,20400.0,28,5712.0,'TESTUSER','2016-09-05','I','N'),
('P0002/1609',2,'PBR',2,'2016-09-05','PARTY02','MAIN','GD1','SUGR001','KG', 80,0, 45.0, 3600.0, 5, 180.0,'TESTUSER','2016-09-05','I','N'),
('P0003/1609',1,'PBR',3,'2016-09-06','PARTY01','MAIN','GD1','ATTA001','KG', 60,0, 35.0, 2100.0, 5, 105.0,'TESTUSER','2016-09-06','I','N'),
('P0003/1609',2,'PBR',3,'2016-09-06','PARTY01','MAIN','GD1','ATTA002','KG', 40,0, 32.0, 1280.0, 5,  64.0,'TESTUSER','2016-09-06','I','N'),
('P0004/1609',1,'PBR',4,'2016-09-07','PARTY02','MAIN','GD1','TEA001', 'KG', 25,0,520.0,13000.0, 5, 650.0,'TESTUSER','2016-09-07','I','N'),
('P0004/1609',2,'PBR',4,'2016-09-07','PARTY02','MAIN','GD1','WINE001','BTL', 12,0,450.0, 5400.0,28,1512.0,'TESTUSER','2016-09-07','I','N'),
('P0004/1609',3,'PBR',4,'2016-09-07','PARTY02','MAIN','GD1','VODKA001','BTL',12,0,600.0, 7200.0,28,1680.0,'TESTUSER','2016-09-07','I','N'),
-- Issues to kitchens/restaurants (QtyIss)
('I0001/1609',1,'MRE',1,'2016-09-06','',        'MAIN','GD1','RICE001','KG',  0,30, 40.0, 1200.0,0,0,'TESTUSER','2016-09-06','I','N'),
('I0001/1609',2,'MRE',1,'2016-09-06','',        'REST1','GD1','OIL001', 'LTR', 0,10,120.0, 1200.0,0,0,'TESTUSER','2016-09-06','I','N'),
('I0002/1609',1,'MRE',2,'2016-09-08','',        'BAR1', 'GD1','WHKY001','BTL',  0, 6,850.0, 5100.0,0,0,'TESTUSER','2016-09-08','I','N'),
('I0002/1609',2,'MRE',2,'2016-09-08','',        'MAIN','GD1','SUGR001','KG',   0,90, 45.0, 4050.0,0,0,'TESTUSER','2016-09-08','I','N'),
('I0004/1609',1,'MRE',4,'2016-09-09','',        'REST1','GD1','ATTA001','KG',  0,20, 35.0,  700.0,0,0,'TESTUSER','2016-09-09','I','N'),
('I0004/1609',2,'MRE',4,'2016-09-09','',        'REST1','GD1','ATTA002','KG',  0,10, 32.0,  320.0,0,0,'TESTUSER','2016-09-09','I','N'),
-- Indent-backed issue (IndentReg ke liye)
('I0003/1609',1,'MRE',3,'2016-09-10','',        'REST1','GD1','RICE001','KG',  0,20, 40.0,  800.0,0,0,'TESTUSER','2016-09-10','I','N');
-- IndentDocId update (IndentReg test ke liye)
GO
UPDATE Stock SET IndentDocId='IND001/1609', IndentSNo=1 WHERE DocId='I0003/1609' AND U_Name='TESTUSER';
-- Purchase receipt QA columns (PurchBill/PurchOrder test)
UPDATE Stock SET ChalQty=100, RecdQty=98, AccQty=96, RejQty=2, RecdUnit='KG' WHERE DocId='P0001/1609' AND Item='RICE001' AND U_Name='TESTUSER';
UPDATE Stock SET ChalQty=50,  RecdQty=50, AccQty=50, RejQty=0, RecdUnit='LTR' WHERE DocId='P0001/1609' AND Item='OIL001' AND U_Name='TESTUSER';
GO

------------------------------------------------------------------ SALE1 (bills)
INSERT INTO Sale1 (DocId,Vtype,VNo,Vdate,RestCode,Total,Taxable,Tax,ServiceCharge,NetAmt,
                   CGST,SGST,IGST,CoverRate,CustName,U_Name,U_EntDt,U_AE)
VALUES
('S0001/1609','SAL',1,'2016-09-06','REST1', 5900.0,5000.0, 900.0, 0.0, 5900.0, 450.0,450.0,0.0, 2,'WALKIN','TESTUSER','2016-09-06','I'),
('S0002/1609','SAL',2,'2016-09-08','BAR1',  12750.0,10000.0,2750.0, 0.0,12750.0,1375.0,1375.0,0.0, 1,'WALKIN','TESTUSER','2016-09-08','I'),
('S0003/1609','SAL',3,'2016-09-10','REST1', 11800.0,10000.0,1800.0,500.0,12300.0, 900.0,900.0,0.0, 4,'COMPANY1','TESTUSER','2016-09-10','I');
GO

------------------------------------------------------------------ SALE2 (tax slabs)
INSERT INTO Sale2 (DocId,Sno,Vtype,Vdate,RestCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE)
VALUES
('S0001/1609',1,'SAL','2016-09-06','REST1','VAT5',  5000.0, 5, 250.0,'TESTUSER','2016-09-06','I'),
('S0001/1609',2,'SAL','2016-09-06','REST1','VAT145', 0.0,14.5,   0.0,'TESTUSER','2016-09-06','I'),
('S0002/1609',1,'SAL','2016-09-08','BAR1', 'VAT28',10000.0,28,2800.0,'TESTUSER','2016-09-08','I'),
('S0003/1609',1,'SAL','2016-09-10','REST1','VAT18',10000.0,18,1800.0,'TESTUSER','2016-09-10','I');
GO

------------------------------------------------------------------ SUNTRAN (ledger)
INSERT INTO SunTran (DocId,Sno,Vtype,VNo,Vdate,PartyCode,SunCode,Amount,BaseAmount,U_Name,U_EntDt,U_AE)
VALUES
('J0001/1609',1,'JRNL',1,'2016-09-30','PARTY01','SUNDR', 4200.0,4200.0,'TESTUSER','2016-09-30','I'),
('J0001/1609',2,'JRNL',1,'2016-09-30','PARTY01','SUNCR', 4200.0,4200.0,'TESTUSER','2016-09-30','I'),
('J0002/1609',1,'JRNL',2,'2016-09-30','PARTY02','SUNDR',26112.0,26112.0,'TESTUSER','2016-09-30','I'),
('J0002/1609',2,'JRNL',2,'2016-09-30','PARTY02','SUNCR',26112.0,26112.0,'TESTUSER','2016-09-30','I');
GO

------------------------------------------------------------------ PAYCHARGE (payments)
INSERT INTO PayCharge (DocId,SNo,Vtype,VNo,Vdate,FolioNo,RoomNo,PayCode,PayType,AmtCr,AmtDr,Bill_No,U_Name,U_EntDt,U_AE)
VALUES
('C0001/1609',1,'RCPT',1,'2016-09-06','FOLIO1','101','CASH','C',5900.0, 0.0,'B0001','TESTUSER','2016-09-06','I'),
('C0002/1609',1,'RCPT',2,'2016-09-08','FOLIO2','102','CASH','C',12750.0,0.0,'B0002','TESTUSER','2016-09-08','I');
GO

--============================================================================
-- EXPECTED RESULTS (in queries se verify karo)
--============================================================================
-- StockInHand: RICE001=100-30-20=50KG, OIL001=50-10=40LTR,
--              WHKY001=24-6=18BTL, SUGR001=80-90=-10KG (negative = ExcessConsumption me aayega)
--              ATTA001=60-20=40KG, ATTA002=40-10=30KG, TEA001=25KG, WINE001=12BTL, VODKA001=12BTL
-- ORDER (StockInHand/StockRegister/StockSumm): ATTA(ATTA001,ATTA002), OIL, RICE, SUGAR, TEA, VODKA, WHISKY, WINE
-- ExcessConsumption: sirf SUGR001 (issue 90 > receipt 80)
-- PurchaseSummary: PARTY01=10000+2100+1280=13380, PARTY02=24000+13000+5400+7200=49600
-- FoodCost: Consumption= (30+20)*40 + 10*120 + 6*850 + 90*45 + 20*35 + 10*32
--           = 2000+1200+5100+4050+700+320 = 13370
--           Sales(REST1+BAR1) = 5900+12750+12300 = 30950
-- ABCAnalysis: WHKY001 top (5100) = A class
--============================================================================
