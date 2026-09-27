-- =====================================================================
-- [1] SERIAL KEY - VIEW (SELECT)
-- Company ka serial key / license info dekhne ke liye
-- =====================================================================
SELECT
    C.Comp_Code,
    C.Comp_Name,
    C.Comp_Id,
    C.SerialKeyNo,
    M.CardExpDate                                        AS CardExpDate_DB,
    DATEDIFF(DAY, GETDATE(), M.CardExpDate)              AS DaysToCardExp,
    CASE
        WHEN M.CardExpDate IS NULL THEN 'NO LICENSE'
        WHEN GETDATE() > M.CardExpDate THEN 'EXPIRED'
        WHEN DATEDIFF(DAY, GETDATE(), M.CardExpDate) <= 30 THEN 'EXPIRING SOON'
        ELSE 'ACTIVE'
    END                                                  AS DbLicenseStatus
FROM Company C
CROSS JOIN MemEnviro M;
