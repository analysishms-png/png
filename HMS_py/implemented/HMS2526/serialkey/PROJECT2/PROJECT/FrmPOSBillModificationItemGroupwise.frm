VERSION 5.00
Begin VB.Form FrmPOSBillModificationItemGroupwise
  Caption = "POS Bill Modification (Item Group Wise)"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4680
  ClientHeight = 3195
  LockControls = -1  'True
  Begin CommandButton Command1
    Caption = "Serialize Bill"
    Left = 11880
    Top = 3330
    Width = 1125
    Height = 780
    Visible = 0   'False
    TabIndex = 19
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton CmdExit
    Caption = "E&xit"
    Left = 3915
    Top = 8280
    Width = 1545
    Height = 495
    TabIndex = 17
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton CmdDelete
    Caption = "&Delete"
    Left = 2250
    Top = 8280
    Width = 1545
    Height = 495
    TabIndex = 16
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox TxtSearch
    BackColor = &HE0E0E0&
    Left = 8415
    Top = 2250
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    HideSelection = 0   'False
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdFill
    Caption = "&Fill"
    Left = 6075
    Top = 915
    Width = 1125
    Height = 780
    TabIndex = 4
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CheckBox Check1
    Caption = "All"
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 825
    Top = 1995
    Width = 915
    Height = 195
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
    Appearance = 0 'Flat
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 15135
    Height = 375
    Visible = 0   'False
    TabIndex = 10
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    Left = 2610
    Top = 1425
    Width = 3345
    Height = 255
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 35
    BeginProperty Font
      Name = "Tahoma"
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
    Left = 2610
    Top = 1155
    Width = 3345
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 35
    BeginProperty Font
      Name = "Tahoma"
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
    Left = 2610
    Top = 885
    Width = 1635
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "Tahoma"
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
    Left = 2610
    Top = 615
    Width = 1635
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid GridSel
    Left = 735
    Top = 1920
    Width = 6500
    Height = 6000
    TabIndex = 5
  End
  Begin DataGrid DGRestType
    Left = 8310
    Top = 6585
    Width = 4230
    Height = 2325
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 12
  End
  Begin MSFlexGrid FGPoint
    Left = 8460
    Top = 2505
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 13
  End
  Begin DataGrid DGPayType
    Left = 7995
    Top = 6225
    Width = 4995
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin Label Label1
    Left = 780
    Top = 7920
    Width = 6360
    Height = 270
    TabIndex = 18
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Mode Of Payment"
    Index = 3
    ForeColor = &H0&
    Left = 975
    Top = 1440
    Width = 1515
    Height = 240
    TabIndex = 9
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Outlet Name"
    Index = 2
    ForeColor = &H0&
    Left = 975
    Top = 1155
    Width = 1050
    Height = 240
    TabIndex = 8
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "From Date"
    Index = 0
    ForeColor = &H0&
    Left = 975
    Top = 615
    Width = 900
    Height = 240
    TabIndex = 7
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "To Date"
    Index = 1
    ForeColor = &H0&
    Left = 975
    Top = 870
    Width = 675
    Height = 240
    TabIndex = 6
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FrmPOSBillModificationItemGroupwise"

Private global_52 As Integer
Private global_84 As Long

Private Sub Form_Load() 'F6E498
  'Data Table: 479040
  Dim var_8C As String
  Dim var_94 As String
  Dim unk_479052 As Connection15
  Dim var_B8 As CommandButton
  loc_F6E364: On Error Goto loc_F6E48F
  loc_F6E390: var_94 = "SELECT Code,Name,RestType,DiscApp FROM Depart Where Code<>'" & MemVar_1F95078 & "RS' And (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name"
  loc_F6E399: unk_479052.Execute var_94, var_B4, -1
  loc_F6E3CC: CVarUnk
  loc_F6E3D1: VerifyVarObj
  loc_F6E3DD: LateIdStAd
  loc_F6E406: var_8C = "SELECT Code,Name,PayType FROM RevMast Where PayType In('Cash','Member','Complementary') And (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND FieldType='P' ORDER BY Name"
  loc_F6E40F: unk_479052.Execute var_8C, var_B4, -1
  loc_F6E43E: CVarUnk
  loc_F6E443: VerifyVarObj
  loc_F6E449: Set var_B8 = Me.DGPayType
  loc_F6E44F: LateIdStAd
  loc_F6E463: Set var_B8 = Me.CmdDelete
  loc_F6E469: var_B8.Enabled = False
  loc_F6E471: Call Proc_218_22_117CE40(var_B8, Me.DGRestType, var_B8)
  loc_F6E47D: Call 0.Method_arg_7C (CDbl(0), var_B8)
  loc_F6E489: Call 0.Method_arg_74 (CDbl(0), var_B8)
  loc_F6E48E: Exit Sub
  loc_F6E48F: ' Referenced from: F6E364
  loc_F6E48F: Proc_6_60_E63754(var_B8)
  loc_F6E494: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E61148
  'Data Table: 479040
  loc_E61107: Set global_64 = Nothing
  loc_E61119: Set global_76 = Nothing
  loc_E6112B: Set global_68 = Nothing
  loc_E6113D: Set global_72 = Nothing
  loc_E61144: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27900
  'Data Table: 479040
  loc_E278D8: On Error Goto loc_E278F7
  loc_E278EF: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E278F7: ' Referenced from: E278D8
  loc_E278F7: Proc_6_60_E63754(Shift)
  loc_E278FC: Exit Sub
End Sub

Private Sub CmdDelete_Click() '1140C4C
  'Data Table: 479040
  Dim var_8C As Variant
  Dim var_90 As TextBox
  Dim unk_479052 As Connection15
  Dim var_CC As Variant
  Dim var_E0 As Field20
  Dim var_86 As Integer
  Dim var_C4 As Variant
  Dim var_120 As Variant
  Dim var_180 As Variant
  Dim var_94 As String
  loc_11408FC: On Error Goto loc_1140C2F
  loc_114090B: Me.CmdDelete.Enabled = False
  loc_1140920: Me.Label1.Caption = "Deleting..."
  loc_1140932: Me.Label1.Refresh
  loc_114096A: Set var_8C = Me.Txt
  loc_1140970: Call 0.Method_CmdDelete_Click0 (CInt(2), var_90, var_94, "SELECT SHORTNAME FROM DEPART WHERE CODE='", var_C4, -1)
  loc_114099F: unk_479052.Execute var_CC & var_94 & "'And Logsite_Code='" & MemVar_1F95078 & "'", 0, var_E0
  loc_11409A7: var_F0 = var_90.Tag.Fields
  loc_11409AF:  = var_CC.Item("B")
  loc_11409B7:  = var_E0.Value
  loc_1140A05: unk_479052.BeginTrans var_FC
  loc_1140A20: unk_479052.Execute "Delete from TempPosDel", var_C4, -1
  loc_1140A54: Call Proc_218_27_11A9F84(global_60, CByte(Me.Check1.Value), var_C4)
  loc_1140A82: Call 0.Method_CmdDelete_Click0 (CInt(0), var_90, "Insert into TempPosDel(OldDocId,OldVno) Select DocId,Vno from Sale1 Where VDate>= ", var_1C0)
  loc_1140A91: Proc_6_7_F26918(var_F0, CVar(var_90), -1)
  loc_1140AA2: var_120 = var_E0 & var_F0 & " And RestCode='" 
  loc_1140ABA: Call 0.Method_CmdDelete_Click0 (CInt(2), var_CC, var_94)
  loc_1140AC2: var_120 = var_CC.Tag
  loc_1140AF7: unk_479052.Execute CStr(Me.Txt & CVar(var_94) & "' And Logsite_Code='" & CVar(MemVar_1F95078) & "' Order by Vno,VDate"), &HFF, 
  loc_1140B21: Call Proc_218_26_107BEF8()
  loc_1140B26: Call Proc_218_25_130DA50()
  loc_1140B5C: Set var_8C = Me.Txt
  loc_1140B62: Call 0.Method_CmdDelete_Click0 (CInt(1), var_90, CVar("UPDATE VOUCHER_PREFIX SET START_SRL_NO=" & CStr(global_84) & " WHERE "))
  loc_1140B71: Proc_6_7_F26918(var_F0, CVar(var_90), var_1C0)
  loc_1140B79: var_120 = -1 & var_F0 
  loc_1140BA2: var_180 = var_120 & " BETWEEN DATE_FROM AND DATE_TO AND V_TYPE='" & CVar(Proc_6_38_E69628(var_F0)) & "' And Logsite_Code='" & CVar(MemVar_1F95078) 
  loc_1140BB9: unk_479052.Execute CStr(var_180 & "'"), Me.Txt, 
  loc_1140BEB: unk_479052.CommitTrans
  loc_1140BF2: var_86 = 0
  loc_1140C00: Set global_76 = Nothing
  loc_1140C14: Me.Label1.Caption = "Deletion Completed."
  loc_1140C26: Me.Label1.Refresh
  loc_1140C2E: Exit Sub
  loc_1140C2F: ' Referenced from: 11408FC
  loc_1140C35: If (var_86 = &HFF) Then
  loc_1140C3E:   unk_479052.RollbackTrans
  loc_1140C43: End If
  loc_1140C43: Proc_6_60_E63754(var_86)
  loc_1140C48: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12E0878
  'Data Table: 479040
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_88 As DataGrid
  loc_12E01C4: On Error Goto loc_12E0833
  loc_12E01D1: Set var_88 = Me.Txt
  loc_12E01D7: Call 0.Method_Txt_GotFocus0 (Index)
  loc_12E01E5: Proc_6_74_E23240(var_8C)
  loc_12E01F1: Call Proc_218_28_EBA4C8(var_8C)
  loc_12E01F9: var_92 = Index
  loc_12E0204: If (var_92 = CInt(0)) Then
  loc_12E0214:   Set var_88 = Me.Txt
  loc_12E021A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E0235:   Set var_90 = Me.Txt
  loc_12E023B:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E0243:   var_9C.SelLength = Len(var_8C.Text)
  loc_12E0263:   Set var_88 = Me.Txt
  loc_12E0269:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E0283:   Set var_90 = Me.Txt
  loc_12E0289:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E0291:   var_9C.Tag = var_8C.Text
  loc_12E02A7: Else
  loc_12E02AF:   If (var_92 = CInt(1)) Then
  loc_12E02BF:     Set var_88 = Me.Txt
  loc_12E02C5:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E02E0:     Set var_90 = Me.Txt
  loc_12E02E6:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E02EE:     var_9C.SelLength = Len(var_8C.Text)
  loc_12E030E:     Set var_88 = Me.Txt
  loc_12E0314:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E031C:     var_98 = var_8C.Text
  loc_12E032E:     Set var_90 = Me.Txt
  loc_12E0334:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E033C:     var_9C.Tag = var_98
  loc_12E0352:   Else
  loc_12E035A:     If (var_92 = CInt(2)) Then
  loc_12E036B:       Set var_88 = Me.Txt
  loc_12E0371:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_12E0390:       Me.DGRestType.Left = CVar(var_8C.Left)
  loc_12E03AC:       Set var_90 = Me.Txt
  loc_12E03B2:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_9C)
  loc_12E03CD:       Set var_88 = Me.Txt
  loc_12E03D3:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_12E03EB:       var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_12E03FA:       Me.DGRestType.Top = CVar(var_8C.Left)
  loc_12E041B:       Me.Filter = 0
  loc_12E042C:       Me.Filter = "RestType<>'Kitchen'"
  loc_12E0448:       If (Me.RecordCount > 0) Then
  loc_12E0456:         Set var_8C = Me.FGPoint
  loc_12E046E:         Proc_6_137_1192FDC(Me.DGRestType, global_68, Index)
  loc_12E047C:       End If
  loc_12E04CA:       Set var_88 = Me.Txt
  loc_12E04D0:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_12E04D8:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12E04F0:       If (var_8C Or (var_98 = vbNullString)) Then
  loc_12E04F3:         Exit Sub
  loc_12E04F4:       End If
  loc_12E0501:       Set var_88 = Me.Txt
  loc_12E0507:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E050F:       var_98 = var_8C.Text
  loc_12E0521:       var_B0 = "Name"
  loc_12E0538:       var_9C = Me.Fields.Item(var_B0)
  loc_12E055C:       If CBool(CVar(var_98) <> var_9C.Value) Then
  loc_12E0565:         Me.MoveFirst
  loc_12E0588:         Set var_88 = Me.Txt
  loc_12E058E:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_12E0596:         0 = var_8C.Text
  loc_12E05AF:         Me.Find 1 & var_98 & "'", var_B0, var_92
  loc_12E05C4:       End If
  loc_12E05D7:       Me.DGRestType.Tag = CVar(CStr(Index))
  loc_12E05E5:     Else
  loc_12E05ED:       If (var_92 = CInt(3)) Then
  loc_12E05FE:         Set var_88 = Me.Txt
  loc_12E0604:         Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_12E0623:         Me.DGPayType.Left = CVar(var_8C.Left)
  loc_12E063F:         Set var_90 = Me.Txt
  loc_12E0645:         Call 0.Method_Txt_GotFocus0 (CInt(3), var_9C)
  loc_12E0660:         Set var_88 = Me.Txt
  loc_12E0666:         Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_12E067E:         var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_12E068D:         Me.DGPayType.Top = CVar(var_8C.Left)
  loc_12E06B6:         If (Me.RecordCount > 0) Then
  loc_12E06C4:           Set var_8C = Me.FGPoint
  loc_12E06DC:           Proc_6_137_1192FDC(Me.DGPayType, global_72)
  loc_12E06EA:         End If
  loc_12E0738:         Set var_88 = Me.Txt
  loc_12E073E:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_12E0746:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12E075E:         If (Index Or (var_98 = vbNullString)) Then
  loc_12E0761:           Exit Sub
  loc_12E0762:         End If
  loc_12E076F:         Set var_88 = Me.Txt
  loc_12E0775:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E077D:         var_98 = var_8C.Text
  loc_12E078F:         var_B0 = "Name"
  loc_12E07CA:         If CBool(CVar(var_98) <> Me.Fields.Item(var_B0).Value) Then
  loc_12E07D3:           Me.MoveFirst
  loc_12E07F6:           Set var_88 = Me.Txt
  loc_12E07FC:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_12E0804:           0 = var_8C.Text
  loc_12E081D:           Me.Find 1 & var_98 & "'", var_B0, var_8C
  loc_12E0832:         End If
  loc_12E0832:       End If
  loc_12E0832:     End If
  loc_12E0832:   End If
  loc_12E0832: End If
  loc_12E0832: Exit Sub
  loc_12E0833: ' Referenced from: 12E01C4
  loc_12E083B: Set var_88 = Err()
  loc_12E0841: Call 0.Method_arg_2C (var_98)
  loc_12E0862: MsgBox(CVar(var_98), &H40, "Information", var_FC, var_124)
  loc_12E0875: Exit Sub
  loc_12E0876: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10CE268
  'Data Table: 479040
  Dim var_88 As Integer
  Dim Me As Recordset15
  loc_10CDF7E: If (CLng(Shift) = &H1B) Then
  loc_10CDF81:   Call Proc_218_28_EBA4C8()
  loc_10CDF86:   Exit Sub
  loc_10CDF87: End If
  loc_10CDF8A: var_88 = KeyCode
  loc_10CDF95: If (var_88 = CInt(2)) Then
  loc_10CDFB5:   Set var_9C = Me.FGPoint
  loc_10CDFC0:   Set var_98 = Nothing
  loc_10CDFEE:   Proc_6_69_134A630(Me.DGRestType, Me.Txt, KeyCode, global_68, Shift, 0)
  loc_10CE05D:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10CE083:     Proc_6_138_106E830(Me.DGRestType, global_68, KeyCode, Me.FGPoint, 1)
  loc_10CE091:   End If
  loc_10CE094: Else
  loc_10CE09C:   If (var_88 = CInt(3)) Then
  loc_10CE0BC:     Set var_9C = Me.FGPoint
  loc_10CE0C7:     Set var_98 = Nothing
  loc_10CE0F9:     Proc_6_69_134A630(Me.DGPayType, Me.Txt, CInt(3), global_72, Shift, 0, 1)
  loc_10CE168:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10CE16F:       Set var_98 = Me.DGPayType
  loc_10CE18E:       Proc_6_138_106E830(var_98, global_72, KeyCode, Me.FGPoint, var_98, var_9C)
  loc_10CE19C:     End If
  loc_10CE19C:   End If
  loc_10CE19C: End If
  loc_10CE1D7: If ((CBool(Me.DGRestType.Visible) = 0) And (CBool(Me.DGPayType.Visible) = 0)) Then
  loc_10CE201:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And ((KeyCode = CInt(0)) Or (KeyCode = CInt(1)))) Then
  loc_10CE20A:     Call Txt_Validate(KeyCode)
  loc_10CE215:     If (var_86 = &HFF) Then
  loc_10CE218:       Exit Sub
  loc_10CE219:     End If
  loc_10CE21F:     Proc_6_75_E5335C(Shift, arg_14, var_86, 0)
  loc_10CE227:   Else
  loc_10CE23C:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10CE245:       Proc_6_75_E5335C(Shift, arg_14, var_98)
  loc_10CE24D:     Else
  loc_10CE257:       If (CLng(Shift) = &H26) Then
  loc_10CE260:         Proc_6_76_E533C8(Shift, arg_14, var_9C)
  loc_10CE265:       End If
  loc_10CE265:     End If
  loc_10CE265:   End If
  loc_10CE265: End If
  loc_10CE265: Exit Sub
  loc_10CE266: 0 = var_88
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F8F51C
  'Data Table: 479040
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_94 As Variant
  loc_F8F3BF: Proc_6_58_E06050(arg_10)
  loc_F8F3CA: Proc_6_133_E7FB08(var_94)
  loc_F8F3D3: arg_10 = CInt(var_94)
  loc_F8F3DC: var_96 = KeyAscii
  loc_F8F3E7: If (var_96 = CInt(2)) Then
  loc_F8F406:   If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_F8F433:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_F8F465:     Proc_6_138_106E830(Me.DGRestType, global_68, KeyAscii, Me.FGPoint)
  loc_F8F473:   End If
  loc_F8F476: Else
  loc_F8F47E:   If (var_96 = CInt(3)) Then
  loc_F8F49D:     If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_F8F4D5:       Proc_6_68_12A2818(Me.DGPayType, Me.Txt, KeyAscii, global_72, arg_10)
  loc_F8F50B:       Proc_6_138_106E830(Me.DGPayType, global_72, KeyAscii, Me.FGPoint, "Name")
  loc_F8F519:     End If
  loc_F8F519:   End If
  loc_F8F519: End If
  loc_F8F519: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4B85C
  'Data Table: 479040
  loc_E4B83A: Set var_88 = Me.Txt
  loc_E4B840: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4B84E: Proc_6_73_E23294(var_8C)
  loc_E4B85A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '11648E0
  'Data Table: 479040
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_98 As TextBox
  loc_1164530: On Error Goto loc_1164899
  loc_1164536: var_86 = Cancel
  loc_1164541: If (var_86 = CInt(0)) Then
  loc_116454E:   Set var_8C = Me.Txt
  loc_1164554:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1164574:   Set var_98 = Me.Txt
  loc_116457A:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1164582:   var_9C.Text = Proc_6_33_15125B8(var_90)
  loc_1164598: Else
  loc_11645A0:   If (var_86 = CInt(1)) Then
  loc_11645AD:     Set var_8C = Me.Txt
  loc_11645B3:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11645D3:     Set var_98 = Me.Txt
  loc_11645D9:     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_11645E1:     var_9C.Text = Proc_6_33_15125B8(var_90)
  loc_11645F7:   Else
  loc_11645FF:     If (var_86 = CInt(2)) Then
  loc_116460F:       Set var_8C = Me.Txt
  loc_1164615:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1164634:       If (var_90.Text <> vbNullString) Then
  loc_1164672:         Set var_94 = Me.Txt
  loc_1164678:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1164680:         var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11646B3:         var_90 = Me.Fields.Item("Code")
  loc_11646D1:         Set var_94 = Me.Txt
  loc_11646D7:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_11646DF:         var_98.Tag = CStr(var_90.Value)
  loc_11646F8:       Else
  loc_1164705:         Set var_8C = Me.Txt
  loc_116470B:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1164713:         var_90.Text = vbNullString
  loc_116472C:         Set var_8C = Me.Txt
  loc_1164732:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116473A:         var_90.Tag = vbNullString
  loc_1164746:       End If
  loc_1164749:     Else
  loc_1164751:       If (var_86 = CInt(3)) Then
  loc_1164761:         Set var_8C = Me.Txt
  loc_1164767:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1164786:         If (var_90.Text <> vbNullString) Then
  loc_11647C4:           Set var_94 = Me.Txt
  loc_11647CA:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_11647D2:           var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1164805:           var_90 = Me.Fields.Item("Code")
  loc_1164816:           var_A0 = CStr(var_90.Value)
  loc_1164823:           Set var_94 = Me.Txt
  loc_1164829:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1164831:           var_98.Tag = var_A0
  loc_116484A:         Else
  loc_1164857:           Set var_8C = Me.Txt
  loc_116485D:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1164865:           var_90.Text = vbNullString
  loc_116487E:           Set var_8C = Me.Txt
  loc_1164884:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116488C:           var_90.Tag = vbNullString
  loc_1164898:         End If
  loc_1164898:       End If
  loc_1164898:     End If
  loc_1164898:   End If
  loc_1164898: End If
  loc_1164898: Exit Sub
  loc_1164899: ' Referenced from: 1164530
  loc_11648A1: Set var_8C = Err()
  loc_11648A7: Call 0.Method_arg_2C (var_A0)
  loc_11648C8: MsgBox(CVar(var_A0), &H40, "Information", var_F0, var_110)
  loc_11648DB: Exit Sub
  loc_11648DC: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_9 'F46394
  'Data Table: 479040
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4628B: Me.DGRestType.Visible = False
  loc_F462AA: If (Me.RecordCount > 0) Then
  loc_F462E9:   Set var_B4 = Me.Txt
  loc_F462EF:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2), var_B8)
  loc_F462F7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4632A:   var_B0 = Me.Fields.Item("Code")
  loc_F46349:   Set var_B4 = Me.Txt
  loc_F4634F:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2), var_B8)
  loc_F46357:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4636D: End If
  loc_F46378: Set var_A8 = Me.Txt
  loc_F4637E: Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2))
  loc_F46386: var_B0.SetFocus
  loc_F46392: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_1F 'E75D88
  'Data Table: 479040
  loc_E75D46: Proc_6_153_E91D24(Me.DGRestType, arg_14)
  loc_E75D5D: Set var_8C = Me.FGPoint
  loc_E75D79: Proc_6_138_106E830(Me.DGRestType, global_68, CInt(2))
  loc_E75D87: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_9 'F46654
  'Data Table: 479040
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4654B: Me.DGPayType.Visible = False
  loc_F4656A: If (Me.RecordCount > 0) Then
  loc_F465A9:   Set var_B4 = Me.Txt
  loc_F465AF:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_B8)
  loc_F465B7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F465EA:   var_B0 = Me.Fields.Item("Code")
  loc_F46609:   Set var_B4 = Me.Txt
  loc_F4660F:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_B8)
  loc_F46617:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4662D: End If
  loc_F46638: Set var_A8 = Me.Txt
  loc_F4663E: Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3))
  loc_F46646: var_B0.SetFocus
  loc_F46652: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'E75F44
  'Data Table: 479040
  loc_E75F02: Proc_6_153_E91D24(Me.DGPayType, arg_14)
  loc_E75F19: Set var_8C = Me.FGPoint
  loc_E75F35: Proc_6_138_106E830(Me.DGPayType, global_72, CInt(3))
  loc_E75F43: Exit Sub
End Sub

Private Sub CmdExit_Click() 'E1768C
  'Data Table: 479040
  loc_E17681: Me.Global.Unload Me
  loc_E17689: Exit Sub
End Sub

Private Sub Command1_Click() 'DFC348
  'Data Table: 479040
  Dim var_B01 As Double
  loc_DFC344: Exit Sub
  loc_DFC345: var_B01 = 
End Sub

Private Sub Check1_Click() 'F6AA9C
  'Data Table: 479040
  Dim var_9C As Variant
  loc_F6A97F: If (CLng(Me.Check1.Value) = 0) Then
  loc_F6A990:   Me.GridSel.Enabled = True
  loc_F6A9B7:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F6A9CD:     Me.GridSel.Row = 1
  loc_F6A9E8:     Me.GridSel.Col = 0
  loc_F6A9F0:   End If
  loc_F6A9F3: Else
  loc_F6AA02:   Me.GridSel.Enabled = False
  loc_F6AA29:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F6AA3F:     Me.GridSel.Row = 0
  loc_F6AA5A:     Me.GridSel.Col = 0
  loc_F6AA7B:     var_9C = CVar((CLng(Me.GridSel.Rows) - 1)) 'Long
  loc_F6AA8A:     Me.GridSel.RowSel = 0
  loc_F6AA99:   End If
  loc_F6AA99: End If
  loc_F6AA99: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E22F9C
  'Data Table: 479040
  loc_E22F82: If (KeyCode = &HD) Then
  loc_E22F93:   Proc_303_0_FBACC8("	")
  loc_E22F9B: End If
  loc_E22F9B: Exit Sub
End Sub

Private Sub CmdFill_Click() '11900F4
  'Data Table: 479040
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As Variant
  loc_118FD17: Set var_88 = Me.Txt
  loc_118FD1D: Call 0.Method_CmdFill_Click0 (CInt(0))
  loc_118FD46: If (Proc_6_27_EA61EC(var_8C, "From Date") = 0) Then
  loc_118FD49:   Exit Sub
  loc_118FD4A: End If
  loc_118FD58: Set var_88 = Me.Txt
  loc_118FD5E: Call 0.Method_CmdFill_Click0 (CInt(0), var_8C)
  loc_118FD82: Set var_90 = Me.Txt
  loc_118FD88: Call 0.Method_CmdFill_Click0 (CInt(0), var_98, var_9C)
  loc_118FD90: (CDate(var_8C.Text) > MemVar_1F950FC) = var_98.Text
  loc_118FDB1: If (var_8C Or (CDate(var_9C) < MemVar_1F950F4)) Then
  loc_118FDCD:   MsgBox("FromDate must be with in Financial Year", &H10, var_DC, var_FC, var_11C)
  loc_118FDE8:   Set var_88 = Me.Txt
  loc_118FDEE:   Call 0.Method_CmdFill_Click0 (CInt(0))
  loc_118FDF6:   var_8C.SetFocus
  loc_118FE02:   Exit Sub
  loc_118FE03: End If
  loc_118FE0E: Set var_88 = Me.Txt
  loc_118FE14: Call 0.Method_CmdFill_Click0 (CInt(1), var_8C)
  loc_118FE3D: If (Proc_6_27_EA61EC(var_8C, "To Date") = 0) Then
  loc_118FE40:   Exit Sub
  loc_118FE41: End If
  loc_118FE4F: Set var_88 = Me.Txt
  loc_118FE55: Call 0.Method_CmdFill_Click0 (CInt(1), var_8C)
  loc_118FE79: Set var_90 = Me.Txt
  loc_118FE7F: Call 0.Method_CmdFill_Click0 (CInt(1), var_98, var_9C)
  loc_118FE87: (CDate(var_8C.Text) > MemVar_1F950FC) = var_98.Text
  loc_118FEA8: If (var_8C Or (CDate(var_9C) < MemVar_1F950F4)) Then
  loc_118FEC4:   MsgBox("ToDate must be with in Financial Year", &H10, var_DC, var_FC, var_11C)
  loc_118FEDF:   Set var_88 = Me.Txt
  loc_118FEE5:   Call 0.Method_CmdFill_Click0 (CInt(0))
  loc_118FEED:   var_8C.SetFocus
  loc_118FEF9:   Exit Sub
  loc_118FEFA: End If
  loc_118FF08: Set var_90 = Me.Txt
  loc_118FF0E: Call 0.Method_CmdFill_Click0 (CInt(1), var_98)
  loc_118FF29: Set var_88 = Me.Txt
  loc_118FF2F: Call 0.Method_CmdFill_Click0 (CInt(0), var_8C)
  loc_118FF59: If (CDate(var_8C.Text) > CDate(var_98.Text)) Then
  loc_118FF75:   MsgBox("FromDate must be less than ToDate", &H10, var_DC, var_FC, var_11C)
  loc_118FF90:   Set var_88 = Me.Txt
  loc_118FF96:   Call 0.Method_CmdFill_Click0 (CInt(0), var_8C)
  loc_118FF9E:   var_8C.SetFocus
  loc_118FFAA:   Exit Sub
  loc_118FFAB: End If
  loc_118FFB6: Set var_88 = Me.Txt
  loc_118FFBC: Call 0.Method_CmdFill_Click0 (CInt(2), var_8C)
  loc_118FFE5: If (Proc_6_27_EA61EC(var_8C, "Outlet") = 0) Then
  loc_118FFE8:   Exit Sub
  loc_118FFE9: End If
  loc_118FFF4: Set var_88 = Me.Txt
  loc_118FFFA: Call 0.Method_CmdFill_Click0 (CInt(3), var_8C)
  loc_1190023: If (Proc_6_27_EA61EC(var_8C, "Payment Mode") = 0) Then
  loc_1190026:   Exit Sub
  loc_1190027: End If
  loc_1190033: Me.CmdFill.Enabled = False
  loc_1190048: Me.Label1.Caption = "Processing..."
  loc_119005A: Me.Label1.Refresh
  loc_1190062: Call Proc_218_22_117CE40(var_8C)
  loc_1190067: Call Proc_218_23_13A3994()
  loc_119007F: Me.GridSel.Row = 1
  loc_119009A: Me.GridSel.Col = 0
  loc_11900A6: Set var_88 = Me.GridSel
  loc_11900C4: Me.Label1.Caption = vbNullString
  loc_11900D6: Me.Label1.Refresh
  loc_11900EA: Me.CmdFill.Enabled = True
  loc_11900F2: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_A(Index As Integer) 'FD7FBC
  'Data Table: 479040
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim var_17C As Variant
  Dim var_19C As Long
  Dim var_1BC As Variant
  Dim var_86 As Integer
  loc_FD7E0A: If (Index = &HD) Then
  loc_FD7E1B:   Proc_303_0_FBACC8("	")
  loc_FD7E23: End If
  loc_FD7E42: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_FD7E45:   Exit Sub
  loc_FD7E46: End If
  loc_FD7E70: If ((CLng(Index) = &H20) And (CLng(Me.GridSel.Col) = 0)) Then
  loc_FD7E83:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_FD7E9D:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_FD7EB8:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FD7EBD:   var_D4 = 0
  loc_FD7EEF:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FD7EF4:   var_19C = 0
  loc_FD7F2F:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_FD7F37:   Set var_1D0 = Me.GridSel
  loc_FD7F3D:   LateIdCallSt
  loc_FD7F77:   var_86 = CInt((UBound(global_60, 1) + 1))
  loc_FD7F89:   ReDim Preserve global_60(0 To CLng(var_86))
  loc_FD7FB1:   global_60(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_FD7FB8: End If
  loc_FD7FB8: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E5D178
  'Data Table: 479040
  loc_E5D153: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5D156:   Exit Sub
  loc_E5D157: End If
  loc_E5D16E: global_52 = CInt(CLng(Me.GridSel.Row))
  loc_E5D177: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '1029730
  'Data Table: 479040
  Dim var_A0 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_160 As Variant
  Dim var_180 As Long
  Dim var_1A0 As Variant
  Dim var_86 As Integer
  loc_1029531: If ((CLng(Me.GridSel.Col) <> 0) Or (global_52 = 0)) Then
  loc_1029534:   Exit Sub
  loc_1029535: End If
  loc_1029591: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_1029594:   Exit Sub
  loc_1029595: End If
  loc_10295C4: For var_BA = global_52 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_BA 'Integer
  loc_10295DD:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_10295F8:   Me.GridSel.Col = 0
  loc_1029610:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_102962A:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1029636:   var_CC = CVar(CLng(var_88)) 'Long
  loc_102963B:   var_EC = 0
  loc_102965E:   var_160 = CVar(CLng(var_88)) 'Long
  loc_1029663:   var_180 = 0
  loc_102969E:   var_1A0 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_10296A6:   Set var_A0 = Me.GridSel
  loc_10296AC:   LateIdCallSt
  loc_10296DE:   var_86 = CInt((UBound(global_60, 1) + 1))
  loc_10296F0:   ReDim Preserve global_60(0 To CLng(var_86))
  loc_1029718:   global_60(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_1029722: Next var_BA 'Integer
  loc_102972C: global_52 = 0
  loc_102972F: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E65D80
  'Data Table: 479040
  loc_E65D50: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_E65D53:   Call DGRestType_UnknownEvent_9()
  loc_E65D58: End If
  loc_E65D74: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_E65D77:   Call DGPayType_UnknownEvent_9()
  loc_E65D7C: End If
  loc_E65D7C: Exit Sub
End Sub

Public Sub Proc_218_22_117CE40
  'Data Table: 479040
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_117CA72: Me.GridSel.Rows = 1
  loc_117CA86: Me.GridSel.Cols = 5
  loc_117CA8B: var_98 = 0
  loc_117CA97: var_BC = CVar(CLng(0)) 'Long
  loc_117CA9C: var_DC = "O"
  loc_117CAA5: LateIdCallSt
  loc_117CAB0: var_98 = CVar(CLng(0)) 'Long
  loc_117CAB5: var_BC = &H258
  loc_117CAC1: LateIdCallSt
  loc_117CAC9: var_98 = 0
  loc_117CAD5: var_BC = CVar(CLng(1)) 'Long
  loc_117CADA: var_DC = "Bill No"
  loc_117CAE3: LateIdCallSt
  loc_117CAEE: var_98 = CVar(CLng(1)) 'Long
  loc_117CAF9: var_BC = CVar(CInt(1)) 'Integer
  loc_117CB00: LateIdCallSt
  loc_117CB0B: var_98 = CVar(CLng(1)) 'Long
  loc_117CB16: var_BC = CVar(CInt(1)) 'Integer
  loc_117CB1D: LateIdCallSt
  loc_117CB28: var_98 = CVar(CLng(1)) 'Long
  loc_117CB2D: var_BC = &H5DC
  loc_117CB39: LateIdCallSt
  loc_117CB41: var_98 = 0
  loc_117CB4D: var_BC = CVar(CLng(2)) 'Long
  loc_117CB52: var_DC = "DocId"
  loc_117CB5B: LateIdCallSt
  loc_117CB66: var_98 = CVar(CLng(2)) 'Long
  loc_117CB71: var_BC = CVar(CInt(7)) 'Integer
  loc_117CB78: LateIdCallSt
  loc_117CB83: var_98 = CVar(CLng(2)) 'Long
  loc_117CB8E: var_BC = CVar(CInt(7)) 'Integer
  loc_117CB95: LateIdCallSt
  loc_117CBA0: var_98 = CVar(CLng(2)) 'Long
  loc_117CBA5: var_BC = 0
  loc_117CBB1: LateIdCallSt
  loc_117CBB9: var_98 = 0
  loc_117CBC5: var_BC = CVar(CLng(3)) 'Long
  loc_117CBCA: var_DC = "Bill Date"
  loc_117CBD3: LateIdCallSt
  loc_117CBDE: var_98 = CVar(CLng(3)) 'Long
  loc_117CBE9: var_BC = CVar(CInt(1)) 'Integer
  loc_117CBF0: LateIdCallSt
  loc_117CBFB: var_98 = CVar(CLng(3)) 'Long
  loc_117CC06: var_BC = CVar(CInt(1)) 'Integer
  loc_117CC0D: LateIdCallSt
  loc_117CC18: var_98 = CVar(CLng(3)) 'Long
  loc_117CC1D: var_BC = &H7D0
  loc_117CC29: LateIdCallSt
  loc_117CC31: var_98 = 0
  loc_117CC3D: var_BC = CVar(CLng(4)) 'Long
  loc_117CC42: var_DC = "Bill Amount"
  loc_117CC4B: LateIdCallSt
  loc_117CC56: var_98 = CVar(CLng(4)) 'Long
  loc_117CC61: var_BC = CVar(CInt(7)) 'Integer
  loc_117CC68: LateIdCallSt
  loc_117CC73: var_98 = CVar(CLng(4)) 'Long
  loc_117CC7E: var_BC = CVar(CInt(7)) 'Integer
  loc_117CC85: LateIdCallSt
  loc_117CC90: var_98 = CVar(CLng(4)) 'Long
  loc_117CC95: var_BC = &H7D0
  loc_117CCA1: LateIdCallSt
  loc_117CCA9: var_98 = vbNullString
  loc_117CCB3: Set var_AC = Me.GridSel
  loc_117CCD7: Me.GridSel.FixedRows = 1
  loc_117CCE1: Set var_88 = Nothing 
  loc_117CCF5: ReDim Preserve global_60(0 To 0)
  loc_117CD0C: global_60(0) = 0
  loc_117CD20: Me.GridSel.Height = CVar(CDbl(6000))
  loc_117CD3B: Me.GridSel.Width = CVar(CDbl(6500))
  loc_117CD43: var_98 = 0
  loc_117CD74: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H32))
  loc_117CD83: var_98 = 0
  loc_117CDB4: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &HA))
  loc_117CDE5: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&H1E))
  loc_117CE16: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&H1E))
  loc_117CE35: Me.Check1.Value = CInt(0)
  loc_117CE3D: Exit Sub
End Sub

Public Sub Proc_218_23_13A3994
  'Data Table: 479040
  Dim var_B8 As Variant
  Dim var_98 As Variant
  Dim var_C8 As Variant
  Dim var_D8 As Variant
  Dim var_E8 As Variant
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_140 As Variant
  Dim var_148 As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_1D0 As String
  Dim unk_479052 As Connection15
  Dim var_1F4 As Variant
  Dim var_1F8 As Variant
  Dim var_20C As Field20
  Dim var_A8 As Variant
  Dim var_110 As Variant
  Dim Me As Recordset15
  Dim var_EC As Variant
  Dim var_F0 As Variant
  Dim var_144 As Variant
  Dim var_258 As String
  Dim var_268 As TextBox
  Dim var_1F0 As Variant
  Dim var_21C As Variant
  Dim var_14C As String
  Dim var_88 As Recordset15
  loc_13A3110: Proc_6_7_F26918(var_A8, MemVar_1F950F4, "Select max(Vno) From Sale1 Where VDate>=", var_1F0, -1)
  loc_13A3118: var_C8 = var_1F4 & var_A8 
  loc_13A3130: Set var_EC = Me.Txt
  loc_13A3136: Call 0.Method_Proc_218_23_13A39940 (CInt(0), var_F0, var_C8 & " And vdate<", var_1F8)
  loc_13A3145: Proc_6_7_F26918(var_110, CVar(var_F0), 0)
  loc_13A3156: var_140 = var_20C & var_110 & " And RestCode='" 
  loc_13A3168: Set var_144 = Me.Txt
  loc_13A316E: Call 0.Method_Proc_218_23_13A39940 (CInt(2), var_148, var_14C)
  loc_13A3176: var_140 = var_148.Tag
  loc_13A318A: var_18C = var_21C & CVar(var_14C) & "' And Logsite_Code='" 
  loc_13A3194: var_1AC = var_18C & CVar(MemVar_1F95078) 
  loc_13A319D: var_1CC = var_1AC & "'" 
  loc_13A31AB: unk_479052.Execute CStr(var_1CC), , 
  loc_13A31B3:  = var_1F4.Fields
  loc_13A31BB:  = var_1F8.Item()
  loc_13A31C3:  = var_20C.Value
  loc_13A31CE: Proc_6_39_E7D3A0(var_22C)
  loc_13A322E: Set var_EC = Me.Txt
  loc_13A3234: Call 0.Method_Proc_218_23_13A39940 (CInt(0), var_F0, "Select Vno,Vdate,PayType From PayCharge Where PayType not in ('Cash','Member','Complementary') and VDate>= ", var_18C)
  loc_13A3243: Proc_6_7_F26918(var_C8, CVar(var_F0), -1)
  loc_13A3254: var_100 = var_1F4 & var_C8 & " And RestCode='" 
  loc_13A3266: Set var_144 = Me.Txt
  loc_13A326C: Call 0.Method_Proc_218_23_13A39940 (CInt(2), var_148, var_14C)
  loc_13A3274: var_100 = var_148.Tag
  loc_13A329B: var_16C = CLng(var_22C) & CVar(var_14C) & "' And Logsite_Code='" & CVar(MemVar_1F95078) & "' and Vtype not in ('IPOS','PPOS') Order by Vno,VDate" 
  loc_13A32A9: unk_479052.Execute CStr(var_16C), var_21C, 
  loc_13A32BA: Set global_76 = var_1F4
  loc_13A32FC: If (Me.RecordCount > 0) Then
  loc_13A3305:   Me.MoveFirst
  loc_13A330A:   ' Referenced from: 13A3453
  loc_13A331C:   If Not(Me.EOF) Then
  loc_13A333C:     var_F0 = Me.Fields.Item("VNo")
  loc_13A3366:     var_148 = Me.Fields.Item("PayType")
  loc_13A3390:     var_1F8 = Me.Fields.Item("VDate")
  loc_13A3398:     var_140 = var_1F8.Value
  loc_13A33B3:     var_C8 = "Bill No. " & var_F0.Value 
  loc_13A33E5:     var_18C = var_C8 & " has been Settled In Mode " & var_148.Value & " On Date " & var_140 & vbCrLf & "So Bill Deletion Process not Possible." 
  loc_13A33E9:     MsgBox(var_18C, &H40, var_1AC, var_1CC, var_1F0)
  loc_13A3425:     Set global_76 = Nothing
  loc_13A343F:     Me.GridSel.Rows = 2
  loc_13A3447:     Exit Sub
  loc_13A344E:     Me.MoveNext
  loc_13A3453:     GoTo loc_13A330A
  loc_13A3456:   End If
  loc_13A3456: End If
  loc_13A3474: Set var_EC = Me.Txt
  loc_13A347A: Call 0.Method_Proc_218_23_13A39940 (CInt(3), var_F0, var_14C, "Select P.DocId From (PayCharge P Inner Join Sale1 S on P.DocId=S.DocId) Where P.PayCode='")
  loc_13A3482: var_22C = var_F0.Tag
  loc_13A348B: var_1D0 = -1 & var_14C
  loc_13A3492: var_258 = CStr(var_C8 & " has been Settled In Mode " & var_148.Value & " On Date " & var_140 & vbCrLf) & "' And P.PayType Not In('PPOS','IPOS') And P.PayCode Not In('"
  loc_13A34BC: Set var_144 = Me.Txt
  loc_13A34C2: Call 0.Method_Proc_218_23_13A39940 (CInt(0), var_148)
  loc_13A34D1: Proc_6_7_F26918(var_C8, CVar(var_148))
  loc_13A34D9: var_100 = CVar(var_258 & MemVar_1F95078 & "ROOM','" & MemVar_1F95078 & "TOUT') And S.VDate Between ") & var_C8 
  loc_13A34F1: Set var_1F4 = Me.Txt
  loc_13A34F7: Call 0.Method_Proc_218_23_13A39940 (CInt(1), var_1F8)
  loc_13A3506: Proc_6_7_F26918(var_140, CVar(var_1F8))
  loc_13A3517: var_16C = var_100 & " And " & var_140 & " And P.RestCode='" 
  loc_13A3529: Set var_20C = Me.Txt
  loc_13A352F: Call 0.Method_Proc_218_23_13A39940 (CInt(2), var_268, var_26C)
  loc_13A3537: var_16C = var_268.Tag
  loc_13A356C: unk_479052.Execute CStr(var_274 & CVar(var_26C) & "' And P.Logsite_Code='" & CVar(MemVar_1F95078) & "' Order by P.Vno"), , 
  loc_13A357D: Set global_76 = var_274
  loc_13A35DD: If (Me.RecordCount = 0) Then
  loc_13A35F3:   Me.GridSel.Rows = 2
  loc_13A35FB:   Exit Sub
  loc_13A35FC: End If
  loc_13A360F: Me.GridSel.Row = 1
  loc_13A3623: Me.CmdDelete.Enabled = True
  loc_13A362B: ' Referenced from: 13A3972
  loc_13A363D: If Not(Me.EOF) Then
  loc_13A3696:   unk_479052.Execute CStr("Select Vno,Vdate,NetAmt as BillAmount,DocId From Sale1 Where DocId='" & Me.Fields.Item(0).Value & "'"), var_100, -1
  loc_13A36A1:   Set var_88 = var_144
  loc_13A36CF:   If (var_88.RecordCount = 1) Then
  loc_13A36D6:     Set var_27C = Me.GridSel
  loc_13A36D9:     var_98 = vbNullString
  loc_13A36FD:     var_98 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_13A3705:     var_D8 = CVar(CLng(0)) 'Long
  loc_13A3713:     LateIdCallSt
  loc_13A3734:     var_B8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_13A373C:     var_130 = CVar(CLng(1)) 'Long
  loc_13A376C:     var_E8 = CVar(CStr(var_88.Fields.Item("VNo").Value)) 'String
  loc_13A3773:     LateIdCallSt
  loc_13A37D5:     var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DocID")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_27C, var_E8, CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_13A37DC:     LateIdCallSt
  loc_13A3832:     var_D8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_13A383A:     var_17C = CVar(CLng(3)) 'Long
  loc_13A3857:     var_C8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("VDate")), var_27C, "dd/mmm/yyyy", var_27C, vbNullString)) 'String
  loc_13A386D:     LateIdCallSt
  loc_13A38B4:     Proc_6_39_E7D3A0(var_C8, CVar(var_88.Fields.Item("BillAmount")), var_27C, CVar(CStr(Format(var_C8, "dd/mmm/yyyy"))), 1, 1)
  loc_13A38CC:     var_D8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_13A38D4:     var_17C = CVar(CLng(4)) 'Long
  loc_13A38FD:     var_120 = CVar(CStr(Format(var_C8, "0.00"))) 'String
  loc_13A3904:     LateIdCallSt
  loc_13A3924:     Set var_27C = Nothing 
  loc_13A392D:     Set var_88 = Nothing
  loc_13A3949:     var_98 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_13A3958:     Me.GridSel.Row = "BillAmount"
  loc_13A3967:   End If
  loc_13A396D:   Me.MoveNext
  loc_13A3972:   GoTo loc_13A362B
  loc_13A3975: End If
  loc_13A3988: Me.GridSel.FixedRows = 1
  loc_13A3990: Exit Sub
End Sub

Public Sub Proc_218_24_F791DC(arg_C) 'F791DC
  'Data Table: 479040
  Dim unk_479052 As Connection15
  loc_F790B8: unk_479052.Execute "Update Kot Set ContraDocID='Deleted' Where ContraDocID='" & arg_C & "'", var_B0, -1
  loc_F790EE: unk_479052.Execute "Delete From Sale1 Where DocID='" & arg_C & "'", var_B0, -1
  loc_F79124: unk_479052.Execute "Delete From Sale2 Where DocID='" & arg_C & "'", var_B0, -1
  loc_F7915A: unk_479052.Execute "Delete From SunTran Where DocID='" & arg_C & "'", var_B0, -1
  loc_F79190: unk_479052.Execute "Delete From Stock Where DocID='" & arg_C & "'", var_B0, -1
  loc_F791C6: unk_479052.Execute "Delete From Paycharge Where DocID='" & arg_C & "'", var_B0, -1
  loc_F791D8: Exit Sub
  loc_F791D9: Exit Sub
End Sub

Public Sub Proc_218_25_130DA50
  'Data Table: 479040
  Dim unk_479052 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Fields15
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_1F0 As Variant
  Dim var_1F4 As String
  Dim var_130 As Variant
  loc_130D35E: unk_479052.Execute "Select * from TempPosDel Order By OldVno", var_A8, -1
  loc_130D369: Set var_88 = var_AC
  loc_130D386: If (var_88.RecordCount = 0) Then
  loc_130D389:   Exit Sub
  loc_130D38A: End If
  loc_130D39E: If (var_88.RecordCount > 0) Then
  loc_130D3A4:   var_88.MoveFirst
  loc_130D3A9:   ' Referenced from: 130DA4A
  loc_130D3B8:   If Not(var_88.EOF) Then
  loc_130D3DF:     var_AC = var_88.Fields
  loc_130D42A:     Proc_6_39_E7D3A0(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update Sale1 Set DocId='" & var_AC.Item("NewDocId").Value & "',Vno=", var_214)
  loc_130D432:     var_140 = -1 & var_130 
  loc_130D4A4:     var_1F4 = CStr(var_140 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value)
  loc_130D4AE:     unk_479052.Execute var_1F4, var_218, var_AC
  loc_130D555:     Proc_6_39_E7D3A0(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update Sale2 Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_130D5CB:     var_1F0 = var_214 & var_130 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value 
  loc_130D5D9:     unk_479052.Execute CStr(var_1F0), -1, var_218
  loc_130D680:     Proc_6_39_E7D3A0(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update SunTran Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_130D6F6:     var_1F0 = var_214 & var_130 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value 
  loc_130D704:     unk_479052.Execute CStr(var_1F0), -1, var_218
  loc_130D7AB:     Proc_6_39_E7D3A0(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update Stock Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_130D821:     var_1F0 = var_214 & var_130 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value 
  loc_130D82F:     unk_479052.Execute CStr(var_1F0), -1, var_218
  loc_130D8D6:     Proc_6_39_E7D3A0(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update PayCharge Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_130D8E7:     var_160 = var_214 & var_130 & " Where DocId='" 
  loc_130D95A:     unk_479052.Execute CStr(var_160 & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value), -1, var_218
  loc_130DA05:     var_130 = "Update Kot Set ContraDocId='" & var_88.Fields.Item("NewDocId").Value & "' Where ContraDocId='" & var_88.Fields.Item("OldDocid").Value 
  loc_130DA1C:     unk_479052.Execute CStr(var_130 & "'"), var_160, -1
  loc_130DA45:     var_88.MoveNext
  loc_130DA4A:     GoTo loc_130D3A9
  loc_130DA4D:   End If
  loc_130DA4D: End If
  loc_130DA4D: Exit Sub
  loc_130DA4E: DOC
End Sub

Public Sub Proc_218_26_107BEF8
  'Data Table: 479040
  Dim unk_479052 As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Long
  Dim var_B0 As Fields15
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_11C As Variant
  Dim var_14C As Variant
  Dim var_1BC As Variant
  Dim var_13C As Variant
  Dim var_16C As Variant
  Dim var_234 As Variant
  loc_107BCD6: unk_479052.Execute "Select * from TempPosDel Order By OldVno", var_AC, -1
  loc_107BCE1: Set var_88 = var_B0
  loc_107BCFE: If (var_88.RecordCount = 0) Then
  loc_107BD0A:   global_84 = global_80
  loc_107BD0D:   Exit Sub
  loc_107BD0E: End If
  loc_107BD13: var_8C = 1
  loc_107BD2A: If (var_88.RecordCount > 0) Then
  loc_107BD30:   var_88.MoveFirst
  loc_107BD35:   ' Referenced from: 107BEDD
  loc_107BD44:   If Not(var_88.EOF) Then
  loc_107BD88:     var_DC = CVar(CStr((global_80 + var_8C))) 'String
  loc_107BD9A:     var_11C = (8 - Len(Trim(var_DC)))
  loc_107BDB4:     var_14C = CVar(CStr((global_80 + var_8C))) 'String
  loc_107BDCB:     var_1BC = CVar(CStr((global_80 + var_8C))) 'String
  loc_107BE3C:     var_13C = (Left(CVar(var_88.Fields.Item("OldDocid")), &HD) + Space(CLng(var_11C)))
  loc_107BE43:     var_16C = (var_13C + Trim(var_14C))
  loc_107BE67:     var_234 = "Update TempPosDel Set NewDocId='" & var_16C & "',NewVno=" & Trim(var_1BC) & " Where OldDocId='" & var_88.Fields.Item("OldDocid").Value 
  loc_107BE85:     unk_479052.Execute CStr(var_234 & "' And OldVno=" & var_88.Fields.Item("OldVno").Value), var_2B0, -1
  loc_107BED2:     var_8C = (var_8C + 1)
  loc_107BED8:     var_88.MoveNext
  loc_107BEDD:     GoTo loc_107BD35
  loc_107BEE0:   End If
  loc_107BEF3:   global_84 = ((global_80 + var_8C) - 1)
  loc_107BEF6: End If
  loc_107BEF6: Exit Sub
End Sub

Public Sub Proc_218_27_11A9F84(arg_C, arg_10) '11A9F84
  'Data Table: 479040
  Dim var_96 As Integer
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_9A As Integer
  Dim var_C4 As Variant
  Dim var_E4 As Long
  Dim var_108 As Variant
  Dim var_128 As Long
  Dim var_14C As Variant
  loc_11A9B66: On Error Goto loc_11A9F79
  loc_11A9B6B: var_96 = 0
  loc_11A9B77: If (CInt(arg_10) = 1) Then
  loc_11A9B9F:   For var_B4 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_98 = var_B4 'Integer
  loc_11A9BA8:     var_9A = var_98
  loc_11A9BAF:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A9BB4:     var_E4 = 2
  loc_11A9BE3:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11A9BEA:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A9BEF:       var_E4 = 2
  loc_11A9C12:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_11A9C17:       var_128 = 1
  loc_11A9C2A:       var_14C = Me.GridSel.TextMatrix)
  loc_11A9C41:       Call Proc_218_24_F791DC(CStr(Me.GridSel.TextMatrix)))
  loc_11A9C5D:       var_96 = &HFF
  loc_11A9C85:       For var_154 = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_9C = var_154 'Integer
  loc_11A9C9E:         Me.GridSel.Row = CVar(CLng(var_9A))
  loc_11A9CB9:         Me.GridSel.Col = CVar(CLng(var_9C))
  loc_11A9CD4:         Me.GridSel.CellBackColor = &H80FF
  loc_11A9CDF:       Next var_154 'Integer
  loc_11A9CE4:     End If
  loc_11A9CE7:   Next var_B4 'Integer
  loc_11A9CEC:   Exit For
  loc_11A9CEF: End If
  loc_11A9CF7: CRefVarAry
  loc_11A9CFF: For var_158 = 0 To CInt(UBound(arg_C, 1)): var_98 = var_158 'Integer
  loc_11A9D20:   If (arg_C(var_98) = 0) Then
  loc_11A9D23:     GoTo loc_11A9EB1
  loc_11A9D26:   End If
  loc_11A9D37:   var_9A = CInt(arg_C(var_98))
  loc_11A9D41:   var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A9D46:   var_E4 = 0
  loc_11A9D75:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_11A9D7C:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A9D81:     var_E4 = 2
  loc_11A9DB0:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11A9DB7:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A9DBC:       var_E4 = 2
  loc_11A9DDF:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_11A9DE4:       var_128 = 1
  loc_11A9DF7:       var_14C = Me.GridSel.TextMatrix)
  loc_11A9E0E:       Call Proc_218_24_F791DC(CStr(Me.GridSel.TextMatrix)))
  loc_11A9E2A:       var_96 = &HFF
  loc_11A9E52:       For var_15C = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_9C = var_15C 'Integer
  loc_11A9E6B:         Me.GridSel.Row = CVar(CLng(var_9A))
  loc_11A9E86:         Me.GridSel.Col = CVar(CLng(var_9C))
  loc_11A9EA1:         Me.GridSel.CellBackColor = &H80FF
  loc_11A9EAC:       Next var_15C 'Integer
  loc_11A9EB1:       ' Referenced from: 11A9D23
  loc_11A9EB1:     End If
  loc_11A9EB1:   End If
  loc_11A9EB4: Next var_158 'Integer
  loc_11A9EB9: ' Referenced from: 11A9CEC
  loc_11A9EC9: If ((var_96 = 0) And (CInt(arg_10) = 0)) Then
  loc_11A9ECC:   var_C4 = 0
  loc_11A9ED5:   var_E4 = 1
  loc_11A9EE8:   var_B0 = Me.GridSel.TextMatrix)
  loc_11A9F10:   MsgBox(CVar("Select " & CStr(var_B0)), &H40, var_16C, var_17C, var_18C)
  loc_11A9F3B:   Me.GridSel.Row = 1
  loc_11A9F43:   var_C4 = 0
  loc_11A9F56:   Me.GridSel.Col = var_C4
  loc_11A9F62:   Set var_A0 = Me.GridSel
  loc_11A9F73: End If
  loc_11A9F73: Proc_218_27_11A9F84 = GridSel.DispID_8001
  loc_11A9F79: ' Referenced from: 11A9B66
  loc_11A9F79: Proc_6_60_E63754(var_B0, var_E4)
  loc_11A9F7E: Proc_218_27_11A9F84 = var_C4
End Sub

Public Sub Proc_218_28_EBA4C8
  'Data Table: 479040
  loc_EBA440: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_EBA452:   Me.DGRestType.Visible = False
  loc_EBA45A: End If
  loc_EBA476: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_EBA488:   Me.DGPayType.Visible = False
  loc_EBA490: End If
  loc_EBA4AC: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBA4BE:   Me.FGPoint.Visible = False
  loc_EBA4C6: End If
  loc_EBA4C6: Exit Sub
End Sub
