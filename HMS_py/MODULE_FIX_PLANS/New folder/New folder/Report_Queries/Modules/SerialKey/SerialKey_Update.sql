-- =====================================================================
-- [4] SERIAL KEY - UPDATE / APPLY
-- Naya serial key Company table me lagane ke liye.
--   @NewKey me generated/valid key daalo.
-- Ye Comp_Id ko bhi first 10 chars se set karta hai jaisa HMS.bas karta hai.
-- Be CAREFUL: ye existing data ko change karega.
-- =====================================================================
DECLARE @NewKey NVARCHAR(25) = 'f' + NCHAR(182)+NCHAR(207)+NCHAR(212)+NCHAR(199)+NCHAR(201)+NCHAR(199)+NCHAR(54)+NCHAR(53)+NCHAR(56)+NCHAR(56)
-- ^ placeholder: 'Pinaca0588' encode ho kar. Apna real key yahan lagao.

DECLARE @CompCode VARCHAR(10) = '01'   -- jis company me lagana hai

SELECT
    @NewKey               AS ApplyingKey,
    LEFT(@NewKey,10)      AS NewCompId,
    @CompCode             AS CompCode;

-- REAL UPDATE (comment hatao jab sure ho):
-- UPDATE Company
-- SET    SerialKeyNo = @NewKey,
--        Comp_Id     = LEFT(@NewKey, 10)
-- WHERE  Comp_Code  = @CompCode;
