VERSION 5.00
Begin VB.Form salmarCompProfile
  Caption = "Company Profile"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11880
  ClientHeight = 7515
  Begin CommonDialog CDLG
  End
  Begin Frame Frame1
    Left = 375
    Top = 4245
    Width = 6465
    Height = 855
    TabIndex = 3
    Begin CommandButton cmdRpt
      Caption = "&Report"
      Left = 4335
      Top = 240
      Width = 1470
      Height = 420
      TabIndex = 6
    End
    Begin CommandButton CmdSave
      Caption = "&Save/Exit"
      BackColor = &H808080&
      Left = 585
      Top = 240
      Width = 1845
      Height = 420
      TabIndex = 4
      Appearance = 0 'Flat
    End
    Begin CommandButton CmdCancel
      Caption = "&Cancel"
      BackColor = &H808080&
      Left = 2460
      Top = 240
      Width = 1845
      Height = 420
      TabIndex = 5
      Appearance = 0 'Flat
    End
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11880
    Height = 375
    Visible = 0   'False
    TabIndex = 2
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 7380
    Top = 825
    Width = 1080
    Height = 240
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 360
    Top = 660
    Width = 6450
    Height = 3660
    TabIndex = 0
  End
  Begin Image Picture1
    Left = 7740
    Top = 795
    Width = 2865
    Height = 3285
    Stretch = -1  'True
  End
  Begin Shape Shape1
    Left = 7770
    Top = 720
    Width = 2895
    Height = 3330
  End
End

Attribute VB_Name = "salmarCompProfile"

Private global_56 As Integer
Private global_58 As Integer

Private Sub Picture1_DblClick() '1038564
  'Data Table: 42E584
  Dim var_94 As String
  Dim var_A8 As CommonDialog
  Dim var_BC As String
  Dim var_C0 As Variant
  Dim var_D0 As Variant
  Dim var_A4 As String
  loc_1038348: On Error Goto loc_1038506
  loc_103835B: Me.CDLG.Filter = "*.*"
  loc_1038382: Me.CDLG.FileName = Me.CDLG._Action
  loc_103839B: If (CStr() <> vbNullString) Then
  loc_10383A8:   Me.CDLG.FileName = 
  loc_10383B0:   var_BC = CStr()
  loc_10383BD:   Me.Picture1.Tag = var_BC
  loc_10383D9:   Me.CDLG.FileName = 
  loc_10383E1:   var_D0 = CVar(CStr()) 'String
  loc_10383E7:   var_E0 = Trim(var_D0)
  loc_10383F0:   Set var_C0 = Me.CDLG
  loc_10383F6:   var_C0.FileName = 
  loc_1038414:   var_F0 = Right(var_E0, 3)
  loc_103844F:   var_A4 = "AVI"
  loc_103847D:   If CBool((Ucase(var_F0) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_A4)) Then
  loc_103848E:     var_94 = "Invalid Format"
  loc_1038499:     MsgBox(var_94, 0, var_D0, var_E0, var_F0)
  loc_10384AC:   Else
  loc_10384C3:     Set var_A8 = Me.CDLG
  loc_10384C9:     var_A8.FileName = var_94
  loc_10384D1:     var_D0 = CVar(CStr(var_A4)) 'String
  loc_10384DB:     Me.var_A8.LoadPicture var_D0, var_190, var_1A0, var_C0, 
  loc_10384F0:     Me.Picture1.Picture = var_C0
  loc_1038505:   End If
  loc_1038505: End If
  loc_1038505: Exit Sub
  loc_1038506: ' Referenced from: 1038348
  loc_103850E: Set var_A8 = Err()
  loc_1038514: Call 0.Method_arg_1C (var_1AC)
  loc_1038525: If (var_1AC <> 0) Then
  loc_103853E:   Set var_A8 = Err()
  loc_1038544:   Call 0.Method_arg_2C (var_BC, 0, var_D0)
  loc_103854F:   MsgBox(CVar(var_BC), var_E0, var_F0, , )
  loc_1038562: End If
  loc_1038562: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E68B8C
  'Data Table: 42E584
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E68B4B: Set var_88 = Me.TxtGrid
  loc_E68B51: Call 0.Method_FGrid_UnknownEvent_00 (0, var_8C)
  loc_E68B59: var_8C.Visible = False
  loc_E68B88: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_E68B8B: End If
  loc_E68B8B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E6B378
  'Data Table: 42E584
  Dim var_88 As MSHFlexGrid
  Dim var_9C As TextBox
  loc_E6B328: Call Proc_181_18_E31200()
  loc_E6B34C: If (CLng(Me.FGrid.Col) = 0) Then
  loc_E6B35A:   Set var_88 = Me.TxtGrid
  loc_E6B360:   Call 0.Method_FGrid_UnknownEvent_90 (0, var_9C)
  loc_E6B368:   var_9C.Visible = False
  loc_E6B374: End If
  loc_E6B374: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '1007E20
  'Data Table: 42E584
  Dim var_98 As Variant
  Dim var_E4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_DC As String
  Dim arg_C As Integer
  Dim var_FC As Variant
  Dim var_11C As String
  Dim MeD9 As Variant
  loc_1007C1C: Set var_88 = Me.TopCtrl1
  loc_1007C22: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_1007C72: If CBool(( = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_1007C7B:   Call Form_KeyDown(arg_C, arg_10)
  loc_1007C80: End If
  loc_1007C84: Set var_88 = Me.TopCtrl1
  loc_1007C8A: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_1007C9F: If ( = "Browse") Then
  loc_1007CA2:   Exit Sub
  loc_1007CA3: End If
  loc_1007D17: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_1007D22:   var_DC = "+{Tab}"
  loc_1007D28:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_1007D32:   arg_C = 0
  loc_1007D35: End If
  loc_1007D3B: global_56 = arg_C
  loc_1007D61: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1007D85: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_1007DAB:   If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_1007DC1:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1007DD9:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1007DDE:     var_11C = vbNullString
  loc_1007DE8:     Set var_E4 = Me.FGrid
  loc_1007DEE:     LateIdCallSt
  loc_1007E06:   End If
  loc_1007E06: End If
  loc_1007E0C: If (arg_C = &HD) Then
  loc_1007E14:   global_58 = 0
  loc_1007E17: End If
  loc_1007E1C: Exit Sub
  loc_1007E1D: MeD9 = 0
End Sub

Private Sub FGrid_UnknownEvent_B 'E0E5F0
  'Data Table: 42E584
  loc_E0E5E1: Call FGrid_UnknownEvent_C()
  loc_E0E5EB: global_58 = 0
  loc_E0E5EE: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) 'EE0CDC
  'Data Table: 42E584
  Dim var_88 As MSHFlexGrid
  loc_EE0C30: Set var_88 = Me.TopCtrl1
  loc_EE0C36: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_EE0C4B: If ( = "Browse") Then
  loc_EE0C4E:   Exit Sub
  loc_EE0C4F: End If
  loc_EE0C72: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_EE0CB3:   Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_EE0CC5: End If
  loc_EE0CCF: If (CLng(Index) <> &HD) Then
  loc_EE0CD7:   global_58 = &HFF
  loc_EE0CDA: End If
  loc_EE0CDA: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) 'FD3344
  'Data Table: 42E584
  Dim var_9C As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_BC As Variant
  loc_FD3180: Set var_8C = Me.TopCtrl1
  loc_FD3186: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_FD319B: If ( = "Browse") Then
  loc_FD319E:   Exit Sub
  loc_FD319F: End If
  loc_FD31BC: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FD31BF:   Exit Sub
  loc_FD31C0: End If
  loc_FD31D1: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_FD31F3:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FD322D:     If (MsgBox("Delete For Sure?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FD324F:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FD3265:         var_9C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FD326E:         Set var_110 = Me.FGrid
  loc_FD3289:       Else
  loc_FD329C:         Me.FGrid.Rows = 1
  loc_FD32B9:         var_BC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FD32C1:         Set var_110 = Me.FGrid
  loc_FD32F0:         Me.FGrid.FixedRows = 1
  loc_FD32F8:       End If
  loc_FD32F8:     End If
  loc_FD32FB:   Else
  loc_FD331C:     MsgBox("No Entries To Delete", &H10, "Delete !", var_EC, var_10C)
  loc_FD332C:   End If
  loc_FD3330:   Set var_8C = Me.FGrid
  loc_FD3341: End If
  loc_FD3341: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_15(Index As Integer) 'E31144
  'Data Table: 42E584
  Dim var_8C As TextBox
  loc_E31127: Set var_88 = Me.TxtGrid
  loc_E3112D: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E31135: var_8C.Visible = False
  loc_E31141: Exit Sub
  loc_E31142: Set Index00 = 
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F6BAD8
  'Data Table: 42E584
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_9C As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_114 As Long
  loc_F6B9C3: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F6B9CC: Set var_9C = Me.FGrid
  loc_F6BA02: Set var_104 = Me.TxtGrid
  loc_F6BA08: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_F6BA10: var_108.Tag = CVar(CLng(var_9C.Col))
  loc_F6BA3D: Set var_88 = Me.TxtGrid
  loc_F6BA43: Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_F6BA4B: var_9C.MaxLength = 0
  loc_F6BA63: If (Index = 0) Then
  loc_F6BA79:   var_114 = CLng(Me.FGrid.Col)
  loc_F6BA89:   If (var_114 = CLng(2)) Then
  loc_F6BA9A:     Set var_88 = Me.TxtGrid
  loc_F6BAA0:     Call 0.Method_TxtGrid_GotFocus0 (0, var_9C, &H64)
  loc_F6BAA8:     var_9C.MaxLength = var_114
  loc_F6BABD:     If (global_58 = 0) Then
  loc_F6BAC8:       var_10C = "{Home}+{End}"
  loc_F6BACE:       Proc_303_0_FBACC8(CStr(Me.FGrid.TextMatrix)), 0)
  loc_F6BAD6:     End If
  loc_F6BAD6:   End If
  loc_F6BAD6: End If
  loc_F6BAD6: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1034060
  'Data Table: 42E584
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_DC As Variant
  loc_1033E2C: If (KeyCode = 0) Then
  loc_1033E39:   If (CLng(Shift) = &H1B) Then
  loc_1033E49:     Set var_8C = Me.TxtGrid
  loc_1033E4F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_1033E69:     Set var_98 = Me.TxtGrid
  loc_1033E6F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_1033E77:     var_9C.Text = var_90.Tag
  loc_1033E8E:     Set var_8C = Me.FGrid
  loc_1033EAB:     Set var_8C = Me.TxtGrid
  loc_1033EB1:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_1033EB9:     var_90.Visible = FGrid.DispID_8001
  loc_1033ED3:     Set var_8C = Me.TxtGrid
  loc_1033ED9:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_1033EE1:     var_90.MaxLength = 0
  loc_1033EED:     Exit Sub
  loc_1033EEE:   End If
  loc_1033F11:   If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_1033F54:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_58 = &HFF))) Then
  loc_1033F5D:       Call Proc_181_19_F8AE58(KeyCode, var_B2)
  loc_1033FA4:       If ((var_B2 = &HFF) And (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1))) Then
  loc_1033FF0:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, &HFF, CByte((CInt(2) + 1)))
  loc_1034019:         var_DC = CVar((CLng(Me.FGrid.Col) + 1)) 'Long
  loc_1034022:         Set var_90 = Me.FGrid
  loc_1034028:         var_90.Col = var_DC
  loc_103403A:       Else
  loc_1034045:         Set var_8C = Me.TxtGrid
  loc_103404B:         Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0, 0)
  loc_1034053:         var_90.Visible = False
  loc_103405F:       End If
  loc_103405F:     End If
  loc_103405F:   End If
  loc_103405F: End If
  loc_103405F: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23A20
  'Data Table: 42E584
  Dim arg_10 As Integer
  loc_E23A08: If (Cancel = 0) Then
  loc_E23A11:   Call Proc_181_19_F8AE58(Cancel, var_88)
  loc_E23A1A:   arg_10 = Not(var_88)
  loc_E23A1D: End If
  loc_E23A1D: Exit Sub
End Sub

Private Sub cmdRpt_Click() 'FA82A8
  'Data Table: 42E584
  Dim unk_42E58B As Connection15
  Dim var_88 As Recordset15
  Dim var_A4 As Variant
  Dim var_11E As Integer
  loc_FA8150: unk_42E58B.Execute "select * FROM CompanyProfile WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')", var_B4, -1
  loc_FA815B: Set var_88 = var_B8
  loc_FA817F: If (var_88.RecordCount = 0) Then
  loc_FA8190:   var_A4 = "No Record Present For Printing"
  loc_FA819B:   MsgBox(var_A4, 0, var_DC, var_FC, var_11C)
  loc_FA81AB:   Exit Sub
  loc_FA81AC: End If
  loc_FA81C2: Set var_B8 = var_88 
  loc_FA81CE: var_11E = CreateFieldDefFile(var_B8, MemVar_1F950B4 & "\CompanyProfile.ttx")
  loc_FA8202: Call 0.Method_arg_1C (MemVar_1F950B4 & "\CompanyProfile.RPT", var_A4, var_B8, var_11E)
  loc_FA821D: Call unk_42E598.g
  loc_FA823C: Call 0.Method_arg_64 (var_B8, CVar(var_B8), var_CC, var_EC)
  loc_FA8244: Call 0.Method_arg_2C (var_11E, &HFF)
  loc_FA8252: Call 0.Method_arg_150 (var_B8)
  loc_FA825C: Set var_124 = Nothing
  loc_FA8278: Set var_B8 = var_B8 
  loc_FA8284: Proc_6_99_1484404(var_B8, 0, "Company Profile")
  loc_FA828F: MemVar_1F951E8 = var_B8
  loc_FA82A2: Set var_88 = Nothing
  loc_FA82A5: Exit Sub
End Sub

Private Sub Form_Load() '1154CF4
  'Data Table: 42E584
  Dim var_8C As String
  Dim unk_42E58B As Connection15
  Dim Me As Recordset15
  Dim var_A8 As Variant
  Dim var_E8 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_BC As Variant
  Dim var_118 As Variant
  loc_1154960: On Error Goto loc_1154CAF
  loc_1154963: Call IniGrid()
  loc_115497C: var_8C = "SELECT * FROM CompanyProfile WHERE Site_Code='" & MemVar_1F95070
  loc_115499A: unk_42E58B.Execute var_8C & "' AND (LogSite_Code='" & MemVar_1F95078 & "' OR LogSite_Code='HO')", var_B8, -1
  loc_11549AB: Set global_52 = var_BC
  loc_11549DB: If (Me.RecordCount > 0) Then
  loc_11549F8:   For var_C8 = CByte(1) To CByte(Me.RecordCount): var_86 = var_C8 'Byte
  loc_1154A03:     var_A8 = CVar(CLng(var_86)) 'Long
  loc_1154A0B:     var_E8 = CVar(CLng(0)) 'Long
  loc_1154A16:     var_B8 = CVar(CStr(var_86)) 'String
  loc_1154A1E:     Set var_BC = Me.FGrid
  loc_1154A24:     LateIdCallSt
  loc_1154A56:     var_BC = Me.Fields
  loc_1154A6F:     var_118 = CVar(Proc_6_38_E69628(CVar(var_BC.Item("FieldName")), CVar(CLng(1)), CVar(CLng(var_86)), var_BC, CVar(var_BC.Item("FieldName")))) 'String
  loc_1154A7D:     LateIdCallSt
  loc_1154AA0:     var_F8 = CVar(CLng(2)) 'Long
  loc_1154AD0:     var_118 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("FieldValue")), var_F8, CVar(CLng(var_86)), Me.FGrid, var_118)) 'String
  loc_1154AD8:     Set var_12C = Me.FGrid
  loc_1154ADE:     LateIdCallSt
  loc_1154B0B:     If (CLng(var_86) < Me.RecordCount) Then
  loc_1154B0E:       var_A8 = vbNullString
  loc_1154B18:       Set var_BC = Me.FGrid
  loc_1154B29:     End If
  loc_1154B56:     var_D8 = "PicturePath"
  loc_1154B68:     If (Me.Fields.Item("FieldName").Value = var_D8) Then
  loc_1154BAB:       Me.Global.LoadPicture CVar(Me.Fields.Item("FieldValue")), var_D8, var_E8, var_F8, var_108
  loc_1154BC0:       Me.Picture1.Picture = var_12C
  loc_1154BD1:     End If
  loc_1154BD7:     Me.MoveNext
  loc_1154BDF:   Next var_C8 'Byte
  loc_1154BF8:   Me.FGrid.Row = 1
  loc_1154C13:   Me.FGrid.Col = 2
  loc_1154C1E: Else
  loc_1154C37:   MsgBox("No Company Profile Fields Are Defined! First Specify Them", &H40, var_118, var_144, var_154)
  loc_1154C47: End If
  loc_1154C53: Set var_BC = Me.TopCtrl1
  loc_1154C59: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000F(5800)
  loc_1154C60: .left = 
  loc_1154C74: Set var_BC = Me.TopCtrl1
  loc_1154C7A: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E("Add")
  loc_1154C83: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_0()
  loc_1154CA6: Proc_6_23_DFC5B8(Me, 4425)
  loc_1154CAE: Exit Sub
  loc_1154CAF: ' Referenced from: 1154960
  loc_1154CB7: Set var_BC = Err()
  loc_1154CBD: Call 0.Method_arg_2C (var_8C)
  loc_1154CDE: MsgBox(CVar(var_8C), &H40, "Information", var_144, var_154)
  loc_1154CF1: Exit Sub
  loc_1154CF2: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E10254
  'Data Table: 42E584
  loc_E1024B: Set global_52 = Nothing
  loc_E10252: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8A178
  'Data Table: 42E584
  loc_E8A114: On Error Goto loc_E8A134
  loc_E8A12B: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E8A133: Exit Sub
  loc_E8A134: ' Referenced from: E8A114
  loc_E8A13C: Set var_88 = Err()
  loc_E8A142: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8A163: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8A176: Exit Sub
  loc_E8A177: Exit Sub
End Sub

Private Sub cmdCancel_Click() 'E166D0
  'Data Table: 42E584
  loc_E166C5: Me.Global.Unload Me
  loc_E166CD: Exit Sub
End Sub

Private Sub CmdSave_Click() '10ED89C
  'Data Table: 42E584
  Dim var_224 As Variant
  Dim var_244 As Variant
  Dim var_268 As Variant
  Dim var_164 As Variant
  Dim var_288 As Variant
  Dim var_298 As Variant
  Dim unk_42E58B As Connection15
  Dim var_2DC As Variant
  loc_10ED5E8: For var_A0 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Byte
  loc_10ED626:   If (CStr(Me.FGrid.TextMatrix)) = "PicturePath") Then
  loc_10ED633:     Me.CDLG.FileName = CVar(CLng(1))
  loc_10ED641:     Proc_6_17_EAAE40(var_104, CVar(CStr(CVar(CLng(var_86)))))
  loc_10ED654:     Proc_6_7_F26918(var_1E4, Now)
  loc_10ED65E:     var_224 = CVar(CLng(var_86)) 'Long
  loc_10ED666:     var_244 = CVar(CLng(1)) 'Long
  loc_10ED675:     var_268 = Me.FGrid.TextMatrix)
  loc_10ED6BC:     var_164 = "UPDATE CompanyProfile SET FieldValue= " & var_104 & ",Site_Code='" & CVar(MemVar_1F95070) & "', LogSite_code='" & CVar(MemVar_1F95078) 
  loc_10ED6F3:     var_288 = var_164 & "',U_Name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_1E4 & ", U_AE='E'  WHERE FieldName='" & CVar(CStr(var_268)) 
  loc_10ED70A:     unk_42E58B.Execute CStr(var_288 & "'"), var_2C8, -1
  loc_10ED749:   Else
  loc_10ED776:     Proc_6_17_EAAE40(var_104, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(2)), CVar(CLng(var_86)), var_2CC)
  loc_10ED789:     Proc_6_7_F26918(var_1E4, Now, var_268)
  loc_10ED793:     var_298 = CVar(CLng(var_86)) 'Long
  loc_10ED79B:     var_2DC = CVar(CLng(1)) 'Long
  loc_10ED7F1:     var_164 = "UPDATE CompanyProfile SET FieldValue= " & var_104 & ",Site_Code='" & CVar(MemVar_1F95070) & "', LogSite_code='" & CVar(MemVar_1F95078) 
  loc_10ED828:     var_288 = var_164 & "',U_Name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_1E4 & ", U_AE='E'  WHERE FieldName='" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_10ED83F:     unk_42E58B.Execute CStr(var_288 & "'"), var_2C8, -1
  loc_10ED87B:   End If
  loc_10ED87E: Next var_A0 'Byte
  loc_10ED891: Me.Global.Unload Me
  loc_10ED899: Exit Sub
  loc_10ED89A: ArrayRebase1Var
End Sub

Public Sub IniGrid() 'F2FD54
  'Data Table: 42E584
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_DC As String
  loc_F2FC38: Set var_8C = Me.FGrid
  loc_F2FC3B: var_9C = 0
  loc_F2FC47: var_BC = CVar(CLng(0)) 'Long
  loc_F2FC4C: var_DC = "Sr No."
  loc_F2FC55: LateIdCallSt
  loc_F2FC60: var_9C = CVar(CLng(0)) 'Long
  loc_F2FC65: var_BC = &H2BC
  loc_F2FC71: LateIdCallSt
  loc_F2FC7C: var_9C = CVar(CLng(0)) 'Long
  loc_F2FC87: var_BC = CVar(CInt(1)) 'Integer
  loc_F2FC8E: LateIdCallSt
  loc_F2FC96: var_9C = 0
  loc_F2FCA2: var_BC = CVar(CLng(1)) 'Long
  loc_F2FCA7: var_DC = "Field Name"
  loc_F2FCB0: LateIdCallSt
  loc_F2FCBB: var_9C = CVar(CLng(1)) 'Long
  loc_F2FCC0: var_BC = &H9C4
  loc_F2FCCC: LateIdCallSt
  loc_F2FCD7: var_9C = CVar(CLng(1)) 'Long
  loc_F2FCE2: var_BC = CVar(CInt(1)) 'Integer
  loc_F2FCE9: LateIdCallSt
  loc_F2FCF1: var_9C = 0
  loc_F2FCFD: var_BC = CVar(CLng(2)) 'Long
  loc_F2FD02: var_DC = "Field Value"
  loc_F2FD0B: LateIdCallSt
  loc_F2FD16: var_9C = CVar(CLng(2)) 'Long
  loc_F2FD1B: var_BC = &H9C4
  loc_F2FD27: LateIdCallSt
  loc_F2FD32: var_9C = CVar(CLng(2)) 'Long
  loc_F2FD3D: var_BC = CVar(CInt(1)) 'Integer
  loc_F2FD44: LateIdCallSt
  loc_F2FD4E: Set var_8C = Nothing 
  loc_F2FD52: Exit Sub
End Sub

Public Sub Proc_181_18_E31200
  'Data Table: 42E584
  loc_E311E0: Set var_88 = Me.TopCtrl1
  loc_E311E6: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_E311FB: If ( = "Browse") Then
  loc_E311FE:   Exit Sub
  loc_E311FF: End If
  loc_E311FF: Exit Sub
End Sub

Public Sub Proc_181_19_F8AE58(arg_C) 'F8AE58
  'Data Table: 42E584
  Dim var_94 As MSHFlexGrid
  Dim var_A8 As Long
  Dim var_AC As TextBox
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As String
  Dim var_124 As Variant
  loc_F8AD14: If (arg_C = 0) Then
  loc_F8AD3A:   If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_F8AD4A:     Set var_94 = Me.TxtGrid
  loc_F8AD50:     Call 0.Method_Proc_181_19_F8AE580 (arg_C, var_AC, var_B0)
  loc_F8AD58:     var_A8 = var_AC.Text
  loc_F8AD6F:     If (var_B0 = vbNullString) Then
  loc_F8AD85:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F8AD8D:       var_E0 = CVar(CLng(2)) 'Long
  loc_F8AD92:       var_100 = vbNullString
  loc_F8AD9C:       Set var_AC = Me.FGrid
  loc_F8ADA2:       LateIdCallSt
  loc_F8ADB7:     Else
  loc_F8ADE4:       Set var_94 = Me.TxtGrid
  loc_F8ADEA:       Call 0.Method_Proc_181_19_F8AE580 (arg_C, var_AC, var_B0, CVar(CLng(2)), CVar(CLng(Me.FGrid.Row)))
  loc_F8ADF2:       var_AC = var_AC.Text
  loc_F8ADFA:       var_124 = CVar(var_B0) 'String
  loc_F8AE02:       Set var_128 = Me.FGrid
  loc_F8AE08:       LateIdCallSt
  loc_F8AE22:     End If
  loc_F8AE22:   End If
  loc_F8AE22: End If
  loc_F8AE35: Set var_94 = Me.TxtGrid
  loc_F8AE3B: Call 0.Method_Proc_181_19_F8AE580 (0, var_AC, 0, &HFF, var_128)
  loc_F8AE43: var_AC.MaxLength = var_124
  loc_F8AE4F: Proc_181_19_F8AE58 = var_100
  loc_F8AE55: StAryRecCopy
End Sub
