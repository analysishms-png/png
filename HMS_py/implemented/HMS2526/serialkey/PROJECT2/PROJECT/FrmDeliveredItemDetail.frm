VERSION 5.00
Begin VB.Form FrmDeliveredItemDetail
  Caption = "Not Delivered Item"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4680
  ClientHeight = 3195
  Begin BtnEnh CmdFill
    Left = 6945
    Top = 585
    Width = 1230
    Height = 900
    TabIndex = 15
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 4680
    Height = 585
    Visible = 0   'False
    TabIndex = 14
  End
  Begin CheckBox Check1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 855
    Top = 1935
    Width = 450
    Height = 225
    TabIndex = 13
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Frame FrmList
    Left = 11145
    Top = 630
    Width = 1860
    Height = 1815
    Visible = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 15
      Top = 75
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 12
    End
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 2565
    Top = 690
    Width = 1635
    Height = 240
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    Left = 2565
    Top = 1200
    Width = 1635
    Height = 240
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 15
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 2565
    Top = 945
    Width = 3345
    Height = 240
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin TextBox TxtSearch
    BackColor = &HE0E0E0&
    Left = 9390
    Top = 2250
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    HideSelection = 0   'False
    Appearance = 0 'Flat
  End
  Begin DataGrid DGRestType
    Left = 13140
    Top = 540
    Width = 4230
    Height = 2325
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin MSFlexGrid FGPoint
    Left = 8595
    Top = 600
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 6
  End
  Begin MSHFlexGrid GridSel
    Left = 720
    Top = 1905
    Width = 15000
    Height = 6000
    TabIndex = 3
  End
  Begin BtnEnh CmdSave
    Left = 5520
    Top = 8250
    Width = 1530
    Height = 570
    TabIndex = 16
  End
  Begin BtnEnh CmdExit
    Left = 7185
    Top = 8250
    Width = 1530
    Height = 570
    TabIndex = 17
  End
  Begin Label LblName
    Caption = "Status"
    Index = 1
    ForeColor = &H0&
    Left = 945
    Top = 1215
    Width = 525
    Height = 225
    TabIndex = 10
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "For Date"
    Index = 0
    ForeColor = &H0&
    Left = 945
    Top = 690
    Width = 705
    Height = 225
    TabIndex = 9
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Outlet Name"
    Index = 2
    ForeColor = &H0&
    Left = 945
    Top = 945
    Width = 1035
    Height = 225
    TabIndex = 8
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Left = 780
    Top = 7920
    Width = 7680
    Height = 270
    TabIndex = 7
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FrmDeliveredItemDetail"

Private global_52 As Integer

Private Sub GridSel_UnknownEvent_A 'FD8E64
  'Data Table: 46B0E8
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim var_17C As Variant
  Dim var_19C As Long
  Dim var_1BC As Variant
  Dim var_86 As Integer
  loc_FD8CB2: If (Cancel = &HD) Then
  loc_FD8CC3:   Proc_303_0_FBACC8("	")
  loc_FD8CCB: End If
  loc_FD8CEA: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_FD8CED:   Exit Sub
  loc_FD8CEE: End If
  loc_FD8D18: If ((CLng(Cancel) = &H20) And (CLng(Me.GridSel.Col) = 0)) Then
  loc_FD8D2B:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_FD8D45:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_FD8D60:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FD8D65:   var_D4 = 0
  loc_FD8D97:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FD8D9C:   var_19C = 0
  loc_FD8DD7:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_FD8DDF:   Set var_1D0 = Me.GridSel
  loc_FD8DE5:   LateIdCallSt
  loc_FD8E1F:   var_86 = CInt((UBound(global_56, 1) + 1))
  loc_FD8E31:   ReDim Preserve global_56(0 To CLng(var_86))
  loc_FD8E59:   global_56(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_FD8E60: End If
  loc_FD8E60: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E5DA30
  'Data Table: 46B0E8
  loc_E5DA0B: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5DA0E:   Exit Sub
  loc_E5DA0F: End If
  loc_E5DA26: global_52 = CInt(CLng(Me.GridSel.Row))
  loc_E5DA2F: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '1028848
  'Data Table: 46B0E8
  Dim var_A0 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_160 As Variant
  Dim var_180 As Long
  Dim var_1A0 As Variant
  Dim var_86 As Integer
  loc_1028649: If ((CLng(Me.GridSel.Col) <> 0) Or (global_52 = 0)) Then
  loc_102864C:   Exit Sub
  loc_102864D: End If
  loc_10286A9: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_10286AC:   Exit Sub
  loc_10286AD: End If
  loc_10286DC: For var_BA = global_52 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_BA 'Integer
  loc_10286F5:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_1028710:   Me.GridSel.Col = 0
  loc_1028728:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_1028742:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_102874E:   var_CC = CVar(CLng(var_88)) 'Long
  loc_1028753:   var_EC = 0
  loc_1028776:   var_160 = CVar(CLng(var_88)) 'Long
  loc_102877B:   var_180 = 0
  loc_10287B6:   var_1A0 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_10287BE:   Set var_A0 = Me.GridSel
  loc_10287C4:   LateIdCallSt
  loc_10287F6:   var_86 = CInt((UBound(global_56, 1) + 1))
  loc_1028808:   ReDim Preserve global_56(0 To CLng(var_86))
  loc_1028830:   global_56(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_102883A: Next var_BA 'Integer
  loc_1028844: global_52 = 0
  loc_1028847: Exit Sub
End Sub

Private Sub CmdSave_UnknownEvent_9 'EE14D0
  'Data Table: 46B0E8
  Dim var_AC As Label
  Dim var_86 As Integer
  Dim unk_46B102 As Connection15
  loc_EE140C: On Error Goto loc_EE14B6
  loc_EE1418: Set var_AC = Me.CmdSave
  loc_EE141E: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_EE1433: Me.Label1.Caption = "Saving..."
  loc_EE1445: Me.Label1.Refresh
  loc_EE144F: var_86 = &HFF
  loc_EE145B: unk_46B102.BeginTrans var_B0
  loc_EE1476: Call Proc_209_21_10F1308(global_56, CByte(1))
  loc_EE1484: unk_46B102.CommitTrans
  loc_EE148B: var_86 = 0
  loc_EE149B: Me.Label1.Caption = "Save Completed."
  loc_EE14AD: Me.Label1.Refresh
  loc_EE14B5: Exit Sub
  loc_EE14B6: ' Referenced from: EE140C
  loc_EE14BC: If (var_86 = &HFF) Then
  loc_EE14C5:   unk_46B102.RollbackTrans
  loc_EE14CA: End If
  loc_EE14CA: Proc_6_60_E63754(var_86, var_C4)
  loc_EE14CF: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '120CF30
  'Data Table: 46B0E8
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim Me As Variant
  Dim var_88 As DataGrid
  loc_120CA80: On Error Goto loc_120CEEB
  loc_120CA8D: Set var_88 = Me.Txt
  loc_120CA93: Call 0.Method_Txt_GotFocus0 (Index)
  loc_120CAA1: Proc_6_74_E23240(var_8C)
  loc_120CAAD: Call Proc_209_22_EB8CEC(var_8C)
  loc_120CAB5: var_92 = Index
  loc_120CAC0: If (var_92 = CInt(0)) Then
  loc_120CAD0:   Set var_88 = Me.Txt
  loc_120CAD6:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_120CAF1:   Set var_90 = Me.Txt
  loc_120CAF7:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_120CAFF:   var_9C.SelLength = Len(var_8C.Text)
  loc_120CB1F:   Set var_88 = Me.Txt
  loc_120CB25:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_120CB2D:   var_98 = var_8C.Text
  loc_120CB3F:   Set var_90 = Me.Txt
  loc_120CB45:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_120CB4D:   var_9C.Tag = var_98
  loc_120CB63: Else
  loc_120CB6B:   If (var_92 = CInt(1)) Then
  loc_120CB7C:     Set var_88 = Me.Txt
  loc_120CB82:     Call 0.Method_Txt_GotFocus0 (CInt(1), var_8C)
  loc_120CBA1:     Me.DGRestType.Left = CVar(var_8C.Left)
  loc_120CBBD:     Set var_90 = Me.Txt
  loc_120CBC3:     Call 0.Method_Txt_GotFocus0 (CInt(1), var_9C)
  loc_120CBDE:     Set var_88 = Me.Txt
  loc_120CBE4:     Call 0.Method_Txt_GotFocus0 (CInt(1), var_8C)
  loc_120CBFC:     var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_120CC0B:     Me.DGRestType.Top = CVar(var_8C.Left)
  loc_120CC2C:     Me.Filter = 0
  loc_120CC3D:     Me.Filter = "RestType<>'Kitchen'"
  loc_120CC59:     If (Me.RecordCount > 0) Then
  loc_120CC67:       Set var_8C = Me.FGPoint
  loc_120CC7F:       Proc_6_137_1192FDC(Me.DGRestType, global_64, Index)
  loc_120CC8D:     End If
  loc_120CCDB:     Set var_88 = Me.Txt
  loc_120CCE1:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_120CCE9:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_120CD01:     If (var_8C Or (var_98 = vbNullString)) Then
  loc_120CD04:       Exit Sub
  loc_120CD05:     End If
  loc_120CD12:     Set var_88 = Me.Txt
  loc_120CD18:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_120CD20:     var_98 = var_8C.Text
  loc_120CD32:     var_B0 = "Name"
  loc_120CD6D:     If CBool(CVar(var_98) <> Me.Fields.Item(var_B0).Value) Then
  loc_120CD76:       Me.MoveFirst
  loc_120CD99:       Set var_88 = Me.Txt
  loc_120CD9F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_120CDA7:       0 = var_8C.Text
  loc_120CDC0:       Me.Find 1 & var_98 & "'", var_B0, var_92
  loc_120CDD5:     End If
  loc_120CDE8:     Me.DGRestType.Tag = CVar(CStr(Index))
  loc_120CDF6:   Else
  loc_120CDFE:     If (var_92 = CInt(2)) Then
  loc_120CE0E:       ReDim var_108(0 To 1)
  loc_120CE25:       var_108(0) = "Pending"
  loc_120CE34:       var_108(1) = "All"
  loc_120CE4B:       global_80 = Array(var_108)
  loc_120CE56:       Set var_9C = Me.ListView
  loc_120CE71:       Set var_8C = Me.Txt
  loc_120CE8B:       Set global_96 = Proc_6_66_F0048C(var_9C, var_8C, Index)
  loc_120CEA9:       Set var_88 = Me.Txt
  loc_120CEAF:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_120CEB7:       global_80 = var_8C.Text
  loc_120CEC9:       Set var_90 = Me.Txt
  loc_120CECF:       Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_98)
  loc_120CED7:       var_9C.Tag = 2
  loc_120CEEA:     End If
  loc_120CEEA:   End If
  loc_120CEEA: End If
  loc_120CEEA: Exit Sub
  loc_120CEEB: ' Referenced from: 120CA80
  loc_120CEF3: Set var_88 = Err()
  loc_120CEF9: Call 0.Method_arg_2C (var_98)
  loc_120CF1A: MsgBox(CVar(var_98), &H40, "Information", var_FC, var_128)
  loc_120CF2D: Exit Sub
  loc_120CF2E: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10DE4F0
  'Data Table: 46B0E8
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim var_8C As DataGrid
  loc_10DE20E: If (CLng(Shift) = &H1B) Then
  loc_10DE211:   Call Proc_209_22_EB8CEC()
  loc_10DE216:   Exit Sub
  loc_10DE217: End If
  loc_10DE21A: var_88 = KeyCode
  loc_10DE225: If (var_88 = CInt(1)) Then
  loc_10DE233:   Set var_A8 = Me.Txt
  loc_10DE245:   Set var_9C = Me.FGPoint
  loc_10DE250:   Set var_98 = Nothing
  loc_10DE27E:   Proc_6_69_134A630(Me.DGRestType, var_A8, KeyCode, global_64, Shift, 0)
  loc_10DE29D:   var_B0 = Me.RecordCount
  loc_10DE2ED:   If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10DE2F4:     Set var_98 = Me.DGRestType
  loc_10DE2FB:     Set var_90 = Me.FGPoint
  loc_10DE313:     Proc_6_138_106E830(var_98, global_64, KeyCode, var_90, 1)
  loc_10DE321:   End If
  loc_10DE324: Else
  loc_10DE32C:   If (var_88 = CInt(2)) Then
  loc_10DE351:     Set var_8C = Me.Txt
  loc_10DE357:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, var_98)
  loc_10DE35F:     var_9C = var_90.Left
  loc_10DE371:     Set var_98 = Me.Txt
  loc_10DE377:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_B4)
  loc_10DE37F:     0 = var_9C.Top
  loc_10DE391:     Set var_A4 = Me.Txt
  loc_10DE397:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_10DE39F:     var_B8 = var_A8.Height
  loc_10DE3B1:     Set var_AC = Me.Txt
  loc_10DE3B7:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_10DE3BF:     var_C0 = var_BC.Width
  loc_10DE40B:     Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_10DE42F:   End If
  loc_10DE42F: End If
  loc_10DE468: If ((CBool(Me.DGRestType.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_10DE489:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(0))) Then
  loc_10DE492:     Call Txt_Validate(KeyCode)
  loc_10DE49D:     If (var_86 = &HFF) Then
  loc_10DE4A0:       Exit Sub
  loc_10DE4A1:     End If
  loc_10DE4A7:     Proc_6_75_E5335C(Shift, arg_14, var_86, CInt(var_B0))
  loc_10DE4AF:   Else
  loc_10DE4C4:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10DE4CD:       Proc_6_75_E5335C(Shift, arg_14, CInt(((var_B4 + var_B8) + CDbl(&H19))))
  loc_10DE4D5:     Else
  loc_10DE4DF:       If (CLng(Shift) = &H26) Then
  loc_10DE4E8:         Proc_6_76_E533C8(Shift, arg_14, CInt(var_C0))
  loc_10DE4ED:       End If
  loc_10DE4ED:     End If
  loc_10DE4ED:   End If
  loc_10DE4ED: End If
  loc_10DE4ED: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE2970
  'Data Table: 46B0E8
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EE28BB: Proc_6_58_E06050(arg_10)
  loc_EE28C6: Proc_6_133_E7FB08(var_94)
  loc_EE28E3: If (KeyAscii = CInt(1)) Then
  loc_EE2902:   If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_EE292F:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, CInt(Me.DGRestType.Visible), "Name")
  loc_EE2961:     Proc_6_138_106E830(Me.DGRestType, global_64, KeyAscii, Me.FGPoint)
  loc_EE296F:   End If
  loc_EE296F: End If
  loc_EE296F: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E892B8
  'Data Table: 46B0E8
  loc_E8925A: If (KeyCode = CInt(2)) Then
  loc_E89278:   If (Me.FrmList.Visible = &HFF) Then
  loc_E892A7:     Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode)
  loc_E892B7:   End If
  loc_E892B7: End If
  loc_E892B7: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4C21C
  'Data Table: 46B0E8
  loc_E4C1FA: Set var_88 = Me.Txt
  loc_E4C200: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4C20E: Proc_6_73_E23294(var_8C)
  loc_E4C21A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1080848
  'Data Table: 46B0E8
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As TextBox
  loc_10805B4: On Error Goto loc_1080803
  loc_10805BA: var_86 = Cancel
  loc_10805C5: If (var_86 = CInt(0)) Then
  loc_10805D2:   Set var_8C = Me.Txt
  loc_10805D8:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10805F8:   Set var_98 = Me.Txt
  loc_10805FE:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1080606:   var_9C.Text = Proc_6_33_15125B8(var_90)
  loc_108061C: Else
  loc_1080624:   If (var_86 = CInt(1)) Then
  loc_1080634:     Set var_8C = Me.Txt
  loc_108063A:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1080659:     If (var_90.Text <> vbNullString) Then
  loc_1080697:       Set var_94 = Me.Txt
  loc_108069D:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_10806A5:       var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10806D8:       var_90 = Me.Fields.Item("Code")
  loc_10806F6:       Set var_94 = Me.Txt
  loc_10806FC:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1080704:       var_98.Tag = CStr(var_90.Value)
  loc_108071D:     Else
  loc_108072A:       Set var_8C = Me.Txt
  loc_1080730:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1080738:       var_90.Text = vbNullString
  loc_1080751:       Set var_8C = Me.Txt
  loc_1080757:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_108075F:       var_90.Tag = vbNullString
  loc_108076B:     End If
  loc_108076E:   Else
  loc_1080776:     If (var_86 = CInt(2)) Then
  loc_1080786:       Set var_8C = Me.Txt
  loc_108078C:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10807AB:       If (var_90.Text <> vbNullString) Then
  loc_10807CC:         var_A0 = Me.ListView.SelectedItem.Text
  loc_10807DE:         Set var_94 = Me.Txt
  loc_10807E4:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_10807EC:         var_98.Text = var_A0
  loc_1080802:       End If
  loc_1080802:     End If
  loc_1080802:   End If
  loc_1080802: End If
  loc_1080802: Exit Sub
  loc_1080803: ' Referenced from: 10805B4
  loc_108080B: Set var_8C = Err()
  loc_1080811: Call 0.Method_arg_2C (var_A0)
  loc_1080832: MsgBox(CVar(var_A0), &H40, "Information", var_F0, var_110)
  loc_1080845: Exit Sub
  loc_1080846: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_9 'F43214
  'Data Table: 46B0E8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4310B: Me.DGRestType.Visible = False
  loc_F4312A: If (Me.RecordCount > 0) Then
  loc_F43169:   Set var_B4 = Me.Txt
  loc_F4316F:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(1), var_B8)
  loc_F43177:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F431AA:   var_B0 = Me.Fields.Item("Code")
  loc_F431C9:   Set var_B4 = Me.Txt
  loc_F431CF:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(1), var_B8)
  loc_F431D7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F431ED: End If
  loc_F431F8: Set var_A8 = Me.Txt
  loc_F431FE: Call 0.Method_DGRestType_UnknownEvent_90 (CInt(1))
  loc_F43206: var_B0.SetFocus
  loc_F43212: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_1F 'E6E4B4
  'Data Table: 46B0E8
  loc_E6E472: Proc_6_153_E91D24(Me.DGRestType, arg_14)
  loc_E6E489: Set var_8C = Me.FGPoint
  loc_E6E4A5: Proc_6_138_106E830(Me.DGRestType, global_64, CInt(1))
  loc_E6E4B3: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1B2D0
  'Data Table: 46B0E8
  loc_E1B2C5: Me.Global.Unload Me
  loc_E1B2CD: Exit Sub
End Sub

Private Sub Form_Load() 'EF5464
  'Data Table: 46B0E8
  Dim var_94 As String
  Dim unk_46B102 As Connection15
  loc_EF53A0: On Error Goto loc_EF545C
  loc_EF53CC: var_94 = "SELECT Code,Name,RestType,DiscApp FROM Depart Where Code<>'" & MemVar_1F95078 & "RS' And (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name"
  loc_EF53D5: unk_46B102.Execute var_94, var_B4, -1
  loc_EF5408: CVarUnk
  loc_EF540D: VerifyVarObj
  loc_EF5413: Set var_B8 = Me.DGRestType
  loc_EF5419: LateIdStAd
  loc_EF5430: Set var_B8 = Me.CmdSave
  loc_EF5436: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_EF543E: Call Proc_209_18_12AE32C(var_B8, var_B8)
  loc_EF544A: Call 0.Method_arg_7C (CDbl(0))
  loc_EF5456: Call 0.Method_arg_74 (CDbl(0))
  loc_EF545B: Exit Sub
  loc_EF545C: ' Referenced from: EF53A0
  loc_EF545C: Proc_6_60_E63754(var_B8)
  loc_EF5461: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E29450
  'Data Table: 46B0E8
  loc_E29433: Set global_60 = Nothing
  loc_E29445: Set global_64 = Nothing
  loc_E2944C: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E293F4
  'Data Table: 46B0E8
  loc_E293CC: On Error Goto loc_E293EB
  loc_E293E3: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E293EB: ' Referenced from: E293CC
  loc_E293EB: Proc_6_60_E63754(Shift)
  loc_E293F0: Exit Sub
End Sub

Private Sub CmdFill_UnknownEvent_9 '104347C
  'Data Table: 46B0E8
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As Variant
  loc_1043230: Call Proc_209_22_EB8CEC()
  loc_1043240: Set var_88 = Me.Txt
  loc_1043246: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0))
  loc_104326F: If (Proc_6_27_EA61EC(var_8C, "From Date") = 0) Then
  loc_1043272:   Exit Sub
  loc_1043273: End If
  loc_1043281: Set var_88 = Me.Txt
  loc_1043287: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0), var_8C)
  loc_10432AB: Set var_90 = Me.Txt
  loc_10432B1: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0), var_98, var_9C)
  loc_10432B9: (CDate(var_8C.Text) > MemVar_1F950FC) = var_98.Text
  loc_10432DA: If (var_8C Or (CDate(var_9C) < MemVar_1F950F4)) Then
  loc_10432F6:   MsgBox("ForDate must be with in Financial Year", &H10, var_DC, var_FC, var_11C)
  loc_1043311:   Set var_88 = Me.Txt
  loc_1043317:   Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0))
  loc_104331F:   var_8C.SetFocus
  loc_104332B:   Exit Sub
  loc_104332C: End If
  loc_1043337: Set var_88 = Me.Txt
  loc_104333D: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_8C)
  loc_1043366: If (Proc_6_27_EA61EC(var_8C, "Outlet") = 0) Then
  loc_1043369:   Exit Sub
  loc_104336A: End If
  loc_1043375: Set var_88 = Me.Txt
  loc_104337B: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(2), var_8C)
  loc_10433A4: If (Proc_6_27_EA61EC(var_8C, "Status") = 0) Then
  loc_10433A7:   Exit Sub
  loc_10433A8: End If
  loc_10433B1: Set var_88 = Me.CmdFill
  loc_10433B7: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(False)
  loc_10433CC: Me.Label1.Caption = "Processing..."
  loc_10433DE: Me.Label1.Refresh
  loc_10433E6: Call Proc_209_18_12AE32C(var_8C)
  loc_10433EB: Call Proc_209_19_137FEE4()
  loc_1043403: Me.GridSel.Row = 1
  loc_104341E: Me.GridSel.Col = 0
  loc_104342A: Set var_88 = Me.GridSel
  loc_1043448: Me.Label1.Caption = vbNullString
  loc_104345A: Me.Label1.Refresh
  loc_104346A: Set var_88 = Me.CmdFill
  loc_1043470: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(True)
  loc_1043478: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E3AC84
  'Data Table: 46B0E8
  loc_E3AC78: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_E3AC7B:   Call DGRestType_UnknownEvent_9()
  loc_E3AC80: End If
  loc_E3AC80: Exit Sub
End Sub

Public Sub Proc_209_18_12AE32C
  'Data Table: 46B0E8
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_12ADD06: Me.GridSel.Rows = 1
  loc_12ADD1A: Me.GridSel.Cols = &HA
  loc_12ADD1F: var_98 = 0
  loc_12ADD2B: var_BC = CVar(CLng(0)) 'Long
  loc_12ADD30: var_DC = "O"
  loc_12ADD39: LateIdCallSt
  loc_12ADD44: var_98 = CVar(CLng(0)) 'Long
  loc_12ADD49: var_BC = &H258
  loc_12ADD55: LateIdCallSt
  loc_12ADD5D: var_98 = 0
  loc_12ADD69: var_BC = CVar(CLng(1)) 'Long
  loc_12ADD6E: var_DC = "Bill No"
  loc_12ADD77: LateIdCallSt
  loc_12ADD82: var_98 = CVar(CLng(1)) 'Long
  loc_12ADD8D: var_BC = CVar(CInt(1)) 'Integer
  loc_12ADD94: LateIdCallSt
  loc_12ADD9F: var_98 = CVar(CLng(1)) 'Long
  loc_12ADDAA: var_BC = CVar(CInt(1)) 'Integer
  loc_12ADDB1: LateIdCallSt
  loc_12ADDBC: var_98 = CVar(CLng(1)) 'Long
  loc_12ADDC1: var_BC = &H4B0
  loc_12ADDCD: LateIdCallSt
  loc_12ADDD5: var_98 = 0
  loc_12ADDE1: var_BC = CVar(CLng(2)) 'Long
  loc_12ADDE6: var_DC = "DocId"
  loc_12ADDEF: LateIdCallSt
  loc_12ADDFA: var_98 = CVar(CLng(2)) 'Long
  loc_12ADE05: var_BC = CVar(CInt(7)) 'Integer
  loc_12ADE0C: LateIdCallSt
  loc_12ADE17: var_98 = CVar(CLng(2)) 'Long
  loc_12ADE22: var_BC = CVar(CInt(7)) 'Integer
  loc_12ADE29: LateIdCallSt
  loc_12ADE34: var_98 = CVar(CLng(2)) 'Long
  loc_12ADE39: var_BC = 0
  loc_12ADE45: LateIdCallSt
  loc_12ADE4D: var_98 = 0
  loc_12ADE59: var_BC = CVar(CLng(3)) 'Long
  loc_12ADE5E: var_DC = "Bill Date"
  loc_12ADE67: LateIdCallSt
  loc_12ADE72: var_98 = CVar(CLng(3)) 'Long
  loc_12ADE7D: var_BC = CVar(CInt(1)) 'Integer
  loc_12ADE84: LateIdCallSt
  loc_12ADE8F: var_98 = CVar(CLng(3)) 'Long
  loc_12ADE9A: var_BC = CVar(CInt(1)) 'Integer
  loc_12ADEA1: LateIdCallSt
  loc_12ADEAC: var_98 = CVar(CLng(3)) 'Long
  loc_12ADEB1: var_BC = &H4B0
  loc_12ADEBD: LateIdCallSt
  loc_12ADEC5: var_98 = 0
  loc_12ADED1: var_BC = CVar(CLng(4)) 'Long
  loc_12ADED6: var_DC = "Bill Amount"
  loc_12ADEDF: LateIdCallSt
  loc_12ADEEA: var_98 = CVar(CLng(4)) 'Long
  loc_12ADEF5: var_BC = CVar(CInt(7)) 'Integer
  loc_12ADEFC: LateIdCallSt
  loc_12ADF07: var_98 = CVar(CLng(4)) 'Long
  loc_12ADF12: var_BC = CVar(CInt(7)) 'Integer
  loc_12ADF19: LateIdCallSt
  loc_12ADF24: var_98 = CVar(CLng(4)) 'Long
  loc_12ADF29: var_BC = &H4B0
  loc_12ADF35: LateIdCallSt
  loc_12ADF3D: var_98 = 0
  loc_12ADF49: var_BC = CVar(CLng(5)) 'Long
  loc_12ADF4E: var_DC = "Token No"
  loc_12ADF57: LateIdCallSt
  loc_12ADF62: var_98 = CVar(CLng(5)) 'Long
  loc_12ADF6D: var_BC = CVar(CInt(1)) 'Integer
  loc_12ADF74: LateIdCallSt
  loc_12ADF7F: var_98 = CVar(CLng(5)) 'Long
  loc_12ADF8A: var_BC = CVar(CInt(1)) 'Integer
  loc_12ADF91: LateIdCallSt
  loc_12ADF9C: var_98 = CVar(CLng(5)) 'Long
  loc_12ADFA1: var_BC = &H4B0
  loc_12ADFAD: LateIdCallSt
  loc_12ADFB5: var_98 = 0
  loc_12ADFC1: var_BC = CVar(CLng(6)) 'Long
  loc_12ADFC6: var_DC = "Payment Mode"
  loc_12ADFCF: LateIdCallSt
  loc_12ADFDA: var_98 = CVar(CLng(6)) 'Long
  loc_12ADFE5: var_BC = CVar(CInt(1)) 'Integer
  loc_12ADFEC: LateIdCallSt
  loc_12ADFF7: var_98 = CVar(CLng(6)) 'Long
  loc_12AE002: var_BC = CVar(CInt(1)) 'Integer
  loc_12AE009: LateIdCallSt
  loc_12AE014: var_98 = CVar(CLng(6)) 'Long
  loc_12AE019: var_BC = &H640
  loc_12AE025: LateIdCallSt
  loc_12AE02D: var_98 = 0
  loc_12AE039: var_BC = CVar(CLng(7)) 'Long
  loc_12AE03E: var_DC = "Delivered On"
  loc_12AE047: LateIdCallSt
  loc_12AE052: var_98 = CVar(CLng(7)) 'Long
  loc_12AE05D: var_BC = CVar(CInt(1)) 'Integer
  loc_12AE064: LateIdCallSt
  loc_12AE06F: var_98 = CVar(CLng(7)) 'Long
  loc_12AE07A: var_BC = CVar(CInt(1)) 'Integer
  loc_12AE081: LateIdCallSt
  loc_12AE08C: var_98 = CVar(CLng(7)) 'Long
  loc_12AE091: var_BC = &H6A4
  loc_12AE09D: LateIdCallSt
  loc_12AE0A5: var_98 = 0
  loc_12AE0B1: var_BC = CVar(CLng(8)) 'Long
  loc_12AE0B6: var_DC = "Delivery Boy"
  loc_12AE0BF: LateIdCallSt
  loc_12AE0CA: var_98 = CVar(CLng(8)) 'Long
  loc_12AE0D5: var_BC = CVar(CInt(1)) 'Integer
  loc_12AE0DC: LateIdCallSt
  loc_12AE0E7: var_98 = CVar(CLng(8)) 'Long
  loc_12AE0F2: var_BC = CVar(CInt(1)) 'Integer
  loc_12AE0F9: LateIdCallSt
  loc_12AE104: var_98 = CVar(CLng(8)) 'Long
  loc_12AE109: var_BC = &H960
  loc_12AE115: LateIdCallSt
  loc_12AE11D: var_98 = 0
  loc_12AE129: var_BC = CVar(CLng(9)) 'Long
  loc_12AE12E: var_DC = "Remark"
  loc_12AE137: LateIdCallSt
  loc_12AE142: var_98 = CVar(CLng(9)) 'Long
  loc_12AE14D: var_BC = CVar(CInt(1)) 'Integer
  loc_12AE154: LateIdCallSt
  loc_12AE15F: var_98 = CVar(CLng(9)) 'Long
  loc_12AE16A: var_BC = CVar(CInt(1)) 'Integer
  loc_12AE171: LateIdCallSt
  loc_12AE17C: var_98 = CVar(CLng(9)) 'Long
  loc_12AE181: var_BC = &HDAC
  loc_12AE18D: LateIdCallSt
  loc_12AE195: var_98 = vbNullString
  loc_12AE19F: Set var_AC = Me.GridSel
  loc_12AE1C3: Me.GridSel.FixedRows = 1
  loc_12AE1CD: Set var_88 = Nothing 
  loc_12AE1E1: ReDim Preserve global_56(0 To 0)
  loc_12AE1F8: global_56(0) = 0
  loc_12AE20C: Me.GridSel.Height = CVar(CDbl(6000))
  loc_12AE227: Me.GridSel.Width = CVar(CDbl(15000))
  loc_12AE22F: var_98 = 0
  loc_12AE260: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H1E))
  loc_12AE26F: var_98 = 0
  loc_12AE2A0: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &H1E))
  loc_12AE2D1: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&HF))
  loc_12AE302: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&HF))
  loc_12AE321: Me.Check1.Value = CInt(0)
  loc_12AE329: Exit Sub
End Sub

Public Sub Proc_209_19_137FEE4
  'Data Table: 46B0E8
  Dim var_C8 As Variant
  Dim var_DC As String
  Dim var_D8 As Variant
  Dim var_104 As Variant
  Dim var_10C As TextBox
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  Dim unk_46B102 As Connection15
  Dim var_90 As Recordset15
  Dim var_94 As Variant
  Dim var_B8 As Variant
  Dim var_98 As Variant
  Dim var_88 As Recordset15
  Dim var_108 As MSHFlexGrid
  Dim var_1A4 As Variant
  Dim var_1E4 As Variant
  loc_137F687: Set var_94 = Me.Txt
  loc_137F68D: Call 0.Method_Proc_209_19_137FEE40 (CInt(2))
  loc_137F69C: var_B8 = Trim(CVar(var_98))
  loc_137F6B6: If (var_B8 = "Pending") Then
  loc_137F6BC:   var_8C = " DeliveredYN <> 'Y' And "
  loc_137F6BF: End If
  loc_137F6D3: var_DC = "Select S.DocId,P.PayType,DB.Name DeliBoy,AD.Ddate,AD.Remark From Sale1 S Left Join PayCharge P on P.DocId=S.DocId Left Join AssignDelivery AD On AD.DocId=S.DocId Left Join DeliveryBoy DB On AD.DeliBoy = DB.Code Where IsNull(P.PayType,'') Not In('PPOS','IPOS') And IsNull(P.PayCode,'') Not In('" & MemVar_1F95078
  loc_137F6F6: Set var_94 = Me.Txt
  loc_137F6FC: Call 0.Method_Proc_209_19_137FEE40 (CInt(0), var_98, CVar(var_DC & "ROOM','" & MemVar_1F95078 & "TOUT') And S.VDate ="), var_1B4)
  loc_137F70B: Proc_6_7_F26918(var_B8, CVar(var_98), -1)
  loc_137F71C: var_104 = var_1B8 & var_B8 & " And S.RestCode='" 
  loc_137F72E: Set var_108 = Me.Txt
  loc_137F734: Call 0.Method_Proc_209_19_137FEE40 (CInt(1), var_10C, var_110)
  loc_137F73C: var_104 = var_10C.Tag
  loc_137F771: unk_46B102.Execute CStr(var_98 & CVar(var_110) & "' And S.Logsite_Code='" & CVar(MemVar_1F95078) & "' Order by S.Vno"), , 
  loc_137F7C2: If (var_1B8.RecordCount = 0) Then
  loc_137F7D8:   Me.GridSel.Rows = 2
  loc_137F7E9:   Set var_94 = Me.CmdSave
  loc_137F7EF:   Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_137F7FC:   Set var_90 = Nothing
  loc_137F7FF:   Exit Sub
  loc_137F803: Else
  loc_137F80B:   Set var_94 = Me.CmdSave
  loc_137F811:   Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_137F819: End If
  loc_137F82C: Me.GridSel.Row = 1
  loc_137F83C: Set var_94 = Me.CmdSave
  loc_137F842: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_137F84A: ' Referenced from: 137FEBC
  loc_137F859: If Not(var_90.EOF) Then
  loc_137F8A4:   var_D8 = CVar("Select Vno,Vdate,NetAmt as BillAmount,DocId,TokenNo,DeliveredYN From Sale1 Where " & var_8C & " DocId='") & var_90.Fields.Item(0).Value 
  loc_137F8BB:   unk_46B102.Execute CStr(var_D8 & "'"), var_104, -1
  loc_137F8C6:   Set var_88 = var_108
  loc_137F8FA:   If (var_88.RecordCount = 1) Then
  loc_137F901:     Set var_1C4 = Me.GridSel
  loc_137F904:     var_C8 = vbNullString
  loc_137F953:     var_1A4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_137F95B:     var_1E4 = CVar(CLng(0)) 'Long
  loc_137F991:     var_120 = CVar(CStr(IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("DeliveredYN")), GridSel.DispID_10000) = "Y"), "ü", vbNullString))) 'String
  loc_137F998:     LateIdCallSt
  loc_137F9D2:     var_140 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_137F9DA:     var_180 = CVar(CLng(1)) 'Long
  loc_137FA0A:     var_D8 = CVar(CStr(var_88.Fields.Item("VNo").Value)) 'String
  loc_137FA11:     LateIdCallSt
  loc_137FA73:     var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DocID")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_1C4, var_D8, CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_137FA7A:     LateIdCallSt
  loc_137FAD0:     var_160 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_137FAD8:     var_1A4 = CVar(CLng(3)) 'Long
  loc_137FAF5:     var_B8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("VDate")), var_1C4, "dd/mmm/yyyy", var_1C4, var_120)) 'String
  loc_137FB0B:     LateIdCallSt
  loc_137FB52:     Proc_6_39_E7D3A0(var_B8, CVar(var_88.Fields.Item("BillAmount")), var_1C4, CVar(CStr(Format(var_B8, "dd/mmm/yyyy"))), 1, 1)
  loc_137FB6A:     var_160 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_137FBA2:     LateIdCallSt
  loc_137FBE6:     Proc_6_39_E7D3A0(var_B8, CVar(var_88.Fields.Item("TokenNo")), var_1C4, CVar(CStr(Format(var_B8, "0.00"))), 1, 1, CVar(CLng(4)))
  loc_137FC36:     LateIdCallSt
  loc_137FC9C:     var_D8 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("PayType")), CVar(CLng(6)), CVar(CLng(Me.GridSel.Row)), var_1C4, CVar(CStr(Format(Me.GridSel.Row, "0"))), 1, 1)) 'String
  loc_137FCA3:     LateIdCallSt
  loc_137FCF9:     var_160 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_137FD1E:     var_B8 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("DDate")), var_1C4, "dd/mmm/yyyy hh:nn", CVar(CLng(5)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_137FD34:     LateIdCallSt
  loc_137FD9D:     var_D8 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("DeliBoy")), CVar(CLng(8)), CVar(CLng(Me.GridSel.Row)), var_1C4, CVar(CStr(Format(Me.GridSel.Row, "dd/mmm/yyyy hh:nn"))), 1, 1)) 'String
  loc_137FDA4:     LateIdCallSt
  loc_137FE04:     var_D8 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Remark")), CVar(CLng(9)), CVar(CLng(Me.GridSel.Row)), var_1C4, var_D8, CVar(CLng(7)))) 'String
  loc_137FE0B:     LateIdCallSt
  loc_137FE25:     Set var_1C4 = Nothing 
  loc_137FE3B:     Me.GridSel.Col = CVar(CLng(0))
  loc_137FE53:     Me.GridSel.CellFontName = "WINGDINGS"
  loc_137FE6D:     Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_137FE7A:     Set var_88 = Nothing
  loc_137FE96:     var_C8 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_137FEA5:     Me.GridSel.Row = CVar(CDbl(&HE))
  loc_137FEB4:   End If
  loc_137FEB7:   var_90.MoveNext
  loc_137FEBC:   GoTo loc_137F84A
  loc_137FEBF: End If
  loc_137FED2: Me.GridSel.FixedRows = 1
  loc_137FEDF: Set var_90 = Nothing
  loc_137FEE2: Exit Sub
End Sub

Public Sub Proc_209_20_EC92B4(arg_C, arg_10) 'EC92B4
  'Data Table: 46B0E8
  Dim unk_46B102 As Connection15
  loc_EC9291: unk_46B102.Execute CStr("Update Sale1 Set DeliveredYN='" & IIf((arg_10 = "ü"), "Y", "N") & "' Where DocID='" & CVar(arg_C) & "'"), var_188, -1
  loc_EC92B1: Exit Sub
End Sub

Public Sub Proc_209_21_10F1308(arg_C, arg_10) '10F1308
  'Data Table: 46B0E8
  Dim var_96 As Integer
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_9A As Integer
  Dim var_C4 As Variant
  Dim var_E4 As Long
  Dim var_108 As Variant
  Dim var_128 As Variant
  loc_10F0FF2: On Error Goto loc_10F12FB
  loc_10F0FF7: var_96 = 0
  loc_10F1003: If (CInt(arg_10) = 1) Then
  loc_10F102B:   For var_B4 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_98 = var_B4 'Integer
  loc_10F1034:     var_9A = var_98
  loc_10F103B:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_10F1040:     var_E4 = 2
  loc_10F106F:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_10F1076:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_10F107B:       var_E4 = 2
  loc_10F109E:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_10F10A6:       var_128 = CVar(CLng(0)) 'Long
  loc_10F10CC:       Call Proc_209_20_EC92B4(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)))
  loc_10F10E8:       var_96 = &HFF
  loc_10F10EB:     End If
  loc_10F10EE:   Next var_B4 'Integer
  loc_10F10F6: Else
  loc_10F10FE:   CRefVarAry
  loc_10F1106:   For var_154 = 0 To CInt(UBound(arg_C, 1)):   var_98 = var_154 'Integer
  loc_10F1127:     If (arg_C(var_98) = 0) Then
  loc_10F112A:       GoTo loc_10F1233
  loc_10F112D:     End If
  loc_10F113E:     var_9A = CInt(arg_C(var_98))
  loc_10F1148:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_10F114D:     var_E4 = 0
  loc_10F117C:     If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_10F1183:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_10F1188:       var_E4 = 2
  loc_10F11B7:       If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_10F11BE:         var_C4 = CVar(CLng(var_9A)) 'Long
  loc_10F11C3:         var_E4 = 2
  loc_10F11E6:         var_108 = CVar(CLng(var_9A)) 'Long
  loc_10F11EE:         var_128 = CVar(CLng(0)) 'Long
  loc_10F1214:         Call Proc_209_20_EC92B4(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)))
  loc_10F1230:         var_96 = &HFF
  loc_10F1233:         ' Referenced from:   10F112A
  loc_10F1233:       End If
  loc_10F1233:     End If
  loc_10F1236:   Next var_154 'Integer
  loc_10F123B: End If
  loc_10F124B: If ((var_96 = 0) And (CInt(arg_10) = 0)) Then
  loc_10F124E:   var_C4 = 0
  loc_10F1257:   var_E4 = 1
  loc_10F126A:   var_B0 = Me.GridSel.TextMatrix)
  loc_10F1292:   MsgBox(CVar("Select " & CStr(var_B0)), &H40, var_164, var_174, var_184)
  loc_10F12BD:   Me.GridSel.Row = 1
  loc_10F12C5:   var_C4 = 0
  loc_10F12D8:   Me.GridSel.Col = var_C4
  loc_10F12E4:   Set var_A0 = Me.GridSel
  loc_10F12F5: End If
  loc_10F12F5: Proc_209_21_10F1308 = GridSel.DispID_8001
  loc_10F12FB: ' Referenced from: 10F0FF2
  loc_10F12FB: Proc_6_60_E63754(var_B0, var_E4)
  loc_10F1300: Proc_209_21_10F1308 = var_C4
End Sub

Public Sub Proc_209_22_EB8CEC
  'Data Table: 46B0E8
  loc_EB8C68: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_EB8C7A:   Me.DGRestType.Visible = False
  loc_EB8C82: End If
  loc_EB8C9E: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB8CB0:   Me.FGPoint.Visible = False
  loc_EB8CB8: End If
  loc_EB8CD3: If (Me.FrmList.Visible = &HFF) Then
  loc_EB8CE2:   Me.FrmList.Visible = False
  loc_EB8CEA: End If
  loc_EB8CEA: Exit Sub
End Sub
