VERSION 5.00
Begin VB.Form frmGuestParamMast
  Caption = "Guest Parameters Master"
  BackColor = &HE0E0E0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmGuestParamMast.frx":0
  LinkTopic = "Form1"
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 6750
  ClientHeight = 4020
  LockControls = -1  'True
  Begin Frame Frame2
    BackColor = &HE0E0E0&
    Left = 60
    Top = 3210
    Width = 6630
    Height = 660
    TabIndex = 9
    Begin CommandButton CmdCancel
      Caption = "&Cancel"
      BackColor = &H808080&
      Left = 3300
      Top = 165
      Width = 1845
      Height = 420
      TabIndex = 11
      Appearance = 0 'Flat
    End
    Begin CommandButton CmdSave
      Caption = "&Save/Exit"
      BackColor = &H808080&
      Left = 1440
      Top = 165
      Width = 1845
      Height = 420
      TabIndex = 10
      Appearance = 0 'Flat
    End
  End
  Begin Frame Frame1
    BackColor = &HE0E0E0&
    Left = 3390
    Top = 390
    Width = 3285
    Height = 2820
    TabIndex = 4
    Begin TextBox TxtGrid
      Index = 1
      BackColor = &HFFFFFF&
      Left = 615
      Top = 675
      Width = 915
      Height = 225
      Visible = 0   'False
      TabIndex = 5
      BorderStyle = 0 'None
      MaxLength = 25
      Appearance = 0 'Flat
    End
    Begin MSFlexGrid FGrid1
      Left = 0
      Top = 420
      Width = 3210
      Height = 2325
      TabIndex = 6
    End
    Begin Label Label2
      Caption = "Custom Entry Fields Setup (Tab 2)"
      BackColor = &H656458&
      ForeColor = &H8000000E&
      Left = 30
      Top = 120
      Width = 3225
      Height = 285
      TabIndex = 8
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame framhold
    BackColor = &HE0E0E0&
    Left = 60
    Top = 390
    Width = 3285
    Height = 2820
    TabIndex = 3
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HFFFFFF&
      Left = 615
      Top = 675
      Width = 915
      Height = 225
      Visible = 0   'False
      TabIndex = 1
      BorderStyle = 0 'None
      MaxLength = 25
      Appearance = 0 'Flat
    End
    Begin MSFlexGrid FGrid
      Left = 0
      Top = 420
      Width = 3210
      Height = 2325
      TabIndex = 0
    End
    Begin Label Label1
      Caption = "Custom Entry Fields Setup (Tab 1)"
      BackColor = &H656458&
      ForeColor = &H8000000E&
      Left = 45
      Top = 120
      Width = 3195
      Height = 285
      TabIndex = 7
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8250
    Height = 375
    Visible = 0   'False
    TabIndex = 2
  End
End

Attribute VB_Name = "frmGuestParamMast"

Private global_64 As Integer
Private global_56 As Integer

Private Sub TopCtrl1_UnknownEvent_1D 'DFD1B4
  'Data Table: 441630
  loc_DFD1B0: Exit Sub
End Sub

Private Sub Form_Load() '12F3BE4
  'Data Table: 441630
  Dim unk_441634 As Connection15
  Dim Me As Recordset15
  Dim var_C4 As Long
  Dim var_AC As Fields15
  Dim var_A8 As Variant
  Dim var_104 As Variant
  loc_12F34F4: On Error Goto loc_12F3BA0
  loc_12F34F7: Call Proc_45_24_103F80C()
  loc_12F3512: unk_441634.Execute "SELECT * FROM GUESTPARAM ", var_A8, -1
  loc_12F3523: Set global_52 = var_AC
  loc_12F3548: If (Me.RecordCount > 0) Then
  loc_12F354B:   var_C4 = 1
  loc_12F3588:   var_104 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("T1Field1")), 1)) 'String
  loc_12F3596:   LateIdCallSt
  loc_12F35E9:   var_104 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("T1Field2")), 1, 2, Me.FGrid)) 'String
  loc_12F35F7:   LateIdCallSt
  loc_12F364A:   var_104 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("T1Field3")), 1, 3, Me.FGrid)) 'String
  loc_12F3658:   LateIdCallSt
  loc_12F36AB:   var_104 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("T1Field4")), 1, 4, Me.FGrid, var_104)) 'String
  loc_12F36B9:   LateIdCallSt
  loc_12F370C:   var_104 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("T1Field5")), 1, 5, Me.FGrid, var_104)) 'String
  loc_12F371A:   LateIdCallSt
  loc_12F376D:   var_104 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("T1Field6")), 1, 6, Me.FGrid, var_104)) 'String
  loc_12F377B:   LateIdCallSt
  loc_12F37CE:   var_104 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("T1Field7")), 1, 7, Me.FGrid, var_104)) 'String
  loc_12F37DC:   LateIdCallSt
  loc_12F382F:   var_104 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("T1Field8")), 1, 8, Me.FGrid, var_104)) 'String
  loc_12F383D:   LateIdCallSt
  loc_12F3890:   var_104 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("T2Field1")), 1, 1, Me.FGrid, var_104)) 'String
  loc_12F389E:   LateIdCallSt
  loc_12F38F1:   var_104 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("T2Field2")), 1, 2, Me.FGrid1, var_104)) 'String
  loc_12F38FF:   LateIdCallSt
  loc_12F3952:   var_104 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("T2Field3")), 1, 3, Me.FGrid1, var_104)) 'String
  loc_12F3960:   LateIdCallSt
  loc_12F39B3:   var_104 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("T2Field4")), 1, 4, Me.FGrid1, var_104)) 'String
  loc_12F39C1:   LateIdCallSt
  loc_12F3A14:   var_104 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("T2Field5")), 1, 5, Me.FGrid1, var_104)) 'String
  loc_12F3A22:   LateIdCallSt
  loc_12F3A75:   var_104 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("T2Field6")), 1, 6, Me.FGrid1, var_104)) 'String
  loc_12F3A83:   LateIdCallSt
  loc_12F3AD6:   var_104 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("T2Field7")), 1, 7, Me.FGrid1, var_104)) 'String
  loc_12F3AE4:   LateIdCallSt
  loc_12F3B37:   var_104 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("T2Field8")), 1, 8, Me.FGrid1, var_104)) 'String
  loc_12F3B3F:   Set var_118 = Me.FGrid1
  loc_12F3B45:   LateIdCallSt
  loc_12F3B5B: End If
  loc_12F3B65: Set var_AC = Me.TopCtrl1
  loc_12F3B6B: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E("Add")
  loc_12F3B74: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_0(var_104)
  loc_12F3B97: Proc_6_23_DFC5B8(Me, 4425, 6870, var_104)
  loc_12F3B9F: Exit Sub
  loc_12F3BA0: ' Referenced from: 12F34F4
  loc_12F3BA8: Set var_AC = Err()
  loc_12F3BAE: Call 0.Method_arg_2C (var_120, var_104)
  loc_12F3BCF: MsgBox(CVar(var_120), &H40, "Information", var_130, var_140)
  loc_12F3BE2: Exit Sub
  loc_12F3BE3: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E11ACC
  'Data Table: 441630
  loc_E11AC3: Set global_52 = Nothing
  loc_E11ACA: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8C870
  'Data Table: 441630
  loc_E8C80C: On Error Goto loc_E8C82C
  loc_E8C823: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E8C82B: Exit Sub
  loc_E8C82C: ' Referenced from: E8C80C
  loc_E8C834: Set var_88 = Err()
  loc_E8C83A: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8C85B: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8C86E: Exit Sub
  loc_E8C86F: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_0 'E2E084
  'Data Table: 441630
  Dim var_8C As TextBox
  loc_E2E067: Set var_88 = Me.TxtGrid
  loc_E2E06D: Call 0.Method_Fgrid1_UnknownEvent_00 (1, var_8C)
  loc_E2E075: var_8C.Visible = False
  loc_E2E081: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'E6B8F0
  'Data Table: 441630
  Dim var_88 As MSFlexGrid
  Dim var_9C As TextBox
  loc_E6B8A0: Call Proc_45_27_E2C520()
  loc_E6B8C4: If (CLng(Me.FGrid1.Col) = 0) Then
  loc_E6B8D2:   Set var_88 = Me.TxtGrid
  loc_E6B8D8:   Call 0.Method_Fgrid1_UnknownEvent_90 (1, var_9C)
  loc_E6B8E0:   var_9C.Visible = False
  loc_E6B8EC: End If
  loc_E6B8EC: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A '100EE88
  'Data Table: 441630
  Dim var_98 As Variant
  Dim var_E4 As MSFlexGrid
  Dim var_88 As MSFlexGrid
  Dim var_DC As String
  Dim KeyCode As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_100EC7C: Set var_88 = Me.TopCtrl1
  loc_100EC82: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_100ECD2: If CBool(( = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_100ECDB:   Call Form_KeyDown(KeyCode, Shift)
  loc_100ECE0: End If
  loc_100ECE4: Set var_88 = Me.TopCtrl1
  loc_100ECEA: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_100ECFF: If ( = "Browse") Then
  loc_100ED02:   Exit Sub
  loc_100ED03: End If
  loc_100ED77: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - (CLng(Me.FGrid1.Rows) - 1))))) Then
  loc_100ED82:   var_DC = "+{Tab}"
  loc_100ED88:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_100ED92:   KeyCode = 0
  loc_100ED95: End If
  loc_100ED9B: global_64 = KeyCode
  loc_100EDC1: Me.FGrid1.Tag = CVar(CStr(CLng(Me.FGrid1.Row)))
  loc_100EDE5: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_100EDFB:   var_EC = CLng(Me.FGrid1.Col)
  loc_100EE0B:   If Not (var_EC = CLng(0)) Then
  loc_100EE15:     If (var_EC = CLng(1)) Then
  loc_100EE18:     End If
  loc_100EE2B:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_100EE43:     var_FC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_100EE48:     var_11C = vbNullString
  loc_100EE52:     Set var_E4 = Me.FGrid1
  loc_100EE58:     LateIdCallSt
  loc_100EE70:   End If
  loc_100EE70: End If
  loc_100EE76: If (KeyCode = &HD) Then
  loc_100EE7E:   global_56 = 0
  loc_100EE81: End If
  loc_100EE83: KeyCode = 0
  loc_100EE86: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B 'E111D0
  'Data Table: 441630
  loc_E111C1: Call Fgrid1_UnknownEvent_C()
  loc_E111CB: global_56 = 0
  loc_E111CE: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_C 'EEB874
  'Data Table: 441630
  Dim var_88 As MSFlexGrid
  Dim var_BC As Long
  loc_EEB7BC: Set var_88 = Me.TopCtrl1
  loc_EEB7C2: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_EEB7D7: If ( = "Browse") Then
  loc_EEB7DA:   Exit Sub
  loc_EEB7DB: End If
  loc_EEB7EE: var_BC = CLng(Me.FGrid1.Col)
  loc_EEB7FE: If Not (var_BC = CLng(0)) Then
  loc_EEB808:   If (var_BC = CLng(1)) Then
  loc_EEB80B:   End If
  loc_EEB849:   Proc_6_63_110B734(Me, Me.FGrid1, Me.TxtGrid, 1)
  loc_EEB85B: End If
  loc_EEB865: If (CLng(KeyCode) <> &HD) Then
  loc_EEB86D:   global_56 = &HFF
  loc_EEB870: End If
  loc_EEB870: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_D 'FD26E4
  'Data Table: 441630
  Dim var_9C As Variant
  Dim var_8C As MSFlexGrid
  Dim var_BC As Variant
  loc_FD2520: Set var_8C = Me.TopCtrl1
  loc_FD2526: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_FD253B: If ( = "Browse") Then
  loc_FD253E:   Exit Sub
  loc_FD253F: End If
  loc_FD255C: If (CLng(Me.FGrid1.ColSel) = CLng(0)) Then
  loc_FD255F:   Exit Sub
  loc_FD2560: End If
  loc_FD2571: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_FD2593:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FD25CD:     If (MsgBox("Delete For Sure?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FD25EF:       If (CLng(Me.FGrid1.Rows) > 2) Then
  loc_FD2605:         var_9C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FD260E:         Set var_110 = Me.FGrid1
  loc_FD2629:       Else
  loc_FD263C:         Me.FGrid1.Rows = 1
  loc_FD2659:         var_BC = CVar(CStr(CLng(Me.FGrid1.Rows))) 'String
  loc_FD2661:         Set var_110 = Me.FGrid1
  loc_FD2690:         Me.FGrid1.FixedRows = 1
  loc_FD2698:       End If
  loc_FD2698:     End If
  loc_FD269B:   Else
  loc_FD26BC:     MsgBox("No Entries To Delete", &H10, "Delete !", var_EC, var_10C)
  loc_FD26CC:   End If
  loc_FD26D0:   Set var_8C = Me.FGrid
  loc_FD26E1: End If
  loc_FD26E1: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_15 'E2C644
  'Data Table: 441630
  Dim var_8C As TextBox
  loc_E2C627: Set var_88 = Me.TxtGrid
  loc_E2C62D: Call 0.Method_Fgrid1_UnknownEvent_150 (1, var_8C)
  loc_E2C635: var_8C.Visible = False
  loc_E2C641: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'FC7FF8
  'Data Table: 441630
  Dim var_88 As MSFlexGrid
  Dim var_BC As Variant
  Dim var_9C As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_10E As Integer
  Dim var_114 As Long
  Dim var_11C As Long
  loc_FC7E67: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FC7E70: Set var_9C = Me.FGrid
  loc_FC7EA6: Set var_104 = Me.TxtGrid
  loc_FC7EAC: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_FC7EB4: var_108.Tag = CVar(CLng(var_9C.Col))
  loc_FC7EE1: Set var_88 = Me.TxtGrid
  loc_FC7EE7: Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_FC7EEF: var_9C.MaxLength = 0
  loc_FC7EFE: var_10E = Index
  loc_FC7F07: If (var_10E = 0) Then
  loc_FC7F1D:   var_114 = CLng(Me.FGrid.Col)
  loc_FC7F2D:   If (var_114 = CLng(1)) Then
  loc_FC7F3E:     Set var_88 = Me.TxtGrid
  loc_FC7F44:     Call 0.Method_TxtGrid_GotFocus0 (0, var_9C, &H19)
  loc_FC7F4C:     var_9C.MaxLength = var_114
  loc_FC7F61:     If (global_56 = 0) Then
  loc_FC7F6C:       var_10C = "{Home}+{End}"
  loc_FC7F72:       Proc_303_0_FBACC8(CStr(Me.FGrid.TextMatrix)), 0)
  loc_FC7F7A:     End If
  loc_FC7F7A:   End If
  loc_FC7F7D: Else
  loc_FC7F83:   If (var_10E = 1) Then
  loc_FC7F99:     var_11C = CLng(Me.FGrid1.Col)
  loc_FC7FA9:     If (var_11C = CLng(1)) Then
  loc_FC7FBA:       Set var_88 = Me.TxtGrid
  loc_FC7FC0:       Call 0.Method_TxtGrid_GotFocus0 (1, var_9C, &H19)
  loc_FC7FC8:       var_9C.MaxLength = var_11C
  loc_FC7FDD:       If (global_56 = 0) Then
  loc_FC7FE8:         var_10C = "{Home}+{End}"
  loc_FC7FEE:         Proc_303_0_FBACC8(CStr(Me.FGrid.TextMatrix)), 0)
  loc_FC7FF6:       End If
  loc_FC7FF6:     End If
  loc_FC7FF6:   End If
  loc_FC7FF6: End If
  loc_FC7FF6: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '116BE68
  'Data Table: 441630
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSFlexGrid
  Dim var_B0 As Long
  loc_116BA9F: var_86 = KeyCode
  loc_116BAA8: If (var_86 = 0) Then
  loc_116BAB5:   If (CLng(Shift) = &H1B) Then
  loc_116BAC5:     Set var_8C = Me.TxtGrid
  loc_116BACB:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_116BAD3:     var_94 = var_90.Tag
  loc_116BAE5:     Set var_98 = Me.TxtGrid
  loc_116BAEB:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_116BAF3:     var_9C.Text = var_94
  loc_116BB0A:     Set var_8C = Me.FGrid
  loc_116BB27:     Set var_8C = Me.TxtGrid
  loc_116BB2D:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_116BB35:     var_90.Visible = FGrid.DispID_8001
  loc_116BB4F:     Set var_8C = Me.TxtGrid
  loc_116BB55:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_116BB5D:     var_90.MaxLength = 0
  loc_116BB69:     Exit Sub
  loc_116BB6A:   End If
  loc_116BB7D:   var_B0 = CLng(Me.FGrid.Col)
  loc_116BB8D:   If (var_B0 = CLng(1)) Then
  loc_116BBD0:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_56 = &HFF))) Then
  loc_116BBD9:       Call Proc_45_28_10754A8(KeyCode, var_B2)
  loc_116BC04:       If ((var_B2 = &HFF) And (CLng(Me.FGrid.Row) < 8)) Then
  loc_116BC12:         Set var_9C = Me.TxtGrid
  loc_116BC3B:         Set var_90 = var_9C
  loc_116BC4A:         Proc_6_62_1254E68(Me.FGrid, var_90, KeyCode, Shift, global_56, 1)
  loc_116BC5D:       Else
  loc_116BC68:         Set var_8C = Me.TxtGrid
  loc_116BC6E:         Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0, 0)
  loc_116BC76:         var_90.Visible = False
  loc_116BC82:       End If
  loc_116BC82:     End If
  loc_116BC82:   End If
  loc_116BC85: Else
  loc_116BC8B:   If (var_86 = 1) Then
  loc_116BC98:     If (CLng(Shift) = &H1B) Then
  loc_116BCA8:       Set var_8C = Me.TxtGrid
  loc_116BCAE:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_116BCB6:       0 = var_90.Tag
  loc_116BCC8:       Set var_98 = Me.TxtGrid
  loc_116BCCE:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_94)
  loc_116BCD6:       var_9C.Text = var_B0
  loc_116BCED:       Set var_8C = Me.FGrid
  loc_116BD0A:       Set var_8C = Me.TxtGrid
  loc_116BD10:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_116BD18:       var_90.Visible = FGrid.DispID_8001
  loc_116BD33:       Set var_8C = Me.TxtGrid
  loc_116BD39:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_116BD41:       var_90.MaxLength = 0
  loc_116BD4D:       Exit Sub
  loc_116BD4E:     End If
  loc_116BD71:     If (CLng(Me.FGrid1.Col) = CLng(1)) Then
  loc_116BDB4:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_56 = &HFF))) Then
  loc_116BDBD:         Call Proc_45_28_10754A8(KeyCode, var_B2)
  loc_116BDE8:         If ((var_B2 = &HFF) And (CLng(Me.FGrid1.Row) < 8)) Then
  loc_116BE1F:           Set var_90 = Me.TxtGrid
  loc_116BE2E:           Proc_6_62_1254E68(Me.FGrid1, var_90, KeyCode, Shift, global_56, 1)
  loc_116BE41:         Else
  loc_116BE4D:           Set var_8C = Me.TxtGrid
  loc_116BE53:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0, 0)
  loc_116BE5B:           var_90.Visible = False
  loc_116BE67:         End If
  loc_116BE67:       End If
  loc_116BE67:     End If
  loc_116BE67:   End If
  loc_116BE67: End If
  loc_116BE67: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23AC8
  'Data Table: 441630
  Dim arg_10 As Integer
  loc_E23AB0: If (Cancel = 0) Then
  loc_E23AB9:   Call Proc_45_28_10754A8(Cancel, var_88)
  loc_E23AC2:   arg_10 = Not(var_88)
  loc_E23AC5: End If
  loc_E23AC5: Exit Sub
End Sub

Private Sub CmdSave_Click() '132749C
  'Data Table: 441630
  Dim unk_441634 As Connection15
  Dim var_88 As Variant
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_E0 As Long
  Dim var_BC As Variant
  Dim var_160 As Long
  Dim var_180 As Long
  Dim var_204 As Long
  Dim var_224 As Long
  Dim var_2A8 As Long
  Dim var_2C8 As Long
  Dim var_34C As Long
  Dim var_36C As Long
  Dim var_3F0 As Long
  Dim var_410 As Long
  Dim var_494 As Long
  Dim var_4B4 As Long
  Dim var_538 As Long
  Dim var_558 As Long
  Dim var_5DC As Long
  Dim var_5FC As Long
  Dim var_680 As Long
  Dim var_6A0 As Long
  Dim var_724 As Long
  Dim var_744 As Long
  Dim var_7C8 As Long
  Dim var_7E8 As Long
  Dim var_86C As Long
  Dim var_120 As String
  Dim var_278 As Variant
  Dim var_464 As Variant
  Dim var_650 As Variant
  Dim var_83C As Variant
  Dim var_A28 As Variant
  Dim var_B9C As Variant
  loc_1326E98: On Error Goto loc_1327482
  loc_1326EA4: unk_441634.BeginTrans var_8C
  loc_1326EC2: var_90 = "delete from GuestParam WHERE SITE_CODE='" & MemVar_1F95070
  loc_1326EC9: var_94 = var_90 & "' AND LOGSITE_CODE='"
  loc_1326ED0: var_98 = var_94 & MemVar_1F95078
  loc_1326EE0: unk_441634.Execute var_98 & "'", var_BC, -1
  loc_1326EF6: var_AC = 1
  loc_1326EFF: var_E0 = 1
  loc_1326F28: var_160 = 2
  loc_1326F31: var_180 = 1
  loc_1326F5A: var_204 = 3
  loc_1326F63: var_224 = 1
  loc_1326F8C: var_2A8 = 4
  loc_1326F95: var_2C8 = 1
  loc_1326FBE: var_34C = 5
  loc_1326FC7: var_36C = 1
  loc_1326FF0: var_3F0 = 6
  loc_1326FF9: var_410 = 1
  loc_1327022: var_494 = 7
  loc_132702B: var_4B4 = 1
  loc_1327054: var_538 = 8
  loc_132705D: var_558 = 1
  loc_1327086: var_5DC = 1
  loc_132708F: var_5FC = 1
  loc_13270B8: var_680 = 2
  loc_13270C1: var_6A0 = 1
  loc_13270EA: var_724 = 3
  loc_13270F3: var_744 = 1
  loc_132711C: var_7C8 = 4
  loc_1327125: var_7E8 = 1
  loc_132714E: var_86C = 5
  loc_1327157: var_88C = 1
  loc_1327224: Proc_6_7_F26918(var_B4C, Date, 1, 8, 1, 7, 1, 6)
  loc_1327236: var_120 = "insert into GuestParam(T1Field1,T1Field2,T1Field3,T1Field4,T1Field5,T1Field6,T1Field7,T1Field8,T2Field1,T2Field2,T2Field3,T2Field4,T2Field5,T2Field6,T2Field7,T2Field8,Site_Code,U_EntDt,U_AE,lOGSITE_CODE) values ('"
  loc_132725E: var_278 = var_120 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_132728E: var_464 = var_278 & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_13272BE: var_650 = var_464 & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) 
  loc_13272EE: var_83C = var_650 & "','" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & "','" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & "','" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) 
  loc_132731E: var_A28 = var_83C & "','" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & "','" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & "','" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) 
  loc_1327364: var_B9C = var_A28 & "','" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & "','" & CVar(MemVar_1F95070) & "'," & var_B4C & ",'A','" & CVar(MemVar_1F95078) 
  loc_132737B: unk_441634.Execute CStr(var_B9C & "')"), var_BDC, -1
  loc_132745F: var_88 = 0
  loc_1327468: unk_441634.CommitTrans
  loc_132747A: Me.Global.Unload Me
  loc_1327482: ' Referenced from: 1326E98
  loc_1327488: If (var_88 = &HFF) Then
  loc_1327491:   unk_441634.RollbackTrans
  loc_1327496: End If
  loc_1327496: Proc_6_60_E63754(var_88, var_BE0, var_88C, var_86C, var_7E8)
  loc_132749B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E2DCC4
  'Data Table: 441630
  Dim var_8C As TextBox
  loc_E2DCA7: Set var_88 = Me.TxtGrid
  loc_E2DCAD: Call 0.Method_FGrid_UnknownEvent_00 (0, var_8C)
  loc_E2DCB5: var_8C.Visible = False
  loc_E2DCC1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E6BCC4
  'Data Table: 441630
  Dim var_88 As MSFlexGrid
  Dim var_9C As TextBox
  loc_E6BC74: Call Proc_45_26_E2E020()
  loc_E6BC98: If (CLng(Me.FGrid.Col) = 0) Then
  loc_E6BCA6:   Set var_88 = Me.TxtGrid
  loc_E6BCAC:   Call 0.Method_FGrid_UnknownEvent_90 (0, var_9C)
  loc_E6BCB4:   var_9C.Visible = False
  loc_E6BCC0: End If
  loc_E6BCC0: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '100F340
  'Data Table: 441630
  Dim var_98 As Variant
  Dim var_E4 As MSFlexGrid
  Dim var_88 As MSFlexGrid
  Dim var_DC As String
  Dim arg_C As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_100F134: Set var_88 = Me.TopCtrl1
  loc_100F13A: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_100F18A: If CBool(( = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_100F193:   Call Form_KeyDown(arg_C, arg_10)
  loc_100F198: End If
  loc_100F19C: Set var_88 = Me.TopCtrl1
  loc_100F1A2: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_100F1B7: If ( = "Browse") Then
  loc_100F1BA:   Exit Sub
  loc_100F1BB: End If
  loc_100F22F: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_100F23A:   var_DC = "+{Tab}"
  loc_100F240:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_100F24A:   arg_C = 0
  loc_100F24D: End If
  loc_100F253: global_64 = arg_C
  loc_100F279: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_100F29D: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_100F2B3:   var_EC = CLng(Me.FGrid.Col)
  loc_100F2C3:   If Not (var_EC = CLng(1)) Then
  loc_100F2CD:     If (var_EC = CLng(0)) Then
  loc_100F2D0:     End If
  loc_100F2E3:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_100F2FB:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_100F300:     var_11C = vbNullString
  loc_100F30A:     Set var_E4 = Me.FGrid
  loc_100F310:     LateIdCallSt
  loc_100F328:   End If
  loc_100F328: End If
  loc_100F32E: If (arg_C = &HD) Then
  loc_100F336:   global_56 = 0
  loc_100F339: End If
  loc_100F33B: arg_C = 0
  loc_100F33E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E119F8
  'Data Table: 441630
  loc_E119E9: Call FGrid_UnknownEvent_C()
  loc_E119F3: global_56 = 0
  loc_E119F6: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) 'EED86C
  'Data Table: 441630
  Dim var_88 As MSFlexGrid
  Dim var_BC As Long
  loc_EED7B4: Set var_88 = Me.TopCtrl1
  loc_EED7BA: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_EED7CF: If ( = "Browse") Then
  loc_EED7D2:   Exit Sub
  loc_EED7D3: End If
  loc_EED7E6: var_BC = CLng(Me.FGrid.Col)
  loc_EED7F6: If Not (var_BC = CLng(0)) Then
  loc_EED800:   If (var_BC = CLng(1)) Then
  loc_EED803:   End If
  loc_EED841:   Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_EED853: End If
  loc_EED85D: If (CLng(Index) <> &HD) Then
  loc_EED865:   global_56 = &HFF
  loc_EED868: End If
  loc_EED868: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) 'FD28F4
  'Data Table: 441630
  Dim var_9C As Variant
  Dim var_8C As MSFlexGrid
  Dim var_BC As Variant
  loc_FD2730: Set var_8C = Me.TopCtrl1
  loc_FD2736: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_FD274B: If ( = "Browse") Then
  loc_FD274E:   Exit Sub
  loc_FD274F: End If
  loc_FD276C: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FD276F:   Exit Sub
  loc_FD2770: End If
  loc_FD2781: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_FD27A3:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FD27DD:     If (MsgBox("Delete For Sure?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FD27FF:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FD2815:         var_9C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FD281E:         Set var_110 = Me.FGrid
  loc_FD2839:       Else
  loc_FD284C:         Me.FGrid.Rows = 1
  loc_FD2869:         var_BC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FD2871:         Set var_110 = Me.FGrid
  loc_FD28A0:         Me.FGrid.FixedRows = 1
  loc_FD28A8:       End If
  loc_FD28A8:     End If
  loc_FD28AB:   Else
  loc_FD28CC:     MsgBox("No Entries To Delete", &H10, "Delete !", var_EC, var_10C)
  loc_FD28DC:   End If
  loc_FD28E0:   Set var_8C = Me.FGrid
  loc_FD28F1: End If
  loc_FD28F1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E2DD24
  'Data Table: 441630
  Dim var_8C As TextBox
  loc_E2DD07: Set var_88 = Me.TxtGrid
  loc_E2DD0D: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E2DD15: var_8C.Visible = False
  loc_E2DD21: Exit Sub
End Sub

Private Sub cmdCancel_Click() 'E15AF0
  'Data Table: 441630
  loc_E15AE5: Me.Global.Unload Me
  loc_E15AED: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EDBF84
  'Data Table: 441630
  Dim Me As Recordset15
  Dim var_E8 As Variant
  Dim var_EC As String
  loc_EDBEE2: On Error Goto loc_EDBF3F
  loc_EDBEEB: Me.MoveFirst
  loc_EDBF1F: var_E8 = "SYear='" & Year(MyValue) & "'" 
  loc_EDBF23: var_EC = CStr(var_E8)
  loc_EDBF2D: Me.Find var_EC, 0, 1
  loc_EDBF3E: Exit Sub
  loc_EDBF3F: ' Referenced from: EDBEE2
  loc_EDBF47: Set var_100 = Err()
  loc_EDBF4D: Call 0.Method_arg_2C (var_EC)
  loc_EDBF6E: MsgBox(CVar(var_EC), &H40, "Information", var_E8, var_110)
  loc_EDBF81: Exit Sub
  loc_EDBF82: Exit Sub
End Sub

Public Sub Proc_45_24_103F80C
  'Data Table: 441630
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_DC As String
  Dim var_F4 As MSFlexGrid
  Dim var_104 As Variant
  loc_103F5B0: Set var_8C = Me.FGrid
  loc_103F5B3: var_9C = 0
  loc_103F5BF: var_BC = CVar(CLng(0)) 'Long
  loc_103F5C4: var_DC = "Sr No."
  loc_103F5CD: LateIdCallSt
  loc_103F5D8: var_9C = CVar(CLng(0)) 'Long
  loc_103F5DD: var_BC = &H2BC
  loc_103F5E9: LateIdCallSt
  loc_103F5F4: var_9C = CVar(CLng(0)) 'Long
  loc_103F5FF: var_BC = CVar(CInt(1)) 'Integer
  loc_103F606: LateIdCallSt
  loc_103F60E: var_9C = 0
  loc_103F61A: var_BC = CVar(CLng(1)) 'Long
  loc_103F61F: var_DC = "Description"
  loc_103F628: LateIdCallSt
  loc_103F633: var_9C = CVar(CLng(1)) 'Long
  loc_103F638: var_BC = &H9C4
  loc_103F644: LateIdCallSt
  loc_103F64F: var_9C = CVar(CLng(1)) 'Long
  loc_103F65A: var_BC = CVar(CInt(1)) 'Integer
  loc_103F661: LateIdCallSt
  loc_103F66B: Set var_8C = Nothing 
  loc_103F673: Set var_F0 = Me.FGrid1
  loc_103F676: var_9C = 0
  loc_103F682: var_BC = CVar(CLng(0)) 'Long
  loc_103F687: var_DC = "Sr No."
  loc_103F690: LateIdCallSt
  loc_103F69B: var_9C = CVar(CLng(0)) 'Long
  loc_103F6A0: var_BC = &H2BC
  loc_103F6AC: LateIdCallSt
  loc_103F6B7: var_9C = CVar(CLng(0)) 'Long
  loc_103F6C2: var_BC = CVar(CInt(1)) 'Integer
  loc_103F6C9: LateIdCallSt
  loc_103F6D1: var_9C = 0
  loc_103F6DD: var_BC = CVar(CLng(1)) 'Long
  loc_103F6E2: var_DC = "Description"
  loc_103F6EB: LateIdCallSt
  loc_103F6F6: var_9C = CVar(CLng(1)) 'Long
  loc_103F6FB: var_BC = &H9C4
  loc_103F707: LateIdCallSt
  loc_103F712: var_9C = CVar(CLng(1)) 'Long
  loc_103F71D: var_BC = CVar(CInt(1)) 'Integer
  loc_103F724: LateIdCallSt
  loc_103F72E: Set var_F0 = Nothing 
  loc_103F75A: For var_108 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_86 = var_108 'Byte
  loc_103F765:   var_9C = CVar(CLng(var_86)) 'Long
  loc_103F76A:   var_BC = 0
  loc_103F779:   var_104 = CVar(CStr(var_86)) 'String
  loc_103F781:   Set var_F4 = Me.FGrid
  loc_103F787:   LateIdCallSt
  loc_103F798: Next var_108 'Byte
  loc_103F7C6: For var_10C = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_10C 'Byte
  loc_103F7D1:   var_9C = CVar(CLng(var_86)) 'Long
  loc_103F7D6:   var_BC = 0
  loc_103F7E5:   var_104 = CVar(CStr(var_86)) 'String
  loc_103F7ED:   Set var_F4 = Me.FGrid1
  loc_103F7F3:   LateIdCallSt
  loc_103F804: Next var_10C 'Byte
  loc_103F80A: Exit Sub
End Sub

Public Sub Proc_45_25_F0E9DC
  'Data Table: 441630
  Dim var_98 As Long
  Dim var_AC As MSFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As String
  Dim var_4701 As Variant
  loc_F0E8F7: Me.FGrid.FixedRows = 1
  loc_F0E912: Me.FGrid.Rows = 2
  loc_F0E921: For var_B0 = 0 To 1: var_86 = var_B0 'Byte
  loc_F0E927:   var_98 = 1
  loc_F0E935:   var_C0 = CVar(CLng(var_86)) 'Long
  loc_F0E93A:   var_E0 = vbNullString
  loc_F0E944:   Set var_AC = Me.FGrid
  loc_F0E94A:   LateIdCallSt
  loc_F0E958: Next var_B0 'Byte
  loc_F0E971: Me.FGrid1.FixedRows = 1
  loc_F0E98C: Me.FGrid1.Rows = 2
  loc_F0E99B: For var_F4 = 0 To 1: var_86 = var_F4 'Byte
  loc_F0E9A1:   var_98 = 1
  loc_F0E9AF:   var_C0 = CVar(CLng(var_86)) 'Long
  loc_F0E9B4:   var_E0 = vbNullString
  loc_F0E9BE:   Set var_AC = Me.FGrid1
  loc_F0E9C4:   LateIdCallSt
  loc_F0E9D2: Next var_F4 'Byte
  loc_F0E9D8: Exit Sub
  loc_F0E9DA: var_4701 = CVar(( Mod )) 'Integer
End Sub

Public Sub Proc_45_26_E2E020
  'Data Table: 441630
  loc_E2E000: Set var_88 = Me.TopCtrl1
  loc_E2E006: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_E2E01B: If ( = "Browse") Then
  loc_E2E01E:   Exit Sub
  loc_E2E01F: End If
  loc_E2E01F: Exit Sub
End Sub

Public Sub Proc_45_27_E2C520
  'Data Table: 441630
  loc_E2C500: Set var_88 = Me.TopCtrl1
  loc_E2C506: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_E2C51B: If ( = "Browse") Then
  loc_E2C51E:   Exit Sub
  loc_E2C51F: End If
  loc_E2C51F: Exit Sub
End Sub

Public Sub Proc_45_28_10754A8(arg_C) '10754A8
  'Data Table: 441630
  Dim var_8E As Integer
  Dim var_94 As MSFlexGrid
  Dim var_A8 As Long
  Dim var_AC As TextBox
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As String
  Dim var_124 As Variant
  Dim var_12C As Long
  loc_107521F: var_8E = arg_C
  loc_1075228: If (var_8E = 0) Then
  loc_107524E:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_107525E:     Set var_94 = Me.TxtGrid
  loc_1075264:     Call 0.Method_Proc_45_28_10754A80 (arg_C, var_AC, var_B0)
  loc_107526C:     var_A8 = var_AC.Text
  loc_1075283:     If (var_B0 = vbNullString) Then
  loc_1075299:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10752A1:       var_E0 = CVar(CLng(1)) 'Long
  loc_10752A6:       var_100 = vbNullString
  loc_10752B0:       Set var_AC = Me.FGrid
  loc_10752B6:       LateIdCallSt
  loc_10752CB:     Else
  loc_10752F8:       Set var_94 = Me.TxtGrid
  loc_10752FE:       Call 0.Method_Proc_45_28_10754A80 (arg_C, var_AC, var_B0, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)))
  loc_1075306:       var_AC = var_AC.Text
  loc_107530E:       var_124 = CVar(var_B0) 'String
  loc_1075316:       Set var_128 = Me.FGrid
  loc_107531C:       LateIdCallSt
  loc_1075336:     End If
  loc_1075336:   End If
  loc_1075339: Else
  loc_107533F:   If (var_8E = 1) Then
  loc_1075355:     var_12C = CLng(Me.FGrid1.Col)
  loc_1075365:     If (var_12C = CLng(1)) Then
  loc_1075375:       Set var_94 = Me.TxtGrid
  loc_107537B:       Call 0.Method_Proc_45_28_10754A80 (arg_C, var_AC, var_B0, var_12C, var_128)
  loc_1075383:       var_124 = var_AC.Text
  loc_107539A:       If (var_B0 = vbNullString) Then
  loc_10753B0:         var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10753B8:         var_E0 = CVar(CLng(1)) 'Long
  loc_10753BD:         var_100 = vbNullString
  loc_10753C7:         Set var_AC = Me.FGrid1
  loc_10753CD:         LateIdCallSt
  loc_10753E2:       Else
  loc_10753F5:         var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_107540F:         Set var_94 = Me.TxtGrid
  loc_1075415:         Call 0.Method_Proc_45_28_10754A80 (arg_C, var_AC, var_B0, CVar(CLng(1)), var_C0, var_AC, var_100)
  loc_107541D:         var_E0 = var_AC.Text
  loc_1075425:         var_124 = CVar(var_B0) 'String
  loc_107542D:         Set var_128 = Me.FGrid1
  loc_1075433:         LateIdCallSt
  loc_107544D:       End If
  loc_107544D:     End If
  loc_107544D:   End If
  loc_107544D: End If
  loc_1075460: Set var_94 = Me.TxtGrid
  loc_1075466: Call 0.Method_Proc_45_28_10754A80 (0, var_AC, 0, &HFF, var_128, var_124)
  loc_107546E: var_AC.MaxLength = var_C0
  loc_1075488: Set var_94 = Me.TxtGrid
  loc_107548E: Call 0.Method_Proc_45_28_10754A80 (1, var_AC, 0, var_100)
  loc_1075496: var_AC.MaxLength = var_E0
  loc_10754A2: Proc_45_28_10754A8 = var_C0
End Sub
