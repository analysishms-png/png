VERSION 5.00
Begin VB.Form resRoomNo
  Caption = "Reservation Look Up Room Wise"
  BackColor = &HE0E0E0&
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
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11820
  ClientHeight = 7830
  LockControls = -1  'True
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 7380
    Width = 11820
    Height = 450
    Visible = 0   'False
    TabIndex = 27
  End
  Begin Frame FrParameter
    Caption = "Parameter"
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 16065
    Height = 735
    TabIndex = 5
    BorderStyle = 0 'None
    Begin BtnEnh Cmd
      Index = 1
      Left = 10080
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 9
    End
    Begin TextBox Txt
      Index = 0
      BackColor = &H8000000E&
      ForeColor = &HC00000&
      Left = 1305
      Top = 120
      Width = 1350
      Height = 285
      TabIndex = 6
      BorderStyle = 0 'None
      MaxLength = 12
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
    Begin BtnEnh CmdExit
      Left = 14385
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 10
    End
    Begin BtnEnh Cmd
      Index = 0
      Left = 9000
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 11
    End
    Begin BtnEnh Cmd
      Index = 2
      Left = 11145
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 12
    End
    Begin BtnEnh BtnPrint
      Index = 2
      Left = 13305
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 23
    End
    Begin BtnEnh BtnPrint
      Index = 0
      Left = 12225
      Top = 45
      Width = 1080
      Height = 660
      TabIndex = 24
    End
    Begin Label Label5
      Caption = "d"
      ForeColor = &HFF&
      Left = 8355
      Top = 135
      Width = 105
      Height = 225
      TabIndex = 8
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
    Begin Label Label4
      Caption = "With advance"
      ForeColor = &H404040&
      Left = 7815
      Top = 135
      Width = 1155
      Height = 225
      TabIndex = 22
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
    Begin Label Label3
      Caption = "*"
      BackColor = &HE0E0E0&
      ForeColor = &HFF&
      Left = 7500
      Top = 120
      Width = 285
      Height = 270
      TabIndex = 21
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Courier New"
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
      Caption = "Expected Arrival"
      Index = 4
      ForeColor = &HFF0000&
      Left = 6045
      Top = 135
      Width = 1410
      Height = 225
      TabIndex = 20
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
      Index = 4
      BackColor = &HFFFF00&
      ForeColor = &H80000008&
      Left = 6015
      Top = 120
      Width = 1455
      Height = 270
      TabIndex = 19
      BorderStyle = 1 'Fixed Single
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Guest In House"
      Index = 3
      ForeColor = &HC0&
      Left = 4680
      Top = 135
      Width = 1290
      Height = 225
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
      Caption = "Out Of Order "
      Index = 2
      ForeColor = &HFFFFFF&
      Left = 3540
      Top = 135
      Width = 1125
      Height = 225
      TabIndex = 15
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
      Caption = "Vacant "
      Index = 1
      ForeColor = &HC00000&
      Left = 2835
      Top = 135
      Width = 675
      Height = 225
      TabIndex = 13
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
      Caption = "Start Date"
      Index = 15
      ForeColor = &HC00000&
      Left = 195
      Top = 135
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
    Begin Label Label2
      Index = 0
      BackColor = &HFFFFFF&
      ForeColor = &H80000008&
      Left = 2790
      Top = 120
      Width = 705
      Height = 270
      TabIndex = 14
      BorderStyle = 1 'Fixed Single
      Appearance = 0 'Flat
    End
    Begin Label Label2
      Index = 1
      BackColor = &HFF&
      ForeColor = &H80000008&
      Left = 3510
      Top = 120
      Width = 1110
      Height = 270
      TabIndex = 16
      BorderStyle = 1 'Fixed Single
      Appearance = 0 'Flat
    End
    Begin Label Label2
      Index = 3
      BackColor = &HFF00&
      ForeColor = &H80000008&
      Left = 4650
      Top = 120
      Width = 1335
      Height = 270
      TabIndex = 18
      BorderStyle = 1 'Fixed Single
      Appearance = 0 'Flat
    End
  End
  Begin Frame FrLabel
    Caption = "Frame1"
    BackColor = &HE0E0E0&
    Left = 360
    Top = 8775
    Width = 3780
    Height = 390
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    Begin Label LBLRoomName
      BackColor = &HE0E0E0&
      ForeColor = &HC00000&
      Left = 60
      Top = 15
      Width = 5970
      Height = 315
      Visible = 0   'False
      TabIndex = 4
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Tahoma"
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 1080
    Top = 1575
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 1
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
    Left = 0
    Top = 750
    Width = 11820
    Height = 6270
    TabIndex = 0
  End
  Begin BtnEnh CmdUP
    Left = 16230
    Top = 3465
    Width = 1110
    Height = 885
    TabIndex = 25
  End
  Begin BtnEnh CmdDown
    Left = 16245
    Top = 4350
    Width = 1110
    Height = 885
    TabIndex = 26
  End
  Begin Label Label2
    Index = 2
    BackColor = &HFFFF00&
    ForeColor = &H80000008&
    Left = 1650
    Top = 9885
    Width = 285
    Height = 270
    TabIndex = 2
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "resRoomNo"

Private global_96 As Integer
Private global_80 As Double
Private global_100 As Integer
Private global_112 As Long
Private global_56 As Integer
Private global_58 As Integer
Private global_108 As Long

Private Sub TxtGrid_GotFocus(Index As Integer) 'F103C8
  'Data Table: 4B0890
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_F102F6: Set var_88 = Me.TxtGrid
  loc_F102FC: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_F1030A: Proc_6_74_E23240(var_8C)
  loc_F10316: Call Proc_54_36_DFDE80(var_8C)
  loc_F10327: If (Index = 0) Then
  loc_F1033D:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F1037C:   Set var_108 = Me.TxtGrid
  loc_F10382:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_F1038A:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_F103BB:   var_114 = CLng(Me.FGrid.Col)
  loc_F103C4: End If
  loc_F103C4: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'F04138
  'Data Table: 4B0890
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_F0406C: If (KeyCode = 0) Then
  loc_F04079:   If (CLng(Shift) = &H1B) Then
  loc_F04089:     Set var_8C = Me.TxtGrid
  loc_F0408F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_F040A9:     Set var_98 = Me.TxtGrid
  loc_F040AF:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_F040B7:     var_9C.Text = var_90.Tag
  loc_F040D3:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_F040D8:     Call Proc_54_36_DFDE80(arg_14)
  loc_F040E1:     Set var_8C = Me.FGrid
  loc_F040FE:     Set var_8C = Me.TxtGrid
  loc_F04104:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_F0410C:     var_90.Visible = FGrid.DispID_8001
  loc_F04118:     Exit Sub
  loc_F04119:   End If
  loc_F0412C:   var_B0 = CLng(Me.FGrid.Col)
  loc_F04135: End If
  loc_F04135: Exit Sub
  loc_F04136: BranchFVar 6399
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E53DE4
  'Data Table: 4B0890
  Dim var_A0 As Long
  loc_E53DB3: Proc_6_58_E06050(arg_10)
  loc_E53DC4: If (KeyAscii = 0) Then
  loc_E53DDA:   var_A0 = CLng(Me.FGrid.Col)
  loc_E53DE3: End If
  loc_E53DE3: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E556CC
  'Data Table: 4B0890
  Dim var_86 As Integer
  Dim var_A0 As Long
  loc_E55694: On Error Goto loc_E556C3
  loc_E5569A: var_86 = KeyCode
  loc_E556A3: If (var_86 = 0) Then
  loc_E556B9:   var_A0 = CLng(Me.FGrid.Col)
  loc_E556C2: End If
  loc_E556C2: Exit Sub
  loc_E556C3: ' Referenced from: E55694
  loc_E556C3: Proc_6_60_E63754(var_A0)
  loc_E556C8: Exit Sub
  loc_E556C9: If var_86 Then Exit Sub
  loc_E556C9: End If
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E22DFC
  'Data Table: 4B0890
  Dim arg_10 As Integer
  loc_E22DE4: If (Cancel = 0) Then
  loc_E22DED:   Call Proc_54_32_E5573C(Cancel, var_88)
  loc_E22DF6:   arg_10 = Not(var_88)
  loc_E22DF9: End If
  loc_E22DF9: Exit Sub
End Sub

Private Sub Cmd_UnknownEvent_9 '1013358
  'Data Table: 4B0890
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_B8 As Long
  Dim var_D8 As Long
  Dim var_8C As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_94 As TextBox
  loc_101314B: var_86 = Cancel
  loc_1013154: If (var_86 = 0) Then
  loc_1013162:   Set var_8C = Me.Txt
  loc_1013168:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_1013179:   Set var_94 = var_90
  loc_1013191:   If (Proc_6_27_EA61EC(var_94, "Start Date") = 0) Then
  loc_1013194:     Exit Sub
  loc_1013195:   End If
  loc_10131A3:   Set var_8C = Me.Txt
  loc_10131A9:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_10131B1:   var_98 = var_90.Text
  loc_10131B9:   var_A8 = "RoomNo"
  loc_10131CD:   Call Proc_54_37_15DFB40(CDate(var_98), 1)
  loc_10131E3: Else
  loc_10131E9:   If (var_86 = 1) Then
  loc_10131EC:     var_B8 = 1
  loc_10131F5:     var_D8 = 1
  loc_1013208:     var_F8 = Me.FGrid.ColHeaderCaption)
  loc_1013222:     Set var_90 = Me.Txt
  loc_1013228:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_94, var_98, var_F8)
  loc_1013230:     var_D8 = var_94.Text
  loc_101326B:     If (CDate(Right(CVar(CStr(var_F8)), 9)) <> CDate(var_98)) Then
  loc_101326E:       var_B8 = 1
  loc_101328A:       var_F8 = Me.FGrid.ColHeaderCaption)
  loc_10132C6:       Call Proc_54_37_15DFB40(CDate((CDate(Right(CVar(CStr(var_F8)), 9)) - CDbl(1))), &HFF, "RoomNo", var_F8, 1)
  loc_10132DC:     End If
  loc_10132DF:   Else
  loc_10132E5:     If (var_86 = 2) Then
  loc_10132E8:       var_B8 = 1
  loc_1013304:       var_F8 = Me.FGrid.ColHeaderCaption)
  loc_1013340:       Call Proc_54_37_15DFB40(CDate((CDate(Right(CVar(CStr(var_F8)), 9)) + CDbl(1))), 1, "RoomNo", var_F8, &H1E)
  loc_1013356:     End If
  loc_1013356:   End If
  loc_1013356: End If
  loc_1013356: Exit Sub
End Sub

Private Sub BTNPRINT_UnknownEvent_9 '13FB294
  'Data Table: 4B0890
  Dim unk_4B0896 As Connection15
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
  loc_13FA8B0: On Error Goto loc_13FB28D
  loc_13FA8B8: global_96 = &HFF
  loc_13FA8D1: unk_4B0896.Execute "Select * From FAEnviro", var_B8, -1
  loc_13FA8DC: Set var_94 = var_BC
  loc_13FA8F4: var_BC = var_94.Fields
  loc_13FA958: var_13C = IIf((Proc_6_38_E69628(CVar(var_BC.Item("daterfill")), var_BC) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("daterfill")))))
  loc_13FA961: MemVar_1F953C4 = CStr(var_13C)
  loc_13FA9F5: var_13C = IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("pagenofill")), MemVar_1F953C4) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("pagenofill")))))
  loc_13FA9FE: MemVar_1F953C8 = CStr(var_13C)
  loc_13FAA92: var_13C = IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("titlerfill")), MemVar_1F953C8) = vbNullString), "M", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("titlerfill")))))
  loc_13FAAD3: var_C0 = var_94.Fields.Item("linefiller")
  loc_13FAAEA: var_D8 = "linefiller"
  loc_13FAAF6: var_C8 = var_94.Fields
  loc_13FAAFE: var_DC = var_C8.Item(var_D8)
  loc_13FAB12: var_10C = "-"
  loc_13FAB28: var_FC = (Proc_6_38_E69628(CVar(var_C0), CStr(var_13C)) = vbNullString)
  loc_13FAB38: MemVar_1F953D0 = CStr(IIf(var_FC, "M", CVar(Proc_6_38_E69628(CVar(var_DC)))))
  loc_13FAB5F: global_88 = "23 Day Room Availability Forecast (Report)"
  loc_13FAB66: var_88 = "Day23RoomAvail"
  loc_13FAB6F: var_A8 = global_88
  loc_13FAB86: global_92 = CStr(Ucase(var_A8))
  loc_13FABA2: If ((global_96 = 0) Or (var_88 = vbNullString)) Then
  loc_13FABA5:   Exit Sub
  loc_13FABA6: End If
  loc_13FABA6: Call Day23RoomAvail()
  loc_13FABD2: Set var_BC = global_104 
  loc_13FABD9: CreateFieldDefFile(var_BC, MemVar_1F950B4 & "\" & var_88 & ".ttx", &HFF)
  loc_13FAC0B: var_C4 = "\" & var_88
  loc_13FAC1F: Call 0.Method_arg_1C (MemVar_1F950B4 & var_C4 & ".RPT", var_A8, var_BC)
  loc_13FAC2A: MemVar_1F951E8 = var_BC
  loc_13FAC56: Call 0.Method_arg_64 (var_BC, CVar(var_BC), var_D8)
  loc_13FAC5E: Call 0.Method_arg_2C (var_FC, MemVar_1F953D0)
  loc_13FAC6C: Call 0.Method_arg_150 (global_96)
  loc_13FAC82: Call 0.Method_arg_90 (var_BC, var_14C)
  loc_13FAC8A: Call 0.Method_arg_24 (var_8A)
  loc_13FAC96: For var_150 =  To CInt(var_14C): 1 = var_150 'Integer
  loc_13FACAF:   Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FACB7:   Call 0.Method_arg_20 (var_C0)
  loc_13FACBF:   Call 0.Method_arg_30 (var_C4)
  loc_13FACD5:   var_160 = Ucase(CVar(var_C4)) 'Variant
  loc_13FAD05:   If (var_160 = Ucase("Title")) Then
  loc_13FAD2C:     Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FAD34:     Call 0.Method_arg_20 (var_C0)
  loc_13FAD3C:     Call 0.Method_arg_38 ("'" & global_88 & "'")
  loc_13FAD52:   Else
  loc_13FAD74:     If (var_160 = Ucase("BetweenDate")) Then
  loc_13FAD88:       Set var_BC = Me.Txt
  loc_13FAD8E:       Call 0.Method_BTNPRINT_UnknownEvent_90 (CInt(0), var_C0)
  loc_13FADB9:       Call 0.Method_arg_90 (var_C8, CLng(var_8A))
  loc_13FADC1:       Call 0.Method_arg_20 (var_DC)
  loc_13FADC9:       Call 0.Method_arg_38 ("'From Date " & var_C0.Text & "'")
  loc_13FADE5:     Else
  loc_13FAE07:       If (var_160 = Ucase("Dater")) Then
  loc_13FAE2B:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FAE33:         Call 0.Method_arg_20 (var_C0)
  loc_13FAE3B:         Call 0.Method_arg_38 ("'" & MemVar_1F953C4 & "'")
  loc_13FAE51:       Else
  loc_13FAE73:         If (var_160 = Ucase("Pager")) Then
  loc_13FAE7D:           var_C4 = "'" & MemVar_1F953C8
  loc_13FAE97:           Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FAE9F:           Call 0.Method_arg_20 (var_C0)
  loc_13FAEA7:           Call 0.Method_arg_38 (var_C4 & "'")
  loc_13FAEBA:         End If
  loc_13FAEBA:       End If
  loc_13FAEBA:     End If
  loc_13FAEBA:   End If
  loc_13FAEBD: Next var_150 'Integer
  loc_13FAED3: Call 0.Method_arg_90 (var_BC, var_14C)
  loc_13FAEDB: Call 0.Method_arg_24 (var_8A)
  loc_13FAEE7: For var_166 =  To CInt(var_14C): 1 = var_166 'Integer
  loc_13FAEF4:   For var_16A = 1 To &H17: var_96 = var_16A 'Integer
  loc_13FAF05:     Set var_BC = Me.Txt
  loc_13FAF0B:     Call 0.Method_BTNPRINT_UnknownEvent_90 (CInt(0), var_C0)
  loc_13FAF25:     var_EC = DateAdd("d", CDbl((var_96 - 1)), CVar(var_C0))
  loc_13FAF32:     global_80 = CDate(Ucase("Pager"))
  loc_13FAF52:     Call 0.Method_arg_90 (var_BC, CLng(var_8A), var_C0)
  loc_13FAF5A:     Call 0.Method_arg_20 (var_C4, global_80)
  loc_13FAF62:     Call 0.Method_arg_30 (1)
  loc_13FAF78:     var_17C = Ucase(CVar(var_C4)) 'Variant
  loc_13FAFAF:     If (var_17C = Ucase(CVar("Day" & CStr(var_96)))) Then
  loc_13FB00E:       Call 0.Method_arg_90 (var_BC, CLng(var_8A), var_C0)
  loc_13FB016:       Call 0.Method_arg_20 (CStr(1 & Ucase(Format(global_80, "DDD")) & "'"), 1)
  loc_13FB01E:       Call 0.Method_arg_38 ("'")
  loc_13FB03D:     Else
  loc_13FB066:       If (var_17C = Ucase(CVar("Date" & CStr(var_96)))) Then
  loc_13FB086:         var_12C = CVar(CStr(Day(global_80))) 'String
  loc_13FB0AE:         var_11C = Space((2 - Len(CStr(Day(global_80)))))
  loc_13FB0B6:         var_13C = (var_12C + Ucase(Format(global_80, "DDD")))
  loc_13FB0EC:         var_1CC = Space((2 - Len(CStr(Month(global_80)))))
  loc_13FB10F:         var_20C = (var_1CC + CVar(CStr(Month(global_80))))
  loc_13FB134:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FB13C:         Call 0.Method_arg_20 (var_C0)
  loc_13FB144:         Call 0.Method_arg_38 (CStr("'" & 1 & Ucase(Format(global_80, "DDD")) & "'" & vbNullString & var_20C & "'"))
  loc_13FB180:       End If
  loc_13FB180:     End If
  loc_13FB183:   Next var_16A 'Integer
  loc_13FB18B: Next var_166 'Integer
  loc_13FB196: If (Cancel = 1) Then
  loc_13FB1A6:   ReDim Preserve var_90(0 To 1)
  loc_13FB1C1:   Set var_BC = Me.Txt
  loc_13FB1C7:   Call 0.Method_BTNPRINT_UnknownEvent_90 (CInt(0), var_C0)
  loc_13FB1EA:   var_90(0) = vbNullString & var_C0.Text & vbNullString
  loc_13FB1FB: End If
  loc_13FB201: If (Cancel = 1) Then
  loc_13FB225:   MsgBox("Please set 80 col. in your Printer & put it on.", &H40, "Paper Setting", Ucase(Format(global_80, "DDD")), var_12C)
  loc_13FB235:   Call Proc_54_39_16B8D8C()
  loc_13FB23D: Else
  loc_13FB242:   Set var_C0 = Nothing
  loc_13FB259:   Set var_BC = MemVar_1F951E8 
  loc_13FB265:   Proc_6_99_1484404(var_BC, Cancel, global_92)
  loc_13FB270:   MemVar_1F951E8 = var_BC
  loc_13FB27B: End If
  loc_13FB280: global_100 = 0
  loc_13FB288: MemVar_1F951E8 = Nothing
  loc_13FB28C: Exit Sub
  loc_13FB28D: ' Referenced from: 13FA8B0
  loc_13FB28D: Proc_6_60_E63754(global_100, &HFF)
  loc_13FB292: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E570C4
  'Data Table: 4B0890
  Dim var_92 As Integer
  loc_E57096: Set var_88 = Me.Txt
  loc_E5709C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E570AA: Proc_6_74_E23240(var_8C)
  loc_E570B6: Call Proc_54_36_DFDE80(var_8C)
  loc_E570BE: var_92 = Index
  loc_E570C1: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'ED48D8
  'Data Table: 4B0890
  Dim var_98 As TextBox
  loc_ED483A: If (CLng(Shift) = &H1B) Then
  loc_ED483D:   Call Proc_54_36_DFDE80()
  loc_ED4842:   Exit Sub
  loc_ED4843: End If
  loc_ED4852: If ((KeyCode = CInt(0)) And (Shift = &HD)) Then
  loc_ED485F:   Set var_88 = Me.Txt
  loc_ED4865:   Call 0.Method_Txt_KeyDown0 (KeyCode)
  loc_ED4885:   Set var_94 = Me.Txt
  loc_ED488B:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_98)
  loc_ED4893:   var_98.Text = Proc_6_33_15125B8(var_8C)
  loc_ED48AB:   Call Cmd_UnknownEvent_9()
  loc_ED48B9:   Set var_88 = Me.Cmd
  loc_ED48BF:   Call 0.Method_Txt_KeyDown0 (0, var_8C)
  loc_ED48C7:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_8001(0)
  loc_ED48D6: End If
  loc_ED48D6: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E3F468
  'Data Table: 4B0890
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_E3F438: On Error Goto loc_E3F45F
  loc_E3F43E: Proc_6_58_E06050(arg_10)
  loc_E3F449: Proc_6_133_E7FB08(var_94)
  loc_E3F452: arg_10 = CInt(var_94)
  loc_E3F45B: var_96 = KeyAscii
  loc_E3F45E: Exit Sub
  loc_E3F45F: ' Referenced from: E3F438
  loc_E3F45F: Proc_6_60_E63754(var_96, arg_10)
  loc_E3F464: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E00944
  'Data Table: 4B0890
  Dim var_86 As Integer
  loc_E0093F: var_86 = KeyCode
  loc_E00942: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4D394
  'Data Table: 4B0890
  loc_E4D372: Set var_88 = Me.Txt
  loc_E4D378: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4D386: Proc_6_73_E23294(var_8C)
  loc_E4D392: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F9AB00
  'Data Table: 4B0890
  Dim var_90 As TextBox
  Dim var_F0 As TextBox
  Dim arg_10 As Integer
  loc_F9A9A0: On Error Goto loc_F9AAF7
  loc_F9A9B1: If (Cancel = CInt(0)) Then
  loc_F9A9C1:   Set var_8C = Me.Txt
  loc_F9A9C7:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F9A9FF:   If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_F9AA14:     Set var_8C = Me.Txt
  loc_F9AA1A:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F9AA22:     var_90.Text = CStr(MemVar_1F950EC)
  loc_F9AA34:   Else
  loc_F9AA3E:     Set var_8C = Me.Txt
  loc_F9AA44:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F9AA64:     Set var_EC = Me.Txt
  loc_F9AA6A:     Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_F9AA72:     var_F0.Text = Proc_6_33_15125B8(var_90)
  loc_F9AA85:   End If
  loc_F9AA92:   Set var_8C = Me.Txt
  loc_F9AA98:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F9AAC9:   If (CDate(CDate(var_90.Text)) < Date) Then
  loc_F9AAD6:     Set var_8C = Me.Txt
  loc_F9AADC:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F9AAE4:     var_90.SetFocus
  loc_F9AAF2:     arg_10 = &HFF
  loc_F9AAF5:     Exit Sub
  loc_F9AAF6:   End If
  loc_F9AAF6: End If
  loc_F9AAF6: Exit Sub
  loc_F9AAF7: ' Referenced from: F9A9A0
  loc_F9AAF7: Proc_6_60_E63754(arg_10)
  loc_F9AAFC: Exit Sub
End Sub

Private Sub Form_Load() 'F336E0
  'Data Table: 4B0890
  Dim var_88 As Variant
  Dim var_AC As Variant
  loc_F335C0: On Error Goto loc_F336DA
  loc_F335CA: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_F335DD: Me.FrParameter.BackColor = CLng(MemVar_1F951B4)
  loc_F335F8: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_F33608: global_112 = &HFDC293
  loc_F3361A: Set var_88 = Me.Label2
  loc_F33620: Call 0.Method_Form_Load0 (4, var_AC)
  loc_F33628: var_AC.BackColor = global_112
  loc_F33668: Set var_88 = Me.Txt
  loc_F3366E: Call 0.Method_Form_Load0 (CInt(0), var_AC, CStr(MemVar_1F950EC), &HFFFFFF)
  loc_F33676: var_AC.Text = &H40C0
  loc_F3369B: Proc_6_23_DFC5B8(Me, 0, 0)
  loc_F336AA: Call 0.Method_arg_64 (CLng(MemVar_1F951B4), &HFF00)
  loc_F336C2: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_F336CA: Call Proc_54_30_1037394(global_112)
  loc_F336D4: Call Cmd_UnknownEvent_9()
  loc_F336D9: Exit Sub
  loc_F336DA: ' Referenced from: F335C0
  loc_F336DA: Proc_6_60_E63754(0)
  loc_F336DF: Exit Sub
End Sub

Private Sub Form_Resize() 'F91990
  'Data Table: 4B0890
  Dim var_94 As Variant
  loc_F9183F: Me.FGrid.Width = CVar(CDbl(16150))
  loc_F91871: Call 0.Method_arg_108 (var_AC)
  loc_F91881: var_94 = CVar(((var_AC - Me.FrLabel.Height) - Me.FrParameter.Height)) 'Single
  loc_F91890: Me.FGrid.Height = CVar(CDbl(16150))
  loc_F918C2: Me.FGrid.Left = CVar(Me.FrParameter.Left)
  loc_F918F9: var_94 = CVar((Me.FrParameter.Top + Me.FrParameter.Height)) 'Single
  loc_F91908: Me.FGrid.Top = CVar(Me.FrParameter.Left)
  loc_F91935: Me.FrLabel.Left = Me.FrParameter.Left
  loc_F91978: Me.FrLabel.Top = (CDbl(Me.FGrid.Top) + CDbl(Me.FGrid.Height))
  loc_F9198D: Exit Sub
  loc_F9198E: CopyBytes 6144
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0EB44
  'Data Table: 4B0890
  loc_E0EB3B: Set global_104 = Nothing
  loc_E0EB42: Exit Sub
End Sub

Private Sub Form_Activate() 'E17DAC
  'Data Table: 4B0890
  loc_E17D98: Set var_88 = Me.FGrid
  loc_E17DA9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A534
  'Data Table: 4B0890
  loc_E2A50C: On Error Goto loc_E2A52C
  loc_E2A523: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2A52B: Exit Sub
  loc_E2A52C: ' Referenced from: E2A50C
  loc_E2A52C: Proc_6_60_E63754(Shift)
  loc_E2A531: Exit Sub
  loc_E2A532: Set arg_1878 = 0
End Sub

Private Sub FGrid_UnknownEvent_0 'E61A44
  'Data Table: 4B0890
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E61A0F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E61A22: Set var_A8 = Me.TxtGrid
  loc_E61A28: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E61A30: var_AC.Visible = False
  loc_E61A3C: Call Proc_54_36_DFDE80()
  loc_E61A41: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E6AD90
  'Data Table: 4B0890
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6AD4C: Set var_88 = Me.TxtGrid
  loc_E6AD52: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6AD6C: If (var_8C.Visible = 0) Then
  loc_E6AD85:   Me.FGrid.BackColorSel = CVar(CLng(global_52))
  loc_E6AD8D: End If
  loc_E6AD8D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '103D8AC
  'Data Table: 4B0890
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim KeyCode As Integer
  Dim var_EC As Long
  loc_103D660: Set var_88 = Me.TopCtrl1
  loc_103D666: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_103D6AB: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_103D6B4:   Call Form_KeyDown(KeyCode, Shift)
  loc_103D6B9: End If
  loc_103D6BD: Set var_88 = Me.TopCtrl1
  loc_103D6C3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_103D6DC: If (CStr() = "Browse") Then
  loc_103D6DF:   Exit Sub
  loc_103D6E0: End If
  loc_103D754: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_103D76D:   Me.FGrid.CellBackColor = CVar(CLng(global_52))
  loc_103D77D:   var_9C = "+{Tab}"
  loc_103D783:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_103D78D:   KeyCode = 0
  loc_103D793: Else
  loc_103D79D:   var_B0 = Me.FGrid.Rows
  loc_103D7EA:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_103D803:     Me.FGrid.CellBackColor = CVar(CLng(global_52))
  loc_103D819:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_103D823:     KeyCode = 0
  loc_103D826:   End If
  loc_103D826: End If
  loc_103D82C: global_56 = KeyCode
  loc_103D852: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_103D876: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_103D88C:   var_EC = CLng(Me.FGrid.Col)
  loc_103D895: End If
  loc_103D89B: If (KeyCode = &HD) Then
  loc_103D8A3:   global_58 = 0
  loc_103D8A6: End If
  loc_103D8A8: KeyCode = 0
  loc_103D8AB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0D4C8
  'Data Table: 4B0890
  loc_E0D4B9: Call FGrid_UnknownEvent_C()
  loc_E0D4C3: global_58 = 0
  loc_E0D4C6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'E4D7A8
  'Data Table: 4B0890
  loc_E4D79E: If (CLng(KeyCode) = &HD) Then
  loc_E4D7A1:   Call Proc_54_31_1302DAC(CLng(Me.FGrid.Col))
  loc_E4D7A6: End If
  loc_E4D7A6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E410E8
  'Data Table: 4B0890
  Dim var_8C As TextBox
  loc_E410BC: Call Proc_54_36_DFDE80()
  loc_E410CC: Set var_88 = Me.TxtGrid
  loc_E410D2: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E410DA: var_8C.Visible = False
  loc_E410E6: Exit Sub
End Sub

Private Sub CmdUp_UnknownEvent_9 'EE7658
  'Data Table: 4B0890
  Dim var_A8 As Variant
  loc_EE75B3: If (CLng(Me.FGrid.Row) > 1) Then
  loc_EE75CF:   var_A8 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_EE75DE:   Me.FGrid.Row = var_A8
  loc_EE7606:   var_A8 = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_EE7615:   Me.FGrid.ColSel = var_A8
  loc_EE7646:   Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_EE7655: End If
  loc_EE7655: Exit Sub
End Sub

Private Sub CmdDown_UnknownEvent_9 'F00FC0
  'Data Table: 4B0890
  Dim var_BC As Variant
  loc_F00F1B: If (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1)) Then
  loc_F00F37:   var_BC = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_F00F46:   Me.FGrid.Row = var_BC
  loc_F00F6E:   var_BC = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_F00F7D:   Me.FGrid.ColSel = var_BC
  loc_F00FAE:   Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_F00FBD: End If
  loc_F00FBD: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E17D14
  'Data Table: 4B0890
  loc_E17D09: Me.Global.Unload Me
  loc_E17D11: Exit Sub
End Sub

Public Sub Day23RoomAvail() '110225C
  'Data Table: 4B0890
  Dim var_A4 As Recordset15
  Dim var_C4 As String
  Dim var_B4 As Variant
  Dim var_8C As Variant
  Dim Me As Variant
  loc_1101F30: On Error Goto loc_110224D
  loc_1101F4D: Call Proc_54_40_F8A984(New)
  loc_1101F68: Set var_8C = Me.FGrid
  loc_1101F84: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Integer
  loc_1101F90:   Set var_A4 = var_8C 
  loc_1101F9F:   var_A4.AddNew var_B4, var_C4
  loc_1101FC9:   var_A4.Fields.Item("mLine").Value = vbNullString
  loc_1102027:   var_A4.Fields.Item("RoomNo").Value = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), 0, CVar(CLng(var_86))))
  loc_110208F:   var_A4.Fields.Item("RoomCat").Value = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(2)), CVar(CLng(var_86))))
  loc_11020AD:   For var_120 = 5 To &H1B: var_88 = var_120 'Integer
  loc_11020F7:     If (Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(var_88)), CVar(CLng(var_86))) = "@  RFF") Then
  loc_1102129:       var_A4.Fields.Item(CVar("Day" & CStr(var_88))).Value = "***"
  loc_110213E:     Else
  loc_11021B0:       var_A4.Fields.Item(CVar("Day" & CStr(var_88))).Value = Left(CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(var_88)), CVar(CLng(var_86)))), &HF)
  loc_11021D2:     End If
  loc_11021D5:   Next var_120 'Integer
  loc_11021DA:   var_C4 = "*"
  loc_11021E3:   var_B4 = "Mark"
  loc_11021FF:   var_A4.Fields.Item(var_B4).Value = var_C4
  loc_1102216:   var_A4.Update var_B4, var_C4
  loc_110221D:   Set var_A4 = Nothing 
  loc_1102224: Next var_A0 'Integer
  loc_1102240: If (Me.RecordCount <= 0) Then
  loc_1102248:   global_96 = 0
  loc_110224B:   Exit Sub
  loc_110224C: End If
  loc_110224C: Exit Sub
  loc_110224D: ' Referenced from: 1101F30
  loc_1102255: Proc_6_60_E63754(0)
  loc_110225A: Exit Sub
End Sub

Public Property Get OpenMode() 'E04C50
  'Data Table: 4B0890
  loc_E04C49: OpenMode = global_108
End Sub

Public Property Let OpenMode(vNewValue) 'E02080
  'Data Table: 4B0890
  loc_E0207A: global_108 = vNewValue
  loc_E0207D: Exit Sub
End Sub

Public Sub Proc_54_30_1037394
  'Data Table: 4B0890
  Dim var_9C As Variant
  Dim var_88 As Long
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As String
  loc_1037156: Me.FGrid.Left = CVar(CDbl(0))
  loc_1037171: Me.FGrid.Top = CVar(CDbl(495))
  loc_103717E: var_88 = &H249
  loc_1037185: Set var_B4 = Me.FGrid
  loc_103719C: global_52 = CStr(CLng(var_B4.BackColor))
  loc_10371B2: var_B4.Cols = &H23
  loc_10371B7: var_9C = 0
  loc_10371C3: var_D8 = CVar(CLng(1)) 'Long
  loc_10371C8: var_F8 = "SNo"
  loc_10371D1: LateIdCallSt
  loc_10371DC: var_9C = CVar(CLng(1)) 'Long
  loc_10371E1: var_D8 = 0
  loc_10371ED: LateIdCallSt
  loc_10371F5: var_9C = 0
  loc_1037201: var_D8 = CVar(CLng(2)) 'Long
  loc_1037206: var_F8 = "Type"
  loc_103720F: LateIdCallSt
  loc_103721A: var_9C = CVar(CLng(2)) 'Long
  loc_1037225: var_D8 = CVar(CInt(1)) 'Integer
  loc_103722C: LateIdCallSt
  loc_1037237: var_9C = CVar(CLng(2)) 'Long
  loc_1037242: var_D8 = CVar(CInt(1)) 'Integer
  loc_1037249: LateIdCallSt
  loc_1037254: var_9C = CVar(CLng(2)) 'Long
  loc_1037259: var_D8 = 0
  loc_1037265: LateIdCallSt
  loc_103726D: var_9C = 0
  loc_1037279: var_D8 = CVar(CLng(3)) 'Long
  loc_103727E: var_F8 = "Rate"
  loc_1037287: LateIdCallSt
  loc_1037292: var_9C = CVar(CLng(3)) 'Long
  loc_103729D: var_D8 = CVar(CInt(7)) 'Integer
  loc_10372A4: LateIdCallSt
  loc_10372AF: var_9C = CVar(CLng(3)) 'Long
  loc_10372BA: var_D8 = CVar(CInt(7)) 'Integer
  loc_10372C1: LateIdCallSt
  loc_10372CC: var_9C = CVar(CLng(3)) 'Long
  loc_10372D1: var_D8 = 0
  loc_10372DD: LateIdCallSt
  loc_10372EC: For var_10C = 5 To &H22: var_8A = var_10C 'Byte
  loc_10372F2:   var_9C = 0
  loc_1037300:   var_D8 = CVar(CLng(var_8A)) 'Long
  loc_1037312:   var_C4 = CVar("Day" & CStr(var_8A)) 'String
  loc_1037319:   LateIdCallSt
  loc_103732C:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_1037337:   var_D8 = CVar(CInt(4)) 'Integer
  loc_103733E:   LateIdCallSt
  loc_103734B:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_1037356:   var_D8 = CVar(CInt(1)) 'Integer
  loc_103735D:   LateIdCallSt
  loc_103736A:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_1037379:   LateIdCallSt
  loc_1037384: Next var_10C 'Byte
  loc_103738C: Set var_B4 = Nothing 
  loc_1037390: Exit Sub
End Sub

Public Sub Proc_54_31_1302DAC
  'Data Table: 4B0890
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_16C As Variant
  Dim var_228 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_218 As Variant
  Dim var_248 As Variant
  Dim var_284 As Variant
  Dim var_340 As Variant
  Dim arg_181E As Variant
  loc_1302733: If (CLng(Me.FGrid.Col) = 4) Then
  loc_1302736:   Exit Sub
  loc_1302737: End If
  loc_130274A: var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1302762: var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1302771: var_108 = Me.FGrid.TextMatrix)
  loc_1302786: var_118 = CVar(CStr(var_108)) 'String
  loc_13027B2: If (Left(var_118, 1) = "@") Then
  loc_13027D6:   MsgBox("Selected Room is currently Out Of Order ", 0, "<<<<<<<<< Out Of Order >>>>>>>>>", var_108, var_118)
  loc_13027E6:   Exit Sub
  loc_13027E7: End If
  loc_1302807: If (CLng(Me.FGrid.CellBackColor) = global_116) Then
  loc_130282B:   MsgBox("Selected Room is not Vacant ", 0, "<<<<<<<<< Room Is Not Vacant >>>>>>>>>", var_108, var_118)
  loc_130283B:   Exit Sub
  loc_130283C: End If
  loc_130285C: If (CLng(Me.FGrid.CellBackColor) = global_112) Then
  loc_1302880:   MsgBox("Selected Room is Reserved ", 0, "<<<<<<<<< Room Is Not Vacant >>>>>>>>>", var_108, var_118)
  loc_1302890:   Exit Sub
  loc_1302891: End If
  loc_13028A4: var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13028BC: var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_130290C: If (Right(CVar(CStr(Me.FGrid.TextMatrix))), 1) = "#") Then
  loc_1302930:   For var_14C = CInt(CLng(Me.FGrid.Col)) To 5 Step &HFF: var_8A = var_14C 'Integer
  loc_1302949:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1302961:     var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13029B1:     If (Right(CVar(CStr(Me.FGrid.TextMatrix))), 1) = "#") Then
  loc_13029B4:       var_C4 = 1
  loc_13029C4:       var_E4 = CVar(CLng((var_8A - 4))) 'Long
  loc_13029F7:       var_88 = CStr(Right(CVar(CStr(Me.FGrid.ColHeaderCaption))), 8))
  loc_1302A09:     Else
  loc_1302A09:       Exit For
  loc_1302A0C:     End If
  loc_1302A0F:   Next var_14C 'Integer
  loc_1302A14:   ' Referenced from: 1302A09
  loc_1302A17: Else
  loc_1302A17:   var_C4 = 1
  loc_1302A39:   var_E4 = CVar((CLng(Me.FGrid.Col) - 4)) 'Long
  loc_1302A6C:   var_88 = CStr(Right(CVar(CStr(Me.FGrid.ColHeaderCaption))), 9))
  loc_1302A81: End If
  loc_1302A8D: If (global_108 = 1) Then
  loc_1302AA3:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1302AAB:   var_E4 = CVar(CLng(1)) 'Long
  loc_1302ACB:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1302AE7:   var_138 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1302AEF:   var_16C = CVar(CLng(2)) 'Long
  loc_1302B09:   var_228 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1302B27:   var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1302B2F:   var_1C4 = CVar(CLng(0)) 'Long
  loc_1302B4F:   var_208 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1302B5E:   Call unk_4B08F3.SEARCHBACKRoomNo
  loc_1302B8F: Else
  loc_1302BA2:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1302BAA:   var_E4 = CVar(CLng(1)) 'Long
  loc_1302BE2:   var_138 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1302BEA:   var_16C = CVar(CLng(2)) 'Long
  loc_1302C18:   var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1302C20:   var_1C4 = CVar(CLng(0)) 'Long
  loc_1302C58:   var_218 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1302C70:   var_248 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1302C7F:   var_284 = Me.FGrid.TextMatrix)
  loc_1302CD9:   var_340 = Me.FGrid.TextMatrix)
  loc_1302D39:   Proc_146_0_E7E558(1, CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))), CStr(Me.FGrid.TextMatrix)), var_88, CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))), CStr(IIf((Left(CVar(CStr(var_284)), 1) = "@"), vbNullString, CVar(CStr(var_340)))), CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_1302D93: End If
  loc_1302DA0: Me.var_340.Unload Me
  loc_1302DA8: Exit Sub
  loc_1302DA9: arg_181E = StrComp(var_218, var_248, var_284)
End Sub

Public Sub Proc_54_32_E5573C(arg_C) 'E5573C
  'Data Table: 4B0890
  Dim var_A0 As Long
  loc_E55710: If (arg_C = 0) Then
  loc_E55726:   var_A0 = CLng(Me.FGrid.Col)
  loc_E5572F: End If
  loc_E55734: Proc_54_32_E5573C = &HFF
  loc_E5573A: Set arg_1800 = var_A0
End Sub

Public Sub Proc_54_33_E0A38C
  'Data Table: 4B0890
  loc_E0A385: Proc_54_33_E0A38C = &HFF
End Sub

Public Sub Proc_54_34_F1E28C
  'Data Table: 4B0890
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_C8 As Variant
  loc_F1E19A: Set var_8C = Me.Txt
  loc_F1E1A0: Call 0.Method_Proc_54_34_F1E28CC (var_8E, var_86)
  loc_F1E1B0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1E1C6:   Set var_8C = Me.Txt
  loc_F1E1CC:   Call 0.Method_Proc_54_34_F1E28C0 (CInt(var_86), var_98)
  loc_F1E1D4:   var_98.Text = vbNullString
  loc_F1E1F0:   Set var_8C = Me.Txt
  loc_F1E1F6:   Call 0.Method_Proc_54_34_F1E28C0 (CInt(var_86), var_98)
  loc_F1E1FE:   var_98.Tag = vbNullString
  loc_F1E20D: Next var_92 'Byte
  loc_F1E226: Me.FGrid.Rows = 1
  loc_F1E24C: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_F1E254: Set var_98 = Me.FGrid
  loc_F1E281: Me.FGrid.FixedRows = 1
  loc_F1E289: Exit Sub
End Sub

Public Sub Proc_54_35_E7D014(arg_C) 'E7D014
  'Data Table: 4B0890
  Dim var_98 As TextBox
  loc_E7CFC2: Set var_8C = Me.Txt
  loc_E7CFC8: Call 0.Method_Proc_54_35_E7D014C (var_8E, var_86)
  loc_E7CFD8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7CFEE:   Set var_8C = Me.Txt
  loc_E7CFF4:   Call 0.Method_Proc_54_35_E7D0140 (CInt(var_86), var_98)
  loc_E7CFFC:   var_98.Enabled = arg_C
  loc_E7D00B: Next var_92 'Byte
  loc_E7D011: Exit Sub
End Sub

Public Sub Proc_54_36_DFDE80
  'Data Table: 4B0890
  loc_DFDE7C: Exit Sub
End Sub

Public Sub Proc_54_37_15DFB40(arg_C, arg_10) '15DFB40
  'Data Table: 4B0890
  Dim var_DC As Variant
  Dim var_F0 As Variant
  Dim var_BA As Integer
  Dim var_BC As Integer
  Dim var_BE As Integer
  Dim var_8C As Double
  Dim var_94 As Double
  Dim var_F4 As String
  Dim var_100 As String
  Dim var_114 As String
  Dim unk_4B0896 As Connection15
  Dim var_124 As Variant
  Dim var_168 As Variant
  Dim var_198 As Variant
  Dim var_178 As Variant
  Dim var_1D8 As Variant
  Dim var_B8 As Double
  Dim var_1E8 As Long
  Dim var_274 As Variant
  Dim var_EC As Variant
  Dim var_144 As Variant
  Dim var_188 As Variant
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_254 As Variant
  Dim var_294 As Variant
  Dim var_CC As Recordset15
  Dim var_1EC As Variant
  Dim var_C8 As Integer
  Dim var_1A8 As Variant
  Dim var_C6 As Integer
  loc_15DE81B: Me.FGrid.FixedCols = 0
  loc_15DE836: Me.FGrid.FixedRows = 1
  loc_15DE851: Me.FGrid.RowHeightMin = &H1F4
  loc_15DE862: Set var_F0 = Me.FGrid
  loc_15DE868: var_F0.Redraw = False
  loc_15DE876: If (arg_10 = 1) Then
  loc_15DE87D:   var_BA = CInt(5)
  loc_15DE884:   var_BC = CInt(&H22)
  loc_15DE889:   var_BE = 1
  loc_15DE88F:   var_8C = arg_C
  loc_15DE89A:   var_94 = CDate((arg_C + CDbl(&H1E)))
  loc_15DE8A0: Else
  loc_15DE8A4:   var_BA = CInt(&H22)
  loc_15DE8AB:   var_BC = CInt(5)
  loc_15DE8B0:   var_BE = &HFF
  loc_15DE8BB:   var_8C = CDate((arg_C - CDbl(&H1D)))
  loc_15DE8C6:   var_94 = CDate((arg_C + CDbl(1)))
  loc_15DE8C9: End If
  loc_15DE8E5: var_F4 = "SHAPE {select R.Code as RoomNo,RC.Code as RoomCat,RC.Name as Category,RL.Rate2 as Rate from " & "(RoomMast R left Join RoomCat RC on RC.Code=R.RoomCat) "
  loc_15DE8FA: var_100 = var_F4 & "Left Join RateList RL on RC.Code=RL.RoomCat Where R.logsite_Code='" & MemVar_1F95078 & "' and R.Type='RO' And R.InclCount='Y' And RL.OccType='Single' And RL.Code='*' And RL.RoomNo='*****' Order By R.Code} "
  loc_15DE90A: Call Proc_54_38_F9FAF8(CStr(var_8C), var_104, var_100 & "APPEND ({SELECT Distinct r.Code as RoomNo, ", var_124, -1, var_F0, var_94, var_8C)
  loc_15DE921: var_114 = var_BE & var_104 & " FROM ((RoomMast R Left Join Booking B On B.OccRoom=R.Code) " & "Left Join GuestFolio GF on GF.BookingDocid=B.DociD)Left Join RoomOccDet RO on RO.Docid=GF.DocId Where (R.Type='RO' or r.Type is Null) And R.InclCount='Y' Group By r.Code} RELATE RoomNo TO RoomNo) AS AA"
  loc_15DE92A: unk_4B0896.Execute var_114, var_BC, var_BA
  loc_15DE935: Set var_A0 = var_F0
  loc_15DE959: CVarUnk
  loc_15DE95E: VerifyVarObj
  loc_15DE964: Set var_F0 = Me.FGrid
  loc_15DE96A: LateIdStAd
  loc_15DE99F: For var_12C = 1 To (CLng(Me.FGrid.Rows) - 1): var_A4 = var_12C 'Long
  loc_15DE9B2:   For var_134 = 5 To &H22: var_A8 = var_134 'Long
  loc_15DE9FC:     If (InStr(var_A8, CStr(Me.FGrid.TextMatrix)), "*", 0) <> 0) Then
  loc_15DEA10:       Me.FGrid.Row = var_A4
  loc_15DEA29:       Me.FGrid.Col = var_A8
  loc_15DEA45:       Me.FGrid.CellBackColor = global_116
  loc_15DEA60:       Me.FGrid.CellForeColor = 0
  loc_15DEA78:       Me.FGrid.CellFontName = "Arial"
  loc_15DEA92:       Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_15DEAF9:       var_198 = CVar((Len(CStr(Me.FGrid.TextMatrix))) - 1)) 'Long
  loc_15DEB15:       var_1D8 = CVar(CStr(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 1, var_198))) 'String
  loc_15DEB1D:       Set var_1EC = Me.FGrid
  loc_15DEB23:       LateIdCallSt
  loc_15DEB49:     Else
  loc_15DEB7D:       If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_15DEB91:         Me.FGrid.Row = var_A4
  loc_15DEBAA:         Me.FGrid.Col = var_A8
  loc_15DEBC6:         Me.FGrid.CellBackColor = global_112
  loc_15DEBE2:         Me.FGrid.CellForeColor = global_124
  loc_15DEBFA:         Me.FGrid.CellFontName = "Arial"
  loc_15DEC14:         Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_15DEC1C:       End If
  loc_15DEC1C:     End If
  loc_15DEC1F:   Next var_134 'Long
  loc_15DEC27: Next var_12C 'Long
  loc_15DEC3B: For var_1F4 = CLng(var_BA) To CLng(var_BC) Step CLng(var_BE): var_A4 = var_1F4 'Long
  loc_15DEC49:   If (var_A4 = CLng(var_BA)) Then
  loc_15DEC4F:     var_B8 = arg_C
  loc_15DEC55:   Else
  loc_15DEC71:     var_B8 = CDate(DateAdd("d", CDbl(arg_10), CDate(var_B8)))
  loc_15DEC7B:   End If
  loc_15DEC7B:   var_1E8 = 1
  loc_15DEC8D:   var_274 = CVar((var_A4 - 4)) 'Long
  loc_15DECAA:   var_124 = CDate(var_B8)
  loc_15DECBE:   var_198 = (Format(var_124, "DDD") + vbCr)
  loc_15DECE2:   var_1D8 = Format(var_B8, "dd/MM")
  loc_15DECEA:   var_204 = (1 + var_1D8)
  loc_15DECFE:   var_224 = (var_204 + Space(5))
  loc_15DED2A:   var_254 = (1 + Format(var_B8, "dd/MMM/yy"))
  loc_15DED2F:   var_294 = CVar(CStr(var_254)) 'String
  loc_15DED37:   Set var_F0 = Me.FGrid
  loc_15DED3D:   LateIdCallSt
  loc_15DED6E:   var_DC = CVar((var_A4 - 4)) 'Long
  loc_15DED73:   var_144 = 1
  loc_15DED7C:   var_188 = &H1F4
  loc_15DED89:   Set var_F0 = Me.FGrid
  loc_15DED8F:   LateIdCallSt
  loc_15DED9D: Next var_1F4 'Long
  loc_15DEDB6: var_F4 = "Select RoomNO as RoomCode,ChkinDt as FromDate ,dATEdiff(D,ChkInDt,DepDate) as Days,GuestProf.Name as Reasons,dateadd(D,dATEdiff(D,ChkInDt,DepDate),chkindt) as TODate From RoomOccDet left join GuestProf on GuestProf.Code=RoomOccDet.GuestProf Where RoomOccDet.Logsite_Code='" & MemVar_1F95078
  loc_15DEDCB: Proc_6_7_F26918(var_124, var_8C, CVar(var_F4 & "' and ChkOutDate is NULL And dateadd(D,dATEdiff(D,ChkInDt,DepDate),chkindt)>="))
  loc_15DEDE1: unk_4B0896.Execute CStr(var_198 & var_124), -1, var_F0
  loc_15DEDEC: Set var_CC = var_F0
  loc_15DEE18: If (var_CC.RecordCount > 0) Then
  loc_15DEE1B:   ' Referenced from: 15DF19B
  loc_15DEE2A:   If Not(var_CC.EOF) Then
  loc_15DEE54:     For var_2B4 = 1 To (CLng(Me.FGrid.Rows) - 1): var_A4 = var_2B4 'Long
  loc_15DEE61:       var_EC = 0
  loc_15DEEC1:       If (CVar(CStr(Me.FGrid.TextMatrix))) = var_CC.Fields.Item("RoomCode").Value) Then
  loc_15DEEFE:         If (CDate(var_CC.Fields.Item("FromDate").Value) > var_8C) Then
  loc_15DEF64:           var_198 = (DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1) - 1)
  loc_15DEF69:           var_C8 = CInt(var_198)
  loc_15DEF7F:         Else
  loc_15DEFC7:           var_178 = (DateDiff("d", var_8C, CVar(var_CC.Fields.Item("ToDate")), 1, 1) - 1)
  loc_15DEFCC:           var_C8 = CInt(DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1))
  loc_15DEFD9:         End If
  loc_15DEFE5:         For var_2C0 = 0 To CLng(var_C8): var_A8 = var_2C0 'Long
  loc_15DF025:           If (CDate(var_CC.Fields.Item("FromDate").Value) > var_8C) Then
  loc_15DF070:             var_178 = (DateDiff("d", var_8C, CVar(var_CC.Fields.Item("FromDate")), 1, 1) + 1)
  loc_15DF079:             var_198 = (DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1) + 4)
  loc_15DF084:             var_1A8 = (var_198 + CVar(var_A8))
  loc_15DF089:             var_C6 = CInt("dd/MM")
  loc_15DF09F:           Else
  loc_15DF0A9:             var_C6 = CInt((5 + var_A8))
  loc_15DF0AC:           End If
  loc_15DF0B2:           If (var_C6 > &H22) Then
  loc_15DF0B5:             GoTo loc_15DF18B
  loc_15DF0B8:           End If
  loc_15DF0CB:           Me.FGrid.Col = CVar(CLng(var_C6))
  loc_15DF0E4:           Me.FGrid.Row = var_A4
  loc_15DF100:           Me.FGrid.CellBackColor = global_116
  loc_15DF127:           var_124 = CVar(var_CC.Fields.Item("Reasons")) 'Address
  loc_15DF13E:           Me.FGrid.Text = CVar(Proc_6_38_E69628(var_124, var_C6, var_C6, 0, var_C8))
  loc_15DF161:           Me.FGrid.CellFontName = "Arial"
  loc_15DF175:           Set var_F0 = Me.FGrid
  loc_15DF17B:           var_F0.CellFontSize = CVar(CDbl(8))
  loc_15DF186:         Next var_2C0 'Long
  loc_15DF18B:         ' Referenced from: 15DF0B5
  loc_15DF18B:       End If
  loc_15DF18E:     Next var_2B4 'Long
  loc_15DF196:     var_CC.MoveNext
  loc_15DF19B:     GoTo loc_15DEE1B
  loc_15DF19E:   End If
  loc_15DF19E: End If
  loc_15DF1BB: Proc_6_7_F26918(var_124, var_8C, "Select RoomCode,FromDate ,dATEdiff(D,")
  loc_15DF1DB: Proc_6_7_F26918(var_198, var_8C, var_1D8 & var_124 & ",Todate) as Days,Reasons,todate From RoomBlockOut Where Type='O' and ToDate>=")
  loc_15DF1E3: var_1A8 = -1 & var_198 
  loc_15DF1F1: unk_4B0896.Execute CStr("dd/MM"), var_F0, 
  loc_15DF1FC: Set var_CC = var_F0
  loc_15DF228: If (var_CC.RecordCount > 0) Then
  loc_15DF22B:   ' Referenced from: 15DF5BE
  loc_15DF23A:   If Not(var_CC.EOF) Then
  loc_15DF264:     For var_2C8 = 1 To (CLng(Me.FGrid.Rows) - 1): var_A4 = var_2C8 'Long
  loc_15DF271:       var_EC = 0
  loc_15DF2D1:       If (CVar(CStr(Me.FGrid.TextMatrix))) = var_CC.Fields.Item("RoomCode").Value) Then
  loc_15DF30E:         If (CDate(var_CC.Fields.Item("FromDate").Value) > var_8C) Then
  loc_15DF370:           var_C8 = CInt(DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1))
  loc_15DF386:         Else
  loc_15DF3CA:           var_C8 = CInt(DateDiff("d", var_8C, CVar(var_CC.Fields.Item("ToDate")), 1, 1))
  loc_15DF3D7:         End If
  loc_15DF3E3:         For var_2D0 = 0 To CLng(var_C8): var_A8 = var_2D0 'Long
  loc_15DF423:           If (CDate(var_CC.Fields.Item("FromDate").Value) > var_8C) Then
  loc_15DF46E:             var_178 = (DateDiff("d", var_8C, CVar(var_CC.Fields.Item("FromDate")), 1, 1) + 1)
  loc_15DF477:             var_198 = (DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1) + 4)
  loc_15DF482:             var_1A8 = (var_198 + CVar(var_A8))
  loc_15DF487:             var_C6 = CInt("dd/MM")
  loc_15DF49D:           Else
  loc_15DF4A7:             var_C6 = CInt((5 + var_A8))
  loc_15DF4AA:           End If
  loc_15DF4B0:           If (var_C6 > &H22) Then
  loc_15DF4B3:             GoTo loc_15DF5AE
  loc_15DF4B6:           End If
  loc_15DF4C9:           Me.FGrid.Col = CVar(CLng(var_C6))
  loc_15DF4E2:           Me.FGrid.Row = var_A4
  loc_15DF4FE:           Me.FGrid.CellBackColor = global_120
  loc_15DF519:           Me.FGrid.CellForeColor = &HFFFF
  loc_15DF531:           Me.FGrid.CellFontName = "Webdings"
  loc_15DF55B:           var_124 = CVar(var_CC.Fields.Item("Reasons")) 'Address
  loc_15DF576:           Me.FGrid.Text = CVar(var_C8 & Proc_6_38_E69628(var_124, "@  ", var_C6, var_C6, 0))
  loc_15DF598:           Set var_F0 = Me.FGrid
  loc_15DF59E:           var_F0.CellFontSize = CVar(CDbl(&H14))
  loc_15DF5A9:         Next var_2D0 'Long
  loc_15DF5AE:         ' Referenced from: 15DF4B3
  loc_15DF5AE:       End If
  loc_15DF5B1:     Next var_2C8 'Long
  loc_15DF5B9:     var_CC.MoveNext
  loc_15DF5BE:     GoTo loc_15DF22B
  loc_15DF5C1:   End If
  loc_15DF5C1: End If
  loc_15DF5D5: var_F4 = "Select RoomNO as RoomCode,ArrDate as FromDate ,dATEdiff(D,ArrDate,DepDate) as Days,GuestProf.Name as Reasons,dateadd(D,dATEdiff(D,ArrDate,DepDate),ArrDate) as TODate,IsNull(P.Advance,0) Advance From ViewBooking B left join GuestProf on GuestProf.Code=B.GuestProf LEFT JOIN (Select RefDocId,IsNull(Sum(AmtCr),0) Advance From PayCharge Where VType In ('ADRES','ARRES') And Logsite_Code='" & MemVar_1F95078
  loc_15DF5EA: var_168 = CVar(var_F4 & "' Group By RefDocId) P ON B.DocId = P.RefDocId Where B.Cancel='N' And B.Logsite_Code='" & MemVar_1F95078 & "' And dateadd(D,dATEdiff(D,ArrDate,DepDate),ArrDate)>=") 'String
  loc_15DF5F8: Proc_6_7_F26918(var_124, var_8C, var_168)
  loc_15DF60E: unk_4B0896.Execute CStr(var_198 & var_124), -1, var_F0
  loc_15DF619: Set var_CC = var_F0
  loc_15DF649: If (var_CC.RecordCount > 0) Then
  loc_15DF64C:   ' Referenced from: 15DFA40
  loc_15DF65B:   If Not(var_CC.EOF) Then
  loc_15DF685:     For var_2D8 = 1 To (CLng(Me.FGrid.Rows) - 1): var_A4 = var_2D8 'Long
  loc_15DF692:       var_EC = 0
  loc_15DF6F2:       If (CVar(CStr(Me.FGrid.TextMatrix))) = var_CC.Fields.Item("RoomCode").Value) Then
  loc_15DF72F:         If (CDate(var_CC.Fields.Item("FromDate").Value) > var_8C) Then
  loc_15DF795:           var_198 = (DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1) - 1)
  loc_15DF79A:           var_C8 = CInt(var_198)
  loc_15DF7B0:         Else
  loc_15DF7F8:           var_178 = (DateDiff("d", var_8C, CVar(var_CC.Fields.Item("ToDate")), 1, 1) - 1)
  loc_15DF7FD:           var_C8 = CInt(DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1))
  loc_15DF80A:         End If
  loc_15DF816:         For var_2E0 = 0 To CLng(var_C8): var_A8 = var_2E0 'Long
  loc_15DF856:           If (CDate(var_CC.Fields.Item("FromDate").Value) > var_8C) Then
  loc_15DF8A1:             var_178 = (DateDiff("d", var_8C, CVar(var_CC.Fields.Item("FromDate")), 1, 1) + 1)
  loc_15DF8AA:             var_198 = (DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1) + 4)
  loc_15DF8B5:             var_1A8 = (var_198 + CVar(var_A8))
  loc_15DF8BA:             var_C6 = CInt("dd/MM")
  loc_15DF8D0:           Else
  loc_15DF8DA:             var_C6 = CInt((5 + var_A8))
  loc_15DF8DD:           End If
  loc_15DF8E3:           If (var_C6 > &H22) Then
  loc_15DF8E6:             GoTo loc_15DFA30
  loc_15DF8E9:           End If
  loc_15DF8FC:           Me.FGrid.Col = CVar(CLng(var_C6))
  loc_15DF915:           Me.FGrid.Row = var_A4
  loc_15DF931:           Me.FGrid.CellBackColor = global_112
  loc_15DF961:           var_168 = CVar(Proc_6_38_E69628(CVar(var_CC.Fields.Item("Reasons")), var_C6, var_C6, 0, var_C8)) 'String
  loc_15DF96F:           Me.FGrid.Text = var_168
  loc_15DF992:           Me.FGrid.CellFontName = "Arial"
  loc_15DF9AC:           Me.FGrid.CellFontSize = CVar(CDbl(&HA))
  loc_15DF9DA:           Proc_6_39_E7D3A0(var_168, CVar(var_CC.Fields.Item("Advance")), var_C8)
  loc_15DF9F4:           If (var_168 > 0) Then
  loc_15DFA0A:             Me.FGrid.CellForeColor = &HFF
  loc_15DFA20:             Me.FGrid.CellFontBold = True
  loc_15DFA28:           End If
  loc_15DFA2B:         Next var_2E0 'Long
  loc_15DFA30:         ' Referenced from: 15DF8E6
  loc_15DFA30:       End If
  loc_15DFA33:     Next var_2D8 'Long
  loc_15DFA3B:     var_CC.MoveNext
  loc_15DFA40:     GoTo loc_15DF64C
  loc_15DFA43:   End If
  loc_15DFA43: End If
  loc_15DFA43: var_DC = 0
  loc_15DFA4C: var_144 = &H1F4
  loc_15DFA59: Set var_F0 = Me.FGrid
  loc_15DFA5F: LateIdCallSt
  loc_15DFA6A: var_DC = 0
  loc_15DFA73: var_144 = 1
  loc_15DFA7C: var_188 = 0
  loc_15DFA89: Set var_F0 = Me.FGrid
  loc_15DFA8F: LateIdCallSt
  loc_15DFAAD: Me.FGrid.FixedCols = 4
  loc_15DFAC8: Me.FGrid.Col = 5
  loc_15DFAE3: Me.FGrid.Row = 1
  loc_15DFAEB: var_DC = 0
  loc_15DFAF4: var_144 = False
  loc_15DFAFD: Set var_F0 = Me.FGrid
  loc_15DFB03: LateIdCallSt
  loc_15DFB1C: Me.FGrid.Redraw = True
  loc_15DFB29: Set var_98 = Nothing
  loc_15DFB31: Set var_A0 = Nothing
  loc_15DFB39: Set var_9C = Nothing
  loc_15DFB3C: Exit Sub
End Sub

Public Sub Proc_54_38_F9FAF8(arg_C) 'F9FAF8
  'Data Table: 4B0890
  Dim var_B4 As Variant
  Dim var_F4 As String
  Dim var_124 As Date
  Dim var_164 As Variant
  Dim var_184 As Date
  Dim var_1B4 As String
  Dim var_1E4 As Date
  Dim var_20C As String
  loc_F9F9C9: For var_94 = 0 To &H1D: var_8A = var_94 'Integer
  loc_F9F9E4:   var_B4 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F9F9EB:   Proc_6_7_F26918(var_C4, var_B4)
  loc_F9F9F7:   var_F4 = " and B.ArrDate+B.NoDays-1>="
  loc_F9FA0B:   var_124 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F9FA12:   Proc_6_7_F26918(var_134, var_124)
  loc_F9FA23:   var_164 = CVar(var_88 & "Max(Case When RO.ChkInDt is null Then Case When B.ArrDate<=") & var_C4 & var_F4 & var_134 & " Then B.GuestName Else '' End Else Case When Ro.ChkInDt<=" 
  loc_F9FA32:   var_184 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F9FA39:   Proc_6_7_F26918(var_194, var_184)
  loc_F9FA45:   var_1B4 = " and RO.DEPDATE-1>="
  loc_F9FA59:   var_1E4 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F9FA60:   Proc_6_7_F26918(var_1F4, var_1E4)
  loc_F9FA78:   var_20C = " Then case RO.tYPE When 'O' then ''Else B.GuestName +'#*' end Else '' End End ) as Day" & CStr(var_8A)
  loc_F9FA87:   var_88 = CStr(var_164 & var_194 & var_1B4 & var_1F4 & CVar(var_20C & ","))
  loc_F9FABB: Next var_94 'Integer
  loc_F9FACA: var_B4 = CVar((Len(var_88) - 1)) 'Long
  loc_F9FAE7: var_88 = CStr(Mid(var_88, 1, var_B4))
  loc_F9FAF1: Proc_54_38_F9FAF8 = 
End Sub

Public Sub Proc_54_39_16B8D8C
  'Data Table: 4B0890
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
  loc_16B7830: On Error Goto loc_16B8D86
  loc_16B7835: Close 1
  loc_16B783E: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_16B7870: var_A0 = Replace(CStr(Space(&H82)), " ", MemVar_1F953D0, 1, -1, 0)
  loc_16B787B: var_88 = 1
  loc_16B7895: If (Me.RecordCount > 0) Then
  loc_16B789E:   Me.MoveFirst
  loc_16B78A3:   ' Referenced from: 16B8CCC
  loc_16B78B5:   If Not(Me.EOF) Then
  loc_16B78BE:     If (var_86 = 0) Then
  loc_16B78D1:       var_86 = Proc_6_129_12B862C(var_88, var_86)
  loc_16B78DC:       var_100 = "B"
  loc_16B78F8:       Print 1, Proc_6_128_1026560(global_88, var_100, &H50)
  loc_16B7915:       Set var_114 = Me.Txt
  loc_16B791B:       Call 0.Method_Proc_54_39_16B8D8C0 (CInt(0), var_118, var_100)
  loc_16B7923:       var_86 = var_118.Text
  loc_16B7934:       Print 1, "From Date " & var_100
  loc_16B794D:       Print 1, "* = OUT OF ORDER"
  loc_16B7969:       var_128 = (Chr(&HF) + CVar(var_A0))
  loc_16B796F:       Print 1, var_128
  loc_16B7983:       For var_12C = 1 To &H17: var_A4 = var_12C 'Integer
  loc_16B7994:         Set var_114 = Me.Txt
  loc_16B799A:         Call 0.Method_Proc_54_39_16B8D8C0 (CInt(0), var_118, 1)
  loc_16B79B4:         var_128 = DateAdd("d", CDbl((var_A4 - 1)), CVar(var_118))
  loc_16B79C1:         global_80 = CDate(var_128)
  loc_16B7A0F:         var_BC(CLng(var_A4)) = CStr(Ucase(Format(global_80, "DDD")))
  loc_16B7A5C:         var_14C = Space((2 - Len(CStr(Day(global_80)))))
  loc_16B7A64:         var_16C = (CVar(CStr(Day(global_80))) + Ucase(Format(global_80, "DDD")))
  loc_16B7A96:         var_1BC = Space((2 - Len(CStr(Month(global_80)))))
  loc_16B7AB9:         var_1FC = (var_1BC + CVar(CStr(Month(global_80))))
  loc_16B7ACC:         var_D8(CLng(var_A4)) = CStr(var_16C & vbNullString & var_1FC)
  loc_16B7AFC:       Next var_12C 'Integer
  loc_16B7D10:       var_128 = (Space(&HA) + "|")
  loc_16B7D1A:       var_15C = (Day(global_80) + CVar(Proc_6_45_EADFB8(var_BC(1))))
  loc_16B7D23:       var_16C = (CVar(CStr(Day(global_80))) + "|")
  loc_16B7D2D:       var_1AC = (var_16C + CVar(Proc_6_45_EADFB8(var_BC(2), 4)))
  loc_16B7D36:       var_1BC = (Month(global_80) + "|")
  loc_16B7D40:       var_1EC = (var_1BC + CVar(Proc_6_45_EADFB8(var_BC(3), 4)))
  loc_16B7D49:       var_1FC = (CVar(CStr(Month(global_80))) + "|")
  loc_16B7D53:       var_224 = (var_1FC + CVar(Proc_6_45_EADFB8(var_BC(4), 4)))
  loc_16B7D5C:       var_234 = (var_224 + "|")
  loc_16B7D66:       var_258 = (var_234 + CVar(Proc_6_45_EADFB8(var_BC(5), 4)))
  loc_16B7D6F:       var_278 = (var_258 + "|")
  loc_16B7D79:       var_29C = (var_278 + CVar(Proc_6_45_EADFB8(var_BC(6), 4)))
  loc_16B7D82:       var_2BC = (var_29C + "|")
  loc_16B7D8C:       var_2E0 = (var_2BC + CVar(Proc_6_45_EADFB8(var_BC(7), 4)))
  loc_16B7D95:       var_300 = (var_2E0 + "|")
  loc_16B7D9F:       var_324 = (var_300 + CVar(Proc_6_45_EADFB8(var_BC(8), 4)))
  loc_16B7DA8:       var_344 = (var_324 + "|")
  loc_16B7DB2:       var_368 = (var_344 + CVar(Proc_6_45_EADFB8(var_BC(9), 4)))
  loc_16B7DBB:       var_388 = (var_368 + "|")
  loc_16B7DC5:       var_3AC = (var_388 + CVar(Proc_6_45_EADFB8(var_BC(&HA), 4)))
  loc_16B7DCE:       var_3CC = (var_3AC + "|")
  loc_16B7DD8:       var_3F0 = (var_3CC + CVar(Proc_6_45_EADFB8(var_BC(&HB), 4)))
  loc_16B7DE1:       var_410 = (var_3F0 + "|")
  loc_16B7DEB:       var_434 = (var_410 + CVar(Proc_6_45_EADFB8(var_BC(&HC), 4)))
  loc_16B7DF4:       var_454 = (var_434 + "|")
  loc_16B7DFE:       var_478 = (var_454 + CVar(Proc_6_45_EADFB8(var_BC(&HD), 4)))
  loc_16B7E07:       var_498 = (var_478 + "|")
  loc_16B7E11:       var_4BC = (var_498 + CVar(Proc_6_45_EADFB8(var_BC(&HE), 4)))
  loc_16B7E1A:       var_4DC = (var_4BC + "|")
  loc_16B7E24:       var_500 = (var_4DC + CVar(Proc_6_45_EADFB8(var_BC(&HF), 4)))
  loc_16B7E2D:       var_520 = (var_500 + "|")
  loc_16B7E37:       var_544 = (var_520 + CVar(Proc_6_45_EADFB8(var_BC(&H10), 4)))
  loc_16B7E40:       var_564 = (var_544 + "|")
  loc_16B7E4A:       var_588 = (var_564 + CVar(Proc_6_45_EADFB8(var_BC(&H11), 4)))
  loc_16B7E53:       var_5A8 = (var_588 + "|")
  loc_16B7E5D:       var_5CC = (var_5A8 + CVar(Proc_6_45_EADFB8(var_BC(&H12), 4)))
  loc_16B7E66:       var_5EC = (var_5CC + "|")
  loc_16B7E70:       var_610 = (var_5EC + CVar(Proc_6_45_EADFB8(var_BC(&H13), 4)))
  loc_16B7E79:       var_630 = (var_610 + "|")
  loc_16B7E83:       var_654 = (var_630 + CVar(Proc_6_45_EADFB8(var_BC(&H14), 4)))
  loc_16B7E8C:       var_674 = (var_654 + "|")
  loc_16B7E96:       var_698 = (var_674 + CVar(Proc_6_45_EADFB8(var_BC(&H15), 4)))
  loc_16B7E9F:       var_6B8 = (var_698 + "|")
  loc_16B7EA9:       var_6DC = (var_6B8 + CVar(Proc_6_45_EADFB8(var_BC(&H16), 4)))
  loc_16B7EB2:       var_6FC = (var_6DC + "|")
  loc_16B7EBC:       var_720 = (var_6FC + CVar(Proc_6_45_EADFB8(var_BC(&H17), 4)))
  loc_16B7EC5:       var_740 = (var_720 + "|")
  loc_16B7ECB:       Print 1, var_740
  loc_16B7FA8:       var_128 = ("TYPE" + Space(6))
  loc_16B7FB1:       var_14C = (Day(global_80) + "|")
  loc_16B7FC1:       var_15C = (CVar(Proc_6_45_EADFB8(var_BC(1))) + CVar(var_D8(1)))
  loc_16B7FCA:       var_16C = (CVar(CStr(Day(global_80))) + "|")
  loc_16B7FDA:       var_18C = (var_16C + CVar(var_D8(2)))
  loc_16B7FE3:       var_1AC = (CVar(Proc_6_45_EADFB8(var_BC(2), 4)) + "|")
  loc_16B7FF3:       var_1BC = (Month(global_80) + CVar(var_D8(3)))
  loc_16B7FFC:       var_1DC = (var_1BC + "|")
  loc_16B800C:       var_1EC = (CVar(Proc_6_45_EADFB8(var_BC(3), 4)) + CVar(var_D8(4)))
  loc_16B8015:       var_1FC = (CVar(CStr(Month(global_80))) + "|")
  loc_16B8025:       var_20C = (var_1FC + CVar(var_D8(5)))
  loc_16B802E:       var_224 = (CVar(Proc_6_45_EADFB8(var_BC(4), 4)) + "|")
  loc_16B803E:       var_234 = (var_224 + CVar(var_D8(6)))
  loc_16B8047:       var_248 = (var_234 + "|")
  loc_16B8057:       var_258 = (CVar(Proc_6_45_EADFB8(var_BC(5), 4)) + CVar(var_D8(7)))
  loc_16B8060:       var_278 = (var_258 + "|")
  loc_16B8070:       var_28C = (var_278 + CVar(var_D8(8)))
  loc_16B8079:       var_29C = (CVar(Proc_6_45_EADFB8(var_BC(6), 4)) + "|")
  loc_16B8089:       var_2BC = (var_29C + CVar(var_D8(9)))
  loc_16B8092:       var_2D0 = (var_2BC + "|")
  loc_16B80A2:       var_2E0 = (CVar(Proc_6_45_EADFB8(var_BC(7), 4)) + CVar(var_D8(&HA)))
  loc_16B80AB:       var_300 = (var_2E0 + "|")
  loc_16B80BB:       var_314 = (var_300 + CVar(var_D8(&HB)))
  loc_16B80C4:       var_324 = (CVar(Proc_6_45_EADFB8(var_BC(8), 4)) + "|")
  loc_16B80D4:       var_344 = (var_324 + CVar(var_D8(&HC)))
  loc_16B80DD:       var_358 = (var_344 + "|")
  loc_16B80ED:       var_368 = (CVar(Proc_6_45_EADFB8(var_BC(9), 4)) + CVar(var_D8(&HD)))
  loc_16B80F6:       var_388 = (var_368 + "|")
  loc_16B8106:       var_39C = (var_388 + CVar(var_D8(&HE)))
  loc_16B810F:       var_3AC = (CVar(Proc_6_45_EADFB8(var_BC(&HA), 4)) + "|")
  loc_16B811F:       var_3CC = (var_3AC + CVar(var_D8(&HF)))
  loc_16B8128:       var_3E0 = (var_3CC + "|")
  loc_16B8138:       var_3F0 = (CVar(Proc_6_45_EADFB8(var_BC(&HB), 4)) + CVar(var_D8(&H10)))
  loc_16B8141:       var_410 = (var_3F0 + "|")
  loc_16B8151:       var_424 = (var_410 + CVar(var_D8(&H11)))
  loc_16B815A:       var_434 = (CVar(Proc_6_45_EADFB8(var_BC(&HC), 4)) + "|")
  loc_16B816A:       var_454 = (var_434 + CVar(var_D8(&H12)))
  loc_16B8173:       var_468 = (var_454 + "|")
  loc_16B8183:       var_478 = (CVar(Proc_6_45_EADFB8(var_BC(&HD), 4)) + CVar(var_D8(&H13)))
  loc_16B818C:       var_498 = (var_478 + "|")
  loc_16B819C:       var_4AC = (var_498 + CVar(var_D8(&H14)))
  loc_16B81A5:       var_4BC = (CVar(Proc_6_45_EADFB8(var_BC(&HE), 4)) + "|")
  loc_16B81B5:       var_4DC = (var_4BC + CVar(var_D8(&H15)))
  loc_16B81BE:       var_4F0 = (var_4DC + "|")
  loc_16B81CE:       var_500 = (CVar(Proc_6_45_EADFB8(var_BC(&HF), 4)) + CVar(var_D8(&H16)))
  loc_16B81D7:       var_520 = (var_500 + "|")
  loc_16B81E7:       var_534 = (var_520 + CVar(var_D8(&H17)))
  loc_16B81F0:       var_544 = (CVar(Proc_6_45_EADFB8(var_BC(&H10), 4)) + "|")
  loc_16B81F6:       Print 1, var_544
  loc_16B8266:       Print 1, var_A0
  loc_16B826C:     End If
  loc_16B8272:     var_86 = (var_86 + 7)
  loc_16B829A:     For var_914 = 3 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_914 'Integer
  loc_16B82A6:       If (var_A2 = 3) Then
  loc_16B82A9:         GoTo loc_16B8CC4
  loc_16B82AC:       End If
  loc_16B892B:       var_748 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(Me.Fields.Item("RoomNo")), 3), 5) & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCat")), var_86), 4)
  loc_16B894D:       var_768 = var_748 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day5"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day6"))), 4)
  loc_16B896F:       var_788 = var_768 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day7"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day8"))), 4)
  loc_16B8991:       var_964 = var_788 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day9"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day10"))), 4)
  loc_16B89B3:       var_994 = var_964 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day11"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day12"))), 4)
  loc_16B89D5:       var_9C4 = var_994 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day13"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day14"))), 4)
  loc_16B89F7:       var_9F4 = var_9C4 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day15"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day16"))), 4)
  loc_16B8A26:       var_A34 = Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day18"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day19"))), 4)
  loc_16B8A48:       var_A64 = var_A34 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day20"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day21"))), 4)
  loc_16B8A6A:       var_A94 = var_A64 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day22"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day23"))), 4)
  loc_16B8A8C:       var_AC4 = var_A94 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day24"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day25"))), 4)
  loc_16B8AAE:       var_AFC = var_AC4 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day26"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day27"))), 4)
  loc_16B8ABE:       Print 1, var_9F4 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day17"))), 4) & "|" & var_AFC & "|"
  loc_16B8C5F:       var_86 = (var_86 + 1)
  loc_16B8C68:       If (var_86 > &H3C) Then
  loc_16B8C70:         Print 1, var_A0
  loc_16B8C78:         var_86 = 0
  loc_16B8C81:         var_88 = (var_88 + 1)
  loc_16B8C96:         Print 1, Chr(&HC)
  loc_16B8C9F:       End If
  loc_16B8CA5:       Me.MoveNext
  loc_16B8CBE:       If (Me.EOF = &HFF) Then
  loc_16B8CC1:         GoTo loc_16B8CCC
  loc_16B8CC4:         ' Referenced from: 16B82A9
  loc_16B8CC4:       End If
  loc_16B8CC7:     Next var_914 'Integer
  loc_16B8CCC:     ' Referenced from: 16B8CC1
  loc_16B8CCC:     GoTo loc_16B78A3
  loc_16B8CCF:   End If
  loc_16B8CCF: End If
  loc_16B8CD4: Print 1, var_A0
  loc_16B8CFA: var_14C = (Chr(&H12) + Chr(&HC))
  loc_16B8D00: Print 1, CVar(Me.Fields.Item("Day5"))
  loc_16B8D11: Close 1
  loc_16B8D1A: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_16B8D2A: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_16B8D35: Close 1
  loc_16B8D3F: If (MemVar_1F953BC = "Y") Then
  loc_16B8D5B:   var_9C = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_16B8D65: Else
  loc_16B8D7E:   var_9C = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_16B8D85: End If
  loc_16B8D85: Exit Sub
  loc_16B8D86: ' Referenced from: 16B7830
  loc_16B8D86: Proc_6_60_E63754()
  loc_16B8D8B: Exit Sub
End Sub

Public Sub Proc_54_40_F8A984(arg_C) 'F8A984
  'Data Table: 4B0890
  Dim var_90 As Recordset15
  loc_F8A82D: Set var_90 = arg_C 
  loc_F8A855: var_90.Fields.Append "mLine", &HC8, &HA
  loc_F8A881: var_90.Fields.Append "RoomNo", &HC8, 5
  loc_F8A8AD: var_90.Fields.Append "RoomCat", &HC8, &H19
  loc_F8A8BC: For var_A8 = 5 To &H1B: var_8A = var_A8 'Integer
  loc_F8A8F2:   var_90.Fields.Append "Day" & CStr(var_8A), &HC8, &HF
  loc_F8A904: Next var_A8 'Integer
  loc_F8A92D: var_90.Fields.Append "Mark", &HC8, 1
  loc_F8A93D: var_90.CursorType = 3
  loc_F8A94A: var_90.LockType = 3
  loc_F8A969: var_90.Open var_A4, var_C0, -1
  loc_F8A970: Set var_90 = Nothing 
  loc_F8A977: Set var_88 = arg_C 
  loc_F8A97B: Proc_54_40_F8A984 = -1
End Sub
