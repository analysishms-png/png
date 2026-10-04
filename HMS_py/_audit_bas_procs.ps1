$ErrorActionPreference = 'Stop'
$hms = "C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\implemented\HMS_REVERSE_ENGINEERING\HMS"
$outDir = "C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\_audit"
New-Item -ItemType Directory -Force -Path $outDir | Out-Null

$procRe = [regex]'^\s*(?:(?:Public|Private|Friend|Global)\s+)?(?:Static\s+)?(?:Sub|Function|Property\s+(?:Get|Let|Set))\s+([A-Za-z_][A-Za-z0-9_]*)'

function Get-Procs($file) {
  $res = New-Object System.Collections.Generic.List[string]
  foreach ($line in [System.IO.File]::ReadAllLines($file.FullName)) {
    $m = $procRe.Match($line)
    if ($m.Success) { $res.Add($m.Groups[1].Value) }
  }
  , $res
}

# --- .bas modules (excluding decompiled HMS.bas) ---
$basFiles = Get-ChildItem -Path $hms -Recurse -File -Include *.bas | Group-Object Name | ForEach-Object { $_.Group[0] } | Sort-Object Name
$basRows = New-Object System.Collections.Generic.List[object]
foreach ($f in $basFiles) {
  $procs = Get-Procs $f
  $basRows.Add([PSCustomObject]@{ File = $f.Name; Count = $procs.Count; First = $(if ($procs.Count -gt 0) { $procs[0] } else { '' }) })
}
Write-Output "=== .bas FILES IN RE\HMS (unique names) : $($basFiles.Count) ==="
$basRows | Sort-Object Count -Descending | Format-Table -AutoSize

$totalBasAll = ($basRows | Measure-Object -Property Count -Sum).Sum
$exHms = ($basRows | Where-Object File -ne 'HMS.bas' | Measure-Object -Property Count -Sum).Sum
Write-Output "TOTAL .bas procs (all incl HMS.bas) = $totalBasAll"
Write-Output "TOTAL .bas procs (EXCLUDING HMS.bas) = $exHms"

# --- .frm forms ---
$frmFiles = Get-ChildItem -Path $hms -Recurse -File -Include *.frm | Group-Object Name | ForEach-Object { $_.Group[0] } | Sort-Object Name
$frmTotal = 0; $frmRows = New-Object System.Collections.Generic.List[object]
foreach ($f in $frmFiles) {
  $procs = Get-Procs $f
  $frmTotal += $procs.Count
  $frmRows.Add([PSCustomObject]@{ File = $f.Name; Count = $procs.Count })
}
Write-Output "TOTAL .frm event procs = $frmTotal (across $($frmFiles.Count) unique forms)"

# --- classification of names ---
$allNames = New-Object System.Collections.Generic.List[string]
foreach ($f in $basFiles) { foreach ($n in (Get-Procs $f)) { $allNames.Add($n) } }
$uniq = $allNames | Sort-Object -Unique
$obfRe = [regex]'^(?:Proc_\d+_\d+_[0-9A-F]+|Module\d+_\d+_\d+|[A-Za-z]{1,2}_\d{4,}|loc_[0-9A-F]+)$'
$obf = @($uniq | Where-Object { $obfRe.IsMatch($_) })
$named = @($uniq | Where-Object { -not $obfRe.IsMatch($_) })
Write-Output "UNIQUE .bas proc names = $($uniq.Count)  obf-pattern=$($obf.Count) named=$($named.Count)"
Write-Output "--- sample obfuscated ---"; $obf | Select-Object -First 15 | ForEach-Object { "  $_" }
Write-Output "--- sample named (first 40) ---"; $named | Select-Object -First 40 | ForEach-Object { "  $_" }

$basRows | Export-Csv (Join-Path $outDir "bas_file_counts.csv") -NoTypeInformation -Encoding UTF8
$frmRows | Export-Csv (Join-Path $outDir "frm_file_counts.csv") -NoTypeInformation -Encoding UTF8
$uniq | Out-File (Join-Path $outDir "bas_proc_names.txt") -Encoding UTF8
