#!/usr/bin/env bash
# Test runner v2: mode 1 = full transfer, mode 2 = filtered transfer
set -u

MODE="${1:-full}"

echo "=== [1] Patch config (mode: $MODE) ==="
if [ "$MODE" = "filter" ]; then
    sed -e "s/N'VijayData2627'/N'TestSrcDB'/" \
        -e "s/N'MERA_NAYA_DB'/N'TestDstDB2'/" \
        -e "s/DECLARE @ONLY_TABLES nvarchar(max) = N'';/DECLARE @ONLY_TABLES nvarchar(max) = N'Region, Sale*, Customer';/" \
        Generic_DB_Transfer.sql > tmp_transfer_patched.sql
else
    sed -e "s/N'VijayData2627'/N'TestSrcDB'/" \
        -e "s/N'MERA_NAYA_DB'/N'TestDstDB'/" \
        Generic_DB_Transfer.sql > tmp_transfer_patched.sql
fi
grep -n "DECLARE @SRC_DB\|DECLARE @DEST_DB\|DECLARE @ONLY_TABLES" tmp_transfer_patched.sql

echo ""
echo "=== [2] Concatenate harness + patched script ==="
cat tmp_test_harness.sql > tmp_transfer_test.sql
printf '\n/* ==== TRANSFER SCRIPT (patched, mode=%s) ==== */\n' "$MODE" >> tmp_transfer_test.sql
cat tmp_transfer_patched.sql >> tmp_transfer_test.sql
echo "Combined: $(wc -l < tmp_transfer_test.sql) lines"

echo ""
echo "=== [3] Run via sqlcmd ==="
sqlcmd -S "(local)" -E -f 65001 -i tmp_transfer_test.sql 2>&1
rc=$?
echo ""
echo "sqlcmd exit code: $rc"
exit $rc
