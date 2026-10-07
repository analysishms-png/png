VERSION 5.00
Begin VB.Form FrmItemIssuedOnCleaning
  Caption = "Item Issued On Cleaning"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "form4"
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 7185
  ClientHeight = 7710
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
  Begin DataGrid DGItem
    Left = 2880
    Top = 5325
    Width = 4155
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGDepart
    Left = 4770
    Top = 4005
    Width = 4155
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
End

Attribute VB_Name = "FrmItemIssuedOnCleaning"

Private global_68 As Integer

Private Sub TopCtrl1_UnknownEvent_11 'F0ABB0
  'Data Table: 47AF10
  Dim var_8C As Label
  Dim var_D4 As Variant
  loc_F0AAC8: On Error Goto loc_F0ABA8
  loc_F0AAEE: Call Proc_223_45_EEE3DC(Proc_5_1_100EC1C("ADD", Me))
  loc_F0AAF9: Call Proc_223_43_F2B524(global_56)
  loc_F0AB0B: (vbNullString).Caption = 
  loc_F0AB20: Set var_8C = (1)
  loc_F0AB32: Set var_8C = (FrmList.DispID_4)
  loc_F0AB4B: Set var_D4 = (CVar(CStr(CLng(FrmList.DispID_4))))
  loc_F0AB74: Set var_8C = var_D4.Name(1)
  loc_F0AB8D: Set var_8C = var_D4(CInt(3))
  loc_F0AB93: Call 0.Method_TopCtrl1_UnknownEvent_110 (FrmList.DispID_6)
  loc_F0AB9B: var_D4.SetFocus
  loc_F0ABA7: Exit Sub
  loc_F0ABA8: ' Referenced from: F0AAC8
  loc_F0ABA8: Proc_6_60_E63754()
  loc_F0ABAD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'F0AF2C
  'Data Table: 47AF10
  Dim Me As Recordset15
  Dim var_C8 As TextBox
  loc_F0AE4C: On Error Goto loc_F0AF25
  loc_F0AE5D: If (Proc_183_55_FE8490(global_56) = &HFF) Then
  loc_F0AE60:   Exit Sub
  loc_F0AE61: End If
  loc_F0AE78: If (Me.RecordCount > 0) Then
  loc_F0AE9E:   Call Proc_223_45_EEE3DC(Proc_5_1_100EC1C("EDIT", Me))
  loc_F0AEAD:   Set var_90 = (global_56)
  loc_F0AEC8:   If (FrmList.DispID_6803000E = "Edit") Then
  loc_F0AED6:     Set var_90 = var_C8(CInt(3))
  loc_F0AEDC:     Call 0.Method_TopCtrl1_UnknownEvent_120 ()
  loc_F0AEE4:     var_C8.SetFocus
  loc_F0AEF0:   End If
  loc_F0AEF3: Else
  loc_F0AF14:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F0AF24: End If
  loc_F0AF24: Exit Sub
  loc_F0AF25: ' Referenced from: F0AE4C
  loc_F0AF25: Proc_6_60_E63754()
  loc_F0AF2A: Exit Sub
  loc_F0AF2B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '10116B8
  'Data Table: 47AF10
  Dim unk_47AF1F As Connection15
  Dim Me As Recordset15
  Dim var_120 As TextBox
  Dim var_138 As String
  Dim var_130 As TextBox
  Dim var_B4 As Variant
  loc_10114C8: On Error Goto loc_1011669
  loc_10114D9: If (Proc_183_56_FE8B08(global_56) = &HFF) Then
  loc_10114DC:   Exit Sub
  loc_10114DD: End If
  loc_1011514: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_1011520:   unk_47AF1F.BeginTrans var_118
  loc_101152E:   var_B4 = Me.Bookmark
  loc_1011536:   var_94 = var_B4 'Variant
  loc_1011558:   Set var_11C = var_120(CInt(3))
  loc_101155E:   Call 0.Method_TopCtrl1_UnknownEvent_130 (var_124, "Delete From DepartWiseItemIssueList Where FrDepart='", var_B4)
  loc_1011566:   -1 = var_120.Tag
  loc_1011576:   var_138 = var_144 & var_124 & "' And ToDepart='"
  loc_1011587:   Set var_12C = var_130(CInt(4))
  loc_101158D:   Call 0.Method_TopCtrl1_UnknownEvent_130 (var_134)
  loc_1011595:   var_138 = var_130.Tag
  loc_10115AE:   unk_47AF1F.Execute var_134 & "'", , 
  loc_10115D8:   unk_47AF1F.CommitTrans
  loc_10115E8:   Me.Requery -1
  loc_1011608:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1011615:     Me.Bookmark = var_94
  loc_101161D:   Else
  loc_1011631:     If (Me.EOF = 0) Then
  loc_101163A:       Me.MoveLast
  loc_101163F:     End If
  loc_101163F:   End If
  loc_101163F:   Call Proc_223_44_1215EEC()
  loc_1011660:   Proc_5_0_1107AD0(&HFF, Me)
  loc_1011668: End If
  loc_1011668: Exit Sub
  loc_1011669: ' Referenced from: 10114C8
  loc_101166F: unk_47AF1F.RollbackTrans
  loc_101167C: Set var_11C = Err()
  loc_1011682: Call 0.Method_arg_2C (var_124, global_56)
  loc_10116A3: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F4, var_114)
  loc_10116B6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E193A4
  'Data Table: 47AF10
  loc_E19399: Me.Global.Unload Me
  loc_E193A1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E387C8
  'Data Table: 47AF10
  loc_E387B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E387C0: Call Proc_223_44_1215EEC(global_56)
  loc_E387C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E389A8
  'Data Table: 47AF10
  loc_E38998: Proc_5_0_1107AD0(&HFF, Me)
  loc_E389A0: Call Proc_223_44_1215EEC(global_56)
  loc_E389A5: Exit Sub
  loc_E389A6: Set var_6800 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E38948
  'Data Table: 47AF10
  loc_E38938: Proc_5_0_1107AD0(&HFF, Me)
  loc_E38940: Call Proc_223_44_1215EEC(global_56)
  loc_E38945: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E38888
  'Data Table: 47AF10
  loc_E38878: Proc_5_0_1107AD0(&HFF, Me)
  loc_E38880: Call Proc_223_44_1215EEC(global_56)
  loc_E38885: Exit Sub
  loc_E38886: Set var_6800 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '1349D2C
  'Data Table: 47AF10
  Dim var_96 As Integer
  Dim var_B8 As Variant
  Dim var_A0 As TextBox
  Dim var_DC As String
  Dim var_E0 As TextBox
  Dim unk_47AF1F As Connection15
  Dim var_F4 As Recordset15
  Dim var_F8 As Variant
  Dim var_10C As Field20
  Dim var_A8 As String
  Dim var_D8 As Variant
  Dim var_8E As Integer
  Dim var_384 As Double
  Dim var_38C As Double
  Dim var_E4 As String
  Dim var_208 As String
  Dim var_334 As Variant
  Dim Me As Recordset15
  loc_13495D8: On Error Goto loc_1349D11
  loc_13495EB: Set var_9C = var_A0(CInt(3))
  loc_13495F1: Call 0.Method_TopCtrl1_UnknownEvent_190 (0)
  loc_13495F9: var_A8 = "From Location"
  loc_134961A: If (Proc_6_27_EA61EC(var_A0) = 0) Then
  loc_134961D:   Exit Sub
  loc_134961E: End If
  loc_1349629: Set var_9C = var_A0(CInt(4))
  loc_134962F: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_A8)
  loc_1349637: var_A8 = "To Location"
  loc_1349658: If (Proc_6_27_EA61EC(var_A0) = 0) Then
  loc_134965B:   Exit Sub
  loc_134965C: End If
  loc_1349660: Set var_9C = (var_A8)
  loc_134967B: If (FrmList.DispID_6803000E = "Add") Then
  loc_13496AB:   Set var_9C = var_A0(CInt(3))
  loc_13496B1:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_A8, "Select Count(*) From DepartWiseItemIssueList Where FrDepart='", var_C8, -1, var_F4)
  loc_13496B9:   var_F8 = var_A0.Tag
  loc_13496DA:   Set var_A4 = var_E0(CInt(4))
  loc_13496E0:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_E4, 0 & var_A8 & "' And ToDepart='")
  loc_1349701:   unk_47AF1F.Execute var_D8 & var_E4 & "'", , 
  loc_1349709:    = var_F4.Fields
  loc_1349711:    = var_F8.Item()
  loc_1349719:    = var_E0.Tag.Value
  loc_1349724:   Proc_6_39_E7D3A0(var_11C)
  loc_134975D:   If CBool(var_11C <> 0) Then
  loc_1349779:     MsgBox("Item List Already Exists Between Departments.", &H40, var_D8, var_11C, var_13C)
  loc_1349789:     Exit Sub
  loc_134978A:   End If
  loc_134978A: End If
  loc_134979F: Set var_9C = 1(CVar(CLng(1)))
  loc_13497B0: var_A8 = CStr(FrmList.DispID_41)
  loc_13497C1: If (var_A8 = vbNullString) Then
  loc_13497CA:   Call 0.Method_arg_50 (var_A8)
  loc_13497D8:   var_D8 = CVar(var_A8) 'String
  loc_13497E5:   var_C8 = "Please Fill Item Detail"
  loc_13497EB:   MsgBox(var_C8, &H40, var_D8, var_11C, var_13C)
  loc_1349808:   Set var_9C = var_D8(1)
  loc_134981A:   Set var_9C = (FrmList.DispID_A)
  loc_134982B:   Exit Sub
  loc_134982C: End If
  loc_134983A: unk_47AF1F.BeginTrans var_150
  loc_134985D: Set var_9C = var_A0(CInt(3))
  loc_1349863: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_A8, "Delete From DepartWiseItemIssueList Where FrDepart='", var_C8, -1)
  loc_134986B: var_F4 = var_A0.Tag
  loc_134988C: Set var_A4 = var_E0(CInt(4))
  loc_1349892: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_E4, &HFF & var_A8 & "' And ToDepart='")
  loc_134989A: FrmList.DispID_8001 = var_E0.Tag
  loc_13498B3: unk_47AF1F.Execute var_E4 & "'", , 
  loc_13498E0: Set var_9C = 1(var_98)
  loc_13498FC: For var_154 =  To CInt((CLng(FrmList.DispID_4) - 1)):  = var_154 'Integer
  loc_1349917:   Set var_9C = CVar(CLng(var_98))(CVar(CLng(3)))
  loc_134994A:   Set var_A0 = CVar(CLng(var_98))(CVar(CLng(9)))
  loc_1349979:   If ((CDbl(Val(CStr(FrmList.DispID_41))) <> CDbl(0)) And (CStr(FrmList.DispID_41) <> vbNullString)) Then
  loc_1349991:     Set var_9C = CVar(CLng(var_98))(CVar(CLng(0)))
  loc_13499A2:     var_A8 = CStr(FrmList.DispID_41)
  loc_13499AA:     var_384 = Val(var_A8)
  loc_13499C2:     Set var_A0 = CVar(CLng(var_98))(CVar(CLng(9)))
  loc_13499E2:     Set var_A4 = var_E0(CInt(3))
  loc_13499E8:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_1A4, FrmList.DispID_41)
  loc_1349A03:     Set var_F4 = var_F8(CInt(4))
  loc_1349A09:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_1B0)
  loc_1349A11:      = var_F8.Tag
  loc_1349A2B:     Set var_10C = CVar(CLng(var_98))(CVar(CLng(3)))
  loc_1349A44:     var_38C = Val(CStr(FrmList.DispID_41))
  loc_1349A4A:     Proc_6_104_ED68A8(var_13C)
  loc_1349A53:     Set var_254 = (var_38C)
  loc_1349AA8:     var_DC = "Insert Into DepartWiseItemIssueList(Sno,Site_Code,Item,FrDepart,ToDepart,IssQty,U_Name,U_EntDt,U_AE,LogSite_Code) " & " VALUES ("
  loc_1349B03:     var_208 = var_DC & CStr(var_E0.Tag) & ",'" & MemVar_1F95070 & "','" & CStr(var_D8) & "','" & var_1A4 & "','" & var_1B0 & "'," & CStr(var_38C)
  loc_1349B41:     var_334 = CVar(var_208 & ",'" & MemVar_1F950C8 & "',") & var_13C & ",'" & IIf((var_274 = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) 
  loc_1349B58:     unk_47AF1F.Execute CStr(var_334 & "')"), var_378, -1
  loc_1349BC8:     var_96 = &HFF
  loc_1349BCB:   End If
  loc_1349BCE: Next var_154 'Integer
  loc_1349BD9: If (var_96 = 0) Then
  loc_1349BEA:   var_B8 = "Nil Details Can't Be Saved"
  loc_1349BF5:   MsgBox(var_B8, &H40, var_D8, var_11C, var_13C)
  loc_1349C05:   Exit Sub
  loc_1349C06: End If
  loc_1349C0C: unk_47AF1F.CommitTrans
  loc_1349C13: var_8E = 0
  loc_1349C24: Set var_9C = var_A0(CInt(3))
  loc_1349C2A: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_A8)
  loc_1349C32: var_8E = var_A0.Tag
  loc_1349C48: Set var_A4 = var_E0(CInt(4))
  loc_1349C4E: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_DC)
  loc_1349C56: var_A8 = var_E0.Tag
  loc_1349C7F: Me.Requery -1
  loc_1349CA9: Me.Find "SearchCode ='" & var_DC & "'", 0, 1
  loc_1349CB5: Call Proc_223_44_1215EEC(var_B8)
  loc_1349CBE: Set var_9C = ()
  loc_1349CD9: If (FrmList.DispID_6803000E = "Add") Then
  loc_1349CDC:   Call TopCtrl1_UnknownEvent_11()
  loc_1349CE1:   Exit Sub
  loc_1349CE2: End If
  loc_1349D05: Call Proc_223_45_EEE3DC(Proc_5_1_100EC1C("INI", Me))
  loc_1349D10: Exit Sub
  loc_1349D11: ' Referenced from: 13495D8
  loc_1349D17: If (var_8E = &HFF) Then
  loc_1349D20:   unk_47AF1F.RollbackTrans
  loc_1349D25: End If
  loc_1349D25: Proc_6_60_E63754(global_56)
  loc_1349D2A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EBE7C0
  'Data Table: 47AF10
  loc_EBE72C: On Error Goto loc_EBE7B7
  loc_EBE766: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EBE775:   Set var_10C = Me
  loc_EBE78C:   Call Proc_223_45_EEE3DC(Proc_5_1_100EC1C("INI", var_10C))
  loc_EBE797:   Call Proc_223_44_1215EEC(global_56)
  loc_EBE79F: Else
  loc_EBE7A5:   Call 0.Method_arg_1E8 (var_10C)
  loc_EBE7AD:   Call var_10C.SetFocus
  loc_EBE7B6: End If
  loc_EBE7B6: Exit Sub
  loc_EBE7B7: ' Referenced from: EBE72C
  loc_EBE7B7: Proc_6_60_E63754()
  loc_EBE7BC: Exit Sub
  loc_EBE7BD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EC8F38
  'Data Table: 47AF10
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EC8E98: On Error Goto loc_EC8F30
  loc_EC8EB2: If (Me.RecordCount <= 0) Then
  loc_EC8EBB:   var_B8 = "Information"
  loc_EC8ED6:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC8EE6:   Exit Sub
  loc_EC8EE7: End If
  loc_EC8EEE: var_10C = "Select Distinct FrDepart+ToDepart as SearchCode,FrG.Name As From_Location,ToG.Name As To_Location From DepartWiseItemIssueList D Left Join GodownMast FrG ON D.FrDepart=FrG.code Left Join GodownMast ToG ON D.ToDepart=ToG.code WHERE D.LOGSITE_CODE='" & MemVar_1F95078
  loc_EC8EF5: MemVar_1F950E4 = var_10C & "' order by  FrDepart+ToDepart"
  loc_EC8F05: Proc_6_126_F1C850("2500,2500")
  loc_EC8F13: MemVar_1F95120 = Me
  loc_EC8F2A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC8F2F: Exit Sub
  loc_EC8F30: ' Referenced from: EC8E98
  loc_EC8F30: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EC8F35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1C 'DFCDA4
  'Data Table: 47AF10
  loc_DFCDA0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E3EEF4
  'Data Table: 47AF10
  Dim Me As Recordset15
  loc_E3EECB: Me.Requery -1
  loc_E3EEDB: Me.Requery -1
  loc_E3EEEB: Me.Requery -1
  loc_E3EEF0: Exit Sub
End Sub

Private Sub Form_Load() '104966C
  'Data Table: 47AF10
  Dim var_8C As String
  Dim var_9C As Variant
  Dim Me As Recordset15
  loc_1049400: On Error Goto loc_1049663
  loc_104941F: Me.Recordset15.CursorLocation = 3
  loc_1049442: var_8C = "Select I.Code,I.Name,I.Unit,I.IssueUnit,I.PurchRate as Rate,I.ConvRatio,I.RestCode From ItemMast I Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_1049453: Me.Open CVar(var_8C & "' or LOGSITE_CODE='HO') And I.Type IN ('Consumables','Lenin') And I.ItemType='Store' Order by I.Name"), CVar(MemVar_1F95044), 3
  loc_1049467: CVarUnk
  loc_104946C: VerifyVarObj
  loc_1049472: Set var_88 = Me.DGItem
  loc_1049478: LateIdStAd
  loc_10494A2: Me.DGItem.CursorLocation = 3
  loc_10494C5: var_8C = "Select G.Code,G.Name From GodownMast G INNER join Depart D on (D.Code=G.Code and D.LogSite_Code=G.LogSite_Code) Where (G.LOGSITE_CODE='" & MemVar_1F95078
  loc_10494D6: Me.Open CVar(var_8C & "' or G.LOGSITE_CODE='HO') and D.RestType IN ('House Keeping','Laundry','Store') Order by G.Name"), CVar(MemVar_1F95044), 2
  loc_10494EA: CVarUnk
  loc_10494EF: VerifyVarObj
  loc_10494F5: Set var_88 = Me.DGDepart
  loc_10494FB: LateIdStAd
  loc_1049525: Me.DGDepart.CursorLocation = 3
  loc_1049548: var_8C = "Select G.Code,G.Name From GodownMast G INNER join Depart D on (D.Code=G.Code and D.LogSite_Code=G.LogSite_Code) Where (G.LOGSITE_CODE='" & MemVar_1F95078
  loc_1049559: Me.Open CVar(var_8C & "' or G.LOGSITE_CODE='HO') and D.RestType IN ('House Keeping','Laundry','Store') Order by G.Name"), CVar(MemVar_1F95044), 2
  loc_104956D: CVarUnk
  loc_1049572: VerifyVarObj
  loc_104957E: LateIdStAd
  loc_10495A8: Me.Recordset15.CursorLocation = 3
  loc_10495CB: var_8C = "Select Distinct FrDepart+ToDepart as SearchCode,D.Site_Code,D.LogSite_Code From DepartWiseItemIssueList D INNER JOIN ItemMast ON D.item=ItemMast.code And Itemmast.ItemType='Store' WHERE D.LOGSITE_CODE='" & MemVar_1F95078
  loc_10495D2: var_9C = CVar(var_8C & "' AND ItemMast.Type IN ('Consumables','Lenin') order by  FrDepart+ToDepart") 'String
  loc_10495DC: Me.Open CVar(var_8C & "' or G.LOGSITE_CODE='HO') and D.RestType IN ('House Keeping','Laundry','Store') Order by G.Name"), CVar(MemVar_1F95044), 2
  loc_10495E7: Call Proc_223_47_11D8598(3, -1, 3(New), -1, 3(New), New)
  loc_1049604: Proc_6_23_DFC5B8(Me, 5445, 7310, 3, -1)
  loc_1049618: Set var_88 = var_88(5800)
  loc_1049625: DGDepart.DispID_6803000F.left = New
  loc_1049652: Call Proc_223_45_EEE3DC(Proc_5_1_100EC1C("INI", Me, New), 1)
  loc_104965D: Call Proc_223_44_1215EEC(-1)
  loc_1049662: Exit Sub
  loc_1049663: ' Referenced from: 1049400
  loc_1049663: Proc_6_60_E63754()
  loc_1049668: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5EEC8
  'Data Table: 47AF10
  loc_E5EE87: Set global_56 = Nothing
  loc_E5EE99: Set global_52 = Nothing
  loc_E5EEAB: Set global_64 = Nothing
  loc_E5EEBD: Set global_60 = Nothing
  loc_E5EEC4: Exit Sub
End Sub

Private Sub Form_Activate() 'E38164
  'Data Table: 47AF10
  loc_E38140: Set var_88 = ()
  loc_E3815B: If (CLng(CInt(DGDepart.DispID_68030010)) = &H2D) Then
  loc_E3815E:   Call TopCtrl1_UnknownEvent_1D()
  loc_E38163: End If
  loc_E38163: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2B7E4
  'Data Table: 47AF10
  loc_E2B7BC: On Error Goto loc_E2B7DC
  loc_E2B7D3: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2B7DB: Exit Sub
  loc_E2B7DC: ' Referenced from: E2B7BC
  loc_E2B7DC: Proc_6_60_E63754(Shift)
  loc_E2B7E1: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11EF49C
  'Data Table: 47AF10
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_C4 As Variant
  Dim var_98 As String
  Dim var_B4 As Variant
  Dim Me As Recordset15
  Dim var_9C As String
  loc_11EF01E: Set var_88 = var_8C(Index)
  loc_11EF024: Call 0.Method_Txt_GotFocus0 ()
  loc_11EF032: Proc_6_74_E23240(var_8C)
  loc_11EF03E: Call Proc_223_46_EBE6F4()
  loc_11EF051: If (Index = CInt(3)) Then
  loc_11EF05E:   Set global_52 = New 
  loc_11EF070:   Me.Recordset15.CursorLocation = 3
  loc_11EF083:   Set var_88 = var_8C(CInt(4))
  loc_11EF089:   Call 0.Method_Txt_GotFocus0 (var_9C)
  loc_11EF091:   var_92 = var_8C.Tag
  loc_11EF0B4:   var_98 = "Select G.Code,G.Name From GodownMast G Left join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F95078
  loc_11EF0C9:   var_B4 = CVar(var_98 & "' or G.LOGSITE_CODE='HO') and G.CODE<>'" & var_9C & "' And D.RestType IN ('House Keeping','Laundry','Store') Order by G.Name") 'String
  loc_11EF0D3:   Me.Open var_B4, CVar(MemVar_1F95044), 2
  loc_11EF0F6:   CVarUnk
  loc_11EF0FB:   VerifyVarObj
  loc_11EF101:   Set var_88 = Me.DGDepart
  loc_11EF107:   LateIdStAd
  loc_11EF169:   Call 0.Method_Txt_GotFocus0 (var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_8C(Index))
  loc_11EF171:   global_52 = var_8C.Text
  loc_11EF189:   If (3 Or (var_98 = vbNullString)) Then
  loc_11EF18C:     Exit Sub
  loc_11EF18D:   End If
  loc_11EF19A:   Set var_88 = var_8C(Index)
  loc_11EF1A0:   Call 0.Method_Txt_GotFocus0 (var_98)
  loc_11EF1A8:   -1 = var_8C.Text
  loc_11EF1BA:   var_C4 = "Name"
  loc_11EF1F5:   If CBool(CVar(var_98) <> Me.Fields.Item(var_C4).Value) Then
  loc_11EF1FE:     Me.MoveFirst
  loc_11EF221:     Set var_88 = var_8C(Index)
  loc_11EF227:     Call 0.Method_Txt_GotFocus0 (var_98, "Name ='", 0)
  loc_11EF22F:     1 = var_8C.Text
  loc_11EF238:     var_9C = var_C4 & var_98
  loc_11EF248:     Me.Find var_9C & "'", , 
  loc_11EF25D:   End If
  loc_11EF260: Else
  loc_11EF268:   If (var_92 = CInt(4)) Then
  loc_11EF287:     Me.Recordset15.CursorLocation = 3
  loc_11EF29A:     Set var_88 = var_8C(CInt(3))
  loc_11EF2A0:     Call 0.Method_Txt_GotFocus0 (var_9C)
  loc_11EF2A8:      = var_8C.Tag
  loc_11EF2CB:     var_98 = "Select G.Code,G.Name From GodownMast G Left join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F95078
  loc_11EF2E0:     var_B4 = CVar(var_98 & "' or G.LOGSITE_CODE='HO') and G.CODE<>'" & var_9C & "' And D.RestType IN ('House Keeping','Laundry','Store') Order by G.Name") 'String
  loc_11EF2EA:     Me.Open var_B4, CVar(MemVar_1F95044), 2
  loc_11EF30D:     CVarUnk
  loc_11EF312:     VerifyVarObj
  loc_11EF318:     Set var_88 = 3(New)
  loc_11EF31E:     LateIdStAd
  loc_11EF37A:     Set var_88 = var_8C(Index)
  loc_11EF380:     Call 0.Method_Txt_GotFocus0 (var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_11EF388:     var_88 = var_8C.Text
  loc_11EF3A0:     If (-1 Or (var_98 = vbNullString)) Then
  loc_11EF3A3:       Exit Sub
  loc_11EF3A4:     End If
  loc_11EF3B1:     Set var_88 = var_8C(Index)
  loc_11EF3B7:     Call 0.Method_Txt_GotFocus0 (var_98)
  loc_11EF3BF:      = var_8C.Text
  loc_11EF3D1:     var_C4 = "Name"
  loc_11EF40C:     If CBool(CVar(var_98) <> Me.Fields.Item(var_C4).Value) Then
  loc_11EF415:       Me.MoveFirst
  loc_11EF438:       Set var_88 = var_8C(Index)
  loc_11EF43E:       Call 0.Method_Txt_GotFocus0 (var_98, "Name ='", 0)
  loc_11EF446:       1 = var_8C.Text
  loc_11EF45F:       Me.Find var_C4 & var_98 & "'", , 
  loc_11EF474:     End If
  loc_11EF477:   Else
  loc_11EF47F:     If (var_92 = CInt(2)) Then
  loc_11EF48A:       var_98 = "{Home}+{End}"
  loc_11EF490:       Proc_303_0_FBACC8(var_98)
  loc_11EF498:     End If
  loc_11EF498:   End If
  loc_11EF498: End If
  loc_11EF498: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11564D0
  'Data Table: 47AF10
  Dim var_86 As Integer
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim var_B0 As Variant
  Dim var_98 As DataGrid
  Dim var_8C As DataGrid
  loc_115613A: If (CLng(Shift) = &H1B) Then
  loc_115613D:   Call Proc_223_46_EBE6F4()
  loc_1156142:   Exit Sub
  loc_1156143: End If
  loc_1156151: If (KeyCode = CInt(3)) Then
  loc_1156161:   Set var_98 = var_9C(KeyCode)
  loc_1156167:   Call 0.Method_Txt_KeyDown0 (var_A0)
  loc_115616F:   var_86 = var_9C.Height
  loc_1156181:   Set var_8C = var_90(KeyCode)
  loc_1156187:   Call 0.Method_Txt_KeyDown0 (var_94)
  loc_115618F:    = var_90.Top
  loc_115619F:   var_B0 = CVar(((var_94 + var_A0) + CDbl(&H19))) 'Single
  loc_11561AE:   Me.DGDepart.Top = var_B0
  loc_11561CD:   Set var_8C = var_90(KeyCode)
  loc_11561D3:   Call 0.Method_Txt_KeyDown0 (var_94)
  loc_11561DB:    = var_90.Left
  loc_11561F2:   Me.DGDepart.Left = CVar(var_94)
  loc_1156218:   Set var_9C = Nothing
  loc_1156223:   Set var_98 = Nothing
  loc_1156242:   Set var_90 = ()
  loc_1156251:   Proc_6_69_134A630(Me.DGDepart, var_90, KeyCode, global_52, Shift)
  loc_1156268: Else
  loc_1156270:   If (var_86 = CInt(4)) Then
  loc_1156280:     Set var_98 = var_9C(KeyCode)
  loc_1156286:     Call 0.Method_Txt_KeyDown0 (var_A0, &HFF, 1)
  loc_115628E:     var_98 = var_9C.Height
  loc_11562A0:     Set var_8C = var_90(KeyCode)
  loc_11562A6:     Call 0.Method_Txt_KeyDown0 (var_94, var_9C)
  loc_11562AE:     0 = var_90.Top
  loc_11562BE:     var_B0 = CVar(((var_94 + var_A0) + CDbl(&H19))) 'Single
  loc_11562CD:     (CVar(var_94)).Top = 
  loc_11562EC:     Set var_8C = var_90(KeyCode)
  loc_11562F2:     Call 0.Method_Txt_KeyDown0 (var_94)
  loc_11562FA:      = var_90.Left
  loc_1156311:     (CVar(var_94)).Left = 
  loc_1156337:     Set var_9C = Nothing
  loc_1156342:     Set var_98 = Nothing
  loc_1156370:     Proc_6_69_134A630((), (), KeyCode, global_64, Shift)
  loc_1156384:   End If
  loc_1156384: End If
  loc_11563B5: Set var_98 = Me.DGItem
  loc_11563DA: If ((1 And (CBool(&HFF((CBool(Me.DGDepart.Visible) = 0)).Visible) = 0)) And (CBool(var_98.Visible) = 0)) Then
  loc_11563F2:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11563FB:     Proc_6_75_E5335C(Shift, arg_14, var_98)
  loc_1156400:   End If
  loc_1156404:   Set var_8C = 0(var_9C)
  loc_1156449:   If CBool((DGItem.DispID_6803000E = "Add") And (KeyCode <> CInt(1)) And (KeyCode <> CInt(2))) Then
  loc_1156461:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_115646A:       Proc_6_76_E533C8(Shift)
  loc_115646F:     End If
  loc_115646F:   End If
  loc_1156473:   Set var_8C = (arg_14)
  loc_11564A6:   If CBool((DGItem.DispID_6803000E = "Edit") And (KeyCode <> CInt(2))) Then
  loc_11564BE:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11564C7:       Proc_6_76_E533C8(Shift)
  loc_11564CC:     End If
  loc_11564CC:   End If
  loc_11564CC: End If
  loc_11564CC: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F6A1C4
  'Data Table: 47AF10
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_F6A093: Proc_6_58_E06050(arg_10)
  loc_F6A09E: Proc_6_133_E7FB08(var_94)
  loc_F6A0A7: arg_10 = CInt(var_94)
  loc_F6A0B0: var_96 = KeyAscii
  loc_F6A0BB: If (var_96 = CInt(3)) Then
  loc_F6A0DA:   If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_F6A0EC:     var_A0 = "Name"
  loc_F6A107:     Proc_6_89_1470B00(arg_10(var_96), KeyAscii, global_52, arg_10)
  loc_F6A116:   End If
  loc_F6A119: Else
  loc_F6A121:   If (var_96 = CInt(4)) Then
  loc_F6A140:     If (CBool(0(var_A0).Visible) = &HFF) Then
  loc_F6A147:       Set var_A8 = (arg_10)
  loc_F6A152:       var_A0 = "Name"
  loc_F6A16D:       Proc_6_89_1470B00(var_A8, KeyAscii, global_64)
  loc_F6A17C:     End If
  loc_F6A17F:   Else
  loc_F6A187:     If (var_96 = CInt(1)) Then
  loc_F6A194:       Set var_9C = var_A8(KeyAscii)
  loc_F6A19A:       Call 0.Method_Txt_KeyPress0 (arg_10, var_A0)
  loc_F6A1B5:       Proc_6_42_129B55C(var_A8, arg_10, 8)
  loc_F6A1C1:     End If
  loc_F6A1C1:   End If
  loc_F6A1C1: End If
  loc_F6A1C1: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E00404
  'Data Table: 47AF10
  Dim var_86 As Integer
  loc_E003FF: var_86 = KeyCode
  loc_E00402: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4FC34
  'Data Table: 47AF10
  loc_E4FC12: Set var_88 = var_8C(Index)
  loc_E4FC18: Call 0.Method_Txt_LostFocus0 ()
  loc_E4FC26: Proc_6_73_E23294(var_8C)
  loc_E4FC32: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '110B010
  'Data Table: 47AF10
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_110ACCB: var_86 = Cancel
  loc_110ACD6: If (var_86 = CInt(1)) Then
  loc_110ACD9:   GoTo loc_110B00F
  loc_110ACDC: End If
  loc_110ACE4: If (var_86 = CInt(2)) Then
  loc_110ACE7:   GoTo loc_110B00F
  loc_110ACEA: End If
  loc_110ACF2: If (var_86 = CInt(3)) Then
  loc_110AD43:   Set var_94 = var_98(Cancel)
  loc_110AD49:   Call 0.Method_Txt_Validate0 (var_9C, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_110AD51:   var_86 = var_98.Text
  loc_110AD69:   If ( Or (var_9C = vbNullString)) Then
  loc_110AD79:     Set var_94 = var_98(Cancel)
  loc_110AD7F:     Call 0.Method_Txt_Validate0 (vbNullString)
  loc_110AD87:     var_98.Text = 
  loc_110ADA0:     Set var_94 = var_98(Cancel)
  loc_110ADA6:     Call 0.Method_Txt_Validate0 (vbNullString)
  loc_110ADAE:     var_98.Tag = 
  loc_110ADBD:   Else
  loc_110ADF8:     Set var_B0 = var_B4(Cancel)
  loc_110ADFE:     Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_110AE06:     var_B4.Text = 
  loc_110AE39:     var_98 = Me.Fields.Item("Code")
  loc_110AE4A:     var_9C = CStr(var_98.Value)
  loc_110AE57:     Set var_B0 = var_B4(Cancel)
  loc_110AE5D:     Call 0.Method_Txt_Validate0 (var_9C)
  loc_110AE65:     var_B4.Tag = 
  loc_110AE7B:   End If
  loc_110AE7E: Else
  loc_110AE86:   If (var_86 = CInt(4)) Then
  loc_110AED7:     Set var_94 = var_98(Cancel)
  loc_110AEDD:     Call 0.Method_Txt_Validate0 (var_9C)
  loc_110AEE5:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_110AEFD:     If ( Or (var_9C = vbNullString)) Then
  loc_110AF0D:       Set var_94 = var_98(Cancel)
  loc_110AF13:       Call 0.Method_Txt_Validate0 (vbNullString)
  loc_110AF1B:       var_98.Text = 
  loc_110AF34:       Set var_94 = var_98(Cancel)
  loc_110AF3A:       Call 0.Method_Txt_Validate0 (vbNullString)
  loc_110AF42:       var_98.Tag = 
  loc_110AF51:     Else
  loc_110AF8C:       Set var_B0 = var_B4(Cancel)
  loc_110AF92:       Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_110AF9A:       var_B4.Text = 
  loc_110AFEB:       Set var_B0 = var_B4(Cancel)
  loc_110AFF1:       Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Code").Value))
  loc_110AFF9:       var_B4.Tag = 
  loc_110B00F:     End If
  loc_110B00F:   End If
  loc_110B00F:   ' Referenced from: 110ACE7
  loc_110B00F:   ' Referenced from: 110ACD9
  loc_110B00F: End If
  loc_110B00F: Exit Sub
End Sub

Private Sub DGToDepart_UnknownEvent_9 'F3EBF4
  'Data Table: 47AF10
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3EAEB: (False).Visible = 
  loc_F3EB0A: If (Me.RecordCount > 0) Then
  loc_F3EB49:   Set var_B4 = var_B8(CInt(4))
  loc_F3EB4F:   Call 0.Method_DGToDepart_UnknownEvent_90 (CStr(Me.Fields.Item("Code").Value))
  loc_F3EB57:   var_B8.Tag = 
  loc_F3EB8A:   var_B0 = Me.Fields.Item("Name")
  loc_F3EBA9:   Set var_B4 = var_B8(CInt(4))
  loc_F3EBAF:   Call 0.Method_DGToDepart_UnknownEvent_90 (CStr(var_B0.Value))
  loc_F3EBB7:   var_B8.Text = 
  loc_F3EBCD: End If
  loc_F3EBD8: Set var_A8 = var_B0(CInt(4))
  loc_F3EBDE: Call 0.Method_DGToDepart_UnknownEvent_90 ()
  loc_F3EBE6: var_B0.SetFocus
  loc_F3EBF2: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '10A7488
  'Data Table: 47AF10
  Dim var_A8 As DataGrid
  Dim var_BC As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Variant
  Dim var_100 As Variant
  loc_10A71CC: On Error Goto loc_10A7480
  loc_10A71CF: Call Proc_223_46_EBE6F4()
  loc_10A71E4: Set var_A8 = (CVar(CLng(global_80)))
  loc_10A71FC: (DGDepart.DispID_26).InsertRows , 
  loc_10A720E: Set var_BC = (CVar(CLng()))
  loc_10A7214: var_BC.DeleteRowLabels , 
  loc_10A7226: Set var_F0 = (CVar(CLng()))
  loc_10A7243: Set var_104 = var_108(0)
  loc_10A7249: Call 0.Method_TxtGrid_GotFocus0 (CStr(DGDepart.DispID_41))
  loc_10A7251: var_108.Tag = 
  loc_10A727E: Set var_A8 = var_BC(Index)
  loc_10A7284: Call 0.Method_TxtGrid_GotFocus0 (0)
  loc_10A728C: var_BC.MaxLength = 
  loc_10A72A2: ().DeleteRowLabels , 
  loc_10A72AB: var_110 = CLng()
  loc_10A72BB: If (var_110 = CLng(1)) Then
  loc_10A72FF:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_10A7302:     Exit Sub
  loc_10A7303:   End If
  loc_10A730D:   (var_110).InsertRows , 
  loc_10A7327:   Set var_BC = CVar(CLng())(CVar(CLng(1)))
  loc_10A7351:   If (CStr(DGDepart.DispID_41) <> vbNullString) Then
  loc_10A735A:     Me.MoveFirst
  loc_10A7369:     ().InsertRows , 
  loc_10A7383:     Set var_BC = CVar(CLng())(CVar(CLng(9)))
  loc_10A7394:     var_100 = CVar(CStr(DGDepart.DispID_41)) 'String
  loc_10A739A:     Proc_6_17_EAAE40(var_128)
  loc_10A73C3:     Me.Find CStr("Code =" & var_128), 0, 1
  loc_10A73F3:     If (Me.EOF = &HFF) Then
  loc_10A73FC:       Me.MoveFirst
  loc_10A7401:     End If
  loc_10A7401:   End If
  loc_10A7404: Else
  loc_10A740B:   If Not (var_110 = CLng(7)) Then
  loc_10A7415:     If (var_110 = CLng(3)) Then
  loc_10A7418:     End If
  loc_10A7421:     If (global_68 = 0) Then
  loc_10A742C:       var_10C = "{Home}+{End}"
  loc_10A7432:       Proc_303_0_FBACC8(CStr("Code =" & var_128), 0)
  loc_10A743A:     End If
  loc_10A743D:   Else
  loc_10A7444:     If (var_110 = CLng(4)) Then
  loc_10A7454:       Set var_A8 = var_BC(Index)
  loc_10A745A:       Call 0.Method_TxtGrid_GotFocus0 (CStr("Code =" & var_128), var_158)
  loc_10A7462:       var_100 = var_BC.Text
  loc_10A7472:       global_72 = Val(CStr("Code =" & var_128))
  loc_10A747F:     End If
  loc_10A747F:   End If
  loc_10A747F: End If
  loc_10A747F: Exit Sub
  loc_10A7480: ' Referenced from: 10A71CC
  loc_10A7480: Proc_6_60_E63754(global_72)
  loc_10A7485: Exit Sub
  loc_10A7486: () = 
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1192B9C
  'Data Table: 47AF10
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As DataGrid
  Dim var_AC As Long
  loc_11927A8: On Error Goto loc_1192B95
  loc_11927B5: If (CLng(Shift) = &H1B) Then
  loc_11927C4:   Set var_88 = var_8C(0)
  loc_11927CA:   Call 0.Method_TxtGrid_KeyDown0 (var_90)
  loc_11927D2:    = var_8C.Tag
  loc_11927E3:   Set var_94 = var_98(0)
  loc_11927E9:   Call 0.Method_TxtGrid_KeyDown0 (var_90)
  loc_11927F1:   var_98.Text = 
  loc_119280D:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1192816:   Set var_88 = (arg_14)
  loc_1192832:   Set var_88 = var_8C(0)
  loc_1192838:   Call 0.Method_TxtGrid_KeyDown0 (0)
  loc_1192840:   var_8C.Visible = DGItem.DispID_8001
  loc_119284C:   Exit Sub
  loc_119284D: End If
  loc_1192857: ().DeleteRowLabels , 
  loc_1192860: var_AC = CLng()
  loc_1192870: If (var_AC = CLng(1)) Then
  loc_119288B:   Set var_98 = Nothing
  loc_1192896:   Set var_94 = Nothing
  loc_11928C4:   Proc_6_69_134A630(Me.DGItem, (var_AC), KeyCode, global_60, Shift)
  loc_11928E2:   If (CLng(Shift) = &HD) Then
  loc_11928F0:     Call Proc_223_42_140A6E8(KeyCode, 0, var_B0, &HFF)
  loc_11928FB:     If (var_B0 = &HFF) Then
  loc_1192941:       Proc_6_62_1254E68(var_94(1)(1), 0(0(var_98)), KeyCode, Shift, global_68)
  loc_1192951:     End If
  loc_1192951:   End If
  loc_1192954: Else
  loc_119295B:   If (var_AC = CLng(3)) Then
  loc_119299E:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_68 = &HFF))) Then
  loc_11929AE:       Call Proc_223_42_140A6E8(0, 0, var_B2, 9)
  loc_11929B9:       If (var_B2 = &HFF) Then
  loc_11929FF:         Proc_6_62_1254E68(3(2), (0), KeyCode, Shift, global_68)
  loc_1192A0F:       End If
  loc_1192A0F:     End If
  loc_1192A12:   Else
  loc_1192A19:     If (var_AC = CLng(7)) Then
  loc_1192A5C:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_68 = &HFF))) Then
  loc_1192A6C:         Call Proc_223_42_140A6E8(0, 0, var_B2, 3)
  loc_1192A77:         If (var_B2 = &HFF) Then
  loc_1192ABF:           Proc_6_62_1254E68(0(0), (0), KeyCode, Shift, global_68)
  loc_1192ACF:         End If
  loc_1192ACF:       End If
  loc_1192AD2:     Else
  loc_1192AD9:       If (var_AC = CLng(4)) Then
  loc_1192B1C:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_68 = &HFF))) Then
  loc_1192B2C:           Call Proc_223_42_140A6E8(0, 0, var_B2, 9)
  loc_1192B37:           If (var_B2 = &HFF) Then
  loc_1192B84:             Proc_6_62_1254E68(0(CByte(2)), (0), KeyCode, Shift, global_68)
  loc_1192B94:           End If
  loc_1192B94:         End If
  loc_1192B94:       End If
  loc_1192B94:     End If
  loc_1192B94:   End If
  loc_1192B94: End If
  loc_1192B94: Exit Sub
  loc_1192B95: ' Referenced from: 11927A8
  loc_1192B95: Proc_6_60_E63754(CByte((CInt(7) + 1)), 0)
  loc_1192B9A: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F9A5EC
  'Data Table: 47AF10
  Dim arg_10 As Integer
  Dim var_98 As DataGrid
  Dim var_9C As Long
  Dim var_94 As Variant
  loc_F9A478: On Error Goto loc_F9A5E3
  loc_F9A47E: Proc_6_58_E06050(arg_10)
  loc_F9A489: Proc_6_133_E7FB08(var_94)
  loc_F9A492: arg_10 = CInt(var_94)
  loc_F9A4A2: arg_10(arg_10).DeleteRowLabels , 
  loc_F9A4AB: var_9C = CLng()
  loc_F9A4BB: If (var_9C = CLng(1)) Then
  loc_F9A4DA:   If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F9A4E1:     Set var_A8 = (var_9C)
  loc_F9A4EC:     var_A0 = "Name"
  loc_F9A507:     Proc_6_89_1470B00(var_A8, KeyAscii, global_60)
  loc_F9A516:   End If
  loc_F9A519: Else
  loc_F9A520:   If (var_9C = CLng(3)) Then
  loc_F9A52D:     Set var_98 = var_A8(KeyAscii)
  loc_F9A533:     Call 0.Method_TxtGrid_KeyPress0 (arg_10, var_A0)
  loc_F9A54E:     Proc_6_42_129B55C(var_A8, arg_10, 8)
  loc_F9A55D:   Else
  loc_F9A564:     If (var_9C = CLng(7)) Then
  loc_F9A571:       Set var_98 = var_A8(KeyAscii)
  loc_F9A577:       Call 0.Method_TxtGrid_KeyPress0 (3)
  loc_F9A592:       Proc_6_42_129B55C(var_A8, arg_10, 8)
  loc_F9A5A1:     Else
  loc_F9A5A8:       If (var_9C = CLng(4)) Then
  loc_F9A5B5:         Set var_98 = var_A8(KeyAscii)
  loc_F9A5BB:         Call 0.Method_TxtGrid_KeyPress0 (2)
  loc_F9A5D6:         Proc_6_42_129B55C(var_A8, arg_10, 6)
  loc_F9A5E2:       End If
  loc_F9A5E2:     End If
  loc_F9A5E2:   End If
  loc_F9A5E2: End If
  loc_F9A5E2: Exit Sub
  loc_F9A5E3: ' Referenced from: F9A478
  loc_F9A5E3: Proc_6_60_E63754(2)
  loc_F9A5E8: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '1066114
  'Data Table: 47AF10
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_A0 As Long
  Dim var_AC As TextBox
  Dim var_180 As Double
  Dim var_104 As DataGrid
  Dim var_A8 As String
  loc_1065EB0: On Error Goto loc_106610D
  loc_1065EB6: var_86 = KeyCode
  loc_1065EBF: If (var_86 = 0) Then
  loc_1065ECC:   (var_86).DeleteRowLabels , 
  loc_1065ED5:   var_A0 = CLng()
  loc_1065EE5:   If (var_A0 = CLng(1)) Then
  loc_1065F0B:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_1065F1C:       Call TxtGrid_KeyDown(KeyCode, global_70)
  loc_1065F25:       Set var_AC = var_A0(0)
  loc_1065F30:       var_A8 = "Name"
  loc_1065F4B:       Proc_6_89_1470B00(var_AC, KeyCode, global_60)
  loc_1065F5A:     End If
  loc_1065F5D:   Else
  loc_1065F64:     If Not (var_A0 = CLng(3)) Then
  loc_1065F6E:       If (var_A0 = CLng(4)) Then
  loc_1065F71:       End If
  loc_1065F7E:       Set var_8C = var_AC(KeyCode)
  loc_1065F84:       Call 0.Method_TxtGrid_KeyUp0 (var_A8, Shift)
  loc_1065F99:       var_180 = Val(var_AC.Text)
  loc_1065FA6:       &HFF(var_180).InsertRows , 
  loc_1065FBE:       (CVar(CLng())).DeleteRowLabels , 
  loc_1066002:       LateIdCallSt
  loc_1066033:       1(1(CVar(CStr(Format(CVar(var_180), "0.000"))))).InsertRows CVar(CLng()), 
  loc_106604D:       Set var_104 = CVar(CLng())(CVar(CLng(4)))
  loc_1066066:       var_180 = Val(CStr(DGItem.DispID_41))
  loc_1066073:       (var_180).InsertRows , 
  loc_1066093:       CVar(CLng())(CVar(CLng(5))).InsertRows , 
  loc_10660AD:       Set var_AC = CVar(CLng())(CVar(CLng(3)))
  loc_10660DA:       LateIdCallSt
  loc_1066107:       Call Proc_223_48_F74200((CVar(CStr((Val(CStr(DGItem.DispID_41)) * var_180)))))
  loc_106610C:     End If
  loc_106610C:   End If
  loc_106610C: End If
  loc_106610C: Exit Sub
  loc_106610D: ' Referenced from: 1065EB0
  loc_106610D: Proc_6_60_E63754()
  loc_1066112: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E2237C
  'Data Table: 47AF10
  Dim arg_10 As Integer
  loc_E22358: On Error Goto loc_E22373
  loc_E22366: Call Proc_223_42_140A6E8(Cancel, &HFF)
  loc_E2236F: arg_10 = Not(var_88)
  loc_E22372: Exit Sub
  loc_E22373: ' Referenced from: E22358
  loc_E22373: Proc_6_60_E63754(arg_10)
  loc_E22378: Exit Sub
End Sub

Private Sub DGDepart_UnknownEvent_9 'F47C54
  'Data Table: 47AF10
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F47B4B: Me.DGDepart.Visible = False
  loc_F47B6A: If (Me.RecordCount > 0) Then
  loc_F47BA9:   Set var_B4 = var_B8(CInt(3))
  loc_F47BAF:   Call 0.Method_DGDepart_UnknownEvent_90 (CStr(Me.Fields.Item("Code").Value))
  loc_F47BB7:   var_B8.Tag = 
  loc_F47BEA:   var_B0 = Me.Fields.Item("Name")
  loc_F47C09:   Set var_B4 = var_B8(CInt(3))
  loc_F47C0F:   Call 0.Method_DGDepart_UnknownEvent_90 (CStr(var_B0.Value))
  loc_F47C17:   var_B8.Text = 
  loc_F47C2D: End If
  loc_F47C38: Set var_A8 = var_B0(CInt(3))
  loc_F47C3E: Call 0.Method_DGDepart_UnknownEvent_90 ()
  loc_F47C46: var_B0.SetFocus
  loc_F47C52: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '1051180
  'Data Table: 47AF10
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_B0 As Variant
  loc_1050F2B: Me.DGItem.Visible = False
  loc_1050F4A: If (Me.RecordCount > 0) Then
  loc_1050F57:   ().InsertRows , 
  loc_1050FA9:   LateIdCallSt
  loc_1050FCF:   CVar(CLng())(CVar(CLng(1))(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_1051021:   LateIdCallSt
  loc_1051047:   CVar(CLng())(CVar(CLng(9))(CVar(CStr(Me.Fields.Item("Code").Value)))).InsertRows , 
  loc_1051099:   LateIdCallSt
  loc_10510BF:   CVar(CLng())(CVar(CLng(&HA))(CVar(CStr(Me.Fields.Item("RestCode").Value)))).InsertRows , 
  loc_10510C8:   var_A4 = CVar(CLng()) 'Long
  loc_10510F2:   var_B0 = Me.Fields.Item("Unit")
  loc_105110B:   Set var_128 = CVar(CLng(2))(CVar(CStr(var_B0.Value)))
  loc_1051111:   LateIdCallSt
  loc_105112D: End If
  loc_1051139: Set var_A8 = var_B0(0)
  loc_105113F: Call 0.Method_DGItem_UnknownEvent_90 (var_12A, var_128)
  loc_1051147: var_A4 = var_B0.Visible
  loc_1051159: If (var_12A = &HFF) Then
  loc_1051165:   Set var_A8 = var_B0(0)
  loc_105116B:   Call 0.Method_DGItem_UnknownEvent_90 ()
  loc_1051173:   var_B0.SetFocus
  loc_105117F: End If
  loc_105117F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5E944
  'Data Table: 47AF10
  Dim var_AC As TextBox
  loc_E5E909: Set var_A8 = (CVar(CLng("14737632")))
  loc_E5E922: Set var_A8 = var_AC(0)
  loc_E5E928: Call 0.Method_FGrid_UnknownEvent_00 (0)
  loc_E5E930: var_AC.Visible = DGItem.DispID_10
  loc_E5E93C: Call Proc_223_46_EBE6F4()
  loc_E5E941: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E68B08
  'Data Table: 47AF10
  Dim var_8C As TextBox
  loc_E68AC4: Set var_88 = var_8C(0)
  loc_E68ACA: Call 0.Method_FGrid_UnknownEvent_10 (var_8E)
  loc_E68AD2:  = var_8C.Visible
  loc_E68AE4: If (var_8E = 0) Then
  loc_E68AF7:   Set var_88 = (CVar(CLng(global_80)))
  loc_E68B05: End If
  loc_E68B05: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1D010
  'Data Table: 47AF10
  loc_E1D001: Set var_A8 = (CVar(CLng("16777215")))
  loc_E1D00F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E30904
  'Data Table: 47AF10
  Dim var_8C As TextBox
  loc_E308E7: Set var_88 = var_8C(0)
  loc_E308ED: Call 0.Method_FGrid_UnknownEvent_90 (0)
  loc_E308F5: var_8C.Visible = 
  loc_E30901: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '116B228
  'Data Table: 47AF10
  Dim var_98 As Variant
  Dim var_C0 As DataGrid
  Dim var_B8 As Variant
  Dim var_D4 As Variant
  Dim var_88 As DataGrid
  Dim var_BC As String
  Dim Cancel As Integer
  Dim var_EC As Long
  loc_116AE60: On Error Goto loc_116B21F
  loc_116AE67: Set var_88 = ()
  loc_116AE82: If (DGItem.DispID_6803000E = "Browse") Then
  loc_116AE85:   Exit Sub
  loc_116AE86: End If
  loc_116AE90: var_B8 = ().RowCount
  loc_116AEA3: var_D4 = (var_B8).RowCount
  loc_116AEFA: If ( And (CDbl(Val(CStr(var_D4((CLng(Cancel) = &H26)).Tag))) = CDbl((CLng(var_B8) - (CLng(var_D4) - 1))))) Then
  loc_116AF0D:   Set var_88 = (CVar(CLng(global_80)))
  loc_116AF23:   var_BC = "+{Tab}"
  loc_116AF29:   Proc_303_0_FBACC8(CStr(var_D4((CLng(Cancel) = &H26)).Tag), 0)
  loc_116AF33:   Cancel = 0
  loc_116AF39: Else
  loc_116AF43:   var_B8 = DGItem.DispID_26(Cancel).RowCount
  loc_116AF90:   If ( And (CDbl(Val(CStr(var_B8((CLng(Cancel) = &H28)).Tag))) = CDbl((CLng(var_B8) - 1)))) Then
  loc_116AFA3:     Set var_88 = (CVar(CLng(global_80)))
  loc_116AFB6:     Call Proc_223_49_ED1F90(0)
  loc_116AFBB:   End If
  loc_116AFBB: End If
  loc_116AFCE: DGItem.DispID_26(Cancel).InsertRows , 
  loc_116AFE7: (CVar(CStr(CLng()))).Tag = 
  loc_116B00B: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_116B018:   ().DeleteRowLabels , 
  loc_116B021:   var_EC = CLng()
  loc_116B031:   If (var_EC = CLng(1)) Then
  loc_116B03E:     (var_EC).InsertRows , 
  loc_116B056:     (CVar(CLng())).DeleteRowLabels , 
  loc_116B074:     LateIdCallSt
  loc_116B096:     (CVar(CLng())(vbNullString)).InsertRows , 
  loc_116B0BC:     LateIdCallSt
  loc_116B0D8:     CVar(CLng())(CVar(CLng(9))(vbNullString)).InsertRows , 
  loc_116B0FE:     LateIdCallSt
  loc_116B11A:     CVar(CLng())(CVar(CLng(&HA))(vbNullString)).InsertRows , 
  loc_116B140:     LateIdCallSt
  loc_116B15C:     CVar(CLng())(CVar(CLng(2))(vbNullString)).InsertRows , 
  loc_116B165:     var_98 = CVar(CLng()) 'Long
  loc_116B17C:     Set var_C0 = CVar(CLng(7))(vbNullString)
  loc_116B182:     LateIdCallSt
  loc_116B197:   Else
  loc_116B19E:     If Not (var_EC = CLng(7)) Then
  loc_116B1A8:       If (var_EC = CLng(3)) Then
  loc_116B1AB:       End If
  loc_116B1B5:       var_98(var_C0).InsertRows , 
  loc_116B1CD:       (CVar(CLng())).DeleteRowLabels , 
  loc_116B1EB:       LateIdCallSt
  loc_116B203:       Call Proc_223_48_F74200(CVar(CLng())(vbNullString))
  loc_116B208:     End If
  loc_116B208:   End If
  loc_116B208: End If
  loc_116B20E: If (Cancel = &HD) Then
  loc_116B216:   global_68 = 0
  loc_116B219: End If
  loc_116B21B: Cancel = 0
  loc_116B21E: Exit Sub
  loc_116B21F: ' Referenced from: 116AE60
  loc_116B21F: Proc_6_60_E63754(Cancel)
  loc_116B224: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E11140
  'Data Table: 47AF10
  loc_E11131: Call FGrid_UnknownEvent_C()
  loc_E1113B: global_68 = 0
  loc_E1113E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '102CE48
  'Data Table: 47AF10
  Dim var_AC As DataGrid
  Dim var_B0 As Long
  Dim var_B4 As String
  Dim var_CE As Integer
  Dim var_B8 As TextBox
  Dim var_C8 As TextBox
  loc_102CC33: var_88 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_102CC3D: On Error Goto loc_102CE3F
  loc_102CC4A: ().DeleteRowLabels , 
  loc_102CC53: var_B0 = CLng()
  loc_102CC63: If (var_B0 = CLng(1)) Then
  loc_102CC6A:   Set var_C8 = (var_B0)
  loc_102CC8E:   var_B4 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_102CCBB:   Set var_B8 = var_C8
  loc_102CCCD:   Proc_6_63_110B734(Me, var_B8, (), 0)
  loc_102CCF5:   Set var_AC = var_B8(0)
  loc_102CCFB:   Call 0.Method_FGrid_UnknownEvent_C0 (var_B4, 0, Asc(var_B4))
  loc_102CD03:   0 = var_B8.Text
  loc_102CD1C:   If (Len(var_B4) <= 1) Then
  loc_102CD2B:     Set var_AC = var_B8(0)
  loc_102CD31:     Call 0.Method_FGrid_UnknownEvent_C0 (var_B4)
  loc_102CD39:     var_CE = var_B8.Text
  loc_102CD4A:     Set var_BC = var_C8(0)
  loc_102CD50:     Call 0.Method_FGrid_UnknownEvent_C0 (var_B4)
  loc_102CD58:     var_C8.Text = 
  loc_102CD6B:   End If
  loc_102CD77:   Set var_AC = var_B8(0)
  loc_102CD7D:   Call 0.Method_FGrid_UnknownEvent_C0 (var_B4)
  loc_102CD85:    = var_B8.Text
  loc_102CD97:   Set var_BC = var_C8(0)
  loc_102CD9D:   Call 0.Method_FGrid_UnknownEvent_C0 (Len(var_B4))
  loc_102CDA5:   var_C8.SelStart = 
  loc_102CDBB: Else
  loc_102CDC2:   If Not (var_B0 = CLng(7)) Then
  loc_102CDCC:     If Not (var_B0 = CLng(3)) Then
  loc_102CDD6:       If (var_B0 = CLng(4)) Then
  loc_102CDD9:       End If
  loc_102CDD9:     End If
  loc_102CE17:     Proc_6_63_110B734(Me, (), (), 0)
  loc_102CE29:   End If
  loc_102CE29: End If
  loc_102CE33: If (CLng(Cancel) <> &HD) Then
  loc_102CE3B:   global_68 = &HFF
  loc_102CE3E: End If
  loc_102CE3E: Exit Sub
  loc_102CE3F: ' Referenced from: 102CC3D
  loc_102CE3F: Proc_6_60_E63754(global_68, &HFF)
  loc_102CE44: Exit Sub
  loc_102CE45: ThisVCallI2
End Sub

Private Sub FGrid_UnknownEvent_D '1050ED0
  'Data Table: 47AF10
  Dim var_9C As Variant
  Dim var_8C As DataGrid
  loc_1050C6C: On Error Goto loc_1050EC8
  loc_1050C73: Set var_8C = ()
  loc_1050C8E: If (DGItem.DispID_6803000E = "Browse") Then
  loc_1050C91:   Exit Sub
  loc_1050C92: End If
  loc_1050C9C: ().RandomDataFill
  loc_1050CAF: If (CLng() = CLng(0)) Then
  loc_1050CB2:   Exit Sub
  loc_1050CB3: End If
  loc_1050CC4: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_1050CD1:   ().InsertRows , 
  loc_1050CE6:   If (CLng() >= 1) Then
  loc_1050D20:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_1050D42:       If (CLng(().RowCount) > 2) Then
  loc_1050D4F:         ().InsertRows , 
  loc_1050D61:         Set var_110 = (CVar(CLng()))
  loc_1050D7C:       Else
  loc_1050D8F:         DGItem.DispID_10000(1).RowCount = 
  loc_1050DBD:         Set var_110 = CInt(0)(CVar(CStr(Proc_6_127_F25B10(()))))
  loc_1050DE4:         Set var_8C = DGItem.DispID_10000(1)
  loc_1050DF2:       End If
  loc_1050DF2:       Call Proc_223_48_F74200(DGItem.DispID_6)
  loc_1050DFB:       Set var_8C = ()
  loc_1050E16:       If (DGItem.DispID_6803000E = "Add") Then
  loc_1050E3E:         For var_11C =  To CInt((CLng(1(var_86).RowCount) - 1)):  = var_11C 'Integer
  loc_1050E48:           var_9C = CVar(CLng(var_86)) 'Long
  loc_1050E62:           Set var_8C = CVar(CLng(0))(CVar(CStr(var_86)))
  loc_1050E68:           LateIdCallSt
  loc_1050E79:         Next var_11C 'Integer
  loc_1050E7E:       End If
  loc_1050E7E:     End If
  loc_1050E81:   Else
  loc_1050EA2:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_1050EB2:   End If
  loc_1050EB6:   Set var_8C = ()
  loc_1050EC7: End If
  loc_1050EC7: Exit Sub
  loc_1050EC8: ' Referenced from: 1050C6C
  loc_1050EC8: Proc_6_60_E63754(DGItem.DispID_8001)
  loc_1050ECD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_12 'E9BFD0
  'Data Table: 47AF10
  loc_E9BF6A: ().InsertRows , 
  loc_E9BF82: (CVar(CLng())).DeleteRowLabels , 
  loc_E9BF94: Set var_F0 = (CVar(CLng()))
  loc_E9BFB3: (CVar(CStr(DGItem.DispID_41))).ToolTipText = 
  loc_E9BFCE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E40918
  'Data Table: 47AF10
  Dim var_8C As TextBox
  loc_E408F7: Set var_88 = var_8C(0)
  loc_E408FD: Call 0.Method_FGrid_UnknownEvent_150 (0)
  loc_E40905: var_8C.Visible = 
  loc_E40911: Call Proc_223_46_EBE6F4()
  loc_E40916: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E98788
  'Data Table: 47AF10
  Dim Me As Recordset15
  loc_E98716: On Error Goto loc_E9877F
  loc_E9871F: Me.MoveFirst
  loc_E98749: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E98771: Proc_5_0_1107AD0(&HFF, Me, global_56)
  loc_E98779: Call Proc_223_44_1215EEC(0)
  loc_E9877E: Exit Sub
  loc_E9877F: ' Referenced from: E98716
  loc_E9877F: Proc_6_60_E63754(var_A0)
  loc_E98784: Exit Sub
End Sub

Public Sub Proc_223_42_140A6E8(arg_C, arg_10) '140A6E8
  'Data Table: 47AF10
  Dim var_90 As Variant
  Dim var_A4 As Long
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_104 As Variant
  Dim var_118 As DataGrid
  Dim var_D4 As Variant
  Dim var_138 As Variant
  Dim var_13C As Variant
  Dim var_B4 As String
  Dim unk_47AF1F As Connection15
  Dim var_8C As Recordset15
  Dim var_14C As Variant
  Dim var_19C As Double
  loc_1409CB6: ().DeleteRowLabels , 
  loc_1409CCF: If (CLng() = CLng(1)) Then
  loc_1409D20:   Set var_90 = var_B0(arg_C)
  loc_1409D26:   Call 0.Method_Proc_223_42_140A6E80 (var_B4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1409D2E:   var_A4 = var_B0.Text
  loc_1409D46:   If ( Or (var_B4 = vbNullString)) Then
  loc_1409D53:     ().InsertRows , 
  loc_1409D79:     LateIdCallSt
  loc_1409D95:     CVar(CLng())(CVar(CLng(1))(vbNullString)).InsertRows , 
  loc_1409DBB:     LateIdCallSt
  loc_1409DD7:     CVar(CLng())(CVar(CLng(9))(vbNullString)).InsertRows , 
  loc_1409DFD:     LateIdCallSt
  loc_1409E19:     CVar(CLng())(CVar(CLng(&HA))(vbNullString)).InsertRows , 
  loc_1409E3F:     LateIdCallSt
  loc_1409E5B:     CVar(CLng())(CVar(CLng(2))(vbNullString)).InsertRows , 
  loc_1409E81:     LateIdCallSt
  loc_1409E9D:     CVar(CLng())(CVar(CLng(7))(vbNullString)).InsertRows , 
  loc_1409EC3:     LateIdCallSt
  loc_1409EDF:     CVar(CLng())(CVar(CLng(6))(vbNullString)).InsertRows , 
  loc_1409F05:     LateIdCallSt
  loc_1409F21:     CVar(CLng())(CVar(CLng(5))(vbNullString)).InsertRows , 
  loc_1409F47:     LateIdCallSt
  loc_1409F63:     CVar(CLng())(CVar(CLng(3))(vbNullString)).InsertRows , 
  loc_1409F6C:     var_C4 = CVar(CLng()) 'Long
  loc_1409F83:     Set var_B0 = CVar(CLng(4))(vbNullString)
  loc_1409F89:     LateIdCallSt
  loc_1409F9E:   Else
  loc_1409FA8:     var_C4(var_B0).InsertRows , 
  loc_1409FFA:     LateIdCallSt
  loc_140A020:     CVar(CLng())(CVar(CLng(1))(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_140A072:     LateIdCallSt
  loc_140A098:     CVar(CLng())(CVar(CLng(9))(CVar(CStr(Me.Fields.Item("Code").Value)))).InsertRows , 
  loc_140A0EA:     LateIdCallSt
  loc_140A110:     CVar(CLng())(CVar(CLng(&HA))(CVar(CStr(Me.Fields.Item("RestCode").Value)))).InsertRows , 
  loc_140A162:     LateIdCallSt
  loc_140A1A7:     CVar(CLng())(CVar(CLng(2))(CVar(CStr(Me.Fields.Item("Unit").Value)))).InsertRows , 
  loc_140A1F3:     LateIdCallSt
  loc_140A21B:     1(1(CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))))).InsertRows CVar(CLng(7)), CVar(CLng())
  loc_140A26D:     LateIdCallSt
  loc_140A293:     CVar(CLng())(CVar(CLng(4))(CVar(CStr(Me.Fields.Item("ConvRatio").Value)))).InsertRows , 
  loc_140A29C:     var_D4 = CVar(CLng()) 'Long
  loc_140A2CE:     var_128 = Me.Fields.Item("IssueUnit").Value
  loc_140A2D7:     var_138 = CVar(CStr(var_128)) 'String
  loc_140A2DF:     Set var_13C = CVar(CLng(6))(var_138)
  loc_140A2E5:     LateIdCallSt
  loc_140A301:   End If
  loc_140A30B:   var_D4(var_13C).InsertRows , 
  loc_140A325:   Set var_B0 = CVar(CLng())(CVar(CLng(9)))
  loc_140A345:   Set var_118 = var_13C(CInt(3))
  loc_140A34B:   Call 0.Method_Proc_223_42_140A6E80 (var_174)
  loc_140A353:   DGItem.DispID_41 = var_13C.Tag
  loc_140A36C:   var_B4 = CStr(var_128)
  loc_140A38E:   unk_47AF1F.Execute "SELECT RATE FROM ITEMRATE WHERE ITEMCODE='" & var_B4 & "' AND RestCode='" & var_174 & "'", var_138, -1
  loc_140A399:   Set var_8C = var_184
  loc_140A3D5:   If (var_8C.RecordCount > 0) Then
  loc_140A3E2:     (var_184).InsertRows , 
  loc_140A3EB:     var_D4 = CVar(CLng()) 'Long
  loc_140A40F:     var_B0 = var_8C.Fields.Item("Rate")
  loc_140A41E:     Proc_6_47_EF6560(var_128, CVar(var_B0))
  loc_140A427:     var_14C = CVar(CStr(var_128)) 'String
  loc_140A435:     LateIdCallSt
  loc_140A451:     Call Proc_223_48_F74200(CVar(CLng(7))(var_14C))
  loc_140A456:   End If
  loc_140A459: Else
  loc_140A460:   If (var_A4 = CLng(7)) Then
  loc_140A46F:     Set var_90 = var_B0(0)
  loc_140A475:     Call 0.Method_Proc_223_42_140A6E80 (var_B4)
  loc_140A47D:     var_D4 = var_B0.Text
  loc_140A48A:     var_19C = Val(var_B4)
  loc_140A497:     (var_19C).InsertRows , 
  loc_140A4AF:     (CVar(CLng())).DeleteRowLabels , 
  loc_140A4B8:     var_104 = CVar(CLng()) 'Long
  loc_140A4CC:     var_128 = "0.00"
  loc_140A4DC:     var_138 = Format(CVar(var_19C), var_128)
  loc_140A4F3:     LateIdCallSt
  loc_140A51A:     Call Proc_223_48_F74200(1(CVar(CStr(var_138))), 1)
  loc_140A522:   Else
  loc_140A529:     If Not (var_A4 = CLng(3)) Then
  loc_140A533:       If (var_A4 = CLng(4)) Then
  loc_140A536:       End If
  loc_140A540:       (var_104).DeleteRowLabels , 
  loc_140A553:       If (CLng() = CLng(4)) Then
  loc_140A562:         Set var_90 = var_B0(0)
  loc_140A568:         Call 0.Method_Proc_223_42_140A6E80 (var_B4)
  loc_140A570:          = var_B0.Text
  loc_140A595:         If (global_72 <> CDbl(Val(var_B4))) Then
  loc_140A5C7:           If (MsgBox("Proceed with Changed Conversion Factor ?", &H24, var_128, var_138, var_14C) = 7) Then
  loc_140A5CF:             Proc_223_42_140A6E8 = 0
  loc_140A5D5:           End If
  loc_140A5D5:         End If
  loc_140A5D5:       End If
  loc_140A5E1:       Set var_90 = var_B0(0)
  loc_140A5E7:       Call 0.Method_Proc_223_42_140A6E80 (var_B4)
  loc_140A5EF:       var_19C = var_B0.Text
  loc_140A5FC:       var_19C = Val(var_B4)
  loc_140A609:       (var_19C).InsertRows , 
  loc_140A621:       (CVar(CLng())).DeleteRowLabels , 
  loc_140A62A:       var_104 = CVar(CLng()) 'Long
  loc_140A665:       LateIdCallSt
  loc_140A68C:       Call Proc_223_48_F74200(1(CVar(CStr(Format(CVar(var_19C), "0.000")))), 1)
  loc_140A691:     End If
  loc_140A691:   End If
  loc_140A691: End If
  loc_140A69C: If (arg_10 = 0) Then
  loc_140A6A3:   Set var_90 = var_104(&HFF)
  loc_140A6BF:   Set var_90 = var_B0(0)
  loc_140A6C5:   Call 0.Method_Proc_223_42_140A6E80 (0)
  loc_140A6CD:   var_B0.Visible = DGItem.DispID_8001
  loc_140A6D9: End If
  loc_140A6DE: Set var_8C = Nothing
  loc_140A6E1: Proc_223_42_140A6E8 = 
End Sub

Public Sub Proc_223_43_F2B524
  'Data Table: 47AF10
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_F2B426: Set var_8C = var_86(var_8E)
  loc_F2B42C: Call 0.Method_Proc_223_43_F2B524C (CByte(0))
  loc_F2B43C: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_F2B452:   Set var_8C = var_98(CInt(var_86))
  loc_F2B458:   Call 0.Method_Proc_223_43_F2B5240 (vbNullString)
  loc_F2B460:   var_98.Text = 
  loc_F2B47C:   Set var_8C = var_98(CInt(var_86))
  loc_F2B482:   Call 0.Method_Proc_223_43_F2B5240 (vbNullString)
  loc_F2B48A:   var_98.Tag = 
  loc_F2B499: Next var_92 'Byte
  loc_F2B4AC: (vbNullString).Caption = 
  loc_F2B4C7: (1).RowCount = 
  loc_F2B4EC: Set var_98 = (CVar(CStr(CLng(().RowCount))))
  loc_F2B515: Set var_8C = DGItem.DispID_10000(1)
  loc_F2B523: Exit Sub
End Sub

Public Sub Proc_223_44_1215EEC
  'Data Table: 47AF10
  Dim Me As Recordset15
  Dim var_D0 As Variant
  Dim var_9C As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim unk_47AF1F As Connection15
  Dim var_88 As Recordset15
  Dim var_12C As TextBox
  Dim var_8A As Integer
  loc_1215A2C: On Error Goto loc_1215EE4
  loc_1215A46: If (Me.RecordCount > 0) Then
  loc_1215A56:   var_D0 = "Select D.SNo,D.Item,I.Name As ItemName,I.Unit,D.IssQty,D.FrDepart,FrG.Name As FrDepartName,D.ToDepart,ToG.Name As ToDepartName,I.RestCode From DepartWiseItemIssueList D Left Join ItemMast I On I.Code=D.Item And I.ItemType='Store' Left Join GodownMast FrG On D.FrDepart=FrG.Code Left Join GodownMast ToG On D.ToDepart=ToG.Code where D.FrDepart+D.ToDepart='"
  loc_1215A9F:   unk_47AF1F.Execute CStr(var_D0 & Me.Fields.Item("SearchCode").Value & "' Order By Sno"), var_124, -1
  loc_1215AAA:   Set var_88 = var_128
  loc_1215B00:   Call 0.Method_Proc_223_44_1215EEC0 (Proc_6_38_E69628(CVar(var_88.Fields.Item("FrDepart"))))
  loc_1215B08:   var_12C.Tag = var_12C(CInt(3))
  loc_1215B52:   Set var_128 = var_12C(CInt(3))
  loc_1215B58:   Call 0.Method_Proc_223_44_1215EEC0 (Proc_6_38_E69628(CVar(var_88.Fields.Item("FrDepartname"))))
  loc_1215B60:   var_12C.Text = 
  loc_1215BAA:   Set var_128 = var_12C(CInt(4))
  loc_1215BB0:   Call 0.Method_Proc_223_44_1215EEC0 (Proc_6_38_E69628(CVar(var_88.Fields.Item("ToDepart"))))
  loc_1215BB8:   var_12C.Tag = 
  loc_1215C02:   Set var_128 = var_12C(CInt(4))
  loc_1215C08:   Call 0.Method_Proc_223_44_1215EEC0 (Proc_6_38_E69628(CVar(var_88.Fields.Item("ToDepartname"))))
  loc_1215C10:   var_12C.Text = 
  loc_1215C37:   (1).RowCount = 
  loc_1215C41:   var_8A = 1
  loc_1215C44:   ' Referenced from: 1215EA8
  loc_1215C53:   If Not(var_88.EOF) Then
  loc_1215C60:     Set var_9C = var_8A(vbNullString)
  loc_1215C75:     Set var_134 = (DGItem.DispID_10000)
  loc_1215C7C:     var_D0 = CVar(CLng(var_8A)) 'Long
  loc_1215CB1:     var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SNo")), CVar(CLng(0)))) 'String
  loc_1215CB8:     LateIdCallSt
  loc_1215D03:     var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8A)))) 'String
  loc_1215D0A:     LateIdCallSt
  loc_1215D55:     var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), CVar(CLng(2)), CVar(CLng(var_8A)), var_134)) 'String
  loc_1215D5C:     LateIdCallSt
  loc_1215D94:     Proc_6_39_E7D3A0(var_E0, CVar(var_88.Fields.Item("IssQty")), var_134, var_E0)
  loc_1215D9D:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_1215DD5:     LateIdCallSt
  loc_1215E26:     var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Item")), CVar(CLng(9)), CVar(CLng(var_8A)), var_134, CVar(CStr(Format(var_E0, "0.000"))), 1, 1)) 'String
  loc_1215E2D:     LateIdCallSt
  loc_1215E78:     var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RestCode")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_134, var_E0, CVar(CLng(3)))) 'String
  loc_1215E7F:     LateIdCallSt
  loc_1215E93:     Set var_134 = Nothing 
  loc_1215E9D:     var_8A = (var_8A + 1)
  loc_1215EA3:     var_88.MoveNext
  loc_1215EA8:     GoTo loc_1215C44
  loc_1215EAB:   End If
  loc_1215EB8:   Set var_9C = var_8A(1)
  loc_1215EC9: Else
  loc_1215EC9:   Call Proc_223_43_F2B524(DGItem.DispID_6, var_134, var_E0, var_F0)
  loc_1215ECE: End If
  loc_1215ECE: Call Proc_223_46_EBE6F4(var_E0, var_134)
  loc_1215ED3: Exit Sub
  loc_1215ED9: Set var_90 = Nothing
  loc_1215EE1: Set var_94 = Nothing
  loc_1215EE4: ' Referenced from: 1215A2C
  loc_1215EE4: Proc_6_60_E63754(var_E0)
  loc_1215EE9: Exit Sub
End Sub

Public Sub Proc_223_45_EEE3DC(arg_C) 'EEE3DC
  'Data Table: 47AF10
  Dim var_98 As TextBox
  loc_EEE316: Set var_8C = var_86(var_8E)
  loc_EEE31C: Call 0.Method_Proc_223_45_EEE3DCC (CByte(0))
  loc_EEE32C: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_EEE342:   Set var_8C = var_98(CInt(var_86))
  loc_EEE348:   Call 0.Method_Proc_223_45_EEE3DC0 (arg_C)
  loc_EEE350:   var_98.Enabled = 
  loc_EEE35F: Next var_92 'Byte
  loc_EEE372: Set var_8C = var_98(CInt(0))
  loc_EEE378: Call 0.Method_Proc_223_45_EEE3DC0 (0)
  loc_EEE380: var_98.Enabled = 
  loc_EEE399: Set var_8C = var_98(CInt(2))
  loc_EEE39F: Call 0.Method_Proc_223_45_EEE3DC0 (0)
  loc_EEE3A7: var_98.Enabled = 
  loc_EEE3C0: Set var_8C = var_98(CInt(1))
  loc_EEE3C6: Call 0.Method_Proc_223_45_EEE3DC0 (0)
  loc_EEE3CE: var_98.Enabled = 
  loc_EEE3DA: Exit Sub
End Sub

Public Sub Proc_223_46_EBE6F4
  'Data Table: 47AF10
  loc_EBE66C: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EBE67E:   Me.DGDepart.Visible = False
  loc_EBE686: End If
  loc_EBE6A2: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EBE6B4:   Me.DGItem.Visible = False
  loc_EBE6BC: End If
  loc_EBE6D8: If (CBool(().Visible) = &HFF) Then
  loc_EBE6EA:   (False).Visible = 
  loc_EBE6F2: End If
  loc_EBE6F2: Exit Sub
End Sub

Public Sub Proc_223_47_11D8598
  'Data Table: 47AF10
  Dim var_94 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_11D8127: (CVar(CDbl(6585))).Width = 
  loc_11D8142: (CVar(CDbl(1450))).Top = 
  loc_11D815D: (CVar(CDbl(3300))).Height = 
  loc_11D8178: Me.DGItem.Left = CVar(CDbl(2800))
  loc_11D8193: Me.DGItem.Top = CVar(CDbl(1200))
  loc_11D819F: Set var_AC = ()
  loc_11D81B6: global_80 = CStr(CLng(DGItem.DispID_FFFFFE0B))
  loc_11D81C0: var_94 = &HB
  loc_11D81D4: var_94 = CVar(CLng(0)) 'Long
  loc_11D81D9: var_D0 = &HFA
  loc_11D81E5: LateIdCallSt
  loc_11D81ED: var_94 = 0
  loc_11D81F9: var_D0 = CVar(CLng(1)) 'Long
  loc_11D81FE: var_F0 = "Item Name"
  loc_11D8207: LateIdCallSt
  loc_11D8212: var_94 = CVar(CLng(1)) 'Long
  loc_11D821D: var_D0 = CVar(CInt(1)) 'Integer
  loc_11D8224: LateIdCallSt
  loc_11D822F: var_94 = CVar(CLng(1)) 'Long
  loc_11D8234: var_D0 = &HD48
  loc_11D8240: LateIdCallSt
  loc_11D8248: var_94 = 0
  loc_11D8254: var_D0 = CVar(CLng(2)) 'Long
  loc_11D8259: var_F0 = "Unit"
  loc_11D8262: LateIdCallSt
  loc_11D826D: var_94 = CVar(CLng(2)) 'Long
  loc_11D8278: var_D0 = CVar(CInt(1)) 'Integer
  loc_11D827F: LateIdCallSt
  loc_11D828A: var_94 = CVar(CLng(2)) 'Long
  loc_11D828F: var_D0 = &H44C
  loc_11D829B: LateIdCallSt
  loc_11D82A3: var_94 = 0
  loc_11D82AF: var_D0 = CVar(CLng(3)) 'Long
  loc_11D82B4: var_F0 = "Iss. Qty"
  loc_11D82BD: LateIdCallSt
  loc_11D82C8: var_94 = CVar(CLng(3)) 'Long
  loc_11D82D3: var_D0 = CVar(CInt(7)) 'Integer
  loc_11D82DA: LateIdCallSt
  loc_11D82E5: var_94 = CVar(CLng(3)) 'Long
  loc_11D82F0: var_D0 = CVar(CInt(7)) 'Integer
  loc_11D82F7: LateIdCallSt
  loc_11D8302: var_94 = CVar(CLng(3)) 'Long
  loc_11D8307: var_D0 = &H578
  loc_11D8313: LateIdCallSt
  loc_11D831B: var_94 = 0
  loc_11D8327: var_D0 = CVar(CLng(4)) 'Long
  loc_11D832C: var_F0 = "Conv. Factor"
  loc_11D8335: LateIdCallSt
  loc_11D8340: var_94 = CVar(CLng(4)) 'Long
  loc_11D834B: var_D0 = CVar(CInt(7)) 'Integer
  loc_11D8352: LateIdCallSt
  loc_11D835D: var_94 = CVar(CLng(4)) 'Long
  loc_11D8368: var_D0 = CVar(CInt(7)) 'Integer
  loc_11D836F: LateIdCallSt
  loc_11D837A: var_94 = CVar(CLng(4)) 'Long
  loc_11D837F: var_D0 = 0
  loc_11D838B: LateIdCallSt
  loc_11D8393: var_94 = 0
  loc_11D839F: var_D0 = CVar(CLng(5)) 'Long
  loc_11D83A4: var_F0 = "Wt. Qty"
  loc_11D83AD: LateIdCallSt
  loc_11D83B8: var_94 = CVar(CLng(5)) 'Long
  loc_11D83C3: var_D0 = CVar(CInt(7)) 'Integer
  loc_11D83CA: LateIdCallSt
  loc_11D83D5: var_94 = CVar(CLng(5)) 'Long
  loc_11D83E0: var_D0 = CVar(CInt(7)) 'Integer
  loc_11D83E7: LateIdCallSt
  loc_11D83F2: var_94 = CVar(CLng(5)) 'Long
  loc_11D83F7: var_D0 = 0
  loc_11D8403: LateIdCallSt
  loc_11D840B: var_94 = 0
  loc_11D8417: var_D0 = CVar(CLng(6)) 'Long
  loc_11D841C: var_F0 = "Wt.Unit"
  loc_11D8425: LateIdCallSt
  loc_11D8430: var_94 = CVar(CLng(6)) 'Long
  loc_11D843B: var_D0 = CVar(CInt(1)) 'Integer
  loc_11D8442: LateIdCallSt
  loc_11D844D: var_94 = CVar(CLng(6)) 'Long
  loc_11D8452: var_D0 = 0
  loc_11D845E: LateIdCallSt
  loc_11D8466: var_94 = 0
  loc_11D8472: var_D0 = CVar(CLng(7)) 'Long
  loc_11D8477: var_F0 = "Rate"
  loc_11D8480: LateIdCallSt
  loc_11D848B: var_94 = CVar(CLng(7)) 'Long
  loc_11D8496: var_D0 = CVar(CInt(7)) 'Integer
  loc_11D849D: LateIdCallSt
  loc_11D84A8: var_94 = CVar(CLng(7)) 'Long
  loc_11D84B3: var_D0 = CVar(CInt(7)) 'Integer
  loc_11D84BA: LateIdCallSt
  loc_11D84C5: var_94 = CVar(CLng(7)) 'Long
  loc_11D84CA: var_D0 = 0
  loc_11D84D6: LateIdCallSt
  loc_11D84DE: var_94 = 0
  loc_11D84EA: var_D0 = CVar(CLng(8)) 'Long
  loc_11D84EF: var_F0 = "Amount"
  loc_11D84F8: LateIdCallSt
  loc_11D8503: var_94 = CVar(CLng(8)) 'Long
  loc_11D850E: var_D0 = CVar(CInt(7)) 'Integer
  loc_11D8515: LateIdCallSt
  loc_11D8520: var_94 = CVar(CLng(8)) 'Long
  loc_11D852B: var_D0 = CVar(CInt(7)) 'Integer
  loc_11D8532: LateIdCallSt
  loc_11D853D: var_94 = CVar(CLng(8)) 'Long
  loc_11D8542: var_D0 = 0
  loc_11D854E: LateIdCallSt
  loc_11D8559: var_94 = CVar(CLng(9)) 'Long
  loc_11D855E: var_D0 = 0
  loc_11D856A: LateIdCallSt
  loc_11D8575: var_94 = CVar(CLng(&HA)) 'Long
  loc_11D857A: var_D0 = 0
  loc_11D8586: LateIdCallSt
  loc_11D8590: Set var_AC = Nothing 
  loc_11D8594: Exit Sub
End Sub

Public Sub Proc_223_48_F74200
  'Data Table: 47AF10
  Dim var_22C As Double
  Dim var_234 As Double
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  loc_F740FA: ().InsertRows , 
  loc_F74114: Set var_DC = CVar(CLng())(CVar(CLng(7)))
  loc_F7412D: var_22C = Val(CStr(DGItem.DispID_41))
  loc_F7413A: (var_22C).InsertRows , 
  loc_F74154: Set var_148 = CVar(CLng())(CVar(CLng(3)))
  loc_F7416D: var_234 = Val(CStr(DGItem.DispID_41))
  loc_F7417A: (var_234).InsertRows , 
  loc_F74183: var_1D0 = CVar(CLng()) 'Long
  loc_F7418B: var_1F0 = CVar(CLng(8)) 'Long
  loc_F741C4: Set var_224 = 1(CVar(CStr(Format(CVar((var_22C * var_234)), "0.00"))))
  loc_F741CA: LateIdCallSt
  loc_F741FD: Exit Sub
End Sub

Public Sub Proc_223_49_ED1F90
  'Data Table: 47AF10
  loc_ED1EF0: Call Proc_223_46_EBE6F4()
  loc_ED1F00: Set var_88 = var_8C(CInt(2))
  loc_ED1F06: Call 0.Method_Proc_223_49_ED1F900 ()
  loc_ED1F0E: var_94 = "Date"
  loc_ED1F2F: If (Proc_6_27_EA61EC(var_8C) = 0) Then
  loc_ED1F32:   Exit Sub
  loc_ED1F33: End If
  loc_ED1F6A: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_ED1F6D:   Call TopCtrl1_UnknownEvent_19()
  loc_ED1F75: Else
  loc_ED1F7B:   Call 0.Method_arg_1E8 (var_88)
  loc_ED1F83:   Call var_88.SetFocus
  loc_ED1F8C: End If
  loc_ED1F8C: Exit Sub
  loc_ED1F8D: Set var_8C = var_94
End Sub
