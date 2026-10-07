VERSION 5.00
Begin VB.Form HWIHistory
  Caption = "Walk In by Room History"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "HWIHistory.frx":0
  LinkTopic = "form4"
  MinButton = 0   'False
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11775
  ClientHeight = 8385
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
  Begin DataGrid DGMobileNo
    Left = 11520
    Top = 7290
    Width = 2790
    Height = 2490
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 25
  End
  Begin TextBox Txt
    Index = 6
    ForeColor = &HC00000&
    Left = 4140
    Top = 1020
    Width = 2250
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
  Begin DataGrid DGConfirmationNo
    Left = 11565
    Top = 6585
    Width = 2790
    Height = 2490
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 17
  End
End
End

Attribute VB_Name = "HWIHistory"

Private global_60 As Integer
Private global_62 As Integer
Private global_84 As Byte

Private Sub CmdOK_UnknownEvent_9 'F9871C
  'Data Table: 476274
  Dim var_C8 As Column
  Dim var_8C As Variant
  loc_F985B4: Set var_8C = ()
  loc_F985CB: If (CInt(Txt.DispID_1B) >= 0) Then
  loc_F985DC:   If (ReservationYN = &HFF) Then
  loc_F985E3:     Set var_88 = New RrRoomReservation
  loc_F985F2:     var_88.OpenMode = 1
  loc_F98606:     Set var_8C = var_C8(0)
  loc_F98617:     Set var_C4 = Txt.DispID_69
  loc_F9861D:      = var_88.Columns.Item(var_D8)
  loc_F98625:      = var_C8.Value
  loc_F98631:     var_88.pDocId = var_D8
  loc_F98653:     var_88.TopCtrl1.TopText2 = "Add"
  loc_F9865D:     Call var_88.Show
  loc_F98670:     Me.Global.Unload Me
  loc_F9867B:   Else
  loc_F9867F:     Set var_88 = New fdWalkInEntry
  loc_F9868E:     var_88.OpenMode = 1
  loc_F986A2:     Set var_8C = var_C8(0)
  loc_F986B3:     Set var_C4 = Txt.DispID_69
  loc_F986B9:      = var_88.Columns.Item(var_D8)
  loc_F986C1:      = var_C8.Value
  loc_F986CD:     var_88.pDocId = var_D8
  loc_F986EF:     var_88.TopCtrl1.TopText2 = "Add"
  loc_F986F9:     Call var_88.Show
  loc_F9870C:     Me.Global.Unload Me
  loc_F98714:   End If
  loc_F98714: End If
  loc_F98716: Set var_88 = Nothing 
  loc_F9871A: Exit Sub
End Sub

Private Sub Form_Load() '10AFA38
  'Data Table: 476274
  Dim var_AC As Variant
  Dim var_8C As String
  Dim var_9C As Variant
  Dim Me As Recordset15
  loc_10AF758: On Error Goto loc_10AFA31
  loc_10AF777: Me.Recordset15.CursorLocation = 3
  loc_10AF7A1: var_9C = CVar("Select Code as SearchCode, Code, Name FROM GuestProf Where logsite_code='" & MemVar_1F95078 & "' Order by Name") 'String
  loc_10AF7AB: Me.Open var_9C, CVar(MemVar_1F95044), 2
  loc_10AF7BF: CVarUnk
  loc_10AF7C4: VerifyVarObj
  loc_10AF7CA: Set var_88 = 3(New)
  loc_10AF7D0: LateIdStAd
  loc_10AF7FA: Me.Recordset15.CursorLocation = 3
  loc_10AF824: var_9C = CVar("Select SubCode as SearchCode, SubCode as Code, Name FROM SubGroup WHERE  (Logsite_code='" & MemVar_1F95078 & "' OR LogSite_Code='HO') And  Nature='Customer' Order by Name") 'String
  loc_10AF82E: Me.Open var_9C, CVar(MemVar_1F95044), 2
  loc_10AF842: CVarUnk
  loc_10AF847: VerifyVarObj
  loc_10AF84D: Set var_88 = 3(New)
  loc_10AF853: LateIdStAd
  loc_10AF87D: Me.Recordset15.CursorLocation = 3
  loc_10AF8A7: var_9C = CVar("Select Code as SearchCode, Code as RoomNo From RoomMast where RoomMast.LogSite_Code='" & MemVar_1F95078 & "' and type='RO' Order by Code") 'String
  loc_10AF8B1: Me.Open var_9C, CVar(MemVar_1F95044), 2
  loc_10AF8C5: CVarUnk
  loc_10AF8CA: VerifyVarObj
  loc_10AF8D0: Set var_88 = 3(New)
  loc_10AF8D6: LateIdStAd
  loc_10AF900: Me.Recordset15.CursorLocation = 3
  loc_10AF923: var_8C = "Select DocID as SearchCode, DocID as Code, CONVERT(VARCHAR(8),BookNo) as ConfirmationNo From Booking Where LogSite_Code='" & MemVar_1F95078
  loc_10AF948: CVarUnk
  loc_10AF94D: VerifyVarObj
  loc_10AF953: Set var_88 = Me.DGConfirmationNo
  loc_10AF959: LateIdStAd
  loc_10AF983: Me.DGConfirmationNo.CursorLocation = 3
  loc_10AF9AD: var_9C = CVar("Select Code as SearchCode, MobileNo FROM GuestProf Where logsite_code='" & MemVar_1F95078 & "' Order by MobileNo") 'String
  loc_10AF9B7: ar("Select Code as SearchCode, MobileNo FROM GuestProf Where logsite_code='" & MemVar_1F95078 & "' Order by BookNo"), CVar(MemVar_1F95044), 2 var_9C, CVar(MemVar_1F95044), 2
  loc_10AF9CB: CVarUnk
  loc_10AF9D0: VerifyVarObj
  loc_10AF9D6: Set var_88 = Me.DGMobileNo
  loc_10AF9DC: LateIdStAd
  loc_10AF9F3: Call 0.Method_arg_160 (var_88, var_88, New, 3, -1, var_88, New, 3)
  loc_10AFA01: Call 0.Method_arg_164 (var_88, -1, var_88, -1)
  loc_10AFA10: Call 0.Method_arg_64 (CLng(MemVar_1F951B4), var_88, -1)
  loc_10AFA19: var_AC = CVar(CLng(MemVar_1F951B4)) 'Long
  loc_10AFA22: Set var_88 = Me.SMSTimer
  loc_10AFA30: Exit Sub
  loc_10AFA31: ' Referenced from: 10AF758
  loc_10AFA31: Proc_6_60_E63754(SMSTimer.DispID_FFFFFE0B, var_AC)
  loc_10AFA36: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E8B304
  'Data Table: 476274
  loc_E8B297: Set global_52 = Nothing
  loc_E8B2A3: global_60 = 0
  loc_E8B2B1: Set global_64 = Nothing
  loc_E8B2C3: Set global_68 = Nothing
  loc_E8B2D5: Set global_80 = Nothing
  loc_E8B2E7: Set global_72 = Nothing
  loc_E8B2F9: Set global_76 = Nothing
  loc_E8B300: Exit Sub
End Sub

Private Sub Form_Activate() 'E112A8
  'Data Table: 476274
  loc_E11299: If (global_62 = &HFF) Then
  loc_E112A1:   global_62 = 0
  loc_E112A4: End If
  loc_E112A4: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E32888
  'Data Table: 476274
  loc_E32865: If (global_60 = &HFF) Then
  loc_E32875:   Me.Global.Unload Me
  loc_E3287D: End If
  loc_E32882: global_62 = &HFF
  loc_E32885: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E31C28
  'Data Table: 476274
  loc_E31BFC: On Error Goto loc_E31C20
  loc_E31C17: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E31C1F: Exit Sub
  loc_E31C20: ' Referenced from: E31BFC
  loc_E31C20: Proc_6_60_E63754(Shift)
  loc_E31C25: Exit Sub
End Sub

Private Sub DGCompanyName_UnknownEvent_9 'F3BD34
  'Data Table: 476274
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3BC2B: (False).Visible = 
  loc_F3BC4A: If (Me.RecordCount > 0) Then
  loc_F3BC89:   Set var_B4 = Me.Txt
  loc_F3BC8F:   Call 0.Method_DGCompanyName_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3BC97:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3BCCA:   var_B0 = Me.Fields.Item("Name")
  loc_F3BCE9:   Set var_B4 = Me.Txt
  loc_F3BCEF:   Call 0.Method_DGCompanyName_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3BCF7:   var_B8.Text = CStr(var_B0.Value)
  loc_F3BD0D: End If
  loc_F3BD18: Set var_A8 = Me.Txt
  loc_F3BD1E: Call 0.Method_DGCompanyName_UnknownEvent_90 (CInt(1))
  loc_F3BD26: var_B0.SetFocus
  loc_F3BD32: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'ED9208
  'Data Table: 476274
  loc_ED916C: If (CBool(().Visible) = &HFF) Then
  loc_ED916F:   Call DGRoomNo_UnknownEvent_9()
  loc_ED9174: End If
  loc_ED9190: If (CBool(().Visible) = &HFF) Then
  loc_ED9193:   Call DGGuestName_UnknownEvent_9()
  loc_ED9198: End If
  loc_ED91B4: If (CBool(Me.DGConfirmationNo.Visible) = &HFF) Then
  loc_ED91B7:   Call DGConfirmationNo_UnknownEvent_9()
  loc_ED91BC: End If
  loc_ED91D8: If (CBool(().Visible) = &HFF) Then
  loc_ED91DB:   Call DGCompanyName_UnknownEvent_9()
  loc_ED91E0: End If
  loc_ED91FC: If (CBool(Me.DGMobileNo.Visible) = &HFF) Then
  loc_ED91FF:   Call DGMobileNo_UnknownEvent_9()
  loc_ED9204: End If
  loc_ED9204: Exit Sub
End Sub

Private Sub DGConfirmationNo_UnknownEvent_9 'F3B914
  'Data Table: 476274
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3B80B: Me.DGConfirmationNo.Visible = False
  loc_F3B82A: If (Me.RecordCount > 0) Then
  loc_F3B869:   Set var_B4 = Me.Txt
  loc_F3B86F:   Call 0.Method_DGConfirmationNo_UnknownEvent_90 (CInt(5), var_B8)
  loc_F3B877:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3B8AA:   var_B0 = Me.Fields.Item("ConfirmationNo")
  loc_F3B8C9:   Set var_B4 = Me.Txt
  loc_F3B8CF:   Call 0.Method_DGConfirmationNo_UnknownEvent_90 (CInt(5), var_B8)
  loc_F3B8D7:   var_B8.Text = CStr(var_B0.Value)
  loc_F3B8ED: End If
  loc_F3B8F8: Set var_A8 = Me.Txt
  loc_F3B8FE: Call 0.Method_DGConfirmationNo_UnknownEvent_90 (CInt(5))
  loc_F3B906: var_B0.SetFocus
  loc_F3B912: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_18 'DFE67C
  'Data Table: 476274
  loc_DFE674: Call CmdOK_UnknownEvent_9()
  loc_DFE679: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'DFC584
  'Data Table: 476274
  loc_DFC580: Exit Sub
End Sub

Private Sub DGGuestName_UnknownEvent_9 'F3B654
  'Data Table: 476274
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3B54B: (False).Visible = 
  loc_F3B56A: If (Me.RecordCount > 0) Then
  loc_F3B5A9:   Set var_B4 = Me.Txt
  loc_F3B5AF:   Call 0.Method_DGGuestName_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3B5B7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3B5EA:   var_B0 = Me.Fields.Item("Name")
  loc_F3B609:   Set var_B4 = Me.Txt
  loc_F3B60F:   Call 0.Method_DGGuestName_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3B617:   var_B8.Text = CStr(var_B0.Value)
  loc_F3B62D: End If
  loc_F3B638: Set var_A8 = Me.Txt
  loc_F3B63E: Call 0.Method_DGGuestName_UnknownEvent_90 (CInt(0))
  loc_F3B646: var_B0.SetFocus
  loc_F3B652: Exit Sub
End Sub

Private Sub DGMobileNo_UnknownEvent_9 'F42714
  'Data Table: 476274
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4260B: Me.DGMobileNo.Visible = False
  loc_F4262A: If (Me.RecordCount > 0) Then
  loc_F42669:   Set var_B4 = Me.Txt
  loc_F4266F:   Call 0.Method_DGMobileNo_UnknownEvent_90 (CInt(6), var_B8)
  loc_F42677:   var_B8.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_F426AA:   var_B0 = Me.Fields.Item("MobileNo")
  loc_F426C9:   Set var_B4 = Me.Txt
  loc_F426CF:   Call 0.Method_DGMobileNo_UnknownEvent_90 (CInt(6), var_B8)
  loc_F426D7:   var_B8.Text = CStr(var_B0.Value)
  loc_F426ED: End If
  loc_F426F8: Set var_A8 = Me.Txt
  loc_F426FE: Call 0.Method_DGMobileNo_UnknownEvent_90 (CInt(6))
  loc_F42706: var_B0.SetFocus
  loc_F42712: Exit Sub
End Sub

Private Sub Command1_UnknownEvent_9 'E6C908
  'Data Table: 476274
  loc_E6C8B9: Me.Global.Unload Me
  loc_E6C8CF: If (ReservationYN = &HFF) Then
  loc_E6C8E2:   Me.Global.Load MemVar_1F964EC
  loc_E6C8ED: Else
  loc_E6C8FD:   Me.Global.Load MemVar_1F95970
  loc_E6C905: End If
  loc_E6C905: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '14ABF30
  'Data Table: 476274
  Dim var_94 As TextBox
  Dim var_A0 As Variant
  Dim var_A2 As Integer
  Dim var_BC As Variant
  Dim var_98 As Variant
  Dim Me As Recordset15
  loc_14AB25A: Set var_90 = Me.Txt
  loc_14AB260: Call 0.Method_Txt_GotFocus0 (Index)
  loc_14AB26E: Proc_6_74_E23240(var_94)
  loc_14AB289: Set var_90 = Me.Txt
  loc_14AB28F: Call 0.Method_Txt_GotFocus0 (Index, var_94)
  loc_14AB297: var_94.SelStart = 0
  loc_14AB2B0: Set var_90 = Me.Txt
  loc_14AB2B6: Call 0.Method_Txt_GotFocus0 (Index, var_94)
  loc_14AB2BE: var_9C = var_94.Text
  loc_14AB2D1: Set var_98 = Me.Txt
  loc_14AB2D7: Call 0.Method_Txt_GotFocus0 (Index, var_A0)
  loc_14AB2DF: var_A0.SelLength = Len(var_9C)
  loc_14AB2F2: Call Proc_65_26_F7072C(var_94)
  loc_14AB2FA: var_A2 = Index
  loc_14AB305: If (var_A2 = CInt(0)) Then
  loc_14AB316:   Set var_98 = Me.Txt
  loc_14AB31C:   Call 0.Method_Txt_GotFocus0 (CInt(0), var_A0)
  loc_14AB337:   Set var_90 = Me.Txt
  loc_14AB33D:   Call 0.Method_Txt_GotFocus0 (CInt(0), var_94)
  loc_14AB355:   var_BC = CVar(((var_94.Top + var_A0.Height) + CDbl(&H19))) 'Single
  loc_14AB364:   var_A2(var_BC).Top = 
  loc_14AB384:   Set var_90 = Me.Txt
  loc_14AB38A:   Call 0.Method_Txt_GotFocus0 (CInt(0), var_94)
  loc_14AB3A9:   (CVar(var_94.Left)).Left = 
  loc_14AB3CE:   If (Me.RecordCount > 0) Then
  loc_14AB3DC:     Set var_94 = ()
  loc_14AB3F4:     Proc_6_137_1192FDC((), global_68)
  loc_14AB402:   End If
  loc_14AB450:   Set var_90 = Me.Txt
  loc_14AB456:   Call 0.Method_Txt_GotFocus0 (Index, var_94, var_9C)
  loc_14AB45E:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_14AB476:   If (Index Or (var_9C = vbNullString)) Then
  loc_14AB479:     Exit Sub
  loc_14AB47A:   End If
  loc_14AB487:   Set var_90 = Me.Txt
  loc_14AB48D:   Call 0.Method_Txt_GotFocus0 (Index, var_94)
  loc_14AB495:   var_9C = var_94.Text
  loc_14AB4A7:   var_BC = "Name"
  loc_14AB4BE:   var_A0 = Me.Fields.Item(var_BC)
  loc_14AB4E2:   If CBool(CVar(var_9C) <> var_A0.Value) Then
  loc_14AB4EB:     Me.MoveFirst
  loc_14AB50E:     Set var_90 = Me.Txt
  loc_14AB514:     Call 0.Method_Txt_GotFocus0 (Index, var_94, var_9C, "Name ='")
  loc_14AB51C:     0 = var_94.Text
  loc_14AB535:     Me.Find 1 & var_9C & "'", var_BC, var_94
  loc_14AB54A:   End If
  loc_14AB54D: Else
  loc_14AB555:   If (var_A2 = CInt(6)) Then
  loc_14AB566:     Set var_98 = Me.Txt
  loc_14AB56C:     Call 0.Method_Txt_GotFocus0 (CInt(6), var_A0)
  loc_14AB587:     Set var_90 = Me.Txt
  loc_14AB58D:     Call 0.Method_Txt_GotFocus0 (CInt(6), var_94)
  loc_14AB5A5:     var_BC = CVar(((var_94.Top + var_A0.Height) + CDbl(&H19))) 'Single
  loc_14AB5B4:     Me.DGMobileNo.Top = var_BC
  loc_14AB5D4:     Set var_90 = Me.Txt
  loc_14AB5DA:     Call 0.Method_Txt_GotFocus0 (CInt(6), var_94)
  loc_14AB5F9:     Me.DGMobileNo.Left = CVar(var_94.Left)
  loc_14AB61E:     If (Me.RecordCount > 0) Then
  loc_14AB62C:       Set var_94 = ()
  loc_14AB644:       Proc_6_137_1192FDC(Me.DGMobileNo, global_80)
  loc_14AB652:     End If
  loc_14AB6A0:     Set var_90 = Me.Txt
  loc_14AB6A6:     Call 0.Method_Txt_GotFocus0 (Index, var_94, var_9C)
  loc_14AB6AE:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_14AB6C6:     If (Index Or (var_9C = vbNullString)) Then
  loc_14AB6C9:       Exit Sub
  loc_14AB6CA:     End If
  loc_14AB6D7:     Set var_90 = Me.Txt
  loc_14AB6DD:     Call 0.Method_Txt_GotFocus0 (Index, var_94)
  loc_14AB6E5:     var_9C = var_94.Text
  loc_14AB6F7:     var_BC = "MobileNo"
  loc_14AB70E:     var_A0 = Me.Fields.Item(var_BC)
  loc_14AB732:     If CBool(CVar(var_9C) <> var_A0.Value) Then
  loc_14AB73B:       Me.MoveFirst
  loc_14AB75E:       Set var_90 = Me.Txt
  loc_14AB764:       Call 0.Method_Txt_GotFocus0 (Index, var_94, var_9C, "MobileNo ='")
  loc_14AB76C:       0 = var_94.Text
  loc_14AB785:       Me.Find 1 & var_9C & "'", var_BC, var_94
  loc_14AB79A:     End If
  loc_14AB79D:   Else
  loc_14AB7A5:     If (var_A2 = CInt(1)) Then
  loc_14AB7B6:       Set var_98 = Me.Txt
  loc_14AB7BC:       Call 0.Method_Txt_GotFocus0 (CInt(1), var_A0)
  loc_14AB7D7:       Set var_90 = Me.Txt
  loc_14AB7DD:       Call 0.Method_Txt_GotFocus0 (CInt(1), var_94)
  loc_14AB7F5:       var_BC = CVar(((var_94.Top + var_A0.Height) + CDbl(&H19))) 'Single
  loc_14AB804:       (var_BC).Top = 
  loc_14AB824:       Set var_90 = Me.Txt
  loc_14AB82A:       Call 0.Method_Txt_GotFocus0 (CInt(1), var_94)
  loc_14AB849:       (CVar(var_94.Left)).Left = 
  loc_14AB86E:       If (Me.RecordCount > 0) Then
  loc_14AB87C:         Set var_94 = ()
  loc_14AB894:         Proc_6_137_1192FDC((), global_72)
  loc_14AB8A2:       End If
  loc_14AB8F0:       Set var_90 = Me.Txt
  loc_14AB8F6:       Call 0.Method_Txt_GotFocus0 (Index, var_94, var_9C)
  loc_14AB8FE:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_14AB924:       If (var_94 Or (Proc_6_38_E69628(CVar(var_9C), Index) = vbNullString)) Then
  loc_14AB927:         Exit Sub
  loc_14AB928:       End If
  loc_14AB935:       Set var_90 = Me.Txt
  loc_14AB93B:       Call 0.Method_Txt_GotFocus0 (Index, var_94)
  loc_14AB943:       var_9C = var_94.Text
  loc_14AB955:       var_BC = "Name"
  loc_14AB96C:       var_A0 = Me.Fields.Item(var_BC)
  loc_14AB990:       If CBool(CVar(var_9C) <> var_A0.Value) Then
  loc_14AB999:         Me.MoveFirst
  loc_14AB9BC:         Set var_90 = Me.Txt
  loc_14AB9C2:         Call 0.Method_Txt_GotFocus0 (Index, var_94, var_9C, "Name ='")
  loc_14AB9CA:         0 = var_94.Text
  loc_14AB9E3:         Me.Find 1 & var_9C & "'", var_BC, 
  loc_14AB9F8:       End If
  loc_14AB9FB:     Else
  loc_14ABA03:       If (var_A2 = CInt(2)) Then
  loc_14ABA14:         Set var_98 = Me.Txt
  loc_14ABA1A:         Call 0.Method_Txt_GotFocus0 (CInt(2), var_A0)
  loc_14ABA35:         Set var_90 = Me.Txt
  loc_14ABA3B:         Call 0.Method_Txt_GotFocus0 (CInt(2), var_94)
  loc_14ABA53:         var_BC = CVar(((var_94.Top + var_A0.Height) + CDbl(&H19))) 'Single
  loc_14ABA62:         (var_BC).Top = 
  loc_14ABA82:         Set var_90 = Me.Txt
  loc_14ABA88:         Call 0.Method_Txt_GotFocus0 (CInt(2), var_94)
  loc_14ABAA7:         (CVar(var_94.Left)).Left = 
  loc_14ABACC:         If (Me.RecordCount > 0) Then
  loc_14ABADA:           Set var_94 = ()
  loc_14ABAF2:           Proc_6_137_1192FDC((), global_64)
  loc_14ABB00:         End If
  loc_14ABB4E:         Set var_90 = Me.Txt
  loc_14ABB54:         Call 0.Method_Txt_GotFocus0 (Index, var_94, var_9C)
  loc_14ABB5C:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_14ABB82:         If (var_94 Or (Proc_6_38_E69628(CVar(var_9C), Index) = vbNullString)) Then
  loc_14ABB85:           Exit Sub
  loc_14ABB86:         End If
  loc_14ABB93:         Set var_90 = Me.Txt
  loc_14ABB99:         Call 0.Method_Txt_GotFocus0 (Index, var_94)
  loc_14ABBA1:         var_9C = var_94.Text
  loc_14ABBB3:         var_BC = "RoomNo"
  loc_14ABBCA:         var_A0 = Me.Fields.Item(var_BC)
  loc_14ABBEE:         If CBool(CVar(var_9C) <> var_A0.Value) Then
  loc_14ABBF7:           Me.MoveFirst
  loc_14ABC1A:           Set var_90 = Me.Txt
  loc_14ABC20:           Call 0.Method_Txt_GotFocus0 (Index, var_94, var_9C, "RoomNo ='")
  loc_14ABC28:           0 = var_94.Text
  loc_14ABC41:           Me.Find 1 & var_9C & "'", var_BC, 
  loc_14ABC56:         End If
  loc_14ABC59:       Else
  loc_14ABC61:         If (var_A2 = CInt(5)) Then
  loc_14ABC72:           Set var_98 = Me.Txt
  loc_14ABC78:           Call 0.Method_Txt_GotFocus0 (CInt(5), var_A0)
  loc_14ABC93:           Set var_90 = Me.Txt
  loc_14ABC99:           Call 0.Method_Txt_GotFocus0 (CInt(5), var_94)
  loc_14ABCB1:           var_BC = CVar(((var_94.Top + var_A0.Height) + CDbl(&H19))) 'Single
  loc_14ABCC0:           Me.DGConfirmationNo.Top = var_BC
  loc_14ABCE0:           Set var_90 = Me.Txt
  loc_14ABCE6:           Call 0.Method_Txt_GotFocus0 (CInt(5), var_94)
  loc_14ABD05:           Me.DGConfirmationNo.Left = CVar(var_94.Left)
  loc_14ABD2A:           If (Me.RecordCount > 0) Then
  loc_14ABD38:             Set var_94 = ()
  loc_14ABD50:             Proc_6_137_1192FDC(Me.DGConfirmationNo, global_76)
  loc_14ABD5E:           End If
  loc_14ABDAC:           Set var_90 = Me.Txt
  loc_14ABDB2:           Call 0.Method_Txt_GotFocus0 (Index, var_94, var_9C)
  loc_14ABDBA:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_14ABDE0:           If (var_94 Or (Proc_6_38_E69628(CVar(var_9C), Index) = vbNullString)) Then
  loc_14ABDE3:             Exit Sub
  loc_14ABDE4:           End If
  loc_14ABDF1:           Set var_90 = Me.Txt
  loc_14ABDF7:           Call 0.Method_Txt_GotFocus0 (Index, var_94)
  loc_14ABDFF:           var_9C = var_94.Text
  loc_14ABE11:           var_BC = "ConfirmationNo"
  loc_14ABE28:           var_A0 = Me.Fields.Item(var_BC)
  loc_14ABE4C:           If CBool(CVar(var_9C) <> var_A0.Value) Then
  loc_14ABE55:             Me.MoveFirst
  loc_14ABE78:             Set var_90 = Me.Txt
  loc_14ABE7E:             Call 0.Method_Txt_GotFocus0 (Index, var_94, var_9C, "Code ='")
  loc_14ABE86:             0 = var_94.Tag
  loc_14ABE9F:             Me.Find 1 & var_9C & "'", var_BC, 
  loc_14ABEB4:           End If
  loc_14ABEB4:         End If
  loc_14ABEB4:       End If
  loc_14ABEB4:     End If
  loc_14ABEB4:   End If
  loc_14ABEB4: End If
  loc_14ABEC3: Set var_90 = Me.Txt
  loc_14ABEC9: Call 0.Method_Txt_GotFocus0 (Index, var_94)
  loc_14ABED1: var_94.SelStart = 0
  loc_14ABEEA: Set var_90 = Me.Txt
  loc_14ABEF0: Call 0.Method_Txt_GotFocus0 (Index, var_94)
  loc_14ABF0B: Set var_98 = Me.Txt
  loc_14ABF11: Call 0.Method_Txt_GotFocus0 (Index, var_A0)
  loc_14ABF19: var_A0.SelLength = Len(var_94.Text)
  loc_14ABF2C: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '12CDCCC
  'Data Table: 476274
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As DataGrid
  Dim var_9C As DataGrid
  Dim var_A0 As DataGrid
  loc_12CD662: If (CLng(Shift) = &H1B) Then
  loc_12CD665:   Call Proc_65_26_F7072C()
  loc_12CD66A:   Exit Sub
  loc_12CD66B: End If
  loc_12CD66E: var_88 = KeyCode
  loc_12CD679: If (var_88 = CInt(0)) Then
  loc_12CD6A4:   Set var_9C = Nothing
  loc_12CD6D6:   Proc_6_69_134A630((var_88), Me.Txt, CInt(0), global_68, Shift)
  loc_12CD745:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12CD74C:     Set var_9C = 2(0)
  loc_12CD753:     Set var_90 = ()(var_9C)
  loc_12CD76B:     Proc_6_138_106E830(var_9C, global_68, KeyCode)
  loc_12CD779:   End If
  loc_12CD77C: Else
  loc_12CD784:   If (var_88 = CInt(6)) Then
  loc_12CD7A4:     Set var_A0 = 0(var_90)
  loc_12CD7AF:     Set var_9C = Nothing
  loc_12CD7E1:     Proc_6_69_134A630(Me.DGMobileNo, Me.Txt, CInt(6), global_80, Shift)
  loc_12CD850:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12CD857:       Set var_9C = Me.DGMobileNo
  loc_12CD876:       Proc_6_138_106E830(var_9C, global_80, KeyCode, 1(0))
  loc_12CD884:     End If
  loc_12CD887:   Else
  loc_12CD88F:     If (var_88 = CInt(1)) Then
  loc_12CD8BA:       Set var_9C = Nothing
  loc_12CD8EC:       Proc_6_69_134A630((0)(var_9C), Me.Txt, CInt(1), global_72, Shift)
  loc_12CD95B:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12CD962:         Set var_9C = 2(0)
  loc_12CD969:         Set var_90 = (0)(var_9C)
  loc_12CD981:         Proc_6_138_106E830(var_9C, global_72, KeyCode)
  loc_12CD98F:       End If
  loc_12CD992:     Else
  loc_12CD99A:       If (var_88 = CInt(2)) Then
  loc_12CD9C5:         Set var_9C = Nothing
  loc_12CD9F7:         Proc_6_69_134A630(0(Me.Txt), Me.Txt, CInt(2), global_64, Shift)
  loc_12CDA66:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12CDA6D:           Set var_9C = 1(0)
  loc_12CDA74:           Set var_90 = ()(var_9C)
  loc_12CDA8C:           Proc_6_138_106E830(var_9C, global_64, KeyCode)
  loc_12CDA9A:         End If
  loc_12CDA9D:       Else
  loc_12CDAA5:         If (var_88 = CInt(5)) Then
  loc_12CDAC5:           Set var_A0 = 0(var_90)
  loc_12CDAD0:           Set var_9C = Nothing
  loc_12CDB02:           Proc_6_69_134A630(Me.DGConfirmationNo, Me.Txt, CInt(5), global_76, Shift)
  loc_12CDB71:           If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12CDB78:             Set var_9C = Me.DGConfirmationNo
  loc_12CDB97:             Proc_6_138_106E830(var_9C, global_76, KeyCode, 2(0))
  loc_12CDBA5:           End If
  loc_12CDBA5:         End If
  loc_12CDBA5:       End If
  loc_12CDBA5:     End If
  loc_12CDBA5:   End If
  loc_12CDBA5: End If
  loc_12CDC31: If (( And (CBool((( And (CBool(0(((CBool(var_A0(var_9C).Visible) = 0) And (CBool(Me.DGMobileNo.Visible) = 0))).Visible) = 0))).Visible) = 0)) And (CBool(Me.DGConfirmationNo.Visible) = 0)) Then
  loc_12CDC52:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(5))) Then
  loc_12CDC5B:     Proc_6_75_E5335C(Shift)
  loc_12CDC60:   End If
  loc_12CDC7E:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(5))) Then
  loc_12CDC89:     Call Txt_Validate(KeyCode)
  loc_12CDC8E:   End If
  loc_12CDCA3:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_12CDCAC:     Proc_6_75_E5335C(Shift, arg_14)
  loc_12CDCB1:   End If
  loc_12CDCBB:   If (CLng(Shift) = &H26) Then
  loc_12CDCC4:     Proc_6_76_E533C8(Shift, arg_14)
  loc_12CDCC9:   End If
  loc_12CDCC9: End If
  loc_12CDCC9: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '10DD108
  'Data Table: 476274
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_94 As Variant
  loc_10DCDF7: Proc_6_58_E06050(arg_10)
  loc_10DCE02: Proc_6_133_E7FB08(var_94)
  loc_10DCE0B: arg_10 = CInt(var_94)
  loc_10DCE14: var_96 = KeyAscii
  loc_10DCE1F: If (var_96 = CInt(0)) Then
  loc_10DCE3E:   If (CBool(arg_10(var_96).Visible) = &HFF) Then
  loc_10DCE6B:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, arg_10)
  loc_10DCE85:     Set var_A8 = (arg_10)
  loc_10DCE9D:     Proc_6_138_106E830(0("Name"), global_68)
  loc_10DCEAB:   End If
  loc_10DCEAE: Else
  loc_10DCEB6:   If (var_96 = CInt(6)) Then
  loc_10DCED5:     If (CBool(Me.DGMobileNo.Visible) = &HFF) Then
  loc_10DCF02:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_80, arg_10)
  loc_10DCF1C:       Set var_A8 = 0("MobileNo")
  loc_10DCF34:       Proc_6_138_106E830(Me.DGMobileNo, global_80, KeyAscii)
  loc_10DCF42:     End If
  loc_10DCF45:   Else
  loc_10DCF4D:     If (var_96 = CInt(1)) Then
  loc_10DCF6C:       If (CBool(KeyAscii(var_A8).Visible) = &HFF) Then
  loc_10DCF99:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_72, arg_10)
  loc_10DCFB3:         Set var_A8 = (var_A8)
  loc_10DCFCB:         Proc_6_138_106E830(0("Name"), global_72)
  loc_10DCFD9:       End If
  loc_10DCFDC:     Else
  loc_10DCFE4:       If (var_96 = CInt(2)) Then
  loc_10DD003:         If (CBool(var_A8(KeyAscii).Visible) = &HFF) Then
  loc_10DD030:           Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64)
  loc_10DD04A:           Set var_A8 = (0)
  loc_10DD062:           Proc_6_138_106E830("RoomNo"(arg_10), global_64)
  loc_10DD070:         End If
  loc_10DD073:       Else
  loc_10DD07B:         If (var_96 = CInt(5)) Then
  loc_10DD09A:           If (CBool(Me.DGConfirmationNo.Visible) = &HFF) Then
  loc_10DD0C7:             Proc_6_89_1470B00(Me.Txt, KeyAscii, global_76, arg_10)
  loc_10DD0E1:             Set var_A8 = 0("ConfirmationNo")
  loc_10DD0F9:             Proc_6_138_106E830(Me.DGConfirmationNo, global_76, KeyAscii)
  loc_10DD107:           End If
  loc_10DD107:         End If
  loc_10DD107:       End If
  loc_10DD107:     End If
  loc_10DD107:   End If
  loc_10DD107: End If
  loc_10DD107: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E49FFC
  'Data Table: 476274
  loc_E49FDA: Set var_88 = Me.Txt
  loc_E49FE0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E49FEE: Proc_6_73_E23294(var_8C)
  loc_E49FFA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1330574
  'Data Table: 476274
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  Dim var_E8 As TextBox
  loc_132FDCF: var_86 = Cancel
  loc_132FDDA: If (var_86 = CInt(0)) Then
  loc_132FE2B:   Set var_94 = Me.Txt
  loc_132FE31:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_132FE39:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_132FE51:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_132FE54:     Exit Sub
  loc_132FE55:   End If
  loc_132FE90:   Set var_B0 = Me.Txt
  loc_132FE96:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_132FE9E:   var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_132FED1:   var_98 = Me.Fields.Item("Code")
  loc_132FEEF:   Set var_B0 = Me.Txt
  loc_132FEF5:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_132FEFD:   var_B4.Tag = CStr(var_98.Value)
  loc_132FF13:   Call FillDetail()
  loc_132FF1B: Else
  loc_132FF23:   If (var_86 = CInt(1)) Then
  loc_132FF74:     Set var_94 = Me.Txt
  loc_132FF7A:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_132FF9A:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_132FF9D:       Exit Sub
  loc_132FF9E:     End If
  loc_132FFD9:     Set var_B0 = Me.Txt
  loc_132FFDF:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_132FFE7:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_133001A:     var_98 = Me.Fields.Item("Code")
  loc_133002B:     var_9C = CStr(var_98.Value)
  loc_1330038:     Set var_B0 = Me.Txt
  loc_133003E:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1330046:     var_B4.Tag = var_9C
  loc_133005C:     Call FillDetail()
  loc_1330064:   Else
  loc_133006C:     If (var_86 = CInt(6)) Then
  loc_133007A:       Set var_94 = Me.Txt
  loc_1330080:       Call 0.Method_Txt_Validate0 (CInt(6))
  loc_13300A9:       If CBool(Trim(CVar(var_98)) <> vbNullString) Then
  loc_13300AC:       End If
  loc_13300FA:       Set var_94 = Me.Txt
  loc_1330100:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1330108:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1330120:       If (var_98 Or (var_9C = vbNullString)) Then
  loc_1330130:         Set var_94 = Me.Txt
  loc_1330136:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_133013E:         var_98.Tag = vbNullString
  loc_133014A:         Exit Sub
  loc_133014B:       End If
  loc_1330186:       Set var_B0 = Me.Txt
  loc_133018C:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1330194:       var_B4.Text = CStr(Me.Fields.Item("MobileNo").Value)
  loc_13301C7:       var_98 = Me.Fields.Item("SearchCode")
  loc_13301D8:       var_9C = CStr(var_98.Value)
  loc_13301E5:       Set var_B0 = Me.Txt
  loc_13301EB:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13301F3:       var_B4.Tag = var_9C
  loc_1330209:       Call FillDetail()
  loc_1330211:     Else
  loc_1330219:       If (var_86 = CInt(2)) Then
  loc_1330227:         Set var_94 = Me.Txt
  loc_133022D:         Call 0.Method_Txt_Validate0 (CInt(2))
  loc_1330256:         If CBool(Trim(CVar(var_98)) <> vbNullString) Then
  loc_1330259:         End If
  loc_13302A7:         Set var_94 = Me.Txt
  loc_13302AD:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_13302B5:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_13302CD:         If (var_98 Or (var_9C = vbNullString)) Then
  loc_13302DD:           Set var_94 = Me.Txt
  loc_13302E3:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13302EB:           var_98.Tag = vbNullString
  loc_13302F7:           Exit Sub
  loc_13302F8:         End If
  loc_1330333:         Set var_B0 = Me.Txt
  loc_1330339:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1330341:         var_B4.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_1330374:         var_98 = Me.Fields.Item("SearchCode")
  loc_1330392:         Set var_B0 = Me.Txt
  loc_1330398:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13303A0:         var_B4.Tag = CStr(var_98.Value)
  loc_13303B6:         Call FillDetail()
  loc_13303BE:       Else
  loc_13303C6:         If Not (var_86 = CInt(3)) Then
  loc_13303D1:           If (var_86 = CInt(4)) Then
  loc_13303D4:           End If
  loc_13303DE:           Set var_94 = Me.Txt
  loc_13303E4:           Call 0.Method_Txt_Validate0 (Cancel)
  loc_13303F7:           var_9C = Proc_6_33_15125B8(var_98)
  loc_1330404:           Set var_B4 = Me.Txt
  loc_133040A:           Call 0.Method_Txt_Validate0 (Cancel, var_E8)
  loc_1330412:           var_E8.Text = var_9C
  loc_1330425:           Call FillDetail()
  loc_133042D:         Else
  loc_1330435:           If (var_86 = CInt(5)) Then
  loc_1330486:             Set var_94 = Me.Txt
  loc_133048C:             Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1330494:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_13304AC:             If (var_98 Or (var_9C = vbNullString)) Then
  loc_13304AF:               Exit Sub
  loc_13304B0:             End If
  loc_13304EB:             Set var_B0 = Me.Txt
  loc_13304F1:             Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13304F9:             var_B4.Text = CStr(Me.Fields.Item("ConfirmationNo").Value)
  loc_133054A:             Set var_B0 = Me.Txt
  loc_1330550:             Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1330558:             var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_133056E:             Call FillDetail()
  loc_1330573:           End If
  loc_1330573:         End If
  loc_1330573:       End If
  loc_1330573:     End If
  loc_1330573:   End If
  loc_1330573: End If
  loc_1330573: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_9 'F3A9F4
  'Data Table: 476274
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3A8EB: (False).Visible = 
  loc_F3A90A: If (Me.RecordCount > 0) Then
  loc_F3A949:   Set var_B4 = Me.Txt
  loc_F3A94F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3A957:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3A98A:   var_B0 = Me.Fields.Item("Name")
  loc_F3A9A9:   Set var_B4 = Me.Txt
  loc_F3A9AF:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3A9B7:   var_B8.Text = CStr(var_B0.Value)
  loc_F3A9CD: End If
  loc_F3A9D8: Set var_A8 = Me.Txt
  loc_F3A9DE: Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(2))
  loc_F3A9E6: var_B0.SetFocus
  loc_F3A9F2: Exit Sub
End Sub

Public Property Let ReservationYN(vNewValue) 'E020F8
  'Data Table: 476274
  loc_E020F2: global_84 = vNewValue
  loc_E020F6: Exit Sub
End Sub

Public Property Get ReservationYN() 'E0B9A0
  'Data Table: 476274
  loc_E0B998: ReservationYN = CBool(global_84)
End Sub

Public Sub FillDetail() '134740C
  'Data Table: 476274
  Dim var_B4 As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_178 As Variant
  Dim var_1A0 As TextBox
  Dim var_B8 As String
  Dim var_D8 As Variant
  Dim unk_476293 As Connection15
  Dim var_9C As Recordset15
  loc_1346C44: On Error Goto loc_1347404
  loc_1346C4C: var_94 = vbNullString 'Variant
  loc_1346C53: var_98 = vbNullString
  loc_1346C64: Set var_B0 = Me.Txt
  loc_1346C6A: Call 0.Method_FillDetail0 (CInt(0), var_B4)
  loc_1346C89: If (var_B4.Text <> vbNullString) Then
  loc_1346CBF:   var_128 = (CVar(var_98) + IIf((var_98 = vbNullString), " Where ", " And "))
  loc_1346CC8:   var_148 = (var_128 + " GuestProf.Code='")
  loc_1346CE9:   var_B4 = Me.Fields.Item("Code")
  loc_1346D07:   var_98 = CStr(var_148 & var_B4.Value & "'")
  loc_1346D26: End If
  loc_1346D34: Set var_B0 = Me.Txt
  loc_1346D3A: Call 0.Method_FillDetail0 (CInt(1), var_B4)
  loc_1346D59: If (var_B4.Text <> vbNullString) Then
  loc_1346D8F:   var_128 = (CVar(var_98) + IIf((var_98 = vbNullString), " Where ", " And "))
  loc_1346D98:   var_148 = (var_128 + " Company.SubCode='")
  loc_1346DB9:   var_B4 = Me.Fields.Item("Code")
  loc_1346DD7:   var_98 = CStr(var_148 & var_B4.Value & "'")
  loc_1346DF6: End If
  loc_1346E04: Set var_B0 = Me.Txt
  loc_1346E0A: Call 0.Method_FillDetail0 (CInt(6), var_B4)
  loc_1346E29: If (var_B4.Text <> vbNullString) Then
  loc_1346E5F:   var_128 = (CVar(var_98) + IIf((var_98 = vbNullString), " Where ", " And "))
  loc_1346E68:   var_148 = (var_128 + " GuestProf.Code='")
  loc_1346E89:   var_B4 = Me.Fields.Item("SearchCode")
  loc_1346EA7:   var_98 = CStr(var_148 & var_B4.Value & "'")
  loc_1346EC6: End If
  loc_1346ED4: Set var_B0 = Me.Txt
  loc_1346EDA: Call 0.Method_FillDetail0 (CInt(2), var_B4)
  loc_1346EF9: If (var_B4.Text <> vbNullString) Then
  loc_1346F2F:   var_128 = (CVar(var_98) + IIf((var_98 = vbNullString), " Where ", " And "))
  loc_1346F38:   var_148 = (var_128 + " RO.RoomNO='")
  loc_1346F59:   var_B4 = Me.Fields.Item("SearchCode")
  loc_1346F69:   var_178 = var_148 & var_B4.Value 
  loc_1346F77:   var_98 = CStr(var_178 & "'")
  loc_1346F96: End If
  loc_1346FA4: Set var_B0 = Me.Txt
  loc_1346FAA: Call 0.Method_FillDetail0 (CInt(3), var_B4)
  loc_1346FCD: Set var_19C = Me.Txt
  loc_1346FD3: Call 0.Method_FillDetail0 (CInt(4), var_1A0)
  loc_1346FFB: If ((var_B4.Text <> vbNullString) And (var_1A0.Text <> vbNullString)) Then
  loc_1347031:   var_128 = (CVar(var_98) + IIf((var_98 = vbNullString), " Where ", "And "))
  loc_134703A:   var_148 = (var_128 + " RO.ChkInDT Between ")
  loc_1347049:   Set var_B0 = Me.Txt
  loc_134704F:   Call 0.Method_FillDetail0 (CInt(3), var_B4)
  loc_134705E:   Proc_6_7_F26918(var_178, CVar(var_B4))
  loc_134707E:   Set var_19C = Me.Txt
  loc_1347084:   Call 0.Method_FillDetail0 (CInt(4), var_1A0)
  loc_1347093:   Proc_6_7_F26918(var_1D4, CVar(var_1A0))
  loc_13470A9:   var_98 = CStr(var_148 & var_178 & " And " & var_1D4 & vbNullString)
  loc_13470D5: Else
  loc_13470E3:   Set var_B0 = Me.Txt
  loc_13470E9:   Call 0.Method_FillDetail0 (CInt(3), var_B4)
  loc_1347108:   If (var_B4.Text <> vbNullString) Then
  loc_134713E:     var_128 = (CVar(var_98) + IIf((var_98 = vbNullString), " Where ", " And "))
  loc_1347147:     var_148 = (var_128 + " RO.ChkInDT=")
  loc_1347156:     Set var_B0 = Me.Txt
  loc_134715C:     Call 0.Method_FillDetail0 (CInt(3), var_B4)
  loc_134716B:     Proc_6_7_F26918(var_178, CVar(var_B4))
  loc_1347181:     var_98 = CStr(var_148 & var_178 & vbNullString)
  loc_134719E:   End If
  loc_134719E: End If
  loc_13471AC: Set var_B0 = Me.Txt
  loc_13471B2: Call 0.Method_FillDetail0 (CInt(5), var_B4)
  loc_13471D1: If (var_B4.Text <> vbNullString) Then
  loc_1347207:   var_128 = (CVar(var_98) + IIf((var_98 = vbNullString), " Where ", " And "))
  loc_1347210:   var_148 = (var_128 + " Booking.DocID='")
  loc_1347229:   var_B0 = Me.Fields
  loc_1347231:   var_B4 = var_B0.Item("Code")
  loc_134724F:   var_98 = CStr(var_148 & var_B4.Value & "'")
  loc_134726E: End If
  loc_13472A1: var_128 = (CVar(var_98) + IIf((var_98 = vbNullString), " Where ", " And "))
  loc_13472AA: var_148 = (var_128 + " RO.Logsite_code='")
  loc_13472DF: var_B8 = "SELECT RO.DocId AS GuestDocID,RO.Type, GuestProf.Name AS GuestName, Booking.DocId AS BookingID, RO.RoomNo, RoomCat.Name AS RoomType, RO.ChkInDt AS ArrivalDate,RO.Adult,DateDiff(d,ChkInDt,ChkOutDt) Days,RO.RoomTarrif,RO.RRTaxInc,PlanMast.Tariff As PlanType,RO.PlanAmt FROM ((((RoomOccDet RO Inner JOIN GuestFolio ON RO.DocId = GuestFolio.DocId) lEFT JOIN Booking ON GuestFolio.BookingDocId = Booking.DocId) inner JOIN GuestProf ON RO.GuestProf = GuestProf.Code) inner JOIN RoomCat ON (RO.RoomType = RoomCat.Type) AND (RO.RoomCat = RoomCat.Code)) Left JOIN SubGroup AS Company ON GuestFolio.Company = Company.SubCode Left JOIN PlanMast ON PlanMast.Code = RO.PlanCode " & CStr(var_148 & CVar(MemVar_1F95078) & "'")
  loc_13472E6: var_D8 = CVar(var_B8 & " ORDER BY GuestProf.Name,RO.ChkInDt Desc") 'String
  loc_134730A: unk_476293.Execute CStr(var_D8), var_D8, -1
  loc_1347315: Set var_9C = var_B0
  loc_134732A: var_9C.Filter = "Type='O'"
  loc_1347335: CVarUnk
  loc_134733A: VerifyVarObj
  loc_1347340: Set var_B0 = var_B0(var_9C)
  loc_1347346: LateIdStAd
  loc_1347362: var_B0(True).Visible = 
  loc_1347390: Set var_B0 = var_B4(0)
  loc_1347396: Call 0.Method_FillDetail0 (CStr(Val(CStr(var_9C.RecordCount))))
  loc_134739E: var_B4.Caption = 
  loc_13473BC: Set var_B0 = var_B4(0)
  loc_13473C2: Call 0.Method_FillDetail0 (&HFF)
  loc_13473CA: var_B4.Visible = 
  loc_13473E1: Set var_B0 = var_B4(1)
  loc_13473E7: Call 0.Method_FillDetail0 (&HFF)
  loc_13473EF: var_B4.Visible = 
  loc_1347400: Set var_9C = Nothing
  loc_1347403: Exit Sub
  loc_1347404: ' Referenced from: 1346C44
  loc_1347404: Proc_6_60_E63754()
  loc_1347409: Exit Sub
End Sub

Public Property Get FrmOpenType() 'E10644
  'Data Table: 476274
  loc_E10638: var_88 = global_56
  loc_E1063B: FrmOpenType = 
  loc_E10641: StAryRecCopy
End Sub

Public Property Let FrmOpenType(vNewValue) 'E10524
  'Data Table: 476274
  loc_E1051C: global_56 = vNewValue
  loc_E10520: Exit Sub
  loc_E10521: StAryRecCopy
End Sub

Public Sub Proc_65_25_E419E4
  'Data Table: 476274
  Dim var_8C As TextBox
  loc_E419C6: Set var_88 = Me.Txt
  loc_E419CC: Call 0.Method_Proc_65_25_E419E40 (CInt(0), var_8C)
  loc_E419D4: var_8C.Tag = vbNullString
  loc_E419E0: Exit Sub
  loc_E419E1: Exit Sub
End Sub

Public Sub Proc_65_26_F7072C
  'Data Table: 476274
  loc_F70600: If (CBool(().Visible) = &HFF) Then
  loc_F70612:   (False).Visible = 
  loc_F7061A: End If
  loc_F70636: If (CBool(().Visible) = &HFF) Then
  loc_F70648:   (False).Visible = 
  loc_F70650: End If
  loc_F7066C: If (CBool(().Visible) = &HFF) Then
  loc_F7067E:   (False).Visible = 
  loc_F70686: End If
  loc_F706A2: If (CBool(Me.DGConfirmationNo.Visible) = &HFF) Then
  loc_F706B4:   Me.DGConfirmationNo.Visible = False
  loc_F706BC: End If
  loc_F706D8: If (CBool(Me.DGMobileNo.Visible) = &HFF) Then
  loc_F706EA:   Me.DGMobileNo.Visible = False
  loc_F706F2: End If
  loc_F7070E: If (CBool(().Visible) = &HFF) Then
  loc_F70720:   (False).Visible = 
  loc_F70728: End If
  loc_F70728: Exit Sub
End Sub

Public Sub Proc_65_27_DFC960
  'Data Table: 476274
  loc_DFC95C: Exit Sub
End Sub
