VERSION 5.00
Begin VB.Form FrmTaxStruMast
  Caption = "Tax Structure Master"
  BackColor = &HFFC0C0&
  ForeColor = &HC00000&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HC00000&
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 13365
  ClientHeight = 8910
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 13365
    Height = 450
    TabIndex = 14
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 11190
    Top = 6600
    Width = 645
    Height = 255
    Visible = 0   'False
    Text = "No"
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 25
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
    Left = 8295
    Top = 3360
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 1140
    Top = 3120
    Width = 960
    Height = 240
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 600
    Top = 1980
    Width = 11595
    Height = 4335
    TabIndex = 2
  End
  Begin DataGrid DGTaxMast
    Left = 10155
    Top = 2985
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3375
    Top = 1455
    Width = 4215
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
    Left = 12315
    Top = 780
    Width = 1965
    Height = 1875
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 45
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 7
    End
  End
  Begin MSFlexGrid FGPoint
    Left = 9285
    Top = 1335
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 10
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 690
    Top = 6690
    Width = 2880
    Height = 255
    TabIndex = 13
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
    Left = 4095
    Top = 6675
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 11
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
    Caption = "Tax Before Discount"
    Index = 1
    ForeColor = &H0&
    Left = 9285
    Top = 6615
    Width = 1710
    Height = 240
    Visible = 0   'False
    TabIndex = 9
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
    Caption = "Tax Structure Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 1350
    Top = 1470
    Width = 1905
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

Attribute VB_Name = "FrmTaxStruMast"

Private MasterFormExit As Integer
Private global_64 As Integer
Private global_66 As Integer

Private Sub Form_Load() '10A3D34
  'Data Table: 4B5480
  Dim var_88 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim Me As Recordset15
  loc_10A3A60: On Error Goto loc_10A3D2B
  loc_10A3A72: Me.LblUser.Left = CDbl(13500)
  loc_10A3A89: Me.LblUser.Top = CDbl(7800)
  loc_10A3AA0: Me.LblLDt.Top = CDbl(8160)
  loc_10A3AB7: Me.LblLDt.Left = CDbl(13500)
  loc_10A3AC6: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_10A3ADE: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_10A3AF0: Set var_88 = Me.TopCtrl1
  loc_10A3AF6: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_10A3B04: Call 0.Method_arg_50 (var_AC)
  loc_10A3B14: Set var_88 = Me.TopCtrl1
  loc_10A3B1A: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_AC))
  loc_10A3B41: Me.TopCtrl1.CursorLocation = 3
  loc_10A3B6B: var_BC = CVar("Select distinct Code As Code,Name From TaxStru  WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_10A3B75: Me.Open var_BC, CVar(MemVar_1F95044), 2
  loc_10A3B89: CVarUnk
  loc_10A3B8E: VerifyVarObj
  loc_10A3B94: Set var_88 = Me.DGHelp
  loc_10A3B9A: LateIdStAd
  loc_10A3BC4: Me.DGHelp.CursorLocation = 3
  loc_10A3BEE: var_BC = CVar("Select Code,Name From RevMast WHERE FIELDTYPE='T' AND (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_10A3C0C: CVarUnk
  loc_10A3C11: VerifyVarObj
  loc_10A3C17: Set var_88 = Me.DGTaxMast
  loc_10A3C1D: LateIdStAd
  loc_10A3C47: Me.DGTaxMast.CursorLocation = 3
  loc_10A3C71: var_BC = CVar("Select distinct Code as SearchCode,Name,LOGSITE_CODE,SITE_CODE From TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_10A3C7B: r_BC, CVar(MemVar_1F95044), 2 var_BC, CVar(MemVar_1F95044), 2
  loc_10A3CA9: Call Proc_19_56_E7B724(Proc_5_1_100EC1C("INI", Me, New, 3, -1, Me, New), 3, -1, Me)
  loc_10A3CB4: Call Proc_19_50_11D68F0(New, 3)
  loc_10A3CB9: Call Proc_19_55_137B75C(-1)
  loc_10A3CD1: Me.FGrid.Left = CVar(CDbl(600))
  loc_10A3CEC: Me.FGrid.Width = CVar(CDbl(11250))
  loc_10A3D07: Me.FGrid.Top = CVar(CDbl(1950))
  loc_10A3D22: Me.FGrid.Height = CVar(CDbl(3000))
  loc_10A3D2A: Exit Sub
  loc_10A3D2B: ' Referenced from: 10A3A60
  loc_10A3D2B: Proc_6_60_E63754()
  loc_10A3D30: Exit Sub
End Sub

Private Sub Form_Resize() 'ED3D98
  'Data Table: 4B5480
  Dim var_8C As Label
  loc_ED3CF6: Call 0.Method_arg_50 (var_88)
  loc_ED3D08: Me.LblFormCaption.Caption = var_88
  loc_ED3D21: Me.LblFormCaption.Left = CDbl(0)
  loc_ED3D2D: Set var_A0 = Me.TopCtrl1
  loc_ED3D33: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED3D40: Set var_8C = Me.TopCtrl1
  loc_ED3D46: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED3D60: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED3D7B: Call 0.Method_arg_100 (var_B8)
  loc_ED3D8D: Me.LblFormCaption.Width = var_B8
  loc_ED3D95: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E589B8
  'Data Table: 4B5480
  loc_E58983: Set global_72 = Nothing
  loc_E58995: Set global_68 = Nothing
  loc_E589A7: Set global_76 = Nothing
  loc_E589B3: MasterFormExit = 0
  loc_E589B6: Exit Sub
End Sub

Private Sub Form_Activate() 'E4E238
  'Data Table: 4B5480
  loc_E4E208: On Error Goto loc_E4E232
  loc_E4E20F: Set var_88 = Me.TopCtrl1
  loc_E4E215: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4E22A: If (CLng(CInt()) = &H2D) Then
  loc_E4E22D:   Call TopCtrl1_UnknownEvent_15()
  loc_E4E232:   ' Referenced from: E4E208
  loc_E4E232: End If
  loc_E4E232: Proc_6_60_E63754()
  loc_E4E237: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25734
  'Data Table: 4B5480
  loc_E25719: If (MasterFormExit = &HFF) Then
  loc_E25729:   Me.Global.Unload Me
  loc_E25731: End If
  loc_E25731: Exit Sub
  loc_E25732: ThisVCallAd
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2B280
  'Data Table: 4B5480
  loc_E2B258: On Error Goto loc_E2B278
  loc_E2B26F: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2B277: Exit Sub
  loc_E2B278: ' Referenced from: E2B258
  loc_E2B278: Proc_6_60_E63754(Shift)
  loc_E2B27D: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E64F10
  'Data Table: 4B5480
  loc_E64EE0: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E64EE3:   Call DGHelp_UnknownEvent_9()
  loc_E64EE8: End If
  loc_E64F04: If (CBool(Me.DGTaxMast.Visible) = &HFF) Then
  loc_E64F07:   Call DGTaxMast_UnknownEvent_9()
  loc_E64F0C: End If
  loc_E64F0C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E611C4
  'Data Table: 4B5480
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6118F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E611A2: Set var_A8 = Me.TxtGrid
  loc_E611A8: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E611B0: var_AC.Visible = False
  loc_E611BC: Call Proc_19_57_EF2F48()
  loc_E611C1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E6AFB0
  'Data Table: 4B5480
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6AF6C: Set var_88 = Me.TxtGrid
  loc_E6AF72: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6AF8C: If (var_8C.Visible = 0) Then
  loc_E6AFA5:   Me.FGrid.BackColorSel = CVar(CLng(global_56))
  loc_E6AFAD: End If
  loc_E6AFAD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1EDC0
  'Data Table: 4B5480
  loc_E1EDB7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1EDBF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFEC64
  'Data Table: 4B5480
  loc_DFEC5C: Call Proc_19_52_E41148()
  loc_DFEC61: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1067790
  'Data Table: 4B5480
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_1067514: Set var_88 = Me.TopCtrl1
  loc_106751A: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1067533: If (CStr() = "Browse") Then
  loc_1067536:   Exit Sub
  loc_1067537: End If
  loc_10675AB: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_10675C1:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10675D1:   var_9C = "+{Tab}"
  loc_10675D7:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_10675E1:   KeyCode = 0
  loc_10675E7: Else
  loc_10675F1:   var_B0 = Me.FGrid.Rows
  loc_106763E:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1067654:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1067661:     Call Proc_19_58_EE276C(0, var_B0, KeyCode)
  loc_1067668:     KeyCode = 0
  loc_106766B:   End If
  loc_106766B: End If
  loc_1067671: global_64 = KeyCode
  loc_1067697: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10676BB: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_10676D1:   var_EC = CLng(Me.FGrid.Col)
  loc_10676E1:   If Not (var_EC = CLng(2)) Then
  loc_10676EB:     If Not (var_EC = CLng(3)) Then
  loc_10676F5:       If Not (var_EC = CLng(5)) Then
  loc_10676FF:         If Not (var_EC = CLng(7)) Then
  loc_1067709:           If Not (var_EC = CLng(4)) Then
  loc_1067713:             If Not (var_EC = CLng(8)) Then
  loc_106771D:               If (var_EC = CLng(6)) Then
  loc_1067720:               End If
  loc_1067720:             End If
  loc_1067720:           End If
  loc_1067720:         End If
  loc_1067720:       End If
  loc_1067720:     End If
  loc_1067733:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_106774B:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1067750:     var_11C = vbNullString
  loc_106775A:     Set var_B4 = Me.FGrid
  loc_1067760:     LateIdCallSt
  loc_1067778:   End If
  loc_1067778: End If
  loc_106777E: If (KeyCode = &HD) Then
  loc_1067786:   global_66 = 0
  loc_1067789: End If
  loc_106778B: KeyCode = 0
  loc_106778E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0C8B0
  'Data Table: 4B5480
  loc_E0C8A1: Call FGrid_UnknownEvent_C()
  loc_E0C8AB: global_66 = 0
  loc_E0C8AE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1111454
  'Data Table: 4B5480
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1111110: Set var_88 = Me.TopCtrl1
  loc_1111116: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_111112F: If (CStr() = "Browse") Then
  loc_1111132:   Exit Sub
  loc_1111133: End If
  loc_1111146: var_A0 = CLng(Me.FGrid.Col)
  loc_1111156: If Not (var_A0 = CLng(2)) Then
  loc_1111160:   If Not (var_A0 = CLng(4)) Then
  loc_111116A:     If Not (var_A0 = CLng(8)) Then
  loc_1111174:       If (var_A0 = CLng(6)) Then
  loc_1111177:       End If
  loc_1111177:     End If
  loc_1111177:   End If
  loc_111117B:   Set var_C4 = Me.FGrid
  loc_111119F:   var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_11111CC:   Set var_B4 = var_C4
  loc_11111DE:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1111206:   Set var_88 = Me.TxtGrid
  loc_111120C:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1111214:   0 = var_B4.Text
  loc_111122D:   If (Len(var_9C) <= 1) Then
  loc_111123C:     Set var_88 = Me.TxtGrid
  loc_1111242:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_111124A:     var_CA = var_B4.Text
  loc_111125B:     Set var_B8 = Me.TxtGrid
  loc_1111261:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1111269:     var_C4.Text = var_9C
  loc_111127C:   End If
  loc_1111288:   Set var_88 = Me.TxtGrid
  loc_111128E:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_11112A8:   Set var_B8 = Me.TxtGrid
  loc_11112AE:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_11112B6:   var_C4.SelStart = Len(var_B4.Text)
  loc_11112CC: Else
  loc_11112D3:   If Not (var_A0 = CLng(3)) Then
  loc_11112DD:     If Not (var_A0 = CLng(5)) Then
  loc_11112E7:       If (var_A0 = CLng(7)) Then
  loc_11112EA:       End If
  loc_11112EA:     End If
  loc_11112EE:     Set var_C4 = Me.FGrid
  loc_1111312:     var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_111133F:     Set var_B4 = var_C4
  loc_1111351:     Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_1111379:     Set var_88 = Me.TxtGrid
  loc_111137F:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1111387:     0 = var_B4.Text
  loc_11113A0:     If (Len(var_9C) <= 1) Then
  loc_11113AF:       Set var_88 = Me.TxtGrid
  loc_11113B5:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_11113BD:       var_CA = var_B4.Text
  loc_11113CE:       Set var_B8 = Me.TxtGrid
  loc_11113D4:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_11113DC:       var_C4.Text = var_9C
  loc_11113EF:     End If
  loc_11113FB:     Set var_88 = Me.TxtGrid
  loc_1111401:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_111141B:     Set var_B8 = Me.TxtGrid
  loc_1111421:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1111429:     var_C4.SelStart = Len(var_B4.Text)
  loc_111143C:   End If
  loc_111143C: End If
  loc_1111446: If (CLng(KeyCode) <> &HD) Then
  loc_111144E:   global_66 = &HFF
  loc_1111451: End If
  loc_1111451: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '1031A2C
  'Data Table: 4B5480
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  loc_10317F8: Set var_90 = Me.TopCtrl1
  loc_10317FE: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1031817: If (CStr() = "Browse") Then
  loc_103181A:   Exit Sub
  loc_103181B: End If
  loc_1031838: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_103183B:   Exit Sub
  loc_103183C: End If
  loc_103184D: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_103186F:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_10318A9:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_10318CB:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_10318E1:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10318EA:         Set var_118 = Me.FGrid
  loc_1031905:       Else
  loc_1031918:         Me.FGrid.Rows = 1
  loc_1031935:         var_D4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_103193D:         Set var_118 = Me.FGrid
  loc_103196C:         Me.FGrid.FixedRows = 1
  loc_1031974:       End If
  loc_1031999:       For var_11C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_11C 'Integer
  loc_10319A3:         var_B4 = CVar(CLng(var_86)) 'Long
  loc_10319AB:         var_E4 = CVar(CLng(0)) 'Long
  loc_10319B5:         var_A0 = CVar(CStr(var_86)) 'String
  loc_10319BD:         Set var_90 = Me.FGrid
  loc_10319C3:         LateIdCallSt
  loc_10319D4:       Next var_11C 'Integer
  loc_10319D9:     End If
  loc_10319DC:   Else
  loc_10319FD:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_1031A0D:   End If
  loc_1031A11:   Set var_90 = Me.FGrid
  loc_1031A22: End If
  loc_1031A27: Set var_8C = Nothing
  loc_1031A2A: Exit Sub
  loc_1031A2B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1D8D0
  'Data Table: 4B5480
  loc_E1D8C7: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1D8CF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1D920
  'Data Table: 4B5480
  loc_E1D917: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1D91F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3F400
  'Data Table: 4B5480
  Dim var_8C As TextBox
  loc_E3F3D4: Call Proc_19_57_EF2F48()
  loc_E3F3E4: Set var_88 = Me.TxtGrid
  loc_E3F3EA: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3F3F2: var_8C.Visible = False
  loc_E3F3FE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EAC42C
  'Data Table: 4B5480
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EAC3A0: On Error Goto loc_EAC426
  loc_EAC3B0: Me.LblUser.Caption = vbNullString
  loc_EAC3C5: Me.LblLDt.Caption = vbNullString
  loc_EAC3F0: Call Proc_19_56_E7B724(Proc_5_1_100EC1C("ADD", Me))
  loc_EAC3FB: Call Proc_19_54_F20C20(global_68)
  loc_EAC40B: Set var_88 = Me.Txt
  loc_EAC411: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EAC419: var_94.SetFocus
  loc_EAC425: Exit Sub
  loc_EAC426: ' Referenced from: EAC3A0
  loc_EAC426: Proc_6_60_E63754(var_94)
  loc_EAC42B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA0298
  'Data Table: 4B5480
  loc_EA0220: On Error Goto loc_EA0291
  loc_EA025A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA0280:   Call Proc_19_56_E7B724(Proc_5_1_100EC1C("INI", Me))
  loc_EA028B:   Call Proc_19_55_137B75C(global_68)
  loc_EA0290: End If
  loc_EA0290: Exit Sub
  loc_EA0291: ' Referenced from: EA0220
  loc_EA0291: Proc_6_60_E63754()
  loc_EA0296: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11E8460
  'Data Table: 4B5480
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_4B549F As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_11E8004: On Error Goto loc_11E8407
  loc_11E8015: If (Proc_183_56_FE8B08(global_68) = &HFF) Then
  loc_11E8018:   Exit Sub
  loc_11E8019: End If
  loc_11E804B: var_D4 = "Tax Structure"
  loc_11E8093: If (Proc_6_108_101061C(MemVar_1F95044, "RevMast", "TaxStru", CStr(Me.Fields.Item("SearchCode").Value)) = 0) Then
  loc_11E8096:   Exit Sub
  loc_11E8097: End If
  loc_11E80C9: var_D4 = "Tax Structure"
  loc_11E8111: If (Proc_6_108_101061C(MemVar_1F95044, "ItemCatMast", "TaxStru", CStr(Me.Fields.Item("SearchCode").Value), 0) = 0) Then
  loc_11E8114:   Exit Sub
  loc_11E8115: End If
  loc_11E818F: If (Proc_6_108_101061C(MemVar_1F95044, "TelCallType", "TaxStru", CStr(Me.Fields.Item("SearchCode").Value), 0, "Tax Structure") = 0) Then
  loc_11E8192:   Exit Sub
  loc_11E8193: End If
  loc_11E81CA: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_11E81CF:   var_96 = 0
  loc_11E81DB:   unk_4B549F.BeginTrans var_D0
  loc_11E81E2:   var_96 = &HFF
  loc_11E81F6:   var_94 = Me.Bookmark 'Variant
  loc_11E8242:   var_118 = "Delete From TaxStru Where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_11E8250:   unk_4B549F.Execute CStr(var_118), var_138, -1
  loc_11E829B:   var_168 = 0
  loc_11E82AE:   var_160 = 0
  loc_11E82B9:   var_15C = 0
  loc_11E82CC:   var_154 = 0
  loc_11E82D7:   var_150 = 0
  loc_11E82EA:   var_148 = 0
  loc_11E832A:   var_B4 = "TaxStru"
  loc_11E8333:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B4, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_11E8361:   unk_4B549F.CommitTrans
  loc_11E8368:   var_96 = 0
  loc_11E8376:   Me.Requery -1
  loc_11E8386:   Me.Requery -1
  loc_11E83A6:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11E83B3:     Me.Bookmark = var_94
  loc_11E83BB:   Else
  loc_11E83CF:     If (Me.EOF = 0) Then
  loc_11E83D8:       Me.MoveLast
  loc_11E83DD:     End If
  loc_11E83DD:   End If
  loc_11E83DD:   Call Proc_19_55_137B75C(var_96, var_148, 0, var_150, var_154)
  loc_11E83FE:   Proc_5_0_1107AD0(&HFF, Me, global_68, 0)
  loc_11E8406: End If
  loc_11E8406: Exit Sub
  loc_11E8407: ' Referenced from: 11E8004
  loc_11E840D: If (var_96 = &HFF) Then
  loc_11E8416:   unk_4B549F.RollbackTrans
  loc_11E841B: End If
  loc_11E8423: Set var_9C = Err()
  loc_11E8429: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_11E844A: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_11E845D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F905A8
  'Data Table: 4B5480
  Dim var_88 As Label
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F9044C: On Error Goto loc_F90562
  loc_F9045C: Me.LblUser.Caption = vbNullString
  loc_F90471: Me.LblLDt.Caption = vbNullString
  loc_F90487: If (Proc_183_55_FE8490(global_68) = &HFF) Then
  loc_F9048A:   Exit Sub
  loc_F9048B: End If
  loc_F904A2: If (Me.RecordCount > 0) Then
  loc_F904C8:   Call Proc_19_56_E7B724(Proc_5_1_100EC1C("EDIT", Me))
  loc_F904E1:   Set var_88 = Me.Txt
  loc_F904E7:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F904EF:   var_90 = var_98.Text
  loc_F904FA:   global_80 = var_90
  loc_F90513:   Set var_88 = Me.Txt
  loc_F90519:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F90521:   var_98.SetFocus
  loc_F90530: Else
  loc_F90551:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F90561: End If
  loc_F90561: Exit Sub
  loc_F90562: ' Referenced from: F9044C
  loc_F9056A: Set var_88 = Err()
  loc_F90570: Call 0.Method_arg_2C (var_90)
  loc_F90591: MsgBox(CVar(var_90), &H30, " Editing Error ", var_F8, var_118)
  loc_F905A4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E180A4
  'Data Table: 4B5480
  loc_E18099: Me.Global.Unload Me
  loc_E180A1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC91E4
  'Data Table: 4B5480
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim MemVar_1F950E4 As String
  loc_EC9144: On Error Goto loc_EC91DC
  loc_EC915E: If (Me.RecordCount <= 0) Then
  loc_EC9167:   var_B8 = "Information"
  loc_EC9182:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC9192:   Exit Sub
  loc_EC9193: End If
  loc_EC91A1: MemVar_1F950E4 = "Select distinct Code As SearchCode,Name FROM TaxStru where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_EC91AE: MemVar_1F95120 = Me
  loc_EC91BB: Proc_6_126_F1C850("3500")
  loc_EC91D6: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC91DB: Exit Sub
  loc_EC91DC: ' Referenced from: EC9144
  loc_EC91DC: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EC91E1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E33D28
  'Data Table: 4B5480
  Dim MeFF As Double
  loc_E33D18: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33D20: Call Proc_19_55_137B75C(global_68)
  loc_E33D25: Exit Sub
  loc_E33D26: MeFF = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E33CC8
  'Data Table: 4B5480
  Dim MeFF As Double
  loc_E33CB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33CC0: Call Proc_19_55_137B75C(global_68)
  loc_E33CC5: Exit Sub
  loc_E33CC6: MeFF = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E33C68
  'Data Table: 4B5480
  Dim MeFF As Double
  loc_E33C58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33C60: Call Proc_19_55_137B75C(global_68)
  loc_E33C65: Exit Sub
  loc_E33C66: MeFF = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E33C08
  'Data Table: 4B5480
  Dim MeFF As Double
  loc_E33BF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33C00: Call Proc_19_55_137B75C(global_68)
  loc_E33C05: Exit Sub
  loc_E33C06: MeFF = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10851E8
  'Data Table: 4B5480
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4B549F As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1084F50: On Error Goto loc_108519C
  loc_1084F67: var_A0 = "Select TaxStru.*,RevMast.Code as TaxCode, RevMast.Name as TaxName From TaxStru Left Join RevMast on RevMast.Code=TaxStru.TaxCode  where (RevMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_1084F77: unk_4B549F.Execute var_A0 & "' or RevMast.LOGSITE_CODE='HO') and RevMast.FieldType='T' Order by Sno", var_C4, -1
  loc_1084F82: Set var_88 = var_C8
  loc_1084F98: var_CC = var_88.RecordCount
  loc_1084FA6: If (var_CC = 0) Then
  loc_1084FC2:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_1084FD2:   Exit Sub
  loc_1084FD3: End If
  loc_1084FE2: var_A4 = MemVar_1F950B4 & "\TaxStructureMast.ttx"
  loc_1084FE9: Set var_C8 = var_88 
  loc_1084FF5: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_1084FFF: Set var_88 = var_C8
  loc_1085005: var_B4 = CVar(var_12E) 'Integer
  loc_1085008: var_98 = var_B4 'Variant
  loc_1085024: var_A0 = MemVar_1F950B4 & "\TaxStructureMast.RPT"
  loc_108502D: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_1085038: MemVar_1F951E8 = var_C8
  loc_1085053: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_108505B: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1085067: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1085080:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1085088:   Call 0.Method_arg_20 (var_138)
  loc_1085090:   Call 0.Method_arg_30 (var_A0)
  loc_10850D6:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_10850EC:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10850F4:     Call 0.Method_arg_20 (var_138)
  loc_10850FC:     Call 0.Method_arg_38 ("'Tax Structure Master'")
  loc_1085108:   End If
  loc_108510B: Next var_132 'Integer
  loc_1085129: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1085131: Call 0.Method_arg_2C (var_DC)
  loc_108513F: Call 0.Method_arg_150 (var_FC)
  loc_108514A: Call 0.Method_arg_50 (var_A0)
  loc_1085154: Set var_138 = Nothing
  loc_108516E: Set var_C8 = MemVar_1F951E8 
  loc_108517A: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_1085185: MemVar_1F951E8 = var_C8
  loc_1085198: Set var_88 = Nothing
  loc_108519B: Exit Sub
  loc_108519C: ' Referenced from: 1084F50
  loc_10851A4: Set var_C8 = Err()
  loc_10851AA: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_10851B5: Call 0.Method_arg_50 (var_A4)
  loc_10851D1: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_10851E4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E22C04
  'Data Table: 4B5480
  Dim Me As Recordset15
  loc_E22BEB: Me.Requery -1
  loc_E22BFB: Me.Requery -1
  loc_E22C00: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '145CC38
  'Data Table: 4B5480
  Dim var_F4 As Variant
  Dim var_A4 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_D4 As Variant
  Dim var_138 As Variant
  Dim var_158 As Variant
  Dim var_178 As Variant
  Dim var_A8 As Variant
  Dim var_9E As Integer
  Dim var_B0 As String
  Dim var_20C As String
  Dim unk_4B549F As Connection15
  Dim var_AC As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_188 As Variant
  Dim var_848 As Double
  Dim var_850 As Double
  Dim var_1D8 As Variant
  Dim var_44C As Variant
  Dim var_5F8 As Variant
  Dim var_628 As Variant
  Dim var_6AC As Variant
  Dim var_790 As Variant
  Dim Me As Recordset15
  loc_145C1D4: On Error Goto loc_145CBE4
  loc_145C1DB: var_86 = CByte(0) 'Byte
  loc_145C1EA: Set var_A4 = Me.Txt
  loc_145C1F0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_145C219: If (Proc_183_19_E8E68C(var_A8, "Name") = 0) Then
  loc_145C223:   Call Txt_GotFocus()
  loc_145C228:   Exit Sub
  loc_145C229: End If
  loc_145C22C: Call Proc_19_51_10983B8(var_B2, CInt(0))
  loc_145C237: If (var_B2 = &HFF) Then
  loc_145C23A:   Exit Sub
  loc_145C23B: End If
  loc_145C25C: var_E4 = CVar((CLng(Me.FGrid.Rows) - 2)) 'Long
  loc_145C266: For var_114 = 1 To var_E4: var_9C = var_114 'Variant
  loc_145C291:   For var_118 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_9E = var_118 'Integer
  loc_145C29C:     var_D4 = CVar(CLng(var_9C)) 'Long
  loc_145C2A5:     var_F4 = CVar(CLng(var_9E)) 'Long
  loc_145C2BF:     var_138 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_145C2C5:     var_148 = Trim(var_138)
  loc_145C2CD:     var_158 = vbNullString
  loc_145C2DC:     var_178 = CVar(CLng(var_9C)) 'Long
  loc_145C2EE:     Set var_A8 = Me.FGrid
  loc_145C333:     If CBool(CVar(CLng(var_9E)) Or (Trim(CVar(CStr(var_A8.TextMatrix)))) = "0.00")) Then
  loc_145C33D:       If (var_9E = var_9E) Then
  loc_145C340:         GoTo loc_145C42B
  loc_145C343:       End If
  loc_145C354:       If ((var_9E = CInt(1)) Or (var_9E = CInt(2))) Then
  loc_145C370:         MsgBox("Tax Name is required", 0, var_138, var_148, var_168)
  loc_145C384:         var_9E = CInt(2)
  loc_145C387:       End If
  loc_145C38F:       If (var_9E = CInt(3)) Then
  loc_145C3A5:         var_C4 = "Rate is required"
  loc_145C3AB:         MsgBox(var_C4, 0, var_138, var_148, var_168)
  loc_145C3BB:       End If
  loc_145C3CF:       Me.FGrid.Row = CVar(CLng(var_9C))
  loc_145C3EA:       Me.FGrid.Col = CVar(CLng(var_9E))
  loc_145C3F6:       Set var_A4 = Me.FGrid
  loc_145C41A:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_145C422:       Exit Sub
  loc_145C423:     End If
  loc_145C426:   Next var_118 'Integer
  loc_145C42B:   ' Referenced from: 145C340
  loc_145C42E: Next var_114 'Variant
  loc_145C438: Set var_A4 = Me.TopCtrl1
  loc_145C43E: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_145C457: If (CStr() = "Add") Then
  loc_145C460:   var_E4 = 0
  loc_145C47D:   var_B0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS NUMERIC)),1)+1 AS MyCode From TaxStru WHERE ISNumeric(substring(Code,3,4))=1 AND SITE_CODE='" & MemVar_1F95070
  loc_145C48D:   unk_4B549F.Execute CStr() & "'", var_C4, -1
  loc_145C495:   var_A4 = var_A4.Fields
  loc_145C49D:   var_E4 = var_A8.Item(var_A8)
  loc_145C4A5:   var_AC = var_AC.Value
  loc_145C4DE:   var_148 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_145C4F0:   var_C4 = "0000"
  loc_145C50C:   var_168 = (1 + Format(CStr(var_138), var_C4))
  loc_145C511:   var_B0 = CStr(var_168)
  loc_145C517:   global_60 = var_B0
  loc_145C52C: Else
  loc_145C53A:   Set var_A4 = Me.Txt
  loc_145C540:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0)
  loc_145C548:   1 = var_A8.Tag
  loc_145C553:   global_60 = var_B0
  loc_145C561: End If
  loc_145C56A: unk_4B549F.BeginTrans var_214
  loc_145C573: var_86 = CByte(1) 'Byte
  loc_145C59E: unk_4B549F.Execute "Delete From TaxStru Where Code='" & global_60 & "'", var_C4, -1
  loc_145C5D1: var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_145C5DB: For var_234 = 1 To "0000": var_9C = var_234 'Variant
  loc_145C5E6:   var_D4 = CVar(CLng(var_9C)) 'Long
  loc_145C5EE:   var_F4 = CVar(CLng(2)) 'Long
  loc_145C626:   Set var_A8 = Me.FGrid
  loc_145C637:   var_20C = CStr(var_A8.TextMatrix))
  loc_145C68B:   If (CVar(CLng(4)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_145C69C:     Set var_A4 = Me.Txt
  loc_145C6A2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_20C, CVar(CLng(var_9C)), (CVar(CLng(3)) And (var_20C <> vbNullString)), CVar(CLng(var_9C)), (CStr(Me.FGrid.TextMatrix)) <> vbNullString))
  loc_145C6AA:     var_F4 = var_A8.Text
  loc_145C6C3:     var_D4 = CVar(CLng(var_9C)) 'Long
  loc_145C6CB:     var_F4 = CVar(CLng(1)) 'Long
  loc_145C6EB:     var_158 = CVar(CLng(var_9C)) 'Long
  loc_145C6F3:     var_188 = CVar(CLng(3)) 'Long
  loc_145C702:     var_138 = Me.FGrid.TextMatrix)
  loc_145C727:     var_168 = "0.0000"
  loc_145C730:     var_148 = CVar(Val(CStr(var_138))) 'Double
  loc_145C76B:     var_848 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_145C7C1:     var_850 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_145C7F6:     Proc_183_7_EB17D4(var_4AC, Date, 1, 1, var_850, CVar(CLng(7)), CVar(CLng(var_9C)), 1)
  loc_145C7FF:     Set var_4E0 = Me.TopCtrl1
  loc_145C805:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_145C8DD:     Set var_7B4 = Me.Txt
  loc_145C8E3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_7B8, 1)
  loc_145C90E:     var_B0 = "Insert Into TaxStru(Code,Name,Sno,TaxCode,Rate,Limit,Limit1,Site_Code,U_Name,U_EntDt,U_AE,Nature,CondApp,LogSite_Code,CompOperator,TaxBeforeDisc) Values ('" & global_60
  loc_145C94E:     var_1D8 = CVar(var_B0 & "','" & var_20C & "'," & CStr(Val(CStr(var_9C))) & ",'" & CStr(Me.FGrid.TextMatrix)) & "',") & Format(var_148, var_168) 
  loc_145C98A:     var_44C = var_1D8 & "," & Format(CVar(var_848), "0.00") & "," & Format(CVar(var_850), "0.00") & ",'" & CVar(MemVar_1F95078) & "','" 
  loc_145C9C4:     var_5F8 = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(4)), CVar(CLng(var_9C)), var_848, CVar(CLng(5)))) 'String
  loc_145C9D0:     var_628 = var_44C & CVar(MemVar_1F950C8) & "'," & var_4AC & ",'" & IIf((CStr(var_4F0) = "Add"), "A", "E") & "','" & var_5F8 & "','" 
  loc_145C9DA:     var_6AC = var_628 & CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(8)), CVar(CLng(var_9C)), CVar(CLng(var_9C)))) 
  loc_145CA00:     var_790 = var_6AC & "','" & CVar(MemVar_1F95078) & "','" & CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(var_9C)))) 
  loc_145CA2A:     unk_4B549F.Execute CStr(var_790 & "','" & CVar(Proc_6_38_E69628(CVar(var_7B8), 1)) & "')"), var_82C, -1
  loc_145CAEA:   End If
  loc_145CAED: Next var_234 'Variant
  loc_145CAF9: unk_4B549F.CommitTrans
  loc_145CB02: var_86 = CByte(0) 'Byte
  loc_145CB11: Me.Requery -1
  loc_145CB21: Me.Requery -1
  loc_145CB2A: Set var_A4 = Me.DGHelp
  loc_145CB3F: Set var_A4 = Me.DGTaxMast
  loc_145CB78: Me.Find "SearchCode='" & global_60 & "'", 0, 1
  loc_145CB88: Set var_A4 = Me.TopCtrl1
  loc_145CB8E: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_D4)
  loc_145CBA7: If (CStr(DGTaxMast.DispID_FFFF) = "Add") Then
  loc_145CBAA:   Call TopCtrl1_UnknownEvent_A()
  loc_145CBAF:   Exit Sub
  loc_145CBB0: End If
  loc_145CBC5: var_B0 = "INI"
  loc_145CBD3: Call Proc_19_56_E7B724(Proc_5_1_100EC1C(var_B0, Me), global_68)
  loc_145CBDE: Call Proc_19_55_137B75C(DGHelp.DispID_FFFF)
  loc_145CBE3: Exit Sub
  loc_145CBE4: ' Referenced from: 145C1D4
  loc_145CBED: If (CInt(var_86) = 1) Then
  loc_145CBF6:   unk_4B549F.RollbackTrans
  loc_145CBFB: End If
  loc_145CC03: Set var_A4 = Err()
  loc_145CC09: Call 0.Method_arg_2C (var_B0)
  loc_145CC22: MsgBox(CVar(var_B0), &H10, var_138, var_148, var_168)
  loc_145CC35: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5B624
  'Data Table: 4B5480
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5B546: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5B54D:   Set var_A8 = Me.ListView
  loc_F5B597:   Set var_C0 = Me.TxtGrid
  loc_F5B59D:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5B5A5:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5B5C5: End If
  loc_F5B5D1: Me.FrmList.Visible = False
  loc_F5B601: Set var_9C = Me.TxtGrid
  loc_F5B607: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5B60F: var_A8.SetFocus
  loc_F5B623: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '12E5660
  'Data Table: 4B5480
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_F0 As MSHFlexGrid
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Variant
  Dim var_104 As TextBox
  Dim var_130 As String
  loc_12E4FAC: Call Proc_19_57_EF2F48()
  loc_12E4FC4: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_12E4FDF: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E4FE8: Set var_BC = Me.FGrid
  loc_12E501E: Set var_104 = Me.TxtGrid
  loc_12E5024: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_12E502C: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_12E505D: var_110 = CLng(Me.FGrid.Col)
  loc_12E506D: If (var_110 = CLng(2)) Then
  loc_12E507F:   Set var_A8 = Me.TxtGrid
  loc_12E5085:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H19)
  loc_12E508D:   var_BC.MaxLength = var_110
  loc_12E50B0:   If (Me.RecordCount > 0) Then
  loc_12E50BE:     Set var_BC = Me.FGPoint
  loc_12E50D6:     Proc_6_137_1192FDC(Me.DGTaxMast, global_76, Index)
  loc_12E50E4:   End If
  loc_12E5125:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_12E5128:     Exit Sub
  loc_12E5129:   End If
  loc_12E513C:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E5144:   var_DC = CVar(CLng(2)) 'Long
  loc_12E5177:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_12E5180:     Me.MoveFirst
  loc_12E5198:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E51A0:     var_DC = CVar(CLng(1)) 'Long
  loc_12E51A9:     Set var_BC = Me.FGrid
  loc_12E51AF:     var_CC = var_BC.TextMatrix)
  loc_12E51D0:     var_10C = CStr(var_CC)
  loc_12E51E4:     Me.Find "Code ='" & var_10C & "'", 0, 1
  loc_12E5214:     If (Me.EOF = &HFF) Then
  loc_12E521D:       Me.MoveFirst
  loc_12E5222:     End If
  loc_12E5222:   End If
  loc_12E5225: Else
  loc_12E522C:   If (var_110 = CLng(3)) Then
  loc_12E523E:     Set var_A8 = Me.TxtGrid
  loc_12E5244:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, 8, var_130, var_CC, var_DC)
  loc_12E524C:     var_BC.MaxLength = var_94
  loc_12E525B:   Else
  loc_12E5262:     If Not (var_110 = CLng(5)) Then
  loc_12E526C:       If (var_110 = CLng(7)) Then
  loc_12E526F:       End If
  loc_12E527E:       Set var_A8 = Me.TxtGrid
  loc_12E5284:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HA, var_DC)
  loc_12E528C:       var_BC.MaxLength = var_94
  loc_12E529B:     Else
  loc_12E52A2:       If (var_110 = CLng(4)) Then
  loc_12E52B4:         Set var_A8 = Me.TxtGrid
  loc_12E52BA:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H19)
  loc_12E52C2:         var_BC.MaxLength = var_BC
  loc_12E52DB:         ReDim var_134(0 To 2)
  loc_12E52F2:         var_134(0) = "On Base Amt"
  loc_12E5301:         var_134(1) = "On Running Total"
  loc_12E5310:         var_134(2) = "On Prev. Tax Amt"
  loc_12E5327:         global_84 = Array(var_134)
  loc_12E5332:         Set var_104 = Me.ListView
  loc_12E534D:         Set var_BC = Me.TxtGrid
  loc_12E5367:         Set global_100 = Proc_6_66_F0048C(var_104, var_BC, Index, global_84)
  loc_12E5385:         Set var_A8 = Me.TxtGrid
  loc_12E538B:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, var_10C)
  loc_12E5393:         3 = var_BC.Text
  loc_12E53A5:         Set var_F0 = Me.TxtGrid
  loc_12E53AB:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_104, var_10C)
  loc_12E53B3:         var_104.Tag = global_84
  loc_12E53C9:       Else
  loc_12E53D0:         If (var_110 = CLng(6)) Then
  loc_12E53E2:           Set var_A8 = Me.TxtGrid
  loc_12E53E8:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_12E53F0:           var_BC.MaxLength = 7
  loc_12E5409:           ReDim var_134(0 To 5)
  loc_12E5420:           var_134(0) = "<"
  loc_12E542F:           var_134(1) = "<="
  loc_12E543E:           var_134(2) = ">"
  loc_12E544D:           var_134(3) = ">="
  loc_12E545C:           var_134(4) = "="
  loc_12E546B:           var_134(5) = "Between"
  loc_12E5482:           global_84 = Array(var_134)
  loc_12E548D:           Set var_104 = Me.ListView
  loc_12E54A8:           Set var_BC = Me.TxtGrid
  loc_12E54C2:           Set global_100 = Proc_6_66_F0048C(var_104, var_BC, Index, global_84)
  loc_12E54E0:           Set var_A8 = Me.TxtGrid
  loc_12E54E6:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, var_10C)
  loc_12E54EE:           6 = var_BC.Text
  loc_12E5500:           Set var_F0 = Me.TxtGrid
  loc_12E5506:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_104, var_10C)
  loc_12E550E:           var_104.Tag = global_84
  loc_12E5524:         Else
  loc_12E552B:           If (var_110 = CLng(8)) Then
  loc_12E553D:             Set var_A8 = Me.TxtGrid
  loc_12E5543:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_12E554B:             var_BC.MaxLength = &H19
  loc_12E5564:             ReDim var_134(0 To 3)
  loc_12E557B:             var_134(0) = "Room Rate"
  loc_12E558A:             var_134(1) = "Rack Rate"
  loc_12E5599:             var_134(2) = "Room Tariff"
  loc_12E55A8:             var_134(3) = "Declared Tariff"
  loc_12E55BF:             global_84 = Array(var_134)
  loc_12E55CA:             Set var_104 = Me.ListView
  loc_12E55E5:             Set var_BC = Me.TxtGrid
  loc_12E55FF:             Set global_100 = Proc_6_66_F0048C(var_104, var_BC, Index, global_84)
  loc_12E561D:             Set var_A8 = Me.TxtGrid
  loc_12E5623:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, var_10C)
  loc_12E562B:             4 = var_BC.Text
  loc_12E563D:             Set var_F0 = Me.TxtGrid
  loc_12E5643:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_104, var_10C)
  loc_12E564B:             var_104.Tag = global_84
  loc_12E565E:           End If
  loc_12E565E:         End If
  loc_12E565E:       End If
  loc_12E565E:     End If
  loc_12E565E:   End If
  loc_12E565E: End If
  loc_12E565E: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '13F9DB4
  'Data Table: 4B5480
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C0 As Variant
  Dim var_94 As DataGrid
  Dim var_D8 As DataGrid
  Dim var_E4 As TextBox
  Dim var_F4 As TextBox
  Dim var_90 As String
  loc_13F93A0: On Error Goto loc_13F9DAE
  loc_13F93AD: If (CLng(Shift) = &H1B) Then
  loc_13F93BD:   Set var_88 = Me.TxtGrid
  loc_13F93C3:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13F93CB:   var_90 = var_8C.Tag
  loc_13F93DD:   Set var_94 = Me.TxtGrid
  loc_13F93E3:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_13F93EB:   var_98.Text = var_90
  loc_13F9407:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_13F940C:   Call Proc_19_57_EF2F48(arg_14)
  loc_13F9415:   Set var_88 = Me.FGrid
  loc_13F9432:   Set var_88 = Me.TxtGrid
  loc_13F9438:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13F9440:   var_8C.Visible = False
  loc_13F944C:   Exit Sub
  loc_13F944D: End If
  loc_13F9470: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_13F947F:   Set var_88 = Me.TxtGrid
  loc_13F9485:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B0)
  loc_13F948D:   var_AC = var_8C.Left
  loc_13F94A4:   Me.DGTaxMast.Left = CVar(var_B0)
  loc_13F94BE:   Set var_94 = Me.TxtGrid
  loc_13F94C4:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_13F94CC:   var_D4 = var_98.Height
  loc_13F94DD:   Set var_88 = Me.TxtGrid
  loc_13F94E3:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_13F94EB:   var_B0 = var_8C.Top
  loc_13F94F7:   var_C0 = CVar((var_B0 + var_D4)) 'Single
  loc_13F9506:   Me.DGTaxMast.Top = CVar(var_B0)
  loc_13F9523:   Set var_E4 = Me.TxtGrid
  loc_13F9535:   Set var_98 = Me.FGPoint
  loc_13F956E:   Proc_6_69_134A630(Me.DGTaxMast, var_E4, KeyCode, global_76, Shift, &HFF)
  loc_13F958E:   If (CLng(Shift) = &HD) Then
  loc_13F9597:     Call Proc_19_53_1313604(KeyCode, var_DA, 1, Nothing)
  loc_13F95A2:     If (var_DA = &HFF) Then
  loc_13F95B0:       Set var_98 = Me.TxtGrid
  loc_13F95DB:       Set var_8C = var_98
  loc_13F95EA:       Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_66, CByte(9))
  loc_13F95FA:     End If
  loc_13F95FA:   End If
  loc_13F95FD: Else
  loc_13F9604:   If (var_AC = CLng(3)) Then
  loc_13F9616:     Set var_88 = Me.TxtGrid
  loc_13F961C:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 8, 0, 0)
  loc_13F9624:     var_8C.MaxLength = 0
  loc_13F963A:     If (CLng(Shift) = &HD) Then
  loc_13F9643:       Call Proc_19_53_1313604(KeyCode, var_DA, var_98)
  loc_13F964E:       If (var_DA = &HFF) Then
  loc_13F9687:         Set var_8C = Me.TxtGrid
  loc_13F9696:         Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_66, CByte(9))
  loc_13F96A6:       End If
  loc_13F96A6:     End If
  loc_13F96A9:   Else
  loc_13F96B0:     If (var_AC = CLng(5)) Then
  loc_13F96C2:       Set var_88 = Me.TxtGrid
  loc_13F96C8:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, &HA, 0)
  loc_13F96D0:       var_8C.MaxLength = 0
  loc_13F96E6:       If (CLng(Shift) = &HD) Then
  loc_13F96EF:         Call Proc_19_53_1313604(KeyCode, var_DA, 0)
  loc_13F96FA:         If (var_DA = &HFF) Then
  loc_13F9733:           Set var_8C = Me.TxtGrid
  loc_13F9742:           Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_66, CByte(6))
  loc_13F9752:         End If
  loc_13F9752:       End If
  loc_13F9755:     Else
  loc_13F975C:       If (var_AC = CLng(7)) Then
  loc_13F976E:         Set var_88 = Me.TxtGrid
  loc_13F9774:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, &HA, 0)
  loc_13F977C:         var_8C.MaxLength = 0
  loc_13F9792:         If (CLng(Shift) = &HD) Then
  loc_13F979B:           Call Proc_19_53_1313604(KeyCode, var_DA, 0)
  loc_13F97A6:           If (var_DA = &HFF) Then
  loc_13F97B4:             Set var_98 = Me.TxtGrid
  loc_13F97DF:             Set var_8C = var_98
  loc_13F97EE:             Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_66, CByte(9))
  loc_13F97FE:           End If
  loc_13F97FE:         End If
  loc_13F9801:       Else
  loc_13F9808:         If (var_AC = CLng(4)) Then
  loc_13F981A:           Set var_88 = Me.TxtGrid
  loc_13F9820:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, &H19, 0)
  loc_13F9828:           var_8C.MaxLength = 0
  loc_13F9856:           Set var_88 = Me.TxtGrid
  loc_13F985C:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, var_B0)
  loc_13F9864:           0 = var_8C.Left
  loc_13F9876:           Set var_94 = Me.TxtGrid
  loc_13F987C:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98, var_D4)
  loc_13F9884:           0 = var_98.Top
  loc_13F9896:           Set var_D8 = Me.TxtGrid
  loc_13F989C:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E4)
  loc_13F98B6:           Set var_E8 = Me.TxtGrid
  loc_13F98BC:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_F4)
  loc_13F98C4:           var_F8 = var_F4.Width
  loc_13F990C:           Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_13F993A:           If (CLng(Shift) = &HD) Then
  loc_13F9943:             Call Proc_19_53_1313604(KeyCode, var_DA, CInt(var_B0), CInt((var_D4 + var_E4.Height)))
  loc_13F994E:             If (var_DA = &HFF) Then
  loc_13F995C:               Set var_98 = Me.TxtGrid
  loc_13F9987:               Set var_8C = var_98
  loc_13F9996:               Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_66, CByte(9))
  loc_13F99A6:             End If
  loc_13F99A6:           End If
  loc_13F99A9:         Else
  loc_13F99B0:           If (var_AC = CLng(6)) Then
  loc_13F99C2:             Set var_88 = Me.TxtGrid
  loc_13F99C8:             Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 7, 0, 0)
  loc_13F99D0:             var_8C.MaxLength = 0
  loc_13F99FE:             Set var_88 = Me.TxtGrid
  loc_13F9A04:             Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, var_B0)
  loc_13F9A0C:             CInt(var_F8) = var_8C.Left
  loc_13F9A1E:             Set var_94 = Me.TxtGrid
  loc_13F9A24:             Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98, var_D4)
  loc_13F9A2C:             780 = var_98.Top
  loc_13F9A3E:             Set var_D8 = Me.TxtGrid
  loc_13F9A44:             Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E4)
  loc_13F9A5E:             Set var_E8 = Me.TxtGrid
  loc_13F9A64:             Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_F4)
  loc_13F9A6C:             var_F8 = var_F4.Width
  loc_13F9AB4:             Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_13F9AE2:             If (CLng(Shift) = &HD) Then
  loc_13F9AEB:               Call Proc_19_53_1313604(KeyCode, var_DA, CInt(var_B0), CInt((var_D4 + var_E4.Height)))
  loc_13F9AF6:               If (var_DA = &HFF) Then
  loc_13F9B04:                 Set var_98 = Me.TxtGrid
  loc_13F9B2F:                 Set var_8C = var_98
  loc_13F9B3E:                 Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_66, CByte(9))
  loc_13F9B4E:               End If
  loc_13F9B4E:             End If
  loc_13F9B51:           Else
  loc_13F9B58:             If (var_AC = CLng(8)) Then
  loc_13F9B6A:               Set var_88 = Me.TxtGrid
  loc_13F9B70:               Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, &H19, 0, 0)
  loc_13F9B78:               var_8C.MaxLength = 0
  loc_13F9B91:               Set var_88 = Me.TxtGrid
  loc_13F9B97:               Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, var_90)
  loc_13F9B9F:               CInt(var_F8) = var_8C.Text
  loc_13F9BB6:               If (var_90 <> vbNullString) Then
  loc_13F9BDB:                 Set var_88 = Me.TxtGrid
  loc_13F9BE1:                 Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, var_B0)
  loc_13F9BE9:                 1560 = var_8C.Left
  loc_13F9BFB:                 Set var_94 = Me.TxtGrid
  loc_13F9C01:                 Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_13F9C09:                 var_D4 = var_98.Top
  loc_13F9C1B:                 Set var_D8 = Me.TxtGrid
  loc_13F9C21:                 Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E4)
  loc_13F9C29:                 var_F0 = var_E4.Height
  loc_13F9C3B:                 Set var_E8 = Me.TxtGrid
  loc_13F9C41:                 Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_F4)
  loc_13F9C49:                 var_F8 = var_F4.Width
  loc_13F9C91:                 Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_13F9CB5:               End If
  loc_13F9CBF:               If (CLng(Shift) = &HD) Then
  loc_13F9CC8:                 Call Proc_19_53_1313604(KeyCode, var_DA, CInt(var_B0), CInt((var_D4 + var_F0)))
  loc_13F9CD3:                 If (var_DA = &HFF) Then
  loc_13F9CFA:                   Set var_8C = Me.FGrid
  loc_13F9D24:                   If (CStr(var_8C.TextMatrix)) = vbNullString) Then
  loc_13F9D32:                     Set var_88 = Me.TxtGrid
  loc_13F9D38:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, 0, CVar(CLng(2)))
  loc_13F9D40:                     var_8C.Visible = CVar(CLng(Me.FGrid.Row))
  loc_13F9D51:                     Call Proc_19_58_EE276C(0, CInt(var_F8))
  loc_13F9D59:                   Else
  loc_13F9D9E:                     Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, CByte(9))
  loc_13F9DAE:                   End If
  loc_13F9DAE:                 End If
  loc_13F9DAE:               End If
  loc_13F9DAE:             End If
  loc_13F9DAE:           End If
  loc_13F9DAE:         End If
  loc_13F9DAE:       End If
  loc_13F9DAE:       ' Referenced from: 13F93A0
  loc_13F9DAE:     End If
  loc_13F9DAE:   End If
  loc_13F9DAE: End If
  loc_13F9DAE: Proc_6_60_E63754(0, 0, 0)
  loc_13F9DB3: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F8A4A4
  'Data Table: 4B5480
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F8A34B: Proc_6_58_E06050(arg_10)
  loc_F8A35C: If (KeyAscii = 0) Then
  loc_F8A372:   var_A0 = CLng(Me.FGrid.Col)
  loc_F8A382:   If (var_A0 = CLng(2)) Then
  loc_F8A3A1:     If (CBool(Me.DGTaxMast.Visible) = &HFF) Then
  loc_F8A3B3:       var_A4 = "Name"
  loc_F8A3CE:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_76, arg_10)
  loc_F8A3E8:       Set var_AC = Me.FGPoint
  loc_F8A400:       Proc_6_138_106E830(Me.DGTaxMast, global_76, KeyAscii, var_AC)
  loc_F8A40E:     End If
  loc_F8A411:   Else
  loc_F8A418:     If (var_A0 = CLng(3)) Then
  loc_F8A425:       Set var_8C = Me.TxtGrid
  loc_F8A42B:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F8A446:       Proc_6_42_129B55C(var_AC, arg_10, 3, 4)
  loc_F8A455:     Else
  loc_F8A45C:       If Not (var_A0 = CLng(5)) Then
  loc_F8A466:         If (var_A0 = CLng(7)) Then
  loc_F8A469:         End If
  loc_F8A473:         Set var_8C = Me.TxtGrid
  loc_F8A479:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_F8A494:         Proc_6_42_129B55C(var_AC, arg_10, 7)
  loc_F8A4A0:       End If
  loc_F8A4A0:     End If
  loc_F8A4A0:   End If
  loc_F8A4A0: End If
  loc_F8A4A0: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F7D1C0
  'Data Table: 4B5480
  Dim var_9C As Long
  loc_F7D078: On Error Goto loc_F7D1BA
  loc_F7D08E: var_9C = CLng(Me.FGrid.Col)
  loc_F7D09E: If (var_9C = CLng(2)) Then
  loc_F7D0C4:   If ((Shift <> &HD) And (CBool(Me.DGTaxMast.Visible) = 0)) Then
  loc_F7D0D2:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_F7D0E6:     var_A4 = "Name"
  loc_F7D101:     Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_76, Shift)
  loc_F7D110:   End If
  loc_F7D113: Else
  loc_F7D11A:   If Not (var_9C = CLng(4)) Then
  loc_F7D124:     If (var_9C = CLng(8)) Then
  loc_F7D127:     End If
  loc_F7D149:     If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_F7D15A:       Call TxtGrid_KeyDown(KeyCode, global_64)
  loc_F7D15F:     End If
  loc_F7D17A:     If (Me.FrmList.Visible = &HFF) Then
  loc_F7D1A9:       Proc_6_64_F299E8(Me.ListView, Me.TxtGrid, KeyCode, Shift, global_100)
  loc_F7D1B9:     End If
  loc_F7D1B9:   End If
  loc_F7D1B9: End If
  loc_F7D1B9: Exit Sub
  loc_F7D1BA: ' Referenced from: F7D078
  loc_F7D1BA: Proc_6_60_E63754(0, var_A4, &HFF)
  loc_F7D1BF: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E22E50
  'Data Table: 4B5480
  Dim arg_10 As Integer
  loc_E22E38: If (Cancel = 0) Then
  loc_E22E41:   Call Proc_19_53_1313604(Cancel, var_88)
  loc_E22E4A:   arg_10 = Not(var_88)
  loc_E22E4D: End If
  loc_E22E4D: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F50474
  'Data Table: 4B5480
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5036B: Me.DGHelp.Visible = False
  loc_F5038A: If (Me.RecordCount > 0) Then
  loc_F503C9:   Set var_B4 = Me.Txt
  loc_F503CF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F503D7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F5040A:   var_B0 = Me.Fields.Item("Name")
  loc_F50429:   Set var_B4 = Me.Txt
  loc_F5042F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F50437:   var_B8.Text = CStr(var_B0.Value)
  loc_F5044D: End If
  loc_F50458: Set var_A8 = Me.Txt
  loc_F5045E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F50466: var_B0.SetFocus
  loc_F50472: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E70480
  'Data Table: 4B5480
  loc_E7043E: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E70455: Set var_8C = Me.FGPoint
  loc_E7046F: Proc_6_138_106E830(Me.DGHelp, global_72, 0)
  loc_E7047D: Exit Sub
End Sub

Private Sub DGTaxMast_UnknownEvent_9 'FC4714
  'Data Table: 4B5480
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FC457F: Me.DGTaxMast.Visible = False
  loc_FC459E: If (Me.RecordCount > 0) Then
  loc_FC45DB:   Set var_B4 = Me.TxtGrid
  loc_FC45E1:   Call 0.Method_DGTaxMast_UnknownEvent_90 (0, var_B8)
  loc_FC45E9:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FC4612:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FC461A:   var_EC = CVar(CLng(2)) 'Long
  loc_FC464D:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FC4655:   Set var_B8 = Me.FGrid
  loc_FC465B:   LateIdCallSt
  loc_FC468A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FC4692:   var_EC = CVar(CLng(1)) 'Long
  loc_FC46B4:   var_B0 = Me.Fields.Item("Code")
  loc_FC46C5:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FC46CD:   Set var_B8 = Me.FGrid
  loc_FC46D3:   LateIdCallSt
  loc_FC46EF: End If
  loc_FC46F8: Set var_A8 = Me.TxtGrid
  loc_FC46FE: Call 0.Method_DGTaxMast_UnknownEvent_90 (0, var_B0, var_B8, var_11C, var_EC)
  loc_FC4706: var_B0.SetFocus
  loc_FC4712: Exit Sub
End Sub

Private Sub DGTaxMast_UnknownEvent_1F 'E6EFB0
  'Data Table: 4B5480
  loc_E6EF6E: Proc_6_153_E91D24(Me.DGTaxMast, arg_14)
  loc_E6EF85: Set var_8C = Me.FGPoint
  loc_E6EF9F: Proc_6_138_106E830(Me.DGTaxMast, global_76, 0)
  loc_E6EFAD: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FEAB6C
  'Data Table: 4B5480
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_FEA9A2: Set var_88 = Me.Txt
  loc_FEA9A8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FEA9B6: Proc_6_74_E23240(var_8C)
  loc_FEA9C2: Call Proc_19_57_EF2F48(var_8C)
  loc_FEA9CA: var_92 = Index
  loc_FEA9D5: If (var_92 = CInt(0)) Then
  loc_FEA9EF:   If (Me.RecordCount > 0) Then
  loc_FEA9FD:     Set var_8C = Me.FGPoint
  loc_FEAA15:     Proc_6_137_1192FDC(Me.DGHelp, global_72, Index)
  loc_FEAA23:   End If
  loc_FEAA71:   Set var_88 = Me.Txt
  loc_FEAA77:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FEAA7F:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FEAA97:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FEAA9A:     Exit Sub
  loc_FEAA9B:   End If
  loc_FEAAA8:   Set var_88 = Me.Txt
  loc_FEAAAE:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FEAAB6:   var_A0 = var_8C.Text
  loc_FEAAC8:   var_B0 = "Name"
  loc_FEAB03:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_FEAB0C:     Me.MoveFirst
  loc_FEAB2F:     Set var_88 = Me.Txt
  loc_FEAB35:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_FEAB3D:     0 = var_8C.Text
  loc_FEAB56:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_FEAB6B:   End If
  loc_FEAB6B: End If
  loc_FEAB6B: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '109BD18
  'Data Table: 4B5480
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim Shift As Integer
  Dim var_8C As Frame
  Dim var_9C As DataGrid
  loc_109BA6A: If (CLng(Shift) = &H1B) Then
  loc_109BA6D:   Call Proc_19_57_EF2F48()
  loc_109BA72:   Exit Sub
  loc_109BA73: End If
  loc_109BA76: var_86 = KeyCode
  loc_109BA81: If (var_86 = CInt(0)) Then
  loc_109BA9C:   Set var_9C = Nothing
  loc_109BACE:   Proc_6_79_11AD564(Me.DGHelp, Me.Txt, CInt(0), global_72, Shift)
  loc_109BB39:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_109BB40:     Set var_9C = Me.DGHelp
  loc_109BB47:     Set var_90 = Me.FGPoint
  loc_109BB5F:     Proc_6_138_106E830(var_9C, global_72, KeyCode, var_90, 0)
  loc_109BB6D:   End If
  loc_109BB70: Else
  loc_109BB78:   If (var_86 = CInt(1)) Then
  loc_109BBA4:     If (Ucase(Chr(CLng(Shift))) = "Y") Then
  loc_109BBB4:       Set var_8C = Me.Txt
  loc_109BBBA:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, "Yes", 1)
  loc_109BBC2:       var_90.Text = var_9C
  loc_109BBD1:     Else
  loc_109BBFA:       If (Ucase(Chr(CLng(Shift))) = "N") Then
  loc_109BC0A:         Set var_8C = Me.Txt
  loc_109BC10:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, "No")
  loc_109BC18:         var_90.Text = 0
  loc_109BC24:       End If
  loc_109BC24:     End If
  loc_109BC26:     Shift = 0
  loc_109BC29:   End If
  loc_109BC29: End If
  loc_109BC36: var_92 = Me.FrmList.Visible
  loc_109BC45: Set var_90 = Me.DGHelp
  loc_109BC7F: If (((var_92 = 0) And (CBool(var_90.Visible) = 0)) And (CBool(Me.DGTaxMast.Visible) = 0)) Then
  loc_109BC97:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_109BC9D:     Call Proc_19_51_10983B8(var_92, Shift)
  loc_109BCA8:     If (var_92 = &HFF) Then
  loc_109BCB8:       Set var_8C = Me.Txt
  loc_109BCBE:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_109BCC6:       var_90.Text = vbNullString
  loc_109BCD2:       Exit Sub
  loc_109BCD3:     End If
  loc_109BCD3:   End If
  loc_109BCE8:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_109BCF1:     Proc_6_75_E5335C(Shift, arg_14)
  loc_109BCF6:   End If
  loc_109BD09:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_109BD12:     Proc_6_76_E533C8(Shift, arg_14)
  loc_109BD17:   End If
  loc_109BD17: End If
  loc_109BD17: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E255D4
  'Data Table: 4B5480
  Dim var_96 As Integer
  loc_E255B6: Proc_6_133_E7FB08(var_94)
  loc_E255C8: Proc_6_58_E06050(CInt(var_94), CInt(var_94))
  loc_E255D0: var_96 = KeyAscii
  loc_E255D3: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EBF5A0
  'Data Table: 4B5480
  loc_EBF512: If (KeyCode = CInt(0)) Then
  loc_EBF531:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EBF53E:     var_A4 = "Name"
  loc_EBF55D:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_72)
  loc_EBF58F:     Proc_6_138_106E830(Me.DGHelp, global_72, KeyCode, Me.FGPoint)
  loc_EBF59D:   End If
  loc_EBF59D: End If
  loc_EBF59D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4D8DC
  'Data Table: 4B5480
  loc_E4D8BA: Set var_88 = Me.Txt
  loc_E4D8C0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4D8CE: Proc_6_73_E23294(var_8C)
  loc_E4D8DA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F9148C
  'Data Table: 4B5480
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim arg_10 As Integer
  Dim var_8C As MSHFlexGrid
  loc_F91337: var_86 = Cancel
  loc_F91342: If (var_86 = CInt(0)) Then
  loc_F91350:   Set var_8C = Me.Txt
  loc_F91356:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_F9137F:   If (Proc_6_27_EA61EC(var_90, "Name") = 0) Then
  loc_F9138C:     Set var_8C = Me.Txt
  loc_F91392:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F9139A:     var_90.SetFocus
  loc_F913A8:     arg_10 = &HFF
  loc_F913AB:     Exit Sub
  loc_F913AC:   End If
  loc_F913AF:   Call Proc_19_51_10983B8(var_9A, arg_10)
  loc_F913BA:   If (var_9A = &HFF) Then
  loc_F913BF:     arg_10 = &HFF
  loc_F913C2:     Exit Sub
  loc_F913C3:   End If
  loc_F913D6:   Me.FGrid.Col = 2
  loc_F913E1: Else
  loc_F913E9:   If (var_86 = CInt(1)) Then
  loc_F913F6:     Set var_8C = Me.Txt
  loc_F913FC:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F91437:     If (Ucase(Left(CVar(var_90), 1)) = "Y") Then
  loc_F91447:       Set var_8C = Me.Txt
  loc_F9144D:       Call 0.Method_Txt_Validate0 (Cancel, var_90, "Yes")
  loc_F91455:       var_90.Text = arg_10
  loc_F91464:     Else
  loc_F91471:       Set var_8C = Me.Txt
  loc_F91477:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F9147F:       var_90.Text = "No"
  loc_F9148B:     End If
  loc_F9148B:   End If
  loc_F9148B: End If
  loc_F9148B: Exit Sub
End Sub

Public Function MasterFormExitGet() '4B62B8
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4B62C7
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E93EF0
  'Data Table: 4B5480
  Dim Me As Recordset15
  loc_E93E7E: On Error Goto loc_E93EE7
  loc_E93E87: Me.MoveFirst
  loc_E93EB1: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E93ED9: Proc_5_0_1107AD0(&HFF, Me, global_68)
  loc_E93EE1: Call Proc_19_55_137B75C(0)
  loc_E93EE6: Exit Sub
  loc_E93EE7: ' Referenced from: E93E7E
  loc_E93EE7: Proc_6_60_E63754(var_A0)
  loc_E93EEC: Exit Sub
End Sub

Public Sub Proc_19_50_11D68F0
  'Data Table: 4B5480
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_11D647C: On Error Goto loc_11D68E7
  loc_11D648D: Set var_88 = Me.Txt
  loc_11D6493: Call 0.Method_Proc_19_50_11D68F00 (CInt(0), var_8C)
  loc_11D64B2: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_11D64CE: Set var_B4 = Me.Txt
  loc_11D64D4: Call 0.Method_Proc_19_50_11D68F00 (CInt(0), var_B8)
  loc_11D64EF: Set var_88 = Me.Txt
  loc_11D64F5: Call 0.Method_Proc_19_50_11D68F00 (CInt(0), var_8C)
  loc_11D650D: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_11D651C: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_11D653A: Set var_88 = Me.TxtGrid
  loc_11D6540: Call 0.Method_Proc_19_50_11D68F00 (0, var_8C)
  loc_11D655F: Me.DGTaxMast.Left = CVar(var_8C.Left)
  loc_11D6579: Set var_B4 = Me.TxtGrid
  loc_11D657F: Call 0.Method_Proc_19_50_11D68F00 (0, var_B8)
  loc_11D6598: Set var_88 = Me.TxtGrid
  loc_11D659E: Call 0.Method_Proc_19_50_11D68F00 (0, var_8C)
  loc_11D65B2: var_A0 = CVar((var_8C.Top + var_B8.Height)) 'Single
  loc_11D65C1: Me.DGTaxMast.Top = CVar(var_8C.Left)
  loc_11D65D7: Set var_C4 = Me.FGrid
  loc_11D65E6: var_C4.Cols = 9
  loc_11D65FF: global_56 = CStr(CLng(var_C4.BackColor))
  loc_11D660C: var_A0 = CVar(CLng(0)) 'Long
  loc_11D6611: var_E8 = &H226
  loc_11D661D: LateIdCallSt
  loc_11D6625: var_A0 = 0
  loc_11D6631: var_E8 = CVar(CLng(0)) 'Long
  loc_11D6636: var_108 = "S.No"
  loc_11D663F: LateIdCallSt
  loc_11D664A: var_A0 = CVar(CLng(1)) 'Long
  loc_11D664F: var_E8 = 0
  loc_11D665B: LateIdCallSt
  loc_11D6666: var_A0 = CVar(CLng(2)) 'Long
  loc_11D666B: var_E8 = &HAF0
  loc_11D6677: LateIdCallSt
  loc_11D667F: var_A0 = 0
  loc_11D668B: var_E8 = CVar(CLng(2)) 'Long
  loc_11D6690: var_108 = "Tax Name"
  loc_11D6699: LateIdCallSt
  loc_11D66A4: var_A0 = CVar(CLng(2)) 'Long
  loc_11D66AF: var_E8 = CVar(CInt(1)) 'Integer
  loc_11D66B6: LateIdCallSt
  loc_11D66C1: var_A0 = CVar(CLng(4)) 'Long
  loc_11D66C6: var_E8 = &H6A4
  loc_11D66D2: LateIdCallSt
  loc_11D66DA: var_A0 = 0
  loc_11D66E6: var_E8 = CVar(CLng(4)) 'Long
  loc_11D66EB: var_108 = "Apply On"
  loc_11D66F4: LateIdCallSt
  loc_11D66FF: var_A0 = CVar(CLng(4)) 'Long
  loc_11D670A: var_E8 = CVar(CInt(1)) 'Integer
  loc_11D6711: LateIdCallSt
  loc_11D671C: var_A0 = CVar(CLng(3)) 'Long
  loc_11D6721: var_E8 = &H320
  loc_11D672D: LateIdCallSt
  loc_11D6738: var_A0 = CVar(CLng(3)) 'Long
  loc_11D6743: var_E8 = CVar(CInt(7)) 'Integer
  loc_11D674A: LateIdCallSt
  loc_11D6752: var_A0 = 0
  loc_11D675E: var_E8 = CVar(CLng(3)) 'Long
  loc_11D6763: var_108 = "Rate"
  loc_11D676C: LateIdCallSt
  loc_11D6777: var_A0 = CVar(CLng(5)) 'Long
  loc_11D677C: var_E8 = &H320
  loc_11D6788: LateIdCallSt
  loc_11D6793: var_A0 = CVar(CLng(5)) 'Long
  loc_11D679E: var_E8 = CVar(CInt(7)) 'Integer
  loc_11D67A5: LateIdCallSt
  loc_11D67AD: var_A0 = 0
  loc_11D67B9: var_E8 = CVar(CLng(5)) 'Long
  loc_11D67BE: var_108 = "L. Limit"
  loc_11D67C7: LateIdCallSt
  loc_11D67D2: var_A0 = CVar(CLng(6)) 'Long
  loc_11D67D7: var_E8 = &H4C4
  loc_11D67E3: LateIdCallSt
  loc_11D67EE: var_A0 = CVar(CLng(6)) 'Long
  loc_11D67F9: var_E8 = CVar(CInt(1)) 'Integer
  loc_11D6800: LateIdCallSt
  loc_11D6808: var_A0 = 0
  loc_11D6814: var_E8 = CVar(CLng(6)) 'Long
  loc_11D6819: var_108 = "Comparison Operator"
  loc_11D6822: LateIdCallSt
  loc_11D682D: var_A0 = CVar(CLng(7)) 'Long
  loc_11D6832: var_E8 = &H352
  loc_11D683E: LateIdCallSt
  loc_11D6849: var_A0 = CVar(CLng(7)) 'Long
  loc_11D6854: var_E8 = CVar(CInt(7)) 'Integer
  loc_11D685B: LateIdCallSt
  loc_11D6863: var_A0 = 0
  loc_11D686F: var_E8 = CVar(CLng(7)) 'Long
  loc_11D6874: var_108 = "U. Limit"
  loc_11D687D: LateIdCallSt
  loc_11D6888: var_A0 = CVar(CLng(8)) 'Long
  loc_11D688D: var_E8 = &H9C4
  loc_11D6899: LateIdCallSt
  loc_11D68A4: var_A0 = CVar(CLng(8)) 'Long
  loc_11D68AF: var_E8 = CVar(CInt(1)) 'Integer
  loc_11D68B6: LateIdCallSt
  loc_11D68BE: var_A0 = 0
  loc_11D68CA: var_E8 = CVar(CLng(8)) 'Long
  loc_11D68CF: var_108 = "Condition"
  loc_11D68D8: LateIdCallSt
  loc_11D68E2: Set var_C4 = Nothing 
  loc_11D68E6: Exit Sub
  loc_11D68E7: ' Referenced from: 11D647C
  loc_11D68E7: Proc_6_60_E63754(var_C4, var_108, var_E8, var_A0, var_C4, var_E8, var_A0, var_C4)
  loc_11D68EC: Exit Sub
End Sub

Public Sub Proc_19_51_10983B8
  'Data Table: 4B5480
  Dim Me As Recordset15
  Dim var_B8 As TextBox
  Dim unk_4B549F As Connection15
  Dim var_E0 As Fields15
  Dim var_F4 As Field20
  loc_109814C: If (Me.RecordCount = 0) Then
  loc_109814F:   Proc_19_51_10983B8 = 0
  loc_1098155: End If
  loc_1098159: Set var_A0 = Me.TopCtrl1
  loc_109815F: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1098178: If (CStr() = "Add") Then
  loc_10981B6:   Set var_A0 = Me.Txt
  loc_10981BC:   Call 0.Method_Proc_19_51_10983B80 (CInt(0), var_B8, var_BC, "Select Count(*) From TaxStru Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_B0, -1)
  loc_10981DD:   unk_4B549F.Execute var_E0 & var_BC & "'", 0, var_F4
  loc_10981ED:    = var_E0.Item()
  loc_10981F5:    = var_F4.Value
  loc_1098226:   If (var_B8.Text.Fields > 0) Then
  loc_1098244:     var_B0 = "Duplicate Name"
  loc_109824A:     MsgBox(var_B0, &H40, "Information", var_124, var_144)
  loc_1098265:     Set var_A0 = Me.Txt
  loc_109826B:     Call 0.Method_Proc_19_51_10983B80 (CInt(0))
  loc_1098273:     var_B8.SetFocus
  loc_1098284:     Proc_19_51_10983B8 = &HFF
  loc_109828A:   End If
  loc_109828D: Else
  loc_10982C8:   Set var_A0 = Me.Txt
  loc_10982CE:   Call 0.Method_Proc_19_51_10983B80 (CInt(0), var_B8, var_BC, "Select Count(*) From TaxStru Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_B0, -1)
  loc_1098300:   unk_4B549F.Execute var_E0 & var_BC & "' And Name <>'" & global_80 & "'", 0, var_F4
  loc_1098310:    = var_E0.Item(var_B8)
  loc_1098318:    = var_F4.Value
  loc_109834D:   If (var_B8.Text.Fields > 0) Then
  loc_1098371:     MsgBox("Duplicate Name", &H40, "Information", var_124, var_144)
  loc_109838C:     Set var_A0 = Me.Txt
  loc_1098392:     Call 0.Method_Proc_19_51_10983B80 (CInt(0))
  loc_109839A:     var_B8.SetFocus
  loc_10983AB:     Proc_19_51_10983B8 = &HFF
  loc_10983B1:   End If
  loc_10983B1: End If
  loc_10983B1: Proc_19_51_10983B8 = var_B8
End Sub

Public Sub Proc_19_52_E41148
  'Data Table: 4B5480
  loc_E41124: Set var_88 = Me.TopCtrl1
  loc_E4112A: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E41143: If (CStr() = "Browse") Then
  loc_E41146:   Exit Sub
  loc_E41147: End If
  loc_E41147: Exit Sub
End Sub

Public Sub Proc_19_53_1313604(arg_C) '1313604
  'Data Table: 4B5480
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Variant
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_114 As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_134 As Variant
  Dim var_170 As Double
  Dim var_158 As Variant
  Dim var_138 As Variant
  Dim var_180 As Variant
  Dim var_124 As Variant
  Dim var_B0 As String
  loc_1312ECF: var_A0 = CLng(Me.FGrid.Col)
  loc_1312EDF: If (var_A0 = CLng(2)) Then
  loc_1312F30:   Set var_8C = Me.TxtGrid
  loc_1312F36:   Call 0.Method_Proc_19_53_13136040 (arg_C, var_AC, var_B0)
  loc_1312F3E:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_1312F56:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_1312F6C:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1312F74:     var_E0 = CVar(CLng(2)) 'Long
  loc_1312F79:     var_100 = vbNullString
  loc_1312F83:     Set var_AC = Me.FGrid
  loc_1312F89:     LateIdCallSt
  loc_1312FAE:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1312FB6:     var_E0 = CVar(CLng(1)) 'Long
  loc_1312FBB:     var_100 = vbNullString
  loc_1312FC5:     Set var_AC = Me.FGrid
  loc_1312FCB:     LateIdCallSt
  loc_1312FE0:   Else
  loc_1312FF3:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1312FFB:     var_F0 = CVar(CLng(2)) 'Long
  loc_131302E:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1313036:     Set var_138 = Me.FGrid
  loc_131303C:     LateIdCallSt
  loc_131306B:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1313073:     var_F0 = CVar(CLng(1)) 'Long
  loc_1313095:     var_AC = Me.Fields.Item("Code")
  loc_13130A6:     var_134 = CVar(CStr(var_AC.Value)) 'String
  loc_13130AE:     Set var_138 = Me.FGrid
  loc_13130B4:     LateIdCallSt
  loc_13130D0:   End If
  loc_13130D3: Else
  loc_13130DA:   If (var_A0 = CLng(3)) Then
  loc_13130E9:     Set var_8C = Me.TxtGrid
  loc_13130EF:     Call 0.Method_Proc_19_53_13136040 (0, var_AC, var_B0, var_138, var_134, var_F0, var_D0)
  loc_13130F7:     var_138 = var_AC.Text
  loc_131311A:     var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1313122:     var_100 = CVar(CLng(3)) 'Long
  loc_131314F:     var_158 = CVar(CStr(Format(CVar(Val(var_B0)), "0.0000"))) 'String
  loc_1313157:     Set var_138 = Me.FGrid
  loc_131315D:     LateIdCallSt
  loc_1313183:   Else
  loc_131318A:     If Not (var_A0 = CLng(5)) Then
  loc_1313194:       If (var_A0 = CLng(7)) Then
  loc_1313197:       End If
  loc_13131A3:       Set var_8C = Me.TxtGrid
  loc_13131A9:       Call 0.Method_Proc_19_53_13136040 (0, var_AC, var_B0, var_138, var_158, 1, 1)
  loc_13131B1:       var_100 = var_AC.Text
  loc_13131BE:       var_170 = Val(var_B0)
  loc_13131D4:       var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13131DD:       Set var_138 = Me.FGrid
  loc_13131EC:       var_100 = CVar(CLng(var_138.Col)) 'Long
  loc_1313210:       var_134 = Format(CVar(var_170), "0.00")
  loc_1313219:       var_180 = CVar(CStr(var_134)) 'String
  loc_1313221:       Set var_184 = Me.FGrid
  loc_1313227:       LateIdCallSt
  loc_1313251:     Else
  loc_1313258:       If (var_A0 = CLng(4)) Then
  loc_1313268:         Set var_8C = Me.TxtGrid
  loc_131326E:         Call 0.Method_Proc_19_53_13136040 (arg_C, var_AC, var_B0, var_184, var_180, 1, 1)
  loc_1313276:         var_100 = var_AC.Text
  loc_131328D:         If (var_B0 <> vbNullString) Then
  loc_13132A8:           Set var_AC = Me.ListView.SelectedItem
  loc_13132AE:           var_B0 = var_AC.Text
  loc_13132C0:           Set var_114 = Me.TxtGrid
  loc_13132C6:           Call 0.Method_Proc_19_53_13136040 (arg_C, var_138, var_B0, var_E0, var_170)
  loc_13132CE:           var_138.Text = var_E0
  loc_13132E4:         End If
  loc_13132F7:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1313311:         Set var_8C = Me.TxtGrid
  loc_1313317:         Call 0.Method_Proc_19_53_13136040 (arg_C, var_AC, var_B0, CVar(CLng(4)))
  loc_131331F:         var_C0 = var_AC.Text
  loc_1313327:         var_124 = CVar(var_B0) 'String
  loc_131332F:         Set var_138 = Me.FGrid
  loc_1313335:         LateIdCallSt
  loc_1313352:       Else
  loc_1313359:         If (var_A0 = CLng(6)) Then
  loc_1313369:           Set var_8C = Me.TxtGrid
  loc_131336F:           Call 0.Method_Proc_19_53_13136040 (arg_C, var_AC, var_B0, var_138)
  loc_1313377:           var_124 = var_AC.Text
  loc_131338E:           If (var_B0 <> vbNullString) Then
  loc_13133A9:             Set var_AC = Me.ListView.SelectedItem
  loc_13133AF:             var_B0 = var_AC.Text
  loc_13133C1:             Set var_114 = Me.TxtGrid
  loc_13133C7:             Call 0.Method_Proc_19_53_13136040 (arg_C, var_138, var_B0)
  loc_13133CF:             var_138.Text = var_170
  loc_13133E5:           End If
  loc_13133F8:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1313412:           Set var_8C = Me.TxtGrid
  loc_1313418:           Call 0.Method_Proc_19_53_13136040 (arg_C, var_AC, var_B0, CVar(CLng(6)))
  loc_1313420:           var_C0 = var_AC.Text
  loc_1313428:           var_124 = CVar(var_B0) 'String
  loc_1313430:           Set var_138 = Me.FGrid
  loc_1313436:           LateIdCallSt
  loc_1313453:         Else
  loc_131345A:           If (var_A0 = CLng(8)) Then
  loc_131346A:             Set var_8C = Me.TxtGrid
  loc_1313470:             Call 0.Method_Proc_19_53_13136040 (arg_C, var_AC, var_B0, var_138)
  loc_1313478:             var_124 = var_AC.Text
  loc_13134A4:             If CBool(Trim(CVar(var_B0)) <> vbNullString) Then
  loc_13134BF:               Set var_AC = Me.ListView.SelectedItem
  loc_13134C5:               var_B0 = var_AC.Text
  loc_13134D7:               Set var_114 = Me.TxtGrid
  loc_13134DD:               Call 0.Method_Proc_19_53_13136040 (arg_C, var_138, var_B0)
  loc_13134E5:               var_138.Text = var_134
  loc_13134FB:             End If
  loc_131350E:             var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1313516:             var_E0 = CVar(CLng(8)) 'Long
  loc_1313528:             Set var_8C = Me.TxtGrid
  loc_131352E:             Call 0.Method_Proc_19_53_13136040 (arg_C, var_AC, var_B0)
  loc_1313536:             var_E0 = var_AC.Text
  loc_131353E:             var_124 = CVar(var_B0) 'String
  loc_1313546:             Set var_138 = Me.FGrid
  loc_131354C:             LateIdCallSt
  loc_131357F:             var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1313584:             var_E0 = 1
  loc_13135BB:             If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_13135D3:               var_124 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_13135DB:               Set var_AC = Me.FGrid
  loc_13135F7:             End If
  loc_13135F7:           End If
  loc_13135F7:         End If
  loc_13135F7:       End If
  loc_13135F7:     End If
  loc_13135F7:   End If
  loc_13135F7: End If
  loc_13135FC: Proc_19_53_1313604 = &HFF
  loc_1313602: MeFF = FGrid.DispID_10000
End Sub

Public Sub Proc_19_54_F20C20
  'Data Table: 4B5480
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F20B22: global_80 = vbNullString
  loc_F20B34: Set var_8C = Me.Txt
  loc_F20B3A: Call 0.Method_Proc_19_54_F20C20C (var_8E, var_86)
  loc_F20B4A: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F20B60:   Set var_8C = Me.Txt
  loc_F20B66:   Call 0.Method_Proc_19_54_F20C200 (CInt(var_86), var_98)
  loc_F20B6E:   var_98.Text = vbNullString
  loc_F20B8A:   Set var_8C = Me.Txt
  loc_F20B90:   Call 0.Method_Proc_19_54_F20C200 (CInt(var_86), var_98)
  loc_F20B98:   var_98.Tag = vbNullString
  loc_F20BA7: Next var_92 'Byte
  loc_F20BC0: Me.FGrid.Rows = 1
  loc_F20BDD: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F20BE5: Set var_98 = Me.FGrid
  loc_F20C14: Me.FGrid.FixedRows = 1
  loc_F20C1C: Exit Sub
End Sub

Public Sub Proc_19_55_137B75C
  'Data Table: 4B5480
  Dim var_90 As Integer
  Dim Me As Recordset15
  Dim var_D8 As Variant
  Dim var_B4 As Variant
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim unk_4B549F As Connection15
  Dim var_8C As Recordset15
  Dim var_88 As Recordset15
  Dim var_130 As Fields15
  Dim var_148 As Variant
  Dim var_11C As Variant
  Dim var_134 As TextBox
  Dim var_12C As Variant
  loc_137AF10: On Error Goto loc_137B756
  loc_137AF15: var_90 = 1
  loc_137AF2F: If (Me.RecordCount > 0) Then
  loc_137AF3F:   var_D8 = "Select TaxStru.*,RevMast.Code as TaxCode, RevMast.Name as TaxName From TaxStru Left Join RevMast on RevMast.Code=TaxStru.TaxCode  where RevMast.FieldType='T' and TaxStru.Code='"
  loc_137AF88:   unk_4B549F.Execute CStr(var_D8 & Me.Fields.Item("SearchCode").Value & "' Order by Sno"), var_12C, -1
  loc_137AF93:   Set var_8C = var_130
  loc_137B000:   unk_4B549F.Execute CStr("Select U_Name,U_AE,U_EntDt From Taxstru where Code='" & var_8C.Fields.Item("Code").Value & "'  "), var_12C, -1
  loc_137B00B:   Set var_88 = var_130
  loc_137B05F:   var_130 = var_88.Fields
  loc_137B0C8:   var_198 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE")), var_130) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_130.Item("U_AE")), var_130) = "E"), "Modified By : ", "User : "))
  loc_137B10D:   Me.LblUser.Caption = CStr(var_90 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_198)))
  loc_137B187:   var_134 = var_88.Fields.Item("U_AE")
  loc_137B1E8:   var_198 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_134)) = "E"), "Last Update : ", "entdt : "))
  loc_137B22D:   Me.LblLDt.Caption = CStr(var_198 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_137B279:   If (var_8C.RecordCount > 0) Then
  loc_137B27C:     Call Proc_19_54_F20C20()
  loc_137B281:     ' Referenced from: 137B71D
  loc_137B290:     If Not(var_8C.EOF) Then
  loc_137B2CC:       Set var_130 = Me.Txt
  loc_137B2D2:       Call 0.Method_Proc_19_55_137B75C0 (CInt(0), var_134)
  loc_137B2DA:       var_134.Tag = CStr(var_8C.Fields.Item("Code").Value)
  loc_137B329:       Set var_130 = Me.Txt
  loc_137B32F:       Call 0.Method_Proc_19_55_137B75C0 (CInt(0), var_134)
  loc_137B337:       var_134.Text = CStr(var_8C.Fields.Item("Name").Value)
  loc_137B383:       Set var_130 = Me.Txt
  loc_137B389:       Call 0.Method_Proc_19_55_137B75C0 (CInt(1), var_134)
  loc_137B391:       var_134.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("TaxBeforeDisc")))
  loc_137B3A9:       Set var_1F8 = Me.FGrid
  loc_137B3AC:       var_B4 = vbNullString
  loc_137B3C1:       var_D8 = CVar(CLng(var_90)) 'Long
  loc_137B3C9:       var_11C = CVar(CLng(0)) 'Long
  loc_137B3F9:       var_E8 = CVar(CStr(var_8C.Fields.Item("SNo").Value)) 'String
  loc_137B400:       LateIdCallSt
  loc_137B44F:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("TaxCode")), CVar(CLng(1)), CVar(CLng(var_90)), var_1F8, var_E8)) 'String
  loc_137B456:       LateIdCallSt
  loc_137B4A1:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("TaxName")), CVar(CLng(2)), CVar(CLng(var_90)), var_1F8, var_E8)) 'String
  loc_137B4A8:       LateIdCallSt
  loc_137B4F3:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CondApp")), CVar(CLng(8)), CVar(CLng(var_90)), var_1F8, var_E8)) 'String
  loc_137B4FA:       LateIdCallSt
  loc_137B52C:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_137B534:       var_148 = CVar(CLng(3)) 'Long
  loc_137B561:       var_12C = CVar(CStr(Format(CVar(var_8C.Fields.Item("Rate")), "0.0000"))) 'String
  loc_137B568:       LateIdCallSt
  loc_137B59E:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_137B5A6:       var_148 = CVar(CLng(5)) 'Long
  loc_137B5DA:       LateIdCallSt
  loc_137B629:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CompOperator")), CVar(CLng(6)), CVar(CLng(var_90)), var_1F8, CVar(CStr(Format(CVar(var_8C.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_137B630:       LateIdCallSt
  loc_137B662:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_137B66A:       var_148 = CVar(CLng(7)) 'Long
  loc_137B69E:       LateIdCallSt
  loc_137B6ED:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Nature")), CVar(CLng(4)), CVar(CLng(var_90)), var_1F8, CVar(CStr(Format(CVar(var_8C.Fields.Item("Limit1")), "0.00"))), 1, 1)) 'String
  loc_137B6F4:       LateIdCallSt
  loc_137B708:       Set var_1F8 = Nothing 
  loc_137B712:       var_90 = (var_90 + 1)
  loc_137B718:       var_8C.MoveNext
  loc_137B71D:       GoTo loc_137B281
  loc_137B720:     End If
  loc_137B722:     var_90 = 0
  loc_137B738:     Me.FGrid.FixedRows = 1
  loc_137B740:   End If
  loc_137B743: Else
  loc_137B743:   Call Proc_19_54_F20C20(var_90, var_90, var_1F8, var_E8, var_148)
  loc_137B748: End If
  loc_137B748: Call Proc_19_57_EF2F48(var_F8, var_1F8, var_E8)
  loc_137B752: Set var_8C = Nothing
  loc_137B755: Exit Sub
  loc_137B756: ' Referenced from: 137AF10
  loc_137B756: Proc_6_60_E63754(var_148)
  loc_137B75B: Exit Sub
End Sub

Public Sub Proc_19_56_E7B724(arg_C) 'E7B724
  'Data Table: 4B5480
  Dim var_98 As TextBox
  loc_E7B6D2: Set var_8C = Me.Txt
  loc_E7B6D8: Call 0.Method_Proc_19_56_E7B724C (var_8E, var_86)
  loc_E7B6E8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7B6FE:   Set var_8C = Me.Txt
  loc_E7B704:   Call 0.Method_Proc_19_56_E7B7240 (CInt(var_86), var_98)
  loc_E7B70C:   var_98.Enabled = arg_C
  loc_E7B71B: Next var_92 'Byte
  loc_E7B721: Exit Sub
End Sub

Public Sub Proc_19_57_EF2F48
  'Data Table: 4B5480
  loc_EF2E8C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EF2E9E:   Me.DGHelp.Visible = False
  loc_EF2EA6: End If
  loc_EF2EC2: If (CBool(Me.DGTaxMast.Visible) = &HFF) Then
  loc_EF2ED4:   Me.DGTaxMast.Visible = False
  loc_EF2EDC: End If
  loc_EF2EF7: If (Me.FrmList.Visible = &HFF) Then
  loc_EF2F06:   Me.FrmList.Visible = False
  loc_EF2F0E: End If
  loc_EF2F2A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF2F3C:   Me.FGPoint.Visible = False
  loc_EF2F44: End If
  loc_EF2F44: Exit Sub
End Sub

Public Sub Proc_19_58_EE276C(arg_C) 'EE276C
  'Data Table: 4B5480
  Dim var_8C As TextBox
  loc_EE26C0: Call Proc_19_57_EF2F48()
  loc_EE26D0: Set var_88 = Me.Txt
  loc_EE26D6: Call 0.Method_Proc_19_58_EE276C0 (CInt(0))
  loc_EE26FF: If (Proc_6_27_EA61EC(var_8C, "Name") = 0) Then
  loc_EE2702:   Exit Sub
  loc_EE2703: End If
  loc_EE273A: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_EE273D:   Call TopCtrl1_UnknownEvent_16()
  loc_EE2745: Else
  loc_EE274F:   Set var_88 = Me.Txt
  loc_EE2755:   Call 0.Method_Proc_19_58_EE276C0 (arg_C, var_8C)
  loc_EE275D:   var_8C.SetFocus
  loc_EE2769: End If
  loc_EE2769: Exit Sub
End Sub

Public Sub Proc_19_59_FC4328
  'Data Table: 4B5480
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC41AB: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_FC41B0:   var_92 = 2 'Byte
  loc_FC41B4: End If
  loc_FC41BD: Set var_98 = Me.TxtGrid
  loc_FC41C3: Call 0.Method_Proc_19_59_FC43280 (0, var_B0)
  loc_FC41E6: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC421A: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC423E:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC4241:     GoTo loc_FC4313
  loc_FC4244:   End If
  loc_FC4248:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC4272:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC427C:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC42B1:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC42D5:     MsgBox("Duplicate Sundry Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC42EE:     Set var_98 = Me.TxtGrid
  loc_FC42F4:     Call 0.Method_Proc_19_59_FC43280 (0, var_B0, CVar(CLng(var_92)))
  loc_FC42FC:     var_B0.SetFocus
  loc_FC430D:     Proc_19_59_FC4328 = 0
  loc_FC4313:     ' Referenced from: FC4241
  loc_FC4313:   End If
  loc_FC4316: Next var_D4 'Integer
  loc_FC4320: Proc_19_59_FC4328 = &HFF
End Sub
