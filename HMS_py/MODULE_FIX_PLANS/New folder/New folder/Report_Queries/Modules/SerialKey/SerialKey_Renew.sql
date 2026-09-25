-- =====================================================================
-- [5] SERIAL KEY - RENEW LICENSE DATE
-- License expiry (MemEnviro.CardExpDate) ko aage set karne ke liye.
-- NOTE: HMS.bas STARTUP block isi CardExpDate ko hard-check karta hai
--       (HMS.bas:10858). Serial key up to 2033 valid ho sakta hai, par
--       CardExpDate purana ho to app license EXPIRED dikhayega.
-- Ye dono ko aapas me align karne ke liye hai.
-- =====================================================================
SELECT TOP (1) CardExpDate AS OldCardExpDate FROM MemEnviro;

-- Naye license date set karo:
UPDATE MemEnviro
SET    CardExpDate = CONVERT(DATETIME,'20301231',112)   -- nayi expiry date (2030 tak)
WHERE  CardExpDate IS NOT NULL;

-- Verify:
SELECT TOP (1) CardExpDate AS NewCardExpDate FROM MemEnviro;
