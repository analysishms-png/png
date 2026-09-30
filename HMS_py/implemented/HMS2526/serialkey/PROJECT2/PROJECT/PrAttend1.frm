VERSION 5.00
Begin VB.Form PrAttend1
  Caption = "Attendence"
  BackColor = &HD0C7BB&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "PrAttend1.frx":0
  LinkTopic = "Form1"
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 10860
  ClientHeight = 5985
  BeginProperty Font
    Name = "Times New Roman"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin TextBox Text3
    Left = 1065
    Top = 1605
    Width = 975
    Height = 285
    Visible = 0   'False
    TabIndex = 2
    Alignment = 2 'Center
    MaxLength = 2
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid1
    Left = 60
    Top = 1365
    Width = 11730
    Height = 5070
    TabIndex = 3
  End
  Begin TextBox Txt
    Index = 0
    Left = 4620
    Top = 300
    Width = 1230
    Height = 240
    TabIndex = 0
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin CommandButton Command1
    Caption = "&Refresh"
    Index = 0
    BackColor = &HC0C0C0&
    Left = 8775
    Top = 240
    Width = 1080
    Height = 435
    TabIndex = 1
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Shows the List of current Attendence Status"
    Style = 1
  End
  Begin CommandButton Command1
    Caption = "&Exit"
    Index = 1
    BackColor = &HC0C0C0&
    Left = 8760
    Top = 675
    Width = 1080
    Height = 435
    TabIndex = 7
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin TextBox Text1
    Left = 4605
    Top = 5670
    Width = 1935
    Height = 315
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 5
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Text2
    Left = 7440
    Top = 5490
    Width = 3150
    Height = 645
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin SSPanel SSPanel4
    Left = 0
    Top = 5445
    Width = 10860
    Height = 540
    TabIndex = 13
    Begin CommandButton btncancel
      Caption = "&Cancel"
      Left = 4245
      Top = 45
      Width = 1035
      Height = 465
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
      Picture = "PrAttend1.frx":30A
      DisabledPicture = "PrAttend1.frx":44C
      ToolTipText = "Cancel Changes"
      Style = 1
    End
    Begin CommandButton btnsave
      Caption = "Save"
      Left = 3210
      Top = 45
      Width = 1035
      Height = 465
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
      Picture = "PrAttend1.frx":58E
      DisabledPicture = "PrAttend1.frx":690
      ToolTipText = "Save Records"
      Style = 1
    End
    Begin CommandButton btnexit
      Caption = "Exit"
      Left = 5280
      Top = 45
      Width = 1035
      Height = 465
      TabIndex = 6
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "PrAttend1.frx":7D2
      DisabledPicture = "PrAttend1.frx":914
      ToolTipText = "Exit"
      Style = 1
    End
  End
  Begin Label LblVPrefix
    BackColor = &HD0C7BB&
    Left = 5940
    Top = 300
    Width = 1080
    Height = 255
    TabIndex = 15
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
  Begin Label Label1
    Caption = "P -> Present , A -> Absent , E->Earn Leave, C->Causal Leave,S->Sunday"
    Index = 1
    ForeColor = &H0&
    Left = 1695
    Top = 6510
    Width = 6825
    Height = 240
    TabIndex = 14
    Alignment = 2 'Center
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
  Begin Label Label1
    Caption = "Month/Year"
    Index = 0
    Left = 3315
    Top = 285
    Width = 1200
    Height = 240
    TabIndex = 12
    Alignment = 1 'Right Justify
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
  End
  Begin Shape Shape1
    Left = 1485
    Top = 135
    Width = 9285
    Height = 1110
    Shape = 4
  End
  Begin Label Label1
    Caption = "Absent(B)"
    Index = 4
    Left = 3555
    Top = 5715
    Width = 885
    Height = 240
    Visible = 0   'False
    TabIndex = 11
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Remark"
    Index = 5
    Left = 6660
    Top = 5370
    Width = 720
    Height = 240
    Visible = 0   'False
    TabIndex = 10
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "PrAttend1"

Private global_60 As Long
Private global_64 As Integer
Private global_72 As Integer
Private global_74 As Integer
Private global_56 As Integer

Private Sub Text2_GotFocus() 'E1C914
  'Data Table: 44F1D4
  loc_E1C904: var_88 = "{Home}+{End}"
  loc_E1C90A: Proc_303_0_FBACC8(var_88)
  loc_E1C912: Exit Sub
End Sub

Private Sub Text2_KeyUp(KeyCode As Integer, Shift As Integer) 'E8C1B8
  'Data Table: 44F1D4
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_F0 As Variant
  loc_E8C167: var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_E8C176: var_C8 = CVar(CLng((global_56 + 6))) 'Long
  loc_E8C190: var_F0 = CVar(Me.Text2.Text) 'String
  loc_E8C198: Set var_104 = Me.FGrid1
  loc_E8C19E: LateIdCallSt
  loc_E8C1B6: Exit Sub
End Sub

Private Sub Text3_GotFocus() 'E1C74C
  'Data Table: 44F1D4
  loc_E1C73C: var_88 = "{HOME}+{END}"
  loc_E1C742: Proc_303_0_FBACC8(var_88)
  loc_E1C74A: Exit Sub
End Sub

Private Sub Text3_KeyDown(KeyCode As Integer, Shift As Integer) '10DE864
  'Data Table: 44F1D4
  Dim var_88 As Variant
  Dim var_C0 As Variant
  Dim var_C4 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_104 As Variant
  loc_10DE566: If (CLng(KeyCode) = &H1B) Then
  loc_10DE575:   Me.Text3.Visible = False
  loc_10DE57D:   Exit Sub
  loc_10DE57E:   Exit Sub
  loc_10DE57F: End If
  loc_10DE585: If (KeyCode = &H28) Then
  loc_10DE5F9:   If ((CLng(Me.FGrid1.Rows) > (CLng(Me.FGrid1.Row) + 1)) And (CLng(Me.FGrid1.Col) <> (CLng(Me.FGrid1.Cols) - 1))) Then
  loc_10DE615:     var_E4 = CVar((CLng(Me.FGrid1.Row) + 1)) 'Long
  loc_10DE624:     Me.FGrid1.Row = var_E4
  loc_10DE633:     Call Fgrid1_UnknownEvent_9()
  loc_10DE638:   End If
  loc_10DE63B: Else
  loc_10DE641:   If (KeyCode = &H26) Then
  loc_10DE69D:     If ((CLng(Me.FGrid1.Row) > 1) And (CLng(Me.FGrid1.Col) <> (CLng(Me.FGrid1.Cols) - 1))) Then
  loc_10DE6B9:       var_E4 = CVar((CLng(Me.FGrid1.Row) - 1)) 'Long
  loc_10DE6C8:       Me.FGrid1.Row = var_E4
  loc_10DE6D7:       Call Fgrid1_UnknownEvent_9()
  loc_10DE6DC:     End If
  loc_10DE6DC:   End If
  loc_10DE6DC: End If
  loc_10DE6E2: If (KeyCode = &HD) Then
  loc_10DE6E5:   DoEvents()
  loc_10DE6FD:   var_E4 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_10DE715:   var_104 = CVar(CLng(Me.FGrid1.ColSel)) 'Long
  loc_10DE72F:   var_C0 = CVar(Me.Text3.Text) 'String
  loc_10DE737:   Set var_C4 = Me.FGrid1
  loc_10DE73D:   LateIdCallSt
  loc_10DE765:   Me.Text3.Visible = False
  loc_10DE7A8:   If (CLng(Me.FGrid1.ColSel) = (CLng(Me.FGrid1.Cols) - 3)) Then
  loc_10DE7C4:     var_E4 = CVar((CLng(Me.FGrid1.RowSel) + 1)) 'Long
  loc_10DE7D3:     Me.FGrid1.Row = var_E4
  loc_10DE7F5:     Me.FGrid1.Col = 4
  loc_10DE801:     Set var_88 = Me.FGrid1
  loc_10DE815:   Else
  loc_10DE82E:     var_E4 = CVar((CLng(Me.FGrid1.ColSel) + 1)) 'Long
  loc_10DE83D:     Me.FGrid1.Col = 4
  loc_10DE850:     Set var_88 = Me.FGrid1
  loc_10DE861:   End If
  loc_10DE861: End If
  loc_10DE861: Exit Sub
End Sub

Private Sub Text3_KeyPress(KeyAscii As Integer) 'EAEAE4
  'Data Table: 44F1D4
  Dim KeyAscii As Integer
  loc_EAEAA5: If CBool(InStr(1, CVar("PAECS"), Ucase(Chr(CLng(KeyAscii))), 1) <> 0) Then
  loc_EAEACB:   KeyAscii = Asc(CStr(Ucase(Chr(CLng(KeyAscii)))))
  loc_EAEADB: Else
  loc_EAEADD:   KeyAscii = 0
  loc_EAEAE0: End If
  loc_EAEAE0: Exit Sub
End Sub

Private Sub Text3_KeyUp(KeyCode As Integer, Shift As Integer) 'E6B2E8
  'Data Table: 44F1D4
  Dim var_AC As Variant
  Dim var_CC As Variant
  loc_E6B2AD: var_AC = CVar(CLng(global_64)) 'Long
  loc_E6B2C7: var_CC = CVar(Me.Text3.Text) 'String
  loc_E6B2CF: Set var_E0 = Me.FGrid1
  loc_E6B2D5: LateIdCallSt
  loc_E6B2E7: Exit Sub
End Sub

Private Sub Text3_LostFocus() 'E3DCE8
  'Data Table: 44F1D4
  Dim var_88 As TextBox
  loc_E3DCC8: Me.Text3.Visible = False
  loc_E3DCD4: Set var_88 = Me.FGrid1
  loc_E3DCE5: Exit Sub
End Sub

Private Sub Text3_Validate(Cancel As Boolean) 'F58D60
  'Data Table: 44F1D4
  Dim var_88 As TextBox
  Dim var_C4 As Variant
  loc_F58C8D: If ((Len(Me.Text3.Text) = 1) And (Me.Text3.Text = "P")) Then
  loc_F58CA9:   MsgBox("One half Attendence is not Allowed", &H10, var_D4, var_F4, var_114)
  loc_F58CD4:   If (Me.Text3.Visible = &HFF) Then
  loc_F58CE1:     Me.Text3.SetFocus
  loc_F58CE9:   End If
  loc_F58CE9:   Exit Sub
  loc_F58CEA: End If
  loc_F58CEA: Exit Sub
  loc_F58D04: MsgBox("Leave Cannot Changed from here", &H10, var_D4, var_F4, var_114)
  loc_F58D25: var_C4 = CVar(CLng(global_64)) 'Long
  loc_F58D38: Set var_88 = Me.FGrid1
  loc_F58D3E: LateIdCallSt
  loc_F58D55: Me.Text3.Visible = False
  loc_F58D5D: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 '1333494
  'Data Table: 44F1D4
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_F0 As String
  Dim var_174 As Variant
  Dim var_210 As Variant
  Dim var_254 As Variant
  Dim var_340 As Variant
  Dim var_384 As Variant
  Dim var_110 As TextBox
  Dim var_134 As String
  Dim var_140 As TextBox
  Dim var_1B8 As Integer
  Dim unk_44F1DD As Connection15
  Dim var_1A4 As Recordset15
  Dim var_1A8 As Fields15
  Dim var_1BC As Field20
  Dim var_298 As Integer
  Dim var_284 As Recordset15
  Dim var_288 As Fields15
  Dim var_2EC As Variant
  Dim var_304 As String
  Dim var_310 As TextBox
  Dim var_3C8 As Integer
  Dim var_3B4 As Recordset15
  Dim var_3B8 As Fields15
  Dim var_3CC As Field20
  Dim var_10C As TextBox
  loc_1332DFB: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_1332DFE:   Exit Sub
  loc_1332DFF: End If
  loc_1332E09: var_98 = Me.FGrid1.Rows
  loc_1332E18: var_A8 = 1
  loc_1332E59: If (1 And (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_1332E5C:   Exit Sub
  loc_1332E5D: End If
  loc_1332E7C: If (CLng(Me.FGrid1.Col) > 4) Then
  loc_1332E92:   var_A8 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_1332E97:   var_C8 = 1
  loc_1332EAA:   var_174 = Me.FGrid1.TextMatrix)
  loc_1332EC9:   var_210 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1332EE1:   var_254 = Me.FGrid1.TextMatrix)
  loc_1332F00:   var_340 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1332F18:   var_384 = Me.FGrid1.TextMatrix)
  loc_1332F77:   var_F0 = CStr((CLng(Me.FGrid1.ColSel) - 4))
  loc_1332F99:   Set var_10C = Me.Txt
  loc_1332F9F:   Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(0), var_110, var_114, CStr(Val(CStr(Me.FGrid1.TextMatrix)))) & "/", ((CLng(Me.FGrid1.ColSel) > 4) And (CLng(Me.FGrid1.ColSel) < CLng((global_56 + 5)))), var_384, 1)
  loc_1332FA7:   var_340 = var_110.Text
  loc_1332FD9:   var_134 = CStr((CLng(Me.FGrid1.ColSel) - 4))
  loc_1332FFB:   Set var_13C = Me.Txt
  loc_1333001:   Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(0), var_140, var_144, CStr(Val(var_134)) & "/", (1 And (CDate(var_254 & var_114) <= MemVar_1F950EC)))
  loc_1333009:   var_210 = var_140.Text
  loc_1333022:   var_1B8 = 0
  loc_1333053:   unk_44F1DD.Execute "SELECT Resign_Date from employee where Code='" & CStr(var_174) & "'", var_1A0, -1
  loc_133305B:   var_1A4 = var_1A4.Fields
  loc_1333063:   var_1B8 = var_1A8.Item(var_1A8)
  loc_133306B:   var_1BC = var_1BC.Value
  loc_133307A:   var_298 = 0
  loc_13330AB:   unk_44F1DD.Execute "SELECT Resign_Date from employee where Code='" & CStr(var_254) & "'", var_280, -1
  loc_13330B3:   var_284 = var_284.Fields
  loc_13330BB:   var_298 = var_288.Item(var_288)
  loc_13330D4:   var_2EC = (var_1CC <= var_1CC) And var_29C Or IsNull(CVar(var_29C))
  loc_13330F3:   var_304 = CStr((CLng(Me.FGrid1.Col) - 4))
  loc_1333115:   Set var_30C = Me.Txt
  loc_133311B:   Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(0), var_310, var_314, CStr(Val(var_304)) & "/")
  loc_1333123:   var_2EC = var_310.Text
  loc_133313C:   var_3C8 = 0
  loc_133316D:   unk_44F1DD.Execute "SELECT Joining_Date from employee where Code='" & CStr(var_384) & "'", var_3B0, -1
  loc_1333175:   var_3B4 = var_3B4.Fields
  loc_133317D:   var_3C8 = var_3B8.Item(var_3B8)
  loc_1333185:   var_3CC = var_3CC.Value
  loc_1333228:   If CBool(CDate(CDate(CDate(CDate(var_174 & var_144)) & var_314)) And (var_3DC >= var_3DC)) Then
  loc_1333241:     global_60 = CLng(Me.FGrid1.RowSel)
  loc_1333261:     global_64 = CInt(CLng(Me.FGrid1.ColSel))
  loc_13332A2:     Me.Text3.Left = (CDbl(Me.FGrid1.Left) + CDbl(CLng(Me.FGrid1.CellLeft)))
  loc_13332EF:     Me.Text3.Top = (CDbl(Me.FGrid1.Top) + CDbl(CLng(Me.FGrid1.CellTop)))
  loc_1333317:     var_A8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_133333E:     Me.Text3.Width = CDbl(CLng(Me.FGrid1.ColWidth)))
  loc_1333372:     Me.Text3.Height = CDbl(CLng(Me.FGrid1.CellHeight))
  loc_133338D:     Me.Text3.Visible = True
  loc_13333A8:     var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13333C0:     var_C8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_13333E7:     Me.Text3.Text = CStr(Me.FGrid1.TextMatrix))
  loc_1333416:     var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_133342E:     var_C8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_133344E:     global_68 = CStr(Me.FGrid1.TextMatrix))
  loc_1333471:     Me.Text3.SetFocus
  loc_1333489:     Me.Text3.ZOrder 0
  loc_1333491:   End If
  loc_1333491: End If
  loc_1333491: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A 'E45034
  'Data Table: 44F1D4
  loc_E4500A: If (Cancel = &HD) Then
  loc_E4500D:   DoEvents()
  loc_E45025:   Me.FGrid1.SelectionMode = 0
  loc_E4502D:   Call Fgrid1_UnknownEvent_9()
  loc_E45032: End If
  loc_E45032: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B 'F74FD4
  'Data Table: 44F1D4
  Dim var_C4 As Variant
  Dim var_B4 As MSHFlexGrid
  loc_F74EC9: If (CLng(Me.FGrid1.MouseRow) >= CLng(Me.FGrid1.FixedRows)) Then
  loc_F74ECC:   Exit Sub
  loc_F74ECD: End If
  loc_F74EEC: If (CLng(Me.FGrid1.Col) > 4) Then
  loc_F74EEF:   Exit Sub
  loc_F74EF0: End If
  loc_F74F10: global_72 = CInt(CLng(Me.FGrid1.Col))
  loc_F74F23: If (global_72 <> global_72) Then
  loc_F74F2B:   global_74 = 1
  loc_F74F31: Else
  loc_F74F3D:   global_74 = (global_74 + 1)
  loc_F74F49:   If (global_74 = 3) Then
  loc_F74F51:     global_74 = 1
  loc_F74F54:   End If
  loc_F74F54: End If
  loc_F74F58: Set var_B4 = Me.FGrid1
  loc_F74F63: var_B4.Redraw = False
  loc_F74F74: var_B4.Row = 1
  loc_F74F8B: var_C4 = CVar((CLng(var_B4.Rows) - 1)) 'Long
  loc_F74F93: var_B4.RowSel = 1
  loc_F74FAA: var_B4.Col = CVar(CLng(global_72))
  loc_F74FC8: var_B4.Redraw = True
  loc_F74FCF: Set var_B4 = Nothing 
  loc_F74FD3: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_13 'DFD2EC
  'Data Table: 44F1D4
  loc_DFD2E8: Exit Sub
End Sub

Private Sub btncancel_Click() 'EAB9F8
  'Data Table: 44F1D4
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  loc_EAB978: On Error Goto loc_EAB9B2
  loc_EAB98E: Me.FGrid1.Rows = 1
  loc_EAB996: var_94 = vbNullString
  loc_EAB9A0: Set var_A8 = Me.FGrid1
  loc_EAB9B1: Exit Sub
  loc_EAB9B2: ' Referenced from: EAB978
  loc_EAB9BA: Set var_A8 = Err()
  loc_EAB9C0: Call 0.Method_arg_2C (var_AC, FGrid1.DispID_10000)
  loc_EAB9E1: MsgBox(CVar(var_AC), &H10, "Information", var_DC, var_FC)
  loc_EAB9F4: Exit Sub
  loc_EAB9F5: Exit Sub
  loc_EAB9F6: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F10C14
  'Data Table: 44F1D4
  Dim var_9C As TextBox
  Dim var_90 As TextBox
  loc_F10B4A: If (Cancel = CInt(0)) Then
  loc_F10B57:   Set var_8C = Me.Txt
  loc_F10B5D:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F10B7D:   Set var_98 = Me.Txt
  loc_F10B83:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_F10B8B:   var_9C.Text = Proc_6_120_133AEC8(var_90)
  loc_F10BAB:   Set var_8C = Me.Txt
  loc_F10BB1:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F10BF5:   Me.LblVPrefix.Caption = CStr(Format(CDate(CDate(var_90.Text)), "yyyy"))
  loc_F10C13: End If
  loc_F10C13: Exit Sub
End Sub

Private Sub btnExit_Click() 'E1CB74
  'Data Table: 44F1D4
  loc_E1CB69: Me.Global.Unload Me
  loc_E1CB71: Exit Sub
End Sub

Private Sub Form_Load() 'EF3264
  'Data Table: 44F1D4
  Dim var_D0 As String
  Dim var_CC As TextBox
  loc_EF31A0: On Error Goto loc_EF321F
  loc_EF31CB: var_D0 = CStr(Format(MemVar_1F950EC, "MMM/yyyy"))
  loc_EF31DA: Set var_C8 = Me.Txt
  loc_EF31E0: Call 0.Method_Form_Load0 (CInt(0), var_CC, var_D0)
  loc_EF31E8: var_CC.Text = 1
  loc_EF3216: Proc_6_23_DFC5B8(Me, 7500)
  loc_EF321E: Exit Sub
  loc_EF321F: ' Referenced from: EF31A0
  loc_EF3227: Set var_C8 = Err()
  loc_EF322D: Call 0.Method_arg_2C (var_D0, 11750)
  loc_EF324E: MsgBox(CVar(var_D0), &H10, "Information", var_E4, var_104)
  loc_EF3261: Exit Sub
  loc_EF3262: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E218A4
  'Data Table: 44F1D4
  loc_E2188A: If (KeyCode = &HD) Then
  loc_E2189B:   Proc_303_0_FBACC8("	")
  loc_E218A3: End If
  loc_E218A3: Exit Sub
End Sub

Private Sub btnsave_Click() '1481124
  'Data Table: 44F1D4
  Dim var_B0 As Variant
  Dim var_9A As Integer
  Dim var_128 As Variant
  Dim var_C0 As Variant
  Dim var_134 As String
  Dim var_154 As Double
  Dim var_12C As String
  Dim var_138 As String
  Dim var_13C As String
  Dim var_100 As Variant
  Dim var_94 As Double
  Dim var_130 As String
  Dim var_15C As Variant
  Dim var_F0 As Variant
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_17C As Variant
  Dim unk_44F1DD As Connection15
  Dim var_E0 As Variant
  Dim var_124 As Variant
  Dim var_1D0 As String
  Dim var_1FC As Variant
  Dim var_158 As Variant
  Dim var_1E0 As Variant
  Dim var_2CC As Variant
  Dim var_31C As Variant
  Dim var_32C As Variant
  Dim var_28C As Variant
  Dim var_3F0 As Variant
  Dim var_430 As Variant
  loc_148057C: On Error Goto loc_1481093
  loc_148058D: var_B0 = "Entry Blocked by Sanjeev 23-04-2006"
  loc_1480598: MsgBox(var_B0, 0, var_E0, var_100, var_120)
  loc_14805A8: Exit Sub
  loc_14805AB: var_9A = 0
  loc_14805BC: Set var_124 = Me.Txt
  loc_14805C2: Call 0.Method_btnsave_Click0 (CInt(0), var_128)
  loc_14805FC: If (Month(CDate(CDate(var_128.Text))) = 12) Then
  loc_148060D:   Set var_124 = Me.Txt
  loc_1480613:   Call 0.Method_btnsave_Click0 (CInt(0), var_128)
  loc_148065C:   var_12C = "01/" & "1"
  loc_148066F:   var_13C = CStr((Val(CStr(Year(CDate(CDate(var_128.Text))))) + CDbl(1)))
  loc_1480683:   var_94 = CDate(Format(CVar(var_12C & "/" & var_13C), "dd/mm/yyyy"))
  loc_14806AA: Else
  loc_14806B8:   Set var_124 = Me.Txt
  loc_14806BE:   Call 0.Method_btnsave_Click0 (CInt(0), var_128, var_12C, var_94)
  loc_14806C6:   1 = var_128.Text
  loc_14806DF:   var_130 = CStr(Month(CDate(CDate(var_12C))))
  loc_14806E8:   var_154 = Val(var_130)
  loc_14806F9:   Set var_158 = Me.Txt
  loc_14806FF:   Call 0.Method_btnsave_Click0 (CInt(0), var_15C, var_13C, var_154)
  loc_1480707:   1 = var_15C.Text
  loc_148073E:   var_134 = CStr((var_154 + CDbl(1)))
  loc_1480760:   var_94 = CDate(Format(CVar("1/" & CStr(Year(CDate(CDate(var_128.Text)))) & "/") & Year(CDate(CDate(var_13C))), "dd/mm/yyyy"))
  loc_148078E: End If
  loc_148079C: Set var_124 = Me.Txt
  loc_14807A2: Call 0.Method_btnsave_Click0 (CInt(0), var_128, var_12C, var_94)
  loc_14807AA: 1 = var_128.Text
  loc_14807BD: Set var_158 = Me.Txt
  loc_14807C3: Call 0.Method_btnsave_Click0 (CInt(0), var_15C, var_130)
  loc_14807CB: 1 = var_15C.Text
  loc_14807EA: var_C0 = CDate(CDate(var_12C))
  loc_14807F1: var_100 = Format(var_C0, "MMM")
  loc_1480813: var_120 = CDate(CDate(var_130))
  loc_1480822: var_17C = (1 + Format(var_120, "YYYY"))
  loc_1480827: var_98 = CStr("dd/mm/yyyy")
  loc_1480868: var_130 = "Select * From Salary Where site_code='" & MemVar_1F95070 & "' and Mth_Year='"
  loc_1480876: var_138 = var_130 & var_98 & "'"
  loc_148087F: unk_44F1DD.Execute var_138, var_C0, -1
  loc_148088A: Set var_A0 = var_124
  loc_14808A7: var_190 = Me.Recordset15.RecordCount
  loc_14808B5: If (var_190 > 0) Then
  loc_14808BE:   Call 0.Method_arg_50 (var_130, var_124, 1, var_100)
  loc_14808E5:   MsgBox(CVar("Salary Already Created, " & vbCrLf & " You Can Not Edit Record ..."), &H40, CVar(var_130), var_100, var_120)
  loc_14808F8:   Exit Sub
  loc_14808F9: End If
  loc_14808F9: var_B0 = 1
  loc_1480902: var_F0 = 1
  loc_1480931: If (CStr(Me.FGrid1.TextMatrix)) = vbNullString) Then
  loc_1480934:   Exit Sub
  loc_1480935: End If
  loc_148093E: unk_44F1DD.BeginTrans var_190
  loc_1480953: Set var_124 = Me.Txt
  loc_1480959: Call 0.Method_btnsave_Click0 (CInt(0), var_128, 1, var_F0, var_B0)
  loc_14809AC: var_16C = CVar("DELETE FROM attendence WHERE site_code='" & MemVar_1F95070 & "' and MTH_YEAR='") & Format(CVar(var_128), "MMMyyyy") & "'" 
  loc_14809BA: unk_44F1DD.Execute CStr(var_16C), "dd/mm/yyyy", -1
  loc_14809E6: If (MemVar_1F953B0 = "A") Then
  loc_14809F4:   Set var_124 = Me.Txt
  loc_14809FA:   Call 0.Method_btnsave_Click0 (CInt(0), var_128, var_158, 1, 1)
  loc_1480A41:   var_130 = CStr(CVar("DELETE FROM attend WHERE site_code='" & MemVar_1F95070 & "' and RIGHT(V_DATE,8)='") & Right(CVar(var_128), 8) & "'")
  loc_1480A4B:   unk_44F1DD.Execute var_130, var_16C, -1
  loc_1480A70: Else
  loc_1480A78:   If (MemVar_1F953B0 = "S") Then
  loc_1480A86:     Set var_124 = Me.Txt
  loc_1480A8C:     Call 0.Method_btnsave_Click0 (CInt(0), var_128, var_158, 1)
  loc_1480AC0:     Set var_158 = Me.Txt
  loc_1480AC6:     Call 0.Method_btnsave_Click0 (CInt(0), var_15C, 1, 1)
  loc_1480B19:     var_16C = CVar("DELETE FROM attend WHERE site_code='" & MemVar_1F95070 & "' and MONTH(V_DATE)='") & Format(CVar(var_128), "mm") & "' and Year(V_DATE)='" 
  loc_1480B37:     unk_44F1DD.Execute CStr(var_16C & Format(CVar(var_15C), "yyyy") & "'"), var_1E0, -1
  loc_1480B67:   End If
  loc_1480B67: End If
  loc_1480B8C: For var_1E8 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_1E8 'Integer
  loc_1480B96:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_1480B9B:   var_F0 = 1
  loc_1480BCA:   If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_1480BD0:     var_8C = vbNullString
  loc_1480BE1:     For var_1EC = 5 To (global_56 + 4): var_88 = var_1EC 'Integer
  loc_1480BEE:       var_B0 = CVar(CLng(var_86)) 'Long
  loc_1480C15:       var_8C = CVar(CLng(var_88)) & CStr(Me.FGrid1.TextMatrix))
  loc_1480C25:       var_B0 = CVar(CLng(var_86)) 'Long
  loc_1480C2E:       var_F0 = CVar(CLng(var_88)) 'Long
  loc_1480C4E:       var_100 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1480C56:       var_1D0 = vbNullString
  loc_1480C7C:       var_14C = Me.FGrid1.TextMatrix)
  loc_1480CC4:       Set var_158 = Me.FGrid1
  loc_1480CF8:       var_2CC = CVar(CLng(var_88)) And (Ucase(Trim(CVar(CStr(var_158.TextMatrix))))) <> "SS")
  loc_1480D78:       If CBool(CVar(CLng(var_88)) And (Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))) <> "HH")) Then
  loc_1480D9C:         var_E0 = "00"
  loc_1480DA8:         var_C0 = CVar((var_88 - 4)) 'Integer
  loc_1480DAE:         var_100 = Format(Me.FGrid1.TextMatrix), var_E0)
  loc_1480DD0:         Set var_128 = Me.Txt
  loc_1480DD6:         Call 0.Method_btnsave_Click0 (CInt(0), var_158, var_138, CStr(var_100) & "/", 1, 1, CVar(CLng(var_86)))
  loc_1480DDE:         var_2CC = var_158.Text
  loc_1480DE7:         var_120 = CVar(CVar(CLng(var_86)) & var_138) 'String
  loc_1480DED:         Proc_6_7_F26918(var_14C, var_120, CVar(CLng(var_88)) And (Ucase(Trim(CVar(CStr(var_14C)))) <> "PP"), CVar(CLng(var_86)))
  loc_1480DF6:         var_110 = CVar(CLng(var_86)) 'Long
  loc_1480DFB:         var_1FC = 1
  loc_1480E36:         var_28C = Me.FGrid1.TextMatrix)
  loc_1480E72:         var_32C = Me.FGrid1.TextMatrix)
  loc_1480EB2:         var_3F0 = CVar(Proc_6_15_EF37AC(var_32C, CVar(CLng(var_88)), CVar(CLng(var_86)), var_28C, CVar(CLng(var_88)), CVar(CLng(var_86)))) 'String
  loc_1480ED1:         var_130 = "Insert Into Attend(V_Prefix,V_Date,Emp_Code,FirstShift,SecondShift,SIte_Code,U_Name,U_EntDt,U_AE) Values ('" & Me.LblVPrefix.Caption
  loc_1480F0B:         var_31C = CVar(var_130 & "',") & var_14C & ",'" & CVar(CStr(Me.FGrid1.TextMatrix))) & "','" & Left(CVar(CStr(var_28C)), 1) & "','" 
  loc_1480F48:         var_430 = var_31C & Right(CVar(CStr(var_32C)), 1) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & Format(var_3F0, "dd/MMM/yyyy") 
  loc_1480F5F:         unk_44F1DD.Execute CStr(var_430 & ",'A')"), var_474, -1
  loc_1480FCB:       End If
  loc_1480FCE:     Next var_1EC 'Integer
  loc_1480FD7:     var_B0 = CVar(CLng(var_86)) 'Long
  loc_1480FDC:     var_F0 = 1
  loc_1481016:     var_130 = "insert into attendence(MTH_YEAR,emp_code,Attn_Str,Site_Code) values ('" & var_98 & "','"
  loc_1481021:     var_138 = var_130 & CStr(Me.FGrid1.TextMatrix))
  loc_148104D:     unk_44F1DD.Execute var_138 & "','" & var_8C & "','" & MemVar_1F95070 & "')", var_E0, -1
  loc_1481075:   End If
  loc_1481078: Next var_1E8 'Integer
  loc_1481083: unk_44F1DD.CommitTrans
  loc_148108A: var_9A = 0
  loc_148108D: Call btncancel_Click()
  loc_1481092: Exit Sub
  loc_1481093: ' Referenced from: 148057C
  loc_1481099: If (var_9A = 1) Then
  loc_14810A2:   unk_44F1DD.RollbackTrans
  loc_14810A7: End If
  loc_14810AF: Set var_124 = Err()
  loc_14810B5: Call 0.Method_arg_1C (var_190)
  loc_14810C2: Set var_128 = Err()
  loc_14810C8: Call 0.Method_arg_2C (var_130)
  loc_14810D3: Call 0.Method_arg_50 (var_138)
  loc_14810FF: MsgBox(CVar(CStr(var_190) & " : " & var_130), &H10, CVar(var_138), var_100, var_120)
  loc_148111F: Exit Sub
  loc_1481120: Exit Sub
End Sub

Private Sub Command1_Click(Index As Integer) '1619DE4
  'Data Table: 44F1D4
  Dim var_B4 As Variant
  Dim var_126 As Integer
  Dim var_C4 As Variant
  Dim var_12C As Variant
  Dim Command1_Click4 As Variant
  Dim var_F4 As Variant
  Dim var_140 As Variant
  Dim var_94 As Long
  Dim var_D4 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_158 As String
  Dim unk_44F1DD As Connection15
  Dim var_88 As Recordset15
  Dim var_130 As Field20
  Dim var_114 As Variant
  Dim var_E4 As Variant
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim var_8C As Recordset15
  Dim var_1BC As Variant
  Dim var_168 As Variant
  Dim var_188 As Variant
  Dim var_1D4 As Variant
  Dim var_174 As Variant
  Dim var_178 As Variant
  Dim var_1DC As String
  Dim var_230 As Variant
  Dim var_2D8 As Variant
  Dim var_2DC As String
  Dim var_38C As Date
  Dim var_1C4 As Field20
  Dim var_200 As Variant
  Dim var_260 As Variant
  Dim var_1B8 As Variant
  Dim var_1E0 As Fields15
  Dim var_2A8 As Variant
  loc_16189A4: On Error Goto loc_1619DA5
  loc_16189B5: var_B4 = "Entry Blocked by Sanjeev 23-04-2006"
  loc_16189C0: MsgBox(var_B4, 0, var_E4, var_104, var_124)
  loc_16189D0: Exit Sub
  loc_16189D4: var_126 = Index
  loc_16189DD: If (var_126 = 0) Then
  loc_16189EB:   Set var_12C = Me.Txt
  loc_16189F1:   Call 0.Method_Command1_Click0 (CInt(0), var_130)
  loc_1618A30:   global_56 = CInt(Day(DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CVar(var_130)))))
  loc_1618A4B:   Command1_Click4 = Me.FGrid1.Text
  loc_1618A69:   Me.FGrid1.Rows = 1
  loc_1618A84:   Me.FGrid1.FixedCols = 3
  loc_1618A96:   var_B4 = CVar(CLng((global_56 + 7))) 'Long
  loc_1618AA5:   Me.FGrid1.Cols = 3
  loc_1618AAD:   var_B4 = 0
  loc_1618AB6:   var_F4 = &H12C
  loc_1618AC3:   Set var_12C = Me.FGrid1
  loc_1618AC9:   LateIdCallSt
  loc_1618AD4:   var_B4 = 1
  loc_1618ADD:   var_F4 = &H2BC
  loc_1618AEA:   Set var_12C = Me.FGrid1
  loc_1618AF0:   LateIdCallSt
  loc_1618AFB:   var_B4 = 2
  loc_1618B04:   var_F4 = &H7D0
  loc_1618B11:   Set var_12C = Me.FGrid1
  loc_1618B17:   LateIdCallSt
  loc_1618B22:   var_B4 = 0
  loc_1618B31:   var_F4 = CVar(CInt(1)) 'Integer
  loc_1618B39:   Set var_12C = Me.FGrid1
  loc_1618B3F:   LateIdCallSt
  loc_1618B4A:   var_B4 = 1
  loc_1618B59:   var_F4 = CVar(CInt(1)) 'Integer
  loc_1618B61:   Set var_12C = Me.FGrid1
  loc_1618B67:   LateIdCallSt
  loc_1618B72:   var_B4 = 0
  loc_1618B7B:   var_F4 = 0
  loc_1618B84:   var_140 = "Sr."
  loc_1618B8E:   Set var_12C = Me.FGrid1
  loc_1618B94:   LateIdCallSt
  loc_1618B9F:   var_B4 = 0
  loc_1618BA8:   var_F4 = 1
  loc_1618BB1:   var_140 = "Emp.Code"
  loc_1618BBB:   Set var_12C = Me.FGrid1
  loc_1618BC1:   LateIdCallSt
  loc_1618BCC:   var_B4 = 1
  loc_1618BD5:   var_F4 = 0
  loc_1618BE2:   Set var_12C = Me.FGrid1
  loc_1618BE8:   LateIdCallSt
  loc_1618BF3:   var_B4 = 2
  loc_1618C02:   var_F4 = CVar(CInt(1)) 'Integer
  loc_1618C0A:   Set var_12C = Me.FGrid1
  loc_1618C10:   LateIdCallSt
  loc_1618C1B:   var_B4 = 0
  loc_1618C24:   var_F4 = 2
  loc_1618C2D:   var_140 = "Employee Name"
  loc_1618C37:   Set var_12C = Me.FGrid1
  loc_1618C3D:   LateIdCallSt
  loc_1618C48:   var_B4 = 3
  loc_1618C51:   var_F4 = 0
  loc_1618C5E:   Set var_12C = Me.FGrid1
  loc_1618C64:   LateIdCallSt
  loc_1618C6F:   var_B4 = 3
  loc_1618C7E:   var_F4 = CVar(CInt(1)) 'Integer
  loc_1618C86:   Set var_12C = Me.FGrid1
  loc_1618C8C:   LateIdCallSt
  loc_1618C97:   var_B4 = 0
  loc_1618CA0:   var_F4 = 3
  loc_1618CA9:   var_140 = "Father Name"
  loc_1618CB3:   Set var_12C = Me.FGrid1
  loc_1618CB9:   LateIdCallSt
  loc_1618CC4:   var_B4 = 4
  loc_1618CCD:   var_F4 = 0
  loc_1618CDA:   Set var_12C = Me.FGrid1
  loc_1618CE0:   LateIdCallSt
  loc_1618CEB:   var_B4 = 4
  loc_1618CFA:   var_F4 = CVar(CInt(1)) 'Integer
  loc_1618D02:   Set var_12C = Me.FGrid1
  loc_1618D08:   LateIdCallSt
  loc_1618D13:   var_B4 = 0
  loc_1618D1C:   var_F4 = 4
  loc_1618D25:   var_140 = "Post"
  loc_1618D2F:   Set var_12C = Me.FGrid1
  loc_1618D35:   LateIdCallSt
  loc_1618D4B:   For var_154 = 1 To global_56: var_128 = var_154 'Integer
  loc_1618D58:     var_B4 = CVar(CLng((var_128 + 4))) 'Long
  loc_1618D5D:     var_F4 = &H12C
  loc_1618D6A:     Set var_12C = Me.FGrid1
  loc_1618D70:     LateIdCallSt
  loc_1618D82:     var_B4 = CVar(CLng((var_128 + 4))) 'Long
  loc_1618D8D:     var_F4 = CVar(CInt(4)) 'Integer
  loc_1618D95:     Set var_12C = Me.FGrid1
  loc_1618D9B:     LateIdCallSt
  loc_1618DA6:     var_B4 = 0
  loc_1618DB6:     var_F4 = CVar(CLng((var_128 + 4))) 'Long
  loc_1618DC0:     var_C4 = CVar(CStr(var_128)) 'String
  loc_1618DC8:     Set var_12C = Me.FGrid1
  loc_1618DCE:     LateIdCallSt
  loc_1618DDF:   Next var_154 'Integer
  loc_1618DEE:   var_B4 = CVar(CLng((global_56 + 5))) 'Long
  loc_1618DF3:   var_F4 = 0
  loc_1618E00:   Set var_12C = Me.FGrid1
  loc_1618E06:   LateIdCallSt
  loc_1618E1B:   var_B4 = CVar(CLng((global_56 + 5))) 'Long
  loc_1618E26:   var_F4 = CVar(CInt(1)) 'Integer
  loc_1618E2E:   Set var_12C = Me.FGrid1
  loc_1618E34:   LateIdCallSt
  loc_1618E3F:   var_B4 = 0
  loc_1618E52:   var_F4 = CVar(CLng((global_56 + 5))) 'Long
  loc_1618E57:   var_140 = "Absent(B)"
  loc_1618E61:   Set var_12C = Me.FGrid1
  loc_1618E67:   LateIdCallSt
  loc_1618E7C:   var_B4 = CVar(CLng((global_56 + 6))) 'Long
  loc_1618E81:   var_F4 = 0
  loc_1618E8E:   Set var_12C = Me.FGrid1
  loc_1618E94:   LateIdCallSt
  loc_1618EA9:   var_B4 = CVar(CLng((global_56 + 6))) 'Long
  loc_1618EB4:   var_F4 = CVar(CInt(1)) 'Integer
  loc_1618EBC:   Set var_12C = Me.FGrid1
  loc_1618EC2:   LateIdCallSt
  loc_1618EE0:   var_F4 = CVar(CLng((global_56 + 6))) 'Long
  loc_1618EF5:   LateIdCallSt
  loc_1618F00:   Call Proc_312_24_EC400C(Me.FGrid1, "Remarks", var_F4, 0, Me.FGrid1, var_F4, 0, Me.FGrid1)
  loc_1618F0A:   var_94 = 0
  loc_1618F16:   Set var_12C = Me.FGrid1
  loc_1618F1C:   var_12C.Redraw = False
  loc_1618F27:   var_A4 = vbNullString
  loc_1618F57:   var_D4 = "SELECT EMPLOYEE.*,DESIG.Name as Desg_Desc FROM EMPLOYEE LEFT JOIN DESIG ON DESIG.Code=EMPLOYEE.Designation where EMployee.site_code='"
  loc_1618F63:   var_F4 = "' ORDER BY DESIG.Name,Employee.NAME"
  loc_1618F76:   unk_44F1DD.Execute CStr(var_D4 & Left(Trim(MemVar_1F95078), 1) & var_F4), var_168, -1
  loc_1618F81:   Set var_88 = var_12C
  loc_1618FAB:   If (var_88.RecordCount > 0) Then
  loc_1618FAE:     ' Referenced from: 1619D62
  loc_1618FBD:     If Not(var_88.EOF) Then
  loc_1618FC6:       var_B4 = "Code"
  loc_1618FD2:       var_12C = var_88.Fields
  loc_1618FF2:       Set var_174 = Me.Txt
  loc_1618FF8:       Call 0.Method_Command1_Click0 (CInt(0), var_178, var_12C, var_94, var_F4, var_B4)
  loc_1619046:       var_198 = "SELECT * FROM ATTENDENCE WHERE EMP_CODE='" & var_12C.Item(var_B4).Value & "' AND MTH_YEAR='" & Format(CVar(var_178), "MMMyyyy") 
  loc_161905D:       unk_44F1DD.Execute CStr(var_198 & "'"), var_1B8, -1
  loc_1619068:       Set var_8C = var_1BC
  loc_16190E3:       If (var_8C.RecordCount > 0) Then
  loc_16190F6:         For var_1C0 = 1 To (global_56 * 2) Step 2: var_128 = var_1C0 'Integer
  loc_1619107:           Set var_174 = Me.Txt
  loc_161910D:           Call 0.Method_Command1_Click0 (CInt(0), var_178, 1, CInt(Val(Format$(Date, "d"))), 1, 1, var_1BC)
  loc_1619145:           var_130 = var_88.Fields.Item("Resign_Date")
  loc_1619157:           var_140 = Not(IsNull(CVar(var_130)))
  loc_161916B:           var_158 = CStr((Int((CDbl(var_128) / CDbl(2))) + CDbl(1)))
  loc_1619192:           var_114 = CDate(CDate(CVar(Format$(Date, "d") & "/") & Right(CVar(var_178), 8)))
  loc_16191A1:           var_F4 = "Short Date"
  loc_16191AF:           var_188 = CVar(var_88.Fields.Item("Resign_Date")) 'Address
  loc_16191B6:           var_1A8 = Format(var_188, var_F4)
  loc_16191EB:           If CBool(1 And (1 >= var_1A8)) Then
  loc_1619212:             var_A0 = CStr(CVar(vbNullString) & Chr(9) & "  ")
  loc_1619221:           Else
  loc_1619232:             Call 0.Method_Command1_Click0 (CInt(0), var_130, var_114, var_140, 1, 1)
  loc_1619247:             var_158 = CStr((Int((CDbl(var_128) / CDbl(2))) + CDbl(1)))
  loc_1619275:             Proc_6_7_F26918(var_188, CDate(CDate(CVar(Format$(Date, "d") & "/") & Right(CVar(var_130), 8))), Me.Txt, var_140)
  loc_1619285:             Set var_1C4 = Me.Txt
  loc_161928B:             Call 0.Method_Command1_Click0 (CInt(0), var_1E0, var_F4)
  loc_16192DB:             Set var_2E0 = Me.Txt
  loc_16192E1:             Call 0.Method_Command1_Click0 (CInt(0), var_2E4, 1)
  loc_1619308:             var_114 = 0
  loc_1619334:             unk_44F1DD.Execute CStr("select count(*) from holiday where VDate=" & var_188), var_1A8, -1
  loc_161933C:             var_174 = var_174.Fields
  loc_1619344:             var_114 = var_178.Item(var_178)
  loc_161934C:             var_1BC = var_1BC.Value
  loc_161935A:             var_1D4 = (var_1B8 > 0)
  loc_1619383:             var_1DC = CStr((Int((CDbl(var_128) / CDbl(2))) + CDbl(1)))
  loc_16193D0:             var_2D8 = 1 And (Ucase(Format(CVar(var_1DC & "/") & Format(CVar(var_1E0), "MMM/yyyy"), "DDD")) <> Ucase(Left(CVar(var_88.Fields.Item("OffDay")), 3)))
  loc_16193E4:             var_2DC = CStr((Int((CDbl(var_128) / CDbl(2))) + CDbl(1)))
  loc_161940B:             var_38C = CDate(CDate(CVar(var_2DC & "/") & Right(CVar(var_2E4), 8)))
  loc_161949C:             If CBool(1 And (1 >= Format(CVar(var_88.Fields.Item("Joining_Date")), "Short Date"))) Then
  loc_16194C3:               var_A0 = CStr(CVar(var_A0) & Chr(9) & "HH")
  loc_16194D2:             Else
  loc_1619528:               var_A0 = CStr(CVar(var_A0) & Chr(9) & Mid(CVar(var_8C.Fields.Item("ATTN_STR")), CLng(var_128), 2))
  loc_161953D:             End If
  loc_161953D:           End If
  loc_1619540:         Next var_1C0 'Integer
  loc_161954E:         var_94 = (var_94 + 1)
  loc_16195C8:         var_178 = var_88.Fields.Item("Name")
  loc_161961A:         var_200 = CVar(var_94) & Chr(9) & var_88.Fields.Item("Code").Value & Chr(9) & var_178.Value & Chr(9) & var_88.Fields.Item("F_Name").Value 
  loc_1619647:         var_260 = CVar(CStr(var_200 & Chr(9) & CVar(var_90) & CVar(var_A0))) 'String
  loc_161964F:         Set var_1E0 = Me.FGrid1
  loc_16196A6:         Me.FGrid1.FixedRows = 1
  loc_16196B1:       Else
  loc_16196BC:         For var_3B0 = 1 To global_56:   var_128 = var_3B0 'Integer
  loc_16196CD:           Set var_174 = Me.Txt
  loc_16196D3:           Call 0.Method_Command1_Click0 (CInt(0), var_178, 1)
  loc_161971D:           var_140 = Not(IsNull(CVar(var_88.Fields.Item("Resign_Date"))))
  loc_161974D:           var_114 = CDate(CDate(CVar(CStr(var_128) & "/") & Right(CVar(var_178), 8)))
  loc_16197A6:           If CBool(1 And (1 >= Format(CVar(var_88.Fields.Item("Resign_Date")), "Short Date"))) Then
  loc_16197CD:             var_A0 = CStr(CVar(var_A0) & Chr(9) & "  ")
  loc_16197DC:           Else
  loc_16197E7:             Set var_174 = Me.Txt
  loc_16197ED:             Call 0.Method_Command1_Click0 (CInt(0), var_178, var_114, var_140)
  loc_161980C:             var_130 = var_88.Fields.Item("Joining_Date")
  loc_161986A:             If (var_130.Value > CDate(CDate(CVar(CStr(var_128) & "/") & Right(CVar(var_178), 8)))) Then
  loc_1619891:               var_A0 = CStr(CVar(var_A0) & Chr(9) & "  ")
  loc_16198A0:             Else
  loc_16198AB:               Set var_12C = Me.Txt
  loc_16198B1:               Call 0.Method_Command1_Click0 (CInt(0), var_130, FGrid1.DispID_10000)
  loc_16198E1:               var_178 = var_88.Fields.Item("OffDay")
  loc_1619925:               var_1A8 = Ucase(Format(CDate(CDate(CVar(CStr(var_128) & "/") & Right(CVar(var_130), 8))), "DDD"))
  loc_1619935:               var_1B8 = CVar(var_178) 'Address
  loc_1619976:               If (var_1A8 = Ucase(Left(var_1B8, 3))) Then
  loc_161999D:                 var_A0 = CStr(CVar(var_A0) & Chr(9) & "SS")
  loc_16199AC:               Else
  loc_16199B7:                 Set var_12C = Me.Txt
  loc_16199BD:                 Call 0.Method_Command1_Click0 (CInt(0), var_130, 1)
  loc_1619A0A:                 var_188 = "Short Date"
  loc_1619A39:                 If (1 <= Format(Date, var_188)) Then
  loc_1619A47:                   Set var_12C = Me.Txt
  loc_1619A4D:                   Call 0.Method_Command1_Click0 (CInt(0), var_130, 1, CDate(CDate(CVar(CStr(var_128) & "/") & Right(CVar(var_130), 8))))
  loc_1619A85:                   Proc_6_7_F26918(var_188, CDate(CDate(CVar(CStr(var_128) & "/") & Right(CVar(var_130), 8))), 1)
  loc_1619A90:                   var_114 = 0
  loc_1619ABC:                   unk_44F1DD.Execute CStr("select count(*) from holiday where VDate=" & var_188), var_1A8, -1
  loc_1619AC4:                   var_174 = var_174.Fields
  loc_1619ACC:                   var_114 = var_178.Item(var_178)
  loc_1619AD4:                   var_1BC = var_1BC.Value
  loc_1619B0D:                   If (var_1B8 > 0) Then
  loc_1619B34:                     var_A0 = CStr(CVar(var_A0) & Chr(9) & "HH")
  loc_1619B43:                   Else
  loc_1619B67:                     var_A0 = CStr(CVar(var_A0) & Chr(9) & "PP")
  loc_1619B73:                   End If
  loc_1619B76:                 Else
  loc_1619B9A:                   var_A0 = CStr(CVar(var_A0) & Chr(9) & "  ")
  loc_1619BA6:                 End If
  loc_1619BA6:               End If
  loc_1619BA6:             End If
  loc_1619BA6:           End If
  loc_1619BA9:         Next var_3B0 'Integer
  loc_1619BB7:         var_94 = (var_94 + 1)
  loc_1619BBF:         var_158 = CStr(var_94)
  loc_1619BC6:         var_E4 = CVar(var_158 & ".  ") 'String
  loc_1619BF3:         var_104 = var_E4 & var_88.Fields.Item("Desg_Desc").Value 
  loc_1619BFF:         var_124 = Chr(9)
  loc_1619CB9:         var_230 = var_104 & var_124 & var_88.Fields.Item("Code").Value & Chr(9) & var_88.Fields.Item("Name").Value & Chr(9) & var_88.Fields.Item("F_Name").Value 
  loc_1619CE6:         var_2A8 = CVar(CStr(var_230 & Chr(9) & CVar(var_90) & CVar(var_A0))) 'String
  loc_1619CEE:         Set var_288 = Me.FGrid1
  loc_1619D52:         Me.FGrid1.FixedRows = 1
  loc_1619D5A:       End If
  loc_1619D5D:       var_88.MoveNext
  loc_1619D62:       GoTo loc_1618FAE
  loc_1619D65:     End If
  loc_1619D65:   End If
  loc_1619D73:   Me.FGrid1.Redraw = True
  loc_1619D80:   Set var_88 = Nothing
  loc_1619D86: Else
  loc_1619D8C:   If (var_126 = 1) Then
  loc_1619D9C:     Me.Global.Unload Me
  loc_1619DA4:   End If
  loc_1619DA4: End If
  loc_1619DA4: Exit Sub
  loc_1619DA5: ' Referenced from: 16189A4
  loc_1619DAD: Set var_12C = Err()
  loc_1619DB3: Call 0.Method_arg_2C (var_158, FGrid1.DispID_10000)
  loc_1619DCC: MsgBox(CVar(var_158), &H10, var_E4, var_104, var_124)
  loc_1619DDF: Exit Sub
  loc_1619DE0: Exit Sub
End Sub

Private Sub Text1_GotFocus() 'E1C7E4
  'Data Table: 44F1D4
  loc_E1C7D4: var_88 = "{Home}+{End}"
  loc_E1C7DA: Proc_303_0_FBACC8(var_88)
  loc_E1C7E2: Exit Sub
End Sub

Private Sub Text1_KeyDown(KeyCode As Integer, Shift As Integer) 'E41CA0
  'Data Table: 44F1D4
  loc_E41C91: Proc_6_41_FA1734(Me.Text1, KeyCode)
  loc_E41C9D: Exit Sub
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer) 'E44DD8
  'Data Table: 44F1D4
  loc_E44DC9: Proc_6_42_129B55C(Me.Text1, KeyAscii)
  loc_E44DD5: Exit Sub
End Sub

Private Sub Text1_KeyUp(KeyCode As Integer, Shift As Integer) 'E8C310
  'Data Table: 44F1D4
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_F0 As Variant
  loc_E8C2BF: var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_E8C2CE: var_C8 = CVar(CLng((global_56 + 5))) 'Long
  loc_E8C2E8: var_F0 = CVar(Me.Text1.Text) 'String
  loc_E8C2F0: Set var_104 = Me.FGrid1
  loc_E8C2F6: LateIdCallSt
  loc_E8C30E: Exit Sub
End Sub

Private Sub Text1_Validate(Cancel As Boolean) 'EB86F4
  'Data Table: 44F1D4
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_F0 As Variant
  loc_EB866C: Proc_6_40_EA5C80(CVar(Me.Text1))
  loc_EB8680: Me.Text1.Text = CStr()
  loc_EB86A1: var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_EB86B0: var_CC = CVar(CLng((global_56 + 5))) 'Long
  loc_EB86CA: var_F0 = CVar(Me.Text1.Text) 'String
  loc_EB86D2: Set var_104 = Me.FGrid1
  loc_EB86D8: LateIdCallSt
  loc_EB86F0: Exit Sub
  loc_EB86F1: CopyBytes 6656
End Sub

Public Sub Proc_312_24_EC400C
  'Data Table: 44F1D4
  Dim var_98 As Variant
  loc_EC3F77: Me.FGrid1.Row = 0
  loc_EC3FA4: For var_C0 = 0 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_86 = var_C0 'Integer
  loc_EC3FBD:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_EC3FE4:   If (CLng(Me.FGrid1.CellBackColor) <> &HFF) Then
  loc_EC3FE7:     var_98 = -2147483633
  loc_EC3FFA:     Me.FGrid1.CellBackColor = CVar(CLng(var_86))
  loc_EC4002:   End If
  loc_EC4005: Next var_C0 'Integer
  loc_EC400A: Exit Sub
End Sub
