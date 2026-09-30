VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "CGUnzipFiles"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Private global_52 As Integer
Private global_54 As Integer
Private global_56 As Integer
Private global_60 As Long
Private global_64 As Integer
Private global_66 As Integer
Private global_68 As Long
Private global_72 As Integer
Private global_74 As Integer
Private global_76 As Integer
Private global_78 As Integer
Private global_80 As Integer
Private global_82 As Integer
Private global_84 As Integer
Private global_88 As Long

Public Property Get ExtractNewer() 'E0BD58
  'Data Table: 41FE38
  loc_E0BD50: ExtractNewer = (global_52 = 1)
End Sub

Public Property Let ExtractNewer(bExtractNewer) 'E52784
  'Data Table: 41FE38
  loc_E52775: global_52 = CInt(IIf(bExtractNewer, 1, 0))
  loc_E52781: Exit Sub
End Sub

Public Property Get SpaceToUnderScore() 'E0BCD0
  'Data Table: 41FE38
  loc_E0BCC8: SpaceToUnderScore = (global_54 = 1)
  loc_E0BCCE: DOC
End Sub

Public Property Let SpaceToUnderScore(bConvert) 'E52718
  'Data Table: 41FE38
  loc_E52709: global_54 = CInt(IIf(bConvert, 1, 0))
  loc_E52715: Exit Sub
End Sub

Public Property Get PromptOverwrite() 'E0AF44
  'Data Table: 41FE38
  loc_E0AF3C: PromptOverwrite = (global_56 = 1)
End Sub

Public Property Let PromptOverwrite(bPrompt) 'E52568
  'Data Table: 41FE38
  loc_E52559: global_56 = CInt(IIf(bPrompt, 1, 0))
  loc_E52565: Exit Sub
End Sub

Public Property Get MessageLevel() 'E03990
  'Data Table: 41FE38
  loc_E03989: MessageLevel = global_60
End Sub

Public Property Let MessageLevel(iLevel) 'E014C8
  'Data Table: 41FE38
  loc_E014C2: global_60 = iLevel
  loc_E014C5: Exit Sub
End Sub

Public Property Get WriteToStdOut() 'E0AF88
  'Data Table: 41FE38
  loc_E0AF80: WriteToStdOut = (global_64 = 1)
End Sub

Public Property Let WriteToStdOut(bWrite) 'E5177C
  'Data Table: 41FE38
  loc_E5176D: global_64 = CInt(IIf(bWrite, 1, 0))
  loc_E51779: Exit Sub
End Sub

Public Property Get TestZip() 'E0AFCC
  'Data Table: 41FE38
  loc_E0AFC4: TestZip = (global_66 = 1)
End Sub

Public Property Let TestZip(bTest) 'E5219C
  'Data Table: 41FE38
  loc_E5218D: global_66 = CInt(IIf(bTest, 1, 0))
  loc_E52199: Exit Sub
End Sub

Public Property Get ExtractList() 'E04D90
  'Data Table: 41FE38
  loc_E04D89: ExtractList = global_68
End Sub

Public Property Let ExtractList(zExType) 'E01F54
  'Data Table: 41FE38
  loc_E01F4E: global_68 = zExType
  loc_E01F51: Exit Sub
End Sub

Public Property Get ExtractOnlyNewer() 'E0B010
  'Data Table: 41FE38
  loc_E0B008: ExtractOnlyNewer = (global_72 = 1)
End Sub

Public Property Let ExtractOnlyNewer(bOnlyNewer) 'E5234C
  'Data Table: 41FE38
  loc_E5233D: global_72 = CInt(IIf(bOnlyNewer, 1, 0))
  loc_E52349: Exit Sub
End Sub

Public Property Get DisplayComment() 'E0B164
  'Data Table: 41FE38
  loc_E0B15C: DisplayComment = (global_74 = 1)
End Sub

Public Property Let DisplayComment(bDisplay) 'E52274
  'Data Table: 41FE38
  loc_E52265: global_74 = CInt(IIf(bDisplay, 1, 0))
  loc_E52271: Exit Sub
End Sub

Public Property Get HonorDirectories() 'E0B0DC
  'Data Table: 41FE38
  loc_E0B0D4: HonorDirectories = (global_76 = 1)
End Sub

Public Property Let HonorDirectories(bHonor) 'E51FEC
  'Data Table: 41FE38
  loc_E51FDD: global_76 = CInt(IIf(bHonor, 1, 0))
  loc_E51FE9: Exit Sub
End Sub

Public Property Get OverWriteFiles() 'E0B120
  'Data Table: 41FE38
  loc_E0B118: OverWriteFiles = (global_78 = 1)
End Sub

Public Property Let OverWriteFiles(bOverWrite) 'E51D64
  'Data Table: 41FE38
  loc_E51D55: global_78 = CInt(IIf(bOverWrite, 1, 0))
  loc_E51D61: Exit Sub
End Sub

Public Property Get ConvertCRtoCRLF() 'E0BE24
  'Data Table: 41FE38
  loc_E0BE1C: ConvertCRtoCRLF = (global_80 = 1)
  loc_E0BE22: DOC
End Sub

Public Property Let ConvertCRtoCRLF(bConvert) 'E51EA8
  'Data Table: 41FE38
  loc_E51E99: global_80 = CInt(IIf(bConvert, 1, 0))
  loc_E51EA5: Exit Sub
End Sub

Public Property Get Verbose() 'E0BD9C
  'Data Table: 41FE38
  loc_E0BD94: Verbose = (global_82 = 1)
End Sub

Public Property Let Verbose(bVerbose) 'E52AE4
  'Data Table: 41FE38
  loc_E52AD5: global_82 = CInt(IIf(bVerbose, 1, 0))
  loc_E52AE1: Exit Sub
End Sub

Public Property Get CaseSensitive() 'E0BDE0
  'Data Table: 41FE38
  loc_E0BDD8: CaseSensitive = (global_84 = 1)
  loc_E0BDDE: DOC
End Sub

Public Property Let CaseSensitive(bCaseSensitive) 'E51A70
  'Data Table: 41FE38
  loc_E51A61: global_84 = CInt(IIf(bCaseSensitive, 1, 0))
  loc_E51A6D: Exit Sub
End Sub

Public Property Get Privilege() 'E03D90
  'Data Table: 41FE38
  loc_E03D89: Privilege = global_88
End Sub

Public Property Let Privilege(zPriv) 'E01A2C
  'Data Table: 41FE38
  loc_E01A26: global_88 = zPriv
  loc_E01A29: Exit Sub
End Sub

Public Property Get ZipFileName() 'E10C74
  'Data Table: 41FE38
  loc_E10C68: var_88 = global_92
  loc_E10C6B: ZipFileName = 
End Sub

Public Property Let ZipFileName(sZipFileName) 'E10C2C
  'Data Table: 41FE38
  loc_E10C24: global_92 = sZipFileName
  loc_E10C28: Exit Sub
End Sub

Public Property Get ExtractDir() 'E10BE4
  'Data Table: 41FE38
  loc_E10BD8: var_88 = global_96
  loc_E10BDB: ExtractDir = 
End Sub

Public Property Let ExtractDir(sExtractDir) 'E10B9C
  'Data Table: 41FE38
  loc_E10B94: global_96 = sExtractDir
  loc_E10B98: Exit Sub
End Sub

Public Function Unzip(sZipFileName, sExtractDir) 'F67D00
  'Data Table: 41FE38
  Dim var_8C As Long
  loc_F67BD8: On Error Goto loc_F67C94
  loc_F67BE5: If (Len(sZipFileName) > 0) Then
  loc_F67BEE:   global_92 = sZipFileName
  loc_F67BF2: End If
  loc_F67BFC: If (Len(sExtractDir) > 0) Then
  loc_F67C05:   global_96 = sExtractDir
  loc_F67C09: End If
  loc_F67C85: var_8C = Proc_8_14_117FAEC(global_92, global_96, global_52, global_54, global_56, CInt(global_60), global_64, global_66)
  loc_F67C8E: Unzip = var_8C
  loc_F67C94: ' Referenced from: F67BD8
  loc_F67C9C: Set var_A8 = Err()
  loc_F67CA2: Call 0.Method_arg_1C (var_AC, var_8C, CInt(global_68), global_72, global_74)
  loc_F67CAF: Set var_B0 = Err()
  loc_F67CB5: Call 0.Method_arg_2C (var_B4, global_76, global_78)
  loc_F67CD9: Set var_118 = Err()
  loc_F67CDF: Call 0.Method_Unzip4 (var_AC, "CGUnZipFiles::Unzip", CVar(var_B4), var_F4)
  loc_F67CF8: Unzip = var_114
End Function

Public Function GetLastMessage() 'E0B1E8
  'Data Table: 41FE38
  loc_E0B1DD: var_88 = MemVar_1F967AC
  loc_E0B1E0: GetLastMessage = 
End Function

Public Sub Proc_9_36_E91570
  'Data Table: 41FE38
  loc_E914F1: global_52 = 0
  loc_E914F9: global_54 = 0
  loc_E91501: global_56 = 0
  loc_E9150C: global_60 = 2
  loc_E91514: global_64 = 0
  loc_E9151C: global_66 = 0
  loc_E91527: global_68 = 0
  loc_E9152F: global_72 = 0
  loc_E91537: global_74 = 0
  loc_E9153F: global_76 = 1
  loc_E91547: global_78 = 1
  loc_E9154F: global_80 = 0
  loc_E91557: global_82 = 0
  loc_E9155F: global_84 = 1
  loc_E9156A: global_88 = 0
  loc_E9156D: Exit Sub
End Sub
