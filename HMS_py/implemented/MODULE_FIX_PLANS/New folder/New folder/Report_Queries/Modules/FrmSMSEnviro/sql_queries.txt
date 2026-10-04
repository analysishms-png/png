# ==========================================================
# Module: FrmSMSEnviro
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: JobScheduledDetail
-- --------------------------------------------
Select Job_Id,Schedule_Id From JobScheduledDetail
    Where JobName=<JobName> And Schedule_Id=<Schedule_Id>;

-- --------------------------------------------
-- Query 2
-- Uses table: JobScheduledDetail
-- --------------------------------------------
Select IsNull(Max(CAST(SUBSTRING(Job_Id,3,9) AS INT)),0)+1 AS MyCode From JobScheduledDetail
    WHERE SITE_CODE='<SITE_CODE>';

-- --------------------------------------------
-- Query 3
-- Uses table: EmailSMSForward
-- --------------------------------------------
Select IsNull(Max(Id),0)+1 From EmailSMSForward;

-- --------------------------------------------
-- Query 4
-- Uses table: EmailSMSForward
-- --------------------------------------------
UPDATE EmailSMSForward
    SET MobileNo=<MobileNo>
    Where Type='<Type>' And Id=<Id>;

-- --------------------------------------------
-- Query 5
-- Uses table: EmailSMSForward
-- --------------------------------------------
Select Id,Type,MobileNo,TxtMsg From EmailSMSForward S
    Where S.LogSite_Code='<LogSiteCode>' And (FlagType In ('FOM','BANQ') or Departcode='<LogSiteCode>RS')
    ORDER BY S.Id;

-- --------------------------------------------
-- Query 6
-- Uses table: JobSchedule
-- Uses table: JobScheduledDetail
-- --------------------------------------------
Select Top 1 JS.Schedule_Id,JS.ScheduleName From JobScheduledDetail JD
    Inner Join JobSchedule JS On JD.Schedule_Id=JS.Schedule_Id
    Order By JS.ScheduleName;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [EmailSMSForward]  NOT present in visahl.sql dump (schema unknown)
-- Table [JobSchedule]  NOT present in visahl.sql dump (schema unknown)
-- Table [JobScheduledDetail]  NOT present in visahl.sql dump (schema unknown)
