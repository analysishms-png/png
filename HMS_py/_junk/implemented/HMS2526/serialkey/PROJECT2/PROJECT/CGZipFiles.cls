VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "CGZipFiles"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Private global_56 As Integer
Private global_64 As Integer
Private global_66 As Integer
Private global_80 As Integer
Private global_74 As Integer

Public Property Get RecurseFolders() 'E0C3B8
  'Data Table: 41D9FC
  loc_E0C3B0: RecurseFolders = (global_56 = 1)
End Sub

Public Property Let RecurseFolders(bRecurse) 'E517E8
  'Data Table: 41D9FC
  loc_E517D9: global_56 = CInt(IIf(bRecurse, 1, 0))
  loc_E517E5: Exit Sub
End Sub

Public Property Get ZipFileName() 'E1260C
  'Data Table: 41D9FC
  loc_E12600: var_88 = global_60
  loc_E12603: ZipFileName = 
End Sub

Public Property Let ZipFileName(sZipFileName) 'E125C4
  'Data Table: 41D9FC
  loc_E125BC: global_60 = sZipFileName
  loc_E125C0: Exit Sub
End Sub

Public Property Get Encrypted() 'E0C088
  'Data Table: 41D9FC
  loc_E0C080: Encrypted = (global_64 = 1)
  loc_E0C086: Exit Sub
End Sub

Public Property Let Encrypted(bEncrypt) 'E51B48
  'Data Table: 41D9FC
  loc_E51B39: global_64 = CInt(IIf(bEncrypt, 1, 0))
  loc_E51B45: Exit Sub
End Sub

Public Property Get IncludeSystemFiles() 'E0C044
  'Data Table: 41D9FC
  loc_E0C03C: IncludeSystemFiles = (global_66 = 1)
End Sub

Public Property Let IncludeSystemFiles(bInclude) 'E5285C
  'Data Table: 41D9FC
  loc_E5284D: global_66 = CInt(IIf(bInclude, 1, 0))
  loc_E52859: Exit Sub
End Sub

Public Property Get ZipFileCount() 'E499F0
  'Data Table: 41D9FC
  Dim var_88 As Long
  Dim Me As Collection
  loc_E499C2: If (global_52 Is Nothing) Then
  loc_E499CA:   var_88 = 0
  loc_E499D0: Else
  loc_E499E7:   var_88 = (Me.Count - 1)
  loc_E499EA: End If
  loc_E499EA: ZipFileCount = var_88
End Sub

Public Property Get RootDirectory() 'E12024
  'Data Table: 41D9FC
  loc_E12018: var_88 = global_68
  loc_E1201B: RootDirectory = 
End Sub

Public Property Let RootDirectory(sRootDir) 'E11F4C
  'Data Table: 41D9FC
  loc_E11F44: global_68 = sRootDir
  loc_E11F48: Exit Sub
End Sub

Public Property Get UpdatingZip() 'E0AE78
  'Data Table: 41D9FC
  loc_E0AE70: UpdatingZip = (global_80 = 1)
End Sub

Public Property Let UpdatingZip(bUpdating) 'E528C8
  'Data Table: 41D9FC
  loc_E528B9: global_80 = CInt(IIf(bUpdating, 1, 0))
  loc_E528C5: Exit Sub
End Sub

Public Function AddFile(sFileName) 'F08C4C
  'Data Table: 41D9FC
  Dim Me As Collection
  loc_F08B79: var_98 = sFileName
  loc_F08B80: On Error Resume Next
  loc_F08B96: var_C0 = Me.Item(var_98)
  loc_F08BB1: If (Len(CStr(var_C0)) = 0) Then
  loc_F08BBB:   Set var_C4 = Err()
  loc_F08BC1:   VCallFPR8
  loc_F08BC9:   On Error GoTo 0
  loc_F08BEA:   Me.Add var_98, var_98, var_C0, var_104
  loc_F08BF9: Else
  loc_F08BFD:   On Error GoTo 0
  loc_F08C28:   Set var_C4 = Err()
  loc_F08C2E:   Call 0.Method_AddFile4 (-2147219503, "CGZip::AddFile", "File is already in Zip List")
  loc_F08C41: End If
  loc_F08C45: AddFile = var_114
End Function

Public Function RemoveFile(sFileName) 'EDD760
  'Data Table: 41D9FC
  Dim Me As Collection
  Dim var_400 As Variant
  loc_EDD6BD: var_98 = sFileName
  loc_EDD6C4: On Error Resume Next
  loc_EDD6F5: If (Len(CStr(Me.Item(var_98))) = 0) Then
  loc_EDD720:   Set var_124 = Err()
  loc_EDD726:   Call 0.Method_RemoveFile4 (-2147219502, "CGZip::RemoveFile", "File is not in Zip List")
  loc_EDD73C: Else
  loc_EDD74E:   Me.Remove(var_98)
  loc_EDD753: End If
  loc_EDD757: RemoveFile = var_100
  loc_EDD75D: var_400 = CVar(var_120) 'String
End Function

Public Function MakeZipFile() 'F8CA0C
  'Data Table: 41D9FC
  Dim var_22C As Long
  Dim var_238 As String
  Dim var_88 As Long
  loc_F8C8E0: On Error Goto loc_F8C999
  loc_F8C8F4: For Each var_228 In global_52
  loc_F8C8FF:   var_238 = CStr(var_228)
  loc_F8C90E:   var_218.0(0).global_0 = var_238
  loc_F8C91E:   var_22C = (var_22C + 1)
  loc_F8C924: Next
  loc_F8C993: MakeZipFile = Proc_8_7_103CB48(CInt(0), global_60, var_218, var_22E, global_56, global_80, 0, global_68)
  loc_F8C999: ' Referenced from: F8C8E0
  loc_F8C99E: var_88 = -99
  loc_F8C9A9: Set var_258 = Err()
  loc_F8C9AF: Call 0.Method_arg_1C (var_25C, Proc_8_7_103CB48(CInt(0), global_60, var_218, var_22E, global_56, global_80, 0, global_68), 0, 0, 0)
  loc_F8C9BC: Set var_260 = Err()
  loc_F8C9C2: Call 0.Method_arg_2C (var_238, 0, 0)
  loc_F8C9E6: Set var_2D4 = Err()
  loc_F8C9EC: Call 0.Method_MakeZipFile4 (var_25C, "CGZipFiles::MakeZipFile", CVar(var_238), var_2B0)
  loc_F8CA05: MakeZipFile = var_2D0
End Function

Public Function GetLastMessage() 'E0B9E0
  'Data Table: 41D9FC
  loc_E0B9D5: var_88 = MemVar_1F967AC
  loc_E0B9D8: GetLastMessage = 
End Function

Public Sub Proc_10_17_E93B54
  'Data Table: 41D9FC
  loc_E93AEE: Set global_52 = New 
  loc_E93B17: Me.Collection.Add "querty", "querty", var_E8, var_108
  loc_E93B2C: global_64 = 0
  loc_E93B34: global_66 = 0
  loc_E93B3D: global_68 = "\"
  loc_E93B46: global_74 = 0
  loc_E93B4E: global_80 = 0
  loc_E93B51: Exit Sub
End Sub

Public Sub Proc_10_18_E12F0C
  'Data Table: 41D9FC
  loc_E12F03: Set global_52 = Nothing
  loc_E12F0A: Exit Sub
End Sub
