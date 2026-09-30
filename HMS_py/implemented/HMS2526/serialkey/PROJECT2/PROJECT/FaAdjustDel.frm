VERSION 5.00
Begin VB.Form FaAdjustDel
  Caption = "Adjustment Delete"
  BackColor = &HE6AC86&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FaAdjustDel.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4680
  ClientHeight = 3195
  LockControls = -1  'True
  Begin DataCombo TXT_ACCOUNT
    Left = 2370
    Top = 675
    Width = 4575
    Height = 360
    TabIndex = 0
  End
  Begin MSFlexGrid FG1
    Left = 15
    Top = 1155
    Width = 11535
    Height = 7140
    TabIndex = 1
  End
  Begin BtnEnh btndelete
    Left = 8880
    Top = 555
    Width = 1365
    Height = 570
    TabIndex = 4
  End
  Begin BtnEnh BTNEXIT
    Left = 10320
    Top = 555
    Width = 1365
    Height = 570
    TabIndex = 5
  End
  Begin BtnEnh BTNFILL
    Left = 7440
    Top = 555
    Width = 1365
    Height = 570
    TabIndex = 6
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = -15
    Width = 180
    Height = 540
    TabIndex = 3
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
  Begin Label Label
    Caption = "Account Name"
    Index = 1
    ForeColor = &HC00000&
    Left = 720
    Top = 705
    Width = 1380
    Height = 240
    TabIndex = 2
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

Attribute VB_Name = "FaAdjustDel"


Private Sub Form_Load() '105375C
  'Data Table: 425E90
  Dim var_A8 As Variant
  Dim var_8C As Variant
  Dim var_C8 As Variant
  loc_10534EC: On Error Goto loc_1053732
  loc_10534F9: var_94 = "SUBCODE"
  loc_1053514: var_88 = "SELECT NAME,SUBCODE FROM SUBGROUP ORDER BY NAME"
  loc_105351A: Proc_183_43_EF88E4(var_88, Me.TXT_ACCOUNT)
  loc_105353B: Proc_183_47_EA13E8(Me, "NAME")
  loc_105354A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1053562: Me.FG1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1053573: Set var_8C = Me.btndelete
  loc_1053579: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_105358F: Me.TXT_ACCOUNT.Enabled = True
  loc_1053597: var_A8 = 2
  loc_10535A6: var_C8 = CVar(CInt(1)) 'Integer
  loc_10535AE: Set var_8C = Me.FG1
  loc_10535B4: LateIdCallSt
  loc_10535BF: var_A8 = 4
  loc_10535CE: var_C8 = CVar(CInt(1)) 'Integer
  loc_10535D6: Set var_8C = Me.FG1
  loc_10535DC: LateIdCallSt
  loc_10535E7: var_A8 = 6
  loc_10535F6: var_C8 = CVar(CInt(1)) 'Integer
  loc_10535FE: Set var_8C = Me.FG1
  loc_1053604: LateIdCallSt
  loc_105360F: var_A8 = 8
  loc_105361E: var_C8 = CVar(CInt(1)) 'Integer
  loc_1053626: Set var_8C = Me.FG1
  loc_105362C: LateIdCallSt
  loc_1053637: var_A8 = 9
  loc_1053646: var_C8 = CVar(CInt(7)) 'Integer
  loc_105364E: Set var_8C = Me.FG1
  loc_1053654: LateIdCallSt
  loc_105365F: var_A8 = 3
  loc_1053668: var_C8 = 0
  loc_1053675: Set var_8C = Me.FG1
  loc_105367B: LateIdCallSt
  loc_1053686: var_A8 = 7
  loc_105368F: var_C8 = 0
  loc_105369C: Set var_8C = Me.FG1
  loc_10536A2: LateIdCallSt
  loc_10536AD: var_A8 = &HA
  loc_10536B6: var_C8 = 0
  loc_10536C3: Set var_8C = Me.FG1
  loc_10536C9: LateIdCallSt
  loc_10536D4: var_A8 = &HB
  loc_10536DD: var_C8 = 0
  loc_10536EA: Set var_8C = Me.FG1
  loc_10536F0: LateIdCallSt
  loc_105370E: Me.FG1.Left = CVar(CDbl(500))
  loc_105371A: var_A8 = CVar(CDbl(1250)) 'Single
  loc_1053723: Set var_8C = Me.FG1
  loc_1053729: var_8C.Top = var_A8
  loc_1053731: Exit Sub
  loc_1053732: ' Referenced from: 10534EC
  loc_1053738: Call 0.Method_arg_50 (var_88, var_8C, var_C8, var_A8, var_8C, var_C8, var_A8)
  loc_105374D: Proc_183_57_104B0BC(var_88, "Form_Load", var_8C, var_C8, var_A8)
  loc_1053759: Exit Sub
End Sub

Private Sub Form_Resize() 'E709B8
  'Data Table: 425E90
  loc_E70962: Call 0.Method_arg_50 (var_88)
  loc_E70974: Me.LblFormCaption.Caption = var_88
  loc_E7098D: Me.LblFormCaption.Left = CDbl(0)
  loc_E7099B: Call 0.Method_arg_100 (var_90)
  loc_E709AD: Me.LblFormCaption.Width = var_90
  loc_E709B5: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2227C
  'Data Table: 425E90
  loc_E22262: If (KeyCode = &HD) Then
  loc_E22273:   Proc_303_0_FBACC8("	")
  loc_E2227B: End If
  loc_E2227B: Exit Sub
End Sub

Private Sub BtnDelete_UnknownEvent_9 '10E1704
  'Data Table: 425E90
  Dim var_A8 As Variant
  Dim var_C8 As Long
  Dim var_DC As String
  Dim unk_425E95 As Connection15
  Dim var_FC As Variant
  Dim var_12C As Variant
  Dim var_14C As Long
  Dim var_10C As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Long
  Dim var_1D4 As Variant
  Dim var_204 As Variant
  Dim var_224 As Long
  Dim var_248 As Variant
  Dim var_268 As Variant
  Dim var_24C As String
  loc_10E1464: On Error Goto loc_10E16D0
  loc_10E1486: If (CLng(Me.FG1.Rows) > 1) Then
  loc_10E1489:   var_A8 = 1
  loc_10E1492:   var_C8 = 2
  loc_10E14C1:   If (CStr(Me.FG1.TextMatrix)) <> vbNullString) Then
  loc_10E14FB:     If (MsgBox("Do You Want to Delete It ", &H124, "Delete Confirmation", var_FC, var_10C) = 6) Then
  loc_10E1507:       unk_425E95.BeginTrans var_110
  loc_10E151F:       var_A8 = CVar(CLng(Me.FG1.Row)) 'Long
  loc_10E1524:       var_C8 = &HA
  loc_10E1556:       var_12C = CVar(CLng(Me.FG1.Row)) 'Long
  loc_10E155B:       var_14C = 4
  loc_10E156E:       var_10C = Me.FG1.TextMatrix)
  loc_10E158D:       var_190 = CVar(CLng(Me.FG1.Row)) 'Long
  loc_10E1592:       var_1B0 = &HB
  loc_10E15A5:       var_1D4 = Me.FG1.TextMatrix)
  loc_10E15C4:       var_204 = CVar(CLng(Me.FG1.Row)) 'Long
  loc_10E15C9:       var_224 = 8
  loc_10E15DC:       var_248 = Me.FG1.TextMatrix)
  loc_10E15F2:       var_268 = Me.TXT_ACCOUNT.BoundText
  loc_10E160F:       var_DC = CStr(Me.FG1.TextMatrix))
  loc_10E163E:       var_24C = "Delete From LEDGERADJ Where DocId1='" & var_DC & "' AND V_SNo1=" & CStr(var_10C) & " AND DocId2='" & CStr(var_1D4) & "' AND V_SNo2="
  loc_10E166B:       unk_425E95.Execute var_24C & CStr(var_248) & " AND SubCode='" & CStr(var_268) & "'", var_298, -1
  loc_10E16C5:       unk_425E95.CommitTrans
  loc_10E16CA:     End If
  loc_10E16CA:   End If
  loc_10E16CA: End If
  loc_10E16CA: Call BTNFILL_UnknownEvent_9()
  loc_10E16CF: Exit Sub
  loc_10E16D0: ' Referenced from: 10E1464
  loc_10E16D6: unk_425E95.RollbackTrans
  loc_10E16E1: Call 0.Method_arg_50 (var_DC, var_29C, var_268, var_248, var_224, var_204, var_1D4)
  loc_10E16F6: Proc_183_57_104B0BC(var_DC, "BTNDELETE_Click", var_1B0, var_190)
  loc_10E1702: Exit Sub
  loc_10E1703: var_10C(var_14C) = var_12C
End Sub

Private Sub btnExit_UnknownEvent_9 'E198B0
  'Data Table: 425E90
  loc_E198A5: Me.Global.Unload Me
  loc_E198AD: Exit Sub
End Sub

Private Sub BTNFILL_UnknownEvent_9 '12B43D4
  'Data Table: 425E90
  Dim var_8C As Variant
  Dim var_A0 As String
  Dim var_B0 As Variant
  Dim unk_425E95 As Connection15
  Dim var_88 As Recordset15
  Dim var_E0 As Variant
  Dim var_118 As Integer
  Dim var_F8 As Variant
  Dim var_1F0 As Variant
  Dim var_348 As Variant
  Dim var_400 As Variant
  Dim var_518 As Variant
  Dim var_528 As Variant
  loc_12B3EB4: On Error Goto loc_12B43A9
  loc_12B3EDA: If (CStr(Me.TXT_ACCOUNT.defText) <> vbNullString) Then
  loc_12B3EF0:   Me.FG1.Rows = 1
  loc_12B3F1A:   var_A0 = CStr(Me.TXT_ACCOUNT.BoundText)
  loc_12B3F3C:   unk_425E95.Execute "SELECT * FROM LEDGERADJ WHERE SUBCODE='" & var_A0 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E0, -1
  loc_12B3F47:   Set var_88 = var_E4
  loc_12B3F65:   ' Referenced from: 12B4310
  loc_12B3F74:   If Not(var_88.EOF) Then
  loc_12B401C:     var_118 = 5
  loc_12B4029:     var_F8 = CVar(var_88.Fields.Item("DocID1")) 'Address
  loc_12B408F:     var_1F0 = vbNullString & Chr(9) & Mid(var_F8, 4, var_118) & Chr(9) & Trim(Right(CVar(var_88.Fields.Item("DocID1")), 8)) & Chr(9) & vbNullString 
  loc_12B413F:     var_348 = var_1F0 & Chr(9) & var_88.Fields.Item("V_SNo1").Value & Chr(9) & Mid(CVar(var_88.Fields.Item("DocID2")), 4, 5) & Chr(9) & Trim(Right(CVar(var_88.Fields.Item("DocID2")), 8)) 
  loc_12B41B2:     var_400 = var_348 & Chr(9) & vbNullString & Chr(9) & var_88.Fields.Item("V_SNo2").Value & Chr(9) 
  loc_12B4261:     var_518 = 1 & Format(CVar(var_88.Fields.Item("cr")), "0.00") & Chr(9) & var_88.Fields.Item("DocID1").Value & Chr(9) & var_88.Fields.Item("DocID2").Value 
  loc_12B4266:     var_528 = CVar(CStr(var_518)) 'String
  loc_12B426E:     Set var_53C = Me.FG1
  loc_12B430B:     var_88.MoveNext
  loc_12B4310:     GoTo loc_12B3F65
  loc_12B4313:   End If
  loc_12B4332:   If (CLng(Me.FG1.Rows) = 1) Then
  loc_12B433B:     Call 0.Method_arg_50 (var_A0, FG1.DispID_10000, var_528)
  loc_12B435C:     MsgBox("No Record Found to Fill", &H40, CVar(var_A0), var_F8, var_118)
  loc_12B436C:     var_B0 = vbNullString
  loc_12B4376:     Set var_8C = Me.FG1
  loc_12B438A:   Else
  loc_12B438A:     var_B0 = True
  loc_12B4392:     Set var_8C = Me.btndelete
  loc_12B4398:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_8001000D(var_B0)
  loc_12B43A0:   End If
  loc_12B43A0: End If
  loc_12B43A5: Set var_88 = Nothing
  loc_12B43A8: Exit Sub
  loc_12B43A9: ' Referenced from: 12B3EB4
  loc_12B43AF: Call 0.Method_arg_50 (var_A0, FG1.DispID_10000, var_B0)
  loc_12B43C4: Proc_183_57_104B0BC(var_A0, "BTNFILL_Click", 1)
  loc_12B43D0: Exit Sub
End Sub
