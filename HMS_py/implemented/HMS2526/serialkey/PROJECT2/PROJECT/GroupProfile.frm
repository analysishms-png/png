VERSION 5.00
Begin VB.Form GroupProfile
  Caption = "Group Profile"
  BackColor = &HBFEAD0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11580
  ClientHeight = 6960
  Begin DataGrid DGCity
    Left = 7575
    Top = 6030
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 29
  End
  Begin DataGrid DGMarketSeg
    Left = 7875
    Top = 5610
    Width = 3990
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 36
  End
  Begin DataGrid DGTravelAg
    Left = 5895
    Top = 5940
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 35
  End
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 2265
    Width = 3180
    Height = 255
    Enabled = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 35
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 2805
    Width = 3180
    Height = 255
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 30
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 11
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 3075
    Width = 3180
    Height = 255
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 30
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 3345
    Width = 3180
    Height = 255
    Enabled = 0   'False
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 30
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 16
    BackColor = &HFFFFFF&
    Left = 5865
    Top = 4155
    Width = 1320
    Height = 255
    Enabled = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    MaxLength = 5
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 14
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 4155
    Width = 2205
    Height = 255
    TabIndex = 16
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 15
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 3885
    Width = 4665
    Height = 255
    TabIndex = 15
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 3615
    Width = 4665
    Height = 255
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 2535
    Width = 3180
    Height = 255
    Enabled = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 35
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    Left = 5715
    Top = 1995
    Width = 1470
    Height = 255
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 7
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    Left = 5715
    Top = 1455
    Width = 1470
    Height = 255
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 11
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 1995
    Width = 3180
    Height = 255
    Enabled = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 30
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 1725
    Width = 3180
    Height = 255
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 30
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 1455
    Width = 3180
    Height = 255
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 35
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 1185
    Width = 4665
    Height = 255
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 915
    Width = 4665
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 645
    Width = 4665
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11580
    Height = 375
    TabIndex = 0
  End
  Begin DataGrid DGBusiness
    Left = 8340
    Top = 5130
    Width = 4125
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 30
  End
  Begin MSFlexGrid FGPoint
    Left = 9645
    Top = 4245
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 34
  End
  Begin Shape Shape1
    Left = 600
    Top = 510
    Width = 6795
    Height = 4050
    Shape = 4
  End
  Begin Label Lbl
    Caption = "Comments3"
    Index = 2
    ForeColor = &H0&
    Left = 810
    Top = 3352
    Width = 1065
    Height = 240
    TabIndex = 33
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Comments2"
    Index = 1
    ForeColor = &H0&
    Left = 810
    Top = 3082
    Width = 1065
    Height = 240
    TabIndex = 32
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Comments1"
    Index = 0
    ForeColor = &H0&
    Left = 810
    Top = 2812
    Width = 1065
    Height = 240
    TabIndex = 31
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Group Type"
    Index = 17
    ForeColor = &H0&
    Left = 4755
    Top = 4162
    Width = 1080
    Height = 240
    TabIndex = 28
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Business Source"
    Index = 19
    ForeColor = &H0&
    Left = 810
    Top = 4162
    Width = 1515
    Height = 240
    TabIndex = 27
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Market Segments"
    Index = 20
    ForeColor = &H0&
    Left = 810
    Top = 3885
    Width = 1575
    Height = 240
    TabIndex = 26
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Travel Agency"
    Index = 22
    ForeColor = &H0&
    Left = 810
    Top = 3622
    Width = 1320
    Height = 240
    TabIndex = 25
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Contact Person"
    Index = 9
    ForeColor = &H0&
    Left = 810
    Top = 2265
    Width = 1365
    Height = 240
    TabIndex = 24
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Phone No(s)"
    Index = 7
    ForeColor = &H0&
    Left = 810
    Top = 2535
    Width = 1125
    Height = 255
    TabIndex = 23
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Country/Type"
    Index = 13
    ForeColor = &H0&
    Left = 810
    Top = 2002
    Width = 1215
    Height = 240
    TabIndex = 22
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "State"
    Index = 12
    ForeColor = &H0&
    Left = 810
    Top = 1732
    Width = 465
    Height = 240
    TabIndex = 21
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "City/Zip"
    Index = 11
    ForeColor = &H0&
    Left = 810
    Top = 1462
    Width = 675
    Height = 240
    TabIndex = 20
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Address"
    Index = 6
    ForeColor = &H0&
    Left = 810
    Top = 922
    Width = 765
    Height = 240
    TabIndex = 19
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Name"
    Index = 5
    ForeColor = &H0&
    Left = 810
    Top = 652
    Width = 555
    Height = 240
    TabIndex = 18
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "GroupProfile"

Private MasterFormExit As Integer
Private global_60 As Long

Private Sub TopCtrl1_UnknownEvent_11 'E98564
  'Data Table: 46CDD4
  Dim var_98 As TextBox
  loc_E984E8: On Error Goto loc_E9855B
  loc_E9850E: Call Proc_29_41_F14234(Proc_5_1_100EC1C("ADD", Me))
  loc_E98519: Call Proc_29_42_E9B9E8(global_64)
  loc_E98532: If (GroupProfile.OpenMode <> 1) Then
  loc_E98540:   Set var_8C = Me.Txt
  loc_E98546:   Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0))
  loc_E9854E:   var_98.SetFocus
  loc_E9855A: End If
  loc_E9855A: Exit Sub
  loc_E9855B: ' Referenced from: E984E8
  loc_E9855B: Proc_6_60_E63754(var_98)
  loc_E98560: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'F24A5C
  'Data Table: 46CDD4
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F24960: On Error Goto loc_F24A17
  loc_F24971: If (Proc_183_55_FE8490(global_64) = &HFF) Then
  loc_F24974:   Exit Sub
  loc_F24975: End If
  loc_F2498C: If (Me.RecordCount > 0) Then
  loc_F249A4:   var_8C = "EDIT"
  loc_F249B2:   Call Proc_29_41_F14234(Proc_5_1_100EC1C(var_8C, Me))
  loc_F249C8:   Set var_90 = Me.Txt
  loc_F249CE:   Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_98)
  loc_F249D6:   var_98.SetFocus
  loc_F249E5: Else
  loc_F24A06:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F24A16: End If
  loc_F24A16: Exit Sub
  loc_F24A17: ' Referenced from: F24960
  loc_F24A1F: Set var_90 = Err()
  loc_F24A25: Call 0.Method_arg_2C (var_8C)
  loc_F24A46: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F24A59: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '10D2E04
  'Data Table: 46CDD4
  Dim var_96 As Integer
  Dim unk_46CDF0 As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_10D2B34: On Error Goto loc_10D2DAD
  loc_10D2B45: If (Proc_183_56_FE8B08(global_64) = &HFF) Then
  loc_10D2B48:   Exit Sub
  loc_10D2B49: End If
  loc_10D2B80: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10D2B85:   var_96 = 0
  loc_10D2B91:   unk_46CDF0.BeginTrans var_11C
  loc_10D2B98:   var_96 = &HFF
  loc_10D2BAC:   var_94 = Me.Bookmark 'Variant
  loc_10D2BF8:   var_F8 = "Delete From GROUPPROF Where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_10D2C06:   unk_46CDF0.Execute CStr(var_F8), var_118, -1
  loc_10D2C51:   var_164 = 0
  loc_10D2C64:   var_15C = 0
  loc_10D2C6F:   var_158 = 0
  loc_10D2C82:   var_150 = 0
  loc_10D2C8D:   var_14C = 0
  loc_10D2CA0:   var_144 = 0
  loc_10D2CE0:   var_128 = "GroupPROF"
  loc_10D2CE9:   Proc_154_5_10E3BD4(MemVar_1F95044, var_128, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_10D2D17:   unk_46CDF0.CommitTrans
  loc_10D2D1E:   var_96 = 0
  loc_10D2D2C:   Me.Requery -1
  loc_10D2D4C:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10D2D59:     Me.Bookmark = var_94
  loc_10D2D61:   Else
  loc_10D2D75:     If (Me.EOF = 0) Then
  loc_10D2D7E:       Me.MoveLast
  loc_10D2D83:     End If
  loc_10D2D83:   End If
  loc_10D2D83:   Call Proc_29_44_144BDC8(var_96, var_144, 0, var_14C, var_150)
  loc_10D2DA4:   Proc_5_0_1107AD0(&HFF, Me, global_64, 0)
  loc_10D2DAC: End If
  loc_10D2DAC: Exit Sub
  loc_10D2DAD: ' Referenced from: 10D2B34
  loc_10D2DB3: If (var_96 = &HFF) Then
  loc_10D2DBC:   unk_46CDF0.RollbackTrans
  loc_10D2DC1: End If
  loc_10D2DC9: Set var_120 = Err()
  loc_10D2DCF: Call 0.Method_arg_2C (var_128, 0, var_158)
  loc_10D2DF0: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10D2E03: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E15C6C
  'Data Table: 46CDD4
  loc_E15C61: Me.Global.Unload Me
  loc_E15C69: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E2C168
  'Data Table: 46CDD4
  loc_E2C158: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2C160: Call Proc_29_44_144BDC8(global_64)
  loc_E2C165: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E2C348
  'Data Table: 46CDD4
  loc_E2C338: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2C340: Call Proc_29_44_144BDC8(global_64)
  loc_E2C345: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E2C2E8
  'Data Table: 46CDD4
  loc_E2C2D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2C2E0: Call Proc_29_44_144BDC8(global_64)
  loc_E2C2E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E2BEC8
  'Data Table: 46CDD4
  loc_E2BEB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2BEC0: Call Proc_29_44_144BDC8(global_64)
  loc_E2BEC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '13D4F3C
  'Data Table: 46CDD4
  Dim var_AC As Variant
  Dim var_E0 As Variant
  Dim var_98 As String
  Dim var_D0 As String
  Dim unk_46CDF0 As Connection15
  Dim var_8C As Variant
  Dim var_90 As Variant
  Dim var_94 As Field20
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim Me As Recordset15
  Dim var_BC As Variant
  Dim var_1BC As TextBox
  Dim var_424 As TextBox
  Dim var_47C As TextBox
  Dim var_4D8 As TextBox
  Dim var_36C As Variant
  Dim var_5A4 As Variant
  Dim var_738 As Variant
  loc_13D4710: On Error Goto loc_13D4EEA
  loc_13D4717: var_86 = CByte(0) 'Byte
  loc_13D4726: Set var_8C = Me.Txt
  loc_13D472C: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0))
  loc_13D4755: If (Proc_6_27_EA61EC(var_90, "Name1") = 0) Then
  loc_13D475F:   Call Txt_GotFocus()
  loc_13D4764:   Exit Sub
  loc_13D4765: End If
  loc_13D4769: Set var_8C = Me.TopCtrl1
  loc_13D476F: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E(CInt(0))
  loc_13D4784: If (var_90 = "Add") Then
  loc_13D478D:   var_E0 = 0
  loc_13D47AA:   var_98 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,6) AS INT)),1)+1 AS MyCode From GROUPPROF WHERE SITE_CODE='" & MemVar_1F95070
  loc_13D47BA:   unk_46CDF0.Execute "Name1" & "'", var_BC, -1
  loc_13D47C2:   var_8C = var_8C.Fields
  loc_13D47CA:   var_E0 = var_90.Item(var_90)
  loc_13D47D2:   var_94 = var_94.Value
  loc_13D480B:   var_F4 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_13D4831:   var_CC = Format(CStr(var_CC), "000000")
  loc_13D4839:   var_104 = (1 + var_CC)
  loc_13D4844:   intStaId = CStr(var_104)
  loc_13D4859: Else
  loc_13D4876:   var_90 = Me.Fields.Item("SearchCode")
  loc_13D487E:   var_BC = var_90.Value
  loc_13D488D:   intStaId = CStr(var_BC)
  loc_13D489E: End If
  loc_13D48A7: unk_46CDF0.BeginTrans var_108
  loc_13D48B0: var_86 = CByte(1) 'Byte
  loc_13D48D2: var_D0 = "Delete From GroupProf Where Code='" & intStaId & "'"
  loc_13D48DB: unk_46CDF0.Execute var_D0, var_BC, -1
  loc_13D48FE: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_90, Me.Txt)
  loc_13D490D: Proc_6_17_EAAE40(var_CC, CVar(var_90), 1)
  loc_13D491D: Set var_94 = Me.Txt
  loc_13D4923: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_11C)
  loc_13D4932: Proc_6_17_EAAE40(var_13C, CVar(var_11C))
  loc_13D4942: Set var_160 = Me.Txt
  loc_13D4948: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_164)
  loc_13D4957: Proc_6_17_EAAE40(var_184, CVar(var_164))
  loc_13D496A: Set var_1B8 = Me.Txt
  loc_13D4970: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_1BC, var_D0)
  loc_13D4978: var_F4 = var_1BC.Tag
  loc_13D4986: Proc_6_17_EAAE40(var_1DC, CVar(var_D0))
  loc_13D4996: Set var_210 = Me.Txt
  loc_13D499C: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(7), var_214)
  loc_13D49AB: Proc_6_17_EAAE40(var_234, CVar(var_214))
  loc_13D49BB: Set var_268 = Me.Txt
  loc_13D49C1: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(9), var_26C)
  loc_13D49D0: Proc_6_17_EAAE40(var_28C, CVar(var_26C))
  loc_13D49E0: Set var_2C0 = Me.Txt
  loc_13D49E6: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(8), var_2C4)
  loc_13D49F5: Proc_6_17_EAAE40(var_2E4, CVar(var_2C4))
  loc_13D4A05: Set var_318 = Me.Txt
  loc_13D4A0B: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HA), var_31C)
  loc_13D4A1A: Proc_6_17_EAAE40(var_33C, CVar(var_31C))
  loc_13D4A2A: Set var_370 = Me.Txt
  loc_13D4A30: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HB), var_374)
  loc_13D4A3F: Proc_6_17_EAAE40(var_394, CVar(var_374))
  loc_13D4A4F: Set var_3C8 = Me.Txt
  loc_13D4A55: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HC), var_3CC)
  loc_13D4A64: Proc_6_17_EAAE40(var_3EC, CVar(var_3CC))
  loc_13D4A77: Set var_420 = Me.Txt
  loc_13D4A7D: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HD), var_424)
  loc_13D4A93: Proc_6_17_EAAE40(var_444, CVar(var_424.Tag))
  loc_13D4AA6: Set var_478 = Me.Txt
  loc_13D4AAC: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HF), var_47C)
  loc_13D4AC2: Proc_6_17_EAAE40(var_4A0, CVar(var_47C.Tag))
  loc_13D4AD5: Set var_4D4 = Me.Txt
  loc_13D4ADB: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HE), var_4D8)
  loc_13D4AF1: Proc_6_17_EAAE40(var_4FC, CVar(var_4D8.Tag))
  loc_13D4B01: Set var_530 = Me.Txt
  loc_13D4B07: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&H10), var_534)
  loc_13D4B16: Proc_6_17_EAAE40(var_554, CVar(var_534))
  loc_13D4B29: Proc_6_7_F26918(var_624, Date)
  loc_13D4B32: Set var_658 = Me.TopCtrl1
  loc_13D4B38: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E(var_CC)
  loc_13D4B8A: var_98 = "Insert Into GroupProf (Code,Name,Add1,Add2,City,Type,ConName,PhoneNo,Comments1,Comments2,Comments3,TravelAgency,MarketSeg,BusSource,GroupType,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & intStaId
  loc_13D4B91: var_F4 = CVar(var_98 & "',") 'String
  loc_13D4B97: var_104 = var_F4 & var_CC 
  loc_13D4B9B: var_AC = ","
  loc_13D4C10: var_36C = var_104 & var_AC & var_13C & "," & var_184 & "," & var_1DC & "," & var_234 & "," & var_28C & "," & var_2E4 & "," & var_33C & "," 
  loc_13D4C7A: var_5A4 = var_36C & var_394 & "," & var_3EC & "," & var_444 & "," & var_4A0 & "," & var_4FC & "," & var_554 & ",'" & CVar(MemVar_1F95070) 
  loc_13D4CC0: var_738 = var_5A4 & "','" & CVar(MemVar_1F950C8) & "'," & var_624 & ",'" & IIf((var_678 = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) 
  loc_13D4CD7: unk_46CDF0.Execute CStr(var_738 & "')"), var_77C, -1
  loc_13D4DAD: unk_46CDF0.CommitTrans
  loc_13D4DB6: var_86 = CByte(0) 'Byte
  loc_13D4DC5: Me.Requery -1
  loc_13D4DDE: If (GroupProfile.OpenMode = 1) Then
  loc_13D4DF2:   Set var_8C = MemVar_1F95C40.Txt
  loc_13D4DF8:   Call 0.Method_TopCtrl1_UnknownEvent_190 (0, var_90)
  loc_13D4E16:   Set var_94 = MemVar_1F964EC.Txt
  loc_13D4E1C:   Call 0.Method_TopCtrl1_UnknownEvent_190 (&H1C, var_11C)
  loc_13D4E24:   RrRoomReservation.Txt.Text = GroupProfile.Txt.Text
  loc_13D4E3D:   Call RrRoomReservation.RetBack()
  loc_13D4E4F:   Me.Global.Unload Me
  loc_13D4E5A: Else
  loc_13D4E82:   Me.Find "SearchCode='" & intStaId & "'", 0, 1
  loc_13D4E92:   Set var_8C = Me.TopCtrl1
  loc_13D4E98:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E(var_AC)
  loc_13D4EAD:   If (var_780 = "Add") Then
  loc_13D4EB0:     Call TopCtrl1_UnknownEvent_11()
  loc_13D4EB5:     Exit Sub
  loc_13D4EB6:   End If
  loc_13D4ECB:   var_98 = "INI"
  loc_13D4ED9:   Call Proc_29_41_F14234(Proc_5_1_100EC1C(var_98, Me))
  loc_13D4EE4:   Call Proc_29_44_144BDC8(global_64)
  loc_13D4EE9: End If
  loc_13D4EE9: Exit Sub
  loc_13D4EEA: ' Referenced from: 13D4710
  loc_13D4EF3: If (CInt(var_86) = 1) Then
  loc_13D4EFC:   unk_46CDF0.RollbackTrans
  loc_13D4F01: End If
  loc_13D4F09: Set var_8C = Err()
  loc_13D4F0F: Call 0.Method_arg_2C (var_98)
  loc_13D4F28: MsgBox(CVar(var_98), &H10, var_CC, var_F4, var_104)
  loc_13D4F3B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EA0C58
  'Data Table: 46CDD4
  loc_EA0BE0: On Error Goto loc_EA0C51
  loc_EA0C1A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA0C40:   Call Proc_29_41_F14234(Proc_5_1_100EC1C("INI", Me))
  loc_EA0C4B:   Call Proc_29_44_144BDC8(global_64)
  loc_EA0C50: End If
  loc_EA0C50: Exit Sub
  loc_EA0C51: ' Referenced from: EA0BE0
  loc_EA0C51: Proc_6_60_E63754()
  loc_EA0C56: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EC89E0
  'Data Table: 46CDD4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EC8940: On Error Goto loc_EC89D8
  loc_EC895A: If (Me.RecordCount <= 0) Then
  loc_EC8963:   var_B8 = "Information"
  loc_EC897E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC898E:   Exit Sub
  loc_EC898F: End If
  loc_EC8996: var_10C = "Select Code As SearchCode,GROUPPROF.Name,ADD1 AS Address1,ADD2 AS Address2,CITY.CITYNAME AS CityName FROM GroupProf Left Join City on City.CityCode=GroupProf.City where (GroupProf.LOGSITE_CODE='" & MemVar_1F95078
  loc_EC899D: MemVar_1F950E4 = var_10C & "' or GroupProf.LOGSITE_CODE='HO') Order by GroupProf.Name"
  loc_EC89AA: MemVar_1F95120 = Me
  loc_EC89B7: Proc_6_126_F1C850("3200,2500,2500,2400")
  loc_EC89D2: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC89D7: Exit Sub
  loc_EC89D8: ' Referenced from: EC8940
  loc_EC89D8: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EC89DD: Exit Sub
  loc_EC89DE: CopyBytes 23807
End Sub

Private Sub TopCtrl1_UnknownEvent_1C '1084C00
  'Data Table: 46CDD4
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_46CDF0 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1084968: On Error Goto loc_1084BB4
  loc_108497F: var_A0 = "SELECT G.Name, G.Add1 AS Address1, G.Add2 AS Address2, C.CityName + ' ' +C.ZipCode AS City, G.Type AS Country, G.PhoneNo AS PhoneNo, G.TravelAgency AS TravelAgency, G.MarketSeg AS MarketSegment, G.BusSource AS BusSource From GroupProf G Left Join City C ON G.City=C.CityCode where (G.LOGSITE_CODE='" & MemVar_1F95078
  loc_108498F: unk_46CDF0.Execute var_A0 & "' or G.LOGSITE_CODE='HO') order by G.Name", var_C4, -1
  loc_108499A: Set var_88 = var_C8
  loc_10849B0: var_CC = var_88.RecordCount
  loc_10849BE: If (var_CC = 0) Then
  loc_10849DA:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_10849EA:   Exit Sub
  loc_10849EB: End If
  loc_10849FA: var_A4 = MemVar_1F950B4 & "\GroupProfile.ttx"
  loc_1084A01: Set var_C8 = var_88 
  loc_1084A0D: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_1084A17: Set var_88 = var_C8
  loc_1084A1D: var_B4 = CVar(var_12E) 'Integer
  loc_1084A20: var_98 = var_B4 'Variant
  loc_1084A3C: var_A0 = MemVar_1F950B4 & "\GroupProfile.RPT"
  loc_1084A45: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_1084A50: MemVar_1F951E8 = var_C8
  loc_1084A6B: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_1084A73: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1084A7F: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1084A98:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1084AA0:   Call 0.Method_arg_20 (var_138)
  loc_1084AA8:   Call 0.Method_arg_30 (var_A0)
  loc_1084AEE:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1084B04:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1084B0C:     Call 0.Method_arg_20 (var_138)
  loc_1084B14:     Call 0.Method_arg_38 ("'Group Profile'")
  loc_1084B20:   End If
  loc_1084B23: Next var_132 'Integer
  loc_1084B41: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1084B49: Call 0.Method_arg_2C (var_DC)
  loc_1084B57: Call 0.Method_arg_150 (var_FC)
  loc_1084B62: Call 0.Method_arg_50 (var_A0)
  loc_1084B6C: Set var_138 = Nothing
  loc_1084B86: Set var_C8 = MemVar_1F951E8 
  loc_1084B92: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_1084B9D: MemVar_1F951E8 = var_C8
  loc_1084BB0: Set var_88 = Nothing
  loc_1084BB3: Exit Sub
  loc_1084BB4: ' Referenced from: 1084968
  loc_1084BBC: Set var_C8 = Err()
  loc_1084BC2: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_1084BCD: Call 0.Method_arg_50 (var_A4)
  loc_1084BE9: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_1084BFC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E56338
  'Data Table: 46CDD4
  Dim Me As Recordset15
  Dim arg_70FF As Double
  loc_E562FF: Me.Requery -1
  loc_E5630F: Me.Requery -1
  loc_E5631F: Me.Requery -1
  loc_E5632F: Me.Requery -1
  loc_E56334: Exit Sub
  loc_E56335: arg_70FF = 
End Sub

Private Sub Txt_GotFocus(Index As Integer) '13BCDF0
  'Data Table: 46CDD4
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_A8 As Variant
  Dim var_90 As Variant
  Dim var_BC As Variant
  Dim Me As Recordset15
  loc_13BC496: Set var_88 = Me.Txt
  loc_13BC49C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_13BC4AA: Proc_6_74_E23240(var_8C)
  loc_13BC4B6: Call Proc_29_43_F28418(var_8C)
  loc_13BC4BE: var_92 = Index
  loc_13BC4C9: If (var_92 = CInt(3)) Then
  loc_13BC4DA:   Set var_88 = Me.Txt
  loc_13BC4E0:   Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_13BC4FF:   Me.DGCity.Left = CVar(var_8C.Left)
  loc_13BC51B:   Set var_90 = Me.Txt
  loc_13BC521:   Call 0.Method_Txt_GotFocus0 (CInt(3), var_BC)
  loc_13BC53C:   Set var_88 = Me.Txt
  loc_13BC542:   Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_13BC556:   var_A8 = CVar((var_8C.Top + var_BC.Height)) 'Single
  loc_13BC565:   Me.DGCity.Top = CVar(var_8C.Left)
  loc_13BC58E:   If (Me.RecordCount > 0) Then
  loc_13BC59C:     Set var_8C = Me.FGPoint
  loc_13BC5B4:     Proc_6_137_1192FDC(Me.DGCity, global_68, Index)
  loc_13BC5C2:   End If
  loc_13BC610:   Set var_88 = Me.Txt
  loc_13BC616:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_CC)
  loc_13BC61E:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_13BC636:   If (var_8C Or (var_CC = vbNullString)) Then
  loc_13BC639:     Exit Sub
  loc_13BC63A:   End If
  loc_13BC647:   Set var_88 = Me.Txt
  loc_13BC64D:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13BC655:   var_CC = var_8C.Text
  loc_13BC667:   var_A8 = "Name"
  loc_13BC67E:   var_BC = Me.Fields.Item(var_A8)
  loc_13BC6A2:   If CBool(CVar(var_CC) <> var_BC.Value) Then
  loc_13BC6AB:     Me.MoveFirst
  loc_13BC6CE:     Set var_88 = Me.Txt
  loc_13BC6D4:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_CC, "Name ='")
  loc_13BC6DC:     0 = var_8C.Text
  loc_13BC6F5:     Me.Find 1 & var_CC & "'", var_A8, var_92
  loc_13BC70A:   End If
  loc_13BC70D: Else
  loc_13BC715:   If (var_92 = CInt(&HD)) Then
  loc_13BC726:     Set var_88 = Me.Txt
  loc_13BC72C:     Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_8C)
  loc_13BC74B:     Me.DGTravelAg.Left = CVar(var_8C.Left)
  loc_13BC767:     Set var_90 = Me.Txt
  loc_13BC76D:     Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_BC)
  loc_13BC788:     Set var_88 = Me.Txt
  loc_13BC78E:     Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_8C)
  loc_13BC7A2:     var_A8 = CVar((var_8C.Top + var_BC.Height)) 'Single
  loc_13BC7B1:     Me.DGTravelAg.Top = CVar(var_8C.Left)
  loc_13BC7DA:     If (Me.RecordCount > 0) Then
  loc_13BC7E8:       Set var_8C = Me.FGPoint
  loc_13BC800:       Proc_6_137_1192FDC(Me.DGTravelAg, global_72)
  loc_13BC80E:     End If
  loc_13BC85C:     Set var_88 = Me.Txt
  loc_13BC862:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_CC)
  loc_13BC86A:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_13BC882:     If (Index Or (var_CC = vbNullString)) Then
  loc_13BC885:       Exit Sub
  loc_13BC886:     End If
  loc_13BC893:     Set var_88 = Me.Txt
  loc_13BC899:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13BC8A1:     var_CC = var_8C.Text
  loc_13BC8B3:     var_A8 = "Name"
  loc_13BC8CA:     var_BC = Me.Fields.Item(var_A8)
  loc_13BC8EE:     If CBool(CVar(var_CC) <> var_BC.Value) Then
  loc_13BC8F7:       Me.MoveFirst
  loc_13BC91A:       Set var_88 = Me.Txt
  loc_13BC920:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_CC, "Name ='")
  loc_13BC928:       0 = var_8C.Text
  loc_13BC941:       Me.Find 1 & var_CC & "'", var_A8, var_8C
  loc_13BC956:     End If
  loc_13BC959:   Else
  loc_13BC961:     If (var_92 = CInt(&HE)) Then
  loc_13BC972:       Set var_88 = Me.Txt
  loc_13BC978:       Call 0.Method_Txt_GotFocus0 (CInt(&HE), var_8C)
  loc_13BC997:       Me.DGBusiness.Left = CVar(var_8C.Left)
  loc_13BC9B3:       Set var_90 = Me.Txt
  loc_13BC9B9:       Call 0.Method_Txt_GotFocus0 (CInt(&HE), var_BC)
  loc_13BC9D4:       Set var_88 = Me.Txt
  loc_13BC9DA:       Call 0.Method_Txt_GotFocus0 (CInt(&HE), var_8C)
  loc_13BC9EE:       var_A8 = CVar((var_8C.Top + var_BC.Height)) 'Single
  loc_13BC9FD:       Me.DGBusiness.Top = CVar(var_8C.Left)
  loc_13BCA26:       If (Me.RecordCount > 0) Then
  loc_13BCA34:         Set var_8C = Me.FGPoint
  loc_13BCA4C:         Proc_6_137_1192FDC(Me.DGBusiness, global_80)
  loc_13BCA5A:       End If
  loc_13BCAA8:       Set var_88 = Me.Txt
  loc_13BCAAE:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_CC)
  loc_13BCAB6:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_13BCACE:       If (Index Or (var_CC = vbNullString)) Then
  loc_13BCAD1:         Exit Sub
  loc_13BCAD2:       End If
  loc_13BCADF:       Set var_88 = Me.Txt
  loc_13BCAE5:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13BCAED:       var_CC = var_8C.Text
  loc_13BCAFF:       var_A8 = "Name"
  loc_13BCB16:       var_BC = Me.Fields.Item(var_A8)
  loc_13BCB3A:       If CBool(CVar(var_CC) <> var_BC.Value) Then
  loc_13BCB43:         Me.MoveFirst
  loc_13BCB66:         Set var_88 = Me.Txt
  loc_13BCB6C:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_CC, "Name='")
  loc_13BCB74:         0 = var_8C.Text
  loc_13BCB8D:         Me.Find 1 & var_CC & "'", var_A8, var_8C
  loc_13BCBA2:       End If
  loc_13BCBA5:     Else
  loc_13BCBAD:       If (var_92 = CInt(&HF)) Then
  loc_13BCBBE:         Set var_88 = Me.Txt
  loc_13BCBC4:         Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_8C)
  loc_13BCBE3:         Me.DGMarketSeg.Left = CVar(var_8C.Left)
  loc_13BCBFF:         Set var_90 = Me.Txt
  loc_13BCC05:         Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_BC)
  loc_13BCC20:         Set var_88 = Me.Txt
  loc_13BCC26:         Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_8C)
  loc_13BCC3A:         var_A8 = CVar((var_8C.Top + var_BC.Height)) 'Single
  loc_13BCC49:         Me.DGMarketSeg.Top = CVar(var_8C.Left)
  loc_13BCC72:         If (Me.RecordCount > 0) Then
  loc_13BCC80:           Set var_8C = Me.FGPoint
  loc_13BCC98:           Proc_6_137_1192FDC(Me.DGMarketSeg, global_76)
  loc_13BCCA6:         End If
  loc_13BCCF4:         Set var_88 = Me.Txt
  loc_13BCCFA:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_CC)
  loc_13BCD02:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_13BCD1A:         If (Index Or (var_CC = vbNullString)) Then
  loc_13BCD1D:           Exit Sub
  loc_13BCD1E:         End If
  loc_13BCD2B:         Set var_88 = Me.Txt
  loc_13BCD31:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13BCD39:         var_CC = var_8C.Text
  loc_13BCD4B:         var_A8 = "Name"
  loc_13BCD86:         If CBool(CVar(var_CC) <> Me.Fields.Item(var_A8).Value) Then
  loc_13BCD8F:           Me.MoveFirst
  loc_13BCDB2:           Set var_88 = Me.Txt
  loc_13BCDB8:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_CC, "Name ='")
  loc_13BCDC0:           0 = var_8C.Text
  loc_13BCDD9:           Me.Find 1 & var_CC & "'", var_A8, var_8C
  loc_13BCDEE:         End If
  loc_13BCDEE:       End If
  loc_13BCDEE:     End If
  loc_13BCDEE:   End If
  loc_13BCDEE: End If
  loc_13BCDEE: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '125B56C
  'Data Table: 46CDD4
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_9C As DataGrid
  Dim var_E4 As Variant
  Dim var_A0 As DataGrid
  Dim var_F4 As Variant
  loc_125B00E: If (CLng(Shift) = &H1B) Then
  loc_125B011:   Call Proc_29_43_F28418()
  loc_125B016:   Exit Sub
  loc_125B017: End If
  loc_125B01A: var_88 = KeyCode
  loc_125B025: If (var_88 = CInt(3)) Then
  loc_125B045:   Set var_A0 = Me.FGPoint
  loc_125B050:   Set var_9C = Nothing
  loc_125B082:   Proc_6_69_134A630(Me.DGCity, Me.Txt, CInt(3), global_68, Shift, 0)
  loc_125B0F1:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_125B117:     Proc_6_138_106E830(Me.DGCity, global_68, KeyCode, Me.FGPoint, 1)
  loc_125B125:   End If
  loc_125B128: Else
  loc_125B130:   If (var_88 = CInt(&HD)) Then
  loc_125B15B:     Set var_9C = Nothing
  loc_125B18D:     Proc_6_69_134A630(Me.DGTravelAg, Me.Txt, CInt(&HD), global_72, Shift, 0, 1)
  loc_125B1FC:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_125B203:       Set var_9C = Me.DGTravelAg
  loc_125B222:       Proc_6_138_106E830(var_9C, global_72, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_125B230:     End If
  loc_125B233:   Else
  loc_125B23B:     If (var_88 = CInt(&HE)) Then
  loc_125B298:       Proc_6_69_134A630(Me.DGBusiness, Me.Txt, CInt(&HE), global_80, Shift, 0, 1, Nothing)
  loc_125B307:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_125B32D:         Proc_6_138_106E830(Me.DGBusiness, global_80, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_125B33B:       End If
  loc_125B33E:     Else
  loc_125B346:       If (var_88 = CInt(&HF)) Then
  loc_125B3A3:         Proc_6_69_134A630(Me.DGMarketSeg, Me.Txt, CInt(&HF), global_76, Shift, 0, 1, Nothing)
  loc_125B412:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_125B438:           Proc_6_138_106E830(Me.DGMarketSeg, global_76, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_125B446:         End If
  loc_125B446:       End If
  loc_125B446:     End If
  loc_125B446:   End If
  loc_125B446: End If
  loc_125B477: Set var_9C = Me.DGBusiness
  loc_125B47D: var_E4 = var_9C.Visible
  loc_125B494: var_F4 = Me.DGMarketSeg.Visible
  loc_125B4B7: If ((((CBool(Me.DGCity.Visible) = 0) And (CBool(Me.DGTravelAg.Visible) = 0)) And (CBool(var_E4) = 0)) And (CBool(var_F4) = 0)) Then
  loc_125B4D8:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H10))) Then
  loc_125B4E1:     Call Txt_Validate(KeyCode)
  loc_125B4EC:     If (var_86 = &HFF) Then
  loc_125B4EF:       Exit Sub
  loc_125B4F0:     End If
  loc_125B527:     If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_F4) = 6) Then
  loc_125B52A:       Call TopCtrl1_UnknownEvent_19()
  loc_125B52F:     End If
  loc_125B52F:     Exit Sub
  loc_125B530:   End If
  loc_125B545:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_125B54E:     Proc_6_75_E5335C(Shift, arg_14, var_86, 0)
  loc_125B553:   End If
  loc_125B55D:   If (CLng(Shift) = &H26) Then
  loc_125B566:     Proc_6_76_E533C8(Shift, arg_14, var_9C)
  loc_125B56B:   End If
  loc_125B56B: End If
  loc_125B56B: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1069680
  'Data Table: 46CDD4
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_94 As Variant
  Dim arg_51FF As Integer
  loc_10693FA: Proc_6_133_E7FB08(var_94)
  loc_1069403: arg_10 = CInt(var_94)
  loc_106940C: Proc_6_58_E06050(arg_10, arg_10)
  loc_1069414: var_96 = KeyAscii
  loc_106941F: If (var_96 = CInt(3)) Then
  loc_106943E:   If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_1069450:     var_A0 = "Name"
  loc_106946B:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, arg_10)
  loc_106949D:     Proc_6_138_106E830(Me.DGCity, global_68, KeyAscii, Me.FGPoint)
  loc_10694AB:   End If
  loc_10694AE: Else
  loc_10694B6:   If (var_96 = CInt(&HD)) Then
  loc_10694D5:     If (CBool(Me.DGTravelAg.Visible) = &HFF) Then
  loc_1069506:       Proc_6_89_1470B00(Me.Txt, CInt(&HD), global_72, arg_10, "Name")
  loc_1069538:       Proc_6_138_106E830(Me.DGTravelAg, global_72, KeyAscii, Me.FGPoint, 0)
  loc_1069546:     End If
  loc_1069549:   Else
  loc_1069551:     If (var_96 = CInt(&HE)) Then
  loc_1069570:       If (CBool(Me.DGBusiness.Visible) = &HFF) Then
  loc_10695A1:         Proc_6_89_1470B00(Me.Txt, CInt(&HE), global_80, arg_10, "Name")
  loc_10695D3:         Proc_6_138_106E830(Me.DGBusiness, global_80, KeyAscii, Me.FGPoint, 0)
  loc_10695E1:       End If
  loc_10695E4:     Else
  loc_10695EC:       If (var_96 = CInt(&HF)) Then
  loc_106960B:         If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_106961D:           var_A0 = "Name"
  loc_106963C:           Proc_6_89_1470B00(Me.Txt, CInt(&HF), global_76, arg_10, var_A0)
  loc_106966E:           Proc_6_138_106E830(Me.DGMarketSeg, global_76, KeyAscii, Me.FGPoint, 0)
  loc_106967C:         End If
  loc_106967C:       End If
  loc_106967C:     End If
  loc_106967C:   End If
  loc_106967C: End If
  loc_106967C: Exit Sub
  loc_106967D: arg_51FF = var_A0
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'FF029C
  'Data Table: 46CDD4
  Dim var_86 As Integer
  loc_FF00B7: var_86 = KeyCode
  loc_FF00C2: If (var_86 = CInt(3)) Then
  loc_FF00E1:   If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_FF00F5:     var_A8 = "Name"
  loc_FF011D:     Proc_6_68_12A2818(Me.DGCity, Me.Txt, CInt(3), global_68)
  loc_FF0130:   End If
  loc_FF0133: Else
  loc_FF013B:   If (var_86 = CInt(&HD)) Then
  loc_FF015A:     If (CBool(Me.DGTravelAg.Visible) = &HFF) Then
  loc_FF016E:       var_A8 = "Name"
  loc_FF0196:       Proc_6_68_12A2818(Me.DGTravelAg, Me.Txt, CInt(&HD), global_72, Shift)
  loc_FF01A9:     End If
  loc_FF01AC:   Else
  loc_FF01B4:     If (var_86 = CInt(&HE)) Then
  loc_FF01D3:       If (CBool(Me.DGBusiness.Visible) = &HFF) Then
  loc_FF01E7:         var_A8 = "Name"
  loc_FF020F:         Proc_6_68_12A2818(Me.DGBusiness, Me.Txt, CInt(&HE), global_80, Shift)
  loc_FF0222:       End If
  loc_FF0225:     Else
  loc_FF022D:       If (var_86 = CInt(&HF)) Then
  loc_FF024C:         If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_FF0288:           Proc_6_68_12A2818(Me.DGMarketSeg, Me.Txt, CInt(&HF), global_76, Shift, "Name")
  loc_FF029B:         End If
  loc_FF029B:       End If
  loc_FF029B:     End If
  loc_FF029B:   End If
  loc_FF029B: End If
  loc_FF029B: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4804C
  'Data Table: 46CDD4
  loc_E4802A: Set var_88 = Me.Txt
  loc_E48030: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4803E: Proc_6_73_E23294(var_8C)
  loc_E4804A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '137C064
  'Data Table: 46CDD4
  Dim var_8A As Integer
  Dim var_C4 As String
  Dim var_E8 As Variant
  Dim var_B0 As Variant
  Dim var_10C As String
  Dim unk_46CDF0 As Connection15
  Dim var_130 As Recordset15
  Dim var_134 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_90 As Fields15
  Dim var_88 As Recordset15
  loc_137B7F7: var_8A = Cancel
  loc_137B802: If (var_8A = CInt(0)) Then
  loc_137B809:   Set var_90 = Me.TopCtrl1
  loc_137B80F:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E(var_8A)
  loc_137B824:   If ( = "Add") Then
  loc_137B84A:     var_C4 = "Select Count(*) from GroupProf where (LOGSITE_CODE='" & MemVar_1F95078
  loc_137B851:     var_E8 = CVar(var_C4 & "' or LOGSITE_CODE='HO') and UPPER(Name)='") 'String
  loc_137B85F:     Set var_90 = Me.Txt
  loc_137B865:     Call 0.Method_Txt_Validate0 (CInt(0), var_C8, var_E8, var_12C, -1)
  loc_137B874:     var_C0 = Ucase(CVar(var_C8))
  loc_137B87F:     var_D8 = Trim(var_C0)
  loc_137B89E:     unk_46CDF0.Execute CStr(var_130 & var_D8 & "'"), var_134, 0
  loc_137B8AE:      = var_134.Item(var_158)
  loc_137B8B6:      = var_130.Fields.Value
  loc_137B8EB:     If (var_158 > 0) Then
  loc_137B907:       MsgBox("Duplicate Name ", 0, var_C0, var_D8, var_E8)
  loc_137B919:       arg_10 = &HFF
  loc_137B91C:       Exit Sub
  loc_137B91D:     End If
  loc_137B91D:   End If
  loc_137B920: Else
  loc_137B928:   If (var_8A = CInt(3)) Then
  loc_137B979:     Set var_90 = Me.Txt
  loc_137B97F:     Call 0.Method_Txt_Validate0 (Cancel, var_C8, var_C4)
  loc_137B987:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C8.Text
  loc_137B99F:     If (arg_10 Or (var_C4 = vbNullString)) Then
  loc_137B9A2:       Exit Sub
  loc_137B9A3:     End If
  loc_137B9DE:     Set var_130 = Me.Txt
  loc_137B9E4:     Call 0.Method_Txt_Validate0 (Cancel, var_134)
  loc_137B9EC:     var_134.Text = CStr(Me.Fields.Item("Name").Value)
  loc_137BA1F:     var_C8 = Me.Fields.Item("Code")
  loc_137BA30:     var_C4 = CStr(var_C8.Value)
  loc_137BA3D:     Set var_130 = Me.Txt
  loc_137BA43:     Call 0.Method_Txt_Validate0 (Cancel, var_134)
  loc_137BA4B:     var_134.Tag = var_C4
  loc_137BA7E:     Set var_90 = Me.Txt
  loc_137BA84:     Call 0.Method_Txt_Validate0 (Cancel, var_C8, var_C4, "SELECT City.CityName,CITY.ZIPCODE,Country.Name AS CountryName,State.Name AS StateName,Country.Type as CountryType FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code WHERE CITYCODE='")
  loc_137BA8C:     var_B0 = var_C8.Tag
  loc_137BA95:     var_10C = -1 & var_C4
  loc_137BAA5:     unk_46CDF0.Execute CStr(var_130 & var_D8 & "'") & "'", var_130, 
  loc_137BAB0:     Set var_88 = var_130
  loc_137BADC:     If (var_88.RecordCount > 0) Then
  loc_137BB15:       Set var_130 = Me.Txt
  loc_137BB1B:       Call 0.Method_Txt_Validate0 (CInt(3), var_134)
  loc_137BB23:       var_134.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CityName")))
  loc_137BB6D:       Set var_130 = Me.Txt
  loc_137BB73:       Call 0.Method_Txt_Validate0 (CInt(4), var_134)
  loc_137BB7B:       var_134.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Zipcode")))
  loc_137BBC5:       Set var_130 = Me.Txt
  loc_137BBCB:       Call 0.Method_Txt_Validate0 (CInt(5), var_134)
  loc_137BBD3:       var_134.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("StateName")))
  loc_137BC1D:       Set var_130 = Me.Txt
  loc_137BC23:       Call 0.Method_Txt_Validate0 (CInt(6), var_134)
  loc_137BC2B:       var_134.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CountryName")))
  loc_137BC56:       var_C8 = var_88.Fields.Item("CountryType")
  loc_137BC75:       Set var_130 = Me.Txt
  loc_137BC7B:       Call 0.Method_Txt_Validate0 (CInt(7), var_134)
  loc_137BC83:       var_134.Text = Proc_6_38_E69628(CVar(var_C8))
  loc_137BC97:     End If
  loc_137BC9A:   Else
  loc_137BCA2:     If (var_8A = CInt(&HD)) Then
  loc_137BCF3:       Set var_90 = Me.Txt
  loc_137BCF9:       Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_137BD19:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_C8.Text = vbNullString)) Then
  loc_137BD1C:         Exit Sub
  loc_137BD1D:       End If
  loc_137BD58:       Set var_130 = Me.Txt
  loc_137BD5E:       Call 0.Method_Txt_Validate0 (Cancel, var_134)
  loc_137BD66:       var_134.Text = CStr(Me.Fields.Item("Name").Value)
  loc_137BD99:       var_C8 = Me.Fields.Item("Code")
  loc_137BDB7:       Set var_130 = Me.Txt
  loc_137BDBD:       Call 0.Method_Txt_Validate0 (Cancel, var_134)
  loc_137BDC5:       var_134.Tag = CStr(var_C8.Value)
  loc_137BDDE:     Else
  loc_137BDE6:       If (var_8A = CInt(&HE)) Then
  loc_137BE37:         Set var_90 = Me.Txt
  loc_137BE3D:         Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_137BE5D:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_C8.Text = vbNullString)) Then
  loc_137BE60:           Exit Sub
  loc_137BE61:         End If
  loc_137BE9C:         Set var_130 = Me.Txt
  loc_137BEA2:         Call 0.Method_Txt_Validate0 (Cancel, var_134)
  loc_137BEAA:         var_134.Text = CStr(Me.Fields.Item("Name").Value)
  loc_137BEDD:         var_C8 = Me.Fields.Item("Code")
  loc_137BEFB:         Set var_130 = Me.Txt
  loc_137BF01:         Call 0.Method_Txt_Validate0 (Cancel, var_134)
  loc_137BF09:         var_134.Tag = CStr(var_C8.Value)
  loc_137BF22:       Else
  loc_137BF2A:         If (var_8A = CInt(&HF)) Then
  loc_137BF7B:           Set var_90 = Me.Txt
  loc_137BF81:           Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_137BFA1:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_C8.Text = vbNullString)) Then
  loc_137BFA4:             Exit Sub
  loc_137BFA5:           End If
  loc_137BFE0:           Set var_130 = Me.Txt
  loc_137BFE6:           Call 0.Method_Txt_Validate0 (Cancel, var_134)
  loc_137BFEE:           var_134.Text = CStr(Me.Fields.Item("Name").Value)
  loc_137C03F:           Set var_130 = Me.Txt
  loc_137C045:           Call 0.Method_Txt_Validate0 (Cancel, var_134)
  loc_137C04D:           var_134.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_137C063:         End If
  loc_137C063:       End If
  loc_137C063:     End If
  loc_137C063:   End If
  loc_137C063: End If
  loc_137C063: Exit Sub
End Sub

Private Sub DGCity_UnknownEvent_9 'F42194
  'Data Table: 46CDD4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4208B: Me.DGCity.Visible = False
  loc_F420AA: If (Me.RecordCount > 0) Then
  loc_F420E9:   Set var_B4 = Me.Txt
  loc_F420EF:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(3), var_B8)
  loc_F420F7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4212A:   var_B0 = Me.Fields.Item("Name")
  loc_F42149:   Set var_B4 = Me.Txt
  loc_F4214F:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(3), var_B8)
  loc_F42157:   var_B8.Text = CStr(var_B0.Value)
  loc_F4216D: End If
  loc_F42178: Set var_A8 = Me.Txt
  loc_F4217E: Call 0.Method_DGCity_UnknownEvent_90 (CInt(3))
  loc_F42186: var_B0.SetFocus
  loc_F42192: Exit Sub
End Sub

Private Sub DGCity_UnknownEvent_1F 'E75E1C
  'Data Table: 46CDD4
  loc_E75DDA: Proc_6_153_E91D24(Me.DGCity, arg_14)
  loc_E75DF1: Set var_8C = Me.FGPoint
  loc_E75E0D: Proc_6_138_106E830(Me.DGCity, global_68, CInt(3))
  loc_E75E1B: Exit Sub
End Sub

Private Sub Form_Load() '11455D4
  'Data Table: 46CDD4
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C4 As DataGrid
  Dim var_D8 As Variant
  Dim Me As Recordset15
  loc_1145240: On Error Goto loc_11455CE
  loc_114525B: Proc_6_23_DFC5B8(Me, 5500)
  loc_1145271: Set var_88 = Me.Txt
  loc_1145277: Call 0.Method_Form_Load0 (CInt(3), var_90)
  loc_1145296: Me.DGCity.Left = CVar(var_90.Left)
  loc_11452B2: Set var_B8 = Me.Txt
  loc_11452B8: Call 0.Method_Form_Load0 (CInt(3), var_BC)
  loc_11452D3: Set var_88 = Me.Txt
  loc_11452D9: Call 0.Method_Form_Load0 (CInt(3), var_90)
  loc_11452F1: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_11452FA: Set var_C4 = Me.DGCity
  loc_1145300: var_C4.Top = CVar(var_90.Left)
  loc_114531C: Set global_68 = New 
  loc_114532E: Me.var_C4.CursorLocation = 3
  loc_1145358: var_D8 = CVar("Select CITYCODE AS Code,CITYNAME AS Name From CITY where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by CITYName") 'String
  loc_1145362: Me.Open var_D8, CVar(MemVar_1F95044), 2
  loc_1145376: CVarUnk
  loc_114537B: VerifyVarObj
  loc_1145381: Set var_88 = Me.DGCity
  loc_1145387: LateIdStAd
  loc_114539F: Set global_72 = New 
  loc_11453B1: Me.DGCity.CursorLocation = 3
  loc_11453DB: var_D8 = CVar("Select SubCode AS Code,Name From SubGroup Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and CompanyType='Travel Agency' Order by Name") 'String
  loc_11453E5: Me.Open var_D8, CVar(MemVar_1F95044), 2
  loc_11453F9: CVarUnk
  loc_11453FE: VerifyVarObj
  loc_1145404: Set var_88 = Me.DGTravelAg
  loc_114540A: LateIdStAd
  loc_1145434: Me.DGTravelAg.CursorLocation = 3
  loc_114545E: var_D8 = CVar("Select Code,Name FROM MarketSeg Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name") 'String
  loc_1145468: Me.Open var_D8, CVar(MemVar_1F95044), 2
  loc_114547C: CVarUnk
  loc_1145481: VerifyVarObj
  loc_1145487: Set var_88 = Me.DGMarketSeg
  loc_114548D: LateIdStAd
  loc_11454B7: Me.DGMarketSeg.CursorLocation = 3
  loc_11454E1: var_D8 = CVar("SELECT Code,Name FROM BussSource Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name") 'String
  loc_11454FF: CVarUnk
  loc_1145504: VerifyVarObj
  loc_114550A: Set var_88 = Me.DGBusiness
  loc_1145510: LateIdStAd
  loc_114553A: Me.DGBusiness.CursorLocation = 3
  loc_1145564: var_D8 = CVar("SELECT CODE AS SearchCode,GroupProf.* FROM GroupProf Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY NAME") 'String
  loc_114556E: r_D8, CVar(MemVar_1F95044), 2 var_D8, CVar(MemVar_1F95044), 2
  loc_1145585: Set var_88 = Me
  loc_114559C: Call Proc_29_41_F14234(Proc_5_1_100EC1C("INI", var_88, New, 3, -1, var_88, New, 3), -1, var_88, New)
  loc_11455A7: Call Proc_29_43_F28418(3, -1)
  loc_11455AC: Call Proc_29_44_144BDC8(var_88)
  loc_11455C5: If (GroupProfile.OpenMode = 1) Then
  loc_11455C8:   Call TopCtrl1_UnknownEvent_11()
  loc_11455CD: End If
  loc_11455CD: Exit Sub
  loc_11455CE: ' Referenced from: 1145240
  loc_11455CE: Proc_6_60_E63754(global_72)
  loc_11455D3: Exit Sub
End Sub

Private Sub Form_Resize() 'DFD6C8
  'Data Table: 46CDD4
  loc_DFD6C4: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E787A8
  'Data Table: 46CDD4
  loc_E7874F: Set global_68 = Nothing
  loc_E78761: Set global_80 = Nothing
  loc_E78773: Set global_72 = Nothing
  loc_E78785: Set global_76 = Nothing
  loc_E78797: Set global_64 = Nothing
  loc_E787A3: MasterFormExit = 0
  loc_E787A6: Exit Sub
End Sub

Private Sub Form_Activate() 'E84A1C
  'Data Table: 46CDD4
  Dim var_A0 As TextBox
  loc_E849B0: On Error Goto loc_E84A16
  loc_E849B7: Set var_88 = Me.TopCtrl1
  loc_E849BD: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030010()
  loc_E849D2: If (CLng(CInt()) = &H2D) Then
  loc_E849D5:   Call TopCtrl1_UnknownEvent_1D()
  loc_E849DA: End If
  loc_E849EE: If (GroupProfile.OpenMode = 1) Then
  loc_E849FC:   Set var_88 = Me.Txt
  loc_E84A02:   Call 0.Method_Form_Activate0 (CInt(0))
  loc_E84A0A:   var_A0.SetFocus
  loc_E84A16:   ' Referenced from: E849B0
  loc_E84A16: End If
  loc_E84A16: Proc_6_60_E63754(var_A0)
  loc_E84A1B: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2751C
  'Data Table: 46CDD4
  loc_E27501: If (MasterFormExit = &HFF) Then
  loc_E27511:   Me.Global.Unload Me
  loc_E27519: End If
  loc_E27519: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2B89C
  'Data Table: 46CDD4
  loc_E2B874: On Error Goto loc_E2B894
  loc_E2B88B: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2B893: Exit Sub
  loc_E2B894: ' Referenced from: E2B874
  loc_E2B894: Proc_6_60_E63754(Shift)
  loc_E2B899: Exit Sub
End Sub

Private Sub DGBusiness_UnknownEvent_9 'F41954
  'Data Table: 46CDD4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4184B: Me.DGBusiness.Visible = False
  loc_F4186A: If (Me.RecordCount > 0) Then
  loc_F418A9:   Set var_B4 = Me.Txt
  loc_F418AF:   Call 0.Method_DGBusiness_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F418B7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F418EA:   var_B0 = Me.Fields.Item("Name")
  loc_F41909:   Set var_B4 = Me.Txt
  loc_F4190F:   Call 0.Method_DGBusiness_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F41917:   var_B8.Text = CStr(var_B0.Value)
  loc_F4192D: End If
  loc_F41938: Set var_A8 = Me.Txt
  loc_F4193E: Call 0.Method_DGBusiness_UnknownEvent_90 (CInt(&HE))
  loc_F41946: var_B0.SetFocus
  loc_F41952: Exit Sub
End Sub

Private Sub DGBusiness_UnknownEvent_1F 'E76100
  'Data Table: 46CDD4
  loc_E760BE: Proc_6_153_E91D24(Me.DGBusiness, arg_14)
  loc_E760D5: Set var_8C = Me.FGPoint
  loc_E760F1: Proc_6_138_106E830(Me.DGBusiness, global_80, CInt(&HE))
  loc_E760FF: Exit Sub
End Sub

Private Sub DGMarketSeg_UnknownEvent_9 'F3C414
  'Data Table: 46CDD4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3C30B: Me.DGMarketSeg.Visible = False
  loc_F3C32A: If (Me.RecordCount > 0) Then
  loc_F3C369:   Set var_B4 = Me.Txt
  loc_F3C36F:   Call 0.Method_DGMarketSeg_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F3C377:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3C3AA:   var_B0 = Me.Fields.Item("Name")
  loc_F3C3C9:   Set var_B4 = Me.Txt
  loc_F3C3CF:   Call 0.Method_DGMarketSeg_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F3C3D7:   var_B8.Text = CStr(var_B0.Value)
  loc_F3C3ED: End If
  loc_F3C3F8: Set var_A8 = Me.Txt
  loc_F3C3FE: Call 0.Method_DGMarketSeg_UnknownEvent_90 (CInt(&HF))
  loc_F3C406: var_B0.SetFocus
  loc_F3C412: Exit Sub
End Sub

Private Sub DGMarketSeg_UnknownEvent_1F 'E74E80
  'Data Table: 46CDD4
  loc_E74E3E: Proc_6_153_E91D24(Me.DGMarketSeg, arg_14)
  loc_E74E55: Set var_8C = Me.FGPoint
  loc_E74E71: Proc_6_138_106E830(Me.DGMarketSeg, global_76, CInt(&HF))
  loc_E74E7F: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EAEEF0
  'Data Table: 46CDD4
  loc_EAEE78: If (CBool(Me.DGTravelAg.Visible) = &HFF) Then
  loc_EAEE7B:   Call DGTravelAg_UnknownEvent_9()
  loc_EAEE80: End If
  loc_EAEE9C: If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_EAEE9F:   Call DGMarketSeg_UnknownEvent_9()
  loc_EAEEA4: End If
  loc_EAEEC0: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_EAEEC3:   Call DGCity_UnknownEvent_9()
  loc_EAEEC8: End If
  loc_EAEEE4: If (CBool(Me.DGBusiness.Visible) = &HFF) Then
  loc_EAEEE7:   Call DGBusiness_UnknownEvent_9()
  loc_EAEEEC: End If
  loc_EAEEEC: Exit Sub
End Sub

Private Sub DGTravelAg_UnknownEvent_9 'F417F4
  'Data Table: 46CDD4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F416EB: Me.DGTravelAg.Visible = False
  loc_F4170A: If (Me.RecordCount > 0) Then
  loc_F41749:   Set var_B4 = Me.Txt
  loc_F4174F:   Call 0.Method_DGTravelAg_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F41757:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4178A:   var_B0 = Me.Fields.Item("Name")
  loc_F417A9:   Set var_B4 = Me.Txt
  loc_F417AF:   Call 0.Method_DGTravelAg_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F417B7:   var_B8.Text = CStr(var_B0.Value)
  loc_F417CD: End If
  loc_F417D8: Set var_A8 = Me.Txt
  loc_F417DE: Call 0.Method_DGTravelAg_UnknownEvent_90 (CInt(&HD))
  loc_F417E6: var_B0.SetFocus
  loc_F417F2: Exit Sub
End Sub

Private Sub DGTravelAg_UnknownEvent_1F 'E746FC
  'Data Table: 46CDD4
  loc_E746BA: Proc_6_153_E91D24(Me.DGTravelAg, arg_14)
  loc_E746D1: Set var_8C = Me.FGPoint
  loc_E746ED: Proc_6_138_106E830(Me.DGTravelAg, global_72, CInt(&HD))
  loc_E746FB: Exit Sub
End Sub

Public Function MasterFormExitGet() '46D86C
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '46D87B
  MasterFormExit = Value
End Sub

Public Function intStaIdGet() '46D88A
  intStaIdGet = intStaId
End Function

Public Sub intStaIdPut(Value) '46D899
  intStaId = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E984A8
  'Data Table: 46CDD4
  Dim Me As Recordset15
  loc_E98436: On Error Goto loc_E9849F
  loc_E9843F: Me.MoveFirst
  loc_E98469: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E98491: Proc_5_0_1107AD0(&HFF, Me, global_64)
  loc_E98499: Call Proc_29_44_144BDC8(0)
  loc_E9849E: Exit Sub
  loc_E9849F: ' Referenced from: E98436
  loc_E9849F: Proc_6_60_E63754(var_A0)
  loc_E984A4: Exit Sub
End Sub

Public Property Get OpenMode() 'E08190
  'Data Table: 46CDD4
  loc_E08189: OpenMode = global_60
End Sub

Public Property Let OpenMode(vNewValue) 'E02C74
  'Data Table: 46CDD4
  loc_E02C6E: global_60 = vNewValue
  loc_E02C71: Exit Sub
  loc_E02C72: global_60 = 
End Sub

Public Sub Proc_29_41_F14234(arg_C) 'F14234
  'Data Table: 46CDD4
  Dim var_98 As TextBox
  loc_F14146: Set var_8C = Me.Txt
  loc_F1414C: Call 0.Method_Proc_29_41_F14234C (var_8E, var_86)
  loc_F1415C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F14172:   Set var_8C = Me.Txt
  loc_F14178:   Call 0.Method_Proc_29_41_F142340 (CInt(var_86), var_98)
  loc_F14180:   var_98.Enabled = arg_C
  loc_F1418F: Next var_92 'Byte
  loc_F141A2: Set var_8C = Me.Txt
  loc_F141A8: Call 0.Method_Proc_29_41_F142340 (CInt(5), var_98)
  loc_F141B0: var_98.Enabled = False
  loc_F141C9: Set var_8C = Me.Txt
  loc_F141CF: Call 0.Method_Proc_29_41_F142340 (CInt(4), var_98)
  loc_F141D7: var_98.Enabled = False
  loc_F141F0: Set var_8C = Me.Txt
  loc_F141F6: Call 0.Method_Proc_29_41_F142340 (CInt(6), var_98)
  loc_F141FE: var_98.Enabled = False
  loc_F14217: Set var_8C = Me.Txt
  loc_F1421D: Call 0.Method_Proc_29_41_F142340 (CInt(7), var_98)
  loc_F14225: var_98.Enabled = False
  loc_F14231: Exit Sub
End Sub

Public Sub Proc_29_42_E9B9E8
  'Data Table: 46CDD4
  Dim var_98 As TextBox
  loc_E9B96E: Set var_8C = Me.Txt
  loc_E9B974: Call 0.Method_Proc_29_42_E9B9E8C (var_8E, var_86)
  loc_E9B984: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9B99A:   Set var_8C = Me.Txt
  loc_E9B9A0:   Call 0.Method_Proc_29_42_E9B9E80 (CInt(var_86), var_98)
  loc_E9B9A8:   var_98.Text = vbNullString
  loc_E9B9C4:   Set var_8C = Me.Txt
  loc_E9B9CA:   Call 0.Method_Proc_29_42_E9B9E80 (CInt(var_86), var_98)
  loc_E9B9D2:   var_98.Tag = vbNullString
  loc_E9B9E1: Next var_92 'Byte
  loc_E9B9E7: Exit Sub
End Sub

Public Sub Proc_29_43_F28418
  'Data Table: 46CDD4
  loc_F28324: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_F28336:   Me.DGCity.Visible = False
  loc_F2833E: End If
  loc_F2835A: If (CBool(Me.DGTravelAg.Visible) = &HFF) Then
  loc_F2836C:   Me.DGTravelAg.Visible = False
  loc_F28374: End If
  loc_F28390: If (CBool(Me.DGBusiness.Visible) = &HFF) Then
  loc_F283A2:   Me.DGBusiness.Visible = False
  loc_F283AA: End If
  loc_F283C6: If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_F283D8:   Me.DGMarketSeg.Visible = False
  loc_F283E0: End If
  loc_F283FC: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F2840E:   Me.FGPoint.Visible = False
  loc_F28416: End If
  loc_F28416: Exit Sub
End Sub

Public Sub Proc_29_44_144BDC8
  'Data Table: 46CDD4
  Dim Me As Recordset15
  Dim var_90 As Recordset15
  Dim var_94 As Fields15
  Dim var_A8 As Variant
  Dim var_C4 As String
  Dim var_B0 As TextBox
  Dim var_C0 As Variant
  Dim var_C8 As String
  Dim unk_46CDF0 As Connection15
  Dim var_88 As Recordset15
  loc_144B27C: On Error Goto loc_144BDBF
  loc_144B296: If (Me.RecordCount > 0) Then
  loc_144B29F:   Set var_90 = global_64 
  loc_144B2DC:   Set var_AC = Me.Txt
  loc_144B2E2:   Call 0.Method_Proc_29_44_144BDC80 (CInt(0), var_B0)
  loc_144B2EA:   var_B0.Tag = CStr(var_90.Fields.Item("Code").Value)
  loc_144B339:   Set var_AC = Me.Txt
  loc_144B33F:   Call 0.Method_Proc_29_44_144BDC80 (CInt(0), var_B0)
  loc_144B347:   var_B0.Text = CStr(var_90.Fields.Item("Name").Value)
  loc_144B396:   Set var_AC = Me.Txt
  loc_144B39C:   Call 0.Method_Proc_29_44_144BDC80 (CInt(1), var_B0)
  loc_144B3A4:   var_B0.Text = CStr(var_90.Fields.Item("Add1").Value)
  loc_144B3F3:   Set var_AC = Me.Txt
  loc_144B3F9:   Call 0.Method_Proc_29_44_144BDC80 (CInt(2), var_B0)
  loc_144B401:   var_B0.Text = CStr(var_90.Fields.Item("Add2").Value)
  loc_144B44D:   Set var_AC = Me.Txt
  loc_144B453:   Call 0.Method_Proc_29_44_144BDC80 (CInt(7), var_B0)
  loc_144B45B:   var_B0.Text = Proc_6_38_E69628(CVar(var_90.Fields.Item("Type")))
  loc_144B4A5:   Set var_AC = Me.Txt
  loc_144B4AB:   Call 0.Method_Proc_29_44_144BDC80 (CInt(9), var_B0)
  loc_144B4B3:   var_B0.Text = Proc_6_38_E69628(CVar(var_90.Fields.Item("ConName")))
  loc_144B500:   Set var_AC = Me.Txt
  loc_144B506:   Call 0.Method_Proc_29_44_144BDC80 (CInt(8), var_B0)
  loc_144B50E:   var_B0.Text = CStr(var_90.Fields.Item("PhoneNo").Value)
  loc_144B55D:   Set var_AC = Me.Txt
  loc_144B563:   Call 0.Method_Proc_29_44_144BDC80 (CInt(&HA), var_B0)
  loc_144B56B:   var_B0.Text = CStr(var_90.Fields.Item("Comments1").Value)
  loc_144B5BA:   Set var_AC = Me.Txt
  loc_144B5C0:   Call 0.Method_Proc_29_44_144BDC80 (CInt(&HB), var_B0)
  loc_144B5C8:   var_B0.Text = CStr(var_90.Fields.Item("Comments2").Value)
  loc_144B617:   Set var_AC = Me.Txt
  loc_144B61D:   Call 0.Method_Proc_29_44_144BDC80 (CInt(&HC), var_B0)
  loc_144B625:   var_B0.Text = CStr(var_90.Fields.Item("Comments3").Value)
  loc_144B655:   var_A8 = var_90.Fields.Item("City")
  loc_144B666:   var_C4 = CStr(var_A8.Value)
  loc_144B674:   Set var_AC = Me.Txt
  loc_144B67A:   Call 0.Method_Proc_29_44_144BDC80 (CInt(3), var_B0)
  loc_144B682:   var_B0.Tag = var_C4
  loc_144B6B6:   Set var_94 = Me.Txt
  loc_144B6BC:   Call 0.Method_Proc_29_44_144BDC80 (CInt(3), var_A8, var_C4, "SELECT City.CityName,CITY.ZIPCODE,Country.Name AS CountryName,State.Name AS StateName FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code WHERE CITYCODE='")
  loc_144B6C4:   var_C0 = var_A8.Tag
  loc_144B6CD:   var_C8 = -1 & var_C4
  loc_144B6DD:   unk_46CDF0.Execute var_C8 & "'", var_AC, 
  loc_144B6E8:   Set var_88 = var_AC
  loc_144B714:   If (var_88.RecordCount > 0) Then
  loc_144B74D:     Set var_AC = Me.Txt
  loc_144B753:     Call 0.Method_Proc_29_44_144BDC80 (CInt(3), var_B0)
  loc_144B75B:     var_B0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CityName")))
  loc_144B7A5:     Set var_AC = Me.Txt
  loc_144B7AB:     Call 0.Method_Proc_29_44_144BDC80 (CInt(4), var_B0)
  loc_144B7B3:     var_B0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Zipcode")))
  loc_144B7FD:     Set var_AC = Me.Txt
  loc_144B803:     Call 0.Method_Proc_29_44_144BDC80 (CInt(5), var_B0)
  loc_144B80B:     var_B0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("StateName")))
  loc_144B836:     var_A8 = var_88.Fields.Item("CountryName")
  loc_144B855:     Set var_AC = Me.Txt
  loc_144B85B:     Call 0.Method_Proc_29_44_144BDC80 (CInt(6), var_B0)
  loc_144B863:     var_B0.Text = Proc_6_38_E69628(CVar(var_A8))
  loc_144B87A:   Else
  loc_144B888:     Set var_94 = Me.Txt
  loc_144B88E:     Call 0.Method_Proc_29_44_144BDC80 (CInt(3), var_A8)
  loc_144B896:     var_A8.Text = vbNullString
  loc_144B8B0:     Set var_94 = Me.Txt
  loc_144B8B6:     Call 0.Method_Proc_29_44_144BDC80 (CInt(4), var_A8)
  loc_144B8BE:     var_A8.Text = vbNullString
  loc_144B8D8:     Set var_94 = Me.Txt
  loc_144B8DE:     Call 0.Method_Proc_29_44_144BDC80 (CInt(5), var_A8)
  loc_144B8E6:     var_A8.Text = vbNullString
  loc_144B900:     Set var_94 = Me.Txt
  loc_144B906:     Call 0.Method_Proc_29_44_144BDC80 (CInt(6), var_A8)
  loc_144B90E:     var_A8.Text = vbNullString
  loc_144B91A:   End If
  loc_144B934:   var_A8 = var_90.Fields.Item("TravelAgency")
  loc_144B945:   var_C4 = CStr(var_A8.Value)
  loc_144B953:   Set var_AC = Me.Txt
  loc_144B959:   Call 0.Method_Proc_29_44_144BDC80 (CInt(&HD), var_B0)
  loc_144B961:   var_B0.Tag = var_C4
  loc_144B995:   Set var_94 = Me.Txt
  loc_144B99B:   Call 0.Method_Proc_29_44_144BDC80 (CInt(&HD), var_A8, var_C4, "SELECT SubGroup.Name AS TravelAgName FROM SubGroup WHERE SubCode='")
  loc_144B9A3:   var_C0 = var_A8.Tag
  loc_144B9AC:   var_C8 = -1 & var_C4
  loc_144B9BC:   unk_46CDF0.Execute var_C8 & "'", var_AC, 
  loc_144B9C7:   Set var_88 = var_AC
  loc_144B9F3:   If (var_88.RecordCount > 0) Then
  loc_144BA10:     var_A8 = var_88.Fields.Item("TravelAgName")
  loc_144BA2F:     Set var_AC = Me.Txt
  loc_144BA35:     Call 0.Method_Proc_29_44_144BDC80 (CInt(&HD), var_B0)
  loc_144BA3D:     var_B0.Text = CStr(var_A8.Value)
  loc_144BA56:   Else
  loc_144BA64:     Set var_94 = Me.Txt
  loc_144BA6A:     Call 0.Method_Proc_29_44_144BDC80 (CInt(&HD), var_A8)
  loc_144BA72:     var_A8.Text = vbNullString
  loc_144BA7E:   End If
  loc_144BA98:   var_A8 = var_90.Fields.Item("BusSource")
  loc_144BAA9:   var_C4 = CStr(var_A8.Value)
  loc_144BAB7:   Set var_AC = Me.Txt
  loc_144BABD:   Call 0.Method_Proc_29_44_144BDC80 (CInt(&HE), var_B0)
  loc_144BAC5:   var_B0.Tag = var_C4
  loc_144BAF9:   Set var_94 = Me.Txt
  loc_144BAFF:   Call 0.Method_Proc_29_44_144BDC80 (CInt(&HE), var_A8, var_C4, "SELECT BussSource.Name AS BussSourceName FROM BussSource WHERE CODE='")
  loc_144BB07:   var_C0 = var_A8.Tag
  loc_144BB10:   var_C8 = -1 & var_C4
  loc_144BB20:   unk_46CDF0.Execute var_C8 & "'", var_AC, 
  loc_144BB2B:   Set var_88 = var_AC
  loc_144BB57:   If (var_88.RecordCount > 0) Then
  loc_144BB74:     var_A8 = var_88.Fields.Item("BussSourcename")
  loc_144BB93:     Set var_AC = Me.Txt
  loc_144BB99:     Call 0.Method_Proc_29_44_144BDC80 (CInt(&HE), var_B0)
  loc_144BBA1:     var_B0.Text = CStr(var_A8.Value)
  loc_144BBBA:   Else
  loc_144BBC8:     Set var_94 = Me.Txt
  loc_144BBCE:     Call 0.Method_Proc_29_44_144BDC80 (CInt(&HE), var_A8)
  loc_144BBD6:     var_A8.Text = vbNullString
  loc_144BBE2:   End If
  loc_144BBFC:   var_A8 = var_90.Fields.Item("MarketSeg")
  loc_144BC0D:   var_C4 = CStr(var_A8.Value)
  loc_144BC1B:   Set var_AC = Me.Txt
  loc_144BC21:   Call 0.Method_Proc_29_44_144BDC80 (CInt(&HF), var_B0)
  loc_144BC29:   var_B0.Tag = var_C4
  loc_144BC5D:   Set var_94 = Me.Txt
  loc_144BC63:   Call 0.Method_Proc_29_44_144BDC80 (CInt(&HF), var_A8, var_C4, "SELECT MarketSeg.Name AS MarketSegName FROM MarketSeg WHERE Code='")
  loc_144BC6B:   var_C0 = var_A8.Tag
  loc_144BC74:   var_C8 = -1 & var_C4
  loc_144BC84:   unk_46CDF0.Execute var_C8 & "'", var_AC, 
  loc_144BC8F:   Set var_88 = var_AC
  loc_144BCBB:   If (var_88.RecordCount > 0) Then
  loc_144BCD8:     var_A8 = var_88.Fields.Item("MarketSegName")
  loc_144BCF7:     Set var_AC = Me.Txt
  loc_144BCFD:     Call 0.Method_Proc_29_44_144BDC80 (CInt(&HF), var_B0)
  loc_144BD05:     var_B0.Text = CStr(var_A8.Value)
  loc_144BD1E:   Else
  loc_144BD2C:     Set var_94 = Me.Txt
  loc_144BD32:     Call 0.Method_Proc_29_44_144BDC80 (CInt(&HF), var_A8)
  loc_144BD3A:     var_A8.Text = vbNullString
  loc_144BD46:   End If
  loc_144BD7F:   Set var_AC = Me.Txt
  loc_144BD85:   Call 0.Method_Proc_29_44_144BDC80 (CInt(&H10), var_B0)
  loc_144BD8D:   var_B0.Text = CStr(var_90.Fields.Item("GroupType").Value)
  loc_144BDA5:   Set var_90 = Nothing 
  loc_144BDAC: Else
  loc_144BDAC:   Call Proc_29_42_E9B9E8()
  loc_144BDB1: End If
  loc_144BDB1: Call Proc_29_43_F28418()
  loc_144BDBB: Set var_88 = Nothing
  loc_144BDBE: Exit Sub
  loc_144BDBF: ' Referenced from: 144B27C
  loc_144BDBF: Proc_6_60_E63754()
  loc_144BDC4: Exit Sub
End Sub
