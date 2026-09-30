VERSION 5.00
Begin VB.Form FrmNCType
  Caption = "NC Type"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 4680
  ClientHeight = 3090
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3285
    Top = 2265
    Width = 4680
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 35
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    Left = 12360
    Top = 2070
    Width = 1935
    Height = 1785
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 15
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 4
    End
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3285
    Top = 2580
    Width = 3480
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 30
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 4680
    Height = 450
    TabIndex = 2
  End
  Begin MSFlexGrid FGPoint
    Left = 9570
    Top = 5100
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 5
  End
  Begin DataGrid DGHelp
    Left = 4575
    Top = 3240
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 11
  End
  Begin Label LblName
    Caption = "NC Type"
    Index = 0
    ForeColor = &HC00000&
    Left = 2160
    Top = 2265
    Width = 795
    Height = 240
    TabIndex = 10
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "NC Per."
    Index = 1
    ForeColor = &HC00000&
    Left = 2160
    Top = 2580
    Width = 720
    Height = 240
    TabIndex = 9
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
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
    Left = 1065
    Top = 5760
    Width = 2880
    Height = 255
    TabIndex = 8
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4440
    Top = 5760
    Width = 2790
    Height = 285
    TabIndex = 7
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 6
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    AutoSize = -1  'True
    BeginProperty Font
      Name = "System"
      Size = 19.5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FrmNCType"


Private Sub DGHelp_UnknownEvent_9 'F3D334
  'Data Table: 458170
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3D22B: Me.DGHelp.Visible = False
  loc_F3D24A: If (Me.RecordCount > 0) Then
  loc_F3D289:   Set var_B4 = Me.Txt
  loc_F3D28F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3D297:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3D2CA:   var_B0 = Me.Fields.Item("per")
  loc_F3D2E9:   Set var_B4 = Me.Txt
  loc_F3D2EF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3D2F7:   var_B8.Text = CStr(var_B0.Value)
  loc_F3D30D: End If
  loc_F3D318: Set var_A8 = Me.Txt
  loc_F3D31E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1))
  loc_F3D326: var_B0.SetFocus
  loc_F3D332: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E6FA18
  'Data Table: 458170
  loc_E6F9D6: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E6F9ED: Set var_8C = Me.FGPoint
  loc_E6FA09: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(1))
  loc_E6FA17: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1008510
  'Data Table: 458170
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_100831E: Set var_88 = Me.Txt
  loc_1008324: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1008332: Proc_6_74_E23240(var_8C)
  loc_100833E: Call Proc_297_31_E87AB0(var_8C)
  loc_1008346: var_92 = Index
  loc_1008351: If (var_92 = CInt(1)) Then
  loc_100836B:   If (Me.RecordCount > 0) Then
  loc_1008379:     Set var_8C = Me.FGPoint
  loc_1008391:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_100839F:   End If
  loc_10083ED:   Set var_88 = Me.Txt
  loc_10083F3:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_10083FB:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1008413:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1008423:     Set var_88 = Me.Txt
  loc_1008429:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1008431:     var_8C.Tag = vbNullString
  loc_100843D:     Exit Sub
  loc_100843E:   End If
  loc_100844B:   Set var_88 = Me.Txt
  loc_1008451:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1008459:   var_A0 = var_8C.Text
  loc_100846B:   var_B0 = "Name"
  loc_10084A6:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_10084AF:     Me.MoveFirst
  loc_10084D2:     Set var_88 = Me.Txt
  loc_10084D8:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_10084E0:     0 = var_8C.Text
  loc_10084F9:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_100850E:   End If
  loc_100850E: End If
  loc_100850E: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '101F1F4
  'Data Table: 458170
  Dim Me As Recordset15
  loc_101EFE6: If (CLng(Shift) = &H1B) Then
  loc_101EFE9:   Call Proc_297_31_E87AB0()
  loc_101EFEE:   Exit Sub
  loc_101EFEF: End If
  loc_101EFFD: If (KeyCode = CInt(1)) Then
  loc_101F022:   If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_101F042:     Set var_A0 = Me.FGPoint
  loc_101F074:     Proc_6_79_11AD564(Me.DGHelp, Me.Txt, CInt(1), global_56, Shift)
  loc_101F088:   End If
  loc_101F0E1:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_101F107:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint, 0)
  loc_101F115:   End If
  loc_101F115: End If
  loc_101F131: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_101F147:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(2))) Then
  loc_101F150:     Proc_6_76_E533C8(Shift, arg_14, 1)
  loc_101F155:   End If
  loc_101F173:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(2))) Then
  loc_101F17C:     Call Txt_Validate(KeyCode)
  loc_101F187:     If (var_86 = 0) Then
  loc_101F1C1:       If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_130) = 6) Then
  loc_101F1C4:         Call TopCtrl1_UnknownEvent_16()
  loc_101F1C9:       End If
  loc_101F1C9:       Exit Sub
  loc_101F1CA:     End If
  loc_101F1CD:   Else
  loc_101F1E2:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_101F1EB:       Proc_6_75_E5335C(Shift, arg_14, var_86)
  loc_101F1F0:     End If
  loc_101F1F0:   End If
  loc_101F1F0: End If
  loc_101F1F0: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E4FDDC
  'Data Table: 458170
  Dim arg_10 As Integer
  Dim var_792 As Integer
  loc_E4FDAE: Proc_6_133_E7FB08(var_94)
  loc_E4FDC3: If (CInt(var_94) = &HD) Then
  loc_E4FDC8:   arg_10 = 0
  loc_E4FDCB: End If
  loc_E4FDCE: Proc_6_58_E06050(arg_10, arg_10)
  loc_E4FDD9: Exit Sub
  loc_E4FDDA: var_792 = KeyAscii
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E004E4
  'Data Table: 458170
  Dim var_86 As Integer
  loc_E004DF: var_86 = KeyCode
  loc_E004E2: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E5024C
  'Data Table: 458170
  loc_E5022A: Set var_88 = Me.Txt
  loc_E50230: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E5023E: Proc_6_73_E23294(var_8C)
  loc_E5024A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E28DDC
  'Data Table: 458170
  Dim arg_10 As Integer
  loc_E28DBE: If (Cancel = CInt(1)) Then
  loc_E28DC4:   Call Proc_297_30_1082E64(var_88)
  loc_E28DCF:   If (var_88 = &HFF) Then
  loc_E28DD4:     arg_10 = &HFF
  loc_E28DD7:     Exit Sub
  loc_E28DD8:   End If
  loc_E28DD8: End If
  loc_E28DD8: Exit Sub
End Sub

Private Sub Form_Load() '10CA0D8
  'Data Table: 458170
  Dim var_88 As Label
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_D4 As Variant
  Dim var_C4 As String
  Dim var_D8 As String
  Dim unk_458185 As Connection15
  Dim var_701 As Double
  loc_10C9DFC: On Error Goto loc_10CA092
  loc_10C9E0E: Me.LblUser.Left = CDbl(13500)
  loc_10C9E25: Me.LblUser.Top = CDbl(7800)
  loc_10C9E3C: Me.LblLDt.Top = CDbl(8160)
  loc_10C9E53: Me.LblLDt.Left = CDbl(13500)
  loc_10C9E62: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_10C9E75: Set var_88 = Me.Txt
  loc_10C9E7B: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_10C9E9A: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_10C9EB6: Set var_B4 = Me.Txt
  loc_10C9EBC: Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_10C9ED7: Set var_88 = Me.Txt
  loc_10C9EDD: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_10C9EF5: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_10C9F04: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_10C9F20: Set var_88 = Me.TopCtrl1
  loc_10C9F26: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_10C9F34: Call 0.Method_arg_50 (var_C4)
  loc_10C9F3C: var_D4 = CVar(var_C4) 'String
  loc_10C9F4A: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D4)
  loc_10C9F70: var_D8 = "SELECT NCType As Code,NCType As Name,NCPer as Per,SITE_CODE,LogSite_Code FROM NCTypeMast WHERE SITE_CODE='" & MemVar_1F95070 & "' And (LOGSITE_CODE='"
  loc_10C9F87: unk_458185.Execute var_D8 & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY NCType", var_D4, -1
  loc_10C9FBA: CVarUnk
  loc_10C9FBF: VerifyVarObj
  loc_10C9FCB: LateIdStAd
  loc_10C9FED: var_C4 = "SELECT NCType As Code,NCType,NCPer as Per,SITE_CODE,LOGSITE_CODE,U_AE,U_EntDt,U_Name FROM NCTypeMast WHERE SITE_CODE='" & MemVar_1F95070
  loc_10CA00B: unk_458185.Execute var_C4 & "' And (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY NCType", var_D4, -1
  loc_10CA041: Set var_88 = Me
  loc_10CA04A: var_C4 = "INI"
  loc_10CA058: Call Proc_297_27_E6F860(Proc_5_1_100EC1C(var_C4, var_88, Me.DGHelp, var_88), var_88)
  loc_10CA068: Call Proc_297_27_E6F860(0, Me.TopCtrl1)
  loc_10CA076: Call 0.Method_arg_160 (var_88)
  loc_10CA084: Call 0.Method_arg_164 (var_88)
  loc_10CA08C: Call Proc_297_29_11992B4(var_88)
  loc_10CA091: Exit Sub
  loc_10CA092: ' Referenced from: 10C9DFC
  loc_10CA09A: Set var_88 = Err()
  loc_10CA0A0: Call 0.Method_arg_2C (var_C4)
  loc_10CA0C1: MsgBox(CVar(var_C4), &H40, "Information", var_104, var_124)
  loc_10CA0D4: Exit Sub
  loc_10CA0D5: Exit Sub
  loc_10CA0D6: var_701 = 
End Sub

Private Sub Form_Resize() 'ED7038
  'Data Table: 458170
  Dim var_8C As Label
  loc_ED6F96: Call 0.Method_arg_50 (var_88)
  loc_ED6FA8: Me.LblFormCaption.Caption = var_88
  loc_ED6FC1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED6FCD: Set var_A0 = Me.TopCtrl1
  loc_ED6FD3: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED6FE0: Set var_8C = Me.TopCtrl1
  loc_ED6FE6: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED7000: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED701B: Call 0.Method_arg_100 (var_B8)
  loc_ED702D: Me.LblFormCaption.Width = var_B8
  loc_ED7035: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E28EEC
  'Data Table: 458170
  loc_E28ECF: Set global_52 = Nothing
  loc_E28EE1: Set global_56 = Nothing
  loc_E28EE8: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8BF08
  'Data Table: 458170
  loc_E8BEA4: On Error Goto loc_E8BEC4
  loc_E8BEBB: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E8BEC3: Exit Sub
  loc_E8BEC4: ' Referenced from: E8BEA4
  loc_E8BECC: Set var_88 = Err()
  loc_E8BED2: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8BEF3: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8BF06: Exit Sub
  loc_E8BF07: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EAC9A4
  'Data Table: 458170
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EAC918: On Error Goto loc_EAC99E
  loc_EAC93E: Call Proc_297_27_E6F860(Proc_5_1_100EC1C("ADD", Me))
  loc_EAC949: Call Proc_297_28_E7ECB0(global_52)
  loc_EAC959: Set var_8C = Me.Txt
  loc_EAC95F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_EAC967: var_94.SetFocus
  loc_EAC980: Me.LblUser.Caption = vbNullString
  loc_EAC995: Me.LblLDt.Caption = vbNullString
  loc_EAC99D: Exit Sub
  loc_EAC99E: ' Referenced from: EAC918
  loc_EAC99E: Proc_6_60_E63754(var_94)
  loc_EAC9A3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC525C
  'Data Table: 458170
  loc_EC51C4: On Error Goto loc_EC5254
  loc_EC51FE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EC520D:   Set var_10C = Me
  loc_EC5224:   Call Proc_297_27_E6F860(Proc_5_1_100EC1C("INI", var_10C))
  loc_EC522F:   Call Proc_297_31_E87AB0(global_52)
  loc_EC5234:   Call Proc_297_29_11992B4()
  loc_EC523C: Else
  loc_EC5242:   Call 0.Method_arg_1E8 (var_10C)
  loc_EC524A:   Call var_10C.SetFocus
  loc_EC5253: End If
  loc_EC5253: Exit Sub
  loc_EC5254: ' Referenced from: EC51C4
  loc_EC5254: Proc_6_60_E63754()
  loc_EC5259: Exit Sub
  loc_EC525A: DOC
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1193834
  'Data Table: 458170
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim unk_458185 As Connection15
  Dim var_114 As Variant
  Dim var_B0 As String
  loc_119347C: On Error Goto loc_11937E5
  loc_119348D: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_1193490:   Exit Sub
  loc_1193491: End If
  loc_11934C3: var_D0 = "Kot Entry"
  loc_119350B: If (Proc_6_108_101061C(MemVar_1F95044, "Kot", "NCType", CStr(Me.Fields.Item("NCType").Value)) = 0) Then
  loc_119350E:   Exit Sub
  loc_119350F: End If
  loc_1193546: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_1193552:   unk_458185.BeginTrans var_CC
  loc_1193568:   var_94 = Me.Bookmark 'Variant
  loc_11935B4:   var_114 = "Delete From NCTypeMast Where NCType='" & Me.Fields.Item("NCType").Value & "' And Site_Code='" 
  loc_11935DD:   var_134 = Me.Fields.Item("Site_Code").Value
  loc_11935FC:   unk_458185.Execute CStr(var_114 & var_134 & "'"), var_18C, -1
  loc_119367B:   var_1BC = 0
  loc_119368E:   var_1B4 = 0
  loc_1193699:   var_1B0 = 0
  loc_11936AC:   var_1A8 = 0
  loc_11936B7:   var_1A4 = 0
  loc_11936CA:   var_19C = 0
  loc_1193705:   var_B0 = "NCTypeMast"
  loc_119370E:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B0, "NCType", &HC8, CStr(Me.Fields.Item("NCType").Value), "Site_Code", &HC8, CStr(Me.Fields.Item("Site_Code").Value))
  loc_1193744:   unk_458185.CommitTrans
  loc_1193754:   Me.Requery -1
  loc_1193764:   Me.Requery -1
  loc_1193784:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1193791:     Me.Bookmark = var_94
  loc_1193799:   Else
  loc_11937AD:     If (Me.EOF = 0) Then
  loc_11937B6:       Me.MoveLast
  loc_11937BB:     End If
  loc_11937BB:   End If
  loc_11937BB:   Call Proc_297_29_11992B4(var_19C, 0, var_1A4, var_1A8)
  loc_11937DC:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_11937E4: End If
  loc_11937E4: Exit Sub
  loc_11937E5: ' Referenced from: 119347C
  loc_11937EB: unk_458185.RollbackTrans
  loc_11937F8: Set var_98 = Err()
  loc_11937FE: Call 0.Method_arg_2C (var_B0, 0, var_1B0)
  loc_119381F: MsgBox(CVar(var_B0), &H30, " Deletion Error ", var_114, var_134)
  loc_1193832: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EF1E78
  'Data Table: 458170
  Dim var_94 As TextBox
  Dim var_8C As Label
  Dim var_701 As Integer
  loc_EF1DA8: On Error Goto loc_EF1E70
  loc_EF1DB9: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_EF1DBC:   Exit Sub
  loc_EF1DBD: End If
  loc_EF1DE0: Call Proc_297_27_E6F860(Proc_5_1_100EC1C("EDIT", Me))
  loc_EF1DF9: Set var_8C = Me.Txt
  loc_EF1DFF: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_EF1E12: global_64 = var_94.Text
  loc_EF1E2D: Me.LblUser.Caption = vbNullString
  loc_EF1E42: Me.LblLDt.Caption = vbNullString
  loc_EF1E55: Set var_8C = Me.Txt
  loc_EF1E5B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_EF1E63: var_94.SetFocus
  loc_EF1E6F: Exit Sub
  loc_EF1E70: ' Referenced from: EF1DA8
  loc_EF1E70: Proc_6_60_E63754(global_52)
  loc_EF1E75: Exit Sub
  loc_EF1E76: var_701 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1C4A0
  'Data Table: 458170
  loc_E1C495: Me.Global.Unload Me
  loc_E1C49D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F530C4
  'Data Table: 458170
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_110 As String
  Dim MemVar_1F950E4 As String
  loc_F52FB0: On Error Goto loc_F5305C
  loc_F52FBC: var_88 = Me.RecordCount
  loc_F52FCA: If (var_88 <= 0) Then
  loc_F52FD3:   var_B8 = "Information"
  loc_F52FEE:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F52FFE:   Exit Sub
  loc_F52FFF: End If
  loc_F5300D: var_110 = "Select NCType As SEARCHCODE,NCType,NCPer FROM NCTypeMast WHERE SITE_CODE='" & MemVar_1F95070 & "' And LOGSITE_CODE IN ('HO','"
  loc_F5301B: MemVar_1F950E4 = var_110 & MemVar_1F95078 & "') ORDER BY NCType"
  loc_F5302E: MemVar_1F95120 = Me
  loc_F53035: var_10C = "3900,1000"
  loc_F5303B: Proc_6_126_F1C850(var_10C)
  loc_F53056: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F5305B: Exit Sub
  loc_F5305C: ' Referenced from: F52FB0
  loc_F53064: Set var_118 = Err()
  loc_F5306A: Call 0.Method_arg_1C (var_88)
  loc_F5307B: If (var_88 <> 0) Then
  loc_F53086:   Set var_118 = Err()
  loc_F5308C:   Call 0.Method_arg_2C (var_10C)
  loc_F530AD:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F530C0: End If
  loc_F530C0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E36788
  'Data Table: 458170
  loc_E36778: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36780: Call Proc_297_29_11992B4(global_52)
  loc_E36785: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E36A88
  'Data Table: 458170
  loc_E36A78: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36A80: Call Proc_297_29_11992B4(global_52)
  loc_E36A85: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E36908
  'Data Table: 458170
  loc_E368F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36900: Call Proc_297_29_11992B4(global_52)
  loc_E36905: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E368A8
  'Data Table: 458170
  loc_E36898: Proc_5_0_1107AD0(&HFF, Me)
  loc_E368A0: Call Proc_297_29_11992B4(global_52)
  loc_E368A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1075A54
  'Data Table: 458170
  Dim unk_458185 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_E4 As Variant
  loc_10757D4: On Error Goto loc_1075A0B
  loc_10757ED: unk_458185.Execute "Select Nctype,NCPer,U_Name,U_AE,U_Entdt FROM NCTypeMast ORDER BY NCType", var_BC, -1
  loc_10757F8: Set var_88 = var_C0
  loc_1075807: var_C4 = var_88.RecordCount
  loc_1075815: If (var_C4 = 0) Then
  loc_1075831:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_1075841:   Exit Sub
  loc_1075842: End If
  loc_1075851: var_12C = MemVar_1F950B4 & "\NCType.ttx"
  loc_1075858: Set var_C0 = var_88 
  loc_1075864: var_12E = CreateFieldDefFile(var_C0, var_12C)
  loc_107586E: Set var_88 = var_C0
  loc_1075874: var_AC = CVar(var_12E) 'Integer
  loc_1075877: var_98 = var_AC 'Variant
  loc_1075893: var_128 = MemVar_1F950B4 & "\NCType.RPT"
  loc_107589C: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_10758A7: MemVar_1F951E8 = var_C0
  loc_10758C2: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_10758CA: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_10758D6: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_10758EF:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_10758F7:   Call 0.Method_arg_20 (var_138)
  loc_10758FF:   Call 0.Method_arg_30 (var_128)
  loc_1075945:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_107595B:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1075963:     Call 0.Method_arg_20 (var_138)
  loc_107596B:     Call 0.Method_arg_38 ("'NC Type'")
  loc_1075977:   End If
  loc_107597A: Next var_132 'Integer
  loc_1075998: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_10759A0: Call 0.Method_arg_2C (var_D4)
  loc_10759AE: Call 0.Method_arg_150 (var_F4)
  loc_10759B9: Call 0.Method_arg_50 (var_128)
  loc_10759C3: Set var_138 = Nothing
  loc_10759DD: Set var_C0 = MemVar_1F951E8 
  loc_10759E9: Proc_6_99_1484404(var_C0, 0, var_128)
  loc_10759F4: MemVar_1F951E8 = var_C0
  loc_1075A07: Set var_88 = Nothing
  loc_1075A0A: Exit Sub
  loc_1075A0B: ' Referenced from: 10757D4
  loc_1075A13: Set var_C0 = Err()
  loc_1075A19: Call 0.Method_arg_2C (var_128, &HFF)
  loc_1075A24: Call 0.Method_arg_50 (var_12C)
  loc_1075A40: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_1075A53: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0BE68
  'Data Table: 458170
  Dim Me As Recordset15
  loc_E0BE5F: Me.Requery -1
  loc_E0BE64: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1247208
  'Data Table: 458170
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_94 As Variant
  Dim unk_458185 As Connection15
  Dim var_190 As Double
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_194 As TextBox
  Dim var_188 As Variant
  Dim var_284 As Variant
  loc_1246D30: On Error Goto loc_12471B5
  loc_1246D37: var_86 = CByte(0) 'Byte
  loc_1246D46: Set var_90 = Me.Txt
  loc_1246D4C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1246D75: If (Proc_6_27_EA61EC(var_94, "NCType") = 0) Then
  loc_1246D7F:   Call Txt_GotFocus(CInt(1))
  loc_1246D84:   Exit Sub
  loc_1246D85: End If
  loc_1246D88: Call Proc_297_30_1082E64(var_9E)
  loc_1246D93: If (var_9E = &HFF) Then
  loc_1246D96:   Exit Sub
  loc_1246D97: End If
  loc_1246D9B: Set var_90 = Me.TopCtrl1
  loc_1246DA1: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_1246DBA: If (CStr() = "Add") Then
  loc_1246DC8:   Set var_90 = Me.Txt
  loc_1246DCE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1246DDD:   var_C0 = Trim(CVar(var_94))
  loc_1246DEC:   global_60 = CStr(var_C0)
  loc_1246E00: Else
  loc_1246E1D:   var_94 = Me.Fields.Item("Code")
  loc_1246E34:   global_60 = CStr(var_94.Value)
  loc_1246E45: End If
  loc_1246E4E: unk_458185.BeginTrans var_D4
  loc_1246E57: var_86 = CByte(1) 'Byte
  loc_1246E5F: Set var_90 = Me.TopCtrl1
  loc_1246E65: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_1246E7E: If (CStr() = "Add") Then
  loc_1246E8F:   Set var_90 = Me.Txt
  loc_1246E95:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94)
  loc_1246EAA:   var_190 = Val(var_94.Text)
  loc_1246EB2:   var_B0 = CVar(Proc_6_14_EF402C(var_190)) 'String
  loc_1246EB8:   Proc_6_8_EB1974(var_C0)
  loc_1246ED4:   var_9C = "Insert Into NCTypeMast(NCType,NCPer,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & global_60
  loc_1246F23:   var_144 = CVar(var_9C & "'," & CStr(var_190) & ",'" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") & var_C0 & ",'A','" & CVar(MemVar_1F95078) 
  loc_1246F3A:   unk_458185.Execute CStr(var_144 & "')"), var_188, -1
  loc_1246F75: Else
  loc_1246F80:   Set var_90 = Me.Txt
  loc_1246F86:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_1246FA8:   Set var_98 = Me.Txt
  loc_1246FAE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_194, var_9C)
  loc_1246FB6:   var_98 = var_194.Text
  loc_1246FC3:   var_190 = Val(var_9C)
  loc_1246FD1:   Proc_6_8_EB1974(var_214, CVar(Proc_6_14_EF402C(var_190)))
  loc_1246FFB:   var_154 = CVar(var_190) 'Double
  loc_124701B:   var_188 = "UPDATE NCTypeMast SET NCType='" & Trim(CVar(var_94)) & "',NCPer=" & var_154 & ",LOGSITE_CODE='" & CVar(MemVar_1F95078) & "',U_name='" 
  loc_1247054:   var_284 = var_188 & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_214 & " ,U_AE='E' WHERE NCType='" & CVar(global_60) & "' And SITE_CODE='" 
  loc_1247075:   unk_458185.Execute CStr(var_284 & CVar(MemVar_1F95070) & "'"), var_2E4, -1
  loc_12470B5: End If
  loc_12470BB: unk_458185.CommitTrans
  loc_12470C4: var_86 = CByte(0) 'Byte
  loc_12470D3: Me.Requery -1
  loc_12470E3: Me.Requery -1
  loc_1247106: Set var_90 = Me.Txt
  loc_124710C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, "code='", 0)
  loc_1247114: var_B0 = CVar(var_94) 'Address
  loc_124711B: var_C0 = Trim(var_B0)
  loc_1247123: var_104 = 1 & var_C0 
  loc_124712C: var_114 = var_104 & "'" 
  loc_124713A: Me.Find CStr(var_114), var_154, var_2E8
  loc_1247154: Set var_90 = Me.TopCtrl1
  loc_124715A: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_B0)
  loc_1247173: If (CStr() = "Add") Then
  loc_1247176:   Call TopCtrl1_UnknownEvent_A()
  loc_124717B:   Exit Sub
  loc_124717C: End If
  loc_1247191: var_9C = "INI"
  loc_124719F: Call Proc_297_27_E6F860(Proc_5_1_100EC1C(var_9C, Me))
  loc_12471AA: Call Proc_297_31_E87AB0(global_52)
  loc_12471AF: Call Proc_297_29_11992B4()
  loc_12471B4: Exit Sub
  loc_12471B5: ' Referenced from: 1246D30
  loc_12471BE: If (CInt(var_86) = 1) Then
  loc_12471C7:   unk_458185.RollbackTrans
  loc_12471CC: End If
  loc_12471D4: Set var_90 = Err()
  loc_12471DA: Call 0.Method_arg_2C (var_9C)
  loc_12471F3: MsgBox(CVar(var_9C), &H10, var_C0, var_104, var_114)
  loc_1247206: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E363C4
  'Data Table: 458170
  loc_E363B8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E363BB:   Call DGHelp_UnknownEvent_9()
  loc_E363C0: End If
  loc_E363C0: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC5414
  'Data Table: 458170
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC538A: On Error Goto loc_EC53CF
  loc_EC5393: Me.MoveFirst
  loc_EC53AD: var_8C = "code='" & MyValue
  loc_EC53BD: Me.Find var_8C & "'", 0, 1
  loc_EC53C9: Call Proc_297_29_11992B4(var_A0)
  loc_EC53CE: Exit Sub
  loc_EC53CF: ' Referenced from: EC538A
  loc_EC53D7: Set var_A4 = Err()
  loc_EC53DD: Call 0.Method_arg_2C (var_8C)
  loc_EC53FE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC5411: Exit Sub
  loc_EC5412: Exit Sub
End Sub

Public Sub Proc_297_27_E6F860(arg_C) 'E6F860
  'Data Table: 458170
  Dim var_98 As TextBox
  loc_E6F812: Set var_8C = Me.Txt
  loc_E6F818: Call 0.Method_Proc_297_27_E6F860C (var_8E, var_86)
  loc_E6F825: For var_92 =  To CByte(var_8E): CByte(1) = var_92 'Byte
  loc_E6F83B:   Set var_8C = Me.Txt
  loc_E6F841:   Call 0.Method_Proc_297_27_E6F8600 (CInt(var_86), var_98)
  loc_E6F849:   var_98.Enabled = arg_C
  loc_E6F858: Next var_92 'Byte
  loc_E6F85E: Exit Sub
End Sub

Public Sub Proc_297_28_E7ECB0
  'Data Table: 458170
  Dim var_98 As TextBox
  loc_E7EC4E: global_64 = vbNullString
  loc_E7EC60: Set var_8C = Me.Txt
  loc_E7EC66: Call 0.Method_Proc_297_28_E7ECB0C (var_8E, var_86)
  loc_E7EC73: For var_92 =  To CByte(var_8E): CByte(1) = var_92 'Byte
  loc_E7EC89:   Set var_8C = Me.Txt
  loc_E7EC8F:   Call 0.Method_Proc_297_28_E7ECB00 (CInt(var_86), var_98)
  loc_E7EC97:   var_98.Text = vbNullString
  loc_E7ECA6: Next var_92 'Byte
  loc_E7ECAC: Exit Sub
End Sub

Public Sub Proc_297_29_11992B4
  'Data Table: 458170
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_BC As Fields15
  Dim var_B8 As String
  Dim var_D0 As TextBox
  loc_1198EE8: On Error Goto loc_1199270
  loc_1198EF1: Proc_183_45_E5CCA8(global_52)
  loc_1198F0D: If (Me.RecordCount <= 0) Then
  loc_1198F10:   Call Proc_297_28_E7ECB0()
  loc_1198F18: Else
  loc_1198FC1:   var_184 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_1199009:   Me.LblUser.Caption = CStr(var_184 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_Name")))))
  loc_1199089:   var_D0 = Me.Fields.Item("U_AE")
  loc_11990A2:   var_134 = "entdt :   "
  loc_11990AD:   var_114 = "Last Update :   "
  loc_11990EA:   var_184 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_D0)) = "E"), var_114, var_134))
  loc_1199132:   Me.LblLDt.Caption = CStr(var_184 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_EntDt")))))
  loc_119919E:   global_60 = CStr(Me.Fields.Item("Code").Value)
  loc_11991EB:   Set var_BC = Me.Txt
  loc_11991F1:   Call 0.Method_Proc_297_29_11992B40 (CInt(1), var_D0)
  loc_11991F9:   var_D0.Text = CStr(Me.Fields.Item("NCType").Value)
  loc_119923D:   var_B8 = CStr(Me.Fields.Item("per").Value)
  loc_119924B:   Set var_BC = Me.Txt
  loc_1199251:   Call 0.Method_Proc_297_29_11992B40 (CInt(2), var_D0)
  loc_1199259:   var_D0.Text = var_B8
  loc_119926F: End If
  loc_119926F: Exit Sub
  loc_1199270: ' Referenced from: 1198EE8
  loc_1199278: Set var_90 = Err()
  loc_119927E: Call 0.Method_arg_2C (var_B8)
  loc_119929F: MsgBox(CVar(var_B8), &H40, "Information", var_114, var_134)
  loc_11992B2: Exit Sub
End Sub

Public Sub Proc_297_30_1082E64
  'Data Table: 458170
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_458185 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_1082BF7: If (Me.RecordCount = 0) Then
  loc_1082BFA:   Proc_297_30_1082E64 = 
  loc_1082C00: End If
  loc_1082C04: Set var_90 = Me.TopCtrl1
  loc_1082C0A: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1082C23: If (CStr() = "Add") Then
  loc_1082C61:   Set var_90 = Me.Txt
  loc_1082C67:   Call 0.Method_Proc_297_30_1082E640 (CInt(1), var_A8, var_AC, "Select Count(*) From NCTypeMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and NCTYPE='", var_A0, -1)
  loc_1082C88:   unk_458185.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1082C98:    = var_D0.Item()
  loc_1082CA0:    = var_E4.Value
  loc_1082CD1:   If (var_A8.Text.Fields > 0) Then
  loc_1082CEF:     var_A0 = "Duplicate Name"
  loc_1082CF5:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_1082D10:     Set var_90 = Me.Txt
  loc_1082D16:     Call 0.Method_Proc_297_30_1082E640 (CInt(1))
  loc_1082D1E:     var_A8.SetFocus
  loc_1082D2F:     Proc_297_30_1082E64 = &HFF
  loc_1082D35:   End If
  loc_1082D38: Else
  loc_1082D73:   Set var_90 = Me.Txt
  loc_1082D79:   Call 0.Method_Proc_297_30_1082E640 (CInt(1), var_A8, var_AC, "Select Count(*) From NCTypeMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and (NCType='", var_A0, -1)
  loc_1082DAB:   unk_458185.Execute var_D0 & var_AC & "' And NCType<>'" & global_64 & "')", 0, var_E4
  loc_1082DBB:    = var_D0.Item(var_A8)
  loc_1082DC3:    = var_E4.Value
  loc_1082DF8:   If (var_A8.Text.Fields > 0) Then
  loc_1082E1C:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_1082E37:     Set var_90 = Me.Txt
  loc_1082E3D:     Call 0.Method_Proc_297_30_1082E640 (CInt(1))
  loc_1082E45:     var_A8.SetFocus
  loc_1082E56:     Proc_297_30_1082E64 = &HFF
  loc_1082E5C:   End If
  loc_1082E5C: End If
  loc_1082E5C: Proc_297_30_1082E64 = var_A8
End Sub

Public Sub Proc_297_31_E87AB0
  'Data Table: 458170
  loc_E87A5C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E87A6E:   Me.DGHelp.Visible = False
  loc_E87A76: End If
  loc_E87A92: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E87AA4:   Me.FGPoint.Visible = False
  loc_E87AAC: End If
  loc_E87AAC: Exit Sub
End Sub

Public Sub Proc_297_32_E91BAC(arg_C) 'E91BAC
  'Data Table: 458170
  Dim var_10C As TextBox
  loc_E91B40: Call Proc_297_31_E87AB0()
  loc_E91B7C: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E91B7F:   Call TopCtrl1_UnknownEvent_16()
  loc_E91B87: Else
  loc_E91B91:   Set var_108 = Me.Txt
  loc_E91B97:   Call 0.Method_Proc_297_32_E91BAC0 (arg_C)
  loc_E91B9F:   var_10C.SetFocus
  loc_E91BAB: End If
  loc_E91BAB: Exit Sub
End Sub
