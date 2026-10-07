VERSION 5.00
Begin VB.Form FrmMergeCharge
  Caption = "Room Merge"
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
  ClientWidth = 11880
  ClientHeight = 7275
  Begin CheckBox chkSelectALL
    Caption = "Check1"
    Index = 1
    BackColor = &H808080&
    Left = 19530
    Top = 9675
    Width = 255
    Height = 255
    TabIndex = 8
  End
  Begin CheckBox chkSelectALL
    Caption = "Check1"
    Index = 0
    BackColor = &HFF0000&
    Left = 330
    Top = 975
    Width = 255
    Height = 255
    TabIndex = 5
  End
  Begin DataGrid DGHelp
    Left = 13635
    Top = 180
    Width = 6090
    Height = 2055
    TabIndex = 3
  End
  Begin MSFlexGrid FGPoint
    Left = 15585
    Top = 1860
    Width = 3225
    Height = 1800
    Visible = 0   'False
    TabIndex = 11
  End
  Begin CommandButton cmdTransferCharge
    Caption = "Transfer &Charges"
    Left = 12030
    Top = 3285
    Width = 1695
    Height = 375
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
    Left = 12690
    Top = 2610
    Width = 1455
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
  End
  Begin MSHFlexGrid FGrid
    Left = 285
    Top = 960
    Width = 10275
    Height = 7530
    TabIndex = 6
  End
  Begin MSHFlexGrid FGrid1
    Left = 19500
    Top = 9660
    Width = 870
    Height = 1335
    TabIndex = 9
  End
  Begin MSHFlexGrid FGrid2
    Left = 10605
    Top = 5400
    Width = 4770
    Height = 3075
    TabIndex = 12
  End
  Begin BtnEnh BtnroomMerge
    Left = 10890
    Top = 3735
    Width = 1350
    Height = 1350
    TabIndex = 14
  End
  Begin BtnEnh BtnExit
    Left = 12495
    Top = 3750
    Width = 1395
    Height = 1290
    TabIndex = 15
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
    Left = 12690
    Top = 2610
    Width = 1455
    Height = 255
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
    Caption = "List of Room"
    Index = 0
    BackColor = &HFF0000&
    ForeColor = &H80000005&
    Left = 210
    Top = 585
    Width = 10425
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
    Left = 19800
    Top = 8145
    Width = 750
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
    Caption = "Select Leader Room"
    Index = 5
    ForeColor = &HC0&
    Left = 10680
    Top = 2565
    Width = 1950
    Height = 240
    TabIndex = 0
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

Attribute VB_Name = "FrmMergeCharge"


Private Sub Txt_Change(Index As Integer) 'E5A71C
  'Data Table: 47FC44
  Dim Txt_Change4 As Variant
  Dim var_33BC As Double
  loc_E5A6E6: If (Index = CInt(1)) Then
  loc_E5A6F3:   Txt_Change4 = Me.FGrid1.Text
  loc_E5A711:   Me.FGrid1.Rows = 1
  loc_E5A719: End If
  loc_E5A719: Exit Sub
  loc_E5A71A: var_33BC = Txt_Change4
End Sub

Private Sub Txt_GotFocus(Index As Integer) '103FD30
  'Data Table: 47FC44
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_103FAF6: Set var_88 = Me.Txt
  loc_103FAFC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_103FB0A: Proc_6_74_E23240(var_8C)
  loc_103FB16: Call Proc_136_29_E99350(var_8C)
  loc_103FB1B: On Error Goto loc_103FCEA
  loc_103FB21: var_92 = Index
  loc_103FB2C: If (var_92 = CInt(1)) Then
  loc_103FB46:   If (Me.RecordCount > 0) Then
  loc_103FB54:     Set var_8C = Me.FGPoint
  loc_103FB6C:     Call DGridTxtPointSet(Me.DGHelp, global_64, Index, var_8C)
  loc_103FB7A:   End If
  loc_103FBC8:   Set var_88 = Me.Txt
  loc_103FBCE:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_103FBD6:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_103FBEE:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_103FBFE:     Set var_88 = Me.Txt
  loc_103FC04:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_103FC0C:     var_8C.Tag = vbNullString
  loc_103FC18:     Exit Sub
  loc_103FC19:   End If
  loc_103FC26:   Set var_88 = Me.Txt
  loc_103FC2C:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_103FC34:   var_A0 = var_8C.Text
  loc_103FC46:   var_B0 = "RoomNo"
  loc_103FC81:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_103FC8A:     Me.MoveFirst
  loc_103FCAD:     Set var_88 = Me.Txt
  loc_103FCB3:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo='")
  loc_103FCBB:     0 = var_8C.Text
  loc_103FCD4:     Me.Find 1 & var_A0 & "'", var_B0, 
  loc_103FCE9:   End If
  loc_103FCE9: End If
  loc_103FCE9: Exit Sub
  loc_103FCEA: ' Referenced from: 103FB1B
  loc_103FCF2: Set var_88 = Err()
  loc_103FCF8: Call 0.Method_arg_2C (var_A0)
  loc_103FD19: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_11C)
  loc_103FD2C: Exit Sub
  loc_103FD2D: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1199708
  'Data Table: 47FC44
  Dim var_90 As Variant
  Dim var_D4 As Variant
  Dim var_A4 As Variant
  Dim var_114 As Variant
  Dim var_124 As String
  Dim var_1B4 As String
  Dim var_1C4 As Variant
  Dim var_1D4 As String
  Dim var_254 As String
  Dim unk_47FC47 As Connection15
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_290 As Column
  loc_119934A: If (CLng(Shift) = &H1B) Then
  loc_119935B:   Set var_8C = Me.Txt
  loc_1199361:   Call 0.Method_Txt_KeyDown0 (CInt(1), var_90)
  loc_1199369:   var_90.Text = vbNullString
  loc_1199375:   Call Proc_136_29_E99350()
  loc_119937A:   Exit Sub
  loc_119937B: End If
  loc_1199389: If (KeyCode = CInt(1)) Then
  loc_11993F5:   var_114 = "SELECT RoomMast.Code AS [S    All], RoomMast.Code AS RoomNo ,GuestFolio.Docid as FolioNoDocid, RoomMast.Name AS Quot," & IIf((MemVar_1F953B0 = "A"), " GuestFolio.Vdate ", "convert(char,GuestFolio.vDate ,103)") 
  loc_1199409:   var_1B4 = " as [Departure Date], GuestProf.Name AS [Guest Name], GuestProf.GuestStatus AS Status, SubGroup.Name AS [Company Name],GuestProf.Add1 AS Address1,GuestProf.Add2 AS Address2,GuestProf.CityName AS [City Name],GuestProf.StateName AS [State Name],GuestProf.CountryName AS [Country Name], GuestFolio.FolioNo AS FolioNo,Guestprof.Code as GuestCode,GuestFolio.Mfoliono FROM ((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) "
  loc_119940E:   var_1C4 = var_114 & " as [CheckIn Date] ," & IIf((MemVar_1F953B0 = "A"), " RoomOcc.DepDate", "convert(char,RoomOcc.DepDate ,103)") & var_1B4 
  loc_1199412:   var_1D4 = "INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) Left JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code WHERE ((GuestFolio.LOGSITE_CODE='"
  loc_1199438:   var_254 = "') AND (GuestFolio.mFolioNo is Null OR GuestFolio.mFolioNo=0) AND (roomocc.type not in ('C','O') or roomocc.type is null)  AND ROOMMAST.TYPE='RO') and GuestFolio.Docid Not in (Select Distinct Folionodocid from paycharge where Bill_No is not null and bill_no<>'' and folionodocid<>'' and folionodocid is not null and Settledate is NULL) ORDER BY RoomMast.Code"
  loc_119944B:   unk_47FC47.Execute CStr(var_1C4 & var_1D4 & CVar(MemVar_1F95078) & "' And RoomMast.LOGSITE_CODE='" & CVar(MemVar_1F95078) & var_254), var_288, -1
  loc_119945C:   Set global_52 = var_8C
  loc_119949A:   CVarUnk
  loc_119949F:   VerifyVarObj
  loc_11994A5:   Set var_8C = Me.FGrid
  loc_11994AB:   LateIdStAd
  loc_11994E1:   Set var_290 = Nothing
  loc_119950F:   Proc_6_69_134A630(Me.DGHelp, Me.Txt, KeyCode, global_64, Shift, 0, 0)
  loc_119957E:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1199585:     Set var_290 = Me.DGHelp
  loc_11995A4:     Proc_6_138_106E830(var_290, global_64, KeyCode, Me.FGPoint, var_290, Me.FGPoint)
  loc_11995B2:   End If
  loc_11995C0:   Me.DGHelp.Visible = True
  loc_11995DA:   Set var_8C = Me.DGHelp
  loc_11995F9:   DGHelp.DispID_69.Item(1).Width = CDbl(2600)
  loc_119961B:   Set var_8C = Me.DGHelp
  loc_119963A:   DGHelp.DispID_69.Item(2).Width = CDbl(0)
  loc_119964B:   var_A4 = 1
  loc_1199654:   var_D4 = &HA28
  loc_1199661:   Set var_8C = Me.FGPoint
  loc_1199667:   LateIdCallSt
  loc_1199672:   var_A4 = 2
  loc_119967B:   var_D4 = 0
  loc_1199688:   Set var_8C = Me.FGPoint
  loc_119968E:   LateIdCallSt
  loc_11996BE:   For var_2AC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2AC 'Integer
  loc_11996C8:     var_A4 = CVar(CLng(var_86)) 'Long
  loc_11996CD:     var_D4 = 0
  loc_11996D6:     var_124 = vbNullString
  loc_11996E0:     Set var_8C = Me.FGrid
  loc_11996E6:     LateIdCallSt
  loc_11996F4:   Next var_2AC 'Integer
  loc_11996FF:   If (Shift = &HD) Then
  loc_1199702:     Call DGHelp_UnknownEvent_9()
  loc_1199707:   End If
  loc_1199707: End If
  loc_1199707: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F76E70
  'Data Table: 47FC44
  Dim arg_10 As Integer
  Dim var_9A As Integer
  Dim var_A4 As TextBox
  Dim var_A0 As DataGrid
  Dim var_98 As Variant
  loc_F76D33: var_88 = "0123456789"
  loc_F76D3C: Proc_6_133_E7FB08(var_98)
  loc_F76D45: arg_10 = CInt(var_98)
  loc_F76D4E: Proc_6_58_E06050(arg_10, arg_10)
  loc_F76D56: var_9A = KeyAscii
  loc_F76D61: If (var_9A = CInt(1)) Then
  loc_F76D6E:   If (CLng(arg_10) = &H1B) Then
  loc_F76D7F:     Set var_A0 = Me.Txt
  loc_F76D85:     Call 0.Method_Txt_KeyPress0 (CInt(1), var_A4, vbNullString)
  loc_F76D8D:     var_A4.Text = var_9A
  loc_F76D99:     Call Proc_136_29_E99350(arg_10)
  loc_F76D9E:     Exit Sub
  loc_F76D9F:   End If
  loc_F76DA5:   If (arg_10 <> 0) Then
  loc_F76DB6:     Set var_A0 = Me.Txt
  loc_F76DBC:     Call 0.Method_Txt_KeyPress0 (CInt(1), var_A4)
  loc_F76DC4:     var_A4.Text = vbNullString
  loc_F76DDE:     Proc_303_0_FBACC8("{HOME}")
  loc_F76DE6:   End If
  loc_F76E02:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F76E14:     var_A8 = "RoomNo"
  loc_F76E2F:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, arg_10)
  loc_F76E61:     Proc_6_138_106E830(Me.DGHelp, global_64, KeyAscii, Me.FGPoint)
  loc_F76E6F:   End If
  loc_F76E6F: End If
  loc_F76E6F: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E539A8
  'Data Table: 47FC44
  loc_E53982: Set var_88 = Me.Txt
  loc_E53988: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E53996: Proc_6_73_E23294(var_8C)
  loc_E539A2: Call Proc_136_28_1336E08(var_8C)
  loc_E539A7: Exit Sub
End Sub

Private Sub Txt_Click(Index As Integer) 'E2B4A8
  'Data Table: 47FC44
  loc_E2B48E: If (Index = CInt(1)) Then
  loc_E2B499:   var_8C = "{HOME}+{END}"
  loc_E2B49F:   Proc_303_0_FBACC8(var_8C, 0)
  loc_E2B4A7: End If
  loc_E2B4A7: Exit Sub
End Sub

Private Sub chkSelectALL_Click(Index As Integer) '118B498
  'Data Table: 47FC44
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_116 As Integer
  Dim var_88 As MSHFlexGrid
  Dim var_E0 As Long
  Dim var_12C As String
  loc_118B0B6: Set var_88 = Me.Txt
  loc_118B0BC: Call 0.Method_chkSelectALL_Click0 (CInt(1), var_8C)
  loc_118B0DB: If (var_8C.Text = vbNullString) Then
  loc_118B0EA:   Set var_88 = Me.chkSelectALL
  loc_118B0F0:   Call 0.Method_chkSelectALL_Click0 (Index, var_8C)
  loc_118B0F8:   var_8C.Value = 0
  loc_118B125:   MsgBox("Please Select Leader Room No.", &H40, "Error..", var_F0, var_110)
  loc_118B135:   Exit Sub
  loc_118B136: End If
  loc_118B139: var_116 = Index
  loc_118B142: If (var_116 = 0) Then
  loc_118B152:   Set var_88 = Me.chkSelectALL
  loc_118B158:   Call 0.Method_chkSelectALL_Click0 (Index, var_8C)
  loc_118B160:   var_118 = var_8C.Value
  loc_118B172:   If (var_118 = 1) Then
  loc_118B19A:     For var_11C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_112 = var_11C 'Integer
  loc_118B1B3:       Me.FGrid.Row = CVar(CLng(var_112))
  loc_118B1CE:       Me.FGrid.Col = 0
  loc_118B1E6:       Me.FGrid.CellFontName = "WINGDINGS"
  loc_118B200:       Me.FGrid.CellFontSize = CVar(CDbl(&HD))
  loc_118B21B:       Me.FGrid.CellForeColor = &HFF
  loc_118B227:       var_A0 = CVar(CLng(var_112)) 'Long
  loc_118B22C:       var_E0 = 0
  loc_118B235:       var_12C = "ü"
  loc_118B23F:       Set var_88 = Me.FGrid
  loc_118B245:       LateIdCallSt
  loc_118B275:       For var_140 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_114 = var_140 'Integer
  loc_118B28E:         Me.FGrid.Col = CVar(CLng(var_114))
  loc_118B2A9:         Me.FGrid.CellBackColor = &HFF00
  loc_118B2B4:       Next var_140 'Integer
  loc_118B2BC:     Next var_11C 'Integer
  loc_118B2DA:     var_A0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_118B2DF:     var_E0 = 0
  loc_118B2E8:     var_12C = vbNullString
  loc_118B2F2:     Set var_8C = Me.FGrid
  loc_118B2F8:     LateIdCallSt
  loc_118B30A:     Call FGrid_UnknownEvent_9()
  loc_118B30F:   End If
  loc_118B30F:   Exit For
  loc_118B312: End If
  loc_118B318: If (var_116 = 1) Then
  loc_118B328:   Set var_88 = Me.chkSelectALL
  loc_118B32E:   Call 0.Method_chkSelectALL_Click0 (Index, var_8C, var_118, var_8C)
  loc_118B336:   var_12C = var_8C.Value
  loc_118B348:   If (var_118 = 1) Then
  loc_118B370:     For var_144 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_112 = var_144 'Integer
  loc_118B389:       Me.FGrid1.Row = CVar(CLng(var_112))
  loc_118B3A4:       Me.FGrid1.Col = 0
  loc_118B3BC:       Me.FGrid1.CellFontName = "WINGDINGS"
  loc_118B3D6:       Me.FGrid1.CellFontSize = CVar(CDbl(&HD))
  loc_118B3F1:       Me.FGrid1.CellForeColor = &HFF
  loc_118B3FD:       var_A0 = CVar(CLng(var_112)) 'Long
  loc_118B402:       var_E0 = 0
  loc_118B40B:       var_12C = "ü"
  loc_118B415:       Set var_88 = Me.FGrid1
  loc_118B41B:       LateIdCallSt
  loc_118B44B:       For var_148 = 1 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_114 = var_148 'Integer
  loc_118B464:         Me.FGrid1.Col = CVar(CLng(var_114))
  loc_118B47F:         Me.FGrid1.CellBackColor = &HFF00
  loc_118B48A:       Next var_148 'Integer
  loc_118B492:     Next var_144 'Integer
  loc_118B497:     ' Referenced from: 118B30F
  loc_118B497:   End If
  loc_118B497: End If
  loc_118B497: Exit Sub
End Sub

Private Sub BtnroomMerge_UnknownEvent_9 '144F77C
  'Data Table: 47FC44
  Dim var_86 As Integer
  Dim unk_47FC47 As Connection15
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_104 As TextBox
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_15C As Variant
  Dim var_14C As Variant
  Dim var_1A0 As Variant
  Dim var_1A4 As String
  Dim var_BC As Variant
  Dim var_108 As String
  Dim var_100 As Fields15
  Dim var_1C8 As Variant
  Dim var_1C4 As Variant
  Dim var_204 As Variant
  Dim var_1B4 As Long
  Dim var_250 As Variant
  Dim var_218 As Variant
  Dim var_3B0 As Variant
  Dim var_3D0 As Long
  Dim var_440 As Variant
  Dim var_460 As Long
  Dim var_21C As MSHFlexGrid
  Dim var_170 As Variant
  Dim var_3A0 As Variant
  Dim var_4C0 As Variant
  Dim var_4EC As String
  loc_144ECCE: unk_47FC47.BeginTrans var_94
  loc_144ED2D: Set var_100 = Me.Txt
  loc_144ED33: Call 0.Method_BtnroomMerge_UnknownEvent_90 (CInt(1), var_104, var_108, "UPDATE GuestFolio SET GuestFolio.mFolioNoDocId='" & Me.Fields.Item("FolioNoDocid").Value & "',GuestFolio.mFolioNo = ")
  loc_144ED3B: var_1C4 = var_104.Tag
  loc_144ED46: var_128 = -1 & CVar(var_108) 
  loc_144ED68: var_14C = Me.Fields
  loc_144ED78: var_170 = var_14C.Item("FolioNoDocid").Value
  loc_144ED89: var_1A0 = var_128 & " WHERE GuestFolio.Docid = '" & var_170 & "'" 
  loc_144ED97: unk_47FC47.Execute CStr(var_1A0), var_1C8, 0
  loc_144EDEC: For var_1CC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8E = var_1CC 'Integer
  loc_144EDF6:   var_A8 = CVar(CLng(var_8E)) 'Long
  loc_144EDFB:   var_EC = 0
  loc_144EE2A:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_144EE31:     var_A8 = CVar(CLng(var_8E)) 'Long
  loc_144EE39:     var_EC = CVar(CLng(1)) 'Long
  loc_144EE59:     global_80 = CStr(Me.FGrid.TextMatrix))
  loc_144EE6A:     var_A8 = CVar(CLng(var_8E)) 'Long
  loc_144EE72:     var_EC = CVar(CLng(2)) 'Long
  loc_144EE8C:     var_108 = CStr(Me.FGrid.TextMatrix))
  loc_144EEB7:     var_A8 = "FolioNoDocid"
  loc_144EECE:     var_AC = Me.Fields.Item(var_A8)
  loc_144EEDE:     var_DC = "UPDATE GuestFolio SET GuestFolio.mFolioNoDocId='" & var_AC.Value 
  loc_144EEF9:     Set var_100 = Me.Txt
  loc_144EEFF:     Call 0.Method_BtnroomMerge_UnknownEvent_90 (CInt(1), var_104, var_108, var_DC & "',GuestFolio.mFolioNo = ", var_1A0, -1, var_14C)
  loc_144EF07:     var_EC = var_104.Tag
  loc_144EF2D:     Proc_6_17_EAAE40(var_170, var_108, var_A8 & CVar(var_108) & " WHERE GuestFolio.Docid = ", var_EC)
  loc_144EF43:     unk_47FC47.Execute CStr(var_A8 & var_170), var_EC, var_A8
  loc_144EF80:     Me.FGrid.Row = CVar(CLng(var_8E))
  loc_144EF9B:     Me.FGrid.Col = 0
  loc_144EFB6:     Me.FGrid.CellForeColor = &HFF
  loc_144EFE3:     For var_1D0 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_90 = var_1D0 'Integer
  loc_144EFFC:       Me.FGrid.Col = CVar(CLng(var_90))
  loc_144F017:       Me.FGrid.CellBackColor = &HFF
  loc_144F032:       Me.FGrid.CellForeColor = &HFFFFFF
  loc_144F03E:       Set var_98 = Me.FGrid
  loc_144F052:     Next var_1D0 'Integer
  loc_144F057:   End If
  loc_144F05A: Next var_1CC 'Integer
  loc_144F07D: Set var_98 = Me.Txt
  loc_144F083: Call 0.Method_BtnroomMerge_UnknownEvent_90 (CInt(1), var_AC, var_108, "UPDATE PayCharge SET RelatedFolioNo=")
  loc_144F08B: var_218 = var_AC.Tag
  loc_144F094: var_1A4 = -1 & var_108
  loc_144F0B8: var_104 = Me.Fields.Item("FolioNoDocid")
  loc_144F0C7: Proc_6_17_EAAE40(var_DC, CVar(var_104))
  loc_144F105: Proc_6_17_EAAE40(var_170, CVar(Me.Fields.Item("FolioNoDocid")))
  loc_144F116: var_1A0 = CVar(CStr(&HFFFFFF & var_170) & ",RelatedFolioNoDocId=") & var_DC & " WHERE FolioNoDocid = " & var_170 & " And (RelatedFolioNoDocId=" 
  loc_144F143: Proc_6_17_EAAE40(var_1E4, CVar(Me.Fields.Item("FolioNoDocid")))
  loc_144F162: unk_47FC47.Execute CStr(var_1A0 & var_1E4 & " Or IsNull(RelatedFolioNoDocId,'')='')"), var_21C, 
  loc_144F1C3: For var_220 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_8E = var_220 'Integer
  loc_144F1CD:   var_A8 = CVar(CLng(var_8E)) 'Long
  loc_144F1D2:   var_EC = 0
  loc_144F201:   If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_144F206:     var_86 = &HFF
  loc_144F20D:     var_A8 = CVar(CLng(var_8E)) 'Long
  loc_144F230:     var_DC = CVar(CStr(Me.FGrid1.TextMatrix))) 'String
  loc_144F23F:     var_108 = CStr(Trim(var_DC))
  loc_144F25B:     var_A8 = "FolioNoDocid"
  loc_144F281:     Proc_6_17_EAAE40(var_DC, CVar(Me.Fields.Item(var_A8)), 1, var_A8)
  loc_144F294:     Set var_100 = Me.Txt
  loc_144F29A:     Call 0.Method_BtnroomMerge_UnknownEvent_90 (CInt(1), var_104, var_108, var_86)
  loc_144F2A2:     var_EC = var_104.Tag
  loc_144F2AB:     var_15C = CVar(CLng(var_8E)) 'Long
  loc_144F2B0:     var_1B4 = &HB
  loc_144F2F2:     var_250 = CVar(CLng(var_8E)) 'Long
  loc_144F30A:     var_218 = Me.FGrid1.TextMatrix)
  loc_144F343:     Proc_6_7_F26918(var_370, CVar(CStr(Me.FGrid1.TextMatrix))), 3, CVar(CLng(var_8E)), var_218, &HB)
  loc_144F34C:     var_3B0 = CVar(CLng(var_8E)) 'Long
  loc_144F351:     var_3D0 = &HC
  loc_144F374:     var_440 = CVar(CLng(var_8E)) 'Long
  loc_144F379:     var_460 = &HB
  loc_144F3AD:     var_FC = "UPDATE PayCharge SET PayCharge.FolioNoDocid = " & var_DC 
  loc_144F3B6:     var_118 = var_FC & ",PayCharge.FolioNo = " 
  loc_144F3D9:     var_204 = var_118 & CVar(var_108) & ",RelatedFolioNo=" & Trim(Right(CVar(CStr(Me.FGrid1.TextMatrix))), 8)) & ",RelatedFolioNoDocId='" 
  loc_144F413:     var_3A0 = var_204 & CVar(CStr(var_218)) & "' WHERE PayCharge.RoomNo = '" & CVar(var_108) & "' AND PayCharge.VDate =" & var_370 & " AND PayCharge.VTime = '" 
  loc_144F43B:     var_4C0 = var_3A0 & CVar(CStr(Me.FGrid1.TextMatrix))) & "' AND PayCharge.FolioNoDocid='" & CVar(CStr(Me.FGrid1.TextMatrix))) & "' " 
  loc_144F449:     unk_47FC47.Execute CStr(var_4C0), var_4E0, -1
  loc_144F4BE:     Me.FGrid1.Row = CVar(CLng(var_8E))
  loc_144F4D9:     Me.FGrid1.Col = 0
  loc_144F4F4:     Me.FGrid1.CellForeColor = &HFF
  loc_144F521:     For var_4E8 = 1 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_90 = var_4E8 'Integer
  loc_144F53A:       Me.FGrid1.Col = CVar(CLng(var_90))
  loc_144F555:       Me.FGrid1.CellBackColor = &HFF
  loc_144F570:       Me.FGrid1.CellForeColor = &HFFFFFF
  loc_144F57C:       Set var_98 = Me.FGrid1
  loc_144F590:     Next var_4E8 'Integer
  loc_144F595:   End If
  loc_144F598: Next var_220 'Integer
  loc_144F5A3: unk_47FC47.CommitTrans
  loc_144F5C6: If ((unk_47FC47.State > 0) And (var_86 = &HFF)) Then
  loc_144F5EA:   MsgBox("Charges Transfered Successfully", &H40, "Save...", var_FC, var_118)
  loc_144F606:   Me.cmdTransferCharge.Enabled = False
  loc_144F617:   Set var_98 = Me.BtnroomMerge
  loc_144F61D:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(False)
  loc_144F625:   Call Proc_136_28_1336E08()
  loc_144F62A:   Call Proc_136_27_1251AEC()
  loc_144F632: Else
  loc_144F650:   If ((unk_47FC47.State > 0) And (var_86 = 0)) Then
  loc_144F674:     MsgBox("Please select any charges to be transfer", &H40, "Save...", var_FC, var_118)
  loc_144F684:     Exit Sub
  loc_144F688:   Else
  loc_144F690:     Set var_98 = Err()
  loc_144F696:     Call 0.Method_arg_2C (var_108)
  loc_144F6B4:     var_BC = CVar(var_108) 'String
  loc_144F6B7:     MsgBox(var_BC, &H10, "Save...", var_FC, var_118)
  loc_144F6D3:     Set var_98 = Me.BtnroomMerge
  loc_144F6D9:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(False)
  loc_144F6E1:   End If
  loc_144F6E1: End If
  loc_144F6F5: var_108 = "SELECT RoomMast.Code AS RoomNo, GuestProf.Name AS GuestName, GuestFolio.DocId AS FolioNoDocid,GuestFolio.FolioNo AS FolioNo FROM ((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.FolioNo = GuestFolio.FolioNo) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code WHERE (GuestFolio.LOGSITE_CODE='" & MemVar_1F95078
  loc_144F70A: var_4EC = var_108 & "' And RoomMast.LOGSITE_CODE='" & MemVar_1F95078 & "') AND (GuestFolio.mFolioNo is Null OR GuestFolio.mFolioNo=GuestFolio.FolioNo or GuestFolio.mFolioNo=0) AND (((RoomOcc.Type) Not In ('C','O')) AND ((RoomMast.Type)='RO')) OR (((RoomOcc.Type) Is Null) AND ((RoomMast.Type)='RO')) ORDER BY RoomMast.Code"
  loc_144F713: unk_47FC47.Execute var_4EC, var_BC, -1
  loc_144F724: Set global_64 = var_98
  loc_144F746: CVarUnk
  loc_144F74B: VerifyVarObj
  loc_144F751: Set var_98 = Me.DGHelp
  loc_144F757: LateIdStAd
  loc_144F769: Set var_98 = Me.DGHelp
  loc_144F77A: Exit Sub
  loc_144F77B: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F2E2D4
  'Data Table: 47FC44
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_A0 As Variant
  Dim var_A8 As TextBox
  loc_F2E1CC: Call Proc_136_29_E99350()
  loc_F2E1E8: If (Me.RecordCount > 0) Then
  loc_F2E227:   Set var_A4 = Me.Txt
  loc_F2E22D:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1), var_A8)
  loc_F2E235:   var_A8.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_F2E268:   var_A0 = Me.Fields.Item("FolioNo")
  loc_F2E287:   Set var_A4 = Me.Txt
  loc_F2E28D:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1), var_A8)
  loc_F2E295:   var_A8.Tag = CStr(var_A0.Value)
  loc_F2E2AB:   Call Proc_136_27_1251AEC()
  loc_F2E2B0: End If
  loc_F2E2B9: Set var_8C = Me.chkSelectALL
  loc_F2E2BF: Call 0.Method_DGHelp_UnknownEvent_90 (0)
  loc_F2E2C7: var_A0.SetFocus
  loc_F2E2D3: Exit Sub
End Sub

Public Sub DGHelp_UnknownEvent_1B(Index As Integer) 'E04390
  'Data Table: 47FC44
  loc_E04386: If (Index = &HD) Then
  loc_E04389:   Call DGHelp_UnknownEvent_9()
  loc_E0438E: End If
  loc_E0438E: Exit Sub
End Sub

Private Sub btnExit_UnknownEvent_9 'E183E8
  'Data Table: 47FC44
  loc_E183DD: Me.Global.Unload Me
  loc_E183E5: Exit Sub
End Sub

Private Sub cmdTransferCharge_Click() '144EBD0
  'Data Table: 47FC44
  Dim var_86 As Integer
  Dim unk_47FC47 As Connection15
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_104 As TextBox
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_15C As Variant
  Dim var_14C As Variant
  Dim var_1A0 As Variant
  Dim var_1A4 As String
  Dim var_BC As Variant
  Dim var_108 As String
  Dim var_100 As Fields15
  Dim var_1C8 As Variant
  Dim var_1C4 As Variant
  Dim var_204 As Variant
  Dim var_1B4 As Long
  Dim var_250 As Variant
  Dim var_218 As Variant
  Dim var_3B0 As Variant
  Dim var_3D0 As Long
  Dim var_440 As Variant
  Dim var_460 As Long
  Dim var_21C As MSHFlexGrid
  Dim var_170 As Variant
  Dim var_3A0 As Variant
  Dim var_4C0 As Variant
  Dim var_4EC As String
  loc_144E122: unk_47FC47.BeginTrans var_94
  loc_144E181: Set var_100 = Me.Txt
  loc_144E187: Call 0.Method_cmdTransferCharge_Click0 (CInt(1), var_104, var_108, "UPDATE GuestFolio SET GuestFolio.mFolioNoDocId='" & Me.Fields.Item("FolioNoDocid").Value & "',GuestFolio.mFolioNo = ")
  loc_144E18F: var_1C4 = var_104.Tag
  loc_144E19A: var_128 = -1 & CVar(var_108) 
  loc_144E1BC: var_14C = Me.Fields
  loc_144E1CC: var_170 = var_14C.Item("FolioNoDocid").Value
  loc_144E1DD: var_1A0 = var_128 & " WHERE GuestFolio.Docid = '" & var_170 & "'" 
  loc_144E1EB: unk_47FC47.Execute CStr(var_1A0), var_1C8, 0
  loc_144E240: For var_1CC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8E = var_1CC 'Integer
  loc_144E24A:   var_A8 = CVar(CLng(var_8E)) 'Long
  loc_144E24F:   var_EC = 0
  loc_144E27E:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_144E285:     var_A8 = CVar(CLng(var_8E)) 'Long
  loc_144E28D:     var_EC = CVar(CLng(1)) 'Long
  loc_144E2AD:     global_80 = CStr(Me.FGrid.TextMatrix))
  loc_144E2BE:     var_A8 = CVar(CLng(var_8E)) 'Long
  loc_144E2C6:     var_EC = CVar(CLng(2)) 'Long
  loc_144E2E0:     var_108 = CStr(Me.FGrid.TextMatrix))
  loc_144E30B:     var_A8 = "FolioNoDocid"
  loc_144E322:     var_AC = Me.Fields.Item(var_A8)
  loc_144E332:     var_DC = "UPDATE GuestFolio SET GuestFolio.mFolioNoDocId='" & var_AC.Value 
  loc_144E34D:     Set var_100 = Me.Txt
  loc_144E353:     Call 0.Method_cmdTransferCharge_Click0 (CInt(1), var_104, var_108, var_DC & "',GuestFolio.mFolioNo = ", var_1A0, -1, var_14C)
  loc_144E35B:     var_EC = var_104.Tag
  loc_144E381:     Proc_6_17_EAAE40(var_170, var_108, var_A8 & CVar(var_108) & " WHERE GuestFolio.Docid = ", var_EC)
  loc_144E397:     unk_47FC47.Execute CStr(var_A8 & var_170), var_EC, var_A8
  loc_144E3D4:     Me.FGrid.Row = CVar(CLng(var_8E))
  loc_144E3EF:     Me.FGrid.Col = 0
  loc_144E40A:     Me.FGrid.CellForeColor = &HFF
  loc_144E437:     For var_1D0 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_90 = var_1D0 'Integer
  loc_144E450:       Me.FGrid.Col = CVar(CLng(var_90))
  loc_144E46B:       Me.FGrid.CellBackColor = &HFF
  loc_144E486:       Me.FGrid.CellForeColor = &HFFFFFF
  loc_144E492:       Set var_98 = Me.FGrid
  loc_144E4A6:     Next var_1D0 'Integer
  loc_144E4AB:   End If
  loc_144E4AE: Next var_1CC 'Integer
  loc_144E4D1: Set var_98 = Me.Txt
  loc_144E4D7: Call 0.Method_cmdTransferCharge_Click0 (CInt(1), var_AC, var_108, "UPDATE PayCharge SET RelatedFolioNo=")
  loc_144E4DF: var_218 = var_AC.Tag
  loc_144E4E8: var_1A4 = -1 & var_108
  loc_144E50C: var_104 = Me.Fields.Item("FolioNoDocid")
  loc_144E51B: Proc_6_17_EAAE40(var_DC, CVar(var_104))
  loc_144E559: Proc_6_17_EAAE40(var_170, CVar(Me.Fields.Item("FolioNoDocid")))
  loc_144E56A: var_1A0 = CVar(CStr(&HFFFFFF & var_170) & ",RelatedFolioNoDocId=") & var_DC & " WHERE FolioNoDocid = " & var_170 & " And (RelatedFolioNoDocId=" 
  loc_144E597: Proc_6_17_EAAE40(var_1E4, CVar(Me.Fields.Item("FolioNoDocid")))
  loc_144E5B6: unk_47FC47.Execute CStr(var_1A0 & var_1E4 & " Or IsNull(RelatedFolioNoDocId,'')='')"), var_21C, 
  loc_144E617: For var_220 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_8E = var_220 'Integer
  loc_144E621:   var_A8 = CVar(CLng(var_8E)) 'Long
  loc_144E626:   var_EC = 0
  loc_144E655:   If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_144E65A:     var_86 = &HFF
  loc_144E661:     var_A8 = CVar(CLng(var_8E)) 'Long
  loc_144E684:     var_DC = CVar(CStr(Me.FGrid1.TextMatrix))) 'String
  loc_144E693:     var_108 = CStr(Trim(var_DC))
  loc_144E6AF:     var_A8 = "FolioNoDocid"
  loc_144E6D5:     Proc_6_17_EAAE40(var_DC, CVar(Me.Fields.Item(var_A8)), 1, var_A8)
  loc_144E6E8:     Set var_100 = Me.Txt
  loc_144E6EE:     Call 0.Method_cmdTransferCharge_Click0 (CInt(1), var_104, var_108, var_86)
  loc_144E6F6:     var_EC = var_104.Tag
  loc_144E6FF:     var_15C = CVar(CLng(var_8E)) 'Long
  loc_144E704:     var_1B4 = &HB
  loc_144E746:     var_250 = CVar(CLng(var_8E)) 'Long
  loc_144E75E:     var_218 = Me.FGrid1.TextMatrix)
  loc_144E797:     Proc_6_7_F26918(var_370, CVar(CStr(Me.FGrid1.TextMatrix))), 3, CVar(CLng(var_8E)), var_218, &HB)
  loc_144E7A0:     var_3B0 = CVar(CLng(var_8E)) 'Long
  loc_144E7A5:     var_3D0 = &HC
  loc_144E7C8:     var_440 = CVar(CLng(var_8E)) 'Long
  loc_144E7CD:     var_460 = &HB
  loc_144E801:     var_FC = "UPDATE PayCharge SET PayCharge.FolioNoDocid = " & var_DC 
  loc_144E80A:     var_118 = var_FC & ",PayCharge.FolioNo = " 
  loc_144E82D:     var_204 = var_118 & CVar(var_108) & ",RelatedFolioNo=" & Trim(Right(CVar(CStr(Me.FGrid1.TextMatrix))), 8)) & ",RelatedFolioNoDocId='" 
  loc_144E867:     var_3A0 = var_204 & CVar(CStr(var_218)) & "' WHERE PayCharge.RoomNo = '" & CVar(var_108) & "' AND PayCharge.VDate =" & var_370 & " AND PayCharge.VTime = '" 
  loc_144E88F:     var_4C0 = var_3A0 & CVar(CStr(Me.FGrid1.TextMatrix))) & "' AND PayCharge.FolioNoDocid='" & CVar(CStr(Me.FGrid1.TextMatrix))) & "' " 
  loc_144E89D:     unk_47FC47.Execute CStr(var_4C0), var_4E0, -1
  loc_144E912:     Me.FGrid1.Row = CVar(CLng(var_8E))
  loc_144E92D:     Me.FGrid1.Col = 0
  loc_144E948:     Me.FGrid1.CellForeColor = &HFF
  loc_144E975:     For var_4E8 = 1 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_90 = var_4E8 'Integer
  loc_144E98E:       Me.FGrid1.Col = CVar(CLng(var_90))
  loc_144E9A9:       Me.FGrid1.CellBackColor = &HFF
  loc_144E9C4:       Me.FGrid1.CellForeColor = &HFFFFFF
  loc_144E9D0:       Set var_98 = Me.FGrid1
  loc_144E9E4:     Next var_4E8 'Integer
  loc_144E9E9:   End If
  loc_144E9EC: Next var_220 'Integer
  loc_144E9F7: unk_47FC47.CommitTrans
  loc_144EA1A: If ((unk_47FC47.State > 0) And (var_86 = &HFF)) Then
  loc_144EA3E:   MsgBox("Charges Transfered Successfully", &H40, "Save...", var_FC, var_118)
  loc_144EA5A:   Me.cmdTransferCharge.Enabled = False
  loc_144EA6B:   Set var_98 = Me.BtnroomMerge
  loc_144EA71:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(False)
  loc_144EA79:   Call Proc_136_28_1336E08()
  loc_144EA7E:   Call Proc_136_27_1251AEC()
  loc_144EA86: Else
  loc_144EAA4:   If ((unk_47FC47.State > 0) And (var_86 = 0)) Then
  loc_144EAC8:     MsgBox("Please select any charges to be transfer", &H40, "Save...", var_FC, var_118)
  loc_144EAD8:     Exit Sub
  loc_144EADC:   Else
  loc_144EAE4:     Set var_98 = Err()
  loc_144EAEA:     Call 0.Method_arg_2C (var_108)
  loc_144EB08:     var_BC = CVar(var_108) 'String
  loc_144EB0B:     MsgBox(var_BC, &H10, "Save...", var_FC, var_118)
  loc_144EB27:     Set var_98 = Me.BtnroomMerge
  loc_144EB2D:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(False)
  loc_144EB35:   End If
  loc_144EB35: End If
  loc_144EB49: var_108 = "SELECT RoomMast.Code AS RoomNo, GuestProf.Name AS GuestName, GuestFolio.DocId AS FolioNoDocid,GuestFolio.FolioNo AS FolioNo FROM ((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.FolioNo = GuestFolio.FolioNo) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code WHERE (GuestFolio.LOGSITE_CODE='" & MemVar_1F95078
  loc_144EB5E: var_4EC = var_108 & "' And RoomMast.LOGSITE_CODE='" & MemVar_1F95078 & "') AND (GuestFolio.mFolioNo is Null OR GuestFolio.mFolioNo=GuestFolio.FolioNo or GuestFolio.mFolioNo=0) AND (((RoomOcc.Type) Not In ('C','O')) AND ((RoomMast.Type)='RO')) OR (((RoomOcc.Type) Is Null) AND ((RoomMast.Type)='RO')) ORDER BY RoomMast.Code"
  loc_144EB67: unk_47FC47.Execute var_4EC, var_BC, -1
  loc_144EB78: Set global_64 = var_98
  loc_144EB9A: CVarUnk
  loc_144EB9F: VerifyVarObj
  loc_144EBA5: Set var_98 = Me.DGHelp
  loc_144EBAB: LateIdStAd
  loc_144EBBD: Set var_98 = Me.DGHelp
  loc_144EBCE: Exit Sub
  loc_144EBCF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 '11459B4
  'Data Table: 47FC44
  Dim var_8C As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_E0 As Long
  Dim var_A0 As String
  Dim var_124 As String
  loc_114562B: Set var_88 = Me.chkSelectALL
  loc_1145631: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_1145639: var_8C.Value = 0
  loc_1145650: Set var_88 = Me.chkSelectALL
  loc_1145656: Call 0.Method_FGrid_UnknownEvent_90 (1, var_8C)
  loc_114565E: var_8C.Value = 0
  loc_1145689: If (CLng(Me.FGrid.RowSel) = 0) Then
  loc_114568C:   Exit Sub
  loc_114568D: End If
  loc_114569B: Set var_88 = Me.Txt
  loc_11456A1: Call 0.Method_FGrid_UnknownEvent_90 (CInt(1), var_8C)
  loc_11456C0: If (var_8C.Text = vbNullString) Then
  loc_11456E4:   MsgBox("Please Select Leader Room No.", &H40, "Error..", var_F0, var_110)
  loc_11456F4:   Exit Sub
  loc_11456F5: End If
  loc_11456F5: On Error Goto loc_114596D
  loc_114570B: Me.FGrid.Col = 0
  loc_1145723: Me.FGrid.CellFontName = "WINGDINGS"
  loc_114573D: Me.FGrid.CellFontSize = CVar(CDbl(&HD))
  loc_1145758: Me.FGrid.CellForeColor = &HFF0000
  loc_1145782: Me.FGrid.Row = CVar(CLng(Me.FGrid.RowSel))
  loc_11457A4: var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11457A9: var_E0 = 0
  loc_11457C7: var_A0 = CStr(Me.FGrid.TextMatrix))
  loc_11457E0: If (var_A0 = "ü") Then
  loc_11457F6:   var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11457FB:   var_E0 = 0
  loc_1145804:   var_124 = vbNullString
  loc_114580E:   Set var_8C = Me.FGrid
  loc_1145814:   LateIdCallSt
  loc_114584B:   For var_138 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_112 = var_138 'Integer
  loc_1145864:     Me.FGrid.Col = CVar(CLng(var_112))
  loc_114587F:     Me.FGrid.CellBackColor = &HFFFFFF
  loc_114588A:   Next var_138 'Integer
  loc_1145892: Else
  loc_11458A5:   var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11458AA:   var_E0 = 0
  loc_11458B3:   var_124 = "ü"
  loc_11458BD:   Set var_8C = Me.FGrid
  loc_11458C3:   LateIdCallSt
  loc_11458FA:   For var_13C = 1 To CInt((CLng(Me.FGrid.Cols) - 1)):   var_112 = var_13C 'Integer
  loc_1145913:     Me.FGrid.Col = CVar(CLng(var_112))
  loc_114592E:     Me.FGrid.CellBackColor = &HFF00
  loc_1145939:   Next var_13C 'Integer
  loc_114593E: End If
  loc_114593E: Call Proc_136_28_1336E08()
  loc_1145952: Set var_88 = Me.chkSelectALL
  loc_1145958: Call 0.Method_FGrid_UnknownEvent_90 (1, var_8C)
  loc_1145960: var_8C.Value = CInt(1)
  loc_114596C: Exit Sub
  loc_114596D: ' Referenced from: 11456F5
  loc_1145975: Set var_88 = Err()
  loc_114597B: Call 0.Method_arg_2C (var_A0)
  loc_114599C: MsgBox(CVar(var_A0), &H40, "Information", var_F0, var_110)
  loc_11459AF: Exit Sub
  loc_11459B0: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(Index As Integer) 'E908BC
  'Data Table: 47FC44
  loc_E9084A: If (Index = &HD) Then
  loc_E9085B:   Proc_303_0_FBACC8("	")
  loc_E90863: End If
  loc_E90882: If (CLng(Me.FGrid.Rows) < 1) Then
  loc_E90885:   Exit Sub
  loc_E90886: End If
  loc_E908B0: If ((CLng(Index) = &H20) And (CLng(Me.FGrid.Col) = 0)) Then
  loc_E908B3:   Call FGrid_UnknownEvent_9()
  loc_E908B8: End If
  loc_E908B8: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_10 'F87DA4
  'Data Table: 47FC44
  Dim var_AC As Variant
  Dim var_D0 As Long
  loc_F87C6A: Me.FGrid.Row = CVar(CLng(Me.FGrid.RowSel))
  loc_F87C8C: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F87C91: var_D0 = 0
  loc_F87CC8: If (CStr(Me.FGrid.TextMatrix)) <> "ü") Then
  loc_F87CF0:   For var_F8 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_86 = var_F8 'Integer
  loc_F87D09:     Me.FGrid.Col = CVar(CLng(var_86))
  loc_F87D24:     Me.FGrid.CellBackColor = &HFFFFFF
  loc_F87D2F:   Next var_F8 'Integer
  loc_F87D37: Else
  loc_F87D5C:   For var_FC = 0 To CInt((CLng(Me.FGrid.Cols) - 1)):   var_86 = var_FC 'Integer
  loc_F87D75:     Me.FGrid.Col = CVar(CLng(var_86))
  loc_F87D90:     Me.FGrid.CellBackColor = &HFF00
  loc_F87D9B:   Next var_FC 'Integer
  loc_F87DA0: End If
  loc_F87DA0: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_B '1340884
  'Data Table: 47FC44
  Dim var_94 As Variant
  Dim var_C8 As Variant
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim unk_47FC47 As Connection15
  Dim var_12C As Variant
  Dim var_134 As String
  Dim Me As Recordset15
  Dim var_188 As Variant
  Dim var_8C As Recordset15
  Dim var_160 As Variant
  Dim var_180 As Variant
  Dim var_1F8 As Variant
  Dim var_218 As Variant
  Dim var_270 As Variant
  Dim var_90 As Recordset15
  Dim var_140 As String
  loc_1340123: var_C8 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_134013B: var_E8 = CVar(CLng(Me.FGrid2.Col)) 'Long
  loc_1340164: var_88 = CStr(Trim(CVar(CStr(Me.FGrid2.TextMatrix)))))
  loc_13401A5: If ((CLng(Me.FGrid2.Col) = 0) Or (var_88 = vbNullString)) Then
  loc_13401A8:   Exit Sub
  loc_13401A9: End If
  loc_13401B2: unk_47FC47.BeginTrans var_130
  loc_13401D6: If (CLng(Me.FGrid2.CellBackColor) = &HFDE1FF) Then
  loc_13401EC:   var_C8 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1340213:   var_10C = Me.FGrid2.TextMatrix)
  loc_1340225:   Call 0.Method_arg_50 (var_140, var_10C, CVar(CLng(Me.FGrid2.Col)))
  loc_1340233:   var_12C = CVar(var_140) 'String
  loc_1340285:   If (MsgBox(CVar("Do You Want Transfer Remainning Charges Of All Rooms" & vbCrLf & "Into Leader Room No. " & CStr(var_10C)), &H14, var_12C, var_160, var_180) = 6) Then
  loc_134028E:     Me.MoveFirst
  loc_1340293:     ' Referenced from: 1340531
  loc_13402A5:     If Not(Me.EOF) Then
  loc_13402EA:       var_FC = Me.Fields
  loc_13402F2:       var_188 = var_FC.Item("mFolioNo")
  loc_1340316:       If CBool(Me.Fields.Item("FolioNo").Value <> var_188.Value) Then
  loc_1340354:         var_B8 = Trim(CVar(Me.Fields.Item("RoomNo")))
  loc_1340365:         var_11C = "Select DocId,FolioNo From RoomOcc Where RTrim(LTrim(RoomOcc.RoomNo))='" & var_B8 & "' And (Roomocc.Type Not in ('C','O') OR Roomocc.Type is Null)" 
  loc_1340369:         var_134 = CStr(var_11C)
  loc_1340373:         unk_47FC47.Execute var_134, var_12C, -1
  loc_134037E:         Set var_8C = var_FC
  loc_13403AC:         If (var_8C.RecordCount > 0) Then
  loc_13403C4:           var_C8 = "FolioNoDocid"
  loc_13403D3:           var_94 = Me.Fields
  loc_13403EA:           Proc_6_17_EAAE40(var_B8, CVar(var_94.Item(var_C8)), "UPDATE PayCharge SET PayCharge.FolioNoDocid = ", var_290, -1)
  loc_13403F6:           var_E8 = ",PayCharge.FolioNo = "
  loc_13403FB:           var_11C = var_294 & var_B8 & var_E8 
  loc_134040D:           Set var_FC = Me.Txt
  loc_1340413:           Call 0.Method_FGrid2_UnknownEvent_B0 (CInt(1), var_188, var_134, var_11C)
  loc_134041B:           var_FC = var_188.Tag
  loc_1340426:           var_160 = var_C8 & CVar(var_134) 
  loc_134042F:           var_180 = var_160 & ",RelatedFolioNo=" 
  loc_134049D:           var_218 = var_180 & var_8C.Fields.Item("FolioNo").Value & ",RelatedFolioNoDocId='" & var_8C.Fields.Item("DocID").Value & "' where (ContraDocId is NULL or contradocid='') and folionoDocid='" 
  loc_13404E2:           unk_47FC47.Execute CStr(var_218 & var_8C.Fields.Item("DocID").Value & "'"), var_E8, var_C8
  loc_1340526:         End If
  loc_1340526:       End If
  loc_134052C:       Me.MoveNext
  loc_1340531:       GoTo loc_1340293
  loc_1340534:     End If
  loc_1340534:   End If
  loc_1340537: Else
  loc_1340565:   var_10C = "Select DocId,FolioNo From RoomOcc Where RTrim(LTrim(RoomOcc.RoomNo))='" & Trim(var_88) & "' And (Roomocc.Type Not in ('C','O') OR Roomocc.Type is Null)" 
  loc_1340573:   unk_47FC47.Execute CStr(var_10C), var_11C, -1
  loc_134057E:   Set var_8C = var_94
  loc_13405A6:   If (var_8C.RecordCount > 0) Then
  loc_13405E5:     var_B8 = "Select * from paycharge where (ContraDocId is NULL or contradocid='') and folionoDocid='" & var_8C.Fields.Item("DocID").Value 
  loc_13405FC:     unk_47FC47.Execute CStr(var_B8 & "' order by vDate,VTIME,VNO,SNO"), var_11C, -1
  loc_1340635:     If (var_FC.RecordCount > 0) Then
  loc_134064B:       var_C8 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_134065A:       var_B8 = Me.FGrid2.Col
  loc_1340672:       var_10C = Me.FGrid2.TextMatrix)
  loc_1340684:       Call 0.Method_arg_50 (var_298, var_10C, CVar(CLng(var_B8)))
  loc_13406A1:       var_134 = "Do You Want Transfer Remainning Charges Of" & vbCrLf
  loc_13406ED:       If (MsgBox(CVar(var_134 & "Room No. " & CStr(var_10C) & " Into Leader Room."), &H24, CVar(var_298), var_160, var_180) = 6) Then
  loc_1340714:         var_94 = Me.Fields
  loc_134072B:         Proc_6_17_EAAE40(var_B8, CVar(var_94.Item("FolioNoDocid")), "UPDATE PayCharge SET PayCharge.FolioNoDocid = ", var_290, -1)
  loc_1340754:         Call 0.Method_FGrid2_UnknownEvent_B0 (CInt(1), var_188, var_134, var_294 & var_B8 & ",PayCharge.FolioNo = ")
  loc_134075C:         var_C8 = var_188.Tag
  loc_13407D5:         var_1F8 = Me.Txt & CVar(var_134) & ",RelatedFolioNo=" & var_8C.Fields.Item("FolioNo").Value & ",RelatedFolioNoDocId='" & var_8C.Fields.Item("DocID").Value 
  loc_1340815:         var_270 = var_1F8 & "' where (ContraDocId is NULL or contradocid='') and folionoDocid='" & var_8C.Fields.Item("DocID").Value & "'" 
  loc_1340823:         unk_47FC47.Execute CStr(var_270), var_94, 
  loc_1340867:       End If
  loc_1340867:     End If
  loc_1340867:   End If
  loc_1340867: End If
  loc_134086D: unk_47FC47.CommitTrans
  loc_1340877: Set var_8C = Nothing
  loc_134087F: Set var_90 = Nothing
  loc_1340882: Exit Sub
End Sub

Private Sub Form_Load() '13C7EE4
  'Data Table: 47FC44
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
  Dim unk_47FC47 As Connection15
  Dim var_D8 As Variant
  Dim var_2AC As String
  loc_13C75AE: Proc_6_23_DFC5B8(Me, 0)
  loc_13C75BD: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_13C75D5: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_13C75F0: Me.FGrid2.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_13C7606: Set var_8C = Me.Txt
  loc_13C760C: Call 0.Method_Form_Load0 (CInt(1), var_B4)
  loc_13C762B: Me.DGHelp.Left = CVar(var_B4.Left)
  loc_13C7647: Set var_BC = Me.Txt
  loc_13C764D: Call 0.Method_Form_Load0 (CInt(1), var_C0)
  loc_13C766E: Call 0.Method_Form_Load0 (CInt(1), var_B4)
  loc_13C7686: var_A0 = CVar(((var_B4.Top + var_C0.Height) + CDbl(&H1E))) 'Single
  loc_13C7695: Me.DGHelp.Top = CVar(var_B4.Left)
  loc_13C7710: var_128 = "SELECT RoomMast.Code AS [S    All], RoomMast.Code AS RoomNo ,GuestFolio.Docid as FolioNoDocid, RoomMast.Name AS Quot," & IIf((MemVar_1F953B0 = "A"), " GuestFolio.Vdate ", "convert(char,GuestFolio.vDate ,103)") 
  loc_13C7724: var_1C8 = " as [Departure Date], GuestProf.Name AS [Guest Name], GuestProf.GuestStatus AS Status, SubGroup.Name AS [Company Name],GuestProf.Add1 AS Address1,GuestProf.Add2 AS Address2,GuestProf.CityName AS [City Name],GuestProf.StateName AS [State Name],GuestProf.CountryName AS [Country Name], GuestFolio.FolioNo AS FolioNo,Guestprof.Code as GuestCode,GuestFolio.Mfoliono FROM ((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) "
  loc_13C7729: var_1D8 = var_128 & " as [CheckIn Date] ," & IIf((MemVar_1F953B0 = "A"), " RoomOcc.DepDate", "convert(char,RoomOcc.DepDate ,103)") & var_1C8 
  loc_13C772D: var_1E8 = "INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) Left JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code WHERE (GuestFolio.LOGSITE_CODE='"
  loc_13C7753: var_268 = "') AND (GuestFolio.mFolioNo is Null OR GuestFolio.mFolioNo=0) AND (roomocc.type not in ('C','O') or roomocc.type is null)  AND ROOMMAST.TYPE='RO' and GuestFolio.Docid Not in (Select Distinct Folionodocid from paycharge where Bill_No is not null and bill_no<>'' and folionodocid<>'' and folionodocid is not null and Settledate is NULL) ORDER BY RoomMast.Code"
  loc_13C7766: unk_47FC47.Execute CStr(var_1D8 & var_1E8 & CVar(MemVar_1F95078) & "' And RoomMast.LOGSITE_CODE='" & CVar(MemVar_1F95078) & var_268), var_29C, -1
  loc_13C7777: Set global_52 = Me.Txt
  loc_13C77B5: CVarUnk
  loc_13C77BA: VerifyVarObj
  loc_13C77C0: Set var_8C = Me.FGrid
  loc_13C77C6: LateIdStAd
  loc_13C77D8: Set var_8C = Me.FGrid
  loc_13C77F8: var_D8 = Me.FGrid.Rows
  loc_13C780E: For var_2A0 = 1 To CInt((CLng(var_D8) - 1)): var_86 = var_2A0 'Integer
  loc_13C7818:   var_A0 = CVar(CLng(var_86)) 'Long
  loc_13C781D:   var_E8 = 0
  loc_13C7826:   var_138 = vbNullString
  loc_13C7830:   Set var_8C = Me.FGrid
  loc_13C7836:   LateIdCallSt
  loc_13C7844: Next var_2A0 'Integer
  loc_13C7849: var_A0 = 0
  loc_13C7852: var_E8 = 0
  loc_13C785B: var_138 = &H12C
  loc_13C7868: Set var_8C = Me.FGrid
  loc_13C786E: LateIdCallSt
  loc_13C7879: var_A0 = 1
  loc_13C7882: var_E8 = 0
  loc_13C788B: var_138 = &H384
  loc_13C7898: Set var_8C = Me.FGrid
  loc_13C789E: LateIdCallSt
  loc_13C78A9: var_A0 = 2
  loc_13C78B2: var_E8 = 0
  loc_13C78BB: var_138 = 0
  loc_13C78C8: Set var_8C = Me.FGrid
  loc_13C78CE: LateIdCallSt
  loc_13C78D9: var_A0 = 3
  loc_13C78E2: var_E8 = 0
  loc_13C78EB: var_138 = 0
  loc_13C78F8: Set var_8C = Me.FGrid
  loc_13C78FE: LateIdCallSt
  loc_13C7909: var_A0 = 4
  loc_13C7912: var_E8 = 0
  loc_13C791B: var_138 = 0
  loc_13C7928: Set var_8C = Me.FGrid
  loc_13C792E: LateIdCallSt
  loc_13C7939: var_A0 = 5
  loc_13C7942: var_E8 = 0
  loc_13C794B: var_138 = &H44C
  loc_13C7958: Set var_8C = Me.FGrid
  loc_13C795E: LateIdCallSt
  loc_13C7969: var_A0 = 6
  loc_13C7972: var_E8 = 0
  loc_13C797B: var_138 = &HB22
  loc_13C7988: Set var_8C = Me.FGrid
  loc_13C798E: LateIdCallSt
  loc_13C7999: var_A0 = 7
  loc_13C79A2: var_E8 = 0
  loc_13C79AB: var_138 = 0
  loc_13C79B8: Set var_8C = Me.FGrid
  loc_13C79BE: LateIdCallSt
  loc_13C79C9: var_A0 = 8
  loc_13C79D2: var_E8 = 0
  loc_13C79DB: var_138 = &HAF0
  loc_13C79E8: Set var_8C = Me.FGrid
  loc_13C79EE: LateIdCallSt
  loc_13C79F9: var_A0 = 9
  loc_13C7A02: var_E8 = 0
  loc_13C7A0B: var_138 = 0
  loc_13C7A18: Set var_8C = Me.FGrid
  loc_13C7A1E: LateIdCallSt
  loc_13C7A29: var_A0 = &HA
  loc_13C7A32: var_E8 = 0
  loc_13C7A3B: var_138 = 0
  loc_13C7A48: Set var_8C = Me.FGrid
  loc_13C7A4E: LateIdCallSt
  loc_13C7A59: var_A0 = &HB
  loc_13C7A62: var_E8 = 0
  loc_13C7A6B: var_138 = &H898
  loc_13C7A78: Set var_8C = Me.FGrid
  loc_13C7A7E: LateIdCallSt
  loc_13C7A89: var_A0 = &HC
  loc_13C7A92: var_E8 = 0
  loc_13C7A9B: var_138 = 0
  loc_13C7AA8: Set var_8C = Me.FGrid
  loc_13C7AAE: LateIdCallSt
  loc_13C7AB9: var_A0 = &HD
  loc_13C7AC2: var_E8 = 0
  loc_13C7ACB: var_138 = 0
  loc_13C7AD8: Set var_8C = Me.FGrid
  loc_13C7ADE: LateIdCallSt
  loc_13C7AE9: var_A0 = &HE
  loc_13C7AF2: var_E8 = 0
  loc_13C7AFB: var_138 = 0
  loc_13C7B08: Set var_8C = Me.FGrid
  loc_13C7B0E: LateIdCallSt
  loc_13C7B19: var_A0 = &HF
  loc_13C7B22: var_E8 = 0
  loc_13C7B2B: var_138 = 0
  loc_13C7B38: Set var_8C = Me.FGrid
  loc_13C7B3E: LateIdCallSt
  loc_13C7B49: var_A0 = &H10
  loc_13C7B52: var_E8 = 0
  loc_13C7B6E: LateIdCallSt
  loc_13C7B8D: var_27C = "SELECT RoomMast.Code AS RoomNo, GuestProf.Name AS GuestName, GuestFolio.DocId AS FolioNoDocid,GuestFolio.FolioNo AS FolioNo FROM ((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.Docid = GuestFolio.Docid) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code WHERE ((GuestFolio.LOGSITE_CODE='" & MemVar_1F95078
  loc_13C7BA2: var_2AC = var_27C & "' And RoomMast.LOGSITE_CODE='" & MemVar_1F95078 & "') AND (GuestFolio.mFolioNo is Null OR GuestFolio.mFolioNo=GuestFolio.FolioNo or GuestFolio.mFolioNo=0) AND (((RoomOcc.Type) Not In ('C','O')) AND ((RoomMast.Type)='RO')) OR (((RoomOcc.Type) Is Null) AND ((RoomMast.Type)='RO'))) and GuestFolio.Docid Not in (Select Distinct Folionodocid from paycharge where Bill_No is not null and bill_no<>'' and folionodocid<>'' and folionodocid is not null and Settledate is NULL)  ORDER BY RoomMast.Code"
  loc_13C7BAB: unk_47FC47.Execute var_2AC, var_D8, -1
  loc_13C7BDE: CVarUnk
  loc_13C7BE3: VerifyVarObj
  loc_13C7BE9: Set var_8C = Me.DGHelp
  loc_13C7BEF: LateIdStAd
  loc_13C7C0C: Me.DGHelp.Visible = False
  loc_13C7C20: Me.cmdTransferCharge.Enabled = False
  loc_13C7C31: Set var_8C = Me.BtnroomMerge
  loc_13C7C37: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(False)
  loc_13C7C50: Call 0.Method_Form_Load0 (1, var_B4, 0, Me.chkSelectALL, Me.FGrid, Me.chkSelectALL, Me.chkSelectALL)
  loc_13C7C58: var_B4.Visible = 0
  loc_13C7C64: var_A0 = 0
  loc_13C7C6D: var_E8 = 0
  loc_13C7C76: var_138 = &H258
  loc_13C7C83: Set var_8C = Me.FGrid1
  loc_13C7C89: LateIdCallSt
  loc_13C7C94: var_A0 = 1
  loc_13C7C9D: var_E8 = 0
  loc_13C7CA6: var_138 = &H3E8
  loc_13C7CB3: Set var_8C = Me.FGrid1
  loc_13C7CB9: LateIdCallSt
  loc_13C7CC4: var_A0 = 2
  loc_13C7CCD: var_E8 = 0
  loc_13C7CD6: var_138 = &H3E8
  loc_13C7CE3: Set var_8C = Me.FGrid1
  loc_13C7CE9: LateIdCallSt
  loc_13C7CF4: var_A0 = 3
  loc_13C7CFD: var_E8 = 0
  loc_13C7D06: var_138 = &H3E8
  loc_13C7D13: Set var_8C = Me.FGrid1
  loc_13C7D19: LateIdCallSt
  loc_13C7D24: var_A0 = 4
  loc_13C7D2D: var_E8 = 0
  loc_13C7D36: var_138 = &H3E8
  loc_13C7D43: Set var_8C = Me.FGrid1
  loc_13C7D49: LateIdCallSt
  loc_13C7D54: var_A0 = 5
  loc_13C7D5D: var_E8 = 0
  loc_13C7D66: var_138 = &H3E8
  loc_13C7D73: Set var_8C = Me.FGrid1
  loc_13C7D79: LateIdCallSt
  loc_13C7D84: var_A0 = 6
  loc_13C7D8D: var_E8 = 0
  loc_13C7D96: var_138 = &H3E8
  loc_13C7DA3: Set var_8C = Me.FGrid1
  loc_13C7DA9: LateIdCallSt
  loc_13C7DB4: var_A0 = 7
  loc_13C7DBD: var_E8 = 0
  loc_13C7DC6: var_138 = &H3E8
  loc_13C7DD3: Set var_8C = Me.FGrid1
  loc_13C7DD9: LateIdCallSt
  loc_13C7DE4: var_A0 = 8
  loc_13C7DED: var_E8 = 0
  loc_13C7DF6: var_138 = &H3E8
  loc_13C7E03: Set var_8C = Me.FGrid1
  loc_13C7E09: LateIdCallSt
  loc_13C7E14: var_A0 = 9
  loc_13C7E1D: var_E8 = 0
  loc_13C7E26: var_138 = &H3E8
  loc_13C7E33: Set var_8C = Me.FGrid1
  loc_13C7E39: LateIdCallSt
  loc_13C7E44: var_A0 = &HA
  loc_13C7E4D: var_E8 = 0
  loc_13C7E56: var_138 = 0
  loc_13C7E63: Set var_8C = Me.FGrid1
  loc_13C7E69: LateIdCallSt
  loc_13C7E74: var_A0 = &HB
  loc_13C7E7D: var_E8 = 0
  loc_13C7E86: var_138 = 0
  loc_13C7E93: Set var_8C = Me.FGrid1
  loc_13C7E99: LateIdCallSt
  loc_13C7EC9: LateIdCallSt
  loc_13C7EDC: Call Proc_136_25_139B684(-1, Me.FGrid1, 0, 0, &HC, Me.FGrid1, 0, 0)
  loc_13C7EE1: Exit Sub
End Sub

Private Sub Form_Resize() 'E7260C
  'Data Table: 47FC44
  loc_E725B6: Call 0.Method_arg_50 (var_88)
  loc_E725C8: Me.LblFormCaption.Caption = var_88
  loc_E725E1: Me.LblFormCaption.Left = CDbl(0)
  loc_E725EF: Call 0.Method_arg_100 (var_90)
  loc_E72601: Me.LblFormCaption.Width = var_90
  loc_E72609: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E60CC8
  'Data Table: 47FC44
  loc_E60C87: Set global_72 = Nothing
  loc_E60C99: Set global_64 = Nothing
  loc_E60CAB: Set global_52 = Nothing
  loc_E60CBD: Set global_68 = Nothing
  loc_E60CC4: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 '11D0E60
  'Data Table: 47FC44
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_8C As MSHFlexGrid
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
  loc_11D0A38: On Error Goto loc_11D0E1D
  loc_11D0A46: Set var_8C = Me.chkSelectALL
  loc_11D0A4C: Call 0.Method_Fgrid1_UnknownEvent_90 (1, var_90)
  loc_11D0A54: var_90.Value = 0
  loc_11D0A73: Me.FGrid1.Col = 0
  loc_11D0A8B: Me.FGrid1.CellFontName = "WINGDINGS"
  loc_11D0AA5: Me.FGrid1.CellFontSize = CVar(CDbl(&HD))
  loc_11D0AC0: Me.FGrid1.CellForeColor = &HFF0000
  loc_11D0AEA: Me.FGrid1.Row = CVar(CLng(Me.FGrid1.RowSel))
  loc_11D0B0C: var_A0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11D0B11: var_D0 = 0
  loc_11D0B2F: var_F4 = CStr(Me.FGrid1.TextMatrix))
  loc_11D0B48: If (var_F4 = "ü") Then
  loc_11D0B5E:   var_A0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11D0B63:   var_D0 = 0
  loc_11D0B6C:   var_104 = vbNullString
  loc_11D0B76:   Set var_90 = Me.FGrid1
  loc_11D0B7C:   LateIdCallSt
  loc_11D0BB3:   For var_118 = 0 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_86 = var_118 'Integer
  loc_11D0BCC:     Me.FGrid1.Col = CVar(CLng(var_86))
  loc_11D0BE7:     Me.FGrid1.CellBackColor = &HFFFFFF
  loc_11D0BF2:   Next var_118 'Integer
  loc_11D0BFA: Else
  loc_11D0C0D:   var_A0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11D0C12:   var_D0 = 0
  loc_11D0C1B:   var_104 = "ü"
  loc_11D0C25:   Set var_90 = Me.FGrid1
  loc_11D0C2B:   LateIdCallSt
  loc_11D0C62:   For var_11C = 1 To CInt((CLng(Me.FGrid1.Cols) - 1)):   var_86 = var_11C 'Integer
  loc_11D0C7B:     Me.FGrid1.Col = CVar(CLng(var_86))
  loc_11D0C96:     Me.FGrid1.CellBackColor = &HFF00
  loc_11D0CA1:   Next var_11C 'Integer
  loc_11D0CA6: End If
  loc_11D0CB9: var_A0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11D0CBE: var_D0 = 1
  loc_11D0CE7: var_130 = Me.FGrid1.Row
  loc_11D0CF0: var_104 = CVar(CLng(var_130)) 'Long
  loc_11D0CF5: var_140 = 3
  loc_11D0D08: var_164 = Me.FGrid1.TextMatrix)
  loc_11D0D27: var_188 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11D0D2C: var_1A8 = &HC
  loc_11D0D3F: var_1CC = Me.FGrid1.TextMatrix)
  loc_11D0D5E: var_1F0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11D0D63: var_210 = &HB
  loc_11D0DDC: Call Proc_136_26_11F8324(CStr(Me.FGrid1.TextMatrix)), CStr(var_164), CStr(var_1CC), CStr(Me.FGrid1.TextMatrix)), CStr(Me.FGrid1.TextMatrix)), 0, CVar(CLng(Me.FGrid1.Row)), Me.FGrid1.TextMatrix))
  loc_11D0E1C: Exit Sub
  loc_11D0E1D: ' Referenced from: 11D0A38
  loc_11D0E25: Set var_8C = Err()
  loc_11D0E2B: Call 0.Method_arg_2C (var_F4, var_210, var_1F0, var_1CC, var_1A8)
  loc_11D0E4C: MsgBox(CVar(var_F4), &H40, "Error...", var_130, var_164)
  loc_11D0E5F: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A 'E91E88
  'Data Table: 47FC44
  loc_E91E16: If (Cancel = &HD) Then
  loc_E91E27:   Proc_303_0_FBACC8("	")
  loc_E91E2F: End If
  loc_E91E4E: If (CLng(Me.FGrid1.Rows) < 1) Then
  loc_E91E51:   Exit Sub
  loc_E91E52: End If
  loc_E91E7C: If ((CLng(Cancel) = &H20) And (CLng(Me.FGrid1.Col) = 0)) Then
  loc_E91E7F:   Call Fgrid1_UnknownEvent_9()
  loc_E91E84: End If
  loc_E91E84: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_10 'F87C04
  'Data Table: 47FC44
  Dim var_AC As Variant
  Dim var_D0 As Long
  Dim MemVar_0 As Integer
  loc_F87ACA: Me.FGrid1.Row = CVar(CLng(Me.FGrid1.RowSel))
  loc_F87AEC: var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_F87AF1: var_D0 = 0
  loc_F87B28: If (CStr(Me.FGrid1.TextMatrix)) <> "ü") Then
  loc_F87B50:   For var_F8 = 0 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_86 = var_F8 'Integer
  loc_F87B69:     Me.FGrid1.Col = CVar(CLng(var_86))
  loc_F87B84:     Me.FGrid1.CellBackColor = &HFFFFFF
  loc_F87B8F:   Next var_F8 'Integer
  loc_F87B97: Else
  loc_F87BBC:   For var_FC = 0 To CInt((CLng(Me.FGrid1.Cols) - 1)):   var_86 = var_FC 'Integer
  loc_F87BD5:     Me.FGrid1.Col = CVar(CLng(var_86))
  loc_F87BF0:     Me.FGrid1.CellBackColor = &HFF00
  loc_F87BFB:   Next var_FC 'Integer
  loc_F87C00: End If
  loc_F87C00: Exit Sub
  loc_F87C01: MemVar_0 = 
End Sub

Private Sub FGPoint_UnknownEvent_9 'E34AA4
  'Data Table: 47FC44
  loc_E34A98: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E34A9B:   Call DGHelp_UnknownEvent_9()
  loc_E34AA0: End If
  loc_E34AA0: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_A 'E05F10
  'Data Table: 47FC44
  loc_E05F06: If (Cancel = &HD) Then
  loc_E05F09:   Call DGHelp_UnknownEvent_9()
  loc_E05F0E: End If
  loc_E05F0E: Exit Sub
End Sub

Public Sub DGridTxtPointSet(DGrid, Rst, TxtIndex, PointerGrid) '11940FC
  'Data Table: 47FC44
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
  loc_1193D1D: If (Me.EOF = 0) Then
  loc_1193D28:   If Not((PointerGrid Is Nothing)) Then
  loc_1193D39:     Me.Font.Name = "MS SANS SARIFF"
  loc_1193D4E:     Me.HeadFont.Name = "SYSTEM"
  loc_1193D6A:     Me.Font.Size = 9.75
  loc_1193D86:     Me.HeadFont.Size = 9.75
  loc_1193D9D:     Me.HeadLines = 1.5
  loc_1193DB1:     Me.RowHeight = &H10E
  loc_1193DC8:     var_E4 = (Me.Columns.Count + 1)
  loc_1193DCE:     var_B4 = CVar(CLng(var_E4)) 'Long
  loc_1193DFC:     var_E4 = (Me.Columns.Count - 1)
  loc_1193E08:     For var_F8 = 0 To CInt(var_E4): var_86 = var_F8 'Integer
  loc_1193E12:       var_B4 = CVar(CLng(var_86)) 'Long
  loc_1193E31:       var_108 = CVar(CLng(Me.Columns.width)) 'Long
  loc_1193E39:       LateIdCallSt
  loc_1193E48:       var_B4 = 0
  loc_1193E55:       var_108 = CVar(CLng(var_86)) 'Long
  loc_1193E73:       var_E4 = CVar(CStr(Me.Columns.TEXT)) 'String
  loc_1193E7A:       LateIdCallSt
  loc_1193EB2:       If (Me.Columns.Alignment = 0) Then
  loc_1193EB9:         var_A4 = CVar(CLng(var_86)) 'Long
  loc_1193EC4:         var_F4 = CVar(CInt(1)) 'Integer
  loc_1193ECB:         LateIdCallSt
  loc_1193ED6:       Else
  loc_1193EDA:         var_A4 = CVar(CLng(var_86)) 'Long
  loc_1193EE5:         var_F4 = CVar(CInt(7)) 'Integer
  loc_1193EEC:         LateIdCallSt
  loc_1193EF4:       End If
  loc_1193EF7:     Next var_F8 'Integer
  loc_1193F0E:     Me.Height = CVar(CDbl(Me.RowHeight))
  loc_1193F16:     var_A4 = 0
  loc_1193F29:     var_F4 = CVar(CLng(Me.RowHeight)) 'Long
  loc_1193F31:     LateIdCallSt
  loc_1193F51:     var_D4 = (Me.Row - 1)
  loc_1193F61:     var_158 = (Me.top + (Me.Columns.Alignment * Me.RowHeight))
  loc_1193F6D:     var_178 = (var_158 + Me.RowHeight)
  loc_1193F76:     var_188 = (var_178 + 260)
  loc_1193F84:     Me.Top = CVar(CDbl(var_188))
  loc_1193FA7:     var_D4 = (Me.left + 310)
  loc_1193FB5:     Me.Left = CVar(CDbl(Me.Columns.Alignment))
  loc_1193FDE:     Set var_18C = DGHelp.DispID_FFFFFE00
  loc_1193FE4:     Me.DGHelp.ColumnLabelCount = Me.Font.Size
  loc_1193FFD:     var_E4 = Me.Font.Name
  loc_1194012:     Set var_18C = DGHelp.DispID_FFFFFE00
  loc_1194018:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_0
  loc_1194046:     Set var_18C = DGHelp.DispID_FFFFFE00
  loc_119404C:     Me.DGHelp.RowLabelCount = Me.Font.Bold
  loc_1194075:     var_E4 = (Me.Columns.Count - 1)
  loc_1194081:     For var_190 = 0 To CInt(Me.Font.Bold): var_86 = var_190 'Integer
  loc_11940AC:       If (Me.Columns.Visible = True) Then
  loc_11940B2:         var_B4 = CVar(var_90) 'Double
  loc_11940CE:         var_E4 = (var_86 + Me.Columns.width)
  loc_11940D3:         var_90 = CSng(Me.Font.Bold)
  loc_11940DF:       End If
  loc_11940E2:     Next var_190 'Integer
  loc_11940EE:     var_A4 = CVar((var_90 - CDbl(&H14))) 'Single
  loc_11940F6:     Me.Width = 1
  loc_11940FB:   End If
  loc_11940FB: End If
  loc_11940FB: Exit Sub
End Sub

Public Sub Proc_136_25_139B684(arg_C) '139B684
  'Data Table: 47FC44
  Dim var_E4 As Variant
  Dim var_AC As String
  Dim var_BC As String
  Dim var_D4 As Variant
  Dim Me As Recordset15
  Dim var_A8 As Variant
  Dim var_104 As Variant
  Dim var_F4 As Variant
  Dim var_134 As Variant
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_168 As Variant
  Dim var_16C As MSHFlexGrid
  Dim var_114 As Variant
  loc_139ADA8: On Error Goto loc_139B61D
  loc_139ADB5: Set global_72 = New 
  loc_139ADC7: Me.Recordset15.CursorLocation = 3
  loc_139ADEA: var_AC = "SELECT RoomMast.Code AS SearchCode, RoomMast.Code AS RoomNo, RoomMast.Name AS Quot, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.ChkOutDate, RoomOcc.ChkOutTime, RoomOcc.DepDate, RoomOcc.DepTime, GuestProf.Name as GuestName, GuestProf.GuestStatus, SubGroup.Name as CompanyNAme, GuestProf.Code AS GuestCode, SubGroup.SubCode as CompanyCode,RoomOcc.FolioNO as FolioNo, RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.Adult AS OldADult, RoomOcc.Children AS OldChild, RoomOcc.RoomCat AS RoomCatCode, RoomCat.Name AS RoomCat,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName,GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3,GUESTSTAT.NAME AS STATUSNAME,roomocc.Docid,GuestFolio.Mfoliono,GuestFolio.MfolionoDOCID,RoomOcc.PlanCode  " & "FROM (((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS WHERE ROOMMAST.LOGSITE_CODE='"
  loc_139AE06: var_BC = var_AC & MemVar_1F95078 & "' AND ROOMOCC.LOGSITE_CODE='" & MemVar_1F95078 & "' AND Roommast.type='RO'  and GuestFolio.Mfoliono="
  loc_139AE19: var_D4 = CVar(var_BC & CStr(arg_C) & " and RoomMast.Code in (Select ISNULL(RoomNo,'') from RoomOcc where isnull(type,'')<>'C' and isnull(type,'')<>'O')  and isnull(RoomOcc.type,'')<>'C' and isnull(RoomOcc.type,'')<>'O' Order by RoomCat.Name,RoomMast.Code,ROOMOCC.CHKOUTDATE ") 'String
  loc_139AE23: Me.Open var_D4, CVar(MemVar_1F95044), 2
  loc_139AE4F: Me.FGrid2.Rows = 1
  loc_139AE6A: Me.FGrid2.Cols = 1
  loc_139AE76: var_A2 = CByte(0) 'Byte
  loc_139AE7E: var_A4 = CByte(0) 'Byte
  loc_139AE87: var_E4 = CVar(CLng(var_A4)) 'Long
  loc_139AE8C: var_104 = &H1F4
  loc_139AE99: Set var_A8 = Me.FGrid2
  loc_139AE9F: LateIdCallSt
  loc_139AEB3: var_118 = Me.RecordCount
  loc_139AEC1: If (var_118 > 0) Then
  loc_139AECA:   Me.MoveFirst
  loc_139AEFD:   var_A0 = CStr(Me.Fields.Item("RoomCat").Value)
  loc_139AF0A: End If
  loc_139AF0A: var_E4 = 0
  loc_139AF13: var_104 = 0
  loc_139AF27: Set var_A8 = Me.FGrid2
  loc_139AF2D: LateIdCallSt
  loc_139AF43: var_A2 = CByte((CInt(var_A2) + 1)) 'Byte
  loc_139AF47: ' Referenced from: 139B604
  loc_139AF59: If Not(Me.EOF) Then
  loc_139AFCA:   If CBool(Me.Fields.Item("FolioNo").Value <> Me.Fields.Item("mFolioNo").Value) Then
  loc_139AFD8:     If (global_76 = vbNullString) Then
  loc_139B00F:       global_76 = CStr(Me.Fields.Item("DocID").Value)
  loc_139B066:       global_80 = CStr("'" & Me.Fields.Item("RoomNo").Value & "'")
  loc_139B0C3:       global_84 = CStr(" WHERE PayCharge.FolioNoDocid ='" & Me.Fields.Item("DocID").Value & "'")
  loc_139B0DD:     Else
  loc_139B122:       global_76 = CStr(CVar(global_76 & ",") & Me.Fields.Item("DocID").Value)
  loc_139B187:       global_80 = CStr(CVar(global_80 & ",'") & Me.Fields.Item("RoomNo").Value & "'")
  loc_139B1DA:       var_158 = CVar(global_84 & " OR PayCharge.FolioNoDocid ='") & Me.Fields.Item("DocID").Value 
  loc_139B1E3:       var_168 = var_158 & "'" 
  loc_139B1EE:       global_84 = CStr(var_168)
  loc_139B207:     End If
  loc_139B207:   End If
  loc_139B247:   If (CVar(var_A0) = Me.Fields.Item("RoomCat").Value) Then
  loc_139B24A:     ' Referenced from: 139B518
  loc_139B24E:     Set var_16C = Me.FGrid2
  loc_139B26C:     If ((CLng(var_16C.Cols) - 1) < CLng(var_A2)) Then
  loc_139B281:       var_E4 = CVar((CLng(var_16C.Cols) + 1)) 'Long
  loc_139B289:       var_16C.Cols = "RoomCat"
  loc_139B291:     End If
  loc_139B296:     var_F4 = CVar(CLng(var_A4)) 'Long
  loc_139B2A0:     var_114 = CVar(CLng(var_A2)) 'Long
  loc_139B2D3:     var_148 = CVar(CStr(Me.Fields.Item("RoomNo").Value)) 'String
  loc_139B2DA:     LateIdCallSt
  loc_139B35E:     If (Me.Fields.Item("FolioNo").Value = Me.Fields.Item("mFolioNo").Value) Then
  loc_139B375:       Me.FGrid2.Row = CVar(CLng(var_A4))
  loc_139B391:       Me.FGrid2.Col = CVar(CLng(var_A2))
  loc_139B3AC:       Me.FGrid2.CellBackColor = &HFDE1FF
  loc_139B3F0:       Me.FGrid2.Tag = CVar(CStr(Me.Fields.Item("RoomNo").Value))
  loc_139B405:     End If
  loc_139B40A:     var_E4 = CVar(CLng(var_A2)) 'Long
  loc_139B40F:     var_104 = &H28A
  loc_139B41C:     Set var_A8 = Me.FGrid2
  loc_139B422:     LateIdCallSt
  loc_139B432:     var_E4 = CVar(CLng(var_A2)) 'Long
  loc_139B43D:     var_104 = CVar(CInt(4)) 'Integer
  loc_139B445:     Set var_A8 = Me.FGrid2
  loc_139B44B:     LateIdCallSt
  loc_139B461:     var_A2 = CByte((CInt(var_A2) + 1)) 'Byte
  loc_139B467:     Set var_16C = Nothing 
  loc_139B46E:   Else
  loc_139B473:     var_F4 = CVar(CLng(var_A4)) 'Long
  loc_139B478:     var_114 = 0
  loc_139B4AF:     var_148 = CVar(CStr(Me.Fields.Item("RoomCat").Value)) 'String
  loc_139B4B7:     Set var_134 = Me.FGrid2
  loc_139B4BD:     LateIdCallSt
  loc_139B503:     var_A0 = CStr(Me.Fields.Item("RoomCat").Value)
  loc_139B514:     var_A2 = CByte(1) 'Byte
  loc_139B518:     GoTo loc_139B24A
  loc_139B51B:   End If
  loc_139B521:   Me.MoveNext
  loc_139B53A:   If (Me.EOF = 0) Then
  loc_139B57D:     If CBool(CVar(var_A0) <> Me.Fields.Item("RoomCat").Value) Then
  loc_139B599:       var_E4 = CVar((CLng(Me.FGrid2.Rows) + 1)) 'Long
  loc_139B5A8:       Me.FGrid2.Rows = "RoomCat"
  loc_139B5D2:       var_A4 = CByte((CLng(Me.FGrid2.Rows) - 1)) 'Byte
  loc_139B5E1:       var_E4 = CVar(CLng(var_A4)) 'Long
  loc_139B5E6:       var_104 = &H1F4
  loc_139B5F3:       Set var_A8 = Me.FGrid2
  loc_139B5F9:       LateIdCallSt
  loc_139B604:     End If
  loc_139B604:   End If
  loc_139B604:   GoTo loc_139AF47
  loc_139B607: End If
  loc_139B60B: Set var_A8 = Me.FGrid2
  loc_139B61C: Exit Sub
  loc_139B61D: ' Referenced from: 139ADA8
  loc_139B62B: var_E4 = "FILL DETAILS"
  loc_139B636: MsgBox(var_E4, 0, var_148, var_158, var_168)
  loc_139B662: Call 0.Method_arg_1C (var_118, 0, var_148, var_158, var_168, FGrid2.DispID_FFFF, Err(), var_104)
  loc_139B66E: MsgBox(CVar(var_118), var_E4, var_134, var_148, var_114)
  loc_139B681: Exit Sub
End Sub

Public Sub Proc_136_26_11F8324(arg_C, arg_10, arg_14, arg_18, arg_1C) '11F8324
  'Data Table: 47FC44
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
  loc_11F7EA8: On Error Goto loc_11F82E0
  loc_11F7ED0: For var_A0 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_88 = var_A0 'Integer
  loc_11F7ED8:   var_86 = 0
  loc_11F7EDF:   var_B0 = CVar(CLng(var_88)) 'Long
  loc_11F7EE4:   var_D0 = 1
  loc_11F7F08:   var_100 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_11F7F1B:   var_120 = Trim(arg_C)
  loc_11F7F2B:   var_140 = CVar(CLng(var_88)) 'Long
  loc_11F7F5A:   var_1A8 = 3 And (CStr(Me.FGrid1.TextMatrix)) = arg_10)
  loc_11F7F62:   var_1B8 = CVar(CLng(var_88)) 'Long
  loc_11F7F91:   var_220 = &HC And (CStr(Me.FGrid1.TextMatrix)) = arg_14)
  loc_11F7F99:   var_230 = CVar(CLng(var_88)) 'Long
  loc_11F7FF9:   If CBool(&HB And (CStr(Me.FGrid1.TextMatrix)) = arg_18)) Then
  loc_11F800F:     Me.FGrid1.Col = 0
  loc_11F802A:     Me.FGrid1.Row = CVar(CLng(var_88))
  loc_11F8042:     Me.FGrid1.CellFontName = "WINGDINGS"
  loc_11F805C:     Me.FGrid1.CellFontSize = CVar(CDbl(&HD))
  loc_11F8077:     Me.FGrid1.CellForeColor = &HFF0000
  loc_11F8092:     var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F8097:     var_D0 = 0
  loc_11F80CE:     If (CStr(Me.FGrid1.TextMatrix)) <> arg_1C) Then
  loc_11F80E4:       var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F80E9:       var_D0 = 0
  loc_11F80FD:       Set var_174 = Me.FGrid1
  loc_11F8103:       LateIdCallSt
  loc_11F8128:       var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F812D:       var_D0 = 0
  loc_11F814B:       var_188 = CStr(Me.FGrid1.TextMatrix))
  loc_11F8164:       If (var_188 <> "ü") Then
  loc_11F817A:         var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F817F:         var_D0 = 0
  loc_11F8188:         var_110 = vbNullString
  loc_11F8192:         Set var_174 = Me.FGrid1
  loc_11F8198:         LateIdCallSt
  loc_11F81CF:         For var_29C = 0 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_86 = var_29C 'Integer
  loc_11F81E8:           Me.FGrid1.Col = CVar(CLng(var_86))
  loc_11F8203:           Me.FGrid1.CellBackColor = &HFFFFFF
  loc_11F820E:         Next var_29C 'Integer
  loc_11F8216:       Else
  loc_11F8229:         var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F822E:         var_D0 = 0
  loc_11F8237:         var_110 = "ü"
  loc_11F8241:         Set var_174 = Me.FGrid1
  loc_11F8247:         LateIdCallSt
  loc_11F827E:         For var_2A0 = 1 To CInt((CLng(Me.FGrid1.Cols) - 1)):   var_86 = var_2A0 'Integer
  loc_11F8297:           Me.FGrid1.Col = CVar(CLng(var_86))
  loc_11F82B2:           Me.FGrid1.CellBackColor = &HFF00
  loc_11F82BD:         Next var_2A0 'Integer
  loc_11F82C2:       End If
  loc_11F82C2:     End If
  loc_11F82C2:   End If
  loc_11F82C5: Next var_A0 'Integer
  loc_11F82CE: Set var_8C = Me.FGrid1
  loc_11F82DF: Exit Sub
  loc_11F82E0: ' Referenced from: 11F7EA8
  loc_11F82E8: Set var_8C = Err()
  loc_11F82EE: Call 0.Method_arg_2C (var_188)
  loc_11F830F: MsgBox(CVar(var_188), &H40, "Error...", var_100, var_120)
  loc_11F8322: Exit Sub
End Sub

Public Sub Proc_136_27_1251AEC
  'Data Table: 47FC44
  Dim var_C8 As Variant
  Dim var_98 As Variant
  Dim var_260 As TextBox
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_1A8 As String
  Dim var_1B8 As Variant
  Dim var_1C8 As String
  Dim var_248 As String
  Dim var_284 As Variant
  Dim var_294 As String
  Dim unk_47FC47 As Connection15
  Dim var_25C As MSHFlexGrid
  loc_125162E: Set var_25C = Me.Txt
  loc_1251634: Call 0.Method_Proc_136_27_1251AEC0 (CInt(1), var_260)
  loc_1251661: var_108 = "SELECT RoomMast.Code AS [S    All], RoomMast.Code AS RoomNo ,GuestFolio.Docid as FolioNoDocid, RoomMast.Name AS Quot," & IIf((MemVar_1F953B0 = "A"), " GuestFolio.Vdate ", "convert(char,GuestFolio.vDate ,103)") 
  loc_1251675: var_1A8 = " as [Departure Date], GuestProf.Name AS [Guest Name], GuestProf.GuestStatus AS Status, SubGroup.Name AS [Company Name],GuestProf.Add1 AS Address1,GuestProf.Add2 AS Address2,GuestProf.CityName AS [City Name],GuestProf.StateName AS [State Name],GuestProf.CountryName AS [Country Name], GuestFolio.FolioNo AS FolioNo,Guestprof.Code as GuestCode,GuestFolio.Mfoliono FROM ((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) "
  loc_125167A: var_1B8 = var_108 & " as [CheckIn Date] ," & IIf((MemVar_1F953B0 = "A"), " RoomOcc.DepDate", "convert(char,RoomOcc.DepDate ,103)") & var_1A8 
  loc_125167E: var_1C8 = "INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) Left JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code WHERE ((GuestFolio.LOGSITE_CODE='"
  loc_12516A4: var_248 = "') AND (GuestFolio.mFolioNo is Null OR GuestFolio.mFolioNo=0) AND (roomocc.type not in ('C','O') or roomocc.type is null)  AND ROOMMAST.TYPE='RO' AND RoomOcc.RoomNo <> '"
  loc_12516B4: var_284 = var_1B8 & var_1C8 & CVar(MemVar_1F95078) & "' And RoomMast.LOGSITE_CODE='" & CVar(MemVar_1F95078) & var_248 & CVar(Val(var_260.Text)) 
  loc_12516B8: var_294 = "') and GuestFolio.Docid Not in (Select Distinct Folionodocid from paycharge where Bill_No is not null and bill_no<>'' and folionodocid<>'' and folionodocid is not null and Settledate is NULL) ORDER BY RoomMast.Code"
  loc_12516CB: unk_47FC47.Execute CStr(var_284 & var_294), var_2C8, -1
  loc_12516DC: Set global_52 = var_2CC
  loc_1251726: CVarUnk
  loc_125172B: VerifyVarObj
  loc_1251731: Set var_25C = Me.FGrid
  loc_1251737: LateIdStAd
  loc_1251749: Set var_25C = Me.FGrid
  loc_125177F: For var_2DC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2DC 'Integer
  loc_1251789:   var_98 = CVar(CLng(var_86)) 'Long
  loc_125178E:   var_C8 = 0
  loc_1251797:   var_118 = vbNullString
  loc_12517A1:   Set var_25C = Me.FGrid
  loc_12517A7:   LateIdCallSt
  loc_12517B5: Next var_2DC 'Integer
  loc_12517BA: var_98 = 0
  loc_12517C3: var_C8 = 0
  loc_12517CC: var_118 = &H12C
  loc_12517D9: Set var_25C = Me.FGrid
  loc_12517DF: LateIdCallSt
  loc_12517EA: var_98 = 1
  loc_12517F3: var_C8 = 0
  loc_12517FC: var_118 = &H384
  loc_1251809: Set var_25C = Me.FGrid
  loc_125180F: LateIdCallSt
  loc_125181A: var_98 = 2
  loc_1251823: var_C8 = 0
  loc_125182C: var_118 = 0
  loc_1251839: Set var_25C = Me.FGrid
  loc_125183F: LateIdCallSt
  loc_125184A: var_98 = 3
  loc_1251853: var_C8 = 0
  loc_125185C: var_118 = 0
  loc_1251869: Set var_25C = Me.FGrid
  loc_125186F: LateIdCallSt
  loc_125187A: var_98 = 4
  loc_1251883: var_C8 = 0
  loc_125188C: var_118 = 0
  loc_1251899: Set var_25C = Me.FGrid
  loc_125189F: LateIdCallSt
  loc_12518AA: var_98 = 5
  loc_12518B3: var_C8 = 0
  loc_12518BC: var_118 = &H44C
  loc_12518C9: Set var_25C = Me.FGrid
  loc_12518CF: LateIdCallSt
  loc_12518DA: var_98 = 6
  loc_12518E3: var_C8 = 0
  loc_12518EC: var_118 = &HB22
  loc_12518F9: Set var_25C = Me.FGrid
  loc_12518FF: LateIdCallSt
  loc_125190A: var_98 = 7
  loc_1251913: var_C8 = 0
  loc_125191C: var_118 = 0
  loc_1251929: Set var_25C = Me.FGrid
  loc_125192F: LateIdCallSt
  loc_125193A: var_98 = 8
  loc_1251943: var_C8 = 0
  loc_125194C: var_118 = &HAF0
  loc_1251959: Set var_25C = Me.FGrid
  loc_125195F: LateIdCallSt
  loc_125196A: var_98 = 9
  loc_1251973: var_C8 = 0
  loc_125197C: var_118 = 0
  loc_1251989: Set var_25C = Me.FGrid
  loc_125198F: LateIdCallSt
  loc_125199A: var_98 = &HA
  loc_12519A3: var_C8 = 0
  loc_12519AC: var_118 = 0
  loc_12519B9: Set var_25C = Me.FGrid
  loc_12519BF: LateIdCallSt
  loc_12519CA: var_98 = &HB
  loc_12519D3: var_C8 = 0
  loc_12519DC: var_118 = &H898
  loc_12519E9: Set var_25C = Me.FGrid
  loc_12519EF: LateIdCallSt
  loc_12519FA: var_98 = &HC
  loc_1251A03: var_C8 = 0
  loc_1251A0C: var_118 = 0
  loc_1251A19: Set var_25C = Me.FGrid
  loc_1251A1F: LateIdCallSt
  loc_1251A2A: var_98 = &HD
  loc_1251A33: var_C8 = 0
  loc_1251A3C: var_118 = 0
  loc_1251A49: Set var_25C = Me.FGrid
  loc_1251A4F: LateIdCallSt
  loc_1251A5A: var_98 = &HE
  loc_1251A63: var_C8 = 0
  loc_1251A6C: var_118 = 0
  loc_1251A79: Set var_25C = Me.FGrid
  loc_1251A7F: LateIdCallSt
  loc_1251A8A: var_98 = &HF
  loc_1251A93: var_C8 = 0
  loc_1251A9C: var_118 = 0
  loc_1251AA9: Set var_25C = Me.FGrid
  loc_1251AAF: LateIdCallSt
  loc_1251ABA: var_98 = &H10
  loc_1251AC3: var_C8 = 0
  loc_1251ACC: var_118 = 0
  loc_1251AD9: Set var_25C = Me.FGrid
  loc_1251ADF: LateIdCallSt
  loc_1251AEA: Exit Sub
End Sub

Public Sub Proc_136_28_1336E08
  'Data Table: 47FC44
  Dim var_90 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_94 As String
  Dim unk_47FC47 As Connection15
  Dim Me As Recordset15
  Dim var_108 As Variant
  loc_1336648: On Error Goto loc_1336DC4
  loc_1336651: global_84 = vbNullString
  loc_133665B: global_80 = vbNullString
  loc_1336677: Set var_8C = Me.Txt
  loc_133667D: Call 0.Method_Proc_136_28_1336E080 (CInt(1), var_90)
  loc_1336696: Call Proc_136_25_139B684(CLng(Val(var_90.Tag)))
  loc_13366CA: For var_AC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_AC 'Integer
  loc_13366D4:   var_BC = CVar(CLng(var_86)) 'Long
  loc_13366D9:   var_DC = 0
  loc_1336708:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1336716:     If (vbNullString = vbNullString) Then
  loc_133671D:       var_BC = CVar(CLng(var_86)) 'Long
  loc_1336725:       var_DC = CVar(CLng(2)) 'Long
  loc_1336745:       global_76 = CStr(Me.FGrid.TextMatrix))
  loc_1336759:       var_BC = CVar(CLng(var_86)) 'Long
  loc_133678C:       global_80 = CVar(CLng(1)) & CStr(Me.FGrid.TextMatrix)) & "'"
  loc_13367A6:       var_BC = CVar(CLng(var_86)) 'Long
  loc_13367D9:       global_84 = CVar(CLng(2)) & CStr(Me.FGrid.TextMatrix)) & "'"
  loc_13367EF:     Else
  loc_13367F9:       var_94 = global_76 & ","
  loc_1336800:       var_BC = CVar(CLng(var_86)) 'Long
  loc_133682C:       global_76 = CVar(CLng(&HE)) & CStr(Me.FGrid.TextMatrix))
  loc_1336849:       var_94 = global_80 & ",'"
  loc_1336850:       var_BC = CVar(CLng(var_86)) 'Long
  loc_1336883:       global_80 = CVar(CLng(1)) & CStr(Me.FGrid.TextMatrix)) & "'"
  loc_13368A2:       var_94 = global_84 & " OR PayCharge.FolioNoDocid ='"
  loc_13368A9:       var_BC = CVar(CLng(var_86)) 'Long
  loc_13368C0:       var_A8 = Me.FGrid.TextMatrix)
  loc_13368DC:       global_84 = CVar(CLng(2)) & CStr(var_A8) & "'"
  loc_13368F1:     End If
  loc_13368F1:   End If
  loc_13368F4: Next var_AC 'Integer
  loc_13368FD: Set var_8C = Me.FGrid1
  loc_1336931: If (((global_80 = vbNullString) Or (global_80 = "0")) Or (global_80 = vbNullString)) Then
  loc_133695C:   Me.FGrid1.Rows = 1
  loc_133696F:   Set var_8C = Me.chkSelectALL
  loc_1336975:   Call 0.Method_Proc_136_28_1336E080 (1, var_90, 0)
  loc_133697D:   var_90.Visible = Me.FGrid1.Text
  loc_1336992:   Set var_8C = Me.BtnroomMerge
  loc_1336998:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(False)
  loc_13369A0:   Exit Sub
  loc_13369A1: End If
  loc_13369B8: var_94 = "SELECT PayCharge.RoomNo AS [S     All], PayCharge.RoomNo, PayCharge.RoomType, convert(Varchar(11),PayCharge.VDate) AS [Dept Date], PayCharge.Comments, PayCharge.PayType, PayCharge.AmtCr AS Credit, PayCharge.AmtDr AS Debit, PayCharge.TipAmt, GuestProf.Name As [Guest Name], PayCharge.FolioNo, PayCharge.FolioNoDocid, PayCharge.VTime From PayCharge Left Join GuestProf on guestprof.code=paycharge.guestProf " & global_84
  loc_13369C8: unk_47FC47.Execute var_94 & " ORDER BY PayCharge.RoomNo, PayCharge.Vdate, PayCharge.Vtime", var_A8, -1
  loc_13369D9: Set global_68 = var_8C
  loc_1336A05: If (Me.RecordCount <= 0) Then
  loc_1336A30:   Me.FGrid1.Rows = 1
  loc_1336A43:   Set var_8C = Me.chkSelectALL
  loc_1336A49:   Call 0.Method_Proc_136_28_1336E080 (1, var_90, 0)
  loc_1336A51:   var_90.Visible = Me.FGrid1.Text
  loc_1336A66:   Set var_8C = Me.BtnroomMerge
  loc_1336A6C:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(False)
  loc_1336A74:   Exit Sub
  loc_1336A75: End If
  loc_1336A86: Call 0.Method_Proc_136_28_1336E080 (1, var_90, &HFF)
  loc_1336A8E: var_90.Visible = Me.chkSelectALL
  loc_1336AAD: Me.FGrid1.Rows = 2
  loc_1336AC8: Me.FGrid1.FixedRows = 1
  loc_1336AD9: CVarUnk
  loc_1336ADE: VerifyVarObj
  loc_1336AE4: Set var_8C = Me.FGrid1
  loc_1336AEA: LateIdStAd
  loc_1336AF8: var_BC = 1
  loc_1336B01: var_DC = 0
  loc_1336B0A: var_108 = &H2BC
  loc_1336B17: Set var_8C = Me.FGrid1
  loc_1336B1D: LateIdCallSt
  loc_1336B28: var_BC = 2
  loc_1336B31: var_DC = 0
  loc_1336B3A: var_108 = 0
  loc_1336B47: Set var_8C = Me.FGrid1
  loc_1336B4D: LateIdCallSt
  loc_1336B58: var_BC = 3
  loc_1336B61: var_DC = 0
  loc_1336B6A: var_108 = &H384
  loc_1336B77: Set var_8C = Me.FGrid1
  loc_1336B7D: LateIdCallSt
  loc_1336B88: var_BC = 4
  loc_1336B91: var_DC = 0
  loc_1336B9A: var_108 = &HBB8
  loc_1336BA7: Set var_8C = Me.FGrid1
  loc_1336BAD: LateIdCallSt
  loc_1336BB8: var_BC = 5
  loc_1336BC1: var_DC = 0
  loc_1336BCA: var_108 = 0
  loc_1336BD7: Set var_8C = Me.FGrid1
  loc_1336BDD: LateIdCallSt
  loc_1336BE8: var_BC = 6
  loc_1336BF1: var_DC = 0
  loc_1336BFA: var_108 = &H708
  loc_1336C07: Set var_8C = Me.FGrid1
  loc_1336C0D: LateIdCallSt
  loc_1336C18: var_BC = 7
  loc_1336C21: var_DC = 0
  loc_1336C2A: var_108 = &H708
  loc_1336C37: Set var_8C = Me.FGrid1
  loc_1336C3D: LateIdCallSt
  loc_1336C48: var_BC = 8
  loc_1336C51: var_DC = 0
  loc_1336C5A: var_108 = 0
  loc_1336C67: Set var_8C = Me.FGrid1
  loc_1336C6D: LateIdCallSt
  loc_1336C78: var_BC = 9
  loc_1336C81: var_DC = 0
  loc_1336C8A: var_108 = &H960
  loc_1336C97: Set var_8C = Me.FGrid1
  loc_1336C9D: LateIdCallSt
  loc_1336CA8: var_BC = &HA
  loc_1336CB1: var_DC = 0
  loc_1336CBA: var_108 = 0
  loc_1336CC7: Set var_8C = Me.FGrid1
  loc_1336CCD: LateIdCallSt
  loc_1336CD8: var_BC = &HB
  loc_1336CE1: var_DC = 0
  loc_1336CEA: var_108 = 0
  loc_1336CF7: Set var_8C = Me.FGrid1
  loc_1336CFD: LateIdCallSt
  loc_1336D08: var_BC = &HC
  loc_1336D11: var_DC = 0
  loc_1336D1A: var_108 = 0
  loc_1336D27: Set var_8C = Me.FGrid1
  loc_1336D2D: LateIdCallSt
  loc_1336D5D: For var_11C = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_11C 'Integer
  loc_1336D67:   var_BC = CVar(CLng(var_86)) 'Long
  loc_1336D6C:   var_DC = 0
  loc_1336D75:   var_108 = vbNullString
  loc_1336D7F:   Set var_8C = Me.FGrid1
  loc_1336D85:   LateIdCallSt
  loc_1336D94:   Set var_8C = Me.FGrid1
  loc_1336DA8: Next var_11C 'Integer
  loc_1336DB5: Set var_8C = Me.BtnroomMerge
  loc_1336DBB: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(True)
  loc_1336DC3: Exit Sub
  loc_1336DC4: ' Referenced from: 1336648
  loc_1336DCC: Set var_8C = Err()
  loc_1336DD2: Call 0.Method_arg_2C (var_94)
  loc_1336DF3: MsgBox(CVar(var_94), &H10, "Error...", var_13C, var_14C)
  loc_1336E06: Exit Sub
End Sub

Public Sub Proc_136_29_E99350
  'Data Table: 47FC44
  Dim var_88 As Variant
  loc_E992E8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E992FA:   Me.DGHelp.Visible = False
  loc_E99302: End If
  loc_E9931E: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E99330:   Me.FGPoint.Visible = False
  loc_E99338: End If
  loc_E99341: Set var_88 = Me.BtnroomMerge
  loc_E99347: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(False)
  loc_E9934F: Exit Sub
End Sub
