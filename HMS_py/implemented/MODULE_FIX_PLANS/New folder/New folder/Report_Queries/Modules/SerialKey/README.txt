SERIAL KEY CODE - Location Map
================================

The serial key (license key) logic for this HMS/ERP application exists in two places:

1) SerialKey_Validation.bas  ->  HMS.bas  (Proc_4_33_110BCAC, linha 11521-11602)
   Main serial key / license validation routine.
   - Hashes the serial key (Comp_Name based checksum).
   - Decodes the key with Proc_4_28_EE06F8.
   - Compares characters 7-16 against the computed checksum.
   - Reads the first 6 chars as a code word (Hudhud, Pirecy, Pinaca, Platoo,
     Zombia, Albert, Ostric, Legran, Malmal) to set the license expiry date.
   - Shows "Software expired" / "Update Serial Key" messages and ends the app.

2) SerialKey_DecodeHelper.bas ->  HMS.bas  (Proc_4_28_EE06F8, linha 11005-11018)
   Decodes/obfuscates the serial key string used inside the validation.

3) SerialKey_SQL.txt  ->  Modules\frmCompany  (queries.txt / sql_queries.txt)
   SQL that reads/resets/writes the SerialKeyNo column in the Company table,
   plus the "Update Serial Key" and license expiry messages.

4) HMS.bas, linhas 10799-10870  ->  application startup license check block
   Reads Company.SerialKeyNo, checks CardExpDate (license expiry) in MemEnviro,
   warns "Your License Will be Expried within <n> Days", and shows
   "License Have been Expired" / "InComplete License Information" if invalid.
