# ==========================================================
# Module: FrmJobScheduler
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: JobSchedule
-- --------------------------------------------
SELECT Schedule_Id Code,ScheduleName Name FROM JobSchedule
    WHERE (LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO')
    ORDER BY ScheduleName;

-- --------------------------------------------
-- Query 2
-- Uses table: JobSchedule
-- --------------------------------------------
SELECT Schedule_Id AS SchCode,ScheduleName AS SchName,Site_Code AS CSite_Code,U_Name AS CU_Name,U_EntDt AS CU_EntDt,U_AE AS CU_AE,Site_Code,LogSite_Code FROM JobSchedule
    WHERE (LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO')
    ORDER BY ScheduleName;

-- --------------------------------------------
-- Query 3
-- Uses table: JobSchedule
-- --------------------------------------------
Delete From JobSchedule
    Where Schedule_Id='<Schedule_Id>';

-- --------------------------------------------
-- Query 4
-- Uses table: JobSchedule
-- --------------------------------------------
SELECT Schedule_Id AS SchCode, ScheduleName AS SchName, Site_Code AS CSite_Code, U_Name AS CU_Name, U_EntDt AS CU_EntDt, U_AE AS CU_AE FROM JobSchedule
    ORDER BY ScheduleName;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [JobSchedule]  NOT present in visahl.sql dump (schema unknown)
