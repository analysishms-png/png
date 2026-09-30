VERSION 5.00
Begin VB.Form FrmMsgBox
  Caption = "Message Box"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 5430
  ClientHeight = 2475
  LockControls = -1  'True
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Begin CommandButton cmdzz
    Caption = "No"
    Index = 0
    Left = 2805
    Top = 1425
    Width = 950
    Height = 950
    Visible = 0   'False
    TabIndex = 2
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
  Begin CommandButton cmdzz
    Caption = "Yes"
    Index = 1
    Left = 1635
    Top = 1425
    Width = 950
    Height = 950
    Visible = 0   'False
    TabIndex = 1
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
  Begin BtnEnh Cmd
    Index = 1
    Left = 1605
    Top = 1395
    Width = 1005
    Height = 1005
    TabIndex = 3
  End
  Begin BtnEnh Cmd
    Index = 0
    Left = 2775
    Top = 1395
    Width = 1005
    Height = 1005
    TabIndex = 4
  End
  Begin Label LblMsg
    Left = 105
    Top = 105
    Width = 5265
    Height = 1110
    TabIndex = 0
    WordWrap = -1  'True
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FrmMsgBox"


Public Sub Cmd_UnknownEvent_9(Index As Integer) 'E7DCD0
  'Data Table: 41E688
  Dim var_86 As Integer
  loc_E7DC6B: var_86 = Index
  loc_E7DC74: If (var_86 = 0) Then
  loc_E7DC8B:   ParentForm.MsgBoxTouch = 7
  loc_E7DC95: Else
  loc_E7DC9B:   If (var_86 = 1) Then
  loc_E7DCB2:     ParentForm.MsgBoxTouch = 6
  loc_E7DCB9:   End If
  loc_E7DCB9: End If
  loc_E7DCC6: Me.Global.Unload Me
  loc_E7DCCE: Exit Sub
End Sub

Public Property Let ParentForm(vNewValue) 'E0DD7C
  'Data Table: 41E688
  loc_E0DD75: Set global_52 = vNewValue
  loc_E0DD79: Exit Sub
End Sub

Public Property Get ParentForm() 'E0DCEC
  'Data Table: 41E688
  loc_E0DCE0: Set var_88 = global_52 
  loc_E0DCE4: ParentForm = 
End Sub
