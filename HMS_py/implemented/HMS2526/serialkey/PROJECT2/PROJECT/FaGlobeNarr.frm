VERSION 5.00
Begin VB.Form FaGlobeNarr
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 10995
  ClientHeight = 5805
  Begin TextBox TxtSearch
    BackColor = &HFFFF80&
    Left = 345
    Top = 675
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    HideSelection = 0   'False
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid GridSel
    Left = 30
    Top = 0
    Width = 10965
    Height = 5445
    TabIndex = 0
  End
  Begin Label Label1
    Caption = "{Press <Esc> For Cancel && Exit} {Press <Enter> For Select && Exit} {Press Ctrl+S to Sort the selected Row}"
    BackColor = &HFFFFC0&
    ForeColor = &H80000008&
    Left = 0
    Top = 5475
    Width = 10995
    Height = 330
    TabIndex = 2
    BorderStyle = 1 'Fixed Single
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

Attribute VB_Name = "FaGlobeNarr"


Private Sub Form_Load() 'FCD570
  'Data Table: 41F984
  Dim var_94 As Variant
  Dim unk_41F98C As Connection15
  Dim var_CC As Long
  Dim var_A8 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim var_100 As Variant
  Dim var_104 As String
  loc_FCD3C0: On Error Goto loc_FCD533
  loc_FCD3C3: var_94 = vbNullString
  loc_FCD3C8: ImpAdStVarCopy
  loc_FCD3E2: unk_41F98C.Execute "Select Name From NarrMast Order by name", var_A4, -1
  loc_FCD3F3: Set global_52 = var_A8
  loc_FCD40A: CVarUnk
  loc_FCD40F: VerifyVarObj
  loc_FCD415: Set var_A8 = Me.GridSel
  loc_FCD41B: LateIdStAd
  loc_FCD429: var_94 = 0
  loc_FCD432: var_CC = &H2710
  loc_FCD43F: Set var_A8 = Me.GridSel
  loc_FCD445: LateIdCallSt
  loc_FCD46F: If (CLng(Me.GridSel.Rows) = 1) Then
  loc_FCD472:   var_94 = vbNullString
  loc_FCD47C:   Set var_A8 = Me.GridSel
  loc_FCD48D: End If
  loc_FCD4A4: If (Me.RecordCount > 0) Then
  loc_FCD4AD:   Me.MoveFirst
  loc_FCD4D1:   var_100 = "NAME>='" & var_F0 & "'" 
  loc_FCD4D5:   var_104 = CStr(var_100)
  loc_FCD4DF:   Me.Find var_104, 0, 1
  loc_FCD502:   If (Me.EOF = 0) Then
  loc_FCD516:     var_94 = CVar(Me.AbsolutePosition) 'Long
  loc_FCD525:     Me.GridSel.Row = var_94
  loc_FCD52D:   End If
  loc_FCD52D: End If
  loc_FCD52D: Call GridSel_UnknownEvent_0()
  loc_FCD532: Exit Sub
  loc_FCD533: ' Referenced from: FCD3C0
  loc_FCD54F: Call 0.Method_arg_2C (var_104, 0, var_100, var_118, var_128, var_CC, GridSel.DispID_10000, var_94)
  loc_FCD55A: MsgBox(CVar(var_104), Err(), var_CC, var_94, Err())
  loc_FCD56D: Exit Sub
  loc_FCD56E: CExtInstUnk
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E5C068
  'Data Table: 41F984
  loc_E5C04E: If ((CLng(KeyCode) = &H1B) And (Me.TxtSearch.Visible = 0)) Then
  loc_E5C05E:   Me.Global.Unload Me
  loc_E5C066: End If
  loc_E5C066: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_0 'E1DCE0
  'Data Table: 41F984
  loc_E1DCD7: Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_E1DCDF: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A 'E0ACE0
  'Data Table: 41F984
  loc_E0ACD6: If (CLng(KeyCode) = &HD) Then
  loc_E0ACD9:   Call GridSel_UnknownEvent_B()
  loc_E0ACDE: End If
  loc_E0ACDE: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_B 'F11B9C
  'Data Table: 41F984
  Dim var_94 As Variant
  Dim var_B4 As Long
  Dim var_C8 As Variant
  Dim var_DC As String
  Dim var_F0 As Variant
  Dim var_110 As Variant
  loc_F11AB8: var_94 = 1
  loc_F11AC1: var_B4 = 0
  loc_F11ADF: var_DC = CStr(Me.GridSel.TextMatrix))
  loc_F11AF0: If (var_DC <> vbNullString) Then
  loc_F11B06:   var_94 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_F11B0B:   var_B4 = 0
  loc_F11B1E:   var_F0 = Me.GridSel.TextMatrix)
  loc_F11B29:   var_110 = CVar(CStr(var_F0)) 'String
  loc_F11B2C:   var_100 = var_110 'Variant
  loc_F11B41: Else
  loc_F11B41:   var_94 = vbNullString
  loc_F11B46:   var_100 = var_94 'Variant
  loc_F11B4A: End If
  loc_F11B57: Me.Global.Unload Me
  loc_F11B5F: Exit Sub
  loc_F11B68: Set var_C8 = Err()
  loc_F11B6E: Call 0.Method_arg_2C (var_DC, var_B4, var_94)
  loc_F11B87: MsgBox(CVar(var_DC), &H40, var_F0, var_110, var_120)
  loc_F11B9A: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_C 'EEBA70
  'Data Table: 41F984
  Dim var_98 As Variant
  Dim Me As Recordset15
  loc_EEB9E0: var_98 = Me.GridSel.Col
  loc_EEBA4B: Proc_183_11_113DA88(Me.TxtSearch, Me.GridSel, global_52, KeyCode)
  loc_EEBA6D: Exit Sub
  loc_EEBA6E: Get var_98, "15595518", "16777152" 'get Me.Fields.Item(CVar(CLng(var_98))).Name bytes
End Sub

Private Sub GridSel_UnknownEvent_14 'E1DC90
  'Data Table: 41F984
  loc_E1DC87: Me.GridSel.CellBackColor = CVar(CLng("15595518"))
  loc_E1DC8F: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'EB1BF8
  'Data Table: 41F984
  Dim var_88 As TextBox
  loc_EB1B67: If (Proc_183_12_E7AF74(KeyCode) = &HFF) Then
  loc_EB1B6E:   Set var_88 = Me.GridSel
  loc_EB1B8B:   Me.TxtSearch.Visible = False
  loc_EB1B93: End If
  loc_EB1B9D: If (CLng(KeyCode) = &H2E) Then
  loc_EB1BAD:   Me.TxtSearch.Text = vbNullString
  loc_EB1BB5: End If
  loc_EB1BCA: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_EB1BD1:   Set var_88 = Me.GridSel
  loc_EB1BEE:   Me.TxtSearch.Visible = False
  loc_EB1BF6: End If
  loc_EB1BF6: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) 'EEEB08
  'Data Table: 41F984
  Dim Me As Recordset15
  Dim KeyAscii As Integer
  loc_EEEAA6: var_B4 = Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name
  loc_EEEAAE: var_C8 = "15595518"
  loc_EEEAB7: var_C4 = "16777152"
  loc_EEEADF: Proc_183_11_113DA88(Me.TxtSearch, Me.GridSel, global_52, KeyAscii)
  loc_EEEB03: KeyAscii = 0
  loc_EEEB06: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E583D4
  'Data Table: 41F984
  Dim var_88 As TextBox
  loc_E583A1: Me.TxtSearch.Text = vbNullString
  loc_E583AD: Set var_88 = Me.GridSel
  loc_E583CA: Me.TxtSearch.Visible = False
  loc_E583D2: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E58278
  'Data Table: 41F984
  Dim var_88 As TextBox
  loc_E58245: Me.TxtSearch.Text = vbNullString
  loc_E58251: Set var_88 = Me.GridSel
  loc_E5826E: Me.TxtSearch.Visible = False
  loc_E58276: Exit Sub
End Sub
