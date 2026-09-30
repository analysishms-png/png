VERSION 5.00
Begin VB.Form DMTree
  Caption = "Form1"
  BackColor = &H80C0FF&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 13590
  ClientHeight = 10545
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin Frame Frame1
    Caption = "Frame1"
    BackColor = &HD6FEEE&
    Left = 0
    Top = 9390
    Width = 7455
    Height = 600
    TabIndex = 2
    BorderStyle = 0 'None
    Begin CommandButton btnsave
      Caption = "Save"
      Left = 6225
      Top = 45
      Width = 1170
      Height = 510
      TabIndex = 3
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "DMTree.frx":0
      DisabledPicture = "DMTree.frx":102
      ToolTipText = "Save Records"
      Style = 1
    End
    Begin Label Label1
      Caption = "(E)ntry Point, (R)eport, (V) for InVisible and (N) Main Menu"
      BackColor = &H80000005&
      ForeColor = &HFF0000&
      Left = 105
      Top = 180
      Width = 5955
      Height = 240
      TabIndex = 4
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
  Begin TextBox txtGrid
    Left = 4455
    Top = 840
    Width = 975
    Height = 285
    Visible = 0   'False
    TabIndex = 0
    Alignment = 2 'Center
    MaxLength = 2
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid1
    Left = 0
    Top = 15
    Width = 7455
    Height = 9360
    TabIndex = 1
  End
End

Attribute VB_Name = "DMTree"

Private global_52 As Integer
Private global_54 As Integer

Private Sub btnsave_Click() '1005458
  'Data Table: 425180
  Dim unk_425181 As Connection15
  Dim var_90 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim var_FC As Variant
  Dim var_11C As Long
  Dim var_13C As Variant
  Dim var_158 As Variant
  Dim var_178 As Long
  Dim var_198 As Variant
  Dim var_1A4 As String
  loc_100527D: unk_425181.BeginTrans var_8C
  loc_1005286: Set var_90 = Me.FGrid1
  loc_10052A4: For var_A4 = 1 To CInt((CLng(var_90.Rows) - 1)): var_86 = var_A4 'Integer
  loc_10052AE:   var_B4 = CVar(CLng(var_86)) 'Long
  loc_10052B3:   var_D4 = 7
  loc_10052CF:   var_FC = CVar(CLng(var_86)) 'Long
  loc_10052D4:   var_11C = 6
  loc_10052F0:   var_158 = CVar(CLng(var_86)) 'Long
  loc_10052F5:   var_178 = 0
  loc_1005301:   var_198 = var_90.TextMatrix)
  loc_1005349:   var_1A4 = "UPDATE menuHelp1 SET Param_Str='" & CStr(var_90.TextMatrix)) & "',Flag='" & CStr(var_90.TextMatrix)) & "' WHERE Code=" & CStr(var_198)
  loc_1005359:   unk_425181.Execute var_1A4 & " AND UserName='SA'", var_1C8, -1
  loc_1005385:   var_B4 = CVar(CLng(var_86)) 'Long
  loc_100538A:   var_D4 = 6
  loc_10053A6:   var_FC = CVar(CLng(var_86)) 'Long
  loc_10053AB:   var_11C = 0
  loc_10053B7:   var_13C = var_90.TextMatrix)
  loc_10053F6:   unk_425181.Execute "UPDATE UserModule1 SET Flag='" & CStr(var_90.TextMatrix)) & "' WHERE Code=" & CStr(var_13C), var_198, -1
  loc_1005417: Next var_A4 'Integer
  loc_100541E: Set var_90 = Nothing 
  loc_1005428: unk_425181.CommitTrans
  loc_1005446: MsgBox("Updated.", &H40, var_13C, var_198, var_1C8)
  loc_1005456: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 '11720B8
  'Data Table: 425180
  Dim var_9C As Long
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  loc_1171D07: var_9C = CLng(Me.FGrid1.ColSel)
  loc_1171D19: If Not (var_9C = 1) Then
  loc_1171D25:   If Not (var_9C = 2) Then
  loc_1171D31:     If Not (var_9C = 3) Then
  loc_1171D3D:       If (var_9C = 4) Then
  loc_1171D40:       End If
  loc_1171D40:     End If
  loc_1171D40:   End If
  loc_1171D4C:   Me.txtGrid.Alignment = 2
  loc_1171D63:   Me.txtGrid.MaxLength = 2
  loc_1171D6E: Else
  loc_1171D77:   If (var_9C = 5) Then
  loc_1171D86:     Me.txtGrid.Alignment = 0
  loc_1171D9D:     Me.txtGrid.MaxLength = &H32
  loc_1171DA8:   Else
  loc_1171DB1:     If (var_9C = 6) Then
  loc_1171DC0:       Me.txtGrid.Alignment = 2
  loc_1171DD7:       Me.txtGrid.MaxLength = 1
  loc_1171DE2:     Else
  loc_1171DEB:       If (var_9C = 7) Then
  loc_1171DFA:         Me.txtGrid.Alignment = 2
  loc_1171E11:         Me.txtGrid.MaxLength = 5
  loc_1171E19:       End If
  loc_1171E19:     End If
  loc_1171E19:   End If
  loc_1171E19: End If
  loc_1171E5A: If ((CLng(Me.FGrid1.Rows) = 1) Or (CLng(Me.FGrid1.ColSel) = 0)) Then
  loc_1171E5D:   Exit Sub
  loc_1171E5E: End If
  loc_1171E93: If (CLng(Me.FGrid1.ColSel) < CLng(Me.FGrid1.Cols)) Then
  loc_1171ECE:   Me.txtGrid.Left = (CDbl(Me.FGrid1.Left) + CDbl(CLng(Me.FGrid1.CellLeft)))
  loc_1171F1B:   Me.txtGrid.Top = (CDbl(Me.FGrid1.Top) + CDbl(CLng(Me.FGrid1.CellTop)))
  loc_1171F43:   var_C4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1171F6A:   Me.txtGrid.Width = CDbl(CLng(Me.FGrid1.ColWidth)))
  loc_1171F9E:   Me.txtGrid.Height = CDbl(CLng(Me.FGrid1.CellHeight))
  loc_1171FB9:   Me.txtGrid.Visible = True
  loc_1171FD4:   var_C4 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_1171FEC:   var_E4 = CVar(CLng(Me.FGrid1.ColSel)) 'Long
  loc_1172013:   Me.txtGrid.Text = CStr(Me.FGrid1.TextMatrix))
  loc_1172042:   var_C4 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_117205A:   var_E4 = CVar(CLng(Me.FGrid1.ColSel)) 'Long
  loc_1172077:   var_11C = CVar(CStr(Me.FGrid1.TextMatrix))) 'Variant
  loc_1172097:   Me.txtGrid.SetFocus
  loc_11720AF:   Me.txtGrid.ZOrder 0
  loc_11720B7: End If
  loc_11720B7: Exit Sub
End Sub

Public Sub Fgrid1_UnknownEvent_A(Index As Integer) 'E41790
  'Data Table: 425180
  loc_E41766: If (Index = &HD) Then
  loc_E41769:   DoEvents()
  loc_E41781:   Me.FGrid1.SelectionMode = 0
  loc_E41789:   Call Fgrid1_UnknownEvent_9()
  loc_E4178E: End If
  loc_E4178E: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B 'F743B4
  'Data Table: 425180
  Dim var_C4 As Variant
  Dim var_B4 As MSHFlexGrid
  loc_F742A9: If (CLng(Me.FGrid1.MouseRow) >= CLng(Me.FGrid1.FixedRows)) Then
  loc_F742AC:   Exit Sub
  loc_F742AD: End If
  loc_F742CC: If (CLng(Me.FGrid1.Col) > 4) Then
  loc_F742CF:   Exit Sub
  loc_F742D0: End If
  loc_F742F0: global_52 = CInt(CLng(Me.FGrid1.Col))
  loc_F74303: If (global_52 <> global_52) Then
  loc_F7430B:   global_54 = 1
  loc_F74311: Else
  loc_F7431D:   global_54 = (global_54 + 1)
  loc_F74329:   If (global_54 = 3) Then
  loc_F74331:     global_54 = 1
  loc_F74334:   End If
  loc_F74334: End If
  loc_F74338: Set var_B4 = Me.FGrid1
  loc_F74343: var_B4.Redraw = False
  loc_F74354: var_B4.Row = 1
  loc_F7436B: var_C4 = CVar((CLng(var_B4.Rows) - 1)) 'Long
  loc_F74373: var_B4.RowSel = 1
  loc_F7438A: var_B4.Col = CVar(CLng(global_52))
  loc_F743A8: var_B4.Redraw = True
  loc_F743AF: Set var_B4 = Nothing 
  loc_F743B3: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_15 'E19D70
  'Data Table: 425180
  loc_E19D64: Me.txtGrid.Visible = False
  loc_E19D6C: Exit Sub
  loc_E19D6D: StAryRecCopy
End Sub

Private Sub TxtGrid_GotFocus() 'E19DBC
  'Data Table: 425180
  loc_E19DAC: var_88 = "{HOME}+{END}"
  loc_E19DB2: Proc_303_0_FBACC8(var_88)
  loc_E19DBA: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1123F44
  'Data Table: 425180
  Dim var_88 As Variant
  Dim var_C0 As Variant
  Dim var_C4 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_104 As Variant
  loc_1123BF2: If (CLng(KeyCode) = &H1B) Then
  loc_1123C01:   Me.txtGrid.Visible = False
  loc_1123C09:   Exit Sub
  loc_1123C0A:   Exit Sub
  loc_1123C0B: End If
  loc_1123C11: If (KeyCode = &H28) Then
  loc_1123C85:   If ((CLng(Me.FGrid1.Rows) > (CLng(Me.FGrid1.Row) + 1)) And (CLng(Me.FGrid1.Col) <> (CLng(Me.FGrid1.Cols) - 1))) Then
  loc_1123CA1:     var_E4 = CVar((CLng(Me.FGrid1.Row) + 1)) 'Long
  loc_1123CB0:     Me.FGrid1.Row = var_E4
  loc_1123CBF:     Call Fgrid1_UnknownEvent_9()
  loc_1123CC4:   End If
  loc_1123CC7: Else
  loc_1123CCD:   If (KeyCode = &H26) Then
  loc_1123D29:     If ((CLng(Me.FGrid1.Row) > 1) And (CLng(Me.FGrid1.Col) <> (CLng(Me.FGrid1.Cols) - 1))) Then
  loc_1123D45:       var_E4 = CVar((CLng(Me.FGrid1.Row) - 1)) 'Long
  loc_1123D54:       Me.FGrid1.Row = var_E4
  loc_1123D63:       Call Fgrid1_UnknownEvent_9()
  loc_1123D68:     End If
  loc_1123D68:   End If
  loc_1123D68: End If
  loc_1123D6E: If (KeyCode = &HD) Then
  loc_1123D71:   DoEvents()
  loc_1123D89:   var_E4 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_1123DA1:   var_104 = CVar(CLng(Me.FGrid1.ColSel)) 'Long
  loc_1123DBB:   var_C0 = CVar(Me.txtGrid.Text) 'String
  loc_1123DC3:   Set var_C4 = Me.FGrid1
  loc_1123DC9:   LateIdCallSt
  loc_1123DF1:   Me.txtGrid.Visible = False
  loc_1123E34:   If (CLng(Me.FGrid1.ColSel) = (CLng(Me.FGrid1.Cols) - 1)) Then
  loc_1123E72:     If (CLng(Me.FGrid1.RowSel) < (CLng(Me.FGrid1.Rows) - 1)) Then
  loc_1123E8E:       var_E4 = CVar((CLng(Me.FGrid1.RowSel) + 1)) 'Long
  loc_1123E9D:       Me.FGrid1.Row = var_E4
  loc_1123EAF:     Else
  loc_1123EB9:       Me.btnsave.SetFocus
  loc_1123EC1:       Exit Sub
  loc_1123EC2:     End If
  loc_1123ED5:     Me.FGrid1.Col = 1
  loc_1123EE1:     Set var_88 = Me.FGrid1
  loc_1123EF5:   Else
  loc_1123F0E:     var_E4 = CVar((CLng(Me.FGrid1.ColSel) + 1)) 'Long
  loc_1123F1D:     Me.FGrid1.Col = 1
  loc_1123F30:     Set var_88 = Me.FGrid1
  loc_1123F41:   End If
  loc_1123F41: End If
  loc_1123F41: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EDE4F4
  'Data Table: 425180
  Dim KeyAscii As Integer
  loc_EDE473: If (CLng(Me.FGrid1.ColSel) = 6) Then
  loc_EDE4B5:   If CBool(InStr(1, CVar("NREV"), Ucase(Chr(CLng(KeyAscii))), 1) <> 0) Then
  loc_EDE4DB:     KeyAscii = Asc(CStr(Ucase(Chr(CLng(KeyAscii)))))
  loc_EDE4EB:   Else
  loc_EDE4ED:     KeyAscii = 0
  loc_EDE4F0:   End If
  loc_EDE4F0: End If
  loc_EDE4F0: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E9B6D0
  'Data Table: 425180
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_104 As Variant
  loc_E9B673: var_BC = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_E9B68B: var_DC = CVar(CLng(Me.FGrid1.ColSel)) 'Long
  loc_E9B6A5: var_104 = CVar(Me.txtGrid.Text) 'String
  loc_E9B6AD: Set var_118 = Me.FGrid1
  loc_E9B6B3: LateIdCallSt
  loc_E9B6CF: Exit Sub
End Sub

Private Sub TxtGrid_LostFocus() 'E19E08
  'Data Table: 425180
  loc_E19DFC: Me.txtGrid.Visible = False
  loc_E19E04: Exit Sub
End Sub

Private Sub Form_Load() 'EB7E90
  'Data Table: 425180
  Dim unk_425181 As Connection15
  Dim var_A4 As Variant
  loc_EB7E0A: unk_425181.Execute "Select Code,Opt1,Opt2,Opt3,Opt4,MenuCaption As Description,Flag As MType,Param_Str AS Permission From menuHelp1 WHERE UserName='SA' ORDER By Code", var_A4, -1
  loc_EB7E32: CVarUnk
  loc_EB7E37: VerifyVarObj
  loc_EB7E43: LateIdStAd
  loc_EB7E51: Call Proc_152_15_10EF0C0(Me.FGrid1, Me.FGrid1)
  loc_EB7E61: Set global_56 = Nothing
  loc_EB7E83: Call 0.Method_Me4 ((CDbl(Me.FGrid1.Width) + CDbl(&HA)))
  loc_EB7E8E: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E1473C
  'Data Table: 425180
  loc_E14733: Set global_56 = Nothing
  loc_E1473A: Exit Sub
End Sub

Private Sub Form_Activate() 'E6A510
  'Data Table: 425180
  loc_E6A4DC: Call 0.Method_MeC ((CDbl(Me.FGrid1.Height) + CDbl(660)))
  loc_E6A502: Call 0.Method_Me4 ((CDbl(Me.FGrid1.Width) + CDbl(&H28)))
  loc_E6A50D: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E02800
  'Data Table: 425180
  loc_E027F9: Call 0.Method_arg_1BC (0)
  loc_E027FE: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F0EE78
  'Data Table: 425180
  loc_F0EDE3: If CBool((Ucase(Chr(CLng(KeyCode))) = "Q") And (Shift = 2) And (MemVar_1F950C8 = "SA")) Then
  loc_F0EDEC:   Call 0.Method_arg_1B8 (var_106)
  loc_F0EDF7:   If (var_106 = 0) Then
  loc_F0EDFF:     Call 0.Method_arg_1BC (&HFF)
  loc_F0EE04:   End If
  loc_F0EE1F:   Call 0.Method_Me4 ((CDbl(Me.FGrid1.Width) + CDbl(&HA)))
  loc_F0EE2A: End If
  loc_F0EE67: If CBool((Ucase(Chr(CLng(KeyCode))) = "H") And (Shift = 2)) Then
  loc_F0EE6F:   Call 0.Method_arg_1BC (0)
  loc_F0EE74: End If
  loc_F0EE74: Exit Sub
End Sub

Public Sub Proc_152_15_10EF0C0
  'Data Table: 425180
  Dim var_B8 As Long
  Dim var_CC As MSHFlexGrid
  Dim var_DC As Variant
  loc_10EEDB4: On Error Goto loc_10EF081
  loc_10EEDCA: Me.FGrid1.Cols = 8
  loc_10EEDE5: Me.FGrid1.Row = 0
  loc_10EEDED: var_B8 = 0
  loc_10EEDFC: var_DC = CVar(CInt(4)) 'Integer
  loc_10EEE04: Set var_CC = Me.FGrid1
  loc_10EEE0A: LateIdCallSt
  loc_10EEE15: var_B8 = 0
  loc_10EEE1E: var_DC = &H258
  loc_10EEE2B: Set var_CC = Me.FGrid1
  loc_10EEE31: LateIdCallSt
  loc_10EEE3C: var_B8 = 1
  loc_10EEE4B: var_DC = CVar(CInt(4)) 'Integer
  loc_10EEE53: Set var_CC = Me.FGrid1
  loc_10EEE59: LateIdCallSt
  loc_10EEE64: var_B8 = 1
  loc_10EEE6D: var_DC = &H1F4
  loc_10EEE7A: Set var_CC = Me.FGrid1
  loc_10EEE80: LateIdCallSt
  loc_10EEE8B: var_B8 = 2
  loc_10EEE9A: var_DC = CVar(CInt(4)) 'Integer
  loc_10EEEA2: Set var_CC = Me.FGrid1
  loc_10EEEA8: LateIdCallSt
  loc_10EEEB3: var_B8 = 2
  loc_10EEEBC: var_DC = &H1F4
  loc_10EEEC9: Set var_CC = Me.FGrid1
  loc_10EEECF: LateIdCallSt
  loc_10EEEDA: var_B8 = 3
  loc_10EEEE9: var_DC = CVar(CInt(4)) 'Integer
  loc_10EEEF1: Set var_CC = Me.FGrid1
  loc_10EEEF7: LateIdCallSt
  loc_10EEF02: var_B8 = 3
  loc_10EEF0B: var_DC = &H1F4
  loc_10EEF18: Set var_CC = Me.FGrid1
  loc_10EEF1E: LateIdCallSt
  loc_10EEF29: var_B8 = 4
  loc_10EEF38: var_DC = CVar(CInt(4)) 'Integer
  loc_10EEF40: Set var_CC = Me.FGrid1
  loc_10EEF46: LateIdCallSt
  loc_10EEF51: var_B8 = 4
  loc_10EEF5A: var_DC = &H1F4
  loc_10EEF67: Set var_CC = Me.FGrid1
  loc_10EEF6D: LateIdCallSt
  loc_10EEF78: var_B8 = 5
  loc_10EEF87: var_DC = CVar(CInt(1)) 'Integer
  loc_10EEF8F: Set var_CC = Me.FGrid1
  loc_10EEF95: LateIdCallSt
  loc_10EEFA0: var_B8 = 5
  loc_10EEFA9: var_DC = &HA8C
  loc_10EEFB6: Set var_CC = Me.FGrid1
  loc_10EEFBC: LateIdCallSt
  loc_10EEFC7: var_B8 = 6
  loc_10EEFD6: var_DC = CVar(CInt(4)) 'Integer
  loc_10EEFDE: Set var_CC = Me.FGrid1
  loc_10EEFE4: LateIdCallSt
  loc_10EEFEF: var_B8 = 6
  loc_10EEFF8: var_DC = &H320
  loc_10EF005: Set var_CC = Me.FGrid1
  loc_10EF00B: LateIdCallSt
  loc_10EF016: var_B8 = 7
  loc_10EF025: var_DC = CVar(CInt(4)) 'Integer
  loc_10EF02D: Set var_CC = Me.FGrid1
  loc_10EF033: LateIdCallSt
  loc_10EF03E: var_B8 = 7
  loc_10EF047: var_DC = &H3E8
  loc_10EF054: Set var_CC = Me.FGrid1
  loc_10EF05A: LateIdCallSt
  loc_10EF065: var_B8 = 1
  loc_10EF078: Me.FGrid1.Row = var_B8
  loc_10EF080: Exit Sub
  loc_10EF081: ' Referenced from: 10EEDB4
  loc_10EF08F: Call 0.Method_arg_2C (var_F0, Err(), var_DC, var_B8, Err(), var_DC, var_B8)
  loc_10EF0A8: MsgBox(CVar(var_F0), &H10, var_110, var_120, var_130)
  loc_10EF0BB: Exit Sub
  loc_10EF0BC: Exit Sub
End Sub
