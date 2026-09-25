# ==========================================================
# Module: MemberProposedMemInf
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: MemProposedMemInf
-- --------------------------------------------
Delete From MemProposedMemInf
    Where Subcode='<Subcode>' And SNo=<SNo> And Mark='';

-- --------------------------------------------
-- Query 2
-- Uses table: MemProposedMemInf
-- --------------------------------------------
Select Max(SNo) As SNo From MemProposedMemInf
    Where Subcode='<Subcode>';

-- --------------------------------------------
-- Query 3
-- Uses table: MemProposedMemInf
-- --------------------------------------------
Update MemProposedMemInf
    Set SNo=<SNo>
    Where Subcode='<Subcode>' And SNo=<SNo><Param>;

-- --------------------------------------------
-- Query 4
-- Uses table: MemProposedMemInf
-- --------------------------------------------
Select Count(*) From MemProposedMemInf
    where Subcode='<Subcode>' And SNo=<SNo><Param>;

-- --------------------------------------------
-- Query 5
-- Uses table: MemProposedMemInf
-- --------------------------------------------
Delete From MemProposedMemInf
    where Subcode='<Subcode>' And SNo=<SNo><Param>;

-- --------------------------------------------
-- Query 6
-- Uses table: MemberFamily
-- Uses table: SubGroup
-- --------------------------------------------
Select MCG.SNo,MCG.PMemCode,S.Name,S.ConPrefix,S.CardNo,P.PicPath,P.SigPath From ((MemProposedMemInf MCG
    Left join SubGroup S On MCG.PMemCode=S.SubCode)
    Left Join MemberFamily P On MCG.PMemCode= P.Subcode And P.SNo=1)
    Where MCG.SubCode='<SubCode>' And MCG.Mark='' And MCG.SNo=<SNo><Param>;

-- --------------------------------------------
-- Query 7
-- Uses table: MemProposedMemInf
-- --------------------------------------------
Select Max(SNo) As SNo From MemProposedMemInf MCG
    Where MCG.SubCode='<SubCode>' And Mark='';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [MemProposedMemInf]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemberFamily]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
