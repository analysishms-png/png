VERSION 5.00
Begin VB.Form PrCategoryMast
  Caption = "Category Master"
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
  ClientWidth = 6780
  ClientHeight = 3060
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 6780
    Height = 450
    TabIndex = 10
  End
  Begin DataGrid DGHelp
    Left = 10200
    Top = 960
    Width = 4230
    Height = 1875
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 2
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2325
    Top = 2400
    Width = 1995
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 25
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2325
    Top = 2085
    Width = 1995
    Height = 285
    TabIndex = 1
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
  Begin Frame FrmList
    Left = 9960
    Top = 2760
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = -240
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 6
    End
  End
  Begin MSFlexGrid FGPoint
    Left = 12360
    Top = 2280
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 4
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2325
    Top = 1770
    Width = 4215
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 25
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 435
    Width = 180
    Height = 540
    TabIndex = 13
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 75
    Top = 3840
    Width = 2880
    Height = 255
    TabIndex = 12
    Alignment = 2 'Center
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
    Left = 3450
    Top = 3840
    Width = 2790
    Height = 285
    TabIndex = 11
    Alignment = 2 'Center
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
  Begin Label LblName
    Caption = "Category"
    Index = 2
    ForeColor = &HFF0000&
    Left = 1380
    Top = 2400
    Width = 855
    Height = 240
    Visible = 0   'False
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
    Caption = "Type"
    Index = 1
    ForeColor = &HFF0000&
    Left = 1365
    Top = 2085
    Width = 465
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
  Begin Label LblName
    Caption = "Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 1365
    Top = 1770
    Width = 555
    Height = 240
    TabIndex = 3
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

Attribute VB_Name = "PrCategoryMast"


Private Sub DGHelp_UnknownEvent_9 'EE3F4C
  'Data Table: 45C438
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE3EA3: Me.DGHelp.Visible = False
  loc_EE3EC2: If (Me.RecordCount > 0) Then
  loc_EE3EE2:   var_B0 = Me.Fields.Item("Name")
  loc_EE3F01:   Set var_B4 = Me.Txt
  loc_EE3F07:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE3F0F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE3F25: End If
  loc_EE3F30: Set var_A8 = Me.Txt
  loc_EE3F36: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE3F3E: var_B0.SetFocus
  loc_EE3F4A: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E6F16C
  'Data Table: 45C438
  loc_E6F12A: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E6F141: Set var_8C = Me.FGPoint
  loc_E6F15D: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(0))
  loc_E6F16B: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FF1AC0
  'Data Table: 45C438
  Dim var_92 As Integer
  Dim Me As Variant
  loc_FF18EA: Set var_88 = Me.Txt
  loc_FF18F0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FF18FE: Proc_6_74_E23240(var_8C)
  loc_FF190A: Call Proc_313_32_EB91FC(var_8C)
  loc_FF1912: var_92 = Index
  loc_FF191D: If (var_92 = CInt(0)) Then
  loc_FF1937:   If (Me.RecordCount > 0) Then
  loc_FF1945:     Set var_8C = Me.FGPoint
  loc_FF195D:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_FF196B:   End If
  loc_FF196E: Else
  loc_FF1976:   If (var_92 = CInt(1)) Then
  loc_FF1986:     ReDim var_9C(0 To 1)
  loc_FF199D:     var_9C(0) = "Daily Wages"
  loc_FF19AC:     var_9C(1) = "Permanent"
  loc_FF1A03:     Set global_80 = Proc_6_66_F0048C(Me.ListView, Me.Txt, Index, Array(var_9C))
  loc_FF1A17:   Else
  loc_FF1A1F:     If (var_92 = CInt(2)) Then
  loc_FF1A2F:       ReDim var_9C(0 To 1)
  loc_FF1A46:       var_9C(0) = "Driver"
  loc_FF1A55:       var_9C(1) = "Other"
  loc_FF1AAC:       Set global_80 = Proc_6_66_F0048C(Me.ListView, Me.Txt, Index, Array(var_9C), 2)
  loc_FF1ABD:     End If
  loc_FF1ABD:   End If
  loc_FF1ABD: End If
  loc_FF1ABD: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11D5F40
  'Data Table: 45C438
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A4 As TextBox
  Dim var_AC As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  loc_11D5AFE: If (CLng(Shift) = &H1B) Then
  loc_11D5B01:   Call Proc_313_32_EB91FC()
  loc_11D5B06:   Exit Sub
  loc_11D5B07: End If
  loc_11D5B0A: var_86 = KeyCode
  loc_11D5B15: If (var_86 = CInt(0)) Then
  loc_11D5B1C:   Set var_A4 = Me.DGHelp
  loc_11D5B2A:   Set var_AC = Me.FGPoint
  loc_11D5B35:   Set var_9C = var_AC
  loc_11D5B67:   Proc_6_79_11AD564(var_A4, Me.Txt, CInt(0), global_56, Shift)
  loc_11D5B84:   var_B0 = Me.RecordCount
  loc_11D5BD4:   If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11D5BE2:     Set var_90 = Me.FGPoint
  loc_11D5BFA:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, var_90, 0)
  loc_11D5C08:   End If
  loc_11D5C0B: Else
  loc_11D5C13:   If (var_86 = CInt(1)) Then
  loc_11D5C38:     Set var_8C = Me.Txt
  loc_11D5C3E:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, 1)
  loc_11D5C46:     var_9C = var_90.Left
  loc_11D5C58:     Set var_9C = Me.Txt
  loc_11D5C5E:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B4)
  loc_11D5C66:     0 = var_A4.Top
  loc_11D5C78:     Set var_A8 = Me.Txt
  loc_11D5C7E:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC)
  loc_11D5C86:     var_B8 = var_AC.Height
  loc_11D5C98:     Set var_BC = Me.Txt
  loc_11D5C9E:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_11D5CA6:     var_C4 = var_C0.Width
  loc_11D5CF2:     Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11D5D19:   Else
  loc_11D5D21:     If (var_86 = CInt(2)) Then
  loc_11D5D46:       Set var_8C = Me.Txt
  loc_11D5D4C:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, CInt(var_B0))
  loc_11D5D54:       CInt(((var_B4 + var_B8) + CDbl(&H19))) = var_90.Left
  loc_11D5D66:       Set var_9C = Me.Txt
  loc_11D5D6C:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B4)
  loc_11D5D74:       CInt(var_C4) = var_A4.Top
  loc_11D5D86:       Set var_A8 = Me.Txt
  loc_11D5D8C:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_B8)
  loc_11D5D94:       1200 = var_AC.Height
  loc_11D5DA6:       Set var_BC = Me.Txt
  loc_11D5DAC:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_11D5DB4:       var_C4 = var_C0.Width
  loc_11D5E00:       Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11D5E24:     End If
  loc_11D5E24:   End If
  loc_11D5E24: End If
  loc_11D5E41: Set var_90 = Me.FrmList
  loc_11D5E47: var_92 = var_90.Visible
  loc_11D5E5D: If ((CBool(Me.DGHelp.Visible) = 0) And (var_92 = 0)) Then
  loc_11D5E7E:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(1))) Then
  loc_11D5E84:     Call Proc_313_31_1085AB0(var_92, CInt(var_B0), CInt(((var_B4 + var_B8) + CDbl(&H19))))
  loc_11D5E8F:     If (var_92 = &HFF) Then
  loc_11D5E9F:       Set var_8C = Me.Txt
  loc_11D5EA5:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, vbNullString)
  loc_11D5EAD:       var_90.Text = CInt(var_C4)
  loc_11D5EB9:       Exit Sub
  loc_11D5EBA:     End If
  loc_11D5EF1:     If (MsgBox("Save Record ?", 4, "Save Data", var_13C, var_15C) = 6) Then
  loc_11D5EF4:       Call TopCtrl1_UnknownEvent_16()
  loc_11D5EF9:     End If
  loc_11D5EF9:     Exit Sub
  loc_11D5EFA:   End If
  loc_11D5F0F:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11D5F18:     Proc_6_75_E5335C(Shift, arg_14)
  loc_11D5F1D:   End If
  loc_11D5F30:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_11D5F39:     Proc_6_76_E533C8(Shift, arg_14)
  loc_11D5F3E:   End If
  loc_11D5F3E: End If
  loc_11D5F3E: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E244F0
  'Data Table: 45C438
  loc_E244D6: Proc_6_133_E7FB08(var_94)
  loc_E244E8: Proc_6_58_E06050(CInt(var_94), CInt(var_94))
  loc_E244ED: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F994BC
  'Data Table: 45C438
  Dim var_86 As Integer
  loc_F99353: var_86 = KeyCode
  loc_F9935E: If (var_86 = CInt(0)) Then
  loc_F9937D:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F9938A:     var_A4 = "Name"
  loc_F993A9:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_56)
  loc_F993DB:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_F993E9:   End If
  loc_F993EC: Else
  loc_F993F4:   If (var_86 = CInt(1)) Then
  loc_F99412:     If (Me.FrmList.Visible = &HFF) Then
  loc_F99441:       Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F99451:     End If
  loc_F99454:   Else
  loc_F9945C:     If (var_86 = CInt(2)) Then
  loc_F9947A:       If (Me.FrmList.Visible = &HFF) Then
  loc_F994A9:         Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift, global_80)
  loc_F994B9:       End If
  loc_F994B9:     End If
  loc_F994B9:   End If
  loc_F994B9: End If
  loc_F994B9: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4A0CC
  'Data Table: 45C438
  loc_E4A0AA: Set var_88 = Me.Txt
  loc_E4A0B0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4A0BE: Proc_6_73_E23294(var_8C)
  loc_E4A0CA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F8A7E0
  'Data Table: 45C438
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As Variant
  Dim var_8C As ListView
  Dim var_AC As TextBox
  loc_F8A68B: var_86 = Cancel
  loc_F8A696: If (var_86 = CInt(0)) Then
  loc_F8A69C:   Call Proc_313_31_1085AB0(var_88)
  loc_F8A6A7:   If (var_88 = &HFF) Then
  loc_F8A6AC:     arg_10 = &HFF
  loc_F8A6AF:     Exit Sub
  loc_F8A6B0:   End If
  loc_F8A6B3: Else
  loc_F8A6BB:   If (var_86 = CInt(1)) Then
  loc_F8A6CB:     Set var_8C = Me.Txt
  loc_F8A6D1:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_F8A6D9:     arg_10 = var_90.Text
  loc_F8A6F0:     If (var_94 <> vbNullString) Then
  loc_F8A70B:       Set var_90 = Me.ListView.SelectedItem
  loc_F8A723:       Set var_A8 = Me.Txt
  loc_F8A729:       Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_F8A731:       var_AC.Text = var_90.Text
  loc_F8A747:     End If
  loc_F8A74A:   Else
  loc_F8A752:     If (var_86 = CInt(2)) Then
  loc_F8A762:       Set var_8C = Me.Txt
  loc_F8A768:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F8A787:       If (var_90.Text <> vbNullString) Then
  loc_F8A7BA:         Set var_A8 = Me.Txt
  loc_F8A7C0:         Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_F8A7C8:         var_AC.Text = Me.ListView.SelectedItem.Text
  loc_F8A7DE:       End If
  loc_F8A7DE:     End If
  loc_F8A7DE:   End If
  loc_F8A7DE: End If
  loc_F8A7DE: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F89E0C
  'Data Table: 45C438
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_88 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_A0 As String
  loc_F89CC8: On Error Goto loc_F89DA6
  loc_F89CCF: Set var_A4 = Me.ListView
  loc_F89D19: Set var_BC = Me.Txt
  loc_F89D1F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F89D27: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F89D53: Me.FrmList.Visible = False
  loc_F89D6D: var_A0 = CStr(Me.ListView.Tag)
  loc_F89D75: var_C8 = Val(var_A0)
  loc_F89D83: Set var_9C = Me.Txt
  loc_F89D89: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F89D91: var_A4.SetFocus
  loc_F89DA5: Exit Sub
  loc_F89DA6: ' Referenced from: F89CC8
  loc_F89DAE: Set var_88 = Err()
  loc_F89DB4: Call 0.Method_arg_1C (var_CC, var_C8)
  loc_F89DC5: If (var_CC <> 0) Then
  loc_F89DD0:   Set var_88 = Err()
  loc_F89DD6:   Call 0.Method_arg_2C (var_A0)
  loc_F89DF7:   MsgBox(CVar(var_A0), &H40, "Validation", var_FC, var_11C)
  loc_F89E0A: End If
  loc_F89E0A: Exit Sub
End Sub

Private Sub Form_Load() 'FC3198
  'Data Table: 45C438
  Dim var_8C As Label
  Dim var_90 As String
  Dim var_94 As String
  Dim unk_45C452 As Connection15
  Dim var_B4 As Variant
  loc_FC2FF4: On Error Goto loc_FC3154
  loc_FC3006: Me.LblUser.Left = CDbl(13500)
  loc_FC301D: Me.LblUser.Top = CDbl(7800)
  loc_FC3034: Me.LblLDt.Top = CDbl(8160)
  loc_FC3045: Set var_8C = Me.LblLDt
  loc_FC304B: var_8C.Left = CDbl(13500)
  loc_FC305A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_FC305F: Call Proc_313_34_EDBAC8()
  loc_FC3088: unk_45C452.Execute "SELECT Code,Name FROM EmpCategory where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_FC30B7: CVarUnk
  loc_FC30BC: VerifyVarObj
  loc_FC30C8: LateIdStAd
  loc_FC30F1: var_94 = "SELECT D.*,D.Code as SearchCode FROM EmpCategory D where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_FC30FA: unk_45C452.Execute var_94, var_B4, -1
  loc_FC3135: var_90 = "INI"
  loc_FC3143: Call Proc_313_28_E7C4CC(Proc_5_1_100EC1C(var_90, Me, Me.DGHelp, Me), Me)
  loc_FC314E: Call Proc_313_30_11C8A20(Me)
  loc_FC3153: Exit Sub
  loc_FC3154: ' Referenced from: FC2FF4
  loc_FC315C: Set var_8C = Err()
  loc_FC3162: Call 0.Method_arg_2C (var_90)
  loc_FC3183: MsgBox(CVar(var_90), &H40, "Information", var_EC, var_10C)
  loc_FC3196: Exit Sub
  loc_FC3197: Exit Sub
End Sub

Private Sub Form_Resize() 'ED2AD8
  'Data Table: 45C438
  Dim var_8C As Label
  loc_ED2A36: Call 0.Method_arg_50 (var_88)
  loc_ED2A48: Me.LblFormCaption.Caption = var_88
  loc_ED2A61: Me.LblFormCaption.Left = CDbl(0)
  loc_ED2A6D: Set var_A0 = Me.TopCtrl1
  loc_ED2A73: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED2A80: Set var_8C = Me.TopCtrl1
  loc_ED2A86: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED2AA0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED2ABB: Call 0.Method_arg_100 (var_B8)
  loc_ED2ACD: Me.LblFormCaption.Width = var_B8
  loc_ED2AD5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E291CC
  'Data Table: 45C438
  loc_E291AF: Set global_52 = Nothing
  loc_E291C1: Set global_56 = Nothing
  loc_E291C8: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2905C
  'Data Table: 45C438
  loc_E29034: On Error Goto loc_E29053
  loc_E2904B: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E29053: ' Referenced from: E29034
  loc_E29053: Proc_6_60_E63754(Shift)
  loc_E29058: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EFD85C
  'Data Table: 45C438
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EFD790: On Error Goto loc_EFD816
  loc_EFD7A0: Me.LblUser.Caption = vbNullString
  loc_EFD7B5: Me.LblLDt.Caption = vbNullString
  loc_EFD7BD: Call Proc_313_29_E7AED4()
  loc_EFD7D7: var_8C = "ADD"
  loc_EFD7E5: Call Proc_313_28_E7C4CC(Proc_5_1_100EC1C(var_8C, Me))
  loc_EFD7FB: Set var_88 = Me.Txt
  loc_EFD801: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_EFD809: var_94.SetFocus
  loc_EFD815: Exit Sub
  loc_EFD816: ' Referenced from: EFD790
  loc_EFD81E: Set var_88 = Err()
  loc_EFD824: Call 0.Method_arg_2C (var_8C)
  loc_EFD845: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EFD858: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC9900
  'Data Table: 45C438
  loc_EC9864: On Error Goto loc_EC98F9
  loc_EC989E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC98A1:   Call Proc_313_32_EB91FC()
  loc_EC98B2:   Set var_110 = Me
  loc_EC98C9:   Call Proc_313_28_E7C4CC(Proc_5_1_100EC1C("INI", var_110))
  loc_EC98D4:   Call Proc_313_32_EB91FC(global_52)
  loc_EC98D9:   Call Proc_313_30_11C8A20()
  loc_EC98E1: Else
  loc_EC98E7:   Call 0.Method_arg_1E8 (var_110)
  loc_EC98EF:   Call var_110.SetFocus
  loc_EC98F8: End If
  loc_EC98F8: Exit Sub
  loc_EC98F9: ' Referenced from: EC9864
  loc_EC98F9: Proc_6_60_E63754()
  loc_EC98FE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1063728
  'Data Table: 45C438
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim unk_45C452 As Connection15
  Dim var_96 As Integer
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_10634BC: On Error Goto loc_10636CF
  loc_10634CD: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_10634D0:   Exit Sub
  loc_10634D1: End If
  loc_1063503: var_D4 = "Employee Master"
  loc_106354B: If (Proc_6_108_101061C(MemVar_1F95044, "Employee", "Category", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_106354E:   Exit Sub
  loc_106354F: End If
  loc_1063586: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_1063592:   unk_45C452.BeginTrans var_D0
  loc_1063599:   var_96 = &HFF
  loc_10635AD:   var_94 = Me.Bookmark 'Variant
  loc_10635F9:   var_118 = "Delete From EmpCategory Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_10635FD:   var_B4 = CStr(var_118)
  loc_1063607:   unk_45C452.Execute var_B4, var_138, -1
  loc_1063629:   unk_45C452.CommitTrans
  loc_1063630:   var_96 = 0
  loc_106363E:   Me.Requery -1
  loc_106364E:   Me.Requery -1
  loc_106366E:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_106367B:     Me.Bookmark = var_94
  loc_1063683:   Else
  loc_1063697:     If (Me.EOF = 0) Then
  loc_10636A0:       Me.MoveLast
  loc_10636A5:     End If
  loc_10636A5:   End If
  loc_10636A5:   Call Proc_313_30_11C8A20(var_96, var_13C, var_96)
  loc_10636C6:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_10636CE: End If
  loc_10636CE: Exit Sub
  loc_10636CF: ' Referenced from: 10634BC
  loc_10636D5: If (var_96 = &HFF) Then
  loc_10636DE:   unk_45C452.RollbackTrans
  loc_10636E3: End If
  loc_10636EB: Set var_9C = Err()
  loc_10636F1: Call 0.Method_arg_2C (var_B4, 0)
  loc_1063712: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_1063725: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F64B8C
  'Data Table: 45C438
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_F64A68: On Error Goto loc_F64B49
  loc_F64A79: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_F64A7C:   Exit Sub
  loc_F64A7D: End If
  loc_F64A94: If (Me.RecordCount > 0) Then
  loc_F64AAC:   var_8C = "EDIT"
  loc_F64ABA:   Call Proc_313_28_E7C4CC(Proc_5_1_100EC1C(var_8C, Me))
  loc_F64AD0:   Set var_90 = Me.Txt
  loc_F64AD6:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F64ADE:   var_98.SetFocus
  loc_F64AED: Else
  loc_F64B0E:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F64B1E: End If
  loc_F64B2B: Me.LblUser.Caption = vbNullString
  loc_F64B40: Me.LblLDt.Caption = vbNullString
  loc_F64B48: Exit Sub
  loc_F64B49: ' Referenced from: F64A68
  loc_F64B51: Set var_90 = Err()
  loc_F64B57: Call 0.Method_arg_2C (var_8C)
  loc_F64B78: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F64B8B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B9F0
  'Data Table: 45C438
  loc_E1B9E5: Me.Global.Unload Me
  loc_E1B9ED: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F270D0
  'Data Table: 45C438
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F26FD0: On Error Goto loc_F27068
  loc_F26FDC: var_88 = Me.RecordCount
  loc_F26FEA: If (var_88 <= 0) Then
  loc_F26FF3:   var_B8 = "Information"
  loc_F2700E:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F2701E:   Exit Sub
  loc_F2701F: End If
  loc_F2702D: MemVar_1F950E4 = "Select Code As SearchCode,Name,Type FROM EmpCategory where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_F27037: var_10C = "4000,2500,3000"
  loc_F2703D: Proc_6_126_F1C850(var_10C)
  loc_F2704B: MemVar_1F95120 = Me
  loc_F27062: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F27067: Exit Sub
  loc_F27068: ' Referenced from: F26FD0
  loc_F27070: Set var_110 = Err()
  loc_F27076: Call 0.Method_arg_1C (var_88)
  loc_F27087: If (var_88 <> 0) Then
  loc_F27092:   Set var_110 = Err()
  loc_F27098:   Call 0.Method_arg_2C (var_10C)
  loc_F270B9:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F270CC: End If
  loc_F270CC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3ECA8
  'Data Table: 45C438
  loc_E3EC98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3ECA0: Call Proc_313_30_11C8A20(global_52)
  loc_E3ECA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3EC48
  'Data Table: 45C438
  loc_E3EC38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3EC40: Call Proc_313_30_11C8A20(global_52)
  loc_E3EC45: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3E888
  'Data Table: 45C438
  loc_E3E878: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3E880: Call Proc_313_30_11C8A20(global_52)
  loc_E3E885: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3EAC8
  'Data Table: 45C438
  loc_E3EAB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3EAC0: Call Proc_313_30_11C8A20(global_52)
  loc_E3EAC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10AA91C
  'Data Table: 45C438
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_45C452 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_10AA664: On Error Goto loc_10AA8D2
  loc_10AA68B: unk_45C452.Execute "SELECT * from EmpCategory where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_10AA696: Set var_88 = var_C8
  loc_10AA6AC: var_CC = var_88.RecordCount
  loc_10AA6BA: If (var_CC = 0) Then
  loc_10AA6D6:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_10AA6E6:   Exit Sub
  loc_10AA6E7: End If
  loc_10AA6FD: Set var_C8 = var_88 
  loc_10AA709: var_12E = CreateFieldDefFile(var_C8, MemVar_1F950B4 & "\EmpCatMast.ttx")
  loc_10AA713: Set var_88 = var_C8
  loc_10AA719: var_B4 = CVar(var_12E) 'Integer
  loc_10AA71C: var_98 = var_B4 'Variant
  loc_10AA738: var_A0 = MemVar_1F950B4 & "\EmpCatMast.RPT"
  loc_10AA741: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_10AA74C: MemVar_1F951E8 = var_C8
  loc_10AA767: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_10AA76F: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_10AA77B: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_10AA794:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10AA79C:   Call 0.Method_arg_20 (var_138)
  loc_10AA7A4:   Call 0.Method_arg_30 (var_A0)
  loc_10AA7EA:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_10AA7F6:     Call 0.Method_arg_50 (var_A0)
  loc_10AA7FF:     var_A4 = "'" & var_A0
  loc_10AA819:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10AA821:     Call 0.Method_arg_20 (var_138)
  loc_10AA829:     Call 0.Method_arg_38 (var_A4 & "'")
  loc_10AA83E:   End If
  loc_10AA841: Next var_132 'Integer
  loc_10AA85F: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_10AA867: Call 0.Method_arg_2C (var_DC)
  loc_10AA875: Call 0.Method_arg_150 (var_FC)
  loc_10AA880: Call 0.Method_arg_50 (var_A0)
  loc_10AA88A: Set var_138 = Nothing
  loc_10AA8A4: Set var_C8 = MemVar_1F951E8 
  loc_10AA8B0: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_10AA8BB: MemVar_1F951E8 = var_C8
  loc_10AA8CE: Set var_88 = Nothing
  loc_10AA8D1: Exit Sub
  loc_10AA8D2: ' Referenced from: 10AA664
  loc_10AA8DA: Set var_C8 = Err()
  loc_10AA8E0: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_10AA8EB: Call 0.Method_arg_50 (var_A4)
  loc_10AA907: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_10AA91A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A52C
  'Data Table: 45C438
  Dim Me As Recordset15
  loc_E0A523: Me.Requery -1
  loc_E0A528: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '128842C
  'Data Table: 45C438
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_45C452 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_114 As TextBox
  Dim var_B0 As Variant
  Dim var_1A8 As Variant
  loc_1287EA8: On Error Goto loc_12883D9
  loc_1287EAF: var_86 = CByte(0) 'Byte
  loc_1287EBE: Set var_90 = Me.Txt
  loc_1287EC4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1287EED: If (Proc_183_19_E8E68C(var_94, "Name") = 0) Then
  loc_1287EF7:   Call Txt_GotFocus(CInt(0))
  loc_1287EFC:   Exit Sub
  loc_1287EFD: End If
  loc_1287F08: Set var_90 = Me.Txt
  loc_1287F0E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_1287F37: If (Proc_183_19_E8E68C(var_94, "Type") = 0) Then
  loc_1287F41:   Call Txt_GotFocus(CInt(1))
  loc_1287F46:   Exit Sub
  loc_1287F47: End If
  loc_1287F4B: Set var_90 = Me.TopCtrl1
  loc_1287F51: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_94)
  loc_1287F6A: If (CStr() = "Add") Then
  loc_1287F73:   var_D4 = 0
  loc_1287F90:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From EmpCategory where Site_Code='" & MemVar_1F95070
  loc_1287F97:   var_B4 = CStr() & "'"
  loc_1287FA0:   unk_45C452.Execute var_B4, var_B0, -1
  loc_1287FA8:   var_90 = var_90.Fields
  loc_1287FB0:   var_D4 = var_94.Item(var_94)
  loc_1287FB8:   var_98 = var_98.Value
  loc_1287FF1:   var_F8 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_128801F:   var_108 = (1 + Format(CStr(var_E4), "000"))
  loc_128802A:   global_84 = CStr(var_108)
  loc_128803F: Else
  loc_128805C:   var_94 = Me.Fields.Item("Code")
  loc_1288073:   global_84 = CStr(var_94.Value)
  loc_1288084: End If
  loc_128808D: unk_45C452.BeginTrans var_10C
  loc_1288096: var_86 = CByte(1) 'Byte
  loc_128809E: Set var_90 = Me.TopCtrl1
  loc_12880A4: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(1)
  loc_12880BD: If (CStr(var_F8) = "Add") Then
  loc_12880D7:   var_9C = "Insert Into EmpCategory(Code,Name,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_84
  loc_12880EF:   Set var_90 = Me.Txt
  loc_12880F5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, var_9C & "','")
  loc_12880FD:   var_24C = var_94.Text
  loc_1288106:   var_110 = -1 & var_B4
  loc_128810D:   var_F8 = CVar(var_110 & "','") 'String
  loc_128811E:   Set var_98 = Me.Txt
  loc_1288124:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_118)
  loc_128812C:   var_F8 = var_114.Text
  loc_128813A:   var_E4 = Trim(CVar(var_118))
  loc_1288180:   Proc_6_8_EB1974(var_1B8, CVar(Proc_6_14_EF402C(var_250 & var_E4 & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "',")))
  loc_12881B2:   unk_45C452.Execute CStr(var_E4 & var_1B8 & ",'A','" & CVar(MemVar_1F95078) & "')"), , 
  loc_12881F7: Else
  loc_1288215:   Set var_90 = Me.Txt
  loc_128821B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE EmpCategory SET Name='")
  loc_1288223:   var_24C = var_94.Text
  loc_128822C:   var_B4 = -1 & var_9C
  loc_1288233:   var_F8 = CVar(var_B4 & "',Type='") 'String
  loc_1288241:   Set var_98 = Me.Txt
  loc_1288247:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114)
  loc_1288256:   var_E4 = Trim(CVar(var_114))
  loc_128825E:   var_108 = var_F8 & var_E4 
  loc_1288262:   var_C4 = "',SITE_CODE='"
  loc_1288296:   var_1A8 = CVar(Proc_6_14_EF402C(var_108 & var_C4 & CVar(MemVar_1F95070) & "',U_name='" & CVar(MemVar_1F950C8) & "',U_EntDt=")) 'String
  loc_128829C:   Proc_6_8_EB1974(var_1B8, var_1A8)
  loc_12882D1:   unk_45C452.Execute CStr(var_250 & var_1B8 & " ,U_AE='E' WHERE Code='" & CVar(global_84) & "'"), , 
  loc_128830D: End If
  loc_1288313: unk_45C452.CommitTrans
  loc_128831C: var_86 = CByte(0) 'Byte
  loc_128832B: Me.Requery -1
  loc_128833B: Me.Requery -1
  loc_1288368: Me.Find "SearchCode='" & global_84 & "'", 0, 1
  loc_1288378: Set var_90 = Me.TopCtrl1
  loc_128837E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_C4)
  loc_1288397: If (CStr() = "Add") Then
  loc_128839A:   Call TopCtrl1_UnknownEvent_A()
  loc_128839F:   Exit Sub
  loc_12883A0: End If
  loc_12883B5: var_9C = "INI"
  loc_12883C3: Call Proc_313_28_E7C4CC(Proc_5_1_100EC1C(var_9C, Me))
  loc_12883CE: Call Proc_313_32_EB91FC(global_52)
  loc_12883D3: Call Proc_313_30_11C8A20()
  loc_12883D8: Exit Sub
  loc_12883D9: ' Referenced from: 1287EA8
  loc_12883E2: If (CInt(var_86) = 1) Then
  loc_12883EB:   unk_45C452.RollbackTrans
  loc_12883F0: End If
  loc_12883F8: Set var_90 = Err()
  loc_12883FE: Call 0.Method_arg_2C (var_9C)
  loc_1288417: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_128842A: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E3E164
  'Data Table: 45C438
  loc_E3E158: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E3E15B:   Call DGHelp_UnknownEvent_9()
  loc_E3E160: End If
  loc_E3E160: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC4DF4
  'Data Table: 45C438
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC4D6A: On Error Goto loc_EC4DAF
  loc_EC4D73: Me.MoveFirst
  loc_EC4D8D: var_8C = "code='" & MyValue
  loc_EC4D9D: Me.Find var_8C & "'", 0, 1
  loc_EC4DA9: Call Proc_313_30_11C8A20(var_A0)
  loc_EC4DAE: Exit Sub
  loc_EC4DAF: ' Referenced from: EC4D6A
  loc_EC4DB7: Set var_A4 = Err()
  loc_EC4DBD: Call 0.Method_arg_2C (var_8C)
  loc_EC4DDE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC4DF1: Exit Sub
  loc_EC4DF2: Exit Sub
End Sub

Public Sub Proc_313_28_E7C4CC(arg_C) 'E7C4CC
  'Data Table: 45C438
  Dim var_98 As TextBox
  loc_E7C47A: Set var_8C = Me.Txt
  loc_E7C480: Call 0.Method_Proc_313_28_E7C4CCC (var_8E, var_86)
  loc_E7C490: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7C4A6:   Set var_8C = Me.Txt
  loc_E7C4AC:   Call 0.Method_Proc_313_28_E7C4CC0 (CInt(var_86), var_98)
  loc_E7C4B4:   var_98.Enabled = arg_C
  loc_E7C4C3: Next var_92 'Byte
  loc_E7C4C9: Exit Sub
End Sub

Public Sub Proc_313_29_E7AED4
  'Data Table: 45C438
  Dim var_98 As TextBox
  loc_E7AE82: Set var_8C = Me.Txt
  loc_E7AE88: Call 0.Method_Proc_313_29_E7AED4C (var_8E, var_86)
  loc_E7AE98: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7AEAE:   Set var_8C = Me.Txt
  loc_E7AEB4:   Call 0.Method_Proc_313_29_E7AED40 (CInt(var_86), var_98)
  loc_E7AEBC:   var_98.Text = vbNullString
  loc_E7AECB: Next var_92 'Byte
  loc_E7AED1: Exit Sub
End Sub

Public Sub Proc_313_30_11C8A20
  'Data Table: 45C438
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B8 As Fields15
  Dim var_B4 As String
  Dim var_CC As TextBox
  loc_11C85F4: On Error Goto loc_11C89DC
  loc_11C85FD: Proc_183_45_E5CCA8(global_52)
  loc_11C8619: If (Me.RecordCount <= 0) Then
  loc_11C861C:   Call Proc_313_29_E7AED4()
  loc_11C8624: Else
  loc_11C86CD:   var_180 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_11C8715:   Me.LblUser.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_Name")))))
  loc_11C8795:   var_CC = Me.Fields.Item("U_AE")
  loc_11C87AE:   var_130 = "entdt :   "
  loc_11C87B9:   var_110 = "Last Update :   "
  loc_11C87F6:   var_180 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_CC)) = "E"), var_110, var_130))
  loc_11C883E:   Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_EntDt")))))
  loc_11C88AA:   global_84 = CStr(Me.Fields.Item("Name").Value)
  loc_11C88F7:   Set var_B8 = Me.Txt
  loc_11C88FD:   Call 0.Method_Proc_313_30_11C8A200 (CInt(0), var_CC)
  loc_11C8905:   var_CC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11C8957:   Set var_B8 = Me.Txt
  loc_11C895D:   Call 0.Method_Proc_313_30_11C8A200 (CInt(0), var_CC)
  loc_11C8965:   var_CC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_11C89A9:   var_B4 = CStr(Me.Fields.Item("Type").Value)
  loc_11C89B7:   Set var_B8 = Me.Txt
  loc_11C89BD:   Call 0.Method_Proc_313_30_11C8A200 (CInt(1), var_CC)
  loc_11C89C5:   var_CC.Text = var_B4
  loc_11C89DB: End If
  loc_11C89DB: Exit Sub
  loc_11C89DC: ' Referenced from: 11C85F4
  loc_11C89E4: Set var_8C = Err()
  loc_11C89EA: Call 0.Method_arg_2C (var_B4)
  loc_11C8A0B: MsgBox(CVar(var_B4), &H40, "Information", var_110, var_130)
  loc_11C8A1E: Exit Sub
End Sub

Public Sub Proc_313_31_1085AB0
  'Data Table: 45C438
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_45C452 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_1085843: If (Me.RecordCount = 0) Then
  loc_1085846:   Proc_313_31_1085AB0 = 
  loc_108584C: End If
  loc_1085850: Set var_90 = Me.TopCtrl1
  loc_1085856: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_108586F: If (CStr() = "Add") Then
  loc_10858AD:   Set var_90 = Me.Txt
  loc_10858B3:   Call 0.Method_Proc_313_31_1085AB00 (CInt(0), var_A8, var_AC, "Select Count(*) From EmpCategory Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_10858D4:   unk_45C452.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_10858E4:    = var_D0.Item()
  loc_10858EC:    = var_E4.Value
  loc_108591D:   If (var_A8.Text.Fields > 0) Then
  loc_108593B:     var_A0 = "Duplicate Name"
  loc_1085941:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_108595C:     Set var_90 = Me.Txt
  loc_1085962:     Call 0.Method_Proc_313_31_1085AB00 (CInt(0))
  loc_108596A:     var_A8.SetFocus
  loc_108597B:     Proc_313_31_1085AB0 = &HFF
  loc_1085981:   End If
  loc_1085984: Else
  loc_10859BF:   Set var_90 = Me.Txt
  loc_10859C5:   Call 0.Method_Proc_313_31_1085AB00 (CInt(0), var_A8, var_AC, "Select Count(*) From EmpCategory Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_10859F7:   unk_45C452.Execute var_D0 & var_AC & "' And Name<>'" & global_84 & "'", 0, var_E4
  loc_1085A07:    = var_D0.Item(var_A8)
  loc_1085A0F:    = var_E4.Value
  loc_1085A44:   If (var_A8.Text.Fields > 0) Then
  loc_1085A68:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_1085A83:     Set var_90 = Me.Txt
  loc_1085A89:     Call 0.Method_Proc_313_31_1085AB00 (CInt(0))
  loc_1085A91:     var_A8.SetFocus
  loc_1085AA2:     Proc_313_31_1085AB0 = &HFF
  loc_1085AA8:   End If
  loc_1085AA8: End If
  loc_1085AA8: Proc_313_31_1085AB0 = var_A8
End Sub

Public Sub Proc_313_32_EB91FC
  'Data Table: 45C438
  loc_EB9178: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EB918A:   Me.DGHelp.Visible = False
  loc_EB9192: End If
  loc_EB91AE: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB91C0:   Me.FGPoint.Visible = False
  loc_EB91C8: End If
  loc_EB91E3: If (Me.FrmList.Visible = &HFF) Then
  loc_EB91F2:   Me.FrmList.Visible = False
  loc_EB91FA: End If
  loc_EB91FA: Exit Sub
End Sub

Public Sub Proc_313_33_EE2478(arg_C) 'EE2478
  'Data Table: 45C438
  Dim var_8C As TextBox
  loc_EE23CC: Call Proc_313_32_EB91FC()
  loc_EE23DC: Set var_88 = Me.Txt
  loc_EE23E2: Call 0.Method_Proc_313_33_EE24780 (CInt(0))
  loc_EE240B: If (Proc_6_27_EA61EC(var_8C, "Designation Name") = 0) Then
  loc_EE240E:   Exit Sub
  loc_EE240F: End If
  loc_EE2446: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_EE2449:   Call TopCtrl1_UnknownEvent_16()
  loc_EE2451: Else
  loc_EE245B:   Set var_88 = Me.Txt
  loc_EE2461:   Call 0.Method_Proc_313_33_EE24780 (arg_C, var_8C)
  loc_EE2469:   var_8C.SetFocus
  loc_EE2475: End If
  loc_EE2475: Exit Sub
End Sub

Public Sub Proc_313_34_EDBAC8
  'Data Table: 45C438
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_EDBA26: Set var_88 = Me.Txt
  loc_EDBA2C: Call 0.Method_Proc_313_34_EDBAC80 (CInt(0), var_8C)
  loc_EDBA4B: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_EDBA67: Set var_B4 = Me.Txt
  loc_EDBA6D: Call 0.Method_Proc_313_34_EDBAC80 (CInt(0), var_B8)
  loc_EDBA88: Set var_88 = Me.Txt
  loc_EDBA8E: Call 0.Method_Proc_313_34_EDBAC80 (CInt(0), var_8C)
  loc_EDBAA6: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_EDBAB5: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_EDBAC7: Exit Sub
End Sub
