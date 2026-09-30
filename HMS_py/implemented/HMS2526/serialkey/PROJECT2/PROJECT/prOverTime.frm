VERSION 5.00
Begin VB.Form prOverTime
  Caption = "Over Time"
  BackColor = &HD0C7BB&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "prOverTime.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8235
  ClientHeight = 5940
  Begin DataGrid DGEmployee
    Left = 6330
    Top = 5505
    Width = 11250
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 22
  End
  Begin DataGrid DGMaster
    Left = 1155
    Top = 3675
    Width = 11970
    Height = 3375
    TabIndex = 10
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8235
    Height = 405
    TabIndex = 18
  End
  Begin TextBox Txt
    Index = 6
    ForeColor = &HC00000&
    Left = 4725
    Top = 2235
    Width = 1320
    Height = 315
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 10
    BeginProperty Font
      Name = "Arial"
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
    Index = 5
    Left = 3375
    Top = 2580
    Width = 4620
    Height = 1065
    TabIndex = 6
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 150
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 4
    ForeColor = &HC00000&
    Left = 3375
    Top = 2235
    Width = 1320
    Height = 315
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 10
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin PictureBox Picture3
    Picture = "prOverTime.frx":1082
    Left = 14580
    Top = 960
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 14
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3765
    Top = 1890
    Width = 360
    Height = 315
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 2
    BeginProperty Font
      Name = "Arial"
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
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3375
    Top = 1890
    Width = 360
    Height = 315
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 2
    BeginProperty Font
      Name = "Arial"
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
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3375
    Top = 1545
    Width = 1335
    Height = 315
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "Arial"
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
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3375
    Top = 1230
    Width = 4300
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 50
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSFlexGrid FGPoint
    Left = 5730
    Top = 5385
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 13
  End
  Begin Label LblEmpRef
    Caption = "."
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 7785
    Top = 1230
    Width = 105
    Height = 270
    TabIndex = 23
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 435
    Width = 180
    Height = 540
    TabIndex = 21
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 7245
    Top = 8655
    Width = 2790
    Height = 285
    TabIndex = 20
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 3870
    Top = 8655
    Width = 2880
    Height = 255
    TabIndex = 19
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Amount"
    Index = 1
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 5085
    Top = 2250
    Width = 735
    Height = 270
    TabIndex = 17
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Remark"
    Index = 7
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 1815
    Top = 2580
    Width = 735
    Height = 270
    TabIndex = 16
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "OT Rate / Hr"
    Index = 5
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 1785
    Top = 2250
    Width = 1155
    Height = 270
    TabIndex = 15
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Caption = ":"
    ForeColor = &HC00000&
    Left = 3795
    Top = 2055
    Width = 60
    Height = 270
    TabIndex = 12
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Min"
    Index = 0
    ForeColor = &HC00000&
    Left = 4185
    Top = 1905
    Width = 390
    Height = 270
    TabIndex = 11
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
  Begin Label Label3
    Caption = "Over TIme    Hr"
    ForeColor = &HC00000&
    Left = 1785
    Top = 1905
    Width = 1440
    Height = 240
    TabIndex = 9
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
  Begin Label LblName
    Caption = "Over Time Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 1785
    Top = 1560
    Width = 1485
    Height = 270
    TabIndex = 8
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
  Begin Label LblName
    Caption = "Employee"
    Index = 0
    ForeColor = &HC00000&
    Left = 1785
    Top = 1230
    Width = 945
    Height = 240
    TabIndex = 7
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
End

Attribute VB_Name = "prOverTime"


Private Sub Txt_GotFocus(Index As Integer) '104F3E4
  'Data Table: 48BBCC
  Dim var_8C As TextBox
  Dim var_C4 As Variant
  Dim var_C6 As Integer
  Dim Me As Recordset15
  Dim var_E4 As String
  Dim var_90 As Fields15
  loc_104F196: Set var_88 = Me.Txt
  loc_104F19C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_104F1AA: Proc_6_74_E23240(var_8C)
  loc_104F1C5: Set var_88 = Me.Txt
  loc_104F1CB: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_104F1D3: var_8C.SelStart = 0
  loc_104F1E9: Set var_88 = Me.Txt
  loc_104F1EF: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_104F216: Set var_90 = Me.Txt
  loc_104F21C: Call 0.Method_Txt_GotFocus0 (Index, var_C4)
  loc_104F224: var_C4.SelLength = CLng(Len(Trim(CVar(var_8C))))
  loc_104F239: Call Proc_309_32_E84E10(var_8C)
  loc_104F241: var_C6 = Index
  loc_104F24C: If (var_C6 = CInt(0)) Then
  loc_104F266:   If (Me.RecordCount > 0) Then
  loc_104F274:     Set var_8C = Me.FGPoint
  loc_104F28C:     Proc_6_137_1192FDC(Me.DGEmployee, global_56, Index)
  loc_104F29A:   End If
  loc_104F2E8:   Set var_88 = Me.Txt
  loc_104F2EE:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_104F2F6:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_104F30E:   If (var_8C Or (var_D4 = vbNullString)) Then
  loc_104F311:     Exit Sub
  loc_104F312:   End If
  loc_104F31F:   Set var_88 = Me.Txt
  loc_104F325:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_104F32D:   var_D4 = var_8C.Text
  loc_104F33F:   var_E4 = "Name"
  loc_104F37A:   If CBool(CVar(var_D4) <> Me.Fields.Item(var_E4).Value) Then
  loc_104F383:     Me.MoveFirst
  loc_104F3A6:     Set var_88 = Me.Txt
  loc_104F3AC:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name ='")
  loc_104F3B4:     0 = var_8C.Text
  loc_104F3CD:     Me.Find 1 & var_D4 & "'", var_E4, var_C6
  loc_104F3E2:   End If
  loc_104F3E2: End If
  loc_104F3E2: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '105A72C
  'Data Table: 48BBCC
  Dim var_8C As Integer
  Dim var_8E As Integer
  Dim Me As Recordset15
  Dim var_94 As DataGrid
  loc_105A4C3: var_8C = Shift
  loc_105A4D0: If (CLng(Shift) = &H1B) Then
  loc_105A4D3:   Call Proc_309_32_E84E10(var_8C)
  loc_105A4D8:   Exit Sub
  loc_105A4D9: End If
  loc_105A4DC: var_8E = KeyCode
  loc_105A4E7: If (var_8E = CInt(0)) Then
  loc_105A507:   Set var_A4 = Me.FGPoint
  loc_105A512:   Set var_A0 = Nothing
  loc_105A540:   Proc_6_69_134A630(Me.DGEmployee, Me.Txt, KeyCode, global_56, Shift, 0)
  loc_105A5AF:   If ((Me.RecordCount > 0) And ((((((CLng(var_8C) = &H28) Or (CLng(var_8C) = &H26)) Or (CLng(var_8C) = &H25)) Or (CLng(var_8C) = &H27)) Or (CLng(var_8C) = &H21)) Or (CLng(var_8C) = &H22))) Then
  loc_105A5B6:     Set var_A0 = Me.DGEmployee
  loc_105A5BD:     Set var_98 = Me.FGPoint
  loc_105A5D5:     Proc_6_138_106E830(var_A0, global_56, KeyCode, var_98, 1)
  loc_105A5E3:   End If
  loc_105A5E6: Else
  loc_105A5EE:   If Not (var_8E = CInt(2)) Then
  loc_105A5F9:     If (var_8E = CInt(3)) Then
  loc_105A5FC:     End If
  loc_105A606:     Set var_94 = Me.Txt
  loc_105A60C:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_98, var_A0)
  loc_105A627:     Proc_6_41_FA1734(var_98, Shift, 2, 0)
  loc_105A636:   Else
  loc_105A63E:     If Not (var_8E = CInt(4)) Then
  loc_105A649:       If (var_8E = CInt(6)) Then
  loc_105A64C:       End If
  loc_105A656:       Set var_94 = Me.Txt
  loc_105A65C:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_98, var_A4)
  loc_105A677:       Proc_6_41_FA1734(var_98, Shift, 7)
  loc_105A686:     Else
  loc_105A68E:       If (var_8E = CInt(5)) Then
  loc_105A694:         Proc_6_58_E06050(Shift, 2)
  loc_105A699:       End If
  loc_105A699:     End If
  loc_105A699:   End If
  loc_105A699: End If
  loc_105A6B5: If (CBool(Me.DGEmployee.Visible) = 0) Then
  loc_105A6CB:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_105A6D4:     Proc_6_76_E533C8(Shift, arg_14)
  loc_105A6D9:   End If
  loc_105A6F7:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(5))) Then
  loc_105A6FA:     GoTo loc_105A720
  loc_105A6FD:   End If
  loc_105A712:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_105A71B:     Proc_6_75_E5335C(Shift, arg_14)
  loc_105A720:     ' Referenced from: 105A6FA
  loc_105A720:   End If
  loc_105A720: End If
  loc_105A725: Set var_88 = Nothing
  loc_105A728: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '11F4300
  'Data Table: 48BBCC
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_9C As Variant
  Dim var_A8 As TextBox
  Dim var_118 As Double
  Dim var_B4 As TextBox
  Dim var_120 As Double
  Dim var_C0 As TextBox
  Dim var_128 As Double
  Dim var_10C As TextBox
  loc_11F3E83: Proc_6_58_E06050(arg_10)
  loc_11F3E8B: var_86 = KeyAscii
  loc_11F3E96: If (var_86 = CInt(0)) Then
  loc_11F3EB5:   If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_11F3EC7:     var_A0 = "Name"
  loc_11F3EE2:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_56, arg_10)
  loc_11F3EFC:     Set var_A8 = Me.FGPoint
  loc_11F3F14:     Proc_6_138_106E830(Me.DGEmployee, global_56, KeyAscii, var_A8)
  loc_11F3F22:   End If
  loc_11F3F25: Else
  loc_11F3F2D:   If Not (var_86 = CInt(2)) Then
  loc_11F3F38:     If (var_86 = CInt(3)) Then
  loc_11F3F3B:     End If
  loc_11F3F45:     Set var_8C = Me.Txt
  loc_11F3F4B:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_A0)
  loc_11F3F66:     Proc_6_42_129B55C(var_A8, arg_10, 2)
  loc_11F3F80:     Set var_8C = Me.Txt
  loc_11F3F86:     Call 0.Method_Txt_KeyPress0 (CInt(4), var_A8, var_A0)
  loc_11F3F8E:     0 = var_A8.Text
  loc_11F3F9B:     var_118 = Val(var_A0)
  loc_11F3FAC:     Set var_AC = Me.Txt
  loc_11F3FB2:     Call 0.Method_Txt_KeyPress0 (CInt(2), var_B4, var_B8)
  loc_11F3FC7:     var_120 = Val(var_B8)
  loc_11F3FD8:     Set var_BC = Me.Txt
  loc_11F3FDE:     Call 0.Method_Txt_KeyPress0 (CInt(3), var_C0, var_C4)
  loc_11F3FF3:     var_128 = Val(var_C4)
  loc_11F401A:     var_9C = CVar((var_B4.Text * (var_C0.Text + (var_128 / CDbl(&H3C))))) 'Double
  loc_11F4038:     Set var_108 = Me.Txt
  loc_11F403E:     Call 0.Method_Txt_KeyPress0 (CInt(6), var_10C, CStr(Format(Me.DGEmployee.Visible, "0.00")), 1)
  loc_11F4046:     var_10C.Text = 1
  loc_11F4075:   Else
  loc_11F407D:     If (var_86 = CInt(4)) Then
  loc_11F408A:       Set var_8C = Me.Txt
  loc_11F4090:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_128)
  loc_11F40AB:       Proc_6_42_129B55C(var_A8, arg_10, 7)
  loc_11F40C5:       Set var_8C = Me.Txt
  loc_11F40CB:       Call 0.Method_Txt_KeyPress0 (CInt(4), var_A8, var_A0)
  loc_11F40D3:       2 = var_A8.Text
  loc_11F40E0:       var_118 = Val(var_A0)
  loc_11F40F1:       Set var_AC = Me.Txt
  loc_11F40F7:       Call 0.Method_Txt_KeyPress0 (CInt(2), var_B4, var_B8)
  loc_11F410C:       var_120 = Val(var_B8)
  loc_11F411D:       Set var_BC = Me.Txt
  loc_11F4123:       Call 0.Method_Txt_KeyPress0 (CInt(3), var_C0, var_C4)
  loc_11F4138:       var_128 = Val(var_C4)
  loc_11F415F:       var_9C = CVar((var_B4.Text * (var_C0.Text + (var_128 / CDbl(&H3C))))) 'Double
  loc_11F417D:       Set var_108 = Me.Txt
  loc_11F4183:       Call 0.Method_Txt_KeyPress0 (CInt(6), var_10C, CStr(Format(Me.DGEmployee.Visible, "0.00")), 1)
  loc_11F418B:       var_10C.Text = 1
  loc_11F41BA:     Else
  loc_11F41C2:       If (var_86 = CInt(6)) Then
  loc_11F41CF:         Set var_8C = Me.Txt
  loc_11F41D5:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_128)
  loc_11F41F0:         Proc_6_42_129B55C(var_A8, arg_10, 7)
  loc_11F420A:         Set var_8C = Me.Txt
  loc_11F4210:         Call 0.Method_Txt_KeyPress0 (CInt(6), var_A8, var_A0)
  loc_11F4218:         2 = var_A8.Text
  loc_11F4225:         var_118 = Val(var_A0)
  loc_11F4236:         Set var_AC = Me.Txt
  loc_11F423C:         Call 0.Method_Txt_KeyPress0 (CInt(2), var_B4, var_B8)
  loc_11F4251:         var_120 = Val(var_B8)
  loc_11F4262:         Set var_BC = Me.Txt
  loc_11F4268:         Call 0.Method_Txt_KeyPress0 (CInt(3), var_C0, var_C4)
  loc_11F42A4:         var_9C = CVar((var_B4.Text / (var_C0.Text + (Val(var_C4) / CDbl(&H3C))))) 'Double
  loc_11F42C2:         Set var_108 = Me.Txt
  loc_11F42C8:         Call 0.Method_Txt_KeyPress0 (CInt(4), var_10C, CStr(Format(Me.DGEmployee.Visible, "0.00")), 1)
  loc_11F42D0:         var_10C.Text = 1
  loc_11F42FC:       End If
  loc_11F42FC:     End If
  loc_11F42FC:   End If
  loc_11F42FC: End If
  loc_11F42FC: Exit Sub
  loc_11F42FD: ThisVCallI2
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EAA738
  'Data Table: 48BBCC
  loc_EAA6C6: If (KeyCode = CInt(0)) Then
  loc_EAA6E5:   If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_EAA6F9:     var_A8 = "Name"
  loc_EAA721:     Proc_6_68_12A2818(Me.DGEmployee, Me.Txt, CInt(0), global_56)
  loc_EAA734:   End If
  loc_EAA734: End If
  loc_EAA734: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E48C14
  'Data Table: 48BBCC
  loc_E48BF2: Set var_88 = Me.Txt
  loc_E48BF8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E48C06: Proc_6_73_E23294(var_8C)
  loc_E48C12: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '14D6800
  'Data Table: 48BBCC
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_118 As Variant
  Dim var_C4 As Variant
  Dim var_11C As TextBox
  Dim var_148 As Double
  Dim var_150 As Double
  Dim var_158 As Double
  Dim var_140 As String
  Dim var_13C As TextBox
  Dim var_134 As String
  Dim var_15C As TextBox
  Dim var_120 As String
  Dim unk_48BBDA As Connection15
  Dim var_138 As TextBox
  Dim var_104 As Variant
  Dim var_180 As Integer
  Dim var_16C As Recordset15
  Dim var_170 As Fields15
  Dim var_184 As Field20
  Dim var_18C As TextBox
  Dim arg_10 As Integer
  loc_14D5A8F: var_86 = Cancel
  loc_14D5A9A: If (var_86 = CInt(0)) Then
  loc_14D5AEB:   Set var_94 = Me.Txt
  loc_14D5AF1:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_14D5AF9:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_14D5B11:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_14D5B14:     Exit Sub
  loc_14D5B15:   End If
  loc_14D5B50:   Set var_B0 = Me.Txt
  loc_14D5B56:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_14D5B5E:   var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14D5BAF:   Set var_B0 = Me.Txt
  loc_14D5BB5:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_14D5BBD:   var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_14D5BF0:   var_98 = Me.Fields.Item("Department")
  loc_14D5C00:   var_D4 = " - "
  loc_14D5C05:   var_E4 = (var_98.Value + var_D4)
  loc_14D5C2E:   var_104 = Me.Fields.Item("Designation").Value
  loc_14D5C36:   var_114 = (var_E4 + var_104)
  loc_14D5C48:   Me.LblEmpRef.Caption = CStr(var_114)
  loc_14D5C76:   Set var_94 = Me.Txt
  loc_14D5C7C:   Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_14D5CB0:   var_B4 = Me.Fields.Item("OTRate")
  loc_14D5CBF:   Proc_6_39_E7D3A0(var_E4, CVar(var_B4))
  loc_14D5CD9:   Set var_118 = Me.Txt
  loc_14D5CDF:   Call 0.Method_Txt_Validate0 (CInt(4), var_11C)
  loc_14D5CE7:   var_120 = var_11C.Text
  loc_14D5CFD:   var_114 = (CVar(Val(var_98.Text)) <> var_E4) And (CDbl(Val(var_120)) <> CDbl(0))
  loc_14D5D20:   If CBool(var_114) Then
  loc_14D5D2E:     var_E4 = "Change OT Rate"
  loc_14D5D5A:     If (MsgBox("Want Change OT Rate Acc. to Employee Master.", &H104, var_E4, var_104, var_114) = 6) Then
  loc_14D5D77:       var_98 = Me.Fields.Item("OTRate")
  loc_14D5D7F:       var_C4 = CVar(var_98) 'Address
  loc_14D5D86:       Proc_6_39_E7D3A0(var_E4)
  loc_14D5DAE:       var_9C = CStr(Format(var_E4, "0.00"))
  loc_14D5DBD:       Set var_B0 = Me.Txt
  loc_14D5DC3:       Call 0.Method_Txt_Validate0 (CInt(4), var_B4, var_9C)
  loc_14D5DF5:       Set var_94 = Me.Txt
  loc_14D5DFB:       Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_9C)
  loc_14D5E03:       1 = var_98.Text
  loc_14D5E10:       var_148 = Val(var_9C)
  loc_14D5E21:       Set var_B0 = Me.Txt
  loc_14D5E27:       Call 0.Method_Txt_Validate0 (CInt(2), var_B4, var_120)
  loc_14D5E3C:       var_150 = Val(var_120)
  loc_14D5E4D:       Set var_118 = Me.Txt
  loc_14D5E53:       Call 0.Method_Txt_Validate0 (CInt(3), var_11C, var_134)
  loc_14D5E7A:       var_E4 = "0.00"
  loc_14D5E8F:       var_C4 = CVar((1 * (var_11C.Text + (Val(var_134) / CDbl(&H3C))))) 'Double
  loc_14D5EAD:       Set var_138 = Me.Txt
  loc_14D5EB3:       Call 0.Method_Txt_Validate0 (CInt(6), var_13C, CStr(Format(var_C4, var_E4)), 1)
  loc_14D5EBB:       var_13C.Text = 1
  loc_14D5EE7:     End If
  loc_14D5EEA:   Else
  loc_14D5F04:     var_98 = Me.Fields.Item("OTRate")
  loc_14D5F13:     Proc_6_39_E7D3A0(var_E4, CVar(var_98))
  loc_14D5F33:     var_114 = Format(var_E4, "0.00")
  loc_14D5F3B:     var_9C = CStr(var_114)
  loc_14D5F4A:     Set var_B0 = Me.Txt
  loc_14D5F50:     Call 0.Method_Txt_Validate0 (CInt(4), var_B4, var_9C, 1)
  loc_14D5F82:     Set var_94 = Me.Txt
  loc_14D5F88:     Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_9C)
  loc_14D5F90:     var_158 = var_98.Text
  loc_14D5F9D:     var_148 = Val(var_9C)
  loc_14D5FAE:     Set var_B0 = Me.Txt
  loc_14D5FB4:     Call 0.Method_Txt_Validate0 (CInt(2), var_B4, var_120)
  loc_14D5FC9:     var_150 = Val(var_120)
  loc_14D5FDA:     Set var_118 = Me.Txt
  loc_14D5FE0:     Call 0.Method_Txt_Validate0 (CInt(3), var_11C, var_134)
  loc_14D601C:     var_C4 = CVar((1 * (var_11C.Text + (Val(var_134) / CDbl(&H3C))))) 'Double
  loc_14D602B:     var_140 = CStr(Format(CVar(var_98), "0.00"))
  loc_14D603A:     Set var_138 = Me.Txt
  loc_14D6040:     Call 0.Method_Txt_Validate0 (CInt(6), var_13C, var_140, 1)
  loc_14D6048:     var_13C.Text = 1
  loc_14D6074:   End If
  loc_14D6077: Else
  loc_14D607F:   If (var_86 = CInt(1)) Then
  loc_14D608F:     Set var_94 = Me.Txt
  loc_14D6095:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_14D609D:     var_158 = var_98.Text
  loc_14D60BB:     Set var_B0 = Me.Txt
  loc_14D60C1:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_14D60C9:     var_B4.Text = Proc_6_34_14EEAAC(var_9C)
  loc_14D60EE:     Set var_94 = Me.Txt
  loc_14D60F4:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_14D610F:     Set var_13C = Me.Txt
  loc_14D6115:     Call 0.Method_Txt_Validate0 (CInt(0), var_15C)
  loc_14D6128:     var_D4 = 0
  loc_14D614C:     var_134 = "Select Max(Joining_date) from employee where code='" & var_98.Tag & "'"
  loc_14D6155:     unk_48BBDA.Execute var_134, CVar(var_98), -1
  loc_14D615D:     var_B0 = var_B0.Fields
  loc_14D6165:     var_D4 = var_B4.Item(var_B4)
  loc_14D616D:     var_118 = var_118.Value
  loc_14D6182:     Set var_11C = Me.Txt
  loc_14D6188:     Call 0.Method_Txt_Validate0 (Cancel, var_138, var_140)
  loc_14D6190:     var_E4 = var_138.Text
  loc_14D619F:     var_104 = (var_E4 > CDate(CDate(var_140)))
  loc_14D61A9:     var_180 = 0
  loc_14D61D6:     unk_48BBDA.Execute "Select Resign_date from employee where code='" & var_15C.Tag & "'", var_114, -1
  loc_14D61DE:     var_16C = var_16C.Fields
  loc_14D61E6:     var_180 = var_170.Item(var_170)
  loc_14D61EE:     var_184 = var_184.Value
  loc_14D6203:     Set var_188 = Me.Txt
  loc_14D6209:     Call 0.Method_Txt_Validate0 (Cancel, var_18C, var_190, var_1A0)
  loc_14D6211:     var_1A0 = var_18C.Text
  loc_14D6267:     If CBool(CVar(var_98) Or (var_104 < CDate(CDate(var_190)))) Then
  loc_14D6283:       MsgBox("Invalid Date For This Employee", &H40, var_E4, var_104, var_114)
  loc_14D6295:       arg_10 = &HFF
  loc_14D6298:     End If
  loc_14D62A5:     Set var_94 = Me.Txt
  loc_14D62AB:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14D62B3:     var_9C = var_98.Text
  loc_14D62E0:     If (Proc_6_95_EF59C0(CDate(var_9C), "Over Time Date") = 0) Then
  loc_14D62E5:       arg_10 = &HFF
  loc_14D62E8:     End If
  loc_14D62EB:   Else
  loc_14D62F3:     If Not (var_86 = CInt(2)) Then
  loc_14D62FE:       If (var_86 = CInt(3)) Then
  loc_14D6301:       End If
  loc_14D630E:       Set var_94 = Me.Txt
  loc_14D6314:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_14D631C:       arg_10 = var_98.Text
  loc_14D6347:       var_120 = CStr(Format(CVar(var_9C), "00"))
  loc_14D6355:       Set var_B0 = Me.Txt
  loc_14D635B:       Call 0.Method_Txt_Validate0 (Cancel, var_B4, var_120)
  loc_14D6363:       var_B4.Text = 1
  loc_14D638D:       Set var_94 = Me.Txt
  loc_14D6393:       Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_9C)
  loc_14D639B:       1 = var_98.Text
  loc_14D63B7:       If (CDbl(Val(var_9C)) > CDbl(&H18)) Then
  loc_14D63BC:         arg_10 = &HFF
  loc_14D63BF:       End If
  loc_14D63CD:       Set var_94 = Me.Txt
  loc_14D63D3:       Call 0.Method_Txt_Validate0 (CInt(3), var_98, var_9C)
  loc_14D63DB:       arg_10 = var_98.Text
  loc_14D63F7:       If (CDbl(Val(var_9C)) >= CDbl(&H3C)) Then
  loc_14D63FC:         arg_10 = &HFF
  loc_14D63FF:       End If
  loc_14D640D:       Set var_94 = Me.Txt
  loc_14D6413:       Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_9C)
  loc_14D641B:       arg_10 = var_98.Text
  loc_14D6428:       var_148 = Val(var_9C)
  loc_14D6439:       Set var_B0 = Me.Txt
  loc_14D643F:       Call 0.Method_Txt_Validate0 (CInt(2), var_B4, var_120)
  loc_14D6454:       var_150 = Val(var_120)
  loc_14D6465:       Set var_118 = Me.Txt
  loc_14D646B:       Call 0.Method_Txt_Validate0 (CInt(3), var_11C, var_134)
  loc_14D64A7:       var_C4 = CVar((var_B4.Text * (var_11C.Text + (Val(var_134) / CDbl(&H3C))))) 'Double
  loc_14D64C5:       Set var_138 = Me.Txt
  loc_14D64CB:       Call 0.Method_Txt_Validate0 (CInt(6), var_13C, CStr(Format(CVar(var_9C), "0.00")), 1)
  loc_14D64D3:       var_13C.Text = 1
  loc_14D6502:     Else
  loc_14D650A:       If (var_86 = CInt(4)) Then
  loc_14D6517:         Set var_94 = Me.Txt
  loc_14D651D:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14D6549:         var_9C = CStr(Format(CVar(var_98), "0.00"))
  loc_14D6557:         Set var_B0 = Me.Txt
  loc_14D655D:         Call 0.Method_Txt_Validate0 (Cancel, var_B4, var_9C, 1)
  loc_14D658D:         Set var_94 = Me.Txt
  loc_14D6593:         Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_9C)
  loc_14D659B:         var_158 = var_98.Text
  loc_14D65A8:         var_148 = Val(var_9C)
  loc_14D65B9:         Set var_B0 = Me.Txt
  loc_14D65BF:         Call 0.Method_Txt_Validate0 (CInt(2), var_B4, var_120)
  loc_14D65D4:         var_150 = Val(var_120)
  loc_14D65E5:         Set var_118 = Me.Txt
  loc_14D65EB:         Call 0.Method_Txt_Validate0 (CInt(3), var_11C, var_134)
  loc_14D6627:         var_C4 = CVar((1 * (var_11C.Text + (Val(var_134) / CDbl(&H3C))))) 'Double
  loc_14D6645:         Set var_138 = Me.Txt
  loc_14D664B:         Call 0.Method_Txt_Validate0 (CInt(6), var_13C, CStr(Format(CVar(var_98), "0.00")), 1)
  loc_14D6653:         var_13C.Text = 1
  loc_14D6682:       Else
  loc_14D668A:         If (var_86 = CInt(6)) Then
  loc_14D6697:           Set var_94 = Me.Txt
  loc_14D669D:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14D66C9:           var_9C = CStr(Format(CVar(var_98), "0.00"))
  loc_14D66D7:           Set var_B0 = Me.Txt
  loc_14D66DD:           Call 0.Method_Txt_Validate0 (Cancel, var_B4, var_9C, 1)
  loc_14D670D:           Set var_94 = Me.Txt
  loc_14D6713:           Call 0.Method_Txt_Validate0 (CInt(6), var_98, var_9C)
  loc_14D671B:           var_158 = var_98.Text
  loc_14D6728:           var_148 = Val(var_9C)
  loc_14D6739:           Set var_B0 = Me.Txt
  loc_14D673F:           Call 0.Method_Txt_Validate0 (CInt(2), var_B4, var_120)
  loc_14D6754:           var_150 = Val(var_120)
  loc_14D6765:           Set var_118 = Me.Txt
  loc_14D676B:           Call 0.Method_Txt_Validate0 (CInt(3), var_11C, var_134)
  loc_14D67A7:           var_C4 = CVar((1 / (var_11C.Text + (Val(var_134) / CDbl(&H3C))))) 'Double
  loc_14D67C5:           Set var_138 = Me.Txt
  loc_14D67CB:           Call 0.Method_Txt_Validate0 (CInt(4), var_13C, CStr(Format(CVar(var_98), "0.00")), 1)
  loc_14D67D3:           var_13C.Text = 1
  loc_14D67FF:         End If
  loc_14D67FF:       End If
  loc_14D67FF:     End If
  loc_14D67FF:   End If
  loc_14D67FF: End If
  loc_14D67FF: Exit Sub
End Sub

Private Sub DGEmployee_UnknownEvent_9 'F3B4F4
  'Data Table: 48BBCC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3B3EB: Me.DGEmployee.Visible = False
  loc_F3B40A: If (Me.RecordCount > 0) Then
  loc_F3B449:   Set var_B4 = Me.Txt
  loc_F3B44F:   Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3B457:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3B48A:   var_B0 = Me.Fields.Item("Code")
  loc_F3B4A9:   Set var_B4 = Me.Txt
  loc_F3B4AF:   Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3B4B7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3B4CD: End If
  loc_F3B4D8: Set var_A8 = Me.Txt
  loc_F3B4DE: Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(0))
  loc_F3B4E6: var_B0.SetFocus
  loc_F3B4F2: Exit Sub
End Sub

Private Sub DGEmployee_UnknownEvent_1F 'EA7510
  'Data Table: 48BBCC
  Dim var_A8 As Variant
  loc_EA7490: Set var_88 = Me.DGEmployee
  loc_EA74BA: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA74C2: Set var_BC = Me.DGEmployee
  loc_EA74FE: Proc_6_138_106E830(Me.DGEmployee, global_56, CInt(0), Me.FGPoint)
  loc_EA750C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EAA8D4
  'Data Table: 48BBCC
  Dim var_8C As Label
  Dim var_94 As TextBox
  loc_EAA848: On Error Goto loc_EAA8CE
  loc_EAA86E: Call Proc_309_28_E929CC(Proc_5_1_100EC1C("ADD", Me))
  loc_EAA886: Me.LblUser.Caption = vbNullString
  loc_EAA89B: Me.LblLDt.Caption = vbNullString
  loc_EAA8A3: Call Proc_309_29_ED0878(global_52)
  loc_EAA8B3: Set var_8C = Me.Txt
  loc_EAA8B9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EAA8C1: var_94.SetFocus
  loc_EAA8CD: Exit Sub
  loc_EAA8CE: ' Referenced from: EAA848
  loc_EAA8CE: Proc_6_60_E63754(var_94)
  loc_EAA8D3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EDBCAC
  'Data Table: 48BBCC
  loc_EDBC00: On Error Goto loc_EDBCA5
  loc_EDBC3A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EDBC60:   Call Proc_309_28_E929CC(Proc_5_1_100EC1C("INI", Me))
  loc_EDBC6B:   Call Proc_309_32_E84E10(global_52)
  loc_EDBC70:   Call Proc_309_30_1304438()
  loc_EDBC79:   Set var_110 = Me.DGMaster
  loc_EDBC8D: Else
  loc_EDBC93:   Call 0.Method_arg_1E8 (var_110)
  loc_EDBC9B:   Call var_110.SetFocus
  loc_EDBCA4: End If
  loc_EDBCA4: Exit Sub
  loc_EDBCA5: ' Referenced from: EDBC00
  loc_EDBCA5: Proc_6_60_E63754(DGMaster.DispID_8001)
  loc_EDBCAA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '118E300
  'Data Table: 48BBCC
  Dim var_B8 As Variant
  Dim var_100 As Variant
  Dim var_140 As Variant
  Dim var_154 As String
  Dim var_A8 As Variant
  Dim unk_48BBDA As Connection15
  Dim var_96 As Integer
  Dim Me As Recordset15
  Dim var_A4 As Fields15
  Dim var_E8 As Variant
  loc_118DF4C: On Error Goto loc_118E2A8
  loc_118DF5A: Set var_A4 = Me.Txt
  loc_118DF60: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1))
  loc_118DF70: Set var_EC = Me.Txt
  loc_118DF76: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_F0)
  loc_118DF93: var_B8 = CVar(var_A8) 'Address
  loc_118DF9A: var_E8 = Format(var_B8, "MMM")
  loc_118DFB1: var_120 = "YYYY"
  loc_118DFBA: var_100 = CVar(var_F0) 'Address
  loc_118DFC9: var_140 = (1 + Format(var_100, var_120))
  loc_118E022: Set var_A4 = Me.Txt
  loc_118E028: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_A8, var_158, "Select * From Salary Where site_code='" & MemVar_1F95070 & "' and Emp_Code='", var_B8, -1)
  loc_118E057: unk_48BBDA.Execute 1 & var_158 & "' and Mth_Year='" & CStr(Ucase(var_140)) & "'", var_E8, 1
  loc_118E088: var_170 = var_A8.Tag.RecordCount
  loc_118E096: If (var_170 > 0) Then
  loc_118E09F:   Call 0.Method_arg_50 (var_158, 1)
  loc_118E0C6:   MsgBox(CVar("Salary Already Created, " & vbCrLf & " You Can Not delete Record ..."), &H40, CVar(var_158), var_E8, var_100)
  loc_118E0D9:   Exit Sub
  loc_118E0DA: End If
  loc_118E111: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_E8, var_100) = 6) Then
  loc_118E116:   var_96 = 0
  loc_118E122:   unk_48BBDA.BeginTrans var_170
  loc_118E129:   var_96 = &HFF
  loc_118E13D:   var_94 = Me.Bookmark 'Variant
  loc_118E170:   var_A8 = Me.Fields.Item("EmpCode")
  loc_118E189:   var_E8 = "Delete From overTime Where EmpCode='" & var_A8.Value & "' And OTDate=" 
  loc_118E198:   Set var_EC = Me.Txt
  loc_118E19E:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_F0, var_E8, var_140, -1)
  loc_118E1A6:   var_100 = CVar(var_F0) 'Address
  loc_118E1AD:   Proc_6_7_F26918(var_120, var_100, var_194)
  loc_118E1B9:   var_154 = CStr(var_96 & var_120)
  loc_118E1C3:   unk_48BBDA.Execute var_154, var_96, var_A8
  loc_118E1ED:   unk_48BBDA.CommitTrans
  loc_118E1F4:   var_96 = 0
  loc_118E202:   Me.Requery -1
  loc_118E212:   Me.Requery -1
  loc_118E232:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_118E23F:     Me.Bookmark = var_94
  loc_118E247:   Else
  loc_118E25B:     If (Me.EOF = 0) Then
  loc_118E264:       Me.MoveLast
  loc_118E269:     End If
  loc_118E269:   End If
  loc_118E269:   Call Proc_309_30_1304438(var_96)
  loc_118E28A:   Proc_5_0_1107AD0(&HFF, Me)
  loc_118E296:   Set var_A4 = Me.DGMaster
  loc_118E2A7: End If
  loc_118E2A7: Exit Sub
  loc_118E2A8: ' Referenced from: 118DF4C
  loc_118E2AE: If (var_96 = &HFF) Then
  loc_118E2B7:   unk_48BBDA.RollbackTrans
  loc_118E2BC: End If
  loc_118E2C4: Set var_A4 = Err()
  loc_118E2CA: Call 0.Method_arg_2C (var_154, DGMaster.DispID_8001)
  loc_118E2EB: MsgBox(CVar(var_154), &H30, " Deletion Error ", var_E8, var_100)
  loc_118E2FE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '10995AC
  'Data Table: 48BBCC
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_12C As Variant
  Dim var_94 As TextBox
  Dim unk_48BBDA As Connection15
  Dim var_90 As Label
  loc_1099330: On Error Goto loc_10995A6
  loc_109933E: Set var_90 = Me.Txt
  loc_1099344: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1))
  loc_1099354: Set var_D8 = Me.Txt
  loc_109935A: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_DC)
  loc_1099377: var_A4 = CVar(var_94) 'Address
  loc_109937E: var_D4 = Format(var_A4, "MMM")
  loc_109939E: var_EC = CVar(var_DC) 'Address
  loc_10993AD: var_12C = (1 + Format(var_EC, "YYYY"))
  loc_1099406: Set var_90 = Me.Txt
  loc_109940C: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94, var_144, "Select * From Salary Where site_code='" & MemVar_1F95070 & "' and Emp_Code='", var_A4, -1)
  loc_109943B: unk_48BBDA.Execute 1 & var_144 & "' and Mth_Year='" & CStr(Ucase(var_12C)) & "'", var_D4, 1
  loc_109947A: If (var_94.Tag.RecordCount > 0) Then
  loc_1099483:   Call 0.Method_arg_50 (var_144, 1)
  loc_10994AA:   MsgBox(CVar("Salary Already Created, " & vbCrLf & " You Can Not Edit Record ..."), &H40, CVar(var_144), var_D4, var_EC)
  loc_10994BD:   Exit Sub
  loc_10994BE: End If
  loc_10994E1: Call Proc_309_28_E929CC(Proc_5_1_100EC1C("EDIT", Me), global_52)
  loc_10994FA: Set var_90 = Me.Txt
  loc_1099500: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_1099513: global_64 = var_94.Tag
  loc_109952F: Set var_90 = Me.Txt
  loc_1099535: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_1099548: global_68 = var_94.Text
  loc_1099561: Set var_90 = Me.Txt
  loc_1099567: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_109956F: var_94.SetFocus
  loc_1099588: Me.LblUser.Caption = vbNullString
  loc_109959D: Me.LblLDt.Caption = vbNullString
  loc_10995A5: Exit Sub
  loc_10995A6: ' Referenced from: 1099330
  loc_10995A6: Proc_6_60_E63754(var_94)
  loc_10995AB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1CCF0
  'Data Table: 48BBCC
  loc_E1CCE5: Me.Global.Unload Me
  loc_E1CCED: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F7EAC4
  'Data Table: 48BBCC
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_E8 As Variant
  Dim MemVar_1F950E4 As String
  Dim var_A8 As Variant
  loc_F7E980: On Error Goto loc_F7EA5C
  loc_F7E98C: var_88 = Me.RecordCount
  loc_F7E99A: If (var_88 <= 0) Then
  loc_F7E9B8:   var_A8 = "Records Not Present For Searching."
  loc_F7E9BE:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F7E9CE:   Exit Sub
  loc_F7E9CF: End If
  loc_F7E9CF: var_B8 = "SELECT (EmpCode+convert(Varchar(12),OTDate,103)) as SearchCode,Employee.name,convert(Varchar(12),OTDate,103) AS OTDate,OverTime.OTime,OverTime.U_name,OverTime.Amount,OverTime.Remark FROM OverTime left join Employee on Employee.Code=OverTime.EmpCode Where Overtime.OTDate Between "
  loc_F7E9DF: Proc_6_7_F26918(var_A8, MemVar_1F950F4)
  loc_F7E9F0: var_E8 = "Information" & var_A8 & " And " 
  loc_F7E9FF: Proc_6_7_F26918(var_108, MemVar_1F950FC)
  loc_F7EA15: MemVar_1F950E4 = CStr(var_E8 & var_108 & " ORDER BY OTDate")
  loc_F7EA2E: MemVar_1F95120 = Me
  loc_F7EA35: var_13C = "2000,1000,1500,1000,1000,3500"
  loc_F7EA3B: Proc_6_126_F1C850(var_13C)
  loc_F7EA56: Call 0.Method_arg_2B0 (1, "Information")
  loc_F7EA5B: Exit Sub
  loc_F7EA5C: ' Referenced from: F7E980
  loc_F7EA64: Set var_140 = Err()
  loc_F7EA6A: Call 0.Method_arg_1C (var_88)
  loc_F7EA7B: If (var_88 <> 0) Then
  loc_F7EA86:   Set var_140 = Err()
  loc_F7EA8C:   Call 0.Method_arg_2C (var_13C)
  loc_F7EAAD:   MsgBox(CVar(var_13C), &H40, "Validation", var_E8, var_108)
  loc_F7EAC0: End If
  loc_F7EAC0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E39068
  'Data Table: 48BBCC
  loc_E39058: Proc_5_0_1107AD0(&HFF, Me)
  loc_E39060: Call Proc_309_30_1304438(global_52)
  loc_E39065: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E37628
  'Data Table: 48BBCC
  loc_E37618: Proc_5_0_1107AD0(&HFF, Me)
  loc_E37620: Call Proc_309_30_1304438(global_52)
  loc_E37625: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E376E8
  'Data Table: 48BBCC
  loc_E376D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E376E0: Call Proc_309_30_1304438(global_52)
  loc_E376E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3C068
  'Data Table: 48BBCC
  loc_E3C058: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3C060: Call Proc_309_30_1304438(global_52)
  loc_E3C065: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1072124
  'Data Table: 48BBCC
  Dim unk_48BBDA As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_E4 As Variant
  loc_1071EA4: On Error Goto loc_10720DB
  loc_1071EBD: unk_48BBDA.Execute "SELECT (EmpCode+' '+convert(Varchar(12),OTDate,103)) as SearchCode,Employee.name,Overtime.EmpCode,Overtime.OTDate,OverTime.OTime,OverTime.U_name,OverTime.OTRate,OverTime.Amount,OverTime.Remark FROM OverTime left join Employee on Employee.Code=OverTime.EmpCode ORDER BY OTDate", var_BC, -1
  loc_1071EC8: Set var_88 = var_C0
  loc_1071ED7: var_C4 = var_88.RecordCount
  loc_1071EE5: If (var_C4 = 0) Then
  loc_1071F01:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_1071F11:   Exit Sub
  loc_1071F12: End If
  loc_1071F21: var_12C = MemVar_1F950B4 & "\OTRep.ttx"
  loc_1071F28: Set var_C0 = var_88 
  loc_1071F34: var_12E = CreateFieldDefFile(var_C0, var_12C)
  loc_1071F3E: Set var_88 = var_C0
  loc_1071F44: var_AC = CVar(var_12E) 'Integer
  loc_1071F47: var_98 = var_AC 'Variant
  loc_1071F63: var_128 = MemVar_1F950B4 & "\OTRep.RPT"
  loc_1071F6C: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_1071F77: MemVar_1F951E8 = var_C0
  loc_1071F92: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_1071F9A: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1071FA6: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_1071FBF:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1071FC7:   Call 0.Method_arg_20 (var_138)
  loc_1071FCF:   Call 0.Method_arg_30 (var_128)
  loc_1072015:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_107202B:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1072033:     Call 0.Method_arg_20 (var_138)
  loc_107203B:     Call 0.Method_arg_38 ("'Over Time Details'")
  loc_1072047:   End If
  loc_107204A: Next var_132 'Integer
  loc_1072068: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_1072070: Call 0.Method_arg_2C (var_D4)
  loc_107207E: Call 0.Method_arg_150 (var_F4)
  loc_1072089: Call 0.Method_arg_50 (var_128)
  loc_1072093: Set var_138 = Nothing
  loc_10720AD: Set var_C0 = MemVar_1F951E8 
  loc_10720B9: Proc_6_99_1484404(var_C0, 0, var_128)
  loc_10720C4: MemVar_1F951E8 = var_C0
  loc_10720D7: Set var_88 = Nothing
  loc_10720DA: Exit Sub
  loc_10720DB: ' Referenced from: 1071EA4
  loc_10720E3: Set var_C0 = Err()
  loc_10720E9: Call 0.Method_arg_2C (var_128, &HFF)
  loc_10720F4: Call 0.Method_arg_50 (var_12C)
  loc_1072110: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_1072123: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0BBC0
  'Data Table: 48BBCC
  Dim Me As Recordset15
  loc_E0BBB7: Me.Requery -1
  loc_E0BBBC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14C9664
  'Data Table: 48BBCC
  Dim var_A0 As TextBox
  Dim var_D0 As String
  Dim var_CC As TextBox
  Dim var_A4 As String
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_48BBDA As Connection15
  Dim var_118 As Recordset15
  Dim var_11C As Variant
  Dim var_130 As Field20
  Dim var_104 As String
  Dim var_114 As Variant
  Dim var_180 As Variant
  Dim var_190 As Variant
  Dim var_218 As Double
  Dim var_220 As Double
  Dim var_234 As TextBox
  Dim var_310 As TextBox
  Dim var_438 As Double
  Dim var_35C As TextBox
  Dim var_440 As Double
  Dim var_22C As String
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_210 As Variant
  Dim var_258 As Variant
  Dim var_354 As Variant
  Dim var_3E8 As Variant
  Dim var_140 As Variant
  Dim var_42C As Variant
  Dim var_314 As String
  Dim Me As Recordset15
  Dim var_230 As String
  loc_14C89BC: On Error Goto loc_14C9611
  loc_14C89C3: var_86 = CByte(0) 'Byte
  loc_14C89D5: Set var_94 = Me.Txt
  loc_14C89DB: Call 0.Method_TopCtrl1_UnknownEvent_16C (var_96, var_88)
  loc_14C89EB: For var_9A =  To CByte((var_96 - 1)): CByte(0) = var_9A 'Byte
  loc_14C8A01:   Set var_94 = Me.Txt
  loc_14C8A07:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(var_88), var_A0)
  loc_14C8A1D:   var_C4 = Trim(CVar(var_A0.Text))
  loc_14C8A36:   Set var_C8 = Me.Txt
  loc_14C8A3C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(var_88), var_CC)
  loc_14C8A44:   var_CC.Text = CStr(var_C4)
  loc_14C8A61: Next var_9A 'Byte
  loc_14C8A6B: Set var_94 = Me.TopCtrl1
  loc_14C8A71: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_14C8A79: var_A4 = CStr()
  loc_14C8A8A: If (var_A4 = "Add") Then
  loc_14C8ABA:   Set var_94 = Me.Txt
  loc_14C8AC0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_A4, "Select count(*) from OverTime where empcode='", var_114, -1)
  loc_14C8AD8:   var_E0 = CVar(var_11C & var_A4 & "' and OTDATE=") 'String
  loc_14C8AE6:   Set var_C8 = Me.Txt
  loc_14C8AEC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_CC, var_E0)
  loc_14C8AFB:   Proc_6_7_F26918(var_C4, CVar(var_CC), 0)
  loc_14C8B03:   var_F0 = var_130 & var_C4 
  loc_14C8B11:   unk_48BBDA.Execute CStr(var_F0), var_140, 
  loc_14C8B19:    = var_A0.Tag.Fields
  loc_14C8B21:    = var_11C.Item()
  loc_14C8B29:    = var_130.Value
  loc_14C8B60:   If (var_140 > 0) Then
  loc_14C8B7C:     MsgBox(" Duplicate Entry ", &H40, var_C4, var_E0, var_F0)
  loc_14C8B97:     Set var_94 = Me.Txt
  loc_14C8B9D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_14C8BA5:     var_A0.SetFocus
  loc_14C8BB1:     Exit Sub
  loc_14C8BB2:   End If
  loc_14C8BB5: Else
  loc_14C8BE2:   Set var_94 = Me.Txt
  loc_14C8BE8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_A4, "Select count(*) from OverTime where empcode='", var_1D0, -1)
  loc_14C8BF9:   var_D0 = var_11C & var_A4
  loc_14C8C00:   var_E0 = CVar(var_D0 & "' and OTDATE=") 'String
  loc_14C8C0E:   Set var_C8 = Me.Txt
  loc_14C8C14:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_CC, var_E0, 0)
  loc_14C8C23:   Proc_6_7_F26918(var_C4, CVar(var_CC), var_130)
  loc_14C8C2B:   var_F0 = var_1F0 & var_C4 
  loc_14C8C46:   Proc_6_7_F26918(var_140, global_68)
  loc_14C8C7B:   unk_48BBDA.Execute CStr(var_F0 & " And OTDate<>" & var_140 & " and EmpCode='" & CVar(global_64) & "'"), var_A0, 
  loc_14C8C83:    = var_A0.Tag.Fields
  loc_14C8C8B:    = var_11C.Item()
  loc_14C8C93:    = var_130.Value
  loc_14C8CD6:   If (var_1F0 > 0) Then
  loc_14C8CF2:     MsgBox(" Duplicate Entry ", &H40, var_C4, var_E0, var_F0)
  loc_14C8D0D:     Set var_94 = Me.Txt
  loc_14C8D13:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_14C8D1B:     var_A0.SetFocus
  loc_14C8D27:     Exit Sub
  loc_14C8D28:   End If
  loc_14C8D28: End If
  loc_14C8D33: Set var_94 = Me.Txt
  loc_14C8D39: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0)
  loc_14C8D62: If (Proc_183_19_E8E68C(var_A0, "Name") = 0) Then
  loc_14C8D6C:   Call Txt_GotFocus(CInt(0))
  loc_14C8D71:   Exit Sub
  loc_14C8D72: End If
  loc_14C8D7D: Set var_94 = Me.Txt
  loc_14C8D83: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A0)
  loc_14C8DAC: If (Proc_183_19_E8E68C(var_A0, "Over Time Date") = 0) Then
  loc_14C8DB6:   Call Txt_GotFocus(CInt(1))
  loc_14C8DBB:   Exit Sub
  loc_14C8DBC: End If
  loc_14C8DCA: Set var_94 = Me.Txt
  loc_14C8DD0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A0)
  loc_14C8DE5: var_218 = Val(var_A0.Text)
  loc_14C8DF6: Set var_C8 = Me.Txt
  loc_14C8DFC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_CC, var_D0)
  loc_14C8E11: var_220 = Val(var_D0)
  loc_14C8E23: var_C4 = "00"
  loc_14C8E33: var_E0 = Format(CVar(var_CC.Text), var_C4)
  loc_14C8E40: var_F0 = (var_E0 + ":")
  loc_14C8E6B: var_180 = (1 + Format(CVar(var_220), "00"))
  loc_14C8E9C: If (var_F0 & " And OTDate<>" & "00" & " and EmpCode='" = "00:00") Then
  loc_14C8EB8:   MsgBox("Over Time Can't be Zero", &H40, var_C4, var_E0, var_F0)
  loc_14C8EC8:   Exit Sub
  loc_14C8EC9: End If
  loc_14C8ECC: Call Proc_309_31_1134968(var_96, 1, var_F0, 1)
  loc_14C8ED7: If (var_96 = &HFF) Then
  loc_14C8EDA:   Exit Sub
  loc_14C8EDB: End If
  loc_14C8EE4: unk_48BBDA.BeginTrans var_224
  loc_14C8EED: var_86 = CByte(1) 'Byte
  loc_14C8EF5: Set var_94 = Me.TopCtrl1
  loc_14C8EFB: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(1)
  loc_14C8F14: If (CStr(var_220) = "Add") Then
  loc_14C8F25:   Set var_94 = Me.Txt
  loc_14C8F2B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0)
  loc_14C8F33:   var_A4 = var_A0.Tag
  loc_14C8F46:   Set var_C8 = Me.Txt
  loc_14C8F4C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_CC)
  loc_14C8F54:   var_F4 = var_CC.Text
  loc_14C8F67:   Set var_118 = Me.Txt
  loc_14C8F6D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_11C)
  loc_14C8F75:   var_230 = var_11C.Text
  loc_14C8F94:   var_C4 = "00"
  loc_14C8FB7:   Set var_130 = Me.Txt
  loc_14C8FBD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_234, var_238, 1)
  loc_14C8FC5:   1 = var_234.Text
  loc_14C8FD2:   var_220 = Val(var_238)
  loc_14C9004:   Proc_6_8_EB1974(var_2D8, CVar(Proc_6_14_EF402C(1, 1, var_220)))
  loc_14C9017:   Set var_30C = Me.Txt
  loc_14C901D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_310, var_314)
  loc_14C9025:   var_218 = var_310.Text
  loc_14C9032:   var_438 = Val(var_314)
  loc_14C9043:   Set var_358 = Me.Txt
  loc_14C9049:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_35C, var_360)
  loc_14C906C:   Set var_3A4 = Me.Txt
  loc_14C9072:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_3A8)
  loc_14C908C:   Proc_6_17_EAAE40(var_3D8, Trim(CVar(var_3A8)))
  loc_14C90A5:   var_D0 = "Insert Into Overtime(EmpCode,OTDate,OTIME,Site_Code,LogSite_Code,U_Name,U_EntDt,U_AE,OTRate,Amount,Remark) Values('" & var_A4
  loc_14C90B3:   var_22C = var_D0 & "','" & var_F4
  loc_14C90C5:   var_F0 = (Format(CVar(Val(var_230)), var_C4) + ":")
  loc_14C90CC:   var_180 = (var_F0 + Format(CVar(var_220), "00"))
  loc_14C90F6:   var_258 = CVar(var_22C & "','") & var_F0 & " And OTDate<>" & "00" & " and EmpCode='" & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) 
  loc_14C9151:   var_3E8 = var_258 & "','" & CVar(MemVar_1F950C8) & "'," & var_2D8 & ",'A'," & CVar(var_35C.Text) & "," & CVar(Val(var_360)) & "," & var_3D8 
  loc_14C9168:   unk_48BBDA.Execute CStr(var_3E8 & ")"), var_42C, -1
  loc_14C91E7: Else
  loc_14C91F5:   Set var_94 = Me.Txt
  loc_14C91FB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_A4)
  loc_14C9203:   var_430 = var_A0.Tag
  loc_14C9216:   Set var_C8 = Me.Txt
  loc_14C921C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_CC, var_F4)
  loc_14C9224:   var_440 = var_CC.Text
  loc_14C9232:   Proc_6_7_F26918(var_C4, CVar(var_F4))
  loc_14C9245:   Set var_118 = Me.Txt
  loc_14C924B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_11C)
  loc_14C9295:   Set var_130 = Me.Txt
  loc_14C929B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_234, var_22C, 1)
  loc_14C92A3:   1 = var_234.Text
  loc_14C92B0:   var_220 = Val(var_22C)
  loc_14C92E2:   Proc_6_8_EB1974(var_2D8, CVar(Proc_6_14_EF402C(1, 1, var_220)))
  loc_14C92F5:   Set var_30C = Me.Txt
  loc_14C92FB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_310, var_230)
  loc_14C9303:   var_218 = var_310.Text
  loc_14C9310:   var_438 = Val(var_230)
  loc_14C9321:   Set var_358 = Me.Txt
  loc_14C9327:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_35C, var_238)
  loc_14C933C:   var_440 = Val(var_238)
  loc_14C934A:   Set var_3A4 = Me.Txt
  loc_14C9350:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_3A8)
  loc_14C936A:   Proc_6_17_EAAE40(var_3D8, Trim(CVar(var_3A8)))
  loc_14C937D:   Proc_6_7_F26918(var_460, global_68)
  loc_14C9396:   var_D0 = "UPDATE OverTime SET EmpCode='" & var_A4
  loc_14C939D:   var_E0 = CVar(var_D0 & "',OTDate = ") 'String
  loc_14C93A3:   var_F0 = var_E0 & var_C4 
  loc_14C93B8:   var_190 = (Format(CVar(Val(var_11C.Text)), "00") + ":")
  loc_14C93BF:   var_210 = (CVar(var_22C & "','") + Format(CVar(var_220), "00"))
  loc_14C93C3:   var_258 = var_F0 & ",OTIME='" & CVar(var_22C & "','") & var_F0 & " And OTDate<>" & "00" & " and EmpCode='" & "','" & CVar(MemVar_1F95070) & "','" 
  loc_14C9403:   var_354 = var_258 & "',U_name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_2D8 & ",U_AE='E',OTRate=" & CVar(var_35C.Text) & ",Amount=" 
  loc_14C9448:   var_314 = CStr(var_354 & CVar(var_440) & ",Remark=" & var_3D8 & " WHERE EmpCode='" & CVar(global_64) & "' and OTDate=" & var_460)
  loc_14C9452:   unk_48BBDA.Execute var_314, var_480, -1
  loc_14C94D0: End If
  loc_14C94D6: unk_48BBDA.CommitTrans
  loc_14C94DF: var_86 = CByte(0) 'Byte
  loc_14C94EE: Me.Requery -1
  loc_14C94FE: Me.Requery -1
  loc_14C9507: Set var_94 = Me.DGMaster
  loc_14C9537: Set var_94 = Me.Txt
  loc_14C953D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_A4, "SearchCode='", 0, 1)
  loc_14C9545: var_104 = var_A0.Tag
  loc_14C9562: Set var_C8 = Me.Txt
  loc_14C9568: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_CC, var_D0, var_A4 & " ")
  loc_14C9570: DGMaster.DispID_FFFF = var_CC.Text
  loc_14C958D: Me.Find var_440 & var_430 & var_D0 & "'", var_A0, 
  loc_14C95B0: Set var_94 = Me.TopCtrl1
  loc_14C95B6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_14C95CF: If (CStr() = "Add") Then
  loc_14C95D2:   Call TopCtrl1_UnknownEvent_A()
  loc_14C95D7:   Exit Sub
  loc_14C95D8: End If
  loc_14C95ED: var_A4 = "INI"
  loc_14C95FB: Call Proc_309_28_E929CC(Proc_5_1_100EC1C(var_A4, Me))
  loc_14C9606: Call Proc_309_32_E84E10(global_52)
  loc_14C960B: Call Proc_309_30_1304438()
  loc_14C9610: Exit Sub
  loc_14C9611: ' Referenced from: 14C89BC
  loc_14C961A: If (CInt(var_86) = 1) Then
  loc_14C9623:   unk_48BBDA.RollbackTrans
  loc_14C9628: End If
  loc_14C9630: Set var_94 = Err()
  loc_14C9636: Call 0.Method_arg_2C (var_A4)
  loc_14C964F: MsgBox(CVar(var_A4), &H10, var_C4, var_E0, var_F0)
  loc_14C9662: Exit Sub
End Sub

Private Sub Form_Load() '10B1974
  'Data Table: 48BBCC
  Dim var_8C As Label
  Dim var_9C As Variant
  Dim var_B0 As TextBox
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim unk_48BBDA As Connection15
  Dim var_AC As String
  Dim var_104 As Variant
  Dim var_158 As String
  Dim var_D4 As Variant
  loc_10B16B4: On Error Goto loc_10B192E
  loc_10B16C6: Me.LblUser.Left = CDbl(13500)
  loc_10B16DD: Me.LblUser.Top = CDbl(7800)
  loc_10B16F4: Me.LblLDt.Top = CDbl(8160)
  loc_10B170B: Me.LblLDt.Left = CDbl(13500)
  loc_10B171A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_10B1723: var_9C = CVar(CLng(MemVar_1F951B4)) 'Long
  loc_10B172C: Set var_8C = Me.DGMaster
  loc_10B1748: Set var_8C = Me.Txt
  loc_10B174E: Call 0.Method_Form_Load0 (CInt(0), var_B0, var_B4)
  loc_10B1756: DGMaster.DispID_FFFFFE0B = var_B0.Left
  loc_10B176D: Me.DGEmployee.Left = CVar(var_B4)
  loc_10B1789: Set var_B8 = Me.Txt
  loc_10B178F: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_10B17B0: Call 0.Method_Form_Load0 (CInt(0), var_B0)
  loc_10B17C8: var_9C = CVar(((var_B0.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_10B17D7: Me.DGEmployee.Top = CVar(var_B0.Top)
  loc_10B17FF: unk_48BBDA.Execute "Select Employee.Code,Employee.Name,IsNull(Depart.Name,'') As Department,Desig.Name As Designation,OTRate From Employee Left Join Depart On Depart.Code=Employee.Department Left Join Desig on Desig.Code=Employee.Designation Order by Employee.Name", var_D4, -1
  loc_10B1827: CVarUnk
  loc_10B182C: VerifyVarObj
  loc_10B1832: Set var_8C = Me.DGEmployee
  loc_10B1838: LateIdStAd
  loc_10B1853: var_AC = "SELECT (EmpCode+Convert(Varchar(12),OTDate,103)) as SearchCode,Employee.name,Overtime.EmpCode,Overtime.OTDate,OverTime.OTime,OverTime.U_AE,OverTime.U_name,OverTime.U_EntDt,OverTime.OTRate,OverTime.Amount,OverTime.Remark,IsNull(Depart.Name,'') As Department,Desig.Name As Designation FROM OverTime left join Employee on Employee.Code=OverTime.EmpCode Left Join Depart On Depart.Code=Employee.Department Left Join Desig on Desig.Code=Employee.Designation Where Overtime.OTDate Between "
  loc_10B185B: var_9C = MemVar_1F950F4
  loc_10B1863: Proc_6_7_F26918(var_D4, var_9C, var_AC, var_178, -1)
  loc_10B1874: var_104 = var_8C & var_D4 & " And " 
  loc_10B1883: Proc_6_7_F26918(var_124, MemVar_1F950FC, var_104, var_8C)
  loc_10B18A2: unk_48BBDA.Execute CStr(Me.Txt & var_124 & " ORDER BY OTDate"), var_8C, var_9C
  loc_10B18B3: Set global_52 = var_8C
  loc_10B18DB: CVarUnk
  loc_10B18E0: VerifyVarObj
  loc_10B18E6: Set var_8C = Me.DGMaster
  loc_10B18EC: LateIdStAd
  loc_10B190F: var_158 = "INI"
  loc_10B191D: Call Proc_309_28_E929CC(Proc_5_1_100EC1C(var_158, Me, global_52), Me)
  loc_10B1928: Call Proc_309_30_1304438(global_52)
  loc_10B192D: Exit Sub
  loc_10B192E: ' Referenced from: 10B16B4
  loc_10B1936: Set var_8C = Err()
  loc_10B193C: Call 0.Method_arg_2C (var_158)
  loc_10B195D: MsgBox(CVar(var_158), &H40, "Information", var_104, var_124)
  loc_10B1970: Exit Sub
  loc_10B1971: Exit Sub
End Sub

Private Sub Form_Resize() 'ED8118
  'Data Table: 48BBCC
  Dim var_8C As Label
  loc_ED8076: Call 0.Method_arg_50 (var_88)
  loc_ED8088: Me.LblFormCaption.Caption = var_88
  loc_ED80A1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED80AD: Set var_A0 = Me.TopCtrl1
  loc_ED80B3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED80C0: Set var_8C = Me.TopCtrl1
  loc_ED80C6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED80E0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED80FB: Call 0.Method_arg_100 (var_B8)
  loc_ED810D: Me.LblFormCaption.Width = var_B8
  loc_ED8115: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E29F18
  'Data Table: 48BBCC
  loc_E29EFB: Set global_52 = Nothing
  loc_E29F0D: Set global_56 = Nothing
  loc_E29F14: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8B9A8
  'Data Table: 48BBCC
  loc_E8B944: On Error Goto loc_E8B964
  loc_E8B95B: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E8B963: Exit Sub
  loc_E8B964: ' Referenced from: E8B944
  loc_E8B96C: Set var_88 = Err()
  loc_E8B972: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8B993: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8B9A6: Exit Sub
  loc_E8B9A7: Exit Sub
End Sub

Private Sub DGMaster_UnknownEvent_22 'E53648
  'Data Table: 48BBCC
  loc_E5361C: Set var_88 = Me.TopCtrl1
  loc_E53622: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_E5363B: If (CStr() <> "Browse") Then
  loc_E5363E:   Exit Sub
  loc_E5363F: End If
  loc_E5363F: Call Proc_309_30_1304438()
  loc_E53644: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E3CCC4
  'Data Table: 48BBCC
  loc_E3CCB8: If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_E3CCBB:   Call DGEmployee_UnknownEvent_9()
  loc_E3CCC0: End If
  loc_E3CCC0: Exit Sub
  loc_E3CCC1: var_92 = 
End Sub

Public Sub SEARCHBACK(MyValue) 'EC39D4
  'Data Table: 48BBCC
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC394A: On Error Goto loc_EC398F
  loc_EC3953: Me.MoveFirst
  loc_EC396D: var_8C = "SearchCode='" & MyValue
  loc_EC397D: Me.Find var_8C & "'", 0, 1
  loc_EC3989: Call Proc_309_30_1304438(var_A0)
  loc_EC398E: Exit Sub
  loc_EC398F: ' Referenced from: EC394A
  loc_EC3997: Set var_A4 = Err()
  loc_EC399D: Call 0.Method_arg_2C (var_8C)
  loc_EC39BE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC39D1: Exit Sub
  loc_EC39D2: Exit Sub
End Sub

Public Sub Proc_309_28_E929CC(arg_C) 'E929CC
  'Data Table: 48BBCC
  Dim var_98 As TextBox
  Dim var_8C As DataGrid
  loc_E9295E: Set var_8C = Me.Txt
  loc_E92964: Call 0.Method_Proc_309_28_E929CCC (var_8E, var_86)
  loc_E92974: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9298A:   Set var_8C = Me.Txt
  loc_E92990:   Call 0.Method_Proc_309_28_E929CC0 (CInt(var_86), var_98)
  loc_E92998:   var_98.Enabled = arg_C
  loc_E929A7: Next var_92 'Byte
  loc_E929C0: Me.DGMaster.Enabled = Not(arg_C)
  loc_E929CB: Exit Sub
End Sub

Public Sub Proc_309_29_ED0878
  'Data Table: 48BBCC
  Dim var_98 As TextBox
  Dim var_8C As Label
  loc_ED07CA: global_64 = vbNullString
  loc_ED07D4: global_68 = vbNullString
  loc_ED07E6: Set var_8C = Me.Txt
  loc_ED07EC: Call 0.Method_Proc_309_29_ED0878C (var_8E, var_86)
  loc_ED07FC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_ED0812:   Set var_8C = Me.Txt
  loc_ED0818:   Call 0.Method_Proc_309_29_ED08780 (CInt(var_86), var_98)
  loc_ED0820:   var_98.Text = vbNullString
  loc_ED083C:   Set var_8C = Me.Txt
  loc_ED0842:   Call 0.Method_Proc_309_29_ED08780 (CInt(var_86), var_98)
  loc_ED084A:   var_98.Tag = vbNullString
  loc_ED0859: Next var_92 'Byte
  loc_ED086C: Me.LblEmpRef.Caption = vbNullString
  loc_ED0874: Exit Sub
  loc_ED0875: Exit Sub
End Sub

Public Sub Proc_309_30_1304438
  'Data Table: 48BBCC
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B0 As Variant
  Dim var_C8 As String
  Dim var_B8 As Fields15
  Dim var_DC As Variant
  Dim var_B4 As String
  Dim var_CC As Variant
  Dim var_130 As Variant
  loc_1303D54: On Error Goto loc_13043F4
  loc_1303D5D: Proc_183_45_E5CCA8(global_52)
  loc_1303D79: If (Me.RecordCount <= 0) Then
  loc_1303D7C:   Call Proc_309_29_ED0878()
  loc_1303D84: Else
  loc_1303E2D:   var_180 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_1303E75:   Me.LblUser.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_Name")))))
  loc_1303EF5:   var_CC = Me.Fields.Item("U_AE")
  loc_1303F56:   var_180 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_CC)) = "E"), "Last Update :   ", "entdt :   "))
  loc_1303F9E:   Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_EntDt")))))
  loc_1304012:   Set var_B8 = Me.Txt
  loc_1304018:   Call 0.Method_Proc_309_30_13044380 (CInt(0), var_CC)
  loc_1304020:   var_CC.Tag = CStr(Me.Fields.Item("EmpCode").Value)
  loc_130406F:   Set var_B8 = Me.Txt
  loc_1304075:   Call 0.Method_Proc_309_30_13044380 (CInt(0), var_CC)
  loc_130407D:   var_CC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Name")))
  loc_13040CD:   Set var_B8 = Me.Txt
  loc_13040D3:   Call 0.Method_Proc_309_30_13044380 (CInt(1), var_CC)
  loc_13040DB:   var_CC.Text = CStr(Me.Fields.Item("OTDate").Value)
  loc_1304144:   Set var_B8 = Me.Txt
  loc_130414A:   Call 0.Method_Proc_309_30_13044380 (CInt(2), var_CC)
  loc_1304152:   var_CC.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("OTime")))), 2))
  loc_13041A6:   var_DC = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("OTime")))) 'String
  loc_13041C3:   Set var_B8 = Me.Txt
  loc_13041C9:   Call 0.Method_Proc_309_30_13044380 (CInt(3), var_CC)
  loc_13041D1:   var_CC.Text = CStr(Right(var_DC, 2))
  loc_1304211:   var_B0 = CVar(Me.Fields.Item("OTRate")) 'Address
  loc_1304218:   Proc_6_39_E7D3A0(var_DC)
  loc_130424F:   Set var_B8 = Me.Txt
  loc_1304255:   Call 0.Method_Proc_309_30_13044380 (CInt(4), var_CC, CStr(Format(var_DC, "0.00")))
  loc_130425D:   var_CC.Text = 1
  loc_13042A2:   Proc_6_39_E7D3A0(var_DC, CVar(Me.Fields.Item("Amount")))
  loc_13042D9:   Set var_B8 = Me.Txt
  loc_13042DF:   Call 0.Method_Proc_309_30_13044380 (CInt(6), var_CC, CStr(Format(var_DC, "0.00")), 1)
  loc_13042E7:   var_CC.Text = 1
  loc_130433C:   Set var_B8 = Me.Txt
  loc_1304342:   Call 0.Method_Proc_309_30_13044380 (CInt(5), var_CC)
  loc_130434A:   var_CC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Remark")), 1)
  loc_130438B:   var_C8 = " - "
  loc_1304390:   var_DC = (Me.Fields.Item("Department").Value + "0.00")
  loc_13043B9:   var_110 = Me.Fields.Item("Designation").Value
  loc_13043C1:   var_130 = (var_DC + var_110)
  loc_13043C5:   var_B4 = CStr(Format(var_DC, "0.00"))
  loc_13043D3:   Me.LblEmpRef.Caption = var_B4
  loc_13043F3: End If
  loc_13043F3: Exit Sub
  loc_13043F4: ' Referenced from: 1303D54
  loc_13043FC: Set var_8C = Err()
  loc_1304402: Call 0.Method_arg_2C (var_B4)
  loc_1304423: MsgBox(CVar(var_B4), &H40, "Information", var_110, Format("Information", "0.00"))
  loc_1304436: Exit Sub
End Sub

Public Sub Proc_309_31_1134968
  'Data Table: 48BBCC
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_104 As String
  Dim var_A8 As TextBox
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_124 As String
  Dim unk_48BBDA As Connection15
  Dim var_160 As Fields15
  Dim var_174 As Field20
  Dim var_1F4 As Integer
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  loc_1134647: If (Me.RecordCount = 0) Then
  loc_113464A:   Proc_309_31_1134968 = 
  loc_1134650: End If
  loc_1134654: Set var_90 = Me.TopCtrl1
  loc_113465A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1134662: var_A4 = CStr()
  loc_1134673: If (var_A4 = "Add") Then
  loc_1134692:   var_104 = "Select Count(*) From OVERTIME Where EmpCode+''+convert(Varchar(12),OTDate,103)='"
  loc_11346A5:   Set var_90 = Me.Txt
  loc_11346AB:   Call 0.Method_Proc_309_31_11349680 (CInt(0), var_A8, var_A4, var_104, var_158, -1)
  loc_11346CE:   var_C8 = (CVar(var_A4) + Space(1))
  loc_11346E0:   Set var_CC = Me.Txt
  loc_11346E6:   Call 0.Method_Proc_309_31_11349680 (CInt(1), var_D0, var_D4, var_C8)
  loc_11346EE:   var_160 = var_D0.Text
  loc_11346F6:   var_E4 = CVar(var_D4) 'String
  loc_11346F9:   var_F4 = (0 + var_E4)
  loc_1134714:   unk_48BBDA.Execute CStr(var_174 & var_F4 & "'"), var_184, 
  loc_113471C:    = var_A8.Tag.Fields
  loc_1134724:    = var_160.Item()
  loc_113472C:    = var_174.Value
  loc_1134765:   If (var_184 > 0) Then
  loc_1134789:     MsgBox("Duplicate Entry", &H40, "Information", var_C8, var_E4)
  loc_11347A4:     Set var_90 = Me.Txt
  loc_11347AA:     Call 0.Method_Proc_309_31_11349680 (CInt(0))
  loc_11347B2:     var_A8.SetFocus
  loc_11347C3:     Proc_309_31_1134968 = &HFF
  loc_11347C9:   End If
  loc_11347CC: Else
  loc_11347D2:   var_1F4 = 0
  loc_11347E8:   var_104 = "Select Count(*) From OVERTIME Where EmpCode+''+convert(Varchar(12),OTDate,103)='"
  loc_11347FB:   Set var_90 = Me.Txt
  loc_1134801:   Call 0.Method_Proc_309_31_11349680 (CInt(0), var_A8, var_A4, "Duplicate Entry", var_1E4, -1)
  loc_1134824:   var_C8 = (CVar(var_A4) + Space(1))
  loc_1134836:   Set var_CC = Me.Txt
  loc_113483C:   Call 0.Method_Proc_309_31_11349680 (CInt(1), var_D0, var_D4, var_C8, var_160)
  loc_1134844:   var_1F4 = var_D0.Text
  loc_113484C:   var_E4 = CVar(var_D4) 'String
  loc_113484F:   var_F4 = (var_174 + var_E4)
  loc_1134857:   var_124 = "' and EmpCode+''+convert(Varchar(12),OTDate,103)<>'"
  loc_1134879:   var_184 = (CVar(global_64) + Space(1))
  loc_1134886:   var_1A4 = (var_184 + CVar(global_68))
  loc_11348A1:   unk_48BBDA.Execute CStr(var_204 & var_F4 & "Information" & var_1A4 & "'"), var_A8, 
  loc_11348A9:    = var_A8.Tag.Fields
  loc_11348B1:    = var_160.Item()
  loc_11348B9:    = var_174.Value
  loc_11348FC:   If (var_204 > 0) Then
  loc_1134920:     MsgBox("Duplicate Name", &H40, "Information", var_C8, var_E4)
  loc_113493B:     Set var_90 = Me.Txt
  loc_1134941:     Call 0.Method_Proc_309_31_11349680 (CInt(0))
  loc_1134949:     var_A8.SetFocus
  loc_113495A:     Proc_309_31_1134968 = &HFF
  loc_1134960:   End If
  loc_1134960: End If
  loc_1134960: Proc_309_31_1134968 = var_A8
End Sub

Public Sub Proc_309_32_E84E10
  'Data Table: 48BBCC
  loc_E84DBC: If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_E84DCE:   Me.DGEmployee.Visible = False
  loc_E84DD6: End If
  loc_E84DF2: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E84E04:   Me.FGPoint.Visible = False
  loc_E84E0C: End If
  loc_E84E0C: Exit Sub
End Sub

Public Sub Proc_309_33_E90A18(arg_C) 'E90A18
  'Data Table: 48BBCC
  Dim var_10C As TextBox
  loc_E909AC: Call Proc_309_32_E84E10()
  loc_E909E8: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E909EB:   Call TopCtrl1_UnknownEvent_16()
  loc_E909F3: Else
  loc_E909FD:   Set var_108 = Me.Txt
  loc_E90A03:   Call 0.Method_Proc_309_33_E90A180 (arg_C)
  loc_E90A0B:   var_10C.SetFocus
  loc_E90A17: End If
  loc_E90A17: Exit Sub
End Sub
