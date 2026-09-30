VERSION 5.00
Begin VB.Form FrmMenuList
  Caption = "Main Menu . . ."
  BackColor = &H808080&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 5865
  ClientHeight = 5730
  Begin CommandButton Command3
    Caption = "Select &All"
    Left = 870
    Top = 4920
    Width = 1335
    Height = 360
    TabIndex = 3
  End
  Begin CommandButton Command2
    Caption = "E&xit"
    Left = 3570
    Top = 4920
    Width = 1440
    Height = 360
    TabIndex = 2
  End
  Begin CommandButton Command1
    Caption = "Execute"
    Left = 2205
    Top = 4920
    Width = 1380
    Height = 360
    TabIndex = 1
  End
  Begin ListBox List1
    ForeColor = &HFF0000&
    Left = 855
    Top = 600
    Width = 4155
    Height = 4110
    TabIndex = 0
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
End

Attribute VB_Name = "FrmMenuList"


Private Sub Form_Load() 'E19CDC
  'Data Table: 41F11C
  loc_E19CC8: Call 0.Method_Me4 (CDbl(6000))
  loc_E19CD5: Call 0.Method_MeC (CDbl(6200))
  loc_E19CDA: Exit Sub
End Sub

Private Sub Form_Activate() 'E19C8C
  'Data Table: 41F11C
  loc_E19C78: Set var_88 = Me.List1
  loc_E19C81: Proc_156_9_F1219C(MemVar_1F95198)
  loc_E19C89: Exit Sub
End Sub

Private Sub Command3_Click() 'E72F50
  'Data Table: 41F11C
  loc_E72F12: For var_98 = CDbl(0) To CDbl((Me.List1.ListCount - 1)): var_88 = var_98 'Single
  loc_E72F26:   Me.List1.ListIndex = CInt(var_88)
  loc_E72F3E:   Me.List1.Selected = CInt(var_88)
  loc_E72F49: Next var_98 'Single
  loc_E72F4E: Exit Sub
  loc_E72F4F: Exit Sub
End Sub

Private Sub Command2_Click() 'E19C40
  'Data Table: 41F11C
  loc_E19C35: Me.Global.Unload Me
  loc_E19C3D: Exit Sub
End Sub

Private Sub Command1_Click() 'F94F18
  'Data Table: 41F11C
  Dim var_9C As ListBox
  Dim var_8C As Menu
  loc_F94DD3: var_9E = Me.List1.ListCount
  loc_F94DE2: For var_A8 = CDbl(0) To CDbl((var_9E - 1)): var_94 = var_A8 'Single
  loc_F94DF6:   Me.List1.ListIndex = CInt(var_94)
  loc_F94E38:   For Each var_88 In MemVar_1F95248
  loc_F94E45:     If TypeOf var_88 Is Command1_Click Then
  loc_F94E4E:       Set var_8C = var_88
  loc_F94E8B:       If (Ucase(CVar(var_8C.Caption)) = Ucase(CStr(LTrim(CVar(Me.List1.Text))))) Then
  loc_F94E9F:         CInt(var_94) = Me.List1.Selected
  loc_F94EAD:         If (var_9E = &HFF) Then
  loc_F94EB5:           var_8C.Enabled = True
  loc_F94EBF:           var_8C.Visible = True
  loc_F94EC7:         Else
  loc_F94ECC:           var_8C.Visible = False
  loc_F94ED1:         End If
  loc_F94ED1:       End If
  loc_F94ED1:     End If
  loc_F94ED4:   Next
  loc_F94EDD: Next var_A8 'Single
  loc_F94EED: Set var_9C = MemVar_1F95248.mnuMdI
  loc_F94EF3: MDIForm1.mnuMdI.Enabled = True
  loc_F94F06: Set var_9C = MemVar_1F95248.smnuMdI
  loc_F94F0C: MDIForm1.smnuMdI.Enabled = True
  loc_F94F14: Exit Sub
  loc_F94F15: ThisVCallR4
End Sub
