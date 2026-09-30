VERSION 5.00
Begin VB.Form RrLookUpGuest
  Caption = "New Reservation By Guest Reservation History"
  BackColor = &HF9E4CC&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "RrLookUpGuest.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 930
  ClientWidth = 11340
  ClientHeight = 6435
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 5985
    Width = 11340
    Height = 450
    Visible = 0   'False
    TabIndex = 12
  End
  Begin DataGrid DGHelp
    Left = 1875
    Top = 1905
    Width = 10965
    Height = 6690
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin CommandButton Command1z
    Caption = "&Close"
    BackColor = &HBDD7D2&
    Left = 14160
    Top = 5130
    Width = 1545
    Height = 450
    Visible = 0   'False
    TabIndex = 8
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 2
    ForeColor = &HC00000&
    Left = 9735
    Top = 1260
    Width = 1410
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
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
    ForeColor = &HC00000&
    Left = 4290
    Top = 1260
    Width = 1410
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
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
    ForeColor = &HC00000&
    Left = 4290
    Top = 1575
    Width = 6870
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
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
  Begin CommandButton CmdOKz
    Caption = "&OK"
    BackColor = &HBDD7D2&
    Left = 12615
    Top = 5130
    Width = 1545
    Height = 450
    Visible = 0   'False
    TabIndex = 4
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin BtnEnh Command1
    Left = 8265
    Top = 585
    Width = 1080
    Height = 570
    TabIndex = 10
  End
  Begin BtnEnh CmdOK
    Left = 5850
    Top = 585
    Width = 1080
    Height = 570
    TabIndex = 11
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
  Begin Shape Shape2
    BorderColor = &HFF0000&
    Left = 16275
    Top = 3450
    Width = 435
    Height = 630
    Visible = 0   'False
    Shape = 4
    BorderWidth = 2
    FillColor = &HFF0000&
  End
  Begin Label Label1
    Caption = "Arrival Date To"
    Index = 2
    ForeColor = &HC00000&
    Left = 8190
    Top = 1275
    Width = 1425
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
  Begin Label Label1
    Caption = "Arrival Date From"
    Index = 1
    ForeColor = &HC00000&
    Left = 2550
    Top = 1275
    Width = 1680
    Height = 240
    TabIndex = 6
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
    Caption = "Guest Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 2550
    Top = 1590
    Width = 1155
    Height = 240
    TabIndex = 3
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
  Begin Shape Shape1
    BorderColor = &HFF0000&
    Left = 15945
    Top = 1755
    Width = 195
    Height = 975
    Visible = 0   'False
    Shape = 4
    BorderWidth = 2
    FillColor = &HFF0000&
  End
End

Attribute VB_Name = "RrLookUpGuest"

Private global_52 As Integer
Private global_54 As Integer

Private Sub TopCtrl1_UnknownEvent_16 'F93944
  'Data Table: 434638
  Dim var_86 As Integer
  Dim unk_43464A As Connection15
  Dim var_94 As TextBox
  Dim MemVar_1F951A8 As String
  Dim Me As Recordset15
  Dim var_9C As String
  loc_F937E8: On Error Goto loc_F93928
  loc_F937F6: Set var_90 = Me.Txt
  loc_F937FC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_F93804: var_9C = "Name"
  loc_F93825: If (Proc_6_27_EA61EC(var_94, var_9C) = 0) Then
  loc_F93828:   Exit Sub
  loc_F93829: End If
  loc_F9382B: var_86 = &HFF
  loc_F93837: unk_43464A.BeginTrans var_A0
  loc_F9384A: Set var_90 = Me.Txt
  loc_F93850: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C)
  loc_F93858: var_86 = var_94.Tag
  loc_F9386F: MemVar_1F951A8 = CStr(Trim(CVar(var_9C)))
  loc_F93887: unk_43464A.CommitTrans
  loc_F9389A: Set var_90 = Me.Txt
  loc_F938A0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C)
  loc_F938A8: MemVar_1F951A8 = var_94.Tag
  loc_F938BC: var_86 = 0
  loc_F938CA: Me.Requery -1
  loc_F938F4: Me.Find "SearchCode ='" & var_9C & "'", 0, 1
  loc_F9390D: Set var_90 = Me.Txt
  loc_F93913: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, &HFF)
  loc_F9391B: var_94.Enabled = var_D4
  loc_F93927: Exit Sub
  loc_F93928: ' Referenced from: F937E8
  loc_F9392E: If (var_86 = &HFF) Then
  loc_F93937:   unk_43464A.RollbackTrans
  loc_F9393C: End If
  loc_F9393C: Proc_6_60_E63754(var_86)
  loc_F93941: Exit Sub
  loc_F93942: Exit Sub
End Sub

Private Sub CmdOK_UnknownEvent_9 'EDC72C
  'Data Table: 434638
  Dim Me As Recordset15
  Dim var_9C As String
  loc_EDC693: If (Me.RecordCount > 0) Then
  loc_EDC6A4:   Call 0.Method_arg_2B0 (var_9C)
  loc_EDC6AF:   Call RrRoomReservation.TopCtrl1_UnknownEvent_A()
  loc_EDC6BF:   RrRoomReservation.OpenMode = 1
  loc_EDC6FB:   Call RrRoomReservation.SEARCHBACK(CStr(RrRoomReservation.Recordset15.Fields.Item("Code").Value))
  loc_EDC71A:   Me.Global.Unload Me
  loc_EDC727:   Set var_8C = Nothing
  loc_EDC72A: End If
  loc_EDC72A: Exit Sub
End Sub

Private Sub Form_Load() 'F04DA4
  'Data Table: 434638
  Dim var_98 As Variant
  Dim Me As Recordset15
  loc_F04CC0: On Error Goto loc_F04D9E
  loc_F04CDF: Me.Recordset15.CursorLocation = 3
  loc_F04CFB: var_98 = "SELECT Booking.DocId AS CODE, Booking.BookNo AS ResNo, GuestProf.Name, Booking.DocId AS ID, RoomCat.Name AS RoomType, Booking.RoomNo, Booking.ArrDate AS Arr_Date, Booking.NoDays AS tot_Days FROM (ViewBooking Booking LEFT JOIN RoomCat ON Booking.RoomCat = RoomCat.Code) LEFT JOIN GuestProf ON Booking.GuestProf = GuestProf.Code Order By GuestProf.Name,Booking.ArrDate"
  loc_F04D07: Me.Open var_98, CVar(MemVar_1F95044), 3
  loc_F04D15: CVarUnk
  loc_F04D1A: VerifyVarObj
  loc_F04D20: Set var_88 = Me.DGHelp
  loc_F04D26: LateIdStAd
  loc_F04D3D: Call 0.Method_arg_160 (var_88, var_88, New)
  loc_F04D4B: Call 0.Method_arg_164 (var_88, 1)
  loc_F04D53: Call Proc_57_22_E2A7BC(-1)
  loc_F04D6E: Proc_6_23_DFC5B8(Me, 0)
  loc_F04D7D: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_F04D86: var_98 = CVar(CLng(MemVar_1F951B4)) 'Long
  loc_F04D8F: Set var_88 = Me.Timer1
  loc_F04D9D: Exit Sub
  loc_F04D9E: ' Referenced from: F04CC0
  loc_F04D9E: Proc_6_60_E63754(Timer1.DispID_FFFFFE0B, var_98)
  loc_F04DA3: Exit Sub
End Sub

Private Sub Form_Resize() 'E706D4
  'Data Table: 434638
  loc_E7067E: Call 0.Method_arg_50 (var_88)
  loc_E70690: Me.LblFormCaption.Caption = var_88
  loc_E706A9: Me.LblFormCaption.Left = CDbl(0)
  loc_E706B7: Call 0.Method_arg_100 (var_90)
  loc_E706C9: Me.LblFormCaption.Width = var_90
  loc_E706D1: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E1D0B0
  'Data Table: 434638
  loc_E1D09F: Set global_56 = Nothing
  loc_E1D0AB: global_52 = 0
  loc_E1D0AE: Exit Sub
End Sub

Private Sub Form_Activate() 'E0CE98
  'Data Table: 434638
  loc_E0CE89: If (global_54 = &HFF) Then
  loc_E0CE91:   global_54 = 0
  loc_E0CE94: End If
  loc_E0CE94: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E34088
  'Data Table: 434638
  loc_E34065: If (global_52 = &HFF) Then
  loc_E34075:   Me.Global.Unload Me
  loc_E3407D: End If
  loc_E34082: global_54 = &HFF
  loc_E34085: Exit Sub
  loc_E34086: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E340E8
  'Data Table: 434638
  loc_E340BC: On Error Goto loc_E340E0
  loc_E340D7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E340DF: Exit Sub
  loc_E340E0: ' Referenced from: E340BC
  loc_E340E0: Proc_6_60_E63754(Shift)
  loc_E340E5: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1064D90
  'Data Table: 434638
  Dim var_8C As TextBox
  Dim var_98 As Variant
  Dim var_9A As Integer
  Dim Me As Recordset15
  Dim var_B4 As String
  Dim var_90 As Fields15
  loc_1064B26: Set var_88 = Me.Txt
  loc_1064B2C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1064B3A: Proc_6_74_E23240(var_8C)
  loc_1064B55: Set var_88 = Me.Txt
  loc_1064B5B: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1064B63: var_8C.SelStart = 0
  loc_1064B7C: Set var_88 = Me.Txt
  loc_1064B82: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1064B8A: var_94 = var_8C.Text
  loc_1064B9D: Set var_90 = Me.Txt
  loc_1064BA3: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_1064BAB: var_98.SelLength = Len(var_94)
  loc_1064BC1: var_9A = Index
  loc_1064BCC: If (var_9A = CInt(0)) Then
  loc_1064C1D:   Set var_88 = Me.Txt
  loc_1064C23:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_1064C2B:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1064C43:   If (var_9A Or (var_94 = vbNullString)) Then
  loc_1064C46:     Exit Sub
  loc_1064C47:   End If
  loc_1064C54:   Set var_88 = Me.Txt
  loc_1064C5A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1064C62:   var_94 = var_8C.Text
  loc_1064C74:   var_B4 = "Name"
  loc_1064C8B:   var_98 = Me.Fields.Item(var_B4)
  loc_1064CAF:   If CBool(CVar(var_94) <> var_98.Value) Then
  loc_1064CB8:     Me.MoveFirst
  loc_1064CDB:     Set var_88 = Me.Txt
  loc_1064CE1:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_1064CE9:     0 = var_8C.Text
  loc_1064D02:     Me.Find 1 & var_94 & "'", var_B4, var_8C
  loc_1064D17:   End If
  loc_1064D17: End If
  loc_1064D26: Set var_88 = Me.Txt
  loc_1064D2C: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1064D34: var_8C.SelStart = 0
  loc_1064D4D: Set var_88 = Me.Txt
  loc_1064D53: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1064D6E: Set var_90 = Me.Txt
  loc_1064D74: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_1064D7C: var_98.SelLength = Len(var_8C.Text)
  loc_1064D8F: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F023F8
  'Data Table: 434638
  Dim Shift As Integer
  loc_F0232A: If (CLng(Shift) = &H1B) Then
  loc_F0232D:   Exit Sub
  loc_F0232E: End If
  loc_F0233C: If (KeyCode = CInt(0)) Then
  loc_F02349:   If (CLng(Shift) = &HD) Then
  loc_F0234E:     Shift = 0
  loc_F02351:   End If
  loc_F02369:   Set var_A0 = Nothing
  loc_F02374:   Set var_9C = Nothing
  loc_F023A6:   Proc_6_69_134A630(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift, 0)
  loc_F023BA: End If
  loc_F023C2: If (KeyCode = CInt(0)) Then
  loc_F023CF:   If (CLng(Shift) = &H28) Then
  loc_F023D2:     Exit Sub
  loc_F023D3:   End If
  loc_F023D3: End If
  loc_F023E8: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F023F1:   Proc_6_75_E5335C(Shift, arg_14, 1, var_9C)
  loc_F023F6: End If
  loc_F023F6: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E914AC
  'Data Table: 434638
  loc_E9143B: Proc_6_58_E06050(arg_10)
  loc_E9144E: If (KeyAscii = CInt(0)) Then
  loc_E9146D:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E9147F:     var_A0 = "Name"
  loc_E9149A:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_56, arg_10)
  loc_E914A9:   End If
  loc_E914A9: End If
  loc_E914A9: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EAA670
  'Data Table: 434638
  loc_EAA5FE: If (KeyCode = CInt(0)) Then
  loc_EAA61D:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EAA631:     var_A8 = "Name"
  loc_EAA659:     Proc_6_68_12A2818(Me.DGHelp, Me.Txt, CInt(0), global_56)
  loc_EAA66C:   End If
  loc_EAA66C: End If
  loc_EAA66C: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4E6AC
  'Data Table: 434638
  loc_E4E68A: Set var_88 = Me.Txt
  loc_E4E690: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4E69E: Proc_6_73_E23294(var_8C)
  loc_E4E6AA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1217DDC
  'Data Table: 434638
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  Dim var_C8 As TextBox
  loc_121791F: var_86 = Cancel
  loc_121792A: If (var_86 = CInt(0)) Then
  loc_121797B:   Set var_94 = Me.Txt
  loc_1217981:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1217989:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_12179A1:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_12179A4:     Exit Sub
  loc_12179A5:   End If
  loc_12179E0:   Set var_B0 = Me.Txt
  loc_12179E6:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_12179EE:   var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1217A21:   var_98 = Me.Fields.Item("Code")
  loc_1217A3F:   Set var_B0 = Me.Txt
  loc_1217A45:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1217A4D:   var_B4.Tag = CStr(var_98.Value)
  loc_1217A66: Else
  loc_1217A6E:   If Not (var_86 = CInt(1)) Then
  loc_1217A79:     If (var_86 = CInt(2)) Then
  loc_1217A7C:     End If
  loc_1217A86:     Set var_94 = Me.Txt
  loc_1217A8C:     Call 0.Method_Txt_Validate0 (Cancel)
  loc_1217AAC:     Set var_B4 = Me.Txt
  loc_1217AB2:     Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_1217ABA:     var_C8.Text = Proc_6_33_15125B8(var_98)
  loc_1217ADB:     Set var_94 = Me.Txt
  loc_1217AE1:     Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1217B04:     Set var_B0 = Me.Txt
  loc_1217B0A:     Call 0.Method_Txt_Validate0 (CInt(2), var_B4, var_CC)
  loc_1217B12:     (var_98.Text <> vbNullString) = var_B4.Text
  loc_1217B32:     If (var_98 And (var_CC <> vbNullString)) Then
  loc_1217B44:       Me.Filter = 0
  loc_1217B59:       Set var_94 = Me.Txt
  loc_1217B5F:       Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1217B6E:       Proc_6_7_F26918(var_DC, CVar(var_98))
  loc_1217B8E:       Set var_B0 = Me.Txt
  loc_1217B94:       Call 0.Method_Txt_Validate0 (CInt(2), var_B4)
  loc_1217BA3:       Proc_6_7_F26918(var_12C, CVar(var_B4))
  loc_1217BB6:       Me.Filter = "Arr_Date>=" & var_DC & " And Arr_Date<=" & var_12C
  loc_1217BD6:     Else
  loc_1217BE4:       Set var_94 = Me.Txt
  loc_1217BEA:       Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1217C0D:       Set var_B0 = Me.Txt
  loc_1217C13:       Call 0.Method_Txt_Validate0 (CInt(2), var_B4)
  loc_1217C3B:       If ((var_98.Text <> vbNullString) And (var_B4.Text = vbNullString)) Then
  loc_1217C4D:         Me.Filter = 0
  loc_1217C62:         Set var_94 = Me.Txt
  loc_1217C68:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1217C77:         Proc_6_7_F26918(var_DC, CVar(var_98))
  loc_1217C8A:         Me.Filter = "Arr_Date>=" & var_DC
  loc_1217C9E:       Else
  loc_1217CAC:         Set var_94 = Me.Txt
  loc_1217CB2:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1217CD5:         Set var_B0 = Me.Txt
  loc_1217CDB:         Call 0.Method_Txt_Validate0 (CInt(2), var_B4)
  loc_1217D03:         If ((var_98.Text = vbNullString) And (var_B4.Text <> vbNullString)) Then
  loc_1217D15:           Me.Filter = 0
  loc_1217D2A:           Set var_94 = Me.Txt
  loc_1217D30:           Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_1217D3F:           Proc_6_7_F26918(var_DC, CVar(var_98))
  loc_1217D52:           Me.Filter = "Arr_Date<=" & var_DC
  loc_1217D66:         Else
  loc_1217D75:           Me.Filter = 0
  loc_1217D86:           Me.Filter = "CODE<>''"
  loc_1217D8B:         End If
  loc_1217D8B:       End If
  loc_1217D8B:     End If
  loc_1217D99:     Set var_94 = Me.Txt
  loc_1217D9F:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1217DA7:     var_98.Text = vbNullString
  loc_1217DC1:     Set var_94 = Me.Txt
  loc_1217DC7:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1217DCF:     var_98.Tag = vbNullString
  loc_1217DDB:   End If
  loc_1217DDB: End If
  loc_1217DDB: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_18 'E00BE4
  'Data Table: 434638
  loc_E00BDC: Call CmdOK_UnknownEvent_9()
  loc_E00BE1: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'DFC6BC
  'Data Table: 434638
  loc_DFC6B8: Exit Sub
End Sub

Private Sub Command1_UnknownEvent_9 'E180F0
  'Data Table: 434638
  loc_E180E5: Me.Global.Unload Me
  loc_E180ED: Exit Sub
End Sub

Public Function global_52Get() '434E0C
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '434E1B
  global_52 = Value
End Sub

Public Function global_54Get() '434E2A
  global_54Get = global_54
End Function

Public Sub global_54Put(Value) '434E39
  global_54 = Value
End Sub

Public Sub Proc_57_21_E403A0
  'Data Table: 434638
  Dim var_8C As TextBox
  loc_E40382: Set var_88 = Me.Txt
  loc_E40388: Call 0.Method_Proc_57_21_E403A00 (CInt(0), var_8C)
  loc_E40390: var_8C.Tag = vbNullString
  loc_E4039C: Exit Sub
  loc_E4039D: Exit Sub
  loc_E4039E: Exit Sub
End Sub

Public Sub Proc_57_22_E2A7BC
  'Data Table: 434638
  Dim Me As Recordset15
  loc_E2A790: On Error Goto loc_E2A7B6
  loc_E2A7AA: If (Me.RecordCount > 0) Then
  loc_E2A7AD:   GoTo loc_E2A7B5
  loc_E2A7B0: End If
  loc_E2A7B0: Call Proc_57_21_E403A0()
  loc_E2A7B5: ' Referenced from: E2A7AD
  loc_E2A7B5: Exit Sub
  loc_E2A7B6: ' Referenced from: E2A790
  loc_E2A7B6: Proc_6_60_E63754()
  loc_E2A7BB: Exit Sub
End Sub
