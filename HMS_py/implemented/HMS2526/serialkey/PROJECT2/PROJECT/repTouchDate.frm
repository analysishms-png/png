VERSION 5.00
Begin VB.Form repTouchDate
  Caption = "Select Report Date"
  BackColor = &HFFFFFF&
  ForeColor = &H0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClipControls = 0   'False
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 4545
  ClientHeight = 3210
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Begin BtnEnh cmdDayUP
    Left = 300
    Top = 1005
    Width = 810
    Height = 945
    TabIndex = 1
  End
  Begin TextBox txtDate
    ForeColor = &HFF0000&
    Left = 330
    Top = 270
    Width = 3915
    Height = 525
    TabIndex = 0
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin BtnEnh cmdMonthUp
    Left = 1170
    Top = 1005
    Width = 810
    Height = 945
    TabIndex = 2
  End
  Begin BtnEnh cmdYearUp
    Left = 2040
    Top = 1005
    Width = 810
    Height = 945
    TabIndex = 3
  End
  Begin BtnEnh cmdDayDown
    Left = 300
    Top = 2025
    Width = 810
    Height = 945
    TabIndex = 4
  End
  Begin BtnEnh cmdMonthDown
    Left = 1170
    Top = 2025
    Width = 810
    Height = 945
    TabIndex = 5
  End
  Begin BtnEnh cmdYearDown
    Left = 2040
    Top = 2025
    Width = 810
    Height = 945
    TabIndex = 6
  End
  Begin BtnEnh cmdCancel
    Left = 3015
    Top = 1020
    Width = 1170
    Height = 945
    TabIndex = 7
  End
  Begin BtnEnh cmdExit
    Left = 3015
    Top = 2025
    Width = 1170
    Height = 945
    TabIndex = 8
  End
  Begin Shape Shape1
    Left = 255
    Top = 180
    Width = 4080
    Height = 705
    Visible = 0   'False
    BorderWidth = 2
  End
End

Attribute VB_Name = "repTouchDate"


Private Sub cmdCancel_UnknownEvent_9 'E190AC
  'Data Table: 42B994
  loc_E190A1: Me.Global.Unload Me
  loc_E190A9: Exit Sub
End Sub

Private Sub Form_Load() 'E19440
  'Data Table: 42B994
  loc_E1942B: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_E19437: Call 0.Method_arg_7C (CDbl(0))
  loc_E1943C: Exit Sub
End Sub

Private Sub cmdDayDown_UnknownEvent_9 'E616BC
  'Data Table: 42B994
  loc_E6167C: On Error Goto loc_E616B9
  loc_E616A7: Me.txtDate.Text = CStr(DateAdd("d", CDbl(&HFF), CVar(Me.txtDate)))
  loc_E616B9: ' Referenced from: E6167C
  loc_E616B9: Exit Sub
  loc_E616BA: Set arg_1C6C = 
End Sub

Private Sub cmdYearDown_UnknownEvent_9 'E60E3C
  'Data Table: 42B994
  loc_E60DFC: On Error Goto loc_E60E39
  loc_E60E27: Me.txtDate.Text = CStr(DateAdd("yyyy", CDbl(&HFF), CVar(Me.txtDate)))
  loc_E60E39: ' Referenced from: E60DFC
  loc_E60E39: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E64C78
  'Data Table: 42B994
  Dim var_A4 As Integer
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  loc_E64C3A: var_A4 = 1
  loc_E64C44: var_C4 = CVar(Me.txtDate) 'Address
  loc_E64C4F: var_E4 = unk_42B99B.FGrid
  loc_E64C54: VarLateMemCallSt
  loc_E64C6E: Me.Global.Unload Me
  loc_E64C76: Exit Sub
End Sub

Private Sub cmdMonthDown_UnknownEvent_9 'E5FBBC
  'Data Table: 42B994
  loc_E5FB7C: On Error Goto loc_E5FBB9
  loc_E5FBA7: Me.txtDate.Text = CStr(DateAdd("m", CDbl(&HFF), CVar(Me.txtDate)))
  loc_E5FBB9: ' Referenced from: E5FB7C
  loc_E5FBB9: Exit Sub
End Sub

Private Sub cmdDayUP_UnknownEvent_9 'E629BC
  'Data Table: 42B994
  loc_E6297C: On Error Goto loc_E629B9
  loc_E629A7: Me.txtDate.Text = CStr(DateAdd("d", CDbl(1), CVar(Me.txtDate)))
  loc_E629B9: ' Referenced from: E6297C
  loc_E629B9: Exit Sub
End Sub

Private Sub cmdYearUp_UnknownEvent_9 'E62C3C
  'Data Table: 42B994
  loc_E62BFC: On Error Goto loc_E62C39
  loc_E62C27: Me.txtDate.Text = CStr(DateAdd("yyyy", CDbl(1), CVar(Me.txtDate)))
  loc_E62C39: ' Referenced from: E62BFC
  loc_E62C39: Exit Sub
End Sub

Private Sub cmdMonthUp_UnknownEvent_9 'E624BC
  'Data Table: 42B994
  loc_E6247C: On Error Goto loc_E624B9
  loc_E624A7: Me.txtDate.Text = CStr(DateAdd("m", CDbl(1), CVar(Me.txtDate)))
  loc_E624B9: ' Referenced from: E6247C
  loc_E624B9: Exit Sub
End Sub

Public Function global_52Get() '42C0AC
  BVM60.DLL.GetMem1
End Function

Public Function global_52Get() '42C0BB
  BVM60.DLL.PutMem1
End Function

Public Property Let PDate(vNewValue) 'E13E84
  'Data Table: 42B994
  loc_E13E7C: global_56 = vNewValue
  loc_E13E80: Exit Sub
End Sub

Public Property Get PDate() 'E13C8C
  'Data Table: 42B994
  loc_E13C80: var_88 = global_56
  loc_E13C83: PDate = 
End Sub
