VERSION 5.00
Begin VB.Form frmPassword
  Caption = "Authentication Window"
  BackColor = &HF3FED6&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 4680
  ClientHeight = 2145
  StartUpPosition = 1 'CenterOwner
  Begin CommandButton CmdLogin
    Caption = "&Ok"
    Left = 1545
    Top = 1215
    Width = 1560
    Height = 390
    TabIndex = 1
  End
  Begin TextBox txtPassword
    Left = 1020
    Top = 465
    Width = 2685
    Height = 285
    Text = "AASTER"
    TabIndex = 0
    PasswordChar = "*"
  End
End

Attribute VB_Name = "frmPassword"


Private Sub CmdLogin_Click() 'EC8730
  'Data Table: 41C930
  Dim var_C8 As String
  loc_EC86B2: var_C8 = "India12"
  loc_EC86C3: If (Ucase(Trim(CVar(Me.txtPassword))) = var_C8) Then
  loc_EC86E0:   MemVar_1F96C94.MDIRestCode = CVar(MemVar_1F95078 & "BANQ")
  loc_EC86F4:   Me.Global.Unload Me
  loc_EC8707:   Form.Show var_C8, var_EC
  loc_EC8711:   Set var_88 = Nothing
  loc_EC8717: Else
  loc_EC8724:   Me.Global.Unload Me
  loc_EC872C: End If
  loc_EC872C: Exit Sub
End Sub
