VERSION 5.00
Begin VB.Form MemSelectCategory
  Caption = "Select Member Category"
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
  LockControls = -1  'True
  Begin BtnEnh CmdFill
    Left = 6945
    Top = 585
    Width = 1230
    Height = 900
    Visible = 0   'False
    TabIndex = 15
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 4680
    Height = 585
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
    Visible = 0   'False
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
    Visible = 0   'False
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
    Width = 5500
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
    Visible = 0   'False
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
    Visible = 0   'False
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

Attribute VB_Name = "MemSelectCategory"

Private global_52 As Integer

Private Sub GridSel_UnknownEvent_A 'FDAFE4
  'Data Table: 484AE4
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim var_F8 As Variant
  Dim var_17C As Variant
  Dim var_19C As Long
  Dim var_1BC As Variant
  Dim var_86 As Integer
  loc_FDAE32: If (KeyCode = &HD) Then
  loc_FDAE43:   Proc_303_0_FBACC8("	")
  loc_FDAE4B: End If
  loc_FDAE6A: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_FDAE6D:   Exit Sub
  loc_FDAE6E: End If
  loc_FDAE98: If ((CLng(KeyCode) = &H20) And (CLng(Me.GridSel.Col) = 0)) Then
  loc_FDAEAB:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_FDAEC5:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_FDAEE0:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FDAEE5:   var_D4 = 0
  loc_FDAF17:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FDAF1C:   var_19C = 0
  loc_FDAF57:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_FDAF5F:   Set var_1D0 = Me.GridSel
  loc_FDAF65:   LateIdCallSt
  loc_FDAF9F:   var_86 = CInt((UBound(global_56, 1) + 1))
  loc_FDAFB1:   ReDim Preserve global_56(0 To CLng(var_86))
  loc_FDAFD9:   global_56(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_FDAFE0: End If
  loc_FDAFE0: Exit Sub
  loc_FDAFE1: var_F8 = var_86
End Sub

Private Sub GridSel_UnknownEvent_E 'E5E364
  'Data Table: 484AE4
  loc_E5E33F: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5E342:   Exit Sub
  loc_E5E343: End If
  loc_E5E35A: global_52 = CInt(CLng(Me.GridSel.Row))
  loc_E5E363: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '1028350
  'Data Table: 484AE4
  Dim var_A0 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_160 As Variant
  Dim var_180 As Long
  Dim var_1A0 As Variant
  Dim var_86 As Integer
  loc_1028151: If ((CLng(Me.GridSel.Col) <> 0) Or (global_52 = 0)) Then
  loc_1028154:   Exit Sub
  loc_1028155: End If
  loc_10281B1: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_10281B4:   Exit Sub
  loc_10281B5: End If
  loc_10281E4: For var_BA = global_52 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_BA 'Integer
  loc_10281FD:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_1028218:   Me.GridSel.Col = 0
  loc_1028230:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_102824A:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1028256:   var_CC = CVar(CLng(var_88)) 'Long
  loc_102825B:   var_EC = 0
  loc_102827E:   var_160 = CVar(CLng(var_88)) 'Long
  loc_1028283:   var_180 = 0
  loc_10282BE:   var_1A0 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_10282C6:   Set var_A0 = Me.GridSel
  loc_10282CC:   LateIdCallSt
  loc_10282FE:   var_86 = CInt((UBound(global_56, 1) + 1))
  loc_1028310:   ReDim Preserve global_56(0 To CLng(var_86))
  loc_1028338:   global_56(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_1028342: Next var_BA 'Integer
  loc_102834C: global_52 = 0
  loc_102834F: Exit Sub
End Sub

Private Sub CmdSave_UnknownEvent_9 'EF9F98
  'Data Table: 484AE4
  Dim var_AC As Variant
  Dim var_86 As Integer
  Dim unk_484AEE As Connection15
  loc_EF9EBC: On Error Goto loc_EF9F7C
  loc_EF9EC8: Set var_AC = Me.CmdSave
  loc_EF9ECE: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_EF9EE3: Me.Label1.Caption = "Saving..."
  loc_EF9EF5: Me.Label1.Refresh
  loc_EF9EFF: var_86 = &HFF
  loc_EF9F0B: unk_484AEE.BeginTrans var_B0
  loc_EF9F39: Call Proc_340_30_10F0F98(global_56, CByte(Me.Check1.Value))
  loc_EF9F4A: unk_484AEE.CommitTrans
  loc_EF9F51: var_86 = 0
  loc_EF9F61: Me.Label1.Caption = "Save Completed."
  loc_EF9F73: Me.Label1.Refresh
  loc_EF9F7B: Exit Sub
  loc_EF9F7C: ' Referenced from: EF9EBC
  loc_EF9F82: If (var_86 = &HFF) Then
  loc_EF9F8B:   unk_484AEE.RollbackTrans
  loc_EF9F90: End If
  loc_EF9F90: Proc_6_60_E63754(var_86, var_C4)
  loc_EF9F95: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '120CA14
  'Data Table: 484AE4
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim Me As Variant
  Dim var_88 As DataGrid
  loc_120C564: On Error Goto loc_120C9CF
  loc_120C571: Set var_88 = Me.Txt
  loc_120C577: Call 0.Method_Txt_GotFocus0 (Index)
  loc_120C585: Proc_6_74_E23240(var_8C)
  loc_120C591: Call Proc_340_31_EB7A5C(var_8C)
  loc_120C599: var_92 = Index
  loc_120C5A4: If (var_92 = CInt(0)) Then
  loc_120C5B4:   Set var_88 = Me.Txt
  loc_120C5BA:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_120C5D5:   Set var_90 = Me.Txt
  loc_120C5DB:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_120C5E3:   var_9C.SelLength = Len(var_8C.Text)
  loc_120C603:   Set var_88 = Me.Txt
  loc_120C609:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_120C611:   var_98 = var_8C.Text
  loc_120C623:   Set var_90 = Me.Txt
  loc_120C629:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_120C631:   var_9C.Tag = var_98
  loc_120C647: Else
  loc_120C64F:   If (var_92 = CInt(1)) Then
  loc_120C660:     Set var_88 = Me.Txt
  loc_120C666:     Call 0.Method_Txt_GotFocus0 (CInt(1), var_8C)
  loc_120C685:     Me.DGRestType.Left = CVar(var_8C.Left)
  loc_120C6A1:     Set var_90 = Me.Txt
  loc_120C6A7:     Call 0.Method_Txt_GotFocus0 (CInt(1), var_9C)
  loc_120C6C2:     Set var_88 = Me.Txt
  loc_120C6C8:     Call 0.Method_Txt_GotFocus0 (CInt(1), var_8C)
  loc_120C6E0:     var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_120C6EF:     Me.DGRestType.Top = CVar(var_8C.Left)
  loc_120C710:     Me.Filter = 0
  loc_120C721:     Me.Filter = "RestType<>'Kitchen'"
  loc_120C73D:     If (Me.RecordCount > 0) Then
  loc_120C74B:       Set var_8C = Me.FGPoint
  loc_120C763:       Proc_6_137_1192FDC(Me.DGRestType, global_64, Index)
  loc_120C771:     End If
  loc_120C7BF:     Set var_88 = Me.Txt
  loc_120C7C5:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_120C7CD:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_120C7E5:     If (var_8C Or (var_98 = vbNullString)) Then
  loc_120C7E8:       Exit Sub
  loc_120C7E9:     End If
  loc_120C7F6:     Set var_88 = Me.Txt
  loc_120C7FC:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_120C804:     var_98 = var_8C.Text
  loc_120C816:     var_B0 = "Name"
  loc_120C851:     If CBool(CVar(var_98) <> Me.Fields.Item(var_B0).Value) Then
  loc_120C85A:       Me.MoveFirst
  loc_120C87D:       Set var_88 = Me.Txt
  loc_120C883:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_120C88B:       0 = var_8C.Text
  loc_120C8A4:       Me.Find 1 & var_98 & "'", var_B0, var_92
  loc_120C8B9:     End If
  loc_120C8CC:     Me.DGRestType.Tag = CVar(CStr(Index))
  loc_120C8DA:   Else
  loc_120C8E2:     If (var_92 = CInt(2)) Then
  loc_120C8F2:       ReDim var_108(0 To 1)
  loc_120C909:       var_108(0) = "Article_26(a)"
  loc_120C918:       var_108(1) = "Article_23"
  loc_120C92F:       global_80 = Array(var_108)
  loc_120C93A:       Set var_9C = Me.ListView
  loc_120C955:       Set var_8C = Me.Txt
  loc_120C96F:       Set global_96 = Proc_6_66_F0048C(var_9C, var_8C, Index)
  loc_120C98D:       Set var_88 = Me.Txt
  loc_120C993:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_120C99B:       global_80 = var_8C.Text
  loc_120C9AD:       Set var_90 = Me.Txt
  loc_120C9B3:       Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_98)
  loc_120C9BB:       var_9C.Tag = 2
  loc_120C9CE:     End If
  loc_120C9CE:   End If
  loc_120C9CE: End If
  loc_120C9CE: Exit Sub
  loc_120C9CF: ' Referenced from: 120C564
  loc_120C9D7: Set var_88 = Err()
  loc_120C9DD: Call 0.Method_arg_2C (var_98)
  loc_120C9FE: MsgBox(CVar(var_98), &H40, "Information", var_FC, var_128)
  loc_120CA11: Exit Sub
  loc_120CA12: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10DBCD0
  'Data Table: 484AE4
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim var_8C As DataGrid
  loc_10DB9EE: If (CLng(Shift) = &H1B) Then
  loc_10DB9F1:   Call Proc_340_31_EB7A5C()
  loc_10DB9F6:   Exit Sub
  loc_10DB9F7: End If
  loc_10DB9FA: var_88 = KeyCode
  loc_10DBA05: If (var_88 = CInt(1)) Then
  loc_10DBA13:   Set var_A8 = Me.Txt
  loc_10DBA25:   Set var_9C = Me.FGPoint
  loc_10DBA30:   Set var_98 = Nothing
  loc_10DBA5E:   Proc_6_69_134A630(Me.DGRestType, var_A8, KeyCode, global_64, Shift, 0)
  loc_10DBA7D:   var_B0 = Me.RecordCount
  loc_10DBACD:   If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10DBAD4:     Set var_98 = Me.DGRestType
  loc_10DBADB:     Set var_90 = Me.FGPoint
  loc_10DBAF3:     Proc_6_138_106E830(var_98, global_64, KeyCode, var_90, 1)
  loc_10DBB01:   End If
  loc_10DBB04: Else
  loc_10DBB0C:   If (var_88 = CInt(2)) Then
  loc_10DBB31:     Set var_8C = Me.Txt
  loc_10DBB37:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, var_98)
  loc_10DBB3F:     var_9C = var_90.Left
  loc_10DBB51:     Set var_98 = Me.Txt
  loc_10DBB57:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_B4)
  loc_10DBB5F:     0 = var_9C.Top
  loc_10DBB71:     Set var_A4 = Me.Txt
  loc_10DBB77:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_10DBB7F:     var_B8 = var_A8.Height
  loc_10DBB91:     Set var_AC = Me.Txt
  loc_10DBB97:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_10DBB9F:     var_C0 = var_BC.Width
  loc_10DBBEB:     Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_10DBC0F:   End If
  loc_10DBC0F: End If
  loc_10DBC48: If ((CBool(Me.DGRestType.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_10DBC69:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(0))) Then
  loc_10DBC72:     Call Txt_Validate(KeyCode)
  loc_10DBC7D:     If (var_86 = &HFF) Then
  loc_10DBC80:       Exit Sub
  loc_10DBC81:     End If
  loc_10DBC87:     Proc_6_75_E5335C(Shift, arg_14, var_86, CInt(var_B0))
  loc_10DBC8F:   Else
  loc_10DBCA4:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10DBCAD:       Proc_6_75_E5335C(Shift, arg_14, CInt(((var_B4 + var_B8) + CDbl(&H19))))
  loc_10DBCB5:     Else
  loc_10DBCBF:       If (CLng(Shift) = &H26) Then
  loc_10DBCC8:         Proc_6_76_E533C8(Shift, arg_14, CInt(var_C0))
  loc_10DBCCD:       End If
  loc_10DBCCD:     End If
  loc_10DBCCD:   End If
  loc_10DBCCD: End If
  loc_10DBCCD: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE08F4
  'Data Table: 484AE4
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EE083F: Proc_6_58_E06050(arg_10)
  loc_EE084A: Proc_6_133_E7FB08(var_94)
  loc_EE0867: If (KeyAscii = CInt(1)) Then
  loc_EE0886:   If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_EE08B3:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, CInt(Me.DGRestType.Visible), "Name")
  loc_EE08E5:     Proc_6_138_106E830(Me.DGRestType, global_64, KeyAscii, Me.FGPoint)
  loc_EE08F3:   End If
  loc_EE08F3: End If
  loc_EE08F3: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E887F8
  'Data Table: 484AE4
  loc_E8879A: If (KeyCode = CInt(2)) Then
  loc_E887B8:   If (Me.FrmList.Visible = &HFF) Then
  loc_E887E7:     Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode)
  loc_E887F7:   End If
  loc_E887F7: End If
  loc_E887F7: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E5031C
  'Data Table: 484AE4
  loc_E502FA: Set var_88 = Me.Txt
  loc_E50300: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E5030E: Proc_6_73_E23294(var_8C)
  loc_E5031A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '107FF84
  'Data Table: 484AE4
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As TextBox
  loc_107FCF0: On Error Goto loc_107FF3F
  loc_107FCF6: var_86 = Cancel
  loc_107FD01: If (var_86 = CInt(0)) Then
  loc_107FD0E:   Set var_8C = Me.Txt
  loc_107FD14:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_107FD34:   Set var_98 = Me.Txt
  loc_107FD3A:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_107FD42:   var_9C.Text = Proc_6_33_15125B8(var_90)
  loc_107FD58: Else
  loc_107FD60:   If (var_86 = CInt(1)) Then
  loc_107FD70:     Set var_8C = Me.Txt
  loc_107FD76:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_107FD95:     If (var_90.Text <> vbNullString) Then
  loc_107FDD3:       Set var_94 = Me.Txt
  loc_107FDD9:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_107FDE1:       var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_107FE14:       var_90 = Me.Fields.Item("Code")
  loc_107FE32:       Set var_94 = Me.Txt
  loc_107FE38:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_107FE40:       var_98.Tag = CStr(var_90.Value)
  loc_107FE59:     Else
  loc_107FE66:       Set var_8C = Me.Txt
  loc_107FE6C:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_107FE74:       var_90.Text = vbNullString
  loc_107FE8D:       Set var_8C = Me.Txt
  loc_107FE93:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_107FE9B:       var_90.Tag = vbNullString
  loc_107FEA7:     End If
  loc_107FEAA:   Else
  loc_107FEB2:     If (var_86 = CInt(2)) Then
  loc_107FEC2:       Set var_8C = Me.Txt
  loc_107FEC8:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_107FEE7:       If (var_90.Text <> vbNullString) Then
  loc_107FF08:         var_A0 = Me.ListView.SelectedItem.Text
  loc_107FF1A:         Set var_94 = Me.Txt
  loc_107FF20:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_107FF28:         var_98.Text = var_A0
  loc_107FF3E:       End If
  loc_107FF3E:     End If
  loc_107FF3E:   End If
  loc_107FF3E: End If
  loc_107FF3E: Exit Sub
  loc_107FF3F: ' Referenced from: 107FCF0
  loc_107FF47: Set var_8C = Err()
  loc_107FF4D: Call 0.Method_arg_2C (var_A0)
  loc_107FF6E: MsgBox(CVar(var_A0), &H40, "Information", var_F0, var_110)
  loc_107FF81: Exit Sub
  loc_107FF82: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_9 'F35CF4
  'Data Table: 484AE4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F35BEB: Me.DGRestType.Visible = False
  loc_F35C0A: If (Me.RecordCount > 0) Then
  loc_F35C49:   Set var_B4 = Me.Txt
  loc_F35C4F:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(1), var_B8)
  loc_F35C57:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F35C8A:   var_B0 = Me.Fields.Item("Code")
  loc_F35CA9:   Set var_B4 = Me.Txt
  loc_F35CAF:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(1), var_B8)
  loc_F35CB7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F35CCD: End If
  loc_F35CD8: Set var_A8 = Me.Txt
  loc_F35CDE: Call 0.Method_DGRestType_UnknownEvent_90 (CInt(1))
  loc_F35CE6: var_B0.SetFocus
  loc_F35CF2: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_1F 'E73510
  'Data Table: 484AE4
  loc_E734CE: Proc_6_153_E91D24(Me.DGRestType, arg_14)
  loc_E734E5: Set var_8C = Me.FGPoint
  loc_E73501: Proc_6_138_106E830(Me.DGRestType, global_64, CInt(1))
  loc_E7350F: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1C830
  'Data Table: 484AE4
  loc_E1C825: Me.Global.Unload Me
  loc_E1C82D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F61664
  'Data Table: 484AE4
  Dim var_88 As Variant
  Dim var_B4 As TextBox
  loc_F61538: On Error Goto loc_F6163C
  loc_F6153B: Call Proc_340_31_EB7A5C()
  loc_F6154D: Me.Label1.Caption = "Processing..."
  loc_F6155F: Me.Label1.Refresh
  loc_F61567: Call Proc_340_27_10C69EC()
  loc_F6156C: Call Proc_340_28_1164CC0()
  loc_F61584: Me.GridSel.Row = 1
  loc_F6159F: Me.GridSel.Col = 0
  loc_F615AB: Set var_88 = Me.GridSel
  loc_F615C9: Me.Label1.Caption = vbNullString
  loc_F615DB: Me.Label1.Refresh
  loc_F615F8: var_AC = "ADD"
  loc_F61606: Call Proc_340_32_EB0A08(Proc_5_1_100EC1C(var_AC, Me), global_100)
  loc_F61611: Call Proc_340_33_EDF85C(GridSel.DispID_8001)
  loc_F61621: Set var_88 = Me.Txt
  loc_F61627: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2))
  loc_F6162F: var_B4.SetFocus
  loc_F6163B: Exit Sub
  loc_F6163C: ' Referenced from: F61538
  loc_F61642: Call 0.Method_arg_50 (var_AC)
  loc_F61657: Proc_183_57_104B0BC(var_AC, "TopCtrl1_eAdd")
  loc_F61663: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F614F4
  'Data Table: 484AE4
  Dim var_88 As Variant
  Dim var_B4 As TextBox
  loc_F613C8: On Error Goto loc_F614C9
  loc_F613CB: Call Proc_340_31_EB7A5C()
  loc_F613DD: Me.Label1.Caption = "Processing..."
  loc_F613EF: Me.Label1.Refresh
  loc_F613F7: Call Proc_340_27_10C69EC()
  loc_F613FC: Call Proc_340_28_1164CC0()
  loc_F61414: Me.GridSel.Row = 1
  loc_F6142F: Me.GridSel.Col = 0
  loc_F6143B: Set var_88 = Me.GridSel
  loc_F61459: Me.Label1.Caption = vbNullString
  loc_F6146B: Me.Label1.Refresh
  loc_F61488: var_AC = "EDIT"
  loc_F61496: Call Proc_340_32_EB0A08(Proc_5_1_100EC1C(var_AC, Me), global_100)
  loc_F614AE: Set var_88 = Me.Txt
  loc_F614B4: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_B4)
  loc_F614BC: var_B4.Enabled = False
  loc_F614C8: Exit Sub
  loc_F614C9: ' Referenced from: F613C8
  loc_F614CF: Call 0.Method_arg_50 (var_AC)
  loc_F614E4: Proc_183_57_104B0BC(var_AC, "TopCtrl1_eEdit")
  loc_F614F0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A6F0
  'Data Table: 484AE4
  loc_E1A6E5: Me.Global.Unload Me
  loc_E1A6ED: Exit Sub
  loc_E1A6EE: ArrayRebase1Var
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EEF9C4
  'Data Table: 484AE4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EEF904: On Error Goto loc_EEF99C
  loc_EEF91E: If (Me.RecordCount <= 0) Then
  loc_EEF927:   var_B8 = "Information"
  loc_EEF942:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_EEF952:   Exit Sub
  loc_EEF953: End If
  loc_EEF961: MemVar_1F950E4 = "Select Type As SearchCode,Type From MemSelectCategory where LogSite_Code='" & MemVar_1F95078 & "' Group By Type"
  loc_EEF96E: MemVar_1F95120 = Me
  loc_EEF975: var_10C = "2500"
  loc_EEF97B: Proc_183_54_F1EA10(var_10C)
  loc_EEF996: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EEF99B: Exit Sub
  loc_EEF99C: ' Referenced from: EEF904
  loc_EEF9A2: Call 0.Method_arg_50 (var_10C)
  loc_EEF9B7: Proc_183_57_104B0BC(var_10C, "TopCtrl1_eFind")
  loc_EEF9C3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E7CBE4
  'Data Table: 484AE4
  loc_E7CB8C: On Error Goto loc_E7CBB9
  loc_E7CBAB: Proc_5_0_1107AD0(&HFF, Me)
  loc_E7CBB3: Call Proc_340_34_11E6C34(global_100)
  loc_E7CBB8: Exit Sub
  loc_E7CBB9: ' Referenced from: E7CB8C
  loc_E7CBBF: Call 0.Method_arg_50 (var_94)
  loc_E7CBD4: Proc_183_57_104B0BC(var_94, "TopCtrl1_eFirst")
  loc_E7CBE0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E7C2FC
  'Data Table: 484AE4
  Dim arg_6CF4 As String
  loc_E7C2A4: On Error Goto loc_E7C2D1
  loc_E7C2C3: Proc_5_0_1107AD0(&HFF, Me)
  loc_E7C2CB: Call Proc_340_34_11E6C34(global_100)
  loc_E7C2D0: Exit Sub
  loc_E7C2D1: ' Referenced from: E7C2A4
  loc_E7C2D7: Call 0.Method_arg_50 (var_94)
  loc_E7C2EC: Proc_183_57_104B0BC(var_94, "TopCtrl1_eLast")
  loc_E7C2F8: Exit Sub
  loc_E7C2FA: arg_6CF4 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E7C09C
  'Data Table: 484AE4
  loc_E7C044: On Error Goto loc_E7C071
  loc_E7C063: Proc_5_0_1107AD0(&HFF, Me)
  loc_E7C06B: Call Proc_340_34_11E6C34(global_100)
  loc_E7C070: Exit Sub
  loc_E7C071: ' Referenced from: E7C044
  loc_E7C077: Call 0.Method_arg_50 (var_94)
  loc_E7C08C: Proc_183_57_104B0BC(var_94, "TopCtrl1_eNext")
  loc_E7C098: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E7BD0C
  'Data Table: 484AE4
  loc_E7BCB4: On Error Goto loc_E7BCE1
  loc_E7BCD3: Proc_5_0_1107AD0(&HFF, Me)
  loc_E7BCDB: Call Proc_340_34_11E6C34(global_100)
  loc_E7BCE0: Exit Sub
  loc_E7BCE1: ' Referenced from: E7BCB4
  loc_E7BCE7: Call 0.Method_arg_50 (var_94)
  loc_E7BCFC: Proc_183_57_104B0BC(var_94, "TopCtrl1_ePrev")
  loc_E7BD08: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'FA473C
  'Data Table: 484AE4
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim unk_484AEE As Connection15
  Dim var_90 As TextBox
  loc_FA45C8: On Error Goto loc_FA4720
  loc_FA45D6: Set var_8C = Me.Txt
  loc_FA45DC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_FA45E4: var_98 = "Status"
  loc_FA45ED: Set var_94 = var_90
  loc_FA4605: If (Proc_6_27_EA61EC(var_94, var_98) = 0) Then
  loc_FA4608:   Exit Sub
  loc_FA4609: End If
  loc_FA4616: Me.Label1.Caption = "Saving..."
  loc_FA4628: Me.Label1.Refresh
  loc_FA463E: unk_484AEE.BeginTrans var_9C
  loc_FA4661: Set var_8C = Me.Txt
  loc_FA4667: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_90, var_98, "Delete From MemSelectCategory Where Type='", var_CC)
  loc_FA466F: -1 = var_90.Text
  loc_FA4696: unk_484AEE.Execute var_94 & var_98 & "' And LogSite_Code='" & MemVar_1F95078 & "'", &HFF, var_90
  loc_FA46DD: Call Proc_340_30_10F0F98(global_56, CByte(Me.Check1.Value))
  loc_FA46EE: unk_484AEE.CommitTrans
  loc_FA46F5: var_86 = 0
  loc_FA4705: Me.Label1.Caption = "Save Completed."
  loc_FA4717: Me.Label1.Refresh
  loc_FA471F: Exit Sub
  loc_FA4720: ' Referenced from: FA45C8
  loc_FA4726: If (var_86 = &HFF) Then
  loc_FA472F:   unk_484AEE.RollbackTrans
  loc_FA4734: End If
  loc_FA4734: Proc_6_60_E63754(var_86)
  loc_FA4739: Exit Sub
End Sub

Private Sub Form_Load() 'F65FDC
  'Data Table: 484AE4
  Dim var_94 As String
  Dim unk_484AEE As Connection15
  Dim unk_484B26 As Connection15
  loc_F65EB4: On Error Goto loc_F65FD6
  loc_F65EE0: var_94 = "SELECT Code,Name,RestType,DiscApp FROM Depart Where Code<>'" & MemVar_1F95078 & "RS' And (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name"
  loc_F65EE9: unk_484AEE.Execute var_94, var_B4, -1
  loc_F65F1C: CVarUnk
  loc_F65F21: VerifyVarObj
  loc_F65F2D: LateIdStAd
  loc_F65F5F: unk_484B26.Execute "Select Distinct Type From MemSelectCategory where LogSite_Code='" & MemVar_1F95078 & "'", var_B4, -1
  loc_F65F91: Set var_B8 = Me
  loc_F65FA8: Call Proc_340_32_EB0A08(Proc_5_1_100EC1C("INI", var_B8, Me.DGRestType, var_B8), var_B8)
  loc_F65FB3: Call Proc_340_27_10C69EC(var_B8)
  loc_F65FBF: Call 0.Method_arg_7C (CDbl(0))
  loc_F65FCB: Call 0.Method_arg_74 (CDbl(0))
  loc_F65FD0: Call Proc_340_34_11E6C34(var_B8)
  loc_F65FD5: Exit Sub
  loc_F65FD6: ' Referenced from: F65EB4
  loc_F65FD6: Proc_6_60_E63754()
  loc_F65FDB: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E29114
  'Data Table: 484AE4
  loc_E290F7: Set global_60 = Nothing
  loc_E29109: Set global_64 = Nothing
  loc_E29110: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2795C
  'Data Table: 484AE4
  loc_E27934: On Error Goto loc_E27953
  loc_E2794B: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E27953: ' Referenced from: E27934
  loc_E27953: Proc_6_60_E63754(Shift)
  loc_E27958: Exit Sub
End Sub

Private Sub CmdFill_UnknownEvent_9 'F2FE9C
  'Data Table: 484AE4
  Dim var_88 As Variant
  loc_F2FD88: Call Proc_340_31_EB7A5C()
  loc_F2FD98: Set var_88 = Me.Txt
  loc_F2FD9E: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(2))
  loc_F2FDC7: If (Proc_6_27_EA61EC(var_8C, "Status") = 0) Then
  loc_F2FDCA:   Exit Sub
  loc_F2FDCB: End If
  loc_F2FDD4: Set var_88 = Me.CmdFill
  loc_F2FDDA: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(False)
  loc_F2FDEF: Me.Label1.Caption = "Processing..."
  loc_F2FE01: Me.Label1.Refresh
  loc_F2FE09: Call Proc_340_27_10C69EC(var_8C)
  loc_F2FE0E: Call Proc_340_28_1164CC0()
  loc_F2FE26: Me.GridSel.Row = 1
  loc_F2FE41: Me.GridSel.Col = 0
  loc_F2FE4D: Set var_88 = Me.GridSel
  loc_F2FE6B: Me.Label1.Caption = vbNullString
  loc_F2FE7D: Me.Label1.Refresh
  loc_F2FE8D: Set var_88 = Me.CmdFill
  loc_F2FE93: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(True)
  loc_F2FE9B: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E2EA44
  'Data Table: 484AE4
  loc_E2EA38: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_E2EA3B:   Call DGRestType_UnknownEvent_9()
  loc_E2EA40: End If
  loc_E2EA40: Exit Sub
  loc_E2EA41: StAryRecMove
End Sub

Public Sub Proc_340_27_10C69EC
  'Data Table: 484AE4
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_10C670E: Me.GridSel.Rows = 1
  loc_10C6722: Me.GridSel.Cols = 3
  loc_10C6727: var_98 = 0
  loc_10C6733: var_BC = CVar(CLng(0)) 'Long
  loc_10C6738: var_DC = "O"
  loc_10C6741: LateIdCallSt
  loc_10C674C: var_98 = CVar(CLng(0)) 'Long
  loc_10C6751: var_BC = &H258
  loc_10C675D: LateIdCallSt
  loc_10C6765: var_98 = 0
  loc_10C6771: var_BC = CVar(CLng(1)) 'Long
  loc_10C6776: var_DC = "Member Category"
  loc_10C677F: LateIdCallSt
  loc_10C678A: var_98 = CVar(CLng(1)) 'Long
  loc_10C6795: var_BC = CVar(CInt(1)) 'Integer
  loc_10C679C: LateIdCallSt
  loc_10C67A7: var_98 = CVar(CLng(1)) 'Long
  loc_10C67B2: var_BC = CVar(CInt(1)) 'Integer
  loc_10C67B9: LateIdCallSt
  loc_10C67C4: var_98 = CVar(CLng(1)) 'Long
  loc_10C67C9: var_BC = &H1194
  loc_10C67D5: LateIdCallSt
  loc_10C67DD: var_98 = 0
  loc_10C67E9: var_BC = CVar(CLng(2)) 'Long
  loc_10C67EE: var_DC = "Mem Code"
  loc_10C67F7: LateIdCallSt
  loc_10C6802: var_98 = CVar(CLng(2)) 'Long
  loc_10C680D: var_BC = CVar(CInt(7)) 'Integer
  loc_10C6814: LateIdCallSt
  loc_10C681F: var_98 = CVar(CLng(2)) 'Long
  loc_10C682A: var_BC = CVar(CInt(7)) 'Integer
  loc_10C6831: LateIdCallSt
  loc_10C683C: var_98 = CVar(CLng(2)) 'Long
  loc_10C6841: var_BC = 0
  loc_10C684D: LateIdCallSt
  loc_10C6855: var_98 = vbNullString
  loc_10C685F: Set var_AC = Me.GridSel
  loc_10C6883: Me.GridSel.FixedRows = 1
  loc_10C688D: Set var_88 = Nothing 
  loc_10C68A1: ReDim Preserve global_56(0 To 0)
  loc_10C68B8: global_56(0) = 0
  loc_10C68CC: Me.GridSel.Height = CVar(CDbl(6000))
  loc_10C68E7: Me.GridSel.Width = CVar(CDbl(5500))
  loc_10C68EF: var_98 = 0
  loc_10C6920: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H1E))
  loc_10C692F: var_98 = 0
  loc_10C6960: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &H1E))
  loc_10C6991: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&HF))
  loc_10C69C2: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&HF))
  loc_10C69E1: Me.Check1.Value = CInt(0)
  loc_10C69E9: Exit Sub
End Sub

Public Sub Proc_340_28_1164CC0
  'Data Table: 484AE4
  Dim var_A0 As Variant
  Dim var_C8 As String
  Dim var_CC As String
  Dim unk_484AEE As Connection15
  Dim var_D0 As Variant
  Dim var_DC As String
  Dim var_90 As Recordset15
  Dim var_C4 As Variant
  Dim var_E8 As MSHFlexGrid
  Dim var_164 As Variant
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  Dim var_134 As Variant
  loc_116494B: Me.GridSel.Row = 1
  loc_116495D: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1164976: If (CStr() = "Add") Then
  loc_116498D:   var_C8 = "Select Code,Name From MemCatMast WHERE (LOGSITE_CODE='" & MemVar_1F95078
  loc_116499D:   unk_484AEE.Execute var_C8 & "' or LOGSITE_CODE='HO') Order by Name", var_C4, -1
  loc_11649A8:   Set var_90 = Me.TopCtrl1
  loc_11649BB: Else
  loc_11649DF:   Call 0.Method_Proc_340_28_1164CC00 (CInt(2), var_D0, var_C8, "Select M.Code,M.Name,IsNull(MS.Type,'') Type From MemCatMast M Left Join (Select MemCode,Type  From MemSelectCategory Where Type='")
  loc_11649E7:   var_C4 = var_D0.Text
  loc_11649F0:   var_CC = -1 & var_C8
  loc_1164A05:   var_DC = var_C8 & "' or LOGSITE_CODE='HO') Order by Name" & "' And LogSite_Code='" & MemVar_1F95078 & "')MS On M.Code=MS.MemCode Where M.LogSite_Code='"
  loc_1164A1C:   unk_484AEE.Execute var_DC & MemVar_1F95078 & "' Order By M.Name", var_E8, Me.Txt
  loc_1164A27:   Set var_90 = var_E8
  loc_1164A47: End If
  loc_1164A5B: If (var_90.RecordCount > 0) Then
  loc_1164A5E:   ' Referenced from: 1164C91
  loc_1164A6D:   If Not(var_90.EOF) Then
  loc_1164A74:     Set var_F4 = Me.GridSel
  loc_1164A77:     var_A0 = vbNullString
  loc_1164AC6:     var_164 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1164ACE:     var_184 = CVar(CLng(0)) 'Long
  loc_1164B04:     var_1A4 = CVar(CStr(IIf((Proc_6_38_E69628(CVar(var_90.Fields.Item("Type")), GridSel.DispID_10000) <> vbNullString), "ü", vbNullString))) 'String
  loc_1164B0B:     LateIdCallSt
  loc_1164B7A:     var_134 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Name")), CVar(CLng(1)), CVar(CLng(Me.GridSel.Row)), var_F4)) 'String
  loc_1164B81:     LateIdCallSt
  loc_1164BE1:     var_134 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Code")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_F4, var_134)) 'String
  loc_1164BE8:     LateIdCallSt
  loc_1164C02:     Set var_F4 = Nothing 
  loc_1164C18:     Me.GridSel.Col = CVar(CLng(0))
  loc_1164C30:     Me.GridSel.CellFontName = "WINGDINGS"
  loc_1164C4A:     Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1164C6B:     var_A0 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_1164C7A:     Me.GridSel.Row = CVar(CDbl(&HE))
  loc_1164C8C:     var_90.MoveNext
  loc_1164C91:     GoTo loc_1164A5E
  loc_1164C94:   End If
  loc_1164C99:   Set var_90 = Nothing
  loc_1164C9C: End If
  loc_1164CAF: Me.GridSel.FixedRows = 1
  loc_1164CBC: Set var_90 = Nothing
  loc_1164CBF: Exit Sub
End Sub

Public Sub Proc_340_29_F390FC(arg_C) 'F390FC
  'Data Table: 484AE4
  Dim var_90 As TextBox
  Dim var_9C As String
  Dim unk_484AEE As Connection15
  loc_F39048: Set var_8C = Me.Txt
  loc_F3904E: Call 0.Method_Proc_340_29_F390FC0 (CInt(2), var_90, var_94, "Insert Into MemSelectCategory(MemCode,Type,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & arg_C & "','")
  loc_F39056: var_170 = var_90.Text
  loc_F3905F: var_9C = -1 & var_94
  loc_F39093: Proc_183_7_EB17D4(var_CC, Date)
  loc_F390C5: unk_484AEE.Execute CStr(CVar(var_9C & "','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") & var_CC & ",'A','" & CVar(MemVar_1F95078) & "')"), var_174, 
  loc_F390FB: Exit Sub
End Sub

Public Sub Proc_340_30_10F0F98(arg_C, arg_10) '10F0F98
  'Data Table: 484AE4
  Dim var_96 As Integer
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_9A As Integer
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_14C As Variant
  loc_10F0C82: On Error Goto loc_10F0F8A
  loc_10F0C87: var_96 = 0
  loc_10F0C93: If (CInt(arg_10) = 1) Then
  loc_10F0CBB:   For var_B4 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_98 = var_B4 'Integer
  loc_10F0CC4:     var_9A = var_98
  loc_10F0CCB:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_10F0CD0:     var_E4 = 2
  loc_10F0CFF:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_10F0D06:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_10F0D0B:       var_E4 = 2
  loc_10F0D2E:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_10F0D36:       var_128 = CVar(CLng(0)) 'Long
  loc_10F0D45:       var_14C = Me.GridSel.TextMatrix)
  loc_10F0D5C:       Call Proc_340_29_F390FC(CStr(Me.GridSel.TextMatrix)))
  loc_10F0D78:       var_96 = &HFF
  loc_10F0D7B:     End If
  loc_10F0D7E:   Next var_B4 'Integer
  loc_10F0D86: Else
  loc_10F0D8E:   CRefVarAry
  loc_10F0D96:   For var_154 = 0 To CInt(UBound(arg_C, 1)):   var_98 = var_154 'Integer
  loc_10F0DB7:     If (arg_C(var_98) = 0) Then
  loc_10F0DBA:       GoTo loc_10F0EC2
  loc_10F0DBD:     End If
  loc_10F0DCE:     var_9A = CInt(arg_C(var_98))
  loc_10F0DD8:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_10F0DE0:     var_E4 = CVar(CLng(0)) 'Long
  loc_10F0E0B:     If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_10F0E12:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_10F0E17:       var_E4 = 2
  loc_10F0E46:       If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_10F0E4D:         var_C4 = CVar(CLng(var_9A)) 'Long
  loc_10F0E52:         var_E4 = 2
  loc_10F0E75:         var_108 = CVar(CLng(var_9A)) 'Long
  loc_10F0E7D:         var_128 = CVar(CLng(0)) 'Long
  loc_10F0E8C:         var_14C = Me.GridSel.TextMatrix)
  loc_10F0EA3:         Call Proc_340_29_F390FC(CStr(Me.GridSel.TextMatrix)))
  loc_10F0EBF:         var_96 = &HFF
  loc_10F0EC2:         ' Referenced from:   10F0DBA
  loc_10F0EC2:       End If
  loc_10F0EC2:     End If
  loc_10F0EC5:   Next var_154 'Integer
  loc_10F0ECA: End If
  loc_10F0EDA: If ((var_96 = 0) And (CInt(arg_10) = 0)) Then
  loc_10F0EDD:   var_C4 = 0
  loc_10F0EE6:   var_E4 = 1
  loc_10F0EF9:   var_B0 = Me.GridSel.TextMatrix)
  loc_10F0F21:   MsgBox(CVar("Select " & CStr(var_B0)), &H40, var_164, var_174, var_184)
  loc_10F0F4C:   Me.GridSel.Row = 1
  loc_10F0F54:   var_C4 = 0
  loc_10F0F67:   Me.GridSel.Col = var_C4
  loc_10F0F73:   Set var_A0 = Me.GridSel
  loc_10F0F84: End If
  loc_10F0F84: Proc_340_30_10F0F98 = GridSel.DispID_8001
  loc_10F0F8A: ' Referenced from: 10F0C82
  loc_10F0F8A: Proc_6_60_E63754(var_B0, var_E4)
  loc_10F0F8F: Proc_340_30_10F0F98 = var_C4
End Sub

Public Sub Proc_340_31_EB7A5C
  'Data Table: 484AE4
  loc_EB79D8: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_EB79EA:   Me.DGRestType.Visible = False
  loc_EB79F2: End If
  loc_EB7A0E: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB7A20:   Me.FGPoint.Visible = False
  loc_EB7A28: End If
  loc_EB7A43: If (Me.FrmList.Visible = &HFF) Then
  loc_EB7A52:   Me.FrmList.Visible = False
  loc_EB7A5A: End If
  loc_EB7A5A: Exit Sub
End Sub

Public Sub Proc_340_32_EB0A08(arg_C) 'EB0A08
  'Data Table: 484AE4
  Dim var_98 As TextBox
  loc_EB097C: On Error Goto loc_EB09DD
  loc_EB098D: Set var_8C = Me.Txt
  loc_EB0993: Call 0.Method_Proc_340_32_EB0A08C (var_8E, var_86)
  loc_EB09A3: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB09B9:   Set var_8C = Me.Txt
  loc_EB09BF:   Call 0.Method_Proc_340_32_EB0A080 (CInt(var_86), var_98)
  loc_EB09C7:   var_98.Enabled = arg_C
  loc_EB09D6: Next var_92 'Byte
  loc_EB09DC: Exit Sub
  loc_EB09DD: ' Referenced from: EB097C
  loc_EB09E3: Call 0.Method_arg_50 (var_9C)
  loc_EB09EB: var_A4 = "Disp_Text"
  loc_EB09F8: Proc_183_57_104B0BC(var_9C)
  loc_EB0A04: Exit Sub
End Sub

Public Sub Proc_340_33_EDF85C
  'Data Table: 484AE4
  Dim var_98 As TextBox
  loc_EDF7A8: On Error Goto loc_EDF833
  loc_EDF7B9: Set var_8C = Me.Txt
  loc_EDF7BF: Call 0.Method_Proc_340_33_EDF85CC (var_8E, var_86)
  loc_EDF7CF: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EDF7E5:   Set var_8C = Me.Txt
  loc_EDF7EB:   Call 0.Method_Proc_340_33_EDF85C0 (CInt(var_86), var_98)
  loc_EDF7F3:   var_98.Text = vbNullString
  loc_EDF80F:   Set var_8C = Me.Txt
  loc_EDF815:   Call 0.Method_Proc_340_33_EDF85C0 (CInt(var_86), var_98)
  loc_EDF81D:   var_98.Tag = vbNullString
  loc_EDF82C: Next var_92 'Byte
  loc_EDF832: Exit Sub
  loc_EDF833: ' Referenced from: EDF7A8
  loc_EDF839: Call 0.Method_arg_50 (var_9C)
  loc_EDF841: var_A4 = "BlankText"
  loc_EDF84E: Proc_183_57_104B0BC(var_9C)
  loc_EDF85A: Exit Sub
End Sub

Public Sub Proc_340_34_11E6C34
  'Data Table: 484AE4
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_128 As Variant
  Dim var_13C As String
  Dim unk_484AEE As Connection15
  Dim var_88 As Recordset15
  Dim var_164 As TextBox
  Dim var_160 As MSHFlexGrid
  Dim var_17C As Variant
  Dim var_15C As Variant
  loc_11E67CC: On Error Goto loc_11E6C0C
  loc_11E67D5: Proc_183_45_E5CCA8(global_100)
  loc_11E67F1: If (Me.RecordCount <= 0) Then
  loc_11E67F4:   Call Proc_340_33_EDF85C()
  loc_11E67FC: Else
  loc_11E6844:   var_F8 = "Select Distinct Type,U_AE,U_EntDt From MemSelectCategory where Type='" & Me.Fields.Item("Type").Value & "' And LogSite_Code='" 
  loc_11E6865:   unk_484AEE.Execute CStr(var_F8 & CVar(MemVar_1F95078) & "'"), var_15C, -1
  loc_11E6870:   Set var_8C = var_160
  loc_11E68A1:   Me.GridSel.Row = 1
  loc_11E68E8:   var_D8 = "Select M.Code,M.Name,MS.Type From MemCatMast M Inner Join MemSelectCategory MS On M.Code=MS.MemCode where MS.Type='" & Me.Fields.Item("Type").Value 
  loc_11E6912:   unk_484AEE.Execute CStr(var_D8 & "' And MS.LogSite_Code='" & CVar(MemVar_1F95078) & "' Order By M.Name"), var_15C, -1
  loc_11E691D:   Set var_88 = var_160
  loc_11E694F:   If (var_88.RecordCount > 0) Then
  loc_11E6988:     Set var_160 = Me.Txt
  loc_11E698E:     Call 0.Method_Proc_340_34_11E6C340 (CInt(2), var_164)
  loc_11E6996:     var_164.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Type")), var_160)
  loc_11E69AA:     ' Referenced from:   11E6BDD
  loc_11E69B9:     If Not(var_88.EOF) Then
  loc_11E69C0:       Set var_16C = Me.GridSel
  loc_11E69C3:       var_A4 = vbNullString
  loc_11E6A12:       var_128 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_11E6A1A:       var_17C = CVar(CLng(0)) 'Long
  loc_11E6A38:       var_13C = Proc_6_38_E69628(CVar(var_88.Fields.Item("Type")), GridSel.DispID_10000)
  loc_11E6A57:       LateIdCallSt
  loc_11E6AC6:       var_F8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Name")), CVar(CLng(1)), CVar(CLng(Me.GridSel.Row)), var_16C, CVar(CStr(IIf((var_13C <> vbNullString), "ü", vbNullString))))) 'String
  loc_11E6ACD:       LateIdCallSt
  loc_11E6B2D:       var_F8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Code")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_16C, var_F8)) 'String
  loc_11E6B34:       LateIdCallSt
  loc_11E6B4E:       Set var_16C = Nothing 
  loc_11E6B64:       Me.GridSel.Col = CVar(CLng(0))
  loc_11E6B7C:       Me.GridSel.CellFontName = "WINGDINGS"
  loc_11E6B96:       Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_11E6BB7:       var_A4 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_11E6BC6:       Me.GridSel.Row = CVar(CDbl(&HE))
  loc_11E6BD8:       var_88.MoveNext
  loc_11E6BDD:       GoTo loc_11E69AA
  loc_11E6BE0:     End If
  loc_11E6BE5:     Set var_88 = Nothing
  loc_11E6BE8:   End If
  loc_11E6BFB:   Me.GridSel.FixedRows = 1
  loc_11E6C08:   Set var_88 = Nothing
  loc_11E6C0B: End If
  loc_11E6C0B: Exit Sub
  loc_11E6C0C: ' Referenced from: 11E67CC
  loc_11E6C12: Call 0.Method_arg_50 (var_13C, var_16C, var_F8, var_17C)
  loc_11E6C27: Proc_183_57_104B0BC(var_13C, "MoveRec", var_128)
  loc_11E6C33: Exit Sub
End Sub
