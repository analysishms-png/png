VERSION 5.00
Begin VB.Form memCatRevMast
  Caption = "Member Category Wise Revenue"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11130
  ClientHeight = 5145
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11130
    Height = 450
    TabIndex = 11
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 2775
    Top = 3510
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    Left = 13665
    Top = 6930
    Width = 1845
    Height = 1815
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 180
      Top = -75
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 8
    End
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HFF0000&
    Left = 3345
    Top = 1845
    Width = 1410
    Height = 285
    TabIndex = 1
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
  Begin TextBox Txt
    Index = 0
    ForeColor = &HFF0000&
    Left = 3345
    Top = 1530
    Width = 3930
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin DataGrid DGCat
    Left = 12855
    Top = 1605
    Width = 4230
    Height = 2685
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 2
  End
  Begin MSFlexGrid FGPoint
    Left = 12225
    Top = 4935
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 3
  End
  Begin DataGrid DGRev
    Left = 13110
    Top = 750
    Width = 3930
    Height = 2565
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin MSHFlexGrid FGrid
    Left = 1995
    Top = 2490
    Width = 7500
    Height = 4275
    TabIndex = 10
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 525
    Top = 8085
    Width = 2430
    Height = 285
    TabIndex = 13
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
    Left = 540
    Top = 7755
    Width = 2520
    Height = 255
    TabIndex = 12
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
  Begin Label Label2
    Caption = "Applicable Date"
    ForeColor = &HFF0000&
    Left = 1410
    Top = 1875
    Width = 1875
    Height = 270
    TabIndex = 6
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
    Caption = "Member Category"
    ForeColor = &HFF0000&
    Left = 1410
    Top = 1545
    Width = 1890
    Height = 270
    TabIndex = 5
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

Attribute VB_Name = "memCatRevMast"

Private global_52 As Integer
Private global_72 As Integer

Private Sub Form_Load() '10947E8
  'Data Table: 49FB5C
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim var_C0 As String
  Dim unk_49FB72 As Connection15
  loc_109453C: On Error Goto loc_10947A3
  loc_1094546: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_109455E: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1094575: Me.LblUser.Left = CDbl(13500)
  loc_109458C: Me.LblUser.Top = CDbl(7800)
  loc_10945A3: Me.LblLDt.Top = CDbl(8160)
  loc_10945BA: Me.LblLDt.Left = CDbl(13500)
  loc_10945CC: Set var_A8 = Me.TopCtrl1
  loc_10945D2: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_10945E0: Call 0.Method_arg_50 (var_AC)
  loc_10945E8: var_BC = CVar(var_AC) 'String
  loc_10945F6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030007(var_BC)
  loc_109461C: var_C0 = "SELECT MemCatMast.Code, MemCatMast.Name FROM MemCatMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY MemCatMast.Name"
  loc_1094625: unk_49FB72.Execute var_C0, var_BC, -1
  loc_1094654: CVarUnk
  loc_1094659: VerifyVarObj
  loc_1094665: LateIdStAd
  loc_1094687: var_AC = "SELECT MembershipRevMast.Code, MembershipRevMast.Description As Name FROM MembershipRevMast Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_1094697: unk_49FB72.Execute var_AC & "' or LOGSITE_CODE='HO') ORDER BY MembershipRevMast.Description", var_BC, -1
  loc_10946C6: CVarUnk
  loc_10946CB: VerifyVarObj
  loc_10946D1: Set var_A8 = Me.DGRev
  loc_10946D7: LateIdStAd
  loc_1094703: var_AC = "Select DISTINCT (MR.MemCat+'**'+Convert(Varchar(11),MR.AppDate,103)) AS SearchCode,SITE_CODE,LOGSITE_CODE From MemCatRevWise MR Where (MR.LOGSITE_CODE='" & MemVar_1F95078
  loc_109470A: var_BC = CVar(var_AC & "' or MR.LOGSITE_CODE='HO') Order By (MR.MemCat+'**'+Convert(Varchar(11),MR.AppDate,103))") 'String
  loc_1094717: Me.DGRev.Open var_BC, CVar(MemVar_1F95044), 3
  loc_109473B: var_AC = "INI"
  loc_1094749: Call Proc_268_42_E7BAB4(Proc_5_1_100EC1C(var_AC, Me, global_60, 1, -1, Me), Me.DGCat, Me)
  loc_109475C: Set var_A8 = Me.TopCtrl1
  loc_1094762: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030019(True)
  loc_1094773: Set var_A8 = Me.TopCtrl1
  loc_1094779: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030016(False)
  loc_109478A: Set var_A8 = Me.TopCtrl1
  loc_1094790: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030017(False)
  loc_1094798: Call Proc_268_39_111725C(var_A8, Me.TopCtrl1)
  loc_109479D: Call Proc_268_41_1325648(var_A8)
  loc_10947A2: Exit Sub
  loc_10947A3: ' Referenced from: 109453C
  loc_10947AB: Set var_A8 = Err()
  loc_10947B1: Call 0.Method_arg_2C (var_AC)
  loc_10947D2: MsgBox(CVar(var_AC), &H40, "Information", var_E8, var_108)
  loc_10947E5: Exit Sub
  loc_10947E6: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E56A74
  'Data Table: 49FB5C
  loc_E56A3F: Set global_64 = Nothing
  loc_E56A51: Set global_60 = Nothing
  loc_E56A63: Set global_68 = Nothing
  loc_E56A6F: global_52 = 0
  loc_E56A72: Exit Sub
End Sub

Private Sub Form_Activate() 'E4D9B0
  'Data Table: 49FB5C
  loc_E4D980: On Error Goto loc_E4D9AA
  loc_E4D987: Set var_88 = Me.TopCtrl1
  loc_E4D98D: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030000()
  loc_E4D9A2: If (CLng(CInt()) = &H2D) Then
  loc_E4D9A5:   Call TopCtrl1_UnknownEvent_15()
  loc_E4D9AA:   ' Referenced from: E4D980
  loc_E4D9AA: End If
  loc_E4D9AA: Proc_6_60_E63754()
  loc_E4D9AF: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E26D8C
  'Data Table: 49FB5C
  loc_E26D71: If (global_52 = &HFF) Then
  loc_E26D81:   Me.Global.Unload Me
  loc_E26D89: End If
  loc_E26D89: Exit Sub
  loc_E26D8A: Loop Until  'do at: E25192
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8A8DC
  'Data Table: 49FB5C
  loc_E8A878: On Error Goto loc_E8A898
  loc_E8A88F: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E8A897: Exit Sub
  loc_E8A898: ' Referenced from: E8A878
  loc_E8A8A0: Set var_88 = Err()
  loc_E8A8A6: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8A8C7: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8A8DA: Exit Sub
  loc_E8A8DB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E63344
  'Data Table: 49FB5C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6330F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E63322: Set var_A8 = Me.TxtGrid
  loc_E63328: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E63330: var_AC.Visible = False
  loc_E6333C: Call Proc_268_43_E86AF0()
  loc_E63341: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E66908
  'Data Table: 49FB5C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E668C4: Set var_88 = Me.TxtGrid
  loc_E668CA: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E668E4: If (var_8C.Visible = 0) Then
  loc_E668FD:   Me.FGrid.BackColorSel = CVar(CLng(global_96))
  loc_E66905: End If
  loc_E66905: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E4D4CC
  'Data Table: 49FB5C
  loc_E4D4A4: Set var_88 = Me.TopCtrl1
  loc_E4D4AA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E4D4C3: If (CStr() <> "Browse") Then
  loc_E4D4C6:   Call Proc_268_45_E46990()
  loc_E4D4CB: End If
  loc_E4D4CB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10F8F94
  'Data Table: 49FB5C
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim KeyCode As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_10F8C6C: Set var_88 = Me.TopCtrl1
  loc_10F8C72: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10F8CB7: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_10F8CC0:   Call Form_KeyDown(KeyCode, Shift)
  loc_10F8CC5: End If
  loc_10F8CC9: Set var_88 = Me.TopCtrl1
  loc_10F8CCF: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10F8CE8: If (CStr() = "Browse") Then
  loc_10F8CEB:   Exit Sub
  loc_10F8CEC: End If
  loc_10F8D60: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_10F8D6B:   var_9C = "+{Tab}"
  loc_10F8D71:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_10F8D7B:   KeyCode = 0
  loc_10F8D81: Else
  loc_10F8DD8:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_10F8DDD:     KeyCode = 0
  loc_10F8DE0:   End If
  loc_10F8DE0: End If
  loc_10F8E0C: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10F8E23: Set var_88 = Me.TopCtrl1
  loc_10F8E29: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(KeyCode)
  loc_10F8E42: If (CStr(KeyCode) = "Edit") Then
  loc_10F8E45:   Exit Sub
  loc_10F8E46: End If
  loc_10F8E57: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_10F8E6D:   var_DC = CLng(Me.FGrid.Col)
  loc_10F8E7D:   If (var_DC = CLng(1)) Then
  loc_10F8E93:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F8E9B:     var_FC = CVar(CLng(1)) 'Long
  loc_10F8EA0:     var_11C = vbNullString
  loc_10F8EAA:     Set var_A0 = Me.FGrid
  loc_10F8EB0:     LateIdCallSt
  loc_10F8ED5:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F8EDD:     var_FC = CVar(CLng(5)) 'Long
  loc_10F8EE2:     var_11C = vbNullString
  loc_10F8EEC:     Set var_A0 = Me.FGrid
  loc_10F8EF2:     LateIdCallSt
  loc_10F8F07:   Else
  loc_10F8F0E:     If Not (var_DC = CLng(2)) Then
  loc_10F8F18:       If Not (var_DC = CLng(3)) Then
  loc_10F8F22:         If (var_DC = CLng(4)) Then
  loc_10F8F25:         End If
  loc_10F8F25:       End If
  loc_10F8F38:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F8F50:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10F8F55:       var_11C = vbNullString
  loc_10F8F5F:       Set var_B4 = Me.FGrid
  loc_10F8F65:       LateIdCallSt
  loc_10F8F7D:     End If
  loc_10F8F7D:   End If
  loc_10F8F7D: End If
  loc_10F8F83: If (KeyCode = &HD) Then
  loc_10F8F8B:   global_72 = 0
  loc_10F8F8E: End If
  loc_10F8F90: KeyCode = 0
  loc_10F8F93: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E57960
  'Data Table: 49FB5C
  loc_E5792C: Set var_88 = Me.TopCtrl1
  loc_E57932: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E5794B: If (CStr() = "Browse") Then
  loc_E5794E:   Exit Sub
  loc_E5794F: End If
  loc_E57958: Call FGrid_UnknownEvent_C()
  loc_E5795D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1024F40
  'Data Table: 49FB5C
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1024D1C: Set var_88 = Me.TopCtrl1
  loc_1024D22: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1024D3B: If (CStr() = "Browse") Then
  loc_1024D3E:   Exit Sub
  loc_1024D3F: End If
  loc_1024D52: var_A0 = CLng(Me.FGrid.Col)
  loc_1024D62: If Not (var_A0 = CLng(1)) Then
  loc_1024D6C:   If Not (var_A0 = CLng(3)) Then
  loc_1024D76:     If (var_A0 = CLng(4)) Then
  loc_1024D79:     End If
  loc_1024D79:   End If
  loc_1024D7D:   Set var_C4 = Me.FGrid
  loc_1024DA1:   var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_1024DCE:   Set var_B4 = var_C4
  loc_1024DE0:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1024E08:   Set var_88 = Me.TxtGrid
  loc_1024E0E:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1024E16:   0 = var_B4.Text
  loc_1024E2F:   If (Len(var_9C) <= 1) Then
  loc_1024E3E:     Set var_88 = Me.TxtGrid
  loc_1024E44:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1024E4C:     var_CA = var_B4.Text
  loc_1024E5D:     Set var_B8 = Me.TxtGrid
  loc_1024E63:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1024E6B:     var_C4.Text = var_9C
  loc_1024E7E:   End If
  loc_1024E8A:   Set var_88 = Me.TxtGrid
  loc_1024E90:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1024EAA:   Set var_B8 = Me.TxtGrid
  loc_1024EB0:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1024EB8:   var_C4.SelStart = Len(var_B4.Text)
  loc_1024ECE: Else
  loc_1024ED5:   If (var_A0 = CLng(2)) Then
  loc_1024F16:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1024F28:   End If
  loc_1024F28: End If
  loc_1024F32: If (CLng(KeyCode) <> &HD) Then
  loc_1024F3A:   global_72 = &HFF
  loc_1024F3D: End If
  loc_1024F3D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '10028C4
  'Data Table: 49FB5C
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_10026CC: Set var_88 = Me.TopCtrl1
  loc_10026D2: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10026EB: If (CStr() = "Browse") Then
  loc_10026EE:   Exit Sub
  loc_10026EF: End If
  loc_10026F3: Set var_88 = Me.TopCtrl1
  loc_10026F9: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1002712: If (CStr() = "Edit") Then
  loc_1002715:   Exit Sub
  loc_1002716: End If
  loc_1002733: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_1002736:   Exit Sub
  loc_1002737: End If
  loc_1002748: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_100276A:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_10027A4:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_10027C6:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_10027DC:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10027E5:         Set var_110 = Me.FGrid
  loc_1002800:       Else
  loc_1002813:         Me.FGrid.Rows = 1
  loc_1002839:         var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_1002841:         Set var_110 = Me.FGrid
  loc_100286E:         Me.FGrid.FixedRows = 1
  loc_1002876:       End If
  loc_1002876:     End If
  loc_1002879:   Else
  loc_100289A:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_10028AA:   End If
  loc_10028AE:   Set var_88 = Me.FGrid
  loc_10028BF: End If
  loc_10028BF: Exit Sub
  loc_10028C0: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E46098
  'Data Table: 49FB5C
  Dim var_8C As TextBox
  loc_E4606C: Call Proc_268_43_E86AF0()
  loc_E4607C: Set var_88 = Me.TxtGrid
  loc_E46082: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4608A: var_8C.Visible = False
  loc_E46096: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EAF948
  'Data Table: 49FB5C
  Dim var_8C As Label
  Dim var_94 As TextBox
  loc_EAF8B8: On Error Goto loc_EAF942
  loc_EAF8E2: Call Proc_268_42_E7BAB4(Proc_5_1_100EC1C("ADD", Me))
  loc_EAF8ED: Call Proc_268_40_F18B00(global_60)
  loc_EAF8FF: Me.LblUser.Caption = vbNullString
  loc_EAF914: Me.LblLDt.Caption = vbNullString
  loc_EAF927: Set var_8C = Me.Txt
  loc_EAF92D: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EAF935: var_94.SetFocus
  loc_EAF941: Exit Sub
  loc_EAF942: ' Referenced from: EAF8B8
  loc_EAF942: Proc_6_60_E63754(var_94)
  loc_EAF947: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EECA00
  'Data Table: 49FB5C
  loc_EEC940: On Error Goto loc_EEC9F9
  loc_EEC97A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EEC9A4:   Call Proc_268_42_E7BAB4(Proc_5_1_100EC1C("INI", Me))
  loc_EEC9B7:   Set var_10C = Me.TopCtrl1
  loc_EEC9BD:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030019(True)
  loc_EEC9CE:   Set var_10C = Me.TopCtrl1
  loc_EEC9D4:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030016(False)
  loc_EEC9E5:   Set var_10C = Me.TopCtrl1
  loc_EEC9EB:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030017(False)
  loc_EEC9F3:   Call Proc_268_41_1325648(global_60)
  loc_EEC9F8: End If
  loc_EEC9F8: Exit Sub
  loc_EEC9F9: ' Referenced from: EEC940
  loc_EEC9F9: Proc_6_60_E63754()
  loc_EEC9FE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18D68
  'Data Table: 49FB5C
  loc_E18D5D: Me.Global.Unload Me
  loc_E18D65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'ECAB0C
  'Data Table: 49FB5C
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_ECAA68: On Error Goto loc_ECAB03
  loc_ECAA85: If (Me.Recordset15.RecordCount <= 0) Then
  loc_ECAA8E:   var_B8 = "Information"
  loc_ECAAA9:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_ECAAB9:   Exit Sub
  loc_ECAABA: End If
  loc_ECAAC1: var_10C = "Select DISTINCT (MR.MemCat+'**'+Convert(Varchar(11),MR.AppDate,103)) AS Code,MC.Name as Category,Convert(Varchar(11),MR.AppDate,106) As AppDate FROM (MemCatRevWise MR Left Join MemCatMast MC On MR.MemCat=MC.Code) Where (MR.LOGSITE_CODE='" & MemVar_1F95078
  loc_ECAAC8: MemVar_1F950E4 = var_10C & "' or MR.LOGSITE_CODE='HO') Order By (MR.MemCat+'**'+Convert(Varchar(11),MR.AppDate,103))"
  loc_ECAAD5: MemVar_1F95120 = Me
  loc_ECAAE2: Proc_6_126_F1C850("3000,1000")
  loc_ECAAFD: Call 0.Method_arg_2B0 (1, var_B8)
  loc_ECAB02: Exit Sub
  loc_ECAB03: ' Referenced from: ECAA68
  loc_ECAB03: Proc_6_60_E63754(MemVar_1F950E4)
  loc_ECAB08: Exit Sub
  loc_ECAB09: StAryRecMove
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E459F8
  'Data Table: 49FB5C
  loc_E459E8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E459F0: Call Proc_268_41_1325648(global_60)
  loc_E459F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E4528C
  'Data Table: 49FB5C
  loc_E4527C: Proc_5_0_1107AD0(&HFF, Me)
  loc_E45284: Call Proc_268_41_1325648(global_60)
  loc_E45289: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E455AC
  'Data Table: 49FB5C
  loc_E4559C: Proc_5_0_1107AD0(&HFF, Me)
  loc_E455A4: Call Proc_268_41_1325648(global_60)
  loc_E455A9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E45E44
  'Data Table: 49FB5C
  loc_E45E34: Proc_5_0_1107AD0(&HFF, Me)
  loc_E45E3C: Call Proc_268_41_1325648(global_60)
  loc_E45E41: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E220DC
  'Data Table: 49FB5C
  Dim Me As Recordset15
  loc_E220C3: Me.Requery -1
  loc_E220D3: Me.Requery -1
  loc_E220D8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '13AE470
  'Data Table: 49FB5C
  Dim var_8C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_130 As Variant
  Dim unk_49FB72 As Connection15
  Dim var_90 As TextBox
  Dim var_D0 As Variant
  Dim var_1AC As MSHFlexGrid
  Dim var_170 As Variant
  Dim var_1F0 As MSHFlexGrid
  Dim var_554 As Double
  Dim var_298 As Variant
  Dim var_32C As Variant
  Dim var_3BC As Variant
  Dim var_98 As String
  Dim var_110 As Variant
  Dim var_190 As Variant
  Dim var_1BC As Variant
  Dim var_2B8 As Variant
  Dim var_484 As Variant
  Dim var_1A8 As TextBox
  Dim var_19C As String
  loc_13ADBD8: On Error Goto loc_13AE41C
  loc_13ADBDF: var_86 = CByte(0) 'Byte
  loc_13ADBEE: Set var_8C = Me.Txt
  loc_13ADBF4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_13ADC1D: If (Proc_6_27_EA61EC(var_90, "Category") = 0) Then
  loc_13ADC27:   Call Txt_GotFocus()
  loc_13ADC2C:   Exit Sub
  loc_13ADC2D: End If
  loc_13ADC38: Set var_8C = Me.Txt
  loc_13ADC3E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_90)
  loc_13ADC67: If (Proc_6_27_EA61EC(var_90, "App. Date") = 0) Then
  loc_13ADC71:   Call Txt_GotFocus()
  loc_13ADC76:   Exit Sub
  loc_13ADC77: End If
  loc_13ADC7A: Call Proc_268_44_FC919C(var_9A, CInt(1))
  loc_13ADC85: If (var_9A = &HFF) Then
  loc_13ADC88:   Exit Sub
  loc_13ADC89: End If
  loc_13ADCAE: For var_B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B0 'Integer
  loc_13ADCDF:   If ((var_88 > 1) And (CLng(var_88) < (CLng(Me.FGrid.Rows) - 1))) Then
  loc_13ADCE6:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_13ADCEE:     var_E0 = CVar(CLng(5)) 'Long
  loc_13ADD08:     var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_13ADD0E:     var_110 = Trim(var_100)
  loc_13ADD2A:     If (var_110 = vbNullString) Then
  loc_13ADD46:       MsgBox("Define revenue ", &H40, var_100, var_110, var_130)
  loc_13ADD56:       Exit Sub
  loc_13ADD57:     End If
  loc_13ADD57:   End If
  loc_13ADD5B:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_13ADD63:   var_E0 = CVar(CLng(5)) 'Long
  loc_13ADD9F:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_13ADDA6:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_13ADDAE:     var_E0 = CVar(CLng(3)) 'Long
  loc_13ADDEA:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_13ADDF1:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_13ADDF9:       var_E0 = CVar(CLng(1)) 'Long
  loc_13ADE40:       MsgBox("Fill Nature For Revenue " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_13ADE5D:       Set var_8C = Me.FGrid
  loc_13ADE6E:       Exit Sub
  loc_13ADE6F:     End If
  loc_13ADE73:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_13ADE7B:     var_E0 = CVar(CLng(4)) 'Long
  loc_13ADEB7:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_13ADEBE:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_13ADEC6:       var_E0 = CVar(CLng(1)) 'Long
  loc_13ADF0D:       MsgBox("Fill Month For Revenue " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_13ADF2A:       Set var_8C = Me.FGrid
  loc_13ADF3B:       Exit Sub
  loc_13ADF3C:     End If
  loc_13ADF3C:   End If
  loc_13ADF3F: Next var_B0 'Integer
  loc_13ADF4D: unk_49FB72.BeginTrans var_194
  loc_13ADF56: var_86 = CByte(1) 'Byte
  loc_13ADF7F: For var_198 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_198 'Integer
  loc_13ADF89:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_13ADF91:   var_E0 = CVar(CLng(5)) 'Long
  loc_13ADFAB:   var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_13ADFCD:   If CBool(Trim(var_100) <> vbNullString) Then
  loc_13ADFDE:     Set var_8C = Me.Txt
  loc_13ADFE4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_90, var_19C)
  loc_13ADFEC:     var_E0 = var_90.Tag
  loc_13ADFFC:     Set var_94 = Me.Txt
  loc_13AE002:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1A8)
  loc_13AE011:     Proc_6_7_F26918(var_100, CVar(var_1A8))
  loc_13AE01A:     var_D0 = CVar(CLng(var_88)) 'Long
  loc_13AE031:     var_170 = Me.FGrid.TextMatrix)
  loc_13AE052:     Set var_1F0 = Me.FGrid
  loc_13AE06B:     var_554 = Val(CStr(var_1F0.TextMatrix)))
  loc_13AE089:     var_298 = Me.FGrid.TextMatrix)
  loc_13AE0B0:     var_32C = Me.FGrid.TextMatrix)
  loc_13AE0C1:     var_3BC = CVar(Proc_6_15_EF37AC(var_32C, CVar(CLng(4)), CVar(CLng(var_88)), var_298, CVar(CLng(3)), CVar(CLng(var_88)), var_554)) 'String
  loc_13AE0C7:     Proc_6_7_F26918(var_3CC, var_3BC, CVar(CLng(2)), CVar(CLng(var_88)), var_170)
  loc_13AE0D0:     Set var_400 = Me.TopCtrl1
  loc_13AE0D6:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(CVar(CLng(5)))
  loc_13AE121:     var_98 = "Insert Into MemCatRevWise (MemCat,AppDate,RevCode,Amount,Nature," & "AppMonth,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) "
  loc_13AE178:     var_2B8 = CVar(var_98 & " Values ('" & var_19C & "',") & var_100 & ",'" & CVar(CStr(var_170)) & "'," & CVar(var_554) & ",'" & CVar(CStr(var_298)) 
  loc_13AE1BF:     var_484 = var_2B8 & "','" & CVar(CStr(var_32C)) & "','" & CVar(MemVar_1F950C8) & "'," & var_3CC & ",'" & IIf((CStr(var_410) = "Add"), "A", "E") 
  loc_13AE1FC:     unk_49FB72.Execute CStr(var_484 & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), var_548, -1
  loc_13AE276:   End If
  loc_13AE279: Next var_198 'Integer
  loc_13AE284: unk_49FB72.CommitTrans
  loc_13AE28D: var_86 = CByte(0) 'Byte
  loc_13AE29C: Set var_1AC = Me.Txt
  loc_13AE2A2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_13AE2B5: Set var_8C = Me.Txt
  loc_13AE2BB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_90)
  loc_13AE2CB: var_100 = CVar(var_90.Tag) 'String
  loc_13AE2E1: Set var_94 = Me.Txt
  loc_13AE2E7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_19C)
  loc_13AE2EF: 6 = var_1A8.Tag
  loc_13AE2FC: var_AC = Space((var_100 - Len(var_19C)))
  loc_13AE304: var_110 = (var_1F0 + CVar(var_1A8))
  loc_13AE308: var_C0 = "**"
  loc_13AE30D: var_130 = (CVar(var_90.Tag & " Values ('" & var_19C & "',") + var_C0)
  loc_13AE338: var_1BC = (1 + Format(CVar(var_1F0), "dd/mm/yyyy"))
  loc_13AE37C: Me.Recordset15.Requery -1
  loc_13AE3AC: Me.Recordset15.Find "SearchCode ='" & CStr(CVar(var_90.Tag & " Values ('" & var_19C & "',") & var_100 & ",'" & CVar(CStr("dd/mm/yyyy"))) & "'", 0, 1
  loc_13AE3BC: Set var_8C = Me.TopCtrl1
  loc_13AE3C2: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_C0)
  loc_13AE3DB: If (CStr(1) = "Add") Then
  loc_13AE3DE:   Call TopCtrl1_UnknownEvent_A()
  loc_13AE3E3:   Exit Sub
  loc_13AE3E4: End If
  loc_13AE3FD: var_98 = "INI"
  loc_13AE40B: Call Proc_268_42_E7BAB4(Proc_5_1_100EC1C(var_98, Me), global_60)
  loc_13AE416: Call Proc_268_41_1325648(CVar(var_98 & " Values ('" & "SearchCode ='" & CStr(CVar(var_90.Tag & " Values ('" & var_19C & "',") & var_100 & ",'" & CVar(CStr("dd/mm/yyyy"))) & "'" & "',") & var_100)
  loc_13AE41B: Exit Sub
  loc_13AE41C: ' Referenced from: 13ADBD8
  loc_13AE425: If (CInt(var_86) = 1) Then
  loc_13AE42E:   unk_49FB72.RollbackTrans
  loc_13AE433: End If
  loc_13AE43B: Set var_8C = Err()
  loc_13AE441: Call 0.Method_arg_2C (var_98)
  loc_13AE45A: MsgBox(CVar(var_98), &H10, var_100, CVar(var_98 & " Values ('" & "SearchCode ='" & CStr(CVar(var_90.Tag & " Values ('" & var_19C & "',") & var_100 & ",'" & CVar(CStr("dd/mm/yyyy"))) & "'" & "',"), CVar(var_98 & " Values ('" & "SearchCode ='" & CStr(CVar(var_90.Tag & " Values ('" & var_19C & "',") & var_100 & ",'" & CVar(CStr("dd/mm/yyyy"))) & "'" & "',") & var_100)
  loc_13AE46D: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '12B3E4C
  'Data Table: 49FB5C
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Variant
  Dim var_108 As TextBox
  Dim var_15C As String
  loc_12B3836: Set var_88 = Me.TxtGrid
  loc_12B383C: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_12B384A: Proc_6_74_E23240(var_8C)
  loc_12B3856: Call Proc_268_43_E86AF0(var_8C)
  loc_12B3869: Set var_88 = Me.TxtGrid
  loc_12B386F: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_12B3877: var_8C.MaxLength = 0
  loc_12B388F: If (Index = 0) Then
  loc_12B38A8:   Me.FGrid.CellBackColor = CVar(CLng(global_96))
  loc_12B38C3:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B3902:   Set var_108 = Me.TxtGrid
  loc_12B3908:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_12B3910:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_12B3941:   var_114 = CLng(Me.FGrid.Col)
  loc_12B3951:   If (var_114 = CLng(1)) Then
  loc_12B3995:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_12B3998:       Exit Sub
  loc_12B3999:     End If
  loc_12B39A4:     Set var_8C = Me.FGPoint
  loc_12B39BC:     Proc_6_137_1192FDC(Me.DGRev, global_68, Index, var_8C)
  loc_12B39D8:     Set var_88 = Me.TxtGrid
  loc_12B39DE:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, &H32)
  loc_12B39E6:     var_8C.MaxLength = var_114
  loc_12B3A05:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B3A0D:     var_E4 = CVar(CLng(1)) 'Long
  loc_12B3A40:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_12B3A49:       Me.MoveFirst
  loc_12B3A69:       var_E4 = CVar(CLng(5)) 'Long
  loc_12B3A72:       Set var_8C = Me.FGrid
  loc_12B3A89:       Proc_6_17_EAAE40(var_12C, CVar(CStr(var_8C.TextMatrix))), var_E4, CVar(CLng(Me.FGrid.Row)))
  loc_12B3AA8:       var_110 = CStr("Code=" & var_12C)
  loc_12B3AB2:       Me.Find var_110, 0, 1
  loc_12B3AE2:       If (Me.EOF = &HFF) Then
  loc_12B3AEB:         Me.MoveFirst
  loc_12B3AF0:       End If
  loc_12B3AF0:     End If
  loc_12B3AF3:   Else
  loc_12B3AFA:     If (var_114 = CLng(3)) Then
  loc_12B3B0C:       Set var_88 = Me.TxtGrid
  loc_12B3B12:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &HF, var_15C)
  loc_12B3B1A:       var_8C.MaxLength = var_E4
  loc_12B3B33:       ReDim var_160(0 To 4)
  loc_12B3B4A:       var_160(0) = "Monthly"
  loc_12B3B59:       var_160(1) = "Bi Monthly"
  loc_12B3B68:       var_160(2) = "Quarterly"
  loc_12B3B77:       var_160(3) = "Half Yearly"
  loc_12B3B86:       var_160(4) = "Annual"
  loc_12B3B9D:       global_76 = Array(var_160)
  loc_12B3BA8:       Set var_108 = Me.ListView
  loc_12B3BC3:       Set var_8C = Me.TxtGrid
  loc_12B3BDD:       Set global_92 = Proc_6_66_F0048C(var_108, var_8C, Index, global_76, 5)
  loc_12B3BFB:       Set var_88 = Me.TxtGrid
  loc_12B3C01:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, global_76)
  loc_12B3C1B:       Set var_90 = Me.TxtGrid
  loc_12B3C21:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_12B3C29:       var_108.Tag = var_8C.Text
  loc_12B3C3F:     Else
  loc_12B3C46:       If (var_114 = CLng(4)) Then
  loc_12B3C57:         Set var_88 = Me.TxtGrid
  loc_12B3C5D:         Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_12B3C65:         var_8C.MaxLength = 3
  loc_12B3C7E:         ReDim var_160(0 To &HB)
  loc_12B3C95:         var_160(0) = "Jan"
  loc_12B3CA4:         var_160(1) = "Feb"
  loc_12B3CB3:         var_160(2) = "Mar"
  loc_12B3CC2:         var_160(3) = "Apr"
  loc_12B3CD1:         var_160(4) = "May"
  loc_12B3CE0:         var_160(5) = "Jun"
  loc_12B3CEF:         var_160(6) = "Jul"
  loc_12B3CFE:         var_160(7) = "Aug"
  loc_12B3D0D:         var_160(8) = "Sep"
  loc_12B3D1C:         var_160(9) = "Oct"
  loc_12B3D2B:         var_160(&HA) = "Nov"
  loc_12B3D3A:         var_160(&HB) = "Dec"
  loc_12B3D51:         global_76 = Array(var_160)
  loc_12B3D5C:         Set var_108 = Me.ListView
  loc_12B3D77:         Set var_8C = Me.TxtGrid
  loc_12B3D91:         Set global_92 = Proc_6_66_F0048C(var_108, var_8C, Index, global_76)
  loc_12B3DAF:         Set var_88 = Me.TxtGrid
  loc_12B3DB5:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110)
  loc_12B3DBD:         &HC = var_8C.Text
  loc_12B3DCF:         Set var_90 = Me.TxtGrid
  loc_12B3DD5:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_12B3DDD:         var_108.Tag = global_76
  loc_12B3DF3:       Else
  loc_12B3DFA:         If (var_114 = CLng(2)) Then
  loc_12B3E0C:           Set var_88 = Me.TxtGrid
  loc_12B3E12:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_12B3E1A:           var_8C.MaxLength = 8
  loc_12B3E2F:           If (global_72 = 0) Then
  loc_12B3E3A:             var_110 = "{Home}+{End}"
  loc_12B3E40:             Proc_303_0_FBACC8(var_110, 0)
  loc_12B3E48:           End If
  loc_12B3E48:         End If
  loc_12B3E48:       End If
  loc_12B3E48:     End If
  loc_12B3E48:   End If
  loc_12B3E48: End If
  loc_12B3E48: Exit Sub
  loc_12B3E49: ThisVCallR8
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12F1054
  'Data Table: 49FB5C
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_C4 As Variant
  Dim var_98 As DataGrid
  Dim var_DC As DataGrid
  Dim Me As Recordset15
  Dim var_E8 As TextBox
  Dim var_F8 As TextBox
  loc_12F0998: If (KeyCode = 0) Then
  loc_12F09A5:   If (CLng(Shift) = &H1B) Then
  loc_12F09B5:     Set var_8C = Me.TxtGrid
  loc_12F09BB:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_12F09D5:     Set var_98 = Me.TxtGrid
  loc_12F09DB:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_12F09E3:     var_9C.Text = var_90.Tag
  loc_12F09FA:     Set var_8C = Me.FGrid
  loc_12F0A17:     Set var_8C = Me.TxtGrid
  loc_12F0A1D:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_12F0A25:     var_90.Visible = FGrid.DispID_8001
  loc_12F0A3F:     Set var_8C = Me.TxtGrid
  loc_12F0A45:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12F0A4D:     var_90.MaxLength = 0
  loc_12F0A59:     Exit Sub
  loc_12F0A5A:   End If
  loc_12F0A7D:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_12F0A8C:     Set var_8C = Me.TxtGrid
  loc_12F0A92:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B4)
  loc_12F0A9A:     var_B0 = var_90.Left
  loc_12F0AB1:     Me.DGRev.Left = CVar(var_B4)
  loc_12F0ACB:     Set var_98 = Me.TxtGrid
  loc_12F0AD1:     Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12F0AD9:     var_D8 = var_9C.Height
  loc_12F0AEA:     Set var_8C = Me.TxtGrid
  loc_12F0AF0:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12F0B04:     var_C4 = CVar((var_90.Top + var_D8)) 'Single
  loc_12F0B13:     Me.DGRev.Top = CVar(var_90.Top)
  loc_12F0B30:     Set var_E8 = Me.TxtGrid
  loc_12F0B42:     Set var_9C = Me.FGPoint
  loc_12F0B4D:     Set var_98 = Nothing
  loc_12F0B7B:     Proc_6_69_134A630(Me.DGRev, var_E8, KeyCode, global_68, Shift, &HFF)
  loc_12F0B9A:     var_B4 = Me.RecordCount
  loc_12F0BA8:     If (var_B4 > 0) Then
  loc_12F0BAF:       Set var_98 = Me.DGRev
  loc_12F0BCE:       Proc_6_138_106E830(var_98, global_68, KeyCode, Me.FGPoint, 1)
  loc_12F0BDC:     End If
  loc_12F0BE6:     If (CLng(Shift) = &HD) Then
  loc_12F0BEF:       Call Proc_268_46_1257C0C(KeyCode, var_DE, var_98)
  loc_12F0BFA:       If (var_DE = &HFF) Then
  loc_12F0C40:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72, 5)
  loc_12F0C50:       End If
  loc_12F0C50:     End If
  loc_12F0C53:   Else
  loc_12F0C5A:     If (var_B0 = CLng(2)) Then
  loc_12F0C9D:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_72 = &HFF))) Then
  loc_12F0CA6:         Call Proc_268_46_1257C0C(KeyCode, var_DE, 0, 2)
  loc_12F0CB1:         If (var_DE = &HFF) Then
  loc_12F0CE8:           Set var_90 = Me.TxtGrid
  loc_12F0CF7:           Proc_6_62_1254E68(Me.FGrid, var_90, KeyCode, Shift, global_72, 5, 0)
  loc_12F0D07:         End If
  loc_12F0D07:       End If
  loc_12F0D0A:     Else
  loc_12F0D11:       If (var_B0 = CLng(3)) Then
  loc_12F0D23:         Set var_8C = Me.TxtGrid
  loc_12F0D29:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, &HF, 3, 0)
  loc_12F0D31:         var_90.MaxLength = 0
  loc_12F0D5F:         Set var_8C = Me.TxtGrid
  loc_12F0D65:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_12F0D6D:         var_9C = var_90.Left
  loc_12F0D7F:         Set var_98 = Me.TxtGrid
  loc_12F0D85:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_D8)
  loc_12F0D8D:         0 = var_9C.Top
  loc_12F0D9F:         Set var_DC = Me.TxtGrid
  loc_12F0DA5:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E8)
  loc_12F0DBF:         Set var_EC = Me.TxtGrid
  loc_12F0DC5:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_F8)
  loc_12F0DCD:         var_FC = var_F8.Width
  loc_12F0E15:         Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_12F0E43:         If (CLng(Shift) = &HD) Then
  loc_12F0E4C:           Call Proc_268_46_1257C0C(KeyCode, var_DE, CInt(var_B4), CInt((var_D8 + var_E8.Height)))
  loc_12F0E57:           If (var_DE = &HFF) Then
  loc_12F0E65:             Set var_9C = Me.TxtGrid
  loc_12F0E8E:             Set var_90 = var_9C
  loc_12F0E9D:             Proc_6_62_1254E68(Me.FGrid, var_90, KeyCode, Shift, global_72, 5)
  loc_12F0EAD:           End If
  loc_12F0EAD:         End If
  loc_12F0EB0:       Else
  loc_12F0EB7:         If (var_B0 = CLng(4)) Then
  loc_12F0EC9:           Set var_8C = Me.TxtGrid
  loc_12F0ECF:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 3, 0, 4)
  loc_12F0ED7:           var_90.MaxLength = 0
  loc_12F0F05:           Set var_8C = Me.TxtGrid
  loc_12F0F0B:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_12F0F13:           CInt(var_FC) = var_90.Left
  loc_12F0F25:           Set var_98 = Me.TxtGrid
  loc_12F0F2B:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_D8)
  loc_12F0F33:           1300 = var_9C.Top
  loc_12F0F45:           Set var_DC = Me.TxtGrid
  loc_12F0F4B:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E8)
  loc_12F0F65:           Set var_EC = Me.TxtGrid
  loc_12F0F6B:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_F8)
  loc_12F0F73:           var_FC = var_F8.Width
  loc_12F0FBB:           Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_12F0FE9:           If (CLng(Shift) = &HD) Then
  loc_12F0FF2:             Call Proc_268_46_1257C0C(KeyCode, var_DE, CInt(var_B4), CInt((var_D8 + var_E8.Height)))
  loc_12F0FFD:             If (var_DE = &HFF) Then
  loc_12F1043:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72, 5)
  loc_12F1053:             End If
  loc_12F1053:           End If
  loc_12F1053:         End If
  loc_12F1053:       End If
  loc_12F1053:     End If
  loc_12F1053:   End If
  loc_12F1053: End If
  loc_12F1053: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F2E818
  'Data Table: 49FB5C
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F2E70F: Proc_6_58_E06050(arg_10)
  loc_F2E720: If (KeyAscii = 0) Then
  loc_F2E736:   var_A0 = CLng(Me.FGrid.Col)
  loc_F2E746:   If (var_A0 = CLng(1)) Then
  loc_F2E765:     If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_F2E777:       var_A4 = "Name"
  loc_F2E792:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_68, arg_10)
  loc_F2E7AC:       Set var_AC = Me.FGPoint
  loc_F2E7C4:       Proc_6_138_106E830(Me.DGRev, global_68, KeyAscii, var_AC)
  loc_F2E7D2:     End If
  loc_F2E7D5:   Else
  loc_F2E7DC:     If (var_A0 = CLng(2)) Then
  loc_F2E7E9:       Set var_8C = Me.TxtGrid
  loc_F2E7EF:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F2E80A:       Proc_6_42_129B55C(var_AC, arg_10, 5, 2)
  loc_F2E816:     End If
  loc_F2E816:   End If
  loc_F2E816: End If
  loc_F2E816: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F8D270
  'Data Table: 49FB5C
  Dim var_A0 As Long
  loc_F8D114: On Error Goto loc_F8D268
  loc_F8D123: If (KeyCode = 0) Then
  loc_F8D139:   var_A0 = CLng(Me.FGrid.Col)
  loc_F8D149:   If (var_A0 = CLng(1)) Then
  loc_F8D16F:     If ((Shift <> &HD) And (CBool(Me.DGRev.Visible) = 0)) Then
  loc_F8D180:       Call TxtGrid_KeyDown(KeyCode, global_74)
  loc_F8D1AF:       Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_68, Shift, "Name")
  loc_F8D1BE:     End If
  loc_F8D1C1:   Else
  loc_F8D1C8:     If Not (var_A0 = CLng(3)) Then
  loc_F8D1D2:       If (var_A0 = CLng(4)) Then
  loc_F8D1D5:       End If
  loc_F8D1F7:       If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_F8D208:         Call TxtGrid_KeyDown(KeyCode, global_74)
  loc_F8D20D:       End If
  loc_F8D228:       If (Me.FrmList.Visible = &HFF) Then
  loc_F8D257:         Proc_6_64_F299E8(Me.ListView, Me.TxtGrid, KeyCode, Shift, global_92)
  loc_F8D267:       End If
  loc_F8D267:     End If
  loc_F8D267:   End If
  loc_F8D267: End If
  loc_F8D267: Exit Sub
  loc_F8D268: ' Referenced from: F8D114
  loc_F8D268: Proc_6_60_E63754(0, &HFF, 0)
  loc_F8D26D: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E21608
  'Data Table: 49FB5C
  Dim arg_10 As Integer
  loc_E215F0: If (Cancel = 0) Then
  loc_E215F9:   Call Proc_268_46_1257C0C(Cancel, var_88)
  loc_E21602:   arg_10 = Not(var_88)
  loc_E21605: End If
  loc_E21605: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FF39B0
  'Data Table: 49FB5C
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_FF37D6: Set var_88 = Me.Txt
  loc_FF37DC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FF37EA: Proc_6_74_E23240(var_8C)
  loc_FF37F6: Call Proc_268_43_E86AF0(var_8C)
  loc_FF37FE: var_92 = Index
  loc_FF3809: If (var_92 = CInt(0)) Then
  loc_FF3823:   If (Me.RecordCount > 0) Then
  loc_FF3831:     Set var_8C = Me.FGPoint
  loc_FF3849:     Proc_6_137_1192FDC(Me.DGCat, global_64, Index)
  loc_FF3857:   End If
  loc_FF38A5:   Set var_88 = Me.Txt
  loc_FF38AB:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FF38B3:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FF38CB:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FF38CE:     Exit Sub
  loc_FF38CF:   End If
  loc_FF38DC:   Set var_88 = Me.Txt
  loc_FF38E2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FF38EA:   var_A0 = var_8C.Text
  loc_FF38F2:   var_D4 = CVar(var_A0) 'String
  loc_FF3937:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_FF3940:     Me.MoveFirst
  loc_FF3965:     Set var_88 = Me.Txt
  loc_FF396B:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_FF3973:     0 = var_8C.Text
  loc_FF3981:     Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_FF3997:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_FF39AF:   End If
  loc_FF39AF: End If
  loc_FF39AF: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F3F58C
  'Data Table: 49FB5C
  loc_F3F486: If (CLng(Shift) = &H1B) Then
  loc_F3F489:   Call Proc_268_43_E86AF0()
  loc_F3F48E:   Exit Sub
  loc_F3F48F: End If
  loc_F3F49D: If (KeyCode = CInt(0)) Then
  loc_F3F4B8:   Set var_9C = Nothing
  loc_F3F4C3:   Set var_98 = Nothing
  loc_F3F4F1:   Proc_6_69_134A630(Me.DGCat, Me.Txt, KeyCode, global_64, Shift, 0)
  loc_F3F505: End If
  loc_F3F540: If ((CBool(Me.DGCat.Visible) = 0) And (CBool(Me.DGRev.Visible) = 0)) Then
  loc_F3F558:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F3F561:     Proc_6_75_E5335C(Shift, arg_14, 1, var_98)
  loc_F3F566:   End If
  loc_F3F57B:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F3F584:     Proc_6_76_E533C8(Shift, arg_14, var_9C)
  loc_F3F589:   End If
  loc_F3F589: End If
  loc_F3F589: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E07AD0
  'Data Table: 49FB5C
  Dim var_86 As Integer
  loc_E07AC3: Proc_6_58_E06050(arg_10)
  loc_E07ACB: var_86 = KeyAscii
  loc_E07ACE: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EA5ED4
  'Data Table: 49FB5C
  Dim var_DC As Variant
  loc_EA5E66: If (KeyCode = CInt(0)) Then
  loc_EA5E85:   If (CBool(Me.DGCat.Visible) = &HFF) Then
  loc_EA5E99:     var_A4 = "Name"
  loc_EA5EBD:     Proc_6_68_12A2818(Me.DGCat, Me.Txt, KeyCode, global_64)
  loc_EA5ED0:   End If
  loc_EA5ED0: End If
  loc_EA5ED0: Exit Sub
  loc_EA5ED1: var_DC = CVar(Shift) 'String
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4FF0C
  'Data Table: 49FB5C
  loc_E4FEEA: Set var_88 = Me.Txt
  loc_E4FEF0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4FEFE: Proc_6_73_E23294(var_8C)
  loc_E4FF0A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '10D2104
  'Data Table: 49FB5C
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As String
  Dim var_B4 As TextBox
  Dim var_C8 As TextBox
  loc_10D1E07: var_86 = Cancel
  loc_10D1E12: If (var_86 = CInt(0)) Then
  loc_10D1E20:   Set var_8C = Me.Txt
  loc_10D1E26:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_10D1E2E:   var_98 = "Category"
  loc_10D1E4F:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_10D1E5D:     Set var_8C = Me.Txt
  loc_10D1E63:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_10D1E6B:     var_90.SetFocus
  loc_10D1E79:     arg_10 = &HFF
  loc_10D1E7C:     Exit Sub
  loc_10D1E7D:   End If
  loc_10D1ECB:   Set var_8C = Me.Txt
  loc_10D1ED1:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_10D1ED9:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_10D1EF1:   If (arg_10 Or (var_98 = vbNullString)) Then
  loc_10D1F01:     Set var_8C = Me.Txt
  loc_10D1F07:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D1F0F:     var_90.Text = vbNullString
  loc_10D1F28:     Set var_8C = Me.Txt
  loc_10D1F2E:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D1F36:     var_90.Tag = vbNullString
  loc_10D1F45:   Else
  loc_10D1F80:     Set var_94 = Me.Txt
  loc_10D1F86:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_10D1F8E:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10D1FC1:     var_90 = Me.Fields.Item("Code")
  loc_10D1FDF:     Set var_94 = Me.Txt
  loc_10D1FE5:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_10D1FED:     var_B4.Tag = CStr(var_90.Value)
  loc_10D2003:   End If
  loc_10D2006: Else
  loc_10D200E:   If (var_86 = CInt(1)) Then
  loc_10D201C:     Set var_8C = Me.Txt
  loc_10D2022:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_10D204B:     If (Proc_6_27_EA61EC(var_90, "App. Date") = 0) Then
  loc_10D2059:       Set var_8C = Me.Txt
  loc_10D205F:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_10D2067:       var_90.SetFocus
  loc_10D2075:       arg_10 = &HFF
  loc_10D2078:       Exit Sub
  loc_10D2079:     End If
  loc_10D2083:     Set var_8C = Me.Txt
  loc_10D2089:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D20A9:     Set var_B4 = Me.Txt
  loc_10D20AF:     Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_10D20B7:     var_C8.Text = Proc_6_33_15125B8(var_90, arg_10)
  loc_10D20DD:     Me.FGrid.Row = 1
  loc_10D20F8:     Me.FGrid.Col = 1
  loc_10D2100:   End If
  loc_10D2100: End If
  loc_10D2100: Exit Sub
  loc_10D2101: ThisVCallI2
End Sub

Public Function global_52Get() '4A08AC
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4A08BB
  global_52 = Value
End Sub

Public Function global_56Get() '4A08CA
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '4A08D9
  global_56 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E9CB20
  'Data Table: 49FB5C
  loc_E9CAA6: On Error Goto loc_E9CB19
  loc_E9CAB2: Me.Recordset15.MoveFirst
  loc_E9CADF: Me.Recordset15.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E9CB0B: Proc_5_0_1107AD0(&HFF, Me, global_60)
  loc_E9CB13: Call Proc_268_41_1325648(0)
  loc_E9CB18: Exit Sub
  loc_E9CB19: ' Referenced from: E9CAA6
  loc_E9CB19: Proc_6_60_E63754(var_A0)
  loc_E9CB1E: Exit Sub
End Sub

Public Sub Proc_268_39_111725C
  'Data Table: 49FB5C
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  Dim var_104 As TextBox
  Dim var_10C As DataGrid
  Dim var_110 As TextBox
  loc_1116F10: Set var_88 = Me.FGrid
  loc_1116F1F: var_88.Height = CVar(CDbl(4250))
  loc_1116F30: var_88.Width = CVar(CDbl(8500))
  loc_1116F41: var_88.Cols = 6
  loc_1116F52: var_88.Rows = 2
  loc_1116F6B: global_96 = CStr(CLng(var_88.BackColor))
  loc_1116F78: var_98 = CVar(CLng(5)) 'Long
  loc_1116F7D: var_CC = &H64
  loc_1116F89: LateIdCallSt
  loc_1116F94: var_98 = CVar(CLng(5)) 'Long
  loc_1116F9F: var_CC = CVar(CInt(4)) 'Integer
  loc_1116FA6: LateIdCallSt
  loc_1116FAE: var_98 = 1
  loc_1116FBA: var_CC = CVar(CLng(5)) 'Long
  loc_1116FBF: var_EC = "1"
  loc_1116FC8: LateIdCallSt
  loc_1116FD0: var_98 = 0
  loc_1116FDC: var_CC = CVar(CLng(1)) 'Long
  loc_1116FE1: var_EC = "Revenue"
  loc_1116FEA: LateIdCallSt
  loc_1116FF5: var_98 = CVar(CLng(1)) 'Long
  loc_1116FFA: var_CC = &HBB8
  loc_1117006: LateIdCallSt
  loc_1117011: var_98 = CVar(CLng(1)) 'Long
  loc_111701C: var_CC = CVar(CInt(1)) 'Integer
  loc_1117023: LateIdCallSt
  loc_111702B: var_98 = 0
  loc_1117037: var_CC = CVar(CLng(2)) 'Long
  loc_111703C: var_EC = "Amount"
  loc_1117045: LateIdCallSt
  loc_1117050: var_98 = CVar(CLng(2)) 'Long
  loc_1117055: var_CC = &H4B0
  loc_1117061: LateIdCallSt
  loc_111706C: var_98 = CVar(CLng(2)) 'Long
  loc_1117077: var_CC = CVar(CInt(7)) 'Integer
  loc_111707E: LateIdCallSt
  loc_1117086: var_98 = 0
  loc_1117092: var_CC = CVar(CLng(3)) 'Long
  loc_1117097: var_EC = "Nature"
  loc_11170A0: LateIdCallSt
  loc_11170AB: var_98 = CVar(CLng(3)) 'Long
  loc_11170B0: var_CC = &H708
  loc_11170BC: LateIdCallSt
  loc_11170C7: var_98 = CVar(CLng(3)) 'Long
  loc_11170D2: var_CC = CVar(CInt(1)) 'Integer
  loc_11170D9: LateIdCallSt
  loc_11170E1: var_98 = 0
  loc_11170ED: var_CC = CVar(CLng(4)) 'Long
  loc_11170F2: var_EC = "Month"
  loc_11170FB: LateIdCallSt
  loc_1117106: var_98 = CVar(CLng(4)) 'Long
  loc_111710B: var_CC = &H320
  loc_1117117: LateIdCallSt
  loc_1117122: var_98 = CVar(CLng(4)) 'Long
  loc_111712D: var_CC = CVar(CInt(1)) 'Integer
  loc_1117134: LateIdCallSt
  loc_111713C: var_98 = 0
  loc_1117148: var_CC = CVar(CLng(0)) 'Long
  loc_111714D: var_EC = "O"
  loc_1117156: LateIdCallSt
  loc_1117161: var_98 = CVar(CLng(0)) 'Long
  loc_1117166: var_CC = &H64
  loc_1117172: LateIdCallSt
  loc_111717D: var_98 = CVar(CLng(0)) 'Long
  loc_111718F: LateIdCallSt
  loc_1117197: var_98 = True
  loc_111719E: var_88.Enabled = var_98
  loc_11171B1: Set var_100 = Me.Txt
  loc_11171B7: Call 0.Method_Proc_268_39_111725C0 (CInt(0), var_104, var_108, var_88, CVar(CInt(4)), var_98, var_88)
  loc_11171BF: var_CC = var_104.Left
  loc_11171C7: var_98 = CVar(var_108) 'Single
  loc_11171D6: Me.DGCat.Left = var_98
  loc_11171F2: Set var_10C = Me.Txt
  loc_11171F8: Call 0.Method_Proc_268_39_111725C0 (CInt(0), var_110, var_114, var_98, var_88)
  loc_1117200: var_EC = var_110.Height
  loc_1117213: Set var_100 = Me.Txt
  loc_1117219: Call 0.Method_Proc_268_39_111725C0 (CInt(0), var_104, var_108)
  loc_1117221: var_CC = var_104.Top
  loc_1117231: var_98 = CVar(((var_108 + var_114) + CDbl(&H19))) 'Single
  loc_1117240: Me.DGCat.Top = var_98
  loc_1117254: Set var_88 = Nothing 
  loc_1117258: Exit Sub
End Sub

Public Sub Proc_268_40_F18B00
  'Data Table: 49FB5C
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F18A16: Set var_8C = Me.Txt
  loc_F18A1C: Call 0.Method_Proc_268_40_F18B00C (var_8E, var_86)
  loc_F18A2C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F18A42:   Set var_8C = Me.Txt
  loc_F18A48:   Call 0.Method_Proc_268_40_F18B000 (CInt(var_86), var_98)
  loc_F18A50:   var_98.Text = vbNullString
  loc_F18A6C:   Set var_8C = Me.Txt
  loc_F18A72:   Call 0.Method_Proc_268_40_F18B000 (CInt(var_86), var_98)
  loc_F18A7A:   var_98.Tag = vbNullString
  loc_F18A89: Next var_92 'Byte
  loc_F18AA2: Me.FGrid.Rows = 1
  loc_F18ABF: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F18AC7: Set var_98 = Me.FGrid
  loc_F18AF6: Me.FGrid.FixedRows = 1
  loc_F18AFE: Exit Sub
End Sub

Public Sub Proc_268_41_1325648
  'Data Table: 49FB5C
  Dim unk_49FB72 As Connection15
  Dim var_90 As Recordset15
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_C4 As Fields15
  Dim var_E8 As Variant
  Dim var_10C As Variant
  Dim var_FC As Variant
  Dim var_C0 As String
  Dim var_1D4 As Variant
  Dim var_88 As Recordset15
  Dim var_D8 As TextBox
  Dim var_8A As Integer
  Dim var_14C As Variant
  loc_1324EF4: On Error Goto loc_132563F
  loc_1324F11: If (Me.Recordset15.RecordCount > 0) Then
  loc_1324F14:   Call Proc_268_40_F18B00()
  loc_1324F2F:   unk_49FB72.Execute "Select * from MemCatRevWise", var_B4, -1
  loc_1324F3A:   Set var_90 = var_B8
  loc_1324F57:   If (var_90.RecordCount > 0) Then
  loc_1324F69:     var_B8 = var_90.Fields
  loc_1324FFD:     var_18C = IIf((Proc_6_38_E69628(CVar(var_B8.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_90.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1325042:     Me.LblUser.Caption = CStr(var_B8 & CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("U_Name")), var_18C)))
  loc_13250B4:     var_C4 = var_90.Fields
  loc_13250BC:     var_D8 = var_C4.Item("U_AE")
  loc_13250F8:     var_14C = IIf((Proc_6_38_E69628(CVar(var_D8)) = "E"), "Last Update : ", "entdt : ")
  loc_1325150:     var_1D4 = IIf((Proc_6_38_E69628(CVar(var_90.Fields.Item("U_AE"))) = "A"), "Created By : ", var_14C) & CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("U_EntDt")))) 
  loc_1325162:     Me.LblLDt.Caption = CStr(var_1D4)
  loc_132519A:   End If
  loc_13251AE:   var_C0 = "Select MemCatMast.Code AS CatCode,MemCatMast.Name AS CatName,MembershipRevMast.Code As RevCode,MembershipRevMast.Description, MR.AppDate , MR.Amount , MR.Nature, MR.AppMonth From ((MemCatRevWise MR Left Join MemCatMast On MR.MemCat = MemCatMast.Code) LEFT JOIN MembershipRevMast ON MR.RevCode = MembershipRevMast.Code) Where MR.Site_Code='" & MemVar_1F95070
  loc_13251C3:   var_E8 = CVar(var_C0 & "' and (MR.LOGSITE_CODE='" & MemVar_1F95078 & "' or MR.LOGSITE_CODE='HO') and (MR.MemCat+'**'+Convert(Varchar(11),MR.AppDate,103))='") 'String
  loc_132520D:   unk_49FB72.Execute CStr(CVar(var_D8) & Me.Recordset15.Fields.Item("SearchCode").Value & "'"), var_14C, -1
  loc_1325218:   Set var_88 = var_C4
  loc_1325250:   If (var_88.RecordCount > 0) Then
  loc_1325289:     Set var_C4 = Me.Txt
  loc_132528F:     Call 0.Method_Proc_268_41_13256480 (CInt(0), var_D8)
  loc_1325297:     var_D8.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CatName")))
  loc_13252E1:     Set var_C4 = Me.Txt
  loc_13252E7:     Call 0.Method_Proc_268_41_13256480 (CInt(0), var_D8)
  loc_13252EF:     var_D8.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CatCode")))
  loc_1325355:     Set var_C4 = Me.Txt
  loc_132535B:     Call 0.Method_Proc_268_41_13256480 (CInt(1), var_D8, CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/mmm/yyyy")))
  loc_1325363:     var_D8.Text = 1
  loc_132537F:     var_8A = 1
  loc_1325395:     Me.FGrid.Rows = 1
  loc_132539D:     ' Referenced from: 13255B6
  loc_13253AC:     If Not(var_88.EOF) Then
  loc_13253AF:       var_A4 = vbNullString
  loc_13253B9:       Set var_B8 = Me.FGrid
  loc_13253CE:       Set var_1EC = Me.FGrid
  loc_13253D5:       var_D4 = CVar(CLng(var_8A)) 'Long
  loc_13253DD:       var_10C = CVar(CLng(5)) 'Long
  loc_132540D:       var_E8 = CVar(CStr(var_88.Fields.Item("RevCode").Value)) 'String
  loc_1325414:       LateIdCallSt
  loc_132542E:       var_D4 = CVar(CLng(var_8A)) 'Long
  loc_1325463:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Description")), CVar(CLng(1)), var_D4, var_1EC, var_E8, CVar(CLng(1)))) 'String
  loc_132546A:       LateIdCallSt
  loc_13254A2:       Proc_6_39_E7D3A0(var_E8, CVar(var_88.Fields.Item("Amount")), var_1EC, var_E8, var_D4)
  loc_13254AB:       var_FC = CVar(CLng(var_8A)) 'Long
  loc_13254E3:       LateIdCallSt
  loc_1325534:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Nature")), CVar(CLng(3)), CVar(CLng(var_8A)), var_1EC, CVar(CStr(Format(var_E8, "0.00"))), 1, 1)) 'String
  loc_132553B:       LateIdCallSt
  loc_1325586:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("AppMonth")), CVar(CLng(4)), CVar(CLng(var_8A)), var_1EC, var_E8, CVar(CLng(2)))) 'String
  loc_132558D:       LateIdCallSt
  loc_13255A1:       Set var_1EC = Nothing 
  loc_13255AB:       var_8A = (var_8A + 1)
  loc_13255B1:       var_88.MoveNext
  loc_13255B6:       GoTo loc_132539D
  loc_13255B9:     End If
  loc_13255B9:   End If
  loc_13255B9:   var_A4 = 0
  loc_13255C3:   Set var_B8 = Me.FGrid
  loc_13255F0:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_13255F3:     var_A4 = vbNullString
  loc_13255FD:     Set var_B8 = Me.FGrid
  loc_132560E:   End If
  loc_132560E:   var_A4 = 1
  loc_1325621:   Me.FGrid.FixedRows = var_A4
  loc_132562C: Else
  loc_132562C:   Call Proc_268_40_F18B00(FGrid.DispID_10000, var_A4, FGrid.DispID_2E, var_A4, var_8A, var_1EC)
  loc_1325631: End If
  loc_1325631: Call Proc_268_43_E86AF0(var_E8, var_FC, FGrid.DispID_10000)
  loc_132563B: Set var_88 = Nothing
  loc_132563E: Exit Sub
  loc_132563F: ' Referenced from: 1324EF4
  loc_132563F: Proc_6_60_E63754(var_A4, var_8A)
  loc_1325644: Exit Sub
End Sub

Public Sub Proc_268_42_E7BAB4(arg_C) 'E7BAB4
  'Data Table: 49FB5C
  Dim var_98 As TextBox
  loc_E7BA62: Set var_8C = Me.Txt
  loc_E7BA68: Call 0.Method_Proc_268_42_E7BAB4C (var_8E, var_86)
  loc_E7BA78: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7BA8E:   Set var_8C = Me.Txt
  loc_E7BA94:   Call 0.Method_Proc_268_42_E7BAB40 (CInt(var_86), var_98)
  loc_E7BA9C:   var_98.Enabled = arg_C
  loc_E7BAAB: Next var_92 'Byte
  loc_E7BAB1: Exit Sub
End Sub

Public Sub Proc_268_43_E86AF0
  'Data Table: 49FB5C
  loc_E86A9C: If (CBool(Me.DGCat.Visible) = &HFF) Then
  loc_E86AAE:   Me.DGCat.Visible = False
  loc_E86AB6: End If
  loc_E86AD2: If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_E86AE4:   Me.DGRev.Visible = False
  loc_E86AEC: End If
  loc_E86AEC: Exit Sub
End Sub

Public Sub Proc_268_44_FC919C
  'Data Table: 49FB5C
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim unk_49FB72 As Connection15
  Dim var_138 As Fields15
  Dim var_14C As Field20
  loc_FC9037: If (Me.RecordCount = 0) Then
  loc_FC903A:   Proc_268_44_FC919C = 
  loc_FC9040: End If
  loc_FC907B: Set var_94 = Me.Txt
  loc_FC9081: Call 0.Method_Proc_268_44_FC919C0 (CInt(0), var_98, var_9C, "Select Count(*) From MemCatRevWise Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and (MemCat='", var_130, -1)
  loc_FC9099: var_DC = CVar(var_138 & var_9C & "' And AppDate=") 'String
  loc_FC90A7: Set var_A8 = Me.Txt
  loc_FC90AD: Call 0.Method_Proc_268_44_FC919C0 (CInt(1), var_AC, var_DC)
  loc_FC90BC: Proc_6_7_F26918(var_CC, CVar(var_AC), 0)
  loc_FC90C4: var_EC = var_14C & var_CC 
  loc_FC90DB: unk_49FB72.Execute CStr(var_EC & ")"), var_15C, 
  loc_FC90E3:  = var_98.Tag.Fields
  loc_FC90EB:  = var_138.Item()
  loc_FC90F3:  = var_14C.Value
  loc_FC9130: If (var_15C > 0) Then
  loc_FC9154:   MsgBox("Duplicate Entry", &H40, "Information", var_DC, var_EC)
  loc_FC916F:   Set var_94 = Me.Txt
  loc_FC9175:   Call 0.Method_Proc_268_44_FC919C0 (CInt(0))
  loc_FC917D:   var_98.SetFocus
  loc_FC918E:   Proc_268_44_FC919C = &HFF
  loc_FC9194: End If
  loc_FC9194: Proc_268_44_FC919C = var_98
End Sub

Public Sub Proc_268_45_E46990
  'Data Table: 49FB5C
  loc_E4696C: Set var_88 = Me.TopCtrl1
  loc_E46972: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E4698B: If (CStr() = "Browse") Then
  loc_E4698E:   Exit Sub
  loc_E4698F: End If
  loc_E4698F: Exit Sub
End Sub

Public Sub Proc_268_46_1257C0C(arg_C) '1257C0C
  'Data Table: 49FB5C
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_13C As Variant
  Dim var_B8 As String
  Dim var_140 As Variant
  Dim var_170 As Variant
  loc_12576C4: If (arg_C = 0) Then
  loc_12576DA:   var_A8 = CLng(Me.FGrid.Col)
  loc_12576EA:   If (var_A8 = CLng(1)) Then
  loc_125770D:     var_AE = Me.EOF
  loc_125773B:     Set var_94 = Me.TxtGrid
  loc_1257741:     Call 0.Method_Proc_268_46_1257C0C0 (arg_C, var_B4, var_B8)
  loc_1257749:     ((Me.RecordCount = 0) Or ((var_AE = &HFF) Or (Me.BOF = &HFF))) = var_B4.Text
  loc_1257761:     If (var_A8 Or (var_B8 = vbNullString)) Then
  loc_1257777:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_125777F:       var_E8 = CVar(CLng(1)) 'Long
  loc_1257784:       var_108 = vbNullString
  loc_125778E:       Set var_B4 = Me.FGrid
  loc_1257794:       LateIdCallSt
  loc_12577B9:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12577C1:       var_E8 = CVar(CLng(5)) 'Long
  loc_12577C6:       var_108 = vbNullString
  loc_12577D0:       Set var_B4 = Me.FGrid
  loc_12577D6:       LateIdCallSt
  loc_12577EB:     Else
  loc_12577EE:       Call Proc_268_47_FC25DC(var_AE, var_B4, var_108, var_E8, var_C8)
  loc_12577F9:       If (var_AE = 0) Then
  loc_1257801:         Proc_268_46_1257C0C = 0
  loc_1257807:       End If
  loc_125781A:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1257822:       var_F8 = CVar(CLng(1)) 'Long
  loc_1257855:       var_13C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_125785D:       Set var_140 = Me.FGrid
  loc_1257863:       LateIdCallSt
  loc_1257892:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_125789A:       var_F8 = CVar(CLng(5)) 'Long
  loc_12578CD:       var_13C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_12578D5:       Set var_140 = Me.FGrid
  loc_12578DB:       LateIdCallSt
  loc_12578F7:     End If
  loc_1257910:     var_C8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1257918:     var_E8 = CVar(CLng(5)) 'Long
  loc_1257921:     Set var_B4 = Me.FGrid
  loc_1257932:     var_B8 = CStr(var_B4.TextMatrix))
  loc_125794B:     If (var_B8 <> vbNullString) Then
  loc_125794E:       var_C8 = vbNullString
  loc_1257958:       Set var_94 = Me.FGrid
  loc_1257969:     End If
  loc_125796C:   Else
  loc_1257973:     If (var_A8 = CLng(2)) Then
  loc_1257980:       Set var_94 = Me.TxtGrid
  loc_1257986:       Call 0.Method_Proc_268_46_1257C0C0 (arg_C, var_B4, FGrid.DispID_10000, var_C8, var_E8, var_C8, var_140)
  loc_12579A5:       Set var_11C = Me.TxtGrid
  loc_12579AB:       Call 0.Method_Proc_268_46_1257C0C0 (arg_C, var_140, var_B8, Not(IsNumeric(CVar(var_B4))), var_13C, var_F8)
  loc_12579B3:       var_D8 = var_140.Text
  loc_12579D5:       If (var_140 Or (CDbl(Val(var_B8)) <= CDbl(0))) Then
  loc_12579DC:         var_B8 = CStr(0)
  loc_12579E9:         Set var_94 = Me.TxtGrid
  loc_12579EF:         Call 0.Method_Proc_268_46_1257C0C0 (arg_C, var_B4, var_B8)
  loc_12579F7:         var_B4.Text = var_13C
  loc_1257A0B:         Proc_268_46_1257C0C = 0
  loc_1257A11:       End If
  loc_1257A1E:       Set var_94 = Me.TxtGrid
  loc_1257A24:       Call 0.Method_Proc_268_46_1257C0C0 (arg_C, var_B4, var_B8)
  loc_1257A2C:       var_F8 = var_B4.Text
  loc_1257A44:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1257A4D:       Set var_140 = Me.FGrid
  loc_1257A5C:       var_F8 = CVar(CLng(var_140.Col)) 'Long
  loc_1257A88:       var_170 = CVar(CStr(Format(CVar(var_B8), "0.00"))) 'String
  loc_1257A90:       Set var_174 = Me.FGrid
  loc_1257A96:       LateIdCallSt
  loc_1257ABD:     Else
  loc_1257AC4:       If Not (var_A8 = CLng(3)) Then
  loc_1257ACE:         If (var_A8 = CLng(4)) Then
  loc_1257AD1:         End If
  loc_1257ADE:         Set var_94 = Me.TxtGrid
  loc_1257AE4:         Call 0.Method_Proc_268_46_1257C0C0 (arg_C, var_B4, var_B8, var_174, var_170)
  loc_1257AEC:         1 = var_B4.Text
  loc_1257B03:         If (var_B8 <> vbNullString) Then
  loc_1257B1E:           Set var_B4 = Me.ListView.SelectedItem
  loc_1257B24:           var_B8 = var_B4.Text
  loc_1257B36:           Set var_11C = Me.TxtGrid
  loc_1257B3C:           Call 0.Method_Proc_268_46_1257C0C0 (arg_C, var_140, var_B8, 1)
  loc_1257B44:           var_140.Text = var_F8
  loc_1257B5A:         End If
  loc_1257B6D:         var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1257B97:         Set var_94 = Me.TxtGrid
  loc_1257B9D:         Call 0.Method_Proc_268_46_1257C0C0 (arg_C, var_B4, var_B8, CVar(CLng(Me.FGrid.Col)))
  loc_1257BA5:         var_C8 = var_B4.Text
  loc_1257BAD:         var_13C = CVar(var_B8) 'String
  loc_1257BB5:         Set var_174 = Me.FGrid
  loc_1257BBB:         LateIdCallSt
  loc_1257BD9:       End If
  loc_1257BD9:     End If
  loc_1257BD9:   End If
  loc_1257BD9: End If
  loc_1257BEC: Set var_94 = Me.TxtGrid
  loc_1257BF2: Call 0.Method_Proc_268_46_1257C0C0 (0, var_B4, 0, &HFF)
  loc_1257BFA: var_B4.MaxLength = var_174
  loc_1257C06: Proc_268_46_1257C0C = var_13C
End Sub

Public Sub Proc_268_47_FC25DC
  'Data Table: 49FB5C
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC245F: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FC2464:   var_92 = 1 'Byte
  loc_FC2468: End If
  loc_FC2471: Set var_98 = Me.TxtGrid
  loc_FC2477: Call 0.Method_Proc_268_47_FC25DC0 (0, var_B0)
  loc_FC249A: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC24CE: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC24F2:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC24F5:     GoTo loc_FC25C7
  loc_FC24F8:   End If
  loc_FC24FC:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC2526:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC2530:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC2565:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC2589:     MsgBox("Duplicate Revenue Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC25A2:     Set var_98 = Me.TxtGrid
  loc_FC25A8:     Call 0.Method_Proc_268_47_FC25DC0 (0, var_B0, CVar(CLng(var_92)))
  loc_FC25B0:     var_B0.SetFocus
  loc_FC25C1:     Proc_268_47_FC25DC = 0
  loc_FC25C7:     ' Referenced from: FC24F5
  loc_FC25C7:   End If
  loc_FC25CA: Next var_D4 'Integer
  loc_FC25D4: Proc_268_47_FC25DC = &HFF
End Sub
