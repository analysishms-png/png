import re

sql = r"SELECT TOP ({L}) l.SubCode, ISNULL(s.Name,'?'), SUM(l.AmtDr), SUM(l.AmtCr), SUM(l.AmtDr) - SUM(l.AmtCr) AS Balance FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode = l.SubCode WHERE l.V_Date BETWEEN ? AND ? GROUP BY l.SubCode, s.Name ORDER BY Balance DESC"

# Test the exact regex from the run function
stripped = re.sub(r"'(?:[^']|'')*'", "''", sql)
print('Stripped:', stripped)
print('Question marks:', stripped.count('?'))

# Test the regex pattern used in run function
pattern = r"'(?:[^']|'')*'"
matches = re.findall(pattern, sql)
print('Matches found:', matches)