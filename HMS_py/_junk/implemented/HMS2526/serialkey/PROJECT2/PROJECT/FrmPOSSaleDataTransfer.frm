VERSION 5.00
Begin VB.Form FrmPOSSaleDataTransfer
  Caption = "POS Bill Deletion Entry"
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
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    Left = 2610
    Top = 1425
    Width = 3345
    Height = 255
    TabIndex = 4
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
  Begin DataGrid DGCompany
    Left = 8490
    Top = 6990
    Width = 4230
    Height = 2325
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 21
  End
  Begin CommandButton Command1
    Caption = "Serialize Bill"
    Left = 11880
    Top = 3330
    Width = 1125
    Height = 780
    Visible = 0   'False
    TabIndex = 20
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
  Begin CommandButton CmdTransfer
    Caption = "&Transfer"
    Left = 2250
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
  Begin TextBox TxtSearch
    BackColor = &HE0E0E0&
    Left = 8415
    Top = 2250
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 16
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
    TabIndex = 5
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
    TabIndex = 12
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
    Top = 2820
    Width = 4680
    Height = 375
    Visible = 0   'False
    TabIndex = 11
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    Left = 8040
    Top = 615
    Width = 3345
    Height = 255
    Visible = 0   'False
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
    TabIndex = 6
  End
  Begin DataGrid DGRestType
    Left = 8310
    Top = 6585
    Width = 4230
    Height = 2325
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 13
  End
  Begin MSFlexGrid FGPoint
    Left = 8460
    Top = 2505
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGPayType
    Left = 7995
    Top = 6225
    Width = 4995
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin Label LblName
    Caption = "Party Name"
    Index = 4
    ForeColor = &H0&
    Left = 975
    Top = 1440
    Width = 990
    Height = 240
    TabIndex = 22
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
  Begin Label Label1
    Left = 780
    Top = 7920
    Width = 6360
    Height = 270
    TabIndex = 19
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
    Left = 6405
    Top = 630
    Width = 1515
    Height = 240
    Visible = 0   'False
    TabIndex = 10
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
    Caption = "From Date"
    Index = 0
    ForeColor = &H0&
    Left = 975
    Top = 615
    Width = 900
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
    Caption = "To Date"
    Index = 1
    ForeColor = &H0&
    Left = 960
    Top = 870
    Width = 675
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
End

Attribute VB_Name = "FrmPOSSaleDataTransfer"

Private global_60 As Integer

Private Sub DGCompany_UnknownEvent_9 'F40774
  'Data Table: 486ABC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4066B: Me.DGCompany.Visible = False
  loc_F4068A: If (Me.RecordCount > 0) Then
  loc_F406C9:   Set var_B4 = Me.Txt
  loc_F406CF:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(4), var_B8)
  loc_F406D7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4070A:   var_B0 = Me.Fields.Item("Code")
  loc_F40729:   Set var_B4 = Me.Txt
  loc_F4072F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(4), var_B8)
  loc_F40737:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4074D: End If
  loc_F40758: Set var_A8 = Me.Txt
  loc_F4075E: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(4))
  loc_F40766: var_B0.SetFocus
  loc_F40772: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_1F 'E718BC
  'Data Table: 486ABC
  loc_E7187A: Proc_6_153_E91D24(Me.DGCompany, arg_14)
  loc_E71891: Set var_8C = Me.FGPoint
  loc_E718AD: Proc_6_138_106E830(Me.DGCompany, global_80, CInt(4))
  loc_E718BB: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E65A68
  'Data Table: 486ABC
  loc_E65A38: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_E65A3B:   Call DGRestType_UnknownEvent_9()
  loc_E65A40: End If
  loc_E65A5C: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_E65A5F:   Call DGCompany_UnknownEvent_9()
  loc_E65A64: End If
  loc_E65A64: Exit Sub
End Sub

Private Sub Form_Load() 'F70118
  'Data Table: 486ABC
  Dim var_8C As String
  Dim var_94 As String
  Dim unk_486AD0 As Connection15
  Dim var_B8 As CommandButton
  loc_F6FFE4: On Error Goto loc_F7010F
  loc_F70010: var_94 = "SELECT Code,Name,RestType,DiscApp FROM Depart Where Code<>'" & MemVar_1F95078 & "RS' And (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name"
  loc_F70019: unk_486AD0.Execute var_94, var_B4, -1
  loc_F7004C: CVarUnk
  loc_F70051: VerifyVarObj
  loc_F7005D: LateIdStAd
  loc_F70086: var_8C = "Select SubCode as Code,Name From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND CompanyType in ('Corporate','Travel Agency') Order By Name"
  loc_F7008F: unk_486AD0.Execute var_8C, var_B4, -1
  loc_F700BE: CVarUnk
  loc_F700C3: VerifyVarObj
  loc_F700C9: Set var_B8 = Me.DGCompany
  loc_F700CF: LateIdStAd
  loc_F700E3: Set var_B8 = Me.CmdTransfer
  loc_F700E9: var_B8.Enabled = False
  loc_F700F1: Call Proc_219_22_117D690(var_B8, Me.DGRestType, var_B8)
  loc_F700FD: Call 0.Method_arg_7C (CDbl(0), var_B8)
  loc_F70109: Call 0.Method_arg_74 (CDbl(0), var_B8)
  loc_F7010E: Exit Sub
  loc_F7010F: ' Referenced from: F6FFE4
  loc_F7010F: Proc_6_60_E63754(var_B8)
  loc_F70114: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5E9C8
  'Data Table: 486ABC
  loc_E5E987: Set global_72 = Nothing
  loc_E5E999: Set global_84 = Nothing
  loc_E5E9AB: Set global_76 = Nothing
  loc_E5E9BD: Set global_80 = Nothing
  loc_E5E9C4: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2B338
  'Data Table: 486ABC
  loc_E2B310: On Error Goto loc_E2B32F
  loc_E2B327: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2B32F: ' Referenced from: E2B310
  loc_E2B32F: Proc_6_60_E63754(Shift)
  loc_E2B334: Exit Sub
End Sub

Private Sub Check1_Click() 'F6846C
  'Data Table: 486ABC
  Dim var_9C As Variant
  loc_F6834F: If (CLng(Me.Check1.Value) = 0) Then
  loc_F68360:   Me.GridSel.Enabled = True
  loc_F68387:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F6839D:     Me.GridSel.Row = 1
  loc_F683B8:     Me.GridSel.Col = 0
  loc_F683C0:   End If
  loc_F683C3: Else
  loc_F683D2:   Me.GridSel.Enabled = False
  loc_F683F9:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F6840F:     Me.GridSel.Row = 0
  loc_F6842A:     Me.GridSel.Col = 0
  loc_F6844B:     var_9C = CVar((CLng(Me.GridSel.Rows) - 1)) 'Long
  loc_F6845A:     Me.GridSel.RowSel = 0
  loc_F68469:   End If
  loc_F68469: End If
  loc_F68469: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E23584
  'Data Table: 486ABC
  loc_E2356A: If (KeyCode = &HD) Then
  loc_E2357B:   Proc_303_0_FBACC8("	")
  loc_E23583: End If
  loc_E23583: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A 'FD94AC
  'Data Table: 486ABC
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim var_17C As Variant
  Dim var_19C As Long
  Dim var_1BC As Variant
  Dim var_86 As Integer
  loc_FD92FA: If (KeyCode = &HD) Then
  loc_FD930B:   Proc_303_0_FBACC8("	")
  loc_FD9313: End If
  loc_FD9332: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_FD9335:   Exit Sub
  loc_FD9336: End If
  loc_FD9360: If ((CLng(KeyCode) = &H20) And (CLng(Me.GridSel.Col) = 0)) Then
  loc_FD9373:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_FD938D:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_FD93A8:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FD93AD:   var_D4 = 0
  loc_FD93DF:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FD93E4:   var_19C = 0
  loc_FD941F:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_FD9427:   Set var_1D0 = Me.GridSel
  loc_FD942D:   LateIdCallSt
  loc_FD9467:   var_86 = CInt((UBound(global_68, 1) + 1))
  loc_FD9479:   ReDim Preserve global_68(0 To CLng(var_86))
  loc_FD94A1:   global_68(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_FD94A8: End If
  loc_FD94A8: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E5CC24
  'Data Table: 486ABC
  loc_E5CBFF: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5CC02:   Exit Sub
  loc_E5CC03: End If
  loc_E5CC1A: global_60 = CInt(CLng(Me.GridSel.Row))
  loc_E5CC23: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '1026088
  'Data Table: 486ABC
  Dim var_A0 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_160 As Variant
  Dim var_180 As Long
  Dim var_1A0 As Variant
  Dim var_86 As Integer
  loc_1025E89: If ((CLng(Me.GridSel.Col) <> 0) Or (global_60 = 0)) Then
  loc_1025E8C:   Exit Sub
  loc_1025E8D: End If
  loc_1025EE9: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_1025EEC:   Exit Sub
  loc_1025EED: End If
  loc_1025F1C: For var_BA = global_60 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_BA 'Integer
  loc_1025F35:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_1025F50:   Me.GridSel.Col = 0
  loc_1025F68:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_1025F82:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1025F8E:   var_CC = CVar(CLng(var_88)) 'Long
  loc_1025F93:   var_EC = 0
  loc_1025FB6:   var_160 = CVar(CLng(var_88)) 'Long
  loc_1025FBB:   var_180 = 0
  loc_1025FF6:   var_1A0 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_1025FFE:   Set var_A0 = Me.GridSel
  loc_1026004:   LateIdCallSt
  loc_1026036:   var_86 = CInt((UBound(global_68, 1) + 1))
  loc_1026048:   ReDim Preserve global_68(0 To CLng(var_86))
  loc_1026070:   global_68(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_102607A: Next var_BA 'Integer
  loc_1026084: global_60 = 0
  loc_1026087: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12E16A0
  'Data Table: 486ABC
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_88 As DataGrid
  loc_12E0FEC: On Error Goto loc_12E165B
  loc_12E0FF9: Set var_88 = Me.Txt
  loc_12E0FFF: Call 0.Method_Txt_GotFocus0 (Index)
  loc_12E100D: Proc_6_74_E23240(var_8C)
  loc_12E1019: Call Proc_219_27_EBE460(var_8C)
  loc_12E1021: var_92 = Index
  loc_12E102C: If (var_92 = CInt(0)) Then
  loc_12E103C:   Set var_88 = Me.Txt
  loc_12E1042:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E105D:   Set var_90 = Me.Txt
  loc_12E1063:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E106B:   var_9C.SelLength = Len(var_8C.Text)
  loc_12E108B:   Set var_88 = Me.Txt
  loc_12E1091:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E10AB:   Set var_90 = Me.Txt
  loc_12E10B1:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E10B9:   var_9C.Tag = var_8C.Text
  loc_12E10CF: Else
  loc_12E10D7:   If (var_92 = CInt(1)) Then
  loc_12E10E7:     Set var_88 = Me.Txt
  loc_12E10ED:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E1108:     Set var_90 = Me.Txt
  loc_12E110E:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E1116:     var_9C.SelLength = Len(var_8C.Text)
  loc_12E1136:     Set var_88 = Me.Txt
  loc_12E113C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E1144:     var_98 = var_8C.Text
  loc_12E1156:     Set var_90 = Me.Txt
  loc_12E115C:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E1164:     var_9C.Tag = var_98
  loc_12E117A:   Else
  loc_12E1182:     If (var_92 = CInt(2)) Then
  loc_12E1193:       Set var_88 = Me.Txt
  loc_12E1199:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_12E11B8:       Me.DGRestType.Left = CVar(var_8C.Left)
  loc_12E11D4:       Set var_90 = Me.Txt
  loc_12E11DA:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_9C)
  loc_12E11F5:       Set var_88 = Me.Txt
  loc_12E11FB:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_12E1213:       var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_12E1222:       Me.DGRestType.Top = CVar(var_8C.Left)
  loc_12E1243:       Me.Filter = 0
  loc_12E1254:       Me.Filter = "RestType<>'Kitchen'"
  loc_12E1270:       If (Me.RecordCount > 0) Then
  loc_12E127E:         Set var_8C = Me.FGPoint
  loc_12E1296:         Proc_6_137_1192FDC(Me.DGRestType, global_76, Index)
  loc_12E12A4:       End If
  loc_12E12F2:       Set var_88 = Me.Txt
  loc_12E12F8:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_12E1300:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12E1318:       If (var_8C Or (var_98 = vbNullString)) Then
  loc_12E131B:         Exit Sub
  loc_12E131C:       End If
  loc_12E1329:       Set var_88 = Me.Txt
  loc_12E132F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E1337:       var_98 = var_8C.Text
  loc_12E1349:       var_B0 = "Name"
  loc_12E1360:       var_9C = Me.Fields.Item(var_B0)
  loc_12E1384:       If CBool(CVar(var_98) <> var_9C.Value) Then
  loc_12E138D:         Me.MoveFirst
  loc_12E13B0:         Set var_88 = Me.Txt
  loc_12E13B6:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_12E13BE:         0 = var_8C.Text
  loc_12E13D7:         Me.Find 1 & var_98 & "'", var_B0, var_92
  loc_12E13EC:       End If
  loc_12E13FF:       Me.DGRestType.Tag = CVar(CStr(Index))
  loc_12E140D:     Else
  loc_12E1415:       If (var_92 = CInt(4)) Then
  loc_12E1426:         Set var_88 = Me.Txt
  loc_12E142C:         Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_12E144B:         Me.DGCompany.Left = CVar(var_8C.Left)
  loc_12E1467:         Set var_90 = Me.Txt
  loc_12E146D:         Call 0.Method_Txt_GotFocus0 (CInt(4), var_9C)
  loc_12E1488:         Set var_88 = Me.Txt
  loc_12E148E:         Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_12E14A6:         var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_12E14B5:         Me.DGCompany.Top = CVar(var_8C.Left)
  loc_12E14DE:         If (Me.RecordCount > 0) Then
  loc_12E14EC:           Set var_8C = Me.FGPoint
  loc_12E1504:           Proc_6_137_1192FDC(Me.DGCompany, global_80)
  loc_12E1512:         End If
  loc_12E1560:         Set var_88 = Me.Txt
  loc_12E1566:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_12E156E:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12E1586:         If (Index Or (var_98 = vbNullString)) Then
  loc_12E1589:           Exit Sub
  loc_12E158A:         End If
  loc_12E1597:         Set var_88 = Me.Txt
  loc_12E159D:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E15A5:         var_98 = var_8C.Text
  loc_12E15B7:         var_B0 = "Name"
  loc_12E15F2:         If CBool(CVar(var_98) <> Me.Fields.Item(var_B0).Value) Then
  loc_12E15FB:           Me.MoveFirst
  loc_12E161E:           Set var_88 = Me.Txt
  loc_12E1624:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_12E162C:           0 = var_8C.Text
  loc_12E1645:           Me.Find 1 & var_98 & "'", var_B0, var_8C
  loc_12E165A:         End If
  loc_12E165A:       End If
  loc_12E165A:     End If
  loc_12E165A:   End If
  loc_12E165A: End If
  loc_12E165A: Exit Sub
  loc_12E165B: ' Referenced from: 12E0FEC
  loc_12E1663: Set var_88 = Err()
  loc_12E1669: Call 0.Method_arg_2C (var_98)
  loc_12E168A: MsgBox(CVar(var_98), &H40, "Information", var_FC, var_124)
  loc_12E169D: Exit Sub
  loc_12E169E: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10EA918
  'Data Table: 486ABC
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_98 As DataGrid
  loc_10EA612: If (CLng(Shift) = &H1B) Then
  loc_10EA615:   Call Proc_219_27_EBE460()
  loc_10EA61A:   Exit Sub
  loc_10EA61B: End If
  loc_10EA61E: var_88 = KeyCode
  loc_10EA629: If (var_88 = CInt(2)) Then
  loc_10EA649:   Set var_9C = Me.FGPoint
  loc_10EA654:   Set var_98 = Nothing
  loc_10EA682:   Proc_6_69_134A630(Me.DGRestType, Me.Txt, KeyCode, global_76, Shift, 0)
  loc_10EA6F1:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10EA717:     Proc_6_138_106E830(Me.DGRestType, global_76, KeyCode, Me.FGPoint, 1)
  loc_10EA725:   End If
  loc_10EA728: Else
  loc_10EA730:   If (var_88 = CInt(4)) Then
  loc_10EA750:     Set var_9C = Me.FGPoint
  loc_10EA75B:     Set var_98 = Nothing
  loc_10EA78D:     Proc_6_69_134A630(Me.DGCompany, Me.Txt, CInt(4), global_80, Shift, 0, 1)
  loc_10EA7FC:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10EA803:       Set var_98 = Me.DGCompany
  loc_10EA822:       Proc_6_138_106E830(var_98, global_80, KeyCode, Me.FGPoint, var_98, var_9C)
  loc_10EA830:     End If
  loc_10EA830:   End If
  loc_10EA830: End If
  loc_10EA861: Set var_98 = Me.DGCompany
  loc_10EA886: If (((CBool(Me.DGRestType.Visible) = 0) And (CBool(Me.DGPayType.Visible) = 0)) And (CBool(var_98.Visible) = 0)) Then
  loc_10EA8B0:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And ((KeyCode = CInt(0)) Or (KeyCode = CInt(1)))) Then
  loc_10EA8B9:     Call Txt_Validate(KeyCode)
  loc_10EA8C4:     If (var_86 = &HFF) Then
  loc_10EA8C7:       Exit Sub
  loc_10EA8C8:     End If
  loc_10EA8CE:     Proc_6_75_E5335C(Shift, arg_14, var_86, 0)
  loc_10EA8D6:   Else
  loc_10EA8EB:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10EA8F4:       Proc_6_75_E5335C(Shift, arg_14, var_98)
  loc_10EA8FC:     Else
  loc_10EA906:       If (CLng(Shift) = &H26) Then
  loc_10EA90F:         Proc_6_76_E533C8(Shift, arg_14, var_9C)
  loc_10EA914:       End If
  loc_10EA914:     End If
  loc_10EA914:   End If
  loc_10EA914: End If
  loc_10EA914: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F908FC
  'Data Table: 486ABC
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_94 As Variant
  loc_F9079F: Proc_6_58_E06050(arg_10)
  loc_F907AA: Proc_6_133_E7FB08(var_94)
  loc_F907B3: arg_10 = CInt(var_94)
  loc_F907BC: var_96 = KeyAscii
  loc_F907C7: If (var_96 = CInt(2)) Then
  loc_F907E6:   If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_F90813:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_F90845:     Proc_6_138_106E830(Me.DGRestType, global_76, KeyAscii, Me.FGPoint)
  loc_F90853:   End If
  loc_F90856: Else
  loc_F9085E:   If (var_96 = CInt(4)) Then
  loc_F9087D:     If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_F908B5:       Proc_6_68_12A2818(Me.DGCompany, Me.Txt, KeyAscii, global_80, arg_10)
  loc_F908EB:       Proc_6_138_106E830(Me.DGCompany, global_80, KeyAscii, Me.FGPoint, "Name")
  loc_F908F9:     End If
  loc_F908F9:   End If
  loc_F908F9: End If
  loc_F908F9: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4D32C
  'Data Table: 486ABC
  loc_E4D30A: Set var_88 = Me.Txt
  loc_E4D310: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4D31E: Proc_6_73_E23294(var_8C)
  loc_E4D32A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1166518
  'Data Table: 486ABC
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_98 As TextBox
  loc_1166168: On Error Goto loc_11664D1
  loc_116616E: var_86 = Cancel
  loc_1166179: If (var_86 = CInt(0)) Then
  loc_1166186:   Set var_8C = Me.Txt
  loc_116618C:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11661AC:   Set var_98 = Me.Txt
  loc_11661B2:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_11661BA:   var_9C.Text = Proc_6_33_15125B8(var_90)
  loc_11661D0: Else
  loc_11661D8:   If (var_86 = CInt(1)) Then
  loc_11661E5:     Set var_8C = Me.Txt
  loc_11661EB:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116620B:     Set var_98 = Me.Txt
  loc_1166211:     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1166219:     var_9C.Text = Proc_6_33_15125B8(var_90)
  loc_116622F:   Else
  loc_1166237:     If (var_86 = CInt(2)) Then
  loc_1166247:       Set var_8C = Me.Txt
  loc_116624D:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116626C:       If (var_90.Text <> vbNullString) Then
  loc_11662AA:         Set var_94 = Me.Txt
  loc_11662B0:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_11662B8:         var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11662EB:         var_90 = Me.Fields.Item("Code")
  loc_1166309:         Set var_94 = Me.Txt
  loc_116630F:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1166317:         var_98.Tag = CStr(var_90.Value)
  loc_1166330:       Else
  loc_116633D:         Set var_8C = Me.Txt
  loc_1166343:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116634B:         var_90.Text = vbNullString
  loc_1166364:         Set var_8C = Me.Txt
  loc_116636A:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1166372:         var_90.Tag = vbNullString
  loc_116637E:       End If
  loc_1166381:     Else
  loc_1166389:       If (var_86 = CInt(4)) Then
  loc_1166399:         Set var_8C = Me.Txt
  loc_116639F:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11663BE:         If (var_90.Text <> vbNullString) Then
  loc_11663FC:           Set var_94 = Me.Txt
  loc_1166402:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_116640A:           var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_116643D:           var_90 = Me.Fields.Item("Code")
  loc_116644E:           var_A0 = CStr(var_90.Value)
  loc_116645B:           Set var_94 = Me.Txt
  loc_1166461:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1166469:           var_98.Tag = var_A0
  loc_1166482:         Else
  loc_116648F:           Set var_8C = Me.Txt
  loc_1166495:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116649D:           var_90.Text = vbNullString
  loc_11664B6:           Set var_8C = Me.Txt
  loc_11664BC:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11664C4:           var_90.Tag = vbNullString
  loc_11664D0:         End If
  loc_11664D0:       End If
  loc_11664D0:     End If
  loc_11664D0:   End If
  loc_11664D0: End If
  loc_11664D0: Exit Sub
  loc_11664D1: ' Referenced from: 1166168
  loc_11664D9: Set var_8C = Err()
  loc_11664DF: Call 0.Method_arg_2C (var_A0)
  loc_1166500: MsgBox(CVar(var_A0), &H40, "Information", var_F0, var_110)
  loc_1166513: Exit Sub
  loc_1166514: Exit Sub
End Sub

Private Sub cmdTransfer_Click() 'E0004C
  'Data Table: 486ABC
  loc_E00044: Call Proc_219_28_1195214()
  loc_E00049: Exit Sub
End Sub

Private Sub CmdExit_Click() 'E16A60
  'Data Table: 486ABC
  loc_E16A55: Me.Global.Unload Me
  loc_E16A5D: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_9 'F40A34
  'Data Table: 486ABC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4092B: Me.DGRestType.Visible = False
  loc_F4094A: If (Me.RecordCount > 0) Then
  loc_F40989:   Set var_B4 = Me.Txt
  loc_F4098F:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2), var_B8)
  loc_F40997:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F409CA:   var_B0 = Me.Fields.Item("Code")
  loc_F409E9:   Set var_B4 = Me.Txt
  loc_F409EF:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2), var_B8)
  loc_F409F7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F40A0D: End If
  loc_F40A18: Set var_A8 = Me.Txt
  loc_F40A1E: Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2))
  loc_F40A26: var_B0.SetFocus
  loc_F40A32: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_1F 'E719E4
  'Data Table: 486ABC
  loc_E719A2: Proc_6_153_E91D24(Me.DGRestType, arg_14)
  loc_E719B9: Set var_8C = Me.FGPoint
  loc_E719D5: Proc_6_138_106E830(Me.DGRestType, global_76, CInt(2))
  loc_E719E3: Exit Sub
End Sub

Private Sub CmdFill_Click() '118EFF4
  'Data Table: 486ABC
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As Variant
  loc_118EC17: Set var_88 = Me.Txt
  loc_118EC1D: Call 0.Method_CmdFill_Click0 (CInt(0))
  loc_118EC46: If (Proc_6_27_EA61EC(var_8C, "From Date") = 0) Then
  loc_118EC49:   Exit Sub
  loc_118EC4A: End If
  loc_118EC58: Set var_88 = Me.Txt
  loc_118EC5E: Call 0.Method_CmdFill_Click0 (CInt(0), var_8C)
  loc_118EC82: Set var_90 = Me.Txt
  loc_118EC88: Call 0.Method_CmdFill_Click0 (CInt(0), var_98, var_9C)
  loc_118EC90: (CDate(var_8C.Text) > MemVar_1F950FC) = var_98.Text
  loc_118ECB1: If (var_8C Or (CDate(var_9C) < MemVar_1F950F4)) Then
  loc_118ECCD:   MsgBox("FromDate must be with in Financial Year", &H10, var_DC, var_FC, var_11C)
  loc_118ECE8:   Set var_88 = Me.Txt
  loc_118ECEE:   Call 0.Method_CmdFill_Click0 (CInt(0))
  loc_118ECF6:   var_8C.SetFocus
  loc_118ED02:   Exit Sub
  loc_118ED03: End If
  loc_118ED0E: Set var_88 = Me.Txt
  loc_118ED14: Call 0.Method_CmdFill_Click0 (CInt(1), var_8C)
  loc_118ED3D: If (Proc_6_27_EA61EC(var_8C, "To Date") = 0) Then
  loc_118ED40:   Exit Sub
  loc_118ED41: End If
  loc_118ED4F: Set var_88 = Me.Txt
  loc_118ED55: Call 0.Method_CmdFill_Click0 (CInt(1), var_8C)
  loc_118ED79: Set var_90 = Me.Txt
  loc_118ED7F: Call 0.Method_CmdFill_Click0 (CInt(1), var_98, var_9C)
  loc_118ED87: (CDate(var_8C.Text) > MemVar_1F950FC) = var_98.Text
  loc_118EDA8: If (var_8C Or (CDate(var_9C) < MemVar_1F950F4)) Then
  loc_118EDC4:   MsgBox("ToDate must be with in Financial Year", &H10, var_DC, var_FC, var_11C)
  loc_118EDDF:   Set var_88 = Me.Txt
  loc_118EDE5:   Call 0.Method_CmdFill_Click0 (CInt(0))
  loc_118EDED:   var_8C.SetFocus
  loc_118EDF9:   Exit Sub
  loc_118EDFA: End If
  loc_118EE08: Set var_90 = Me.Txt
  loc_118EE0E: Call 0.Method_CmdFill_Click0 (CInt(1), var_98)
  loc_118EE29: Set var_88 = Me.Txt
  loc_118EE2F: Call 0.Method_CmdFill_Click0 (CInt(0), var_8C)
  loc_118EE59: If (CDate(var_8C.Text) > CDate(var_98.Text)) Then
  loc_118EE75:   MsgBox("FromDate must be less than ToDate", &H10, var_DC, var_FC, var_11C)
  loc_118EE90:   Set var_88 = Me.Txt
  loc_118EE96:   Call 0.Method_CmdFill_Click0 (CInt(0), var_8C)
  loc_118EE9E:   var_8C.SetFocus
  loc_118EEAA:   Exit Sub
  loc_118EEAB: End If
  loc_118EEB6: Set var_88 = Me.Txt
  loc_118EEBC: Call 0.Method_CmdFill_Click0 (CInt(2), var_8C)
  loc_118EEE5: If (Proc_6_27_EA61EC(var_8C, "Outlet") = 0) Then
  loc_118EEE8:   Exit Sub
  loc_118EEE9: End If
  loc_118EEF4: Set var_88 = Me.Txt
  loc_118EEFA: Call 0.Method_CmdFill_Click0 (CInt(4), var_8C)
  loc_118EF23: If (Proc_6_27_EA61EC(var_8C, "Party Name") = 0) Then
  loc_118EF26:   Exit Sub
  loc_118EF27: End If
  loc_118EF33: Me.CmdFill.Enabled = False
  loc_118EF48: Me.Label1.Caption = "Processing..."
  loc_118EF5A: Me.Label1.Refresh
  loc_118EF62: Call Proc_219_22_117D690(var_8C)
  loc_118EF67: Call Proc_219_23_1232C50()
  loc_118EF7F: Me.GridSel.Row = 1
  loc_118EF9A: Me.GridSel.Col = 0
  loc_118EFA6: Set var_88 = Me.GridSel
  loc_118EFC4: Me.Label1.Caption = vbNullString
  loc_118EFD6: Me.Label1.Refresh
  loc_118EFEA: Me.CmdFill.Enabled = True
  loc_118EFF2: Exit Sub
End Sub

Private Sub Command1_Click() 'DFCB00
  'Data Table: 486ABC
  Dim var_B01 As Double
  loc_DFCAFC: Exit Sub
  loc_DFCAFD: var_B01 = 
End Sub

Public Sub Proc_219_22_117D690
  'Data Table: 486ABC
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_117D2C2: Me.GridSel.Rows = 1
  loc_117D2D6: Me.GridSel.Cols = 5
  loc_117D2DB: var_98 = 0
  loc_117D2E7: var_BC = CVar(CLng(0)) 'Long
  loc_117D2EC: var_DC = "O"
  loc_117D2F5: LateIdCallSt
  loc_117D300: var_98 = CVar(CLng(0)) 'Long
  loc_117D305: var_BC = &H258
  loc_117D311: LateIdCallSt
  loc_117D319: var_98 = 0
  loc_117D325: var_BC = CVar(CLng(1)) 'Long
  loc_117D32A: var_DC = "Bill No"
  loc_117D333: LateIdCallSt
  loc_117D33E: var_98 = CVar(CLng(1)) 'Long
  loc_117D349: var_BC = CVar(CInt(1)) 'Integer
  loc_117D350: LateIdCallSt
  loc_117D35B: var_98 = CVar(CLng(1)) 'Long
  loc_117D366: var_BC = CVar(CInt(1)) 'Integer
  loc_117D36D: LateIdCallSt
  loc_117D378: var_98 = CVar(CLng(1)) 'Long
  loc_117D37D: var_BC = &H5DC
  loc_117D389: LateIdCallSt
  loc_117D391: var_98 = 0
  loc_117D39D: var_BC = CVar(CLng(2)) 'Long
  loc_117D3A2: var_DC = "DocId"
  loc_117D3AB: LateIdCallSt
  loc_117D3B6: var_98 = CVar(CLng(2)) 'Long
  loc_117D3C1: var_BC = CVar(CInt(7)) 'Integer
  loc_117D3C8: LateIdCallSt
  loc_117D3D3: var_98 = CVar(CLng(2)) 'Long
  loc_117D3DE: var_BC = CVar(CInt(7)) 'Integer
  loc_117D3E5: LateIdCallSt
  loc_117D3F0: var_98 = CVar(CLng(2)) 'Long
  loc_117D3F5: var_BC = 0
  loc_117D401: LateIdCallSt
  loc_117D409: var_98 = 0
  loc_117D415: var_BC = CVar(CLng(3)) 'Long
  loc_117D41A: var_DC = "Bill Date"
  loc_117D423: LateIdCallSt
  loc_117D42E: var_98 = CVar(CLng(3)) 'Long
  loc_117D439: var_BC = CVar(CInt(1)) 'Integer
  loc_117D440: LateIdCallSt
  loc_117D44B: var_98 = CVar(CLng(3)) 'Long
  loc_117D456: var_BC = CVar(CInt(1)) 'Integer
  loc_117D45D: LateIdCallSt
  loc_117D468: var_98 = CVar(CLng(3)) 'Long
  loc_117D46D: var_BC = &H7D0
  loc_117D479: LateIdCallSt
  loc_117D481: var_98 = 0
  loc_117D48D: var_BC = CVar(CLng(4)) 'Long
  loc_117D492: var_DC = "Bill Amount"
  loc_117D49B: LateIdCallSt
  loc_117D4A6: var_98 = CVar(CLng(4)) 'Long
  loc_117D4B1: var_BC = CVar(CInt(7)) 'Integer
  loc_117D4B8: LateIdCallSt
  loc_117D4C3: var_98 = CVar(CLng(4)) 'Long
  loc_117D4CE: var_BC = CVar(CInt(7)) 'Integer
  loc_117D4D5: LateIdCallSt
  loc_117D4E0: var_98 = CVar(CLng(4)) 'Long
  loc_117D4E5: var_BC = &H7D0
  loc_117D4F1: LateIdCallSt
  loc_117D4F9: var_98 = vbNullString
  loc_117D503: Set var_AC = Me.GridSel
  loc_117D527: Me.GridSel.FixedRows = 1
  loc_117D531: Set var_88 = Nothing 
  loc_117D545: ReDim Preserve global_68(0 To 0)
  loc_117D55C: global_68(0) = 0
  loc_117D570: Me.GridSel.Height = CVar(CDbl(6000))
  loc_117D58B: Me.GridSel.Width = CVar(CDbl(6500))
  loc_117D593: var_98 = 0
  loc_117D5C4: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H32))
  loc_117D5D3: var_98 = 0
  loc_117D604: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &HA))
  loc_117D635: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&H1E))
  loc_117D666: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&H1E))
  loc_117D685: Me.Check1.Value = CInt(0)
  loc_117D68D: Exit Sub
End Sub

Public Sub Proc_219_23_1232C50
  'Data Table: 486ABC
  Dim var_8C As String
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_114 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_15C As TextBox
  Dim var_190 As Variant
  Dim var_1A8 As TextBox
  Dim var_1DC As Variant
  Dim var_1FC As Variant
  Dim var_22C As Variant
  Dim unk_486AD0 As Connection15
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_100 As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_BC As Variant
  loc_12327B0: var_8C = "Select S.Vno,S.Vdate,S.NetAmt as BillAmount,S.DocId From (PayCharge P Inner Join Sale1 S on P.DocId=S.DocId) Where P.PayType In ('Company') And P.PayType Not In('PPOS','IPOS') And P.PayCode Not In('" & MemVar_1F95078
  loc_12327D3: Set var_98 = Me.Txt
  loc_12327D9: Call 0.Method_Proc_219_23_1232C500 (CInt(0), var_9C, CVar(var_8C & "ROOM','" & MemVar_1F95078 & "TOUT') And S.VDate Between "))
  loc_12327E8: Proc_6_7_F26918(var_BC, CVar(var_9C), var_250)
  loc_12327F0: var_DC = -1 & var_BC 
  loc_1232808: Set var_100 = Me.Txt
  loc_123280E: Call 0.Method_Proc_219_23_1232C500 (CInt(1), var_104)
  loc_123281D: Proc_6_7_F26918(var_124, CVar(var_104))
  loc_123282E: var_154 = var_DC & " And " & var_124 & " And P.RestCode='" 
  loc_1232840: Set var_158 = Me.Txt
  loc_1232846: Call 0.Method_Proc_219_23_1232C500 (CInt(2), var_15C, var_160)
  loc_123284E: var_154 = var_15C.Tag
  loc_1232874: Set var_1A4 = Me.Txt
  loc_123287A: Call 0.Method_Proc_219_23_1232C500 (CInt(4), var_1A8)
  loc_12328A9: var_22C = var_254 & CVar(var_160) & "' And P.CompCode='" & CVar(var_1A8.Tag) & "' And P.Logsite_Code='" & CVar(MemVar_1F95078) & "' Order by S.VNo" 
  loc_12328B7: unk_486AD0.Execute CStr(var_22C), , 
  loc_12328C8: Set global_84 = var_254
  loc_1232928: If (Me.RecordCount = 0) Then
  loc_123293E:   Me.GridSel.Rows = 2
  loc_1232946:   Exit Sub
  loc_1232947: End If
  loc_123295A: Me.GridSel.Row = 1
  loc_123296E: Me.CmdTransfer.Enabled = True
  loc_1232976: ' Referenced from: 1232C2F
  loc_1232988: If Not(Me.EOF) Then
  loc_123298F:   Set var_264 = Me.GridSel
  loc_1232992:   var_EC = vbNullString
  loc_12329B6:   var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_12329BE:   var_190 = CVar(CLng(0)) 'Long
  loc_12329CC:   LateIdCallSt
  loc_12329ED:   var_144 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_12329F5:   var_1DC = CVar(CLng(1)) 'Long
  loc_1232A28:   var_CC = CVar(CStr(Me.Fields.Item("VNo").Value)) 'String
  loc_1232A2F:   LateIdCallSt
  loc_1232A94:   var_CC = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DocID")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_264, var_CC, CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_1232A9B:   LateIdCallSt
  loc_1232AF4:   var_190 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1232AFC:   var_1FC = CVar(CLng(3)) 'Long
  loc_1232B19:   var_BC = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("VDate")), var_264, "dd/mmm/yyyy", var_264, vbNullString)) 'String
  loc_1232B2F:   LateIdCallSt
  loc_1232B79:   Proc_6_39_E7D3A0(var_BC, CVar(Me.Fields.Item("BillAmount")), var_264, CVar(CStr(Format(var_BC, "dd/mmm/yyyy"))), 1, 1)
  loc_1232B91:   var_190 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1232B99:   var_1FC = CVar(CLng(4)) 'Long
  loc_1232BC2:   var_114 = CVar(CStr(Format(var_BC, "0.00"))) 'String
  loc_1232BC9:   LateIdCallSt
  loc_1232BE9:   Set var_264 = Nothing 
  loc_1232C06:   var_EC = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_1232C15:   Me.GridSel.Row = "BillAmount"
  loc_1232C2A:   Me.MoveNext
  loc_1232C2F:   GoTo loc_1232976
  loc_1232C32: End If
  loc_1232C45: Me.GridSel.FixedRows = 1
  loc_1232C4D: Exit Sub
End Sub

Public Sub Proc_219_24_F09B70(arg_C, arg_10) 'F09B70
  'Data Table: 486ABC
  Dim var_86 As Integer
  Dim Proc_219_24_F09B70434 As Variant
  loc_F09A7E: var_86 = &HFF
  loc_F09A93: Call Proc_219_25_107B688("Sale1", arg_C, arg_10)
  loc_F09AA1: If (var_8E = 0) Then
  loc_F09AA9:   Proc_219_24_F09B70 = 0
  loc_F09AAF: End If
  loc_F09AC1: Call Proc_219_25_107B688("Sale2", arg_C, arg_10)
  loc_F09ACF: If (var_8E = 0) Then
  loc_F09AD7:   Proc_219_24_F09B70 = 0
  loc_F09ADD: End If
  loc_F09AEF: Call Proc_219_25_107B688("Stock", arg_C, arg_10, var_8E)
  loc_F09AFD: If (var_8E = 0) Then
  loc_F09B05:   Proc_219_24_F09B70 = 0
  loc_F09B0B: End If
  loc_F09B1D: Call Proc_219_25_107B688("SunTran", arg_C, arg_10, var_8E)
  loc_F09B2B: If (var_8E = 0) Then
  loc_F09B33:   Proc_219_24_F09B70 = 0
  loc_F09B39: End If
  loc_F09B4B: Call Proc_219_25_107B688("PayCharge", arg_C, arg_10, var_8E)
  loc_F09B59: If (var_8E = 0) Then
  loc_F09B5E:   var_86 = 0
  loc_F09B61:   Proc_219_24_F09B70 = var_86
  loc_F09B67: End If
  loc_F09B6D: Proc_219_24_F09B70434 = var_86 & var_8E 
End Sub

Public Sub Proc_219_25_107B688(arg_C, arg_10) '107B688
  'Data Table: 486ABC
  Dim var_86 As Integer
  Dim unk_486AD0 As Connection15
  Dim var_B4 As Variant
  Dim var_C4 As Variant
  Dim var_8C As Recordset15
  Dim var_90 As Recordset15
  Dim var_C8 As Variant
  Dim var_DC As Variant
  loc_107B40A: var_86 = &HFF
  loc_107B43F: unk_486AD0.Execute "Select * From " & arg_C & " Where DocId='" & arg_10 & "'", var_C4, -1
  loc_107B44A: Set var_8C = var_C8
  loc_107B462: Set var_90 = New 
  loc_107B47A: var_B4 = CVar(global_52) 'Address
  loc_107B48D: Me.Recordset15.Open CVar("Select * From " & arg_C), var_B4, 1
  loc_107B495: ' Referenced from: 107B67D
  loc_107B4A4: If Not(var_8C.EOF) Then
  loc_107B4B2:   var_90.AddNew var_B4, var_DC
  loc_107B4DF:   For var_E4 = 0 To CInt((var_8C.Fields.Count - 1)): var_92 = var_E4 'Integer
  loc_107B51D:     If (var_8C.Fields.Item(CVar(var_92)).DefinedSize <> &H7FFFFFFF) Then
  loc_107B582:       If (var_8C.Fields.Item(CVar(var_92)).DefinedSize <> var_90.Fields.Item(CVar(var_92)).DefinedSize) Then
  loc_107B5D3:         MsgBox(CVar(arg_C & "." & var_8C.Fields.Item(CVar(var_92)).Name & " Field Size Mismatch"), 0, var_104, var_124, var_144)
  loc_107B5F8:         Proc_219_25_107B688 = 0
  loc_107B5FE:       End If
  loc_107B5FE:     End If
  loc_107B607:     var_B4 = CVar(var_92) 'Integer
  loc_107B630:     var_DC = CVar(var_92) 'Integer
  loc_107B64A:     var_90.Fields.Item(var_DC).Value = var_8C.Fields.Item(var_B4).Value
  loc_107B660:   Next var_E4 'Integer
  loc_107B670:   var_90.Update var_B4, var_DC
  loc_107B678:   var_8C.MoveNext
  loc_107B67D:   GoTo loc_107B495
  loc_107B680: End If
  loc_107B686: Set Proc_219_25_107B688400 = 
End Sub

Public Sub Proc_219_26_11C4D5C(arg_C, arg_10) '11C4D5C
  'Data Table: 486ABC
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_94 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_8C As Integer
  Dim var_B8 As Variant
  Dim var_D8 As Long
  Dim var_FC As Variant
  Dim var_11C As Long
  loc_11C4906: var_86 = &HFF
  loc_11C490B: var_88 = 0
  loc_11C4917: If (CInt(arg_10) = 1) Then
  loc_11C493F:   For var_A8 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_8A = var_A8 'Integer
  loc_11C4948:     var_8C = var_8A
  loc_11C494F:     var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C4954:     var_D8 = 2
  loc_11C4983:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11C498A:       var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C498F:       var_D8 = 2
  loc_11C49B2:       var_FC = CVar(CLng(var_8C)) 'Long
  loc_11C49B7:       var_11C = 1
  loc_11C49E9:       Call Proc_219_24_F09B70(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)))
  loc_11C4A09:       If (var_146 = 0) Then
  loc_11C4A11:         Proc_219_26_11C4D5C = 0
  loc_11C4A17:       End If
  loc_11C4A19:       var_88 = &HFF
  loc_11C4A41:       For var_14A = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_8E = var_14A 'Integer
  loc_11C4A5A:         Me.GridSel.Row = CVar(CLng(var_8C))
  loc_11C4A75:         Me.GridSel.Col = CVar(CLng(var_8E))
  loc_11C4A90:         Me.GridSel.CellBackColor = &H80FF
  loc_11C4A9B:       Next var_14A 'Integer
  loc_11C4AA0:     End If
  loc_11C4AA3:   Next var_A8 'Integer
  loc_11C4AA8:   Exit For
  loc_11C4AAB: End If
  loc_11C4AB3: CRefVarAry
  loc_11C4ABB: For var_14E = 0 To CInt(UBound(arg_C, 1)): var_8A = var_14E 'Integer
  loc_11C4ADC:   If (arg_C(var_8A) = 0) Then
  loc_11C4ADF:     GoTo loc_11C4C89
  loc_11C4AE2:   End If
  loc_11C4AF3:   var_8C = CInt(arg_C(var_8A))
  loc_11C4AFD:   var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C4B02:   var_D8 = 0
  loc_11C4B31:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_11C4B38:     var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C4B3D:     var_D8 = 2
  loc_11C4B6C:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11C4B73:       var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C4B78:       var_D8 = 2
  loc_11C4B9B:       var_FC = CVar(CLng(var_8C)) 'Long
  loc_11C4BA0:       var_11C = 1
  loc_11C4BD2:       Call Proc_219_24_F09B70(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)))
  loc_11C4BF2:       If (var_146 = 0) Then
  loc_11C4BFA:         Proc_219_26_11C4D5C = 0
  loc_11C4C00:       End If
  loc_11C4C02:       var_88 = &HFF
  loc_11C4C2A:       For var_152 = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_8E = var_152 'Integer
  loc_11C4C43:         Me.GridSel.Row = CVar(CLng(var_8C))
  loc_11C4C5E:         Me.GridSel.Col = CVar(CLng(var_8E))
  loc_11C4C79:         Me.GridSel.CellBackColor = &H80FF
  loc_11C4C84:       Next var_152 'Integer
  loc_11C4C89:       ' Referenced from: 11C4ADF
  loc_11C4C89:     End If
  loc_11C4C89:   End If
  loc_11C4C8C: Next var_14E 'Integer
  loc_11C4C91: ' Referenced from: 11C4AA8
  loc_11C4CA1: If ((var_88 = 0) And (CInt(arg_10) = 0)) Then
  loc_11C4CA6:   var_86 = 0
  loc_11C4CA9:   var_B8 = 0
  loc_11C4CB2:   var_D8 = 1
  loc_11C4CC5:   var_A4 = Me.GridSel.TextMatrix)
  loc_11C4CED:   MsgBox(CVar("Select " & CStr(var_A4)), &H40, var_164, var_174, var_184)
  loc_11C4D18:   Me.GridSel.Row = 1
  loc_11C4D33:   Me.GridSel.Col = 0
  loc_11C4D3F:   Set var_94 = Me.GridSel
  loc_11C4D50: End If
  loc_11C4D50: Proc_219_26_11C4D5C = GridSel.DispID_8001
  loc_11C4D56: Proc_219_26_11C4D5C = var_A4
End Sub

Public Sub Proc_219_27_EBE460
  'Data Table: 486ABC
  loc_EBE3D8: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_EBE3EA:   Me.DGRestType.Visible = False
  loc_EBE3F2: End If
  loc_EBE40E: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_EBE420:   Me.DGCompany.Visible = False
  loc_EBE428: End If
  loc_EBE444: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBE456:   Me.FGPoint.Visible = False
  loc_EBE45E: End If
  loc_EBE45E: Exit Sub
End Sub

Public Sub Proc_219_28_1195214
  'Data Table: 486ABC
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_CC As String
  Dim MemVar_1F95230 As String
  Dim Me As Connection15
  Dim var_96 As Integer
  Dim Proc_219_28_11952144C0 As Variant
  loc_1194E2C: On Error Goto loc_11951C5
  loc_1194E3B: Me.CmdTransfer.Enabled = False
  loc_1194E50: Me.Label1.Caption = "Transfering Data ..."
  loc_1194E5C: Set var_9C = Me.Label1
  loc_1194E62: var_9C.Refresh
  loc_1194E7D: var_CC = vbNullString
  loc_1194E88: If (Trim(MemVar_1F95230) = var_CC) Then
  loc_1194E8E:   MemVar_1F95230 = "C:\Analysis\Transfer"
  loc_1194E9E:   Call 0.Method_Proc_219_28_11952148 ("C:\Analysis")
  loc_1194EA9:   If (var_DE = 0) Then
  loc_1194EB8:     Call 0.Method_arg_74 ("C:\Analysis", var_9C)
  loc_1194ECC:     Call 0.Method_Proc_219_28_11952148 ("C:\Analysis\Transfer", var_DE)
  loc_1194ED7:     If (var_DE = 0) Then
  loc_1194EE6:       Call 0.Method_arg_74 ("C:\Analysis\Transfer", var_9C)
  loc_1194EEE:     End If
  loc_1194EEE:   End If
  loc_1194EEE: End If
  loc_1194EFA: Call 0.Method_Proc_219_28_11952148 (MemVar_1F95230, var_DE)
  loc_1194F05: If (var_DE = 0) Then
  loc_1194F16:   var_AC = "Transfer Location Not Exits"
  loc_1194F1B:   var_BC = var_AC
  loc_1194F21:   MsgBox(var_BC, &H40, var_DC, var_100, var_120)
  loc_1194F31: End If
  loc_1194F55: MemVar_1F95230 = Replace(MemVar_1F95230 & "\", "\\", "\", 1, -1, 0)
  loc_1194F69: global_56 = MemVar_1F95230 & "SaleTransfer.mdb"
  loc_1194F81: Call 0.Method_arg_6C (global_56, "C:\TEMPZZZZ.MDB", &HFF)
  loc_1194F94: Call 0.Method_arg_5C (global_56, 0)
  loc_1194FB4: Me.DBEngine.CompactDatabase "C:\TEMPZZZZ.MDB", global_56, var_AC, var_CC, var_F0
  loc_1194FC3: Set global_52 = New 
  loc_1194FD5: Me.Connection15.CursorLocation = 3
  loc_1194FE5: Me.IsolationLevel = &H10
  loc_1194FF5: Me.CommandTimeout = 0
  loc_1195031: Me.DBEngine.RegisterDatabase "HotelTrans", "Microsoft Access Driver (*.MDB)", True, "DBQ=" & global_56 & vbCr & "Maxbuffersize=2048" & vbCr & "MaxscanRows=16"
  loc_1195057: Me.Open "Provider=MSDASQL.1;Persist Security Info=False;Data Source=HotelTrans", vbNullString, vbNullString, -1
  loc_119505E: var_96 = &HFF
  loc_119506A: Me.BeginTrans var_138
  loc_1195085: Me.Execute "Delete From Sale1", var_BC, -1
  loc_11950A6: Me.Execute "Delete From Sale2", var_BC, -1
  loc_11950C7: Me.Execute "Delete From Stock", var_BC, -1
  loc_11950E8: Me.Execute "Delete From SunTran", var_BC, -1
  loc_1195109: Me.Execute "Delete From PayCharge", var_BC, -1
  loc_119513D: Call Proc_219_26_11C4D5C(global_68, CByte(Me.Check1.Value))
  loc_119514B: If (var_13C = 0) Then
  loc_119514E:   GoTo loc_11951C5
  loc_1195151: End If
  loc_1195157: Me.CommitTrans
  loc_119515E: var_96 = 0
  loc_119516E: Me.Label1.Caption = vbNullString
  loc_1195180: Me.Label1.Refresh
  loc_11951A1: MsgBox("Transfer Compeleted", 0, var_DC, var_100, var_120)
  loc_11951B7: Me.Close
  loc_11951C1: Set var_90 = Nothing
  loc_11951C4: Exit Sub
  loc_11951C5: ' Referenced from: 119514E
  loc_11951C5: ' Referenced from: 1194E2C
  loc_11951D2: Me.Label1.Caption = vbNullString
  loc_11951DE: Set var_9C = Me.Label1
  loc_11951E4: var_9C.Refresh
  loc_11951F2: If (var_96 = &HFF) Then
  loc_11951FB:   Me.RollbackTrans
  loc_1195206:   Me.Close
  loc_119520B: End If
  loc_119520B: Proc_6_60_E63754(var_96, var_13C, var_9C, var_9C, var_9C)
  loc_1195210: Exit Sub
  loc_1195212: Proc_219_28_11952144C0 = CVar(var_9C & var_9C) 'String
End Sub
