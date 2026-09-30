VERSION 5.00
Begin VB.Form BanqAvailability
  Caption = "Venue Availability"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 165
  ClientTop = 450
  ClientWidth = 11805
  ClientHeight = 7530
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin CommandButton BtnPrint
    Caption = "&DosPrint"
    Index = 1
    Left = 14505
    Top = 9195
    Width = 1155
    Height = 330
    TabIndex = 12
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CommandButton BtnPrint
    Caption = "P&review"
    Index = 0
    Left = 12195
    Top = 9195
    Width = 1155
    Height = 330
    TabIndex = 11
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CommandButton BtnPrint
    Caption = "&WinPrint"
    Index = 2
    Left = 13350
    Top = 9195
    Width = 1155
    Height = 330
    TabIndex = 10
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin BtnEnh CmdExit
    Left = 13545
    Top = 8400
    Width = 1365
    Height = 465
    TabIndex = 8
  End
  Begin BtnEnh Cmd
    Index = 0
    Left = 9450
    Top = 8400
    Width = 1365
    Height = 465
    TabIndex = 5
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1470
    Top = 8400
    Width = 1365
    Height = 360
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 12
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 360
    Top = 690
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
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
  Begin MSHFlexGrid FGrid
    Left = 30
    Top = 555
    Width = 17850
    Height = 7215
    TabIndex = 1
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 7155
    Width = 11805
    Height = 375
    Visible = 0   'False
    TabIndex = 0
  End
  Begin BtnEnh Lable
    Index = 15
    Left = 120
    Top = 8400
    Width = 1365
    Height = 360
    TabIndex = 4
  End
  Begin BtnEnh Cmd
    Index = 1
    Left = 10815
    Top = 8400
    Width = 1365
    Height = 465
    TabIndex = 6
  End
  Begin BtnEnh Cmd
    Index = 2
    Left = 12180
    Top = 8400
    Width = 1365
    Height = 465
    TabIndex = 7
  End
  Begin BtnEnh Lable
    Index = 0
    Left = 7425
    Top = 8400
    Width = 1410
    Height = 360
    TabIndex = 19
  End
  Begin BtnEnh Lable
    Index = 1
    Left = 3645
    Top = 8400
    Width = 1410
    Height = 360
    TabIndex = 20
  End
  Begin BtnEnh Lable
    Index = 2
    Left = 5100
    Top = 8400
    Width = 2295
    Height = 360
    TabIndex = 21
  End
  Begin Label LblDatail
    Caption = "."
    ForeColor = &H80&
    Left = 375
    Top = 7995
    Width = 1350
    Height = 285
    TabIndex = 22
    AutoSize = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 9
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    AutoSize = -1  'True
    BeginProperty Font
      Name = "System"
      Size = 19.5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label2
    Index = 4
    BackColor = &HFFFF80&
    ForeColor = &H80000008&
    Left = 10110
    Top = 9810
    Width = 285
    Height = 270
    Visible = 0   'False
    TabIndex = 18
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Booking Confirm WIth Advance"
    Index = 4
    ForeColor = &H0&
    Left = 10560
    Top = 9825
    Width = 2640
    Height = 225
    Visible = 0   'False
    TabIndex = 17
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Booking Confirm"
    Index = 3
    ForeColor = &H0&
    Left = 8550
    Top = 9825
    Width = 1410
    Height = 225
    Visible = 0   'False
    TabIndex = 16
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label2
    Index = 3
    BackColor = &HFF&
    ForeColor = &H80000008&
    Left = 8130
    Top = 9810
    Width = 285
    Height = 270
    Visible = 0   'False
    TabIndex = 15
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Vacant "
    Index = 1
    ForeColor = &H0&
    Left = 7185
    Top = 9825
    Width = 675
    Height = 225
    Visible = 0   'False
    TabIndex = 14
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label2
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &H80000008&
    Left = 6840
    Top = 9810
    Width = 285
    Height = 270
    Visible = 0   'False
    TabIndex = 13
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "BanqAvailability"

Private global_116 As Long
Private global_120 As Long
Private global_60 As Integer
Private global_62 As Integer
Private global_100 As Integer
Private global_84 As Double
Private global_104 As Integer
Private global_112 As Long

Public Sub Cmd_UnknownEvent_9(Index As Integer) '102DD6C
  'Data Table: 481B8C
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_A8 As String
  Dim var_DC As TextBox
  loc_102DB37: var_86 = Index
  loc_102DB40: If (var_86 = 0) Then
  loc_102DB4E:   Set var_8C = Me.Txt
  loc_102DB54:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_102DB7D:   If (Proc_6_27_EA61EC(var_90, "Start Date") = 0) Then
  loc_102DB80:     Exit Sub
  loc_102DB81:   End If
  loc_102DB8F:   Set var_8C = Me.Txt
  loc_102DB95:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_102DB9D:   var_98 = var_90.Text
  loc_102DBA5:   var_A8 = "RoomNo"
  loc_102DBB9:   Call Proc_128_38_1330D38(CDate(var_98), 1)
  loc_102DBCF: Else
  loc_102DBD5:   If (var_86 = 1) Then
  loc_102DBE6:     Set var_8C = Me.Txt
  loc_102DBEC:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90, var_98)
  loc_102DBF4:     var_A8 = var_90.Text
  loc_102DC23:     Set var_94 = Me.Txt
  loc_102DC29:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_DC)
  loc_102DC31:     var_DC.Text = CStr(DateAdd("d", CDbl(&HFF), CDate(CDate(var_98))))
  loc_102DC5D:     Set var_8C = Me.Txt
  loc_102DC63:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_102DC6B:     var_98 = var_90.Text
  loc_102DC73:     var_A8 = "RoomNo"
  loc_102DC87:     Call Proc_128_38_1330D38(CDate(var_98), 1)
  loc_102DC9D:   Else
  loc_102DCA3:     If (var_86 = 2) Then
  loc_102DCB4:       Set var_8C = Me.Txt
  loc_102DCBA:       Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90, var_98)
  loc_102DCC2:       var_A8 = var_90.Text
  loc_102DCF1:       Set var_94 = Me.Txt
  loc_102DCF7:       Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_DC)
  loc_102DCFF:       var_DC.Text = CStr(DateAdd("d", CDbl(1), CDate(CDate(var_98))))
  loc_102DD2B:       Set var_8C = Me.Txt
  loc_102DD31:       Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_102DD41:       var_A8 = "RoomNo"
  loc_102DD55:       Call Proc_128_38_1330D38(CDate(var_90.Text), 1)
  loc_102DD68:     End If
  loc_102DD68:   End If
  loc_102DD68: End If
  loc_102DD68: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F0FA48
  'Data Table: 481B8C
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_F0F976: Set var_88 = Me.TxtGrid
  loc_F0F97C: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_F0F98A: Proc_6_74_E23240(var_8C)
  loc_F0F996: Call Proc_128_37_DFE394(var_8C)
  loc_F0F9A7: If (Index = 0) Then
  loc_F0F9BD:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F0F9FC:   Set var_108 = Me.TxtGrid
  loc_F0FA02:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_F0FA0A:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_F0FA3B:   var_114 = CLng(Me.FGrid.Col)
  loc_F0FA44: End If
  loc_F0FA44: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'F04B58
  'Data Table: 481B8C
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_F04A8C: If (KeyCode = 0) Then
  loc_F04A99:   If (CLng(Shift) = &H1B) Then
  loc_F04AA9:     Set var_8C = Me.TxtGrid
  loc_F04AAF:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_F04AC9:     Set var_98 = Me.TxtGrid
  loc_F04ACF:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_F04AD7:     var_9C.Text = var_90.Tag
  loc_F04AF3:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_F04AF8:     Call Proc_128_37_DFE394(arg_14)
  loc_F04B01:     Set var_8C = Me.FGrid
  loc_F04B1E:     Set var_8C = Me.TxtGrid
  loc_F04B24:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_F04B2C:     var_90.Visible = FGrid.DispID_8001
  loc_F04B38:     Exit Sub
  loc_F04B39:   End If
  loc_F04B4C:   var_B0 = CLng(Me.FGrid.Col)
  loc_F04B55: End If
  loc_F04B55: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E51C90
  'Data Table: 481B8C
  Dim var_A0 As Long
  loc_E51C5F: Proc_6_58_E06050(arg_10)
  loc_E51C70: If (KeyAscii = 0) Then
  loc_E51C86:   var_A0 = CLng(Me.FGrid.Col)
  loc_E51C8F: End If
  loc_E51C8F: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E5581C
  'Data Table: 481B8C
  Dim var_A0 As Long
  loc_E557E4: On Error Goto loc_E55813
  loc_E557F3: If (KeyCode = 0) Then
  loc_E55809:   var_A0 = CLng(Me.FGrid.Col)
  loc_E55812: End If
  loc_E55812: Exit Sub
  loc_E55813: ' Referenced from: E557E4
  loc_E55813: Proc_6_60_E63754(var_A0)
  loc_E55818: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E21B48
  'Data Table: 481B8C
  Dim arg_10 As Integer
  loc_E21B30: If (Cancel = 0) Then
  loc_E21B39:   Call Proc_128_33_E557AC(Cancel, var_88)
  loc_E21B42:   arg_10 = Not(var_88)
  loc_E21B45: End If
  loc_E21B45: Exit Sub
End Sub

Private Sub Form_Load() 'F6EC20
  'Data Table: 481B8C
  Dim var_8C As TextBox
  Dim var_88 As Variant
  loc_F6EAE4: On Error Goto loc_F6EC19
  loc_F6EAEF: global_116 = &HFDC293
  loc_F6EAFA: global_120 = &HFF00
  loc_F6EB1B: Set var_88 = Me.Txt
  loc_F6EB21: Call 0.Method_Form_Load0 (CInt(0), var_8C, CStr(MemVar_1F950EC))
  loc_F6EB29: var_8C.Text = &HFFFFFF
  loc_F6EB43: Set var_88 = Me.Txt
  loc_F6EB49: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_F6EB72: If (Proc_6_27_EA61EC(var_8C, "Start Date") = 0) Then
  loc_F6EB75:   Exit Sub
  loc_F6EB76: End If
  loc_F6EB76: Call Proc_128_31_148EA6C(global_120)
  loc_F6EB89: Set var_88 = Me.Txt
  loc_F6EB8F: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_F6EBB3: Call Proc_128_38_1330D38(CDate(var_8C.Text), 1)
  loc_F6EBCD: Call 0.Method_arg_64 (CLng(MemVar_1F951B4), "RoomNo")
  loc_F6EBE5: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_F6EBFB: Me.LblDatail.BackColor = CLng(MemVar_1F951B4)
  loc_F6EC10: Me.LblDatail.Caption = vbNullString
  loc_F6EC18: Exit Sub
  loc_F6EC19: ' Referenced from: F6EAE4
  loc_F6EC19: Proc_6_60_E63754(global_116)
  loc_F6EC1E: Exit Sub
End Sub

Private Sub Form_Resize() 'E73074
  'Data Table: 481B8C
  loc_E7301E: Call 0.Method_arg_50 (var_88)
  loc_E73030: Me.LblFormCaption.Caption = var_88
  loc_E73049: Me.LblFormCaption.Left = CDbl(0)
  loc_E73057: Call 0.Method_arg_100 (var_90)
  loc_E73069: Me.LblFormCaption.Width = var_90
  loc_E73071: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0E484
  'Data Table: 481B8C
  loc_E0E47B: Set global_108 = Nothing
  loc_E0E482: Exit Sub
End Sub

Private Sub Form_Activate() 'E2377C
  'Data Table: 481B8C
  loc_E23761: Call Cmd_UnknownEvent_9(0)
  loc_E2376A: Set var_8C = Me.FGrid
  loc_E2377B: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27790
  'Data Table: 481B8C
  loc_E27768: On Error Goto loc_E27788
  loc_E2777F: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E27787: Exit Sub
  loc_E27788: ' Referenced from: E27768
  loc_E27788: Proc_6_60_E63754(Shift)
  loc_E2778D: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E58DC4
  'Data Table: 481B8C
  Dim var_92 As Integer
  loc_E58D96: Set var_88 = Me.Txt
  loc_E58D9C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E58DAA: Proc_6_74_E23240(var_8C)
  loc_E58DB6: Call Proc_128_37_DFE394(var_8C)
  loc_E58DBE: var_92 = Index
  loc_E58DC1: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E0B890
  'Data Table: 481B8C
  loc_E0B886: If (CLng(Shift) = &H1B) Then
  loc_E0B889:   Call Proc_128_37_DFE394()
  loc_E0B88E:   Exit Sub
  loc_E0B88F: End If
  loc_E0B88F: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E44CB0
  'Data Table: 481B8C
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_E44C80: On Error Goto loc_E44CA7
  loc_E44C86: Proc_6_58_E06050(arg_10)
  loc_E44C91: Proc_6_133_E7FB08(var_94)
  loc_E44C9A: arg_10 = CInt(var_94)
  loc_E44CA3: var_96 = KeyAscii
  loc_E44CA6: Exit Sub
  loc_E44CA7: ' Referenced from: E44C80
  loc_E44CA7: Proc_6_60_E63754(var_96, arg_10)
  loc_E44CAC: Exit Sub
  loc_E44CAD: Result arg_10 End Sub 'Integer
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFEA34
  'Data Table: 481B8C
  Dim var_86 As Integer
  loc_DFEA2F: var_86 = KeyCode
  loc_DFEA32: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4DAE4
  'Data Table: 481B8C
  loc_E4DAC2: Set var_88 = Me.Txt
  loc_E4DAC8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4DAD6: Proc_6_73_E23294(var_8C)
  loc_E4DAE2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F21C7C
  'Data Table: 481B8C
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_F0 As TextBox
  loc_F21B90: On Error Goto loc_F21C76
  loc_F21B96: var_86 = Cancel
  loc_F21BA1: If (var_86 = CInt(0)) Then
  loc_F21BB1:   Set var_8C = Me.Txt
  loc_F21BB7:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F21BEF:   If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_F21C04:     Set var_8C = Me.Txt
  loc_F21C0A:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F21C12:     var_90.Text = CStr(MemVar_1F950EC)
  loc_F21C24:   Else
  loc_F21C2E:     Set var_8C = Me.Txt
  loc_F21C34:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F21C54:     Set var_EC = Me.Txt
  loc_F21C5A:     Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_F21C62:     var_F0.Text = Proc_6_33_15125B8(var_90)
  loc_F21C75:   End If
  loc_F21C75: End If
  loc_F21C75: Exit Sub
  loc_F21C76: ' Referenced from: F21B90
  loc_F21C76: Proc_6_60_E63754(var_86)
  loc_F21C7B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5FFC4
  'Data Table: 481B8C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5FF8F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5FFA2: Set var_A8 = Me.TxtGrid
  loc_E5FFA8: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5FFB0: var_AC.Visible = False
  loc_E5FFBC: Call Proc_128_37_DFE394()
  loc_E5FFC1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E6AD08
  'Data Table: 481B8C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6ACC4: Set var_88 = Me.TxtGrid
  loc_E6ACCA: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6ACE4: If (var_8C.Visible = 0) Then
  loc_E6ACFD:   Me.FGrid.BackColorSel = CVar(CLng(global_56))
  loc_E6AD05: End If
  loc_E6AD05: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10466B4
  'Data Table: 481B8C
  Dim var_B8 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_DC As String
  Dim Cancel As Integer
  Dim var_EC As Long
  loc_1046460: Set var_88 = Me.TopCtrl1
  loc_1046466: Call {33AD4EF3-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_10464B6: If CBool(( = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_10464BF:   Call Form_KeyDown(Cancel, arg_10)
  loc_10464C4: End If
  loc_10464C8: Set var_88 = Me.TopCtrl1
  loc_10464CE: Call {33AD4EF3-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_10464E3: If ( = "Browse") Then
  loc_10464E6:   Exit Sub
  loc_10464E7: End If
  loc_104655B: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_1046574:   Me.FGrid.CellBackColor = CVar(CLng(global_56))
  loc_1046584:   var_DC = "+{Tab}"
  loc_104658A:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_1046594:   Cancel = 0
  loc_104659A: Else
  loc_10465A4:   var_B8 = Me.FGrid.Rows
  loc_10465F1:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B8) - 1)))) Then
  loc_104660A:     Me.FGrid.CellBackColor = CVar(CLng(global_56))
  loc_1046620:     Proc_303_0_FBACC8("{Tab}", 0, var_B8)
  loc_104662A:     Cancel = 0
  loc_104662D:   End If
  loc_104662D: End If
  loc_1046633: global_60 = Cancel
  loc_1046659: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_104667D: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1046693:   var_EC = CLng(Me.FGrid.Col)
  loc_104669C: End If
  loc_10466A2: If (Cancel = &HD) Then
  loc_10466AA:   global_62 = 0
  loc_10466AD: End If
  loc_10466AF: Cancel = 0
  loc_10466B2: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0DC18
  'Data Table: 481B8C
  loc_E0DC09: Call FGrid_UnknownEvent_C()
  loc_E0DC13: global_62 = 0
  loc_E0DC16: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'E4DA80
  'Data Table: 481B8C
  loc_E4DA76: If (CLng(Cancel) = &HD) Then
  loc_E4DA79:   Call Proc_128_32_10FAB18(CLng(Me.FGrid.Col))
  loc_E4DA7E: End If
  loc_E4DA7E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'DFE1C0
  'Data Table: 481B8C
  loc_DFE1BC: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_12 'F2C4A0
  'Data Table: 481B8C
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_F2C3BB: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F2C3D3: var_DC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_F2C40A: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_F2C423:   var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F2C466:   Me.LblDatail.Caption = CVar(CLng(Me.FGrid.Col)) & CStr(Me.FGrid.TextMatrix))
  loc_F2C489: Else
  loc_F2C496:   Me.LblDatail.Caption = vbNullString
  loc_F2C49E: End If
  loc_F2C49E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E44D74
  'Data Table: 481B8C
  Dim var_8C As TextBox
  loc_E44D48: Call Proc_128_37_DFE394()
  loc_E44D58: Set var_88 = Me.TxtGrid
  loc_E44D5E: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E44D66: var_8C.Visible = False
  loc_E44D72: Exit Sub
End Sub

Private Sub BTNPRINT_Click(Index As Integer) '13F92FC
  'Data Table: 481B8C
  Dim unk_481BA8 As Connection15
  Dim var_A8 As Variant
  Dim var_94 As Recordset15
  Dim var_BC As Fields15
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_C8 As Fields15
  Dim var_EC As Variant
  Dim var_12C As Variant
  Dim var_10C As String
  Dim var_C4 As String
  Dim var_FC As Variant
  Dim MemVar_1F953C4 As String
  Dim MemVar_1F953C8 As String
  Dim MemVar_1F953D0 As String
  Dim var_C0 As TextBox
  Dim var_13C As Variant
  Dim var_20C As Variant
  loc_13F891C: On Error Goto loc_13F92F4
  loc_13F8924: global_100 = &HFF
  loc_13F893D: unk_481BA8.Execute "Select * From FAEnviro", var_B8, -1
  loc_13F8948: Set var_94 = var_BC
  loc_13F8960: var_BC = var_94.Fields
  loc_13F89C4: var_13C = IIf((Proc_6_38_E69628(CVar(var_BC.Item("daterfill")), var_BC) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("daterfill")))))
  loc_13F89CD: MemVar_1F953C4 = CStr(var_13C)
  loc_13F8A61: var_13C = IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("pagenofill")), MemVar_1F953C4) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("pagenofill")))))
  loc_13F8A6A: MemVar_1F953C8 = CStr(var_13C)
  loc_13F8AFE: var_13C = IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("titlerfill")), MemVar_1F953C8) = vbNullString), "M", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("titlerfill")))))
  loc_13F8B3F: var_C0 = var_94.Fields.Item("linefiller")
  loc_13F8B56: var_D8 = "linefiller"
  loc_13F8B62: var_C8 = var_94.Fields
  loc_13F8B6A: var_DC = var_C8.Item(var_D8)
  loc_13F8B7E: var_10C = "-"
  loc_13F8B94: var_FC = (Proc_6_38_E69628(CVar(var_C0), CStr(var_13C)) = vbNullString)
  loc_13F8BA4: MemVar_1F953D0 = CStr(IIf(var_FC, "M", CVar(Proc_6_38_E69628(CVar(var_DC)))))
  loc_13F8BCB: global_92 = "23 Day Room Availability Forecast (Report)"
  loc_13F8BD2: var_88 = "Day23RoomAvail"
  loc_13F8BDB: var_A8 = global_92
  loc_13F8BF2: global_96 = CStr(Ucase(var_A8))
  loc_13F8C0E: If ((global_100 = 0) Or (var_88 = vbNullString)) Then
  loc_13F8C11:   Exit Sub
  loc_13F8C12: End If
  loc_13F8C39: Set var_BC = global_108 
  loc_13F8C40: CreateFieldDefFile(var_BC, MemVar_1F950B4 & "\" & var_88 & ".ttx", &HFF)
  loc_13F8C72: var_C4 = "\" & var_88
  loc_13F8C86: Call 0.Method_arg_1C (MemVar_1F950B4 & var_C4 & ".RPT", var_A8, var_BC)
  loc_13F8C91: MemVar_1F951E8 = var_BC
  loc_13F8CBD: Call 0.Method_arg_64 (var_BC, CVar(var_BC), var_D8)
  loc_13F8CC5: Call 0.Method_arg_2C (var_FC, MemVar_1F953D0)
  loc_13F8CD3: Call 0.Method_arg_150 (global_100)
  loc_13F8CE9: Call 0.Method_arg_90 (var_BC, var_14C)
  loc_13F8CF1: Call 0.Method_arg_24 (var_8A)
  loc_13F8CFD: For var_150 =  To CInt(var_14C): 1 = var_150 'Integer
  loc_13F8D16:   Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13F8D1E:   Call 0.Method_arg_20 (var_C0)
  loc_13F8D26:   Call 0.Method_arg_30 (var_C4)
  loc_13F8D3C:   var_160 = Ucase(CVar(var_C4)) 'Variant
  loc_13F8D6C:   If (var_160 = Ucase("Title")) Then
  loc_13F8D93:     Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13F8D9B:     Call 0.Method_arg_20 (var_C0)
  loc_13F8DA3:     Call 0.Method_arg_38 ("'" & global_92 & "'")
  loc_13F8DB9:   Else
  loc_13F8DDB:     If (var_160 = Ucase("BetweenDate")) Then
  loc_13F8DEF:       Set var_BC = Me.Txt
  loc_13F8DF5:       Call 0.Method_BTNPRINT_Click0 (CInt(0), var_C0)
  loc_13F8E20:       Call 0.Method_arg_90 (var_C8, CLng(var_8A))
  loc_13F8E28:       Call 0.Method_arg_20 (var_DC)
  loc_13F8E30:       Call 0.Method_arg_38 ("'From Date " & var_C0.Text & "'")
  loc_13F8E4C:     Else
  loc_13F8E6E:       If (var_160 = Ucase("Dater")) Then
  loc_13F8E92:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13F8E9A:         Call 0.Method_arg_20 (var_C0)
  loc_13F8EA2:         Call 0.Method_arg_38 ("'" & MemVar_1F953C4 & "'")
  loc_13F8EB8:       Else
  loc_13F8EDA:         If (var_160 = Ucase("Pager")) Then
  loc_13F8EE4:           var_C4 = "'" & MemVar_1F953C8
  loc_13F8EFE:           Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13F8F06:           Call 0.Method_arg_20 (var_C0)
  loc_13F8F0E:           Call 0.Method_arg_38 (var_C4 & "'")
  loc_13F8F21:         End If
  loc_13F8F21:       End If
  loc_13F8F21:     End If
  loc_13F8F21:   End If
  loc_13F8F24: Next var_150 'Integer
  loc_13F8F3A: Call 0.Method_arg_90 (var_BC, var_14C)
  loc_13F8F42: Call 0.Method_arg_24 (var_8A)
  loc_13F8F4E: For var_166 =  To CInt(var_14C): 1 = var_166 'Integer
  loc_13F8F5B:   For var_16A = 1 To &H17: var_96 = var_16A 'Integer
  loc_13F8F6C:     Set var_BC = Me.Txt
  loc_13F8F72:     Call 0.Method_BTNPRINT_Click0 (CInt(0), var_C0)
  loc_13F8F8C:     var_EC = DateAdd("d", CDbl((var_96 - 1)), CVar(var_C0))
  loc_13F8F99:     global_84 = CDate(Ucase("Pager"))
  loc_13F8FB9:     Call 0.Method_arg_90 (var_BC, CLng(var_8A), var_C0)
  loc_13F8FC1:     Call 0.Method_arg_20 (var_C4, global_84)
  loc_13F8FC9:     Call 0.Method_arg_30 (1)
  loc_13F8FDF:     var_17C = Ucase(CVar(var_C4)) 'Variant
  loc_13F9016:     If (var_17C = Ucase(CVar("Day" & CStr(var_96)))) Then
  loc_13F9075:       Call 0.Method_arg_90 (var_BC, CLng(var_8A), var_C0)
  loc_13F907D:       Call 0.Method_arg_20 (CStr(1 & Ucase(Format(global_84, "DDD")) & "'"), 1)
  loc_13F9085:       Call 0.Method_arg_38 ("'")
  loc_13F90A4:     Else
  loc_13F90CD:       If (var_17C = Ucase(CVar("Date" & CStr(var_96)))) Then
  loc_13F90ED:         var_12C = CVar(CStr(Day(global_84))) 'String
  loc_13F9115:         var_11C = Space((2 - Len(CStr(Day(global_84)))))
  loc_13F911D:         var_13C = (var_12C + Ucase(Format(global_84, "DDD")))
  loc_13F9153:         var_1CC = Space((2 - Len(CStr(Month(global_84)))))
  loc_13F9176:         var_20C = (var_1CC + CVar(CStr(Month(global_84))))
  loc_13F919B:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13F91A3:         Call 0.Method_arg_20 (var_C0)
  loc_13F91AB:         Call 0.Method_arg_38 (CStr("'" & 1 & Ucase(Format(global_84, "DDD")) & "'" & vbNullString & var_20C & "'"))
  loc_13F91E7:       End If
  loc_13F91E7:     End If
  loc_13F91EA:   Next var_16A 'Integer
  loc_13F91F2: Next var_166 'Integer
  loc_13F91FD: If (Index = 1) Then
  loc_13F920D:   ReDim Preserve var_90(0 To 1)
  loc_13F9228:   Set var_BC = Me.Txt
  loc_13F922E:   Call 0.Method_BTNPRINT_Click0 (CInt(0), var_C0)
  loc_13F9251:   var_90(0) = vbNullString & var_C0.Text & vbNullString
  loc_13F9262: End If
  loc_13F9268: If (Index = 1) Then
  loc_13F928C:   MsgBox("Please set 80 col. in your Printer & put it on.", &H40, "Paper Setting", Ucase(Format(global_84, "DDD")), var_12C)
  loc_13F929C:   Call Proc_128_39_16B594C()
  loc_13F92A4: Else
  loc_13F92A9:   Set var_C0 = Nothing
  loc_13F92C0:   Set var_BC = MemVar_1F951E8 
  loc_13F92CC:   Proc_6_99_1484404(var_BC, Index, global_96)
  loc_13F92D7:   MemVar_1F951E8 = var_BC
  loc_13F92E2: End If
  loc_13F92E7: global_104 = 0
  loc_13F92EF: MemVar_1F951E8 = Nothing
  loc_13F92F3: Exit Sub
  loc_13F92F4: ' Referenced from: 13F891C
  loc_13F92F4: Proc_6_60_E63754(global_104, &HFF)
  loc_13F92F9: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E17640
  'Data Table: 481B8C
  loc_E17635: Me.Global.Unload Me
  loc_E1763D: Exit Sub
End Sub

Public Function global_52Get() '4827A8
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4827B7
  global_52 = Value
End Sub

Public Property Get OpenMode() 'E0A150
  'Data Table: 481B8C
  loc_E0A149: OpenMode = global_112
End Sub

Public Property Let OpenMode(vNewValue) 'E01414
  'Data Table: 481B8C
  loc_E0140E: global_112 = vNewValue
  loc_E01411: Exit Sub
End Sub

Public Sub Proc_128_31_148EA6C
  'Data Table: 481B8C
  Dim var_88 As Long
  Dim var_90 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As String
  loc_148DDD9: var_88 = &H249
  loc_148DDE0: Set var_90 = Me.FGrid
  loc_148DDF7: global_56 = CStr(CLng(var_90.BackColor))
  loc_148DE0D: var_90.Cols = &H1A
  loc_148DE1E: var_90.FixedCols = 1
  loc_148DE23: var_B4 = 0
  loc_148DE2F: var_D4 = CVar(CLng(0)) 'Long
  loc_148DE34: var_F4 = "Venue Name"
  loc_148DE3D: LateIdCallSt
  loc_148DE48: var_B4 = CVar(CLng(0)) 'Long
  loc_148DE53: var_D4 = CVar(CInt(4)) 'Integer
  loc_148DE5A: LateIdCallSt
  loc_148DE65: var_B4 = CVar(CLng(0)) 'Long
  loc_148DE70: var_D4 = CVar(CInt(4)) 'Integer
  loc_148DE77: LateIdCallSt
  loc_148DE82: var_B4 = CVar(CLng(0)) 'Long
  loc_148DE87: var_D4 = &H9C4
  loc_148DE93: LateIdCallSt
  loc_148DEA7: var_90.ForeColor = &H80
  loc_148DEAC: var_B4 = 0
  loc_148DEB8: var_D4 = CVar(CLng(1)) 'Long
  loc_148DEBD: var_F4 = "00"
  loc_148DEC6: LateIdCallSt
  loc_148DED1: var_B4 = CVar(CLng(1)) 'Long
  loc_148DEDC: var_D4 = CVar(CInt(4)) 'Integer
  loc_148DEE3: LateIdCallSt
  loc_148DEEE: var_B4 = CVar(CLng(1)) 'Long
  loc_148DEF9: var_D4 = CVar(CInt(4)) 'Integer
  loc_148DF00: LateIdCallSt
  loc_148DF0B: var_B4 = CVar(CLng(1)) 'Long
  loc_148DF10: var_D4 = &H258
  loc_148DF1C: LateIdCallSt
  loc_148DF24: var_B4 = 0
  loc_148DF30: var_D4 = CVar(CLng(2)) 'Long
  loc_148DF35: var_F4 = "01"
  loc_148DF3E: LateIdCallSt
  loc_148DF49: var_B4 = CVar(CLng(2)) 'Long
  loc_148DF54: var_D4 = CVar(CInt(4)) 'Integer
  loc_148DF5B: LateIdCallSt
  loc_148DF66: var_B4 = CVar(CLng(2)) 'Long
  loc_148DF71: var_D4 = CVar(CInt(4)) 'Integer
  loc_148DF78: LateIdCallSt
  loc_148DF83: var_B4 = CVar(CLng(2)) 'Long
  loc_148DF88: var_D4 = &H258
  loc_148DF94: LateIdCallSt
  loc_148DF9C: var_B4 = 0
  loc_148DFA8: var_D4 = CVar(CLng(3)) 'Long
  loc_148DFAD: var_F4 = "02"
  loc_148DFB6: LateIdCallSt
  loc_148DFC1: var_B4 = CVar(CLng(3)) 'Long
  loc_148DFCC: var_D4 = CVar(CInt(4)) 'Integer
  loc_148DFD3: LateIdCallSt
  loc_148DFDE: var_B4 = CVar(CLng(3)) 'Long
  loc_148DFE9: var_D4 = CVar(CInt(4)) 'Integer
  loc_148DFF0: LateIdCallSt
  loc_148DFFB: var_B4 = CVar(CLng(3)) 'Long
  loc_148E000: var_D4 = &H258
  loc_148E00C: LateIdCallSt
  loc_148E014: var_B4 = 0
  loc_148E020: var_D4 = CVar(CLng(4)) 'Long
  loc_148E025: var_F4 = "03"
  loc_148E02E: LateIdCallSt
  loc_148E039: var_B4 = CVar(CLng(4)) 'Long
  loc_148E044: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E04B: LateIdCallSt
  loc_148E056: var_B4 = CVar(CLng(4)) 'Long
  loc_148E061: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E068: LateIdCallSt
  loc_148E073: var_B4 = CVar(CLng(4)) 'Long
  loc_148E078: var_D4 = &H258
  loc_148E084: LateIdCallSt
  loc_148E08C: var_B4 = 0
  loc_148E098: var_D4 = CVar(CLng(5)) 'Long
  loc_148E09D: var_F4 = "04"
  loc_148E0A6: LateIdCallSt
  loc_148E0B1: var_B4 = CVar(CLng(5)) 'Long
  loc_148E0BC: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E0C3: LateIdCallSt
  loc_148E0CE: var_B4 = CVar(CLng(5)) 'Long
  loc_148E0D9: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E0E0: LateIdCallSt
  loc_148E0EB: var_B4 = CVar(CLng(5)) 'Long
  loc_148E0F0: var_D4 = &H258
  loc_148E0FC: LateIdCallSt
  loc_148E104: var_B4 = 0
  loc_148E110: var_D4 = CVar(CLng(6)) 'Long
  loc_148E115: var_F4 = "05"
  loc_148E11E: LateIdCallSt
  loc_148E129: var_B4 = CVar(CLng(6)) 'Long
  loc_148E134: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E13B: LateIdCallSt
  loc_148E146: var_B4 = CVar(CLng(6)) 'Long
  loc_148E151: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E158: LateIdCallSt
  loc_148E163: var_B4 = CVar(CLng(6)) 'Long
  loc_148E168: var_D4 = &H258
  loc_148E174: LateIdCallSt
  loc_148E17C: var_B4 = 0
  loc_148E188: var_D4 = CVar(CLng(7)) 'Long
  loc_148E18D: var_F4 = "06"
  loc_148E196: LateIdCallSt
  loc_148E1A1: var_B4 = CVar(CLng(7)) 'Long
  loc_148E1AC: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E1B3: LateIdCallSt
  loc_148E1BE: var_B4 = CVar(CLng(7)) 'Long
  loc_148E1C9: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E1D0: LateIdCallSt
  loc_148E1DB: var_B4 = CVar(CLng(7)) 'Long
  loc_148E1E0: var_D4 = &H258
  loc_148E1EC: LateIdCallSt
  loc_148E1F4: var_B4 = 0
  loc_148E200: var_D4 = CVar(CLng(8)) 'Long
  loc_148E205: var_F4 = "07"
  loc_148E20E: LateIdCallSt
  loc_148E219: var_B4 = CVar(CLng(8)) 'Long
  loc_148E224: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E22B: LateIdCallSt
  loc_148E236: var_B4 = CVar(CLng(8)) 'Long
  loc_148E241: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E248: LateIdCallSt
  loc_148E253: var_B4 = CVar(CLng(8)) 'Long
  loc_148E258: var_D4 = &H258
  loc_148E264: LateIdCallSt
  loc_148E26C: var_B4 = 0
  loc_148E278: var_D4 = CVar(CLng(9)) 'Long
  loc_148E27D: var_F4 = "08"
  loc_148E286: LateIdCallSt
  loc_148E291: var_B4 = CVar(CLng(9)) 'Long
  loc_148E29C: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E2A3: LateIdCallSt
  loc_148E2AE: var_B4 = CVar(CLng(9)) 'Long
  loc_148E2B9: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E2C0: LateIdCallSt
  loc_148E2CB: var_B4 = CVar(CLng(9)) 'Long
  loc_148E2D0: var_D4 = &H258
  loc_148E2DC: LateIdCallSt
  loc_148E2E4: var_B4 = 0
  loc_148E2F0: var_D4 = CVar(CLng(&HA)) 'Long
  loc_148E2F5: var_F4 = "09"
  loc_148E2FE: LateIdCallSt
  loc_148E309: var_B4 = CVar(CLng(&HA)) 'Long
  loc_148E314: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E31B: LateIdCallSt
  loc_148E326: var_B4 = CVar(CLng(&HA)) 'Long
  loc_148E331: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E338: LateIdCallSt
  loc_148E343: var_B4 = CVar(CLng(&HA)) 'Long
  loc_148E348: var_D4 = &H258
  loc_148E354: LateIdCallSt
  loc_148E35C: var_B4 = 0
  loc_148E368: var_D4 = CVar(CLng(&HB)) 'Long
  loc_148E36D: var_F4 = "10"
  loc_148E376: LateIdCallSt
  loc_148E381: var_B4 = CVar(CLng(&HB)) 'Long
  loc_148E38C: var_D4 = CVar(CInt(1)) 'Integer
  loc_148E393: LateIdCallSt
  loc_148E39E: var_B4 = CVar(CLng(&HB)) 'Long
  loc_148E3A9: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E3B0: LateIdCallSt
  loc_148E3BB: var_B4 = CVar(CLng(&HB)) 'Long
  loc_148E3C0: var_D4 = &H258
  loc_148E3CC: LateIdCallSt
  loc_148E3D4: var_B4 = 0
  loc_148E3E0: var_D4 = CVar(CLng(&HC)) 'Long
  loc_148E3E5: var_F4 = "11"
  loc_148E3EE: LateIdCallSt
  loc_148E3F9: var_B4 = CVar(CLng(&HC)) 'Long
  loc_148E404: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E40B: LateIdCallSt
  loc_148E416: var_B4 = CVar(CLng(&HC)) 'Long
  loc_148E421: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E428: LateIdCallSt
  loc_148E433: var_B4 = CVar(CLng(&HC)) 'Long
  loc_148E438: var_D4 = &H258
  loc_148E444: LateIdCallSt
  loc_148E44C: var_B4 = 0
  loc_148E458: var_D4 = CVar(CLng(&HD)) 'Long
  loc_148E45D: var_F4 = "12"
  loc_148E466: LateIdCallSt
  loc_148E471: var_B4 = CVar(CLng(&HD)) 'Long
  loc_148E47C: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E483: LateIdCallSt
  loc_148E48E: var_B4 = CVar(CLng(&HD)) 'Long
  loc_148E499: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E4A0: LateIdCallSt
  loc_148E4AB: var_B4 = CVar(CLng(&HD)) 'Long
  loc_148E4B0: var_D4 = &H258
  loc_148E4BC: LateIdCallSt
  loc_148E4C4: var_B4 = 0
  loc_148E4D0: var_D4 = CVar(CLng(&HE)) 'Long
  loc_148E4D5: var_F4 = "13"
  loc_148E4DE: LateIdCallSt
  loc_148E4E9: var_B4 = CVar(CLng(&HE)) 'Long
  loc_148E4F4: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E4FB: LateIdCallSt
  loc_148E506: var_B4 = CVar(CLng(&HE)) 'Long
  loc_148E511: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E518: LateIdCallSt
  loc_148E523: var_B4 = CVar(CLng(&HE)) 'Long
  loc_148E528: var_D4 = &H258
  loc_148E534: LateIdCallSt
  loc_148E53C: var_B4 = 0
  loc_148E548: var_D4 = CVar(CLng(&HF)) 'Long
  loc_148E54D: var_F4 = "14"
  loc_148E556: LateIdCallSt
  loc_148E561: var_B4 = CVar(CLng(&HF)) 'Long
  loc_148E56C: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E573: LateIdCallSt
  loc_148E57E: var_B4 = CVar(CLng(&HF)) 'Long
  loc_148E589: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E590: LateIdCallSt
  loc_148E59B: var_B4 = CVar(CLng(&HF)) 'Long
  loc_148E5A0: var_D4 = &H258
  loc_148E5AC: LateIdCallSt
  loc_148E5B4: var_B4 = 0
  loc_148E5C0: var_D4 = CVar(CLng(&H10)) 'Long
  loc_148E5C5: var_F4 = "15"
  loc_148E5CE: LateIdCallSt
  loc_148E5D9: var_B4 = CVar(CLng(&H10)) 'Long
  loc_148E5E4: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E5EB: LateIdCallSt
  loc_148E5F6: var_B4 = CVar(CLng(&H10)) 'Long
  loc_148E601: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E608: LateIdCallSt
  loc_148E613: var_B4 = CVar(CLng(&H10)) 'Long
  loc_148E618: var_D4 = &H258
  loc_148E624: LateIdCallSt
  loc_148E62C: var_B4 = 0
  loc_148E638: var_D4 = CVar(CLng(&H11)) 'Long
  loc_148E63D: var_F4 = "16"
  loc_148E646: LateIdCallSt
  loc_148E651: var_B4 = CVar(CLng(&H11)) 'Long
  loc_148E65C: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E663: LateIdCallSt
  loc_148E66E: var_B4 = CVar(CLng(&H11)) 'Long
  loc_148E679: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E680: LateIdCallSt
  loc_148E68B: var_B4 = CVar(CLng(&H11)) 'Long
  loc_148E690: var_D4 = &H258
  loc_148E69C: LateIdCallSt
  loc_148E6A4: var_B4 = 0
  loc_148E6B0: var_D4 = CVar(CLng(&H12)) 'Long
  loc_148E6B5: var_F4 = "17"
  loc_148E6BE: LateIdCallSt
  loc_148E6C9: var_B4 = CVar(CLng(&H12)) 'Long
  loc_148E6D4: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E6DB: LateIdCallSt
  loc_148E6E6: var_B4 = CVar(CLng(&H12)) 'Long
  loc_148E6F1: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E6F8: LateIdCallSt
  loc_148E703: var_B4 = CVar(CLng(&H12)) 'Long
  loc_148E708: var_D4 = &H258
  loc_148E714: LateIdCallSt
  loc_148E71C: var_B4 = 0
  loc_148E728: var_D4 = CVar(CLng(&H13)) 'Long
  loc_148E72D: var_F4 = "18"
  loc_148E736: LateIdCallSt
  loc_148E741: var_B4 = CVar(CLng(&H13)) 'Long
  loc_148E74C: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E753: LateIdCallSt
  loc_148E75E: var_B4 = CVar(CLng(&H13)) 'Long
  loc_148E769: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E770: LateIdCallSt
  loc_148E77B: var_B4 = CVar(CLng(&H13)) 'Long
  loc_148E780: var_D4 = &H258
  loc_148E78C: LateIdCallSt
  loc_148E794: var_B4 = 0
  loc_148E7A0: var_D4 = CVar(CLng(&H14)) 'Long
  loc_148E7A5: var_F4 = "19"
  loc_148E7AE: LateIdCallSt
  loc_148E7B9: var_B4 = CVar(CLng(&H14)) 'Long
  loc_148E7C4: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E7CB: LateIdCallSt
  loc_148E7D6: var_B4 = CVar(CLng(&H14)) 'Long
  loc_148E7E1: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E7E8: LateIdCallSt
  loc_148E7F3: var_B4 = CVar(CLng(&H14)) 'Long
  loc_148E7F8: var_D4 = &H258
  loc_148E804: LateIdCallSt
  loc_148E80C: var_B4 = 0
  loc_148E818: var_D4 = CVar(CLng(&H15)) 'Long
  loc_148E81D: var_F4 = "20"
  loc_148E826: LateIdCallSt
  loc_148E831: var_B4 = CVar(CLng(&H15)) 'Long
  loc_148E83C: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E843: LateIdCallSt
  loc_148E84E: var_B4 = CVar(CLng(&H15)) 'Long
  loc_148E859: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E860: LateIdCallSt
  loc_148E86B: var_B4 = CVar(CLng(&H15)) 'Long
  loc_148E870: var_D4 = &H258
  loc_148E87C: LateIdCallSt
  loc_148E884: var_B4 = 0
  loc_148E890: var_D4 = CVar(CLng(&H16)) 'Long
  loc_148E895: var_F4 = "21"
  loc_148E89E: LateIdCallSt
  loc_148E8A9: var_B4 = CVar(CLng(&H16)) 'Long
  loc_148E8B4: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E8BB: LateIdCallSt
  loc_148E8C6: var_B4 = CVar(CLng(&H16)) 'Long
  loc_148E8D1: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E8D8: LateIdCallSt
  loc_148E8E3: var_B4 = CVar(CLng(&H16)) 'Long
  loc_148E8E8: var_D4 = &H258
  loc_148E8F4: LateIdCallSt
  loc_148E8FC: var_B4 = 0
  loc_148E908: var_D4 = CVar(CLng(&H17)) 'Long
  loc_148E90D: var_F4 = "22"
  loc_148E916: LateIdCallSt
  loc_148E921: var_B4 = CVar(CLng(&H17)) 'Long
  loc_148E92C: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E933: LateIdCallSt
  loc_148E93E: var_B4 = CVar(CLng(&H17)) 'Long
  loc_148E949: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E950: LateIdCallSt
  loc_148E95B: var_B4 = CVar(CLng(&H17)) 'Long
  loc_148E960: var_D4 = &H258
  loc_148E96C: LateIdCallSt
  loc_148E974: var_B4 = 0
  loc_148E980: var_D4 = CVar(CLng(&H18)) 'Long
  loc_148E985: var_F4 = "23"
  loc_148E98E: LateIdCallSt
  loc_148E999: var_B4 = CVar(CLng(&H18)) 'Long
  loc_148E9A4: var_D4 = CVar(CInt(1)) 'Integer
  loc_148E9AB: LateIdCallSt
  loc_148E9B6: var_B4 = CVar(CLng(&H18)) 'Long
  loc_148E9C1: var_D4 = CVar(CInt(4)) 'Integer
  loc_148E9C8: LateIdCallSt
  loc_148E9D3: var_B4 = CVar(CLng(&H18)) 'Long
  loc_148E9D8: var_D4 = &H258
  loc_148E9E4: LateIdCallSt
  loc_148E9EC: var_B4 = 0
  loc_148E9F8: var_D4 = CVar(CLng(&H19)) 'Long
  loc_148E9FD: var_F4 = "Venue Code"
  loc_148EA06: LateIdCallSt
  loc_148EA11: var_B4 = CVar(CLng(&H19)) 'Long
  loc_148EA1C: var_D4 = CVar(CInt(4)) 'Integer
  loc_148EA23: LateIdCallSt
  loc_148EA2E: var_B4 = CVar(CLng(&H19)) 'Long
  loc_148EA39: var_D4 = CVar(CInt(1)) 'Integer
  loc_148EA40: LateIdCallSt
  loc_148EA4B: var_B4 = CVar(CLng(&H19)) 'Long
  loc_148EA50: var_D4 = 0
  loc_148EA5C: LateIdCallSt
  loc_148EA66: Set var_90 = Nothing 
  loc_148EA6A: Exit Sub
End Sub

Public Sub Proc_128_32_10FAB18
  'Data Table: 481B8C
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_108 As Variant
  Dim var_130 As Variant
  Dim var_D4 As String
  Dim var_220 As Variant
  Dim var_11C As Variant
  Dim var_208 As Variant
  Dim var_270 As Variant
  loc_10FA832: var_A0 = Me.FGrid.Col
  loc_10FA854: var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10FA894: If (CVar(CLng(&H19)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_10FA8A1:   Set var_8C = New FrmVenueMast
  loc_10FA8AD:   var_C4 = CVar(global_52) 'String
  loc_10FA8B4:   var_8C.MDIRestCode = var_C4
  loc_10FA8C3:   var_8C.Show var_C4, var_D4
  loc_10FA8DB:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10FA8E3:   var_E4 = CVar(CLng(&H19)) 'Long
  loc_10FA8FD:   var_108 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_10FA904:   Call var_8C.SEARCHBACK
  loc_10FA91A:   Exit Sub
  loc_10FA91B: End If
  loc_10FA925: var_A0 = Me.FGrid.Col
  loc_10FA947: var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10FA956: var_108 = Me.FGrid.Col
  loc_10FA96E: var_130 = Me.FGrid.TextMatrix)
  loc_10FA99B: If (CVar(CLng(var_108)) And (CStr(var_130) <> vbNullString)) Then
  loc_10FA9B9:   var_A0 = "Selected Banquet is booked... "
  loc_10FA9BF:   MsgBox(var_A0, 0, "<<<<<<<<< Booked >>>>>>>>>", var_108, var_130)
  loc_10FA9CF:   Exit Sub
  loc_10FA9D3: Else
  loc_10FA9DD:   MemVar_1F95124 = New HallBooking
  loc_10FA9EA:   var_C4 = CVar(global_52) 'String
  loc_10FA9F4:   unk_481C00.MDIRestCode = var_C4
  loc_10FA9FC:   Set var_90 = (CLng(var_A0) <> 0)(var_C4)
  loc_10FAA0B:   var_C4 = CVar(CLng(unk_481C00.FGrid.Row)) 'Long
  loc_10FAA13:   var_E4 = CVar(CLng(&H19)) 'Long
  loc_10FAA2D:   var_220 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_10FAA44:   var_11C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10FAAB3:   var_208 = (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + ":00")
  loc_10FAAC3:   Set var_20C = Me.Txt
  loc_10FAAC9:   Call 0.Method_Proc_128_32_10FAB180 (CInt(0), var_210, var_208, CVar(CLng(Me.FGrid.Col)), 0, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(0)))
  loc_10FAAD1:   var_270 = CVar(var_210) 'Address
  loc_10FAADC:   Call unk_481C00.SEARCHBACKBANQUET
  loc_10FAB13:   MemVar_1F95124 = Nothing
  loc_10FAB17: End If
  loc_10FAB17: Exit Sub
End Sub

Public Sub Proc_128_33_E557AC(arg_C) 'E557AC
  'Data Table: 481B8C
  Dim var_A0 As Long
  loc_E55780: If (arg_C = 0) Then
  loc_E55796:   var_A0 = CLng(Me.FGrid.Col)
  loc_E5579F: End If
  loc_E557A4: Proc_128_33_E557AC = &HFF
  loc_E557AA: If var_A0 Then Exit Sub
  loc_E557AA: End If
End Sub

Public Sub Proc_128_34_E0C438
  'Data Table: 481B8C
  loc_E0C431: Proc_128_34_E0C438 = &HFF
End Sub

Public Sub Proc_128_35_F1E8CC
  'Data Table: 481B8C
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_C8 As Variant
  loc_F1E7DA: Set var_8C = Me.Txt
  loc_F1E7E0: Call 0.Method_Proc_128_35_F1E8CCC (var_8E, var_86)
  loc_F1E7F0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1E806:   Set var_8C = Me.Txt
  loc_F1E80C:   Call 0.Method_Proc_128_35_F1E8CC0 (CInt(var_86), var_98)
  loc_F1E814:   var_98.Text = vbNullString
  loc_F1E830:   Set var_8C = Me.Txt
  loc_F1E836:   Call 0.Method_Proc_128_35_F1E8CC0 (CInt(var_86), var_98)
  loc_F1E83E:   var_98.Tag = vbNullString
  loc_F1E84D: Next var_92 'Byte
  loc_F1E866: Me.FGrid.Rows = 1
  loc_F1E88C: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_F1E894: Set var_98 = Me.FGrid
  loc_F1E8C1: Me.FGrid.FixedRows = 1
  loc_F1E8C9: Exit Sub
End Sub

Public Sub Proc_128_36_E7A84C(arg_C) 'E7A84C
  'Data Table: 481B8C
  Dim var_98 As TextBox
  loc_E7A7FA: Set var_8C = Me.Txt
  loc_E7A800: Call 0.Method_Proc_128_36_E7A84CC (var_8E, var_86)
  loc_E7A810: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7A826:   Set var_8C = Me.Txt
  loc_E7A82C:   Call 0.Method_Proc_128_36_E7A84C0 (CInt(var_86), var_98)
  loc_E7A834:   var_98.Enabled = arg_C
  loc_E7A843: Next var_92 'Byte
  loc_E7A849: Exit Sub
End Sub

Public Sub Proc_128_37_DFE394
  'Data Table: 481B8C
  Dim arg_5107 As Double
  loc_DFE390: Exit Sub
  loc_DFE391: arg_5107 = 
End Sub

Public Sub Proc_128_38_1330D38
  'Data Table: 481B8C
  Dim var_DC As Variant
  Dim var_F0 As Variant
  Dim unk_481BA8 As Connection15
  Dim var_10C As Recordset15
  Dim var_EC As Variant
  Dim var_110 As Variant
  Dim var_138 As Variant
  Dim var_9C As Recordset15
  Dim var_194 As Recordset15
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_198 As Variant
  Dim var_19C As Variant
  Dim var_208 As Variant
  loc_13305DB: Me.FGrid.FixedCols = 0
  loc_13305F6: Me.FGrid.FixedRows = 0
  loc_13305FE: var_DC = &H190
  loc_133060B: Set var_F0 = Me.FGrid
  loc_1330611: var_F0.RowHeightMin = var_DC
  loc_133061F: Call Proc_128_40_F6FE18(var_CC)
  loc_1330627: Set var_CC = var_F0
  loc_1330651: unk_481BA8.Execute "Select * from VenueMast where DepartCode='" & global_52 & "' order by name", var_108, -1
  loc_133065C: Set var_9C = var_F0
  loc_133066F: Set var_10C = var_CC 
  loc_133067E: var_10C.AddNew var_DC, var_EC
  loc_13306A8: var_10C.Fields.Item("VenueName").Value = "Venue              Time=>"
  loc_13306D9: var_10C.Fields.Item("VenueCode").Value = vbNullString
  loc_13306F2: For var_118 = 0 To &H17: var_A0 = var_118 'Long
  loc_1330727:   var_EC = "00"
  loc_1330735:   var_DC = var_A0
  loc_133076C:   var_10C.Fields.Item("Hr" & Format(var_A0, "00")).Value = Format(var_DC, var_EC)
  loc_1330788: Next var_118 'Long
  loc_133078F: Set var_10C = Nothing 
  loc_1330799: var_18C = var_9C.RecordCount
  loc_13307A7: If (var_18C > 0) Then
  loc_13307AA:   ' Referenced from: 13309CD
  loc_13307B9:   If Not(var_9C.EOF) Then
  loc_13307BF:     Set var_194 = var_CC 
  loc_13307CE:     var_194.AddNew var_DC, var_EC
  loc_133081E:     var_194.Fields.Item("VenueName").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Name"))))
  loc_1330876:     var_19C = var_194.Fields.Item("VenueCode")
  loc_133087E:     var_19C.Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Code"))))
  loc_13308A0:     For var_1A4 = 0 To &H17: var_A0 = var_1A4 'Long
  loc_13308D9:       Set var_198 = Me.Txt
  loc_13308DF:       Call 0.Method_Proc_128_38_1330D380 (0, var_19C)
  loc_133095D:       var_208 = CVar(Proc_96_20_1103E48(CStr(var_9C.Fields.Item("Code").Value), CDate(var_19C.Text), CStr(Format(var_A0, "00") & ":00"), 1)) 'String
  loc_1330987:       var_194.Fields.Item("Hr" & Format(var_A0, "00")).Value = var_208
  loc_13309BA:     Next var_1A4 'Long
  loc_13309C1:     Set var_194 = Nothing 
  loc_13309C8:     var_9C.MoveNext
  loc_13309CD:     GoTo loc_13307AA
  loc_13309D0:   End If
  loc_13309D6:   CVarUnk
  loc_13309DB:   VerifyVarObj
  loc_13309E1:   Set var_F0 = Me.FGrid
  loc_13309E7:   LateIdStAd
  loc_13309F5: End If
  loc_1330A08: Me.FGrid.FixedRows = 1
  loc_1330A1F: Me.FGrid.Redraw = False
  loc_1330A4E: For var_210 = 1 To (CLng(Me.FGrid.Rows) - 1): var_A0 = var_210 'Long
  loc_1330A67:   Me.FGrid.Col = 0
  loc_1330A80:   Me.FGrid.Row = var_A0
  loc_1330AA4:   Set var_110 = Me.FGrid
  loc_1330AAA:   var_110.CellBackColor = CVar(CLng(Me.FGrid.BackColorFixed))
  loc_1330ACB:   Me.FGrid.CellFontSize = CVar(CDbl(&HA))
  loc_1330AE3:   Me.FGrid.CellFontName = "Arial"
  loc_1330AF9:   Me.FGrid.CellFontBold = True
  loc_1330B28:   For var_218 = 1 To (CLng(Me.FGrid.Cols) - 1): var_A4 = var_218 'Long
  loc_1330B3F:     Me.FGrid.Col = var_A4
  loc_1330B7B:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1330B96:       var_108 = Me.FGrid.TextMatrix)
  loc_1330BCD:       If (Right(CVar(CStr(var_108)), 1) = "*") Then
  loc_1330BDC:         Set var_F0 = Me.Label2
  loc_1330BE2:         Call 0.Method_Proc_128_38_1330D380 (4, var_110, var_18C, var_108, var_A4, var_A0)
  loc_1330BEA:         var_A4 = var_110.BackColor
  loc_1330C01:         Me.FGrid.CellBackColor = CVar(var_18C)
  loc_1330C62:         var_128 = CVar(Replace(CStr(Me.FGrid.TextMatrix)), "*", vbNullString, 1, -1, 0)) 'String
  loc_1330C6A:         Set var_110 = Me.FGrid
  loc_1330C70:         LateIdCallSt
  loc_1330C8C:       Else
  loc_1330C98:         Set var_F0 = Me.Label2
  loc_1330C9E:         Call 0.Method_Proc_128_38_1330D380 (3, var_110, var_18C, var_110, CVar(CStr(Me.FGrid.TextMatrix))), var_A4, var_A0)
  loc_1330CA6:         var_108 = var_110.BackColor
  loc_1330CBD:         Me.FGrid.CellBackColor = CVar(var_18C)
  loc_1330CCB:       End If
  loc_1330CCB:     End If
  loc_1330CCE:   Next var_218 'Long
  loc_1330CD6: Next var_210 'Long
  loc_1330CE9: Me.FGrid.Redraw = True
  loc_1330CF1: var_DC = 0
  loc_1330CFA: var_138 = False
  loc_1330D03: Set var_F0 = Me.FGrid
  loc_1330D09: LateIdCallSt
  loc_1330D19: Set var_98 = Nothing
  loc_1330D21: Set var_9C = Nothing
  loc_1330D29: Set var_CC = Nothing
  loc_1330D31: Set var_C8 = Nothing
  loc_1330D34: Exit Sub
End Sub

Public Sub Proc_128_39_16B594C
  'Data Table: 481B8C
  Dim var_100 As String
  Dim var_88 As Variant
  Dim Me As Variant
  Dim var_86 As Variant
  Dim var_118 As TextBox
  Dim var_128 As Variant
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_1EC As Variant
  Dim var_1FC As Variant
  Dim var_20C As Variant
  Dim var_14C As Variant
  Dim var_1AC As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_224 As Variant
  Dim var_234 As Variant
  Dim var_248 As Variant
  Dim var_258 As Variant
  Dim var_278 As Variant
  Dim var_28C As Variant
  Dim var_29C As Variant
  Dim var_2BC As Variant
  Dim var_2D0 As Variant
  Dim var_2E0 As Variant
  Dim var_300 As Variant
  Dim var_314 As Variant
  Dim var_324 As Variant
  Dim var_344 As Variant
  Dim var_358 As Variant
  Dim var_368 As Variant
  Dim var_388 As Variant
  Dim var_39C As Variant
  Dim var_3AC As Variant
  Dim var_3CC As Variant
  Dim var_3E0 As Variant
  Dim var_3F0 As Variant
  Dim var_410 As Variant
  Dim var_424 As Variant
  Dim var_434 As Variant
  Dim var_454 As Variant
  Dim var_468 As Variant
  Dim var_478 As Variant
  Dim var_498 As Variant
  Dim var_4AC As Variant
  Dim var_4BC As Variant
  Dim var_4DC As Variant
  Dim var_4F0 As Variant
  Dim var_500 As Variant
  Dim var_520 As Variant
  Dim var_534 As Variant
  Dim var_544 As Variant
  Dim var_564 As Variant
  Dim var_588 As Variant
  Dim var_5A8 As Variant
  Dim var_5CC As Variant
  Dim var_5EC As Variant
  Dim var_610 As Variant
  Dim var_630 As Variant
  Dim var_654 As Variant
  Dim var_674 As Variant
  Dim var_698 As Variant
  Dim var_6B8 As Variant
  Dim var_6DC As Variant
  Dim var_6FC As Variant
  Dim var_720 As Variant
  Dim var_740 As Variant
  Dim var_114 As Variant
  Dim var_748 As String
  Dim var_768 As String
  Dim var_788 As String
  Dim var_964 As String
  Dim var_994 As String
  Dim var_9C4 As String
  Dim var_9F4 As String
  Dim var_A34 As String
  Dim var_A64 As String
  Dim var_A94 As String
  Dim var_AC4 As String
  Dim var_AFC As String
  loc_16B43F0: On Error Goto loc_16B5946
  loc_16B43F5: Close 1
  loc_16B43FE: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_16B4430: var_A0 = Replace(CStr(Space(&H82)), " ", MemVar_1F953D0, 1, -1, 0)
  loc_16B443B: var_88 = 1
  loc_16B4455: If (Me.RecordCount > 0) Then
  loc_16B445E:   Me.MoveFirst
  loc_16B4463:   ' Referenced from: 16B588C
  loc_16B4475:   If Not(Me.EOF) Then
  loc_16B447E:     If (var_86 = 0) Then
  loc_16B4491:       var_86 = Proc_6_129_12B862C(var_88, var_86)
  loc_16B449C:       var_100 = "B"
  loc_16B44B8:       Print 1, Proc_6_128_1026560(global_92, var_100, &H50)
  loc_16B44D5:       Set var_114 = Me.Txt
  loc_16B44DB:       Call 0.Method_Proc_128_39_16B594C0 (CInt(0), var_118, var_100)
  loc_16B44E3:       var_86 = var_118.Text
  loc_16B44F4:       Print 1, "From Date " & var_100
  loc_16B450D:       Print 1, "* = OUT OF ORDER"
  loc_16B4529:       var_128 = (Chr(&HF) + CVar(var_A0))
  loc_16B452F:       Print 1, var_128
  loc_16B4543:       For var_12C = 1 To &H17: var_A4 = var_12C 'Integer
  loc_16B4554:         Set var_114 = Me.Txt
  loc_16B455A:         Call 0.Method_Proc_128_39_16B594C0 (CInt(0), var_118, 1)
  loc_16B4574:         var_128 = DateAdd("d", CDbl((var_A4 - 1)), CVar(var_118))
  loc_16B4581:         global_84 = CDate(var_128)
  loc_16B45CF:         var_BC(CLng(var_A4)) = CStr(Ucase(Format(global_84, "DDD")))
  loc_16B461C:         var_14C = Space((2 - Len(CStr(Day(global_84)))))
  loc_16B4624:         var_16C = (CVar(CStr(Day(global_84))) + Ucase(Format(global_84, "DDD")))
  loc_16B4656:         var_1BC = Space((2 - Len(CStr(Month(global_84)))))
  loc_16B4679:         var_1FC = (var_1BC + CVar(CStr(Month(global_84))))
  loc_16B468C:         var_D8(CLng(var_A4)) = CStr(var_16C & vbNullString & var_1FC)
  loc_16B46BC:       Next var_12C 'Integer
  loc_16B48D0:       var_128 = (Space(&HA) + "|")
  loc_16B48DA:       var_15C = (Day(global_84) + CVar(Proc_6_45_EADFB8(var_BC(1))))
  loc_16B48E3:       var_16C = (CVar(CStr(Day(global_84))) + "|")
  loc_16B48ED:       var_1AC = (var_16C + CVar(Proc_6_45_EADFB8(var_BC(2), 4)))
  loc_16B48F6:       var_1BC = (Month(global_84) + "|")
  loc_16B4900:       var_1EC = (var_1BC + CVar(Proc_6_45_EADFB8(var_BC(3), 4)))
  loc_16B4909:       var_1FC = (CVar(CStr(Month(global_84))) + "|")
  loc_16B4913:       var_224 = (var_1FC + CVar(Proc_6_45_EADFB8(var_BC(4), 4)))
  loc_16B491C:       var_234 = (var_224 + "|")
  loc_16B4926:       var_258 = (var_234 + CVar(Proc_6_45_EADFB8(var_BC(5), 4)))
  loc_16B492F:       var_278 = (var_258 + "|")
  loc_16B4939:       var_29C = (var_278 + CVar(Proc_6_45_EADFB8(var_BC(6), 4)))
  loc_16B4942:       var_2BC = (var_29C + "|")
  loc_16B494C:       var_2E0 = (var_2BC + CVar(Proc_6_45_EADFB8(var_BC(7), 4)))
  loc_16B4955:       var_300 = (var_2E0 + "|")
  loc_16B495F:       var_324 = (var_300 + CVar(Proc_6_45_EADFB8(var_BC(8), 4)))
  loc_16B4968:       var_344 = (var_324 + "|")
  loc_16B4972:       var_368 = (var_344 + CVar(Proc_6_45_EADFB8(var_BC(9), 4)))
  loc_16B497B:       var_388 = (var_368 + "|")
  loc_16B4985:       var_3AC = (var_388 + CVar(Proc_6_45_EADFB8(var_BC(&HA), 4)))
  loc_16B498E:       var_3CC = (var_3AC + "|")
  loc_16B4998:       var_3F0 = (var_3CC + CVar(Proc_6_45_EADFB8(var_BC(&HB), 4)))
  loc_16B49A1:       var_410 = (var_3F0 + "|")
  loc_16B49AB:       var_434 = (var_410 + CVar(Proc_6_45_EADFB8(var_BC(&HC), 4)))
  loc_16B49B4:       var_454 = (var_434 + "|")
  loc_16B49BE:       var_478 = (var_454 + CVar(Proc_6_45_EADFB8(var_BC(&HD), 4)))
  loc_16B49C7:       var_498 = (var_478 + "|")
  loc_16B49D1:       var_4BC = (var_498 + CVar(Proc_6_45_EADFB8(var_BC(&HE), 4)))
  loc_16B49DA:       var_4DC = (var_4BC + "|")
  loc_16B49E4:       var_500 = (var_4DC + CVar(Proc_6_45_EADFB8(var_BC(&HF), 4)))
  loc_16B49ED:       var_520 = (var_500 + "|")
  loc_16B49F7:       var_544 = (var_520 + CVar(Proc_6_45_EADFB8(var_BC(&H10), 4)))
  loc_16B4A00:       var_564 = (var_544 + "|")
  loc_16B4A0A:       var_588 = (var_564 + CVar(Proc_6_45_EADFB8(var_BC(&H11), 4)))
  loc_16B4A13:       var_5A8 = (var_588 + "|")
  loc_16B4A1D:       var_5CC = (var_5A8 + CVar(Proc_6_45_EADFB8(var_BC(&H12), 4)))
  loc_16B4A26:       var_5EC = (var_5CC + "|")
  loc_16B4A30:       var_610 = (var_5EC + CVar(Proc_6_45_EADFB8(var_BC(&H13), 4)))
  loc_16B4A39:       var_630 = (var_610 + "|")
  loc_16B4A43:       var_654 = (var_630 + CVar(Proc_6_45_EADFB8(var_BC(&H14), 4)))
  loc_16B4A4C:       var_674 = (var_654 + "|")
  loc_16B4A56:       var_698 = (var_674 + CVar(Proc_6_45_EADFB8(var_BC(&H15), 4)))
  loc_16B4A5F:       var_6B8 = (var_698 + "|")
  loc_16B4A69:       var_6DC = (var_6B8 + CVar(Proc_6_45_EADFB8(var_BC(&H16), 4)))
  loc_16B4A72:       var_6FC = (var_6DC + "|")
  loc_16B4A7C:       var_720 = (var_6FC + CVar(Proc_6_45_EADFB8(var_BC(&H17), 4)))
  loc_16B4A85:       var_740 = (var_720 + "|")
  loc_16B4A8B:       Print 1, var_740
  loc_16B4B68:       var_128 = ("TYPE" + Space(6))
  loc_16B4B71:       var_14C = (Day(global_84) + "|")
  loc_16B4B81:       var_15C = (CVar(Proc_6_45_EADFB8(var_BC(1))) + CVar(var_D8(1)))
  loc_16B4B8A:       var_16C = (CVar(CStr(Day(global_84))) + "|")
  loc_16B4B9A:       var_18C = (var_16C + CVar(var_D8(2)))
  loc_16B4BA3:       var_1AC = (CVar(Proc_6_45_EADFB8(var_BC(2), 4)) + "|")
  loc_16B4BB3:       var_1BC = (Month(global_84) + CVar(var_D8(3)))
  loc_16B4BBC:       var_1DC = (var_1BC + "|")
  loc_16B4BCC:       var_1EC = (CVar(Proc_6_45_EADFB8(var_BC(3), 4)) + CVar(var_D8(4)))
  loc_16B4BD5:       var_1FC = (CVar(CStr(Month(global_84))) + "|")
  loc_16B4BE5:       var_20C = (var_1FC + CVar(var_D8(5)))
  loc_16B4BEE:       var_224 = (CVar(Proc_6_45_EADFB8(var_BC(4), 4)) + "|")
  loc_16B4BFE:       var_234 = (var_224 + CVar(var_D8(6)))
  loc_16B4C07:       var_248 = (var_234 + "|")
  loc_16B4C17:       var_258 = (CVar(Proc_6_45_EADFB8(var_BC(5), 4)) + CVar(var_D8(7)))
  loc_16B4C20:       var_278 = (var_258 + "|")
  loc_16B4C30:       var_28C = (var_278 + CVar(var_D8(8)))
  loc_16B4C39:       var_29C = (CVar(Proc_6_45_EADFB8(var_BC(6), 4)) + "|")
  loc_16B4C49:       var_2BC = (var_29C + CVar(var_D8(9)))
  loc_16B4C52:       var_2D0 = (var_2BC + "|")
  loc_16B4C62:       var_2E0 = (CVar(Proc_6_45_EADFB8(var_BC(7), 4)) + CVar(var_D8(&HA)))
  loc_16B4C6B:       var_300 = (var_2E0 + "|")
  loc_16B4C7B:       var_314 = (var_300 + CVar(var_D8(&HB)))
  loc_16B4C84:       var_324 = (CVar(Proc_6_45_EADFB8(var_BC(8), 4)) + "|")
  loc_16B4C94:       var_344 = (var_324 + CVar(var_D8(&HC)))
  loc_16B4C9D:       var_358 = (var_344 + "|")
  loc_16B4CAD:       var_368 = (CVar(Proc_6_45_EADFB8(var_BC(9), 4)) + CVar(var_D8(&HD)))
  loc_16B4CB6:       var_388 = (var_368 + "|")
  loc_16B4CC6:       var_39C = (var_388 + CVar(var_D8(&HE)))
  loc_16B4CCF:       var_3AC = (CVar(Proc_6_45_EADFB8(var_BC(&HA), 4)) + "|")
  loc_16B4CDF:       var_3CC = (var_3AC + CVar(var_D8(&HF)))
  loc_16B4CE8:       var_3E0 = (var_3CC + "|")
  loc_16B4CF8:       var_3F0 = (CVar(Proc_6_45_EADFB8(var_BC(&HB), 4)) + CVar(var_D8(&H10)))
  loc_16B4D01:       var_410 = (var_3F0 + "|")
  loc_16B4D11:       var_424 = (var_410 + CVar(var_D8(&H11)))
  loc_16B4D1A:       var_434 = (CVar(Proc_6_45_EADFB8(var_BC(&HC), 4)) + "|")
  loc_16B4D2A:       var_454 = (var_434 + CVar(var_D8(&H12)))
  loc_16B4D33:       var_468 = (var_454 + "|")
  loc_16B4D43:       var_478 = (CVar(Proc_6_45_EADFB8(var_BC(&HD), 4)) + CVar(var_D8(&H13)))
  loc_16B4D4C:       var_498 = (var_478 + "|")
  loc_16B4D5C:       var_4AC = (var_498 + CVar(var_D8(&H14)))
  loc_16B4D65:       var_4BC = (CVar(Proc_6_45_EADFB8(var_BC(&HE), 4)) + "|")
  loc_16B4D75:       var_4DC = (var_4BC + CVar(var_D8(&H15)))
  loc_16B4D7E:       var_4F0 = (var_4DC + "|")
  loc_16B4D8E:       var_500 = (CVar(Proc_6_45_EADFB8(var_BC(&HF), 4)) + CVar(var_D8(&H16)))
  loc_16B4D97:       var_520 = (var_500 + "|")
  loc_16B4DA7:       var_534 = (var_520 + CVar(var_D8(&H17)))
  loc_16B4DB0:       var_544 = (CVar(Proc_6_45_EADFB8(var_BC(&H10), 4)) + "|")
  loc_16B4DB6:       Print 1, var_544
  loc_16B4E26:       Print 1, var_A0
  loc_16B4E2C:     End If
  loc_16B4E32:     var_86 = (var_86 + 7)
  loc_16B4E5A:     For var_914 = 3 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_914 'Integer
  loc_16B4E66:       If (var_A2 = 3) Then
  loc_16B4E69:         GoTo loc_16B5884
  loc_16B4E6C:       End If
  loc_16B54EB:       var_748 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(Me.Fields.Item("RoomNo")), 3), 5) & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCat")), var_86), 4)
  loc_16B550D:       var_768 = var_748 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day5"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day6"))), 4)
  loc_16B552F:       var_788 = var_768 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day7"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day8"))), 4)
  loc_16B5551:       var_964 = var_788 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day9"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day10"))), 4)
  loc_16B5573:       var_994 = var_964 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day11"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day12"))), 4)
  loc_16B5595:       var_9C4 = var_994 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day13"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day14"))), 4)
  loc_16B55B7:       var_9F4 = var_9C4 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day15"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day16"))), 4)
  loc_16B55E6:       var_A34 = Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day18"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day19"))), 4)
  loc_16B5608:       var_A64 = var_A34 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day20"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day21"))), 4)
  loc_16B562A:       var_A94 = var_A64 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day22"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day23"))), 4)
  loc_16B564C:       var_AC4 = var_A94 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day24"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day25"))), 4)
  loc_16B566E:       var_AFC = var_AC4 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day26"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day27"))), 4)
  loc_16B567E:       Print 1, var_9F4 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day17"))), 4) & "|" & var_AFC & "|"
  loc_16B581F:       var_86 = (var_86 + 1)
  loc_16B5828:       If (var_86 > &H3C) Then
  loc_16B5830:         Print 1, var_A0
  loc_16B5838:         var_86 = 0
  loc_16B5841:         var_88 = (var_88 + 1)
  loc_16B5856:         Print 1, Chr(&HC)
  loc_16B585F:       End If
  loc_16B5865:       Me.MoveNext
  loc_16B587E:       If (Me.EOF = &HFF) Then
  loc_16B5881:         GoTo loc_16B588C
  loc_16B5884:         ' Referenced from: 16B4E69
  loc_16B5884:       End If
  loc_16B5887:     Next var_914 'Integer
  loc_16B588C:     ' Referenced from: 16B5881
  loc_16B588C:     GoTo loc_16B4463
  loc_16B588F:   End If
  loc_16B588F: End If
  loc_16B5894: Print 1, var_A0
  loc_16B58BA: var_14C = (Chr(&H12) + Chr(&HC))
  loc_16B58C0: Print 1, CVar(Me.Fields.Item("Day5"))
  loc_16B58D1: Close 1
  loc_16B58DA: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_16B58EA: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_16B58F5: Close 1
  loc_16B58FF: If (MemVar_1F953BC = "Y") Then
  loc_16B591B:   var_9C = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_16B5925: Else
  loc_16B593E:   var_9C = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_16B5945: End If
  loc_16B5945: Exit Sub
  loc_16B5946: ' Referenced from: 16B43F0
  loc_16B5946: Proc_6_60_E63754()
  loc_16B594B: Exit Sub
End Sub

Public Sub Proc_128_40_F6FE18(arg_C) 'F6FE18
  'Data Table: 481B8C
  Dim var_B8 As String
  Dim var_A4 As Variant
  Dim var_90 As Recordset15
  loc_F6FCEA: IStAdFunc
  loc_F6FCF1: Set var_90 = arg_C 
  loc_F6FD19: Me.Recordset15.Fields.Append "VenueName", &HC8, &H32
  loc_F6FD28: For var_A8 = 0 To &H17: var_8A = var_A8 'Integer
  loc_F6FD38:   var_B8 = "00"
  loc_F6FD46:   var_A4 = var_8A
  loc_F6FD84:   var_90.Fields.Append CStr("Hr" & Format(var_A4, var_B8)), &HC8, &H4B
  loc_F6FD9B: Next var_A8 'Integer
  loc_F6FDC4: var_90.Fields.Append "VenueCode", &HC8, 5
  loc_F6FDD4: var_90.CursorType = 3
  loc_F6FDE1: var_90.LockType = 3
  loc_F6FE00: var_90.Open var_A4, var_B8, -1
  loc_F6FE07: Set var_90 = Nothing 
  loc_F6FE0E: Set var_88 = arg_C 
  loc_F6FE12: Proc_128_40_F6FE18 = -1
End Sub
