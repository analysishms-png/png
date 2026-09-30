VERSION 5.00
Begin VB.Form FrmPlanTokenMast
  Caption = "Plan Token Master"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11355
  ClientHeight = 7320
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 2400
    Top = 750
    Width = 645
    Height = 255
    Text = "No"
    TabIndex = 2
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
    Left = 4575
    Top = 5655
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 1125
    Top = 1380
    Width = 960
    Height = 240
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 120
    Top = 1125
    Width = 9495
    Height = 4275
    TabIndex = 3
  End
  Begin DataGrid DGTaxMast
    Left = 4245
    Top = 5400
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 2400
    Top = 480
    Width = 4215
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin Frame FrmList
    Left = 6450
    Top = 1605
    Width = 1965
    Height = 1875
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 45
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 8
    End
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11355
    Height = 375
    TabIndex = 0
  End
  Begin MSFlexGrid FGPoint
    Left = 9285
    Top = 1335
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 11
  End
  Begin Label LblName
    Caption = "Tax Before Discount"
    Index = 1
    ForeColor = &H0&
    Left = 495
    Top = 765
    Width = 1710
    Height = 240
    TabIndex = 10
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
    Caption = "Name"
    Index = 0
    ForeColor = &H0&
    Left = 495
    Top = 495
    Width = 495
    Height = 240
    TabIndex = 4
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

Attribute VB_Name = "FrmPlanTokenMast"

Private global_64 As Integer
Private global_66 As Integer
Private MasterFormExit As Integer

Private Sub TxtGrid_GotFocus(Index As Integer) '109F0B4
  'Data Table: 497244
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Recordset15
  loc_109EE04: Call Proc_220_57_EF3E28()
  loc_109EE1C: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_109EE37: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109EE40: Set var_BC = Me.FGrid
  loc_109EE76: Set var_104 = Me.TxtGrid
  loc_109EE7C: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_109EE84: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_109EEB5: var_110 = CLng(Me.FGrid.Col)
  loc_109EEC5: If (var_110 = CLng(2)) Then
  loc_109EED7:   Set var_A8 = Me.TxtGrid
  loc_109EEDD:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H23)
  loc_109EEE5:   var_BC.MaxLength = var_110
  loc_109EF08:   If (Me.RecordCount > 0) Then
  loc_109EF16:     Set var_BC = Me.FGPoint
  loc_109EF2E:     Proc_6_137_1192FDC(Me.DGTaxMast, global_76, Index)
  loc_109EF3C:   End If
  loc_109EF7D:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_109EF80:     Exit Sub
  loc_109EF81:   End If
  loc_109EF94:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109EF9C:   var_DC = CVar(CLng(2)) 'Long
  loc_109EFCF:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_109EFD8:     Me.MoveFirst
  loc_109EFF0:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109EFF8:     var_DC = CVar(CLng(1)) 'Long
  loc_109F001:     Set var_BC = Me.FGrid
  loc_109F007:     var_CC = var_BC.TextMatrix)
  loc_109F03C:     Me.Find "Code ='" & CStr(var_CC) & "'", 0, 1
  loc_109F06C:     If (Me.EOF = &HFF) Then
  loc_109F075:       Me.MoveFirst
  loc_109F07A:     End If
  loc_109F07A:   End If
  loc_109F07D: Else
  loc_109F084:   If (var_110 = CLng(3)) Then
  loc_109F096:     Set var_A8 = Me.TxtGrid
  loc_109F09C:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, 5, var_130, var_CC, var_DC)
  loc_109F0A4:     var_BC.MaxLength = var_94
  loc_109F0B0:   End If
  loc_109F0B0: End If
  loc_109F0B0: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '10E2BA0
  'Data Table: 497244
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C0 As Variant
  Dim var_94 As DataGrid
  loc_10E2894: On Error Goto loc_10E2B9A
  loc_10E28A1: If (CLng(Shift) = &H1B) Then
  loc_10E28B1:   Set var_88 = Me.TxtGrid
  loc_10E28B7:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_10E28D1:   Set var_94 = Me.TxtGrid
  loc_10E28D7:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_10E28DF:   var_98.Text = var_8C.Tag
  loc_10E28FB:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_10E2900:   Call Proc_220_57_EF3E28(arg_14)
  loc_10E2909:   Set var_88 = Me.FGrid
  loc_10E2926:   Set var_88 = Me.TxtGrid
  loc_10E292C:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_10E2934:   var_8C.Visible = False
  loc_10E2940:   Exit Sub
  loc_10E2941: End If
  loc_10E2964: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_10E2973:   Set var_88 = Me.TxtGrid
  loc_10E2979:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B0)
  loc_10E2981:   var_AC = var_8C.Left
  loc_10E2998:   Me.DGTaxMast.Left = CVar(var_B0)
  loc_10E29B2:   Set var_94 = Me.TxtGrid
  loc_10E29B8:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_10E29D1:   Set var_88 = Me.TxtGrid
  loc_10E29D7:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_10E29EB:   var_C0 = CVar((var_8C.Top + var_98.Height)) 'Single
  loc_10E29FA:   Me.DGTaxMast.Top = CVar(var_8C.Top)
  loc_10E2A29:   Set var_98 = Me.FGPoint
  loc_10E2A62:   Proc_6_69_134A630(Me.DGTaxMast, Me.TxtGrid, KeyCode, global_76, Shift, &HFF)
  loc_10E2A82:   If (CLng(Shift) = &HD) Then
  loc_10E2A8B:     Call Proc_220_53_10CA768(KeyCode, var_DA, 1, Nothing)
  loc_10E2A96:     If (var_DA = &HFF) Then
  loc_10E2AA4:       Set var_98 = Me.TxtGrid
  loc_10E2ACF:       Set var_8C = var_98
  loc_10E2ADE:       Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_66, CByte(6))
  loc_10E2AEE:     End If
  loc_10E2AEE:   End If
  loc_10E2AF1: Else
  loc_10E2AF8:   If (var_AC = CLng(3)) Then
  loc_10E2B0A:     Set var_88 = Me.TxtGrid
  loc_10E2B10:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 5, 0, 0)
  loc_10E2B18:     var_8C.MaxLength = 0
  loc_10E2B2E:     If (CLng(Shift) = &HD) Then
  loc_10E2B37:       Call Proc_220_53_10CA768(KeyCode, var_DA, var_98)
  loc_10E2B42:       If (var_DA = &HFF) Then
  loc_10E2B8A:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, CByte(6))
  loc_10E2B9A:       End If
  loc_10E2B9A:       ' Referenced from: 10E2894
  loc_10E2B9A:     End If
  loc_10E2B9A:   End If
  loc_10E2B9A: End If
  loc_10E2B9A: Proc_6_60_E63754(0, 0, 0)
  loc_10E2B9F: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F2E968
  'Data Table: 497244
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F2E85F: Proc_6_58_E06050(arg_10)
  loc_F2E870: If (KeyAscii = 0) Then
  loc_F2E886:   var_A0 = CLng(Me.FGrid.Col)
  loc_F2E896:   If (var_A0 = CLng(2)) Then
  loc_F2E8B5:     If (CBool(Me.DGTaxMast.Visible) = &HFF) Then
  loc_F2E8C7:       var_A4 = "Name"
  loc_F2E8E2:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_76, arg_10)
  loc_F2E8FC:       Set var_AC = Me.FGPoint
  loc_F2E914:       Proc_6_138_106E830(Me.DGTaxMast, global_76, KeyAscii, var_AC)
  loc_F2E922:     End If
  loc_F2E925:   Else
  loc_F2E92C:     If (var_A0 = CLng(3)) Then
  loc_F2E939:       Set var_8C = Me.TxtGrid
  loc_F2E93F:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F2E95A:       Proc_6_42_129B55C(var_AC, arg_10, 2, 2)
  loc_F2E966:     End If
  loc_F2E966:   End If
  loc_F2E966: End If
  loc_F2E966: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EC56C4
  'Data Table: 497244
  loc_EC5624: On Error Goto loc_EC56BD
  loc_EC564A: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_EC5670:   If ((Shift <> &HD) And (CBool(Me.DGTaxMast.Visible) = 0)) Then
  loc_EC567E:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_EC5692:     var_A4 = "Name"
  loc_EC56AD:     Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_76, Shift)
  loc_EC56BC:   End If
  loc_EC56BC: End If
  loc_EC56BC: Exit Sub
  loc_EC56BD: ' Referenced from: EC5624
  loc_EC56BD: Proc_6_60_E63754(var_A4, &HFF)
  loc_EC56C2: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E20D80
  'Data Table: 497244
  Dim arg_10 As Integer
  loc_E20D68: If (Cancel = 0) Then
  loc_E20D71:   Call Proc_220_53_10CA768(Cancel, var_88)
  loc_E20D7A:   arg_10 = Not(var_88)
  loc_E20D7D: End If
  loc_E20D7D: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F42B34
  'Data Table: 497244
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F42A2B: Me.DGHelp.Visible = False
  loc_F42A4A: If (Me.RecordCount > 0) Then
  loc_F42A89:   Set var_B4 = Me.Txt
  loc_F42A8F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F42A97:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F42ACA:   var_B0 = Me.Fields.Item("Name")
  loc_F42AE9:   Set var_B4 = Me.Txt
  loc_F42AEF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F42AF7:   var_B8.Text = CStr(var_B0.Value)
  loc_F42B0D: End If
  loc_F42B18: Set var_A8 = Me.Txt
  loc_F42B1E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F42B26: var_B0.SetFocus
  loc_F42B32: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E7597C
  'Data Table: 497244
  loc_E7593A: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E75951: Set var_8C = Me.FGPoint
  loc_E7596B: Proc_6_138_106E830(Me.DGHelp, global_72, 0)
  loc_E75979: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FEB1F0
  'Data Table: 497244
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_FEB026: Set var_88 = Me.Txt
  loc_FEB02C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FEB03A: Proc_6_74_E23240(var_8C)
  loc_FEB046: Call Proc_220_57_EF3E28(var_8C)
  loc_FEB04E: var_92 = Index
  loc_FEB059: If (var_92 = CInt(0)) Then
  loc_FEB073:   If (Me.RecordCount > 0) Then
  loc_FEB081:     Set var_8C = Me.FGPoint
  loc_FEB099:     Proc_6_137_1192FDC(Me.DGHelp, global_72, Index)
  loc_FEB0A7:   End If
  loc_FEB0F5:   Set var_88 = Me.Txt
  loc_FEB0FB:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FEB103:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FEB11B:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FEB11E:     Exit Sub
  loc_FEB11F:   End If
  loc_FEB12C:   Set var_88 = Me.Txt
  loc_FEB132:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FEB13A:   var_A0 = var_8C.Text
  loc_FEB14C:   var_B0 = "Name"
  loc_FEB187:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_FEB190:     Me.MoveFirst
  loc_FEB1B3:     Set var_88 = Me.Txt
  loc_FEB1B9:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_FEB1C1:     0 = var_8C.Text
  loc_FEB1DA:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_FEB1EF:   End If
  loc_FEB1EF: End If
  loc_FEB1EF: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '109CF48
  'Data Table: 497244
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim Shift As Integer
  Dim var_8C As Frame
  Dim var_9C As DataGrid
  loc_109CC9A: If (CLng(Shift) = &H1B) Then
  loc_109CC9D:   Call Proc_220_57_EF3E28()
  loc_109CCA2:   Exit Sub
  loc_109CCA3: End If
  loc_109CCA6: var_86 = KeyCode
  loc_109CCB1: If (var_86 = CInt(0)) Then
  loc_109CCCC:   Set var_9C = Nothing
  loc_109CCFE:   Proc_6_79_11AD564(Me.DGHelp, Me.Txt, CInt(0), global_72, Shift)
  loc_109CD69:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_109CD70:     Set var_9C = Me.DGHelp
  loc_109CD77:     Set var_90 = Me.FGPoint
  loc_109CD8F:     Proc_6_138_106E830(var_9C, global_72, KeyCode, var_90, 0)
  loc_109CD9D:   End If
  loc_109CDA0: Else
  loc_109CDA8:   If (var_86 = CInt(1)) Then
  loc_109CDD4:     If (Ucase(Chr(CLng(Shift))) = "Y") Then
  loc_109CDE4:       Set var_8C = Me.Txt
  loc_109CDEA:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, "Yes", 1)
  loc_109CDF2:       var_90.Text = var_9C
  loc_109CE01:     Else
  loc_109CE2A:       If (Ucase(Chr(CLng(Shift))) = "N") Then
  loc_109CE3A:         Set var_8C = Me.Txt
  loc_109CE40:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, "No")
  loc_109CE48:         var_90.Text = 0
  loc_109CE54:       End If
  loc_109CE54:     End If
  loc_109CE56:     Shift = 0
  loc_109CE59:   End If
  loc_109CE59: End If
  loc_109CE66: var_92 = Me.FrmList.Visible
  loc_109CE75: Set var_90 = Me.DGHelp
  loc_109CEAF: If (((var_92 = 0) And (CBool(var_90.Visible) = 0)) And (CBool(Me.DGTaxMast.Visible) = 0)) Then
  loc_109CEC7:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_109CECD:     Call Proc_220_51_1092CE4(var_92, Shift)
  loc_109CED8:     If (var_92 = &HFF) Then
  loc_109CEE8:       Set var_8C = Me.Txt
  loc_109CEEE:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_109CEF6:       var_90.Text = vbNullString
  loc_109CF02:       Exit Sub
  loc_109CF03:     End If
  loc_109CF03:   End If
  loc_109CF18:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_109CF21:     Proc_6_75_E5335C(Shift, arg_14)
  loc_109CF26:   End If
  loc_109CF39:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_109CF42:     Proc_6_76_E533C8(Shift, arg_14)
  loc_109CF47:   End If
  loc_109CF47: End If
  loc_109CF47: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E26914
  'Data Table: 497244
  Dim var_96 As Integer
  loc_E268F6: Proc_6_133_E7FB08(var_94)
  loc_E26908: Proc_6_58_E06050(CInt(var_94), CInt(var_94))
  loc_E26910: var_96 = KeyAscii
  loc_E26913: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC5880
  'Data Table: 497244
  loc_EC57F2: If (KeyCode = CInt(0)) Then
  loc_EC5811:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC581E:     var_A4 = "Name"
  loc_EC583D:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_72)
  loc_EC586F:     Proc_6_138_106E830(Me.DGHelp, global_72, KeyCode, Me.FGPoint)
  loc_EC587D:   End If
  loc_EC587D: End If
  loc_EC587D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4A67C
  'Data Table: 497244
  loc_E4A65A: Set var_88 = Me.Txt
  loc_E4A660: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4A66E: Proc_6_73_E23294(var_8C)
  loc_E4A67A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F8E97C
  'Data Table: 497244
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim arg_10 As Integer
  Dim var_8C As MSHFlexGrid
  loc_F8E827: var_86 = Cancel
  loc_F8E832: If (var_86 = CInt(0)) Then
  loc_F8E840:   Set var_8C = Me.Txt
  loc_F8E846:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_F8E86F:   If (Proc_6_27_EA61EC(var_90, "Name") = 0) Then
  loc_F8E87C:     Set var_8C = Me.Txt
  loc_F8E882:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F8E88A:     var_90.SetFocus
  loc_F8E898:     arg_10 = &HFF
  loc_F8E89B:     Exit Sub
  loc_F8E89C:   End If
  loc_F8E89F:   Call Proc_220_51_1092CE4(var_9A, arg_10)
  loc_F8E8AA:   If (var_9A = &HFF) Then
  loc_F8E8AF:     arg_10 = &HFF
  loc_F8E8B2:     Exit Sub
  loc_F8E8B3:   End If
  loc_F8E8C6:   Me.FGrid.Col = 2
  loc_F8E8D1: Else
  loc_F8E8D9:   If (var_86 = CInt(1)) Then
  loc_F8E8E6:     Set var_8C = Me.Txt
  loc_F8E8EC:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F8E927:     If (Ucase(Left(CVar(var_90), 1)) = "Y") Then
  loc_F8E937:       Set var_8C = Me.Txt
  loc_F8E93D:       Call 0.Method_Txt_Validate0 (Cancel, var_90, "Yes")
  loc_F8E945:       var_90.Text = arg_10
  loc_F8E954:     Else
  loc_F8E961:       Set var_8C = Me.Txt
  loc_F8E967:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F8E96F:       var_90.Text = "No"
  loc_F8E97B:     End If
  loc_F8E97B:   End If
  loc_F8E97B: End If
  loc_F8E97B: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F59194
  'Data Table: 497244
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F590B6: If (Me.ListView.ListItems.Count > 0) Then
  loc_F590BD:   Set var_A8 = Me.ListView
  loc_F59107:   Set var_C0 = Me.TxtGrid
  loc_F5910D:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F59115:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F59135: End If
  loc_F59141: Me.FrmList.Visible = False
  loc_F59171: Set var_9C = Me.TxtGrid
  loc_F59177: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5917F: var_A8.SetFocus
  loc_F59193: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E632C4
  'Data Table: 497244
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6328F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E632A2: Set var_A8 = Me.TxtGrid
  loc_E632A8: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E632B0: var_AC.Visible = False
  loc_E632BC: Call Proc_220_57_EF3E28()
  loc_E632C1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E66440
  'Data Table: 497244
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E663FC: Set var_88 = Me.TxtGrid
  loc_E66402: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6641C: If (var_8C.Visible = 0) Then
  loc_E66435:   Me.FGrid.BackColorSel = CVar(CLng(global_56))
  loc_E6643D: End If
  loc_E6643D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1E820
  'Data Table: 497244
  loc_E1E817: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1E81F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFF9BC
  'Data Table: 497244
  loc_DFF9B4: Call Proc_220_52_E3BEE0()
  loc_DFF9B9: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '103B95C
  'Data Table: 497244
  Dim var_98 As Variant
  Dim var_B8 As Variant
  Dim var_C4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_BC As String
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_103B714: Set var_88 = Me.TopCtrl1
  loc_103B71A: Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_6803000E()
  loc_103B72F: If ( = "Browse") Then
  loc_103B732:   Exit Sub
  loc_103B733: End If
  loc_103B7A7: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_103B7BD:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_103B7CD:   var_BC = "+{Tab}"
  loc_103B7D3:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_103B7DD:   Cancel = 0
  loc_103B7E3: Else
  loc_103B7ED:   var_B8 = Me.FGrid.Rows
  loc_103B83A:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B8) - 1)))) Then
  loc_103B850:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_103B85D:     Call Proc_220_58_EE1B9C(0, var_B8, Cancel)
  loc_103B864:     Cancel = 0
  loc_103B867:   End If
  loc_103B867: End If
  loc_103B86D: global_64 = Cancel
  loc_103B893: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_103B8B7: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_103B8CD:   var_EC = CLng(Me.FGrid.Col)
  loc_103B8DD:   If Not (var_EC = CLng(2)) Then
  loc_103B8E7:     If (var_EC = CLng(3)) Then
  loc_103B8EA:     End If
  loc_103B8FD:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103B915:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_103B91A:     var_11C = vbNullString
  loc_103B924:     Set var_C4 = Me.FGrid
  loc_103B92A:     LateIdCallSt
  loc_103B942:   End If
  loc_103B942: End If
  loc_103B948: If (Cancel = &HD) Then
  loc_103B950:   global_66 = 0
  loc_103B953: End If
  loc_103B955: Cancel = 0
  loc_103B958: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E12970
  'Data Table: 497244
  loc_E12961: Call FGrid_UnknownEvent_C()
  loc_E1296B: global_66 = 0
  loc_E1296E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '10E4344
  'Data Table: 497244
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Long
  Dim var_C0 As String
  Dim var_DA As Integer
  Dim var_C4 As TextBox
  Dim var_D4 As TextBox
  loc_10E4038: Set var_88 = Me.TopCtrl1
  loc_10E403E: Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_6803000E()
  loc_10E4053: If ( = "Browse") Then
  loc_10E4056:   Exit Sub
  loc_10E4057: End If
  loc_10E406A: var_BC = CLng(Me.FGrid.Col)
  loc_10E407A: If (var_BC = CLng(2)) Then
  loc_10E4081:   Set var_D4 = Me.FGrid
  loc_10E40A5:   var_C0 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_10E40D2:   Set var_C4 = var_D4
  loc_10E40E4:   Proc_6_63_110B734(Me, var_C4, Me.TxtGrid, 0, 0)
  loc_10E410C:   Set var_88 = Me.TxtGrid
  loc_10E4112:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0, Asc(var_C0))
  loc_10E411A:   0 = var_C4.Text
  loc_10E4133:   If (Len(var_C0) <= 1) Then
  loc_10E4142:     Set var_88 = Me.TxtGrid
  loc_10E4148:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0)
  loc_10E4150:     var_DA = var_C4.Text
  loc_10E4161:     Set var_C8 = Me.TxtGrid
  loc_10E4167:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_10E416F:     var_D4.Text = var_C0
  loc_10E4182:   End If
  loc_10E418E:   Set var_88 = Me.TxtGrid
  loc_10E4194:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_10E41AE:   Set var_C8 = Me.TxtGrid
  loc_10E41B4:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_10E41BC:   var_D4.SelStart = Len(var_C4.Text)
  loc_10E41D2: Else
  loc_10E41D9:   If (var_BC = CLng(3)) Then
  loc_10E41E0:     Set var_D4 = Me.FGrid
  loc_10E4204:     var_C0 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_10E4231:     Set var_C4 = var_D4
  loc_10E4243:     Proc_6_63_110B734(Me, var_C4, Me.TxtGrid, 0, &HFF)
  loc_10E426B:     Set var_88 = Me.TxtGrid
  loc_10E4271:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0, Asc(var_C0))
  loc_10E4279:     0 = var_C4.Text
  loc_10E4292:     If (Len(var_C0) <= 1) Then
  loc_10E42A1:       Set var_88 = Me.TxtGrid
  loc_10E42A7:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0)
  loc_10E42AF:       var_DA = var_C4.Text
  loc_10E42C0:       Set var_C8 = Me.TxtGrid
  loc_10E42C6:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_10E42CE:       var_D4.Text = var_C0
  loc_10E42E1:     End If
  loc_10E42ED:     Set var_88 = Me.TxtGrid
  loc_10E42F3:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_10E430D:     Set var_C8 = Me.TxtGrid
  loc_10E4313:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_10E431B:     var_D4.SelStart = Len(var_C4.Text)
  loc_10E432E:   End If
  loc_10E432E: End If
  loc_10E4338: If (CLng(Cancel) <> &HD) Then
  loc_10E4340:   global_66 = &HFF
  loc_10E4343: End If
  loc_10E4343: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '102A630
  'Data Table: 497244
  Dim var_A0 As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  loc_102A400: Set var_90 = Me.TopCtrl1
  loc_102A406: Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_6803000E()
  loc_102A41B: If ( = "Browse") Then
  loc_102A41E:   Exit Sub
  loc_102A41F: End If
  loc_102A43C: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_102A43F:   Exit Sub
  loc_102A440: End If
  loc_102A451: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_102A473:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_102A4AD:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_102A4CF:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_102A4E5:         var_A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_102A4EE:         Set var_114 = Me.FGrid
  loc_102A509:       Else
  loc_102A51C:         Me.FGrid.Rows = 1
  loc_102A539:         var_C0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_102A541:         Set var_114 = Me.FGrid
  loc_102A570:         Me.FGrid.FixedRows = 1
  loc_102A578:       End If
  loc_102A59D:       For var_118 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_118 'Integer
  loc_102A5A7:         var_A0 = CVar(CLng(var_86)) 'Long
  loc_102A5AF:         var_E0 = CVar(CLng(0)) 'Long
  loc_102A5B9:         var_B0 = CVar(CStr(var_86)) 'String
  loc_102A5C1:         Set var_90 = Me.FGrid
  loc_102A5C7:         LateIdCallSt
  loc_102A5D8:       Next var_118 'Integer
  loc_102A5DD:     End If
  loc_102A5E0:   Else
  loc_102A601:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_102A611:   End If
  loc_102A615:   Set var_90 = Me.FGrid
  loc_102A626: End If
  loc_102A62B: Set var_8C = Nothing
  loc_102A62E: Exit Sub
  loc_102A62F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1E960
  'Data Table: 497244
  loc_E1E957: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1E95F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1E870
  'Data Table: 497244
  loc_E1E867: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1E86F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E42088
  'Data Table: 497244
  Dim var_8C As TextBox
  loc_E4205C: Call Proc_220_57_EF3E28()
  loc_E4206C: Set var_88 = Me.TxtGrid
  loc_E42072: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4207A: var_8C.Visible = False
  loc_E42086: Exit Sub
End Sub

Private Sub Form_Load() '106F674
  'Data Table: 497244
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_88 As MSHFlexGrid
  loc_106F3E4: On Error Goto loc_106F66C
  loc_106F3FF: Proc_6_23_DFC5B8(Me, 4035)
  loc_106F411: Set var_88 = Me.TopCtrl1
  loc_106F417: Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_8001000B("AEDP")
  loc_106F425: Call 0.Method_arg_50 (var_B0)
  loc_106F435: Set var_88 = Me.TopCtrl1
  loc_106F43B: Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_6803000F(CVar(var_B0))
  loc_106F444: Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_0()
  loc_106F46F: Me.TopCtrl1.CursorLocation = 3
  loc_106F499: var_C0 = CVar("Select distinct Code As Code,Name From TaxStru  WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_106F4A3: Me.Open var_C0, CVar(MemVar_1F95044), 2
  loc_106F4B7: CVarUnk
  loc_106F4BC: VerifyVarObj
  loc_106F4C2: Set var_88 = Me.DGHelp
  loc_106F4C8: LateIdStAd
  loc_106F4F2: Me.DGHelp.CursorLocation = 3
  loc_106F51C: var_C0 = CVar("Select Code,Name From RevMast WHERE FIELDTYPE='T' AND (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_106F53A: CVarUnk
  loc_106F53F: VerifyVarObj
  loc_106F545: Set var_88 = Me.DGTaxMast
  loc_106F54B: LateIdStAd
  loc_106F575: Me.DGTaxMast.CursorLocation = 3
  loc_106F59F: var_C0 = CVar("Select distinct Code as SearchCode,Name,LOGSITE_CODE,SITE_CODE From TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_106F5A9: r_C0, CVar(MemVar_1F95044), 2 var_C0, CVar(MemVar_1F95044), 2
  loc_106F5D7: Call Proc_220_56_E79F64(Proc_5_1_100EC1C("INI", Me, New, 3, -1, Me, New), 3, -1, Me)
  loc_106F5E2: Call Proc_220_50_1091B24(New, 3)
  loc_106F5E7: Call Proc_220_55_117145C(-1)
  loc_106F5FE: Me.FGrid.Left = CVar(CDbl(0))
  loc_106F619: Me.FGrid.Top = CVar(CDbl(1030))
  loc_106F62B: var_C0 = Me.FGrid.Top
  loc_106F63A: Call 0.Method_Me8 (var_E4)
  loc_106F64D: var_9C = CVar(((var_E4 - CDbl(600)) - CDbl(var_C0))) 'Single
  loc_106F65C: Me.FGrid.Height = CVar(CDbl(1030))
  loc_106F66B: Exit Sub
  loc_106F66C: ' Referenced from: 106F3E4
  loc_106F66C: Proc_6_60_E63754(var_C0)
  loc_106F671: Exit Sub
End Sub

Private Sub Form_Resize() 'DFC6F0
  'Data Table: 497244
  Dim var_CFE As Double
  loc_DFC6EC: Exit Sub
  loc_DFC6ED: var_CFE = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E58F28
  'Data Table: 497244
  loc_E58EF3: Set global_72 = Nothing
  loc_E58F05: Set global_68 = Nothing
  loc_E58F17: Set global_76 = Nothing
  loc_E58F23: MasterFormExit = 0
  loc_E58F26: Exit Sub
End Sub

Private Sub Form_Activate() 'E4B1E0
  'Data Table: 497244
  loc_E4B1B0: On Error Goto loc_E4B1DA
  loc_E4B1B7: Set var_88 = Me.TopCtrl1
  loc_E4B1BD: Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_68030010()
  loc_E4B1D2: If (CLng(CInt()) = &H2D) Then
  loc_E4B1D5:   Call TopCtrl1_UnknownEvent_1D()
  loc_E4B1DA:   ' Referenced from: E4B1B0
  loc_E4B1DA: End If
  loc_E4B1DA: Proc_6_60_E63754()
  loc_E4B1DF: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E27364
  'Data Table: 497244
  loc_E27349: If (MasterFormExit = &HFF) Then
  loc_E27359:   Me.Global.Unload Me
  loc_E27361: End If
  loc_E27361: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27B84
  'Data Table: 497244
  loc_E27B5C: On Error Goto loc_E27B7C
  loc_E27B73: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E27B7B: Exit Sub
  loc_E27B7C: ' Referenced from: E27B5C
  loc_E27B7C: Proc_6_60_E63754(Shift)
  loc_E27B81: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E812CC
  'Data Table: 497244
  Dim var_94 As TextBox
  loc_E81268: On Error Goto loc_E812C4
  loc_E8128E: Call Proc_220_56_E79F64(Proc_5_1_100EC1C("ADD", Me))
  loc_E81299: Call Proc_220_54_F21784(global_68)
  loc_E812A9: Set var_8C = Me.Txt
  loc_E812AF: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0))
  loc_E812B7: var_94.SetFocus
  loc_E812C3: Exit Sub
  loc_E812C4: ' Referenced from: E81268
  loc_E812C4: Proc_6_60_E63754(var_94)
  loc_E812C9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'F6C24C
  'Data Table: 497244
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F6C11C: On Error Goto loc_F6C208
  loc_F6C12D: If (Proc_183_55_FE8490(global_68) = &HFF) Then
  loc_F6C130:   Exit Sub
  loc_F6C131: End If
  loc_F6C148: If (Me.RecordCount > 0) Then
  loc_F6C16E:   Call Proc_220_56_E79F64(Proc_5_1_100EC1C("EDIT", Me))
  loc_F6C187:   Set var_90 = Me.Txt
  loc_F6C18D:   Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_98)
  loc_F6C195:   var_8C = var_98.Text
  loc_F6C1A0:   global_80 = var_8C
  loc_F6C1B9:   Set var_90 = Me.Txt
  loc_F6C1BF:   Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_98)
  loc_F6C1C7:   var_98.SetFocus
  loc_F6C1D6: Else
  loc_F6C1F7:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F6C207: End If
  loc_F6C207: Exit Sub
  loc_F6C208: ' Referenced from: F6C11C
  loc_F6C210: Set var_90 = Err()
  loc_F6C216: Call 0.Method_arg_2C (var_8C)
  loc_F6C237: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F6C24A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '11E5DA0
  'Data Table: 497244
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_49725C As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  Dim var_3301 As Integer
  loc_11E5944: On Error Goto loc_11E5D47
  loc_11E5955: If (Proc_183_56_FE8B08(global_68) = &HFF) Then
  loc_11E5958:   Exit Sub
  loc_11E5959: End If
  loc_11E598B: var_D4 = "Tax Structure"
  loc_11E59D3: If (Proc_6_108_101061C(MemVar_1F95044, "RevMast", "TaxStru", CStr(Me.Fields.Item("SearchCode").Value)) = 0) Then
  loc_11E59D6:   Exit Sub
  loc_11E59D7: End If
  loc_11E5A09: var_D4 = "Tax Structure"
  loc_11E5A51: If (Proc_6_108_101061C(MemVar_1F95044, "ItemCatMast", "TaxStru", CStr(Me.Fields.Item("SearchCode").Value), 0) = 0) Then
  loc_11E5A54:   Exit Sub
  loc_11E5A55: End If
  loc_11E5ACF: If (Proc_6_108_101061C(MemVar_1F95044, "TelCallType", "TaxStru", CStr(Me.Fields.Item("SearchCode").Value), 0, "Tax Structure") = 0) Then
  loc_11E5AD2:   Exit Sub
  loc_11E5AD3: End If
  loc_11E5B0A: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_11E5B0F:   var_96 = 0
  loc_11E5B1B:   unk_49725C.BeginTrans var_D0
  loc_11E5B22:   var_96 = &HFF
  loc_11E5B36:   var_94 = Me.Bookmark 'Variant
  loc_11E5B82:   var_118 = "Delete From TaxStru Where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_11E5B90:   unk_49725C.Execute CStr(var_118), var_138, -1
  loc_11E5BDB:   var_168 = 0
  loc_11E5BEE:   var_160 = 0
  loc_11E5BF9:   var_15C = 0
  loc_11E5C0C:   var_154 = 0
  loc_11E5C17:   var_150 = 0
  loc_11E5C2A:   var_148 = 0
  loc_11E5C6A:   var_B4 = "TaxStru"
  loc_11E5C73:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B4, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_11E5CA1:   unk_49725C.CommitTrans
  loc_11E5CA8:   var_96 = 0
  loc_11E5CB6:   Me.Requery -1
  loc_11E5CC6:   Me.Requery -1
  loc_11E5CE6:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11E5CF3:     Me.Bookmark = var_94
  loc_11E5CFB:   Else
  loc_11E5D0F:     If (Me.EOF = 0) Then
  loc_11E5D18:       Me.MoveLast
  loc_11E5D1D:     End If
  loc_11E5D1D:   End If
  loc_11E5D1D:   Call Proc_220_55_117145C(var_96, var_148, 0, var_150, var_154)
  loc_11E5D3E:   Proc_5_0_1107AD0(&HFF, Me, global_68, 0)
  loc_11E5D46: End If
  loc_11E5D46: Exit Sub
  loc_11E5D47: ' Referenced from: 11E5944
  loc_11E5D4D: If (var_96 = &HFF) Then
  loc_11E5D56:   unk_49725C.RollbackTrans
  loc_11E5D5B: End If
  loc_11E5D63: Set var_9C = Err()
  loc_11E5D69: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_11E5D8A: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_11E5D9D: Exit Sub
  loc_11E5D9E: var_3301 = var_160
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E1872C
  'Data Table: 497244
  loc_E18721: Me.Global.Unload Me
  loc_E18729: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E3B7C8
  'Data Table: 497244
  Dim var_3301 As Double
  loc_E3B7B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3B7C0: Call Proc_220_55_117145C(global_68)
  loc_E3B7C5: Exit Sub
  loc_E3B7C6: var_3301 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E3BE28
  'Data Table: 497244
  Dim var_3301 As Double
  loc_E3BE18: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3BE20: Call Proc_220_55_117145C(global_68)
  loc_E3BE25: Exit Sub
  loc_E3BE26: var_3301 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E3BDC8
  'Data Table: 497244
  Dim var_3301 As Double
  loc_E3BDB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3BDC0: Call Proc_220_55_117145C(global_68)
  loc_E3BDC5: Exit Sub
  loc_E3BDC6: var_3301 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E3B9A8
  'Data Table: 497244
  Dim var_3301 As Double
  loc_E3B998: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3B9A0: Call Proc_220_55_117145C(global_68)
  loc_E3B9A5: Exit Sub
  loc_E3B9A6: var_3301 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '13A1388
  'Data Table: 497244
  Dim var_F4 As Variant
  Dim var_A4 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_D4 As Variant
  Dim var_138 As Variant
  Dim var_158 As Variant
  Dim var_178 As Variant
  Dim var_A8 As Variant
  Dim var_208 As Variant
  Dim var_9E As Integer
  Dim var_B0 As String
  Dim var_20C As String
  Dim unk_49725C As Connection15
  Dim var_AC As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_4B8 As Double
  Dim var_4C0 As Double
  Dim var_410 As Variant
  Dim Me As Recordset15
  loc_13A0B44: On Error Goto loc_13A1333
  loc_13A0B4B: var_86 = CByte(0) 'Byte
  loc_13A0B5A: Set var_A4 = Me.Txt
  loc_13A0B60: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0))
  loc_13A0B89: If (Proc_183_19_E8E68C(var_A8, "Name") = 0) Then
  loc_13A0B93:   Call Txt_GotFocus(CInt(0))
  loc_13A0B98:   Exit Sub
  loc_13A0B99: End If
  loc_13A0B9C: Call Proc_220_51_1092CE4(var_B2)
  loc_13A0BA7: If (var_B2 = &HFF) Then
  loc_13A0BAA:   Exit Sub
  loc_13A0BAB: End If
  loc_13A0BCC: var_E4 = CVar((CLng(Me.FGrid.Rows) - 2)) 'Long
  loc_13A0BD6: For var_114 = 1 To var_E4: var_9C = var_114 'Variant
  loc_13A0C01:   For var_118 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_9E = var_118 'Integer
  loc_13A0C0C:     var_D4 = CVar(CLng(var_9C)) 'Long
  loc_13A0C15:     var_F4 = CVar(CLng(var_9E)) 'Long
  loc_13A0C2F:     var_138 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_13A0C35:     var_148 = Trim(var_138)
  loc_13A0C3D:     var_158 = vbNullString
  loc_13A0C4C:     var_178 = CVar(CLng(var_9C)) 'Long
  loc_13A0C5E:     Set var_A8 = Me.FGrid
  loc_13A0CA3:     If CBool(CVar(CLng(var_9E)) Or (Trim(CVar(CStr(var_A8.TextMatrix)))) = "0.00")) Then
  loc_13A0CAD:       If (var_9E = var_9E) Then
  loc_13A0CB0:         GoTo loc_13A0D9B
  loc_13A0CB3:       End If
  loc_13A0CC4:       If ((var_9E = CInt(1)) Or (var_9E = CInt(2))) Then
  loc_13A0CE0:         MsgBox("Revenue is required", 0, var_138, var_148, var_168)
  loc_13A0CF4:         var_9E = CInt(2)
  loc_13A0CF7:       End If
  loc_13A0CFF:       If (var_9E = CInt(3)) Then
  loc_13A0D15:         var_C4 = "Rate is required"
  loc_13A0D1B:         MsgBox(var_C4, 0, var_138, var_148, var_168)
  loc_13A0D2B:       End If
  loc_13A0D3F:       Me.FGrid.Row = CVar(CLng(var_9C))
  loc_13A0D5A:       Me.FGrid.Col = CVar(CLng(var_9E))
  loc_13A0D66:       Set var_A4 = Me.FGrid
  loc_13A0D8A:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_13A0D92:       Exit Sub
  loc_13A0D93:     End If
  loc_13A0D96:   Next var_118 'Integer
  loc_13A0D9B:   ' Referenced from: 13A0CB0
  loc_13A0D9E: Next var_114 'Variant
  loc_13A0DA8: Set var_A4 = Me.TopCtrl1
  loc_13A0DAE: Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_6803000E()
  loc_13A0DC3: If ( = "Add") Then
  loc_13A0DCC:   var_E4 = 0
  loc_13A0DE9:   var_B0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS NUMERIC)),1)+1 AS MyCode From TaxStru WHERE ISNumeric(substring(Code,3,4))=1 AND SITE_CODE='" & MemVar_1F95070
  loc_13A0DF9:   unk_49725C.Execute "Name" & "'", var_C4, -1
  loc_13A0E01:   var_A4 = var_A4.Fields
  loc_13A0E09:   var_E4 = var_A8.Item(var_A8)
  loc_13A0E11:   var_AC = var_AC.Value
  loc_13A0E4A:   var_148 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_13A0E5C:   var_C4 = "0000"
  loc_13A0E78:   var_168 = (1 + Format(CStr(var_138), var_C4))
  loc_13A0E7D:   var_B0 = CStr(var_168)
  loc_13A0E83:   global_60 = var_B0
  loc_13A0E98: Else
  loc_13A0EA6:   Set var_A4 = Me.Txt
  loc_13A0EAC:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A8, var_B0)
  loc_13A0EB4:   1 = var_A8.Tag
  loc_13A0EBF:   global_60 = var_B0
  loc_13A0ECD: End If
  loc_13A0ED6: unk_49725C.BeginTrans var_214
  loc_13A0EDF: var_86 = CByte(1) 'Byte
  loc_13A0F0A: unk_49725C.Execute "Delete From TaxStru Where Code='" & global_60 & "'", var_C4, -1
  loc_13A0F3D: var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_13A0F47: For var_234 = 1 To "0000": var_9C = var_234 'Variant
  loc_13A0F52:   var_D4 = CVar(CLng(var_9C)) 'Long
  loc_13A0F92:   Set var_A8 = Me.FGrid
  loc_13A0FA3:   var_20C = CStr(var_A8.TextMatrix))
  loc_13A0FC1:   If (CVar(CLng(3)) And (var_20C <> vbNullString)) Then
  loc_13A0FD8:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A8, var_20C, CVar(CLng(var_9C)), (CStr(Me.FGrid.TextMatrix)) <> vbNullString), CVar(CLng(2)))
  loc_13A0FE0:     var_D4 = var_A8.Text
  loc_13A0FF1:     var_4B8 = Val(CStr(var_9C))
  loc_13A0FF9:     var_D4 = CVar(CLng(var_9C)) 'Long
  loc_13A1001:     var_F4 = CVar(CLng(1)) 'Long
  loc_13A1010:     var_C4 = Me.FGrid.TextMatrix)
  loc_13A1038:     var_138 = Me.FGrid.TextMatrix)
  loc_13A104B:     var_4C0 = Val(CStr(var_138))
  loc_13A105D:     var_168 = "0.00"
  loc_13A1066:     var_148 = CVar(var_4C0) 'Double
  loc_13A1080:     Proc_183_7_EB17D4(var_2FC, Date, 1, 1, var_4C0, CVar(CLng(3)), CVar(CLng(var_9C)), var_C4)
  loc_13A1089:     Set var_330 = Me.TopCtrl1
  loc_13A108F:     Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_6803000E(var_F4)
  loc_13A10D5:     Set var_434 = Me.Txt
  loc_13A10DB:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_438, var_D4, var_4B8)
  loc_13A1106:     var_B0 = "Insert Into TaxStru(Code,Name,Sno,TaxCode,Rate,Limit,Site_Code,U_Name,U_EntDt,U_AE,Nature,CondApp,LogSite_Code,CompOperator,TaxBeforeDisc) Values ('" & global_60
  loc_13A1159:     var_208 = CVar(var_B0 & "','" & var_20C & "'," & CStr(var_4B8) & ",'" & CStr(var_C4) & "',") & Format(var_148, var_168) & ",'" & CVar(MemVar_1F95078) 
  loc_13A119F:     var_410 = var_208 & "','" & CVar(MemVar_1F950C8) & "'," & var_2FC & ",'" & IIf((var_350 = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) 
  loc_13A11C9:     unk_49725C.Execute CStr(var_410 & "','" & CVar(Proc_6_38_E69628(CVar(var_438), var_F4, Me.Txt)) & "')"), var_4AC, -1
  loc_13A123D:   End If
  loc_13A1240: Next var_234 'Variant
  loc_13A124C: unk_49725C.CommitTrans
  loc_13A1255: var_86 = CByte(0) 'Byte
  loc_13A1264: Me.Requery -1
  loc_13A1274: Me.Requery -1
  loc_13A127D: Set var_A4 = Me.DGHelp
  loc_13A1292: Set var_A4 = Me.DGTaxMast
  loc_13A12CB: Me.Find "SearchCode='" & global_60 & "'", 0, 1
  loc_13A12DB: Set var_A4 = Me.TopCtrl1
  loc_13A12E1: Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_6803000E(var_D4)
  loc_13A12F6: If (DGTaxMast.DispID_FFFF = "Add") Then
  loc_13A12F9:   Call TopCtrl1_UnknownEvent_11()
  loc_13A12FE:   Exit Sub
  loc_13A12FF: End If
  loc_13A1314: var_B0 = "INI"
  loc_13A1322: Call Proc_220_56_E79F64(Proc_5_1_100EC1C(var_B0, Me), global_68)
  loc_13A132D: Call Proc_220_55_117145C(DGHelp.DispID_FFFF)
  loc_13A1332: Exit Sub
  loc_13A1333: ' Referenced from: 13A0B44
  loc_13A133C: If (CInt(var_86) = 1) Then
  loc_13A1345:   unk_49725C.RollbackTrans
  loc_13A134A: End If
  loc_13A1352: Set var_A4 = Err()
  loc_13A1358: Call 0.Method_arg_2C (var_B0)
  loc_13A1371: MsgBox(CVar(var_B0), &H10, var_138, var_148, var_168)
  loc_13A1384: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'E9DAD8
  'Data Table: 497244
  loc_E9DA60: On Error Goto loc_E9DAD1
  loc_E9DA9A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9DAC0:   Call Proc_220_56_E79F64(Proc_5_1_100EC1C("INI", Me))
  loc_E9DACB:   Call Proc_220_55_117145C(global_68)
  loc_E9DAD0: End If
  loc_E9DAD0: Exit Sub
  loc_E9DAD1: ' Referenced from: E9DA60
  loc_E9DAD1: Proc_6_60_E63754()
  loc_E9DAD6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EC80F8
  'Data Table: 497244
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim MemVar_1F950E4 As String
  Dim var_3301 As Integer
  loc_EC8058: On Error Goto loc_EC80F0
  loc_EC8072: If (Me.RecordCount <= 0) Then
  loc_EC807B:   var_B8 = "Information"
  loc_EC8096:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC80A6:   Exit Sub
  loc_EC80A7: End If
  loc_EC80B5: MemVar_1F950E4 = "Select distinct Code As SearchCode,Name FROM TaxStru where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_EC80C2: MemVar_1F95120 = Me
  loc_EC80CF: Proc_6_126_F1C850("3500")
  loc_EC80EA: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC80EF: Exit Sub
  loc_EC80F0: ' Referenced from: EC8058
  loc_EC80F0: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EC80F5: Exit Sub
  loc_EC80F6: var_3301 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_1C '108D3D8
  'Data Table: 497244
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_49725C As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_108D140: On Error Goto loc_108D38C
  loc_108D157: var_A0 = "Select TaxStru.*,RevMast.Code as TaxCode, RevMast.Name as TaxName From TaxStru Left Join RevMast on RevMast.Code=TaxStru.TaxCode  where (RevMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_108D167: unk_49725C.Execute var_A0 & "' or RevMast.LOGSITE_CODE='HO') and RevMast.FieldType='T' Order by Sno", var_C4, -1
  loc_108D172: Set var_88 = var_C8
  loc_108D188: var_CC = var_88.RecordCount
  loc_108D196: If (var_CC = 0) Then
  loc_108D1B2:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_108D1C2:   Exit Sub
  loc_108D1C3: End If
  loc_108D1D2: var_A4 = MemVar_1F950B4 & "\TaxStructureMast.ttx"
  loc_108D1D9: Set var_C8 = var_88 
  loc_108D1E5: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_108D1EF: Set var_88 = var_C8
  loc_108D1F5: var_B4 = CVar(var_12E) 'Integer
  loc_108D1F8: var_98 = var_B4 'Variant
  loc_108D214: var_A0 = MemVar_1F950B4 & "\TaxStructureMast.RPT"
  loc_108D21D: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_108D228: MemVar_1F951E8 = var_C8
  loc_108D243: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_108D24B: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_108D257: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_108D270:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108D278:   Call 0.Method_arg_20 (var_138)
  loc_108D280:   Call 0.Method_arg_30 (var_A0)
  loc_108D2C6:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_108D2DC:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108D2E4:     Call 0.Method_arg_20 (var_138)
  loc_108D2EC:     Call 0.Method_arg_38 ("'Tax Structure Master'")
  loc_108D2F8:   End If
  loc_108D2FB: Next var_132 'Integer
  loc_108D319: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_108D321: Call 0.Method_arg_2C (var_DC)
  loc_108D32F: Call 0.Method_arg_150 (var_FC)
  loc_108D33A: Call 0.Method_arg_50 (var_A0)
  loc_108D344: Set var_138 = Nothing
  loc_108D35E: Set var_C8 = MemVar_1F951E8 
  loc_108D36A: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_108D375: MemVar_1F951E8 = var_C8
  loc_108D388: Set var_88 = Nothing
  loc_108D38B: Exit Sub
  loc_108D38C: ' Referenced from: 108D140
  loc_108D394: Set var_C8 = Err()
  loc_108D39A: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_108D3A5: Call 0.Method_arg_50 (var_A4)
  loc_108D3C1: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_108D3D4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E20DD4
  'Data Table: 497244
  Dim Me As Recordset15
  loc_E20DBB: Me.Requery -1
  loc_E20DCB: Me.Requery -1
  loc_E20DD0: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E652AC
  'Data Table: 497244
  loc_E6527C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E6527F:   Call DGHelp_UnknownEvent_9()
  loc_E65284:   Do 'loop at: E66E56
  loc_E65284: End If
  loc_E652A0: If (CBool(Me.DGTaxMast.Visible) = &HFF) Then
  loc_E652A3:   Call DGTaxMast_UnknownEvent_9()
  loc_E652A8: End If
  loc_E652A8: Exit Sub
End Sub

Private Sub DGTaxMast_UnknownEvent_9 'FC54C0
  'Data Table: 497244
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FC532B: Me.DGTaxMast.Visible = False
  loc_FC534A: If (Me.RecordCount > 0) Then
  loc_FC5387:   Set var_B4 = Me.TxtGrid
  loc_FC538D:   Call 0.Method_DGTaxMast_UnknownEvent_90 (0, var_B8)
  loc_FC5395:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FC53BE:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FC53C6:   var_EC = CVar(CLng(2)) 'Long
  loc_FC53F9:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FC5401:   Set var_B8 = Me.FGrid
  loc_FC5407:   LateIdCallSt
  loc_FC5436:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FC543E:   var_EC = CVar(CLng(1)) 'Long
  loc_FC5460:   var_B0 = Me.Fields.Item("Code")
  loc_FC5471:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FC5479:   Set var_B8 = Me.FGrid
  loc_FC547F:   LateIdCallSt
  loc_FC549B: End If
  loc_FC54A4: Set var_A8 = Me.TxtGrid
  loc_FC54AA: Call 0.Method_DGTaxMast_UnknownEvent_90 (0, var_B0, var_B8, var_11C, var_EC)
  loc_FC54B2: var_B0.SetFocus
  loc_FC54BE: Exit Sub
End Sub

Private Sub DGTaxMast_UnknownEvent_1F 'E757C0
  'Data Table: 497244
  loc_E7577E: Proc_6_153_E91D24(Me.DGTaxMast, arg_14)
  loc_E75795: Set var_8C = Me.FGPoint
  loc_E757AF: Proc_6_138_106E830(Me.DGTaxMast, global_76, 0)
  loc_E757BD: Exit Sub
End Sub

Public Function MasterFormExitGet() '497E3C
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '497E4B
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E95988
  'Data Table: 497244
  Dim Me As Recordset15
  loc_E95916: On Error Goto loc_E9597F
  loc_E9591F: Me.MoveFirst
  loc_E95949: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E95971: Proc_5_0_1107AD0(&HFF, Me, global_68)
  loc_E95979: Call Proc_220_55_117145C(0)
  loc_E9597E: Exit Sub
  loc_E9597F: ' Referenced from: E95916
  loc_E9597F: Proc_6_60_E63754(var_A0)
  loc_E95984: Exit Sub
End Sub

Public Sub Proc_220_50_1091B24
  'Data Table: 497244
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_1091878: On Error Goto loc_1091B1C
  loc_1091889: Set var_88 = Me.Txt
  loc_109188F: Call 0.Method_Proc_220_50_1091B240 (CInt(0), var_8C)
  loc_10918AE: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_10918CA: Set var_B4 = Me.Txt
  loc_10918D0: Call 0.Method_Proc_220_50_1091B240 (CInt(0), var_B8)
  loc_10918EB: Set var_88 = Me.Txt
  loc_10918F1: Call 0.Method_Proc_220_50_1091B240 (CInt(0), var_8C)
  loc_1091909: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1091918: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_1091936: Set var_88 = Me.TxtGrid
  loc_109193C: Call 0.Method_Proc_220_50_1091B240 (0, var_8C)
  loc_109195B: Me.DGTaxMast.Left = CVar(var_8C.Left)
  loc_1091975: Set var_B4 = Me.TxtGrid
  loc_109197B: Call 0.Method_Proc_220_50_1091B240 (0, var_B8)
  loc_1091994: Set var_88 = Me.TxtGrid
  loc_109199A: Call 0.Method_Proc_220_50_1091B240 (0, var_8C)
  loc_10919AE: var_A0 = CVar((var_8C.Top + var_B8.Height)) 'Single
  loc_10919BD: Me.DGTaxMast.Top = CVar(var_8C.Left)
  loc_10919D3: Set var_C4 = Me.FGrid
  loc_10919E2: var_C4.Cols = 4
  loc_10919FB: global_56 = CStr(CLng(var_C4.BackColor))
  loc_1091A08: var_A0 = CVar(CLng(0)) 'Long
  loc_1091A0D: var_E8 = &H1F4
  loc_1091A19: LateIdCallSt
  loc_1091A21: var_A0 = 0
  loc_1091A2D: var_E8 = CVar(CLng(0)) 'Long
  loc_1091A32: var_108 = "S.No"
  loc_1091A3B: LateIdCallSt
  loc_1091A46: var_A0 = CVar(CLng(1)) 'Long
  loc_1091A4B: var_E8 = 0
  loc_1091A57: LateIdCallSt
  loc_1091A62: var_A0 = CVar(CLng(2)) 'Long
  loc_1091A67: var_E8 = &H9C4
  loc_1091A73: LateIdCallSt
  loc_1091A7B: var_A0 = 0
  loc_1091A87: var_E8 = CVar(CLng(2)) 'Long
  loc_1091A8C: var_108 = "Revenue"
  loc_1091A95: LateIdCallSt
  loc_1091AA0: var_A0 = CVar(CLng(2)) 'Long
  loc_1091AAB: var_E8 = CVar(CInt(1)) 'Integer
  loc_1091AB2: LateIdCallSt
  loc_1091ABD: var_A0 = CVar(CLng(3)) 'Long
  loc_1091AC2: var_E8 = &H320
  loc_1091ACE: LateIdCallSt
  loc_1091AD9: var_A0 = CVar(CLng(3)) 'Long
  loc_1091AE4: var_E8 = CVar(CInt(7)) 'Integer
  loc_1091AEB: LateIdCallSt
  loc_1091AF3: var_A0 = 0
  loc_1091AFF: var_E8 = CVar(CLng(3)) 'Long
  loc_1091B04: var_108 = "Rate"
  loc_1091B0D: LateIdCallSt
  loc_1091B17: Set var_C4 = Nothing 
  loc_1091B1B: Exit Sub
  loc_1091B1C: ' Referenced from: 1091878
  loc_1091B1C: Proc_6_60_E63754(var_C4, var_108, var_E8, var_A0, var_C4, var_E8, var_A0, var_C4)
  loc_1091B21: Exit Sub
End Sub

Public Sub Proc_220_51_1092CE4
  'Data Table: 497244
  Dim Me As Recordset15
  Dim var_D8 As TextBox
  Dim unk_49725C As Connection15
  Dim var_F0 As Fields15
  Dim var_104 As Field20
  loc_1092A7C: If (Me.RecordCount = 0) Then
  loc_1092A7F:   Proc_220_51_1092CE4 = 0
  loc_1092A85: End If
  loc_1092A89: Set var_A0 = Me.TopCtrl1
  loc_1092A8F: Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_6803000E()
  loc_1092AA4: If ( = "Add") Then
  loc_1092AE2:   Set var_A0 = Me.Txt
  loc_1092AE8:   Call 0.Method_Proc_220_51_1092CE40 (CInt(0), var_D8, var_DC, "Select Count(*) From TaxStru Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_C0, -1)
  loc_1092B09:   unk_49725C.Execute var_F0 & var_DC & "'", 0, var_104
  loc_1092B19:    = var_F0.Item()
  loc_1092B21:    = var_104.Value
  loc_1092B52:   If (var_D8.Text.Fields > 0) Then
  loc_1092B70:     var_C0 = "Duplicate Name"
  loc_1092B76:     MsgBox(var_C0, &H40, "Information", var_124, var_144)
  loc_1092B91:     Set var_A0 = Me.Txt
  loc_1092B97:     Call 0.Method_Proc_220_51_1092CE40 (CInt(0))
  loc_1092B9F:     var_D8.SetFocus
  loc_1092BB0:     Proc_220_51_1092CE4 = &HFF
  loc_1092BB6:   End If
  loc_1092BB9: Else
  loc_1092BF4:   Set var_A0 = Me.Txt
  loc_1092BFA:   Call 0.Method_Proc_220_51_1092CE40 (CInt(0), var_D8, var_DC, "Select Count(*) From TaxStru Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_C0, -1)
  loc_1092C2C:   unk_49725C.Execute var_F0 & var_DC & "' And Name <>'" & global_80 & "'", 0, var_104
  loc_1092C3C:    = var_F0.Item(var_D8)
  loc_1092C44:    = var_104.Value
  loc_1092C79:   If (var_D8.Text.Fields > 0) Then
  loc_1092C9D:     MsgBox("Duplicate Name", &H40, "Information", var_124, var_144)
  loc_1092CB8:     Set var_A0 = Me.Txt
  loc_1092CBE:     Call 0.Method_Proc_220_51_1092CE40 (CInt(0))
  loc_1092CC6:     var_D8.SetFocus
  loc_1092CD7:     Proc_220_51_1092CE4 = &HFF
  loc_1092CDD:   End If
  loc_1092CDD: End If
  loc_1092CDD: Proc_220_51_1092CE4 = var_D8
End Sub

Public Sub Proc_220_52_E3BEE0
  'Data Table: 497244
  loc_E3BEC0: Set var_88 = Me.TopCtrl1
  loc_E3BEC6: Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_6803000E()
  loc_E3BEDB: If ( = "Browse") Then
  loc_E3BEDE:   Exit Sub
  loc_E3BEDF: End If
  loc_E3BEDF: Exit Sub
End Sub

Public Sub Proc_220_53_10CA768(arg_C) '10CA768
  'Data Table: 497244
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_134 As Variant
  Dim var_158 As Variant
  loc_10CA48F: var_A0 = CLng(Me.FGrid.Col)
  loc_10CA49F: If (var_A0 = CLng(2)) Then
  loc_10CA4C2:   var_A6 = Me.EOF
  loc_10CA4F0:   Set var_8C = Me.TxtGrid
  loc_10CA4F6:   Call 0.Method_Proc_220_53_10CA7680 (arg_C, var_AC, var_B0)
  loc_10CA4FE:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_10CA516:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_10CA52C:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CA534:     var_E0 = CVar(CLng(2)) 'Long
  loc_10CA539:     var_100 = vbNullString
  loc_10CA543:     Set var_AC = Me.FGrid
  loc_10CA549:     LateIdCallSt
  loc_10CA56E:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CA576:     var_E0 = CVar(CLng(1)) 'Long
  loc_10CA57B:     var_100 = vbNullString
  loc_10CA585:     Set var_AC = Me.FGrid
  loc_10CA58B:     LateIdCallSt
  loc_10CA5A0:   Else
  loc_10CA5A3:     Call Proc_220_59_FC2FA0(var_A6, var_AC, var_100, var_E0, var_C0)
  loc_10CA5AE:     If (var_A6 = 0) Then
  loc_10CA5B6:       Proc_220_53_10CA768 = 0
  loc_10CA5BC:     End If
  loc_10CA5CF:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CA5D7:     var_F0 = CVar(CLng(2)) 'Long
  loc_10CA60A:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10CA612:     Set var_138 = Me.FGrid
  loc_10CA618:     LateIdCallSt
  loc_10CA647:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CA64F:     var_F0 = CVar(CLng(1)) 'Long
  loc_10CA671:     var_AC = Me.Fields.Item("Code")
  loc_10CA682:     var_134 = CVar(CStr(var_AC.Value)) 'String
  loc_10CA68A:     Set var_138 = Me.FGrid
  loc_10CA690:     LateIdCallSt
  loc_10CA6AC:   End If
  loc_10CA6AF: Else
  loc_10CA6B6:   If (var_A0 = CLng(3)) Then
  loc_10CA6C5:     Set var_8C = Me.TxtGrid
  loc_10CA6CB:     Call 0.Method_Proc_220_53_10CA7680 (0, var_AC, var_B0, var_138, var_134, var_F0, var_D0)
  loc_10CA6D3:     var_138 = var_AC.Text
  loc_10CA6F6:     var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CA6FE:     var_100 = CVar(CLng(3)) 'Long
  loc_10CA72B:     var_158 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00"))) 'String
  loc_10CA733:     Set var_138 = Me.FGrid
  loc_10CA739:     LateIdCallSt
  loc_10CA75C:   End If
  loc_10CA75C: End If
  loc_10CA761: Proc_220_53_10CA768 = &HFF
End Sub

Public Sub Proc_220_54_F21784
  'Data Table: 497244
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F21686: global_80 = vbNullString
  loc_F21698: Set var_8C = Me.Txt
  loc_F2169E: Call 0.Method_Proc_220_54_F21784C (var_8E, var_86)
  loc_F216AE: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F216C4:   Set var_8C = Me.Txt
  loc_F216CA:   Call 0.Method_Proc_220_54_F217840 (CInt(var_86), var_98)
  loc_F216D2:   var_98.Text = vbNullString
  loc_F216EE:   Set var_8C = Me.Txt
  loc_F216F4:   Call 0.Method_Proc_220_54_F217840 (CInt(var_86), var_98)
  loc_F216FC:   var_98.Tag = vbNullString
  loc_F2170B: Next var_92 'Byte
  loc_F21724: Me.FGrid.Rows = 1
  loc_F21741: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F21749: Set var_98 = Me.FGrid
  loc_F21778: Me.FGrid.FixedRows = 1
  loc_F21780: Exit Sub
End Sub

Public Sub Proc_220_55_117145C
  'Data Table: 497244
  Dim var_8C As Integer
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim unk_49725C As Connection15
  Dim var_88 As Recordset15
  Dim var_134 As TextBox
  Dim var_118 As Variant
  Dim var_148 As Variant
  Dim var_128 As Variant
  loc_11710A0: On Error Goto loc_1171454
  loc_11710A5: var_8C = 1
  loc_11710BF: If (Me.RecordCount > 0) Then
  loc_11710CF:   var_D4 = "Select TaxStru.*,RevMast.Code as TaxCode, RevMast.Name as TaxName From TaxStru Left Join RevMast on RevMast.Code=TaxStru.TaxCode  where RevMast.FieldType='T' and TaxStru.Code='"
  loc_1171118:   unk_49725C.Execute CStr(var_D4 & Me.Fields.Item("SearchCode").Value & "' Order by Sno"), var_128, -1
  loc_1171123:   Set var_88 = var_12C
  loc_1171151:   If (var_88.RecordCount > 0) Then
  loc_1171154:     Call Proc_220_54_F21784(var_12C)
  loc_1171159:     ' Referenced from: 117141B
  loc_1171168:     If Not(var_88.EOF) Then
  loc_11711A4:       Set var_12C = Me.Txt
  loc_11711AA:       Call 0.Method_Proc_220_55_117145C0 (CInt(0), var_134)
  loc_11711B2:       var_134.Tag = CStr(var_88.Fields.Item("Code").Value)
  loc_1171201:       Set var_12C = Me.Txt
  loc_1171207:       Call 0.Method_Proc_220_55_117145C0 (CInt(0), var_134)
  loc_117120F:       var_134.Text = CStr(var_88.Fields.Item("Name").Value)
  loc_117125B:       Set var_12C = Me.Txt
  loc_1171261:       Call 0.Method_Proc_220_55_117145C0 (CInt(1), var_134)
  loc_1171269:       var_134.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("TaxBeforeDisc")))
  loc_1171281:       Set var_138 = Me.FGrid
  loc_1171284:       var_B0 = vbNullString
  loc_1171299:       var_D4 = CVar(CLng(var_8C)) 'Long
  loc_11712A1:       var_118 = CVar(CLng(0)) 'Long
  loc_11712D1:       var_E4 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_11712D8:       LateIdCallSt
  loc_1171327:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TaxCode")), CVar(CLng(1)), CVar(CLng(var_8C)), var_138, var_E4)) 'String
  loc_117132E:       LateIdCallSt
  loc_117134C:       var_118 = CVar(CLng(2)) 'Long
  loc_1171379:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TaxName")), var_118, CVar(CLng(var_8C)), var_138, var_E4)) 'String
  loc_1171380:       LateIdCallSt
  loc_11713B2:       var_F4 = CVar(CLng(var_8C)) 'Long
  loc_11713BA:       var_148 = CVar(CLng(3)) 'Long
  loc_11713C9:       var_D4 = "0.00"
  loc_11713CE:       var_E4 = var_D4
  loc_11713E7:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), var_E4))) 'String
  loc_11713EE:       LateIdCallSt
  loc_1171406:       Set var_138 = Nothing 
  loc_1171410:       var_8C = (var_8C + 1)
  loc_1171416:       var_88.MoveNext
  loc_117141B:       GoTo loc_1171159
  loc_117141E:     End If
  loc_1171420:     var_8C = 0
  loc_1171436:     Me.FGrid.FixedRows = 1
  loc_117143E:   End If
  loc_1171441: Else
  loc_1171441:   Call Proc_220_54_F21784(var_8C, var_8C, var_138, var_128, 1, 1, var_148)
  loc_1171446: End If
  loc_1171446: Call Proc_220_57_EF3E28(var_F4, var_138, var_E4)
  loc_1171450: Set var_88 = Nothing
  loc_1171453: Exit Sub
  loc_1171454: ' Referenced from: 11710A0
  loc_1171454: Proc_6_60_E63754(var_118, var_D4)
  loc_1171459: Exit Sub
End Sub

Public Sub Proc_220_56_E79F64(arg_C) 'E79F64
  'Data Table: 497244
  Dim var_98 As TextBox
  loc_E79F12: Set var_8C = Me.Txt
  loc_E79F18: Call 0.Method_Proc_220_56_E79F64C (var_8E, var_86)
  loc_E79F28: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E79F3E:   Set var_8C = Me.Txt
  loc_E79F44:   Call 0.Method_Proc_220_56_E79F640 (CInt(var_86), var_98)
  loc_E79F4C:   var_98.Enabled = arg_C
  loc_E79F5B: Next var_92 'Byte
  loc_E79F61: Exit Sub
End Sub

Public Sub Proc_220_57_EF3E28
  'Data Table: 497244
  loc_EF3D6C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EF3D7E:   Me.DGHelp.Visible = False
  loc_EF3D86: End If
  loc_EF3DA2: If (CBool(Me.DGTaxMast.Visible) = &HFF) Then
  loc_EF3DB4:   Me.DGTaxMast.Visible = False
  loc_EF3DBC: End If
  loc_EF3DD7: If (Me.FrmList.Visible = &HFF) Then
  loc_EF3DE6:   Me.FrmList.Visible = False
  loc_EF3DEE: End If
  loc_EF3E0A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF3E1C:   Me.FGPoint.Visible = False
  loc_EF3E24: End If
  loc_EF3E24: Exit Sub
End Sub

Public Sub Proc_220_58_EE1B9C(arg_C) 'EE1B9C
  'Data Table: 497244
  Dim var_8C As TextBox
  loc_EE1AF0: Call Proc_220_57_EF3E28()
  loc_EE1B00: Set var_88 = Me.Txt
  loc_EE1B06: Call 0.Method_Proc_220_58_EE1B9C0 (CInt(0))
  loc_EE1B2F: If (Proc_6_27_EA61EC(var_8C, "Name") = 0) Then
  loc_EE1B32:   Exit Sub
  loc_EE1B33: End If
  loc_EE1B6A: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_EE1B6D:   Call TopCtrl1_UnknownEvent_19()
  loc_EE1B75: Else
  loc_EE1B7F:   Set var_88 = Me.Txt
  loc_EE1B85:   Call 0.Method_Proc_220_58_EE1B9C0 (arg_C, var_8C)
  loc_EE1B8D:   var_8C.SetFocus
  loc_EE1B99: End If
  loc_EE1B99: Exit Sub
End Sub

Public Sub Proc_220_59_FC2FA0
  'Data Table: 497244
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC2E23: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_FC2E28:   var_92 = 2 'Byte
  loc_FC2E2C: End If
  loc_FC2E35: Set var_98 = Me.TxtGrid
  loc_FC2E3B: Call 0.Method_Proc_220_59_FC2FA00 (0, var_B0)
  loc_FC2E5E: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC2E92: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC2EB6:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC2EB9:     GoTo loc_FC2F8B
  loc_FC2EBC:   End If
  loc_FC2EC0:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC2EEA:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC2EF4:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC2F29:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC2F4D:     MsgBox("Duplicate Revenue Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC2F66:     Set var_98 = Me.TxtGrid
  loc_FC2F6C:     Call 0.Method_Proc_220_59_FC2FA00 (0, var_B0, CVar(CLng(var_92)))
  loc_FC2F74:     var_B0.SetFocus
  loc_FC2F85:     Proc_220_59_FC2FA0 = 0
  loc_FC2F8B:     ' Referenced from: FC2EB9
  loc_FC2F8B:   End If
  loc_FC2F8E: Next var_D4 'Integer
  loc_FC2F98: Proc_220_59_FC2FA0 = &HFF
End Sub
