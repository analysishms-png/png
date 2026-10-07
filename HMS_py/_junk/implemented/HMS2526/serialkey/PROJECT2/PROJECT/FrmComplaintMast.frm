VERSION 5.00
Begin VB.Form FrmComplaintMast
  Caption = "Complain Master"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FrmComplaintMast.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8415
  ClientHeight = 4125
  Begin MainCtrl topCtrl1
    Left = 0
    Top = 0
    Width = 8415
    Height = 450
    TabIndex = 23
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2385
    Top = 2910
    Width = 2670
    Height = 240
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 15
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
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2385
    Top = 2640
    Width = 1260
    Height = 240
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 11
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
    Left = 13740
    Top = 6510
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 19
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 45
      Top = 30
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 20
    End
  End
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2385
    Top = 2370
    Width = 2715
    Height = 240
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 8
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
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    Left = 2175
    Top = 6375
    Width = 2670
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 6
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3675
    Top = 1290
    Width = 855
    Height = 240
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 6
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
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2385
    Top = 1290
    Width = 1260
    Height = 240
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin MSFlexGrid FGPoint
    Left = 13755
    Top = 4485
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGCategory
    Left = 10410
    Top = 3270
    Width = 4230
    Height = 2670
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 13
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2385
    Top = 1560
    Width = 3990
    Height = 240
    TabIndex = 3
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
  Begin TextBox TxtDesc
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2385
    Top = 1830
    Width = 3990
    Height = 240
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 255
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
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2385
    Top = 2100
    Width = 2715
    Height = 240
    TabIndex = 5
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
  Begin DataGrid DGDepartment
    Left = 11415
    Top = 720
    Width = 4230
    Height = 3060
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 12
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 420
    Width = 180
    Height = 540
    TabIndex = 24
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
  Begin Label LblName
    Caption = "Clearing Person"
    Index = 8
    ForeColor = &HFF0000&
    Left = 465
    Top = 2925
    Width = 1530
    Height = 240
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
    Caption = "Clearing Date"
    Index = 7
    ForeColor = &HFF0000&
    Left = 465
    Top = 2650
    Width = 1305
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
  Begin Label LblName
    Caption = "Status"
    Index = 6
    ForeColor = &HFF0000&
    Left = 465
    Top = 2378
    Width = 585
    Height = 240
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
  Begin Label LblName
    Caption = "Complaint By"
    Index = 5
    ForeColor = &HFF0000&
    Left = 810
    Top = 6360
    Width = 1275
    Height = 240
    TabIndex = 17
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
    Caption = "Time"
    Index = 4
    ForeColor = &HFF0000&
    Left = 9780
    Top = 7590
    Width = 480
    Height = 240
    Visible = 0   'False
    TabIndex = 16
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
    Caption = "Complain Date"
    Index = 1
    ForeColor = &HFF0000&
    Left = 465
    Top = 1290
    Width = 1410
    Height = 240
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
    Caption = "Department"
    Index = 3
    ForeColor = &HFF0000&
    Left = 465
    Top = 2106
    Width = 1110
    Height = 240
    TabIndex = 11
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
    Caption = "Descrption"
    Index = 2
    ForeColor = &HFF0000&
    Left = 465
    Top = 1834
    Width = 1005
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
    Caption = "Complaint Category"
    Index = 0
    ForeColor = &HFF0000&
    Left = 465
    Top = 1562
    Width = 1890
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
End

Attribute VB_Name = "FrmComplaintMast"


Private Sub DGCategory_UnknownEvent_9 'F39974
  'Data Table: 46DC54
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3986B: Me.DGCategory.Visible = False
  loc_F3988A: If (Me.RecordCount > 0) Then
  loc_F398C9:   Set var_B4 = Me.Txt
  loc_F398CF:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(3), var_B8)
  loc_F398D7:   var_B8.Tag = CStr(Me.Fields.Item("SCode").Value)
  loc_F3990A:   var_B0 = Me.Fields.Item("Category")
  loc_F39929:   Set var_B4 = Me.Txt
  loc_F3992F:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(3), var_B8)
  loc_F39937:   var_B8.Text = CStr(var_B0.Value)
  loc_F3994D: End If
  loc_F39958: Set var_A8 = Me.Txt
  loc_F3995E: Call 0.Method_DGCategory_UnknownEvent_90 (CInt(3))
  loc_F39966: var_B0.SetFocus
  loc_F39972: Exit Sub
End Sub

Private Sub DGCategory_UnknownEvent_1F 'EA8150
  'Data Table: 46DC54
  Dim var_A8 As Variant
  loc_EA80D0: Set var_88 = Me.DGCategory
  loc_EA80FA: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA8102: Set var_BC = Me.DGCategory
  loc_EA813E: Proc_6_138_106E830(Me.DGCategory, global_52, CInt(3), Me.FGPoint)
  loc_EA814C: Exit Sub
  loc_EA814D: Set var_8C = DGCategory.DispID_1B
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1109E30
  'Data Table: 46DC54
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_1109B16: Set var_88 = Me.Txt
  loc_1109B1C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1109B2A: Proc_6_74_E23240(var_8C)
  loc_1109B36: Call Proc_166_37_EBEB40(var_8C)
  loc_1109B3E: var_92 = Index
  loc_1109B49: If (var_92 = CInt(3)) Then
  loc_1109B63:   If (Me.RecordCount > 0) Then
  loc_1109B71:     Set var_8C = Me.FGPoint
  loc_1109B89:     Proc_6_137_1192FDC(Me.DGCategory, global_52, Index)
  loc_1109B97:   End If
  loc_1109B9A: Else
  loc_1109BA2:   If (var_92 = CInt(4)) Then
  loc_1109BBC:     If (Me.RecordCount > 0) Then
  loc_1109BCA:       Set var_8C = Me.FGPoint
  loc_1109BE2:       Proc_6_137_1192FDC(Me.DGDepartment, global_56, Index)
  loc_1109BF0:     End If
  loc_1109C3E:     Set var_88 = Me.Txt
  loc_1109C44:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1109C4C:     var_8C = var_8C.Text
  loc_1109C64:     If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1109C67:       Exit Sub
  loc_1109C68:     End If
  loc_1109C75:     Set var_88 = Me.Txt
  loc_1109C7B:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1109C83:     var_A0 = var_8C.Text
  loc_1109C95:     var_B0 = "Name"
  loc_1109CD0:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1109CD9:       Me.MoveFirst
  loc_1109CFC:       Set var_88 = Me.Txt
  loc_1109D02:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1109D0A:       0 = var_8C.Text
  loc_1109D23:       Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_1109D38:     End If
  loc_1109D3B:   Else
  loc_1109D43:     If (var_92 = CInt(5)) Then
  loc_1109D53:       ReDim var_F0(0 To 1)
  loc_1109D6A:       var_F0(0) = "UnSolved"
  loc_1109D79:       var_F0(1) = "Solved"
  loc_1109D90:       global_76 = Array(var_F0)
  loc_1109D9B:       Set var_B4 = Me.ListView
  loc_1109DB6:       Set var_8C = Me.Txt
  loc_1109DD0:       Set global_92 = Proc_6_66_F0048C(var_B4, var_8C, Index)
  loc_1109DEE:       Set var_88 = Me.Txt
  loc_1109DF4:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1109DFC:       global_76 = var_8C.Text
  loc_1109E0E:       Set var_90 = Me.Txt
  loc_1109E14:       Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_1109E1C:       var_B4.Tag = 2
  loc_1109E2F:     End If
  loc_1109E2F:   End If
  loc_1109E2F: End If
  loc_1109E2F: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11CAB30
  'Data Table: 46DC54
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  Dim var_B0 As TextBox
  Dim var_C0 As TextBox
  Dim var_90 As Variant
  loc_11CA6F2: If (CLng(Shift) = &H1B) Then
  loc_11CA6F5:   Call Proc_166_37_EBEB40()
  loc_11CA6FA:   Exit Sub
  loc_11CA6FB: End If
  loc_11CA6FE: var_88 = KeyCode
  loc_11CA709: If (var_88 = CInt(3)) Then
  loc_11CA723:   If (Me.RecordCount > 0) Then
  loc_11CA743:     Set var_A0 = Me.FGPoint
  loc_11CA775:     Proc_6_79_11AD564(Me.DGCategory, Me.Txt, CInt(3), global_52, Shift)
  loc_11CA789:   End If
  loc_11CA7E2:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11CA808:     Proc_6_138_106E830(Me.DGCategory, global_52, KeyCode, Me.FGPoint, 0)
  loc_11CA816:   End If
  loc_11CA819: Else
  loc_11CA821:   If (var_88 = CInt(4)) Then
  loc_11CA82F:     Set var_B0 = Me.Txt
  loc_11CA841:     Set var_A8 = Me.FGPoint
  loc_11CA84C:     Set var_A0 = Nothing
  loc_11CA87A:     Proc_6_69_134A630(Me.DGDepartment, var_B0, KeyCode, global_56, Shift, 0, 1)
  loc_11CA899:     var_8C = Me.RecordCount
  loc_11CA8E9:     If ((var_8C > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11CA8F0:       Set var_A0 = Me.DGDepartment
  loc_11CA8F7:       Set var_94 = Me.FGPoint
  loc_11CA90F:       Proc_6_138_106E830(var_A0, global_56, KeyCode, var_94, var_A0, var_A8)
  loc_11CA91D:     End If
  loc_11CA920:   Else
  loc_11CA928:     If (var_88 = CInt(5)) Then
  loc_11CA94D:       Set var_90 = Me.Txt
  loc_11CA953:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_8C, 0)
  loc_11CA95B:       1 = var_94.Left
  loc_11CA96D:       Set var_A0 = Me.Txt
  loc_11CA973:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_11CA97B:       var_A0 = var_A8.Top
  loc_11CA98D:       Set var_AC = Me.Txt
  loc_11CA993:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_B0, var_BC)
  loc_11CA99B:       0 = var_B0.Height
  loc_11CA9AD:       Set var_B4 = Me.Txt
  loc_11CA9B3:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_11CA9BB:       var_C4 = var_C0.Width
  loc_11CAA03:       Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11CAA27:     End If
  loc_11CAA27:   End If
  loc_11CAA27: End If
  loc_11CAA62: If ((CBool(Me.DGDepartment.Visible) = 0) And (CBool(Me.DGCategory.Visible) = 0)) Then
  loc_11CAA7A:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11CAA83:     Proc_6_76_E533C8(Shift, arg_14, CInt(var_8C), CInt((var_B8 + var_BC)))
  loc_11CAA88:   End If
  loc_11CAAA6:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(4))) Then
  loc_11CAAAF:     Call Txt_Validate(KeyCode)
  loc_11CAABA:     If (var_86 = 0) Then
  loc_11CAAC3:       Call Proc_166_38_E8F5B4(KeyCode, var_86, CInt(var_C4))
  loc_11CAAC8:     End If
  loc_11CAACB:   Else
  loc_11CAAE9:     If ((CLng(Shift) = &H28) Or ((CLng(Shift) = &HD) And (KeyCode <> CInt(3)))) Then
  loc_11CAAF2:       Proc_6_75_E5335C(Shift, arg_14)
  loc_11CAAFA:     Else
  loc_11CAB18:       If ((CLng(Shift) = &H28) Or ((CLng(Shift) = &HD) And (KeyCode = CInt(3)))) Then
  loc_11CAB25:         Me.TxtDesc.SetFocus
  loc_11CAB2D:       End If
  loc_11CAB2D:     End If
  loc_11CAB2D:   End If
  loc_11CAB2D: End If
  loc_11CAB2D: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EFC16C
  'Data Table: 46DC54
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_A0 As String
  loc_EFC09E: Proc_6_133_E7FB08(var_94)
  loc_EFC0A7: arg_10 = CInt(var_94)
  loc_EFC0B0: Proc_6_58_E06050(arg_10, arg_10)
  loc_EFC0B8: var_96 = KeyAscii
  loc_EFC0C3: If (var_96 = CInt(3)) Then
  loc_EFC0CA:   Set var_9C = Me.topCtrl1
  loc_EFC0D0:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_96)
  loc_EFC0E9:   If (CStr(arg_10) <> "Add") Then
  loc_EFC0EE:     arg_10 = 0
  loc_EFC0F1:   End If
  loc_EFC0F4: Else
  loc_EFC0FC:   If (var_96 = CInt(4)) Then
  loc_EFC10E:     var_A0 = "Name"
  loc_EFC129:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_56, arg_10)
  loc_EFC15B:     Proc_6_138_106E830(Me.DGDepartment, global_56, KeyAscii, Me.FGPoint)
  loc_EFC169:   End If
  loc_EFC169: End If
  loc_EFC169: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F349DC
  'Data Table: 46DC54
  Dim var_86 As Integer
  loc_F348CB: var_86 = KeyCode
  loc_F348D6: If (var_86 = CInt(3)) Then
  loc_F348F5:   If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_F34902:     var_A4 = "Category"
  loc_F34921:     Proc_6_80_FF1F20(Me.Txt, CInt(3), global_52)
  loc_F34953:     Proc_6_138_106E830(Me.DGCategory, global_52, KeyCode, Me.FGPoint)
  loc_F34961:   End If
  loc_F34964: Else
  loc_F3496C:   If (var_86 = CInt(4)) Then
  loc_F3498B:     If (CBool(Me.DGDepartment.Visible) = &HFF) Then
  loc_F3499F:       var_A4 = "Name"
  loc_F349C7:       Proc_6_68_12A2818(Me.DGDepartment, Me.Txt, CInt(4), global_56, Shift)
  loc_F349DA:     End If
  loc_F349DA:   End If
  loc_F349DA: End If
  loc_F349DA: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E504BC
  'Data Table: 46DC54
  loc_E5049A: Set var_88 = Me.Txt
  loc_E504A0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E504AE: Proc_6_73_E23294(var_8C)
  loc_E504BA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'FA1E64
  'Data Table: 46DC54
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_FA1CEB: var_86 = Cancel
  loc_FA1CF6: If (var_86 = CInt(3)) Then
  loc_FA1CF9:   GoTo loc_FA1E62
  loc_FA1CFC: End If
  loc_FA1D04: If (var_86 = CInt(2)) Then
  loc_FA1D0A:   Call Proc_166_36_1048650(var_88)
  loc_FA1D15:   If (var_88 = &HFF) Then
  loc_FA1D1A:     arg_10 = &HFF
  loc_FA1D1D:     Exit Sub
  loc_FA1D1E:   End If
  loc_FA1D21: Else
  loc_FA1D29:   If (var_86 = CInt(4)) Then
  loc_FA1D7A:     Set var_94 = Me.Txt
  loc_FA1D80:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_FA1D88:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_FA1DA0:     If (arg_10 Or (var_9C = vbNullString)) Then
  loc_FA1DA3:       Exit Sub
  loc_FA1DA4:     End If
  loc_FA1DDF:     Set var_B0 = Me.Txt
  loc_FA1DE5:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_FA1DED:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FA1E3E:     Set var_B0 = Me.Txt
  loc_FA1E44:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_FA1E4C:     var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FA1E62:   End If
  loc_FA1E62:   ' Referenced from: FA1CF9
  loc_FA1E62: End If
  loc_FA1E62: Exit Sub
End Sub

Private Sub DGDepartment_UnknownEvent_9 'F388F4
  'Data Table: 46DC54
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F387EB: Me.DGDepartment.Visible = False
  loc_F3880A: If (Me.RecordCount > 0) Then
  loc_F38849:   Set var_B4 = Me.Txt
  loc_F3884F:   Call 0.Method_DGDepartment_UnknownEvent_90 (CInt(4), var_B8)
  loc_F38857:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3888A:   var_B0 = Me.Fields.Item("Name")
  loc_F388A9:   Set var_B4 = Me.Txt
  loc_F388AF:   Call 0.Method_DGDepartment_UnknownEvent_90 (CInt(4), var_B8)
  loc_F388B7:   var_B8.Text = CStr(var_B0.Value)
  loc_F388CD: End If
  loc_F388D8: Set var_A8 = Me.Txt
  loc_F388DE: Call 0.Method_DGDepartment_UnknownEvent_90 (CInt(4))
  loc_F388E6: var_B0.SetFocus
  loc_F388F2: Exit Sub
End Sub

Private Sub DGDepartment_UnknownEvent_1F 'EA7BF4
  'Data Table: 46DC54
  Dim var_A8 As Variant
  loc_EA7B74: Set var_88 = Me.DGDepartment
  loc_EA7B9E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA7BA6: Set var_BC = Me.DGDepartment
  loc_EA7BE2: Proc_6_138_106E830(Me.DGDepartment, global_56, CInt(4), Me.FGPoint)
  loc_EA7BF0: Exit Sub
  loc_EA7BF1: Set var_8C = DGDepartment.DispID_1B
End Sub

Private Sub Form_Load() '11624B4
  'Data Table: 46DC54
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C8 As String
  Dim var_CC As String
  Dim unk_46DC65 As Connection15
  Dim var_DC As Variant
  loc_116210C: On Error Goto loc_116246F
  loc_116211A: Set var_8C = Me.LblName
  loc_1162120: Call 0.Method_Form_Load0 (7, var_90)
  loc_1162128: var_90.Visible = False
  loc_116213F: Set var_8C = Me.LblName
  loc_1162145: Call 0.Method_Form_Load0 (8, var_90)
  loc_116214D: var_90.Visible = False
  loc_1162164: Set var_8C = Me.Txt
  loc_116216A: Call 0.Method_Form_Load0 (6, var_90)
  loc_1162172: var_90.Visible = False
  loc_1162189: Set var_8C = Me.Txt
  loc_116218F: Call 0.Method_Form_Load0 (7, var_90)
  loc_1162197: var_90.Visible = False
  loc_11621AA: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_11621BD: Set var_8C = Me.Txt
  loc_11621C3: Call 0.Method_Form_Load0 (CInt(3), var_90)
  loc_11621E2: Me.DGCategory.Left = CVar(var_90.Left)
  loc_11621FE: Set var_B8 = Me.Txt
  loc_1162204: Call 0.Method_Form_Load0 (CInt(3), var_BC)
  loc_116221F: Set var_8C = Me.Txt
  loc_1162225: Call 0.Method_Form_Load0 (CInt(3), var_90)
  loc_116223D: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_116224C: Me.DGCategory.Top = CVar(var_90.Left)
  loc_116226C: Set var_8C = Me.Txt
  loc_1162272: Call 0.Method_Form_Load0 (CInt(4), var_90)
  loc_1162291: Me.DGDepartment.Left = CVar(var_90.Left)
  loc_11622AD: Set var_B8 = Me.Txt
  loc_11622B3: Call 0.Method_Form_Load0 (CInt(4), var_BC)
  loc_11622D4: Call 0.Method_Form_Load0 (CInt(4), var_90)
  loc_11622EC: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_11622FB: Me.DGDepartment.Top = CVar(var_90.Left)
  loc_1162331: unk_46DC65.Execute "SELECT Code,Name FROM Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1
  loc_1162360: CVarUnk
  loc_1162365: VerifyVarObj
  loc_1162371: LateIdStAd
  loc_116239A: var_CC = "SELECT Code AS Scode,Category FROM ComplaintCategory Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  Order BY Category"
  loc_11623A3: unk_46DC65.Execute var_CC, var_DC, -1
  loc_11623D2: CVarUnk
  loc_11623D7: VerifyVarObj
  loc_11623E3: LateIdStAd
  loc_1162405: var_C8 = "SELECT CD.Code AS Scode,CD.Category AS CatCode,CD.CDate AS CDate,CD.CTime AS CTime,CC.Category AS Category,CD.Description AS Description,CD.Depart AS Depart,CD.UName AS UName,CD.Status AS Status,CD.Site_Code,CD.LogSite_Code FROM ComplaintDetail CD Left JOIN ComplaintCategory CC ON CD.Category =CC.Code Where (CD.LOGSITE_CODE='" & MemVar_1F95078
  loc_1162415: unk_46DC65.Execute var_C8 & "') ORDER BY CD.Code", var_DC, -1
  loc_1162447: Set var_8C = Me
  loc_1162450: var_C8 = "INI"
  loc_116245E: Call Proc_166_32_E89A24(Proc_5_1_100EC1C(var_C8, var_8C, Me.DGCategory, var_8C, var_8C), Me.DGDepartment, var_8C)
  loc_1162469: Call Proc_166_34_11D2188(var_8C, Me.Txt)
  loc_116246E: Exit Sub
  loc_116246F: ' Referenced from: 116210C
  loc_1162477: Set var_8C = Err()
  loc_116247D: Call 0.Method_arg_2C (var_C8)
  loc_116249E: MsgBox(CVar(var_C8), &H40, "Information", var_100, var_120)
  loc_11624B1: Exit Sub
  loc_11624B2: Exit Sub
End Sub

Private Sub Form_Resize() 'ED82F8
  'Data Table: 46DC54
  Dim var_8C As Label
  loc_ED8256: Call 0.Method_arg_50 (var_88)
  loc_ED8268: Me.LblFormCaption.Caption = var_88
  loc_ED8281: Me.LblFormCaption.Left = CDbl(0)
  loc_ED828D: Set var_A0 = Me.topCtrl1
  loc_ED8293: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED82A0: Set var_8C = Me.topCtrl1
  loc_ED82A6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED82C0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED82DB: Call 0.Method_arg_100 (var_B8)
  loc_ED82ED: Me.LblFormCaption.Width = var_B8
  loc_ED82F5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5350C
  'Data Table: 46DC54
  loc_E534DF: Set global_52 = Nothing
  loc_E534F1: Set global_52 = Nothing
  loc_E53503: Set global_56 = Nothing
  loc_E5350A: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E89408
  'Data Table: 46DC54
  loc_E893A4: On Error Goto loc_E893C4
  loc_E893BB: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E893C3: Exit Sub
  loc_E893C4: ' Referenced from: E893A4
  loc_E893CC: Set var_88 = Err()
  loc_E893D2: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E893F3: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E89406: Exit Sub
  loc_E89407: Exit Sub
End Sub

Private Sub TxtDesc_GotFocus() 'E40FC0
  'Data Table: 46DC54
  loc_E40F9F: Me.TxtDesc.BackColor = &HE0E0E0
  loc_E40FB6: Me.TxtDesc.ForeColor = &HC00000
  loc_E40FBE: Exit Sub
End Sub

Private Sub TxtDesc_KeyDown(KeyCode As Integer, Shift As Integer) 'F2DEEC
  'Data Table: 46DC54
  Dim var_8C As Variant
  Dim var_88 As Variant
  loc_F2DDF1: If ((CLng(KeyCode) = &H28) Or (CLng(KeyCode) = &HD)) Then
  loc_F2DDFF:   Set var_88 = Me.Txt
  loc_F2DE05:   Call 0.Method_TxtDesc_KeyDown0 (CInt(4))
  loc_F2DE0D:   var_8C.SetFocus
  loc_F2DE19: End If
  loc_F2DE33: Set var_8C = Me.DGCategory
  loc_F2DE54: If ((CBool(Me.DGDepartment.Visible) = 0) And (CBool(var_8C.Visible) = 0)) Then
  loc_F2DE61:   If (CLng(KeyCode) = &H26) Then
  loc_F2DE6F:     Set var_88 = Me.Txt
  loc_F2DE75:     Call 0.Method_TxtDesc_KeyDown0 (CInt(3), var_8C)
  loc_F2DE7D:     var_8C.SetFocus
  loc_F2DE89:   End If
  loc_F2DE93:   If (CLng(KeyCode) = &H28) Then
  loc_F2DEA1:     Set var_88 = Me.Txt
  loc_F2DEA7:     Call 0.Method_TxtDesc_KeyDown0 (CInt(4), var_8C)
  loc_F2DEAF:     var_8C.SetFocus
  loc_F2DEBB:   End If
  loc_F2DECA:   Me.TxtDesc.BackColor = -2147483643
  loc_F2DEE1:   Me.TxtDesc.ForeColor = &HC00000
  loc_F2DEE9: End If
  loc_F2DEE9: Exit Sub
End Sub

Private Sub TxtDesc_LostFocus() 'E40F5C
  'Data Table: 46DC54
  loc_E40F3B: Me.TxtDesc.BackColor = -2147483643
  loc_E40F52: Me.TxtDesc.ForeColor = &HC00000
  loc_E40F5A: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E63F98
  'Data Table: 46DC54
  loc_E63F68: If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_E63F6B:   Call DGCategory_UnknownEvent_9()
  loc_E63F70: End If
  loc_E63F8C: If (CBool(Me.DGDepartment.Visible) = &HFF) Then
  loc_E63F8F:   Call DGDepartment_UnknownEvent_9()
  loc_E63F94: End If
  loc_E63F94: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '1044464
  'Data Table: 46DC54
  Dim var_94 As TextBox
  Dim var_8C As TextBox
  loc_1044208: On Error Goto loc_104445D
  loc_104422E: Call Proc_166_32_E89A24(Proc_5_1_100EC1C("ADD", Me))
  loc_1044246: Set var_8C = Me.Txt
  loc_104424C: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_1044254: var_94.Enabled = False
  loc_104426D: Set var_8C = Me.Txt
  loc_1044273: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_104427B: var_94.Enabled = False
  loc_1044294: Set var_8C = Me.Txt
  loc_104429A: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_94)
  loc_10442A2: var_94.Enabled = False
  loc_10442B9: Set var_8C = Me.Txt
  loc_10442BF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (6, var_94)
  loc_10442C7: var_94.Visible = False
  loc_10442DE: Set var_8C = Me.Txt
  loc_10442E4: Call 0.Method_TopCtrl1_UnknownEvent_A0 (7, var_94)
  loc_10442EC: var_94.Visible = False
  loc_1044305: Set var_8C = Me.Txt
  loc_104430B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_94)
  loc_1044313: var_94.Enabled = False
  loc_104432B: Me.TxtDesc.Enabled = True
  loc_1044333: Call Proc_166_33_ECEDBC(global_60)
  loc_1044352: Set var_8C = Me.Txt
  loc_1044358: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_1044360: var_94.Text = CStr(Date)
  loc_10443AC: Set var_8C = Me.Txt
  loc_10443B2: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94, CStr(Format(Time, "HH:MM")))
  loc_10443BA: var_94.Text = 1
  loc_10443E0: Set var_8C = Me.Txt
  loc_10443E6: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_94)
  loc_10443EE: var_94.Text = MemVar_1F950C8
  loc_1044408: Set var_8C = Me.Txt
  loc_104440E: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_94)
  loc_1044416: var_94.Text = "UnSolved"
  loc_104442F: Me.TxtDesc.Text = vbNullString
  loc_1044442: Set var_8C = Me.Txt
  loc_1044448: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_94)
  loc_1044450: var_94.SetFocus
  loc_104445C: Exit Sub
  loc_104445D: ' Referenced from: 1044208
  loc_104445D: Proc_6_60_E63754(1)
  loc_1044462: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC0EFC
  'Data Table: 46DC54
  loc_EC0E64: On Error Goto loc_EC0EF4
  loc_EC0E9E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC0EAD:   Set var_110 = Me
  loc_EC0EC4:   Call Proc_166_32_E89A24(Proc_5_1_100EC1C("INI", var_110))
  loc_EC0ECF:   Call Proc_166_37_EBEB40(global_60)
  loc_EC0ED4:   Call Proc_166_34_11D2188()
  loc_EC0EDC: Else
  loc_EC0EE2:   Call 0.Method_arg_1E8 (var_110)
  loc_EC0EEA:   Call var_110.SetFocus
  loc_EC0EF3: End If
  loc_EC0EF3: Exit Sub
  loc_EC0EF4: ' Referenced from: EC0E64
  loc_EC0EF4: Proc_6_60_E63754()
  loc_EC0EF9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10E2158
  'Data Table: 46DC54
  Dim var_96 As Integer
  Dim unk_46DC65 As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_10E1E78: On Error Goto loc_10E2101
  loc_10E1E89: If (Proc_183_56_FE8B08(global_60) = &HFF) Then
  loc_10E1E8C:   Exit Sub
  loc_10E1E8D: End If
  loc_10E1EC4: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10E1EC9:   var_96 = 0
  loc_10E1ED5:   unk_46DC65.BeginTrans var_11C
  loc_10E1EDC:   var_96 = &HFF
  loc_10E1EF0:   var_94 = Me.Bookmark 'Variant
  loc_10E1F3C:   var_F8 = "Delete From ComplaintDetail Where Code='" & Me.Fields.Item("SCode").Value & "'" 
  loc_10E1F4A:   unk_46DC65.Execute CStr(var_F8), var_118, -1
  loc_10E1F95:   var_164 = 0
  loc_10E1FA8:   var_15C = 0
  loc_10E1FB3:   var_158 = 0
  loc_10E1FC6:   var_150 = 0
  loc_10E1FD1:   var_14C = 0
  loc_10E1FE4:   var_144 = 0
  loc_10E2024:   var_128 = "ComplaintDetail"
  loc_10E202D:   Proc_154_5_10E3BD4(MemVar_1F95044, var_128, "Code", &HC8, CStr(Me.Fields.Item("SCode").Value), 0, 0, 0)
  loc_10E205B:   unk_46DC65.CommitTrans
  loc_10E2062:   var_96 = 0
  loc_10E2070:   Me.Requery -1
  loc_10E2080:   Me.Requery -1
  loc_10E20A0:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10E20AD:     Me.Bookmark = var_94
  loc_10E20B5:   Else
  loc_10E20C9:     If (Me.EOF = 0) Then
  loc_10E20D2:       Me.MoveLast
  loc_10E20D7:     End If
  loc_10E20D7:   End If
  loc_10E20D7:   Call Proc_166_34_11D2188(var_96, var_144, 0, var_14C, var_150)
  loc_10E20F8:   Proc_5_0_1107AD0(&HFF, Me, global_60, 0)
  loc_10E2100: End If
  loc_10E2100: Exit Sub
  loc_10E2101: ' Referenced from: 10E1E78
  loc_10E2107: If (var_96 = &HFF) Then
  loc_10E2110:   unk_46DC65.RollbackTrans
  loc_10E2115: End If
  loc_10E211D: Set var_120 = Err()
  loc_10E2123: Call 0.Method_arg_2C (var_128, 0, var_158)
  loc_10E2144: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10E2157: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '1030D94
  'Data Table: 46DC54
  Dim var_94 As Variant
  Dim var_8C As TextBox
  loc_1030B4C: On Error Goto loc_1030D8C
  loc_1030B5D: If (Proc_183_55_FE8490(global_60) = &HFF) Then
  loc_1030B60:   Exit Sub
  loc_1030B61: End If
  loc_1030B84: Call Proc_166_32_E89A24(Proc_5_1_100EC1C("EDIT", Me))
  loc_1030B9C: Set var_8C = Me.Txt
  loc_1030BA2: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_1030BAA: var_94.Enabled = False
  loc_1030BC3: Set var_8C = Me.Txt
  loc_1030BC9: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_1030BD1: var_94.Enabled = False
  loc_1030BEA: Set var_8C = Me.Txt
  loc_1030BF0: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_1030BF8: var_94.Enabled = False
  loc_1030C11: Set var_8C = Me.Txt
  loc_1030C17: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_94)
  loc_1030C1F: var_94.Enabled = False
  loc_1030C39: Set var_8C = Me.Txt
  loc_1030C3F: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_94)
  loc_1030C52: global_68 = var_94.Text
  loc_1030C6B: Set var_8C = Me.LblName
  loc_1030C71: Call 0.Method_TopCtrl1_UnknownEvent_D0 (7, var_94)
  loc_1030C79: var_94.Visible = False
  loc_1030C90: Set var_8C = Me.LblName
  loc_1030C96: Call 0.Method_TopCtrl1_UnknownEvent_D0 (8, var_94)
  loc_1030C9E: var_94.Visible = False
  loc_1030CB5: Set var_8C = Me.Txt
  loc_1030CBB: Call 0.Method_TopCtrl1_UnknownEvent_D0 (6, var_94)
  loc_1030CC3: var_94.Visible = False
  loc_1030CDA: Set var_8C = Me.Txt
  loc_1030CE0: Call 0.Method_TopCtrl1_UnknownEvent_D0 (7, var_94)
  loc_1030CE8: var_94.Visible = False
  loc_1030D00: Me.TxtDesc.Enabled = True
  loc_1030D20: Set var_8C = Me.Txt
  loc_1030D26: Call 0.Method_TopCtrl1_UnknownEvent_D0 (6, var_94)
  loc_1030D2E: var_94.Text = CStr(Date)
  loc_1030D4C: Set var_8C = Me.Txt
  loc_1030D52: Call 0.Method_TopCtrl1_UnknownEvent_D0 (7, var_94)
  loc_1030D5A: var_94.Text = MemVar_1F950C8
  loc_1030D71: Set var_8C = Me.Txt
  loc_1030D77: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_94)
  loc_1030D7F: var_94.SetFocus
  loc_1030D8B: Exit Sub
  loc_1030D8C: ' Referenced from: 1030B4C
  loc_1030D8C: Proc_6_60_E63754(global_60)
  loc_1030D91: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18564
  'Data Table: 46DC54
  loc_E18559: Me.Global.Unload Me
  loc_E18561: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F247D0
  'Data Table: 46DC54
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F246D0: On Error Goto loc_F24768
  loc_F246DC: var_88 = Me.RecordCount
  loc_F246EA: If (var_88 <= 0) Then
  loc_F246F3:   var_B8 = "Information"
  loc_F2470E:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F2471E:   Exit Sub
  loc_F2471F: End If
  loc_F24726: var_10C = "Select C.Code AS SearchCode, C.Description As Description, C.UName AS ComplaintBy, Depart.Name AS Department FROM ComplaintDetail C Inner JOIN Depart ON C.Depart = Depart.Code Where C.LogSite_Code='" & MemVar_1F95078
  loc_F2472D: MemVar_1F950E4 = var_10C & "' ORDER BY C.Description"
  loc_F2473A: MemVar_1F95120 = Me
  loc_F24741: var_10C = "3500,1400,2000"
  loc_F24747: Proc_6_126_F1C850(var_10C)
  loc_F24762: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F24767: Exit Sub
  loc_F24768: ' Referenced from: F246D0
  loc_F24770: Set var_110 = Err()
  loc_F24776: Call 0.Method_arg_1C (var_88)
  loc_F24787: If (var_88 <> 0) Then
  loc_F24792:   Set var_110 = Err()
  loc_F24798:   Call 0.Method_arg_2C (var_10C)
  loc_F247B9:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F247CC: End If
  loc_F247CC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E34F88
  'Data Table: 46DC54
  loc_E34F78: Proc_5_0_1107AD0(&HFF, Me)
  loc_E34F80: Call Proc_166_34_11D2188(global_60)
  loc_E34F85: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E35168
  'Data Table: 46DC54
  loc_E35158: Proc_5_0_1107AD0(&HFF, Me)
  loc_E35160: Call Proc_166_34_11D2188(global_60)
  loc_E35165: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E350A8
  'Data Table: 46DC54
  loc_E35098: Proc_5_0_1107AD0(&HFF, Me)
  loc_E350A0: Call Proc_166_34_11D2188(global_60)
  loc_E350A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E34FE8
  'Data Table: 46DC54
  loc_E34FD8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E34FE0: Call Proc_166_34_11D2188(global_60)
  loc_E34FE5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '108B068
  'Data Table: 46DC54
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_46DC65 As Connection15
  Dim var_9C As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  Dim var_23F0 As Variant
  loc_108ADD0: On Error Goto loc_108B01C
  loc_108ADE7: var_A0 = "SELECT CD.Code AS Scode,CD.CDate AS CDate,CD.CTime AS CTime,CC.Category AS Category,CD.Description AS Description,D.Name AS Depart,CD.UName AS UName,CD.Status AS Status FROM (ComplaintDetail CD INNER JOIN ComplaintCategory CC ON CD.Category =CC.Code) INNER JOIN Depart D ON CD.Depart=D.Code Where CD.LogSite_Code='" & MemVar_1F95078
  loc_108ADF7: unk_46DC65.Execute var_A0 & "' ORDER BY CD.CDate,CD.CTime,D.Name", var_C4, -1
  loc_108AE02: Set var_9C = var_C8
  loc_108AE18: var_CC = var_9C.RecordCount
  loc_108AE26: If (var_CC = 0) Then
  loc_108AE42:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_108AE52:   Exit Sub
  loc_108AE53: End If
  loc_108AE62: var_A4 = MemVar_1F950B4 & "\Complaint.ttx"
  loc_108AE69: Set var_C8 = var_9C 
  loc_108AE75: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_108AE7F: Set var_9C = var_C8
  loc_108AE85: var_B4 = CVar(var_12E) 'Integer
  loc_108AE88: var_94 = var_B4 'Variant
  loc_108AEA4: var_A0 = MemVar_1F950B4 & "\Complaint.RPT"
  loc_108AEAD: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_108AEB8: MemVar_1F951E8 = var_C8
  loc_108AED3: Call 0.Method_arg_90 (var_C8, var_CC, var_96, 1)
  loc_108AEDB: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_108AEE7: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_108AF00:   Call 0.Method_arg_90 (var_C8, CLng(var_96))
  loc_108AF08:   Call 0.Method_arg_20 (var_138)
  loc_108AF10:   Call 0.Method_arg_30 (var_A0)
  loc_108AF56:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_108AF6C:     Call 0.Method_arg_90 (var_C8, CLng(var_96))
  loc_108AF74:     Call 0.Method_arg_20 (var_138)
  loc_108AF7C:     Call 0.Method_arg_38 ("'Complaint RsCat'")
  loc_108AF88:   End If
  loc_108AF8B: Next var_132 'Integer
  loc_108AFA9: Call 0.Method_arg_64 (var_C8, CVar(var_9C))
  loc_108AFB1: Call 0.Method_arg_2C (var_DC)
  loc_108AFBF: Call 0.Method_arg_150 (var_FC)
  loc_108AFCA: Call 0.Method_arg_50 (var_A0)
  loc_108AFD4: Set var_138 = Nothing
  loc_108AFEE: Set var_C8 = MemVar_1F951E8 
  loc_108AFFA: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_108B005: MemVar_1F951E8 = var_C8
  loc_108B018: Set var_9C = Nothing
  loc_108B01B: Exit Sub
  loc_108B01C: ' Referenced from: 108ADD0
  loc_108B024: Set var_C8 = Err()
  loc_108B02A: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_108B035: Call 0.Method_arg_50 (var_A4)
  loc_108B051: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_108B064: Exit Sub
  loc_108B065: var_23F0 = var_138
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E22BB0
  'Data Table: 46DC54
  Dim Me As Recordset15
  loc_E22B97: Me.Requery -1
  loc_E22BA7: Me.Requery -1
  loc_E22BAC: Exit Sub
  loc_E22BAD: Set var_8C = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1410724
  'Data Table: 46DC54
  Dim var_94 As Variant
  Dim var_A0 As String
  Dim var_D8 As Variant
  Dim unk_46DC65 As Connection15
  Dim var_98 As Variant
  Dim var_9C As Variant
  Dim var_EC As String
  Dim var_FC As Variant
  Dim var_C8 As Variant
  Dim var_10C As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_130 As Fields15
  Dim var_144 As Variant
  Dim var_12C As Variant
  Dim var_154 As Variant
  Dim var_1A8 As Variant
  Dim var_E8 As Variant
  Dim var_198 As Variant
  Dim var_208 As Variant
  Dim var_230 As TextBox
  Dim var_2E4 As Variant
  Dim var_210 As String
  Dim var_218 As String
  Dim var_384 As String
  loc_140FD5C: On Error Goto loc_14106D1
  loc_140FD63: var_86 = CByte(0) 'Byte
  loc_140FD72: Set var_94 = Me.Txt
  loc_140FD78: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3))
  loc_140FDA1: If (Proc_183_19_E8E68C(var_98, "Category") = 0) Then
  loc_140FDAB:   Call Txt_GotFocus(CInt(3))
  loc_140FDB0:   Exit Sub
  loc_140FDB1: End If
  loc_140FDBC: Set var_94 = Me.Txt
  loc_140FDC2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_98)
  loc_140FDEB: If (Proc_183_19_E8E68C(var_98, "Complaint Status") = 0) Then
  loc_140FDF5:   Call Txt_GotFocus(CInt(2))
  loc_140FDFA:   Exit Sub
  loc_140FDFB: End If
  loc_140FE06: Set var_94 = Me.Txt
  loc_140FE0C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_98)
  loc_140FE35: If (Proc_183_19_E8E68C(var_98, "Department") = 0) Then
  loc_140FE3F:   Call Txt_GotFocus(CInt(4))
  loc_140FE44:   Exit Sub
  loc_140FE45: End If
  loc_140FE49: Set var_98 = Me.TxtDesc
  loc_140FE70: If (Proc_183_19_E8E68C(var_98, "Discription") = 0) Then
  loc_140FE7D:   Me.TxtDesc.SetFocus
  loc_140FE85:   Exit Sub
  loc_140FE86: End If
  loc_140FE8A: Set var_94 = Me.topCtrl1
  loc_140FE90: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_98)
  loc_140FEA9: If (CStr() = "Add") Then
  loc_140FEB2:   var_D8 = 0
  loc_140FECF:   var_A0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ComplaintDetail Where Site_Code='" & MemVar_1F95070
  loc_140FEDF:   unk_46DC65.Execute CStr() & "'", var_B4, -1
  loc_140FEE7:   var_94 = var_94.Fields
  loc_140FEEF:   var_D8 = var_98.Item(var_98)
  loc_140FEF7:   var_9C = var_9C.Value
  loc_140FF30:   var_FC = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_140FF5E:   var_10C = (1 + Format(CStr(var_E8), "0000"))
  loc_140FF69:   global_64 = CStr(var_10C)
  loc_140FF7E: Else
  loc_140FF9B:   var_98 = Me.Fields.Item("SCode")
  loc_140FFB2:   global_64 = CStr(var_98.Value)
  loc_140FFC3: End If
  loc_140FFEF: Set var_94 = Me.Txt
  loc_140FFF5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_98, "SELECT Count(*) FROM ComplaintCategory WHERE Category='", var_12C, -1, var_9C, var_130)
  loc_140FFFD: var_B4 = CVar(var_98) 'Address
  loc_141000C: var_FC = 0 & Trim(var_B4) 
  loc_1410023: unk_46DC65.Execute CStr(var_FC & "'"), var_144, var_154
  loc_141002B: 1 = var_9C.Fields
  loc_141003B:  = var_144.Value
  loc_1410068: If (var_154 <= 0) Then
  loc_1410071:   var_D8 = 0
  loc_141008E:   var_A0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ComplaintCategory Where Site_Code='" & MemVar_1F95070
  loc_141009E:   unk_46DC65.Execute CStr(var_FC & "'") & "'", var_B4, -1
  loc_14100A6:   var_94 = var_94.Fields
  loc_14100AE:   var_D8 = var_98.Item(var_98)
  loc_14100B6:   var_9C = var_9C.Value
  loc_14100E6:   var_FC = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_1410109:   var_E8 = Format(CStr(var_130.Item(var_FC)), "0000")
  loc_1410111:   var_10C = (1 + var_E8)
  loc_1410116:   var_90 = CStr(var_FC & "'")
  loc_1410127: Else
  loc_1410135:   Set var_94 = Me.Txt
  loc_141013B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_98, CStr(var_FC & "'"))
  loc_1410143:   1 = var_98.Tag
  loc_141014B:   var_90 = CStr(var_FC & "'")
  loc_1410155: End If
  loc_141015E: unk_46DC65.BeginTrans var_178
  loc_1410167: var_86 = CByte(1) 'Byte
  loc_141016F: Set var_94 = Me.topCtrl1
  loc_1410175: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_FC)
  loc_141018E: If (CStr(var_E8) = "Add") Then
  loc_14101BD:   Set var_94 = Me.Txt
  loc_14101C3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_98, "SELECT Count(*) FROM ComplaintCategory WHERE Category='", var_12C, -1)
  loc_14101F1:   unk_46DC65.Execute CStr(var_9C & Trim(CVar(var_98)) & "'"), var_130, 0
  loc_14101F9:   var_144 = var_9C.Fields
  loc_1410201:    = var_130.Item(var_154)
  loc_1410209:    = var_144.Value
  loc_1410236:   If (var_154 <= 0) Then
  loc_141025B:     var_FC = CVar("Insert Into ComplaintCategory(Code,Category,Site_Code,U_EntDt,U_AE,LogSite_Code) " & "Values('" & var_90 & "','") 'String
  loc_1410269:     Set var_94 = Me.Txt
  loc_141026F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_98, var_FC)
  loc_1410277:     var_B4 = CVar(var_98) 'Address
  loc_14102B4:     Proc_6_7_F26918(var_198, Date, var_208 & Trim(var_B4) & "','" & CVar(MemVar_1F95070) & "',")
  loc_14102BC:     var_1A8 = -1 & var_198 
  loc_14102E6:     unk_46DC65.Execute CStr(var_1A8 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_9C, 
  loc_141031A:   End If
  loc_141032E:   var_A0 = "Insert Into ComplaintDetail(Code,Category,CDate,CTime,Description,Depart,UName,Status,Site_Code,U_EntDt,U_AE,LogSite_Code) " & "Values('"
  loc_141033F:   var_EC = var_A0 & global_64 & "','"
  loc_141034D:   var_E8 = CVar(var_EC & var_90 & "',") 'String
  loc_1410353:   var_C8 = MemVar_1F950EC
  loc_141035B:   Proc_183_7_EB17D4(var_B4, var_C8, var_E8)
  loc_1410363:   var_FC = var_368 & var_B4 
  loc_141036C:   var_10C = var_FC & ",'" 
  loc_141037E:   Set var_94 = Me.Txt
  loc_1410384:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98, var_210)
  loc_141038C:   var_10C = var_98.Text
  loc_1410397:   var_154 = -1 & CVar(var_210) 
  loc_14103AB:   Set var_9C = Me.TxtDesc
  loc_14103B1:   var_214 = var_9C.Text
  loc_14103C5:   var_1A8 = var_208 & Trim(var_B4) & "','" & CVar(MemVar_1F95070) & "','" & CVar(var_214) & "','" 
  loc_14103D7:   Set var_130 = Me.Txt
  loc_14103DD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_144, var_218)
  loc_14103E5:   var_1A8 = var_144.Tag
  loc_141041E:   Set var_22C = Me.Txt
  loc_1410424:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_230)
  loc_1410465:   Proc_6_7_F26918(var_2D4, Date)
  loc_141046D:   var_2E4 = var_36C & CVar(var_218) & "','" & CVar(MemVar_1F950C8) & "','" & CVar(var_230.Text) & "','" & CVar(MemVar_1F95078) & "'," & var_2D4 
  loc_1410497:   unk_46DC65.Execute CStr(var_2E4 & ",'A','" & CVar(MemVar_1F95078) & "')"), , 
  loc_14104F8: Else
  loc_1410536:   Set var_98 = Me.Txt
  loc_141053C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_9C, var_EC, "UPDATE ComplaintDetail SET Description='" & Me.TxtDesc.Text & "',Status = '")
  loc_1410544:   var_B4 = var_9C.Text
  loc_141054D:   var_210 = -1 & var_EC
  loc_1410554:   var_218 = var_210 & "',Depart='"
  loc_1410565:   Set var_130 = Me.Txt
  loc_141056B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_144, var_214)
  loc_1410573:   var_218 = var_144.Tag
  loc_14105B0:   var_384 = var_22C & var_214 & "',UName='" & MemVar_1F950C8 & "',U_AE='E',Category='" & var_90 & "' WHERE Code='" & global_64 & "'"
  loc_14105B9:   unk_46DC65.Execute var_384, , 
  loc_14105F1: End If
  loc_14105F7: unk_46DC65.CommitTrans
  loc_1410600: var_86 = CByte(0) 'Byte
  loc_141060F: Me.Requery -1
  loc_141061F: Me.Requery -1
  loc_141064C: Me.Find "SCode='" & global_64 & "'", 0, 1
  loc_141065C: Set var_94 = Me.topCtrl1
  loc_1410662: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C8)
  loc_141067B: If (CStr() = "Add") Then
  loc_141067E:   Call TopCtrl1_UnknownEvent_A()
  loc_1410683:   Exit Sub
  loc_1410684: End If
  loc_1410699: var_A0 = "INI"
  loc_14106A7: Call Proc_166_32_E89A24(Proc_5_1_100EC1C(var_A0, Me))
  loc_14106BE: Me.TxtDesc.Enabled = False
  loc_14106C6: Call Proc_166_37_EBEB40(global_60)
  loc_14106CB: Call Proc_166_34_11D2188()
  loc_14106D0: Exit Sub
  loc_14106D1: ' Referenced from: 140FD5C
  loc_14106DA: If (CInt(var_86) = 1) Then
  loc_14106E3:   unk_46DC65.RollbackTrans
  loc_14106E8: End If
  loc_14106F0: Set var_94 = Err()
  loc_14106F6: Call 0.Method_arg_2C (var_A0)
  loc_141070F: MsgBox(CVar(var_A0), &H10, var_E8, var_FC, var_10C)
  loc_1410722: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC0C54
  'Data Table: 46DC54
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC0BCA: On Error Goto loc_EC0C0F
  loc_EC0BD3: Me.MoveFirst
  loc_EC0BED: var_8C = "SCode='" & MyValue
  loc_EC0BFD: Me.Find var_8C & "'", 0, 1
  loc_EC0C09: Call Proc_166_34_11D2188(var_A0)
  loc_EC0C0E: Exit Sub
  loc_EC0C0F: ' Referenced from: EC0BCA
  loc_EC0C17: Set var_A4 = Err()
  loc_EC0C1D: Call 0.Method_arg_2C (var_8C)
  loc_EC0C3E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC0C51: Exit Sub
  loc_EC0C52: Exit Sub
End Sub

Public Sub Proc_166_32_E89A24(arg_C) 'E89A24
  'Data Table: 46DC54
  Dim var_98 As TextBox
  Dim var_8C As TextBox
  loc_E899BE: Set var_8C = Me.Txt
  loc_E899C4: Call 0.Method_Proc_166_32_E89A24C (var_8E, var_86)
  loc_E899D4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E899EA:   Set var_8C = Me.Txt
  loc_E899F0:   Call 0.Method_Proc_166_32_E89A240 (CInt(var_86), var_98)
  loc_E899F8:   var_98.Enabled = arg_C
  loc_E89A07: Next var_92 'Byte
  loc_E89A1A: Me.TxtDesc.Enabled = arg_C
  loc_E89A22: Exit Sub
End Sub

Public Sub Proc_166_33_ECEDBC
  'Data Table: 46DC54
  Dim var_98 As TextBox
  Dim var_8C As TextBox
  loc_ECED0E: global_68 = vbNullString
  loc_ECED18: global_72 = vbNullString
  loc_ECED2A: Set var_8C = Me.Txt
  loc_ECED30: Call 0.Method_Proc_166_33_ECEDBCC (var_8E, var_86)
  loc_ECED40: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_ECED56:   Set var_8C = Me.Txt
  loc_ECED5C:   Call 0.Method_Proc_166_33_ECEDBC0 (CInt(var_86), var_98)
  loc_ECED64:   var_98.Text = vbNullString
  loc_ECED80:   Set var_8C = Me.Txt
  loc_ECED86:   Call 0.Method_Proc_166_33_ECEDBC0 (CInt(var_86), var_98)
  loc_ECED8E:   var_98.Tag = vbNullString
  loc_ECED9D: Next var_92 'Byte
  loc_ECEDB0: Me.TxtDesc.Text = vbNullString
  loc_ECEDB8: Exit Sub
  loc_ECEDB9: If  Then Exit Sub
  loc_ECEDB9: End If
End Sub

Public Sub Proc_166_34_11D2188
  'Data Table: 46DC54
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_BC As String
  Dim var_A8 As Variant
  Dim var_12C As Integer
  Dim var_FC As Variant
  Dim unk_46DC65 As Connection15
  Dim var_A4 As Variant
  Dim var_130 As Field20
  Dim var_138 As TextBox
  loc_11D1D30: On Error Goto loc_11D2145
  loc_11D1D39: Proc_183_45_E5CCA8(global_60)
  loc_11D1D55: If (Me.RecordCount <= 0) Then
  loc_11D1D58:   Call Proc_166_33_ECEDBC()
  loc_11D1D6A:   Me.TxtDesc.Text = vbNullString
  loc_11D1D75: Else
  loc_11D1DB1:   Set var_A4 = Me.Txt
  loc_11D1DB7:   Call 0.Method_Proc_166_34_11D21880 (CInt(3), var_A8)
  loc_11D1DBF:   var_A8.Tag = CStr(Me.Fields.Item("CatCode").Value)
  loc_11D1E11:   Set var_A4 = Me.Txt
  loc_11D1E17:   Call 0.Method_Proc_166_34_11D21880 (CInt(3), var_A8)
  loc_11D1E1F:   var_A8.Text = CStr(Me.Fields.Item("Category").Value)
  loc_11D1E71:   Set var_A4 = Me.Txt
  loc_11D1E77:   Call 0.Method_Proc_166_34_11D21880 (CInt(0), var_A8)
  loc_11D1E7F:   var_A8.Text = CStr(Me.Fields.Item("CDate").Value)
  loc_11D1ED1:   Set var_A4 = Me.Txt
  loc_11D1ED7:   Call 0.Method_Proc_166_34_11D21880 (CInt(1), var_A8)
  loc_11D1EDF:   var_A8.Text = CStr(Me.Fields.Item("CTime").Value)
  loc_11D1F31:   Set var_A4 = Me.Txt
  loc_11D1F37:   Call 0.Method_Proc_166_34_11D21880 (CInt(4), var_A8)
  loc_11D1F3F:   var_A8.Tag = CStr(Me.Fields.Item("Depart").Value)
  loc_11D1F5B:   var_12C = 0
  loc_11D1FAC:   var_FC = "SELECT Name FROM Depart WHERE Code='" & Me.Fields.Item("Depart").Value & "'" 
  loc_11D1FBA:   unk_46DC65.Execute CStr(var_FC), var_11C, -1
  loc_11D1FC2:   var_A4 = var_A4.Fields
  loc_11D1FCA:   var_12C = var_A8.Item(var_A8)
  loc_11D1FD2:   var_130 = var_130.Value
  loc_11D1FE9:   Set var_134 = Me.Txt
  loc_11D1FEF:   Call 0.Method_Proc_166_34_11D21880 (CInt(4), var_138)
  loc_11D1FF7:   var_138.Text = CStr(var_148)
  loc_11D205D:   Set var_A4 = Me.Txt
  loc_11D2063:   Call 0.Method_Proc_166_34_11D21880 (CInt(2), var_A8)
  loc_11D206B:   var_A8.Text = CStr(Me.Fields.Item("UName").Value)
  loc_11D20BC:   Me.TxtDesc.Text = CStr(Me.Fields.Item("Description").Value)
  loc_11D20FE:   var_BC = CStr(Me.Fields.Item("Status").Value)
  loc_11D210C:   Set var_A4 = Me.Txt
  loc_11D2112:   Call 0.Method_Proc_166_34_11D21880 (CInt(5), var_A8)
  loc_11D211A:   var_A8.Text = var_BC
  loc_11D213C:   Me.TxtDesc.Enabled = False
  loc_11D2144: End If
  loc_11D2144: Exit Sub
  loc_11D2145: ' Referenced from: 11D1D30
  loc_11D214D: Set var_8C = Err()
  loc_11D2153: Call 0.Method_arg_2C (var_BC)
  loc_11D2174: MsgBox(CVar(var_BC), &H40, "Information", var_FC, var_11C)
  loc_11D2187: Exit Sub
End Sub

Public Sub Proc_166_35_1067FD4
  'Data Table: 46DC54
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_D4 As Variant
  Dim var_90 As TextBox
  Dim unk_46DC65 As Connection15
  Dim var_C0 As Variant
  Dim var_C4 As Variant
  Dim var_D8 As Variant
  Dim var_138 As Fields15
  Dim var_13C As Field20
  loc_1067D8B: If (Me.RecordCount = 0) Then
  loc_1067D8E:   Proc_166_35_1067FD4 = 
  loc_1067D94: End If
  loc_1067D98: Set var_90 = Me.topCtrl1
  loc_1067D9E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1067DB7: If (CStr() = "Add") Then
  loc_1067DC0:   var_D4 = 0
  loc_1067DE6:   var_A4 = Me.TxtDesc.Text
  loc_1067DFF:   unk_46DC65.Execute "Select Count(*) From ComplaintDetail Where Description='" & var_A4 & "'", var_A0, -1
  loc_1067E07:   var_C0 = var_C0.Fields
  loc_1067E0F:   var_D4 = var_C4.Item(var_C4)
  loc_1067E17:   var_D8 = var_D8.Value
  loc_1067E42:   If (var_E8 > 0) Then
  loc_1067E60:     var_A0 = "Duplicate Name"
  loc_1067E66:     MsgBox(var_A0, &H40, "Information", var_108, var_128)
  loc_1067E81:     Set var_90 = Me.Txt
  loc_1067E87:     Call 0.Method_Proc_166_35_1067FD40 (CInt(3), var_C0)
  loc_1067E8F:     var_C0.SetFocus
  loc_1067EA0:     Proc_166_35_1067FD4 = &HFF
  loc_1067EA6:   End If
  loc_1067EA9: Else
  loc_1067ED6:   Set var_90 = Me.Txt
  loc_1067EDC:   Call 0.Method_Proc_166_35_1067FD40 (CInt(3), var_C0, var_A4, "Select Count(*) From ComplaintDetail Where Category='", var_A0, -1)
  loc_1067F1D:   unk_46DC65.Execute var_138 & var_A4 & "' And Description<>'" & Me.TxtDesc.Text & "'", 0, var_13C
  loc_1067F25:   var_E8 = var_C0.Text.Fields
  loc_1067F2D:    = var_138.Item(var_E8)
  loc_1067F35:    = var_13C.Value
  loc_1067F6A:   If (var_E8 > 0) Then
  loc_1067F8E:     MsgBox("Duplicate Name", &H40, "Information", var_108, var_128)
  loc_1067FA9:     Set var_90 = Me.Txt
  loc_1067FAF:     Call 0.Method_Proc_166_35_1067FD40 (CInt(3))
  loc_1067FB7:     var_C0.SetFocus
  loc_1067FC8:     Proc_166_35_1067FD4 = &HFF
  loc_1067FCE:   End If
  loc_1067FCE: End If
  loc_1067FCE: Proc_166_35_1067FD4 = var_C0
End Sub

Public Sub Proc_166_36_1048650
  'Data Table: 46DC54
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_46DC65 As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  Dim var_2301 As Double
  loc_1048414: Set var_8C = Me.topCtrl1
  loc_104841A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1048422: var_A0 = CStr()
  loc_1048433: If (var_A0 = "Add") Then
  loc_1048463:   Set var_8C = Me.Txt
  loc_1048469:   Call 0.Method_Proc_166_36_10486500 (CInt(2), var_A4, var_A0, "Select Count(*) From State Where ShortName='", var_9C, -1)
  loc_104848A:   unk_46DC65.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_104849A:    = var_C4.Item()
  loc_10484A2:    = var_D8.Value
  loc_10484CF:   If (var_A4.Text.Fields > 0) Then
  loc_10484ED:     var_9C = "Duplicate Short Name"
  loc_10484F3:     MsgBox(var_9C, &H40, "Information", var_108, var_128)
  loc_104850E:     Set var_8C = Me.Txt
  loc_1048514:     Call 0.Method_Proc_166_36_10486500 (CInt(2))
  loc_104851C:     var_A4.SetFocus
  loc_104852D:     Proc_166_36_1048650 = &HFF
  loc_1048533:   End If
  loc_1048536: Else
  loc_1048563:   Set var_8C = Me.Txt
  loc_1048569:   Call 0.Method_Proc_166_36_10486500 (CInt(2), var_A4, var_A0, "Select Count(*) From State Where ShortName='", var_9C, -1)
  loc_104859B:   unk_46DC65.Execute var_C4 & var_A0 & "' And ShortName<>'" & global_72 & "'", 0, var_D8
  loc_10485AB:    = var_C4.Item(var_A4)
  loc_10485B3:    = var_D8.Value
  loc_10485E4:   If (var_A4.Text.Fields > 0) Then
  loc_1048608:     MsgBox("Duplicate Short Name", &H40, "Information", var_108, var_128)
  loc_1048623:     Set var_8C = Me.Txt
  loc_1048629:     Call 0.Method_Proc_166_36_10486500 (CInt(2))
  loc_1048631:     var_A4.SetFocus
  loc_1048642:     Proc_166_36_1048650 = &HFF
  loc_1048648:   End If
  loc_1048648: End If
  loc_1048648: Proc_166_36_1048650 = var_A4
  loc_104864E: var_2301 = 
End Sub

Public Sub Proc_166_37_EBEB40
  'Data Table: 46DC54
  loc_EBEAB8: If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_EBEACA:   Me.DGCategory.Visible = False
  loc_EBEAD2: End If
  loc_EBEAEE: If (CBool(Me.DGDepartment.Visible) = &HFF) Then
  loc_EBEB00:   Me.DGDepartment.Visible = False
  loc_EBEB08: End If
  loc_EBEB24: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBEB36:   Me.FGPoint.Visible = False
  loc_EBEB3E: End If
  loc_EBEB3E: Exit Sub
End Sub

Public Sub Proc_166_38_E8F5B4(arg_C) 'E8F5B4
  'Data Table: 46DC54
  Dim var_10C As TextBox
  loc_E8F548: Call Proc_166_37_EBEB40()
  loc_E8F584: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8F587:   Call TopCtrl1_UnknownEvent_16()
  loc_E8F58F: Else
  loc_E8F599:   Set var_108 = Me.Txt
  loc_E8F59F:   Call 0.Method_Proc_166_38_E8F5B40 (arg_C)
  loc_E8F5A7:   var_10C.SetFocus
  loc_E8F5B3: End If
  loc_E8F5B3: Exit Sub
End Sub
