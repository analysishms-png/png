VERSION 5.00
Begin VB.Form FaNarrMast
  Caption = "Narration Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FaNarrMast.frx":0
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 7365
  ClientHeight = 9480
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
    Width = 7365
    Height = 450
    TabIndex = 7
  End
  Begin DataGrid DGMaster
    Left = 1875
    Top = 2115
    Width = 6600
    Height = 7005
    TabIndex = 3
  End
End
Begin DataGrid DGHelp
  Left = 8295
  Top = 2670
  Width = 4230
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 1
End
Begin TextBox Txt
  Index = 0
  ForeColor = &HC00000&
  Left = 1950
  Top = 1350
  Width = 4980
  Height = 735
  TabIndex = 0
  BorderStyle = 0 'None
  MultiLine = -1  'True
  ScrollBars = 2
  MaxLength = 255
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
Begin Label LblUser
  Caption = "User"
  ForeColor = &HFF0000&
  Left = 8910
  Top = 6330
  Width = 2880
  Height = 255
  TabIndex = 6
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
Begin Label LblLDt
  Caption = "Last Update"
  ForeColor = &HFF0000&
  Left = 8955
  Top = 6930
  Width = 2790
  Height = 285
  TabIndex = 5
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
Begin Label LblFormCaption
  BackColor = &HC0FFFF&
  Left = 0
  Top = 360
  Width = 180
  Height = 540
  TabIndex = 4
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
Begin Label Label1
  Caption = "Narration"
  Index = 0
  ForeColor = &HC00000&
  Left = 960
  Top = 1320
  Width = 885
  Height = 240
  TabIndex = 2
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

Attribute VB_Name = "FaNarrMast"


Private Sub DGMaster_UnknownEvent_22 'E52D6C
  'Data Table: 448E2C
  loc_E52D40: Set var_88 = Me.TopCtrl1
  loc_E52D46: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E52D5F: If (CStr() <> "Browse") Then
  loc_E52D62:   Exit Sub
  loc_E52D63: End If
  loc_E52D63: Call Proc_202_28_119ACC4()
  loc_E52D68: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EAC5B4
  'Data Table: 448E2C
  Dim var_94 As TextBox
  loc_EAC530: On Error Goto loc_EAC58C
  loc_EAC548: var_88 = "ADD"
  loc_EAC556: Call Proc_202_29_ECF8C0(Proc_5_1_100EC1C(var_88, Me))
  loc_EAC561: Call Proc_202_27_EAD7D4(global_60)
  loc_EAC571: Set var_8C = Me.Txt
  loc_EAC577: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EAC57F: var_94.SetFocus
  loc_EAC58B: Exit Sub
  loc_EAC58C: ' Referenced from: EAC530
  loc_EAC592: Call 0.Method_arg_50 (var_88)
  loc_EAC5A7: Proc_183_57_104B0BC(var_88, "TopCtrl1_eAdd")
  loc_EAC5B3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'ECF9A0
  'Data Table: 448E2C
  loc_ECF904: On Error Goto loc_ECF975
  loc_ECF93E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_ECF956:   var_10C = "INI"
  loc_ECF964:   Call Proc_202_29_ECF8C0(Proc_5_1_100EC1C(var_10C, Me))
  loc_ECF96F:   Call Proc_202_28_119ACC4(global_60)
  loc_ECF974: End If
  loc_ECF974: Exit Sub
  loc_ECF975: ' Referenced from: ECF904
  loc_ECF97B: Call 0.Method_arg_50 (var_10C)
  loc_ECF983: var_11C = "TopCtrl1_eCancel"
  loc_ECF990: Proc_183_57_104B0BC(var_10C)
  loc_ECF99C: Exit Sub
  loc_ECF99D: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10CDEF8
  'Data Table: 448E2C
  Dim unk_448E4B As Connection15
  Dim Me As Recordset15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_10CDC2C: On Error Goto loc_10CDEB6
  loc_10CDC3D: If (Proc_183_56_FE8B08(global_60) = &HFF) Then
  loc_10CDC40:   Exit Sub
  loc_10CDC41: End If
  loc_10CDC78: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F8, var_118) = 6) Then
  loc_10CDC7F:   var_98 = CByte(1) 'Byte
  loc_10CDC8C:   unk_448E4B.BeginTrans var_11C
  loc_10CDCA2:   var_94 = Me.Bookmark 'Variant
  loc_10CDCFC:   unk_448E4B.Execute CStr("Delete From NarrMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_10CDD47:   var_164 = 0
  loc_10CDD5A:   var_15C = 0
  loc_10CDD65:   var_158 = 0
  loc_10CDD78:   var_150 = 0
  loc_10CDD83:   var_14C = 0
  loc_10CDD96:   var_144 = 0
  loc_10CDDD6:   var_128 = "NarrMast"
  loc_10CDDDF:   Proc_154_5_10E3BD4(MemVar_1F951E0, var_128, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_10CDE0D:   unk_448E4B.CommitTrans
  loc_10CDE16:   var_98 = CByte(0) 'Byte
  loc_10CDE25:   Me.Requery -1
  loc_10CDE35:   Me.Requery -1
  loc_10CDE55:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10CDE62:     Me.Bookmark = var_94
  loc_10CDE6A:   Else
  loc_10CDE7E:     If (Me.EOF = 0) Then
  loc_10CDE87:       Me.MoveLast
  loc_10CDE8C:     End If
  loc_10CDE8C:   End If
  loc_10CDE8C:   Call Proc_202_28_119ACC4(var_144, 0, var_14C, var_150)
  loc_10CDEAD:   Proc_5_0_1107AD0(&HFF, Me, global_60, 0)
  loc_10CDEB5: End If
  loc_10CDEB5: Exit Sub
  loc_10CDEB6: ' Referenced from: 10CDC2C
  loc_10CDEBF: If (CInt(var_98) = 1) Then
  loc_10CDEC8:   unk_448E4B.RollbackTrans
  loc_10CDECD: End If
  loc_10CDED3: Call 0.Method_arg_50 (var_128, 0, var_158)
  loc_10CDEE8: Proc_183_57_104B0BC(var_128, "TopCtrl1_eDel")
  loc_10CDEF4: Exit Sub
  loc_10CDEF5: GoTo loc_10CD92C
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EEE5E8
  'Data Table: 448E2C
  Dim var_94 As TextBox
  loc_EEE520: On Error Goto loc_EEE5BE
  loc_EEE531: If (Proc_183_55_FE8490(global_60) = &HFF) Then
  loc_EEE534:   Exit Sub
  loc_EEE535: End If
  loc_EEE558: Call Proc_202_29_ECF8C0(Proc_5_1_100EC1C("EDIT", Me))
  loc_EEE571: Set var_8C = Me.Txt
  loc_EEE577: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EEE57F: var_88 = var_94.Text
  loc_EEE58A: global_64 = var_88
  loc_EEE5A3: Set var_8C = Me.Txt
  loc_EEE5A9: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EEE5B1: var_94.SetFocus
  loc_EEE5BD: Exit Sub
  loc_EEE5BE: ' Referenced from: EEE520
  loc_EEE5C4: Call 0.Method_arg_50 (var_88)
  loc_EEE5D9: Proc_183_57_104B0BC(var_88, "TopCtrl1_eEdit")
  loc_EEE5E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1AEF4
  'Data Table: 448E2C
  loc_E1AEE9: Me.Global.Unload Me
  loc_E1AEF1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EEED34
  'Data Table: 448E2C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EEEC74: On Error Goto loc_EEED0C
  loc_EEEC8E: If (Me.RecordCount <= 0) Then
  loc_EEEC97:   var_B8 = "Information"
  loc_EEECB2:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EEECC2:   Exit Sub
  loc_EEECC3: End If
  loc_EEECD1: MemVar_1F950E4 = "Select N.Code as SearchCode,N.Name FROM NarrMast N WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') Order by N.Name"
  loc_EEECDE: MemVar_1F95120 = Me
  loc_EEECE5: var_10C = "4000"
  loc_EEECEB: Proc_6_126_F1C850(var_10C)
  loc_EEED06: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EEED0B: Exit Sub
  loc_EEED0C: ' Referenced from: EEEC74
  loc_EEED12: Call 0.Method_arg_50 (var_10C)
  loc_EEED27: Proc_183_57_104B0BC(var_10C, "TopCtrl1_eFind")
  loc_EEED33: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E381C8
  'Data Table: 448E2C
  loc_E381B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E381C0: Call Proc_202_28_119ACC4(global_60)
  loc_E381C5: Exit Sub
  loc_E381C6: var_4B88 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E38108
  'Data Table: 448E2C
  loc_E380F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E38100: Call Proc_202_28_119ACC4(global_60)
  loc_E38105: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E38048
  'Data Table: 448E2C
  Dim var_4B01 As Double
  loc_E38038: Proc_5_0_1107AD0(&HFF, Me)
  loc_E38040: Call Proc_202_28_119ACC4(global_60)
  loc_E38045: Exit Sub
  loc_E38046: var_4B01 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E37FE8
  'Data Table: 448E2C
  Dim var_4B01 As Double
  loc_E37FD8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E37FE0: Call Proc_202_28_119ACC4(global_60)
  loc_E37FE5: Exit Sub
  loc_E37FE6: var_4B01 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'FEF79C
  'Data Table: 448E2C
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim unk_448E4B As Connection15
  Dim var_C8 As Variant
  loc_FEF5C4: On Error Goto loc_FEF771
  loc_FEF5D0: var_A0 = Me.RecordCount
  loc_FEF5DE: If (var_A0 <= 0) Then
  loc_FEF5E1:   Exit Sub
  loc_FEF5E2: End If
  loc_FEF5F6: var_A4 = "Select * FROM NarrMast WHERE (LOGSITE_CODE='" & MemVar_1F95078
  loc_FEF606: unk_448E4B.Execute var_A4 & "' OR LOGSITE_CODE='HO') Order by Name", var_C8, -1
  loc_FEF611: Set var_98 = var_CC
  loc_FEF62D: Call 0.Method_arg_12C (var_CC)
  loc_FEF638: MemVar_1F951E8 = var_CC
  loc_FEF650: Call 0.Method_arg_90 (var_CC, var_A0, var_9A)
  loc_FEF658: Call 0.Method_arg_24 (1)
  loc_FEF664: For var_D0 =  To CInt(var_A0): var_CC = var_D0 'Integer
  loc_FEF67D:   Call 0.Method_arg_90 (var_CC, CLng(var_9A))
  loc_FEF685:   Call 0.Method_arg_20 (var_D4)
  loc_FEF68D:   Call 0.Method_arg_30 (var_A4)
  loc_FEF6D3:   If (Ucase(CVar(var_A4)) = Ucase("Title")) Then
  loc_FEF6E9:     Call 0.Method_arg_90 (var_CC, CLng(var_9A))
  loc_FEF6F1:     Call 0.Method_arg_20 (var_D4)
  loc_FEF6F9:     Call 0.Method_arg_38 ("'Narration List'")
  loc_FEF705:   End If
  loc_FEF708: Next var_D0 'Integer
  loc_FEF726: Call 0.Method_arg_64 (var_CC, CVar(var_98))
  loc_FEF72E: Call 0.Method_arg_2C (var_108)
  loc_FEF73C: Call 0.Method_arg_150 (var_118)
  loc_FEF747: Call 0.Method_arg_50 (var_A4)
  loc_FEF760: Proc_183_10_1499E94(MemVar_1F951E8, 0)
  loc_FEF76D: Set var_98 = Nothing
  loc_FEF770: Exit Sub
  loc_FEF771: ' Referenced from: FEF5C4
  loc_FEF777: Call 0.Method_arg_50 (var_A4, var_A4)
  loc_FEF78C: Proc_183_57_104B0BC(var_A4, "TopCtrl1_ePrn")
  loc_FEF798: Exit Sub
  loc_FEF799: StAryRecCopy
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0AEBC
  'Data Table: 448E2C
  Dim Me As Recordset15
  loc_E0AEB3: Me.Requery -1
  loc_E0AEB8: Exit Sub
  loc_E0AEB9: Set var_8C = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '13A26BC
  'Data Table: 448E2C
  Dim Me As Recordset15
  Dim var_A0 As String
  Dim var_98 As Variant
  Dim var_BC As String
  Dim unk_448E4B As Connection15
  Dim var_9C As Recordset15
  Dim var_D0 As Variant
  Dim var_E4 As Field20
  Dim var_CC As Variant
  Dim var_88 As Recordset15
  Dim var_94 As Fields15
  Dim var_B4 As Variant
  Dim var_F4 As Variant
  Dim var_8E As Integer
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_144 As String
  Dim var_158 As String
  Dim var_198 As Variant
  Dim var_1DC As String
  Dim var_1FC As Variant
  loc_13A1E0C: On Error Goto loc_13A267A
  loc_13A1E0F: Call Proc_202_30_E54CBC()
  loc_13A1E1F: Set var_94 = Me.Txt
  loc_13A1E25: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_13A1E4E: If (Proc_183_19_E8E68C(var_98, "Godown Name") = 0) Then
  loc_13A1E51:   Exit Sub
  loc_13A1E52: End If
  loc_13A1E5B: var_A4 = Me.RecordCount
  loc_13A1E69: If (var_A4 <> 0) Then
  loc_13A1E70:   Set var_94 = Me.TopCtrl1
  loc_13A1E76:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_98)
  loc_13A1E7E:   var_A0 = CStr()
  loc_13A1E8F:   If (var_A0 = "Add") Then
  loc_13A1EBF:     Set var_94 = Me.Txt
  loc_13A1EC5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0, "Select Count(*) From NarrMast Where Name='", var_B4, -1)
  loc_13A1EE6:     unk_448E4B.Execute var_D0 & var_A0 & "'", 0, var_E4
  loc_13A1EF6:      = var_D0.Item()
  loc_13A1EFE:      = var_E4.Value
  loc_13A1F2B:     If (var_98.Text.Fields > 0) Then
  loc_13A1F49:       var_B4 = "Duplicate Godown Name"
  loc_13A1F4F:       MsgBox(var_B4, &H40, "Information", var_114, var_134)
  loc_13A1F6A:       Set var_94 = Me.Txt
  loc_13A1F70:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_13A1F78:       var_98.SetFocus
  loc_13A1F84:       Exit Sub
  loc_13A1F85:     End If
  loc_13A1F88:   Else
  loc_13A1FB5:     Set var_94 = Me.Txt
  loc_13A1FBB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0, "Select Count(*) From NarrMast Where Name='", var_B4, -1)
  loc_13A1FED:     unk_448E4B.Execute var_D0 & var_A0 & "' And Name<>'" & global_64 & "'", 0, var_E4
  loc_13A1FFD:      = var_D0.Item(var_98)
  loc_13A2005:      = var_E4.Value
  loc_13A2036:     If (var_98.Text.Fields > 0) Then
  loc_13A2054:       var_B4 = "Duplicate Godown Name"
  loc_13A205A:       MsgBox(var_B4, &H40, "Information", var_114, var_134)
  loc_13A2075:       Set var_94 = Me.Txt
  loc_13A207B:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_13A2083:       var_98.SetFocus
  loc_13A208F:       Exit Sub
  loc_13A2090:     End If
  loc_13A2090:   End If
  loc_13A2090: End If
  loc_13A2094: var_90 = CByte(1) 'Byte
  loc_13A20A1: unk_448E4B.BeginTrans var_A4
  loc_13A20B0: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_98)
  loc_13A20C9: If (CStr() = "Add") Then
  loc_13A20E0:   var_A0 = "Select Max(SubString(Code,3,Len(Code)-2)) As tCode From NarrMast Where Left(Code,2)='" & MemVar_1F95070
  loc_13A20F0:   unk_448E4B.Execute CStr() & "'", var_B4, -1
  loc_13A20FB:   Set var_88 = Me.TopCtrl1
  loc_13A211F:   If (var_88.RecordCount > 0) Then
  loc_13A2151:     If Not(IsNull(CVar(var_88.Fields.Item("TCode")))) Then
  loc_13A216E:       var_98 = var_88.Fields.Item("TCode")
  loc_13A2183:       var_F4 = (var_98.Value + 1)
  loc_13A2188:       var_8E = CInt("Information")
  loc_13A219C:     Else
  loc_13A219E:       var_8E = 1
  loc_13A21A1:     End If
  loc_13A21A4:   Else
  loc_13A21A6:     var_8E = 1
  loc_13A21A9:   End If
  loc_13A21B6:   var_114 = CVar(Proc_183_15_EAD490(MemVar_1F95070, 2, var_8E)) 'String
  loc_13A21E1:   var_134 = (1 + Format(var_8E, "0000"))
  loc_13A21E5:   var_A0 = CStr(var_134)
  loc_13A21F4:   Set var_94 = Me.Txt
  loc_13A21FA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0, 1)
  loc_13A2202:   var_98.Tag = var_114
  loc_13A222A:   Set var_94 = Me.Txt
  loc_13A2230:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0)
  loc_13A2238:   var_8E = var_98.Text
  loc_13A226B:   var_BC = Replace(var_A0, CStr(Chr(&HD)), vbNullString, 1, -1, 0)
  loc_13A228F:   Set var_94 = Me.Txt
  loc_13A2295:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0)
  loc_13A229D:   var_8E = var_98.Tag
  loc_13A22B0:   Set var_9C = Me.Txt
  loc_13A22B6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D0)
  loc_13A22F1:   var_200 = Replace(var_D0.Text, CStr(Chr(&HA)), vbNullString, 1, -1, 0)
  loc_13A2325:   var_204 = Replace(var_200, CStr(Chr(&HD)), vbNullString, 1, -1, 0)
  loc_13A2333:   Proc_183_7_EB17D4(var_114, MemVar_1F950EC)
  loc_13A236B:   var_158 = "Insert Into NarrMast (Code,Name,U_Name,U_EntDt,U_AE,Site_COde,LogSite_Code) Values ('" & var_A0 & "','" & var_204 & "','" & MemVar_1F950C8
  loc_13A23B5:   unk_448E4B.Execute CStr(CVar(var_158 & "',") & var_114 & ",'A','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), var_1FC, -1
  loc_13A2402: Else
  loc_13A2410:   Set var_94 = Me.Txt
  loc_13A2416:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0)
  loc_13A241E:   var_E4 = var_98.Text
  loc_13A2451:   var_158 = Replace(var_A0, CStr(Chr(&HA)), vbNullString, 1, -1, 0)
  loc_13A2485:   var_1DC = Replace(var_158, CStr(Chr(&HD)), vbNullString, 1, -1, 0)
  loc_13A248B:   var_CC = MemVar_1F950EC
  loc_13A2493:   Proc_183_7_EB17D4(var_114, var_CC)
  loc_13A24A6:   Set var_9C = Me.Txt
  loc_13A24AC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D0)
  loc_13A24D0:   var_144 = "Update NarrMast Set Name='" & CStr(CVar(var_158 & "',") & var_114 & ",'A','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')")
  loc_13A2507:   var_198 = CVar(var_144 & "',U_Name='" & MemVar_1F950C8 & "',U_EntDt=") & var_114 & ",U_AE='E',SITE_CODE='" & CVar(MemVar_1F95070) & "',LOGSITE_CODE='" 
  loc_13A253B:   unk_448E4B.Execute CStr(var_198 & CVar(MemVar_1F95078) & "' Where Code='" & CVar(var_D0.Tag) & "'"), var_244, -1
  loc_13A2585: End If
  loc_13A258B: unk_448E4B.CommitTrans
  loc_13A2594: var_90 = CByte(0) 'Byte
  loc_13A25A6: Set var_94 = Me.Txt
  loc_13A25AC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0)
  loc_13A25B4: var_E4 = var_98.Tag
  loc_13A25D1: Me.Requery -1
  loc_13A25E1: Me.Requery -1
  loc_13A260B: Me.Find "SearchCode ='" & "SearchCode ='" & var_A0 & "'", 0, 1
  loc_13A2621: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_CC)
  loc_13A263A: If (CStr(Me.TopCtrl1) = "Add") Then
  loc_13A263D:   Call TopCtrl1_UnknownEvent_A()
  loc_13A2642:   Exit Sub
  loc_13A2643: End If
  loc_13A2658: var_A0 = "INI"
  loc_13A2666: Call Proc_202_29_ECF8C0(Proc_5_1_100EC1C(var_A0, Me))
  loc_13A2676: Set var_88 = Nothing
  loc_13A2679: Exit Sub
  loc_13A267A: ' Referenced from: 13A1E0C
  loc_13A2683: If (CInt(var_90) = 1) Then
  loc_13A268C:   unk_448E4B.RollbackTrans
  loc_13A2691: End If
  loc_13A2697: Call 0.Method_arg_50 (var_A0)
  loc_13A26AC: Proc_183_57_104B0BC(var_A0, "TopCtrl1_eSave")
  loc_13A26B8: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E52FF4
  'Data Table: 448E2C
  loc_E52FCE: Set var_88 = Me.Txt
  loc_E52FD4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E52FE2: Proc_183_28_E216B0(var_8C)
  loc_E52FEE: Call Proc_202_30_E54CBC(var_8C)
  loc_E52FF3: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'ECCBA4
  'Data Table: 448E2C
  loc_ECCB08: On Error Goto loc_ECCB7A
  loc_ECCB15: If (CLng(Shift) = &H1B) Then
  loc_ECCB18:   Call Proc_202_30_E54CBC()
  loc_ECCB1D:   Exit Sub
  loc_ECCB1E: End If
  loc_ECCB2C: If (KeyCode = CInt(0)) Then
  loc_ECCB69:   Proc_183_31_100957C(Me.DGHelp, Me.Txt, CInt(0), global_56)
  loc_ECCB79: End If
  loc_ECCB79: Exit Sub
  loc_ECCB7A: ' Referenced from: ECCB08
  loc_ECCB80: Call 0.Method_arg_50 (var_A4, Shift, 0)
  loc_ECCB95: Proc_183_57_104B0BC(var_A4, "Txt_KeyDown")
  loc_ECCBA1: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E01D38
  'Data Table: 448E2C
  loc_E01D2F: Proc_183_46_E07C50(arg_10)
  loc_E01D34: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EBA300
  'Data Table: 448E2C
  loc_EBA26C: On Error Goto loc_EBA2D8
  loc_EBA27D: If (KeyCode = CInt(0)) Then
  loc_EBA29C:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EBA2A9:     var_A4 = "Name"
  loc_EBA2C8:     Proc_183_32_FE97F0(Me.Txt, CInt(0), global_56)
  loc_EBA2D7:   End If
  loc_EBA2D7: End If
  loc_EBA2D7: Exit Sub
  loc_EBA2D8: ' Referenced from: EBA26C
  loc_EBA2DE: Call 0.Method_arg_50 (var_A4, Shift)
  loc_EBA2F3: Proc_183_57_104B0BC(var_A4, "Txt_KeyUp")
  loc_EBA2FF: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E49844
  'Data Table: 448E2C
  loc_E49822: Set var_88 = Me.Txt
  loc_E49828: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E49836: Proc_183_27_E23198(var_8C)
  loc_E49842: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '10793C4
  'Data Table: 448E2C
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_A8 As TextBox
  Dim unk_448E4B As Connection15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  loc_1079148: On Error Goto loc_107939C
  loc_107914E: var_86 = Cancel
  loc_1079159: If (var_86 = CInt(0)) Then
  loc_1079173:   If (Me.RecordCount = 0) Then
  loc_1079176:     Exit Sub
  loc_1079177:   End If
  loc_107917B:   Set var_90 = Me.TopCtrl1
  loc_1079181:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_86)
  loc_1079189:   var_A4 = CStr()
  loc_107919A:   If (var_A4 = "Add") Then
  loc_10791CA:     Set var_90 = Me.Txt
  loc_10791D0:     Call 0.Method_Txt_Validate0 (CInt(0), var_A8, var_A4, "Select Count(*) From NarrMast Where Name='", var_A0, -1)
  loc_10791F1:     unk_448E4B.Execute var_C8 & var_A4 & "'", 0, var_DC
  loc_1079201:      = var_C8.Item()
  loc_1079209:      = var_DC.Value
  loc_1079236:     If (var_A8.Text.Fields > 0) Then
  loc_1079254:       var_A0 = "Duplicate Godown Name"
  loc_107925A:       MsgBox(var_A0, &H40, "Information", var_10C, var_12C)
  loc_1079275:       Set var_90 = Me.Txt
  loc_107927B:       Call 0.Method_Txt_Validate0 (CInt(0))
  loc_1079283:       var_A8.SetFocus
  loc_107928F:       Exit Sub
  loc_1079290:     End If
  loc_1079293:   Else
  loc_10792C0:     Set var_90 = Me.Txt
  loc_10792C6:     Call 0.Method_Txt_Validate0 (CInt(0), var_A8, var_A4, "Select Count(*) From NarrMast Where Name='", var_A0, -1)
  loc_10792F8:     unk_448E4B.Execute var_C8 & var_A4 & "' And Name<>'" & global_64 & "'", 0, var_DC
  loc_1079308:      = var_C8.Item(var_A8)
  loc_1079310:      = var_DC.Value
  loc_1079341:     If (var_A8.Text.Fields > 0) Then
  loc_1079365:       MsgBox("Duplicate Godown Name", &H40, "Information", var_10C, var_12C)
  loc_1079380:       Set var_90 = Me.Txt
  loc_1079386:       Call 0.Method_Txt_Validate0 (CInt(0))
  loc_107938E:       var_A8.SetFocus
  loc_107939A:       Exit Sub
  loc_107939B:     End If
  loc_107939B:   End If
  loc_107939B: End If
  loc_107939B: Exit Sub
  loc_107939C: ' Referenced from: 1079148
  loc_10793A2: Call 0.Method_arg_50 (var_A4)
  loc_10793B7: Proc_183_57_104B0BC(var_A4, "Txt_Validate")
  loc_10793C3: Exit Sub
End Sub

Private Sub Form_Load() '11967A4
  'Data Table: 448E2C
  Dim var_8C As Label
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim var_CC As DataGrid
  Dim var_D0 As TextBox
  Dim var_C4 As TextBox
  Dim var_D8 As DataGrid
  Dim var_B0 As String
  Dim Me As Recordset15
  loc_11963A8: On Error Goto loc_119677A
  loc_11963BA: Me.LblUser.Left = CDbl(13500)
  loc_11963D1: Me.LblUser.Top = CDbl(7800)
  loc_11963E8: Me.LblLDt.Top = CDbl(8160)
  loc_11963FF: Me.LblLDt.Left = CDbl(13500)
  loc_119640E: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_119641D: Set var_8C = Me.TopCtrl1
  loc_1196423: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_1196431: Call 0.Method_arg_50 (var_B0)
  loc_1196441: Set var_8C = Me.TopCtrl1
  loc_1196447: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_B0))
  loc_1196458: Call 0.Method_arg_50 (var_B0)
  loc_1196468: Set var_8C = Me.TopCtrl1
  loc_119646E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_B0))
  loc_1196485: Call 0.Method_arg_38 (MemVar_1F953B0)
  loc_1196496: Call 0.Method_arg_3C (MemVar_1F950EC)
  loc_11964A7: Call 0.Method_arg_54 (MemVar_1F9506C)
  loc_11964B8: Call 0.Method_arg_1C (MemVar_1F95070)
  loc_11964C9: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_11964DA: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_11964EB: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_11964FC: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_119650D: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_119651E: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_1196538: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_1196546: Set var_8C = MemVar_1F95044
  loc_1196555: Call 0.Method_Form_Load8 (var_8C)
  loc_119656B: Me.TopCtrl1.Clone
  loc_1196576: Set var_C4 = var_8C
  loc_1196585: Call 0.Method_arg_50 (var_C4, -1)
  loc_119659F: Set var_8C = Me.Txt
  loc_11965A5: Call 0.Method_Form_Load0 (CInt(0), var_C4)
  loc_11965C4: Me.DGHelp.Left = CVar(Me.Txt.Left)
  loc_11965E0: Set var_CC = Me.Txt
  loc_11965E6: Call 0.Method_Form_Load0 (CInt(0), var_D0)
  loc_1196601: Set var_8C = Me.Txt
  loc_1196607: Call 0.Method_Form_Load0 (CInt(0), var_C4)
  loc_119661F: var_9C = CVar(((var_C4.Top + var_D0.Height) + CDbl(&H1E))) 'Single
  loc_1196628: Set var_D8 = Me.DGHelp
  loc_119662E: var_D8.Top = CVar(Me.Txt.Left)
  loc_119665C: Me.var_D8.CursorLocation = 3
  loc_1196686: var_C0 = CVar("Select Code,Name From NarrMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') Order by Name") 'String
  loc_11966A4: CVarUnk
  loc_11966A9: VerifyVarObj
  loc_11966AF: Set var_8C = Me.DGHelp
  loc_11966B5: LateIdStAd
  loc_11966DF: Me.DGHelp.CursorLocation = 3
  loc_1196709: var_C0 = CVar("Select N.*,N.Code as SearchCode From NarrMast N WHERE (LOGSITE_CODE='" & MemVar_1F95070 & "' OR LOGSITE_CODE='HO') Order by N.Name") 'String
  loc_1196713: r_C0, CVar(MemVar_1F951E0), 2 var_C0, CVar(MemVar_1F951E0), 2
  loc_1196727: CVarUnk
  loc_119672C: VerifyVarObj
  loc_1196732: Set var_8C = Me.DGMaster
  loc_1196738: LateIdStAd
  loc_119675B: var_B0 = "INI"
  loc_1196769: Call Proc_202_29_ECF8C0(Proc_5_1_100EC1C(var_B0, Me, New, Me, New, 3), -1, Me, New)
  loc_1196774: Call Proc_202_28_119ACC4(3, -1)
  loc_1196779: Exit Sub
  loc_119677A: ' Referenced from: 11963A8
  loc_1196780: Call 0.Method_arg_50 (var_B0)
  loc_1196795: Proc_183_57_104B0BC(var_B0, "Form_Load")
  loc_11967A1: Exit Sub
End Sub

Private Sub Form_Resize() 'ED5508
  'Data Table: 448E2C
  Dim var_8C As Label
  loc_ED5466: Call 0.Method_arg_50 (var_88)
  loc_ED5478: Me.LblFormCaption.Caption = var_88
  loc_ED5491: Me.LblFormCaption.Left = CDbl(0)
  loc_ED549D: Set var_A0 = Me.TopCtrl1
  loc_ED54A3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED54B0: Set var_8C = Me.TopCtrl1
  loc_ED54B6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED54D0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED54EB: Call 0.Method_arg_100 (var_B8)
  loc_ED54FD: Me.LblFormCaption.Width = var_B8
  loc_ED5505: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E52F90
  'Data Table: 448E2C
  loc_E52F63: Set global_60 = Nothing
  loc_E52F75: Set global_56 = Nothing
  loc_E52F87: Set global_68 = Nothing
  loc_E52F8E: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E0166C
  'Data Table: 448E2C
  loc_E01665: Call Form_Unload(&HFF)
  loc_E0166A: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E69C00
  'Data Table: 448E2C
  loc_E69BB8: On Error Goto loc_E69BD6
  loc_E69BCD: Proc_183_40_F3169C(Me, KeyCode)
  loc_E69BD5: Exit Sub
  loc_E69BD6: ' Referenced from: E69BB8
  loc_E69BDC: Call 0.Method_arg_50 (var_8C)
  loc_E69BF1: Proc_183_57_104B0BC(var_8C, "Form_KeyDown")
  loc_E69BFD: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F808C0
  'Data Table: 448E2C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F8077C: On Error Goto loc_F80896
  loc_F8078E: Me.DGHelp.Visible = False
  loc_F807AD: If (Me.RecordCount > 0) Then
  loc_F807EC:   Set var_B4 = Me.Txt
  loc_F807F2:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F807FA:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F8082D:   var_B0 = Me.Fields.Item("Name")
  loc_F8083E:   var_CC = CStr(var_B0.Value)
  loc_F8084C:   Set var_B4 = Me.Txt
  loc_F80852:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F8085A:   var_B8.Text = var_CC
  loc_F80870: End If
  loc_F8087B: Set var_A8 = Me.Txt
  loc_F80881: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F80889: var_B0.SetFocus
  loc_F80895: Exit Sub
  loc_F80896: ' Referenced from: F8077C
  loc_F8089C: Call 0.Method_arg_50 (var_CC)
  loc_F808B1: Proc_183_57_104B0BC(var_CC, "DGHelp_Click")
  loc_F808BD: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EB9B48
  'Data Table: 448E2C
  Dim Me As Recordset15
  Dim var_8C As String
  loc_EB9AB6: On Error Goto loc_EB9B1F
  loc_EB9ABF: Me.MoveFirst
  loc_EB9AD9: var_8C = "SearchCode='" & MyValue
  loc_EB9AE9: Me.Find var_8C & "'", 0, 1
  loc_EB9B11: Proc_5_0_1107AD0(&HFF, Me, global_60)
  loc_EB9B19: Call Proc_202_28_119ACC4(0)
  loc_EB9B1E: Exit Sub
  loc_EB9B1F: ' Referenced from: EB9AB6
  loc_EB9B25: Call 0.Method_arg_50 (var_8C)
  loc_EB9B3A: Proc_183_57_104B0BC(var_8C, "SEARCHBACK")
  loc_EB9B46: Exit Sub
  loc_EB9B47: Exit Sub
End Sub

Public Sub Proc_202_27_EAD7D4
  'Data Table: 448E2C
  Dim var_98 As TextBox
  loc_EAD746: global_64 = vbNullString
  loc_EAD758: Set var_8C = Me.Txt
  loc_EAD75E: Call 0.Method_Proc_202_27_EAD7D4C (var_8E, var_86)
  loc_EAD76E: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EAD784:   Set var_8C = Me.Txt
  loc_EAD78A:   Call 0.Method_Proc_202_27_EAD7D40 (CInt(var_86), var_98)
  loc_EAD792:   var_98.Text = vbNullString
  loc_EAD7AE:   Set var_8C = Me.Txt
  loc_EAD7B4:   Call 0.Method_Proc_202_27_EAD7D40 (CInt(var_86), var_98)
  loc_EAD7BC:   var_98.Tag = vbNullString
  loc_EAD7CB: Next var_92 'Byte
  loc_EAD7D1: Exit Sub
  loc_EAD7D2: Get , ,  'get  bytes
End Sub

Public Sub Proc_202_28_119ACC4
  'Data Table: 448E2C
  Dim Me As Recordset15
  Dim var_F4 As String
  Dim unk_448E4D As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_1CC As String
  Dim var_11C As TextBox
  loc_119A8F8: On Error Goto loc_119AC99
  loc_119A951: unk_448E4D.Execute CStr("Select U_Name,U_AE,U_EntDt From NarrMast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_119A95C: Set var_88 = var_118
  loc_119A9B0: var_118 = var_88.Fields
  loc_119AA19: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_119AA5E: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_119AAD8: var_11C = var_88.Fields.Item("U_AE")
  loc_119AB39: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_11C)) = "E"), "Last Update : ", "entdt : "))
  loc_119AB7E: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_119ABCD: If (Me.RecordCount > 0) Then
  loc_119AC0C:   Set var_118 = Me.Txt
  loc_119AC12:   Call 0.Method_Proc_202_28_119ACC40 (CInt(0), var_11C)
  loc_119AC1A:   var_11C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_119AC5B:   var_F4 = Proc_183_2_E5AE94(CVar(Me.Fields.Item("Name")))
  loc_119AC69:   Set var_118 = Me.Txt
  loc_119AC6F:   Call 0.Method_Proc_202_28_119ACC40 (CInt(0), var_11C)
  loc_119AC77:   var_11C.Text = var_F4
  loc_119AC8E: Else
  loc_119AC8E:   Call Proc_202_27_EAD7D4()
  loc_119AC93: End If
  loc_119AC93: Call Proc_202_30_E54CBC()
  loc_119AC98: Exit Sub
  loc_119AC99: ' Referenced from: 119A8F8
  loc_119AC9F: Call 0.Method_arg_50 (var_F4)
  loc_119ACA7: var_1CC = "MoveRec"
  loc_119ACB4: Proc_183_57_104B0BC(var_F4)
  loc_119ACC0: Exit Sub
End Sub

Public Sub Proc_202_29_ECF8C0(arg_C) 'ECF8C0
  'Data Table: 448E2C
  Dim var_98 As TextBox
  Dim var_8C As DataGrid
  loc_ECF818: On Error Goto loc_ECF897
  loc_ECF829: Set var_8C = Me.Txt
  loc_ECF82F: Call 0.Method_Proc_202_29_ECF8C0C (var_8E, var_86)
  loc_ECF83F: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_ECF855:   Set var_8C = Me.Txt
  loc_ECF85B:   Call 0.Method_Proc_202_29_ECF8C00 (CInt(var_86), var_98)
  loc_ECF863:   var_98.Enabled = arg_C
  loc_ECF872: Next var_92 'Byte
  loc_ECF88B: Me.DGMaster.Enabled = Not(arg_C)
  loc_ECF896: Exit Sub
  loc_ECF897: ' Referenced from: ECF818
  loc_ECF89D: Call 0.Method_arg_50 (var_BC)
  loc_ECF8A5: var_C4 = "Disp_Text"
  loc_ECF8B2: Proc_183_57_104B0BC(var_BC)
  loc_ECF8BE: Exit Sub
End Sub

Public Sub Proc_202_30_E54CBC
  'Data Table: 448E2C
  loc_E54CA0: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E54CB2:   Me.DGHelp.Visible = False
  loc_E54CBA: End If
  loc_E54CBA: Exit Sub
End Sub

Public Sub Proc_202_31_ECF7C4(arg_C) 'ECF7C4
  'Data Table: 448E2C
  Dim var_10C As TextBox
  loc_ECF72C: On Error Goto loc_ECF79B
  loc_ECF72F: Call Proc_202_30_E54CBC()
  loc_ECF76B: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_ECF76E:   Call TopCtrl1_UnknownEvent_16()
  loc_ECF776: Else
  loc_ECF780:   Set var_108 = Me.Txt
  loc_ECF786:   Call 0.Method_Proc_202_31_ECF7C40 (arg_C)
  loc_ECF78E:   var_10C.SetFocus
  loc_ECF79A: End If
  loc_ECF79A: Exit Sub
  loc_ECF79B: ' Referenced from: ECF72C
  loc_ECF7A1: Call 0.Method_arg_50 (var_110)
  loc_ECF7B6: Proc_183_57_104B0BC(var_110, "SaveMsg")
  loc_ECF7C2: Exit Sub
End Sub
