# ==========================================================
# Module: FrmPlanPackMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: PlanMast
-- --------------------------------------------
Delete From PlanMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: Plan1
-- --------------------------------------------
Delete from Plan1
    where Code='<Code>';

-- --------------------------------------------
-- Query 3
-- Uses table: Plan1
-- --------------------------------------------
Select Count(*) From Plan1
    Where Code='<Code>';

-- --------------------------------------------
-- Query 4
-- Uses table: PlanMast
-- --------------------------------------------
Select * From PlanMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 5
-- Uses table: FixedCharge
-- Uses table: Plan1
-- --------------------------------------------
SELECT Plan1.*,FixedCharge.Name as RevName FROM Plan1
    Left Join FixedCharge on Plan1.ChrgCode=FixedCharge.Code
    WHERE Plan1.Code='<Code>'
    order by FixedCharge.Name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [FixedCharge]  NOT present in visahl.sql dump (schema unknown)
-- Table [Plan1]  NOT present in visahl.sql dump (schema unknown)
-- Table [PlanMast]  NOT present in visahl.sql dump (schema unknown)
