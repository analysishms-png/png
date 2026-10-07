VERSION 5.00
Begin VB.Form fdCheckIn
  Caption = "Look Up Reservation By Guest Name"
  BackColor = &HC6B7A4&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  MaxButton = 0   'False
  MinButton = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 615
  ClientWidth = 11340
  ClientHeight = 4515
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
    Top = 0
    Width = 11340
    Height = 450
    Visible = 0   'False
    TabIndex = 6
  End
  Begin BtnEnh CmdOK
    Left = 5400
    Top = 2865
    Width = 1155
    Height = 975
    TabIndex = 5
  End
  Begin PictureBox Picture2
    Picture = "fdCheckIn.frx":0
    Left = 10665
    Top = 6915
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 4
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin TextBox Txt
    Index = 0
    ForeColor = &HC00000&
    Left = 1560
    Top = 615
    Width = 9270
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
  Begin DataGrid DGHelp
    Left = 210
    Top = 915
    Width = 10965
    Height = 3375
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 2
  End
  Begin MSFlexGrid FGPoint
    Left = 15
    Top = 3585
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 3
  End
  Begin Label Label1
    Caption = "Guest Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 360
    Top = 615
    Width = 1155
    Height = 240
    TabIndex = 1
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

Attribute VB_Name = "fdCheckIn"

Private global_52 As Integer
Private global_54 As Integer

Private Sub DGHelp_UnknownEvent_9 'F34B38
  'Data Table: 42DC88
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F34A33: Me.DGHelp.Visible = False
  loc_F34A52: If (Me.RecordCount > 0) Then
  loc_F34A91:   Set var_B4 = Me.Txt
  loc_F34A97:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F34A9F:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F34ACF:   var_B0 = Me.Fields.Item("Name")
  loc_F34AEE:   Set var_B4 = Me.Txt
  loc_F34AF4:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F34AFC:   var_B8.Text = Proc_6_38_E69628(CVar(var_B0))
  loc_F34B10: End If
  loc_F34B1B: Set var_A8 = Me.Txt
  loc_F34B21: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F34B29: var_B0.SetFocus
  loc_F34B35: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E3C8A4
  'Data Table: 42DC88
  loc_E3C898: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E3C89B:   Call DGHelp_UnknownEvent_9()
  loc_E3C8A0: End If
  loc_E3C8A0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'F9288C
  'Data Table: 42DC88
  Dim var_86 As Integer
  Dim unk_42DCAA As Connection15
  Dim var_94 As TextBox
  Dim MemVar_1F951A8 As String
  Dim Me As Recordset15
  Dim var_9C As String
  loc_F92730: On Error Goto loc_F92870
  loc_F9273E: Set var_90 = Me.Txt
  loc_F92744: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_F9274C: var_9C = "Name"
  loc_F9276D: If (Proc_6_27_EA61EC(var_94, var_9C) = 0) Then
  loc_F92770:   Exit Sub
  loc_F92771: End If
  loc_F92773: var_86 = &HFF
  loc_F9277F: unk_42DCAA.BeginTrans var_A0
  loc_F92792: Set var_90 = Me.Txt
  loc_F92798: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C)
  loc_F927A0: var_86 = var_94.Tag
  loc_F927B7: MemVar_1F951A8 = CStr(Trim(CVar(var_9C)))
  loc_F927CF: unk_42DCAA.CommitTrans
  loc_F927E2: Set var_90 = Me.Txt
  loc_F927E8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C)
  loc_F927F0: MemVar_1F951A8 = var_94.Tag
  loc_F92804: var_86 = 0
  loc_F92812: Me.Requery -1
  loc_F9283C: Me.Find "SearchCode ='" & var_9C & "'", 0, 1
  loc_F92855: Set var_90 = Me.Txt
  loc_F9285B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, &HFF)
  loc_F92863: var_94.Enabled = var_D4
  loc_F9286F: Exit Sub
  loc_F92870: ' Referenced from: F92730
  loc_F92876: If (var_86 = &HFF) Then
  loc_F9287F:   unk_42DCAA.RollbackTrans
  loc_F92884: End If
  loc_F92884: Proc_6_60_E63754(var_86)
  loc_F92889: Exit Sub
  loc_F9288A: Exit Sub
End Sub

Private Sub Form_Load() 'F1E63C
  'Data Table: 42DC88
  Dim var_9C As Variant
  Dim var_8C As String
  Dim var_BC As Variant
  Dim Me As Recordset15
  loc_F1E54C: On Error Goto loc_F1E636
  loc_F1E56B: Me.Recordset15.CursorLocation = 3
  loc_F1E573: var_9C = MemVar_1F950EC
  loc_F1E57B: Proc_6_7_F26918(var_AC)
  loc_F1E59E: var_8C = "SELECT Booking.DocId AS CODE, GuestProf.Name, Booking.GuestProf, Booking.DocId AS ID, RoomCat.Name AS RoomType, RoomMast.Code AS RoomNo, Booking.ArrDate AS Arr_Date, Booking.NoDays AS tot_Days,Booking.NoOfRooms as NO_Rooms FROM ((Booking LEFT JOIN RoomCat ON (Booking.RoomType = RoomCat.Type) AND (Booking.RoomCat = RoomCat.Code)) LEFT JOIN RoomMast ON (Booking.RoomType = RoomMast.Type) AND (Booking.RoomNo = RoomMast.Code)) INNER JOIN GuestProf ON Booking.GuestProf = GuestProf.Code WHERE BOOKING.CANCEL='N' AND BOOKING.LOGSITE_CODE='" & MemVar_1F95078
  loc_F1E5A5: var_BC = CVar(var_8C & "' AND (Select Count(Distinct Sno) From GrpBookingDetails Where Not Exists (Select Distinct isnull(BookingDocid,'') As BookingDocId,BookingSno As Sno from GuestFolio Where GrpBookingDetails.BookingDocId=GuestFolio.BookingDocId And GrpBookingDetails.Sno=GuestFolio.BookingSno)And IsNull(Cancel,'')<>'Y' And GrpBookingDetails.ArrDate=") 'String
  loc_F1E5C8: Me.Open var_BC & var_AC & " And GrpBookingDetails.BookingDocid=Booking.DocId)>0" & " ORDER BY GuestProf.Name", CVar(MemVar_1F95044), 3
  loc_F1E5E6: CVarUnk
  loc_F1E5EB: VerifyVarObj
  loc_F1E5F1: Set var_88 = Me.DGHelp
  loc_F1E5F7: LateIdStAd
  loc_F1E60E: Call 0.Method_arg_160 (var_88, var_88, New)
  loc_F1E61C: Call 0.Method_arg_164 (var_88, 1)
  loc_F1E624: Call Proc_60_18_E283CC(-1)
  loc_F1E630: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_F1E635: Exit Sub
  loc_F1E636: ' Referenced from: F1E54C
  loc_F1E636: Proc_6_60_E63754(var_9C)
  loc_F1E63B: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E1E5A0
  'Data Table: 42DC88
  loc_E1E58F: Set global_56 = Nothing
  loc_E1E59B: global_52 = 0
  loc_E1E59E: Exit Sub
End Sub

Private Sub Form_Activate() 'E141E8
  'Data Table: 42DC88
  loc_E141D9: If (global_54 = &HFF) Then
  loc_E141E1:   global_54 = 0
  loc_E141E4: End If
  loc_E141E4: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E3C848
  'Data Table: 42DC88
  loc_E3C825: If (global_52 = &HFF) Then
  loc_E3C835:   Me.Global.Unload Me
  loc_E3C83D: End If
  loc_E3C842: global_54 = &HFF
  loc_E3C845: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E3C428
  'Data Table: 42DC88
  loc_E3C3FC: On Error Goto loc_E3C420
  loc_E3C417: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E3C41F: Exit Sub
  loc_E3C420: ' Referenced from: E3C3FC
  loc_E3C420: Proc_6_60_E63754(Shift)
  loc_E3C425: Exit Sub
  loc_E3C426: Set Shift00 = global_52
End Sub

Private Sub CmdOK_UnknownEvent_9 '100B854
  'Data Table: 42DC88
  Dim var_98 As Variant
  Dim Me As Recordset15
  Dim var_B0 As String
  Dim var_94 As Variant
  Dim var_8E As Integer
  loc_100B66A: Set var_94 = Me.Txt
  loc_100B670: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(0), var_98)
  loc_100B6A7: If ((var_98.Text <> vbNullString) And (Me.RecordCount > 0)) Then
  loc_100B6B8:   var_B0 = "Arr_Date"
  loc_100B6EB:   If (CDate(MemVar_1F950EC) < Me.Fields.Item(var_B0).Value) Then
  loc_100B726:     If (MsgBox(CVar("Guest Arrived Before Arrival Date !" & vbCrLf & "Checked in Anyway?"), &H24, var_E0, var_F0, var_110) = 7) Then
  loc_100B729:       GoTo loc_100B841
  loc_100B72C:     End If
  loc_100B72C:   End If
  loc_100B73A:   Call 0.Method_arg_2B0 (var_B0)
  loc_100B748:   fdWalkInEntry.AdvType = "CHK"
  loc_100B756:   fdWalkInEntry.FrmType = "Check In Entry"
  loc_100B761:   Call fdWalkInEntry.TopCtrl1_UnknownEvent_A()
  loc_100B7B5:   var_E0 = Me.Fields.Item("Code").Value
  loc_100B7CF:   Call fdWalkInEntry.SEARCHBACKPARENT(CStr(fdWalkInEntry.Recordset15.Fields.Item("GuestProf").Value), CStr(var_E0))
  loc_100B816:   Proc_6_39_E7D3A0(var_E0, CVar(fdWalkInEntry.Recordset15.Fields.Item("no_Rooms")))
  loc_100B81F:   var_8E = CInt(var_E0)
  loc_100B839:   Me.Global.Unload Me
  loc_100B841:   ' Referenced from: 100B729
  loc_100B841: End If
  loc_100B846: Set var_88 = Nothing
  loc_100B84E: Set var_8C = Nothing
  loc_100B851: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '10AC83C
  'Data Table: 42DC88
  Dim var_8C As TextBox
  Dim var_98 As Variant
  Dim var_9A As Integer
  Dim Me As Recordset15
  Dim var_B4 As String
  Dim var_90 As Fields15
  loc_10AC582: Set var_88 = Me.Txt
  loc_10AC588: Call 0.Method_Txt_GotFocus0 (Index)
  loc_10AC596: Proc_6_74_E23240(var_8C)
  loc_10AC5B1: Set var_88 = Me.Txt
  loc_10AC5B7: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10AC5BF: var_8C.SelStart = 0
  loc_10AC5D8: Set var_88 = Me.Txt
  loc_10AC5DE: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10AC5E6: var_94 = var_8C.Text
  loc_10AC5F9: Set var_90 = Me.Txt
  loc_10AC5FF: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_10AC607: var_98.SelLength = Len(var_94)
  loc_10AC61A: Call Proc_60_19_E86D90(var_8C)
  loc_10AC622: var_9A = Index
  loc_10AC62D: If (var_9A = CInt(0)) Then
  loc_10AC647:   If (Me.RecordCount > 0) Then
  loc_10AC655:     Set var_8C = Me.FGPoint
  loc_10AC66D:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_10AC67B:   End If
  loc_10AC6C9:   Set var_88 = Me.Txt
  loc_10AC6CF:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_10AC6D7:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_10AC6EF:   If (var_8C Or (var_94 = vbNullString)) Then
  loc_10AC6F2:     Exit Sub
  loc_10AC6F3:   End If
  loc_10AC700:   Set var_88 = Me.Txt
  loc_10AC706:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10AC70E:   var_94 = var_8C.Text
  loc_10AC720:   var_B4 = "Name"
  loc_10AC737:   var_98 = Me.Fields.Item(var_B4)
  loc_10AC75B:   If CBool(CVar(var_94) <> var_98.Value) Then
  loc_10AC764:     Me.MoveFirst
  loc_10AC787:     Set var_88 = Me.Txt
  loc_10AC78D:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_10AC795:     0 = var_8C.Text
  loc_10AC7AE:     Me.Find 1 & var_94 & "'", var_B4, var_9A
  loc_10AC7C3:   End If
  loc_10AC7C3: End If
  loc_10AC7D2: Set var_88 = Me.Txt
  loc_10AC7D8: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10AC7E0: var_8C.SelStart = 0
  loc_10AC7F9: Set var_88 = Me.Txt
  loc_10AC7FF: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10AC81A: Set var_90 = Me.Txt
  loc_10AC820: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_10AC828: var_98.SelLength = Len(var_8C.Text)
  loc_10AC83B: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FA5CC8
  'Data Table: 42DC88
  Dim Me As Recordset15
  loc_FA5B56: If (CLng(Shift) = &H1B) Then
  loc_FA5B59:   Call Proc_60_19_E86D90()
  loc_FA5B5E:   Exit Sub
  loc_FA5B5F: End If
  loc_FA5B6D: If (KeyCode = CInt(0)) Then
  loc_FA5B8D:   Set var_A0 = Me.FGPoint
  loc_FA5B98:   Set var_9C = Nothing
  loc_FA5BCA:   Proc_6_69_134A630(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift, 0)
  loc_FA5C39:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FA5C40:     Set var_9C = Me.DGHelp
  loc_FA5C5F:     Proc_6_138_106E830(var_9C, global_56, KeyCode, Me.FGPoint, 1)
  loc_FA5C6D:   End If
  loc_FA5C6D: End If
  loc_FA5C89: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_FA5CA1:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FA5CAA:     Proc_6_75_E5335C(Shift, arg_14, var_9C)
  loc_FA5CAF:   End If
  loc_FA5CB9:   If (CLng(Shift) = &H26) Then
  loc_FA5CC2:     Proc_6_76_E533C8(Shift, arg_14, var_A0)
  loc_FA5CC7:   End If
  loc_FA5CC7: End If
  loc_FA5CC7: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE0210
  'Data Table: 42DC88
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EE015B: Proc_6_58_E06050(arg_10)
  loc_EE0166: Proc_6_133_E7FB08(var_94)
  loc_EE0183: If (KeyAscii = CInt(0)) Then
  loc_EE01A2:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EE01CF:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_56, CInt(Me.DGHelp.Visible), "Name")
  loc_EE0201:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyAscii, Me.FGPoint)
  loc_EE020F:   End If
  loc_EE020F: End If
  loc_EE020F: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F7D990
  'Data Table: 42DC88
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_F7D84B: var_86 = Cancel
  loc_F7D856: If (var_86 = CInt(0)) Then
  loc_F7D8A7:   Set var_94 = Me.Txt
  loc_F7D8AD:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_F7D8B5:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_F7D8CD:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_F7D8D0:     Exit Sub
  loc_F7D8D1:   End If
  loc_F7D90C:   Set var_B0 = Me.Txt
  loc_F7D912:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_F7D91A:   var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F7D96B:   Set var_B0 = Me.Txt
  loc_F7D971:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_F7D979:   var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F7D98F: End If
  loc_F7D98F: Exit Sub
End Sub

Public Function global_52Get() '42E390
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '42E39F
  global_52 = Value
End Sub

Public Function global_54Get() '42E3AE
  global_54Get = global_54
End Function

Public Sub global_54Put(Value) '42E3BD
  global_54 = Value
End Sub

Public Sub Proc_60_17_E460FC
  'Data Table: 42DC88
  Dim var_8C As TextBox
  loc_E460DE: Set var_88 = Me.Txt
  loc_E460E4: Call 0.Method_Proc_60_17_E460FC0 (CInt(0), var_8C)
  loc_E460EC: var_8C.Tag = vbNullString
  loc_E460F8: Exit Sub
  loc_E460F9: Exit Sub
  loc_E460FA: Set arg_1000 = 
End Sub

Public Sub Proc_60_18_E283CC
  'Data Table: 42DC88
  Dim Me As Recordset15
  loc_E283A0: On Error Goto loc_E283C6
  loc_E283BA: If (Me.RecordCount > 0) Then
  loc_E283BD:   GoTo loc_E283C5
  loc_E283C0: End If
  loc_E283C0: Call Proc_60_17_E460FC()
  loc_E283C5: ' Referenced from: E283BD
  loc_E283C5: Exit Sub
  loc_E283C6: ' Referenced from: E283A0
  loc_E283C6: Proc_6_60_E63754()
  loc_E283CB: Exit Sub
End Sub

Public Sub Proc_60_19_E86D90
  'Data Table: 42DC88
  loc_E86D3C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E86D4E:   Me.DGHelp.Visible = False
  loc_E86D56: End If
  loc_E86D72: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E86D84:   Me.FGPoint.Visible = False
  loc_E86D8C: End If
  loc_E86D8C: Exit Sub
End Sub
