VERSION 5.00
Begin VB.Form FrmPartyLocations
  Caption = "Party Locations"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 6480
  ClientHeight = 6555
  LockControls = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 6480
    Height = 420
    TabIndex = 8
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1395
    Top = 870
    Width = 1485
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 30
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1395
    Top = 600
    Width = 4500
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 30
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFC0C0&
    ForeColor = &H80000012&
    Left = 1065
    Top = 2460
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin DataGrid DGSundry
    Left = 6360
    Top = 2400
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin DataGrid DGVType
    Left = 5805
    Top = 1620
    Width = 5055
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin MSHFlexGrid FGrid
    Left = 1395
    Top = 1395
    Width = 5145
    Height = 4275
    TabIndex = 2
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 270
    Top = 6945
    Width = 3375
    Height = 285
    TabIndex = 10
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 270
    Top = 7230
    Width = 3330
    Height = 255
    TabIndex = 9
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "App Date"
    Index = 1
    ForeColor = &HFF0000&
    Left = 225
    Top = 870
    Width = 780
    Height = 240
    TabIndex = 7
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Party Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 225
    Top = 600
    Width = 990
    Height = 240
    TabIndex = 6
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FrmPartyLocations"

Private MasterFormExit As Integer
Private global_92 As Integer
Private global_94 As Integer

Private Sub TopCtrl1_UnknownEvent_A 'E8082C
  'Data Table: 488AF8
  Dim var_94 As TextBox
  loc_E807C8: On Error Goto loc_E80824
  loc_E807EE: Call Proc_326_58_E7C564(Proc_5_1_100EC1C("ADD", Me))
  loc_E807F9: Call Proc_326_56_F1AAB0(global_96)
  loc_E80809: Set var_8C = Me.Txt
  loc_E8080F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_E80817: var_94.SetFocus
  loc_E80823: Exit Sub
  loc_E80824: ' Referenced from: E807C8
  loc_E80824: Proc_6_60_E63754(var_94)
  loc_E80829: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EE8380
  'Data Table: 488AF8
  loc_EE82C4: On Error Goto loc_EE8379
  loc_EE82FE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EE8324:   Call Proc_326_58_E7C564(Proc_5_1_100EC1C("INI", Me))
  loc_EE8337:   Set var_10C = Me.TopCtrl1
  loc_EE833D:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030019(True)
  loc_EE834E:   Set var_10C = Me.TopCtrl1
  loc_EE8354:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030016(False)
  loc_EE8365:   Set var_10C = Me.TopCtrl1
  loc_EE836B:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030017(False)
  loc_EE8373:   Call Proc_326_57_12FA92C(global_96)
  loc_EE8378: End If
  loc_EE8378: Exit Sub
  loc_EE8379: ' Referenced from: EE82C4
  loc_EE8379: Proc_6_60_E63754()
  loc_EE837E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E17E90
  'Data Table: 488AF8
  loc_E17E85: Me.Global.Unload Me
  loc_E17E8D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EF337C
  'Data Table: 488AF8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EF32B0: On Error Goto loc_EF3376
  loc_EF32CA: If (Me.RecordCount <= 0) Then
  loc_EF32D3:   var_B8 = "Information"
  loc_EF32EE:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EF32FE:   Exit Sub
  loc_EF32FF: End If
  loc_EF3307: If (MemVar_1F953B0 = "A") Then
  loc_EF3311:   var_10C = "Select DISTINCT (PL.PrCode+Space(8-len(PL.PrCode))+'**'+Format(PL.AppDate,'dd/mm/yyyy')) AS Code,S.Name As PartyName,Format(PL.AppDate,'dd/mm/yyyy') From (PartyLocation PL Left Join SubGroup S On PL.PrCode=S.SubCode) Where (PL.LOGSITE_CODE='" & MemVar_1F95078
  loc_EF3318:   MemVar_1F950E4 = var_10C & "' or PL.LOGSITE_CODE='HO') Order By (PL.PrCode+Space(8-len(PL.PrCode))+'**'+Format(PL.AppDate,'dd/mm/yyyy'))"
  loc_EF3322: Else
  loc_EF332A:   If (MemVar_1F953B0 = "S") Then
  loc_EF3334:     var_10C = "Select DISTINCT (PL.PrCode+Space(8-len(PL.PrCode))+'**'+Convert(Varchar(11),PL.AppDate,103)) AS Code,S.Name As PartyName,Convert(Varchar(11),PL.AppDate,103) From (PartyLocation PL Left Join SubGroup S On PL.PrCode=S.SubCode) Where (PL.LOGSITE_CODE='" & MemVar_1F95078
  loc_EF333B:     MemVar_1F950E4 = var_10C & "' or PL.LOGSITE_CODE='HO') Order By (PL.PrCode+Space(8-len(PL.PrCode))+'**'+Convert(Varchar(11),PL.AppDate,103))"
  loc_EF3342:   End If
  loc_EF3342: End If
  loc_EF3348: MemVar_1F95120 = Me
  loc_EF3355: Proc_6_126_F1C850("3500,1500", MemVar_1F950E4)
  loc_EF3370: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EF3375: Exit Sub
  loc_EF3376: ' Referenced from: EF32B0
  loc_EF3376: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EF337B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E32F48
  'Data Table: 488AF8
  loc_E32F38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32F40: Call Proc_326_57_12FA92C(global_96)
  loc_E32F45: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E32FA8
  'Data Table: 488AF8
  loc_E32F98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32FA0: Call Proc_326_57_12FA92C(global_96)
  loc_E32FA5: Exit Sub
  loc_E32FA6: Set var_8000 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E33008
  'Data Table: 488AF8
  loc_E32FF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33000: Call Proc_326_57_12FA92C(global_96)
  loc_E33005: Exit Sub
  loc_E33006: Set var_8000 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E33128
  'Data Table: 488AF8
  loc_E33118: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33120: Call Proc_326_57_12FA92C(global_96)
  loc_E33125: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '107F6B4
  'Data Table: 488AF8
  Dim var_A0 As String
  Dim unk_488B0F As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As Variant
  Dim var_136 As Integer
  Dim var_CC As Variant
  loc_107F42C: On Error Goto loc_107F68A
  loc_107F443: var_A0 = "select PL.PrCode, S.Name, PL.LcCode, L.Name as Location, PL.AppDate from ((PartyLocation PL Left Join Subgroup S on PL.PrCode=S.Subcode) Left Join LocationMast L on PL.LcCode=L.Code) Where PL.LogSite_Code='" & MemVar_1F95078
  loc_107F461: unk_488B0F.Execute var_A0 & "' and PL.Site_Code='" & MemVar_1F95070 & "' Order By L.Name", var_CC, -1
  loc_107F46C: Set var_88 = var_D0
  loc_107F486: var_D4 = var_88.RecordCount
  loc_107F494: If (var_D4 = 0) Then
  loc_107F4B0:   MsgBox("No Record Present For Printing", 0, var_F4, var_114, var_134)
  loc_107F4C0:   Exit Sub
  loc_107F4C1: End If
  loc_107F4D7: Set var_D0 = var_88 
  loc_107F4E3: var_136 = CreateFieldDefFile(var_D0, MemVar_1F950B4 & "\PartyLocation.ttx")
  loc_107F4ED: Set var_88 = var_D0
  loc_107F4F3: var_BC = CVar(var_136) 'Integer
  loc_107F4F6: var_98 = var_BC 'Variant
  loc_107F512: var_A0 = MemVar_1F950B4 & "\PartyLocation.RPT"
  loc_107F51B: Call 0.Method_arg_1C (var_A0, var_BC, var_D0)
  loc_107F526: MemVar_1F951E8 = var_D0
  loc_107F541: Call 0.Method_arg_90 (var_D0, var_D4, var_9A, 1)
  loc_107F549: Call 0.Method_arg_24 (var_136, &HFF)
  loc_107F555: For var_13A =  To CInt(var_D4): var_D0 = var_13A 'Integer
  loc_107F56E:   Call 0.Method_arg_90 (var_D0, CLng(var_9A))
  loc_107F576:   Call 0.Method_arg_20 (var_140)
  loc_107F57E:   Call 0.Method_arg_30 (var_A0)
  loc_107F5C4:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_107F5DA:     Call 0.Method_arg_90 (var_D0, CLng(var_9A))
  loc_107F5E2:     Call 0.Method_arg_20 (var_140)
  loc_107F5EA:     Call 0.Method_arg_38 ("'Party Locations'")
  loc_107F5F6:   End If
  loc_107F5F9: Next var_13A 'Integer
  loc_107F617: Call 0.Method_arg_64 (var_D0, CVar(var_88))
  loc_107F61F: Call 0.Method_arg_2C (var_E4)
  loc_107F62D: Call 0.Method_arg_150 (var_104)
  loc_107F638: Call 0.Method_arg_50 (var_A0)
  loc_107F642: Set var_140 = Nothing
  loc_107F65C: Set var_D0 = MemVar_1F951E8 
  loc_107F668: Proc_6_99_1484404(var_D0, 0, var_A0)
  loc_107F673: MemVar_1F951E8 = var_D0
  loc_107F686: Set var_88 = Nothing
  loc_107F689: Exit Sub
  loc_107F68A: ' Referenced from: 107F42C
  loc_107F690: Call 0.Method_arg_50 (var_A0, &HFF)
  loc_107F6A5: Proc_183_57_104B0BC(var_A0, "TopCtrl1_ePrn")
  loc_107F6B1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E22910
  'Data Table: 488AF8
  Dim Me As Recordset15
  loc_E228F7: Me.Requery -1
  loc_E22907: Me.Requery -1
  loc_E2290C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '13A8514
  'Data Table: 488AF8
  Dim var_90 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_124 As String
  Dim var_98 As TextBox
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_194 As Variant
  Dim var_198 As String
  Dim unk_488B0F As Connection15
  Dim var_8C As Recordset15
  Dim var_94 As Variant
  Dim var_9C As String
  Dim var_1CC As String
  Dim var_114 As Variant
  Dim var_D4 As Variant
  Dim var_1D8 As MSHFlexGrid
  Dim var_1B8 As Variant
  Dim var_23C As Variant
  Dim var_36C As Variant
  Dim var_1BC As TextBox
  Dim Me As Recordset15
  loc_13A7C68: On Error Goto loc_13A84BF
  loc_13A7C6F: var_86 = CByte(0) 'Byte
  loc_13A7C7E: Set var_90 = Me.Txt
  loc_13A7C84: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_13A7CAD: If (Proc_6_27_EA61EC(var_94, "Party Name") = 0) Then
  loc_13A7CB7:   Call Txt_GotFocus()
  loc_13A7CBC:   Exit Sub
  loc_13A7CBD: End If
  loc_13A7CC8: Set var_90 = Me.Txt
  loc_13A7CCE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_13A7CD6: var_9C = "App. Date"
  loc_13A7CDF: Set var_98 = var_94
  loc_13A7CF7: If (Proc_6_27_EA61EC(var_98, var_9C) = 0) Then
  loc_13A7D01:   Call Txt_GotFocus()
  loc_13A7D06:   Exit Sub
  loc_13A7D07: End If
  loc_13A7D0A: Call Proc_326_53_FC998C(var_9E, CInt(1))
  loc_13A7D15: If (var_9E = &HFF) Then
  loc_13A7D18:   Exit Sub
  loc_13A7D19: End If
  loc_13A7D3E: For var_B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B4 'Integer
  loc_13A7D6F:   If ((var_88 > 0) And (CLng(var_88) < (CLng(Me.FGrid.Rows) - 1))) Then
  loc_13A7D76:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_13A7D7E:     var_E4 = CVar(CLng(1)) 'Long
  loc_13A7D98:     var_104 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_13A7D9E:     var_114 = Trim(var_104)
  loc_13A7DBA:     If (var_114 = vbNullString) Then
  loc_13A7DD6:       MsgBox("Define Location ", &H40, var_104, var_114, var_134)
  loc_13A7DE6:       Exit Sub
  loc_13A7DE7:     End If
  loc_13A7E26:     Set var_94 = Me.Txt
  loc_13A7E2C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_9C, CVar(CLng(1)), CVar(CLng(var_88)))
  loc_13A7E34:     var_E4 = var_98.Tag
  loc_13A7E46:     var_124 = "Select S.Name As PartyName From (PartyLocation PL Left Join SubGroup S On PL.PrCode=S.SubCode) where PL.ActiveYN='Y' And LcCode='"
  loc_13A7E4E:     var_134 = var_124 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_13A7E57:     var_154 = var_134 & "' And PL.PrCode Not In('" 
  loc_13A7E5E:     var_164 = CVar(var_9C) 'String
  loc_13A7E78:     unk_488B0F.Execute CStr(var_154 & var_164 & "')"), var_1B8, -1
  loc_13A7E83:     Set var_8C = var_1BC
  loc_13A7EBD:     If (var_8C.RecordCount > 0) Then
  loc_13A7EDB:       var_B0 = Me.FGrid.TextMatrix)
  loc_13A7EF6:       var_94 = var_8C.Fields
  loc_13A7EFE:       var_98 = var_94.Item("PartyName")
  loc_13A7F06:       var_104 = CVar(var_98) 'Address
  loc_13A7F24:       var_9C = CStr(var_B0)
  loc_13A7F3C:       var_1CC = var_9C & " Already Asigned to " & Proc_6_38_E69628(var_104, var_B0, CVar(CLng(2)), CVar(CLng(var_88)), var_1BC) & vbCrLf
  loc_13A7F43:       var_114 = CVar(var_1CC & "Please Define New Entry For The Party First") 'String
  loc_13A7F46:       MsgBox(var_114, &H40, var_134, var_154, var_164)
  loc_13A7F70:       Exit Sub
  loc_13A7F71:     End If
  loc_13A7F71:   End If
  loc_13A7F74: Next var_B4 'Integer
  loc_13A7F97: Set var_90 = Me.Txt
  loc_13A7F9D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "Select * From PartyLocation where ActiveYN='Y' And PrCode='")
  loc_13A7FA5: var_B0 = var_94.Tag
  loc_13A7FAE: var_198 = -1 & var_9C
  loc_13A7FBE: unk_488B0F.Execute var_9C & " Already Asigned to " & "'", var_98, 
  loc_13A7FE7: var_1C0 = var_98.RecordCount
  loc_13A7FF5: If (var_1C0 > 0) Then
  loc_13A8006:   Set var_90 = Me.Txt
  loc_13A800C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94)
  loc_13A8014:   var_9C = var_94.Text
  loc_13A8065:   If (MsgBox(CVar("R u Going To Make New Entry For " & var_9C & vbCrLf & "The Previous One Will be Uneffective"), &H141, var_104, var_114, var_134) = 2) Then
  loc_13A8068:     Exit Sub
  loc_13A8069:   End If
  loc_13A8069: End If
  loc_13A8072: unk_488B0F.BeginTrans var_1C0
  loc_13A807B: var_86 = CByte(1) 'Byte
  loc_13A809D: Set var_90 = Me.Txt
  loc_13A80A3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "Update PartyLocation Set ActiveYN='N' where ActiveYN='Y' And PrCode='")
  loc_13A80AB: var_B0 = var_94.Tag
  loc_13A80B4: var_198 = -1 & var_9C
  loc_13A80C4: unk_488B0F.Execute "R u Going To Make New Entry For " & var_9C & "'", var_98, 
  loc_13A8103: For var_1D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_1D4 'Integer
  loc_13A810D:   var_C4 = CVar(CLng(var_88)) 'Long
  loc_13A8115:   var_E4 = CVar(CLng(1)) 'Long
  loc_13A812F:   var_104 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_13A8151:   If CBool(Trim(var_104) <> vbNullString) Then
  loc_13A8162:     Set var_90 = Me.Txt
  loc_13A8168:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C)
  loc_13A8170:     var_E4 = var_94.Tag
  loc_13A8180:     Set var_98 = Me.Txt
  loc_13A8186:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1BC)
  loc_13A8195:     Proc_6_7_F26918(var_104, CVar(var_1BC))
  loc_13A819E:     var_D4 = CVar(CLng(var_88)) 'Long
  loc_13A81B5:     var_164 = Me.FGrid.TextMatrix)
  loc_13A81C5:     Set var_1DC = Me.TopCtrl1
  loc_13A81CB:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_164)
  loc_13A8210:     Proc_6_7_F26918(var_2BC, Date, CVar(CLng(1)))
  loc_13A8229:     var_198 = "Insert Into PartyLocation(PrCode,AppDate,LcCode,ActiveYN,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('"
  loc_13A8261:     var_23C = CVar(var_198 & var_9C & "',") & var_104 & ",'" & CVar(CStr(var_164)) & "','Y','" & IIf((CStr(var_1EC) = "Add"), "A", "E") 
  loc_13A82B3:     var_36C = var_23C & "','" & CVar(MemVar_1F950C8) & "'," & var_2BC & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')" 
  loc_13A82C1:     unk_488B0F.Execute CStr(var_36C), var_38C, -1
  loc_13A831B:   End If
  loc_13A831E: Next var_1D4 'Integer
  loc_13A8329: unk_488B0F.CommitTrans
  loc_13A8332: var_86 = CByte(0) 'Byte
  loc_13A8341: Set var_1D8 = Me.Txt
  loc_13A8347: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_13A835A: Set var_90 = Me.Txt
  loc_13A8360: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94)
  loc_13A8370: var_104 = CVar(var_94.Tag) 'String
  loc_13A8386: Set var_98 = Me.Txt
  loc_13A838C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1BC, var_198)
  loc_13A8394: 8 = var_1BC.Tag
  loc_13A83A1: var_B0 = Space((var_104 - Len(var_198)))
  loc_13A83A9: var_114 = (var_1DC + CVar(var_1BC))
  loc_13A83AD: var_C4 = "**"
  loc_13A83B2: var_134 = (CVar(var_198 & var_94.Tag & "',") + var_C4)
  loc_13A83DD: var_194 = (1 + Format(CVar(var_1DC), "dd/mm/yyyy"))
  loc_13A841E: Me.Requery -1
  loc_13A844B: Me.Find "SearchCode ='" & CStr(CVar(var_198 & var_94.Tag & "',") & var_104 & ",'" & CVar(CStr("dd/mm/yyyy"))) & "'", 0, 1
  loc_13A845B: Set var_90 = Me.TopCtrl1
  loc_13A8461: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_C4)
  loc_13A847A: If (CStr(1) = "Add") Then
  loc_13A847D:   Call TopCtrl1_UnknownEvent_A()
  loc_13A8482:   Exit Sub
  loc_13A8483: End If
  loc_13A8498: var_9C = "INI"
  loc_13A84A6: Call Proc_326_58_E7C564(Proc_5_1_100EC1C(var_9C, Me), global_96)
  loc_13A84B1: Call Proc_326_57_12FA92C(CVar("SearchCode ='" & CStr(CVar(var_198 & var_94.Tag & "',") & var_104 & ",'" & CVar(CStr("dd/mm/yyyy"))) & "'" & var_9C & "',") & var_104)
  loc_13A84BB: Set var_8C = Nothing
  loc_13A84BE: Exit Sub
  loc_13A84BF: ' Referenced from: 13A7C68
  loc_13A84C8: If (CInt(var_86) = 1) Then
  loc_13A84D1:   unk_488B0F.RollbackTrans
  loc_13A84D6: End If
  loc_13A84DE: Set var_90 = Err()
  loc_13A84E4: Call 0.Method_arg_2C (var_9C)
  loc_13A84FD: MsgBox(CVar(var_9C), &H10, var_104, CVar("SearchCode ='" & CStr(CVar(var_198 & var_94.Tag & "',") & var_104 & ",'" & CVar(CStr("dd/mm/yyyy"))) & "'" & var_9C & "',"), CVar("SearchCode ='" & CStr(CVar(var_198 & var_94.Tag & "',") & var_104 & ",'" & CVar(CStr("dd/mm/yyyy"))) & "'" & var_9C & "',") & var_104)
  loc_13A8510: Exit Sub
End Sub

Private Sub DGSundry_UnknownEvent_9 'FBC244
  'Data Table: 488AF8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_128 As TextBox
  loc_FBC0AF: Me.DGSundry.Visible = False
  loc_FBC0CE: If (Me.RecordCount > 0) Then
  loc_FBC0E4:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FBC0EC:   var_E4 = CVar(CLng(1)) 'Long
  loc_FBC11F:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_FBC127:   Set var_128 = Me.FGrid
  loc_FBC12D:   LateIdCallSt
  loc_FBC19F:   Set var_128 = Me.FGrid
  loc_FBC1A5:   LateIdCallSt
  loc_FBC1DE:   var_B0 = Me.Fields.Item("Name")
  loc_FBC1FB:   Set var_B4 = Me.TxtGrid
  loc_FBC201:   Call 0.Method_DGSundry_UnknownEvent_90 (0, var_128, CStr(var_B0.Value), var_128, CVar(CStr(Me.Fields.Item("Name").Value)), CVar(CLng(2)))
  loc_FBC209:   var_128.Text = CVar(CLng(Me.FGrid.Row))
  loc_FBC21F: End If
  loc_FBC228: Set var_A8 = Me.TxtGrid
  loc_FBC22E: Call 0.Method_DGSundry_UnknownEvent_90 (0, var_B0, var_128)
  loc_FBC236: var_B0.SetFocus
  loc_FBC242: Exit Sub
End Sub

Private Sub Form_Load() '1108CA0
  'Data Table: 488AF8
  Dim var_C0 As Variant
  Dim var_88 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  loc_1108950: On Error Goto loc_1108C9A
  loc_1108969: Proc_6_23_DFC5B8(Me, 0)
  loc_110897B: Set var_88 = Me.TopCtrl1
  loc_1108981: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_8001000B("AEDP")
  loc_110898F: Call 0.Method_arg_50 (var_B0)
  loc_110899F: Set var_88 = Me.TopCtrl1
  loc_11089A5: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030007(CVar(var_B0))
  loc_11089B7: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_11089CF: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_11089E6: Me.LblUser.Left = CDbl(13500)
  loc_11089FD: Me.LblUser.Top = CDbl(7800)
  loc_1108A14: Me.LblLDt.Top = CDbl(8160)
  loc_1108A2B: Me.LblLDt.Left = CDbl(13500)
  loc_1108A3D: Set global_100 = New 
  loc_1108A4F: Me.Recordset15.CursorLocation = 3
  loc_1108A79: var_C0 = CVar("Select SubCode As Code,Name From SubGroup Where Nature='Customer' And (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_1108A83: Me.Open var_C0, CVar(MemVar_1F95044), 3
  loc_1108A97: CVarUnk
  loc_1108A9C: VerifyVarObj
  loc_1108AA2: Set var_88 = Me.DGVType
  loc_1108AA8: LateIdStAd
  loc_1108AC0: Set global_104 = New 
  loc_1108AD2: Me.DGVType.CursorLocation = 3
  loc_1108AFC: var_C0 = CVar("Select Code,Name From LocationMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By Name") 'String
  loc_1108B06: Me.Open var_C0, CVar(MemVar_1F95044), 3
  loc_1108B1A: CVarUnk
  loc_1108B1F: VerifyVarObj
  loc_1108B25: Set var_88 = Me.DGSundry
  loc_1108B2B: LateIdStAd
  loc_1108B43: Set global_96 = New 
  loc_1108B55: Me.DGSundry.CursorLocation = 3
  loc_1108B62: If (MemVar_1F953B0 = "A") Then
  loc_1108B83:   var_B0 = "Select DISTINCT (PL.PrCode+Space(8-len(PL.PrCode))+'**'+Format(PL.AppDate,'dd/mm/yyyy')) AS SearchCode,site_code,logsite_code From PartyLocation PL Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_1108B8A:   var_C0 = CVar("Select Code,Name From LocationMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By (PL.PrCode+Space(8-len(PL.PrCode))+'**'+Format(PL.AppDate,'dd/mm/yyyy'))") 'String
  loc_1108B94:   Me.Open var_C0, CVar(MemVar_1F95044), 3
  loc_1108BA2: Else
  loc_1108BAA:   If (MemVar_1F953B0 = "S") Then
  loc_1108BCB:     var_B0 = "Select DISTINCT (PL.PrCode+Space(8-len(PL.PrCode))+'**'+Convert(Varchar(11),PL.AppDate,103)) AS SearchCode,SITE_CODE,LOGSITE_CODE From PartyLocation PL Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_1108BD2:     var_C0 = CVar("Select Code,Name From LocationMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By (PL.PrCode+Space(8-len(PL.PrCode))+'**'+Convert(Varchar(11),PL.AppDate,103))") 'String
  loc_1108BDC:     Me.Open var_C0, CVar(MemVar_1F95044), 3
  loc_1108BE7:   End If
  loc_1108BE7: End If
  loc_1108C0A: Call Proc_326_58_E7C564(Proc_5_1_100EC1C("INI", Me, global_96, 1, -1, 1, -1, Me), global_104, 1, -1)
  loc_1108C1D: Set var_88 = Me.TopCtrl1
  loc_1108C23: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030019(True)
  loc_1108C34: Set var_88 = Me.TopCtrl1
  loc_1108C3A: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030016(False)
  loc_1108C51: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030017(False)
  loc_1108C59: Call Proc_326_52_FD124C(Me.TopCtrl1, global_100)
  loc_1108C5E: Call Proc_326_57_12FA92C(1)
  loc_1108C76: Me.FGrid.Left = CVar(CDbl(1400))
  loc_1108C91: Me.FGrid.Top = CVar(CDbl(1500))
  loc_1108C99: Exit Sub
  loc_1108C9A: ' Referenced from: 1108950
  loc_1108C9A: Proc_6_60_E63754(-1)
  loc_1108C9F: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E66EE4
  'Data Table: 488AF8
  loc_E66E9B: Set global_100 = Nothing
  loc_E66EAD: Set global_96 = Nothing
  loc_E66EBF: Set global_104 = Nothing
  loc_E66ED1: Set global_108 = Nothing
  loc_E66EDD: MasterFormExit = 0
  loc_E66EE0: Exit Sub
End Sub

Private Sub Form_Activate() 'E4BAD0
  'Data Table: 488AF8
  loc_E4BAA0: On Error Goto loc_E4BACA
  loc_E4BAA7: Set var_88 = Me.TopCtrl1
  loc_E4BAAD: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030000()
  loc_E4BAC2: If (CLng(CInt()) = &H2D) Then
  loc_E4BAC5:   Call TopCtrl1_UnknownEvent_15()
  loc_E4BACA:   ' Referenced from: E4BAA0
  loc_E4BACA: End If
  loc_E4BACA: Proc_6_60_E63754()
  loc_E4BACF: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E24C34
  'Data Table: 488AF8
  loc_E24C19: If (MasterFormExit = &HFF) Then
  loc_E24C29:   Me.Global.Unload Me
  loc_E24C31: End If
  loc_E24C31: Exit Sub
  loc_E24C32: Result  End Sub 'Currency
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E279B8
  'Data Table: 488AF8
  loc_E27990: On Error Goto loc_E279B0
  loc_E279A7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E279AF: Exit Sub
  loc_E279B0: ' Referenced from: E27990
  loc_E279B0: Proc_6_60_E63754(Shift)
  loc_E279B5: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_9 'F4B4B4
  'Data Table: 488AF8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4B3AB: Me.DGVType.Visible = False
  loc_F4B3CA: If (Me.RecordCount > 0) Then
  loc_F4B409:   Set var_B4 = Me.Txt
  loc_F4B40F:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4B417:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4B44A:   var_B0 = Me.Fields.Item("Code")
  loc_F4B469:   Set var_B4 = Me.Txt
  loc_F4B46F:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4B477:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4B48D: End If
  loc_F4B498: Set var_A8 = Me.Txt
  loc_F4B49E: Call 0.Method_DGVType_UnknownEvent_90 (CInt(0))
  loc_F4B4A6: var_B0.SetFocus
  loc_F4B4B2: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '1036188
  'Data Table: 488AF8
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Recordset15
  loc_1035F54: Call Proc_326_59_E85158()
  loc_1035F6C: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1035F87: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1035F90: Set var_BC = Me.FGrid
  loc_1035FC6: Set var_104 = Me.TxtGrid
  loc_1035FCC: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_1035FD4: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_1036005: var_110 = CLng(Me.FGrid.Col)
  loc_1036015: If (var_110 = CLng(2)) Then
  loc_1036027:   Set var_A8 = Me.TxtGrid
  loc_103602D:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H23)
  loc_1036035:   var_BC.MaxLength = var_110
  loc_1036082:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1036085:     Exit Sub
  loc_1036086:   End If
  loc_1036099:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10360A1:   var_DC = CVar(CLng(2)) 'Long
  loc_10360D4:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_10360DD:     Me.MoveFirst
  loc_103611D:     Proc_6_17_EAAE40(var_128, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)))
  loc_1036146:     Me.Find CStr("Code=" & var_128), 0, 1
  loc_1036176:     If (Me.EOF = &HFF) Then
  loc_103617F:       Me.MoveFirst
  loc_1036184:     End If
  loc_1036184:   End If
  loc_1036184: End If
  loc_1036184: Exit Sub
  loc_1036185: StAryRecCopy
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '104C660
  'Data Table: 488AF8
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C0 As Variant
  Dim var_94 As DataGrid
  loc_104C404: On Error Goto loc_104C657
  loc_104C411: If (CLng(Shift) = &H1B) Then
  loc_104C421:   Set var_88 = Me.TxtGrid
  loc_104C427:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_104C441:   Set var_94 = Me.TxtGrid
  loc_104C447:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_104C44F:   var_98.Text = var_8C.Tag
  loc_104C46B:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_104C470:   Call Proc_326_59_E85158(arg_14)
  loc_104C479:   Set var_88 = Me.FGrid
  loc_104C496:   Set var_88 = Me.TxtGrid
  loc_104C49C:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_104C4A4:   var_8C.Visible = False
  loc_104C4B0:   Exit Sub
  loc_104C4B1: End If
  loc_104C4D4: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_104C4E3:   Set var_88 = Me.TxtGrid
  loc_104C4E9:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B0)
  loc_104C4F1:   var_AC = var_8C.Left
  loc_104C508:   Me.DGSundry.Left = CVar(var_B0)
  loc_104C522:   Set var_94 = Me.TxtGrid
  loc_104C528:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_104C541:   Set var_88 = Me.TxtGrid
  loc_104C547:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_104C55B:   var_C0 = CVar((var_8C.Top + var_98.Height)) 'Single
  loc_104C56A:   Me.DGSundry.Top = CVar(var_8C.Top)
  loc_104C594:   Set var_98 = Nothing
  loc_104C5CD:   Proc_6_69_134A630(Me.DGSundry, Me.TxtGrid, KeyCode, global_104, Shift, &HFF)
  loc_104C5EB:   If (CLng(Shift) = &HD) Then
  loc_104C5F4:     Call Proc_326_55_10962E0(KeyCode, var_DA, 1, Nothing)
  loc_104C5FF:     If (var_DA = &HFF) Then
  loc_104C647:       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, CByte(3))
  loc_104C657:       ' Referenced from: 104C404
  loc_104C657:     End If
  loc_104C657:   End If
  loc_104C657: End If
  loc_104C657: Proc_6_60_E63754(0, 0, 0)
  loc_104C65C: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EB8DBC
  'Data Table: 488AF8
  loc_EB8D27: Proc_6_58_E06050(arg_10)
  loc_EB8D38: If (KeyAscii = 0) Then
  loc_EB8D5E:   If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_EB8D7D:     If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_EB8D8F:       var_A4 = "Name"
  loc_EB8DAA:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_104, arg_10)
  loc_EB8DB9:     End If
  loc_EB8DB9:   End If
  loc_EB8DB9: End If
  loc_EB8DB9: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EC3124
  'Data Table: 488AF8
  loc_EC3084: On Error Goto loc_EC311D
  loc_EC30AA: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_EC30D0:   If ((Shift <> &HD) And (CBool(Me.DGSundry.Visible) = 0)) Then
  loc_EC30DE:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_EC30F2:     var_A4 = "Name"
  loc_EC310D:     Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_104, Shift)
  loc_EC311C:   End If
  loc_EC311C: End If
  loc_EC311C: Exit Sub
  loc_EC311D: ' Referenced from: EC3084
  loc_EC311D: Proc_6_60_E63754(var_A4, &HFF)
  loc_EC3122: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E2261C
  'Data Table: 488AF8
  Dim arg_10 As Integer
  loc_E22604: If (Cancel = 0) Then
  loc_E2260D:   Call Proc_326_55_10962E0(Cancel, var_88)
  loc_E22616:   arg_10 = Not(var_88)
  loc_E22619: End If
  loc_E22619: Exit Sub
  loc_E2261A: Loop Until arg_10 'do at: E1A5FB
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E538D0
  'Data Table: 488AF8
  loc_E538AA: Set var_88 = Me.Txt
  loc_E538B0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E538BE: Proc_6_74_E23240(var_8C)
  loc_E538CA: Call Proc_326_59_E85158(var_8C)
  loc_E538CF: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F4714C
  'Data Table: 488AF8
  loc_F47046: If (CLng(Shift) = &H1B) Then
  loc_F47049:   Call Proc_326_59_E85158()
  loc_F4704E:   Exit Sub
  loc_F4704F: End If
  loc_F4705D: If (KeyCode = CInt(0)) Then
  loc_F47078:   Set var_9C = Nothing
  loc_F47083:   Set var_98 = Nothing
  loc_F470B1:   Proc_6_69_134A630(Me.DGVType, Me.Txt, KeyCode, global_100, Shift, 0)
  loc_F470C5: End If
  loc_F47100: If ((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGSundry.Visible) = 0)) Then
  loc_F47118:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F47121:     Proc_6_75_E5335C(Shift, arg_14, 1, var_98)
  loc_F47126:   End If
  loc_F4713B:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F47144:     Proc_6_76_E533C8(Shift, arg_14, var_9C)
  loc_F47149:   End If
  loc_F47149: End If
  loc_F47149: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E075D0
  'Data Table: 488AF8
  Dim var_86 As Integer
  loc_E075C3: Proc_6_58_E06050(arg_10)
  loc_E075CB: var_86 = KeyAscii
  loc_E075CE: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EA4C74
  'Data Table: 488AF8
  loc_EA4C06: If (KeyCode = CInt(0)) Then
  loc_EA4C25:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EA4C39:     var_A4 = "Name"
  loc_EA4C5D:     Proc_6_68_12A2818(Me.DGVType, Me.Txt, KeyCode, global_100)
  loc_EA4C70:   End If
  loc_EA4C70: End If
  loc_EA4C70: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4C5C4
  'Data Table: 488AF8
  loc_E4C5A2: Set var_88 = Me.Txt
  loc_E4C5A8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4C5B6: Proc_6_73_E23294(var_8C)
  loc_E4C5C2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '10D3EB0
  'Data Table: 488AF8
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As String
  Dim var_B4 As TextBox
  Dim var_C8 As TextBox
  loc_10D3BB3: var_86 = Cancel
  loc_10D3BBE: If (var_86 = CInt(0)) Then
  loc_10D3BCC:   Set var_8C = Me.Txt
  loc_10D3BD2:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_10D3BDA:   var_98 = "Party Name"
  loc_10D3BFB:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_10D3C09:     Set var_8C = Me.Txt
  loc_10D3C0F:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_10D3C17:     var_90.SetFocus
  loc_10D3C25:     arg_10 = &HFF
  loc_10D3C28:     Exit Sub
  loc_10D3C29:   End If
  loc_10D3C77:   Set var_8C = Me.Txt
  loc_10D3C7D:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_10D3C85:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_10D3C9D:   If (arg_10 Or (var_98 = vbNullString)) Then
  loc_10D3CAD:     Set var_8C = Me.Txt
  loc_10D3CB3:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D3CBB:     var_90.Text = vbNullString
  loc_10D3CD4:     Set var_8C = Me.Txt
  loc_10D3CDA:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D3CE2:     var_90.Tag = vbNullString
  loc_10D3CF1:   Else
  loc_10D3D2C:     Set var_94 = Me.Txt
  loc_10D3D32:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_10D3D3A:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10D3D6D:     var_90 = Me.Fields.Item("Code")
  loc_10D3D8B:     Set var_94 = Me.Txt
  loc_10D3D91:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_10D3D99:     var_B4.Tag = CStr(var_90.Value)
  loc_10D3DAF:   End If
  loc_10D3DB2: Else
  loc_10D3DBA:   If (var_86 = CInt(1)) Then
  loc_10D3DC8:     Set var_8C = Me.Txt
  loc_10D3DCE:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_10D3DF7:     If (Proc_6_27_EA61EC(var_90, "App. Date") = 0) Then
  loc_10D3E05:       Set var_8C = Me.Txt
  loc_10D3E0B:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_10D3E13:       var_90.SetFocus
  loc_10D3E21:       arg_10 = &HFF
  loc_10D3E24:       Exit Sub
  loc_10D3E25:     End If
  loc_10D3E2F:     Set var_8C = Me.Txt
  loc_10D3E35:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D3E55:     Set var_B4 = Me.Txt
  loc_10D3E5B:     Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_10D3E63:     var_C8.Text = Proc_6_33_15125B8(var_90, arg_10)
  loc_10D3E89:     Me.FGrid.Row = 1
  loc_10D3EA4:     Me.FGrid.Col = 2
  loc_10D3EAC:   End If
  loc_10D3EAC: End If
  loc_10D3EAC: Exit Sub
  loc_10D3EAD: ArrayRebase1Var
End Sub

Private Sub FGrid_UnknownEvent_0 'E867A8
  'Data Table: 488AF8
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E8674B: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E8675E: Set var_A8 = Me.TxtGrid
  loc_E86764: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E8676C: var_AC.Visible = False
  loc_E86786: Set var_A8 = Me.TxtGrid
  loc_E8678C: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E86794: var_AC.MaxLength = 0
  loc_E867A0: Call Proc_326_59_E85158()
  loc_E867A5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E67B18
  'Data Table: 488AF8
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E67AD4: Set var_88 = Me.TxtGrid
  loc_E67ADA: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E67AF4: If (var_8C.Visible = 0) Then
  loc_E67B0D:   Me.FGrid.BackColorSel = CVar(CLng(global_84))
  loc_E67B15: End If
  loc_E67B15: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E20530
  'Data Table: 488AF8
  loc_E20527: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E2052F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFE644
  'Data Table: 488AF8
  loc_DFE63C: Call Proc_326_54_E448C0()
  loc_DFE641: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '110A1D4
  'Data Table: 488AF8
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_F8 As Variant
  Dim var_12C As String
  loc_1109E9C: Set var_88 = Me.TopCtrl1
  loc_1109EA2: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_1109EE7: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_1109EF0:   Call Form_KeyDown(Cancel, arg_10)
  loc_1109EF5: End If
  loc_1109EF9: Set var_88 = Me.TopCtrl1
  loc_1109EFF: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_1109F18: If (CStr() = "Browse") Then
  loc_1109F1B:   Exit Sub
  loc_1109F1C: End If
  loc_1109F39: var_C4 = Me.FGrid.Rows
  loc_1109F90: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_1109FA6:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1109FB6:   var_9C = "+{Tab}"
  loc_1109FBC:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_1109FC6:   Cancel = 0
  loc_1109FCC: Else
  loc_1109FD6:   var_B0 = Me.FGrid.Rows
  loc_110A023:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_110A039:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_110A04F:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_110A059:     Cancel = 0
  loc_110A067:     var_B0 = "Save Data"
  loc_110A093:     If (MsgBox("Save Record ?", 4, var_B0, var_C4, var_118) = 6) Then
  loc_110A0AF:       MsgBox(vbNullString, 0, var_B0, var_C4, var_118)
  loc_110A0BF:     End If
  loc_110A0BF:   End If
  loc_110A0BF: End If
  loc_110A0C5: global_92 = Cancel
  loc_110A0EB: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_110A10F: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_110A135:   If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_110A14B:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_110A153:     var_F8 = CVar(CLng(2)) 'Long
  loc_110A158:     var_12C = vbNullString
  loc_110A162:     Set var_A0 = Me.FGrid
  loc_110A168:     LateIdCallSt
  loc_110A18D:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_110A195:     var_F8 = CVar(CLng(1)) 'Long
  loc_110A19A:     var_12C = vbNullString
  loc_110A1A4:     Set var_A0 = Me.FGrid
  loc_110A1AA:     LateIdCallSt
  loc_110A1BC:   End If
  loc_110A1BC: End If
  loc_110A1C2: If (Cancel = &HD) Then
  loc_110A1CA:   global_94 = 0
  loc_110A1CD: End If
  loc_110A1CF: Cancel = 0
  loc_110A1D2: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E10600
  'Data Table: 488AF8
  loc_E105F1: Call FGrid_UnknownEvent_C()
  loc_E105FB: global_94 = 0
  loc_E105FE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'FEC584
  'Data Table: 488AF8
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_FEC3AC: Set var_88 = Me.TopCtrl1
  loc_FEC3B2: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_FEC3CB: If (CStr() = "Browse") Then
  loc_FEC3CE:   Exit Sub
  loc_FEC3CF: End If
  loc_FEC3D3: Set var_88 = Me.TopCtrl1
  loc_FEC3D9: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_FEC3F2: If (CStr() = "Browse") Then
  loc_FEC3F5:   Exit Sub
  loc_FEC3F6: End If
  loc_FEC419: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_FEC420:   Set var_C4 = Me.FGrid
  loc_FEC444:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_FEC471:   Set var_B4 = var_C4
  loc_FEC483:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_FEC4AB:   Set var_88 = Me.TxtGrid
  loc_FEC4B1:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_FEC4B9:   0 = var_B4.Text
  loc_FEC4D2:   If (Len(var_9C) <= 1) Then
  loc_FEC4E1:     Set var_88 = Me.TxtGrid
  loc_FEC4E7:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_FEC4EF:     var_CA = var_B4.Text
  loc_FEC500:     Set var_B8 = Me.TxtGrid
  loc_FEC506:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_FEC50E:     var_C4.Text = var_9C
  loc_FEC521:   End If
  loc_FEC52D:   Set var_88 = Me.TxtGrid
  loc_FEC533:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_FEC54D:   Set var_B8 = Me.TxtGrid
  loc_FEC553:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_FEC55B:   var_C4.SelStart = Len(var_B4.Text)
  loc_FEC56E: End If
  loc_FEC578: If (CLng(Cancel) <> &HD) Then
  loc_FEC580:   global_94 = &HFF
  loc_FEC583: End If
  loc_FEC583: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E207B0
  'Data Table: 488AF8
  loc_E207A7: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E207AF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E201C0
  'Data Table: 488AF8
  loc_E201B7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E201BF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E445A4
  'Data Table: 488AF8
  Dim var_8C As TextBox
  loc_E44578: Call Proc_326_59_E85158()
  loc_E44588: Set var_88 = Me.TxtGrid
  loc_E4458E: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E44596: var_8C.Visible = False
  loc_E445A2: Exit Sub
End Sub

Public Function MasterFormExitGet() '489620
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '48962F
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '48963E
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '48964D
  SearchCode = Value
End Sub

Public Function global_60Get() '48965C
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '48966B
  global_60 = Value
End Sub

Public Function global_64Get() '48967A
  global_64Get = global_64
End Function

Public Sub global_64Put(Value) '489689
  global_64 = Value
End Sub

Public Sub global_64Set(Value) '489698
  global_64 = Value
End Sub

Public Function global_80Get() '4896A7
  global_80Get = global_80
End Function

Public Sub global_80Put(Value) '4896B6
  global_80 = Value
End Sub

Public Sub global_80Set(Value) '4896C5
  global_80 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E972B0
  'Data Table: 488AF8
  Dim Me As Recordset15
  loc_E9723E: On Error Goto loc_E972A7
  loc_E97247: Me.MoveFirst
  loc_E97271: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E97299: Proc_5_0_1107AD0(&HFF, Me, global_96)
  loc_E972A1: Call Proc_326_57_12FA92C(0)
  loc_E972A6: Exit Sub
  loc_E972A7: ' Referenced from: E9723E
  loc_E972A7: Proc_6_60_E63754(var_A0)
  loc_E972AC: Exit Sub
End Sub

Public Sub Proc_326_52_FD124C
  'Data Table: 488AF8
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_FD1090: On Error Goto loc_FD1246
  loc_FD10A1: Set var_88 = Me.Txt
  loc_FD10A7: Call 0.Method_Proc_326_52_FD124C0 (CInt(0), var_8C)
  loc_FD10C6: Me.DGVType.Left = CVar(var_8C.Left)
  loc_FD10E2: Set var_B4 = Me.Txt
  loc_FD10E8: Call 0.Method_Proc_326_52_FD124C0 (CInt(0), var_B8)
  loc_FD1103: Set var_88 = Me.Txt
  loc_FD1109: Call 0.Method_Proc_326_52_FD124C0 (CInt(0), var_8C)
  loc_FD1121: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_FD1130: Me.DGVType.Top = CVar(var_8C.Left)
  loc_FD1146: Set var_C4 = Me.FGrid
  loc_FD1155: var_C4.Height = CVar(CDbl(4250))
  loc_FD1166: var_C4.Width = CVar(CDbl(5500))
  loc_FD1177: var_C4.Cols = 3
  loc_FD1188: var_C4.Rows = 2
  loc_FD11A1: global_84 = CStr(CLng(var_C4.BackColor))
  loc_FD11AB: var_A0 = 0
  loc_FD11B4: var_E8 = &H64
  loc_FD11C0: LateIdCallSt
  loc_FD11CB: var_A0 = CVar(CLng(1)) 'Long
  loc_FD11D0: var_E8 = 0
  loc_FD11DC: LateIdCallSt
  loc_FD11E7: var_A0 = CVar(CLng(2)) 'Long
  loc_FD11EC: var_E8 = &HDAC
  loc_FD11F8: LateIdCallSt
  loc_FD1200: var_A0 = 0
  loc_FD120C: var_E8 = CVar(CLng(2)) 'Long
  loc_FD1211: var_108 = "Location Name"
  loc_FD121A: LateIdCallSt
  loc_FD1225: var_A0 = CVar(CLng(2)) 'Long
  loc_FD1230: var_E8 = CVar(CInt(1)) 'Integer
  loc_FD1237: LateIdCallSt
  loc_FD1241: Set var_C4 = Nothing 
  loc_FD1245: Exit Sub
  loc_FD1246: ' Referenced from: FD1090
  loc_FD1246: Proc_6_60_E63754(var_C4, var_E8, var_A0, var_C4, var_108, var_E8, var_A0, var_C4)
  loc_FD124B: Exit Sub
End Sub

Public Sub Proc_326_53_FC998C
  'Data Table: 488AF8
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim unk_488B0F As Connection15
  Dim var_138 As Fields15
  Dim var_14C As Field20
  loc_FC9827: If (Me.RecordCount = 0) Then
  loc_FC982A:   Proc_326_53_FC998C = 
  loc_FC9830: End If
  loc_FC986B: Set var_94 = Me.Txt
  loc_FC9871: Call 0.Method_Proc_326_53_FC998C0 (CInt(0), var_98, var_9C, "Select Count(*) From PartyLocation Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and (PrCode='", var_130, -1)
  loc_FC9889: var_DC = CVar(var_138 & var_9C & "' And AppDate=") 'String
  loc_FC9897: Set var_A8 = Me.Txt
  loc_FC989D: Call 0.Method_Proc_326_53_FC998C0 (CInt(1), var_AC, var_DC)
  loc_FC98AC: Proc_6_7_F26918(var_CC, CVar(var_AC), 0)
  loc_FC98B4: var_EC = var_14C & var_CC 
  loc_FC98CB: unk_488B0F.Execute CStr(var_EC & ")"), var_15C, 
  loc_FC98D3:  = var_98.Tag.Fields
  loc_FC98DB:  = var_138.Item()
  loc_FC98E3:  = var_14C.Value
  loc_FC9920: If (var_15C > 0) Then
  loc_FC9944:   MsgBox("Duplicate Entry", &H40, "Information", var_DC, var_EC)
  loc_FC995F:   Set var_94 = Me.Txt
  loc_FC9965:   Call 0.Method_Proc_326_53_FC998C0 (CInt(0))
  loc_FC996D:   var_98.SetFocus
  loc_FC997E:   Proc_326_53_FC998C = &HFF
  loc_FC9984: End If
  loc_FC9984: Proc_326_53_FC998C = var_98
End Sub

Public Sub Proc_326_54_E448C0
  'Data Table: 488AF8
  loc_E4489C: Set var_88 = Me.TopCtrl1
  loc_E448A2: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_E448BB: If (CStr() = "Browse") Then
  loc_E448BE:   Exit Sub
  loc_E448BF: End If
  loc_E448BF: Exit Sub
End Sub

Public Sub Proc_326_55_10962E0(arg_C) '10962E0
  'Data Table: 488AF8
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As String
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_134 As Variant
  Dim var_B0 As String
  loc_1096043: var_A0 = CLng(Me.FGrid.Col)
  loc_1096053: If (var_A0 = CLng(2)) Then
  loc_1096076:   var_A6 = Me.EOF
  loc_10960A4:   Set var_8C = Me.TxtGrid
  loc_10960AA:   Call 0.Method_Proc_326_55_10962E00 (arg_C, var_AC, var_B0)
  loc_10960B2:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_10960CA:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_10960E0:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10960E8:     var_E0 = CVar(CLng(2)) 'Long
  loc_10960ED:     var_100 = vbNullString
  loc_10960F7:     Set var_AC = Me.FGrid
  loc_10960FD:     LateIdCallSt
  loc_1096122:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109612A:     var_E0 = CVar(CLng(1)) 'Long
  loc_109612F:     var_100 = vbNullString
  loc_1096139:     Set var_AC = Me.FGrid
  loc_109613F:     LateIdCallSt
  loc_1096154:   Else
  loc_1096157:     Call Proc_326_60_FC2000(var_A6, var_AC, var_100, var_E0, var_C0)
  loc_1096162:     If (var_A6 = 0) Then
  loc_109616A:       Proc_326_55_10962E0 = 0
  loc_1096170:     End If
  loc_1096183:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109618B:     var_F0 = CVar(CLng(2)) 'Long
  loc_10961BE:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10961C6:     Set var_138 = Me.FGrid
  loc_10961CC:     LateIdCallSt
  loc_10961FB:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1096203:     var_F0 = CVar(CLng(1)) 'Long
  loc_1096236:     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_109623E:     Set var_138 = Me.FGrid
  loc_1096244:     LateIdCallSt
  loc_1096260:   End If
  loc_1096279:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_109627E:   var_E0 = 1
  loc_10962B5:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_10962B8:     var_C0 = vbNullString
  loc_10962C2:     Set var_8C = Me.FGrid
  loc_10962D3:   End If
  loc_10962D3: End If
  loc_10962D8: Proc_326_55_10962E0 = &HFF
End Sub

Public Sub Proc_326_56_F1AAB0
  'Data Table: 488AF8
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F1A9C6: Set var_8C = Me.Txt
  loc_F1A9CC: Call 0.Method_Proc_326_56_F1AAB0C (var_8E, var_86)
  loc_F1A9DC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1A9F2:   Set var_8C = Me.Txt
  loc_F1A9F8:   Call 0.Method_Proc_326_56_F1AAB00 (CInt(var_86), var_98)
  loc_F1AA00:   var_98.Text = vbNullString
  loc_F1AA1C:   Set var_8C = Me.Txt
  loc_F1AA22:   Call 0.Method_Proc_326_56_F1AAB00 (CInt(var_86), var_98)
  loc_F1AA2A:   var_98.Tag = vbNullString
  loc_F1AA39: Next var_92 'Byte
  loc_F1AA52: Me.FGrid.Rows = 1
  loc_F1AA6F: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F1AA77: Set var_98 = Me.FGrid
  loc_F1AAA6: Me.FGrid.FixedRows = 1
  loc_F1AAAE: Exit Sub
End Sub

Public Sub Proc_326_57_12FA92C
  'Data Table: 488AF8
  Dim Me As Recordset15
  Dim var_94 As String
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim unk_488B0F As Connection15
  Dim var_88 As Recordset15
  Dim var_128 As TextBox
  Dim var_124 As Fields15
  Dim var_8A As Integer
  loc_12FA268: On Error Goto loc_12FA926
  loc_12FA282: If (Me.RecordCount > 0) Then
  loc_12FA285:   Call Proc_326_56_F1AAB0()
  loc_12FA292:   If (MemVar_1F953B0 = "A") Then
  loc_12FA2A9:     var_94 = "Select PL.*,S.Name As PartyName,LM.Name As Location From ((PartyLocation PL Left Join SubGroup S On PL.PrCode=S.SubCode) Left Join LocationMast LM On PL.LcCode=LM.Code) Where (PL.LOGSITE_CODE='" & MemVar_1F95078
  loc_12FA2B0:     var_CC = CVar(var_94 & "' or PL.LOGSITE_CODE='HO') And PL.PrCode+Space(8-len(PL.PrCode))+'**'+Format(PL.AppDate,'dd/mm/yyyy')='") 'String
  loc_12FA2F7:     unk_488B0F.Execute CStr(var_CC & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_12FA302:     Set var_88 = var_124
  loc_12FA325:   Else
  loc_12FA32D:     If (MemVar_1F953B0 = "S") Then
  loc_12FA344:       var_94 = "Select PL.*,S.Name As PartyName,LM.Name As Location From ((PartyLocation PL Left Join SubGroup S On PL.PrCode=S.SubCode) Left Join LocationMast LM On PL.LcCode=LM.Code) Where (PL.LOGSITE_CODE='" & MemVar_1F95078
  loc_12FA34B:       var_CC = CVar(var_94 & "' or PL.LOGSITE_CODE='HO') And PL.PrCode+Space(8-len(PL.PrCode))+'**'+Convert(Varchar(11),PL.AppDate,103)='") 'String
  loc_12FA392:       unk_488B0F.Execute CStr(var_CC & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_12FA39D:       Set var_88 = var_124
  loc_12FA3BD:     End If
  loc_12FA3BD:   End If
  loc_12FA3D1:   If (var_88.RecordCount > 0) Then
  loc_12FA40A:     Set var_124 = Me.Txt
  loc_12FA410:     Call 0.Method_Proc_326_57_12FA92C0 (CInt(0), var_128)
  loc_12FA418:     var_128.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("PrCode")), var_124)
  loc_12FA462:     Set var_124 = Me.Txt
  loc_12FA468:     Call 0.Method_Proc_326_57_12FA92C0 (CInt(0), var_128)
  loc_12FA470:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("PartyName")))
  loc_12FA4E4:     Set var_124 = Me.Txt
  loc_12FA4EA:     Call 0.Method_Proc_326_57_12FA92C0 (CInt(1), var_128, CStr(Format(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("AppDate")))), "dd/MMM/yyyy")))
  loc_12FA4F2:     var_128.Text = 1
  loc_12FA54C:     var_124 = var_88.Fields
  loc_12FA5B5:     var_188 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE")), 1) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_124.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_12FA5FA:     Me.LblUser.Caption = CStr(var_124 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_188)))
  loc_12FA6D5:     var_188 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_12FA71A:     Me.LblLDt.Caption = CStr(var_188 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_12FA78B:     If (Proc_6_38_E69628(CVar(var_88.Fields.Item("PartyName"))) = vbNullString) Then
  loc_12FA78E:     End If
  loc_12FA790:     var_8A = 1
  loc_12FA7A6:     Me.FGrid.Rows = 1
  loc_12FA7AE:     ' Referenced from: 12FA89D
  loc_12FA7BD:     If Not(var_88.EOF) Then
  loc_12FA7C0:       var_A8 = vbNullString
  loc_12FA7CA:       Set var_98 = Me.FGrid
  loc_12FA81B:       var_CC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("lccode")), CVar(CLng(1)), CVar(CLng(var_8A)))) 'String
  loc_12FA822:       LateIdCallSt
  loc_12FA86D:       var_CC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Location")), CVar(CLng(2)), CVar(CLng(var_8A)), Me.FGrid)) 'String
  loc_12FA874:       LateIdCallSt
  loc_12FA888:       Set var_1E8 = Nothing 
  loc_12FA892:       var_8A = (var_8A + 1)
  loc_12FA898:       var_88.MoveNext
  loc_12FA89D:       GoTo loc_12FA7AE
  loc_12FA8A0:     End If
  loc_12FA8A0:   End If
  loc_12FA8A0:   var_A8 = 0
  loc_12FA8AA:   Set var_98 = Me.FGrid
  loc_12FA8D7:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_12FA8DA:     var_A8 = "1"
  loc_12FA8E4:     Set var_98 = Me.FGrid
  loc_12FA8F5:   End If
  loc_12FA8F5:   var_A8 = 1
  loc_12FA908:   Me.FGrid.FixedRows = var_A8
  loc_12FA913: Else
  loc_12FA913:   Call Proc_326_56_F1AAB0(FGrid.DispID_10000, var_A8, FGrid.DispID_2E, var_A8, var_8A, var_1E8)
  loc_12FA918: End If
  loc_12FA918: Call Proc_326_59_E85158(var_CC, var_CC, FGrid.DispID_10000)
  loc_12FA922: Set var_88 = Nothing
  loc_12FA925: Exit Sub
  loc_12FA926: ' Referenced from: 12FA268
  loc_12FA926: Proc_6_60_E63754(var_A8)
  loc_12FA92B: Exit Sub
End Sub

Public Sub Proc_326_58_E7C564(arg_C) 'E7C564
  'Data Table: 488AF8
  Dim var_98 As TextBox
  loc_E7C512: Set var_8C = Me.Txt
  loc_E7C518: Call 0.Method_Proc_326_58_E7C564C (var_8E, var_86)
  loc_E7C528: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7C53E:   Set var_8C = Me.Txt
  loc_E7C544:   Call 0.Method_Proc_326_58_E7C5640 (CInt(var_86), var_98)
  loc_E7C54C:   var_98.Enabled = arg_C
  loc_E7C55B: Next var_92 'Byte
  loc_E7C561: Exit Sub
End Sub

Public Sub Proc_326_59_E85158
  'Data Table: 488AF8
  loc_E85104: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_E85116:   Me.DGVType.Visible = False
  loc_E8511E: End If
  loc_E8513A: If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_E8514C:   Me.DGSundry.Visible = False
  loc_E85154: End If
  loc_E85154: Exit Sub
End Sub

Public Sub Proc_326_60_FC2000
  'Data Table: 488AF8
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC1E83: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_FC1E88:   var_92 = 2 'Byte
  loc_FC1E8C: End If
  loc_FC1E95: Set var_98 = Me.TxtGrid
  loc_FC1E9B: Call 0.Method_Proc_326_60_FC20000 (0, var_B0)
  loc_FC1EBE: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC1EF2: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC1F16:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC1F19:     GoTo loc_FC1FEB
  loc_FC1F1C:   End If
  loc_FC1F20:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC1F4A:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC1F54:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC1F89:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC1FAD:     MsgBox("Duplicate Location Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC1FC6:     Set var_98 = Me.TxtGrid
  loc_FC1FCC:     Call 0.Method_Proc_326_60_FC20000 (0, var_B0, CVar(CLng(var_92)))
  loc_FC1FD4:     var_B0.SetFocus
  loc_FC1FE5:     Proc_326_60_FC2000 = 0
  loc_FC1FEB:     ' Referenced from: FC1F19
  loc_FC1FEB:   End If
  loc_FC1FEE: Next var_D4 'Integer
  loc_FC1FF8: Proc_326_60_FC2000 = &HFF
End Sub
