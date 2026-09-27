# ==========================================================
# Module: HallBooking
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: BookingInquiry
-- --------------------------------------------
Select Code,PartyName as Name From BookingInquiry
    where LogSite_Code in ('<LogSiteCode>') AND CatType='Indoor'
    order by PartyName;

-- --------------------------------------------
-- Query 2
-- Uses table: BookingInquiry
-- --------------------------------------------
Select Code,PartyName as Name From BookingInquiry
    where LogSite_Code in ('<LogSiteCode>') AND CatType='Outdoor'
    order by PartyName;

-- --------------------------------------------
-- Query 3
-- Uses table: MarketSeg
-- --------------------------------------------
Select Code,Name From MarketSeg
    Where Active<>'No' And LogSite_Code in ('<LogSiteCode>')
    Order by Name;

-- --------------------------------------------
-- Query 4
-- Uses table: VenueMast
-- --------------------------------------------
Select Code,Name From VenueMast
    Where LogSite_Code in ('<LogSiteCode>')
    Order by Name;

-- --------------------------------------------
-- Query 5
-- Uses table: BussSource
-- --------------------------------------------
Select Code,Name From BussSource
    Where Active<>'No' And LogSite_Code in ('<LogSiteCode>')
    Order by Name;

-- --------------------------------------------
-- Query 6
-- Uses table: FunctionType
-- --------------------------------------------
Select Code,Name From FunctionType
    Where LogSite_Code in ('<LogSiteCode>')
    Order by Name;

-- --------------------------------------------
-- Query 7
-- Uses table: SubGroup
-- --------------------------------------------
Select SubCode As Code,Name From SubGroup
    Where LogSite_Code in ('<LogSiteCode>') And Nature='Customer'
    order by Name;

-- --------------------------------------------
-- Query 8
-- Uses table: Subgroup
-- --------------------------------------------
Select SubCode ,Name From Subgroup
    where ActiveYN=1 and (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and CompanyType like ('Travel Agency')
    Order by Name;

-- --------------------------------------------
-- Query 9
-- Uses table: HallSale1
-- --------------------------------------------
SELECT Count(*) FROM HallSale1
    WHERE Vtype='IDC' AND BookDocId='<BookDocId>';

-- --------------------------------------------
-- Query 10
-- Uses table: HallBook
-- --------------------------------------------
Delete From HallBook
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 11
-- Uses table: HallBook1
-- --------------------------------------------
Delete From HallBook1
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 12
-- Uses table: VenueOCC
-- --------------------------------------------
Delete From VenueOCC
    Where FPDocID='<FPDocID>';

-- --------------------------------------------
-- Query 13
-- Uses table: BookingInquiry
-- Uses table: HallBook
-- --------------------------------------------
Select Code,PartyName as Name From BookingInquiry
    where code not in (select InquiryCode from HallBook) and Status='Active'
    order by PartyName;

-- --------------------------------------------
-- Query 14
-- Uses table: BookingInquiry
-- Uses table: HallBook
-- --------------------------------------------
Select Code,PartyName as Name From BookingInquiry
    where LogSite_Code in ('<LogSiteCode>') And code not in (select InquiryCode from HallBook) and Status='Active'
    order by PartyName;

-- --------------------------------------------
-- Query 15
-- Uses table: BookingInquiry
-- Uses table: HallBook
-- --------------------------------------------
Select Code,PartyName as Name From BookingInquiry
    where LogSite_Code In ('<LogSiteCode>') And code not in (select InquiryCode from HallBook) and Status='Active'
    order by PartyName;

-- --------------------------------------------
-- Query 16
-- Uses table: BussSource
-- Uses table: FunctionType
-- Uses table: MarketSeg
-- Uses table: SubGroup
-- --------------------------------------------
SELECT S.*, MarketSeg.Name AS SegmentName, BussSource.Name AS BussSourceName, FunctionType.Name AS EventName, SubGroup.Name as CompanyName, BA.Name as BookingAgentName FROM (((HallBook AS S
    LEFT JOIN MarketSeg ON S.MarketSeg = MarketSeg.Code)
    LEFT JOIN BussSource ON S.BussSource = BussSource.Code)
    LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code)
    LEFT JOIN SubGroup ON S.CompanyCode = SubGroup.SubCode
    LEFT JOIN SubGroup BA ON S.BookingAgent = BA.SubCode
    Where S.Docid='<Docid>';

-- --------------------------------------------
-- Query 17
-- Uses table: HallSale1
-- --------------------------------------------
SELECT VNo FROM HallSale1
    WHERE Vtype='IDC' AND BookDocId='<BookDocId>';

-- --------------------------------------------
-- Query 18
-- Uses table: VenueMast
-- Uses table: VenueOcc
-- --------------------------------------------
Select VC.*,D.Name as VenuName From VenueOcc VC
    Left Join VenueMast D On VC.VenuCode=D.Code
    Where VC.FPDocId='<FPDocId>';

-- --------------------------------------------
-- Query 19
-- Uses table: HallBook
-- --------------------------------------------
Select Distinct DocId,V_Type,V_No From HallBook
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 20
-- Uses table: FunctionType
-- --------------------------------------------
SELECT NAME from FunctionType
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 21
-- Uses table: BussSource
-- --------------------------------------------
SELECT NAME from BussSource
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 22
-- Uses table: MarketSeg
-- --------------------------------------------
SELECT NAME from MarketSeg
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 23
-- Uses table: PayChargeH
-- --------------------------------------------
SELECT ISNULL(Sum(AmtCr),0) FROM PayChargeH
    WHERE VType='AD' AND ContraDocId='<ContraDocId>';

-- --------------------------------------------
-- Query 24
-- Uses table: BussSource
-- Uses table: FunctionType
-- Uses table: MarketSeg
-- Uses table: SubGroup
-- --------------------------------------------
SELECT S.*, MarketSeg.Name AS SegmentName, BussSource.Name AS BussSourceName, FunctionType.Name AS EventName, SubGroup.Name as CompanyName FROM (((HallBook AS S
    LEFT JOIN MarketSeg ON S.MarketSeg = MarketSeg.Code)
    LEFT JOIN BussSource ON S.BussSource = BussSource.Code)
    LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code)
    LEFT JOIN SubGroup ON S.CompanyCode = SubGroup.SubCode
    Where S.Docid='<Docid>';

-- --------------------------------------------
-- Query 25
-- Uses table: SMSEnviro
-- --------------------------------------------
Select BanqBookingMsg,BanqBookingCancelMsg,SendingMessageText from SMSEnviro
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 26
-- Uses table: EmailSMSForward
-- --------------------------------------------
Select TxtMsg,MobileNo from EmailSMSForward
    WHERE LOGSITE_CODE='<LogSiteCode>' And Type='Booking' And Len(MobileNo)>=10 And Len(TxtMsg)>0;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [BookingInquiry]  NOT present in visahl.sql dump (schema unknown)
-- Table [BussSource]  NOT present in visahl.sql dump (schema unknown)
-- Table [EmailSMSForward]  NOT present in visahl.sql dump (schema unknown)
-- Table [FunctionType]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallBook]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallBook1]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallSale1]  NOT present in visahl.sql dump (schema unknown)
-- Table [MarketSeg]  NOT present in visahl.sql dump (schema unknown)
-- Table [PayChargeH]  NOT present in visahl.sql dump (schema unknown)
-- Table [SMSEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Subgroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [VenueMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [VenueOCC]  NOT present in visahl.sql dump (schema unknown)
-- Table [VenueOcc]  NOT present in visahl.sql dump (schema unknown)
