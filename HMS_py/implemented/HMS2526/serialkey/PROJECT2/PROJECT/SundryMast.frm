VERSION 5.00
Begin VB.Form SundryMast
  Caption = "Sundry Master"
  BackColor = &HFFFFC0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 10455
  ClientHeight = 6225
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 10455
    Height = 450
    TabIndex = 13
  End
  Begin DataGrid DGHelp
    Left = 7170
    Top = 4920
    Width = 4410
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 8760
    Top = 2160
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 45
      Top = 60
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 8
    End
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3345
    Top = 2265
    Width = 1320
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 1
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
    ForeColor = &HC00000&
    Left = 3345
    Top = 1950
    Width = 3180
    Height = 285
    TabIndex = 1
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
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3345
    Top = 1635
    Width = 3180
    Height = 285
    TabIndex = 0
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4680
    Top = 4770
    Width = 2790
    Height = 285
    TabIndex = 12
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
    Left = 1305
    Top = 4770
    Width = 2880
    Height = 255
    TabIndex = 11
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 10
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
  Begin Label LblDefine
    ForeColor = &H80&
    Left = 6675
    Top = 1665
    Width = 1365
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
    Caption = "Calc Sign"
    Index = 3
    ForeColor = &HC00000&
    Left = 1635
    Top = 2265
    Width = 915
    Height = 240
    TabIndex = 5
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
    Caption = "Nature of Sundry"
    Index = 2
    ForeColor = &HC00000&
    Left = 1635
    Top = 1950
    Width = 1605
    Height = 240
    TabIndex = 4
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
    Caption = "Sundry Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 1635
    Top = 1635
    Width = 1290
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

Attribute VB_Name = "SundryMast"

Private global_64 As Variant

Private Sub DGHelp_UnknownEvent_9 'EE664C
  'Data Table: 451868
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE65A3: Me.DGHelp.Visible = False
  loc_EE65C2: If (Me.RecordCount > 0) Then
  loc_EE65E2:   var_B0 = Me.Fields.Item("Name")
  loc_EE6601:   Set var_B4 = Me.Txt
  loc_EE6607:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE660F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE6625: End If
  loc_EE6630: Set var_A8 = Me.Txt
  loc_EE6636: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE663E: var_B0.SetFocus
  loc_EE664A: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1096BD8
  'Data Table: 451868
  Dim var_92 As Integer
  Dim var_A8 As String
  Dim var_B8 As String
  Dim var_8C As TextBox
  Dim var_160 As TextBox
  loc_109693A: Set var_88 = Me.Txt
  loc_1096940: Call 0.Method_Txt_GotFocus0 (Index)
  loc_109694E: Proc_6_74_E23240(var_8C)
  loc_109695A: Call Proc_77_29_E82414(var_8C)
  loc_1096962: var_92 = Index
  loc_109696D: If (var_92 = CInt(1)) Then
  loc_109697D:   ReDim var_98(0 To &HA)
  loc_1096994:   var_98(0) = "Addition"
  loc_10969A3:   var_98(1) = "Deduction"
  loc_10969B2:   var_98(2) = "Discount"
  loc_10969C1:   var_98(3) = "Luxury Tax"
  loc_10969D0:   var_98(4) = "Round Off"
  loc_10969DF:   var_98(5) = "Service Charge"
  loc_10969EE:   var_98(6) = "Sale Tax"
  loc_10969FD:   var_98(7) = "Service Tax"
  loc_1096A0C:   var_98(8) = "CGST"
  loc_1096A1B:   var_98(9) = "SGST"
  loc_1096A2A:   var_98(&HA) = "IGST"
  loc_1096A41:   global_64 = Array(var_98)
  loc_1096A4C:   Set var_160 = Me.ListView
  loc_1096A67:   Set var_8C = Me.Txt
  loc_1096A81:   Set global_80 = Proc_6_66_F0048C(var_160, var_8C, Index, global_64)
  loc_1096A9F:   Set var_88 = Me.Txt
  loc_1096AA5:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_168)
  loc_1096AAD:   &HB = var_8C.Text
  loc_1096ABF:   Set var_90 = Me.Txt
  loc_1096AC5:   Call 0.Method_Txt_GotFocus0 (Index, var_160, var_168)
  loc_1096ACD:   var_160.Tag = global_64
  loc_1096AE3: Else
  loc_1096AEB:   If (var_92 = CInt(2)) Then
  loc_1096AFB:     ReDim var_98(0 To 1)
  loc_1096B05:     var_A8 = "+"
  loc_1096B12:     var_98(0) = "Addition"
  loc_1096B14:     var_B8 = "-"
  loc_1096B21:     var_98(1) = "Deduction"
  loc_1096B38:     global_64 = Array(var_98)
  loc_1096B43:     Set var_160 = Me.ListView
  loc_1096B5E:     Set var_8C = Me.Txt
  loc_1096B78:     Set global_80 = Proc_6_66_F0048C(var_160, var_8C, Index, global_64)
  loc_1096B96:     Set var_88 = Me.Txt
  loc_1096B9C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_168)
  loc_1096BA4:     2 = var_8C.Text
  loc_1096BB6:     Set var_90 = Me.Txt
  loc_1096BBC:     Call 0.Method_Txt_GotFocus0 (Index, var_160, var_168)
  loc_1096BC4:     var_160.Tag = global_64
  loc_1096BD7:   End If
  loc_1096BD7: End If
  loc_1096BD7: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11658E0
  'Data Table: 451868
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_A4 As TextBox
  Dim var_B4 As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As ListView
  loc_116555A: If (CLng(Shift) = &H1B) Then
  loc_116555D:   Call Proc_77_29_E82414()
  loc_1165562:   Exit Sub
  loc_1165563: End If
  loc_1165566: var_88 = KeyCode
  loc_1165571: If (var_88 = CInt(0)) Then
  loc_1165578:   Set var_A4 = Me.DGHelp
  loc_116558C:   Set var_9C = Nothing
  loc_11655AF:   Set var_90 = Me.Txt
  loc_11655BE:   Proc_6_79_11AD564(var_A4, var_90, CInt(0), global_56, Shift)
  loc_11655D3: Else
  loc_11655DB:   If (var_88 = CInt(1)) Then
  loc_1165600:     Set var_8C = Me.Txt
  loc_1165606:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 0)
  loc_116560E:     1 = var_90.Left
  loc_1165620:     Set var_9C = Me.Txt
  loc_1165626:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B0)
  loc_116562E:     var_9C = var_A4.Top
  loc_1165640:     Set var_A8 = Me.Txt
  loc_1165646:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4, var_B8)
  loc_116564E:     0 = var_B4.Height
  loc_1165660:     Set var_BC = Me.Txt
  loc_1165666:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_116566E:     var_C4 = var_C0.Width
  loc_11656B6:     Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11656DD:   Else
  loc_11656E5:     If (var_88 = CInt(2)) Then
  loc_116570A:       Set var_8C = Me.Txt
  loc_1165710:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_1165718:       CInt((var_B0 + var_B8)) = var_90.Left
  loc_116572A:       Set var_9C = Me.Txt
  loc_1165730:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B0)
  loc_1165738:       CInt(var_C4) = var_A4.Top
  loc_116574A:       Set var_A8 = Me.Txt
  loc_1165750:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4, var_B8)
  loc_1165758:       2860 = var_B4.Height
  loc_116576A:       Set var_BC = Me.Txt
  loc_1165770:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_1165778:       var_C4 = var_C0.Width
  loc_11657C0:       Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11657E4:     End If
  loc_11657E4:   End If
  loc_11657E4: End If
  loc_116581F: If ((CBool(Me.ListView.Visible) = 0) And (CBool(Me.DGHelp.Visible) = 0)) Then
  loc_1165835:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_116583E:     Proc_6_76_E533C8(Shift, arg_14, CInt(var_AC), CInt((var_B0 + var_B8)))
  loc_1165843:   End If
  loc_1165861:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(2))) Then
  loc_116586A:     Call Txt_Validate(KeyCode)
  loc_1165875:     If (var_86 = 0) Then
  loc_11658AF:       If (MsgBox("Save Record ?", 4, "Save Data", var_13C, var_15C) = 6) Then
  loc_11658B2:         Call TopCtrl1_UnknownEvent_16()
  loc_11658B7:       End If
  loc_11658B7:       Exit Sub
  loc_11658B8:     End If
  loc_11658BB:   Else
  loc_11658D0:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11658D9:       Proc_6_75_E5335C(Shift, arg_14, var_86)
  loc_11658DE:     End If
  loc_11658DE:   End If
  loc_11658DE: End If
  loc_11658DE: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F05B2C
  'Data Table: 451868
  Dim var_86 As Integer
  loc_F05A53: var_86 = KeyCode
  loc_F05A5E: If (var_86 = CInt(0)) Then
  loc_F05A7D:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F05A8A:     var_A4 = "Name"
  loc_F05AA9:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_56)
  loc_F05AB8:   End If
  loc_F05ABB: Else
  loc_F05AC3:   If Not (var_86 = CInt(1)) Then
  loc_F05ACE:     If (var_86 = CInt(2)) Then
  loc_F05AD1:     End If
  loc_F05AEC:     If (Me.FrmList.Visible = &HFF) Then
  loc_F05B1B:       Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F05B2B:     End If
  loc_F05B2B:   End If
  loc_F05B2B: End If
  loc_F05B2B: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4E644
  'Data Table: 451868
  loc_E4E622: Set var_88 = Me.Txt
  loc_E4E628: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4E636: Proc_6_73_E23294(var_8C)
  loc_E4E642: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F763B0
  'Data Table: 451868
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As Variant
  Dim var_8C As ListView
  Dim var_AC As TextBox
  Dim var_A8 As ListItem
  Dim var_D0 As TextBox
  loc_F7627B: var_86 = Cancel
  loc_F76286: If (var_86 = CInt(0)) Then
  loc_F7628C:   Call Proc_77_28_108D9AC(var_88)
  loc_F76297:   If (var_88 = &HFF) Then
  loc_F7629C:     arg_10 = &HFF
  loc_F7629F:     Exit Sub
  loc_F762A0:   End If
  loc_F762A3: Else
  loc_F762AB:   If Not (var_86 = CInt(1)) Then
  loc_F762B6:     If (var_86 = CInt(2)) Then
  loc_F762B9:     End If
  loc_F762C6:     Set var_8C = Me.Txt
  loc_F762CC:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_F762D4:     arg_10 = var_90.Text
  loc_F762EB:     If (var_94 <> vbNullString) Then
  loc_F7631E:       Set var_A8 = Me.Txt
  loc_F76324:       Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_F7632C:       var_AC.Text = Me.ListView.SelectedItem.Text
  loc_F76345:     Else
  loc_F76385:       Set var_AC = Me.Txt
  loc_F7638B:       Call 0.Method_Txt_Validate0 (Cancel, var_D0)
  loc_F76393:       var_D0.Text = Me.ListView.ListItems.Item(1).Text
  loc_F763AF:     End If
  loc_F763AF:   End If
  loc_F763AF: End If
  loc_F763AF: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5D67C
  'Data Table: 451868
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5D59E: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5D5A5:   Set var_A8 = Me.ListView
  loc_F5D5EF:   Set var_C0 = Me.Txt
  loc_F5D5F5:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5D5FD:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5D61D: End If
  loc_F5D629: Me.FrmList.Visible = False
  loc_F5D659: Set var_9C = Me.Txt
  loc_F5D65F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5D667: var_A8.SetFocus
  loc_F5D67B: Exit Sub
End Sub

Private Sub Form_Load() '104D65C
  'Data Table: 451868
  Dim var_8C As Label
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C8 As String
  Dim unk_451877 As Connection15
  Dim var_DC As Variant
  loc_104D40C: On Error Goto loc_104D616
  loc_104D416: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_104D42A: Me.LblUser.Left = CDbl(13500)
  loc_104D441: Me.LblUser.Top = CDbl(7800)
  loc_104D458: Me.LblLDt.Top = CDbl(8160)
  loc_104D46F: Me.LblLDt.Left = CDbl(13500)
  loc_104D485: Set var_8C = Me.Txt
  loc_104D48B: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_104D4AA: Me.DGHelp.Left = CVar(var_90.Left)
  loc_104D4C6: Set var_B8 = Me.Txt
  loc_104D4CC: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_104D4ED: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_104D505: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_104D514: Me.DGHelp.Top = CVar(var_90.Left)
  loc_104D54A: unk_451877.Execute "SELECT Code,Name FROM SundryMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  ORDER BY Name", var_DC, -1
  loc_104D579: CVarUnk
  loc_104D57E: VerifyVarObj
  loc_104D58A: LateIdStAd
  loc_104D5BC: unk_451877.Execute "SELECT * FROM SundryMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1
  loc_104D5F7: var_C8 = "INI"
  loc_104D605: Call Proc_77_25_E78F5C(Proc_5_1_100EC1C(var_C8, Me, Me.DGHelp, Me), Me)
  loc_104D610: Call Proc_77_27_129767C(Me.Txt)
  loc_104D615: Exit Sub
  loc_104D616: ' Referenced from: 104D40C
  loc_104D61E: Set var_8C = Err()
  loc_104D624: Call 0.Method_arg_2C (var_C8)
  loc_104D645: MsgBox(CVar(var_C8), &H40, "Information", var_100, var_120)
  loc_104D658: Exit Sub
  loc_104D659: Exit Sub
End Sub

Private Sub Form_Resize() 'ED7D58
  'Data Table: 451868
  Dim var_8C As Label
  loc_ED7CB6: Call 0.Method_arg_50 (var_88)
  loc_ED7CC8: Me.LblFormCaption.Caption = var_88
  loc_ED7CE1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED7CED: Set var_A0 = Me.TopCtrl1
  loc_ED7CF3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED7D00: Set var_8C = Me.TopCtrl1
  loc_ED7D06: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED7D20: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED7D3B: Call 0.Method_arg_100 (var_B8)
  loc_ED7D4D: Me.LblFormCaption.Width = var_B8
  loc_ED7D55: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E2A814
  'Data Table: 451868
  loc_E2A7F7: Set global_52 = Nothing
  loc_E2A809: Set global_56 = Nothing
  loc_E2A810: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E88F54
  'Data Table: 451868
  loc_E88EF0: On Error Goto loc_E88F10
  loc_E88F07: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E88F0F: Exit Sub
  loc_E88F10: ' Referenced from: E88EF0
  loc_E88F18: Set var_88 = Err()
  loc_E88F1E: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E88F3F: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E88F52: Exit Sub
  loc_E88F53: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'ECBFEC
  'Data Table: 451868
  Dim var_8C As Label
  Dim var_94 As TextBox
  loc_ECBF40: On Error Goto loc_ECBFE5
  loc_ECBF66: Call Proc_77_25_E78F5C(Proc_5_1_100EC1C("ADD", Me))
  loc_ECBF71: Call Proc_77_26_EAD30C(global_52)
  loc_ECBF7C: global_60 = "N"
  loc_ECBF8D: Me.LblDefine.Caption = "User Defined"
  loc_ECBFA0: Set var_8C = Me.Txt
  loc_ECBFA6: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_ECBFAE: var_94.SetFocus
  loc_ECBFC7: Me.LblUser.Caption = vbNullString
  loc_ECBFDC: Me.LblLDt.Caption = vbNullString
  loc_ECBFE4: Exit Sub
  loc_ECBFE5: ' Referenced from: ECBF40
  loc_ECBFE5: Proc_6_60_E63754(var_94)
  loc_ECBFEA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC2E7C
  'Data Table: 451868
  loc_EC2DE4: On Error Goto loc_EC2E74
  loc_EC2E1E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC2E2D:   Set var_110 = Me
  loc_EC2E44:   Call Proc_77_25_E78F5C(Proc_5_1_100EC1C("INI", var_110))
  loc_EC2E4F:   Call Proc_77_27_129767C(global_52)
  loc_EC2E54:   Call Proc_77_29_E82414()
  loc_EC2E5C: Else
  loc_EC2E62:   Call 0.Method_arg_1E8 (var_110)
  loc_EC2E6A:   Call var_110.SetFocus
  loc_EC2E73: End If
  loc_EC2E73: Exit Sub
  loc_EC2E74: ' Referenced from: EC2DE4
  loc_EC2E74: Proc_6_60_E63754()
  loc_EC2E79: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '116C24C
  'Data Table: 451868
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim unk_451877 As Connection15
  Dim var_96 As Integer
  Dim var_F8 As Variant
  Dim var_124 As String
  loc_116BEB0: On Error Goto loc_116C1F2
  loc_116BEC1: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_116BEC4:   Exit Sub
  loc_116BEC5: End If
  loc_116BED0: If (global_60 = "Y") Then
  loc_116BEF4:   MsgBox("System Defined, Can not be Deleted", &H40, "Validation Check", var_F8, var_118)
  loc_116BF04:   Exit Sub
  loc_116BF05: End If
  loc_116BF37: var_134 = "RevMast"
  loc_116BF7F: If (Proc_6_108_101061C(MemVar_1F95044, "RevMast", "Sundry", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_116BF82:   Exit Sub
  loc_116BF83: End If
  loc_116BFBA: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_116BFC6:   unk_451877.BeginTrans var_130
  loc_116BFCD:   var_96 = &HFF
  loc_116BFE1:   var_94 = Me.Bookmark 'Variant
  loc_116C02D:   var_F8 = "Delete From SundryMast Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_116C03B:   unk_451877.Execute CStr(var_F8), var_118, -1
  loc_116C086:   var_168 = 0
  loc_116C099:   var_160 = 0
  loc_116C0A4:   var_15C = 0
  loc_116C0B7:   var_154 = 0
  loc_116C0C2:   var_150 = 0
  loc_116C0D5:   var_148 = 0
  loc_116C115:   var_124 = "SundryMast"
  loc_116C11E:   Proc_154_5_10E3BD4(MemVar_1F95044, var_124, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_116C14C:   unk_451877.CommitTrans
  loc_116C153:   var_96 = 0
  loc_116C161:   Me.Requery -1
  loc_116C171:   Me.Requery -1
  loc_116C191:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_116C19E:     Me.Bookmark = var_94
  loc_116C1A6:   Else
  loc_116C1BA:     If (Me.EOF = 0) Then
  loc_116C1C3:       Me.MoveLast
  loc_116C1C8:     End If
  loc_116C1C8:   End If
  loc_116C1C8:   Call Proc_77_27_129767C(var_96, var_148, 0, var_150, var_154)
  loc_116C1E9:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_116C1F1: End If
  loc_116C1F1: Exit Sub
  loc_116C1F2: ' Referenced from: 116BEB0
  loc_116C1F8: If (var_96 = &HFF) Then
  loc_116C201:   unk_451877.RollbackTrans
  loc_116C206: End If
  loc_116C20E: Set var_11C = Err()
  loc_116C214: Call 0.Method_arg_2C (var_124, 0, var_15C)
  loc_116C235: MsgBox(CVar(var_124), &H30, " Deletion Error ", var_F8, var_118)
  loc_116C248: Exit Sub
  loc_116C249: ThisVCallI2
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F90258
  'Data Table: 451868
  Dim Me As Recordset15
  Dim var_118 As TextBox
  Dim var_110 As Label
  loc_F900FC: On Error Goto loc_F90252
  loc_F9010D: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_F90110:   Exit Sub
  loc_F90111: End If
  loc_F90128: If (Me.RecordCount > 0) Then
  loc_F90136:   If (global_60 = "Y") Then
  loc_F9015A:     MsgBox("System Defined, Can not be Edited", &H40, "Validation Check", var_E8, var_108)
  loc_F9016A:     Exit Sub
  loc_F9016B:   End If
  loc_F9018E:   Call Proc_77_25_E78F5C(Proc_5_1_100EC1C("EDIT", Me))
  loc_F901A7:   Set var_110 = Me.Txt
  loc_F901AD:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_118)
  loc_F901C0:   global_88 = var_118.Text
  loc_F901D9:   Set var_110 = Me.Txt
  loc_F901DF:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_118)
  loc_F901E7:   var_118.SetFocus
  loc_F901F6: Else
  loc_F90217:   MsgBox("There Is No Record To Edit.", &H40, "Information", var_E8, var_108)
  loc_F90227: End If
  loc_F90234: Me.LblUser.Caption = vbNullString
  loc_F90249: Me.LblLDt.Caption = vbNullString
  loc_F90251: Exit Sub
  loc_F90252: ' Referenced from: F900FC
  loc_F90252: Proc_6_60_E63754(global_52)
  loc_F90257: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E15D04
  'Data Table: 451868
  loc_E15CF9: Me.Global.Unload Me
  loc_E15D01: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F28178
  'Data Table: 451868
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F28078: On Error Goto loc_F28110
  loc_F28084: var_88 = Me.RecordCount
  loc_F28092: If (var_88 <= 0) Then
  loc_F2809B:   var_B8 = "Information"
  loc_F280B6:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F280C6:   Exit Sub
  loc_F280C7: End If
  loc_F280CE: var_10C = "Select SundryMast.Code As SearchCode,SundryMast.Name,SundryMast.Nature,SundryMast.CalcSign,SYSYN=CASE SundryMast.SysYN WHEN 'Y' THEN 'System Defined' ELSE 'User Defined' END FROM SundryMast WHERE (LOGSITE_CODE='" & MemVar_1F95078
  loc_F280D5: MemVar_1F950E4 = var_10C & "' or LOGSITE_CODE='HO') Order by Name"
  loc_F280E2: MemVar_1F95120 = Me
  loc_F280E9: var_10C = "4500,1800,2000,2000"
  loc_F280EF: Proc_6_126_F1C850(var_10C)
  loc_F2810A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F2810F: Exit Sub
  loc_F28110: ' Referenced from: F28078
  loc_F28118: Set var_110 = Err()
  loc_F2811E: Call 0.Method_arg_1C (var_88)
  loc_F2812F: If (var_88 <> 0) Then
  loc_F2813A:   Set var_110 = Err()
  loc_F28140:   Call 0.Method_arg_2C (var_10C)
  loc_F28161:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F28174: End If
  loc_F28174: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2E748
  'Data Table: 451868
  loc_E2E738: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2E740: Call Proc_77_27_129767C(global_52)
  loc_E2E745: Exit Sub
  loc_E2E746: CopyBytes -3841
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2F708
  'Data Table: 451868
  loc_E2F6F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2F700: Call Proc_77_27_129767C(global_52)
  loc_E2F705: Exit Sub
  loc_E2F706: CopyBytes -3841
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2F5E8
  'Data Table: 451868
  loc_E2F5D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2F5E0: Call Proc_77_27_129767C(global_52)
  loc_E2F5E5: Exit Sub
  loc_E2F5E6: CopyBytes -3841
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2F6A8
  'Data Table: 451868
  loc_E2F698: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2F6A0: Call Proc_77_27_129767C(global_52)
  loc_E2F6A5: Exit Sub
  loc_E2F6A6: CopyBytes -3841
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '108D6CC
  'Data Table: 451868
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_451877 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_108D434: On Error Goto loc_108D680
  loc_108D45B: unk_451877.Execute "select * FROM SundryMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_108D466: Set var_88 = var_C8
  loc_108D47C: var_CC = var_88.RecordCount
  loc_108D48A: If (var_CC = 0) Then
  loc_108D4A6:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_108D4B6:   Exit Sub
  loc_108D4B7: End If
  loc_108D4C6: var_A4 = MemVar_1F950B4 & "\SundryMast.ttx"
  loc_108D4CD: Set var_C8 = var_88 
  loc_108D4D9: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_108D4E3: Set var_88 = var_C8
  loc_108D4E9: var_B4 = CVar(var_12E) 'Integer
  loc_108D4EC: var_98 = var_B4 'Variant
  loc_108D508: var_A0 = MemVar_1F950B4 & "\SundryMast.RPT"
  loc_108D511: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_108D51C: MemVar_1F951E8 = var_C8
  loc_108D537: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_108D53F: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_108D54B: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_108D564:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108D56C:   Call 0.Method_arg_20 (var_138)
  loc_108D574:   Call 0.Method_arg_30 (var_A0)
  loc_108D5BA:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_108D5D0:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108D5D8:     Call 0.Method_arg_20 (var_138)
  loc_108D5E0:     Call 0.Method_arg_38 ("'Sundry Master'")
  loc_108D5EC:   End If
  loc_108D5EF: Next var_132 'Integer
  loc_108D60D: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_108D615: Call 0.Method_arg_2C (var_DC)
  loc_108D623: Call 0.Method_arg_150 (var_FC)
  loc_108D62E: Call 0.Method_arg_50 (var_A0)
  loc_108D638: Set var_138 = Nothing
  loc_108D652: Set var_C8 = MemVar_1F951E8 
  loc_108D65E: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_108D669: MemVar_1F951E8 = var_C8
  loc_108D67C: Set var_88 = Nothing
  loc_108D67F: Exit Sub
  loc_108D680: ' Referenced from: 108D434
  loc_108D688: Set var_C8 = Err()
  loc_108D68E: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_108D699: Call 0.Method_arg_50 (var_A4)
  loc_108D6B5: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_108D6C8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0C4C8
  'Data Table: 451868
  Dim Me As Recordset15
  loc_E0C4BF: Me.Requery -1
  loc_E0C4C4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1253CCC
  'Data Table: 451868
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_451877 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_114 As TextBox
  Dim var_128 As TextBox
  Dim var_14C As String
  Dim var_B0 As Variant
  Dim var_FB0 As Variant
  loc_12537EC: On Error Goto loc_1253C77
  loc_12537F3: var_86 = CByte(0) 'Byte
  loc_1253802: Set var_90 = Me.Txt
  loc_1253808: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1253831: If (Proc_183_19_E8E68C(var_94, "Name") = 0) Then
  loc_125383B:   Call Txt_GotFocus(CInt(0))
  loc_1253840:   Exit Sub
  loc_1253841: End If
  loc_1253844: Call Proc_77_28_108D9AC(var_9E)
  loc_125384F: If (var_9E = &HFF) Then
  loc_1253852:   Exit Sub
  loc_1253853: End If
  loc_1253857: Set var_90 = Me.TopCtrl1
  loc_125385D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_1253876: If (CStr() = "Add") Then
  loc_125387F:   var_D4 = 0
  loc_125389C:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From SundryMast Where SITE_CODE='" & MemVar_1F95070
  loc_12538AC:   unk_451877.Execute CStr() & "' AND SysYN<>'Y'", var_B0, -1
  loc_12538B4:   var_90 = var_90.Fields
  loc_12538BC:   var_D4 = var_94.Item(var_94)
  loc_12538C4:   var_98 = var_98.Value
  loc_12538FD:   var_F8 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_1253923:   var_E4 = Format(CStr(var_E4), "0000")
  loc_125392B:   var_108 = (1 + var_E4)
  loc_1253936:   global_84 = CStr(var_108)
  loc_125394B: Else
  loc_1253968:   var_94 = Me.Fields.Item("Code")
  loc_1253970:   var_B0 = var_94.Value
  loc_125397F:   global_84 = CStr(var_B0)
  loc_1253990: End If
  loc_1253999: unk_451877.BeginTrans var_10C
  loc_12539A2: var_86 = CByte(1) 'Byte
  loc_12539C4: var_B4 = "Delete From SundryMast Where Code='" & global_84 & "'"
  loc_12539CD: unk_451877.Execute var_B4, var_B0, -1
  loc_12539F3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, Me.Txt)
  loc_12539FB: 1 = var_94.Text
  loc_1253A0E: Set var_98 = Me.Txt
  loc_1253A14: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_118)
  loc_1253A1C: var_F8 = var_114.Text
  loc_1253A2F: Set var_124 = Me.Txt
  loc_1253A35: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_128)
  loc_1253A50: Proc_6_7_F26918(var_E4, Date)
  loc_1253A59: Set var_160 = Me.TopCtrl1
  loc_1253A5F: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_E4)
  loc_1253AAD: var_9C = "Insert Into SundryMast(Code,Name,Nature,CalcSign,SysYN,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values ('" & global_84
  loc_1253B04: var_14C = var_9C & "','" & var_B4 & "','" & var_118 & "','" & var_128.Text & "','" & global_60 & "','" & MemVar_1F95070 & "','" & MemVar_1F950C8
  loc_1253B0B: var_F8 = CVar(var_14C & "',") 'String
  loc_1253B11: var_108 = var_F8 & var_E4 
  loc_1253B15: var_C4 = ",'"
  loc_1253B4B: unk_451877.Execute CStr(var_108 & var_C4 & IIf((CStr(var_170) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "')"), var_258, -1
  loc_1253BB1: unk_451877.CommitTrans
  loc_1253BBA: var_86 = CByte(0) 'Byte
  loc_1253BC9: Me.Requery -1
  loc_1253BD9: Me.Requery -1
  loc_1253C06: Me.Find "Code='" & global_84 & "'", 0, 1
  loc_1253C16: Set var_90 = Me.TopCtrl1
  loc_1253C1C: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_1253C35: If (CStr(var_25C) = "Add") Then
  loc_1253C38:   Call TopCtrl1_UnknownEvent_A()
  loc_1253C3D:   Exit Sub
  loc_1253C3E: End If
  loc_1253C53: var_9C = "INI"
  loc_1253C61: Call Proc_77_25_E78F5C(Proc_5_1_100EC1C(var_9C, Me))
  loc_1253C6C: Call Proc_77_29_E82414(global_52)
  loc_1253C71: Call Proc_77_27_129767C()
  loc_1253C76: Exit Sub
  loc_1253C77: ' Referenced from: 12537EC
  loc_1253C80: If (CInt(var_86) = 1) Then
  loc_1253C89:   unk_451877.RollbackTrans
  loc_1253C8E: End If
  loc_1253C96: Set var_90 = Err()
  loc_1253C9C: Call 0.Method_arg_2C (var_9C)
  loc_1253CB5: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_1253CC8: Exit Sub
  loc_1253CC9: var_FB0 = CVar() 'Address
End Sub

Public Sub SEARCHBACK(MyValue) 'EC3034
  'Data Table: 451868
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC2FAA: On Error Goto loc_EC2FEF
  loc_EC2FB3: Me.MoveFirst
  loc_EC2FCD: var_8C = "code='" & MyValue
  loc_EC2FDD: Me.Find var_8C & "'", 0, 1
  loc_EC2FE9: Call Proc_77_27_129767C(var_A0)
  loc_EC2FEE: Exit Sub
  loc_EC2FEF: ' Referenced from: EC2FAA
  loc_EC2FF7: Set var_A4 = Err()
  loc_EC2FFD: Call 0.Method_arg_2C (var_8C)
  loc_EC301E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC3031: Exit Sub
  loc_EC3032: Exit Sub
End Sub

Public Sub Proc_77_25_E78F5C(arg_C) 'E78F5C
  'Data Table: 451868
  Dim var_98 As TextBox
  loc_E78F0A: Set var_8C = Me.Txt
  loc_E78F10: Call 0.Method_Proc_77_25_E78F5CC (var_8E, var_86)
  loc_E78F20: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E78F36:   Set var_8C = Me.Txt
  loc_E78F3C:   Call 0.Method_Proc_77_25_E78F5C0 (CInt(var_86), var_98)
  loc_E78F44:   var_98.Enabled = arg_C
  loc_E78F53: Next var_92 'Byte
  loc_E78F59: Exit Sub
End Sub

Public Sub Proc_77_26_EAD30C
  'Data Table: 451868
  Dim var_98 As TextBox
  loc_EAD27E: global_88 = vbNullString
  loc_EAD290: Set var_8C = Me.Txt
  loc_EAD296: Call 0.Method_Proc_77_26_EAD30CC (var_8E, var_86)
  loc_EAD2A6: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EAD2BC:   Set var_8C = Me.Txt
  loc_EAD2C2:   Call 0.Method_Proc_77_26_EAD30C0 (CInt(var_86), var_98)
  loc_EAD2CA:   var_98.Text = vbNullString
  loc_EAD2E6:   Set var_8C = Me.Txt
  loc_EAD2EC:   Call 0.Method_Proc_77_26_EAD30C0 (CInt(var_86), var_98)
  loc_EAD2F4:   var_98.Tag = vbNullString
  loc_EAD303: Next var_92 'Byte
  loc_EAD309: Exit Sub
End Sub

Public Sub Proc_77_27_129767C
  'Data Table: 451868
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_451877 As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Variant
  Dim var_11C As TextBox
  loc_12970C4: On Error Goto loc_1297636
  loc_12970CD: Proc_183_45_E5CCA8(global_52)
  loc_1297128: unk_451877.Execute CStr("Select U_Name,U_AE,U_EntDt From Sundrymast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_1297133: Set var_88 = var_118
  loc_1297187: var_118 = var_88.Fields
  loc_12971F0: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1297235: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_12972AF: var_11C = var_88.Fields.Item("U_AE")
  loc_1297310: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_11C)) = "E"), "Last Update : ", "entdt : "))
  loc_1297355: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_12973A4: If (Me.RecordCount <= 0) Then
  loc_12973A7:   Call Proc_77_26_EAD30C()
  loc_12973AF: Else
  loc_12973E3:   global_60 = CStr(Me.Fields.Item("SysYN").Value)
  loc_129742E:   var_114 = "System Defined"
  loc_1297441:   var_F0 = (Me.Fields.Item("SysYN").Value = "Y") 'Variant
  loc_1297461:   Me.LblDefine.Caption = CStr(IIf(var_F0, var_114, "User Defined"))
  loc_12974B3:   global_84 = CStr(Me.Fields.Item("Name").Value)
  loc_1297500:   Set var_118 = Me.Txt
  loc_1297506:   Call 0.Method_Proc_77_27_129767C0 (CInt(0), var_11C)
  loc_129750E:   var_11C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_129755D:   Set var_118 = Me.Txt
  loc_1297563:   Call 0.Method_Proc_77_27_129767C0 (CInt(0), var_11C)
  loc_129756B:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Name")))
  loc_12975B8:   Set var_118 = Me.Txt
  loc_12975BE:   Call 0.Method_Proc_77_27_129767C0 (CInt(1), var_11C)
  loc_12975C6:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Nature")))
  loc_1297605:   var_F4 = Proc_6_38_E69628(CVar(Me.Fields.Item("CalcSign")))
  loc_1297613:   Set var_118 = Me.Txt
  loc_1297619:   Call 0.Method_Proc_77_27_129767C0 (CInt(2), var_11C)
  loc_1297621:   var_11C.Text = var_F4
  loc_1297635: End If
  loc_1297635: Exit Sub
  loc_1297636: ' Referenced from: 12970C4
  loc_129763E: Set var_8C = Err()
  loc_1297644: Call 0.Method_arg_2C (var_F4)
  loc_1297665: MsgBox(CVar(var_F4), &H40, "Information", var_F0, var_114)
  loc_1297678: Exit Sub
  loc_1297679: CExtInstUnk
End Sub

Public Sub Proc_77_28_108D9AC
  'Data Table: 451868
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_451877 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_108D73F: If (Me.RecordCount = 0) Then
  loc_108D742:   Proc_77_28_108D9AC = 
  loc_108D748: End If
  loc_108D74C: Set var_90 = Me.TopCtrl1
  loc_108D752: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_108D76B: If (CStr() = "Add") Then
  loc_108D7A9:   Set var_90 = Me.Txt
  loc_108D7AF:   Call 0.Method_Proc_77_28_108D9AC0 (CInt(0), var_A8, var_AC, "Select Count(*) From SundryMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND Name='", var_A0, -1)
  loc_108D7D0:   unk_451877.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_108D7E0:    = var_D0.Item()
  loc_108D7E8:    = var_E4.Value
  loc_108D819:   If (var_A8.Text.Fields > 0) Then
  loc_108D837:     var_A0 = "Duplicate Name"
  loc_108D83D:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_108D858:     Set var_90 = Me.Txt
  loc_108D85E:     Call 0.Method_Proc_77_28_108D9AC0 (CInt(0))
  loc_108D866:     var_A8.SetFocus
  loc_108D877:     Proc_77_28_108D9AC = &HFF
  loc_108D87D:   End If
  loc_108D880: Else
  loc_108D8BB:   Set var_90 = Me.Txt
  loc_108D8C1:   Call 0.Method_Proc_77_28_108D9AC0 (CInt(0), var_A8, var_AC, "Select Count(*) From SundryMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND Name='", var_A0, -1)
  loc_108D8F3:   unk_451877.Execute var_D0 & var_AC & "' And Name<>'" & global_88 & "'", 0, var_E4
  loc_108D903:    = var_D0.Item(var_A8)
  loc_108D90B:    = var_E4.Value
  loc_108D940:   If (var_A8.Text.Fields > 0) Then
  loc_108D964:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_108D97F:     Set var_90 = Me.Txt
  loc_108D985:     Call 0.Method_Proc_77_28_108D9AC0 (CInt(0))
  loc_108D98D:     var_A8.SetFocus
  loc_108D99E:     Proc_77_28_108D9AC = &HFF
  loc_108D9A4:   End If
  loc_108D9A4: End If
  loc_108D9A4: Proc_77_28_108D9AC = var_A8
End Sub

Public Sub Proc_77_29_E82414
  'Data Table: 451868
  Dim var_A4 As String
  loc_E823C4: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E823D6:   Me.DGHelp.Visible = False
  loc_E823DE: End If
  loc_E823F9: If (Me.FrmList.Visible = &HFF) Then
  loc_E82408:   Me.FrmList.Visible = False
  loc_E82410: End If
  loc_E82410: Exit Sub
  loc_E82411: var_A4 = 
End Sub
