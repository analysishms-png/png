VERSION 5.00
Begin VB.Form TelCallControlMast
  Caption = "Call Control Master"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8880
  ClientHeight = 6645
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 450
    Top = 3630
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin DataGrid DGHelp
    Left = 6480
    Top = 2205
    Width = 4410
    Height = 3150
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin MSFlexGrid FGPoint
    Left = 6210
    Top = 645
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 4
  End
  Begin MSHFlexGrid FGrid
    Left = 0
    Top = 2160
    Width = 6045
    Height = 4275
    TabIndex = 1
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 1200
    Top = 750
    Width = 4215
    Height = 255
    TabIndex = 0
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8880
    Height = 510
    TabIndex = 6
  End
  Begin Label LblName
    Caption = "Name"
    Index = 0
    ForeColor = &H0&
    Left = 495
    Top = 765
    Width = 495
    Height = 240
    TabIndex = 3
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
End

Attribute VB_Name = "TelCallControlMast"

Private global_64 As Integer
Private global_66 As Integer

Private Sub DGHelp_UnknownEvent_9 'F42034
  'Data Table: 461634
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F41F2B: Me.DGHelp.Visible = False
  loc_F41F4A: If (Me.RecordCount > 0) Then
  loc_F41F89:   Set var_B4 = Me.Txt
  loc_F41F8F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F41F97:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F41FCA:   var_B0 = Me.Fields.Item("Name")
  loc_F41FE9:   Set var_B4 = Me.Txt
  loc_F41FEF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F41FF7:   var_B8.Text = CStr(var_B0.Value)
  loc_F4200D: End If
  loc_F42018: Set var_A8 = Me.Txt
  loc_F4201E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F42026: var_B0.SetFocus
  loc_F42032: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5F3C4
  'Data Table: 461634
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5F38F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5F3A2: Set var_A8 = Me.TxtGrid
  loc_E5F3A8: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5F3B0: var_AC.Visible = False
  loc_E5F3BC: Call Proc_94_51_E86658()
  loc_E5F3C1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E67F58
  'Data Table: 461634
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E67F14: Set var_88 = Me.TxtGrid
  loc_E67F1A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E67F34: If (var_8C.Visible = 0) Then
  loc_E67F4D:   Me.FGrid.BackColorSel = CVar(CLng(global_56))
  loc_E67F55: End If
  loc_E67F55: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1F220
  'Data Table: 461634
  loc_E1F217: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1F21F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFF444
  'Data Table: 461634
  loc_DFF43C: Call Proc_94_46_E41D00()
  loc_DFF441: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1038FE0
  'Data Table: 461634
  Dim var_9C As String
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_1038D9C: Set var_88 = Me.TopCtrl1
  loc_1038DA2: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1038DBB: If (CStr() = "Browse") Then
  loc_1038DBE:   Exit Sub
  loc_1038DBF: End If
  loc_1038E33: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_1038E49:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1038E59:   var_9C = "+{Tab}"
  loc_1038E5F:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_1038E69:   KeyCode = 0
  loc_1038E6F: Else
  loc_1038EC6:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_1038EDC:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1038EE4:   End If
  loc_1038EE4: End If
  loc_1038EEA: global_64 = KeyCode
  loc_1038F10: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1038F34: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_1038F4A:   var_EC = CLng(Me.FGrid.Col)
  loc_1038F5A:   If Not (var_EC = CLng(2)) Then
  loc_1038F64:     If Not (var_EC = CLng(3)) Then
  loc_1038F6E:       If (var_EC = CLng(4)) Then
  loc_1038F71:       End If
  loc_1038F71:     End If
  loc_1038F84:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1038F9C:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1038FA1:     var_11C = vbNullString
  loc_1038FAB:     Set var_B4 = Me.FGrid
  loc_1038FB1:     LateIdCallSt
  loc_1038FC9:   End If
  loc_1038FC9: End If
  loc_1038FCF: If (KeyCode = &HD) Then
  loc_1038FD7:   global_66 = 0
  loc_1038FDA: End If
  loc_1038FDC: KeyCode = 0
  loc_1038FDF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E15670
  'Data Table: 461634
  loc_E15661: Call FGrid_UnknownEvent_C()
  loc_E1566B: global_66 = 0
  loc_E1566E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1035C6C
  'Data Table: 461634
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_C4 As Variant
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_F8 As MSHFlexGrid
  Dim var_11E As Integer
  Dim var_118 As TextBox
  loc_1035A38: Set var_88 = Me.TopCtrl1
  loc_1035A3E: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1035A57: If (CStr() = "Browse") Then
  loc_1035A5A:   Exit Sub
  loc_1035A5B: End If
  loc_1035A6E: var_A0 = CLng(Me.FGrid.Col)
  loc_1035A7E: If Not (var_A0 = CLng(2)) Then
  loc_1035A88:   If Not (var_A0 = CLng(3)) Then
  loc_1035A92:     If (var_A0 = CLng(4)) Then
  loc_1035A95:     End If
  loc_1035A95:   End If
  loc_1035AA8:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1035AC0:   var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1035AF7:   If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1035AFA:   End If
  loc_1035AFE:   Set var_118 = Me.FGrid
  loc_1035B22:   var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_1035B55:   Set var_A4 = var_118
  loc_1035B67:   Proc_6_134_112C1C4(Me, var_A4, Me.TxtGrid, 0, &HFF, Asc(var_9C))
  loc_1035B93:   Set var_88 = Me.TxtGrid
  loc_1035B99:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, 0)
  loc_1035BA1:   var_11E = var_A4.Text
  loc_1035BBA:   If (Len(var_9C) <= 1) Then
  loc_1035BC9:     Set var_88 = Me.TxtGrid
  loc_1035BCF:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_1035BD7:     var_E4 = var_A4.Text
  loc_1035BE8:     Set var_F8 = Me.TxtGrid
  loc_1035BEE:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_118, var_9C)
  loc_1035BF6:     var_118.Text = var_C4
  loc_1035C09:   End If
  loc_1035C15:   Set var_88 = Me.TxtGrid
  loc_1035C1B:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_1035C35:   Set var_F8 = Me.TxtGrid
  loc_1035C3B:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_118)
  loc_1035C43:   var_118.SelStart = Len(var_A4.Text)
  loc_1035C56: End If
  loc_1035C60: If (CLng(KeyCode) <> &HD) Then
  loc_1035C68:   global_66 = &HFF
  loc_1035C6B: End If
  loc_1035C6B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '103151C
  'Data Table: 461634
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  loc_10312E8: Set var_90 = Me.TopCtrl1
  loc_10312EE: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1031307: If (CStr() = "Browse") Then
  loc_103130A:   Exit Sub
  loc_103130B: End If
  loc_1031328: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_103132B:   Exit Sub
  loc_103132C: End If
  loc_103133D: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_103135F:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_1031399:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_10313BB:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_10313D1:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10313DA:         Set var_118 = Me.FGrid
  loc_10313F5:       Else
  loc_1031408:         Me.FGrid.Rows = 1
  loc_1031425:         var_D4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_103142D:         Set var_118 = Me.FGrid
  loc_103145C:         Me.FGrid.FixedRows = 1
  loc_1031464:       End If
  loc_1031489:       For var_11C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_11C 'Integer
  loc_1031493:         var_B4 = CVar(CLng(var_86)) 'Long
  loc_103149B:         var_E4 = CVar(CLng(0)) 'Long
  loc_10314A5:         var_A0 = CVar(CStr(var_86)) 'String
  loc_10314AD:         Set var_90 = Me.FGrid
  loc_10314B3:         LateIdCallSt
  loc_10314C4:       Next var_11C 'Integer
  loc_10314C9:     End If
  loc_10314CC:   Else
  loc_10314ED:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_10314FD:   End If
  loc_1031501:   Set var_90 = Me.FGrid
  loc_1031512: End If
  loc_1031517: Set var_8C = Nothing
  loc_103151A: Exit Sub
  loc_103151B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1EA50
  'Data Table: 461634
  loc_E1EA47: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1EA4F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1DDD0
  'Data Table: 461634
  loc_E1DDC7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1DDCF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E4227C
  'Data Table: 461634
  Dim var_8C As TextBox
  loc_E42250: Call Proc_94_51_E86658()
  loc_E42260: Set var_88 = Me.TxtGrid
  loc_E42266: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4226E: var_8C.Visible = False
  loc_E4227A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'E7FA6C
  'Data Table: 461634
  Dim var_94 As TextBox
  loc_E7FA08: On Error Goto loc_E7FA64
  loc_E7FA2E: Call Proc_94_50_E8D4B4(Proc_5_1_100EC1C("ADD", Me))
  loc_E7FA39: Call Proc_94_48_F20FEC(global_68)
  loc_E7FA49: Set var_8C = Me.Txt
  loc_E7FA4F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_E7FA57: var_94.SetFocus
  loc_E7FA63: Exit Sub
  loc_E7FA64: ' Referenced from: E7FA08
  loc_E7FA64: Proc_6_60_E63754(var_94)
  loc_E7FA69: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9B618
  'Data Table: 461634
  loc_E9B5A0: On Error Goto loc_E9B611
  loc_E9B5DA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9B600:   Call Proc_94_50_E8D4B4(Proc_5_1_100EC1C("INI", Me))
  loc_E9B60B:   Call Proc_94_49_112B66C(global_68)
  loc_E9B610: End If
  loc_E9B610: Exit Sub
  loc_E9B611: ' Referenced from: E9B5A0
  loc_E9B611: Proc_6_60_E63754()
  loc_E9B616: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10D09C0
  'Data Table: 461634
  Dim var_96 As Integer
  Dim unk_46164B As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_10D06F0: On Error Goto loc_10D0967
  loc_10D072A: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10D072F:   var_96 = 0
  loc_10D073B:   unk_46164B.BeginTrans var_11C
  loc_10D0742:   var_96 = &HFF
  loc_10D0756:   var_94 = Me.Bookmark 'Variant
  loc_10D07A2:   var_F8 = "Delete From TelCallControl Where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_10D07B0:   unk_46164B.Execute CStr(var_F8), var_118, -1
  loc_10D07FB:   var_164 = 0
  loc_10D080E:   var_15C = 0
  loc_10D0819:   var_158 = 0
  loc_10D082C:   var_150 = 0
  loc_10D0837:   var_14C = 0
  loc_10D084A:   var_144 = 0
  loc_10D088A:   var_128 = "TelCallControl"
  loc_10D0893:   Proc_154_5_10E3BD4(MemVar_1F95044, var_128, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_10D08C1:   unk_46164B.CommitTrans
  loc_10D08C8:   var_96 = 0
  loc_10D08D6:   Me.Requery -1
  loc_10D08E6:   Me.Requery -1
  loc_10D0906:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10D0913:     Me.Bookmark = var_94
  loc_10D091B:   Else
  loc_10D092F:     If (Me.EOF = 0) Then
  loc_10D0938:       Me.MoveLast
  loc_10D093D:     End If
  loc_10D093D:   End If
  loc_10D093D:   Call Proc_94_49_112B66C(var_96, var_144, 0, var_14C, var_150)
  loc_10D095E:   Proc_5_0_1107AD0(&HFF, Me, global_68, 0)
  loc_10D0966: End If
  loc_10D0966: Exit Sub
  loc_10D0967: ' Referenced from: 10D06F0
  loc_10D096D: If (var_96 = &HFF) Then
  loc_10D0976:   unk_46164B.RollbackTrans
  loc_10D097B: End If
  loc_10D0983: Set var_120 = Err()
  loc_10D0989: Call 0.Method_arg_2C (var_128, 0, var_158)
  loc_10D09AA: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10D09BD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F603C0
  'Data Table: 461634
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F602A0: On Error Goto loc_F6037A
  loc_F602BA: If (Me.RecordCount > 0) Then
  loc_F602E0:   Call Proc_94_50_E8D4B4(Proc_5_1_100EC1C("EDIT", Me))
  loc_F602F9:   Set var_90 = Me.Txt
  loc_F602FF:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F60307:   var_8C = var_98.Tag
  loc_F60312:   global_76 = var_8C
  loc_F6032B:   Set var_90 = Me.Txt
  loc_F60331:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F60339:   var_98.SetFocus
  loc_F60348: Else
  loc_F60369:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F60379: End If
  loc_F60379: Exit Sub
  loc_F6037A: ' Referenced from: F602A0
  loc_F60382: Set var_90 = Err()
  loc_F60388: Call 0.Method_arg_2C (var_8C)
  loc_F603A9: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F603BC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16DA4
  'Data Table: 461634
  loc_E16D99: Me.Global.Unload Me
  loc_E16DA1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB5B64
  'Data Table: 461634
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB5AD4: On Error Goto loc_EB5B5E
  loc_EB5AEE: If (Me.RecordCount <= 0) Then
  loc_EB5AF7:   var_B8 = "Information"
  loc_EB5B12:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB5B22:   Exit Sub
  loc_EB5B23: End If
  loc_EB5B26: MemVar_1F950E4 = "Select Distinct Code As SearchCode,CallType FROM TelCallType Order by CallType"
  loc_EB5B30: MemVar_1F95120 = Me
  loc_EB5B3D: Proc_6_126_F1C850("2000")
  loc_EB5B58: Call 0.Method_arg_2B0 (1)
  loc_EB5B5D: Exit Sub
  loc_EB5B5E: ' Referenced from: EB5AD4
  loc_EB5B5E: Proc_6_60_E63754(var_B8)
  loc_EB5B63: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2F348
  'Data Table: 461634
  loc_E2F338: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2F340: Call Proc_94_49_112B66C(global_68)
  loc_E2F345: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2CC48
  'Data Table: 461634
  loc_E2CC38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2CC40: Call Proc_94_49_112B66C(global_68)
  loc_E2CC45: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2EF28
  'Data Table: 461634
  loc_E2EF18: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2EF20: Call Proc_94_49_112B66C(global_68)
  loc_E2EF25: Exit Sub
  loc_E2EF26: 3 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2F168
  'Data Table: 461634
  Dim var_4301 As Double
  loc_E2F158: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2F160: Call Proc_94_49_112B66C(global_68)
  loc_E2F165: Exit Sub
  loc_E2F166: var_4301 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0B3C8
  'Data Table: 461634
  Dim Me As Recordset15
  loc_E0B3BF: Me.Requery -1
  loc_E0B3C4: Exit Sub
  loc_E0B3C5: Set var_8C = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '11E88E8
  'Data Table: 461634
  Dim var_A8 As TextBox
  Dim unk_46164B As Connection15
  Dim var_B0 As String
  Dim var_FC As Variant
  Dim var_A4 As MSHFlexGrid
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_CC As Variant
  Dim var_158 As Variant
  Dim var_19C As Variant
  Dim var_1FC As Variant
  Dim var_2B4 As Double
  Dim var_124 As String
  Dim var_210 As String
  Dim Me As Recordset15
  loc_11E84DC: On Error Goto loc_11E8896
  loc_11E84E3: var_86 = CByte(0) 'Byte
  loc_11E84F2: Set var_A4 = Me.Txt
  loc_11E84F8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_11E8521: If (Proc_183_19_E8E68C(var_A8, "Call Type") = 0) Then
  loc_11E852B:   Call Txt_GotFocus()
  loc_11E8530:   Exit Sub
  loc_11E8531: End If
  loc_11E8534: Call Proc_94_45_1098FB8(var_B2, CInt(0))
  loc_11E853F: If (var_B2 = &HFF) Then
  loc_11E8542:   Exit Sub
  loc_11E8543: End If
  loc_11E8551: Set var_A4 = Me.Txt
  loc_11E8557: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8)
  loc_11E856A: global_60 = var_A8.Tag
  loc_11E8581: unk_46164B.BeginTrans var_B8
  loc_11E858A: var_86 = CByte(1) 'Byte
  loc_11E85A5: var_B0 = "Delete From TelCallControl Where Code='" & global_60
  loc_11E85B5: unk_46164B.Execute var_B0 & "'", var_DC, -1
  loc_11E85E8: var_EC = CVar((CLng(Me.FGrid.Rows) - 2)) 'Long
  loc_11E85F2: For var_11C = 1 To var_EC: var_9C = var_11C 'Variant
  loc_11E8606:   Set var_A4 = Me.Txt
  loc_11E860C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0)
  loc_11E8614:   var_FC = var_A8.Tag
  loc_11E862D:   var_CC = CVar(CLng(var_9C)) 'Long
  loc_11E8635:   var_FC = CVar(CLng(2)) 'Long
  loc_11E8655:   var_158 = CVar(CLng(var_9C)) 'Long
  loc_11E866C:   var_19C = Me.FGrid.TextMatrix)
  loc_11E8694:   var_1FC = Me.FGrid.TextMatrix)
  loc_11E86A7:   var_2B4 = Val(CStr(var_1FC))
  loc_11E86AD:   var_22C = Date
  loc_11E86B8:   Proc_6_7_F26918(var_23C, var_22C, var_2B4, CVar(CLng(4)), CVar(CLng(var_9C)), var_19C, CVar(CLng(3)))
  loc_11E86D8:   var_124 = "Insert Into TelCallControl(Code,SNo,FromTime,ToTime,PulseMultiplier,Site_Code,U_Name,U_EntDt,U_AE) Values ('" & var_B0 & "',"
  loc_11E8722:   var_210 = var_124 & CStr(Val(CStr(var_9C))) & ",'" & CStr(Me.FGrid.TextMatrix)) & "','" & CStr(var_19C) & "'," & CStr(var_2B4) & ",'"
  loc_11E875B:   unk_46164B.Execute CStr(CVar(var_210 & MemVar_1F95078 & "','" & MemVar_1F950C8 & "',") & var_23C & ",'A')"), var_2A0, -1
  loc_11E87B4: Next var_11C 'Variant
  loc_11E87C0: unk_46164B.CommitTrans
  loc_11E87C9: var_86 = CByte(0) 'Byte
  loc_11E87D8: Me.Requery -1
  loc_11E87E8: Me.Requery -1
  loc_11E87F1: Set var_A4 = Me.DGHelp
  loc_11E882A: Me.Find "SearchCode='" & global_60 & "'", 0, 1
  loc_11E883A: Set var_A4 = Me.TopCtrl1
  loc_11E8840: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_CC)
  loc_11E8859: If (CStr(DGHelp.DispID_FFFF) = "Add") Then
  loc_11E885C:   Call TopCtrl1_UnknownEvent_A()
  loc_11E8861:   Exit Sub
  loc_11E8862: End If
  loc_11E8877: var_B0 = "INI"
  loc_11E8885: Call Proc_94_50_E8D4B4(Proc_5_1_100EC1C(var_B0, Me))
  loc_11E8890: Call Proc_94_49_112B66C(global_68)
  loc_11E8895: Exit Sub
  loc_11E8896: ' Referenced from: 11E84DC
  loc_11E889F: If (CInt(var_86) = 1) Then
  loc_11E88A8:   unk_46164B.RollbackTrans
  loc_11E88AD: End If
  loc_11E88B5: Set var_A4 = Err()
  loc_11E88BB: Call 0.Method_arg_2C (var_B0)
  loc_11E88D4: MsgBox(CVar(var_B0), &H10, var_19C, var_1FC, var_22C)
  loc_11E88E7: Exit Sub
End Sub

Private Sub Form_Load() 'FDD5D0
  'Data Table: 461634
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim Me As Recordset15
  Dim var_88 As MSHFlexGrid
  loc_FDD3F4: On Error Goto loc_FDD5C9
  loc_FDD40F: Proc_6_23_DFC5B8(Me, 4035)
  loc_FDD421: Set var_88 = Me.TopCtrl1
  loc_FDD427: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_FDD435: Call 0.Method_arg_50 (var_B0)
  loc_FDD445: Set var_88 = Me.TopCtrl1
  loc_FDD44B: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_B0))
  loc_FDD472: Me.TopCtrl1.CursorLocation = 3
  loc_FDD4A8: CVarUnk
  loc_FDD4AD: VerifyVarObj
  loc_FDD4B3: Set var_88 = Me.DGHelp
  loc_FDD4B9: LateIdStAd
  loc_FDD4E3: Me.DGHelp.CursorLocation = 3
  loc_FDD50B: elect Distinct Code As Code,CallType  as Name From TelCallType Order by CallType", CVar(MemVar_1F95044), 2 "Select Distinct Code as SearchCode From TelCallControl Order by Code", CVar(MemVar_1F95044), 2
  loc_FDD533: Call Proc_94_50_E8D4B4(Proc_5_1_100EC1C("INI", Me, New, 3, -1), Me, New)
  loc_FDD53E: Call Proc_94_44_105040C(3, -1)
  loc_FDD543: Call Proc_94_49_112B66C(7905)
  loc_FDD55B: Me.FGrid.Left = CVar(CDbl(200))
  loc_FDD576: Me.FGrid.Top = CVar(CDbl(830))
  loc_FDD588: var_C0 = Me.FGrid.Top
  loc_FDD597: Call 0.Method_Me8 (var_C4)
  loc_FDD5AA: var_9C = CVar(((var_C4 - CDbl(600)) - CDbl(var_C0))) 'Single
  loc_FDD5B9: Me.FGrid.Height = CVar(CDbl(830))
  loc_FDD5C8: Exit Sub
  loc_FDD5C9: ' Referenced from: FDD3F4
  loc_FDD5C9: Proc_6_60_E63754(var_C0)
  loc_FDD5CE: Exit Sub
End Sub

Private Sub Form_Resize() 'DFD8D0
  'Data Table: 461634
  loc_DFD8CC: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E43608
  'Data Table: 461634
  loc_E435E3: Set global_72 = Nothing
  loc_E435F5: Set global_68 = Nothing
  loc_E43604: Exit Sub
  loc_E43606: Loop Until ( > 0) 'do at: E3F2C9
End Sub

Private Sub Form_Activate() 'E46C00
  'Data Table: 461634
  loc_E46BD0: On Error Goto loc_E46BFA
  loc_E46BD7: Set var_88 = Me.TopCtrl1
  loc_E46BDD: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E46BF2: If (CLng(CInt()) = &H2D) Then
  loc_E46BF5:   Call TopCtrl1_UnknownEvent_15()
  loc_E46BFA:   ' Referenced from: E46BD0
  loc_E46BFA: End If
  loc_E46BFA: Proc_6_60_E63754()
  loc_E46BFF: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25AA4
  'Data Table: 461634
  loc_E25A89: If (MasterFormExit = &HFF) Then
  loc_E25A99:   Me.Global.Unload Me
  loc_E25AA1: End If
  loc_E25AA1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E29FD0
  'Data Table: 461634
  loc_E29FA8: On Error Goto loc_E29FC8
  loc_E29FBF: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E29FC7: Exit Sub
  loc_E29FC8: ' Referenced from: E29FA8
  loc_E29FC8: Proc_6_60_E63754(Shift)
  loc_E29FCD: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F961AC
  'Data Table: 461634
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_F96050: Call Proc_94_51_E86658()
  loc_F96068: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_F96083: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F9608C: Set var_BC = Me.FGrid
  loc_F960C2: Set var_104 = Me.TxtGrid
  loc_F960C8: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_F960D0: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_F96101: var_110 = CLng(Me.FGrid.Col)
  loc_F96111: If (var_110 = CLng(2)) Then
  loc_F96123:   Set var_A8 = Me.TxtGrid
  loc_F96129:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, 5)
  loc_F96131:   var_BC.MaxLength = var_110
  loc_F96140: Else
  loc_F96147:   If (var_110 = CLng(3)) Then
  loc_F96159:     Set var_A8 = Me.TxtGrid
  loc_F9615F:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_F96167:     var_BC.MaxLength = 5
  loc_F96176:   Else
  loc_F9617D:     If (var_110 = CLng(4)) Then
  loc_F9618F:       Set var_A8 = Me.TxtGrid
  loc_F96195:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_F9619D:       var_BC.MaxLength = 6
  loc_F961A9:     End If
  loc_F961A9:   End If
  loc_F961A9: End If
  loc_F961A9: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '10BC6F0
  'Data Table: 461634
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_10BC40C: On Error Goto loc_10BC6EA
  loc_10BC419: If (CLng(Shift) = &H1B) Then
  loc_10BC429:   Set var_88 = Me.TxtGrid
  loc_10BC42F:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_10BC449:   Set var_94 = Me.TxtGrid
  loc_10BC44F:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_10BC457:   var_98.Text = var_8C.Tag
  loc_10BC473:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_10BC478:   Call Proc_94_51_E86658(arg_14)
  loc_10BC481:   Set var_88 = Me.FGrid
  loc_10BC49E:   Set var_88 = Me.TxtGrid
  loc_10BC4A4:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_10BC4AC:   var_8C.Visible = False
  loc_10BC4B8:   Exit Sub
  loc_10BC4B9: End If
  loc_10BC4CC: var_AC = CLng(Me.FGrid.Col)
  loc_10BC4DC: If (var_AC = CLng(2)) Then
  loc_10BC51F:   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_66 = &HFF))) Then
  loc_10BC528:     Call Proc_94_47_130C398(KeyCode, var_AE)
  loc_10BC533:     If (var_AE = &HFF) Then
  loc_10BC579:       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, 4)
  loc_10BC589:     End If
  loc_10BC589:   End If
  loc_10BC58C: Else
  loc_10BC593:   If (var_AC = CLng(3)) Then
  loc_10BC5D6:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_66 = &HFF))) Then
  loc_10BC5DF:       Call Proc_94_47_130C398(KeyCode, var_AE, 0, 3)
  loc_10BC5EA:       If (var_AE = &HFF) Then
  loc_10BC621:         Set var_8C = Me.TxtGrid
  loc_10BC630:         Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_66, 4)
  loc_10BC640:       End If
  loc_10BC640:     End If
  loc_10BC643:   Else
  loc_10BC64A:     If (var_AC = CLng(4)) Then
  loc_10BC65C:       Set var_88 = Me.TxtGrid
  loc_10BC662:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 6, 0, 4)
  loc_10BC66A:       var_8C.MaxLength = 0
  loc_10BC680:       If (CLng(Shift) = &HD) Then
  loc_10BC689:         Call Proc_94_47_130C398(KeyCode, var_AE, 0)
  loc_10BC694:         If (var_AE = &HFF) Then
  loc_10BC6DA:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, 4)
  loc_10BC6EA:         End If
  loc_10BC6EA:       End If
  loc_10BC6EA:       ' Referenced from: 10BC40C
  loc_10BC6EA:     End If
  loc_10BC6EA:   End If
  loc_10BC6EA: End If
  loc_10BC6EA: Proc_6_60_E63754(0, 0, 0)
  loc_10BC6EF: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EEA818
  'Data Table: 461634
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  loc_EEA757: Proc_6_58_E06050(arg_10)
  loc_EEA768: If (KeyAscii = 0) Then
  loc_EEA77E:   var_A0 = CLng(Me.FGrid.Col)
  loc_EEA78E:   If Not (var_A0 = CLng(2)) Then
  loc_EEA798:     If (var_A0 = CLng(3)) Then
  loc_EEA79B:     End If
  loc_EEA7A5:     Set var_8C = Me.TxtGrid
  loc_EEA7AB:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4)
  loc_EEA7C6:     Proc_6_42_129B55C(var_A4, arg_10, 2)
  loc_EEA7D5:   Else
  loc_EEA7DC:     If (var_A0 = CLng(4)) Then
  loc_EEA7E9:       Set var_8C = Me.TxtGrid
  loc_EEA7EF:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4, 2)
  loc_EEA80A:       Proc_6_42_129B55C(var_A4, arg_10, 3)
  loc_EEA816:     End If
  loc_EEA816:   End If
  loc_EEA816: End If
  loc_EEA816: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E2DF04
  'Data Table: 461634
  Dim var_9C As Long
  loc_E2DEDC: On Error Goto loc_E2DEFC
  loc_E2DEF2: var_9C = CLng(Me.FGrid.Col)
  loc_E2DEFB: Exit Sub
  loc_E2DEFC: ' Referenced from: E2DEDC
  loc_E2DEFC: Proc_6_60_E63754(var_9C)
  loc_E2DF01: Exit Sub
  loc_E2DF02: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E5C3B0
  'Data Table: 461634
  Dim arg_10 As Integer
  Dim var_A0 As Long
  loc_E5C37C: If (Cancel = 0) Then
  loc_E5C385:   Call Proc_94_47_130C398(Cancel, var_88)
  loc_E5C38E:   arg_10 = Not(var_88)
  loc_E5C391: End If
  loc_E5C3A4: var_A0 = CLng(Me.FGrid.Col)
  loc_E5C3AD: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'EAC29C
  'Data Table: 461634
  Dim Me As Recordset15
  loc_EAC21A: Set var_88 = Me.Txt
  loc_EAC220: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EAC22E: Proc_6_74_E23240(var_8C)
  loc_EAC23A: Call Proc_94_51_E86658(var_8C)
  loc_EAC24D: If (Index = CInt(0)) Then
  loc_EAC267:   If (Me.RecordCount > 0) Then
  loc_EAC275:     Set var_8C = Me.FGPoint
  loc_EAC28D:     Proc_6_137_1192FDC(Me.DGHelp, global_72, Index)
  loc_EAC29B:   End If
  loc_EAC29B: End If
  loc_EAC29B: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FEF578
  'Data Table: 461634
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_90 As TextBox
  loc_FEF39E: If (CLng(Shift) = &H1B) Then
  loc_FEF3A1:   Call Proc_94_51_E86658()
  loc_FEF3A6:   Exit Sub
  loc_FEF3A7: End If
  loc_FEF3B5: If (KeyCode = CInt(0)) Then
  loc_FEF3D0:   Set var_9C = Nothing
  loc_FEF3DB:   Set var_98 = Nothing
  loc_FEF409:   Proc_6_69_134A630(Me.DGHelp, Me.Txt, KeyCode, global_72, Shift, 0)
  loc_FEF476:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FEF47D:     Set var_98 = Me.DGHelp
  loc_FEF484:     Set var_90 = Me.FGPoint
  loc_FEF49C:     Proc_6_138_106E830(var_98, global_72, KeyCode, var_90, 1)
  loc_FEF4AA:   End If
  loc_FEF4B9:   Me.FGPoint.Visible = False
  loc_FEF4C1: End If
  loc_FEF4DD: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_FEF4F5:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FEF4FB:     Call Proc_94_45_1098FB8(var_92, var_98, var_9C)
  loc_FEF506:     If (var_92 = &HFF) Then
  loc_FEF516:       Set var_8C = Me.Txt
  loc_FEF51C:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, vbNullString)
  loc_FEF524:       var_90.Text = 0
  loc_FEF530:       Exit Sub
  loc_FEF531:     End If
  loc_FEF531:   End If
  loc_FEF546:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FEF54F:     Proc_6_75_E5335C(Shift, arg_14)
  loc_FEF554:   End If
  loc_FEF567:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_FEF570:     Proc_6_76_E533C8(Shift, arg_14)
  loc_FEF575:   End If
  loc_FEF575: End If
  loc_FEF575: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E2633C
  'Data Table: 461634
  Dim var_96 As Integer
  loc_E2631E: Proc_6_133_E7FB08(var_94)
  loc_E26330: Proc_6_58_E06050(CInt(var_94), CInt(var_94))
  loc_E26338: var_96 = KeyAscii
  loc_E2633B: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EDDE30
  'Data Table: 461634
  loc_EDDD8E: If (KeyCode = CInt(0)) Then
  loc_EDDDAD:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EDDDC1:     var_A8 = "Name"
  loc_EDDDE9:     Proc_6_68_12A2818(Me.DGHelp, Me.Txt, CInt(0), global_72)
  loc_EDDDFC:   End If
  loc_EDDE1F:   Proc_6_138_106E830(Me.DGHelp, global_72, KeyCode, Me.FGPoint)
  loc_EDDE2D: End If
  loc_EDDE2D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E474EC
  'Data Table: 461634
  loc_E474CA: Set var_88 = Me.Txt
  loc_E474D0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E474DE: Proc_6_73_E23294(var_8C)
  loc_E474EA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '10779DC
  'Data Table: 461634
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_BC As String
  Dim var_A8 As Variant
  Dim unk_46164B As Connection15
  Dim var_A4 As Recordset15
  Dim var_D8 As Field20
  Dim arg_10 As Integer
  loc_107775F: var_86 = Cancel
  loc_107776A: If (var_86 = CInt(0)) Then
  loc_10777A9:   Set var_A4 = Me.Txt
  loc_10777AF:   Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_10777B7:   var_A8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10777EA:   var_A0 = Me.Fields.Item("Code")
  loc_10777F2:   var_B8 = var_A0.Value
  loc_1077809:   Set var_A4 = Me.Txt
  loc_107780F:   Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_1077817:   var_A8.Tag = CStr(var_B8)
  loc_1077831:   Set var_8C = Me.TopCtrl1
  loc_1077837:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_86)
  loc_107783F:   var_BC = CStr()
  loc_1077850:   If (var_BC = "Add") Then
  loc_1077880:     Set var_8C = Me.Txt
  loc_1077886:     Call 0.Method_Txt_Validate0 (CInt(0), var_A0, var_BC, "Select Count(*) From TelCallControl Where Code='", var_B8, -1)
  loc_10778A7:     unk_46164B.Execute var_A8 & var_BC & "'", 0, var_D8
  loc_10778AF:     var_E8 = var_A0.Tag.Fields
  loc_10778B7:      = var_A8.Item()
  loc_10778BF:      = var_D8.Value
  loc_10778EC:     If (var_E8 > 0) Then
  loc_1077908:       MsgBox("Duplicate Name", 0, var_E8, var_108, var_128)
  loc_1077918:       Exit Sub
  loc_1077919:     End If
  loc_1077919:   End If
  loc_1077924:   Set var_8C = Me.Txt
  loc_107792A:   Call 0.Method_Txt_Validate0 (CInt(0))
  loc_1077953:   If (Proc_6_27_EA61EC(var_A0, "Name") = 0) Then
  loc_1077960:     Set var_8C = Me.Txt
  loc_1077966:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_107796E:     var_A0.SetFocus
  loc_107797C:     arg_10 = &HFF
  loc_107797F:     Exit Sub
  loc_1077980:   End If
  loc_1077984:   Set var_8C = Me.TopCtrl1
  loc_107798A:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_10779A3:   If (CStr(var_A0) = "Add") Then
  loc_10779A9:     Call Proc_94_45_1098FB8(var_12A)
  loc_10779B4:     If (var_12A = &HFF) Then
  loc_10779B9:       arg_10 = &HFF
  loc_10779BC:       Exit Sub
  loc_10779BD:     End If
  loc_10779BD:   End If
  loc_10779D0:   Me.FGrid.Col = 2
  loc_10779D8: End If
  loc_10779D8: Exit Sub
End Sub

Public Function MasterFormExitGet() '461F50
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '461F5F
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E95538
  'Data Table: 461634
  Dim Me As Recordset15
  loc_E954C6: On Error Goto loc_E9552F
  loc_E954CF: Me.MoveFirst
  loc_E954F9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E95521: Proc_5_0_1107AD0(&HFF, Me, global_68)
  loc_E95529: Call Proc_94_49_112B66C(0)
  loc_E9552E: Exit Sub
  loc_E9552F: ' Referenced from: E954C6
  loc_E9552F: Proc_6_60_E63754(var_A0)
  loc_E95534: Exit Sub
End Sub

Public Sub Proc_94_44_105040C
  'Data Table: 461634
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_10501AC: On Error Goto loc_1050406
  loc_10501BD: Set var_88 = Me.Txt
  loc_10501C3: Call 0.Method_Proc_94_44_105040C0 (CInt(0), var_8C)
  loc_10501E2: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_10501FE: Set var_B4 = Me.Txt
  loc_1050204: Call 0.Method_Proc_94_44_105040C0 (CInt(0), var_B8)
  loc_105021F: Set var_88 = Me.Txt
  loc_1050225: Call 0.Method_Proc_94_44_105040C0 (CInt(0), var_8C)
  loc_105023D: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_105024C: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_1050262: Set var_C4 = Me.FGrid
  loc_1050271: var_C4.Cols = 5
  loc_105028A: global_56 = CStr(CLng(var_C4.BackColor))
  loc_1050297: var_A0 = CVar(CLng(1)) 'Long
  loc_105029C: var_E8 = 0
  loc_10502A8: LateIdCallSt
  loc_10502B3: var_A0 = CVar(CLng(0)) 'Long
  loc_10502B8: var_E8 = &H1F4
  loc_10502C4: LateIdCallSt
  loc_10502CC: var_A0 = 0
  loc_10502D8: var_E8 = CVar(CLng(0)) 'Long
  loc_10502DD: var_108 = "S.No"
  loc_10502E6: LateIdCallSt
  loc_10502F1: var_A0 = CVar(CLng(2)) 'Long
  loc_10502F6: var_E8 = &H3E8
  loc_1050302: LateIdCallSt
  loc_105030D: var_A0 = CVar(CLng(3)) 'Long
  loc_1050318: var_E8 = CVar(CInt(7)) 'Integer
  loc_105031F: LateIdCallSt
  loc_1050327: var_A0 = 0
  loc_1050333: var_E8 = CVar(CLng(2)) 'Long
  loc_1050338: var_108 = "From Time"
  loc_1050341: LateIdCallSt
  loc_105034C: var_A0 = CVar(CLng(3)) 'Long
  loc_1050351: var_E8 = &H3E8
  loc_105035D: LateIdCallSt
  loc_1050368: var_A0 = CVar(CLng(3)) 'Long
  loc_1050373: var_E8 = CVar(CInt(7)) 'Integer
  loc_105037A: LateIdCallSt
  loc_1050382: var_A0 = 0
  loc_105038E: var_E8 = CVar(CLng(3)) 'Long
  loc_1050393: var_108 = "To Time"
  loc_105039C: LateIdCallSt
  loc_10503A7: var_A0 = CVar(CLng(4)) 'Long
  loc_10503AC: var_E8 = &H5DC
  loc_10503B8: LateIdCallSt
  loc_10503C3: var_A0 = CVar(CLng(4)) 'Long
  loc_10503CE: var_E8 = CVar(CInt(7)) 'Integer
  loc_10503D5: LateIdCallSt
  loc_10503DD: var_A0 = 0
  loc_10503E9: var_E8 = CVar(CLng(4)) 'Long
  loc_10503EE: var_108 = "Pulse Multiplier"
  loc_10503F7: LateIdCallSt
  loc_1050401: Set var_C4 = Nothing 
  loc_1050405: Exit Sub
  loc_1050406: ' Referenced from: 10501AC
  loc_1050406: Proc_6_60_E63754(var_C4, var_108, var_E8, var_A0, var_C4, var_E8, var_A0, var_C4)
  loc_105040B: Exit Sub
End Sub

Public Sub Proc_94_45_1098FB8
  'Data Table: 461634
  Dim Me As Recordset15
  Dim var_B8 As TextBox
  Dim unk_46164B As Connection15
  Dim var_E0 As Fields15
  Dim var_F4 As Field20
  loc_1098D4C: If (Me.RecordCount = 0) Then
  loc_1098D4F:   Proc_94_45_1098FB8 = 0
  loc_1098D55: End If
  loc_1098D59: Set var_A0 = Me.TopCtrl1
  loc_1098D5F: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1098D78: If (CStr() = "Add") Then
  loc_1098DB6:   Set var_A0 = Me.Txt
  loc_1098DBC:   Call 0.Method_Proc_94_45_1098FB80 (CInt(0), var_B8, var_BC, "Select Count(*) From TelCallControl Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Code='", var_B0, -1)
  loc_1098DDD:   unk_46164B.Execute var_E0 & var_BC & "'", 0, var_F4
  loc_1098DED:    = var_E0.Item()
  loc_1098DF5:    = var_F4.Value
  loc_1098E26:   If (var_B8.Tag.Fields > 0) Then
  loc_1098E44:     var_B0 = "Duplicate Name"
  loc_1098E4A:     MsgBox(var_B0, &H40, "Information", var_124, var_144)
  loc_1098E65:     Set var_A0 = Me.Txt
  loc_1098E6B:     Call 0.Method_Proc_94_45_1098FB80 (CInt(0))
  loc_1098E73:     var_B8.SetFocus
  loc_1098E84:     Proc_94_45_1098FB8 = &HFF
  loc_1098E8A:   End If
  loc_1098E8D: Else
  loc_1098EC8:   Set var_A0 = Me.Txt
  loc_1098ECE:   Call 0.Method_Proc_94_45_1098FB80 (CInt(0), var_B8, var_BC, "Select Count(*) From TelCallControl Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Code='", var_B0, -1)
  loc_1098F00:   unk_46164B.Execute var_E0 & var_BC & "' And Code <>'" & global_76 & "'", 0, var_F4
  loc_1098F10:    = var_E0.Item(var_B8)
  loc_1098F18:    = var_F4.Value
  loc_1098F4D:   If (var_B8.Tag.Fields > 0) Then
  loc_1098F71:     MsgBox("Duplicate Name", &H40, "Information", var_124, var_144)
  loc_1098F8C:     Set var_A0 = Me.Txt
  loc_1098F92:     Call 0.Method_Proc_94_45_1098FB80 (CInt(0))
  loc_1098F9A:     var_B8.SetFocus
  loc_1098FAB:     Proc_94_45_1098FB8 = &HFF
  loc_1098FB1:   End If
  loc_1098FB1: End If
  loc_1098FB1: Proc_94_45_1098FB8 = var_B8
End Sub

Public Sub Proc_94_46_E41D00
  'Data Table: 461634
  loc_E41CDC: Set var_88 = Me.TopCtrl1
  loc_E41CE2: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E41CFB: If (CStr() = "Browse") Then
  loc_E41CFE:   Exit Sub
  loc_E41CFF: End If
  loc_E41CFF: Exit Sub
End Sub

Public Sub Proc_94_47_130C398
  'Data Table: 461634
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As Variant
  Dim var_C4 As Variant
  Dim var_EC As String
  Dim var_F4 As Double
  Dim var_C0 As MSHFlexGrid
  Dim var_134 As Variant
  Dim var_124 As Variant
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_188 As Variant
  Dim var_104 As Variant
  Dim var_A8 As String
  Dim var_C8 As String
  Dim var_1C4 As Double
  loc_130BC9B: var_A0 = CLng(Me.FGrid.Col)
  loc_130BCAB: If Not (var_A0 = CLng(2)) Then
  loc_130BCB5:   If (var_A0 = CLng(3)) Then
  loc_130BCB8:   End If
  loc_130BCC4:   Set var_8C = Me.TxtGrid
  loc_130BCCA:   Call 0.Method_Proc_94_47_130C3980 (0, var_A4)
  loc_130BD02:   Set var_C0 = Me.TxtGrid
  loc_130BD08:   Call 0.Method_Proc_94_47_130C3980 (0, var_C4, var_C8)
  loc_130BD10:   (CDbl(Val(CStr(Trim(CVar(var_A4.Text))))) < CDbl(0)) = var_C4.Text
  loc_130BD52:   If (var_A0 Or (CDbl(Val(CStr(Trim(CVar(var_C8))))) > CDbl(&H18))) Then
  loc_130BD66:     Set var_8C = Me.TxtGrid
  loc_130BD6C:     Call 0.Method_Proc_94_47_130C3980 (0, var_A4)
  loc_130BD74:     var_A4.Text = vbNullString
  loc_130BD89:     Set var_8C = Me.TxtGrid
  loc_130BD8F:     Call 0.Method_Proc_94_47_130C3980 (0, var_A4)
  loc_130BD97:     var_A4.SetFocus
  loc_130BDA3:     Proc_94_47_130C398 = 0
  loc_130BDA9:   End If
  loc_130BDB5:   Set var_C0 = Me.TxtGrid
  loc_130BDBB:   Call 0.Method_Proc_94_47_130C3980 (0, var_C4)
  loc_130BDD9:   var_EC = CStr(Trim(CVar(var_C4.Text)))
  loc_130BDE2:   var_F4 = Val(var_EC)
  loc_130BDF1:   Set var_8C = Me.TxtGrid
  loc_130BDF7:   Call 0.Method_Proc_94_47_130C3980 (0, var_A4)
  loc_130BE4C:   If (CDbl((Val(CStr(Trim(CVar(var_A4.Text)))) - Int(var_F4))) > 0.59) Then
  loc_130BE60:     Set var_8C = Me.TxtGrid
  loc_130BE66:     Call 0.Method_Proc_94_47_130C3980 (0, var_A4, vbNullString)
  loc_130BE6E:     var_A4.Text = 0
  loc_130BE83:     Set var_8C = Me.TxtGrid
  loc_130BE89:     Call 0.Method_Proc_94_47_130C3980 (0, var_A4)
  loc_130BE91:     var_A4.SetFocus
  loc_130BE9D:     Proc_94_47_130C398 = var_F4
  loc_130BEA3:   End If
  loc_130BEAF:   Set var_8C = Me.TxtGrid
  loc_130BEB5:   Call 0.Method_Proc_94_47_130C3980 (0, var_A4)
  loc_130BEE0:   var_134 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_130BEF8:   var_154 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_130BF31:   Set var_188 = Me.FGrid
  loc_130BF37:   LateIdCallSt
  loc_130BF83:   Set var_188 = Me.FGrid
  loc_130BF9C:   var_F4 = Val(CStr(var_188.TextMatrix)))
  loc_130BFBC:   Set var_A4 = Me.FGrid
  loc_130BFEE:   var_A8 = CStr(Me.FGrid.TextMatrix))
  loc_130C01E:   If (3 And (CDbl(Val(var_A8)) < CDbl(var_F4))) Then
  loc_130C032:     Set var_8C = Me.TxtGrid
  loc_130C038:     Call 0.Method_Proc_94_47_130C3980 (0, var_A4, vbNullString, 0, CVar(CLng(var_A4.Row)), (CLng(Me.FGrid.Col) = 3), var_F4)
  loc_130C040:     var_A4.Text = 2
  loc_130C055:     Set var_8C = Me.TxtGrid
  loc_130C05B:     Call 0.Method_Proc_94_47_130C3980 (0, var_A4, CVar(CLng(Me.FGrid.Row)), var_188)
  loc_130C063:     var_A4.SetFocus
  loc_130C06F:     Proc_94_47_130C398 = CVar(CStr(Format(CVar((Val(var_A4.Text) * CDbl(&H64))), "00:00")))
  loc_130C075:   End If
  loc_130C09D:   For var_19C = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 2)): var_88 = var_19C 'Byte
  loc_130C0AD:     var_134 = 2
  loc_130C0D3:     var_F4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_130C0F3:     var_174 = Me.FGrid.TextMatrix)
  loc_130C106:     var_1C4 = Val(CStr(var_174))
  loc_130C115:     Set var_8C = Me.TxtGrid
  loc_130C11B:     Call 0.Method_Proc_94_47_130C3980 (0, var_A4, var_A8, var_1C4, 3, CVar(CLng(var_88)), var_F4)
  loc_130C123:     var_134 = var_A4.Text
  loc_130C154:     Set var_C4 = Me.TxtGrid
  loc_130C15A:     Call 0.Method_Proc_94_47_130C3980 (0, var_188, var_EC, (CDbl(Val(CStr(Trim(CVar(var_A8))))) > CDbl(var_F4)), CVar(CLng(var_88)))
  loc_130C162:     CByte(1) = var_188.Text
  loc_130C170:     var_124 = Trim(CVar(var_EC))
  loc_130C1CF:     If ((1 And (CDbl(Val(CStr(var_124))) < CDbl(var_1C4))) And (CLng(Me.FGrid.Row) <> CLng(var_88))) Then
  loc_130C1D2:       var_104 = 0
  loc_130C1EE:       var_134 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_130C22D:       MsgBox(CVar(CStr(Me.FGrid.TextMatrix)) & " Already included in the Range"), 0, "Information", var_124, var_174)
  loc_130C25E:       var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_130C267:       Set var_A4 = Me.FGrid
  loc_130C276:       var_134 = CVar(CLng(var_A4.Col)) 'Long
  loc_130C27B:       var_154 = vbNullString
  loc_130C285:       Set var_C0 = Me.FGrid
  loc_130C28B:       LateIdCallSt
  loc_130C2A7:       Set var_8C = Me.FGrid
  loc_130C2B8:       Proc_94_47_130C398 = FGrid.DispID_8001
  loc_130C2BE:     End If
  loc_130C2C1:   Next var_19C 'Byte
  loc_130C2CA: Else
  loc_130C2D1:   If (var_A0 = CLng(4)) Then
  loc_130C2E0:     Set var_8C = Me.TxtGrid
  loc_130C2E6:     Call 0.Method_Proc_94_47_130C3980 (0, var_A4)
  loc_130C311:     var_134 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_130C329:     var_154 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_130C356:     var_174 = CVar(CStr(Format(CVar(Val(var_A4.Text)), "0.00"))) 'String
  loc_130C35E:     Set var_188 = Me.FGrid
  loc_130C364:     LateIdCallSt
  loc_130C38B:   End If
  loc_130C38B: End If
  loc_130C390: Proc_94_47_130C398 = &HFF
End Sub

Public Sub Proc_94_48_F20FEC
  'Data Table: 461634
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F20EEE: global_76 = vbNullString
  loc_F20F00: Set var_8C = Me.Txt
  loc_F20F06: Call 0.Method_Proc_94_48_F20FECC (var_8E, var_86)
  loc_F20F16: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F20F2C:   Set var_8C = Me.Txt
  loc_F20F32:   Call 0.Method_Proc_94_48_F20FEC0 (CInt(var_86), var_98)
  loc_F20F3A:   var_98.Text = vbNullString
  loc_F20F56:   Set var_8C = Me.Txt
  loc_F20F5C:   Call 0.Method_Proc_94_48_F20FEC0 (CInt(var_86), var_98)
  loc_F20F64:   var_98.Tag = vbNullString
  loc_F20F73: Next var_92 'Byte
  loc_F20F8C: Me.FGrid.Rows = 1
  loc_F20FA9: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F20FB1: Set var_98 = Me.FGrid
  loc_F20FE0: Me.FGrid.FixedRows = 1
  loc_F20FE8: Exit Sub
  loc_F20FE9: ThisVCallR8
End Sub

Public Sub Proc_94_49_112B66C
  'Data Table: 461634
  Dim var_8C As Integer
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim unk_46164B As Connection15
  Dim var_88 As Recordset15
  Dim var_134 As TextBox
  Dim var_118 As Variant
  Dim var_148 As Variant
  Dim var_128 As Variant
  loc_112B30C: On Error Goto loc_112B663
  loc_112B311: var_8C = 1
  loc_112B32B: If (Me.RecordCount > 0) Then
  loc_112B33B:   var_D4 = "Select TelCallControl.*, TelCallType.CallType as Name From TelCallControl Left Join TelCallType On TelCallControl.Code=TelCallType.Code Where TelCallControl.Code='"
  loc_112B384:   unk_46164B.Execute CStr(var_D4 & Me.Fields.Item("SearchCode").Value & "'"), var_128, -1
  loc_112B38F:   Set var_88 = var_12C
  loc_112B3BD:   If (var_88.RecordCount > 0) Then
  loc_112B3C0:     Call Proc_94_48_F20FEC(var_12C)
  loc_112B3C5:     ' Referenced from: 112B62A
  loc_112B3D4:     If Not(var_88.EOF) Then
  loc_112B410:       Set var_12C = Me.Txt
  loc_112B416:       Call 0.Method_Proc_94_49_112B66C0 (CInt(0), var_134)
  loc_112B41E:       var_134.Tag = CStr(var_88.Fields.Item("Code").Value)
  loc_112B46A:       Set var_12C = Me.Txt
  loc_112B470:       Call 0.Method_Proc_94_49_112B66C0 (CInt(0), var_134)
  loc_112B478:       var_134.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Name")))
  loc_112B490:       Set var_138 = Me.FGrid
  loc_112B493:       var_B0 = vbNullString
  loc_112B4A8:       var_D4 = CVar(CLng(var_8C)) 'Long
  loc_112B4B0:       var_118 = CVar(CLng(0)) 'Long
  loc_112B4E0:       var_E4 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_112B4E7:       LateIdCallSt
  loc_112B536:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("FromTime")), CVar(CLng(2)), CVar(CLng(var_8C)), var_138, var_E4)) 'String
  loc_112B53D:       LateIdCallSt
  loc_112B55B:       var_118 = CVar(CLng(3)) 'Long
  loc_112B588:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ToTime")), var_118, CVar(CLng(var_8C)), var_138, var_E4)) 'String
  loc_112B58F:       LateIdCallSt
  loc_112B5C1:       var_F4 = CVar(CLng(var_8C)) 'Long
  loc_112B5C9:       var_148 = CVar(CLng(4)) 'Long
  loc_112B5D8:       var_D4 = "0.00"
  loc_112B5DD:       var_E4 = var_D4
  loc_112B5F6:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("PulseMultiplier")), var_E4))) 'String
  loc_112B5FD:       LateIdCallSt
  loc_112B615:       Set var_138 = Nothing 
  loc_112B61F:       var_8C = (var_8C + 1)
  loc_112B625:       var_88.MoveNext
  loc_112B62A:       GoTo loc_112B3C5
  loc_112B62D:     End If
  loc_112B62F:     var_8C = 0
  loc_112B645:     Me.FGrid.FixedRows = 1
  loc_112B64D:   End If
  loc_112B650: Else
  loc_112B650:   Call Proc_94_48_F20FEC(var_8C, var_8C, var_138, var_128, 1, 1, var_148)
  loc_112B655: End If
  loc_112B655: Call Proc_94_51_E86658(var_F4, var_138, var_E4)
  loc_112B65F: Set var_88 = Nothing
  loc_112B662: Exit Sub
  loc_112B663: ' Referenced from: 112B30C
  loc_112B663: Proc_6_60_E63754(var_118, var_D4)
  loc_112B668: Exit Sub
  loc_112B669: FGrid.DispID_10000 = 
End Sub

Public Sub Proc_94_50_E8D4B4(arg_C) 'E8D4B4
  'Data Table: 461634
  Dim var_98 As TextBox
  loc_E8D44A: Set var_8C = Me.Txt
  loc_E8D450: Call 0.Method_Proc_94_50_E8D4B4C (var_8E, var_86)
  loc_E8D460: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E8D476:   Set var_8C = Me.Txt
  loc_E8D47C:   Call 0.Method_Proc_94_50_E8D4B40 (CInt(var_86), var_98)
  loc_E8D484:   var_98.Enabled = arg_C
  loc_E8D493: Next var_92 'Byte
  loc_E8D4A2: Set var_8C = Me.TopCtrl1
  loc_E8D4A8: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000F(False)
  loc_E8D4B0: Exit Sub
End Sub

Public Sub Proc_94_51_E86658
  'Data Table: 461634
  loc_E86604: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E86616:   Me.DGHelp.Visible = False
  loc_E8661E: End If
  loc_E8663A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E8664C:   Me.FGPoint.Visible = False
  loc_E86654: End If
  loc_E86654: Exit Sub
End Sub

Public Sub Proc_94_52_EEE4CC(arg_C) 'EEE4CC
  'Data Table: 461634
  Dim var_90 As TextBox
  loc_EEE414: Call Proc_94_51_E86658()
  loc_EEE41D: Call 0.Method_Proc_94_52_EEE4CC8 (var_88)
  loc_EEE42E: Set var_8C = Me.Txt
  loc_EEE434: Call 0.Method_Proc_94_52_EEE4CC0 (CInt(var_88))
  loc_EEE461: If (Proc_6_27_EA61EC(var_90, "Name") = 0) Then
  loc_EEE464:   Exit Sub
  loc_EEE465: End If
  loc_EEE49C: If (MsgBox("Save Record ?", 4, "Save Data", var_F8, var_118) = 6) Then
  loc_EEE49F:   Call TopCtrl1_UnknownEvent_16()
  loc_EEE4A7: Else
  loc_EEE4B1:   Set var_8C = Me.Txt
  loc_EEE4B7:   Call 0.Method_Proc_94_52_EEE4CC0 (arg_C, var_90)
  loc_EEE4BF:   var_90.SetFocus
  loc_EEE4CB: End If
  loc_EEE4CB: Exit Sub
End Sub

Public Sub Proc_94_53_FA3E54
  'Data Table: 461634
  Dim var_98 As MSHFlexGrid
  Dim var_E0 As Variant
  Dim var_120 As Variant
  Dim var_9C As TextBox
  loc_FA3CE9: Set var_98 = Me.TxtGrid
  loc_FA3CEF: Call 0.Method_Proc_94_53_FA3E540 (0)
  loc_FA3D12: var_8C = CStr(Ucase(Trim(CVar(var_9C))))
  loc_FA3D46: For var_D0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D0 'Integer
  loc_FA3D6A:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FA3D6D:     GoTo loc_FA3E3F
  loc_FA3D70:   End If
  loc_FA3D74:   var_E0 = CVar(CLng(var_88)) 'Long
  loc_FA3D9E:   var_CC = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FA3DA8:   var_120 = CVar(CStr(var_CC)) 'String
  loc_FA3DDD:   If ((var_8C = CStr(Ucase(var_120))) And (CStr(Ucase(var_120)) <> vbNullString)) Then
  loc_FA3E01:     MsgBox("Duplicate Sundry Name Not Allowed", &H40, "Validation", var_CC, var_120)
  loc_FA3E1A:     Set var_98 = Me.TxtGrid
  loc_FA3E20:     Call 0.Method_Proc_94_53_FA3E540 (0, var_9C, CVar(CLng(var_92)))
  loc_FA3E28:     var_9C.SetFocus
  loc_FA3E39:     Proc_94_53_FA3E54 = 0
  loc_FA3E3F:     ' Referenced from: FA3D6D
  loc_FA3E3F:   End If
  loc_FA3E42: Next var_D0 'Integer
  loc_FA3E4C: Proc_94_53_FA3E54 = &HFF
End Sub
