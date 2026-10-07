VERSION 5.00
Begin VB.Form FrmRevenueWiseBudget
  Caption = "Revenue Wise Budget"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4680
  ClientHeight = 3195
  LockControls = -1  'True
  Begin CommandButton CmdCancel
    Caption = "&Cancel"
    BackColor = &H808080&
    Left = 4785
    Top = 7800
    Width = 1845
    Height = 420
    TabIndex = 5
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdSave
    Caption = "&Save/Exit"
    BackColor = &H808080&
    Left = 2925
    Top = 7800
    Width = 1845
    Height = 420
    TabIndex = 4
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 510
    Top = 1470
    Width = 1005
    Height = 240
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    Left = 1935
    Top = 945
    Width = 1665
    Height = 270
    TabIndex = 1
    BorderStyle = 0 'None
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
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8250
    Height = 375
    Visible = 0   'False
    TabIndex = 6
  End
  Begin MSHFlexGrid FGrid
    Left = 495
    Top = 1455
    Width = 8670
    Height = 6000
    TabIndex = 3
  End
  Begin Label Lbl
    Caption = "Month &&Year"
    Index = 0
    Left = 525
    Top = 945
    Width = 1425
    Height = 270
    TabIndex = 0
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

Attribute VB_Name = "FrmRevenueWiseBudget"

Private global_64 As Integer
Private global_56 As Integer

Private Sub FGrid_UnknownEvent_0 'E31984
  'Data Table: 433254
  Dim var_8C As TextBox
  loc_E31967: Set var_88 = Me.TxtGrid
  loc_E3196D: Call 0.Method_FGrid_UnknownEvent_00 (0, var_8C)
  loc_E31975: var_8C.Visible = False
  loc_E31981: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E6B634
  'Data Table: 433254
  Dim var_88 As MSHFlexGrid
  Dim var_9C As TextBox
  loc_E6B5E4: Call Proc_178_25_E31680()
  loc_E6B608: If (CLng(Me.FGrid.Col) = 0) Then
  loc_E6B616:   Set var_88 = Me.TxtGrid
  loc_E6B61C:   Call 0.Method_FGrid_UnknownEvent_90 (0, var_9C)
  loc_E6B624:   var_9C.Visible = False
  loc_E6B630: End If
  loc_E6B630: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '100A360
  'Data Table: 433254
  Dim var_98 As Variant
  Dim var_E4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_DC As String
  Dim Cancel As Integer
  Dim var_FC As Variant
  Dim var_11C As String
  loc_100A15C: Set var_88 = Me.TopCtrl1
  loc_100A162: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_100A1B2: If CBool(( = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_100A1BB:   Call Form_KeyDown(Cancel, arg_10)
  loc_100A1C0: End If
  loc_100A1C4: Set var_88 = Me.TopCtrl1
  loc_100A1CA: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_100A1DF: If ( = "Browse") Then
  loc_100A1E2:   Exit Sub
  loc_100A1E3: End If
  loc_100A257: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_100A262:   var_DC = "+{Tab}"
  loc_100A268:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_100A272:   Cancel = 0
  loc_100A275: End If
  loc_100A27B: global_64 = Cancel
  loc_100A2A1: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_100A2C5: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_100A2EB:   If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_100A301:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_100A319:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_100A31E:     var_11C = vbNullString
  loc_100A328:     Set var_E4 = Me.FGrid
  loc_100A32E:     LateIdCallSt
  loc_100A346:   End If
  loc_100A346: End If
  loc_100A34C: If (Cancel = &HD) Then
  loc_100A354:   global_56 = 0
  loc_100A357: End If
  loc_100A359: Cancel = 0
  loc_100A35C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E128E0
  'Data Table: 433254
  loc_E128D1: Call FGrid_UnknownEvent_C()
  loc_E128DB: global_56 = 0
  loc_E128DE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'F2E02C
  'Data Table: 433254
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_DC As Variant
  loc_F2DF30: Set var_88 = Me.TopCtrl1
  loc_F2DF36: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_F2DF4B: If ( = "Browse") Then
  loc_F2DF4E:   Exit Sub
  loc_F2DF4F: End If
  loc_F2DF72: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_F2DF88:   var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F2DF90:   var_DC = CVar(CLng(0)) 'Long
  loc_F2DFC3:   If (CStr(Me.FGrid.TextMatrix)) <> "Header") Then
  loc_F2E004:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF)
  loc_F2E016:   End If
  loc_F2E016: End If
  loc_F2E020: If (CLng(Cancel) <> &HD) Then
  loc_F2E028:   global_56 = &HFF
  loc_F2E02B: End If
  loc_F2E02B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FD5024
  'Data Table: 433254
  Dim var_9C As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_BC As Variant
  loc_FD4E60: Set var_8C = Me.TopCtrl1
  loc_FD4E66: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_FD4E7B: If ( = "Browse") Then
  loc_FD4E7E:   Exit Sub
  loc_FD4E7F: End If
  loc_FD4E9C: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FD4E9F:   Exit Sub
  loc_FD4EA0: End If
  loc_FD4EB1: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FD4ED3:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FD4F0D:     If (MsgBox("Delete For Sure?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FD4F2F:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FD4F45:         var_9C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FD4F4E:         Set var_110 = Me.FGrid
  loc_FD4F69:       Else
  loc_FD4F7C:         Me.FGrid.Rows = 1
  loc_FD4F99:         var_BC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FD4FA1:         Set var_110 = Me.FGrid
  loc_FD4FD0:         Me.FGrid.FixedRows = 1
  loc_FD4FD8:       End If
  loc_FD4FD8:     End If
  loc_FD4FDB:   Else
  loc_FD4FFC:     MsgBox("No Entries To Delete", &H10, "Delete !", var_EC, var_10C)
  loc_FD500C:   End If
  loc_FD5010:   Set var_8C = Me.FGrid
  loc_FD5021: End If
  loc_FD5021: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E318C4
  'Data Table: 433254
  Dim var_8C As TextBox
  loc_E318A7: Set var_88 = Me.TxtGrid
  loc_E318AD: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E318B5: var_8C.Visible = False
  loc_E318C1: Exit Sub
  loc_E318C2: CExtInstUnk
End Sub

Private Sub CmdSave_Click() '11DC31C
  'Data Table: 433254
  Dim unk_43325B As Connection15
  Dim var_88 As Integer
  Dim var_C8 As Variant
  Dim var_D8 As Variant
  Dim var_108 As Variant
  Dim var_94 As Variant
  Dim var_14C As String
  Dim var_1B4 As Variant
  Dim var_1D4 As Variant
  Dim var_258 As Variant
  Dim var_520 As Double
  Dim var_228 As Variant
  Dim var_400 As Variant
  loc_11DBF3C: On Error Goto loc_11DC2FF
  loc_11DBF48: unk_43325B.BeginTrans var_90
  loc_11DBF6F: Set var_94 = Me.Txt
  loc_11DBF75: Call 0.Method_CmdSave_Click0 (CInt(0), var_98, "Delete from BudgetDetails WHERE Month_Year='", var_15C)
  loc_11DBF8C: var_D8 = -1 & Trim(CVar(var_98)) 
  loc_11DBFB6: unk_43325B.Execute CStr(var_D8 & "' And LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'"), var_160, &HFF
  loc_11DBFFB: For var_164 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_164 'Integer
  loc_11DC005:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_11DC00D:   var_108 = CVar(CLng(0)) 'Long
  loc_11DC049:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> "Header") Then
  loc_11DC088:     Set var_98 = Me.Txt
  loc_11DC08E:     Call 0.Method_CmdSave_Click0 (CInt(0), var_160, CVar(CLng(0)), CVar(CLng(var_86)))
  loc_11DC0A6:     var_1B4 = CVar(CLng(var_86)) 'Long
  loc_11DC0AE:     var_1D4 = CVar(CLng(4)) 'Long
  loc_11DC0D7:     var_258 = CVar(CLng(var_86)) 'Long
  loc_11DC141:     var_520 = Val(CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))))
  loc_11DC152:     Proc_6_7_F26918(var_440, Now, var_520, CVar(CLng(3)), CVar(CLng(var_86)), CVar(CLng(1)))
  loc_11DC164:     var_14C = "Insert into BudgetDetails(SNo,Month_Year,RevCode,Detail,Budget,Header,U_Name,U_EntDt,U_AE,Site_Code,lOGSITE_CODE) values ("
  loc_11DC18C:     var_228 = var_14C & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & ",'" & Trim(CVar(var_160)) & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_11DC1D6:     var_400 = var_228 & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'," & CVar(var_520) & ",'" & CVar(var_8C) & "','" & CVar(MemVar_1F950C8) 
  loc_11DC223:     unk_43325B.Execute CStr(var_400 & "'," & var_440 & ",'A','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), var_514, -1
  loc_11DC28E:   Else
  loc_11DC292:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_11DC29A:     var_108 = CVar(CLng(1)) 'Long
  loc_11DC2C3:     var_8C = CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_11DC2D2:   End If
  loc_11DC2D5: Next var_164 'Integer
  loc_11DC2DC: var_88 = 0
  loc_11DC2E5: unk_43325B.CommitTrans
  loc_11DC2F7: Me.Global.Unload Me
  loc_11DC2FF: ' Referenced from: 11DBF3C
  loc_11DC305: If (var_88 = &HFF) Then
  loc_11DC30E:   unk_43325B.RollbackTrans
  loc_11DC313: End If
  loc_11DC313: Proc_6_60_E63754(var_88)
  loc_11DC318: Exit Sub
End Sub

Private Sub Form_Load() 'F1B478
  'Data Table: 433254
  Dim unk_43325B As Connection15
  Dim var_A8 As Variant
  loc_F1B388: On Error Goto loc_F1B432
  loc_F1B38B: Call Proc_178_24_FFF1E0()
  loc_F1B390: Call Proc_178_23_13DABFC()
  loc_F1B3AB: unk_43325B.Execute "SELECT B.Month_Year As SearchCode FROM BUDGETDETAILS B ORDER BY MONTH_YEAR,SNO", var_A8, -1
  loc_F1B3BC: Set global_52 = var_AC
  loc_F1B3DC: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000F(5800)
  loc_F1B3E3: Me.TopCtrl1.left = 
  loc_F1B3F7: Set var_AC = ("Add")
  loc_F1B3FD: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_F1B406: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_0()
  loc_F1B429: Proc_6_23_DFC5B8(Me, 4425)
  loc_F1B431: Exit Sub
  loc_F1B432: ' Referenced from: F1B388
  loc_F1B43A: Set var_AC = Err()
  loc_F1B440: Call 0.Method_arg_2C (var_D8)
  loc_F1B461: MsgBox(CVar(var_D8), &H40, "Information", var_E8, var_108)
  loc_F1B474: Exit Sub
  loc_F1B475: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E1284C
  'Data Table: 433254
  loc_E12843: Set global_52 = Nothing
  loc_E1284A: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E885EC
  'Data Table: 433254
  loc_E88588: On Error Goto loc_E885A8
  loc_E8859F: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E885A7: Exit Sub
  loc_E885A8: ' Referenced from: E88588
  loc_E885B0: Set var_88 = Err()
  loc_E885B6: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E885D7: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E885EA: Exit Sub
  loc_E885EB: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F6CFA0
  'Data Table: 433254
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_9C As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_114 As Long
  loc_F6CE8B: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F6CE94: Set var_9C = Me.FGrid
  loc_F6CECA: Set var_104 = Me.TxtGrid
  loc_F6CED0: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_F6CED8: var_108.Tag = CVar(CLng(var_9C.Col))
  loc_F6CF05: Set var_88 = Me.TxtGrid
  loc_F6CF0B: Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_F6CF13: var_9C.MaxLength = 0
  loc_F6CF2B: If (Index = 0) Then
  loc_F6CF41:   var_114 = CLng(Me.FGrid.Col)
  loc_F6CF51:   If (var_114 = CLng(3)) Then
  loc_F6CF62:     Set var_88 = Me.TxtGrid
  loc_F6CF68:     Call 0.Method_TxtGrid_GotFocus0 (0, var_9C, &H14)
  loc_F6CF70:     var_9C.MaxLength = var_114
  loc_F6CF85:     If (global_56 = 0) Then
  loc_F6CF90:       var_10C = "{Home}+{End}"
  loc_F6CF96:       Proc_303_0_FBACC8(CStr(Me.FGrid.TextMatrix)), 0)
  loc_F6CF9E:     End If
  loc_F6CF9E:   End If
  loc_F6CF9E: End If
  loc_F6CF9E: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1005B68
  'Data Table: 433254
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  loc_1005970: If (KeyCode = 0) Then
  loc_100597D:   If (CLng(Shift) = &H1B) Then
  loc_100598D:     Set var_8C = Me.TxtGrid
  loc_1005993:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_10059AD:     Set var_98 = Me.TxtGrid
  loc_10059B3:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_10059BB:     var_9C.Text = var_90.Tag
  loc_10059D2:     Set var_8C = Me.FGrid
  loc_10059EF:     Set var_8C = Me.TxtGrid
  loc_10059F5:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_10059FD:     var_90.Visible = FGrid.DispID_8001
  loc_1005A17:     Set var_8C = Me.TxtGrid
  loc_1005A1D:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_1005A25:     var_90.MaxLength = 0
  loc_1005A31:     Exit Sub
  loc_1005A32:   End If
  loc_1005A55:   If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_1005A98:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_56 = &HFF))) Then
  loc_1005AA1:       Call Proc_178_26_FB2150(KeyCode, var_B2)
  loc_1005AE8:       If ((var_B2 = &HFF) And (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1))) Then
  loc_1005B1F:         Set var_90 = Me.TxtGrid
  loc_1005B2E:         Proc_6_62_1254E68(Me.FGrid, var_90, KeyCode, Shift, global_56, 3)
  loc_1005B41:       Else
  loc_1005B4C:         Set var_8C = Me.TxtGrid
  loc_1005B52:         Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0, 0)
  loc_1005B5A:         var_90.Visible = False
  loc_1005B66:       End If
  loc_1005B66:     End If
  loc_1005B66:   End If
  loc_1005B66: End If
  loc_1005B66: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E8E05C
  'Data Table: 433254
  Dim var_8C As MSHFlexGrid
  loc_E8DFF8: If (KeyAscii = 0) Then
  loc_E8E01E:   If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_E8E02B:     Set var_8C = Me.TxtGrid
  loc_E8E031:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4)
  loc_E8E04C:     Proc_6_42_129B55C(var_A4, arg_10, &HA)
  loc_E8E058:   End If
  loc_E8E058: End If
  loc_E8E058: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E234E0
  'Data Table: 433254
  Dim arg_10 As Integer
  loc_E234C8: If (Cancel = 0) Then
  loc_E234D1:   Call Proc_178_26_FB2150(Cancel, var_88)
  loc_E234DA:   arg_10 = Not(var_88)
  loc_E234DD: End If
  loc_E234DD: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E4F5B4
  'Data Table: 433254
  loc_E4F592: Set var_88 = Me.Txt
  loc_E4F598: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E4F5A6: Proc_6_74_E23240(var_8C)
  loc_E4F5B2: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E23438
  'Data Table: 433254
  loc_E23429: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E23432:   Proc_6_75_E5335C(Shift)
  loc_E23437: End If
  loc_E23437: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E0A570
  'Data Table: 433254
  loc_E0A55C: On Error Goto loc_E0A568
  loc_E0A562: Proc_6_58_E06050(arg_10)
  loc_E0A567: Exit Sub
  loc_E0A568: ' Referenced from: E0A55C
  loc_E0A568: Proc_6_60_E63754()
  loc_E0A56D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4E164
  'Data Table: 433254
  loc_E4E142: Set var_88 = Me.Txt
  loc_E4E148: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4E156: Proc_6_73_E23294(var_8C)
  loc_E4E162: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '102BCA4
  'Data Table: 433254
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_C4 As Long
  Dim var_94 As String
  Dim var_F0 As TextBox
  Dim var_EC As TextBox
  Dim arg_10 As Integer
  Dim Me As Recordset15
  loc_102BA7F: var_86 = Cancel
  loc_102BA8A: If (var_86 = CInt(0)) Then
  loc_102BA9A:   Set var_8C = Me.Txt
  loc_102BAA0:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_102BAD8:   If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_102BAFE:     var_C4 = Format(Now, "MMM/yyyy")
  loc_102BB14:     Set var_8C = Me.Txt
  loc_102BB1A:     Call 0.Method_Txt_Validate0 (Cancel, var_90, CStr(var_C4))
  loc_102BB22:     var_90.Text = 1
  loc_102BB3D:   Else
  loc_102BB47:     Set var_8C = Me.Txt
  loc_102BB4D:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_102BB6D:     Set var_EC = Me.Txt
  loc_102BB73:     Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_102BB7B:     var_F0.Text = Proc_6_120_133AEC8(var_90, 1)
  loc_102BB8E:   End If
  loc_102BB9B:   Set var_8C = Me.Txt
  loc_102BBA1:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_102BBA9:   var_94 = var_90.Text
  loc_102BBC4:   Set var_E8 = Me.Txt
  loc_102BBCA:   Call 0.Method_Txt_Validate0 (Cancel, var_EC, var_F4)
  loc_102BBD2:   (CDate(var_94) >= MemVar_1F950F4) = var_EC.Text
  loc_102BBF4:   If Not((var_86 And (CDate(var_F4) <= MemVar_1F950FC))) Then
  loc_102BC18:     MsgBox("V.Date Not Between Current Fin. Year", 0, "Date Validate", var_C4, var_E4)
  loc_102BC32:     Set var_8C = Me.Txt
  loc_102BC38:     Call 0.Method_Txt_Validate0 (Cancel)
  loc_102BC40:     var_90.SetFocus
  loc_102BC4E:     arg_10 = &HFF
  loc_102BC51:     Exit Sub
  loc_102BC52:   End If
  loc_102BC69:   If (Me.RecordCount > 0) Then
  loc_102BC79:     Set var_8C = Me.Txt
  loc_102BC7F:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_102BC87:     arg_10 = var_90.Text
  loc_102BC92:     Call FrmRevenueWiseBudget.SEARCHBACK(var_94)
  loc_102BCA1:   End If
  loc_102BCA1: End If
  loc_102BCA1: Exit Sub
End Sub

Private Sub cmdCancel_Click() 'E173E0
  'Data Table: 433254
  loc_E173D5: Me.Global.Unload Me
  loc_E173DD: Exit Sub
  loc_E173DE: Set var_2400 = 
End Sub

Public Sub SEARCHBACK(MyValue) 'EE7444
  'Data Table: 433254
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EE739A: On Error Goto loc_EE73FE
  loc_EE73A3: Me.MoveFirst
  loc_EE73BD: var_8C = "SearchCode='" & MyValue
  loc_EE73CD: Me.Find var_8C & "'", 0, 1
  loc_EE73ED: If (Me.EOF = &HFF) Then
  loc_EE73F0:   Call Proc_178_23_13DABFC(var_A0)
  loc_EE73F8: Else
  loc_EE73F8:   Call Proc_178_22_1239FD0()
  loc_EE73FD: End If
  loc_EE73FD: Exit Sub
  loc_EE73FE: ' Referenced from: EE739A
  loc_EE7406: Set var_A8 = Err()
  loc_EE740C: Call 0.Method_arg_2C (var_8C)
  loc_EE742D: MsgBox(CVar(var_8C), &H40, "Information", var_E8, var_108)
  loc_EE7440: Exit Sub
  loc_EE7441: Exit Sub
End Sub

Public Sub Proc_178_22_1239FD0
  'Data Table: 433254
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_A4 As Variant
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim unk_43325B As Connection15
  Dim var_8A As Integer
  Dim var_88 As Recordset15
  Dim var_144 As Variant
  Dim var_12C As Variant
  Dim var_168 As Variant
  loc_1239AB0: On Error Goto loc_1239FC9
  loc_1239ACA: If (Me.RecordCount > 0) Then
  loc_1239B0C:   var_E8 = "Select * from BudgetDetails where Month_year='" & Me.Fields.Item("SearchCode").Value 
  loc_1239B23:   unk_43325B.Execute CStr(var_E8 & "' Order by Month_Year,SNO"), var_12C, -1
  loc_1239B2E:   Set var_88 = var_130
  loc_1239B57:   Me.FGrid.Redraw = False
  loc_1239B72:   Me.FGrid.Rows = 1
  loc_1239B7C:   var_8A = 1
  loc_1239B93:   If (var_88.RecordCount > 0) Then
  loc_1239B96:     Call Proc_178_24_FFF1E0(var_8A)
  loc_1239B9B:     ' Referenced from: 1239E6C
  loc_1239BAA:     If Not(var_88.EOF) Then
  loc_1239BE6:       If (var_130 <> Proc_6_38_E69628(CVar(var_88.Fields.Item("HEADER")), var_98)) Then
  loc_1239C11:         var_98 = Proc_6_38_E69628(CVar(var_88.Fields.Item("HEADER")))
  loc_1239C1A:         var_B4 = vbNullString
  loc_1239C24:         Set var_A4 = Me.FGrid
  loc_1239C39:         var_B4 = CVar(CLng(var_8A)) 'Long
  loc_1239C41:         var_F8 = CVar(CLng(0)) 'Long
  loc_1239C46:         var_144 = "Header"
  loc_1239C50:         Set var_A4 = Me.FGrid
  loc_1239C56:         LateIdCallSt
  loc_1239C65:         var_B4 = CVar(CLng(var_8A)) 'Long
  loc_1239C6D:         var_F8 = CVar(CLng(1)) 'Long
  loc_1239C7D:         Set var_A4 = Me.FGrid
  loc_1239C83:         LateIdCallSt
  loc_1239C94:         var_8A = (var_8A + 1)
  loc_1239C97:       End If
  loc_1239C97:       var_B4 = vbNullString
  loc_1239CA1:       Set var_A4 = Me.FGrid
  loc_1239CB6:       Set var_158 = Me.FGrid
  loc_1239CCD:       var_B4 = "SNo"
  loc_1239CF0:       Proc_6_39_E7D3A0(var_E8, CVar(var_88.Fields.Item(var_B4)), CVar(CLng(0)), CVar(CLng(var_8A)), FGrid.DispID_10000, var_B4, var_8A)
  loc_1239CF9:       var_108 = CVar(CStr(var_E8)) 'String
  loc_1239D00:       LateIdCallSt
  loc_1239D44:       var_A4 = var_88.Fields
  loc_1239D54:       var_E8 = CVar(var_A4.Item("Detail")) 'Address
  loc_1239D65:       var_168 = CVar(CStr(var_98 & CVar(Proc_6_38_E69628(var_E8, Space(&HA), CVar(CLng(1)), CVar(CLng(var_8A)), var_158, var_108, var_A4)))) 'String
  loc_1239D6C:       LateIdCallSt
  loc_1239DAA:       Proc_6_39_E7D3A0(var_E8, CVar(var_88.Fields.Item("Budget")), var_158, var_168, var_F8)
  loc_1239DB3:       var_F8 = CVar(CLng(var_8A)) 'Long
  loc_1239DBB:       var_144 = CVar(CLng(3)) 'Long
  loc_1239DEB:       LateIdCallSt
  loc_1239E3C:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RevCode")), CVar(CLng(4)), CVar(CLng(var_8A)), var_158, CVar(CStr(Format(var_E8, "0.00"))), 1, 1)) 'String
  loc_1239E43:       LateIdCallSt
  loc_1239E57:       Set var_158 = Nothing 
  loc_1239E61:       var_8A = (var_8A + 1)
  loc_1239E67:       var_88.MoveNext
  loc_1239E6C:       GoTo loc_1239B9B
  loc_1239E6F:     End If
  loc_1239E82:     Me.FGrid.FixedRows = 1
  loc_1239E8A:   End If
  loc_1239E98:   Me.FGrid.Redraw = True
  loc_1239EC5:   For var_17C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8A = var_17C 'Integer
  loc_1239ECF:     var_B4 = CVar(CLng(var_8A)) 'Long
  loc_1239ED4:     var_F8 = 0
  loc_1239F03:     If (CStr(Me.FGrid.TextMatrix)) = "Header") Then
  loc_1239F19:       Me.FGrid.Row = CVar(CLng(var_8A))
  loc_1239F46:       For var_180 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_9A = var_180 'Integer
  loc_1239F5F:         Me.FGrid.Col = CVar(CLng(var_9A))
  loc_1239F67:         var_B4 = -2147483626
  loc_1239F7A:         Me.FGrid.CellBackColor = CVar(CLng(var_9A))
  loc_1239F85:       Next var_180 'Integer
  loc_1239F8A:     End If
  loc_1239F8D:   Next var_17C 'Integer
  loc_1239F92: End If
  loc_1239FA5: Me.FGrid.Row = 2
  loc_1239FC0: Me.FGrid.Col = 3
  loc_1239FC8: Exit Sub
  loc_1239FC9: ' Referenced from: 1239AB0
  loc_1239FC9: Proc_6_60_E63754()
  loc_1239FCE: Exit Sub
End Sub

Public Sub Proc_178_23_13DABFC
  'Data Table: 433254
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_8A As Integer
  Dim var_C8 As Variant
  Dim var_E8 As String
  Dim var_FC As String
  Dim var_100 As String
  Dim var_108 As String
  Dim unk_43325B As Connection15
  Dim var_88 As Recordset15
  Dim var_B0 As Variant
  Dim var_D8 As Variant
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_178 As Variant
  Dim var_188 As String
  Dim var_8E As Integer
  Dim var_118 As Variant
  loc_13DA26B: Me.FGrid.Redraw = False
  loc_13DA280: Set var_B4 = Me.FGrid
  loc_13DA286: var_B4.Rows = 1
  loc_13DA290: var_8A = 1
  loc_13DA297: Set var_B8 = Me.FGrid
  loc_13DA29A: var_A0 = vbNullString
  loc_13DA2AF: var_A0 = CVar(CLng(var_8A)) 'Long
  loc_13DA2B7: var_C8 = CVar(CLng(0)) 'Long
  loc_13DA2BC: var_E8 = "Header"
  loc_13DA2C5: LateIdCallSt
  loc_13DA2D1: var_A0 = CVar(CLng(var_8A)) 'Long
  loc_13DA2D9: var_C8 = CVar(CLng(1)) 'Long
  loc_13DA2DE: var_E8 = "FRONT DESK"
  loc_13DA2E7: LateIdCallSt
  loc_13DA2F5: var_8A = (var_8A + 1)
  loc_13DA2FA: Set var_B8 = Nothing 
  loc_13DA312: var_FC = "SELECT Name,Code From RevMast WHERE (FlagType = 'FOM') AND (FieldType = 'C') AND (FlagAMR <> 'Header') AND (Type = 'Cr') AND (Code IN ('" & MemVar_1F95078
  loc_13DA319: var_100 = var_FC & "RMCH')) AND (Code NOT IN (SELECT DISTINCT RevCode From FixedCharge WHERE ChgCategory = 'Meal Charges')) AND LOGSITE_CODE='"
  loc_13DA330: unk_43325B.Execute var_100 & MemVar_1F95078 & "'", var_118, -1
  loc_13DA33B: Set var_88 = var_B4
  loc_13DA363: If (var_88.RecordCount > 0) Then
  loc_13DA366:   ' Referenced from: 13DA487
  loc_13DA375:   If Not(var_88.EOF) Then
  loc_13DA378:     var_A0 = vbNullString
  loc_13DA382:     Set var_B4 = Me.FGrid
  loc_13DA397:     Set var_124 = Me.FGrid
  loc_13DA3BE:     var_A0 = "Name"
  loc_13DA3CA:     var_B4 = var_88.Fields
  loc_13DA3E3:     var_148 = CVar(Proc_6_38_E69628(CVar(var_B4.Item(var_A0)), Space(&HA), CVar(CLng(1)), CVar(CLng(var_8A)), FGrid.DispID_10000, var_A0, var_B4)) 'String
  loc_13DA3F6:     var_178 = CVar(CStr(var_8A & Ucase(var_148))) 'String
  loc_13DA3FD:     LateIdCallSt
  loc_13DA41B:     var_B0 = CVar(CLng(var_8A)) 'Long
  loc_13DA423:     var_D8 = CVar(CLng(4)) 'Long
  loc_13DA43A:     var_B4 = var_88.Fields
  loc_13DA44A:     var_118 = var_B4.Item("Code").Value
  loc_13DA453:     var_138 = CVar(CStr(var_118)) 'String
  loc_13DA45A:     LateIdCallSt
  loc_13DA472:     Set var_124 = Nothing 
  loc_13DA47C:     var_8A = (var_8A + 1)
  loc_13DA482:     var_88.MoveNext
  loc_13DA487:     GoTo loc_13DA366
  loc_13DA48A:   End If
  loc_13DA48A: End If
  loc_13DA48E: Set var_17C = Me.FGrid
  loc_13DA491: var_A0 = vbNullString
  loc_13DA4A6: var_A0 = CVar(CLng(var_8A)) 'Long
  loc_13DA4AE: var_C8 = CVar(CLng(0)) 'Long
  loc_13DA4B3: var_E8 = "Header"
  loc_13DA4BC: LateIdCallSt
  loc_13DA4C8: var_A0 = CVar(CLng(var_8A)) 'Long
  loc_13DA4D0: var_C8 = CVar(CLng(1)) 'Long
  loc_13DA4D5: var_E8 = "FOOD & BEVERAGE"
  loc_13DA4DE: LateIdCallSt
  loc_13DA4EC: var_8A = (var_8A + 1)
  loc_13DA4F1: Set var_17C = Nothing 
  loc_13DA509: var_FC = "SELECT Name,Code From RevMast WHERE (FlagAMR = 'Header') AND (FlagType = 'POS') AND (Type = 'Cr') AND LOGSITE_CODE='" & MemVar_1F95078
  loc_13DA519: unk_43325B.Execute var_FC & "'", var_118, -1
  loc_13DA524: Set var_88 = var_B4
  loc_13DA548: If (var_88.RecordCount > 0) Then
  loc_13DA54B:   ' Referenced from: 13DA66C
  loc_13DA55A:   If Not(var_88.EOF) Then
  loc_13DA55D:     var_A0 = vbNullString
  loc_13DA567:     Set var_B4 = Me.FGrid
  loc_13DA57C:     Set var_180 = Me.FGrid
  loc_13DA5A3:     var_A0 = "Name"
  loc_13DA5AF:     var_B4 = var_88.Fields
  loc_13DA5C8:     var_148 = CVar(Proc_6_38_E69628(CVar(var_B4.Item(var_A0)), Space(&HA), CVar(CLng(1)), CVar(CLng(var_8A)), FGrid.DispID_10000, var_A0, var_B4)) 'String
  loc_13DA5DB:     var_178 = CVar(CStr(var_8A & Ucase(var_148))) 'String
  loc_13DA5E2:     LateIdCallSt
  loc_13DA600:     var_B0 = CVar(CLng(var_8A)) 'Long
  loc_13DA608:     var_D8 = CVar(CLng(4)) 'Long
  loc_13DA61F:     var_B4 = var_88.Fields
  loc_13DA62F:     var_118 = var_B4.Item("Code").Value
  loc_13DA638:     var_138 = CVar(CStr(var_118)) 'String
  loc_13DA63F:     LateIdCallSt
  loc_13DA657:     Set var_180 = Nothing 
  loc_13DA661:     var_8A = (var_8A + 1)
  loc_13DA667:     var_88.MoveNext
  loc_13DA66C:     GoTo loc_13DA54B
  loc_13DA66F:   End If
  loc_13DA66F: End If
  loc_13DA683: var_FC = "SELECT Name,Code From RevMast WHERE (FlagType = 'FOM') AND (FieldType = 'C') AND (FlagAMR <> 'Header') AND (Type = 'Cr') AND (Code NOT IN ('" & MemVar_1F95078
  loc_13DA698: var_108 = var_FC & "TOUT','" & MemVar_1F95078 & "ROFF')) AND (Code IN (SELECT DISTINCT RevCode From FixedCharge WHERE ChgCategory = 'Meal Charges')) AND LOGSITE_CODE='"
  loc_13DA6AF: unk_43325B.Execute var_108 & MemVar_1F95078 & "'", var_118, -1
  loc_13DA6BA: Set var_88 = var_B4
  loc_13DA6E6: If (var_88.RecordCount > 0) Then
  loc_13DA6E9:   ' Referenced from: 13DA80A
  loc_13DA6F8:   If Not(var_88.EOF) Then
  loc_13DA6FB:     var_A0 = vbNullString
  loc_13DA705:     Set var_B4 = Me.FGrid
  loc_13DA71A:     Set var_18C = Me.FGrid
  loc_13DA741:     var_A0 = "Name"
  loc_13DA74D:     var_B4 = var_88.Fields
  loc_13DA766:     var_148 = CVar(Proc_6_38_E69628(CVar(var_B4.Item(var_A0)), Space(&HA), CVar(CLng(1)), CVar(CLng(var_8A)), FGrid.DispID_10000, var_A0, var_B4)) 'String
  loc_13DA779:     var_178 = CVar(CStr(var_8A & Ucase(var_148))) 'String
  loc_13DA780:     LateIdCallSt
  loc_13DA79E:     var_B0 = CVar(CLng(var_8A)) 'Long
  loc_13DA7A6:     var_D8 = CVar(CLng(4)) 'Long
  loc_13DA7BD:     var_B4 = var_88.Fields
  loc_13DA7CD:     var_118 = var_B4.Item("Code").Value
  loc_13DA7D6:     var_138 = CVar(CStr(var_118)) 'String
  loc_13DA7DD:     LateIdCallSt
  loc_13DA7F5:     Set var_18C = Nothing 
  loc_13DA7FF:     var_8A = (var_8A + 1)
  loc_13DA805:     var_88.MoveNext
  loc_13DA80A:     GoTo loc_13DA6E9
  loc_13DA80D:   End If
  loc_13DA80D: End If
  loc_13DA811: Set var_190 = Me.FGrid
  loc_13DA814: var_A0 = vbNullString
  loc_13DA829: var_A0 = CVar(CLng(var_8A)) 'Long
  loc_13DA831: var_C8 = CVar(CLng(0)) 'Long
  loc_13DA836: var_E8 = "Header"
  loc_13DA83F: LateIdCallSt
  loc_13DA84B: var_A0 = CVar(CLng(var_8A)) 'Long
  loc_13DA853: var_C8 = CVar(CLng(1)) 'Long
  loc_13DA858: var_E8 = "MISC. CHARGES"
  loc_13DA861: LateIdCallSt
  loc_13DA86F: var_8A = (var_8A + 1)
  loc_13DA874: Set var_190 = Nothing 
  loc_13DA88C: var_FC = "SELECT Name,Code From RevMast WHERE (FlagType = 'FOM') AND (FieldType = 'C') AND (FlagAMR <> 'Header') AND (Type = 'Cr') AND (Code NOT IN ('" & MemVar_1F95078
  loc_13DA8AF: var_188 = var_FC & "TOUT','" & MemVar_1F95078 & "RMCH','" & MemVar_1F95078 & "ROFF')) AND (Code NOT IN (SELECT DISTINCT RevCode From FixedCharge WHERE ChgCategory = 'Meal Charges')) AND LOGSITE_CODE='"
  loc_13DA8C6: unk_43325B.Execute var_188 & MemVar_1F95078 & "'", var_118, -1
  loc_13DA8D1: Set var_88 = var_B4
  loc_13DA901: If (var_88.RecordCount > 0) Then
  loc_13DA904:   ' Referenced from: 13DAA25
  loc_13DA913:   If Not(var_88.EOF) Then
  loc_13DA916:     var_A0 = vbNullString
  loc_13DA920:     Set var_B4 = Me.FGrid
  loc_13DA935:     Set var_19C = Me.FGrid
  loc_13DA95C:     var_A0 = "Name"
  loc_13DA968:     var_B4 = var_88.Fields
  loc_13DA981:     var_148 = CVar(Proc_6_38_E69628(CVar(var_B4.Item(var_A0)), Space(&HA), CVar(CLng(1)), CVar(CLng(var_8A)), FGrid.DispID_10000, var_A0, var_B4)) 'String
  loc_13DA994:     var_178 = CVar(CStr(var_8A & Ucase(var_148))) 'String
  loc_13DA99B:     LateIdCallSt
  loc_13DA9B9:     var_B0 = CVar(CLng(var_8A)) 'Long
  loc_13DA9C1:     var_D8 = CVar(CLng(4)) 'Long
  loc_13DA9F1:     var_138 = CVar(CStr(var_88.Fields.Item("Code").Value)) 'String
  loc_13DA9F8:     LateIdCallSt
  loc_13DAA10:     Set var_19C = Nothing 
  loc_13DAA1A:     var_8A = (var_8A + 1)
  loc_13DAA20:     var_88.MoveNext
  loc_13DAA25:     GoTo loc_13DA904
  loc_13DAA28:   End If
  loc_13DAA28: End If
  loc_13DAA2A: var_8E = 1
  loc_13DAA40: Me.FGrid.FixedRows = 1
  loc_13DAA56: Me.FGrid.Redraw = True
  loc_13DAA83: For var_1A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8A = var_1A0 'Integer
  loc_13DAA8D:   var_A0 = CVar(CLng(var_8A)) 'Long
  loc_13DAA92:   var_C8 = 0
  loc_13DAAC1:   If (CStr(Me.FGrid.TextMatrix)) = "Header") Then
  loc_13DAAD7:     Me.FGrid.Row = CVar(CLng(var_8A))
  loc_13DAB04:     For var_1A4 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_8C = var_1A4 'Integer
  loc_13DAB1D:       Me.FGrid.Col = CVar(CLng(var_8C))
  loc_13DAB25:       var_A0 = -2147483626
  loc_13DAB38:       Me.FGrid.CellBackColor = CVar(CLng(var_8C))
  loc_13DAB43:     Next var_1A4 'Integer
  loc_13DAB4B:   Else
  loc_13DAB4F:     var_A0 = CVar(CLng(var_8A)) 'Long
  loc_13DAB57:     var_C8 = CVar(CLng(3)) 'Long
  loc_13DAB5C:     var_E8 = "0.00"
  loc_13DAB66:     Set var_B4 = Me.FGrid
  loc_13DAB6C:     LateIdCallSt
  loc_13DAB7B:     var_A0 = CVar(CLng(var_8A)) 'Long
  loc_13DAB83:     var_C8 = CVar(CLng(0)) 'Long
  loc_13DAB8D:     var_118 = CVar(CStr(var_8E)) 'String
  loc_13DAB95:     Set var_B4 = Me.FGrid
  loc_13DAB9B:     LateIdCallSt
  loc_13DABAF:     var_8E = (var_8E + 1)
  loc_13DABB2:   End If
  loc_13DABB5: Next var_1A0 'Integer
  loc_13DABCD: Me.FGrid.Row = 2
  loc_13DABE8: Me.FGrid.Col = 3
  loc_13DABF5: Set var_88 = Nothing
  loc_13DABF8: Exit Sub
End Sub

Public Sub Proc_178_24_FFF1E0
  'Data Table: 433254
  Dim var_9C As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_FFEFD0: Set var_8C = Me.FGrid
  loc_FFEFDF: var_8C.Width = CVar(CDbl(8500))
  loc_FFEFF0: var_8C.Cols = 5
  loc_FFEFF5: var_9C = 0
  loc_FFF001: var_BC = CVar(CLng(0)) 'Long
  loc_FFF006: var_DC = vbNullString
  loc_FFF00F: LateIdCallSt
  loc_FFF01A: var_9C = CVar(CLng(0)) 'Long
  loc_FFF01F: var_BC = 0
  loc_FFF02B: LateIdCallSt
  loc_FFF036: var_9C = CVar(CLng(0)) 'Long
  loc_FFF041: var_BC = CVar(CInt(1)) 'Integer
  loc_FFF048: LateIdCallSt
  loc_FFF050: var_9C = 0
  loc_FFF05C: var_BC = CVar(CLng(1)) 'Long
  loc_FFF061: var_DC = "Details"
  loc_FFF06A: LateIdCallSt
  loc_FFF075: var_9C = CVar(CLng(1)) 'Long
  loc_FFF07A: var_BC = &H1770
  loc_FFF086: LateIdCallSt
  loc_FFF091: var_9C = CVar(CLng(1)) 'Long
  loc_FFF09C: var_BC = CVar(CInt(1)) 'Integer
  loc_FFF0A3: LateIdCallSt
  loc_FFF0AB: var_9C = 0
  loc_FFF0B7: var_BC = CVar(CLng(2)) 'Long
  loc_FFF0BC: var_DC = "Currency"
  loc_FFF0C5: LateIdCallSt
  loc_FFF0D0: var_9C = CVar(CLng(2)) 'Long
  loc_FFF0D5: var_BC = 0
  loc_FFF0E1: LateIdCallSt
  loc_FFF0EC: var_9C = CVar(CLng(2)) 'Long
  loc_FFF0F7: var_BC = CVar(CInt(1)) 'Integer
  loc_FFF0FE: LateIdCallSt
  loc_FFF106: var_9C = 0
  loc_FFF112: var_BC = CVar(CLng(3)) 'Long
  loc_FFF117: var_DC = "Budget"
  loc_FFF120: LateIdCallSt
  loc_FFF12B: var_9C = CVar(CLng(3)) 'Long
  loc_FFF130: var_BC = &H898
  loc_FFF13C: LateIdCallSt
  loc_FFF147: var_9C = CVar(CLng(3)) 'Long
  loc_FFF152: var_BC = CVar(CInt(7)) 'Integer
  loc_FFF159: LateIdCallSt
  loc_FFF164: var_9C = CVar(CLng(3)) 'Long
  loc_FFF16F: var_BC = CVar(CInt(7)) 'Integer
  loc_FFF176: LateIdCallSt
  loc_FFF17E: var_9C = 0
  loc_FFF18A: var_BC = CVar(CLng(4)) 'Long
  loc_FFF18F: var_DC = "RevCode"
  loc_FFF198: LateIdCallSt
  loc_FFF1A3: var_9C = CVar(CLng(4)) 'Long
  loc_FFF1A8: var_BC = 0
  loc_FFF1B4: LateIdCallSt
  loc_FFF1BF: var_9C = CVar(CLng(4)) 'Long
  loc_FFF1CA: var_BC = CVar(CInt(7)) 'Integer
  loc_FFF1D1: LateIdCallSt
  loc_FFF1DB: Set var_8C = Nothing 
  loc_FFF1DF: Exit Sub
End Sub

Public Sub Proc_178_25_E31680
  'Data Table: 433254
  loc_E31660: Set var_88 = Me.TopCtrl1
  loc_E31666: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_E3167B: If ( = "Browse") Then
  loc_E3167E:   Exit Sub
  loc_E3167F: End If
  loc_E3167F: Exit Sub
End Sub

Public Sub Proc_178_26_FB2150(arg_C) 'FB2150
  'Data Table: 433254
  Dim var_94 As MSHFlexGrid
  Dim var_A8 As Long
  Dim var_AC As TextBox
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  loc_FB1FE0: If (arg_C = 0) Then
  loc_FB1FF6:   var_A8 = CLng(Me.FGrid.Col)
  loc_FB2006:   If (var_A8 = CLng(3)) Then
  loc_FB2013:     Set var_94 = Me.TxtGrid
  loc_FB2019:     Call 0.Method_Proc_178_26_FB21500 (arg_C, var_AC)
  loc_FB2031:     If Not(IsNumeric(CVar(var_AC))) Then
  loc_FB2045:       Set var_94 = Me.TxtGrid
  loc_FB204B:       Call 0.Method_Proc_178_26_FB21500 (arg_C, var_AC, CStr(0))
  loc_FB2053:       var_AC.Text = var_A8
  loc_FB2062:     End If
  loc_FB206F:     Set var_94 = Me.TxtGrid
  loc_FB2075:     Call 0.Method_Proc_178_26_FB21500 (arg_C, var_AC)
  loc_FB20A0:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FB20B8:     var_148 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_FB20E5:     var_168 = CVar(CStr(Format(CVar(Val(var_AC.Text)), "0.00"))) 'String
  loc_FB20ED:     Set var_17C = Me.FGrid
  loc_FB20F3:     LateIdCallSt
  loc_FB211A:   End If
  loc_FB211A: End If
  loc_FB212D: Set var_94 = Me.TxtGrid
  loc_FB2133: Call 0.Method_Proc_178_26_FB21500 (0, var_AC, 0, &HFF, var_17C, var_168)
  loc_FB213B: var_AC.MaxLength = 1
  loc_FB2147: Proc_178_26_FB2150 = 1
End Sub
