VERSION 5.00
Begin VB.Form MemCatMast
  Caption = "Member Category Master"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 9300
  ClientHeight = 6345
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    Left = 3960
    Top = 3090
    Width = 795
    Height = 285
    Enabled = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3960
    Top = 3720
    Width = 795
    Height = 285
    Text = "Active"
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 20
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
    Width = 9300
    Height = 450
    TabIndex = 24
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    Left = 11250
    Top = 8655
    Width = 795
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 19
    BorderStyle = 0 'None
    MaxLength = 8
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
    Index = 5
    BackColor = &HFFFFFF&
    Left = 3960
    Top = 3405
    Width = 795
    Height = 285
    Enabled = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 8
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
    Index = 4
    BackColor = &HFFFFFF&
    Left = 10605
    Top = 7815
    Width = 795
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 8
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
  Begin DataGrid DGHelp
    Left = 12135
    Top = 3405
    Width = 5175
    Height = 1590
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 11
  End
  Begin Frame FrmList
    Left = 12570
    Top = 615
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = -30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 17
    End
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 3960
    Top = 2460
    Width = 795
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 35
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
    Index = 3
    BackColor = &HFFFFFF&
    Left = 11100
    Top = 8280
    Width = 795
    Height = 285
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 50
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
    Index = 2
    BackColor = &HFFFFFF&
    Left = 3960
    Top = 2775
    Width = 795
    Height = 285
    Enabled = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 3
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
    Left = 3960
    Top = 2145
    Width = 4300
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 40
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
  Begin Label LblName
    Caption = "Surcharge"
    Index = 7
    ForeColor = &HFF0000&
    Left = 2235
    Top = 3090
    Width = 990
    Height = 240
    TabIndex = 30
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 1
    ForeColor = &H80&
    Left = 4830
    Top = 3090
    Width = 945
    Height = 210
    TabIndex = 29
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
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
    Top = 465
    Width = 180
    Height = 540
    TabIndex = 28
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
  Begin Label LbStatus
    Caption = "Status"
    Index = 1
    ForeColor = &HFF0000&
    Left = 2235
    Top = 3705
    Width = 585
    Height = 240
    TabIndex = 27
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 225
    Top = 8580
    Width = 2430
    Height = 285
    TabIndex = 26
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
    Left = 240
    Top = 8250
    Width = 2520
    Height = 255
    TabIndex = 25
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
  Begin Label LblCatType
    Caption = "(Y)es/(N)o"
    Index = 2
    ForeColor = &H80&
    Left = 12120
    Top = 8655
    Width = 885
    Height = 240
    Visible = 0   'False
    TabIndex = 23
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
    Caption = "Mess A/c"
    Index = 6
    ForeColor = &HFF0000&
    Left = 9525
    Top = 8655
    Width = 825
    Height = 240
    Visible = 0   'False
    TabIndex = 22
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
    Caption = "Facility Billing"
    Index = 3
    ForeColor = &HFF0000&
    Left = 2235
    Top = 3405
    Width = 1365
    Height = 240
    TabIndex = 21
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
  Begin Label LblCatType
    Caption = "(Y)es/(N)o"
    Index = 1
    ForeColor = &H80&
    Left = 4830
    Top = 3405
    Width = 945
    Height = 210
    TabIndex = 20
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = " in Years"
    Index = 0
    ForeColor = &H80&
    Left = 11970
    Top = 8190
    Width = 825
    Height = 240
    Visible = 0   'False
    TabIndex = 18
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
  Begin Label LblCatType
    Caption = "(Y)es/(N)o"
    Index = 0
    ForeColor = &H80&
    Left = 11475
    Top = 7740
    Width = 885
    Height = 240
    Visible = 0   'False
    TabIndex = 15
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
    Caption = "Corporate"
    Index = 5
    ForeColor = &HFF0000&
    Left = 8880
    Top = 7815
    Width = 945
    Height = 240
    Visible = 0   'False
    TabIndex = 14
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
    Caption = "Member Category"
    Index = 1
    ForeColor = &HFF0000&
    Left = 2235
    Top = 2145
    Width = 1695
    Height = 240
    TabIndex = 13
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 16
    ForeColor = &H80&
    Left = 4830
    Top = 2775
    Width = 945
    Height = 210
    TabIndex = 12
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Child Age Limit"
    Index = 4
    ForeColor = &HFF0000&
    Left = 9375
    Top = 8280
    Width = 1470
    Height = 240
    Visible = 0   'False
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
    Caption = "Subscription"
    Index = 2
    ForeColor = &HFF0000&
    Left = 2235
    Top = 2775
    Width = 1185
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
  Begin Label LblName
    Caption = "Short Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 2235
    Top = 2460
    Width = 1125
    Height = 240
    TabIndex = 7
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
End

Attribute VB_Name = "MemCatMast"

Private global_80 As Variant

Private Sub DGHelp_UnknownEvent_9 'F43374
  'Data Table: 4669E8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4326B: Me.DGHelp.Visible = False
  loc_F4328A: If (Me.RecordCount > 0) Then
  loc_F432C9:   Set var_B4 = Me.Txt
  loc_F432CF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F432D7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4330A:   var_B0 = Me.Fields.Item("Code")
  loc_F43329:   Set var_B4 = Me.Txt
  loc_F4332F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F43337:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4334D: End If
  loc_F43358: Set var_A8 = Me.Txt
  loc_F4335E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F43366: var_B0.SetFocus
  loc_F43372: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5A97C
  'Data Table: 4669E8
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5A89E: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5A8A5:   Set var_A8 = Me.ListView
  loc_F5A8EF:   Set var_C0 = Me.Txt
  loc_F5A8F5:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5A8FD:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5A91D: End If
  loc_F5A929: Me.FrmList.Visible = False
  loc_F5A959: Set var_9C = Me.Txt
  loc_F5A95F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5A967: var_A8.SetFocus
  loc_F5A97B: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'F95E48
  'Data Table: 4669E8
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_D0 As TextBox
  loc_F95CFA: Set var_88 = Me.Txt
  loc_F95D00: Call 0.Method_Txt_GotFocus0 (Index)
  loc_F95D0E: Proc_6_74_E23240(var_8C)
  loc_F95D1A: Call Proc_264_30_E81EF4(var_8C)
  loc_F95D22: var_92 = Index
  loc_F95D2D: If Not (var_92 = CInt(2)) Then
  loc_F95D38:   If Not (var_92 = CInt(8)) Then
  loc_F95D43:     If Not (var_92 = CInt(4)) Then
  loc_F95D4E:       If Not (var_92 = CInt(5)) Then
  loc_F95D59:         If (var_92 = CInt(6)) Then
  loc_F95D5C:         End If
  loc_F95D5C:       End If
  loc_F95D5C:     End If
  loc_F95D5C:   End If
  loc_F95D69:   ReDim var_98(0 To 1)
  loc_F95D80:   var_98(0) = "Yes"
  loc_F95D8F:   var_98(1) = "No"
  loc_F95DA6:   global_80 = Array(var_98)
  loc_F95DB1:   Set var_D0 = Me.ListView
  loc_F95DCC:   Set var_8C = Me.Txt
  loc_F95DE6:   Set global_96 = Proc_6_66_F0048C(var_D0, var_8C, Index, global_80)
  loc_F95E04:   Set var_88 = Me.Txt
  loc_F95E0A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8)
  loc_F95E12:   2 = var_8C.Text
  loc_F95E24:   Set var_90 = Me.Txt
  loc_F95E2A:   Call 0.Method_Txt_GotFocus0 (Index, var_D0, var_D8)
  loc_F95E32:   var_D0.Tag = global_80
  loc_F95E45: End If
  loc_F95E45: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10B5518
  'Data Table: 4669E8
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_A4 As TextBox
  Dim var_B4 As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  loc_10B5272: If (CLng(Shift) = &H1B) Then
  loc_10B5275:   Call Proc_264_30_E81EF4()
  loc_10B527A:   Exit Sub
  loc_10B527B: End If
  loc_10B527E: var_88 = KeyCode
  loc_10B5289: If (var_88 = CInt(0)) Then
  loc_10B5290:   Set var_A4 = Me.DGHelp
  loc_10B52A4:   Set var_9C = Nothing
  loc_10B52C7:   Set var_90 = Me.Txt
  loc_10B52D6:   Proc_6_79_11AD564(var_A4, var_90, CInt(0), global_56, Shift)
  loc_10B52EB: Else
  loc_10B52F3:   If Not (var_88 = CInt(2)) Then
  loc_10B52FE:     If Not (var_88 = CInt(8)) Then
  loc_10B5309:       If Not (var_88 = CInt(4)) Then
  loc_10B5314:         If Not (var_88 = CInt(5)) Then
  loc_10B531F:           If (var_88 = CInt(6)) Then
  loc_10B5322:           End If
  loc_10B5322:         End If
  loc_10B5322:       End If
  loc_10B5322:     End If
  loc_10B5344:     Set var_8C = Me.Txt
  loc_10B534A:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 0)
  loc_10B5352:     1 = var_90.Left
  loc_10B5364:     Set var_9C = Me.Txt
  loc_10B536A:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B0)
  loc_10B5372:     var_9C = var_A4.Top
  loc_10B5384:     Set var_A8 = Me.Txt
  loc_10B538A:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4, var_B8)
  loc_10B5392:     0 = var_B4.Height
  loc_10B53A4:     Set var_BC = Me.Txt
  loc_10B53AA:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_10B53B2:     var_C4 = var_C0.Width
  loc_10B53FA:     Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_10B541E:   End If
  loc_10B541E: End If
  loc_10B5457: If ((CBool(Me.DGHelp.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_10B546D:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_10B5476:     Proc_6_76_E533C8(Shift, arg_14, CInt(var_AC), CInt((var_B0 + var_B8)))
  loc_10B547B:   End If
  loc_10B5499:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(5))) Then
  loc_10B54A2:     Call Txt_Validate(KeyCode)
  loc_10B54AD:     If (var_86 = 0) Then
  loc_10B54E7:       If (MsgBox("Save Record ?", 4, "Save Data", var_13C, var_15C) = 6) Then
  loc_10B54EA:         Call TopCtrl1_UnknownEvent_16()
  loc_10B54EF:       End If
  loc_10B54EF:       Exit Sub
  loc_10B54F0:     End If
  loc_10B54F3:   Else
  loc_10B5508:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10B5511:       Proc_6_75_E5335C(Shift, arg_14, var_86)
  loc_10B5516:     End If
  loc_10B5516:   End If
  loc_10B5516: End If
  loc_10B5516: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F0001C
  'Data Table: 4669E8
  Dim var_D0 As TextBox
  Dim arg_10 As Integer
  loc_EFFF52: If (KeyAscii = CInt(7)) Then
  loc_EFFF7E:   If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_EFFF8E:     Set var_CC = Me.Txt
  loc_EFFF94:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EFFF9C:     var_D0.Text = "Active"
  loc_EFFFAB:   Else
  loc_EFFFB2:     var_98 = Chr(CLng(arg_10))
  loc_EFFFD4:     If (Ucase(var_98) = "N") Then
  loc_EFFFE4:       Set var_CC = Me.Txt
  loc_EFFFEA:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EFFFF2:       var_D0.Text = "Non Active"
  loc_EFFFFE:     End If
  loc_EFFFFE:   End If
  loc_F00000:   arg_10 = 0
  loc_F00003: End If
  loc_F00009: Proc_6_133_E7FB08(var_98, arg_10)
  loc_F00012: arg_10 = CInt(var_98)
  loc_F00018: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F25878
  'Data Table: 4669E8
  Dim var_86 As Integer
  loc_F2577B: var_86 = KeyCode
  loc_F25786: If (var_86 = CInt(0)) Then
  loc_F257A5:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F257B2:     var_A4 = "Name"
  loc_F257D1:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_56)
  loc_F257E0:   End If
  loc_F257E3: Else
  loc_F257EB:   If Not (var_86 = CInt(2)) Then
  loc_F257F6:     If Not (var_86 = CInt(8)) Then
  loc_F25801:       If Not (var_86 = CInt(4)) Then
  loc_F2580C:         If Not (var_86 = CInt(5)) Then
  loc_F25817:           If (var_86 = CInt(6)) Then
  loc_F2581A:           End If
  loc_F2581A:         End If
  loc_F2581A:       End If
  loc_F2581A:     End If
  loc_F25835:     If (Me.FrmList.Visible = &HFF) Then
  loc_F25864:       Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F25874:     End If
  loc_F25874:   End If
  loc_F25874: End If
  loc_F25874: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E49434
  'Data Table: 4669E8
  loc_E49412: Set var_88 = Me.Txt
  loc_E49418: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E49426: Proc_6_73_E23294(var_8C)
  loc_E49432: Exit Sub
  loc_E49433: Result var_8C End Sub 'Double
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '10103D0
  'Data Table: 4669E8
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As Variant
  Dim var_8C As ListView
  Dim var_AC As TextBox
  Dim var_A8 As ListItem
  Dim var_D0 As TextBox
  loc_10101CB: var_86 = Cancel
  loc_10101D6: If (var_86 = CInt(0)) Then
  loc_10101DC:   Call Proc_264_29_10F6244(var_88)
  loc_10101E7:   If (var_88 = &HFF) Then
  loc_10101EC:     arg_10 = &HFF
  loc_10101EF:     Exit Sub
  loc_10101F0:   End If
  loc_10101F3: Else
  loc_10101FB:   If Not (var_86 = CInt(2)) Then
  loc_1010206:     If Not (var_86 = CInt(8)) Then
  loc_1010211:       If Not (var_86 = CInt(4)) Then
  loc_101021C:         If Not (var_86 = CInt(5)) Then
  loc_1010227:           If (var_86 = CInt(6)) Then
  loc_101022A:           End If
  loc_101022A:         End If
  loc_101022A:       End If
  loc_101022A:     End If
  loc_1010237:     Set var_8C = Me.Txt
  loc_101023D:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_1010245:     arg_10 = var_90.Text
  loc_101025C:     If (var_94 <> vbNullString) Then
  loc_101028F:       Set var_A8 = Me.Txt
  loc_1010295:       Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_101029D:       var_AC.Text = Me.ListView.SelectedItem.Text
  loc_10102B6:     Else
  loc_10102D6:       Set var_90 = Me.ListView.ListItems
  loc_10102F6:       Set var_AC = Me.Txt
  loc_10102FC:       Call 0.Method_Txt_Validate0 (Cancel, var_D0)
  loc_1010304:       var_D0.Text = var_90.Item(1).Text
  loc_1010320:     End If
  loc_1010323:   Else
  loc_101032B:     If (var_86 = CInt(7)) Then
  loc_1010338:       Set var_8C = Me.Txt
  loc_101033E:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1010379:       If (Ucase(Left(CVar(var_90), 1)) = "A") Then
  loc_1010389:         Set var_8C = Me.Txt
  loc_101038F:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1010397:         var_90.Text = "Active"
  loc_10103A6:       Else
  loc_10103B3:         Set var_8C = Me.Txt
  loc_10103B9:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10103C1:         var_90.Text = "Non Active"
  loc_10103CD:       End If
  loc_10103CD:     End If
  loc_10103CD:   End If
  loc_10103CD: End If
  loc_10103CD: Exit Sub
End Sub

Private Sub Form_Load() '10B6E74
  'Data Table: 4669E8
  Dim var_88 As Label
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_D4 As Variant
  Dim var_C4 As String
  Dim var_D8 As String
  Dim unk_4669F8 As Connection15
  loc_10B6BA8: On Error Goto loc_10B6E30
  loc_10B6BB2: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_10B6BC6: Me.LblUser.Left = CDbl(13500)
  loc_10B6BDD: Me.LblUser.Top = CDbl(7800)
  loc_10B6BF4: Me.LblLDt.Top = CDbl(8160)
  loc_10B6C0B: Me.LblLDt.Left = CDbl(13500)
  loc_10B6C21: Set var_88 = Me.Txt
  loc_10B6C27: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_10B6C46: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_10B6C62: Set var_B4 = Me.Txt
  loc_10B6C68: Call 0.Method_Form_Load0 (CInt(0), var_B8)
  loc_10B6C83: Set var_88 = Me.Txt
  loc_10B6C89: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_10B6CA1: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_10B6CB0: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_10B6CCC: Set var_88 = Me.TopCtrl1
  loc_10B6CD2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_10B6CE0: Call 0.Method_arg_50 (var_C4)
  loc_10B6CE8: var_D4 = CVar(var_C4) 'String
  loc_10B6CF6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D4)
  loc_10B6D1C: var_D8 = "SELECT MemCatMast.Code, MemCatMast.Name FROM MemCatMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY MemCatMast.Name"
  loc_10B6D25: unk_4669F8.Execute var_D8, var_D4, -1
  loc_10B6D54: CVarUnk
  loc_10B6D59: VerifyVarObj
  loc_10B6D65: LateIdStAd
  loc_10B6D97: unk_4669F8.Execute "SELECT * FROM MEmCatMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D4, -1
  loc_10B6DCC: Set var_88 = Me.TopCtrl1
  loc_10B6DD2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(CStr(5800)))
  loc_10B6DE9: Set var_88 = Me
  loc_10B6DF2: var_C4 = "INI"
  loc_10B6E00: Call Proc_264_26_E7C98C(Proc_5_1_100EC1C(var_C4, var_88, Me.DGHelp, var_88), var_88)
  loc_10B6E14: Call 0.Method_arg_160 (var_88, Me.TopCtrl1)
  loc_10B6E22: Call 0.Method_arg_164 (var_88)
  loc_10B6E2A: Call Proc_264_28_12DAC98(var_88)
  loc_10B6E2F: Exit Sub
  loc_10B6E30: ' Referenced from: 10B6BA8
  loc_10B6E38: Set var_88 = Err()
  loc_10B6E3E: Call 0.Method_arg_2C (var_C4)
  loc_10B6E5F: MsgBox(CVar(var_C4), &H40, "Information", var_FC, var_11C)
  loc_10B6E72: Exit Sub
  loc_10B6E73: Exit Sub
End Sub

Private Sub Form_Resize() 'EBC640
  'Data Table: 4669E8
  Dim var_88 As Label
  loc_EBC5B5: Me.LblFormCaption.Caption = "Member Category"
  loc_EBC5CB: Me.LblFormCaption.Left = CDbl(0)
  loc_EBC5D7: Set var_9C = Me.TopCtrl1
  loc_EBC5DD: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_EBC5EA: Set var_88 = Me.TopCtrl1
  loc_EBC5F0: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_EBC60A: Me.LblFormCaption.Top = (CDbl() + CDbl(var_AC))
  loc_EBC625: Call 0.Method_arg_100 (var_B4)
  loc_EBC637: Me.LblFormCaption.Width = var_B4
  loc_EBC63F: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E28988
  'Data Table: 4669E8
  loc_E2896B: Set global_52 = Nothing
  loc_E2897D: Set global_56 = Nothing
  loc_E28984: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8C514
  'Data Table: 4669E8
  loc_E8C4B0: On Error Goto loc_E8C4D0
  loc_E8C4C7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E8C4CF: Exit Sub
  loc_E8C4D0: ' Referenced from: E8C4B0
  loc_E8C4D8: Set var_88 = Err()
  loc_E8C4DE: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8C4FF: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8C512: Exit Sub
  loc_E8C513: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'ED9A74
  'Data Table: 4669E8
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_ED99C0: On Error Goto loc_ED9A6E
  loc_ED99D0: Me.LblUser.Caption = vbNullString
  loc_ED99E5: Me.LblLDt.Caption = vbNullString
  loc_ED9A10: Call Proc_264_26_E7C98C(Proc_5_1_100EC1C("ADD", Me))
  loc_ED9A1B: Call Proc_264_27_EAD63C(global_52)
  loc_ED9A2E: Set var_88 = Me.Txt
  loc_ED9A34: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(7), var_94)
  loc_ED9A3C: var_94.Text = "Active"
  loc_ED9A53: Set var_88 = Me.Txt
  loc_ED9A59: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_ED9A61: var_94.SetFocus
  loc_ED9A6D: Exit Sub
  loc_ED9A6E: ' Referenced from: ED99C0
  loc_ED9A6E: Proc_6_60_E63754(var_94)
  loc_ED9A73: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC119C
  'Data Table: 4669E8
  loc_EC1104: On Error Goto loc_EC1194
  loc_EC113E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC114D:   Set var_110 = Me
  loc_EC1164:   Call Proc_264_26_E7C98C(Proc_5_1_100EC1C("INI", var_110))
  loc_EC116F:   Call Proc_264_30_E81EF4(global_52)
  loc_EC1174:   Call Proc_264_28_12DAC98()
  loc_EC117C: Else
  loc_EC1182:   Call 0.Method_arg_1E8 (var_110)
  loc_EC118A:   Call var_110.SetFocus
  loc_EC1193: End If
  loc_EC1193: Exit Sub
  loc_EC1194: ' Referenced from: EC1104
  loc_EC1194: Proc_6_60_E63754()
  loc_EC1199: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '118C10C
  'Data Table: 4669E8
  Dim var_13C As Integer
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_104 As String
  Dim unk_4669F8 As Connection15
  Dim var_128 As Recordset15
  Dim var_12C As Fields15
  Dim var_140 As Field20
  Dim var_96 As Integer
  loc_118BD5C: On Error Goto loc_118C0B4
  loc_118BD6D: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_118BD70:   Exit Sub
  loc_118BD71: End If
  loc_118BD77: var_13C = 0
  loc_118BDBF: var_E0 = "SELECT Count(*) FROM SubGroup WHERE CompanyType='" & Me.Fields.Item("Code").Value 
  loc_118BDC8: var_100 = var_E0 & "'" 
  loc_118BDD6: unk_4669F8.Execute CStr(var_100), var_124, -1
  loc_118BDDE: var_128 = var_128.Fields
  loc_118BDE6: var_13C = var_12C.Item(var_12C)
  loc_118BDEE: var_140 = var_140.Value
  loc_118BE1B: If (var_150 > 0) Then
  loc_118BE37:   MsgBox("Related Records are Existed In Subgroup! Can't Delete !", &H10, var_E0, var_100, var_124)
  loc_118BE4A: Else
  loc_118BE81:   If (MsgBox("Delete Record ?", &H24, "Confirmation", var_100, var_124) = 6) Then
  loc_118BE8D:     unk_4669F8.BeginTrans var_174
  loc_118BEA3:     var_94 = Me.Bookmark 'Variant
  loc_118BEEF:     var_100 = "Delete From MemCatMast Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_118BEFD:     unk_4669F8.Execute CStr(var_100), var_124, -1
  loc_118BF48:     var_1AC = 0
  loc_118BF5B:     var_1A4 = 0
  loc_118BF66:     var_1A0 = 0
  loc_118BF79:     var_198 = 0
  loc_118BF84:     var_194 = 0
  loc_118BF97:     var_18C = 0
  loc_118BFD7:     var_104 = "MemCatMast"
  loc_118BFE0:     Proc_154_5_10E3BD4(MemVar_1F95044, var_104, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_118C00E:     unk_4669F8.CommitTrans
  loc_118C015:     var_96 = 0
  loc_118C023:     Me.Requery -1
  loc_118C033:     Me.Requery -1
  loc_118C053:     If (CVar(Me.RecordCount) >= var_94) Then
  loc_118C060:       Me.Bookmark = var_94
  loc_118C068:     Else
  loc_118C07C:       If (Me.EOF = 0) Then
  loc_118C085:         Me.MoveLast
  loc_118C08A:       End If
  loc_118C08A:     End If
  loc_118C08A:     Call Proc_264_28_12DAC98(var_96, var_18C, 0, var_194, var_198)
  loc_118C0AB:     Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_118C0B3:   End If
  loc_118C0B3: End If
  loc_118C0B3: Exit Sub
  loc_118C0B4: ' Referenced from: 118BD5C
  loc_118C0BA: If (var_96 = &HFF) Then
  loc_118C0C3:   unk_4669F8.RollbackTrans
  loc_118C0C8: End If
  loc_118C0D0: Set var_9C = Err()
  loc_118C0D6: Call 0.Method_arg_2C (var_104, 0, var_1A0)
  loc_118C0F7: MsgBox(CVar(var_104), &H30, " Deletion Error ", var_100, var_124)
  loc_118C10A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F7BA4C
  'Data Table: 4669E8
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_F7B908: On Error Goto loc_F7BA45
  loc_F7B919: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_F7B91C:   Exit Sub
  loc_F7B91D: End If
  loc_F7B934: If (Me.RecordCount > 0) Then
  loc_F7B95A:   Call Proc_264_26_E7C98C(Proc_5_1_100EC1C("EDIT", Me))
  loc_F7B973:   Set var_90 = Me.Txt
  loc_F7B979:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F7B98C:   global_76 = var_98.Text
  loc_F7B9A5:   Set var_90 = Me.Txt
  loc_F7B9AB:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F7B9B3:   var_98.SetFocus
  loc_F7B9CC:   Set var_90 = Me.Txt
  loc_F7B9D2:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_98)
  loc_F7B9DA:   var_98.Enabled = False
  loc_F7B9E9: Else
  loc_F7BA0A:   MsgBox("There Is No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F7BA1A: End If
  loc_F7BA27: Me.LblUser.Caption = vbNullString
  loc_F7BA3C: Me.LblLDt.Caption = vbNullString
  loc_F7BA44: Exit Sub
  loc_F7BA45: ' Referenced from: F7B908
  loc_F7BA45: Proc_6_60_E63754(global_52)
  loc_F7BA4A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A574
  'Data Table: 4669E8
  loc_E1A569: Me.Global.Unload Me
  loc_E1A571: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F52708
  'Data Table: 4669E8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F525F4: On Error Goto loc_F526A0
  loc_F52600: var_88 = Me.RecordCount
  loc_F5260E: If (var_88 <= 0) Then
  loc_F52617:   var_B8 = "Information"
  loc_F52632:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F52642:   Exit Sub
  loc_F52643: End If
  loc_F5264A: var_10C = "SELECT  Code as SearchCode, Name , Subscription, Surcharge , FBilling,Status FROM MemCatMast  Where Site_Code='" & MemVar_1F95070
  loc_F5265F: MemVar_1F950E4 = var_10C & "' AND  LogSite_Code='" & MemVar_1F95078 & "' ORDER BY Name"
  loc_F52672: MemVar_1F95120 = Me
  loc_F52679: var_10C = "3500,1300,850,850,800"
  loc_F5267F: Proc_6_126_F1C850(var_10C)
  loc_F5269A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F5269F: Exit Sub
  loc_F526A0: ' Referenced from: F525F4
  loc_F526A8: Set var_118 = Err()
  loc_F526AE: Call 0.Method_arg_1C (var_88)
  loc_F526BF: If (var_88 <> 0) Then
  loc_F526CA:   Set var_118 = Err()
  loc_F526D0:   Call 0.Method_arg_2C (var_10C)
  loc_F526F1:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F52704: End If
  loc_F52704: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2C888
  'Data Table: 4669E8
  loc_E2C878: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2C880: Call Proc_264_28_12DAC98(global_52)
  loc_E2C885: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2DB48
  'Data Table: 4669E8
  loc_E2DB38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2DB40: Call Proc_264_28_12DAC98(global_52)
  loc_E2DB45: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2D668
  'Data Table: 4669E8
  loc_E2D658: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2D660: Call Proc_264_28_12DAC98(global_52)
  loc_E2D665: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2DD88
  'Data Table: 4669E8
  loc_E2DD78: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2DD80: Call Proc_264_28_12DAC98(global_52)
  loc_E2DD85: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '108784C
  'Data Table: 4669E8
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4669F8 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_10875B4: On Error Goto loc_1087800
  loc_10875DB: unk_4669F8.Execute "select * FROM MemCatMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_10875E6: Set var_88 = var_C8
  loc_10875FC: var_CC = var_88.RecordCount
  loc_108760A: If (var_CC = 0) Then
  loc_1087626:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_1087636:   Exit Sub
  loc_1087637: End If
  loc_1087646: var_A4 = MemVar_1F950B4 & "\MemCatMast.ttx"
  loc_108764D: Set var_C8 = var_88 
  loc_1087659: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_1087663: Set var_88 = var_C8
  loc_1087669: var_B4 = CVar(var_12E) 'Integer
  loc_108766C: var_98 = var_B4 'Variant
  loc_1087688: var_A0 = MemVar_1F950B4 & "\MemCatMast.RPT"
  loc_1087691: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_108769C: MemVar_1F951E8 = var_C8
  loc_10876B7: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_10876BF: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_10876CB: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_10876E4:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10876EC:   Call 0.Method_arg_20 (var_138)
  loc_10876F4:   Call 0.Method_arg_30 (var_A0)
  loc_108773A:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1087750:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1087758:     Call 0.Method_arg_20 (var_138)
  loc_1087760:     Call 0.Method_arg_38 ("'Member Category Master'")
  loc_108776C:   End If
  loc_108776F: Next var_132 'Integer
  loc_108778D: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1087795: Call 0.Method_arg_2C (var_DC)
  loc_10877A3: Call 0.Method_arg_150 (var_FC)
  loc_10877AE: Call 0.Method_arg_50 (var_A0)
  loc_10877B8: Set var_138 = Nothing
  loc_10877D2: Set var_C8 = MemVar_1F951E8 
  loc_10877DE: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_10877E9: MemVar_1F951E8 = var_C8
  loc_10877FC: Set var_88 = Nothing
  loc_10877FF: Exit Sub
  loc_1087800: ' Referenced from: 10875B4
  loc_1087808: Set var_C8 = Err()
  loc_108780E: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_1087819: Call 0.Method_arg_50 (var_A4)
  loc_1087835: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_1087848: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0B384
  'Data Table: 4669E8
  Dim Me As Recordset15
  loc_E0B37B: Me.Requery -1
  loc_E0B380: Exit Sub
  loc_E0B381: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1343100
  'Data Table: 4669E8
  Dim var_AC As String
  Dim var_E4 As Variant
  Dim var_C4 As String
  Dim unk_4669F8 As Connection15
  Dim var_A0 As Variant
  Dim var_A4 As Variant
  Dim var_A8 As Field20
  Dim var_108 As Variant
  Dim var_D4 As Variant
  Dim var_118 As Variant
  Dim Me As Recordset15
  Dim var_124 As TextBox
  Dim var_138 As TextBox
  Dim var_184 As TextBox
  Dim var_220 As TextBox
  Dim var_2BC As TextBox
  Dim var_5D0 As Double
  Dim var_308 As TextBox
  Dim var_3A4 As TextBox
  Dim var_2E0 As Variant
  Dim var_448 As Variant
  Dim var_C0 As Variant
  loc_1342A2C: On Error Goto loc_13430AC
  loc_1342A33: var_86 = CByte(0) 'Byte
  loc_1342A42: Set var_A0 = Me.Txt
  loc_1342A48: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1342A71: If (Proc_6_27_EA61EC(var_A4, "Name") = 0) Then
  loc_1342A7B:   Call Txt_GotFocus(CInt(0))
  loc_1342A80:   Exit Sub
  loc_1342A81: End If
  loc_1342A84: Call Proc_264_29_10F6244(var_AE)
  loc_1342A8F: If (var_AE = &HFF) Then
  loc_1342A92:   Exit Sub
  loc_1342A93: End If
  loc_1342A97: Set var_A0 = Me.TopCtrl1
  loc_1342A9D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_A4)
  loc_1342AB6: If (CStr() = "Add") Then
  loc_1342ABF:   var_E4 = 0
  loc_1342ADC:   var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From MemCatMast WHERE  SITE_CODE='" & MemVar_1F95070
  loc_1342AEC:   unk_4669F8.Execute CStr() & "'", var_C0, -1
  loc_1342AF4:   var_A0 = var_A0.Fields
  loc_1342AFC:   var_E4 = var_A4.Item(var_A4)
  loc_1342B04:   var_A8 = var_A8.Value
  loc_1342B3D:   var_108 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_1342B6B:   var_118 = (1 + Format(CStr(var_F4), "0000"))
  loc_1342B76:   global_72 = CStr(var_118)
  loc_1342B8B: Else
  loc_1342BA8:   var_A4 = Me.Fields.Item("Code")
  loc_1342BB0:   var_C0 = var_A4.Value
  loc_1342BBF:   global_72 = CStr(var_C0)
  loc_1342BD0: End If
  loc_1342BD9: unk_4669F8.BeginTrans var_11C
  loc_1342BE2: var_86 = CByte(1) 'Byte
  loc_1342C04: var_C4 = "Delete From MemCatMast Where Code='" & global_72 & "'"
  loc_1342C0D: unk_4669F8.Execute var_C4, var_C0, -1
  loc_1342C33: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_C4, Me.Txt)
  loc_1342C3B: 1 = var_A4.Text
  loc_1342C4E: Set var_A8 = Me.Txt
  loc_1342C54: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_124, var_128)
  loc_1342C5C: var_108 = var_124.Text
  loc_1342C6F: Set var_134 = Me.Txt
  loc_1342C75: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_138)
  loc_1342C87: var_F4 = "N"
  loc_1342CA0: var_D4 = (var_138.Text = "Yes")
  loc_1342CA7: var_108 = IIf(var_D4, "Y", var_F4)
  loc_1342CBA: Set var_180 = Me.Txt
  loc_1342CC0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_184)
  loc_1342D05: Set var_21C = Me.Txt
  loc_1342D0B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_220)
  loc_1342D50: Set var_2B8 = Me.Txt
  loc_1342D56: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2BC)
  loc_1342D6B: var_5D0 = Val(var_2BC.Text)
  loc_1342D7C: Set var_304 = Me.Txt
  loc_1342D82: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_308, var_30C)
  loc_1342DC7: Set var_3A0 = Me.Txt
  loc_1342DCD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_3A4)
  loc_1342DE5: Proc_6_7_F26918(var_488)
  loc_1342DEE: Set var_4BC = Me.TopCtrl1
  loc_1342DF4: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(Proc_6_15_EF37AC(var_F4)))
  loc_1342E42: var_AC = "Insert Into MemCatMast(Code,Name,ShortName,Subscription,Surcharge,Corporate,ChildAgeLmt,FBilling,Status,Site_code,U_Name,U_EntDt,U_AE, LOGSITE_CODE) Values ('" & global_72
  loc_1342E65: var_118 = CVar(var_AC & "','" & var_C4 & "','" & var_128 & "','") 'String
  loc_1342E9F: var_2E0 = var_118 & var_108 & "','" & IIf((var_184.Text = "Yes"), "Y", "N") & "','" & IIf((var_220.Text = "Yes"), "Y", "N") & "'," & CVar(var_308.Text) 
  loc_1342EE8: var_448 = var_2E0 & ",'" & IIf((var_30C = "Yes"), "Y", "N") & "','" & CVar(var_3A4.Text) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) 
  loc_1342F32: unk_4669F8.Execute CStr(var_448 & "'," & var_488 & ",'" & IIf((CStr(var_4CC) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "')"), var_5C4, -1
  loc_1342FE6: unk_4669F8.CommitTrans
  loc_1342FEF: var_86 = CByte(0) 'Byte
  loc_1342FFE: Me.Requery -1
  loc_134300E: Me.Requery -1
  loc_134303B: Me.Find "Code='" & global_72 & "'", 0, 1
  loc_134304B: Set var_A0 = Me.TopCtrl1
  loc_1343051: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_D4)
  loc_134306A: If (CStr(var_5C8) = "Add") Then
  loc_134306D:   Call TopCtrl1_UnknownEvent_A()
  loc_1343072:   Exit Sub
  loc_1343073: End If
  loc_1343088: var_AC = "INI"
  loc_1343096: Call Proc_264_26_E7C98C(Proc_5_1_100EC1C(var_AC, Me))
  loc_13430A1: Call Proc_264_30_E81EF4(global_52)
  loc_13430A6: Call Proc_264_28_12DAC98()
  loc_13430AB: Exit Sub
  loc_13430AC: ' Referenced from: 1342A2C
  loc_13430B5: If (CInt(var_86) = 1) Then
  loc_13430BE:   unk_4669F8.RollbackTrans
  loc_13430C3: End If
  loc_13430CB: Set var_A0 = Err()
  loc_13430D1: Call 0.Method_arg_2C (var_AC)
  loc_13430EA: MsgBox(CVar(var_AC), &H10, var_F4, var_108, var_118)
  loc_13430FD: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC4ED4
  'Data Table: 4669E8
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC4E4A: On Error Goto loc_EC4E8F
  loc_EC4E53: Me.MoveFirst
  loc_EC4E6D: var_8C = "code='" & MyValue
  loc_EC4E7D: Me.Find var_8C & "'", 0, 1
  loc_EC4E89: Call Proc_264_28_12DAC98(var_A0)
  loc_EC4E8E: Exit Sub
  loc_EC4E8F: ' Referenced from: EC4E4A
  loc_EC4E97: Set var_A4 = Err()
  loc_EC4E9D: Call 0.Method_arg_2C (var_8C)
  loc_EC4EBE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC4ED1: Exit Sub
  loc_EC4ED2: Exit Sub
End Sub

Public Sub Proc_264_26_E7C98C(arg_C) 'E7C98C
  'Data Table: 4669E8
  Dim var_98 As TextBox
  loc_E7C93A: Set var_8C = Me.Txt
  loc_E7C940: Call 0.Method_Proc_264_26_E7C98CC (var_8E, var_86)
  loc_E7C950: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7C966:   Set var_8C = Me.Txt
  loc_E7C96C:   Call 0.Method_Proc_264_26_E7C98C0 (CInt(var_86), var_98)
  loc_E7C974:   var_98.Enabled = arg_C
  loc_E7C983: Next var_92 'Byte
  loc_E7C989: Exit Sub
End Sub

Public Sub Proc_264_27_EAD63C
  'Data Table: 4669E8
  Dim var_98 As TextBox
  loc_EAD5AE: global_76 = vbNullString
  loc_EAD5C0: Set var_8C = Me.Txt
  loc_EAD5C6: Call 0.Method_Proc_264_27_EAD63CC (var_8E, var_86)
  loc_EAD5D6: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EAD5EC:   Set var_8C = Me.Txt
  loc_EAD5F2:   Call 0.Method_Proc_264_27_EAD63C0 (CInt(var_86), var_98)
  loc_EAD5FA:   var_98.Text = vbNullString
  loc_EAD616:   Set var_8C = Me.Txt
  loc_EAD61C:   Call 0.Method_Proc_264_27_EAD63C0 (CInt(var_86), var_98)
  loc_EAD624:   var_98.Tag = vbNullString
  loc_EAD633: Next var_92 'Byte
  loc_EAD639: Exit Sub
End Sub

Public Sub Proc_264_28_12DAC98
  'Data Table: 4669E8
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B8 As Fields15
  Dim var_B4 As String
  Dim var_CC As TextBox
  Dim .global_28672 As Currency
  loc_12DA618: On Error Goto loc_12DAC52
  loc_12DA621: Proc_183_45_E5CCA8(global_52)
  loc_12DA63D: If (Me.RecordCount <= 0) Then
  loc_12DA640:   Call Proc_264_27_EAD63C()
  loc_12DA648: Else
  loc_12DA6F1:   var_180 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_12DA739:   Me.LblUser.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_Name")))))
  loc_12DA7B9:   var_CC = Me.Fields.Item("U_AE")
  loc_12DA81A:   var_180 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_CC)) = "E"), "Last Update :   ", "entdt :   "))
  loc_12DA862:   Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_EntDt")))))
  loc_12DA8D6:   Set var_B8 = Me.Txt
  loc_12DA8DC:   Call 0.Method_Proc_264_28_12DAC980 (CInt(0), var_CC)
  loc_12DA8E4:   var_CC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12DA936:   Set var_B8 = Me.Txt
  loc_12DA93C:   Call 0.Method_Proc_264_28_12DAC980 (CInt(0), var_CC)
  loc_12DA944:   var_CC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_12DA993:   Set var_B8 = Me.Txt
  loc_12DA999:   Call 0.Method_Proc_264_28_12DAC980 (CInt(1), var_CC)
  loc_12DA9A1:   var_CC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ShortName")))
  loc_12DAA27:   Set var_B8 = Me.Txt
  loc_12DAA2D:   Call 0.Method_Proc_264_28_12DAC980 (CInt(2), var_CC)
  loc_12DAA35:   var_CC.Text = Proc_6_38_E69628(IIf((Me.Fields.Item("Subscription").Value = "Y"), "Yes", "No"))
  loc_12DAA8F:   var_130 = "No"
  loc_12DAAC7:   Set var_B8 = Me.Txt
  loc_12DAACD:   Call 0.Method_Proc_264_28_12DAC980 (CInt(8), var_CC)
  loc_12DAAD5:   var_CC.Text = Proc_6_38_E69628(IIf((Me.Fields.Item("Surcharge").Value = "N"), var_130, "Yes"))
  loc_12DAB73:   Set var_B8 = Me.Txt
  loc_12DAB79:   Call 0.Method_Proc_264_28_12DAC980 (CInt(5), var_CC)
  loc_12DAB81:   var_CC.Text = Proc_6_38_E69628(IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("FBilling"))))) = "N"), "No", "Yes"))
  loc_12DABD4:   var_110 = Trim(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Status")))))
  loc_12DAC13:   var_B4 = Proc_6_38_E69628(IIf((var_110 = "N"), "Non Active", "Active"))
  loc_12DAC21:   Set var_B8 = Me.Txt
  loc_12DAC27:   Call 0.Method_Proc_264_28_12DAC980 (CInt(7), var_CC)
  loc_12DAC2F:   var_CC.Text = var_B4
  loc_12DAC51: End If
  loc_12DAC51: Exit Sub
  loc_12DAC52: ' Referenced from: 12DA618
  loc_12DAC5A: Set var_8C = Err()
  loc_12DAC60: Call 0.Method_arg_2C (var_B4)
  loc_12DAC81: MsgBox(CVar(var_B4), &H40, "Information", var_110, var_130)
  loc_12DAC94: Exit Sub
  loc_12DAC95: .global_28672 = 
End Sub

Public Sub Proc_264_29_10F6244
  'Data Table: 4669E8
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim unk_4669F8 As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  loc_10F5F67: If (Me.RecordCount = 0) Then
  loc_10F5F6A:   Proc_264_29_10F6244 = 
  loc_10F5F70: End If
  loc_10F5F74: Set var_90 = Me.TopCtrl1
  loc_10F5F7A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10F5F93: If (CStr() = "Add") Then
  loc_10F5F9C:   var_F4 = 0
  loc_10F5FD1:   Set var_90 = Me.Txt
  loc_10F5FD7:   Call 0.Method_Proc_264_29_10F62440 (CInt(0), var_A8, var_AC, "Select Count(*) From MemCatMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and code='", var_A0, -1)
  loc_10F6000:   Set var_B8 = Me.Txt
  loc_10F6006:   Call 0.Method_Proc_264_29_10F62440 (CInt(0), var_BC, var_C0, var_E4 & var_AC & "' and Name='")
  loc_10F600E:   var_F4 = var_BC.Text
  loc_10F6027:   unk_4669F8.Execute var_F8 & var_C0 & "'", var_108, 
  loc_10F602F:    = var_A8.Tag.Fields
  loc_10F6037:    = var_E4.Item()
  loc_10F603F:    = var_F8.Value
  loc_10F607A:   If (var_108 > 0) Then
  loc_10F6088:     var_108 = "Information"
  loc_10F6098:     var_A0 = "Duplicate Name"
  loc_10F609E:     MsgBox(var_A0, &H40, var_108, var_128, var_148)
  loc_10F60B9:     Set var_90 = Me.Txt
  loc_10F60BF:     Call 0.Method_Proc_264_29_10F62440 (CInt(0))
  loc_10F60C7:     var_A8.SetFocus
  loc_10F60D8:     Proc_264_29_10F6244 = &HFF
  loc_10F60DE:   End If
  loc_10F60E1: Else
  loc_10F60E7:   var_F4 = 0
  loc_10F611C:   Set var_90 = Me.Txt
  loc_10F6122:   Call 0.Method_Proc_264_29_10F62440 (CInt(0), var_A8, var_AC, "Select Count(*) From MemCatMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and code='", var_A0, -1)
  loc_10F614B:   Set var_B8 = Me.Txt
  loc_10F6151:   Call 0.Method_Proc_264_29_10F62440 (CInt(0), var_BC, var_C0, var_E4 & var_AC & "' and Name='")
  loc_10F6159:   var_F4 = var_BC.Text
  loc_10F6183:   unk_4669F8.Execute var_F8 & var_C0 & "' And Name<>'" & global_76 & "'", var_108, var_A8
  loc_10F618B:    = var_A8.Tag.Fields
  loc_10F6193:    = var_E4.Item()
  loc_10F619B:    = var_F8.Value
  loc_10F61DA:   If (var_108 > 0) Then
  loc_10F61FE:     MsgBox("Duplicate Name", &H40, "Information", var_128, var_148)
  loc_10F6219:     Set var_90 = Me.Txt
  loc_10F621F:     Call 0.Method_Proc_264_29_10F62440 (CInt(0))
  loc_10F6227:     var_A8.SetFocus
  loc_10F6238:     Proc_264_29_10F6244 = &HFF
  loc_10F623E:   End If
  loc_10F623E: End If
  loc_10F623E: Proc_264_29_10F6244 = var_A8
End Sub

Public Sub Proc_264_30_E81EF4
  'Data Table: 4669E8
  loc_E81EA4: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E81EB6:   Me.DGHelp.Visible = False
  loc_E81EBE: End If
  loc_E81ED9: If (Me.FrmList.Visible = &HFF) Then
  loc_E81EE8:   Me.FrmList.Visible = False
  loc_E81EF0: End If
  loc_E81EF0: Exit Sub
  loc_E81EF1:  = arg_1903
End Sub
