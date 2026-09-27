# ==========================================================
# Module: UserMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: UserMast
-- --------------------------------------------
SELECT *,User_Name as Name,Label as Label,ActiveYN as Active FROM UserMast;

-- --------------------------------------------
-- Query 2
-- Uses table: USERMAST
-- --------------------------------------------
UPDATE USERMAST
    SET user_name=<user_name>,PASSWD=<PASSWD>,Label=<Label>,shortname=<shortname>,BackColor=<BackColor>,ActiveYN=<ActiveYN>
    where user_name='<user_name>';

-- --------------------------------------------
-- Query 3
-- Uses table: USERMAST
-- --------------------------------------------
select user_name as searchcode,User_Name,PASSWD,SHORTNAME,Label,ActiveYN,backcolor FROM USERMAST
    ORDER BY USER_NAME;

-- --------------------------------------------
-- Query 4
-- Uses table: USERMAST
-- --------------------------------------------
select user_name as searchcode,User_Name,PASSWD,SHORTNAME,Label,ActiveYN,backcolor FROM USERMAST
    where user_name='<UserName>'
    ORDER BY USER_NAME;

-- --------------------------------------------
-- Query 5
-- Uses table: USERMAST
-- --------------------------------------------
select * FROM USERMAST
    where user_name ='<user_name>'
    ORDER BY USER_NAME;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [USERMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [UserMast]  NOT present in visahl.sql dump (schema unknown)
