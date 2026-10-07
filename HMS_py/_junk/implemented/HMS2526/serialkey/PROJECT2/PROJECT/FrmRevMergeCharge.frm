VERSION 5.00
Begin VB.Form FrmRevMergeCharge
  Caption = "Reverse Transfer Room"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 15495
  ClientHeight = 7275
  Begin CommandButton cmdTransferCharge
    Caption = "Reverse Room Merge"
    BackColor = &HFFC0FF&
    Left = 6960
    Top = 7200
    Width = 1455
    Height = 1095
    TabIndex = 15
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DisabledPicture = "FrmRevMergeCharge.frx":0
  End
  Begin CheckBox chkSelectALL
    Caption = "ALL"
    Index = 1
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 19605
    Top = 225
    Width = 570
    Height = 210
    Visible = 0   'False
    TabIndex = 8
    Style = 1
  End
  Begin CheckBox chkSelectALL
    Caption = "Check1"
    Index = 0
    BackColor = &HC00000&
    Left = 345
    Top = 1005
    Width = 255
    Height = 255
    Visible = 0   'False
    TabIndex = 5
  End
  Begin DataGrid DGHelp
    Left = 14595
    Top = 5100
    Width = 6090
    Height = 2055
    TabIndex = 3
  End
  Begin MSFlexGrid FGPoint
    Left = 14790
    Top = 3495
    Width = 3225
    Height = 1800
    Visible = 0   'False
    TabIndex = 11
  End
  Begin CommandButton cmdTransferChargezzz
    Caption = "Transfer &Charges"
    Left = 18570
    Top = 5475
    Width = 1695
    Height = 420
    Visible = 0   'False
    TabIndex = 10
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    MaskColor = &H8000000F&
  End
  Begin TextBox Txt
    Index = 1
    Left = 20325
    Top = 420
    Width = 1455
    Height = 255
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
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
  Begin MSHFlexGrid FGrid
    Left = 210
    Top = 990
    Width = 10275
    Height = 5955
    TabIndex = 6
  End
End
Begin MSHFlexGrid FGrid1
  Left = 20205
  Top = 9345
  Width = 165
  Height = 7815
  TabIndex = 9
End
Begin MSHFlexGrid FGrid2
  Left = 270
  Top = 6960
  Width = 5415
  Height = 1455
  TabIndex = 12
End
Begin BtnEnh BtnExit
  Left = 8490
  Top = 7020
  Width = 1380
  Height = 1335
  TabIndex = 14
End
Begin Label LblFormCaption
  BackColor = &HC0FFFF&
  Left = 0
  Top = 0
  Width = 180
  Height = 540
  TabIndex = 13
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
Begin Label lbl
  BackColor = &H808080&
  Left = 20325
  Top = 420
  Width = 1455
  Height = 255
  Visible = 0   'False
  TabIndex = 2
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
Begin Label Label1
  Caption = "List of Leader Rooms"
  Index = 0
  BackColor = &HC00000&
  ForeColor = &H80000005&
  Left = 165
  Top = 615
  Width = 10245
  Height = 375
  TabIndex = 4
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
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
  Caption = "List of Room's Charge"
  Index = 1
  BackColor = &H808080&
  ForeColor = &HFFFFFF&
  Left = 18570
  Top = 6600
  Width = 1770
  Height = 300
  Visible = 0   'False
  TabIndex = 7
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin Label LblName
  Caption = "Enter Leader Room No"
  Index = 5
  ForeColor = &H0&
  Left = 18240
  Top = 420
  Width = 1935
  Height = 240
  Visible = 0   'False
  TabIndex = 0
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

Attribute VB_Name = "FrmRevMergeCharge"

Private global_72 As Integer

Private Sub Txt_Change(Index As Integer) 'E59F9C
  'Data Table: 4780F4
  Dim Txt_Change4 As Variant
  loc_E59F66: If (Index = CInt(1)) Then
  loc_E59F73:   Txt_Change4 = Me.FGrid1.Text
  loc_E59F91:   Me.FGrid1.Rows = 1
  loc_E59F99: End If
  loc_E59F99: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1041770
  'Data Table: 4780F4
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_1041536: Set var_88 = Me.Txt
  loc_104153C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_104154A: Proc_6_74_E23240(var_8C)
  loc_1041556: Call Proc_182_27_E99294(var_8C)
  loc_104155B: On Error Goto loc_104172A
  loc_1041561: var_92 = Index
  loc_104156C: If (var_92 = CInt(1)) Then
  loc_1041586:   If (Me.RecordCount > 0) Then
  loc_1041594:     Set var_8C = Me.FGPoint
  loc_10415AC:     Call DGridTxtPointSet(Me.DGHelp, global_64, Index, var_8C)
  loc_10415BA:   End If
  loc_1041608:   Set var_88 = Me.Txt
  loc_104160E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1041616:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_104162E:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_104163E:     Set var_88 = Me.Txt
  loc_1041644:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_104164C:     var_8C.Tag = vbNullString
  loc_1041658:     Exit Sub
  loc_1041659:   End If
  loc_1041666:   Set var_88 = Me.Txt
  loc_104166C:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1041674:   var_A0 = var_8C.Text
  loc_1041686:   var_B0 = "RoomNo"
  loc_10416C1:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_10416CA:     Me.MoveFirst
  loc_10416ED:     Set var_88 = Me.Txt
  loc_10416F3:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo='")
  loc_10416FB:     0 = var_8C.Text
  loc_1041714:     Me.Find 1 & var_A0 & "'", var_B0, 
  loc_1041729:   End If
  loc_1041729: End If
  loc_1041729: Exit Sub
  loc_104172A: ' Referenced from: 104155B
  loc_1041732: Set var_88 = Err()
  loc_1041738: Call 0.Method_arg_2C (var_A0)
  loc_1041759: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_11C)
  loc_104176C: Exit Sub
  loc_104176D: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11A7720
  'Data Table: 4780F4
  Dim var_90 As Variant
  Dim var_D4 As Variant
  Dim var_A4 As Variant
  Dim var_114 As Variant
  Dim var_124 As String
  Dim var_1B4 As String
  Dim var_1C4 As Variant
  Dim var_1D4 As String
  Dim var_254 As String
  Dim unk_4780F7 As Connection15
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_294 As Column
  loc_11A7346: If (CLng(Shift) = &H1B) Then
  loc_11A7357:   Set var_8C = Me.Txt
  loc_11A735D:   Call 0.Method_Txt_KeyDown0 (CInt(1), var_90)
  loc_11A7365:   var_90.Text = vbNullString
  loc_11A7371:   Call Proc_182_27_E99294()
  loc_11A7376:   Exit Sub
  loc_11A7377: End If
  loc_11A7385: If (KeyCode = CInt(1)) Then
  loc_11A73F1:   var_114 = "SELECT RoomMast.Code AS [S    All], RoomMast.Code AS RoomNo ,GuestFolio.Docid as FolioNoDocid, RoomMast.Name AS Quot," & IIf((MemVar_1F953B0 = "A"), " GuestFolio.Vdate ", "convert(char,GuestFolio.vDate ,103)") 
  loc_11A7405:   var_1B4 = " as [Departure Date], GuestProf.Name AS [Guest Name], GuestProf.GuestStatus AS Status, SubGroup.Name AS [Company Name],GuestProf.Add1 AS Address1,GuestProf.Add2 AS Address2,GuestProf.CityName AS [City Name],GuestProf.StateName AS [State Name],GuestProf.CountryName AS [Country Name], GuestFolio.FolioNo AS FolioNo,Guestprof.Code as GuestCode,GuestFolio.Mfoliono FROM ((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) "
  loc_11A740A:   var_1C4 = var_114 & " as [CheckIn Date] ," & IIf((MemVar_1F953B0 = "A"), " RoomOcc.DepDate", "convert(char,RoomOcc.DepDate ,103)") & var_1B4 
  loc_11A740E:   var_1D4 = "INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) Left JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code WHERE ((GuestFolio.LOGSITE_CODE='"
  loc_11A7434:   var_254 = "') AND (GuestFolio.mFolioNo is Null OR GuestFolio.mFolioNo=0) AND (roomocc.type not in ('C','O') or roomocc.type is null)  AND ROOMMAST.TYPE='RO') and GuestFolio.Docid Not in (Select Distinct Folionodocid from paycharge where Bill_No is not null and bill_no<>'' and folionodocid<>'' and folionodocid is not null and Settledate is NULL) ORDER BY RoomMast.Code"
  loc_11A7447:   unk_4780F7.Execute CStr(var_1C4 & var_1D4 & CVar(MemVar_1F95078) & "' And RoomMast.LOGSITE_CODE='" & CVar(MemVar_1F95078) & var_254), var_288, -1
  loc_11A7458:   Set global_52 = var_8C
  loc_11A74A4:   If (Me.RecordCount <= 0) Then
  loc_11A74A7:     Exit Sub
  loc_11A74A8:   End If
  loc_11A74B1:   CVarUnk
  loc_11A74B6:   VerifyVarObj
  loc_11A74BC:   Set var_8C = Me.FGrid
  loc_11A74C2:   LateIdStAd
  loc_11A74F8:   Set var_294 = Nothing
  loc_11A7526:   Proc_6_69_134A630(Me.DGHelp, Me.Txt, KeyCode, global_64, Shift, 0, 0)
  loc_11A7595:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11A759C:     Set var_294 = Me.DGHelp
  loc_11A75BB:     Proc_6_138_106E830(var_294, global_64, KeyCode, Me.FGPoint, var_294, Me.FGPoint)
  loc_11A75C9:   End If
  loc_11A75D7:   Me.DGHelp.Visible = True
  loc_11A75F1:   Set var_8C = Me.DGHelp
  loc_11A7610:   DGHelp.DispID_69.Item(1).Width = CDbl(2600)
  loc_11A7632:   Set var_8C = Me.DGHelp
  loc_11A7651:   DGHelp.DispID_69.Item(2).Width = CDbl(0)
  loc_11A7662:   var_A4 = 1
  loc_11A766B:   var_D4 = &HA28
  loc_11A7678:   Set var_8C = Me.FGPoint
  loc_11A767E:   LateIdCallSt
  loc_11A7689:   var_A4 = 2
  loc_11A7692:   var_D4 = 0
  loc_11A769F:   Set var_8C = Me.FGPoint
  loc_11A76A5:   LateIdCallSt
  loc_11A76D5:   For var_2AC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2AC 'Integer
  loc_11A76DF:     var_A4 = CVar(CLng(var_86)) 'Long
  loc_11A76E4:     var_D4 = 0
  loc_11A76ED:     var_124 = vbNullString
  loc_11A76F7:     Set var_8C = Me.FGrid
  loc_11A76FD:     LateIdCallSt
  loc_11A770B:   Next var_2AC 'Integer
  loc_11A7716:   If (Shift = &HD) Then
  loc_11A7719:     Call DGHelp_UnknownEvent_9()
  loc_11A771E:   End If
  loc_11A771E: End If
  loc_11A771E: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F77308
  'Data Table: 4780F4
  Dim arg_10 As Integer
  Dim var_9A As Integer
  Dim var_A4 As TextBox
  Dim var_A0 As DataGrid
  Dim var_98 As Variant
  loc_F771CB: var_88 = "0123456789"
  loc_F771D4: Proc_6_133_E7FB08(var_98)
  loc_F771DD: arg_10 = CInt(var_98)
  loc_F771E6: Proc_6_58_E06050(arg_10, arg_10)
  loc_F771EE: var_9A = KeyAscii
  loc_F771F9: If (var_9A = CInt(1)) Then
  loc_F77206:   If (CLng(arg_10) = &H1B) Then
  loc_F77217:     Set var_A0 = Me.Txt
  loc_F7721D:     Call 0.Method_Txt_KeyPress0 (CInt(1), var_A4, vbNullString)
  loc_F77225:     var_A4.Text = var_9A
  loc_F77231:     Call Proc_182_27_E99294(arg_10)
  loc_F77236:     Exit Sub
  loc_F77237:   End If
  loc_F7723D:   If (arg_10 <> 0) Then
  loc_F7724E:     Set var_A0 = Me.Txt
  loc_F77254:     Call 0.Method_Txt_KeyPress0 (CInt(1), var_A4)
  loc_F7725C:     var_A4.Text = vbNullString
  loc_F77276:     Proc_303_0_FBACC8("{HOME}")
  loc_F7727E:   End If
  loc_F7729A:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F772AC:     var_A8 = "RoomNo"
  loc_F772C7:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, arg_10)
  loc_F772F9:     Proc_6_138_106E830(Me.DGHelp, global_64, KeyAscii, Me.FGPoint)
  loc_F77307:   End If
  loc_F77307: End If
  loc_F77307: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4E9EC
  'Data Table: 4780F4
  loc_E4E9CA: Set var_88 = Me.Txt
  loc_E4E9D0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4E9DE: Proc_6_73_E23294(var_8C)
  loc_E4E9EA: Exit Sub
End Sub

Private Sub Txt_Click(Index As Integer) 'E2B44C
  'Data Table: 4780F4
  loc_E2B432: If (Index = CInt(1)) Then
  loc_E2B43D:   var_8C = "{HOME}+{END}"
  loc_E2B443:   Proc_303_0_FBACC8(var_8C, 0)
  loc_E2B44B: End If
  loc_E2B44B: Exit Sub
End Sub

Private Sub chkSelectALL_Click(Index As Integer) '11EBA1C
  'Data Table: 4780F4
  Dim var_8A As Integer
  Dim var_94 As CheckBox
  Dim var_90 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Long
  Dim var_FC As String
  loc_11EB57F: var_8A = Index
  loc_11EB588: If (var_8A = 0) Then
  loc_11EB598:   Set var_90 = Me.chkSelectALL
  loc_11EB59E:   Call 0.Method_chkSelectALL_Click0 (Index, var_94)
  loc_11EB5A6:   var_96 = var_94.Value
  loc_11EB5B8:   If (var_96 = 1) Then
  loc_11EB5E0:     For var_AC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_AC 'Integer
  loc_11EB5F9:       Me.FGrid.Row = CVar(CLng(var_86))
  loc_11EB614:       Me.FGrid.Col = 0
  loc_11EB62C:       Me.FGrid.CellFontName = "WINGDINGS"
  loc_11EB646:       Me.FGrid.CellFontSize = CVar(CDbl(&HD))
  loc_11EB661:       Me.FGrid.CellForeColor = &HFF
  loc_11EB66D:       var_BC = CVar(CLng(var_86)) 'Long
  loc_11EB672:       var_DC = 0
  loc_11EB67B:       var_FC = "ü"
  loc_11EB685:       Set var_90 = Me.FGrid
  loc_11EB68B:       LateIdCallSt
  loc_11EB6BB:       For var_110 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_88 = var_110 'Integer
  loc_11EB6D4:         Me.FGrid.Col = CVar(CLng(var_88))
  loc_11EB6EF:         Me.FGrid.CellBackColor = &HFF00
  loc_11EB6FA:       Next var_110 'Integer
  loc_11EB702:     Next var_AC 'Integer
  loc_11EB720:     var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11EB725:     var_DC = 0
  loc_11EB72E:     var_FC = vbNullString
  loc_11EB738:     Set var_94 = Me.FGrid
  loc_11EB73E:     LateIdCallSt
  loc_11EB750:     Call FGrid_UnknownEvent_9()
  loc_11EB755:   End If
  loc_11EB755:   Exit For
  loc_11EB758: End If
  loc_11EB75E: If (var_8A = 1) Then
  loc_11EB76E:   Set var_90 = Me.chkSelectALL
  loc_11EB774:   Call 0.Method_chkSelectALL_Click0 (Index, var_94, var_96, var_94)
  loc_11EB77C:   var_FC = var_94.Value
  loc_11EB78E:   If (var_96 = 1) Then
  loc_11EB7B6:     For var_114 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_114 'Integer
  loc_11EB7CF:       Me.FGrid1.Row = CVar(CLng(var_86))
  loc_11EB7EA:       Me.FGrid1.Col = 0
  loc_11EB802:       Me.FGrid1.CellFontName = "WINGDINGS"
  loc_11EB81C:       Me.FGrid1.CellFontSize = CVar(CDbl(&HD))
  loc_11EB837:       Me.FGrid1.CellForeColor = &HFF
  loc_11EB843:       var_BC = CVar(CLng(var_86)) 'Long
  loc_11EB848:       var_DC = 0
  loc_11EB851:       var_FC = "ü"
  loc_11EB85B:       Set var_90 = Me.FGrid1
  loc_11EB861:       LateIdCallSt
  loc_11EB891:       For var_118 = 1 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_88 = var_118 'Integer
  loc_11EB8AA:         Me.FGrid1.Col = CVar(CLng(var_88))
  loc_11EB8C5:         Me.FGrid1.CellBackColor = &HFF00
  loc_11EB8D0:       Next var_118 'Integer
  loc_11EB8D8:     Next var_114 'Integer
  loc_11EB8DD:     Exit For
  loc_11EB8E0:   End If
  loc_11EB905:   For var_11C = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_11C 'Integer
  loc_11EB90F:     var_BC = CVar(CLng(var_86)) 'Long
  loc_11EB914:     var_DC = 0
  loc_11EB943:     If (CStr(Me.FGrid1.TextMatrix)) = "ü") Then
  loc_11EB959:       Me.FGrid1.Row = CVar(CLng(var_86))
  loc_11EB974:       Me.FGrid1.Col = 0
  loc_11EB980:       var_BC = CVar(CLng(var_86)) 'Long
  loc_11EB985:       var_DC = 0
  loc_11EB98E:       var_FC = vbNullString
  loc_11EB998:       Set var_90 = Me.FGrid1
  loc_11EB99E:       LateIdCallSt
  loc_11EB9CE:       For var_124 = 1 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_88 = var_124 'Integer
  loc_11EB9E7:         Me.FGrid1.Col = CVar(CLng(var_88))
  loc_11EBA02:         Me.FGrid1.CellBackColor = &HFFFFFF
  loc_11EBA0D:       Next var_124 'Integer
  loc_11EBA12:     End If
  loc_11EBA15:   Next var_11C 'Integer
  loc_11EBA1A:   ' Referenced from: 11EB8DD
  loc_11EBA1A:   ' Referenced from: 11EB755
  loc_11EBA1A: End If
  loc_11EBA1A: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F2E6C4
  'Data Table: 4780F4
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_A0 As Variant
  Dim var_A8 As TextBox
  loc_F2E5BC: Call Proc_182_27_E99294()
  loc_F2E5D8: If (Me.RecordCount > 0) Then
  loc_F2E617:   Set var_A4 = Me.Txt
  loc_F2E61D:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1), var_A8)
  loc_F2E625:   var_A8.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_F2E658:   var_A0 = Me.Fields.Item("FolioNo")
  loc_F2E677:   Set var_A4 = Me.Txt
  loc_F2E67D:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1), var_A8)
  loc_F2E685:   var_A8.Tag = CStr(var_A0.Value)
  loc_F2E69B:   Call Proc_182_25_1139960()
  loc_F2E6A0: End If
  loc_F2E6A9: Set var_8C = Me.chkSelectALL
  loc_F2E6AF: Call 0.Method_DGHelp_UnknownEvent_90 (0)
  loc_F2E6B7: var_A0.SetFocus
  loc_F2E6C3: Exit Sub
End Sub

Public Sub DGHelp_UnknownEvent_1B(Index As Integer) 'E03D10
  'Data Table: 4780F4
  loc_E03D06: If (Index = &HD) Then
  loc_E03D09:   Call DGHelp_UnknownEvent_9()
  loc_E03D0E: End If
  loc_E03D0E: Exit Sub
End Sub

Private Sub btnExit_UnknownEvent_9 'E182B8
  'Data Table: 4780F4
  loc_E182AD: Me.Global.Unload Me
  loc_E182B5: Exit Sub
End Sub

Private Sub cmdTransferCharge_Click() '14BF264
  'Data Table: 4780F4
  Dim var_86 As Integer
  Dim unk_4780F7 As Connection15
  Dim var_C0 As Variant
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_138 As String
  Dim var_A0 As Long
  Dim var_13C As String
  Dim var_14C As String
  Dim var_A4 As Long
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Double
  Dim var_B8 As Recordset15
  Dim var_1BC As Double
  Dim var_1B4 As String
  Dim var_8C As Recordset15
  Dim var_F4 As Variant
  Dim var_1A8 As Variant
  Dim Me As Recordset15
  Dim var_114 As Variant
  Dim var_16C As Long
  Dim var_1CC As Variant
  Dim var_2E0 As Variant
  Dim var_300 As Long
  Dim var_374 As Variant
  Dim var_394 As Long
  Dim var_134 As Variant
  Dim var_20C As Variant
  Dim var_364 As Variant
  Dim cmdTransferCharge_Click4 As Variant
  loc_14BE5B6: var_86 = 0
  loc_14BE5C2: unk_4780F7.BeginTrans var_BC
  loc_14BE5EC: For var_D4 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_B2 = var_D4 'Integer
  loc_14BE5F4:   var_86 = &HFF
  loc_14BE5FB:   var_E4 = CVar(CLng(var_B2)) 'Long
  loc_14BE600:   var_104 = 1
  loc_14BE624:   var_134 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_14BE633:   global_80 = CStr(var_134)
  loc_14BE64A:   var_E4 = CVar(CLng(var_B2)) 'Long
  loc_14BE64F:   var_104 = &HD
  loc_14BE662:   var_D0 = Me.FGrid1.TextMatrix)
  loc_14BE676:   var_A0 = CLng(Val(CStr(var_D0)))
  loc_14BE693:   If ((var_A4 <> var_A0) And (var_A4 <> 0)) Then
  loc_14BE6B1:     var_13C = "UPDATE GuestFolio SET GuestFolio.mFolioNoDocId='',GuestFolio.mFolioNo = 0 WHERE GuestFolio.MFolioNoDocid = '" & var_A8 & "' And Guestfolio.Docid='"
  loc_14BE6D6:     unk_4780F7.Execute var_13C & var_AC & "' And GuestFolio.Docid <>'" & var_A8 & "'", var_D0, -1
  loc_14BE6F3:     var_A4 = var_A0
  loc_14BE6F6:   End If
  loc_14BE6FF:   If (var_A4 = 0) Then
  loc_14BE705:     var_A4 = var_A0
  loc_14BE708:   End If
  loc_14BE70C:   var_E4 = CVar(CLng(var_B2)) 'Long
  loc_14BE711:   var_104 = 0
  loc_14BE740:   If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_14BE747:     var_E4 = CVar(CLng(var_B2)) 'Long
  loc_14BE74C:     var_104 = &HC
  loc_14BE76A:     var_138 = CStr(Me.FGrid1.TextMatrix))
  loc_14BE774:     var_15C = CVar(CLng(global_72)) 'Long
  loc_14BE7B0:     If (CVar(CLng(&H11)) = CStr(Me.FGrid.TextMatrix))) Then
  loc_14BE7B7:       var_E4 = CVar(CLng(var_B2)) 'Long
  loc_14BE7BC:       var_104 = &HD
  loc_14BE7E9:       var_15C = CVar(CLng(var_B2)) 'Long
  loc_14BE7EE:       var_17C = &HC
  loc_14BE838:       var_14C = "SELECT DocId From GuestFolio WHERE FolioNo =" & CStr(Val(CStr(Me.FGrid1.TextMatrix)))) & " AND MFolioNODocID='" & CStr(Me.FGrid1.TextMatrix))
  loc_14BE848:       unk_4780F7.Execute var_14C & "'", var_134, -1
  loc_14BE853:       Set var_B8 = var_1A8
  loc_14BE88D:       If (var_B8.RecordCount = 0) Then
  loc_14BE894:         var_E4 = CVar(CLng(var_B2)) 'Long
  loc_14BE8BF:         var_1B0 = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_14BE8C6:         var_15C = CVar(CLng(var_B2)) 'Long
  loc_14BE8CB:         var_17C = &HF
  loc_14BE8F1:         var_1BC = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_14BE927:         var_1B4 = "Select Top 1 RoomNo,DocId From RoomOcc Where FolioNo=" & CStr(var_1B0) & " And VPrefix=" & CStr(var_1BC) & " Order By Sno desc"
  loc_14BE930:         unk_4780F7.Execute var_1B4, var_134, -1
  loc_14BE93B:         Set var_8C = var_1A8
  loc_14BE99A:         var_94 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("RoomNo")), var_1A8, var_1BC, var_17C, var_15C, var_1B0, &HD))))
  loc_14BE9AC:         var_E4 = "DocID"
  loc_14BE9B8:         var_C0 = var_8C.Fields
  loc_14BE9C8:         var_D0 = CVar(var_C0.Item(var_E4)) 'Address
  loc_14BE9D1:         var_124 = CVar(Proc_6_38_E69628(var_D0, var_E4, var_1A8, var_124)) 'String
  loc_14BE9D7:         var_134 = Trim(var_124)
  loc_14BE9E0:         var_98 = CStr(var_134)
  loc_14BEA32:         var_13C = "Select count(*) From RoomOcc Where DocId='" & var_98 & "' And (Roomocc.Type Not in ('C','O') OR Roomocc.Type is Null)"
  loc_14BEA3B:         unk_4780F7.Execute var_13C, var_D0, -1
  loc_14BEA70:         var_190 = var_C0.Fields.Item(0)
  loc_14BEA78:         var_D0 = var_190.Value
  loc_14BEA92:         If (var_D0 = 0) Then
  loc_14BEAA3:           var_90 = "Transation Failed!" & vbCrLf & "Room No. " & var_94 & " is Already removed from Group." & vbCrLf & "And Bill has been Settled."
  loc_14BEAAC:         Else
  loc_14BEAB2:           var_F4 = 0
  loc_14BEADF:           unk_4780F7.Execute "Select Count(*) from PayCharge where FolioNoDocid='" & var_98 & "' and Bill_No<>'' and Bill_No is Not NULL", var_D0, -1
  loc_14BEAE7:           var_C0 = var_C0.Fields
  loc_14BEAEF:           var_F4 = var_190.Item(var_190)
  loc_14BEAF7:           var_1A8 = var_1A8.Value
  loc_14BEB1E:           If (var_124 > 0) Then
  loc_14BEB28:             var_138 = var_90 & vbCrLf
  loc_14BEB2F:             var_90 = var_138 & "And Bill has been Generated."
  loc_14BEB35:           End If
  loc_14BEB35:         End If
  loc_14BEB3B:         Call 0.Method_arg_50 (var_138, var_124, var_C0)
  loc_14BEB59:         MsgBox(var_90, &H10, CVar(var_138), var_124, var_134)
  loc_14BEB6D:         unk_4780F7.RollbackTrans
  loc_14BEB7D:         Me.Requery -1
  loc_14BEB82:         Call Proc_182_26_133F86C(var_17C, var_15C)
  loc_14BEB87:         Exit Sub
  loc_14BEB88:       End If
  loc_14BEBB3:       var_114 = CVar(CLng(var_B2)) 'Long
  loc_14BEBB8:       var_16C = &HD
  loc_14BEBCB:       var_1CC = Me.FGrid1.TextMatrix)
  loc_14BEC0E:       Proc_6_7_F26918(var_2A0, CVar(CStr(Me.FGrid1.TextMatrix))), 4, CVar(CLng(var_B2)))
  loc_14BEC17:       var_2E0 = CVar(CLng(var_B2)) 'Long
  loc_14BEC1C:       var_300 = &HE
  loc_14BEC3F:       var_374 = CVar(CLng(var_B2)) 'Long
  loc_14BEC44:       var_394 = &HC
  loc_14BEC78:       var_124 = "UPDATE PayCharge SET PayCharge.FolioNoDocid = '" & var_B8.Fields.Item("DocID").Value 
  loc_14BEC81:       var_134 = var_124 & "', PayCharge.FolioNo = " 
  loc_14BECA2:       var_20C = var_134 & CVar(Val(CStr(var_1CC))) & ",RelatedFolioNo=0,RelatedFolioNoDocId='' WHERE PayCharge.RoomNo = '" & CVar(global_80) 
  loc_14BECCF:       var_364 = var_20C & "' AND PayCharge.VDate =" & var_2A0 & " AND PayCharge.VTime = '" & CVar(CStr(Me.FGrid1.TextMatrix))) & "' AND PayCharge.FolioNoDocid='" 
  loc_14BECF1:       unk_4780F7.Execute CStr(var_364 & CVar(CStr(Me.FGrid1.TextMatrix))) & "'"), var_418, -1
  loc_14BED57:       var_190 = var_B8.Fields.Item("DocID")
  loc_14BED68:       var_AC = CStr(var_190.Value)
  loc_14BED79:       var_E4 = CVar(CLng(var_B2)) 'Long
  loc_14BED7E:       var_104 = &HC
  loc_14BED9C:       var_A8 = CStr(Me.FGrid1.TextMatrix))
  loc_14BEDB8:       Me.FGrid1.Row = CVar(CLng(var_B2))
  loc_14BEDD3:       Me.FGrid1.Col = 0
  loc_14BEDEE:       Me.FGrid1.CellForeColor = &HFF
  loc_14BEE05:       var_D0 = Me.FGrid1.Cols
  loc_14BEE1B:       For var_420 = 1 To CInt((CLng(var_D0) - 1)): var_B4 = var_420 'Integer
  loc_14BEE34:         Me.FGrid1.Col = CVar(CLng(var_B4))
  loc_14BEE4F:         Me.FGrid1.CellBackColor = &HFF
  loc_14BEE6A:         Me.FGrid1.CellForeColor = &HFFFFFF
  loc_14BEE76:         Set var_C0 = Me.FGrid1
  loc_14BEE8A:       Next var_420 'Integer
  loc_14BEE8F:     End If
  loc_14BEE8F:   End If
  loc_14BEE92: Next var_D4 'Integer
  loc_14BEEB2: var_13C = "UPDATE GuestFolio SET GuestFolio.mFolioNoDocId='',GuestFolio.mFolioNo = 0 WHERE GuestFolio.MFolioNoDocid = '" & var_A8 & "' And Guestfolio.Docid='"
  loc_14BEED7: unk_4780F7.Execute var_13C & var_AC & "' And GuestFolio.Docid <> '" & var_A8 & "'", var_D0, -1
  loc_14BEF07: var_D0 = Me.Source
  loc_14BEF19: unk_4780F7.Execute CStr(var_D0), var_124, -1
  loc_14BEF48: If (var_C0.RecordCount = 0) Then
  loc_14BEF6F:   unk_4780F7.Execute "UPDATE PayCharge SET RelatedFolioNo=0,RelatedFolioNoDocId='' WHERE PayCharge.FolioNoDocid='" & var_A8 & "'", var_D0, -1
  loc_14BEFA5:   unk_4780F7.Execute "UPDATE GuestFolio SET GuestFolio.mFolioNoDocId='',GuestFolio.mFolioNo = 0 WHERE GuestFolio.Docid = '" & var_A8 & "'", var_D0, -1
  loc_14BEFD6:   If (CLng(Me.FGrid.Rows) > 2) Then
  loc_14BEFE0:     var_E4 = CVar(CLng(global_72)) 'Long
  loc_14BEFE9:     Set var_C0 = Me.FGrid
  loc_14BEFFD:   Else
  loc_14BF007:     cmdTransferCharge_Click4 = Me.FGrid.Text
  loc_14BF012:     var_E4 = 1
  loc_14BF025:     Me.FGrid.Rows = var_E4
  loc_14BF02D:   End If
  loc_14BF035:   Call Proc_182_23_12BDC40(-1, cmdTransferCharge_Click4, FGrid.DispID_10000, var_E4)
  loc_14BF03D: Else
  loc_14BF055:   Set var_C0 = Me.FGrid
  loc_14BF066:   var_138 = CStr(var_C0.TextMatrix))
  loc_14BF06D:   Call Proc_182_23_12BDC40(CLng(var_138), CVar(CLng(&H10)), CVar(CLng(global_72)), var_C0)
  loc_14BF07B: End If
  loc_14BF080: Set var_8C = Nothing
  loc_14BF089: unk_4780F7.CommitTrans
  loc_14BF099: Me.Requery -1
  loc_14BF09E: Call Proc_182_26_133F86C(var_C0, var_C0)
  loc_14BF0C1: If ((unk_4780F7.State > 0) And (var_86 = &HFF)) Then
  loc_14BF0E5:   MsgBox("Charges Transfered Successfully", &H40, "Save...", var_134, var_1CC)
  loc_14BF10C:   If (Me.RecordCount > 0) Then
  loc_14BF11B:     Me.cmdTransferCharge.Enabled = True
  loc_14BF12E:     Set var_C0 = Me.chkSelectALL
  loc_14BF134:     Call 0.Method_cmdTransferCharge_Click0 (1, var_190)
  loc_14BF13C:     var_190.Visible = True
  loc_14BF14B:   Else
  loc_14BF157:     Me.cmdTransferCharge.Enabled = False
  loc_14BF16A:     Set var_C0 = Me.chkSelectALL
  loc_14BF170:     Call 0.Method_cmdTransferCharge_Click0 (1, var_190)
  loc_14BF178:     var_190.Visible = False
  loc_14BF184:   End If
  loc_14BF187: Else
  loc_14BF1A5:   If ((unk_4780F7.State > 0) And (var_86 = 0)) Then
  loc_14BF1C9:     MsgBox("Please select any charges to be transfer", &H40, "Save...", var_134, var_1CC)
  loc_14BF1D9:     Exit Sub
  loc_14BF1DD:   Else
  loc_14BF1E5:     Set var_C0 = Err()
  loc_14BF1EB:     Call 0.Method_arg_2C (var_138)
  loc_14BF20C:     MsgBox(CVar(var_138), &H10, "Save...", var_134, var_1CC)
  loc_14BF22B:     Me.cmdTransferCharge.Enabled = False
  loc_14BF233:   End If
  loc_14BF233: End If
  loc_14BF25C: If ((global_72 = 1) And (CLng(Me.FGrid.Rows) = 2)) Then
  loc_14BF25F:   GoTo loc_14BF262
  loc_14BF262:   ' Referenced from: 14BF25F
  loc_14BF262: End If
  loc_14BF262: Exit Sub
  loc_14BF263: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 '122E61C
  'Data Table: 4780F4
  Dim var_8C As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_F4 As String
  Dim var_104 As String
  Dim var_A0 As Integer
  loc_122E10B: Set var_88 = Me.chkSelectALL
  loc_122E111: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_122E119: var_8C.Value = 0
  loc_122E144: If (CLng(Me.FGrid.RowSel) = 0) Then
  loc_122E147:   Exit Sub
  loc_122E148: End If
  loc_122E148: On Error Goto loc_122E5D7
  loc_122E15E: Me.FGrid.Col = 0
  loc_122E176: Me.FGrid.CellFontName = "WINGDINGS"
  loc_122E190: Me.FGrid.CellFontSize = CVar(CDbl(&HD))
  loc_122E1AB: Me.FGrid.CellForeColor = &HFF0000
  loc_122E1D4: If (CLng(global_72) = CLng(Me.FGrid.Row)) Then
  loc_122E1EA:   var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122E1EF:   var_D0 = 0
  loc_122E226:   If (CStr(Me.FGrid.TextMatrix)) = "ü") Then
  loc_122E23C:     var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122E241:     var_D0 = 0
  loc_122E24A:     var_104 = vbNullString
  loc_122E254:     Set var_8C = Me.FGrid
  loc_122E25A:     LateIdCallSt
  loc_122E291:     For var_118 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_9E = var_118 'Integer
  loc_122E2AA:       Me.FGrid.Col = CVar(CLng(var_9E))
  loc_122E2C5:       Me.FGrid.CellBackColor = &HFFFFFF
  loc_122E2D0:     Next var_118 'Integer
  loc_122E2D8:   Else
  loc_122E2EB:     var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122E2F0:     var_D0 = 0
  loc_122E2F9:     var_104 = "ü"
  loc_122E303:     Set var_8C = Me.FGrid
  loc_122E309:     LateIdCallSt
  loc_122E340:     For var_11C = 1 To CInt((CLng(Me.FGrid.Cols) - 1)):   var_9E = var_11C 'Integer
  loc_122E359:       Me.FGrid.Col = CVar(CLng(var_9E))
  loc_122E374:       Me.FGrid.CellBackColor = &HFF00
  loc_122E37F:     Next var_11C 'Integer
  loc_122E384:   End If
  loc_122E387: Else
  loc_122E39A:   var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122E39F:   var_D0 = 0
  loc_122E3A8:   var_104 = "ü"
  loc_122E3B2:   Set var_8C = Me.FGrid
  loc_122E3B8:   LateIdCallSt
  loc_122E3EF:   For var_120 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)):   var_9E = var_120 'Integer
  loc_122E408:     Me.FGrid.Col = CVar(CLng(var_9E))
  loc_122E423:     Me.FGrid.CellBackColor = &HFF00
  loc_122E42E:   Next var_120 'Integer
  loc_122E447:   var_A0 = CInt(CLng(Me.FGrid.Row))
  loc_122E459:   If (global_72 <> 0) Then
  loc_122E463:     var_B0 = CVar(CLng(global_72)) 'Long
  loc_122E468:     var_D0 = 0
  loc_122E471:     var_104 = vbNullString
  loc_122E47B:     Set var_88 = Me.FGrid
  loc_122E481:     LateIdCallSt
  loc_122E4A2:     Me.FGrid.Row = CVar(CLng(global_72))
  loc_122E4CF:     For var_124 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)):   var_9E = var_124 'Integer
  loc_122E4E8:       Me.FGrid.Col = CVar(CLng(var_9E))
  loc_122E503:       Me.FGrid.CellBackColor = &HFFFFFF
  loc_122E50E:     Next var_124 'Integer
  loc_122E513:   End If
  loc_122E519:   global_72 = var_A0
  loc_122E51C: End If
  loc_122E523: var_B0 = CVar(CLng(global_72)) 'Long
  loc_122E528: var_D0 = 0
  loc_122E557: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_122E561:   var_B0 = CVar(CLng(global_72)) 'Long
  loc_122E569:   var_D0 = CVar(CLng(&H10)) 'Long
  loc_122E583:   var_F4 = CStr(Me.FGrid.TextMatrix))
  loc_122E58A:   Call Proc_182_23_12BDC40(CLng(var_F4), var_D0, var_B0)
  loc_122E59B: Else
  loc_122E5A3:   Call Proc_182_23_12BDC40(-1, var_D0)
  loc_122E5A8: End If
  loc_122E5A8: Call Proc_182_26_133F86C(var_B0)
  loc_122E5BC: Set var_88 = Me.chkSelectALL
  loc_122E5C2: Call 0.Method_FGrid_UnknownEvent_90 (1, var_8C)
  loc_122E5CA: var_8C.Value = CInt(1)
  loc_122E5D6: Exit Sub
  loc_122E5D7: ' Referenced from: 122E148
  loc_122E5DF: Set var_88 = Err()
  loc_122E5E5: Call 0.Method_arg_2C (var_F4)
  loc_122E606: MsgBox(CVar(var_F4), &H40, "Information", var_138, var_148)
  loc_122E619: Exit Sub
  loc_122E61A: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(Index As Integer) 'E8FCC8
  'Data Table: 4780F4
  loc_E8FC56: If (Index = &HD) Then
  loc_E8FC67:   Proc_303_0_FBACC8("	")
  loc_E8FC6F: End If
  loc_E8FC8E: If (CLng(Me.FGrid.Rows) < 1) Then
  loc_E8FC91:   Exit Sub
  loc_E8FC92: End If
  loc_E8FCBC: If ((CLng(Index) = &H20) And (CLng(Me.FGrid.Col) = 0)) Then
  loc_E8FCBF:   Call FGrid_UnknownEvent_9()
  loc_E8FCC4: End If
  loc_E8FCC4: Exit Sub
  loc_E8FCC5: ThisVCallHidden
End Sub

Private Sub FGrid_UnknownEvent_10 'F878C4
  'Data Table: 4780F4
  Dim var_AC As Variant
  Dim var_D0 As Long
  loc_F8778A: Me.FGrid.Row = CVar(CLng(Me.FGrid.RowSel))
  loc_F877AC: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F877B1: var_D0 = 0
  loc_F877E8: If (CStr(Me.FGrid.TextMatrix)) <> "ü") Then
  loc_F87810:   For var_F8 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_86 = var_F8 'Integer
  loc_F87829:     Me.FGrid.Col = CVar(CLng(var_86))
  loc_F87844:     Me.FGrid.CellBackColor = &HFFFFFF
  loc_F8784F:   Next var_F8 'Integer
  loc_F87857: Else
  loc_F8787C:   For var_FC = 0 To CInt((CLng(Me.FGrid.Cols) - 1)):   var_86 = var_FC 'Integer
  loc_F87895:     Me.FGrid.Col = CVar(CLng(var_86))
  loc_F878B0:     Me.FGrid.CellBackColor = &HFF00
  loc_F878BB:   Next var_FC 'Integer
  loc_F878C0: End If
  loc_F878C0: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_B '10F6CB8
  'Data Table: 4780F4
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_134 As String
  Dim unk_4780F7 As Connection15
  Dim var_8C As Recordset15
  loc_10F69CB: var_C4 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_10F69E3: var_E4 = CVar(CLng(Me.FGrid2.Col)) 'Long
  loc_10F6A0C: var_88 = CStr(Trim(CVar(CStr(Me.FGrid2.TextMatrix)))))
  loc_10F6A6F: If (((CLng(Me.FGrid2.CellBackColor) = &HFDE1FF) Or (CLng(Me.FGrid2.Col) = 0)) Or (var_88 = vbNullString)) Then
  loc_10F6A72:   Exit Sub
  loc_10F6A73: End If
  loc_10F6A77: Set var_90 = Me.FGrid2
  loc_10F6A86: var_C4 = CVar(CLng(var_90.Row)) 'Long
  loc_10F6AAD: var_108 = Me.FGrid2.TextMatrix)
  loc_10F6ABF: Call 0.Method_arg_50 (var_140, var_108, CVar(CLng(Me.FGrid2.Col)))
  loc_10F6AF5: var_118 = CVar("Do You Want Remove Room No. " & CStr(var_108) & " from Group." & vbCrLf & "Without Transfer Charges.") 'String
  loc_10F6B28: If (MsgBox(var_118, &H24, CVar(var_140), var_160, var_180) = 6) Then
  loc_10F6B34:   unk_4780F7.BeginTrans var_184
  loc_10F6B67:   var_108 = "Select DocId,FolioNo From RoomOcc Where RTrim(LTrim(RoomOcc.RoomNo))='" & Trim(var_88) & "' And (Roomocc.Type Not in ('C','O') OR Roomocc.Type is Null)" 
  loc_10F6B75:   unk_4780F7.Execute CStr(var_108), var_118, -1
  loc_10F6B80:   Set var_8C = var_90
  loc_10F6BA8:   If (var_8C.RecordCount > 0) Then
  loc_10F6BB2:     var_C4 = CVar(CLng(global_72)) 'Long
  loc_10F6BBA:     var_E4 = CVar(CLng(&H11)) 'Long
  loc_10F6C14:     var_134 = "UPDATE GuestFolio SET GuestFolio.mFolioNoDocId='',GuestFolio.mFolioNo = 0 WHERE GuestFolio.MFolioNoDocid = '" & CStr(Me.FGrid.TextMatrix))
  loc_10F6C38:     unk_4780F7.Execute CStr(CVar(var_134 & "' And Guestfolio.Docid='") & var_8C.Fields.Item("DocID").Value & "'"), var_160, -1
  loc_10F6C60:   End If
  loc_10F6C65:   Set var_8C = Nothing
  loc_10F6C6E:   unk_4780F7.CommitTrans
  loc_10F6C7A:   var_C4 = CVar(CLng(global_72)) 'Long
  loc_10F6C8B:   Set var_90 = Me.FGrid
  loc_10F6C91:   var_A0 = var_90.TextMatrix)
  loc_10F6CA3:   Call Proc_182_23_12BDC40(CLng(CStr(var_A0)), CVar(CLng(&H10)), var_C4, var_198, var_A0, CVar(CLng(&H10)))
  loc_10F6CB1:   Call Proc_182_26_133F86C(var_C4, var_90, var_C4)
  loc_10F6CB6: End If
  loc_10F6CB6: Exit Sub
End Sub

Private Sub Form_Load() '13D7920
  'Data Table: 4780F4
  Dim var_A0 As Variant
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_BC As DataGrid
  Dim var_C0 As TextBox
  Dim var_E8 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_1C8 As String
  Dim var_1D8 As Variant
  Dim var_1E8 As String
  Dim var_268 As String
  Dim var_27C As String
  Dim unk_4780F7 As Connection15
  Dim var_D8 As Variant
  Dim var_2AC As String
  loc_13D6FA2: Proc_6_23_DFC5B8(Me, 0)
  loc_13D6FB1: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_13D6FC9: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_13D6FE4: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_13D6FFF: Me.FGrid2.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_13D7015: Set var_8C = Me.Txt
  loc_13D701B: Call 0.Method_Form_Load0 (CInt(1), var_B4)
  loc_13D703A: Me.DGHelp.Left = CVar(var_B4.Left)
  loc_13D7056: Set var_BC = Me.Txt
  loc_13D705C: Call 0.Method_Form_Load0 (CInt(1), var_C0)
  loc_13D7077: Set var_8C = Me.Txt
  loc_13D707D: Call 0.Method_Form_Load0 (CInt(1), var_B4)
  loc_13D7095: var_A0 = CVar(((var_B4.Top + var_C0.Height) + CDbl(&H1E))) 'Single
  loc_13D70A4: Me.DGHelp.Top = CVar(var_B4.Left)
  loc_13D70C9: Me.FGrid2.Rows = 1
  loc_13D70DE: Set var_8C = Me.FGrid2
  loc_13D70E4: var_8C.Cols = 1
  loc_13D7155: var_128 = "SELECT RoomMast.Code AS [SELECT], RoomMast.Code AS RoomNo ,GuestFolio.Docid as FolioNoDocid,  RoomMast.Name AS Quot," & IIf((MemVar_1F953B0 = "A"), " GuestFolio.Vdate ", "convert(char,GuestFolio.vDate ,103)") 
  loc_13D7169: var_1C8 = " as [Departure Date], GuestProf.Name AS [Guest Name], GuestProf.GuestStatus AS Status, SubGroup.Name AS [Company Name],GuestProf.Add1 AS Address1,GuestProf.Add2 AS Address2,GuestProf.CityName AS [City Name],GuestProf.StateName AS [State Name],GuestProf.CountryName AS [Country Name], GuestFolio.FolioNo AS FolioNo,Guestprof.Code as GuestCode,GuestFolio.Mfoliono,GuestFolio.MFolioNoDocId FROM ((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) "
  loc_13D716E: var_1D8 = var_128 & " as [CheckIn Date] ," & IIf((MemVar_1F953B0 = "A"), " RoomOcc.DepDate", "convert(char,RoomOcc.DepDate ,103)") & var_1C8 
  loc_13D7172: var_1E8 = "INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) Left JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code WHERE (GuestFolio.LOGSITE_CODE='"
  loc_13D7198: var_268 = "') AND (GuestFolio.DocId = GuestFolio.mFolioNoDocId) AND (roomocc.type not in ('C','O') or roomocc.type is null)  AND ROOMMAST.TYPE='RO' and GuestFolio.Docid Not in (Select Distinct Folionodocid from paycharge where Bill_No is not null and bill_no<>'' and folionodocid<>'' and folionodocid is not null and Settledate is NULL) ORDER BY RoomMast.Code"
  loc_13D71AB: unk_4780F7.Execute CStr(var_1D8 & var_1E8 & CVar(MemVar_1F95078) & "' And RoomMast.LOGSITE_CODE='" & CVar(MemVar_1F95078) & var_268), var_29C, -1
  loc_13D71BC: Set global_52 = var_8C
  loc_13D71FA: CVarUnk
  loc_13D71FF: VerifyVarObj
  loc_13D7205: Set var_8C = Me.FGrid
  loc_13D720B: LateIdStAd
  loc_13D721D: Set var_8C = Me.FGrid
  loc_13D723D: var_D8 = Me.FGrid.Rows
  loc_13D7253: For var_2A0 = 1 To CInt((CLng(var_D8) - 1)): var_86 = var_2A0 'Integer
  loc_13D725D:   var_A0 = CVar(CLng(var_86)) 'Long
  loc_13D7262:   var_E8 = 0
  loc_13D726B:   var_138 = vbNullString
  loc_13D7275:   Set var_8C = Me.FGrid
  loc_13D727B:   LateIdCallSt
  loc_13D7289: Next var_2A0 'Integer
  loc_13D728E: var_A0 = 0
  loc_13D7297: var_E8 = 0
  loc_13D72A0: var_138 = &H352
  loc_13D72AD: Set var_8C = Me.FGrid
  loc_13D72B3: LateIdCallSt
  loc_13D72BE: var_A0 = 1
  loc_13D72C7: var_E8 = 0
  loc_13D72D0: var_138 = &H384
  loc_13D72DD: Set var_8C = Me.FGrid
  loc_13D72E3: LateIdCallSt
  loc_13D72EE: var_A0 = 2
  loc_13D72F7: var_E8 = 0
  loc_13D7300: var_138 = 0
  loc_13D730D: Set var_8C = Me.FGrid
  loc_13D7313: LateIdCallSt
  loc_13D731E: var_A0 = 3
  loc_13D7327: var_E8 = 0
  loc_13D7330: var_138 = 0
  loc_13D733D: Set var_8C = Me.FGrid
  loc_13D7343: LateIdCallSt
  loc_13D734E: var_A0 = 4
  loc_13D7357: var_E8 = 0
  loc_13D7360: var_138 = 0
  loc_13D736D: Set var_8C = Me.FGrid
  loc_13D7373: LateIdCallSt
  loc_13D737E: var_A0 = 5
  loc_13D7387: var_E8 = 0
  loc_13D7390: var_138 = &H44C
  loc_13D739D: Set var_8C = Me.FGrid
  loc_13D73A3: LateIdCallSt
  loc_13D73AE: var_A0 = 6
  loc_13D73B7: var_E8 = 0
  loc_13D73C0: var_138 = &HB22
  loc_13D73CD: Set var_8C = Me.FGrid
  loc_13D73D3: LateIdCallSt
  loc_13D73DE: var_A0 = 7
  loc_13D73E7: var_E8 = 0
  loc_13D73F0: var_138 = 0
  loc_13D73FD: Set var_8C = Me.FGrid
  loc_13D7403: LateIdCallSt
  loc_13D740E: var_A0 = 8
  loc_13D7417: var_E8 = 0
  loc_13D7420: var_138 = &HA8C
  loc_13D742D: Set var_8C = Me.FGrid
  loc_13D7433: LateIdCallSt
  loc_13D743E: var_A0 = 9
  loc_13D7447: var_E8 = 0
  loc_13D7450: var_138 = 0
  loc_13D745D: Set var_8C = Me.FGrid
  loc_13D7463: LateIdCallSt
  loc_13D746E: var_A0 = &HA
  loc_13D7477: var_E8 = 0
  loc_13D7480: var_138 = 0
  loc_13D748D: Set var_8C = Me.FGrid
  loc_13D7493: LateIdCallSt
  loc_13D749E: var_A0 = &HB
  loc_13D74A7: var_E8 = 0
  loc_13D74B0: var_138 = &H6A4
  loc_13D74BD: Set var_8C = Me.FGrid
  loc_13D74C3: LateIdCallSt
  loc_13D74CE: var_A0 = &HC
  loc_13D74D7: var_E8 = 0
  loc_13D74E0: var_138 = 0
  loc_13D74ED: Set var_8C = Me.FGrid
  loc_13D74F3: LateIdCallSt
  loc_13D74FE: var_A0 = &HD
  loc_13D7507: var_E8 = 0
  loc_13D7510: var_138 = 0
  loc_13D751D: Set var_8C = Me.FGrid
  loc_13D7523: LateIdCallSt
  loc_13D752E: var_A0 = &HE
  loc_13D7537: var_E8 = 0
  loc_13D7540: var_138 = 0
  loc_13D754D: Set var_8C = Me.FGrid
  loc_13D7553: LateIdCallSt
  loc_13D755E: var_A0 = &HF
  loc_13D7567: var_E8 = 0
  loc_13D7570: var_138 = 0
  loc_13D757D: Set var_8C = Me.FGrid
  loc_13D7583: LateIdCallSt
  loc_13D758E: var_A0 = &H10
  loc_13D7597: var_E8 = 0
  loc_13D75A0: var_138 = 0
  loc_13D75AD: Set var_8C = Me.FGrid
  loc_13D75B3: LateIdCallSt
  loc_13D75BE: var_A0 = &H11
  loc_13D75C7: var_E8 = 0
  loc_13D75E3: LateIdCallSt
  loc_13D7602: var_27C = "SELECT RoomMast.Code AS RoomNo, GuestProf.Name AS GuestName, GuestFolio.DocId AS FolioNoDocid,GuestFolio.FolioNo AS FolioNo FROM ((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.Docid = GuestFolio.Docid) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code WHERE ((GuestFolio.LOGSITE_CODE='" & MemVar_1F95078
  loc_13D7617: var_2AC = var_27C & "' And RoomMast.LOGSITE_CODE='" & MemVar_1F95078 & "') AND (GuestFolio.mFolioNo is Null OR GuestFolio.mFolioNo=GuestFolio.FolioNo or GuestFolio.mFolioNo=0) AND (((RoomOcc.Type) Not In ('C','O')) AND ((RoomMast.Type)='RO')) OR (((RoomOcc.Type) Is Null) AND ((RoomMast.Type)='RO'))) and GuestFolio.Docid Not in (Select Distinct Folionodocid from paycharge where Bill_No is not null and bill_no<>'' and folionodocid<>'' and folionodocid is not null and Settledate is NULL)  ORDER BY RoomMast.Code"
  loc_13D7620: unk_4780F7.Execute var_2AC, var_D8, -1
  loc_13D7653: CVarUnk
  loc_13D7658: VerifyVarObj
  loc_13D765E: Set var_8C = Me.DGHelp
  loc_13D7664: LateIdStAd
  loc_13D7681: Me.DGHelp.Visible = False
  loc_13D7695: Me.cmdTransferCharge.Enabled = False
  loc_13D76AE: Call 0.Method_Form_Load0 (1, var_B4, 0, Me.chkSelectALL, Me.FGrid, Me.chkSelectALL, Me.chkSelectALL)
  loc_13D76B6: var_B4.Visible = 0
  loc_13D76D5: Me.FGrid1.Rows = 1
  loc_13D76DD: var_A0 = 0
  loc_13D76E6: var_E8 = 0
  loc_13D76EF: var_138 = &HA
  loc_13D76FC: Set var_8C = Me.FGrid1
  loc_13D7702: LateIdCallSt
  loc_13D770D: var_A0 = 1
  loc_13D7716: var_E8 = 0
  loc_13D771F: var_138 = &H3E8
  loc_13D772C: Set var_8C = Me.FGrid1
  loc_13D7732: LateIdCallSt
  loc_13D773D: var_A0 = 2
  loc_13D7746: var_E8 = 0
  loc_13D774F: var_138 = 0
  loc_13D775C: Set var_8C = Me.FGrid1
  loc_13D7762: LateIdCallSt
  loc_13D776D: var_A0 = 3
  loc_13D7776: var_E8 = 0
  loc_13D777F: var_138 = 0
  loc_13D778C: Set var_8C = Me.FGrid1
  loc_13D7792: LateIdCallSt
  loc_13D779D: var_A0 = 4
  loc_13D77A6: var_E8 = 0
  loc_13D77AF: var_138 = &H4B0
  loc_13D77BC: Set var_8C = Me.FGrid1
  loc_13D77C2: LateIdCallSt
  loc_13D77CD: var_A0 = 5
  loc_13D77D6: var_E8 = 0
  loc_13D77DF: var_138 = &H3E8
  loc_13D77EC: Set var_8C = Me.FGrid1
  loc_13D77F2: LateIdCallSt
  loc_13D77FD: var_A0 = 6
  loc_13D7806: var_E8 = 0
  loc_13D780F: var_138 = &H3E8
  loc_13D781C: Set var_8C = Me.FGrid1
  loc_13D7822: LateIdCallSt
  loc_13D782D: var_A0 = 7
  loc_13D7836: var_E8 = 0
  loc_13D783F: var_138 = &H4B0
  loc_13D784C: Set var_8C = Me.FGrid1
  loc_13D7852: LateIdCallSt
  loc_13D785D: var_A0 = 8
  loc_13D7866: var_E8 = 0
  loc_13D786F: var_138 = &H4B0
  loc_13D787C: Set var_8C = Me.FGrid1
  loc_13D7882: LateIdCallSt
  loc_13D788D: var_A0 = 9
  loc_13D7896: var_E8 = 0
  loc_13D789F: var_138 = &H4B0
  loc_13D78AC: Set var_8C = Me.FGrid1
  loc_13D78B2: LateIdCallSt
  loc_13D78BD: var_A0 = &HA
  loc_13D78C6: var_E8 = 0
  loc_13D78CF: var_138 = 0
  loc_13D78DC: Set var_8C = Me.FGrid1
  loc_13D78E2: LateIdCallSt
  loc_13D78ED: var_A0 = &HB
  loc_13D78F6: var_E8 = 0
  loc_13D78FF: var_138 = 0
  loc_13D790C: Set var_8C = Me.FGrid1
  loc_13D7912: LateIdCallSt
  loc_13D791D: Exit Sub
End Sub

Private Sub Form_Resize() 'E6F988
  'Data Table: 4780F4
  loc_E6F932: Call 0.Method_arg_50 (var_88)
  loc_E6F944: Me.LblFormCaption.Caption = var_88
  loc_E6F95D: Me.LblFormCaption.Left = CDbl(0)
  loc_E6F96B: Call 0.Method_arg_100 (var_90)
  loc_E6F97D: Me.LblFormCaption.Width = var_90
  loc_E6F985: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 '11B8A58
  'Data Table: 4780F4
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_C0 As MSHFlexGrid
  Dim var_D0 As Long
  Dim var_F4 As String
  Dim var_104 As Variant
  Dim var_130 As Variant
  Dim var_140 As Long
  Dim var_164 As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Long
  Dim var_1CC As Variant
  Dim var_1F0 As Variant
  Dim var_210 As Long
  loc_11B8654: On Error Goto loc_11B8A14
  loc_11B866A: Me.FGrid1.Col = 0
  loc_11B8694: Me.FGrid1.Row = CVar(CLng(Me.FGrid1.RowSel))
  loc_11B86B3: Me.FGrid1.CellFontName = "WINGDINGS"
  loc_11B86CD: Me.FGrid1.CellFontSize = CVar(CDbl(&HD))
  loc_11B86E8: Me.FGrid1.CellForeColor = &HFF0000
  loc_11B8703: var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11B8708: var_D0 = 0
  loc_11B8726: var_F4 = CStr(Me.FGrid1.TextMatrix))
  loc_11B873F: If (var_F4 = "ü") Then
  loc_11B8755:   var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11B875A:   var_D0 = 0
  loc_11B8763:   var_104 = vbNullString
  loc_11B876D:   Set var_C0 = Me.FGrid1
  loc_11B8773:   LateIdCallSt
  loc_11B87AA:   For var_118 = 0 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_86 = var_118 'Integer
  loc_11B87C3:     Me.FGrid1.Col = CVar(CLng(var_86))
  loc_11B87DE:     Me.FGrid1.CellBackColor = &HFFFFFF
  loc_11B87E9:   Next var_118 'Integer
  loc_11B87F1: Else
  loc_11B8804:   var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11B8809:   var_D0 = 0
  loc_11B8812:   var_104 = "ü"
  loc_11B881C:   Set var_C0 = Me.FGrid1
  loc_11B8822:   LateIdCallSt
  loc_11B8859:   For var_11C = 1 To CInt((CLng(Me.FGrid1.Cols) - 1)):   var_86 = var_11C 'Integer
  loc_11B8872:     Me.FGrid1.Col = CVar(CLng(var_86))
  loc_11B888D:     Me.FGrid1.CellBackColor = &HFF00
  loc_11B8898:   Next var_11C 'Integer
  loc_11B889D: End If
  loc_11B88B0: var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11B88B5: var_D0 = 1
  loc_11B88DE: var_130 = Me.FGrid1.Row
  loc_11B88E7: var_104 = CVar(CLng(var_130)) 'Long
  loc_11B88EC: var_140 = 4
  loc_11B88FF: var_164 = Me.FGrid1.TextMatrix)
  loc_11B891E: var_188 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11B8923: var_1A8 = &HE
  loc_11B8936: var_1CC = Me.FGrid1.TextMatrix)
  loc_11B8955: var_1F0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11B895A: var_210 = &HC
  loc_11B89D3: Call Proc_182_24_11F7E30(CStr(Me.FGrid1.TextMatrix)), CStr(var_164), CStr(var_1CC), CStr(Me.FGrid1.TextMatrix)), CStr(Me.FGrid1.TextMatrix)), 0, CVar(CLng(Me.FGrid1.Row)), Me.FGrid1.TextMatrix))
  loc_11B8A13: Exit Sub
  loc_11B8A14: ' Referenced from: 11B8654
  loc_11B8A1C: Set var_AC = Err()
  loc_11B8A22: Call 0.Method_arg_2C (var_F4, var_210, var_1F0, var_1CC, var_1A8)
  loc_11B8A43: MsgBox(CVar(var_F4), &H40, "Error...", var_130, var_164)
  loc_11B8A56: Exit Sub
End Sub

Public Sub Fgrid1_UnknownEvent_A(Index As Integer) 'E8F890
  'Data Table: 4780F4
  Dim Fgrid1_UnknownEvent_A0FF As Double
  loc_E8F81E: If (Index = &HD) Then
  loc_E8F82F:   Proc_303_0_FBACC8("	")
  loc_E8F837: End If
  loc_E8F856: If (CLng(Me.FGrid1.Rows) < 1) Then
  loc_E8F859:   Exit Sub
  loc_E8F85A: End If
  loc_E8F884: If ((CLng(Index) = &H20) And (CLng(Me.FGrid1.Col) = 0)) Then
  loc_E8F887:   Call Fgrid1_UnknownEvent_9()
  loc_E8F88C: End If
  loc_E8F88C: Exit Sub
  loc_E8F88D: Fgrid1_UnknownEvent_A0FF = 0
End Sub

Private Sub Fgrid1_UnknownEvent_10 'F88764
  'Data Table: 4780F4
  Dim var_AC As Variant
  Dim var_D0 As Long
  loc_F8862A: Me.FGrid1.Row = CVar(CLng(Me.FGrid1.RowSel))
  loc_F8864C: var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_F88651: var_D0 = 0
  loc_F88688: If (CStr(Me.FGrid1.TextMatrix)) <> "ü") Then
  loc_F886B0:   For var_F8 = 0 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_86 = var_F8 'Integer
  loc_F886C9:     Me.FGrid1.Col = CVar(CLng(var_86))
  loc_F886E4:     Me.FGrid1.CellBackColor = &HFFFFFF
  loc_F886EF:   Next var_F8 'Integer
  loc_F886F7: Else
  loc_F8871C:   For var_FC = 0 To CInt((CLng(Me.FGrid1.Cols) - 1)):   var_86 = var_FC 'Integer
  loc_F88735:     Me.FGrid1.Col = CVar(CLng(var_86))
  loc_F88750:     Me.FGrid1.CellBackColor = &HFF00
  loc_F8875B:   Next var_FC 'Integer
  loc_F88760: End If
  loc_F88760: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E346E4
  'Data Table: 4780F4
  loc_E346D8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E346DB:   Call DGHelp_UnknownEvent_9()
  loc_E346E0: End If
  loc_E346E0: Exit Sub
End Sub

Public Sub FGPoint_UnknownEvent_A(Index As Integer) 'E03550
  'Data Table: 4780F4
  loc_E03546: If (Index = &HD) Then
  loc_E03549:   Call DGHelp_UnknownEvent_9()
  loc_E0354E: End If
  loc_E0354E: Exit Sub
End Sub

Public Sub DGridTxtPointSet(DGrid, Rst, TxtIndex, PointerGrid) '1193424
  'Data Table: 4780F4
  Dim var_A4 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_B4 As Variant
  Dim var_108 As Variant
  Dim var_F4 As Variant
  Dim Me As DataGrid
  Dim var_158 As Variant
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_90 As Double
  loc_1193045: If (Me.Recordset15.EOF = 0) Then
  loc_1193050:   If Not((PointerGrid Is Nothing)) Then
  loc_1193061:     Me.Font.Name = "MS SANS SARIFF"
  loc_1193076:     Me.HeadFont.Name = "SYSTEM"
  loc_1193092:     Me.Font.Size = 9.75
  loc_11930AE:     Me.HeadFont.Size = 9.75
  loc_11930C5:     Me.HeadLines = 1.5
  loc_11930D9:     Me.RowHeight = &H10E
  loc_11930F0:     var_E4 = (Me.Columns.Count + 1)
  loc_11930F6:     var_B4 = CVar(CLng(var_E4)) 'Long
  loc_1193124:     var_E4 = (Me.Columns.Count - 1)
  loc_1193130:     For var_F8 = 0 To CInt(var_E4): var_86 = var_F8 'Integer
  loc_119313A:       var_B4 = CVar(CLng(var_86)) 'Long
  loc_1193159:       var_108 = CVar(CLng(Me.Columns.width)) 'Long
  loc_1193161:       LateIdCallSt
  loc_1193170:       var_B4 = 0
  loc_119317D:       var_108 = CVar(CLng(var_86)) 'Long
  loc_119319B:       var_E4 = CVar(CStr(Me.Columns.TEXT)) 'String
  loc_11931A2:       LateIdCallSt
  loc_11931DA:       If (Me.Columns.Alignment = 0) Then
  loc_11931E1:         var_A4 = CVar(CLng(var_86)) 'Long
  loc_11931EC:         var_F4 = CVar(CInt(1)) 'Integer
  loc_11931F3:         LateIdCallSt
  loc_11931FE:       Else
  loc_1193202:         var_A4 = CVar(CLng(var_86)) 'Long
  loc_119320D:         var_F4 = CVar(CInt(7)) 'Integer
  loc_1193214:         LateIdCallSt
  loc_119321C:       End If
  loc_119321F:     Next var_F8 'Integer
  loc_1193236:     Me.Height = CVar(CDbl(Me.RowHeight))
  loc_119323E:     var_A4 = 0
  loc_1193251:     var_F4 = CVar(CLng(Me.RowHeight)) 'Long
  loc_1193259:     LateIdCallSt
  loc_1193279:     var_D4 = (Me.Row - 1)
  loc_1193289:     var_158 = (Me.top + (Me.Columns.Alignment * Me.RowHeight))
  loc_1193295:     var_178 = (var_158 + Me.RowHeight)
  loc_119329E:     var_188 = (var_178 + 260)
  loc_11932AC:     Me.Top = CVar(CDbl(var_188))
  loc_11932CF:     var_D4 = (Me.left + 310)
  loc_11932DD:     Me.Left = CVar(CDbl(Me.Columns.Alignment))
  loc_1193306:     Set var_18C = DGHelp.DispID_FFFFFE00
  loc_119330C:     Me.DGHelp.ColumnLabelCount = Me.Font.Size
  loc_1193325:     var_E4 = Me.Font.Name
  loc_119333A:     Set var_18C = DGHelp.DispID_FFFFFE00
  loc_1193340:     Call {33AD4EFB-6699-11CF-B70C00AA0060D393}.DispID_0
  loc_119336E:     Set var_18C = DGHelp.DispID_FFFFFE00
  loc_1193374:     Me.DGHelp.RowLabelCount = Me.Font.Bold
  loc_119339D:     var_E4 = (Me.Columns.Count - 1)
  loc_11933A9:     For var_190 = 0 To CInt(Me.Font.Bold): var_86 = var_190 'Integer
  loc_11933D4:       If (Me.Columns.Visible = True) Then
  loc_11933DA:         var_B4 = CVar(var_90) 'Double
  loc_11933F6:         var_E4 = (var_86 + Me.Columns.width)
  loc_11933FB:         var_90 = CSng(Me.Font.Bold)
  loc_1193407:       End If
  loc_119340A:     Next var_190 'Integer
  loc_1193416:     var_A4 = CVar((var_90 - CDbl(&H14))) 'Single
  loc_119341E:     Me.Width = 1
  loc_1193423:   End If
  loc_1193423: End If
  loc_1193423: Exit Sub
End Sub

Public Sub Proc_182_23_12BDC40(arg_C) '12BDC40
  'Data Table: 4780F4
  Dim var_E4 As Variant
  Dim var_AC As String
  Dim var_BC As String
  Dim var_D4 As Variant
  Dim Me As Recordset15
  Dim var_A8 As Variant
  Dim var_104 As Variant
  Dim var_F4 As Variant
  Dim var_144 As MSHFlexGrid
  Dim var_114 As Variant
  Dim var_140 As Variant
  Dim var_158 As Variant
  loc_12BD610: On Error Goto loc_12BDBDA
  loc_12BD61D: Set global_84 = New 
  loc_12BD62F: Me.Recordset15.CursorLocation = 3
  loc_12BD652: var_AC = "SELECT RoomMast.Code AS SearchCode, RoomMast.Code AS RoomNo, RoomMast.Name AS Quot, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.ChkOutDate, RoomOcc.ChkOutTime, RoomOcc.DepDate, RoomOcc.DepTime, GuestProf.Name as GuestName, GuestProf.GuestStatus, SubGroup.Name as CompanyNAme, GuestProf.Code AS GuestCode, SubGroup.SubCode as CompanyCode,RoomOcc.FolioNO as FolioNo, RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.Adult AS OldADult, RoomOcc.Children AS OldChild, RoomOcc.RoomCat AS RoomCatCode, RoomCat.Name AS RoomCat,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName,GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3,GUESTSTAT.NAME AS STATUSNAME,roomocc.Docid,GuestFolio.Mfoliono,GuestFolio.MfolionoDOCID,RoomOcc.PlanCode  " & "FROM (((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS WHERE ROOMMAST.LOGSITE_CODE='"
  loc_12BD66E: var_BC = var_AC & MemVar_1F95078 & "' AND ROOMOCC.LOGSITE_CODE='" & MemVar_1F95078 & "' AND Roommast.type='RO'  and GuestFolio.Mfoliono="
  loc_12BD681: var_D4 = CVar(var_BC & CStr(arg_C) & " and RoomMast.Code in (Select ISNULL(RoomNo,'') from RoomOcc where isnull(type,'')<>'C' and isnull(type,'')<>'O')  and isnull(RoomOcc.type,'')<>'C' and isnull(RoomOcc.type,'')<>'O' Order by RoomCat.Name,RoomMast.Code,ROOMOCC.CHKOUTDATE ") 'String
  loc_12BD68B: Me.Open var_D4, CVar(MemVar_1F95044), 2
  loc_12BD6B7: Me.FGrid2.Rows = 1
  loc_12BD6D2: Me.FGrid2.Cols = 1
  loc_12BD6DE: var_A2 = CByte(0) 'Byte
  loc_12BD6E6: var_A4 = CByte(0) 'Byte
  loc_12BD6EF: var_E4 = CVar(CLng(var_A4)) 'Long
  loc_12BD6F4: var_104 = &H1F4
  loc_12BD701: Set var_A8 = Me.FGrid2
  loc_12BD707: LateIdCallSt
  loc_12BD71B: var_118 = Me.RecordCount
  loc_12BD729: If (var_118 > 0) Then
  loc_12BD732:   Me.MoveFirst
  loc_12BD765:   var_A0 = CStr(Me.Fields.Item("RoomCat").Value)
  loc_12BD772: End If
  loc_12BD772: var_E4 = 0
  loc_12BD77B: var_104 = 0
  loc_12BD78F: Set var_A8 = Me.FGrid2
  loc_12BD795: LateIdCallSt
  loc_12BD7AB: var_A2 = CByte((CInt(var_A2) + 1)) 'Byte
  loc_12BD7AF: ' Referenced from: 12BDBC1
  loc_12BD7C1: If Not(Me.EOF) Then
  loc_12BD804:   If (CVar(var_A0) = Me.Fields.Item("RoomCat").Value) Then
  loc_12BD807:     ' Referenced from: 12BDAD5
  loc_12BD80B:     Set var_144 = Me.FGrid2
  loc_12BD829:     If ((CLng(var_144.Cols) - 1) < CLng(var_A2)) Then
  loc_12BD83E:       var_E4 = CVar((CLng(var_144.Cols) + 1)) 'Long
  loc_12BD846:       var_144.Cols = "RoomCat"
  loc_12BD84E:     End If
  loc_12BD853:     var_F4 = CVar(CLng(var_A4)) 'Long
  loc_12BD85D:     var_114 = CVar(CLng(var_A2)) 'Long
  loc_12BD890:     var_140 = CVar(CStr(Me.Fields.Item("RoomNo").Value)) 'String
  loc_12BD897:     LateIdCallSt
  loc_12BD91B:     If (Me.Fields.Item("FolioNo").Value = Me.Fields.Item("mFolioNo").Value) Then
  loc_12BD932:       Me.FGrid2.Row = CVar(CLng(var_A4))
  loc_12BD94E:       Me.FGrid2.Col = CVar(CLng(var_A2))
  loc_12BD969:       Me.FGrid2.CellBackColor = &HFDE1FF
  loc_12BD9AD:       Me.FGrid2.Tag = CVar(CStr(Me.Fields.Item("RoomNo").Value))
  loc_12BD9C2:     End If
  loc_12BD9C7:     var_E4 = CVar(CLng(var_A2)) 'Long
  loc_12BD9CC:     var_104 = &H28A
  loc_12BD9D9:     Set var_A8 = Me.FGrid2
  loc_12BD9DF:     LateIdCallSt
  loc_12BD9EF:     var_E4 = CVar(CLng(var_A2)) 'Long
  loc_12BD9FA:     var_104 = CVar(CInt(4)) 'Integer
  loc_12BDA02:     Set var_A8 = Me.FGrid2
  loc_12BDA08:     LateIdCallSt
  loc_12BDA1E:     var_A2 = CByte((CInt(var_A2) + 1)) 'Byte
  loc_12BDA24:     Set var_144 = Nothing 
  loc_12BDA2B:   Else
  loc_12BDA30:     var_F4 = CVar(CLng(var_A4)) 'Long
  loc_12BDA35:     var_114 = 0
  loc_12BDA6C:     var_140 = CVar(CStr(Me.Fields.Item("RoomCat").Value)) 'String
  loc_12BDA74:     Set var_158 = Me.FGrid2
  loc_12BDA7A:     LateIdCallSt
  loc_12BDAC0:     var_A0 = CStr(Me.Fields.Item("RoomCat").Value)
  loc_12BDAD1:     var_A2 = CByte(1) 'Byte
  loc_12BDAD5:     GoTo loc_12BD807
  loc_12BDAD8:   End If
  loc_12BDADE:   Me.MoveNext
  loc_12BDAF7:   If (Me.EOF = 0) Then
  loc_12BDB3A:     If CBool(CVar(var_A0) <> Me.Fields.Item("RoomCat").Value) Then
  loc_12BDB56:       var_E4 = CVar((CLng(Me.FGrid2.Rows) + 1)) 'Long
  loc_12BDB65:       Me.FGrid2.Rows = "RoomCat"
  loc_12BDB8F:       var_A4 = CByte((CLng(Me.FGrid2.Rows) - 1)) 'Byte
  loc_12BDB9E:       var_E4 = CVar(CLng(var_A4)) 'Long
  loc_12BDBA3:       var_104 = &H1F4
  loc_12BDBB0:       Set var_A8 = Me.FGrid2
  loc_12BDBB6:       LateIdCallSt
  loc_12BDBC1:     End If
  loc_12BDBC1:   End If
  loc_12BDBC1:   GoTo loc_12BD7AF
  loc_12BDBC4: End If
  loc_12BDBC8: Set var_A8 = Me.FGrid2
  loc_12BDBD9: Exit Sub
  loc_12BDBDA: ' Referenced from: 12BD610
  loc_12BDBE8: var_E4 = "FILL DETAILS"
  loc_12BDBF3: MsgBox(var_E4, 0, var_140, var_16C, var_17C)
  loc_12BDC1F: Call 0.Method_arg_1C (var_118, 0, var_140, var_16C, var_17C, FGrid2.DispID_FFFF, Err(), var_104)
  loc_12BDC2B: MsgBox(CVar(var_118), var_E4, var_158, var_140, var_114)
  loc_12BDC3E: Exit Sub
End Sub

Public Sub Proc_182_24_11F7E30(arg_C, arg_10, arg_14, arg_18, arg_1C) '11F7E30
  'Data Table: 4780F4
  Dim var_8C As MSHFlexGrid
  Dim var_86 As Integer
  Dim var_B0 As Variant
  Dim var_D0 As Long
  Dim var_110 As Variant
  Dim var_140 As Variant
  Dim var_174 As MSHFlexGrid
  Dim var_188 As String
  Dim var_1A8 As Variant
  Dim var_1B8 As Variant
  Dim var_220 As Variant
  Dim var_230 As Variant
  loc_11F79B4: On Error Goto loc_11F7DEC
  loc_11F79DC: For var_A0 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_88 = var_A0 'Integer
  loc_11F79E4:   var_86 = 0
  loc_11F79EB:   var_B0 = CVar(CLng(var_88)) 'Long
  loc_11F79F0:   var_D0 = 1
  loc_11F7A14:   var_100 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_11F7A27:   var_120 = Trim(arg_C)
  loc_11F7A37:   var_140 = CVar(CLng(var_88)) 'Long
  loc_11F7A66:   var_1A8 = 4 And (CStr(Me.FGrid1.TextMatrix)) = arg_10)
  loc_11F7A6E:   var_1B8 = CVar(CLng(var_88)) 'Long
  loc_11F7A9D:   var_220 = &HE And (CStr(Me.FGrid1.TextMatrix)) = arg_14)
  loc_11F7AA5:   var_230 = CVar(CLng(var_88)) 'Long
  loc_11F7B05:   If CBool(&HC And (CStr(Me.FGrid1.TextMatrix)) = arg_18)) Then
  loc_11F7B1B:     Me.FGrid1.Col = 0
  loc_11F7B36:     Me.FGrid1.Row = CVar(CLng(var_88))
  loc_11F7B4E:     Me.FGrid1.CellFontName = "WINGDINGS"
  loc_11F7B68:     Me.FGrid1.CellFontSize = CVar(CDbl(&HD))
  loc_11F7B83:     Me.FGrid1.CellForeColor = &HFF0000
  loc_11F7B9E:     var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F7BA3:     var_D0 = 0
  loc_11F7BDA:     If (CStr(Me.FGrid1.TextMatrix)) <> arg_1C) Then
  loc_11F7BF0:       var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F7BF5:       var_D0 = 0
  loc_11F7C09:       Set var_174 = Me.FGrid1
  loc_11F7C0F:       LateIdCallSt
  loc_11F7C34:       var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F7C39:       var_D0 = 0
  loc_11F7C57:       var_188 = CStr(Me.FGrid1.TextMatrix))
  loc_11F7C70:       If (var_188 <> "ü") Then
  loc_11F7C86:         var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F7C8B:         var_D0 = 0
  loc_11F7C94:         var_110 = vbNullString
  loc_11F7C9E:         Set var_174 = Me.FGrid1
  loc_11F7CA4:         LateIdCallSt
  loc_11F7CDB:         For var_29C = 0 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_86 = var_29C 'Integer
  loc_11F7CF4:           Me.FGrid1.Col = CVar(CLng(var_86))
  loc_11F7D0F:           Me.FGrid1.CellBackColor = &HFFFFFF
  loc_11F7D1A:         Next var_29C 'Integer
  loc_11F7D22:       Else
  loc_11F7D35:         var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F7D3A:         var_D0 = 0
  loc_11F7D43:         var_110 = "ü"
  loc_11F7D4D:         Set var_174 = Me.FGrid1
  loc_11F7D53:         LateIdCallSt
  loc_11F7D8A:         For var_2A0 = 1 To CInt((CLng(Me.FGrid1.Cols) - 1)):   var_86 = var_2A0 'Integer
  loc_11F7DA3:           Me.FGrid1.Col = CVar(CLng(var_86))
  loc_11F7DBE:           Me.FGrid1.CellBackColor = &HFF00
  loc_11F7DC9:         Next var_2A0 'Integer
  loc_11F7DCE:       End If
  loc_11F7DCE:     End If
  loc_11F7DCE:   End If
  loc_11F7DD1: Next var_A0 'Integer
  loc_11F7DDA: Set var_8C = Me.FGrid1
  loc_11F7DEB: Exit Sub
  loc_11F7DEC: ' Referenced from: 11F79B4
  loc_11F7DF4: Set var_8C = Err()
  loc_11F7DFA: Call 0.Method_arg_2C (var_188)
  loc_11F7E1B: MsgBox(CVar(var_188), &H40, "Error...", var_100, var_120)
  loc_11F7E2E: Exit Sub
End Sub

Public Sub Proc_182_25_1139960
  'Data Table: 4780F4
  Dim var_C8 As Variant
  Dim var_98 As Variant
  Dim var_260 As TextBox
  Dim var_F8 As String
  Dim var_118 As Variant
  Dim var_198 As Variant
  Dim var_1A8 As String
  Dim var_1C8 As String
  Dim var_248 As String
  Dim var_284 As Variant
  Dim var_294 As String
  Dim unk_4780F7 As Connection15
  Dim var_25C As MSHFlexGrid
  loc_1139682: Set var_25C = Me.Txt
  loc_1139688: Call 0.Method_Proc_182_25_11399600 (CInt(1), var_260)
  loc_11396AD: var_F8 = "SELECT RoomMast.Code AS [S    All], RoomMast.Code AS RoomNo , GuestFolio.Docid as FolioNoDocid, GuestProf.Name AS [Guest Name], RoomMast.Name AS Quot,"
  loc_11396C5: var_198 = var_F8 & IIf((MemVar_1F953B0 = "A"), " GuestFolio.Vdate ", "convert(char,GuestFolio.vDate ,103)") & " as [CheckIn Date] ," & IIf((MemVar_1F953B0 = "A"), " RoomOcc.DepDate", "convert(char,RoomOcc.DepDate ,103)") 
  loc_11396C9: var_1A8 = " as [Departure Date], GuestProf.GuestStatus AS Status, SubGroup.Name AS [Company Name],GuestProf.Add1 AS Address1,GuestProf.Add2 AS Address2,GuestProf.CityName AS [City Name],GuestProf.StateName AS [State Name],GuestProf.CountryName AS [Country Name], GuestFolio.FolioNo AS FolioNo,Guestprof.Code as GuestCode,GuestFolio.Mfoliono FROM ((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) "
  loc_11396D2: var_1C8 = "INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) Left JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code WHERE ((GuestFolio.LOGSITE_CODE='"
  loc_11396F8: var_248 = "') AND (GuestFolio.mFolioNo is Null or GuestFolio.mFolioNo=0) AND (roomocc.type not in ('C','O') or roomocc.type is null)  AND ROOMMAST.TYPE='RO' AND RoomOcc.RoomNo <> '"
  loc_1139708: var_284 = var_198 & var_1A8 & var_1C8 & CVar(MemVar_1F95078) & "' And RoomMAst.LOGSITE_CODE='" & CVar(MemVar_1F95078) & var_248 & CVar(Val(var_260.Text)) 
  loc_113970C: var_294 = "')  and GuestFolio.Docid Not in (Select Distinct Folionodocid from paycharge where Bill_No is not null and bill_no<>'' and folionodocid<>'' and folionodocid is not null and Settledate is NULL) ORDER BY RoomMast.Code"
  loc_113971F: unk_4780F7.Execute CStr(var_284 & var_294), var_2C8, -1
  loc_1139730: Set global_52 = var_2CC
  loc_113977A: CVarUnk
  loc_113977F: VerifyVarObj
  loc_1139785: Set var_25C = Me.FGrid
  loc_113978B: LateIdStAd
  loc_113979D: Set var_25C = Me.FGrid
  loc_11397D3: For var_2DC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2DC 'Integer
  loc_11397DD:   var_98 = CVar(CLng(var_86)) 'Long
  loc_11397E2:   var_C8 = 0
  loc_11397EB:   var_118 = vbNullString
  loc_11397F5:   Set var_25C = Me.FGrid
  loc_11397FB:   LateIdCallSt
  loc_1139809: Next var_2DC 'Integer
  loc_113980E: var_98 = 2
  loc_1139817: var_C8 = 0
  loc_1139820: var_118 = &H7D0
  loc_113982D: Set var_25C = Me.FGrid
  loc_1139833: LateIdCallSt
  loc_113983E: var_98 = 3
  loc_1139847: var_C8 = 0
  loc_1139850: var_118 = 0
  loc_113985D: Set var_25C = Me.FGrid
  loc_1139863: LateIdCallSt
  loc_113986E: var_98 = 4
  loc_1139877: var_C8 = 0
  loc_1139880: var_118 = &H4B0
  loc_113988D: Set var_25C = Me.FGrid
  loc_1139893: LateIdCallSt
  loc_113989E: var_98 = 5
  loc_11398A7: var_C8 = 0
  loc_11398B0: var_118 = &H4B0
  loc_11398BD: Set var_25C = Me.FGrid
  loc_11398C3: LateIdCallSt
  loc_11398CE: var_98 = &HD
  loc_11398D7: var_C8 = 0
  loc_11398E0: var_118 = 0
  loc_11398ED: Set var_25C = Me.FGrid
  loc_11398F3: LateIdCallSt
  loc_11398FE: var_98 = &HE
  loc_1139907: var_C8 = 0
  loc_1139910: var_118 = 0
  loc_113991D: Set var_25C = Me.FGrid
  loc_1139923: LateIdCallSt
  loc_113992E: var_98 = &HF
  loc_1139937: var_C8 = 0
  loc_1139940: var_118 = 0
  loc_113994D: Set var_25C = Me.FGrid
  loc_1139953: LateIdCallSt
  loc_113995E: Exit Sub
End Sub

Public Sub Proc_182_26_133F86C
  'Data Table: 4780F4
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_E8 As String
  Dim var_EC As String
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_194 As Variant
  Dim unk_4780F7 As Connection15
  Dim Me As Recordset15
  loc_133F0AC: On Error Goto loc_133F828
  loc_133F0B2: var_88 = vbNullString
  loc_133F0BB: global_80 = vbNullString
  loc_133F0EE: For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8A = var_A4 'Integer
  loc_133F0F8:   var_B4 = CVar(CLng(var_8A)) 'Long
  loc_133F0FD:   var_D4 = 0
  loc_133F12C:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_133F13A:     If (vbNullString = vbNullString) Then
  loc_133F141:       var_B4 = CVar(CLng(var_8A)) 'Long
  loc_133F149:       var_D4 = CVar(CLng(2)) 'Long
  loc_133F169:       global_76 = CStr(Me.FGrid.TextMatrix))
  loc_133F17D:       var_B4 = CVar(CLng(var_8A)) 'Long
  loc_133F1B0:       global_80 = CVar(CLng(1)) & CStr(Me.FGrid.TextMatrix)) & "'"
  loc_133F1C3:       var_120 = " WHERE (RTrim(LTrim(RO.RoomNo))<>'"
  loc_133F1CC:       var_B4 = CVar(CLng(var_8A)) 'Long
  loc_133F1F4:       var_110 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_133F1FC:       var_130 = CVar(CLng(1)) & var_110 
  loc_133F205:       var_150 = var_130 & "' Or Ro.RoomNo is Null) And PayCharge.FolioNoDocid ='" 
  loc_133F20D:       var_160 = CVar(CLng(var_8A)) 'Long
  loc_133F21E:       Set var_194 = Me.FGrid
  loc_133F240:       var_88 = CStr(CVar(CLng(2)) & CVar(CStr(var_194.TextMatrix))) & "'")
  loc_133F262:     Else
  loc_133F26C:       var_E8 = global_80 & ",'"
  loc_133F273:       var_B4 = CVar(CLng(var_8A)) 'Long
  loc_133F2A6:       global_80 = CVar(CLng(1)) & CStr(Me.FGrid.TextMatrix)) & "'"
  loc_133F2C2:       var_E8 = var_88 & " OR PayCharge.FolioNoDocid ='"
  loc_133F2C9:       var_B4 = CVar(CLng(var_8A)) 'Long
  loc_133F2E0:       var_A0 = Me.FGrid.TextMatrix)
  loc_133F2F6:       var_88 = CVar(CLng(2)) & CStr(var_A0) & "'"
  loc_133F308:     End If
  loc_133F308:   End If
  loc_133F30B: Next var_A4 'Integer
  loc_133F314: Set var_90 = Me.FGrid1
  loc_133F348: If (((global_80 = vbNullString) Or (global_80 = "0")) Or (global_80 = vbNullString)) Then
  loc_133F373:   Me.FGrid1.Rows = 1
  loc_133F386:   Set var_90 = Me.chkSelectALL
  loc_133F38C:   Call 0.Method_Proc_182_26_133F86C0 (1, var_194, 0)
  loc_133F394:   var_194.Visible = Me.FGrid1.Text
  loc_133F3A6:   Set var_90 = Me.cmdTransferCharge
  loc_133F3AC:   var_90.Enabled = False
  loc_133F3B4:   Exit Sub
  loc_133F3B5: End If
  loc_133F3C9: var_E8 = "SELECT '' AS [SELECT], PayCharge.RoomNo As PRoomNO, CASE WHEN RO.RoomNo IS NULL THEN 'NA' ELSE RO.RoomNo END AS RoomNo, PayCharge.RoomType, convert(Varchar(11),PayCharge.VDate) AS [Dept Date], PayCharge.Comments , PayCharge.PayType, PayCharge.AmtCr AS Credit, PayCharge.AmtDr AS Debit, PayCharge.TipAmt, GuestProf.Name As [Guest Name], PayCharge.FolioNo, PayCharge.FolioNoDocid , PayCharge.RelatedFolioNo,PayCharge.VTime,RO.VPrefix From PayCharge Left Join GuestProf on guestprof.code=paycharge.guestProf Left Join (Select * From RoomOcc Where (Roomocc.Type Not in ('C') OR Roomocc.Type is Null)) RO on RO.FolioNO=paycharge.RelatedFolioNo " & var_88
  loc_133F3D0: var_EC = var_E8 & " And Paycharge.RelatedFolioNo<>0 ORDER BY PayCharge.RelatedFolioNo,PayCharge.RoomNo, PayCharge.Vdate, PayCharge.Vtime"
  loc_133F3D9: unk_4780F7.Execute var_EC, var_A0, -1
  loc_133F3EA: Set global_68 = var_90
  loc_133F416: If (Me.RecordCount <= 0) Then
  loc_133F441:   Me.FGrid1.Rows = 1
  loc_133F455:   Me.cmdTransferCharge.Enabled = False
  loc_133F468:   Set var_90 = Me.chkSelectALL
  loc_133F46E:   Call 0.Method_Proc_182_26_133F86C0 (1, var_194, 0)
  loc_133F476:   var_194.Visible = Me.FGrid1.Text
  loc_133F482:   Exit Sub
  loc_133F486: Else
  loc_133F497:   Call 0.Method_Proc_182_26_133F86C0 (1, var_194, &HFF)
  loc_133F49F:   var_194.Visible = Me.chkSelectALL
  loc_133F4AB: End If
  loc_133F4BE: Me.FGrid1.Rows = 2
  loc_133F4D9: Me.FGrid1.FixedRows = 1
  loc_133F4EA: CVarUnk
  loc_133F4EF: VerifyVarObj
  loc_133F4F5: Set var_90 = Me.FGrid1
  loc_133F4FB: LateIdStAd
  loc_133F509: var_B4 = 1
  loc_133F512: var_D4 = 0
  loc_133F51B: var_120 = 0
  loc_133F528: Set var_90 = Me.FGrid1
  loc_133F52E: LateIdCallSt
  loc_133F539: var_B4 = 2
  loc_133F542: var_D4 = 0
  loc_133F54B: var_120 = &H2BC
  loc_133F558: Set var_90 = Me.FGrid1
  loc_133F55E: LateIdCallSt
  loc_133F569: var_B4 = 3
  loc_133F572: var_D4 = 0
  loc_133F57B: var_120 = 0
  loc_133F588: Set var_90 = Me.FGrid1
  loc_133F58E: LateIdCallSt
  loc_133F599: var_B4 = 4
  loc_133F5A2: var_D4 = 0
  loc_133F5AB: var_120 = &H384
  loc_133F5B8: Set var_90 = Me.FGrid1
  loc_133F5BE: LateIdCallSt
  loc_133F5C9: var_B4 = 5
  loc_133F5D2: var_D4 = 0
  loc_133F5DB: var_120 = 0
  loc_133F5E8: Set var_90 = Me.FGrid1
  loc_133F5EE: LateIdCallSt
  loc_133F5F9: var_B4 = 6
  loc_133F602: var_D4 = 0
  loc_133F60B: var_120 = 0
  loc_133F618: Set var_90 = Me.FGrid1
  loc_133F61E: LateIdCallSt
  loc_133F629: var_B4 = 7
  loc_133F632: var_D4 = 0
  loc_133F63B: var_120 = 0
  loc_133F648: Set var_90 = Me.FGrid1
  loc_133F64E: LateIdCallSt
  loc_133F659: var_B4 = 8
  loc_133F662: var_D4 = 0
  loc_133F66B: var_120 = 0
  loc_133F678: Set var_90 = Me.FGrid1
  loc_133F67E: LateIdCallSt
  loc_133F689: var_B4 = 9
  loc_133F692: var_D4 = 0
  loc_133F69B: var_120 = 0
  loc_133F6A8: Set var_90 = Me.FGrid1
  loc_133F6AE: LateIdCallSt
  loc_133F6B9: var_B4 = &HA
  loc_133F6C2: var_D4 = 0
  loc_133F6CB: var_120 = &H960
  loc_133F6D8: Set var_90 = Me.FGrid1
  loc_133F6DE: LateIdCallSt
  loc_133F6E9: var_B4 = &HB
  loc_133F6F2: var_D4 = 0
  loc_133F6FB: var_120 = 0
  loc_133F708: Set var_90 = Me.FGrid1
  loc_133F70E: LateIdCallSt
  loc_133F719: var_B4 = &HC
  loc_133F722: var_D4 = 0
  loc_133F72B: var_120 = 0
  loc_133F738: Set var_90 = Me.FGrid1
  loc_133F73E: LateIdCallSt
  loc_133F749: var_B4 = &HD
  loc_133F752: var_D4 = 0
  loc_133F75B: var_120 = 0
  loc_133F768: Set var_90 = Me.FGrid1
  loc_133F76E: LateIdCallSt
  loc_133F779: var_B4 = &HE
  loc_133F782: var_D4 = 0
  loc_133F78B: var_120 = 0
  loc_133F798: Set var_90 = Me.FGrid1
  loc_133F79E: LateIdCallSt
  loc_133F7B2: var_D4 = 0
  loc_133F7BB: var_120 = 0
  loc_133F7C8: Set var_90 = Me.FGrid1
  loc_133F7CE: LateIdCallSt
  loc_133F7DD: Set var_90 = Me.FGrid1
  loc_133F7FF: Call 0.Method_Proc_182_26_133F86C0 (1, var_194, 0, FGrid1.DispID_FFFF, Me.chkSelectALL, var_120, var_D4)
  loc_133F807: var_194.Value = &HF
  loc_133F81F: Me.cmdTransferCharge.Enabled = True
  loc_133F827: Exit Sub
  loc_133F828: ' Referenced from: 133F0AC
  loc_133F836: Call 0.Method_arg_2C (var_E8, Err(), var_120, var_D4)
  loc_133F857: MsgBox(CVar(var_E8), &H10, "Error...", var_110, var_130)
  loc_133F86A: Exit Sub
End Sub

Public Sub Proc_182_27_E99294
  'Data Table: 4780F4
  loc_E9922C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E9923E:   Me.DGHelp.Visible = False
  loc_E99246: End If
  loc_E99262: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E99274:   Me.FGPoint.Visible = False
  loc_E9927C: End If
  loc_E99288: Me.cmdTransferCharge.Enabled = False
  loc_E99290: Exit Sub
End Sub
