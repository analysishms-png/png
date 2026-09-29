Add-Type @"
using System;
using System.Runtime.InteropServices;
public class Win32 {
    [DllImport("user32.dll")]
    public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);
    [DllImport("user32.dll")]
    public static extern bool SetForegroundWindow(IntPtr hWnd);
    [DllImport("user32.dll")]
    public static extern bool MoveWindow(IntPtr hWnd, int x, int y, int width, int height, bool repaint);
}
"@

# Find HMS processes
$hmsProcesses = Get-Process | Where-Object { $_.ProcessName -like "*hms*" -or $_.ProcessName -like "*HMS*" }
Write-Output "[FOUND] $($hmsProcesses.Count) HMS processes"

foreach ($proc in $hmsProcesses) {
    $hwnd = $proc.MainWindowHandle
    Write-Output "  Process: $($proc.ProcessName) PID=$($proc.Id) HWND=$hwnd"

    if ($hwnd -ne [IntPtr]::Zero) {
        # Restore window (SW_RESTORE = 9)
        [Win32]::ShowWindow($hwnd, 9) | Out-Null
        Write-Output "  [RESTORED] ShowWindow(SW_RESTORE)"

        # Move to visible area
        [Win32]::MoveWindow($hwnd, 100, 100, 1024, 768, $true) | Out-Null
        Write-Output "  [MOVED] to (100,100) size 1024x768"

        # Set foreground
        [Win32]::SetForegroundWindow($hwnd) | Out-Null
        Write-Output "  [FOREGROUND] SetForegroundWindow"

        Start-Sleep -Seconds 2
    } else {
        Write-Output "  [INFO] No main window handle"
    }
}

# List all windows again
Write-Output "`n[ALL WINDOWS]"
Add-Type -AssemblyName UIAutomationClient
$root = [System.Windows.Automation.AutomationElement]::RootElement
$windows = $root.FindAll([System.Windows.Automation.TreeScope]::Children, [System.Windows.Automation.Condition]::TrueCondition)
foreach ($win in $windows) {
    $name = $win.Current.Name
    if ($name -and $name -ne "Program Manager") {
        Write-Output "  $name"
    }
}
