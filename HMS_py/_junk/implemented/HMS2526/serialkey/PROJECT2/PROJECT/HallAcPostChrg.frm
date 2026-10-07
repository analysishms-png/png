VERSION 5.00
Begin VB.Form HallAcPostChrg
  Caption = "A/C Posting"
  BackColor = &HDECCBE&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 6375
  ClientHeight = 3165
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 2
    Left = 2850
    Top = 1050
    Width = 1425
    Height = 255
    Enabled = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 1
    Left = 6435
    Top = 45
    Width = 1425
    Height = 255
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 0
    Left = 2850
    Top = 780
    Width = 1425
    Height = 255
    Enabled = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin CommandButton Cmd
    Caption = "Exit"
    Index = 0
    BackColor = &HFF8080&
    Left = 3945
    Top = 2220
    Width = 1545
    Height = 510
    TabIndex = 2
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Advance Deposite Entry"
    MaskColor = &HFFC0C0&
    Style = 1
  End
  Begin CommandButton Cmd
    Caption = "Night Audit"
    Index = 1
    BackColor = &HFF8080&
    Left = 840
    Top = 2235
    Width = 1545
    Height = 510
    TabIndex = 1
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Advance Deposite Entry"
    MaskColor = &HFFC0C0&
    Style = 1
  End
  Begin TopCtrl TopCtrl1
    Left = -105
    Top = -45
    Width = 8880
    Height = 375
    Visible = 0   'False
    TabIndex = 4
  End
  Begin Label LblName
    Caption = "To Date"
    Index = 0
    ForeColor = &H0&
    Left = 1590
    Top = 1050
    Width = 735
    Height = 240
    Enabled = 0   'False
    TabIndex = 8
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
  Begin Label lblDisplay
    Caption = "."
    Left = 195
    Top = 1515
    Width = 5940
    Height = 285
    TabIndex = 6
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Shape Shape2
    BackColor = &HFAC0B6&
    Left = 90
    Top = 2175
    Width = 6120
    Height = 645
    BackStyle = 1 'Opaque
  End
  Begin Shape Shape1
    BackColor = &HFFC0C0&
    Left = 90
    Top = 480
    Width = 6120
    Height = 2550
  End
  Begin Label LblName
    Caption = "From Date"
    Index = 2
    ForeColor = &H0&
    Left = 1590
    Top = 780
    Width = 945
    Height = 240
    Enabled = 0   'False
    TabIndex = 3
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

Attribute VB_Name = "HallAcPostChrg"

Private MasterFormExit As Integer

Private Sub Cmd_Click(Index As Integer) 'F92030
  'Data Table: 428A48
  Dim var_9A As Integer
  Dim var_A0 As Variant
  Dim unk_428A50 As Connection15
  Dim var_C4 As TextBox
  Dim var_D0 As TextBox
  Dim var_C0 As Variant
  Dim var_C8 As String
  loc_F91ED7: var_9A = Index
  loc_F91EE0: If (var_9A = 0) Then
  loc_F91EF0:   Me.Global.Unload Me
  loc_F91EFB: Else
  loc_F91F01:   If (var_9A = 1) Then
  loc_F91F11:     Me.lblDisplay.Caption = "A/C Posting Started..."
  loc_F91F1D:     Set var_A0 = Me.lblDisplay
  loc_F91F23:     var_A0.Refresh
  loc_F91F41:     unk_428A50.Execute "Select PostingType from Enviro", var_C0, -1
  loc_F91F4C:     Set var_88 = var_A0
  loc_F91F61:     Set var_A0 = Me.Txt
  loc_F91F67:     Call 0.Method_Cmd_Click0 (0, var_C4, var_C8)
  loc_F91F6F:     var_A0 = var_C4.Text
  loc_F91F88:     Set var_CC = Me.Txt
  loc_F91F8E:     Call 0.Method_Cmd_Click0 (2, var_D0, var_D4)
  loc_F91F96:     var_90 = var_D0.Text
  loc_F91FB2:     For var_E4 = var_9A To CDate(var_D4):   CDate(var_C8) = var_E4 'Double
  loc_F91FD6:       Me.lblDisplay.Caption = CStr("A/C Posting For Date " & CDate(var_90))
  loc_F91FEE:       Me.lblDisplay.Refresh
  loc_F91FF9:       Proc_96_22_1EBAA48(var_90)
  loc_F92001:     Next var_E4 'Double
  loc_F92013:     Me.lblDisplay.Caption = "A/C Posting Completed."
  loc_F92025:     Me.lblDisplay.Refresh
  loc_F9202D:   End If
  loc_F9202D: End If
  loc_F9202D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'F323F4
  'Data Table: 428A48
  Dim var_A4 As TextBox
  Dim unk_428A50 As Connection15
  loc_F322F0: On Error Goto loc_F323A1
  loc_F32309: Set var_A0 = Me.Txt
  loc_F3230F: Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_A4)
  loc_F32317: var_A8 = var_A4.Text
  loc_F3232F: var_D8 = DateAdd("d", CDbl(1), CDate(CDate(var_A8)))
  loc_F3234A: If CBool(CDate(MemVar_1F950EC) <> var_D8) Then
  loc_F32366:   MsgBox("Invalid Date Contact to your Administrator", 0, var_D8, var_F8, var_128)
  loc_F32376:   Exit Sub
  loc_F32377: End If
  loc_F32380: unk_428A50.BeginTrans var_12C
  loc_F32389: var_86 = CByte(1) 'Byte
  loc_F32393: unk_428A50.CommitTrans
  loc_F3239C: var_86 = CByte(0) 'Byte
  loc_F323A0: Exit Sub
  loc_F323A1: ' Referenced from: F322F0
  loc_F323AA: If (CInt(var_86) = 1) Then
  loc_F323B3:   unk_428A50.RollbackTrans
  loc_F323B8: End If
  loc_F323C0: Set var_A0 = Err()
  loc_F323C6: Call 0.Method_arg_2C (var_A8)
  loc_F323DF: MsgBox(CVar(var_A8), &H10, var_D8, var_F8, var_128)
  loc_F323F2: Exit Sub
End Sub

Private Sub Form_Load() 'EBDBC4
  'Data Table: 428A48
  Dim var_90 As TextBox
  loc_EBDB24: On Error Goto loc_EBDBBE
  loc_EBDB3F: Proc_6_23_DFC5B8(Me, 3600)
  loc_EBDB4E: Call 0.Method_arg_74 (CDbl(0))
  loc_EBDB5A: Call 0.Method_arg_7C (CDbl(0))
  loc_EBDB72: Set var_88 = Me.Txt
  loc_EBDB78: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_EBDB80: var_90.Text = CStr(MemVar_1F950EC)
  loc_EBDBA0: Set var_88 = Me.Txt
  loc_EBDBA6: Call 0.Method_Form_Load0 (2, var_90)
  loc_EBDBAE: var_90.Text = CStr(MemVar_1F950EC)
  loc_EBDBBD: Exit Sub
  loc_EBDBBE: ' Referenced from: EBDB24
  loc_EBDBBE: Proc_6_60_E63754(6450)
  loc_EBDBC3: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E02E90
  'Data Table: 428A48
  loc_E02E89: MasterFormExit = 0
  loc_E02E8C: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E6ABF0
  'Data Table: 428A48
  loc_E6ABAC: Set var_88 = Me.TopCtrl1
  loc_E6ABB2: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_E6ABE0: If CBool(( <> "Browse") And (MasterFormExit = 0)) Then
  loc_E6ABE8:   Call Form_Unload(&HFF)
  loc_E6ABED: End If
  loc_E6ABED: Exit Sub
End Sub

Private Sub Form_Activate() 'E50F4C
  'Data Table: 428A48
  loc_E50F20: On Error Goto loc_E50F46
  loc_E50F27: Set var_8C = Me.TopCtrl1
  loc_E50F2D: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030010()
  loc_E50F42: If (CLng(CInt()) = &H2D) Then
  loc_E50F45: End If
  loc_E50F45: Exit Sub
  loc_E50F46: ' Referenced from: E50F20
  loc_E50F46: Proc_6_60_E63754()
  loc_E50F4B: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2562C
  'Data Table: 428A48
  loc_E25611: If (MasterFormExit = &HFF) Then
  loc_E25621:   Me.Global.Unload Me
  loc_E25629: End If
  loc_E25629: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E600C8
  'Data Table: 428A48
  loc_E6007C: On Error Goto loc_E600BF
  loc_E60089: If (CLng(KeyCode) = &H1B) Then
  loc_E60099:   Me.Global.Unload Me
  loc_E600A1:   Exit Sub
  loc_E600A2: End If
  loc_E600B6: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E600BE: Exit Sub
  loc_E600BF: ' Referenced from: E6007C
  loc_E600BF: Proc_6_60_E63754(Shift)
  loc_E600C4: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'ECC9DC
  'Data Table: 428A48
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECC942: Set var_88 = Me.Txt
  loc_ECC948: Call 0.Method_Txt_GotFocus0 (Index)
  loc_ECC956: Proc_6_74_E23240(var_8C)
  loc_ECC971: Set var_88 = Me.Txt
  loc_ECC977: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_ECC97F: var_8C.SelStart = 0
  loc_ECC998: Set var_88 = Me.Txt
  loc_ECC99E: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_ECC9B9: Set var_90 = Me.Txt
  loc_ECC9BF: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_ECC9C7: var_98.SelLength = Len(var_8C.Text)
  loc_ECC9DA: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E50E7C
  'Data Table: 428A48
  loc_E50E5A: Set var_88 = Me.Txt
  loc_E50E60: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E50E6E: Proc_6_73_E23294(var_8C)
  loc_E50E7A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'EA0410
  'Data Table: 428A48
  Dim var_94 As TextBox
  Dim var_A4 As TextBox
  loc_EA03AE: If (Cancel = CInt(0)) Then
  loc_EA03BE:   Set var_90 = Me.Txt
  loc_EA03C4:   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_EA03EA:   Set var_A0 = Me.Txt
  loc_EA03F0:   Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_EA03F8:   var_A4.Text = Proc_6_34_14EEAAC(var_94.Text)
  loc_EA040F: End If
  loc_EA040F: Exit Sub
End Sub

Public Function MasterFormExitGet() '428F78
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '428F87
  MasterFormExit = Value
End Sub

Public Function mVTypeGet() '428F96
  mVTypeGet = mVType
End Function

Public Sub mVTypePut(Value) '428FA5
  mVType = Value
End Sub

Public Function VnoRCGet() '428FB4
  VnoRCGet = VnoRC
End Function

Public Sub VnoRCPut(Value) '428FC3
  VnoRC = Value
End Sub

Public Function VnoRTGet() '428FD2
  VnoRTGet = VnoRT
End Function

Public Sub VnoRTPut(Value) '428FE1
  VnoRT = Value
End Sub

Public Function vPrefixGet() '428FF0
  vPrefixGet = vPrefix
End Function

Public Sub vPrefixPut(Value) '428FFF
  vPrefix = Value
End Sub

Public Function VprefixRCGet() '42900E
  VprefixRCGet = VprefixRC
End Function

Public Sub VprefixRCPut(Value) '42901D
  VprefixRC = Value
End Sub

Public Function VprefixRTGet() '42902C
  VprefixRTGet = VprefixRT
End Function

Public Sub VprefixRTPut(Value) '42903B
  VprefixRT = Value
End Sub

Public Function DocIDGet() '42904A
  DocIDGet = DocID
End Function

Public Sub DocIDPut(Value) '429059
  DocID = Value
End Sub

Public Sub Proc_141_27_11B41C0(arg_C) '11B41C0
  'Data Table: 428A48
  Dim var_8C As Recordset15
  loc_11B3D79: Set var_8C = arg_C 
  loc_11B3DA1: var_8C.Fields.Append "DocId", &H81, &H15
  loc_11B3DCD: var_8C.Fields.Append "V_DATE", 7, 0
  loc_11B3DF9: var_8C.Fields.Append "V_TYPE", &H81, 5
  loc_11B3E25: var_8C.Fields.Append "V_PREFIX", &H81, 5
  loc_11B3E51: var_8C.Fields.Append "SiteCode", &H81, 2
  loc_11B3E7D: var_8C.Fields.Append "V_NO", 3, &HB
  loc_11B3EA9: var_8C.Fields.Append "GuestProf", &H81, 8
  loc_11B3ED5: var_8C.Fields.Append "Comp_Code", &H81, 8
  loc_11B3F01: var_8C.Fields.Append "RoomChargeAc", &H81, 8
  loc_11B3F2D: var_8C.Fields.Append "RoomTaxAc", &H81, 8
  loc_11B3F59: var_8C.Fields.Append "PayCode", &H81, 5
  loc_11B3F85: var_8C.Fields.Append "RoomCat", &H81, 5
  loc_11B3FB1: var_8C.Fields.Append "RoomType", &H81, 5
  loc_11B3FDD: var_8C.Fields.Append "TaxStru", &H81, 5
  loc_11B4009: var_8C.Fields.Append "RoomNo", &H81, 5
  loc_11B4035: var_8C.Fields.Append "RateCode", &H81, 1
  loc_11B4061: var_8C.Fields.Append "RoomRate", 5, &H13
  loc_11B408D: var_8C.Fields.Append "DR", 5, &H13
  loc_11B40B9: var_8C.Fields.Append "CR", 5, &H13
  loc_11B40E5: var_8C.Fields.Append "Tip", 5, &H13
  loc_11B4111: var_8C.Fields.Append "BillAmount", 5, &H13
  loc_11B413D: var_8C.Fields.Append "FolioNo", 3, &HB
  loc_11B4169: var_8C.Fields.Append "Particulars", &H81, &H64
  loc_11B4179: var_8C.CursorType = 3
  loc_11B4186: var_8C.LockType = 3
  loc_11B41A5: var_8C.Open var_A0, var_B0, -1
  loc_11B41AC: Set var_8C = Nothing 
  loc_11B41B3: Set var_88 = arg_C 
  loc_11B41B7: Proc_141_27_11B41C0 = -1
End Sub
