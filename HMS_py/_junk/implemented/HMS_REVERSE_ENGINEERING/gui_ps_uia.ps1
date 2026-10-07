Add-Type -AssemblyName UIAutomationClient
Add-Type -AssemblyName UIAutomationTypes

$root = [System.Windows.Automation.AutomationElement]::RootElement

# Find all HMS windows
$condition = New-Object System.Windows.Automation.PropertyCondition([System.Windows.Automation.AutomationElement]::NameProperty, "HMS")
$windows = $root.FindAll([System.Windows.Automation.TreeScope]::Children, $condition)

Write-Output "[FOUND] $($windows.Count) HMS windows"

foreach ($win in $windows) {
    Write-Output "  Window: $($win.Current.Name) handle=$($win.Current.NativeWindowHandle)"

    # Find buttons
    $btnCondition = New-Object System.Windows.Automation.PropertyCondition([System.Windows.Automation.AutomationElement]::ControlTypeProperty, [System.Windows.Automation.ControlType]::Button)
    $buttons = $win.FindAll([System.Windows.Automation.TreeScope]::Descendants, $btnCondition)

    Write-Output "  Buttons: $($buttons.Count)"
    foreach ($btn in $buttons) {
        Write-Output "    - $($btn.Current.Name) enabled=$($btn.Current.IsEnabled)"
    }

    # Try to find and click Login button
    foreach ($btn in $buttons) {
        if ($btn.Current.Name -eq "Login") {
            Write-Output "  [FOUND] Login button"
            try {
                $invokePattern = $btn.GetCurrentPattern([System.Windows.Automation.InvokePattern]::Pattern)
                $invokePattern.Invoke()
                Write-Output "  [CLICKED] Login"
                Start-Sleep -Seconds 5
            } catch {
                Write-Output "  [ERR] $($_.Exception.Message)"
            }
        }
    }
}

# Check for main menu
Start-Sleep -Seconds 2
$allWindows = $root.FindAll([System.Windows.Automation.TreeScope]::Children, [System.Windows.Automation.Condition]::TrueCondition)
Write-Output "`n[ALL WINDOWS]"
foreach ($win in $allWindows) {
    $name = $win.Current.Name
    if ($name -and $name -ne "Program Manager") {
        Write-Output "  $name"
    }
}
