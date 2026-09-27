# ==========================================================
# Module: frmFacilityBillAdv
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: FacilityBill1
-- --------------------------------------------
Select DOcid1 from FacilityBill1
    where Docid1='<Docid1>';

-- --------------------------------------------
-- Query 2
-- Uses table: FacilityBill
-- --------------------------------------------
Delete From FacilityBill
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 3
-- Uses table: FacilityBill1
-- --------------------------------------------
Delete From FacilityBill1
    Where Docid1='<Docid1>';

-- --------------------------------------------
-- Query 4
-- Uses table: FacilityBill2
-- --------------------------------------------
Delete From FacilityBill2
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 5
-- Uses table: FacilityBill1
-- --------------------------------------------
Select Top 1 DocId From FacilityBill1
    Where DocId1='<DocId1>'
    Order By SNo;

-- --------------------------------------------
-- Query 6
-- --------------------------------------------
Select F1.DocId,F1.SNo,S.Name As PartyName,S.Add1,S.Add2,S.Add3,C.CityName,ST.ShortName StateCode,ST.Name StateName,S.PIN,S.Mobile,S.Email,S.GSTIN,S.LegalName,S.TradeName,LM.Name As Location,F.Vno As PartyBillNo,F.Vdate As BillDate,F.DueDate,F.Remark,F1.VType,F1.Vno As FacilityBillNo,FM.Name As Facility,FM.ChargeType,F1.Unit As Qty,F1.UnitRate,F1.Amount,F1.DiscAmt,F1.AppDate,F1.ForPeriod,F1.ToPeriod,FR1.Reading As LReading,Case When ''
    Order by SNo;

-- --------------------------------------------
-- Query 7
-- Uses table: eInvoiceBill1
-- --------------------------------------------
Select Count(*) From eInvoiceBill1
    Where DocId='<DocId>' And Isnull(IRN,'')='';

-- --------------------------------------------
-- Query 8
-- Uses table: eInvoiceBill1
-- --------------------------------------------
Delete From eInvoiceBill1
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 9
-- Uses table: eInvoiceBill2
-- --------------------------------------------
Delete From eInvoiceBill2
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 10
-- Uses table: Locationmast
-- Uses table: Subgroup
-- --------------------------------------------
Select F.*,SubGroup.Name,LM.Name As LcName From ((FacilityBill F
    left join Subgroup on F.PartyCode=Subgroup.subcode)
    left join Locationmast LM on F.LocationCode=LM.Code)
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 11
-- Uses table: FacilityMast
-- Uses table: LocationMast
-- --------------------------------------------
Select F.*,FM.Name as FacilityName,LM.Name As Location From ((FacilityBill1 F
    Left Join FacilityMast FM On F.FacilityCode=FM.Code)
    Left Join LocationMast LM On F.LocationCode=LM.Code)
    Where F.Docid1='<Docid1>';

-- --------------------------------------------
-- Query 12
-- Uses table: FacilityBill1
-- --------------------------------------------
Select * from FacilityBill1
    where Docid1='<Docid1>';

-- --------------------------------------------
-- Query 13
-- Uses table: Facilitybill2
-- --------------------------------------------
Select * from Facilitybill2
    where Docid1='<Docid1>' And SNo=<SNo>;

-- --------------------------------------------
-- Query 14
-- Uses table: RevMast
-- --------------------------------------------
SELECT Sum(S.Amount) AS RevAmt,max(S.SunCode) as SundryCode FROM (SunTranFacility S
    LEFT JOIN RevMast ON S.RevCode = RevMast.Code)
    Where S.SunCode='<LogSiteCode>NET' and DocID='<DocID>'
    Group By S.SunCode;

-- --------------------------------------------
-- Query 15
-- Uses table: Depart
-- Uses table: RevMast
-- Uses table: SundryType
-- --------------------------------------------
SELECT S.Amount AS RevAmt, S.RevCode, S.Vdate AS VDate, R.Name AS Revenue, S.SunCode AS SundryCode, R.ACCode AS ACode, R.FieldType AS FieldType, ST.CalcSign as CSign FROM ((SunTranFacility AS S
    LEFT JOIN RevMast AS R ON S.RevCode = R.Code)
    LEFT JOIN Depart AS D ON S.RestCode = D.Code)
    LEFT JOIN SundryType AS ST ON S.SunAppDate = ST.AppDate AND ST.V_Type=S.Vtype and s.SunCode=st.sundrycode
    WHERE IsNull(S.RevCode,'')<>'' AND S.DocId='<DocId>'
    ORDER BY S.SNo;

-- --------------------------------------------
-- Query 16
-- Uses table: FacilityMast
-- Uses table: LocationFacility
-- --------------------------------------------
Select LocationFacility.*,FacilityMast.ChargeType,FacilityMast.ChargeUnit,FacilityMast.MeterReading from LocationFacility
    inner join FacilityMast on (locationFacility.fccode=FacilityMast.Code)
    where fccode='<fccode>' and lccode='';

-- --------------------------------------------
-- Query 17
-- Uses table: RoundOffSetting
-- --------------------------------------------
SELECT RoundOffType FROM RoundOffSetting
    WHERE ModuleName='Sale Bill';

-- --------------------------------------------
-- Query 18
-- Uses table: RevMast
-- Uses table: TaxStru
-- --------------------------------------------
SELECT TS.Code, TS.TaxCode, RM.Name, TS.Rate,RoundOff FROM TaxStru AS TS
    inner JOIN RevMast AS RM ON (TS.TaxCode = RM.Code)
    Where TS.Code='<Code><Param>'
    ORDER BY SNO DESC;

-- --------------------------------------------
-- Query 19
-- Uses table: Revmast
-- --------------------------------------------
Select DeskCode AS RestCode from Revmast
    where taxstru='<taxstru>';

-- --------------------------------------------
-- Query 20
-- Uses table: RevMast
-- Uses table: TaxStru
-- --------------------------------------------
SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS
    LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code
    Where TS.Code='<Code>';

-- --------------------------------------------
-- Query 21
-- Uses table: RevMast
-- Uses table: SundryType
-- --------------------------------------------
Select RevCode as Code from SundryType
    where v_type in ('FACL') and SundryCode in (Select Sundry from RevMast
    Where Code='<Code>');



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [FacilityBill]  NOT present in visahl.sql dump (schema unknown)
-- Table [FacilityBill1]  NOT present in visahl.sql dump (schema unknown)
-- Table [FacilityBill2]  NOT present in visahl.sql dump (schema unknown)
-- Table [FacilityMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Facilitybill2]  NOT present in visahl.sql dump (schema unknown)
-- Table [LocationFacility]  NOT present in visahl.sql dump (schema unknown)
-- Table [LocationMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Locationmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Revmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoundOffSetting]  NOT present in visahl.sql dump (schema unknown)
-- Table [Subgroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [SundryType]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [eInvoiceBill1]  NOT present in visahl.sql dump (schema unknown)
-- Table [eInvoiceBill2]  NOT present in visahl.sql dump (schema unknown)
