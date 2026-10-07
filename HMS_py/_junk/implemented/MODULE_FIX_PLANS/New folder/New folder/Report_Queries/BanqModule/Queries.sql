# ==========================================================
# Module: BanqModule
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: PayChargeH
-- --------------------------------------------
Select P.VNO AS RECTNO,P.VDATE AS RECTDATE P.PAYTYPE AS RECTMODE,P.U_NAME AS UserName,P.CardNo AS CCardNo,P.Cardholder As CCardholder,P.ChqNo As ChqNo,P.ChqDate AS ChqDate,P.ExpDate AS CCExpDate,P.BatchNo As BatchNo,P.AMTCR AS RECTAMT FROM PayChargeH P
    Where VType='AD' AND ContraDocId='<ContraDocId>';

-- --------------------------------------------
-- Query 2
-- Uses table: HallBook
-- Uses table: paychargeH
-- --------------------------------------------
SELECT P.VNO AS RECTNO,P.VDATE AS RECTDATE,P.PAYTYPE AS RECTMODE,P.U_Name As UserName,P.AMTCR AS RECTAMT,P.CardNo AS CCardNo,P.Cardholder As CCardholder,P.ChqNo,P.ChqDate,P.ExpDate AS CCExpDate,P.BatchNo,P.ROOMNO AS ROOMNO,HB.VNO AS BOOKNO,HB.PartyName,P.TxnNo FROM HallBook HB
    LEFT JOIN paychargeH P ON HB.DOCID=P.ContraDOCID
    WHERE P.DOCID IN ('<Param>')
    ORDER BY P.DOCID,P.SNO;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [HallBook]  NOT present in visahl.sql dump (schema unknown)
-- Table [PayChargeH]  NOT present in visahl.sql dump (schema unknown)
-- Table [paychargeH]  NOT present in visahl.sql dump (schema unknown)
