$root = "C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\implemented\HMS2526"
$procRe = [regex]'^\s*(?:(?:Public|Private|Friend|Global)\s+)?(?:Static\s+)?(?:Sub|Function|Property\s+(?:Get|Let|Set))\s+([A-Za-z_][A-Za-z0-9_]*)'
$files = Get-ChildItem -Path $root -Recurse -File -Include *.frm,*.bas,*.cls
$rows = @()
foreach ($f in $files) {
  $lines = [System.IO.File]::ReadAllLines($f.FullName)
  $hits = @()
  foreach ($line in $lines) { $m = $procRe.Match($line); if ($m.Success) { $hits += $m.Groups[1].Value } }
  $rows += [PSCustomObject]@{ File = $f.Name; Count = $hits.Count; Sample = ($hits[0..([Math]::Min(4,$hits.Count-1))] -join ',') }
}
Write-Output "=== TOP 15 files by procedure count ==="
$rows | Sort-Object Count -Descending | Select-Object -First 15 | Format-Table -AutoSize -Wrap
Write-Output "=== TOTAL: $(($rows | Measure-Object -Property Count -Sum).Sum) ==="
Write-Output "=== Files with 0 procedures: $(@($rows | Where-Object Count -eq 0).Count) ==="
