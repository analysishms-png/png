$ErrorActionPreference = 'Stop'
$root = "C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\implemented"
$outDir = "C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\_audit"
New-Item -ItemType Directory -Force -Path $outDir | Out-Null

$procRe = [regex]'^\s*(?:(?:Public|Private|Friend|Global)\s+)?(?:Static\s+)?(?:Sub|Function|Property\s+(?:Get|Let|Set))\s+([A-Za-z_][A-Za-z0-9_]*)'

$trees = @{
  'HMS_REVERSE_ENGINEERING' = Join-Path $root 'HMS_REVERSE_ENGINEERING'
  'HMS2526'                 = Join-Path $root 'HMS2526'
}

$allRows = New-Object System.Collections.Generic.List[object]

foreach ($treeName in $trees.Keys) {
  $treePath = $trees[$treeName]
  $files = Get-ChildItem -Path $treePath -Recurse -File -Include *.frm,*.bas,*.cls
  $procCount = 0
  foreach ($f in $files) {
    $lines = [System.IO.File]::ReadAllLines($f.FullName)
    $inProc = $false
    foreach ($line in $lines) {
      $m = $procRe.Match($line)
      if ($m.Success) {
        $procCount++
        $allRows.Add([PSCustomObject]@{
          Tree = $treeName
          File = $f.Name
          Ext  = $f.Extension
          Proc = $m.Groups[1].Value
        })
      }
    }
  }
  Write-Output ("{0}: files={1} procedures={2}" -f $treeName, $files.Count, $procCount)
}

# Union by File+Proc across trees (dedupe)
$union = $allRows | ForEach-Object { "$($_.File)|$($_.Proc)" } | Sort-Object -Unique
Write-Output "UNION unique (File,Proc) pairs = $($union.Count)"

# Unique procedure names
$names = $allRows | ForEach-Object { $_.Proc } | Sort-Object -Unique
Write-Output "UNIQUE procedure names = $($names.Count)"

# Classify: event procedures (Name_Event pattern with common VB events), named vs obfuscated
$events = @('Click','DblClick','Change','KeyDown','KeyUp','KeyPress','MouseDown','MouseMove','MouseUp','Load','Unload','Resize','Activate','Deactivate','Initialize','Terminate','GotFocus','LostFocus','LostFocus','Validate','Close','Unload','Resize','Paint','Enter','Leave','Timer','Connect','DataArrival','Progress','StateChange','QueryUnload','Unload','Click','Change','SelChange','RowColChange','AfterUpdate','BeforeUpdate','Click','DblClick')
$named = 0; $event = 0; $other = 0
$obfPattern = [regex]'^(?:[A-Z]{1,3}\d{0,2}|sub_|fn_|func_|proc_|_+|[a-z]{1,2}\d+)$|^\$|^\u00'
foreach ($n in $names) {
  if ($obfPattern.IsMatch($n)) { $other++ } else { $named++ }
}
Write-Output "Rough classification: non-obfuscated=$named obfuscated-like=$other"

$allRows | Export-Csv -Path (Join-Path $outDir "vb6_procedures_all.csv") -NoTypeInformation -Encoding UTF8
$names | Out-File -FilePath (Join-Path $outDir "vb6_proc_names.txt") -Encoding UTF8
Write-Output "Wrote $outDir\vb6_procedures_all.csv, vb6_proc_names.txt"
