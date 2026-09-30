'VA: 94E444
Private Declare Function GetOpenFileName Lib "comdlg32.dll" Alias "GetOpenFileNameA" (pOpenfilename As OPENFILENAME) As Long
'VA: 94CACC
Private Declare Sub SHGetPathFromIDListA Lib "Shell32.dll"()
'VA: 94CA7C
Private Declare Sub SHGetSpecialFolderLocation Lib "Shell32.dll"()
'VA: 94C8C8
Private Declare Sub InternetGetConnectedState Lib "wininet.dll"()
'VA: 680B64
Private Declare Sub SerialNo_FromNow Lib "btlock57L.DLL"()
'VA: 680B18
Private Declare Sub Read_Data Lib "btlock57L.DLL"()
'VA: 680AD4
Private Declare Sub Write_Data Lib "btlock57L.DLL"()
'VA: 680A90
Private Declare Sub Read_Guest_PowerSwitch Lib "btlock57L.DLL"()
'VA: 680A40
Private Declare Sub Write_Guest_PowerSwitch Lib "btlock57L.DLL"()
'VA: 6809F8
Private Declare Sub Write_Guest_Card Lib "btlock57L.DLL"()
'VA: 680638
Private Declare Sub Read_Guest_Card Lib "btlock57L.DLL"()
'VA: 680258
Private Declare Sub Reader_Alarm Lib "btlock57L.DLL"()
'VA: 680080
Private Declare Sub Read_Guest_Lift Lib "btlock57L.DLL"()
'VA: 67FEC0
Private Declare Sub Write_Guest_Lift Lib "btlock57L.DLL"()
'VA: 633A20
Private Declare Function SetPixel Lib "gdi32" Alias "SetPixel" (ByVal hdc As Long, ByVal x As Long, ByVal y As Long, ByVal crColor As Long) As Long
'VA: 633844
Private Declare Function GetTempPath Lib "kernel32" Alias "GetTempPathA" (ByVal nBufferLength As Long, ByVal lpBuffer As String) As Long
'VA: 6337FC
Private Declare Function GetHandleInformation Lib "kernel32" Alias "GetHandleInformation" (ByVal hObject As Long, lpdwFlags As Long) As Long
'VA: 633644
Private Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long) As Long
'VA: 63348C
Private Declare Sub SetLayeredWindowAttributes Lib "user32"()
'VA: 6214EC
Private Declare Sub ZpArchive Lib "zip32.dll"()
'VA: 6214A8
Private Declare Sub ZpGetOptions Lib "zip32.dll"()
'VA: 621460
Private Declare Sub ZpSetOptions Lib "zip32.dll"()
'VA: 62142C
Private Declare Sub ZpInit Lib "zip32.dll"()
'VA: 6213DC
Private Declare Sub UzpVersion2 Lib "unzip32.dll"()
'VA: 621398
Private Declare Sub Wiz_SingleEntryUnzip Lib "unzip32.dll"()
'VA: 615EC8
Private Declare Function GetKeyState Lib "user32" Alias "GetKeyState" (ByVal nVirtKey As Long) As Integer
'VA: 615E84
Private Declare Function GetKeyboardLayoutName Lib "user32" Alias "GetKeyboardLayoutNameA" (ByVal pwszKLID As String) As Long
'VA: 615E50
Private Declare Function GetVersionEx Lib "kernel32" Alias "GetVersionExA" (lpVersionInformation As OSVERSIONINFO) As Long
'VA: 615E08
Private Declare Function VkKeyScan Lib "user32" Alias "VkKeyScanA" (ByVal cChar As Byte) As Integer
'VA: 615DC4
Private Declare Sub SendInput Lib "user32"()
'VA: 615C88
Private Declare Function MapVirtualKeyEx Lib "user32" Alias "MapVirtualKeyExA" (ByVal uCode As Long, ByVal uMapType As Long, ByVal dwhkl As Long) As Long
'VA: 60C2A8
Private Declare Function GetCurrentThreadId Lib "kernel32" Alias "GetCurrentThreadId" () As Long
'VA: 60C25C
Private Declare Sub NetMessageBufferSend Lib "Netapi32.dll"()
'VA: 60C20C
Private Declare Function NetWkstaGetInfo Lib "Netapi32.dll" (lpServer As Any, ByVal Level As Long, lpBuffer As Any) As Long
'VA: 60C1C4
Private Declare Sub lstrcpynW Lib "kernel32"()
'VA: 60C180
Private Declare Function lstrcpyn Lib "kernel32" Alias "lstrcpynA" (ByVal lpString1 As String, ByVal lpString2 As String, ByVal iMaxLength As Long) As Long
'VA: 60C140
Private Declare Sub lstrcpyW Lib "kernel32"()
'VA: 60C0FC
Private Declare Sub NetServerEnum Lib "Netapi32.dll"()
'VA: 60C090
Private Declare Function GetUserName Lib "advapi32.dll" Alias "GetUserNameA" (ByVal lpBuffer As String, nSize As Long) As Long
'VA: 60C048
Private Declare Sub lstrlenW Lib "kernel32"()
'VA: 60C004
Private Declare Sub NetApiBufferFree Lib "netapi32"()
'VA: 60BFB8
Private Declare Sub NetUserEnum Lib "netapi32"()
'VA: 60BF64
Private Declare Function RegOpenKey Lib "advapi32.dll" Alias "RegOpenKeyA" (ByVal hKey As Long, ByVal lpSubKey As String, phkResult As Long) As Long
'VA: 60BF20
Private Declare Function SystemParametersInfo Lib "user32" Alias "SystemParametersInfoA" (ByVal uAction As Long, ByVal uParam As Long, ByRef lpvParam As Any, ByVal fuWinIni As Long) As Long
'VA: 60BEE8
Private Declare Function mciSendString Lib "winmm.dll" Alias "mciSendStringA" (ByVal lpstrCommand As String, ByVal lpstrReturnString As String, ByVal uReturnLength As Long, ByVal hwndCallback As Long) As Long
'VA: 60BEA0
Private Declare Function sndPlaySound Lib "winmm.dll" Alias "sndPlaySoundA" (ByVal lpszSoundName As String, ByVal uFlags As Long) As Long
'VA: 60BE4C
Private Declare Function GetCurrentProcessId Lib "kernel32" Alias "GetCurrentProcessId" () As Long
'VA: 60BE00
Private Declare Sub RegisterServiceProcess Lib "kernel32"()
'VA: 60BD9C
Private Declare Function IsWindowEnabled Lib "user32" Alias "IsWindowEnabled" (ByVal hwnd As Long) As Long
'VA: 60BD54
Private Declare Function IsWindowVisible Lib "user32" Alias "IsWindowVisible" (ByVal hwnd As Long) As Long
'VA: 60BD20
Private Declare Function PostMessage Lib "user32" Alias "PostMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
'VA: 60BCD8
Private Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long
'VA: 60BC94
Private Declare Function IsZoomed Lib "user32" Alias "IsZoomed" (ByVal hwnd As Long) As Long
'VA: 60BC50
Private Declare Function IsWindow Lib "user32" Alias "IsWindow" (ByVal hwnd As Long) As Long
'VA: 60BC0C
Private Declare Function IsIconic Lib "user32" Alias "IsIconic" (ByVal hwnd As Long) As Long
'VA: 60BBC8
Private Declare Function IsChild Lib "user32" Alias "IsChild" (ByVal hWndParent As Long, ByVal hwnd As Long) As Long
'VA: 60BB88
Private Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hwnd As Long, ByVal lpString As String, ByVal cch As Long) As Long
'VA: 60964C
Private Declare Function GetWindowTextLength Lib "user32" Alias "GetWindowTextLengthA" (ByVal hwnd As Long) As Long
'VA: 609298
Private Declare Function EnumWindows Lib "user32" (ByVal lpEnumFunc As Long, ByVal lParam As Long) As Long
'VA: 606D84
Private Declare Sub Sleep Lib "kernel32" Alias "Sleep" (ByVal dwMilliseconds As Long)
'VA: 605640
Private Declare Sub InternetGetConnectedStateEx Lib "wininet.dll"()
'VA: 6055DC
Private Declare Function lstrlen Lib "kernel32" Alias "lstrlenA" (ByVal lpString As String) As Long
'VA: 605598
Private Declare Sub inet_ntoa Lib "wsock32.dll"()
'VA: 605554
Private Declare Sub inet_addr Lib "wsock32.dll"()
'VA: 605500
Private Declare Sub GetRTTAndHopCount Lib "iphlpapi.dll"()
'VA: 6054A0
Private Declare Function lstrcpy Lib "kernel32" Alias "lstrcpyA" (ByVal lpString1 As String, ByVal lpString2 As String) As Long
'VA: 60545C
Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (Destination As Any, Source As Any, ByVal Length As Long)
'VA: 605414
Private Declare Sub gethostbyname Lib "wsock32"()
'VA: 605398
Private Declare Sub InternetGetConnectedState Lib "wininet"()
'VA: 605338
Private Declare Sub ShellExecuteA Lib "Shell32.dll"()
'VA: 601FB4
Private Declare Function GetCursorPos Lib "user32" Alias "GetCursorPos" (lpPoint As POINTAPI) As Long
'VA: 5FB88C
Private Declare Function CreateRoundRectRgn Lib "gdi32" Alias "CreateRoundRectRgn" (ByVal X1 As Long, ByVal Y1 As Long, ByVal X2 As Long, ByVal Y2 As Long, ByVal X3 As Long, ByVal Y3 As Long) As Long
'VA: 5FB834
Private Declare Function SetWindowRgn Lib "user32" Alias "SetWindowRgn" (ByVal hWnd As Long, ByVal hRgn As Long, ByVal bRedraw As Boolean) As Long
'VA: 5FB7D0
Private Declare Function RegCloseKey Lib "advapi32.dll" Alias "RegCloseKey" (ByVal hKey As Long) As Long
'VA: 5FB78C
Private Declare Function RegSetValueEx Lib "advapi32.dll" Alias "RegSetValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, lpData As Any, ByVal cbData As Long) As Long         ' Note that if you the lpData parameter as String, you must pass it By Value.
'VA: 5FB744
Private Declare Function RegQueryValueEx Lib "advapi32.dll" Alias "RegQueryValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, lpType As Long, lpData As Any, lpcbData As Long) As Long         ' Note that if you the lpData parameter as String, you must pass it By Value. 
'VA: 5FB6F8
Private Declare Function RegOpenKeyEx Lib "advapi32.dll" Alias "RegOpenKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'VA: 5F7904
Private Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
'VA: 5F78BC
Private Declare Function CallWindowProc Lib "user32" Alias "CallWindowProcA" (ByVal lpPrevWndFunc As Long, ByVal hWnd As Long, ByVal Msg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
'VA: 5F7810
Private Declare Function GetMenuItemCount Lib "user32" Alias "GetMenuItemCount" (ByVal hMenu As Long) As Long
'VA: 5F77C4
Private Declare Function DrawMenuBar Lib "user32" Alias "DrawMenuBar" (ByVal hwnd As Long) As Long
'VA: 5F7780
Private Declare Function RemoveMenu Lib "user32" Alias "RemoveMenu" (ByVal hMenu As Long, ByVal nPosition As Long, ByVal wFlags As Long) As Long
'VA: 5F773C
Private Declare Function GetSystemMenu Lib "user32" Alias "GetSystemMenu" (ByVal hwnd As Long, ByVal bRevert As Long) As Long
'VA: 5F76F4
Private Declare Function GetComputerName Lib "kernel32" Alias "GetComputerNameA" (ByVal lpBuffer As String, nSize As Long) As Long
'VA: 5F6964
Private Declare Function SetWindowPos Lib "user32" Alias "SetWindowPos" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
'VA: 5F6910
Private Declare Sub CreateFieldDefFile Lib "p2smon.dll"()

