VERSION 5.00
Begin VB.Form FaTDSCertificate
  Caption = "T.D.S.Certificate Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FaTDSCertificate.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 165
  ClientTop = 450
  ClientWidth = 9135
  ClientHeight = 6525
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
    Top = 0
    Width = 9135
    Height = 450
    TabIndex = 22
  End
  Begin DataGrid DGParty
    Left = 9990
    Top = 4710
    Width = 5100
    Height = 2670
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 12
  End
  Begin Frame Frame_DETAIL1
    ForeColor = &H0&
    Left = 1680
    Top = 4665
    Width = 9840
    Height = 690
    TabIndex = 15
    BeginProperty Font
      Name = "Times New Roman"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox TXT
      Index = 4
      ForeColor = &HC00000&
      Left = 6165
      Top = 390
      Width = 3525
      Height = 285
      TabIndex = 8
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
    Begin TextBox TXT
      Index = 5
      ForeColor = &HC00000&
      Left = 6165
      Top = 75
      Width = 3525
      Height = 285
      TabIndex = 7
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
    Begin TextBox TXT
      Index = 3
      ForeColor = &HC00000&
      Left = 1800
      Top = 75
      Width = 1545
      Height = 285
      TabIndex = 6
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
    Begin Label Label1
      Caption = "Total TDS Amount"
      Index = 6
      ForeColor = &HC00000&
      Left = 0
      Top = 75
      Width = 1725
      Height = 240
      TabIndex = 18
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
    End
    Begin Label Label1
      Caption = "Full Name of Sign.Auth."
      Index = 3
      ForeColor = &HC00000&
      Left = 3735
      Top = 60
      Width = 2265
      Height = 345
      TabIndex = 17
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      WordWrap = -1  'True
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
      Caption = "Designation"
      Index = 4
      ForeColor = &HC00000&
      Left = 4860
      Top = 435
      Width = 1125
      Height = 240
      TabIndex = 16
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      WordWrap = -1  'True
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
  Begin TextBox TXT
    Index = 6
    ForeColor = &HC00000&
    Left = 5640
    Top = 945
    Width = 1215
    Height = 285
    TabIndex = 3
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
  Begin TextBox TXT
    Index = 7
    ForeColor = &HC00000&
    Left = 5640
    Top = 1260
    Width = 1215
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 20
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
  Begin TextBox TXT
    Index = 1
    ForeColor = &HC00000&
    Left = 3315
    Top = 1260
    Width = 1230
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 13
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
  Begin TextBox TXT
    Index = 2
    ForeColor = &HC00000&
    Left = 3315
    Top = 1575
    Width = 3540
    Height = 285
    TabIndex = 2
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
  Begin TextBox TXT
    Index = 0
    ForeColor = &HC00000&
    Left = 3315
    Top = 945
    Width = 1215
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
  Begin MSHFlexGrid FGrid
    Left = 840
    Top = 1905
    Width = 11775
    Height = 2535
    TabIndex = 5
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5520
    Top = 6570
    Width = 2790
    Height = 285
    TabIndex = 21
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
    Left = 2145
    Top = 6570
    Width = 2880
    Height = 255
    TabIndex = 20
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 345
    Width = 180
    Height = 540
    TabIndex = 19
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
    Caption = "From Date"
    Index = 1
    ForeColor = &HC00000&
    Left = 4590
    Top = 945
    Width = 990
    Height = 240
    TabIndex = 14
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
    Caption = "To Date"
    Index = 7
    ForeColor = &HC00000&
    Left = 4815
    Top = 1305
    Width = 735
    Height = 240
    TabIndex = 13
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
    Caption = "Certificate Date"
    Index = 0
    ForeColor = &HC00000&
    Left = 1785
    Top = 1275
    Width = 1470
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
  Begin Label Label1
    Caption = "Account Name"
    Index = 5
    ForeColor = &HC00000&
    Left = 1815
    Top = 1590
    Width = 1380
    Height = 240
    TabIndex = 10
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
    Caption = "Certificate No."
    Index = 2
    ForeColor = &HC00000&
    Left = 1815
    Top = 960
    Width = 1350
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
End

Attribute VB_Name = "FaTDSCertificate"


Private Sub DGParty_UnknownEvent_9 'F4D2F4
  'Data Table: 45DF50
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4D1EB: Me.DGParty.Visible = False
  loc_F4D20A: If (Me.RecordCount > 0) Then
  loc_F4D249:   Set var_B4 = Me.TXT
  loc_F4D24F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(2), var_B8)
  loc_F4D257:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4D28A:   var_B0 = Me.Fields.Item("Name")
  loc_F4D2A9:   Set var_B4 = Me.TXT
  loc_F4D2AF:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(2), var_B8)
  loc_F4D2B7:   var_B8.Text = CStr(var_B0.Value)
  loc_F4D2CD: End If
  loc_F4D2D8: Set var_A8 = Me.TXT
  loc_F4D2DE: Call 0.Method_DGParty_UnknownEvent_90 (CInt(2))
  loc_F4D2E6: var_B0.SetFocus
  loc_F4D2F2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FB9F4C
  'Data Table: 45DF50
  Dim unk_45DF5A As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  Dim var_EC As Variant
  Dim var_8C As String
  Dim var_F4 As TextBox
  Dim var_BC As TextBox
  loc_FB9DB8: On Error Goto loc_FB9F24
  loc_FB9DC7: Set var_90 = Me
  loc_FB9DDE: Call Proc_206_28_E9BE68(Proc_5_1_100EC1C("ADD", var_90))
  loc_FB9DE9: Call Proc_206_27_F1ABE8(global_72)
  loc_FB9E04: unk_45DF5A.Execute "SELECT Max(CertiNo) as ID FROM TDSCerti", var_B4, -1
  loc_FB9E0F: Set var_88 = var_90
  loc_FB9E2C: If (var_88.RecordCount > 0) Then
  loc_FB9E46:   var_BC = var_88.Fields.Item("ID")
  loc_FB9E55:   Proc_183_3_E7DD58(var_CC, CVar(var_BC))
  loc_FB9E62:   var_EC = (var_CC + 1)
  loc_FB9E75:   Set var_F0 = Me.TXT
  loc_FB9E7B:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_F4)
  loc_FB9E83:   var_F4.Text = CStr(var_EC)
  loc_FB9EA0: Else
  loc_FB9EA4:   var_8C = CStr(1)
  loc_FB9EB2:   Set var_90 = Me.TXT
  loc_FB9EB8:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_BC)
  loc_FB9EC0:   var_BC.Text = var_8C
  loc_FB9ECF: End If
  loc_FB9EDC: Set var_90 = Me.TXT
  loc_FB9EE2: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_BC)
  loc_FB9EEA: var_BC.Enabled = True
  loc_FB9F01: Set var_90 = Me.TXT
  loc_FB9F07: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_BC)
  loc_FB9F0F: var_BC.SetFocus
  loc_FB9F20: Set var_88 = Nothing
  loc_FB9F23: Exit Sub
  loc_FB9F24: ' Referenced from: FB9DB8
  loc_FB9F2A: Call 0.Method_arg_50 (var_8C)
  loc_FB9F3F: Proc_183_57_104B0BC(var_8C, "TopCtrl1_eAdd")
  loc_FB9F4B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'ECF240
  'Data Table: 45DF50
  loc_ECF1A4: On Error Goto loc_ECF215
  loc_ECF1DE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_ECF1F6:   var_108 = "INI"
  loc_ECF204:   Call Proc_206_28_E9BE68(Proc_5_1_100EC1C(var_108, Me))
  loc_ECF20F:   Call Proc_206_30_148F6F0(global_72)
  loc_ECF214: End If
  loc_ECF214: Exit Sub
  loc_ECF215: ' Referenced from: ECF1A4
  loc_ECF21B: Call 0.Method_arg_50 (var_108)
  loc_ECF223: var_118 = "TopCtrl1_eCancel"
  loc_ECF230: Proc_183_57_104B0BC(var_108)
  loc_ECF23C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '102FBBC
  'Data Table: 45DF50
  Dim Me As Recordset15
  Dim unk_45DF5A As Connection15
  Dim var_128 As TextBox
  Dim var_100 As Variant
  loc_102F994: On Error Goto loc_102FB89
  loc_102F9A0: var_A0 = Me.RecordCount
  loc_102F9AE: If (var_A0 > 0) Then
  loc_102F9BC:   var_E0 = "Delete Entry !"
  loc_102F9E8:   If (MsgBox("Are You Sure To Delete This ? ", &H114, var_E0, var_100, var_120) = 6) Then
  loc_102F9F4:     unk_45DF5A.BeginTrans var_A0
  loc_102FA0A:     var_94 = Me.Bookmark 'Variant
  loc_102FA2E:     Set var_124 = Me.TXT
  loc_102FA34:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_128, var_12C, "Update TDSCHAL1 Set CertiNo='',CertiDate=NULL WHERE CertiNo=")
  loc_102FA3C:     var_120 = var_128.Text
  loc_102FA4A:     Proc_183_9_EAB2F0(var_E0, CVar(var_12C))
  loc_102FA52:     var_100 = -1 & var_E0 
  loc_102FA60:     unk_45DF5A.Execute CStr(var_100), var_134, 
  loc_102FA9C:     Set var_124 = Me.TXT
  loc_102FAA2:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_128, var_12C, "Delete From TDSCerti Where CertiNo =")
  loc_102FAAA:     var_120 = var_128.Text
  loc_102FAB8:     Proc_183_9_EAB2F0(var_E0, CVar(var_12C))
  loc_102FAC0:     var_100 = -1 & var_E0 
  loc_102FACE:     unk_45DF5A.Execute CStr(var_100), var_134, 
  loc_102FAF0:     unk_45DF5A.CommitTrans
  loc_102FB00:     Me.Requery -1
  loc_102FB20:     If (CVar(Me.RecordCount) >= var_94) Then
  loc_102FB2D:       Me.Bookmark = var_94
  loc_102FB35:     Else
  loc_102FB49:       If (Me.EOF = 0) Then
  loc_102FB52:         Me.MoveLast
  loc_102FB57:       End If
  loc_102FB57:     End If
  loc_102FB57:     Call Proc_206_30_148F6F0()
  loc_102FB78:     Proc_5_0_1107AD0(&HFF, Me)
  loc_102FB80:   End If
  loc_102FB80: End If
  loc_102FB85: Set var_98 = Nothing
  loc_102FB88: Exit Sub
  loc_102FB89: ' Referenced from: 102F994
  loc_102FB8F: unk_45DF5A.RollbackTrans
  loc_102FB9A: Call 0.Method_arg_50 (var_12C, global_72)
  loc_102FBAF: Proc_183_57_104B0BC(var_12C, "TopCtrl1_eDel")
  loc_102FBBB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EF9074
  'Data Table: 45DF50
  Dim var_94 As TextBox
  loc_EF8FA4: On Error Goto loc_EF9049
  loc_EF8FBC: var_88 = "EDIT"
  loc_EF8FCA: Call Proc_206_28_E9BE68(Proc_5_1_100EC1C(var_88, Me))
  loc_EF8FE2: Set var_8C = Me.TXT
  loc_EF8FE8: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EF8FF0: var_94.Enabled = False
  loc_EF9009: Set var_8C = Me.TXT
  loc_EF900F: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_EF9017: var_94.Enabled = False
  loc_EF902E: Set var_8C = Me.TXT
  loc_EF9034: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_EF903C: var_94.SetFocus
  loc_EF9048: Exit Sub
  loc_EF9049: ' Referenced from: EF8FA4
  loc_EF904F: Call 0.Method_arg_50 (var_88)
  loc_EF9064: Proc_183_57_104B0BC(var_88, "TopCtrl1_eEdit")
  loc_EF9070: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E193F0
  'Data Table: 45DF50
  loc_E193E5: Me.Global.Unload Me
  loc_E193ED: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EE3148
  'Data Table: 45DF50
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EE3098: On Error Goto loc_EE311F
  loc_EE30B2: If (Me.RecordCount <= 0) Then
  loc_EE30BB:   var_B8 = "Information"
  loc_EE30D6:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EE30E6:   Exit Sub
  loc_EE30E7: End If
  loc_EE30EE: var_10C = "SELECT CertiNo as SearchCode,CertiNo,CertiDate,Name,TDSAmt FROM TDSCerti Left Join SubGroup ON TDSCerti.Code=SubGroup.SubCode WHERE TDSCERTI.LOGSITE_CODE='" & MemVar_1F95078
  loc_EE30F5: MemVar_1F950E4 = var_10C & "' ORDER BY CertiNo"
  loc_EE3102: MemVar_1F95120 = Me
  loc_EE3119: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EE311E: Exit Sub
  loc_EE311F: ' Referenced from: EE3098
  loc_EE3125: Call 0.Method_arg_50 (var_10C)
  loc_EE313A: Proc_183_57_104B0BC(var_10C, "TopCtrl1_eFind")
  loc_EE3146: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E38768
  'Data Table: 45DF50
  loc_E38758: Proc_5_0_1107AD0(&HFF, Me)
  loc_E38760: Call Proc_206_30_148F6F0(global_72)
  loc_E38765: Exit Sub
  loc_E38766: Set var_2800 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E386A8
  'Data Table: 45DF50
  loc_E38698: Proc_5_0_1107AD0(&HFF, Me)
  loc_E386A0: Call Proc_206_30_148F6F0(global_72)
  loc_E386A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E385E8
  'Data Table: 45DF50
  Dim var_2701 As Double
  loc_E385D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E385E0: Call Proc_206_30_148F6F0(global_72)
  loc_E385E5: Exit Sub
  loc_E385E6: var_2701 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E38588
  'Data Table: 45DF50
  loc_E38578: Proc_5_0_1107AD0(&HFF, Me)
  loc_E38580: Call Proc_206_30_148F6F0(global_72)
  loc_E38585: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '124D718
  'Data Table: 45DF50
  Dim Me As Recordset15
  Dim var_DC As Variant
  Dim var_A8 As Fields15
  Dim var_BC As Field20
  Dim var_FC As String
  Dim unk_45DF5A As Connection15
  Dim var_CC As Variant
  Dim var_114 As String
  Dim var_130 As String
  loc_124D1F0: On Error Goto loc_124D6F0
  loc_124D1FC: var_A4 = Me.RecordCount
  loc_124D20A: If (var_A4 <= 0) Then
  loc_124D20D:   Exit Sub
  loc_124D20E: End If
  loc_124D20E: var_DC = "SELECT PARTY_LIST.ADD1,PARTY_LIST.ADD2,PARTY_LIST.CITY_NAME,PARTY_LIST.name AS Party,0 AS Interest,TDSCHAL1.Amt AS ONAmt,TDSCHAL1.TDS AS TDSPer,TDSCHAL1.TDSAmt,TDSCHAL1.ChalNo,TDSCHAL1.ChalDate,TDSCHAL1.CertiNo,TDSCHAL1.CertiDate,FullName,Desig,TDSCHAL.BANKNAME AS TDS_BankName From ((TDSCERTI LEFT JOIN TDSCHAL1 ON TDSCERTI.CERTINO=TDSCHAL1.CERTINO) LEFT JOIN PARTY_LIST ON PARTY_LIST.SUBCODE=TDSCERTI.CODE) LEFT JOIN TDSCHAL ON TDSCHAL.DOCID=TDSCHAL1.DOCID WHERE TDSCERTI.CERTINO='"
  loc_124D228: var_A8 = Me.Fields
  loc_124D230: var_BC = var_A8.Item("CertiNo")
  loc_124D238: var_CC = var_BC.Value
  loc_124D244: var_FC = "'"
  loc_124D24E: var_88 = CStr(var_DC & var_CC & var_FC)
  loc_124D269: If (var_88 = vbNullString) Then
  loc_124D26C:   Exit Sub
  loc_124D26D: End If
  loc_124D283: unk_45DF5A.Execute var_88, var_CC, -1
  loc_124D28E: Set var_9C = var_A8
  loc_124D2A3: Call 0.Method_arg_108 (var_A8)
  loc_124D2AE: MemVar_1F951E8 = var_A8
  loc_124D2C6: Call 0.Method_arg_90 (var_A8, var_A4, var_9E)
  loc_124D2CE: Call 0.Method_arg_24 (1)
  loc_124D2DA: For var_110 =  To CInt(var_A4): var_A8 = var_110 'Integer
  loc_124D2F3:   Call 0.Method_arg_90 (var_A8, CLng(var_9E))
  loc_124D2FB:   Call 0.Method_arg_20 (var_BC)
  loc_124D303:   Call 0.Method_arg_30 (var_114)
  loc_124D319:   var_124 = Ucase(CVar(var_114)) 'Variant
  loc_124D349:   If (var_124 = Ucase("comp_name")) Then
  loc_124D36D:     Call 0.Method_arg_90 (var_A8, CLng(var_9E))
  loc_124D375:     Call 0.Method_arg_20 (var_BC)
  loc_124D37D:     Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_124D393:   Else
  loc_124D3B5:     If (var_124 = Ucase("comp_add1")) Then
  loc_124D3D9:       Call 0.Method_arg_90 (var_A8, CLng(var_9E))
  loc_124D3E1:       Call 0.Method_arg_20 (var_BC)
  loc_124D3E9:       Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_124D3FF:     Else
  loc_124D421:       If (var_124 = Ucase("comp_add2")) Then
  loc_124D445:         Call 0.Method_arg_90 (var_A8, CLng(var_9E))
  loc_124D44D:         Call 0.Method_arg_20 (var_BC)
  loc_124D455:         Call 0.Method_arg_38 ("'" & MemVar_1F95138 & "'")
  loc_124D46B:       Else
  loc_124D48D:         If (var_124 = Ucase("comp_city")) Then
  loc_124D4B1:           Call 0.Method_arg_90 (var_A8, CLng(var_9E))
  loc_124D4B9:           Call 0.Method_arg_20 (var_BC)
  loc_124D4C1:           Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_124D4D7:         Else
  loc_124D4F9:           If (var_124 = Ucase("Title")) Then
  loc_124D50F:             Call 0.Method_arg_90 (var_A8, CLng(var_9E))
  loc_124D517:             Call 0.Method_arg_20 (var_BC)
  loc_124D51F:             Call 0.Method_arg_38 ("'TDS Certificate'")
  loc_124D52E:           Else
  loc_124D550:             If (var_124 = Ucase("FinYear")) Then
  loc_124D56B:               var_114 = CStr(Year(MemVar_1F950F4))
  loc_124D576:               var_130 = "'FOR THE PERIOD F/Y. " & var_114 & "-"
  loc_124D57C:               var_DC = MemVar_1F950FC
  loc_124D5AC:               Call 0.Method_arg_90 (var_A8, CLng(var_9E))
  loc_124D5B4:               Call 0.Method_arg_20 (var_BC)
  loc_124D5BC:               Call 0.Method_arg_38 (var_130 & CStr(Year(var_DC)) & "'")
  loc_124D5E5:             Else
  loc_124D607:               If (var_124 = Ucase("CerMth")) Then
  loc_124D61B:                 Set var_A8 = Me.TXT
  loc_124D621:                 Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1), var_BC)
  loc_124D638:                 Call 0.Method_arg_194 (var_BC, var_114)
  loc_124D65B:                 Call 0.Method_arg_90 (var_144, CLng(var_9E))
  loc_124D663:                 Call 0.Method_arg_20 (var_148)
  loc_124D66B:                 Call 0.Method_arg_38 ("'Month Of " & var_114 & "'")
  loc_124D684:               End If
  loc_124D684:             End If
  loc_124D684:           End If
  loc_124D684:         End If
  loc_124D684:       End If
  loc_124D684:     End If
  loc_124D684:   End If
  loc_124D687: Next var_110 'Integer
  loc_124D6A5: Call 0.Method_arg_64 (var_A8, CVar(var_9C))
  loc_124D6AD: Call 0.Method_arg_2C (var_DC)
  loc_124D6BB: Call 0.Method_arg_150 (var_FC)
  loc_124D6C6: Call 0.Method_arg_50 (var_114)
  loc_124D6DF: Proc_183_10_1499E94(MemVar_1F951E8, 0)
  loc_124D6EC: Set var_9C = Nothing
  loc_124D6EF: Exit Sub
  loc_124D6F0: ' Referenced from: 124D1F0
  loc_124D6F6: Call 0.Method_arg_50 (var_114, var_114)
  loc_124D70B: Proc_183_57_104B0BC(var_114, "TopCtrl1_ePrn")
  loc_124D717: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0C0CC
  'Data Table: 45DF50
  Dim Me As Recordset15
  loc_E0C0C3: Me.Requery -1
  loc_E0C0C8: Exit Sub
  loc_E0C0C9: Set var_8C = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '13EEAA8
  'Data Table: 45DF50
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_98 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_A4 As String
  Dim var_9C As TextBox
  Dim var_13C As String
  Dim unk_45DF5A As Connection15
  Dim var_A0 As Recordset15
  Dim var_144 As Fields15
  Dim var_148 As Variant
  Dim var_8A As Integer
  Dim var_160 As Variant
  Dim var_210 As Variant
  Dim var_258 As TextBox
  Dim var_4DC As Double
  Dim var_2A4 As TextBox
  Dim var_2F0 As TextBox
  Dim var_384 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_180 As Variant
  Dim var_240 As Variant
  Dim var_250 As Variant
  Dim var_28C As Variant
  Dim var_344 As Variant
  Dim var_3A4 As Variant
  Dim var_1D8 As Variant
  Dim Me As Recordset15
  loc_13EE17C: On Error Goto loc_13EEA6B
  loc_13EE18A: Set var_98 = Me.TXT
  loc_13EE190: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_13EE1B9: If (Proc_183_19_E8E68C(var_9C, "Certificate No.") = 0) Then
  loc_13EE1BC:   Exit Sub
  loc_13EE1BD: End If
  loc_13EE1C8: Set var_98 = Me.TXT
  loc_13EE1CE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C)
  loc_13EE1F7: If (Proc_183_19_E8E68C(var_9C, "A/C Name") = 0) Then
  loc_13EE1FA:   Exit Sub
  loc_13EE1FB: End If
  loc_13EE206: Set var_98 = Me.TXT
  loc_13EE20C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C)
  loc_13EE235: If (Proc_183_19_E8E68C(var_9C, "From Date") = 0) Then
  loc_13EE238:   Exit Sub
  loc_13EE239: End If
  loc_13EE244: Set var_98 = Me.TXT
  loc_13EE24A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_9C)
  loc_13EE25B: Set var_A0 = var_9C
  loc_13EE273: If (Proc_183_19_E8E68C(var_A0, "To Date") = 0) Then
  loc_13EE276:   Exit Sub
  loc_13EE277: End If
  loc_13EE27A: Call Proc_206_32_F659F0(var_A6)
  loc_13EE285: If (var_A6 = &HFF) Then
  loc_13EE288:   Exit Sub
  loc_13EE289: End If
  loc_13EE289: var_B8 = 1
  loc_13EE292: var_D8 = 1
  loc_13EE2B0: var_108 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_13EE2B6: var_118 = Trim(var_108)
  loc_13EE2D2: If (var_118 = vbNullString) Then
  loc_13EE2E8:   var_F8 = "Item Detail Required "
  loc_13EE2EE:   MsgBox(var_F8, 0, var_108, var_118, var_138)
  loc_13EE311:   Me.FGrid.Row = 1
  loc_13EE31D:   Set var_98 = Me.FGrid
  loc_13EE341:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_13EE349:   Exit Sub
  loc_13EE34A: End If
  loc_13EE34E: Set var_98 = Me.TopCtrl1
  loc_13EE354: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(FGrid.DispID_8001)
  loc_13EE35C: var_A4 = CStr(var_D8)
  loc_13EE36D: If (var_A4 = "Add") Then
  loc_13EE39D:   Set var_98 = Me.TXT
  loc_13EE3A3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4, "Select Count(*) From TDSCerti Where CertiNo='", var_F8, -1, var_A0)
  loc_13EE3AB:   var_144 = var_9C.Text
  loc_13EE3C4:   unk_45DF5A.Execute 0 & var_A4 & "'", var_148, var_108
  loc_13EE3CC:   var_B8 = var_A0.Fields
  loc_13EE3D4:    = var_144.Item(var_9C)
  loc_13EE3DC:    = var_148.Value
  loc_13EE409:   If (var_108 > 0) Then
  loc_13EE425:     MsgBox("Duplicate Certificate No.", 0, var_108, var_118, var_138)
  loc_13EE435:     Exit Sub
  loc_13EE436:   End If
  loc_13EE436: End If
  loc_13EE444: unk_45DF5A.BeginTrans var_14C
  loc_13EE467: Set var_98 = Me.TXT
  loc_13EE46D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4, "Update TDSChal1 Set CertiNo='',CertiDate=NULL WHERE CertiNo='")
  loc_13EE475: var_F8 = var_9C.Text
  loc_13EE47E: var_13C = -1 & var_A4
  loc_13EE48E: unk_45DF5A.Execute 0 & var_A4 & "'", var_A0, &HFF
  loc_13EE4C6: Set var_98 = Me.TXT
  loc_13EE4CC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4, "DELETE FROM TDSCerti WHERE CertiNo='")
  loc_13EE4D4: var_F8 = var_9C.Text
  loc_13EE4DD: var_13C = -1 & var_A4
  loc_13EE4ED: unk_45DF5A.Execute 0 & var_A4 & "'", var_A0, 
  loc_13EE515: Set var_98 = Me.TXT
  loc_13EE51B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C)
  loc_13EE523: var_A4 = var_9C.Text
  loc_13EE533: Set var_A0 = Me.TXT
  loc_13EE539: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_13EE548: Proc_183_7_EB17D4(var_108, CVar(var_144))
  loc_13EE55B: Set var_148 = Me.TXT
  loc_13EE561: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_160)
  loc_13EE579: Set var_1B4 = Me.TXT
  loc_13EE57F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1B8)
  loc_13EE58E: Proc_183_7_EB17D4(var_1D8, CVar(var_1B8))
  loc_13EE59E: Set var_1FC = Me.TXT
  loc_13EE5A4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_200)
  loc_13EE5B3: Proc_183_7_EB17D4(var_220, CVar(var_200))
  loc_13EE5C6: Set var_254 = Me.TXT
  loc_13EE5CC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_258)
  loc_13EE5E1: var_4DC = Val(var_258.Text)
  loc_13EE5F2: Set var_2A0 = Me.TXT
  loc_13EE5F8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_2A4, var_2A8)
  loc_13EE613: Set var_2EC = Me.TXT
  loc_13EE619: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_2F0)
  loc_13EE631: Proc_183_7_EB17D4(var_394, MemVar_1F950EC)
  loc_13EE63A: Set var_3C8 = Me.TopCtrl1
  loc_13EE640: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_144)
  loc_13EE68B: var_13C = "Insert Into TDSCerti (CertiNo,CertiDate,Code,Site_Code,FromDate,ToDate,TDSAmt,FullName,Desig,U_Name,U_EntDt,U_AE,LOGSITE_CODE)  Values ('" & var_A4
  loc_13EE6E7: var_250 = CVar(var_13C & "',") & var_108 & ",'" & CVar(var_160.Tag) & "','" & CVar(MemVar_1F95070) & "'," & var_1D8 & "," & var_220 & "," 
  loc_13EE73B: var_3A4 = var_250 & CVar(var_2A4.Text) & ",'" & CVar(var_2A8) & "','" & CVar(var_2F0.Text) & "','" & CVar(MemVar_1F950C8) & "'," & var_394 
  loc_13EE775: unk_45DF5A.Execute CStr(var_3A4 & ",'" & IIf((CStr(var_3D8) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "')"), var_4D0, -1
  loc_13EE822: For var_4E0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_4E0 'Integer
  loc_13EE836:   Set var_98 = Me.TXT
  loc_13EE83C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4)
  loc_13EE844:   1 = var_9C.Text
  loc_13EE854:   Set var_A0 = Me.TXT
  loc_13EE85A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_144)
  loc_13EE869:   Proc_183_7_EB17D4(var_108, CVar(var_144))
  loc_13EE872:   var_240 = CVar(CLng(var_92)) 'Long
  loc_13EE87A:   var_28C = CVar(CLng(9)) 'Long
  loc_13EE899:   var_344 = CVar(CLng(var_92)) 'Long
  loc_13EE8A1:   var_384 = CVar(CLng(&HA)) 'Long
  loc_13EE8EB:   var_B8 = ",SITE_cODE='"
  loc_13EE903:   var_180 = CVar("Update TDSCHAL1 Set CertiNo='" & var_A4 & "',CertiDate=") & var_108 & var_B8 & CVar(MemVar_1F95070) & "',LOGSITE_CODE='" 
  loc_13EE935:   var_210 = var_180 & CVar(MemVar_1F95078) & "' WHERE DOCID='" & CVar(CStr(Me.FGrid.TextMatrix))) & "' AND VSNO=" & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_13EE943:   unk_45DF5A.Execute CStr(var_210), var_220, -1
  loc_13EE988: Next var_4E0 'Integer
  loc_13EE993: unk_45DF5A.CommitTrans
  loc_13EE99A: var_8A = 0
  loc_13EE9A8: Me.Requery -1
  loc_13EE9CC: Set var_98 = Me.TXT
  loc_13EE9D2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4, "CERTINO ='")
  loc_13EE9DA: 0 = var_9C.Text
  loc_13EE9F3: Me.Find 1 & var_A4 & "'", var_B8, var_8A
  loc_13EEA0C: Set var_98 = Me.TopCtrl1
  loc_13EEA12: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_13EEA2B: If (CStr() = "Add") Then
  loc_13EEA2E:   Call TopCtrl1_UnknownEvent_A()
  loc_13EEA33:   Exit Sub
  loc_13EEA34: End If
  loc_13EEA49: var_A4 = "INI"
  loc_13EEA57: Call Proc_206_28_E9BE68(Proc_5_1_100EC1C(var_A4, Me))
  loc_13EEA67: Set var_88 = Nothing
  loc_13EEA6A: Exit Sub
  loc_13EEA6B: ' Referenced from: 13EE17C
  loc_13EEA71: If (var_8A = &HFF) Then
  loc_13EEA7A:   unk_45DF5A.RollbackTrans
  loc_13EEA7F: End If
  loc_13EEA85: Call 0.Method_arg_50 (var_A4)
  loc_13EEA9A: Proc_183_57_104B0BC(var_A4, "TopCtrl1_eSave")
  loc_13EEAA6: Exit Sub
  loc_13EEAA7: Exit Sub
End Sub

Private Sub Form_Load() '10FB5D0
  'Data Table: 45DF50
  Dim var_AC As String
  Dim Me As Recordset15
  Dim var_A8 As Variant
  loc_10FB29C: On Error Goto loc_10FB5A6
  loc_10FB2A9: Set var_A8 = Me.TopCtrl1
  loc_10FB2AF: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_10FB2BD: Call 0.Method_arg_50 (var_AC)
  loc_10FB2CD: Set var_A8 = Me.TopCtrl1
  loc_10FB2D3: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030007(CVar(var_AC))
  loc_10FB2EA: Call 0.Method_arg_38 (MemVar_1F953B0)
  loc_10FB2FB: Call 0.Method_arg_3C (MemVar_1F950EC)
  loc_10FB30C: Call 0.Method_arg_54 (MemVar_1F9506C)
  loc_10FB31D: Call 0.Method_arg_1C (MemVar_1F95070)
  loc_10FB32E: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_10FB33F: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_10FB350: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_10FB361: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_10FB372: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_10FB383: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_10FB39D: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_10FB3AB: Set var_A8 = MemVar_1F95044
  loc_10FB3BA: Call 0.Method_Form_Load8 (var_A8)
  loc_10FB3D0: Me.TopCtrl1.Clone
  loc_10FB3EA: Call 0.Method_arg_50 (var_A8, -1)
  loc_10FB412: Me.Recordset15.CursorLocation = 3
  loc_10FB435: var_AC = "Select SubCode As Code,Name From SubGroup Left Join City C on SubGroup.CityCode=C.CityCode Where Nature Not in ('Bank','Cash','Sale','Purchase','Customer') AND (SUBGROUP.LOGSITE_CODE='" & MemVar_1F95078
  loc_10FB45A: CVarUnk
  loc_10FB45F: VerifyVarObj
  loc_10FB465: Set var_A8 = Me.DGParty
  loc_10FB46B: LateIdStAd
  loc_10FB495: Me.DGParty.CursorLocation = 3
  loc_10FB4B8: var_AC = "SELECT CertiNo AS Search_Code,T.*,SG.Name AS PartyName From TDSCerti T Left Join SubGroup SG On SG.SubCode=T.Code WHERE T.LOGSITE_CODE='" & MemVar_1F95078
  loc_10FB4C9: ar(var_AC & "' OR SUBGROUP.LOGSITE_CODE='HO') Order by Name"), CVar(MemVar_1F951E0), 2 CVar(var_AC & "' Order By T.CertiNo"), CVar(MemVar_1F951E0), 2
  loc_10FB4E0: Set var_A8 = Me
  loc_10FB4E9: var_AC = "INI"
  loc_10FB4F7: Call Proc_206_28_E9BE68(Proc_5_1_100EC1C(var_AC, var_A8, New, 3, -1), var_A8, New)
  loc_10FB502: Call Proc_206_26_128AF84(3, -1)
  loc_10FB507: Call Proc_206_30_148F6F0(var_A8)
  loc_10FB513: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_10FB52B: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_10FB541: Me.Frame_DETAIL1.BackColor = CLng(MemVar_1F951B4)
  loc_10FB558: Me.LblUser.Left = CDbl(13500)
  loc_10FB56F: Me.LblUser.Top = CDbl(7800)
  loc_10FB586: Me.LblLDt.Top = CDbl(8160)
  loc_10FB59D: Me.LblLDt.Left = CDbl(13500)
  loc_10FB5A5: Exit Sub
  loc_10FB5A6: ' Referenced from: 10FB29C
  loc_10FB5AC: Call 0.Method_arg_50 (var_AC)
  loc_10FB5B4: var_CC = "Form_Load"
  loc_10FB5C1: Proc_183_57_104B0BC(var_AC)
  loc_10FB5CD: Exit Sub
End Sub

Private Sub Form_Resize() 'E726A0
  'Data Table: 45DF50
  loc_E7264A: Call 0.Method_arg_50 (var_88)
  loc_E7265C: Me.LblFormCaption.Caption = var_88
  loc_E72675: Me.LblFormCaption.Left = CDbl(0)
  loc_E72683: Call 0.Method_arg_100 (var_90)
  loc_E72695: Me.LblFormCaption.Width = var_90
  loc_E7269D: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E52C30
  'Data Table: 45DF50
  loc_E52C03: Set global_72 = Nothing
  loc_E52C15: Set global_68 = Nothing
  loc_E52C27: Set global_76 = Nothing
  loc_E52C2E: Exit Sub
End Sub

Private Sub Form_Activate() 'E38C44
  'Data Table: 45DF50
  loc_E38C20: Set var_88 = Me.TopCtrl1
  loc_E38C26: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030000()
  loc_E38C3B: If (CLng(CInt()) = &H2D) Then
  loc_E38C3E:   Call TopCtrl1_UnknownEvent_15()
  loc_E38C43: End If
  loc_E38C43: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E6AF20
  'Data Table: 45DF50
  loc_E6AED8: On Error Goto loc_E6AEF6
  loc_E6AEED: Proc_183_40_F3169C(Me, KeyCode)
  loc_E6AEF5: Exit Sub
  loc_E6AEF6: ' Referenced from: E6AED8
  loc_E6AEFC: Call 0.Method_arg_50 (var_8C)
  loc_E6AF11: Proc_183_57_104B0BC(var_8C, "Form_KeyDown")
  loc_E6AF1D: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1024068
  'Data Table: 45DF50
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_1023E48: On Error Goto loc_102403F
  loc_1023E55: Set var_88 = Me.TXT
  loc_1023E5B: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1023E69: Proc_183_28_E216B0(var_8C)
  loc_1023E75: Call Proc_206_29_E54B6C(var_8C)
  loc_1023E7D: var_92 = Index
  loc_1023E88: If (var_92 = CInt(2)) Then
  loc_1023ED9:   Set var_88 = Me.TXT
  loc_1023EDF:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1023EE7:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1023EFF:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_1023F02:     Exit Sub
  loc_1023F03:   End If
  loc_1023F10:   Set var_88 = Me.TXT
  loc_1023F16:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1023F1E:   var_A0 = var_8C.Text
  loc_1023F26:   var_D4 = CVar(var_A0) 'String
  loc_1023F6B:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1023F74:     Me.MoveFirst
  loc_1023F99:     Set var_88 = Me.TXT
  loc_1023F9F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1023FA7:     0 = var_8C.Text
  loc_1023FB5:     Proc_183_9_EAB2F0(var_D4, CVar(var_A0))
  loc_1023FCB:     Me.Find CStr(1 & var_D4), var_F8, 
  loc_1023FE3:   End If
  loc_1023FE6: Else
  loc_1023FEE:   If Not (var_92 = CInt(0)) Then
  loc_1023FF9:     If Not (var_92 = CInt(1)) Then
  loc_1024004:       If Not (var_92 = CInt(6)) Then
  loc_102400F:         If Not (var_92 = CInt(7)) Then
  loc_102401A:           If Not (var_92 = CInt(5)) Then
  loc_1024025:             If (var_92 = CInt(4)) Then
  loc_1024028:             End If
  loc_1024028:           End If
  loc_1024028:         End If
  loc_1024028:       End If
  loc_1024028:     End If
  loc_1024030:     var_A0 = "{Home}+{End}"
  loc_1024036:     Proc_303_0_FBACC8(var_A0)
  loc_102403E:   End If
  loc_102403E: End If
  loc_102403E: Exit Sub
  loc_102403F: ' Referenced from: 1023E48
  loc_1024045: Call 0.Method_arg_50 (var_A0)
  loc_102405A: Proc_183_57_104B0BC(var_A0, "Txt_GotFocus")
  loc_1024066: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FAE3C0
  'Data Table: 45DF50
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_B0 As String
  loc_FAE238: On Error Goto loc_FAE395
  loc_FAE245: If (CLng(Shift) = &H1B) Then
  loc_FAE248:   Call Proc_206_29_E54B6C()
  loc_FAE24D:   Exit Sub
  loc_FAE24E: End If
  loc_FAE251: var_86 = KeyCode
  loc_FAE25C: If (var_86 = CInt(2)) Then
  loc_FAE295:   Proc_183_34_1307118(Me.DGParty, Me.TXT, KeyCode, global_68)
  loc_FAE2A5: End If
  loc_FAE2C1: If (CBool(Me.DGParty.Visible) = 0) Then
  loc_FAE2D9:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FAE2E2:     Proc_183_29_E53794(Shift, arg_14, Shift)
  loc_FAE2E7:   End If
  loc_FAE2EB:   Set var_8C = Me.TopCtrl1
  loc_FAE2F1:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(0)
  loc_FAE30A:   If (CStr(1) = "Add") Then
  loc_FAE322:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_FAE32B:       Proc_183_30_E53D10(Shift, arg_14)
  loc_FAE330:     End If
  loc_FAE333:   Else
  loc_FAE337:     Set var_8C = Me.TopCtrl1
  loc_FAE33D:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_86)
  loc_FAE345:     var_B0 = CStr()
  loc_FAE356:     If (var_B0 = "Edit") Then
  loc_FAE36E:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_FAE377:         Proc_183_30_E53D10(Shift)
  loc_FAE37C:       End If
  loc_FAE37C:     End If
  loc_FAE37C:   End If
  loc_FAE391:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FAE394:   End If
  loc_FAE394: End If
  loc_FAE394: Exit Sub
  loc_FAE395: ' Referenced from: FAE238
  loc_FAE39B: Call 0.Method_arg_50 (var_B0)
  loc_FAE3B0: Proc_183_57_104B0BC(var_B0, "Txt_KeyDown")
  loc_FAE3BC: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F10630
  'Data Table: 45DF50
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_F1054C: On Error Goto loc_F10606
  loc_F10552: Proc_183_46_E07C50(arg_10)
  loc_F1055A: var_86 = KeyAscii
  loc_F10565: If (var_86 = CInt(0)) Then
  loc_F10572:   Set var_8C = Me.TXT
  loc_F10578:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F10593:   Proc_183_22_129BBAC(var_90, arg_10, 8)
  loc_F105A2: Else
  loc_F105AA:   If (var_86 = CInt(2)) Then
  loc_F105C9:     If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_F105DB:       var_AC = "Name"
  loc_F105F6:       Proc_183_41_145A968(Me.TXT, KeyAscii, global_68, arg_10)
  loc_F10605:     End If
  loc_F10605:   End If
  loc_F10605: End If
  loc_F10605: Exit Sub
  loc_F10606: ' Referenced from: F1054C
  loc_F1060C: Call 0.Method_arg_50 (var_AC, var_AC, 0)
  loc_F10621: Proc_183_57_104B0BC(var_AC, "TXT_KeyPress")
  loc_F1062D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E511BC
  'Data Table: 45DF50
  loc_E5119A: Set var_88 = Me.TXT
  loc_E511A0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E511AE: Proc_183_27_E23198(var_8C)
  loc_E511BA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '116D2C8
  'Data Table: 45DF50
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_98 As String
  Dim var_AC As TextBox
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim arg_DFF As Double
  loc_116CF10: On Error Goto loc_116D29D
  loc_116CF16: var_86 = Cancel
  loc_116CF21: If (var_86 = CInt(0)) Then
  loc_116CF2F:   Set var_8C = Me.TXT
  loc_116CF35:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_116CF5E:   If (Proc_183_19_E8E68C(var_90, "Certificate No") = 0) Then
  loc_116CF6C:     Set var_8C = Me.TXT
  loc_116CF72:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_116CF7A:     var_90.SetFocus
  loc_116CF88:     arg_10 = &HFF
  loc_116CF8B:     Exit Sub
  loc_116CF8C:   End If
  loc_116CF97:   Set var_8C = Me.TXT
  loc_116CF9D:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_116CFA9:   Proc_183_6_EA3B94(CVar(var_90), arg_10)
  loc_116CFBE:   Set var_94 = Me.TXT
  loc_116CFC4:   Call 0.Method_Txt_Validate0 (CInt(0), var_AC)
  loc_116CFCC:   var_AC.Text = CStr(var_86)
  loc_116CFE3:   Call Proc_206_32_F659F0(var_AE)
  loc_116CFEE:   If (var_AE = &HFF) Then
  loc_116CFF3:     arg_10 = &HFF
  loc_116CFF6:     Exit Sub
  loc_116CFF7:   End If
  loc_116CFFA: Else
  loc_116D002:   If Not (var_86 = CInt(6)) Then
  loc_116D00D:     If Not (var_86 = CInt(7)) Then
  loc_116D018:       If (var_86 = CInt(1)) Then
  loc_116D01B:       End If
  loc_116D01B:     End If
  loc_116D028:     Set var_8C = Me.TXT
  loc_116D02E:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116D066:     If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_116D06E:       var_98 = CStr(MemVar_1F950EC)
  loc_116D07B:       Set var_8C = Me.TXT
  loc_116D081:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116D089:       var_90.Text = var_98
  loc_116D09B:     Else
  loc_116D0A8:       Set var_8C = Me.TXT
  loc_116D0AE:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116D0C5:       Call 0.Method_arg_184 (var_90, var_98)
  loc_116D0D7:       Set var_AC = Me.TXT
  loc_116D0DD:       Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_116D0E5:       Me.TXT.Text = var_98
  loc_116D0F8:     End If
  loc_116D100:     If (Cancel = CInt(7)) Then
  loc_116D103:       Call Proc_206_31_13AA1D8(arg_10)
  loc_116D108:     End If
  loc_116D10B:   Else
  loc_116D113:     If (var_86 = CInt(2)) Then
  loc_116D164:       Set var_8C = Me.TXT
  loc_116D16A:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116D18A:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_116D19A:         Set var_8C = Me.TXT
  loc_116D1A0:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116D1A8:         var_90.Text = vbNullString
  loc_116D1C1:         Set var_8C = Me.TXT
  loc_116D1C7:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116D1CF:         var_90.Tag = vbNullString
  loc_116D1DE:       Else
  loc_116D219:         Set var_94 = Me.TXT
  loc_116D21F:         Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_116D227:         var_AC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_116D26B:         var_98 = CStr(Me.Fields.Item("Code").Value)
  loc_116D278:         Set var_94 = Me.TXT
  loc_116D27E:         Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_116D286:         var_AC.Tag = var_98
  loc_116D29C:       End If
  loc_116D29C:     End If
  loc_116D29C:   End If
  loc_116D29C: End If
  loc_116D29C: Exit Sub
  loc_116D29D: ' Referenced from: 116CF10
  loc_116D2A3: Call 0.Method_arg_50 (var_98)
  loc_116D2B8: Proc_183_57_104B0BC(var_98)
  loc_116D2C4: Exit Sub
  loc_116D2C5: arg_DFF = "Txt_Validate"
End Sub

Private Sub FGrid_UnknownEvent_D '10D13C0
  'Data Table: 45DF50
  Dim var_A0 As String
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_114 As TextBox
  Dim var_134 As Double
  Dim var_12C As String
  Dim var_128 As TextBox
  loc_10D10D4: On Error Goto loc_10D1396
  loc_10D10DB: Set var_8C = Me.TopCtrl1
  loc_10D10E1: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10D10E9: var_A0 = CStr()
  loc_10D10FA: If (var_A0 = "Browse") Then
  loc_10D10FD:   Exit Sub
  loc_10D10FE: End If
  loc_10D111B: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_10D111E:   Exit Sub
  loc_10D111F: End If
  loc_10D1130: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_10D1152:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_10D118C:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_10D11AE:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_10D11C4:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D11CD:         Set var_114 = Me.FGrid
  loc_10D11E8:       Else
  loc_10D11FB:         Me.FGrid.Rows = 1
  loc_10D1218:         var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_10D1220:         Set var_114 = Me.FGrid
  loc_10D124F:         Me.FGrid.FixedRows = 1
  loc_10D1257:       End If
  loc_10D1265:       Set var_8C = Me.TXT
  loc_10D126B:       Call 0.Method_FGrid_UnknownEvent_D0 (CInt(3), var_114, vbNullString, FGrid.DispID_10000)
  loc_10D12A4:       For var_118 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_118 'Integer
  loc_10D12AE:         var_B0 = CVar(CLng(var_86)) 'Long
  loc_10D12D8:         var_134 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10D12E9:         Set var_8C = Me.TXT
  loc_10D12EF:         Call 0.Method_FGrid_UnknownEvent_D0 (CInt(3), var_114, var_A0, var_134, CVar(CLng(6)))
  loc_10D12F7:         var_B0 = var_D0
  loc_10D130A:         var_12C = CStr((Val(var_A0) + var_134))
  loc_10D1318:         Set var_124 = Me.TXT
  loc_10D131E:         Call 0.Method_FGrid_UnknownEvent_D0 (CInt(3), var_128, var_12C)
  loc_10D1326:         var_128.Text = 1
  loc_10D1347:       Next var_118 'Integer
  loc_10D134C:     End If
  loc_10D134F:   Else
  loc_10D1370:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_10D1380:   End If
  loc_10D1384:   Set var_8C = Me.FGrid
  loc_10D1395: End If
  loc_10D1395: Exit Sub
  loc_10D1396: ' Referenced from: 10D10D4
  loc_10D139C: Call 0.Method_arg_50 (var_A0)
  loc_10D13B1: Proc_183_57_104B0BC(var_A0, "FGrid_KeyUp")
  loc_10D13BD: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EBB95C
  'Data Table: 45DF50
  Dim Me As Recordset15
  Dim var_8C As String
  loc_EBB8CA: On Error Goto loc_EBB933
  loc_EBB8D3: Me.MoveFirst
  loc_EBB8ED: var_8C = "SearchCode='" & MyValue
  loc_EBB8FD: Me.Find var_8C & "'", 0, 1
  loc_EBB925: Proc_5_0_1107AD0(&HFF, Me, global_72)
  loc_EBB92D: Call Proc_206_30_148F6F0(0)
  loc_EBB932: Exit Sub
  loc_EBB933: ' Referenced from: EBB8CA
  loc_EBB939: Call 0.Method_arg_50 (var_8C)
  loc_EBB94E: Proc_183_57_104B0BC(var_8C, "SEARCHBACK")
  loc_EBB95A: Exit Sub
End Sub

Public Sub Proc_206_26_128AF84
  'Data Table: 45DF50
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As Variant
  Dim var_B4 As Variant
  Dim var_B8 As TextBox
  Dim var_E4 As MSHFlexGrid
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_118 As String
  loc_128A9B4: On Error Goto loc_128AF5C
  loc_128A9CA: Me.FGrid.Left = CVar(CDbl(600))
  loc_128A9E5: Me.FGrid.Top = CVar(CDbl(1900))
  loc_128AA00: Me.FGrid.Width = CVar(CDbl(14000))
  loc_128AA16: Set var_A8 = Me.TXT
  loc_128AA1C: Call 0.Method_Proc_206_26_128AF840 (CInt(2), var_AC)
  loc_128AA3B: Me.DGParty.Left = CVar(var_AC.Left)
  loc_128AA57: Set var_B4 = Me.TXT
  loc_128AA5D: Call 0.Method_Proc_206_26_128AF840 (CInt(2), var_B8)
  loc_128AA78: Set var_A8 = Me.TXT
  loc_128AA7E: Call 0.Method_Proc_206_26_128AF840 (CInt(2), var_AC)
  loc_128AA92: var_94 = CVar((var_AC.Top + var_B8.Height)) 'Single
  loc_128AAA1: Me.DGParty.Top = CVar(var_AC.Left)
  loc_128AAC6: Me.DGParty.Height = CVar(CDbl(5640))
  loc_128AB09: Me.Frame_DETAIL1.Top = ((CDbl(Me.FGrid.Top) + CDbl(Me.FGrid.Height)) + CDbl(&H32))
  loc_128AB3C: Me.Frame_DETAIL1.Width = CDbl(Me.FGrid.Width)
  loc_128AB4F: Set var_E4 = Me.FGrid
  loc_128AB60: var_E8 = CStr(CLng(var_E4.BackColor))
  loc_128AB66: global_52 = var_E8
  loc_128AB7C: var_E4.Cols = &HB
  loc_128AB84: var_94 = CVar(CLng(0)) 'Long
  loc_128AB89: var_F8 = &HFA
  loc_128AB95: LateIdCallSt
  loc_128AB9D: var_94 = 0
  loc_128ABA9: var_F8 = CVar(CLng(1)) 'Long
  loc_128ABAE: var_118 = "Chal.Type"
  loc_128ABB7: LateIdCallSt
  loc_128ABC2: var_94 = CVar(CLng(1)) 'Long
  loc_128ABCD: var_F8 = CVar(CInt(1)) 'Integer
  loc_128ABD4: LateIdCallSt
  loc_128ABDF: var_94 = CVar(CLng(1)) 'Long
  loc_128ABEA: var_F8 = CVar(CInt(1)) 'Integer
  loc_128ABF1: LateIdCallSt
  loc_128ABFC: var_94 = CVar(CLng(1)) 'Long
  loc_128AC01: var_F8 = &H578
  loc_128AC0D: LateIdCallSt
  loc_128AC15: var_94 = 0
  loc_128AC21: var_F8 = CVar(CLng(2)) 'Long
  loc_128AC26: var_118 = "Chal.No."
  loc_128AC2F: LateIdCallSt
  loc_128AC3A: var_94 = CVar(CLng(2)) 'Long
  loc_128AC45: var_F8 = CVar(CInt(7)) 'Integer
  loc_128AC4C: LateIdCallSt
  loc_128AC57: var_94 = CVar(CLng(2)) 'Long
  loc_128AC62: var_F8 = CVar(CInt(7)) 'Integer
  loc_128AC69: LateIdCallSt
  loc_128AC74: var_94 = CVar(CLng(2)) 'Long
  loc_128AC79: var_F8 = &H3B6
  loc_128AC85: LateIdCallSt
  loc_128AC8D: var_94 = 0
  loc_128AC99: var_F8 = CVar(CLng(3)) 'Long
  loc_128AC9E: var_118 = "Date"
  loc_128ACA7: LateIdCallSt
  loc_128ACB2: var_94 = CVar(CLng(3)) 'Long
  loc_128ACBD: var_F8 = CVar(CInt(1)) 'Integer
  loc_128ACC4: LateIdCallSt
  loc_128ACCF: var_94 = CVar(CLng(3)) 'Long
  loc_128ACDA: var_F8 = CVar(CInt(1)) 'Integer
  loc_128ACE1: LateIdCallSt
  loc_128ACEC: var_94 = CVar(CLng(3)) 'Long
  loc_128ACF1: var_F8 = &H3B6
  loc_128ACFD: LateIdCallSt
  loc_128AD08: var_94 = CVar(CLng(4)) 'Long
  loc_128AD0D: var_F8 = 0
  loc_128AD19: LateIdCallSt
  loc_128AD21: var_94 = 0
  loc_128AD2D: var_F8 = CVar(CLng(4)) 'Long
  loc_128AD32: var_118 = "On Amount"
  loc_128AD3B: LateIdCallSt
  loc_128AD46: var_94 = CVar(CLng(4)) 'Long
  loc_128AD51: var_F8 = CVar(CInt(7)) 'Integer
  loc_128AD58: LateIdCallSt
  loc_128AD63: var_94 = CVar(CLng(4)) 'Long
  loc_128AD6E: var_F8 = CVar(CInt(7)) 'Integer
  loc_128AD75: LateIdCallSt
  loc_128AD80: var_94 = CVar(CLng(4)) 'Long
  loc_128AD85: var_F8 = &H5DC
  loc_128AD91: LateIdCallSt
  loc_128AD99: var_94 = 0
  loc_128ADA5: var_F8 = CVar(CLng(5)) 'Long
  loc_128ADAA: var_118 = "T.D.S.%"
  loc_128ADB3: LateIdCallSt
  loc_128ADBE: var_94 = CVar(CLng(5)) 'Long
  loc_128ADC9: var_F8 = CVar(CInt(7)) 'Integer
  loc_128ADD0: LateIdCallSt
  loc_128ADDB: var_94 = CVar(CLng(5)) 'Long
  loc_128ADE6: var_F8 = CVar(CInt(7)) 'Integer
  loc_128ADED: LateIdCallSt
  loc_128ADF8: var_94 = CVar(CLng(5)) 'Long
  loc_128ADFD: var_F8 = &H44C
  loc_128AE09: LateIdCallSt
  loc_128AE11: var_94 = 0
  loc_128AE1D: var_F8 = CVar(CLng(6)) 'Long
  loc_128AE22: var_118 = "T.D.S.Amt"
  loc_128AE2B: LateIdCallSt
  loc_128AE36: var_94 = CVar(CLng(6)) 'Long
  loc_128AE41: var_F8 = CVar(CInt(7)) 'Integer
  loc_128AE48: LateIdCallSt
  loc_128AE53: var_94 = CVar(CLng(6)) 'Long
  loc_128AE5E: var_F8 = CVar(CInt(7)) 'Integer
  loc_128AE65: LateIdCallSt
  loc_128AE70: var_94 = CVar(CLng(6)) 'Long
  loc_128AE75: var_F8 = &H4B0
  loc_128AE81: LateIdCallSt
  loc_128AE8C: var_94 = CVar(CLng(7)) 'Long
  loc_128AE91: var_F8 = 0
  loc_128AE9D: LateIdCallSt
  loc_128AEA5: var_94 = 0
  loc_128AEB1: var_F8 = CVar(CLng(8)) 'Long
  loc_128AEB6: var_118 = "Cash/Bank A/C Name"
  loc_128AEBF: LateIdCallSt
  loc_128AECA: var_94 = CVar(CLng(8)) 'Long
  loc_128AED5: var_F8 = CVar(CInt(1)) 'Integer
  loc_128AEDC: LateIdCallSt
  loc_128AEE7: var_94 = CVar(CLng(8)) 'Long
  loc_128AEF2: var_F8 = CVar(CInt(1)) 'Integer
  loc_128AEF9: LateIdCallSt
  loc_128AF04: var_94 = CVar(CLng(8)) 'Long
  loc_128AF09: var_F8 = &HDAC
  loc_128AF15: LateIdCallSt
  loc_128AF20: var_94 = CVar(CLng(9)) 'Long
  loc_128AF25: var_F8 = 0
  loc_128AF31: LateIdCallSt
  loc_128AF3C: var_94 = CVar(CLng(&HA)) 'Long
  loc_128AF41: var_F8 = 0
  loc_128AF4D: LateIdCallSt
  loc_128AF57: Set var_E4 = Nothing 
  loc_128AF5B: Exit Sub
  loc_128AF5C: ' Referenced from: 128A9B4
  loc_128AF62: Call 0.Method_arg_50 (var_E8, var_E4, var_F8, var_94, var_E4, var_F8, var_94, var_E4)
  loc_128AF77: Proc_183_57_104B0BC(var_E8, "Ini_Grid", var_F8, var_94, var_E4)
  loc_128AF83: Exit Sub
End Sub

Public Sub Proc_206_27_F1ABE8
  'Data Table: 45DF50
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F1AAFE: Set var_8C = Me.TXT
  loc_F1AB04: Call 0.Method_Proc_206_27_F1ABE8C (var_8E, var_86)
  loc_F1AB14: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1AB2A:   Set var_8C = Me.TXT
  loc_F1AB30:   Call 0.Method_Proc_206_27_F1ABE80 (CInt(var_86), var_98)
  loc_F1AB38:   var_98.Text = vbNullString
  loc_F1AB54:   Set var_8C = Me.TXT
  loc_F1AB5A:   Call 0.Method_Proc_206_27_F1ABE80 (CInt(var_86), var_98)
  loc_F1AB62:   var_98.Tag = vbNullString
  loc_F1AB71: Next var_92 'Byte
  loc_F1AB8A: Me.FGrid.Rows = 1
  loc_F1ABA7: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F1ABAF: Set var_98 = Me.FGrid
  loc_F1ABDE: Me.FGrid.FixedRows = 1
  loc_F1ABE6: Exit Sub
End Sub

Public Sub Proc_206_28_E9BE68(arg_C) 'E9BE68
  'Data Table: 45DF50
  Dim var_98 As TextBox
  loc_E9BDEE: Set var_8C = Me.TXT
  loc_E9BDF4: Call 0.Method_Proc_206_28_E9BE68C (var_8E, var_86)
  loc_E9BE04: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9BE1A:   Set var_8C = Me.TXT
  loc_E9BE20:   Call 0.Method_Proc_206_28_E9BE680 (CInt(var_86), var_98)
  loc_E9BE28:   var_98.Enabled = arg_C
  loc_E9BE37: Next var_92 'Byte
  loc_E9BE4A: Set var_8C = Me.TXT
  loc_E9BE50: Call 0.Method_Proc_206_28_E9BE680 (CInt(3), var_98)
  loc_E9BE58: var_98.Enabled = False
  loc_E9BE64: Exit Sub
End Sub

Public Sub Proc_206_29_E54B6C
  'Data Table: 45DF50
  loc_E54B50: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_E54B62:   Me.DGParty.Visible = False
  loc_E54B6A: End If
  loc_E54B6A: Exit Sub
End Sub

Public Sub Proc_206_30_148F6F0
  'Data Table: 45DF50
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_C4 As String
  Dim var_B0 As Variant
  Dim var_8A As Integer
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim unk_45DF5A As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Fields15
  Dim var_138 As Variant
  Dim var_114 As Variant
  Dim var_18C As Fields15
  Dim var_124 As Variant
  Dim var_1F0 As Double
  Dim var_1A0 As TextBox
  loc_148EAA8: On Error Goto loc_148F6C5
  loc_148EAC2: If (Me.RecordCount > 0) Then
  loc_148EB01:   Set var_AC = Me.TXT
  loc_148EB07:   Call 0.Method_Proc_206_30_148F6F00 (CInt(0), var_B0)
  loc_148EB0F:   var_B0.Text = CStr(Me.Fields.Item("CertiNo").Value)
  loc_148EB61:   Set var_AC = Me.TXT
  loc_148EB67:   Call 0.Method_Proc_206_30_148F6F00 (CInt(1), var_B0)
  loc_148EB6F:   var_B0.Text = CStr(Me.Fields.Item("CertiDate").Value)
  loc_148EBC1:   Set var_AC = Me.TXT
  loc_148EBC7:   Call 0.Method_Proc_206_30_148F6F00 (CInt(2), var_B0)
  loc_148EBCF:   var_B0.Text = CStr(Me.Fields.Item("PartyName").Value)
  loc_148EC21:   Set var_AC = Me.TXT
  loc_148EC27:   Call 0.Method_Proc_206_30_148F6F00 (CInt(2), var_B0)
  loc_148EC2F:   var_B0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_148EC81:   Set var_AC = Me.TXT
  loc_148EC87:   Call 0.Method_Proc_206_30_148F6F00 (CInt(6), var_B0)
  loc_148EC8F:   var_B0.Text = CStr(Me.Fields.Item("FromDate").Value)
  loc_148ECE1:   Set var_AC = Me.TXT
  loc_148ECE7:   Call 0.Method_Proc_206_30_148F6F00 (CInt(7), var_B0)
  loc_148ECEF:   var_B0.Text = CStr(Me.Fields.Item("ToDate").Value)
  loc_148ED41:   Set var_AC = Me.TXT
  loc_148ED47:   Call 0.Method_Proc_206_30_148F6F00 (CInt(3), var_B0)
  loc_148ED4F:   var_B0.Text = CStr(Me.Fields.Item("TDSAmt").Value)
  loc_148EDA1:   Set var_AC = Me.TXT
  loc_148EDA7:   Call 0.Method_Proc_206_30_148F6F00 (CInt(5), var_B0)
  loc_148EDAF:   var_B0.Text = CStr(Me.Fields.Item("FullName").Value)
  loc_148EE01:   Set var_AC = Me.TXT
  loc_148EE07:   Call 0.Method_Proc_206_30_148F6F00 (CInt(4), var_B0)
  loc_148EE0F:   var_B0.Text = CStr(Me.Fields.Item("Desig").Value)
  loc_148EE34:   Me.FGrid.Redraw = False
  loc_148EE4F:   Me.FGrid.Rows = 1
  loc_148EE59:   var_8A = 1
  loc_148EE69:   var_D4 = "SELECT TDSChal1.*,SubGroup.Name AS BANBNAME,TDSCHAL.BANKCODE FROM (TDSChal LEFT JOIN TDSChal1 ON TDSChal.DocId=TDSChal1.DocId) LEFT JOIN SubGroup ON TDSChal.BankCode = SubGroup.SubCode WHERE TDSCHAL1.CERTINO='"
  loc_148EEB2:   unk_45DF5A.Execute CStr(var_D4 & Me.Fields.Item("CertiNo").Value & "' ORDER BY TDSChal1.CHALDATE,TDSChal1.CHALTYPE,TDSChal1.CHALNO"), var_124, -1
  loc_148EEBD:   Set var_88 = var_AC
  loc_148EF7A:   var_188 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE")), var_88.Fields) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_148EFBF:   Me.LblUser.Caption = CStr(var_8A & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_188)))
  loc_148F08B:   var_C4 = Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE")))
  loc_148F09A:   var_188 = IIf((var_C4 = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_148F0B9:   var_1A0 = var_88.Fields.Item("U_EntDt")
  loc_148F0DF:   Me.LblLDt.Caption = CStr(var_188 & CVar(Proc_6_38_E69628(CVar(var_1A0))))
  loc_148F117:   ' Referenced from: 148F603
  loc_148F126:   If Not(var_88.EOF) Then
  loc_148F129:     var_A4 = vbNullString
  loc_148F133:     Set var_94 = Me.FGrid
  loc_148F148:     Set var_1E8 = Me.FGrid
  loc_148F14F:     var_A4 = CVar(CLng(var_8A)) 'Long
  loc_148F157:     var_F4 = CVar(CLng(&HA)) 'Long
  loc_148F165:     LateIdCallSt
  loc_148F1A6:     var_E4 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("ChalType")), CVar(CLng(1)), CVar(CLng(var_8A)), var_1E8, vbNullString)) 'String
  loc_148F1AD:     LateIdCallSt
  loc_148F1F6:     Proc_183_3_E7DD58(var_E4, CVar(var_88.Fields.Item("ChalNo")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1E8)
  loc_148F1FF:     var_104 = CVar(CStr(var_E4)) 'String
  loc_148F206:     LateIdCallSt
  loc_148F21E:     var_D4 = CVar(CLng(var_8A)) 'Long
  loc_148F226:     var_114 = CVar(CLng(3)) 'Long
  loc_148F256:     var_E4 = CVar(CStr(var_88.Fields.Item("ChalDate").Value)) 'String
  loc_148F25D:     LateIdCallSt
  loc_148F293:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_148F29B:     var_138 = CVar(CLng(4)) 'Long
  loc_148F2C8:     var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amt")), "0.00"))) 'String
  loc_148F2CF:     LateIdCallSt
  loc_148F305:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_148F30D:     var_138 = CVar(CLng(5)) 'Long
  loc_148F33A:     var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("TDS")), "0.0000"))) 'String
  loc_148F341:     LateIdCallSt
  loc_148F377:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_148F37F:     var_138 = CVar(CLng(6)) 'Long
  loc_148F3AC:     var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("TDSAmt")), "0.00"))) 'String
  loc_148F3B3:     LateIdCallSt
  loc_148F3CD:     var_D4 = CVar(CLng(var_8A)) 'Long
  loc_148F3D5:     var_114 = CVar(CLng(7)) 'Long
  loc_148F405:     var_E4 = CVar(CStr(var_88.Fields.Item("BankCode").Value)) 'String
  loc_148F40C:     LateIdCallSt
  loc_148F426:     var_D4 = CVar(CLng(var_8A)) 'Long
  loc_148F42E:     var_114 = CVar(CLng(8)) 'Long
  loc_148F45E:     var_E4 = CVar(CStr(var_88.Fields.Item("BANBNAME").Value)) 'String
  loc_148F465:     LateIdCallSt
  loc_148F4B4:     var_E4 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("DocID")), CVar(CLng(9)), CVar(CLng(var_8A)), var_1E8, var_E4, CVar(CLng(9)), CVar(CLng(var_8A)))) 'String
  loc_148F4BB:     LateIdCallSt
  loc_148F4D9:     var_114 = CVar(CLng(&HA)) 'Long
  loc_148F4F5:     var_A8 = var_88.Fields.Item("VSno")
  loc_148F504:     Proc_183_3_E7DD58(var_E4, CVar(var_A8), var_114, CVar(CLng(var_8A)), var_1E8, var_E4)
  loc_148F514:     LateIdCallSt
  loc_148F52A:     Set var_1E8 = Nothing 
  loc_148F53C:     Set var_94 = Me.TXT
  loc_148F542:     Call 0.Method_Proc_206_30_148F6F00 (CInt(3), var_A8, var_C4, var_1E8, CVar(CStr(var_E4)), var_1E8)
  loc_148F54A:     var_E4 = var_A8.Text
  loc_148F557:     var_1F0 = Val(var_C4)
  loc_148F599:     var_D4 = CVar(var_1F0) 'Double
  loc_148F5A0:     var_E4 = (var_D4 + var_88.Fields.Item("TDSAmt").Value)
  loc_148F5BE:     Set var_18C = Me.TXT
  loc_148F5C4:     Call 0.Method_Proc_206_30_148F6F00 (CInt(3), var_1A0, CStr(Format(var_E4, "0.00")), 1, 1)
  loc_148F5CC:     var_1A0.Text = var_1F0
  loc_148F5F8:     var_8A = (var_8A + 1)
  loc_148F5FE:     var_88.MoveNext
  loc_148F603:     GoTo loc_148F117
  loc_148F606:   End If
  loc_148F619:   Me.FGrid.FixedRows = 1
  loc_148F62F:   Me.FGrid.Redraw = True
  loc_148F63D:   If (var_8A = 1) Then
  loc_148F653:     Me.FGrid.Rows = 1
  loc_148F670:     var_E4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_148F678:     Set var_A8 = Me.FGrid
  loc_148F6A7:     Me.FGrid.FixedRows = 1
  loc_148F6AF:   End If
  loc_148F6B2: Else
  loc_148F6B2:   Call Proc_206_27_F1ABE8(FGrid.DispID_10000, var_E4, var_8A, var_114)
  loc_148F6B7: End If
  loc_148F6B7: Call Proc_206_29_E54B6C(var_D4, var_1E8)
  loc_148F6C1: Set var_88 = Nothing
  loc_148F6C4: Exit Sub
  loc_148F6C5: ' Referenced from: 148EAA8
  loc_148F6CB: Call 0.Method_arg_50 (var_C4)
  loc_148F6E0: Proc_183_57_104B0BC(var_C4, "MoveRec")
  loc_148F6EC: Exit Sub
End Sub

Public Sub Proc_206_31_13AA1D8
  'Data Table: 45DF50
  Dim var_B0 As Variant
  Dim var_94 As Variant
  Dim var_8A As Integer
  Dim var_A0 As String
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_C0 As Variant
  Dim var_154 As Variant
  Dim var_15C As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim unk_45DF5A As Connection15
  Dim var_88 As Recordset15
  Dim var_8E As Integer
  Dim var_1B4 As Variant
  Dim var_9C As Variant
  Dim var_E0 As Variant
  Dim var_160 As String
  Dim var_114 As Variant
  Dim var_1E0 As Variant
  Dim var_98 As Variant
  Dim var_24C As Double
  loc_13A98E4: On Error Goto loc_13AA1AE
  loc_13A98F2: Set var_94 = Me.TXT
  loc_13A98F8: Call 0.Method_Proc_206_31_13AA1D80 (CInt(2))
  loc_13A9921: If (Proc_183_19_E8E68C(var_98, "A/C Name") = 0) Then
  loc_13A9924:   Exit Sub
  loc_13A9925: End If
  loc_13A9930: Set var_94 = Me.TXT
  loc_13A9936: Call 0.Method_Proc_206_31_13AA1D80 (CInt(6), var_98)
  loc_13A995F: If (Proc_183_19_E8E68C(var_98, "From Date") = 0) Then
  loc_13A9962:   Exit Sub
  loc_13A9963: End If
  loc_13A996E: Set var_94 = Me.TXT
  loc_13A9974: Call 0.Method_Proc_206_31_13AA1D80 (CInt(7), var_98)
  loc_13A999D: If (Proc_183_19_E8E68C(var_98, "To Date") = 0) Then
  loc_13A99A0:   Exit Sub
  loc_13A99A1: End If
  loc_13A99B0: Me.FGrid.Redraw = False
  loc_13A99CB: Me.FGrid.Rows = 1
  loc_13A99D5: var_8A = 1
  loc_13A99EC: var_A0 = "SELECT TDSChal1.*,SubGroup.Name AS BANBNAME,TDSCHAL.BANKCODE FROM (TDSChal LEFT JOIN TDSChal1 ON TDSChal.DocId=TDSChal1.DocId) LEFT JOIN SubGroup ON TDSChal.BankCode=SubGroup.SubCode WHERE TDSCHAL1.LOGSITE_CODE='" & MemVar_1F95078
  loc_13A9A01: Set var_94 = Me.TXT
  loc_13A9A07: Call 0.Method_Proc_206_31_13AA1D80 (CInt(6), var_98, CVar(var_A0 & "' AND TDSCHAL1.CHALDATE BETWEEN "), var_1C4)
  loc_13A9A16: Proc_183_7_EB17D4(var_E0, CVar(var_98), -1)
  loc_13A9A1E: var_100 = var_1C8 & var_E0 
  loc_13A9A36: Set var_9C = Me.TXT
  loc_13A9A3C: Call 0.Method_Proc_206_31_13AA1D80 (CInt(7), var_114, var_100 & " AND ")
  loc_13A9A4B: Proc_183_7_EB17D4(var_134, CVar(var_114))
  loc_13A9A5C: var_154 = var_8A & var_134 & " AND TDSCHAL1.ACCODE='" 
  loc_13A9A6E: Set var_158 = Me.TXT
  loc_13A9A74: Call 0.Method_Proc_206_31_13AA1D80 (CInt(2), var_15C, var_160)
  loc_13A9A7C: var_154 = var_15C.Tag
  loc_13A9A90: var_1A0 = var_98 & CVar(var_160) & "' AND (TDSCHAL1.CertiNo='' OR TDSCHAL1.CertiNo IS NULL) ORDER BY TDSCHAL1.CHALDATE,TDSCHAL1.CHALTYPE,TDSCHAL1.CHALNO" 
  loc_13A9A9E: unk_45DF5A.Execute CStr(var_1A0), , 
  loc_13A9AA9: Set var_88 = var_1C8
  loc_13A9ADD: ' Referenced from: 13AA0F1
  loc_13A9AEC: If Not(var_88.EOF) Then
  loc_13A9AF1:   var_8E = 0
  loc_13A9B19:   For var_1CE = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8C = var_1CE 'Integer
  loc_13A9B47:     var_A0 = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("DocID")), 1)
  loc_13A9B4E:     var_C0 = CVar(CLng(var_8C)) 'Long
  loc_13A9B9F:     Proc_183_3_E7DD58(var_100, CVar(var_88.Fields.Item("VSno")), (CVar(CLng(9)) = CStr(Me.FGrid.TextMatrix))))
  loc_13A9BBC:     Set var_15C = Me.FGrid
  loc_13A9BFE:     If CBool(CVar(CLng(var_8C)) And (CVar(CLng(&HA)) = CVar(CStr(var_15C.TextMatrix))))) Then
  loc_13A9C03:       var_8E = &HFF
  loc_13A9C06:     End If
  loc_13A9C09:   Next var_1CE 'Integer
  loc_13A9C14:   If (var_8E = 0) Then
  loc_13A9C17:     var_B0 = vbNullString
  loc_13A9C21:     Set var_94 = Me.FGrid
  loc_13A9C36:     Set var_244 = Me.FGrid
  loc_13A9C3D:     var_B0 = CVar(CLng(var_8A)) 'Long
  loc_13A9C45:     var_190 = CVar(CLng(&HA)) 'Long
  loc_13A9C53:     LateIdCallSt
  loc_13A9C94:     var_E0 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("ChalType")), CVar(CLng(1)), CVar(CLng(var_8A)), var_244, vbNullString)) 'String
  loc_13A9C9B:     LateIdCallSt
  loc_13A9CE4:     Proc_183_3_E7DD58(var_E0, CVar(var_88.Fields.Item("ChalNo")), CVar(CLng(2)), CVar(CLng(var_8A)), var_244)
  loc_13A9CED:     var_F0 = CVar(CStr(var_E0)) 'String
  loc_13A9CF4:     LateIdCallSt
  loc_13A9D0C:     var_C0 = CVar(CLng(var_8A)) 'Long
  loc_13A9D14:     var_1B4 = CVar(CLng(3)) 'Long
  loc_13A9D44:     var_E0 = CVar(CStr(var_88.Fields.Item("ChalDate").Value)) 'String
  loc_13A9D4B:     LateIdCallSt
  loc_13A9D81:     var_190 = CVar(CLng(var_8A)) 'Long
  loc_13A9D89:     var_1E0 = CVar(CLng(4)) 'Long
  loc_13A9DB6:     var_100 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amt")), "0.00"))) 'String
  loc_13A9DBD:     LateIdCallSt
  loc_13A9DF3:     var_190 = CVar(CLng(var_8A)) 'Long
  loc_13A9DFB:     var_1E0 = CVar(CLng(5)) 'Long
  loc_13A9E28:     var_100 = CVar(CStr(Format(CVar(var_88.Fields.Item("TDS")), "0.0000"))) 'String
  loc_13A9E2F:     LateIdCallSt
  loc_13A9E65:     var_190 = CVar(CLng(var_8A)) 'Long
  loc_13A9E6D:     var_1E0 = CVar(CLng(6)) 'Long
  loc_13A9E9A:     var_100 = CVar(CStr(Format(CVar(var_88.Fields.Item("TDSAmt")), "0.00"))) 'String
  loc_13A9EA1:     LateIdCallSt
  loc_13A9EBB:     var_C0 = CVar(CLng(var_8A)) 'Long
  loc_13A9EC3:     var_1B4 = CVar(CLng(7)) 'Long
  loc_13A9EF3:     var_E0 = CVar(CStr(var_88.Fields.Item("BankCode").Value)) 'String
  loc_13A9EFA:     LateIdCallSt
  loc_13A9F14:     var_C0 = CVar(CLng(var_8A)) 'Long
  loc_13A9F1C:     var_1B4 = CVar(CLng(8)) 'Long
  loc_13A9F4C:     var_E0 = CVar(CStr(var_88.Fields.Item("BANBNAME").Value)) 'String
  loc_13A9F53:     LateIdCallSt
  loc_13A9FA2:     var_E0 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("DocID")), CVar(CLng(9)), CVar(CLng(var_8A)), var_244, var_E0, CVar(CLng(9)), CVar(CLng(var_8A)))) 'String
  loc_13A9FA9:     LateIdCallSt
  loc_13A9FC7:     var_1B4 = CVar(CLng(&HA)) 'Long
  loc_13A9FE3:     var_98 = var_88.Fields.Item("VSno")
  loc_13A9FF2:     Proc_183_3_E7DD58(var_E0, CVar(var_98), var_1B4, CVar(CLng(var_8A)), var_244, var_E0)
  loc_13AA002:     LateIdCallSt
  loc_13AA02A:     Set var_94 = Me.TXT
  loc_13AA030:     Call 0.Method_Proc_206_31_13AA1D80 (CInt(3), var_98, var_A0, Nothing, CVar(CStr(var_E0)), Nothing)
  loc_13AA038:     var_E0 = var_98.Text
  loc_13AA045:     var_24C = Val(var_A0)
  loc_13AA087:     var_C0 = CVar(var_24C) 'Double
  loc_13AA08E:     var_E0 = (var_C0 + var_88.Fields.Item("TDSAmt").Value)
  loc_13AA0AC:     Set var_158 = Me.TXT
  loc_13AA0B2:     Call 0.Method_Proc_206_31_13AA1D80 (CInt(3), var_15C, CStr(Format(var_E0, "0.00")), 1, 1)
  loc_13AA0BA:     var_15C.Text = var_24C
  loc_13AA0E6:     var_8A = (var_8A + 1)
  loc_13AA0E9:   End If
  loc_13AA0EC:   var_88.MoveNext
  loc_13AA0F1:   GoTo loc_13A9ADD
  loc_13AA0F4: End If
  loc_13AA0FA: If (var_8A = 1) Then
  loc_13AA110:   Me.FGrid.Rows = 2
  loc_13AA12D:   var_E0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_13AA135:   Set var_98 = Me.FGrid
  loc_13AA164:   Me.FGrid.FixedRows = 1
  loc_13AA16F: Else
  loc_13AA182:   Me.FGrid.FixedRows = 1
  loc_13AA18A: End If
  loc_13AA198: Me.FGrid.Redraw = True
  loc_13AA1A0: Call Proc_206_29_E54B6C(FGrid.DispID_10000, var_E0, var_8A, var_1B4)
  loc_13AA1AA: Set var_88 = Nothing
  loc_13AA1AD: Exit Sub
  loc_13AA1AE: ' Referenced from: 13A98E4
  loc_13AA1B4: Call 0.Method_arg_50 (var_A0, var_C0)
  loc_13AA1C9: Proc_183_57_104B0BC(var_A0, "FillDetail")
  loc_13AA1D5: Exit Sub
End Sub

Public Sub Proc_206_32_F659F0
  'Data Table: 45DF50
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_45DF5A As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  loc_F658E8: Set var_9C = Me.TopCtrl1
  loc_F658EE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_F658F6: var_B0 = CStr()
  loc_F65907: If (var_B0 = "Add") Then
  loc_F65937:   Set var_9C = Me.TXT
  loc_F6593D:   Call 0.Method_Proc_206_32_F659F00 (CInt(0), var_B4, var_B0, "Select Count(*) From TDSCERTI Where CERTINO='", var_AC, -1)
  loc_F6595E:   unk_45DF5A.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_F6596E:    = var_D4.Item()
  loc_F65976:    = var_E8.Value
  loc_F659A3:   If (var_B4.Text.Fields > 0) Then
  loc_F659AC:     Call 0.Method_arg_50 (var_B0)
  loc_F659CD:     MsgBox("Duplicate Certificate No.", &H40, CVar(var_B0), var_118, var_128)
  loc_F659E2:     Proc_206_32_F659F0 = &HFF
  loc_F659E8:   End If
  loc_F659E8: End If
  loc_F659E8: Proc_206_32_F659F0 = 
  loc_F659EE: Result  End Sub 'Currency
End Sub
