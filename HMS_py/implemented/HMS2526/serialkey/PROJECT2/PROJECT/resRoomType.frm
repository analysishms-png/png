VERSION 5.00
Begin VB.Form resRoomType
  Caption = "Room Category Wise Reservation Look Up"
  BackColor = &HE0E0E0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  Icon = "resRoomType.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11820
  ClientHeight = 7185
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
  Begin Frame FrCat
    Caption = "Parameter"
    BackColor = &HC0FFFF&
    Left = 0
    Top = 570
    Width = 13620
    Height = 660
    TabIndex = 20
    BorderStyle = 0 'None
    Begin CheckBox ChkCategory
      Caption = "Room Category"
      Index = 0
      BackColor = &H80000005&
      ForeColor = &H80000008&
      Left = 0
      Top = 0
      Width = 2715
      Height = 300
      TabIndex = 21
      Appearance = 0 'Flat
    End
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 6735
    Width = 11820
    Height = 450
    Visible = 0   'False
    TabIndex = 19
  End
  Begin Frame FrParameter
    Caption = "Parameter"
    BackColor = &HC0FFFF&
    Left = 15
    Top = 1245
    Width = 13620
    Height = 735
    TabIndex = 10
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 1
      ForeColor = &HC00000&
      Left = 3765
      Top = 210
      Width = 1230
      Height = 285
      TabIndex = 1
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
    Begin TextBox Txt
      Index = 0
      BackColor = &H8000000E&
      ForeColor = &HC00000&
      Left = 1410
      Top = 210
      Width = 1350
      Height = 285
      TabIndex = 0
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
    Begin BtnEnh Cmd
      Index = 1
      Left = 6285
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 13
    End
    Begin BtnEnh Cmd
      Index = 2
      Left = 7365
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 14
    End
    Begin BtnEnh Cmd
      Index = 4
      Left = 8445
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 15
    End
    Begin BtnEnh CmdExit
      Left = 9510
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 16
    End
    Begin BtnEnh Cmd
      Index = 0
      Left = 5220
      Top = 60
      Width = 1080
      Height = 645
      TabIndex = 17
    End
    Begin Label Label1
      Caption = "Status"
      Index = 0
      ForeColor = &HC00000&
      Left = 3105
      Top = 210
      Width = 585
      Height = 285
      TabIndex = 12
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
      Caption = "Start Date"
      Index = 1
      ForeColor = &HC00000&
      Left = 390
      Top = 210
      Width = 945
      Height = 240
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
  End
  Begin Frame FrmList
    Left = 4020
    Top = 1605
    Width = 1935
    Height = 1725
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 30
      Top = 45
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 9
    End
  End
  Begin Frame Frame2
    Caption = "Frame1"
    BackColor = &H0&
    Left = 0
    Top = 10380
    Width = 3480
    Height = 345
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    Begin CommandButton BtnPrint
      Caption = "&DosPrint"
      Index = 1
      BackColor = &HC0C0C0&
      Left = 2310
      Top = 15
      Width = 1155
      Height = 330
      TabIndex = 7
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
      BackColor = &HC0C0C0&
      Left = 0
      Top = 15
      Width = 1155
      Height = 330
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
      Style = 1
    End
    Begin CommandButton BtnPrint
      Caption = "&WinPrint"
      Index = 2
      BackColor = &HC0C0C0&
      Left = 1155
      Top = 15
      Width = 1155
      Height = 330
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
      Style = 1
    End
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 1125
    Top = 2205
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 3
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
    Top = 1980
    Width = 11820
    Height = 6270
    TabIndex = 2
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 18
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
End

Attribute VB_Name = "resRoomType"

Private global_56 As Integer
Private global_58 As Integer
Private global_60 As Variant
Private global_84 As Integer
Private global_96 As Double
Private global_88 As Integer
Private global_108 As Long

Private Sub Cmd_UnknownEvent_9 '1119A54
  'Data Table: 4AACFC
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_AC As Variant
  Dim var_E0 As Long
  Dim var_100 As Variant
  Dim var_8C As Variant
  Dim var_98 As String
  Dim var_94 As TextBox
  Dim var_BC As Variant
  loc_111970B: var_86 = KeyCode
  loc_1119714: If (var_86 = 0) Then
  loc_1119722:   Set var_8C = Me.Txt
  loc_1119728:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_1119751:   If (Proc_6_27_EA61EC(var_90, "Start Date") = 0) Then
  loc_1119754:     Exit Sub
  loc_1119755:   End If
  loc_1119763:   Set var_8C = Me.Txt
  loc_1119769:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_1119781:   Set var_94 = Me.Txt
  loc_1119787:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(1), var_9C)
  loc_1119796:   var_BC = Trim(CVar(var_9C))
  loc_11197A6:   var_CC = "RoomType"
  loc_11197BA:   Call Proc_55_35_18D88AC(CDate(var_90.Text), 1, var_CC)
  loc_11197DB: Else
  loc_11197E1:   If (var_86 = 1) Then
  loc_11197E4:     var_E0 = 1
  loc_11197F0:     var_100 = CVar(CLng(3)) 'Long
  loc_111981B:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_111981E:       Exit Sub
  loc_111981F:     End If
  loc_111982D:     Set var_90 = Me.Txt
  loc_1119833:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_94, var_CC, var_100)
  loc_111983B:     var_E0 = var_94.Text
  loc_1119840:     var_E0 = 2
  loc_111984C:     var_100 = CVar(CLng(3)) 'Long
  loc_1119884:     If (CDate(CStr(Me.FGrid.TextMatrix))) <> CDate(var_CC)) Then
  loc_11198A2:       var_AC = Me.FGrid.TextMatrix)
  loc_11198B9:       Set var_90 = Me.Txt
  loc_11198BF:       Call 0.Method_Cmd_UnknownEvent_90 (CInt(1), var_94, var_AC, CVar(CLng(3)), 2)
  loc_11198F6:       Call Proc_55_35_18D88AC(CDate(CStr(var_AC)), &HFF, "RoomType", CStr(Trim(CVar(var_94))))
  loc_1119914:     End If
  loc_1119917:   Else
  loc_111991D:     If (var_86 = 2) Then
  loc_1119920:       var_E0 = 1
  loc_111992C:       var_100 = CVar(CLng(&H20)) 'Long
  loc_1119957:       If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_111995A:         Exit Sub
  loc_111995B:       End If
  loc_111995B:       var_E0 = 2
  loc_1119967:       var_100 = CVar(CLng(&H20)) 'Long
  loc_1119976:       var_AC = Me.FGrid.TextMatrix)
  loc_111998D:       Set var_90 = Me.Txt
  loc_1119993:       Call 0.Method_Cmd_UnknownEvent_90 (CInt(1), var_94, var_AC, var_100, var_E0, var_100)
  loc_11199C1:       var_98 = CStr(var_AC)
  loc_11199CA:       Call Proc_55_35_18D88AC(CDate(var_98), 1, "RoomType", CStr(Trim(CVar(var_94))), var_E0)
  loc_11199EB:     Else
  loc_11199F1:       If (var_86 = 3) Then
  loc_1119A01:         Me.Global.Unload Me
  loc_1119A0C:       Else
  loc_1119A12:         If (var_86 = 4) Then
  loc_1119A20:           Call 0.Method_arg_50 (var_98, 1, var_100)
  loc_1119A3B:           If (InStr(var_E0, var_98, "23 Day Room Type Availability Forecast", 0) <> 0) Then
  loc_1119A43:             Call BTNPRINT_Click()
  loc_1119A4B:           Else
  loc_1119A4B:             Call TopCtrl1_UnknownEvent_14()
  loc_1119A50:           End If
  loc_1119A50:         End If
  loc_1119A50:       End If
  loc_1119A50:     End If
  loc_1119A50:   End If
  loc_1119A50: End If
  loc_1119A50: Exit Sub
End Sub

Private Sub Form_Load() 'F07B28
  'Data Table: 4AACFC
  Dim var_A8 As Variant
  Dim var_AC As TextBox
  loc_F07A40: On Error Goto loc_F07B21
  loc_F07A4A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_F07A62: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_F07A78: Me.FrCat.BackColor = CLng(MemVar_1F951B8)
  loc_F07A8E: Me.FrParameter.BackColor = CLng(MemVar_1F951B8)
  loc_F07AA9: Set var_A8 = Me.Txt
  loc_F07AAF: Call 0.Method_Form_Load0 (CInt(0), var_AC)
  loc_F07AB7: var_AC.Text = CStr(MemVar_1F950EC)
  loc_F07ADC: Proc_6_23_DFC5B8(Me, 0)
  loc_F07AE4: Call Proc_55_32_109DB70(0)
  loc_F07AF7: Set var_A8 = Me.Txt
  loc_F07AFD: Call 0.Method_Form_Load0 (CInt(1), var_AC)
  loc_F07B05: var_AC.Text = "All"
  loc_F07B11: Call Proc_55_34_11FC8D8()
  loc_F07B1B: Call Cmd_UnknownEvent_9()
  loc_F07B20: Exit Sub
  loc_F07B21: ' Referenced from: F07A40
  loc_F07B21: Proc_6_60_E63754(0)
  loc_F07B26: Exit Sub
End Sub

Private Sub Form_Resize() 'F81BD4
  'Data Table: 4AACFC
  Dim var_9C As Variant
  loc_F81A82: Call 0.Method_arg_100 (var_88)
  loc_F81A94: Me.FrCat.Width = var_88
  loc_F81AA2: Call 0.Method_arg_100 (var_88)
  loc_F81AB9: Me.FGrid.Width = CVar(var_88)
  loc_F81AD9: Call 0.Method_arg_108 (var_88)
  loc_F81AE5: var_9C = CVar((var_88 - Me.FrParameter.Height)) 'Single
  loc_F81AF4: Me.FGrid.Height = CVar(var_88)
  loc_F81B24: Me.FGrid.Left = CVar(Me.FrParameter.Left)
  loc_F81B4F: var_88 = Me.FrParameter.Top
  loc_F81B5B: var_9C = CVar((var_88 + Me.FrParameter.Height)) 'Single
  loc_F81B6A: Me.FGrid.Top = CVar(Me.FrParameter.Left)
  loc_F81B7E: Call 0.Method_arg_50 (var_BC)
  loc_F81B90: Me.LblFormCaption.Caption = var_BC
  loc_F81BA9: Me.LblFormCaption.Left = CDbl(0)
  loc_F81BB7: Call 0.Method_arg_100 (var_88)
  loc_F81BC9: Me.LblFormCaption.Width = var_88
  loc_F81BD1: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E11D0C
  'Data Table: 4AACFC
  loc_E11D03: Set global_92 = Nothing
  loc_E11D0A: Exit Sub
End Sub

Private Sub Form_Activate() 'E17B00
  'Data Table: 4AACFC
  loc_E17AEC: Set var_88 = Me.FGrid
  loc_E17AFD: Exit Sub
End Sub

Private Sub Form_Deactivate() 'DFCB9C
  'Data Table: 4AACFC
  loc_DFCB98: Exit Sub
  loc_DFCB99: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A0E4
  'Data Table: 4AACFC
  loc_E2A0BC: On Error Goto loc_E2A0DC
  loc_E2A0D3: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2A0DB: Exit Sub
  loc_E2A0DC: ' Referenced from: E2A0BC
  loc_E2A0DC: Proc_6_60_E63754(Shift)
  loc_E2A0E1: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F08E98
  'Data Table: 4AACFC
  Dim var_88 As MSHFlexGrid
  Dim var_8C As MSHFlexGrid
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_F08DCE: Set var_88 = Me.TxtGrid
  loc_F08DD4: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_F08DE2: Proc_6_74_E23240(var_8C)
  loc_F08DFA: If (Index = 0) Then
  loc_F08E4F:   Set var_108 = Me.TxtGrid
  loc_F08E55:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)), CVar(CLng(Me.FGrid.Col)))
  loc_F08E5D:   var_10C.Tag = CVar(CLng(Me.FGrid.Row))
  loc_F08E8E:   var_114 = CLng(Me.FGrid.Col)
  loc_F08E97: End If
  loc_F08E97: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'EFF61C
  'Data Table: 4AACFC
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_EFF554: If (KeyCode = 0) Then
  loc_EFF561:   If (CLng(Shift) = &H1B) Then
  loc_EFF571:     Set var_8C = Me.TxtGrid
  loc_EFF577:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_EFF591:     Set var_98 = Me.TxtGrid
  loc_EFF597:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_EFF59F:     var_9C.Text = var_90.Tag
  loc_EFF5BB:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_EFF5C4:     Set var_8C = Me.FGrid
  loc_EFF5E1:     Set var_8C = Me.TxtGrid
  loc_EFF5E7:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_EFF5EF:     var_90.Visible = FGrid.DispID_8001
  loc_EFF5FB:     Exit Sub
  loc_EFF5FC:   End If
  loc_EFF60F:   var_B0 = CLng(Me.FGrid.Col)
  loc_EFF618: End If
  loc_EFF618: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E537FC
  'Data Table: 4AACFC
  Dim var_A0 As Long
  loc_E537CB: Proc_6_58_E06050(arg_10)
  loc_E537DC: If (KeyAscii = 0) Then
  loc_E537F2:   var_A0 = CLng(Me.FGrid.Col)
  loc_E537FB: End If
  loc_E537FB: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E5518C
  'Data Table: 4AACFC
  Dim var_A0 As Long
  loc_E55154: On Error Goto loc_E55183
  loc_E55163: If (KeyCode = 0) Then
  loc_E55179:   var_A0 = CLng(Me.FGrid.Col)
  loc_E55182: End If
  loc_E55182: Exit Sub
  loc_E55183: ' Referenced from: E55154
  loc_E55183: Proc_6_60_E63754(var_A0)
  loc_E55188: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E22EF8
  'Data Table: 4AACFC
  Dim arg_10 As Integer
  loc_E22EE0: If (Cancel = 0) Then
  loc_E22EE9:   Call Proc_55_39_E5534C(Cancel, var_88)
  loc_E22EF2:   arg_10 = Not(var_88)
  loc_E22EF5: End If
  loc_E22EF5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5D9B4
  'Data Table: 4AACFC
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5D983: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5D996: Set var_A8 = Me.TxtGrid
  loc_E5D99C: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5D9A4: var_AC.Visible = False
  loc_E5D9B0: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E68FD0
  'Data Table: 4AACFC
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E68F8C: Set var_88 = Me.TxtGrid
  loc_E68F92: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E68FAC: If (var_8C.Visible = 0) Then
  loc_E68FC5:   Me.FGrid.BackColorSel = CVar(CLng(global_52))
  loc_E68FCD: End If
  loc_E68FCD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 '13D5AA0
  'Data Table: 4AACFC
  Dim var_C4 As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_90 As Variant
  Dim var_140 As Variant
  Dim var_94 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_D8 As Variant
  Dim var_D4 As Variant
  Dim var_DC As MSHFlexGrid
  Dim var_FC As Variant
  Dim var_1E0 As Variant
  Dim var_244 As Variant
  Dim var_130 As String
  Dim var_15C As String
  Dim var_1CC As Variant
  Dim var_284 As Variant
  Dim unk_4AAD11 As Connection15
  Dim var_88 As Recordset15
  Dim var_150 As Variant
  Dim var_11C As Variant
  Dim var_254 As Variant
  Dim var_2AC As Fields15
  Dim var_2A8 As Variant
  loc_13D5137: Set var_90 = Me.Txt
  loc_13D513D: Call 0.Method_FGrid_UnknownEvent_90 (CInt(1))
  loc_13D5169: Set var_D8 = Me.Txt
  loc_13D516F: Call 0.Method_FGrid_UnknownEvent_90 (CInt(1), var_DC)
  loc_13D51A8: If CBool((Trim(CVar(var_94)) = "All") Or (Trim(CVar(var_DC)) = vbNullString)) Then
  loc_13D51BE:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13D51C6:   var_140 = CVar(CLng(2)) 'Long
  loc_13D51CF:   Set var_94 = Me.FGrid
  loc_13D51D5:   var_B4 = var_94.TextMatrix)
  loc_13D521D:   Proc_6_7_F26918(var_11C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(Me.FGrid.Col)), 2)
  loc_13D525E:   Proc_6_7_F26918(var_254, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(Me.FGrid.Col)), 2)
  loc_13D5277:   var_130 = "Select B.ArrDate,B.DepDate,B.GuestName,B.ResStatus From ((ViewBooking as B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId ) Where B.LOGSITE_CODE='" & MemVar_1F95078
  loc_13D529F:   var_1CC = CVar(var_130 & "' AND B.RoomCat='" & CStr(var_B4) & "' And (B.RoomType='RO' or B.RoomType is Null) And ") & var_11C & " >= B.ArrDate And " 
  loc_13D52BD:   unk_4AAD11.Execute CStr(var_1CC & var_254 & " < B.DepDate AND B.Cancel='N' And RO.ChkInDate Is Null"), var_2A8, -1
  loc_13D52C8:   Set var_88 = var_2AC
  loc_13D530F: Else
  loc_13D531A:   Set var_90 = Me.Txt
  loc_13D5320:   Call 0.Method_FGrid_UnknownEvent_90 (CInt(1), var_94, var_2AC, var_B4)
  loc_13D5349:   If (Trim(CVar(var_94)) = "Confirm") Then
  loc_13D535F:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13D5370:     Set var_94 = Me.FGrid
  loc_13D5376:     var_B4 = var_94.TextMatrix)
  loc_13D53BE:     Proc_6_7_F26918(var_11C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(Me.FGrid.Col)), 2, var_B4)
  loc_13D53FF:     Proc_6_7_F26918(var_254, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(Me.FGrid.Col)), 2, CVar(CLng(2)))
  loc_13D5418:     var_130 = "Select B.ArrDate,B.DepDate,B.GuestName,B.ResStatus From ((ViewBooking as B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId ) Where B.LOGSITE_CODE='" & MemVar_1F95078
  loc_13D5440:     var_1CC = CVar(var_130 & "' AND B.RoomCat='" & CStr(var_B4) & "' And (B.RoomType='RO' or B.RoomType is Null) And ") & var_11C & " >= B.ArrDate And " 
  loc_13D5450:     var_284 = var_1CC & var_254 & " < B.DepDate AND B.Cancel='N' AND (B.ResStatus='Confirm' Or B.ResStatus='') And RO.ChkInDate Is Null" 
  loc_13D545E:     unk_4AAD11.Execute CStr(var_284), var_2A8, -1
  loc_13D5469:     Set var_88 = var_2AC
  loc_13D54B0:   Else
  loc_13D54BB:     Set var_90 = Me.Txt
  loc_13D54C1:     Call 0.Method_FGrid_UnknownEvent_90 (CInt(1), var_94, var_2AC, var_C4)
  loc_13D54EA:     If (Trim(CVar(var_94)) = "Tentative") Then
  loc_13D5500:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13D5511:       Set var_94 = Me.FGrid
  loc_13D5517:       var_B4 = var_94.TextMatrix)
  loc_13D555F:       Proc_6_7_F26918(var_11C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(Me.FGrid.Col)), 2, var_B4)
  loc_13D55A0:       Proc_6_7_F26918(var_254, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(Me.FGrid.Col)), 2, CVar(CLng(2)))
  loc_13D55B9:       var_130 = "Select B.ArrDate,B.DepDate,B.GuestName,B.ResStatus From ((ViewBooking as B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId ) Where B.LOGSITE_CODE='" & MemVar_1F95078
  loc_13D55E1:       var_1CC = CVar(var_130 & "' AND B.RoomCat='" & CStr(var_B4) & "' And (B.RoomType='RO' or B.RoomType is Null) And ") & var_11C & " >= B.ArrDate And " 
  loc_13D55FF:       unk_4AAD11.Execute CStr(var_1CC & var_254 & " < B.DepDate AND B.Cancel='N' AND B.ResStatus='Tentative' And RO.ChkInDate Is Null"), var_2A8, -1
  loc_13D560A:       Set var_88 = var_2AC
  loc_13D5651:     Else
  loc_13D565C:       Set var_90 = Me.Txt
  loc_13D5662:       Call 0.Method_FGrid_UnknownEvent_90 (CInt(1), var_94, var_2AC, var_C4)
  loc_13D568B:       If (Trim(CVar(var_94)) = "Waiting") Then
  loc_13D56A1:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13D56B8:         var_B4 = Me.FGrid.TextMatrix)
  loc_13D5700:         Proc_6_7_F26918(var_11C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(Me.FGrid.Col)), 2, var_B4)
  loc_13D5741:         Proc_6_7_F26918(var_254, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(Me.FGrid.Col)), 2, CVar(CLng(2)))
  loc_13D575A:         var_130 = "Select B.ArrDate,B.DepDate,B.GuestName,B.ResStatus From ((ViewBooking as B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId ) Where B.LOGSITE_CODE='" & MemVar_1F95078
  loc_13D5782:         var_1CC = CVar(var_130 & "' AND B.RoomCat='" & CStr(var_B4) & "' And (B.RoomType='RO' or B.RoomType is Null) And ") & var_11C & " >= B.ArrDate And " 
  loc_13D57A0:         unk_4AAD11.Execute CStr(var_1CC & var_254 & " < B.DepDate AND B.Cancel='N' AND B.ResStatus='Waiting' And RO.ChkInDate Is Null"), var_2A8, -1
  loc_13D57AB:         Set var_88 = var_2AC
  loc_13D57EF:         ' Referenced from:       13D5953
  loc_13D57EF:       End If
  loc_13D57EF:     End If
  loc_13D57EF:   End If
  loc_13D57EF: End If
  loc_13D57FE: If Not(var_88.EOF) Then
  loc_13D582C:   var_D8 = var_88.Fields
  loc_13D583C:   var_140 = CVar(var_8C) 'String
  loc_13D585E:   var_D4 = Format(CVar(var_88.Fields.Item("ArrDate")), "dd/MMM/yyyy")
  loc_13D5866:   var_EC = (1 + var_D4)
  loc_13D586F:   var_FC = (Me.FGrid.TextMatrix) + " ")
  loc_13D588B:   var_11C = CVar(var_D8.Item("DepDate")) 'Address
  loc_13D589A:   var_1CC = (1 + Format(var_11C, "dd/MMM/yyyy"))
  loc_13D58A3:   var_1E0 = (var_1CC + " ")
  loc_13D58D1:   var_244 = (Me.FGrid.Col + var_88.Fields.Item("GuestName").Value)
  loc_13D58DA:   var_254 = (CVar(CStr(Me.FGrid.TextMatrix))) + " ")
  loc_13D5908:   var_284 = (var_254 + var_88.Fields.Item("ResStatus").Value)
  loc_13D5911:   var_2A8 = (var_1CC & var_254 & " < B.DepDate AND B.Cancel='N' AND B.ResStatus='Waiting' And RO.ChkInDate Is Null" + vbCrLf)
  loc_13D5916:   var_8C = CStr(var_2A8)
  loc_13D594E:   var_88.MoveNext
  loc_13D5953:   GoTo loc_13D57EF
  loc_13D5956: End If
  loc_13D595E: If (var_8C <> vbNullString) Then
  loc_13D5974:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13D598B:   var_B4 = Me.FGrid.TextMatrix)
  loc_13D59BF:   unk_4AAD11.Execute "Select Name From RoomCat Where Code='" & CStr(var_B4) & "'", var_D4, -1
  loc_13D59EB:   var_C4 = "Name"
  loc_13D5A10:   var_15C = Proc_6_38_E69628(CVar(var_D8.Fields.Item(var_C4)), var_D8, var_B4, CVar(CLng(2)), var_C4, 1, CVar(CStr(Me.FGrid.TextMatrix))))
  loc_13D5A13:   var_10C = 2
  loc_13D5A2F:   var_150 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13D5A75:   MsgBox(var_8C, 0, CVar(var_15C & " on Date: " & CStr(Me.FGrid.TextMatrix))), CVar(CStr(Me.FGrid.TextMatrix))), var_11C)
  loc_13D5A9D: End If
  loc_13D5A9D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '103CE3C
  'Data Table: 4AACFC
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_EC As Long
  loc_103CBF0: Set var_88 = Me.TopCtrl1
  loc_103CBF6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_103CC3B: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_103CC44:   Call Form_KeyDown(Cancel, arg_10)
  loc_103CC49: End If
  loc_103CC4D: Set var_88 = Me.TopCtrl1
  loc_103CC53: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_103CC6C: If (CStr() = "Browse") Then
  loc_103CC6F:   Exit Sub
  loc_103CC70: End If
  loc_103CCE4: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_103CCFD:   Me.FGrid.CellBackColor = CVar(CLng(global_52))
  loc_103CD0D:   var_9C = "+{Tab}"
  loc_103CD13:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_103CD1D:   Cancel = 0
  loc_103CD23: Else
  loc_103CD2D:   var_B0 = Me.FGrid.Rows
  loc_103CD7A:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_103CD93:     Me.FGrid.CellBackColor = CVar(CLng(global_52))
  loc_103CDA9:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_103CDB3:     Cancel = 0
  loc_103CDB6:   End If
  loc_103CDB6: End If
  loc_103CDBC: global_56 = Cancel
  loc_103CDE2: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_103CE06: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_103CE1C:   var_EC = CLng(Me.FGrid.Col)
  loc_103CE25: End If
  loc_103CE2B: If (Cancel = &HD) Then
  loc_103CE33:   global_58 = 0
  loc_103CE36: End If
  loc_103CE38: Cancel = 0
  loc_103CE3B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E116E0
  'Data Table: 4AACFC
  loc_E116D1: Call FGrid_UnknownEvent_C()
  loc_E116DB: global_58 = 0
  loc_E116DE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'E4BCD8
  'Data Table: 4AACFC
  loc_E4BCCE: If (CLng(Cancel) = &HD) Then
  loc_E4BCD1:   Call Proc_55_38_118E754(CLng(Me.FGrid.Col))
  loc_E4BCD6: End If
  loc_E4BCD6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E33064
  'Data Table: 4AACFC
  Dim var_8C As TextBox
  loc_E33047: Set var_88 = Me.TxtGrid
  loc_E3304D: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E33055: var_8C.Visible = False
  loc_E33061: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1385938
  'Data Table: 4AACFC
  Dim var_D4 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  Dim var_13C As Variant
  Dim var_140 As String
  Dim var_E4 As Variant
  Dim var_1A8 As String
  Dim var_200 As String
  Dim var_210 As Variant
  Dim var_214 As String
  Dim unk_4AAD11 As Connection15
  Dim var_88 As Recordset15
  Dim var_23E As Integer
  loc_13850D8: On Error Goto loc_1385910
  loc_13850E6: Set var_A0 = Me.Txt
  loc_13850EC: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1))
  loc_13850FB: var_C4 = Trim(CVar(var_A4))
  loc_1385118: Set var_E8 = Me.Txt
  loc_138511E: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1), var_EC)
  loc_138513F: var_13C = (var_C4 = "All") Or (Trim(CVar(var_EC)) = vbNullString)
  loc_1385157: If CBool(var_13C) Then
  loc_138516E:   var_140 = "Select B.ArrDate,B.DepDate,RC.Name RoomCategory,B.ResStatus,B.Adult,B.GuestName,B.RoomNo From (((ViewBooking as B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId) Left Join RoomCat RC on RC.Code=B.RoomCat And RC.Type='RO') Where B.LOGSITE_CODE='" & MemVar_1F95078
  loc_1385183:   Set var_A0 = Me.Txt
  loc_1385189:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_A4, CVar(var_140 & "' And (B.RoomType='RO' or B.RoomType is Null) And (B.ArrDate Between "), var_234)
  loc_1385198:   Proc_6_7_F26918(var_C4, CVar(var_A4), -1)
  loc_13851B8:   Set var_E8 = Me.Txt
  loc_13851BE:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_EC)
  loc_13851CD:   Proc_6_7_F26918(var_13C, CVar(var_EC))
  loc_13851D9:   var_11C = ") Or DateAdd(d,-1,B.DepDate) Between "
  loc_13851ED:   Set var_164 = Me.Txt
  loc_13851F3:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_168)
  loc_1385202:   Proc_6_7_F26918(var_188, CVar(var_168))
  loc_1385222:   Set var_1BC = Me.Txt
  loc_1385228:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_1C0)
  loc_1385237:   Proc_6_7_F26918(var_1E0, CVar(var_1C0))
  loc_1385248:   var_210 = var_238 & var_C4 & " And DateAdd(d,29," & var_13C & vbNullString & var_188 & " And DateAdd(d,29," & var_1E0 & ")) AND B.Cancel='N' And RO.ChkInDate Is Null Order By B.ArrDate,B.DepDate" 
  loc_1385256:   unk_4AAD11.Execute CStr(var_210), var_A4, 
  loc_1385261:   Set var_88 = var_238
  loc_13852A2: Else
  loc_13852AD:   Set var_A0 = Me.Txt
  loc_13852B3:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1))
  loc_13852C2:   var_C4 = Trim(CVar(var_A4))
  loc_13852DC:   If (var_C4 = "Confirm") Then
  loc_13852F3:     var_140 = "Select B.ArrDate,B.DepDate,RC.Name RoomCategory,B.ResStatus,B.Adult,B.GuestName,B.RoomNo From (((ViewBooking as B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId) Left Join RoomCat RC on RC.Code=B.RoomCat And RC.Type='RO') Where B.LOGSITE_CODE='" & MemVar_1F95078
  loc_1385308:     Set var_A0 = Me.Txt
  loc_138530E:     Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_A4, CVar(var_140 & "' And (B.RoomType='RO' or B.RoomType is Null) And (B.ArrDate Between "), var_234)
  loc_138531D:     Proc_6_7_F26918(var_C4, CVar(var_A4), -1)
  loc_138533D:     Set var_E8 = Me.Txt
  loc_1385343:     Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_EC)
  loc_1385352:     Proc_6_7_F26918(var_13C, CVar(var_EC))
  loc_138535E:     var_11C = ") Or DateAdd(d,-1,B.DepDate) Between "
  loc_1385372:     Set var_164 = Me.Txt
  loc_1385378:     Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_168)
  loc_1385387:     Proc_6_7_F26918(var_188, CVar(var_168))
  loc_13853A7:     Set var_1BC = Me.Txt
  loc_13853AD:     Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_1C0)
  loc_13853BC:     Proc_6_7_F26918(var_1E0, CVar(var_1C0))
  loc_13853C8:     var_200 = ")) AND B.Cancel='N' AND (B.ResStatus='Confirm' Or B.ResStatus='') And RO.ChkInDate Is Null Order By B.ArrDate,B.DepDate"
  loc_13853D1:     var_214 = CStr(var_238 & var_C4 & " And DateAdd(d,29," & var_13C & vbNullString & var_188 & " And DateAdd(d,29," & var_1E0 & var_200)
  loc_13853DB:     unk_4AAD11.Execute var_214, var_A4, 
  loc_13853E6:     Set var_88 = var_238
  loc_1385427:   Else
  loc_1385432:     Set var_A0 = Me.Txt
  loc_1385438:     Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1))
  loc_1385447:     var_C4 = Trim(CVar(var_A4))
  loc_1385461:     If (var_C4 = "Tentative") Then
  loc_1385478:       var_140 = "Select B.ArrDate,B.DepDate,RC.Name RoomCategory,B.ResStatus,B.Adult,B.GuestName,B.RoomNo From (((ViewBooking as B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId) Left Join RoomCat RC on RC.Code=B.RoomCat And RC.Type='RO') Where B.LOGSITE_CODE='" & MemVar_1F95078
  loc_138548D:       Set var_A0 = Me.Txt
  loc_1385493:       Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_A4, CVar(var_140 & "' And (B.RoomType='RO' or B.RoomType is Null) And (B.ArrDate Between "), var_234)
  loc_13854A2:       Proc_6_7_F26918(var_C4, CVar(var_A4), -1)
  loc_13854C2:       Set var_E8 = Me.Txt
  loc_13854C8:       Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_EC)
  loc_13854D7:       Proc_6_7_F26918(var_13C, CVar(var_EC))
  loc_13854E3:       var_11C = ") Or DateAdd(d,-1,B.DepDate) Between "
  loc_13854F7:       Set var_164 = Me.Txt
  loc_13854FD:       Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_168)
  loc_138550C:       Proc_6_7_F26918(var_188, CVar(var_168))
  loc_138552C:       Set var_1BC = Me.Txt
  loc_1385532:       Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_1C0)
  loc_1385541:       Proc_6_7_F26918(var_1E0, CVar(var_1C0))
  loc_1385552:       var_210 = var_238 & var_C4 & " And DateAdd(d,29," & var_13C & vbNullString & var_188 & " And DateAdd(d,29," & var_1E0 & ")) AND B.Cancel='N' AND B.ResStatus='Tentative' And RO.ChkInDate Is Null Order By B.ArrDate,B.DepDate" 
  loc_1385560:       unk_4AAD11.Execute CStr(var_210), var_A4, 
  loc_138556B:       Set var_88 = var_238
  loc_13855AC:     Else
  loc_13855B7:       Set var_A0 = Me.Txt
  loc_13855BD:       Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1))
  loc_13855CC:       var_C4 = Trim(CVar(var_A4))
  loc_13855E6:       If (var_C4 = "Waiting") Then
  loc_13855FD:         var_140 = "Select B.ArrDate,B.DepDate,RC.Name RoomCategory,B.ResStatus,B.Adult,B.GuestName,B.RoomNo From (((ViewBooking as B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId) Left Join RoomCat RC on RC.Code=B.RoomCat And RC.Type='RO') Where B.LOGSITE_CODE='" & MemVar_1F95078
  loc_1385604:         var_E4 = CVar(var_140 & "' And (B.RoomType='RO' or B.RoomType is Null) And (B.ArrDate Between ") 'String
  loc_1385612:         Set var_A0 = Me.Txt
  loc_1385618:         Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_A4, var_E4, var_234)
  loc_1385627:         Proc_6_7_F26918(var_C4, CVar(var_A4), -1)
  loc_138562F:         var_FC = var_238 & var_C4 
  loc_1385647:         Set var_E8 = Me.Txt
  loc_138564D:         Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_EC)
  loc_138565C:         Proc_6_7_F26918(var_13C, CVar(var_EC))
  loc_1385668:         var_11C = ") Or DateAdd(d,-1,B.DepDate) Between "
  loc_138567C:         Set var_164 = Me.Txt
  loc_1385682:         Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_168)
  loc_1385691:         Proc_6_7_F26918(var_188, CVar(var_168))
  loc_138569D:         var_1A8 = " And DateAdd(d,29,"
  loc_13856B1:         Set var_1BC = Me.Txt
  loc_13856B7:         Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_1C0)
  loc_13856C6:         Proc_6_7_F26918(var_1E0, CVar(var_1C0))
  loc_13856D7:         var_210 = var_FC & " And DateAdd(d,29," & var_13C & vbNullString & var_188 & var_1A8 & var_1E0 & ")) AND B.Cancel='N' AND B.ResStatus='Waiting' And RO.ChkInDate Is Null Order By B.ArrDate,B.DepDate" 
  loc_13856E5:         unk_4AAD11.Execute CStr(var_210), var_A4, 
  loc_13856F0:         Set var_88 = var_238
  loc_138572E:       End If
  loc_138572E:     End If
  loc_138572E:   End If
  loc_138572E: End If
  loc_1385734: var_23C = var_88.RecordCount
  loc_1385742: If (var_23C = 0) Then
  loc_138575E:   MsgBox("No Record Present For Printing", 0, var_C4, var_E4, var_FC)
  loc_138576E:   Exit Sub
  loc_138576F: End If
  loc_1385785: Set var_A0 = var_88 
  loc_1385791: var_23E = CreateFieldDefFile(var_A0, MemVar_1F950B4 & "\RoomReservationDetail.ttx")
  loc_138579B: Set var_88 = var_A0
  loc_13857A1: var_D4 = CVar(var_23E) 'Integer
  loc_13857A4: var_98 = var_D4 'Variant
  loc_13857C0: var_140 = MemVar_1F950B4 & "\RoomReservationDetail.RPT"
  loc_13857C9: Call 0.Method_arg_1C (var_140, var_D4, var_A0)
  loc_13857D4: MemVar_1F951E8 = var_A0
  loc_13857EF: Call 0.Method_arg_90 (var_A0, var_23C, var_9A)
  loc_13857F7: Call 0.Method_arg_24 (1, var_23E)
  loc_1385803: For var_242 =  To CInt(var_23C): &HFF = var_242 'Integer
  loc_138581C:   Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_1385824:   Call 0.Method_arg_20 (var_A4)
  loc_138582C:   Call 0.Method_arg_30 (var_140)
  loc_1385872:   If (Ucase(CVar(var_140)) = Ucase("Title")) Then
  loc_1385888:     Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_1385890:     Call 0.Method_arg_20 (var_A4)
  loc_1385898:     Call 0.Method_arg_38 ("'Room Reservation Detail'")
  loc_13858A4:   End If
  loc_13858A7: Next var_242 'Integer
  loc_13858C5: Call 0.Method_arg_64 (var_A0, CVar(var_88))
  loc_13858CD: Call 0.Method_arg_2C (vbNullString)
  loc_13858DB: Call 0.Method_arg_150 (var_1A8)
  loc_13858E6: Call 0.Method_arg_50 (var_140)
  loc_13858FF: Proc_183_10_1499E94(MemVar_1F951E8, 0)
  loc_138590C: Set var_88 = Nothing
  loc_138590F: Exit Sub
  loc_1385910: ' Referenced from: 13850D8
  loc_1385916: Call 0.Method_arg_50 (var_140, var_140)
  loc_138592B: Proc_183_57_104B0BC(var_140, "TopCtrl1_ePrn")
  loc_1385937: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'F873D8
  'Data Table: 4AACFC
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_F0 As TextBox
  loc_F8729E: Set var_88 = Me.Txt
  loc_F872A4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_F872B2: Proc_6_74_E23240(var_8C)
  loc_F872C1: var_92 = Index
  loc_F872CC: If (var_92 = CInt(1)) Then
  loc_F872DC:   ReDim var_98(0 To 3)
  loc_F872F3:   var_98(0) = "All"
  loc_F87302:   var_98(1) = "Confirm"
  loc_F87311:   var_98(2) = "Tentative"
  loc_F87320:   var_98(3) = "Waiting"
  loc_F87342:   Set var_F0 = Me.ListView
  loc_F8735D:   Set var_8C = Me.Txt
  loc_F87377:   Set global_76 = Proc_6_66_F0048C(var_F0, var_8C, Index, Array(var_98))
  loc_F87395:   Set var_88 = Me.Txt
  loc_F8739B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_F8, 4)
  loc_F873A3:   global_60 = var_8C.Text
  loc_F873B5:   Set var_90 = Me.Txt
  loc_F873BB:   Call 0.Method_Txt_GotFocus0 (Index, var_F0, var_F8)
  loc_F873C3:   var_F0.Tag = var_92
  loc_F873D6: End If
  loc_F873D6: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FCA58C
  'Data Table: 4AACFC
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_A8 As TextBox
  Dim var_B4 As TextBox
  loc_FCA402: If (CLng(Shift) = &H1B) Then
  loc_FCA405:   Exit Sub
  loc_FCA406: End If
  loc_FCA409: var_86 = KeyCode
  loc_FCA414: If (var_86 = CInt(0)) Then
  loc_FCA41D:   If (Shift = &HD) Then
  loc_FCA428:     Call Txt_Validate(KeyCode)
  loc_FCA438:     Set var_8C = Me.Txt
  loc_FCA43E:     Call 0.Method_Txt_KeyDown0 (CInt(1), var_90)
  loc_FCA446:     var_90.SetFocus
  loc_FCA452:   End If
  loc_FCA455: Else
  loc_FCA45D:   If (var_86 = CInt(1)) Then
  loc_FCA482:     Set var_8C = Me.Txt
  loc_FCA488:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_94)
  loc_FCA490:     0 = var_90.Left
  loc_FCA4A2:     Set var_98 = Me.Txt
  loc_FCA4A8:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_FCA4C2:     Set var_A4 = Me.Txt
  loc_FCA4C8:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_FCA4E2:     Set var_B0 = Me.Txt
  loc_FCA4E8:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4)
  loc_FCA538:     Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_FCA562:     If (Shift = &HD) Then
  loc_FCA56E:       Set var_8C = Me.Cmd
  loc_FCA574:       Call 0.Method_Txt_KeyDown0 (0, var_90, CInt(var_94), CInt((var_9C.Top + var_A8.Height)))
  loc_FCA57C:       Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_8001(CInt(var_B4.Width))
  loc_FCA58B:     End If
  loc_FCA58B:   End If
  loc_FCA58B: End If
  loc_FCA58B: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E3F97C
  'Data Table: 4AACFC
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_E3F94C: On Error Goto loc_E3F973
  loc_E3F952: Proc_6_58_E06050(arg_10)
  loc_E3F95D: Proc_6_133_E7FB08(var_94)
  loc_E3F966: arg_10 = CInt(var_94)
  loc_E3F96F: var_96 = KeyAscii
  loc_E3F972: Exit Sub
  loc_E3F973: ' Referenced from: E3F94C
  loc_E3F973: Proc_6_60_E63754(var_96, arg_10)
  loc_E3F978: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E89818
  'Data Table: 4AACFC
  loc_E897BA: If (KeyCode = CInt(1)) Then
  loc_E897D8:   If (Me.FrmList.Visible = &HFF) Then
  loc_E89807:     Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode)
  loc_E89817:   End If
  loc_E89817: End If
  loc_E89817: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4BC6C
  'Data Table: 4AACFC
  loc_E4BC4A: Set var_88 = Me.Txt
  loc_E4BC50: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4BC5E: Proc_6_73_E23294(var_8C)
  loc_E4BC6A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '102A3A4
  'Data Table: 4AACFC
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_94 As String
  Dim var_F0 As TextBox
  Dim arg_10 As Integer
  Dim var_8C As ListView
  Dim var_EC As TextBox
  loc_102A17C: On Error Goto loc_102A39B
  loc_102A182: var_86 = Cancel
  loc_102A18D: If (var_86 = CInt(0)) Then
  loc_102A19D:   Set var_8C = Me.Txt
  loc_102A1A3:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_102A1DB:   If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_102A1F0:     Set var_8C = Me.Txt
  loc_102A1F6:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_102A1FE:     var_90.Text = CStr(MemVar_1F950EC)
  loc_102A210:   Else
  loc_102A21A:     Set var_8C = Me.Txt
  loc_102A220:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_102A240:     Set var_EC = Me.Txt
  loc_102A246:     Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_102A24E:     var_F0.Text = Proc_6_33_15125B8(var_90)
  loc_102A261:   End If
  loc_102A26E:   Set var_8C = Me.Txt
  loc_102A274:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_102A27C:   var_94 = var_90.Text
  loc_102A294:   If (CDate(var_94) < MemVar_1F950EC) Then
  loc_102A2A1:     Set var_8C = Me.Txt
  loc_102A2A7:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_102A2AF:     var_90.SetFocus
  loc_102A2BD:     arg_10 = &HFF
  loc_102A2C0:     Exit Sub
  loc_102A2C1:   End If
  loc_102A2C4: Else
  loc_102A2CC:   If (var_86 = CInt(1)) Then
  loc_102A2DC:     Set var_8C = Me.Txt
  loc_102A2E2:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_102A2EA:     arg_10 = var_90.Text
  loc_102A301:     If (var_94 <> vbNullString) Then
  loc_102A31C:       Set var_90 = Me.ListView.SelectedItem
  loc_102A334:       Set var_E8 = Me.Txt
  loc_102A33A:       Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_102A342:       var_EC.Text = var_90.Text
  loc_102A358:     End If
  loc_102A362:     Set var_8C = Me.Txt
  loc_102A368:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_102A391:     If (Trim(CVar(var_90)) = vbNullString) Then
  loc_102A396:       arg_10 = &HFF
  loc_102A399:       Exit Sub
  loc_102A39A:     End If
  loc_102A39A:   End If
  loc_102A39A: End If
  loc_102A39A: Exit Sub
  loc_102A39B: ' Referenced from: 102A17C
  loc_102A39B: Proc_6_60_E63754(arg_10)
  loc_102A3A0: Exit Sub
End Sub

Private Sub BTNPRINT_Click(Index As Integer) '13FA80C
  'Data Table: 4AACFC
  Dim unk_4AAD11 As Connection15
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
  loc_13F9E28: On Error Goto loc_13FA805
  loc_13F9E30: global_84 = &HFF
  loc_13F9E49: unk_4AAD11.Execute "Select * From FAEnviro", var_B8, -1
  loc_13F9E54: Set var_94 = var_BC
  loc_13F9E6C: var_BC = var_94.Fields
  loc_13F9ED0: var_13C = IIf((Proc_6_38_E69628(CVar(var_BC.Item("daterfill")), var_BC) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("daterfill")))))
  loc_13F9ED9: MemVar_1F953C4 = CStr(var_13C)
  loc_13F9F6D: var_13C = IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("pagenofill")), MemVar_1F953C4) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("pagenofill")))))
  loc_13F9F76: MemVar_1F953C8 = CStr(var_13C)
  loc_13FA00A: var_13C = IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("titlerfill")), MemVar_1F953C8) = vbNullString), "M", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("titlerfill")))))
  loc_13FA04B: var_C0 = var_94.Fields.Item("linefiller")
  loc_13FA062: var_D8 = "linefiller"
  loc_13FA06E: var_C8 = var_94.Fields
  loc_13FA076: var_DC = var_C8.Item(var_D8)
  loc_13FA08A: var_10C = "-"
  loc_13FA0A0: var_FC = (Proc_6_38_E69628(CVar(var_C0), CStr(var_13C)) = vbNullString)
  loc_13FA0B0: MemVar_1F953D0 = CStr(IIf(var_FC, "M", CVar(Proc_6_38_E69628(CVar(var_DC)))))
  loc_13FA0D7: global_104 = " 23 Day Room Type Availability Forecast (Report) "
  loc_13FA0DE: var_88 = "Day23RoomType"
  loc_13FA0E7: var_A8 = global_104
  loc_13FA0FE: global_80 = CStr(Ucase(var_A8))
  loc_13FA11A: If ((global_84 = 0) Or (var_88 = vbNullString)) Then
  loc_13FA11D:   Exit Sub
  loc_13FA11E: End If
  loc_13FA11E: Call Day23RoomType()
  loc_13FA14A: Set var_BC = global_92 
  loc_13FA151: CreateFieldDefFile(var_BC, MemVar_1F950B4 & "\" & var_88 & ".ttx", &HFF)
  loc_13FA183: var_C4 = "\" & var_88
  loc_13FA197: Call 0.Method_arg_1C (MemVar_1F950B4 & var_C4 & ".RPT", var_A8, var_BC)
  loc_13FA1A2: MemVar_1F951E8 = var_BC
  loc_13FA1CE: Call 0.Method_arg_64 (var_BC, CVar(var_BC), var_D8)
  loc_13FA1D6: Call 0.Method_arg_2C (var_FC, MemVar_1F953D0)
  loc_13FA1E4: Call 0.Method_arg_150 (global_84)
  loc_13FA1FA: Call 0.Method_arg_90 (var_BC, var_14C)
  loc_13FA202: Call 0.Method_arg_24 (var_8A)
  loc_13FA20E: For var_150 =  To CInt(var_14C): 1 = var_150 'Integer
  loc_13FA227:   Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FA22F:   Call 0.Method_arg_20 (var_C0)
  loc_13FA237:   Call 0.Method_arg_30 (var_C4)
  loc_13FA24D:   var_160 = Ucase(CVar(var_C4)) 'Variant
  loc_13FA27D:   If (var_160 = Ucase("Title")) Then
  loc_13FA2A4:     Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FA2AC:     Call 0.Method_arg_20 (var_C0)
  loc_13FA2B4:     Call 0.Method_arg_38 ("'" & global_104 & "'")
  loc_13FA2CA:   Else
  loc_13FA2EC:     If (var_160 = Ucase("BetweenDate")) Then
  loc_13FA300:       Set var_BC = Me.Txt
  loc_13FA306:       Call 0.Method_BTNPRINT_Click0 (CInt(0), var_C0)
  loc_13FA331:       Call 0.Method_arg_90 (var_C8, CLng(var_8A))
  loc_13FA339:       Call 0.Method_arg_20 (var_DC)
  loc_13FA341:       Call 0.Method_arg_38 ("'From Date " & var_C0.Text & "'")
  loc_13FA35D:     Else
  loc_13FA37F:       If (var_160 = Ucase("Dater")) Then
  loc_13FA3A3:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FA3AB:         Call 0.Method_arg_20 (var_C0)
  loc_13FA3B3:         Call 0.Method_arg_38 ("'" & MemVar_1F953C4 & "'")
  loc_13FA3C9:       Else
  loc_13FA3EB:         If (var_160 = Ucase("Pager")) Then
  loc_13FA3F5:           var_C4 = "'" & MemVar_1F953C8
  loc_13FA40F:           Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FA417:           Call 0.Method_arg_20 (var_C0)
  loc_13FA41F:           Call 0.Method_arg_38 (var_C4 & "'")
  loc_13FA432:         End If
  loc_13FA432:       End If
  loc_13FA432:     End If
  loc_13FA432:   End If
  loc_13FA435: Next var_150 'Integer
  loc_13FA44B: Call 0.Method_arg_90 (var_BC, var_14C)
  loc_13FA453: Call 0.Method_arg_24 (var_8A)
  loc_13FA45F: For var_166 =  To CInt(var_14C): 1 = var_166 'Integer
  loc_13FA46C:   For var_16A = 1 To &H17: var_96 = var_16A 'Integer
  loc_13FA47D:     Set var_BC = Me.Txt
  loc_13FA483:     Call 0.Method_BTNPRINT_Click0 (CInt(0), var_C0)
  loc_13FA49D:     var_EC = DateAdd("d", CDbl((var_96 - 1)), CVar(var_C0))
  loc_13FA4AA:     global_96 = CDate(Ucase("Pager"))
  loc_13FA4CA:     Call 0.Method_arg_90 (var_BC, CLng(var_8A), var_C0)
  loc_13FA4D2:     Call 0.Method_arg_20 (var_C4, global_96)
  loc_13FA4DA:     Call 0.Method_arg_30 (1)
  loc_13FA4F0:     var_17C = Ucase(CVar(var_C4)) 'Variant
  loc_13FA527:     If (var_17C = Ucase(CVar("Day" & CStr(var_96)))) Then
  loc_13FA586:       Call 0.Method_arg_90 (var_BC, CLng(var_8A), var_C0)
  loc_13FA58E:       Call 0.Method_arg_20 (CStr(1 & Ucase(Format(global_96, "DDD")) & "'"), 1)
  loc_13FA596:       Call 0.Method_arg_38 ("'")
  loc_13FA5B5:     Else
  loc_13FA5DE:       If (var_17C = Ucase(CVar("Date" & CStr(var_96)))) Then
  loc_13FA5FE:         var_12C = CVar(CStr(Day(global_96))) 'String
  loc_13FA626:         var_11C = Space((2 - Len(CStr(Day(global_96)))))
  loc_13FA62E:         var_13C = (var_12C + Ucase(Format(global_96, "DDD")))
  loc_13FA664:         var_1CC = Space((2 - Len(CStr(Month(global_96)))))
  loc_13FA687:         var_20C = (var_1CC + CVar(CStr(Month(global_96))))
  loc_13FA6AC:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FA6B4:         Call 0.Method_arg_20 (var_C0)
  loc_13FA6BC:         Call 0.Method_arg_38 (CStr("'" & 1 & Ucase(Format(global_96, "DDD")) & "'" & vbNullString & var_20C & "'"))
  loc_13FA6F8:       End If
  loc_13FA6F8:     End If
  loc_13FA6FB:   Next var_16A 'Integer
  loc_13FA703: Next var_166 'Integer
  loc_13FA70E: If (Index = 1) Then
  loc_13FA71E:   ReDim Preserve var_90(0 To 1)
  loc_13FA739:   Set var_BC = Me.Txt
  loc_13FA73F:   Call 0.Method_BTNPRINT_Click0 (CInt(0), var_C0)
  loc_13FA762:   var_90(0) = vbNullString & var_C0.Text & vbNullString
  loc_13FA773: End If
  loc_13FA779: If (Index = 1) Then
  loc_13FA79D:   MsgBox("Please set 80 col. in your Printer & put it on.", &H40, "Paper Setting", Ucase(Format(global_96, "DDD")), var_12C)
  loc_13FA7AD:   Call Proc_55_37_16A22C4()
  loc_13FA7B5: Else
  loc_13FA7BA:   Set var_C0 = Nothing
  loc_13FA7D1:   Set var_BC = MemVar_1F951E8 
  loc_13FA7DD:   Proc_6_99_1484404(var_BC, Index, global_80)
  loc_13FA7E8:   MemVar_1F951E8 = var_BC
  loc_13FA7F3: End If
  loc_13FA7F8: global_88 = 0
  loc_13FA800: MemVar_1F951E8 = Nothing
  loc_13FA804: Exit Sub
  loc_13FA805: ' Referenced from: 13F9E28
  loc_13FA805: Proc_6_60_E63754(global_88, &HFF)
  loc_13FA80A: Exit Sub
End Sub

Private Sub ChkCategory_Click() 'DFFBEC
  'Data Table: 4AACFC
  loc_DFFBE4: Call Proc_55_33_F9D9F0()
  loc_DFFBE9: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E17AB4
  'Data Table: 4AACFC
  loc_E17AA9: Me.Global.Unload Me
  loc_E17AB1: Exit Sub
  loc_E17AB2: Set var_7B8C = 
End Sub

Public Sub Day23RoomType() '12865B0
  'Data Table: 4AACFC
  Dim var_D0 As Variant
  Dim var_98 As String
  Dim var_90 As Variant
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_8A As Integer
  Dim var_BC As Variant
  Dim var_EC As Recordset15
  Dim var_AC As Variant
  Dim var_E4 As Variant
  Dim var_12C As Variant
  Dim var_144 As Recordset15
  Dim var_14C As Recordset15
  Dim var_16C As Double
  Dim Me As Variant
  loc_1285FFC: On Error Goto loc_12865A0
  loc_1286019: Call Proc_55_36_F6572C(New)
  loc_1286024: Set global_92 = var_90
  loc_1286031: var_D0 = 0
  loc_1286055: var_98 = "Select Sum(NoRooms) As tNoRooms From RoomCat Where Type='RO' And LOGSITE_CODE='" & MemVar_1F95078 & "' AND InclCount='Y' And Code In "
  loc_1286068: Me.Connection15.Execute var_98 & global_112, var_BC, -1
  loc_1286070: var_90 = var_90.Fields
  loc_1286078: var_D0 = var_C0.Item(var_C0)
  loc_1286080: var_D4 = var_D4.Value
  loc_1286089: var_8A = CInt(var_E4)
  loc_12860CA: For var_E8 = 3 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_E8 'Integer
  loc_12860D6:   If (var_86 = 3) Then
  loc_12860D9:     GoTo loc_1286263
  loc_12860DC:   End If
  loc_12860E2:   Set var_EC = global_92 
  loc_12860F1:   var_EC.AddNew var_AC, var_D0
  loc_128611B:   var_EC.Fields.Item("mLine").Value = vbNullString
  loc_1286178:   var_EC.Fields.Item("RoomType").Value = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(1)), CVar(CLng(var_86)), 3))
  loc_1286196:   For var_130 = 3 To &H19: var_88 = var_130 'Integer
  loc_12861F8:     var_EC.Fields.Item(CVar("Day" & CStr(var_88))).Value = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(var_88)), CVar(CLng(var_86)), 3))
  loc_1286217:   Next var_130 'Integer
  loc_128621C:   var_D0 = "*"
  loc_1286225:   var_AC = "Mark"
  loc_1286241:   var_EC.Fields.Item(var_AC).Value = var_D0
  loc_1286258:   var_EC.Update var_AC, var_D0
  loc_128625F:   Set var_EC = Nothing 
  loc_1286263:   ' Referenced from: 12860D9
  loc_1286266: Next var_E8 'Integer
  loc_1286271: Set var_144 = global_92 
  loc_1286290: var_144.Update var_AC, var_D0
  loc_12862A0: r_AC, var_D0 var_AC, var_D0
  loc_12862CA: var_144.Fields.Item("mLine").Value = "GF"
  loc_12862FB: var_144.Fields.Item("RoomType").Value = "AVAILABLE"
  loc_128630E: For var_148 = 3 To &H19: var_88 = var_148 'Integer
  loc_1286314:   var_AC = 3
  loc_1286370:   var_144.Fields.Item(CVar("Day" & CStr(var_88))).Value = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(var_88))))
  loc_128638F: Next var_148 'Integer
  loc_1286394: var_D0 = vbNullString
  loc_128639D: var_AC = "Mark"
  loc_12863B9: var_144.Fields.Item(var_AC).Value = var_D0
  loc_12863D0: var_144.Update var_AC, var_D0
  loc_12863D7: Set var_144 = Nothing 
  loc_12863E1: Set var_14C = global_92 
  loc_1286400: var_14C.Update var_AC, var_D0
  loc_1286410: r_AC, var_D0 var_AC, var_D0
  loc_128643A: var_14C.Fields.Item("mLine").Value = "GF"
  loc_128646B: var_14C.Fields.Item("RoomType").Value = "OCCUPIED"
  loc_128647E: For var_150 = 3 To &H19: var_88 = var_150 'Integer
  loc_128649D:   var_AC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_12864C8:   var_16C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_12864D3:   var_12C = CVar((CDbl(var_8A) - var_16C)) 'Double
  loc_1286509:   var_14C.Fields.Item(CVar("Day" & CStr(var_88))).Value = CVar(Proc_6_38_E69628(CVar("Day" & CStr(var_88)), var_16C, CVar(CLng(var_88))))
  loc_1286530: Next var_150 'Integer
  loc_1286535: var_D0 = vbNullString
  loc_128653E: var_AC = "Mark"
  loc_128655A: var_14C.Fields.Item(var_AC).Value = var_D0
  loc_1286571: var_14C.Update var_AC, var_D0
  loc_1286578: Set var_14C = Nothing 
  loc_1286593: If (Me.RecordCount <= 0) Then
  loc_128659B:   global_84 = 0
  loc_128659E:   Exit Sub
  loc_128659F: End If
  loc_128659F: Exit Sub
  loc_12865A0: ' Referenced from: 1285FFC
  loc_12865A8: Proc_6_60_E63754(0)
  loc_12865AD: Exit Sub
End Sub

Public Property Get OpenMode() 'E03790
  'Data Table: 4AACFC
  loc_E03789: OpenMode = global_108
End Sub

Public Property Let OpenMode(vNewValue) 'E03070
  'Data Table: 4AACFC
  loc_E0306A: global_108 = vNewValue
  loc_E0306D: Exit Sub
End Sub

Public Sub Proc_55_32_109DB70
  'Data Table: 4AACFC
  Dim var_9C As Variant
  Dim var_B0 As MSHFlexGrid
  Dim var_88 As Long
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_FC As MSHFlexGrid
  Dim var_110 As String
  loc_109D8C2: Me.FGrid.Left = CVar(CDbl(0))
  loc_109D8DD: Me.FGrid.Top = CVar(CDbl(495))
  loc_109D8EA: var_88 = &H20D
  loc_109D8ED: var_9C = 1
  loc_109D8F6: var_C0 = &H1F4
  loc_109D903: Set var_B0 = Me.FGrid
  loc_109D909: LateIdCallSt
  loc_109D927: var_9C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109D945: var_C0 = CVar((CLng(Me.FGrid.CellHeight) + &H1F4)) 'Long
  loc_109D94E: Set var_F8 = Me.FGrid
  loc_109D954: LateIdCallSt
  loc_109D970: Set var_FC = Me.FGrid
  loc_109D987: global_52 = CStr(CLng(var_FC.BackColor))
  loc_109D99D: var_FC.Cols = &H21
  loc_109D9AE: var_FC.FixedCols = 3
  loc_109D9B6: var_9C = CVar(CLng(0)) 'Long
  loc_109D9BB: var_C0 = &HFA
  loc_109D9C7: LateIdCallSt
  loc_109D9CF: var_9C = 0
  loc_109D9DB: var_C0 = CVar(CLng(0)) 'Long
  loc_109D9E0: var_110 = "SNo"
  loc_109D9E9: LateIdCallSt
  loc_109D9F4: var_9C = CVar(CLng(0)) 'Long
  loc_109D9F9: var_C0 = 0
  loc_109DA05: LateIdCallSt
  loc_109DA0D: var_9C = 0
  loc_109DA19: var_C0 = CVar(CLng(1)) 'Long
  loc_109DA1E: var_110 = "Room Type"
  loc_109DA27: LateIdCallSt
  loc_109DA32: var_9C = CVar(CLng(1)) 'Long
  loc_109DA3D: var_C0 = CVar(CInt(1)) 'Integer
  loc_109DA44: LateIdCallSt
  loc_109DA4F: var_9C = CVar(CLng(1)) 'Long
  loc_109DA54: var_C0 = &H76C
  loc_109DA60: LateIdCallSt
  loc_109DA68: var_9C = 0
  loc_109DA74: var_C0 = CVar(CLng(2)) 'Long
  loc_109DA79: var_110 = "Room Type Code"
  loc_109DA82: LateIdCallSt
  loc_109DA8D: var_9C = CVar(CLng(2)) 'Long
  loc_109DA98: var_C0 = CVar(CInt(1)) 'Integer
  loc_109DA9F: LateIdCallSt
  loc_109DAAA: var_9C = CVar(CLng(2)) 'Long
  loc_109DAAF: var_C0 = 0
  loc_109DABB: LateIdCallSt
  loc_109DACA: For var_124 = 3 To &H20: var_8A = var_124 'Byte
  loc_109DAD0:   var_9C = 0
  loc_109DADE:   var_C0 = CVar(CLng(var_8A)) 'Long
  loc_109DAF0:   var_E0 = CVar("Day" & CStr(var_8A)) 'String
  loc_109DAF7:   LateIdCallSt
  loc_109DB0A:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_109DB15:   var_C0 = CVar(CInt(4)) 'Integer
  loc_109DB1C:   LateIdCallSt
  loc_109DB29:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_109DB34:   var_C0 = CVar(CInt(4)) 'Integer
  loc_109DB3B:   LateIdCallSt
  loc_109DB48:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_109DB57:   LateIdCallSt
  loc_109DB62: Next var_124 'Byte
  loc_109DB6A: Set var_FC = Nothing 
  loc_109DB6E: Exit Sub
End Sub

Public Sub Proc_55_33_F9D9F0
  'Data Table: 4AACFC
  Dim var_98 As CheckBox
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  loc_F9D896: Set var_8C = Me.ChkCategory
  loc_F9D89C: Call 0.Method_Proc_55_33_F9D9F0C (var_8E, var_86)
  loc_F9D8AA: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_F9D8BD:   Set var_8C = Me.ChkCategory
  loc_F9D8C3:   Call 0.Method_Proc_55_33_F9D9F00 (var_86, var_98)
  loc_F9D8DD:   If (var_98.Value = 1) Then
  loc_F9D8F6:     Set var_8C = Me.ChkCategory
  loc_F9D8FC:     Call 0.Method_Proc_55_33_F9D9F00 (var_86, var_98)
  loc_F9D912:     Proc_6_17_EAAE40(var_BC, CVar(var_98.Tag))
  loc_F9D91A:     var_DC = (CVar(vbNullString) + var_BC)
  loc_F9D923:     var_FC = (var_DC + ",")
  loc_F9D92E:     global_112 = CStr(var_FC)
  loc_F9D947:   End If
  loc_F9D94A: Next var_92 'Integer
  loc_F9D95A: If (global_112 <> vbNullString) Then
  loc_F9D978:   var_AC = Left(global_112, (Len(global_112) - 1))
  loc_F9D987:   global_112 = CStr(CVar(var_98.Tag))
  loc_F9D991: End If
  loc_F9D9C6: var_DC = ("(" + IIf((global_112 = vbNullString), "''", global_112))
  loc_F9D9CF: var_FC = (var_DC + ")")
  loc_F9D9DA: global_112 = CStr(var_FC)
  loc_F9D9EE: Exit Sub
End Sub

Public Sub Proc_55_34_11FC8D8
  'Data Table: 4AACFC
  Dim var_94 As Variant
  Dim unk_4AAD11 As Connection15
  Dim var_86 As Integer
  Dim var_8C As Recordset15
  Dim var_90 As Fields15
  Dim var_D0 As CheckBox
  Dim var_D8 As Frame
  Dim var_E0 As CheckBox
  loc_11FC43F: Set var_90 = Me.ChkCategory
  loc_11FC445: Call 0.Method_Proc_55_34_11FC8D80 (0, var_94)
  loc_11FC44D: var_94.Visible = False
  loc_11FC465: Set var_90 = Me.ChkCategory
  loc_11FC46B: Call 0.Method_Proc_55_34_11FC8D8C (var_96, var_86)
  loc_11FC479: For var_9A =  To (var_96 - 1): 1 = var_9A 'Integer
  loc_11FC489:   Set var_90 = Me.ChkCategory
  loc_11FC48F:   Call 0.Method_Proc_55_34_11FC8D80 (var_86)
  loc_11FC4A0:   Me.ChkCategory.Unload var_94
  loc_11FC4AF: Next var_9A 'Integer
  loc_11FC4D8: unk_4AAD11.Execute "Select Name,Code,1 Value from RoomCat Where InclCount='Y' And LogSite_Code='" & MemVar_1F95078 & "' order by Name", var_C8, -1
  loc_11FC4E3: Set var_8C = var_90
  loc_11FC4F5: var_86 = 0
  loc_11FC50C: If (var_8C.RecordCount > 0) Then
  loc_11FC51A:   Set var_90 = Me.ChkCategory
  loc_11FC520:   Call 0.Method_Proc_55_34_11FC8D80 (0, var_94, &HFF)
  loc_11FC528:   var_94.Visible = var_86
  loc_11FC534:   ' Referenced from: 11FC8C7
  loc_11FC534: End If
  loc_11FC543: If Not(var_8C.EOF) Then
  loc_11FC57E:   Set var_A0 = Me.ChkCategory
  loc_11FC584:   Call 0.Method_Proc_55_34_11FC8D80 (var_86, var_D0)
  loc_11FC58C:   var_D0.Caption = CStr(var_8C.Fields.Item("Name").Value)
  loc_11FC5DA:   Set var_A0 = Me.ChkCategory
  loc_11FC5E0:   Call 0.Method_Proc_55_34_11FC8D80 (var_86, var_D0)
  loc_11FC5E8:   var_D0.Tag = CStr(var_8C.Fields.Item("Code").Value)
  loc_11FC618:   var_94 = var_8C.Fields.Item("Value")
  loc_11FC633:   Set var_A0 = Me.ChkCategory
  loc_11FC639:   Call 0.Method_Proc_55_34_11FC8D80 (var_86, var_D0)
  loc_11FC641:   var_D0.Value = CInt(var_94.Value)
  loc_11FC657:   var_8C.MoveNext
  loc_11FC662:   var_86 = (var_86 + 1)
  loc_11FC676:   If (var_8C.EOF = 0) Then
  loc_11FC683:     Set var_90 = Me.ChkCategory
  loc_11FC689:     Call 0.Method_Proc_55_34_11FC8D80 (var_86, var_94)
  loc_11FC69A:     Me.ChkCategory.Load var_94
  loc_11FC6B2:     Set var_90 = Me.ChkCategory
  loc_11FC6B8:     Call 0.Method_Proc_55_34_11FC8D80 (var_86, var_94, &HFF)
  loc_11FC6C0:     var_94.Visible = var_86
  loc_11FC6DC:     Set var_A0 = Me.ChkCategory
  loc_11FC6E2:     Call 0.Method_Proc_55_34_11FC8D80 ((var_86 - 1), var_D0)
  loc_11FC711:     Set var_90 = Me.ChkCategory
  loc_11FC717:     Call 0.Method_Proc_55_34_11FC8D80 ((var_86 - 1), var_94)
  loc_11FC73D:     If (CSng((var_94.Left + var_D0.Width)) > Me.FrCat.Width) Then
  loc_11FC74C:       Set var_A0 = Me.ChkCategory
  loc_11FC752:       Call 0.Method_Proc_55_34_11FC8D80 (0, var_D0)
  loc_11FC76B:       Set var_90 = Me.ChkCategory
  loc_11FC771:       Call 0.Method_Proc_55_34_11FC8D80 (0, var_94)
  loc_11FC790:       Set var_D8 = Me.ChkCategory
  loc_11FC796:       Call 0.Method_Proc_55_34_11FC8D80 (var_86, var_E0)
  loc_11FC79E:       var_E0.Top = (var_94.Top + var_D0.Height)
  loc_11FC7BE:       Set var_90 = Me.ChkCategory
  loc_11FC7C4:       Call 0.Method_Proc_55_34_11FC8D80 (0, var_94)
  loc_11FC7DE:       Set var_A0 = Me.ChkCategory
  loc_11FC7E4:       Call 0.Method_Proc_55_34_11FC8D80 (var_86, var_D0)
  loc_11FC7EC:       var_D0.Left = var_94.Left
  loc_11FC7FF:     Else
  loc_11FC80F:       Set var_90 = Me.ChkCategory
  loc_11FC815:       Call 0.Method_Proc_55_34_11FC8D80 ((var_86 - 1), var_94)
  loc_11FC82F:       Set var_A0 = Me.ChkCategory
  loc_11FC835:       Call 0.Method_Proc_55_34_11FC8D80 (var_86, var_D0)
  loc_11FC83D:       var_D0.Top = var_94.Top
  loc_11FC85D:       Set var_A0 = Me.ChkCategory
  loc_11FC863:       Call 0.Method_Proc_55_34_11FC8D80 ((var_86 - 1), var_D0)
  loc_11FC880:       Set var_90 = Me.ChkCategory
  loc_11FC886:       Call 0.Method_Proc_55_34_11FC8D80 ((var_86 - 1), var_94)
  loc_11FC8A5:       Set var_D8 = Me.ChkCategory
  loc_11FC8AB:       Call 0.Method_Proc_55_34_11FC8D80 (var_86, var_E0)
  loc_11FC8B3:       var_E0.Left = (var_94.Left + var_D0.Width)
  loc_11FC8C7:     End If
  loc_11FC8C7:   End If
  loc_11FC8C7:   GoTo loc_11FC534
  loc_11FC8CA: End If
  loc_11FC8CA: Call Proc_55_33_F9D9F0(var_90)
  loc_11FC8D4: Set var_8C = Nothing
  loc_11FC8D7: Exit Sub
End Sub

Public Sub Proc_55_35_18D88AC(arg_C, arg_10, arg_14, arg_18) '18D88AC
  'Data Table: 4AACFC
  Dim var_C4 As String
  Dim var_C8 As String
  Dim var_D0 As String
  Dim unk_4AAD11 As Connection15
  Dim var_88 As Recordset15
  Dim var_E4 As Variant
  Dim var_F8 As Variant
  Dim var_F4 As Variant
  Dim var_A8 As Double
  Dim var_B2 As Integer
  Dim var_B4 As Integer
  Dim var_B6 As Integer
  Dim var_B0 As Double
  Dim var_14C As Variant
  Dim var_120 As Variant
  Dim var_17C As Variant
  Dim var_13C As Variant
  Dim var_98 As Long
  Dim var_15C As Variant
  Dim var_124 As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_16C As Variant
  Dim var_1C0 As Variant
  Dim var_1D0 As Variant
  Dim var_1E0 As Variant
  Dim var_110 As Variant
  Dim var_208 As Variant
  Dim var_1B0 As Variant
  Dim var_278 As Variant
  Dim var_94 As Recordset15
  Dim var_8C As Recordset15
  Dim var_90 As Recordset15
  Dim var_18C As Long
  Dim var_228 As Long
  loc_18D5F54: If (arg_14 = "RoomType") Then
  loc_18D5F5E:   var_C4 = "Select RC.Code,RC.Name,RC.NoRooms,RL.Rate2 From RoomCat RC Left Join RateList RL on RC.Code=RL.RoomCat Where RC.LOGSITE_CODE='" & MemVar_1F95078
  loc_18D5F73:   var_D0 = var_C4 & "' AND RL.LOGSITE_CODE='" & MemVar_1F95078 & "' AND RL.OccType='Single' And RL.Code='*' And RL.RoomNo='*****' And RC.InclCount='Y'  And RC.Code In "
  loc_18D5F84:   var_A0 = var_D0 & global_112 & " Order By RC.Name"
  loc_18D5FAF:   var_C8 = "Select Sum(NoRooms) As tNoRooms From RoomCat Where Type='RO' And LOGSITE_CODE='" & MemVar_1F95078 & "' AND InclCount='Y' And Code In "
  loc_18D5FC2:   unk_4AAD11.Execute var_C8 & global_112, var_F4, -1
  loc_18D5FCD:   Set var_88 = var_F8
  loc_18D5FF3:   If (var_88.RecordCount > 0) Then
  loc_18D601C:     Proc_6_39_E7D3A0(var_110, CVar(var_88.Fields.Item("tNoRooms")))
  loc_18D6025:     var_A8 = CSng(var_110)
  loc_18D6032:   End If
  loc_18D6032:   GoTo loc_18D6035
  loc_18D6035:   ' Referenced from: 18D6032
  loc_18D6035: End If
  loc_18D6044: Me.FGrid.Redraw = False
  loc_18D6050: Set var_124 = Me.FGrid
  loc_18D6059: If (arg_10 = 1) Then
  loc_18D6060:   var_B2 = CInt(3)
  loc_18D6067:   var_B4 = CInt(&H20)
  loc_18D606C:   var_B6 = 1
  loc_18D6072: Else
  loc_18D6076:   var_B2 = CInt(&H20)
  loc_18D607D:   var_B4 = CInt(3)
  loc_18D6082:   var_B6 = &HFF
  loc_18D6085: End If
  loc_18D6094: For var_12C = CLng(var_B2) To CLng(var_B4) Step CLng(var_B6): var_98 = var_12C 'Long
  loc_18D60A2:   If (var_98 = CLng(var_B2)) Then
  loc_18D60A8:     var_B0 = arg_C
  loc_18D60AE:   Else
  loc_18D60CA:     var_B0 = CDate(DateAdd("d", CDbl(arg_10), CDate(var_B0)))
  loc_18D60D4:   End If
  loc_18D60D4:   var_14C = 0
  loc_18D610C:   var_17C = CVar(CStr(Format(CDate(var_B0), "DDD"))) 'String
  loc_18D6113:   LateIdCallSt
  loc_18D6126:   var_14C = 1
  loc_18D615F:   var_13C = CVar(CStr(Format(var_B0, "dd/MM"))) 'String
  loc_18D6166:   LateIdCallSt
  loc_18D6177:   var_14C = 2
  loc_18D61B0:   var_13C = CVar(CStr(Format(var_B0, "dd/MMM/yy"))) 'String
  loc_18D61B7:   LateIdCallSt
  loc_18D61CB: Next var_12C 'Long
  loc_18D61DD: Set var_F8 = Me.FGrid
  loc_18D61E3: var_F8.Rows = 4
  loc_18D61FD: var_120 = CVar(CLng(0)) 'Long
  loc_18D620D: var_F4 = CVar(CStr((3 - 1))) 'String
  loc_18D6214: LateIdCallSt
  loc_18D6229: var_120 = CVar(CLng(1)) 'Long
  loc_18D622E: var_15C = "<<Total Rooms>>"
  loc_18D6237: LateIdCallSt
  loc_18D6249: var_120 = CVar(CLng(2)) 'Long
  loc_18D624E: var_15C = vbNullString
  loc_18D6257: LateIdCallSt
  loc_18D6268: For var_194 = CLng(3) To CLng(&H20): var_9C = var_194 'Long
  loc_18D6278:   var_124.Col = var_9C
  loc_18D6289:   var_124.CellBackColor = &HE69839
  loc_18D629A:   var_124.CellForeColor = &HFFFF
  loc_18D62A6:   var_124.CellFontBold = True
  loc_18D62BE:   var_F4 = CVar(CStr(var_A8)) 'String
  loc_18D62C5:   LateIdCallSt
  loc_18D62D3: Next var_194 'Long
  loc_18D62E1: var_98 = (var_98 + 1)
  loc_18D62FA: unk_4AAD11.Execute var_A0, var_F4, -1
  loc_18D6305: Set var_88 = var_F8
  loc_18D6322: If (var_88.RecordCount > 0) Then
  loc_18D6325:   ' Referenced from: 18D6D51
  loc_18D6334:   If Not(var_88.EOF) Then
  loc_18D6337:     var_E4 = vbNullString
  loc_18D6352:     var_120 = CVar(CLng(0)) 'Long
  loc_18D6362:     var_F4 = CVar(CStr((3 - 1))) 'String
  loc_18D6369:     LateIdCallSt
  loc_18D63E3:     var_1C0 = CVar(Proc_6_45_EADFB8(CStr(var_88.Fields.Item("Name").Value), &HF, CVar(CLng(1)), 3, var_124, var_88.Fields.Item("Name").Value)) 'String
  loc_18D63F5:     var_17C = "0.00"
  loc_18D6413:     var_1E0 = CVar(CStr(1 & Format(CVar(CStr(var_88.Fields.Item("Rate2").Value)), var_17C))) 'String
  loc_18D641A:     LateIdCallSt
  loc_18D644D:     var_14C = CVar(CLng(2)) 'Long
  loc_18D6464:     var_F8 = var_88.Fields
  loc_18D647D:     var_110 = CVar(CStr(var_F8.Item("Code").Value)) 'String
  loc_18D6484:     LateIdCallSt
  loc_18D64A3:     For var_1F8 = CLng(3) To CLng(&H20): var_9C = var_1F8 'Long
  loc_18D64BA:       If ((arg_18 = "All") Or (arg_18 = vbNullString)) Then
  loc_18D64CF:         var_F4 = var_124.TextMatrix)
  loc_18D64EE:         var_110 = var_124.TextMatrix)
  loc_18D64FF:         Proc_6_7_F26918(var_17C, CVar(CStr(var_110)), var_9C, 2, var_F4, CVar(CLng(2)), 3, CLng(3))
  loc_18D6528:         Proc_6_7_F26918(var_248, CVar(CStr(var_124.TextMatrix))), var_9C, 2, var_124, var_110)
  loc_18D6541:         var_C4 = "Select Sum(NoofRooms) As tRoomBusy From ((ViewBooking as B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId ) Where B.LOGSITE_CODE='" & MemVar_1F95078
  loc_18D6569:         var_1D0 = CVar(var_C4 & "' AND B.RoomCat='" & CStr(var_F4) & "' And (B.RoomType='RO' or B.RoomType is Null) And ") & var_17C & " >= B.ArrDate And " 
  loc_18D6587:         unk_4AAD11.Execute CStr(var_1D0 & var_248 & " < B.DepDate AND B.Cancel='N' And RO.ChkInDate Is Null"), var_298, -1
  loc_18D6592:         Set var_94 = var_F8
  loc_18D65C5:       Else
  loc_18D65CD:         If (arg_18 = "Confirm") Then
  loc_18D65E2:           var_F4 = var_124.TextMatrix)
  loc_18D6612:           Proc_6_7_F26918(var_17C, CVar(CStr(var_124.TextMatrix))), var_9C, 2, var_F4, CVar(CLng(2)), 3)
  loc_18D663B:           Proc_6_7_F26918(var_248, CVar(CStr(var_124.TextMatrix))), var_9C, 2, var_F8, var_14C)
  loc_18D6654:           var_C4 = "Select Sum(NoofRooms) As tRoomBusy From ((ViewBooking as B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId ) Where B.LOGSITE_CODE='" & MemVar_1F95078
  loc_18D6673:           var_1C0 = CVar(var_C4 & "' AND B.RoomCat='" & CStr(var_F4) & "' And (B.RoomType='RO' or B.RoomType is Null) And ") & var_17C 
  loc_18D668C:           var_278 = var_1C0 & " >= B.ArrDate And " & var_248 & " < B.DepDate AND B.Cancel='N' AND (B.ResStatus='Confirm' Or B.ResStatus='') And RO.ChkInDate Is Null" 
  loc_18D669A:           unk_4AAD11.Execute CStr(var_278), var_298, -1
  loc_18D66A5:           Set var_94 = var_F8
  loc_18D66D8:         Else
  loc_18D66E0:           If (arg_18 = "Tentative") Then
  loc_18D66F5:             var_F4 = var_124.TextMatrix)
  loc_18D6725:             Proc_6_7_F26918(var_17C, CVar(CStr(var_124.TextMatrix))), var_9C, 2, var_F4, CVar(CLng(2)), 3)
  loc_18D674E:             Proc_6_7_F26918(var_248, CVar(CStr(var_124.TextMatrix))), var_9C, 2, var_F8)
  loc_18D6767:             var_C4 = "Select Sum(NoofRooms) As tRoomBusy From ((ViewBooking as B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId ) Where B.LOGSITE_CODE='" & MemVar_1F95078
  loc_18D6786:             var_1C0 = CVar(var_C4 & "' AND B.RoomCat='" & CStr(var_F4) & "' And (B.RoomType='RO' or B.RoomType is Null) And ") & var_17C 
  loc_18D679F:             var_278 = var_1C0 & " >= B.ArrDate And " & var_248 & " < B.DepDate AND B.Cancel='N' AND B.ResStatus='Tentative' And RO.ChkInDate Is Null" 
  loc_18D67AD:             unk_4AAD11.Execute CStr(var_278), var_298, -1
  loc_18D67B8:             Set var_94 = var_F8
  loc_18D67EB:           Else
  loc_18D67F3:             If (arg_18 = "Waiting") Then
  loc_18D6808:               var_F4 = var_124.TextMatrix)
  loc_18D6838:               Proc_6_7_F26918(var_17C, CVar(CStr(var_124.TextMatrix))), var_9C, 2, var_F4, CVar(CLng(2)), 3)
  loc_18D6861:               Proc_6_7_F26918(var_248, CVar(CStr(var_124.TextMatrix))), var_9C, 2, var_F8)
  loc_18D687A:               var_C4 = "Select Sum(NoofRooms) As tRoomBusy From ((ViewBooking as B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId ) Where B.LOGSITE_CODE='" & MemVar_1F95078
  loc_18D6893:               var_1B0 = CVar(var_C4 & "' AND B.RoomCat='" & CStr(var_F4) & "' And (B.RoomType='RO' or B.RoomType is Null) And ") 'String
  loc_18D68B2:               var_278 = var_1B0 & var_17C & " >= B.ArrDate And " & var_248 & " < B.DepDate AND B.Cancel='N' AND B.ResStatus='Waiting' And RO.ChkInDate Is Null" 
  loc_18D68C0:               unk_4AAD11.Execute CStr(var_278), var_298, -1
  loc_18D68CB:               Set var_94 = var_F8
  loc_18D68FB:             End If
  loc_18D68FB:           End If
  loc_18D68FB:         End If
  loc_18D68FB:       End If
  loc_18D690D:       var_F4 = var_124.TextMatrix)
  loc_18D693D:       Proc_6_7_F26918(var_17C, CVar(CStr(var_124.TextMatrix))), var_9C, 2, var_F4, CVar(CLng(2)), 3)
  loc_18D6955:       var_1E0 = var_124.TextMatrix)
  loc_18D6966:       Proc_6_7_F26918(var_248, CVar(CStr(var_1E0)), var_9C, 2, var_F8)
  loc_18D6998:       var_1B0 = CVar("Select Count(*) As RoomBusyRO From RoomOcc Where LOGSITE_CODE='" & MemVar_1F95078 & "' AND RoomCat='" & CStr(var_F4) & "' And RoomType='RO' And ") 'String
  loc_18D69C5:       unk_4AAD11.Execute CStr(var_1B0 & var_17C & " >=ChkInDate  AND " & var_248 & "< RoomOcc.DepDate AND RoomOcc.Type Not IN('C','O')"), var_298, -1
  loc_18D69D0:       Set var_8C = var_F8
  loc_18D6A12:       var_F4 = var_124.TextMatrix)
  loc_18D6A42:       Proc_6_7_F26918(var_17C, CVar(CStr(var_124.TextMatrix))), var_9C, 2, var_F4, CVar(CLng(2)), 3)
  loc_18D6A5B:       var_C4 = "Select Count(*) As RoomBlocked From RoomBlockOut RB Inner Join RoomMast RM ON RB.RoomCode=RM.Code where RB.LOGSITE_CODE='" & MemVar_1F95078
  loc_18D6A83:       var_1D0 = CVar(var_C4 & "' And RM.RoomCat='" & CStr(var_F4) & "' And RB.Type='O' And RM.Type='RO' And ") & var_17C & " Between RB.FromDate and RB.ToDate" 
  loc_18D6A91:       unk_4AAD11.Execute CStr(var_1D0), var_1E0, -1
  loc_18D6A9C:       Set var_90 = var_F8
  loc_18D6AFB:       var_110 = CVar(CStr(var_88.Fields.Item("noRooms").Value)) 'String
  loc_18D6B02:       LateIdCallSt
  loc_18D6B2C:       If (var_94.RecordCount > 0) Then
  loc_18D6BCA:         var_1C0 = (CVar(Val(CStr(var_124.TextMatrix)))) - IIf(IsNull(CVar(var_94.Fields.Item("tRoomBusy"))), 0, CVar(var_94.Fields.Item("tRoomBusy"))))
  loc_18D6BCF:         var_1D0 = CVar(CStr(CVar(CStr(var_124.TextMatrix)) & "' And RM.RoomCat='" & CStr(var_124.TextMatrix)) & "' And RB.Type='O' And RM.Type='RO' And ") & CVar(var_94.Fields.Item("tRoomBusy")))) 'String
  loc_18D6BD6:         LateIdCallSt
  loc_18D6BF9:       End If
  loc_18D6C0D:       If (var_8C.RecordCount > 0) Then
  loc_18D6C70:         var_13C = (CVar(Val(CStr(var_124.TextMatrix)))) - var_8C.Fields.Item("RoomBusyRO").Value)
  loc_18D6C75:         var_17C = CVar(CStr(0)) 'String
  loc_18D6C7C:         LateIdCallSt
  loc_18D6C97:       End If
  loc_18D6CAB:       If (var_90.RecordCount > 0) Then
  loc_18D6D0E:         var_13C = (CVar(Val(CStr(var_124.TextMatrix)))) - var_90.Fields.Item("RoomBlocked").Value)
  loc_18D6D13:         var_17C = CVar(CStr(0)) 'String
  loc_18D6D1A:         LateIdCallSt
  loc_18D6D35:       End If
  loc_18D6D38:     Next var_1F8 'Long
  loc_18D6D46:     var_98 = (var_98 + 1)
  loc_18D6D4C:     var_88.MoveNext
  loc_18D6D51:     GoTo loc_18D6325
  loc_18D6D54:   End If
  loc_18D6D67:   Me.FGrid.FixedRows = 4
  loc_18D6D6F: End If
  loc_18D6D71: Set var_124 = Nothing 
  loc_18D6D75: var_E4 = 2
  loc_18D6D7E: var_14C = 0
  loc_18D6D8B: Set var_F8 = Me.FGrid
  loc_18D6D91: LateIdCallSt
  loc_18D6D9C: var_E4 = vbNullString
  loc_18D6DA6: Set var_F8 = Me.FGrid
  loc_18D6DD0: var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D6DD5: var_14C = 1
  loc_18D6DDE: var_16C = "TOTAL VACANT ROOM"
  loc_18D6DE8: Set var_100 = Me.FGrid
  loc_18D6DEE: LateIdCallSt
  loc_18D6E27: For var_2A0 = 4 To (CLng(Me.FGrid.Rows) - 2): var_9C = var_2A0 'Long
  loc_18D6E34:   var_18C = 3
  loc_18D6E76:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D6E7B:   var_228 = 3
  loc_18D6E9D:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D6EA2:   var_14C = 3
  loc_18D6ED2:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D6EDA:   Set var_2A4 = Me.FGrid
  loc_18D6EE0:   LateIdCallSt
  loc_18D6F10:   var_18C = 4
  loc_18D6F52:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D6F57:   var_228 = 4
  loc_18D6F79:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D6F7E:   var_14C = 4
  loc_18D6FAE:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D6FB6:   Set var_2A4 = Me.FGrid
  loc_18D6FBC:   LateIdCallSt
  loc_18D6FEC:   var_18C = 5
  loc_18D702E:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D7033:   var_228 = 5
  loc_18D7055:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D705A:   var_14C = 5
  loc_18D708A:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D7092:   Set var_2A4 = Me.FGrid
  loc_18D7098:   LateIdCallSt
  loc_18D70C8:   var_18C = 6
  loc_18D710A:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D710F:   var_228 = 6
  loc_18D7131:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D7136:   var_14C = 6
  loc_18D7166:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D716E:   Set var_2A4 = Me.FGrid
  loc_18D7174:   LateIdCallSt
  loc_18D71A4:   var_18C = 7
  loc_18D71E6:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D71EB:   var_228 = 7
  loc_18D720D:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D7212:   var_14C = 7
  loc_18D7242:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D724A:   Set var_2A4 = Me.FGrid
  loc_18D7250:   LateIdCallSt
  loc_18D7280:   var_18C = 8
  loc_18D72C2:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D72C7:   var_228 = 8
  loc_18D72E9:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D72EE:   var_14C = 8
  loc_18D731E:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D7326:   Set var_2A4 = Me.FGrid
  loc_18D732C:   LateIdCallSt
  loc_18D735C:   var_18C = 9
  loc_18D739E:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D73A3:   var_228 = 9
  loc_18D73C5:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D73CA:   var_14C = 9
  loc_18D73FA:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D7402:   Set var_2A4 = Me.FGrid
  loc_18D7408:   LateIdCallSt
  loc_18D7438:   var_18C = &HA
  loc_18D747A:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D747F:   var_228 = &HA
  loc_18D74A1:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D74A6:   var_14C = &HA
  loc_18D74D6:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D74DE:   Set var_2A4 = Me.FGrid
  loc_18D74E4:   LateIdCallSt
  loc_18D7514:   var_18C = &HB
  loc_18D7556:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D755B:   var_228 = &HB
  loc_18D757D:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D7582:   var_14C = &HB
  loc_18D75B2:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D75BA:   Set var_2A4 = Me.FGrid
  loc_18D75C0:   LateIdCallSt
  loc_18D75F0:   var_18C = &HC
  loc_18D7632:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D7637:   var_228 = &HC
  loc_18D7659:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D765E:   var_14C = &HC
  loc_18D768E:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D7696:   Set var_2A4 = Me.FGrid
  loc_18D769C:   LateIdCallSt
  loc_18D76CC:   var_18C = &HD
  loc_18D770E:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D7713:   var_228 = &HD
  loc_18D7735:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D773A:   var_14C = &HD
  loc_18D776A:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D7772:   Set var_2A4 = Me.FGrid
  loc_18D7778:   LateIdCallSt
  loc_18D77A8:   var_18C = &HE
  loc_18D77EA:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D77EF:   var_228 = &HE
  loc_18D7811:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D7816:   var_14C = &HE
  loc_18D7846:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D784E:   Set var_2A4 = Me.FGrid
  loc_18D7854:   LateIdCallSt
  loc_18D7884:   var_18C = &HF
  loc_18D78C6:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D78CB:   var_228 = &HF
  loc_18D78ED:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D78F2:   var_14C = &HF
  loc_18D7922:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D792A:   Set var_2A4 = Me.FGrid
  loc_18D7930:   LateIdCallSt
  loc_18D7960:   var_18C = &H10
  loc_18D79A2:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D79A7:   var_228 = &H10
  loc_18D79C9:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D79CE:   var_14C = &H10
  loc_18D79FE:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D7A06:   Set var_2A4 = Me.FGrid
  loc_18D7A0C:   LateIdCallSt
  loc_18D7A3C:   var_18C = &H11
  loc_18D7A7E:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D7A83:   var_228 = &H11
  loc_18D7AA5:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D7AAA:   var_14C = &H11
  loc_18D7ADA:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D7AE2:   Set var_2A4 = Me.FGrid
  loc_18D7AE8:   LateIdCallSt
  loc_18D7B18:   var_18C = &H12
  loc_18D7B5A:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D7B5F:   var_228 = &H12
  loc_18D7B81:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D7B86:   var_14C = &H12
  loc_18D7BB6:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D7BBE:   Set var_2A4 = Me.FGrid
  loc_18D7BC4:   LateIdCallSt
  loc_18D7BF4:   var_18C = &H13
  loc_18D7C36:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D7C3B:   var_228 = &H13
  loc_18D7C5D:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D7C62:   var_14C = &H13
  loc_18D7C92:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D7C9A:   Set var_2A4 = Me.FGrid
  loc_18D7CA0:   LateIdCallSt
  loc_18D7CD0:   var_18C = &H14
  loc_18D7D12:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D7D17:   var_228 = &H14
  loc_18D7D39:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D7D3E:   var_14C = &H14
  loc_18D7D6E:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D7D76:   Set var_2A4 = Me.FGrid
  loc_18D7D7C:   LateIdCallSt
  loc_18D7DAC:   var_18C = &H15
  loc_18D7DEE:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D7DF3:   var_228 = &H15
  loc_18D7E15:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D7E1A:   var_14C = &H15
  loc_18D7E4A:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D7E52:   Set var_2A4 = Me.FGrid
  loc_18D7E58:   LateIdCallSt
  loc_18D7E88:   var_18C = &H16
  loc_18D7ECA:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D7ECF:   var_228 = &H16
  loc_18D7EF1:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D7EF6:   var_14C = &H16
  loc_18D7F26:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D7F2E:   Set var_2A4 = Me.FGrid
  loc_18D7F34:   LateIdCallSt
  loc_18D7F64:   var_18C = &H17
  loc_18D7FA6:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D7FAB:   var_228 = &H17
  loc_18D7FCD:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D7FD2:   var_14C = &H17
  loc_18D8002:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D800A:   Set var_2A4 = Me.FGrid
  loc_18D8010:   LateIdCallSt
  loc_18D8040:   var_18C = &H18
  loc_18D8082:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8087:   var_228 = &H18
  loc_18D80A9:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D80AE:   var_14C = &H18
  loc_18D80DE:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D80E6:   Set var_2A4 = Me.FGrid
  loc_18D80EC:   LateIdCallSt
  loc_18D811C:   var_18C = &H19
  loc_18D815E:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8163:   var_228 = &H19
  loc_18D8185:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D818A:   var_14C = &H19
  loc_18D81BA:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D81C2:   Set var_2A4 = Me.FGrid
  loc_18D81C8:   LateIdCallSt
  loc_18D81F8:   var_18C = &H1A
  loc_18D823A:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D823F:   var_228 = &H1A
  loc_18D8261:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8266:   var_14C = &H1A
  loc_18D8296:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D829E:   Set var_2A4 = Me.FGrid
  loc_18D82A4:   LateIdCallSt
  loc_18D82D4:   var_18C = &H1B
  loc_18D8316:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D831B:   var_228 = &H1B
  loc_18D833D:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8342:   var_14C = &H1B
  loc_18D8372:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D837A:   Set var_2A4 = Me.FGrid
  loc_18D8380:   LateIdCallSt
  loc_18D83B0:   var_18C = &H1C
  loc_18D83F2:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D83F7:   var_228 = &H1C
  loc_18D8419:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D841E:   var_14C = &H1C
  loc_18D844E:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D8456:   Set var_2A4 = Me.FGrid
  loc_18D845C:   LateIdCallSt
  loc_18D848C:   var_18C = &H1D
  loc_18D84CE:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D84D3:   var_228 = &H1D
  loc_18D84F5:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D84FA:   var_14C = &H1D
  loc_18D852A:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D8532:   Set var_2A4 = Me.FGrid
  loc_18D8538:   LateIdCallSt
  loc_18D8568:   var_18C = &H1E
  loc_18D85AA:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D85AF:   var_228 = &H1E
  loc_18D85D1:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D85D6:   var_14C = &H1E
  loc_18D8606:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D860E:   Set var_2A4 = Me.FGrid
  loc_18D8614:   LateIdCallSt
  loc_18D8644:   var_18C = &H1F
  loc_18D8686:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D868B:   var_228 = &H1F
  loc_18D86AD:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D86B2:   var_14C = &H1F
  loc_18D86E2:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D86EA:   Set var_2A4 = Me.FGrid
  loc_18D86F0:   LateIdCallSt
  loc_18D8720:   var_18C = &H20
  loc_18D8762:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8767:   var_228 = &H20
  loc_18D8789:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D878E:   var_14C = &H20
  loc_18D87BE:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D87C6:   Set var_2A4 = Me.FGrid
  loc_18D87CC:   LateIdCallSt
  loc_18D87F8: Next var_2A0 'Long
  loc_18D880B: Me.FGrid.Redraw = True
  loc_18D881C: If (3 = 1) Then
  loc_18D8832:   Me.FGrid.Rows = 4
  loc_18D884D:   Me.FGrid.FixedRows = 4
  loc_18D8855: End If
  loc_18D8868: Me.FGrid.Row = 3
  loc_18D8883: Me.FGrid.Col = 3
  loc_18D8890: Set var_88 = Nothing
  loc_18D8898: Set var_94 = Nothing
  loc_18D88A0: Set var_8C = Nothing
  loc_18D88A8: Set var_90 = Nothing
  loc_18D88AB: Exit Sub
End Sub

Public Sub Proc_55_36_F6572C(arg_C) 'F6572C
  'Data Table: 4AACFC
  Dim var_90 As Recordset15
  loc_F65601: Set var_90 = arg_C 
  loc_F65629: var_90.Fields.Append "mLine", &HC8, &HA
  loc_F65655: var_90.Fields.Append "RoomType", &HC8, &H19
  loc_F65664: For var_A8 = 3 To &H19: var_8A = var_A8 'Integer
  loc_F6569A:   var_90.Fields.Append "Day" & CStr(var_8A), &HC8, &HF
  loc_F656AC: Next var_A8 'Integer
  loc_F656D5: var_90.Fields.Append "Mark", &HC8, 1
  loc_F656E5: var_90.CursorType = 3
  loc_F656F2: var_90.LockType = 3
  loc_F65711: var_90.Open var_A4, var_C0, -1
  loc_F65718: Set var_90 = Nothing 
  loc_F6571F: Set var_88 = arg_C 
  loc_F65723: Proc_55_36_F6572C = -1
End Sub

Public Sub Proc_55_37_16A22C4
  'Data Table: 4AACFC
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
  Dim var_74C As String
  Dim var_76C As String
  Dim var_78C As String
  Dim var_968 As String
  Dim var_998 As String
  Dim var_9C8 As String
  Dim var_9F8 As String
  Dim var_A20 As String
  Dim var_A50 As String
  Dim var_A80 As String
  Dim var_AB0 As String
  Dim var_AE4 As String
  loc_16A0DD2: Close 1
  loc_16A0DDB: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_16A0E0D: var_A0 = Replace(CStr(Space(&H82)), " ", MemVar_1F953D0, 1, -1, 0)
  loc_16A0E18: var_88 = 1
  loc_16A0E32: If (Me.RecordCount > 0) Then
  loc_16A0E3B:   Me.MoveFirst
  loc_16A0E40:   ' Referenced from: 16A2204
  loc_16A0E52:   If Not(Me.EOF) Then
  loc_16A0E5B:     If (var_86 = 0) Then
  loc_16A0E6E:       var_86 = Proc_6_129_12B862C(var_88, var_86)
  loc_16A0E79:       var_100 = "B"
  loc_16A0E95:       Print 1, Proc_6_128_1026560(global_104, var_100, &H50)
  loc_16A0EB2:       Set var_114 = Me.Txt
  loc_16A0EB8:       Call 0.Method_Proc_55_37_16A22C40 (CInt(0), var_118, var_100)
  loc_16A0EC0:       var_86 = var_118.Text
  loc_16A0ED1:       Print 1, "From Date " & var_100
  loc_16A0EFB:       var_128 = (Chr(&HF) + CVar(var_A0))
  loc_16A0F01:       Print 1, var_128
  loc_16A0F15:       For var_12C = 1 To &H17: var_A4 = var_12C 'Integer
  loc_16A0F26:         Set var_114 = Me.Txt
  loc_16A0F2C:         Call 0.Method_Proc_55_37_16A22C40 (CInt(0), var_118, 1)
  loc_16A0F46:         var_128 = DateAdd("d", CDbl((var_A4 - 1)), CVar(var_118))
  loc_16A0F53:         global_96 = CDate(var_128)
  loc_16A0FA1:         var_BC(CLng(var_A4)) = CStr(Ucase(Format(global_96, "DDD")))
  loc_16A0FEE:         var_14C = Space((2 - Len(CStr(Day(global_96)))))
  loc_16A0FF6:         var_16C = (CVar(CStr(Day(global_96))) + Ucase(Format(global_96, "DDD")))
  loc_16A1028:         var_1BC = Space((2 - Len(CStr(Month(global_96)))))
  loc_16A104B:         var_1FC = (var_1BC + CVar(CStr(Month(global_96))))
  loc_16A105E:         var_D8(CLng(var_A4)) = CStr(var_16C & vbNullString & var_1FC)
  loc_16A108E:       Next var_12C 'Integer
  loc_16A12A2:       var_128 = (Space(&HA) + "|")
  loc_16A12AC:       var_15C = (Day(global_96) + CVar(Proc_6_45_EADFB8(var_BC(1))))
  loc_16A12B5:       var_16C = (CVar(CStr(Day(global_96))) + "|")
  loc_16A12BF:       var_1AC = (var_16C + CVar(Proc_6_45_EADFB8(var_BC(2), 4)))
  loc_16A12C8:       var_1BC = (Month(global_96) + "|")
  loc_16A12D2:       var_1EC = (var_1BC + CVar(Proc_6_45_EADFB8(var_BC(3), 4)))
  loc_16A12DB:       var_1FC = (CVar(CStr(Month(global_96))) + "|")
  loc_16A12E5:       var_224 = (var_1FC + CVar(Proc_6_45_EADFB8(var_BC(4), 4)))
  loc_16A12EE:       var_234 = (var_224 + "|")
  loc_16A12F8:       var_258 = (var_234 + CVar(Proc_6_45_EADFB8(var_BC(5), 4)))
  loc_16A1301:       var_278 = (var_258 + "|")
  loc_16A130B:       var_29C = (var_278 + CVar(Proc_6_45_EADFB8(var_BC(6), 4)))
  loc_16A1314:       var_2BC = (var_29C + "|")
  loc_16A131E:       var_2E0 = (var_2BC + CVar(Proc_6_45_EADFB8(var_BC(7), 4)))
  loc_16A1327:       var_300 = (var_2E0 + "|")
  loc_16A1331:       var_324 = (var_300 + CVar(Proc_6_45_EADFB8(var_BC(8), 4)))
  loc_16A133A:       var_344 = (var_324 + "|")
  loc_16A1344:       var_368 = (var_344 + CVar(Proc_6_45_EADFB8(var_BC(9), 4)))
  loc_16A134D:       var_388 = (var_368 + "|")
  loc_16A1357:       var_3AC = (var_388 + CVar(Proc_6_45_EADFB8(var_BC(&HA), 4)))
  loc_16A1360:       var_3CC = (var_3AC + "|")
  loc_16A136A:       var_3F0 = (var_3CC + CVar(Proc_6_45_EADFB8(var_BC(&HB), 4)))
  loc_16A1373:       var_410 = (var_3F0 + "|")
  loc_16A137D:       var_434 = (var_410 + CVar(Proc_6_45_EADFB8(var_BC(&HC), 4)))
  loc_16A1386:       var_454 = (var_434 + "|")
  loc_16A1390:       var_478 = (var_454 + CVar(Proc_6_45_EADFB8(var_BC(&HD), 4)))
  loc_16A1399:       var_498 = (var_478 + "|")
  loc_16A13A3:       var_4BC = (var_498 + CVar(Proc_6_45_EADFB8(var_BC(&HE), 4)))
  loc_16A13AC:       var_4DC = (var_4BC + "|")
  loc_16A13B6:       var_500 = (var_4DC + CVar(Proc_6_45_EADFB8(var_BC(&HF), 4)))
  loc_16A13BF:       var_520 = (var_500 + "|")
  loc_16A13C9:       var_544 = (var_520 + CVar(Proc_6_45_EADFB8(var_BC(&H10), 4)))
  loc_16A13D2:       var_564 = (var_544 + "|")
  loc_16A13DC:       var_588 = (var_564 + CVar(Proc_6_45_EADFB8(var_BC(&H11), 4)))
  loc_16A13E5:       var_5A8 = (var_588 + "|")
  loc_16A13EF:       var_5CC = (var_5A8 + CVar(Proc_6_45_EADFB8(var_BC(&H12), 4)))
  loc_16A13F8:       var_5EC = (var_5CC + "|")
  loc_16A1402:       var_610 = (var_5EC + CVar(Proc_6_45_EADFB8(var_BC(&H13), 4)))
  loc_16A140B:       var_630 = (var_610 + "|")
  loc_16A1415:       var_654 = (var_630 + CVar(Proc_6_45_EADFB8(var_BC(&H14), 4)))
  loc_16A141E:       var_674 = (var_654 + "|")
  loc_16A1428:       var_698 = (var_674 + CVar(Proc_6_45_EADFB8(var_BC(&H15), 4)))
  loc_16A1431:       var_6B8 = (var_698 + "|")
  loc_16A143B:       var_6DC = (var_6B8 + CVar(Proc_6_45_EADFB8(var_BC(&H16), 4)))
  loc_16A1444:       var_6FC = (var_6DC + "|")
  loc_16A144E:       var_720 = (var_6FC + CVar(Proc_6_45_EADFB8(var_BC(&H17), 4)))
  loc_16A1457:       var_740 = (var_720 + "|")
  loc_16A145D:       Print 1, var_740
  loc_16A153A:       var_128 = ("TYPE" + Space(6))
  loc_16A1543:       var_14C = (Day(global_96) + "|")
  loc_16A1553:       var_15C = (CVar(Proc_6_45_EADFB8(var_BC(1))) + CVar(var_D8(1)))
  loc_16A155C:       var_16C = (CVar(CStr(Day(global_96))) + "|")
  loc_16A156C:       var_18C = (var_16C + CVar(var_D8(2)))
  loc_16A1575:       var_1AC = (CVar(Proc_6_45_EADFB8(var_BC(2), 4)) + "|")
  loc_16A1585:       var_1BC = (Month(global_96) + CVar(var_D8(3)))
  loc_16A158E:       var_1DC = (var_1BC + "|")
  loc_16A159E:       var_1EC = (CVar(Proc_6_45_EADFB8(var_BC(3), 4)) + CVar(var_D8(4)))
  loc_16A15A7:       var_1FC = (CVar(CStr(Month(global_96))) + "|")
  loc_16A15B7:       var_20C = (var_1FC + CVar(var_D8(5)))
  loc_16A15C0:       var_224 = (CVar(Proc_6_45_EADFB8(var_BC(4), 4)) + "|")
  loc_16A15D0:       var_234 = (var_224 + CVar(var_D8(6)))
  loc_16A15D9:       var_248 = (var_234 + "|")
  loc_16A15E9:       var_258 = (CVar(Proc_6_45_EADFB8(var_BC(5), 4)) + CVar(var_D8(7)))
  loc_16A15F2:       var_278 = (var_258 + "|")
  loc_16A1602:       var_28C = (var_278 + CVar(var_D8(8)))
  loc_16A160B:       var_29C = (CVar(Proc_6_45_EADFB8(var_BC(6), 4)) + "|")
  loc_16A161B:       var_2BC = (var_29C + CVar(var_D8(9)))
  loc_16A1624:       var_2D0 = (var_2BC + "|")
  loc_16A1634:       var_2E0 = (CVar(Proc_6_45_EADFB8(var_BC(7), 4)) + CVar(var_D8(&HA)))
  loc_16A163D:       var_300 = (var_2E0 + "|")
  loc_16A164D:       var_314 = (var_300 + CVar(var_D8(&HB)))
  loc_16A1656:       var_324 = (CVar(Proc_6_45_EADFB8(var_BC(8), 4)) + "|")
  loc_16A1666:       var_344 = (var_324 + CVar(var_D8(&HC)))
  loc_16A166F:       var_358 = (var_344 + "|")
  loc_16A167F:       var_368 = (CVar(Proc_6_45_EADFB8(var_BC(9), 4)) + CVar(var_D8(&HD)))
  loc_16A1688:       var_388 = (var_368 + "|")
  loc_16A1698:       var_39C = (var_388 + CVar(var_D8(&HE)))
  loc_16A16A1:       var_3AC = (CVar(Proc_6_45_EADFB8(var_BC(&HA), 4)) + "|")
  loc_16A16B1:       var_3CC = (var_3AC + CVar(var_D8(&HF)))
  loc_16A16BA:       var_3E0 = (var_3CC + "|")
  loc_16A16CA:       var_3F0 = (CVar(Proc_6_45_EADFB8(var_BC(&HB), 4)) + CVar(var_D8(&H10)))
  loc_16A16D3:       var_410 = (var_3F0 + "|")
  loc_16A16E3:       var_424 = (var_410 + CVar(var_D8(&H11)))
  loc_16A16EC:       var_434 = (CVar(Proc_6_45_EADFB8(var_BC(&HC), 4)) + "|")
  loc_16A16FC:       var_454 = (var_434 + CVar(var_D8(&H12)))
  loc_16A1705:       var_468 = (var_454 + "|")
  loc_16A1715:       var_478 = (CVar(Proc_6_45_EADFB8(var_BC(&HD), 4)) + CVar(var_D8(&H13)))
  loc_16A171E:       var_498 = (var_478 + "|")
  loc_16A172E:       var_4AC = (var_498 + CVar(var_D8(&H14)))
  loc_16A1737:       var_4BC = (CVar(Proc_6_45_EADFB8(var_BC(&HE), 4)) + "|")
  loc_16A1747:       var_4DC = (var_4BC + CVar(var_D8(&H15)))
  loc_16A1750:       var_4F0 = (var_4DC + "|")
  loc_16A1760:       var_500 = (CVar(Proc_6_45_EADFB8(var_BC(&HF), 4)) + CVar(var_D8(&H16)))
  loc_16A1769:       var_520 = (var_500 + "|")
  loc_16A1779:       var_534 = (var_520 + CVar(var_D8(&H17)))
  loc_16A1782:       var_544 = (CVar(Proc_6_45_EADFB8(var_BC(&H10), 4)) + "|")
  loc_16A1788:       Print 1, var_544
  loc_16A17F8:       Print 1, var_A0
  loc_16A17FE:     End If
  loc_16A1804:     var_86 = (var_86 + 6)
  loc_16A182C:     For var_914 = 3 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_914 'Integer
  loc_16A1838:       If (var_A2 = 3) Then
  loc_16A183B:         GoTo loc_16A21FC
  loc_16A183E:       End If
  loc_16A1E82:       var_74C = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(Me.Fields.Item("Roomtype")), 3), &HA) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day3")), var_86), 4)
  loc_16A1EA4:       var_76C = var_74C & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day4"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day5"))), 4)
  loc_16A1EC6:       var_78C = var_76C & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day6"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day7"))), 4)
  loc_16A1EE8:       var_968 = var_78C & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day8"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day9"))), 4)
  loc_16A1F0A:       var_998 = var_968 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day10"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day11"))), 4)
  loc_16A1F2C:       var_9C8 = var_998 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day12"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day13"))), 4)
  loc_16A1F4E:       var_9F8 = var_9C8 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day14"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day15"))), 4)
  loc_16A1F6C:       var_A20 = Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day16"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day17"))), 4)
  loc_16A1F8E:       var_A50 = var_A20 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day18"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day19"))), 4)
  loc_16A1FB0:       var_A80 = var_A50 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day20"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day21"))), 4)
  loc_16A1FD2:       var_AB0 = var_A80 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day22"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day23"))), 4)
  loc_16A1FF4:       var_AE4 = var_AB0 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day24"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day25"))), 4)
  loc_16A2004:       Print 1, var_9F8 & "|" & var_AE4 & "|"
  loc_16A2197:       var_86 = (var_86 + 1)
  loc_16A21A0:       If (var_86 > &H3C) Then
  loc_16A21A8:         Print 1, var_A0
  loc_16A21B0:         var_86 = 0
  loc_16A21B9:         var_88 = (var_88 + 1)
  loc_16A21CE:         Print 1, Chr(&HC)
  loc_16A21D7:       End If
  loc_16A21DD:       Me.MoveNext
  loc_16A21F6:       If (Me.EOF = &HFF) Then
  loc_16A21F9:         GoTo loc_16A2204
  loc_16A21FC:         ' Referenced from: 16A183B
  loc_16A21FC:       End If
  loc_16A21FF:     Next var_914 'Integer
  loc_16A2204:     ' Referenced from: 16A21F9
  loc_16A2204:     GoTo loc_16A0E40
  loc_16A2207:   End If
  loc_16A2207: End If
  loc_16A220C: Print 1, var_A0
  loc_16A2232: var_14C = (Chr(&H12) + Chr(&HC))
  loc_16A2238: Print 1, CVar(Me.Fields.Item("Day4"))
  loc_16A2249: Close 1
  loc_16A2252: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_16A2262: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_16A226D: Close 1
  loc_16A2277: If (MemVar_1F953BC = "Y") Then
  loc_16A2293:   var_9C = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_16A229D: Else
  loc_16A22B6:   var_9C = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_16A22BD: End If
  loc_16A22BD: Exit Sub
  loc_16A22BE: Proc_6_60_E63754()
  loc_16A22C3: Exit Sub
End Sub

Public Sub Proc_55_38_118E754
  'Data Table: 4AACFC
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_F0 As Variant
  Dim var_14C As Variant
  Dim var_12C As Variant
  Dim var_13C As Variant
  Dim var_118 As MSHFlexGrid
  Dim var_184 As Variant
  Dim var_11C As MSHFlexGrid
  loc_118E38C: var_AC = 1
  loc_118E3A8: var_CC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_118E3B7: var_F0 = Me.FGrid.TextMatrix)
  loc_118E3F3: Set var_118 = Me.Txt
  loc_118E3F9: Call 0.Method_Proc_55_38_118E7540 (CInt(0), var_11C, CVar(Val(CStr(Right(CVar(CStr(var_F0)), 2)))))
  loc_118E42D: If (var_F0 < Month(CVar(var_11C))) Then
  loc_118E43B:   Set var_118 = Me.Txt
  loc_118E441:   Call 0.Method_Proc_55_38_118E7540 (CInt(0), var_11C)
  loc_118E446:   var_AC = 1
  loc_118E462:   var_CC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_118E4A2:   var_12C = (Right(CVar(var_11C), 4) + 1)
  loc_118E4AC:   var_88 = CStr(Me.FGrid.TextMatrix)) & "/" & CStr(CVar(var_11C))
  loc_118E4D3: Else
  loc_118E4DE:   Set var_118 = Me.Txt
  loc_118E4E4:   Call 0.Method_Proc_55_38_118E7540 (CInt(0), var_11C, var_CC)
  loc_118E4E9:   var_AC = 1
  loc_118E505:   var_CC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_118E540:   var_13C = (CVar(CStr(Me.FGrid.TextMatrix)) & "/") + Right(CVar(var_11C), 4))
  loc_118E545:   var_88 = CStr(Month(CVar(var_11C)))
  loc_118E563: End If
  loc_118E56F: If (global_108 = 1) Then
  loc_118E585:   var_14C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118E58D:   var_184 = CVar(CLng(1)) 'Long
  loc_118E5BB:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118E5C3:   var_CC = CVar(CLng(2)) 'Long
  loc_118E5E3:   var_110 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_118E606:   var_1B4 = Trim(Left(CVar(CStr(Me.FGrid.TextMatrix))), &HF))
  loc_118E61C:   Call unk_4AADE0.SEARCHBACKRoomType
  loc_118E645: Else
  loc_118E658:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118E660:   var_CC = CVar(CLng(2)) 'Long
  loc_118E698:   var_14C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118E6AF:   var_13C = Me.FGrid.TextMatrix)
  loc_118E70B:   Proc_146_0_E7E558(1, CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))), CStr(Trim(Left(CVar(CStr(var_13C)), &HF))), var_88, 0, 0, var_13C, CVar(CLng(1)))
  loc_118E73B: End If
  loc_118E748: Me.var_13C.Unload Me
  loc_118E750: Exit Sub
End Sub

Public Sub Proc_55_39_E5534C(arg_C) 'E5534C
  'Data Table: 4AACFC
  Dim var_A0 As Long
  loc_E55320: If (arg_C = 0) Then
  loc_E55336:   var_A0 = CLng(Me.FGrid.Col)
  loc_E5533F: End If
  loc_E55344: Proc_55_39_E5534C = &HFF
End Sub

Public Sub Proc_55_40_E0AAFC
  'Data Table: 4AACFC
  loc_E0AAF5: Proc_55_40_E0AAFC = &HFF
End Sub

Public Sub Proc_55_41_F1EDCC
  'Data Table: 4AACFC
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_C8 As Variant
  loc_F1ECDA: Set var_8C = Me.Txt
  loc_F1ECE0: Call 0.Method_Proc_55_41_F1EDCCC (var_8E, var_86)
  loc_F1ECF0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1ED06:   Set var_8C = Me.Txt
  loc_F1ED0C:   Call 0.Method_Proc_55_41_F1EDCC0 (CInt(var_86), var_98)
  loc_F1ED14:   var_98.Text = vbNullString
  loc_F1ED30:   Set var_8C = Me.Txt
  loc_F1ED36:   Call 0.Method_Proc_55_41_F1EDCC0 (CInt(var_86), var_98)
  loc_F1ED3E:   var_98.Tag = vbNullString
  loc_F1ED4D: Next var_92 'Byte
  loc_F1ED66: Me.FGrid.Rows = 1
  loc_F1ED8C: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_F1ED94: Set var_98 = Me.FGrid
  loc_F1EDC1: Me.FGrid.FixedRows = 1
  loc_F1EDC9: Exit Sub
End Sub

Public Sub Proc_55_42_E7837C(arg_C) 'E7837C
  'Data Table: 4AACFC
  Dim var_98 As TextBox
  loc_E7832A: Set var_8C = Me.Txt
  loc_E78330: Call 0.Method_Proc_55_42_E7837CC (var_8E, var_86)
  loc_E78340: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E78356:   Set var_8C = Me.Txt
  loc_E7835C:   Call 0.Method_Proc_55_42_E7837C0 (CInt(var_86), var_98)
  loc_E78364:   var_98.Enabled = arg_C
  loc_E78373: Next var_92 'Byte
  loc_E78379: Exit Sub
End Sub
