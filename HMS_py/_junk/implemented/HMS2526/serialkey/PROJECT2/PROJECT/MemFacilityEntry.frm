VERSION 5.00
Begin VB.Form MemFacilityEntry
  Caption = "Member Used Facility Entry"
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
  ClientWidth = 4680
  ClientHeight = 3195
  Begin DataGrid DGVType
    Left = 12990
    Top = 2385
    Width = 5055
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 4680
    Height = 450
    TabIndex = 15
  End
  Begin TextBox TxtSearch
    BackColor = &HFFFF80&
    Left = 5010
    Top = 3615
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    HideSelection = 0   'False
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdSavez
    Caption = "Save"
    Left = 11700
    Top = 5400
    Width = 1920
    Height = 630
    Visible = 0   'False
    TabIndex = 13
    BeginProperty Font
      Name = "Tahoma"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin ListView FacilityListView
    Left = 150
    Top = 975
    Width = 2700
    Height = 5430
    TabIndex = 10
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3810
    Top = 7635
    Width = 1425
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 11
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1215
    Top = 7650
    Width = 1425
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 10
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 5190
    Top = 2970
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    Left = 12330
    Top = 6075
    Width = 1845
    Height = 1755
    Visible = 0   'False
    TabIndex = 0
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 75
      Width = 1860
      Height = 1725
      TabStop = 0   'False
      TabIndex = 1
    End
  End
  Begin DataGrid DGSundry
    Left = 13155
    Top = 435
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin MSHFlexGrid FGrid
    Left = 2835
    Top = 975
    Width = 8160
    Height = 5445
    TabIndex = 7
  End
  Begin BtnEnh CmdSave
    Left = 6180
    Top = 7575
    Width = 1155
    Height = 615
    TabIndex = 16
  End
  Begin Label LblName
    Caption = "Entry Date"
    Index = 1
    ForeColor = &HFF0000&
    Left = 2775
    Top = 7650
    Width = 975
    Height = 240
    TabIndex = 12
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
  Begin Label LblFacility
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 3090
    Top = 510
    Width = 7605
    Height = 510
    TabIndex = 11
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 20.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "For Month"
    Index = 0
    ForeColor = &HFF0000&
    Left = 180
    Top = 7650
    Width = 960
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
  Begin Label LblFacName
    Caption = "Facility Name"
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 90
    Top = 660
    Width = 2730
    Height = 255
    TabIndex = 8
    Alignment = 2 'Center
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
End

Attribute VB_Name = "MemFacilityEntry"

Private MasterFormExit As Integer
Private global_92 As Integer
Private global_94 As Integer

Public Sub FacilityListView_UnknownEvent_C(Index As Integer) 'F1DC38
  'Data Table: 4BB5FC
  Dim var_C8 As Integer
  Dim var_CC As ListSubItem
  loc_F1DB4F: Set var_88 = Index 
  loc_F1DB72: If (CLng(Me.FacilityListView.View) = 2) Then
  loc_F1DB93:   var_A4 = Me.FacilityListView.SelectedItem.Text
  loc_F1DBA5:   Me.LblFacility.Caption = var_A4
  loc_F1DBBF:   var_C8 = 1
  loc_F1DBEA:   var_C8 = Me.FacilityListView.SelectedItem.ListSubItems.ControlDefault
  loc_F1DBF2:   var_CC = var_CC.Text
  loc_F1DC04:   Me.LblFacility.Tag = var_A4
  loc_F1DC2A:   Me.LblFacility.Refresh
  loc_F1DC32:   Call Proc_278_53_13F3EF0(var_A4)
  loc_F1DC37: End If
  loc_F1DC37: Exit Sub
End Sub

Private Sub Form_Load() '1121A80
  'Data Table: 4BB5FC
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_D8 As MSHFlexGrid
  loc_1121724: On Error Goto loc_1121A7A
  loc_112172E: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1121746: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B4))
  loc_112175C: Me.LblFacName.BackColor = CLng(MemVar_1F951B4)
  loc_112176E: Set var_A8 = Me.TopCtrl1
  loc_1121774: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_1121782: Call 0.Method_arg_50 (var_AC)
  loc_1121792: Set var_A8 = Me.TopCtrl1
  loc_1121798: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_AC))
  loc_11217AD: Set global_96 = New 
  loc_11217BF: Me.TopCtrl1.CursorLocation = 3
  loc_11217CE: Set global_108 = New 
  loc_11217E0: Me.Recordset15.CursorLocation = 3
  loc_11217EF: Set global_112 = New 
  loc_1121801: Me.Recordset15.CursorLocation = 3
  loc_112182B: var_BC = CVar("Select Code,Name From MemFacilityMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By Name") 'String
  loc_112185C: Me.Recordset15.CursorLocation = 3
  loc_112187F: var_AC = "Select DISTINCT (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103)) AS SearchCode,SITE_CODE,LOGSITE_CODE From LocationFacility LF Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_1121886: var_BC = CVar("Select Code,Name From MemFacilityMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103))") 'String
  loc_1121890: r_BC, CVar(MemVar_1F95044), 3 var_BC, CVar(MemVar_1F95044), 3
  loc_112189B: Call Proc_278_52_F1BBD0(1, -1)
  loc_11218A0: Call Proc_278_55_10ECEAC(1)
  loc_11218A5: Call Proc_278_54_F9BA8C(-1)
  loc_11218BD: Me.FacilityListView.Width = CVar(CDbl(3800))
  loc_11218E3: Me.LblFacName.Width = CDbl(Me.FacilityListView.Width)
  loc_1121910: var_94 = CVar((CDbl(6500) - (Me.LblFacName.Height + CDbl(&HA)))) 'Single
  loc_112191F: Me.FacilityListView.Height = CVar(CDbl(3800))
  loc_112195B: var_94 = CVar(((CDbl(Me.FacilityListView.Left) + CDbl(Me.FacilityListView.Width)) + CDbl(&H19))) 'Single
  loc_112196A: Me.FGrid.Left = CVar(CDbl(3800))
  loc_112199D: Me.LblFacility.Left = CDbl(Me.FGrid.Left)
  loc_11219CA: Me.LblFacility.Width = CDbl(Me.FGrid.Width)
  loc_11219E3: var_D4 = Me.FGrid.Width
  loc_11219F0: Set var_D8 = Me.CmdSave
  loc_11219F6: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_D4)
  loc_1121A1E: var_94 = CVar(((CDbl(Me.FGrid.Left) + CDbl(var_D4)) - CDbl(var_E8))) 'Single
  loc_1121A27: Set var_EC = Me.CmdSave
  loc_1121A2D: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl(3800)))
  loc_1121A69: Call Proc_278_60_E9ADE8(Proc_5_1_100EC1C("ADD", Me), New)
  loc_1121A74: Call Proc_278_59_F19AD8(var_D4)
  loc_1121A79: Exit Sub
  loc_1121A7A: ' Referenced from: 1121724
  loc_1121A7A: Proc_6_60_E63754()
  loc_1121A7F: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E59920
  'Data Table: 4BB5FC
  loc_E598EB: Set global_100 = Nothing
  loc_E598FD: Set global_112 = Nothing
  loc_E5990F: Set global_96 = Nothing
  loc_E5991B: MasterFormExit = 0
  loc_E5991E: Exit Sub
End Sub

Private Sub Form_Activate() 'E47078
  'Data Table: 4BB5FC
  loc_E47048: On Error Goto loc_E47072
  loc_E4704F: Set var_88 = Me.TopCtrl1
  loc_E47055: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4706A: If (CLng(CInt()) = &H2D) Then
  loc_E4706D:   Call TopCtrl1_UnknownEvent_15()
  loc_E47072:   ' Referenced from: E47048
  loc_E47072: End If
  loc_E47072: Proc_6_60_E63754()
  loc_E47077: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25F74
  'Data Table: 4BB5FC
  loc_E25F59: If (MasterFormExit = &HFF) Then
  loc_E25F69:   Me.Global.Unload Me
  loc_E25F71: End If
  loc_E25F71: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A368
  'Data Table: 4BB5FC
  loc_E2A340: On Error Goto loc_E2A360
  loc_E2A357: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2A35F: Exit Sub
  loc_E2A360: ' Referenced from: E2A340
  loc_E2A360: Proc_6_60_E63754(Shift)
  loc_E2A365: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E854A0
  'Data Table: 4BB5FC
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E85443: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E85456: Set var_A8 = Me.TxtGrid
  loc_E8545C: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E85464: var_AC.Visible = False
  loc_E8547E: Set var_A8 = Me.TxtGrid
  loc_E85484: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E8548C: var_AC.MaxLength = 0
  loc_E85498: Call Proc_278_61_DFD250()
  loc_E8549D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E666E8
  'Data Table: 4BB5FC
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E666A4: Set var_88 = Me.TxtGrid
  loc_E666AA: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E666C4: If (var_8C.Visible = 0) Then
  loc_E666DD:   Me.FGrid.BackColorSel = CVar(CLng(global_84))
  loc_E666E5: End If
  loc_E666E5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1D9C0
  'Data Table: 4BB5FC
  loc_E1D9B7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1D9BF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFE6B4
  'Data Table: 4BB5FC
  loc_DFE6AC: Call Proc_278_57_E44154()
  loc_DFE6B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '109AB00
  'Data Table: 4BB5FC
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_109A84C: Set var_88 = Me.TopCtrl1
  loc_109A852: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_109A897: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_109A8A0:   Call Form_KeyDown(KeyCode, Shift)
  loc_109A8A5: End If
  loc_109A8A9: Set var_88 = Me.TopCtrl1
  loc_109A8AF: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_109A8C8: If (CStr() = "Browse") Then
  loc_109A8CB:   Exit Sub
  loc_109A8CC: End If
  loc_109A940: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_109A956:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_109A966:   var_9C = "+{Tab}"
  loc_109A96C:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_109A976:   KeyCode = 0
  loc_109A97C: Else
  loc_109A986:   var_B0 = Me.FGrid.Rows
  loc_109A9D3:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_109A9E9:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_109A9FF:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_109AA09:     KeyCode = 0
  loc_109AA0C:   End If
  loc_109AA0C: End If
  loc_109AA12: global_92 = KeyCode
  loc_109AA38: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_109AA5C: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_109AA72:   var_EC = CLng(Me.FGrid.Col)
  loc_109AA82:   If Not (var_EC = CLng(4)) Then
  loc_109AA8C:     If (var_EC = CLng(5)) Then
  loc_109AA8F:     End If
  loc_109AAA2:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109AABA:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_109AABF:     var_11C = vbNullString
  loc_109AAC9:     Set var_B4 = Me.FGrid
  loc_109AACF:     LateIdCallSt
  loc_109AAE7:   End If
  loc_109AAE7: End If
  loc_109AAED: If (KeyCode = &HD) Then
  loc_109AAF5:   global_94 = 0
  loc_109AAF8: End If
  loc_109AAFA: KeyCode = 0
  loc_109AAFD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E15628
  'Data Table: 4BB5FC
  loc_E15619: Call FGrid_UnknownEvent_C()
  loc_E15623: global_94 = 0
  loc_E15626: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '11F51E0
  'Data Table: 4BB5FC
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As String
  Dim var_A4 As Long
  Dim var_CE As Integer
  Dim var_B8 As TextBox
  Dim var_C8 As TextBox
  loc_11F4D64: Set var_88 = Me.TopCtrl1
  loc_11F4D6A: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(CLng(Me.FGrid.Col))
  loc_11F4D83: If (CStr() = "Browse") Then
  loc_11F4D86:   Exit Sub
  loc_11F4D87: End If
  loc_11F4D9A: var_A4 = CLng(Me.FGrid.Col)
  loc_11F4DAA: If (var_A4 = CLng(3)) Then
  loc_11F4DB1:   Set var_C8 = Me.FGrid
  loc_11F4DD5:   var_A0 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_11F4E02:   Set var_B8 = var_C8
  loc_11F4E14:   Proc_6_63_110B734(Me, var_B8, Me.TxtGrid, 0, 0)
  loc_11F4E3C:   Set var_88 = Me.TxtGrid
  loc_11F4E42:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_A0, Asc(var_A0))
  loc_11F4E4A:   0 = var_B8.Text
  loc_11F4E63:   If (Len(var_A0) <= 1) Then
  loc_11F4E72:     Set var_88 = Me.TxtGrid
  loc_11F4E78:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_A0)
  loc_11F4E80:     var_CE = var_B8.Text
  loc_11F4E91:     Set var_BC = Me.TxtGrid
  loc_11F4E97:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11F4E9F:     var_C8.Text = var_A0
  loc_11F4EB2:   End If
  loc_11F4EBE:   Set var_88 = Me.TxtGrid
  loc_11F4EC4:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_11F4EDE:   Set var_BC = Me.TxtGrid
  loc_11F4EE4:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11F4EEC:   var_C8.SelStart = Len(var_B8.Text)
  loc_11F4F02: Else
  loc_11F4F09:   If (var_A4 = CLng(2)) Then
  loc_11F4F10:     Set var_C8 = Me.FGrid
  loc_11F4F34:     var_A0 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_11F4F61:     Set var_B8 = var_C8
  loc_11F4F73:     Proc_6_63_110B734(Me, var_B8, Me.TxtGrid, 0, 0)
  loc_11F4F9B:     Set var_88 = Me.TxtGrid
  loc_11F4FA1:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_A0, Asc(var_A0))
  loc_11F4FA9:     0 = var_B8.Text
  loc_11F4FC2:     If (Len(var_A0) <= 1) Then
  loc_11F4FD1:       Set var_88 = Me.TxtGrid
  loc_11F4FD7:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_A0)
  loc_11F4FDF:       var_CE = var_B8.Text
  loc_11F4FF0:       Set var_BC = Me.TxtGrid
  loc_11F4FF6:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11F4FFE:       var_C8.Text = var_A0
  loc_11F5011:     End If
  loc_11F501D:     Set var_88 = Me.TxtGrid
  loc_11F5023:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_11F503D:     Set var_BC = Me.TxtGrid
  loc_11F5043:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11F504B:     var_C8.SelStart = Len(var_B8.Text)
  loc_11F5061:   Else
  loc_11F5068:     If Not (var_A4 = CLng(4)) Then
  loc_11F5072:       If (var_A4 = CLng(5)) Then
  loc_11F5075:       End If
  loc_11F5079:       Set var_C8 = Me.FGrid
  loc_11F509D:       var_A0 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_11F50CA:       Set var_B8 = var_C8
  loc_11F50DC:       Proc_6_63_110B734(Me, var_B8, Me.TxtGrid, 0, &HFF)
  loc_11F5104:       Set var_88 = Me.TxtGrid
  loc_11F510A:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_A0, Asc(var_A0))
  loc_11F5112:       0 = var_B8.Text
  loc_11F512B:       If (Len(var_A0) <= 1) Then
  loc_11F513A:         Set var_88 = Me.TxtGrid
  loc_11F5140:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_A0)
  loc_11F5148:         var_CE = var_B8.Text
  loc_11F5159:         Set var_BC = Me.TxtGrid
  loc_11F515F:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11F5167:         var_C8.Text = var_A0
  loc_11F517A:       End If
  loc_11F5186:       Set var_88 = Me.TxtGrid
  loc_11F518C:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_11F51A6:       Set var_BC = Me.TxtGrid
  loc_11F51AC:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11F51B4:       var_C8.SelStart = Len(var_B8.Text)
  loc_11F51C7:     End If
  loc_11F51C7:   End If
  loc_11F51C7: End If
  loc_11F51D1: If (CLng(KeyCode) <> &HD) Then
  loc_11F51D9:   global_94 = &HFF
  loc_11F51DC: End If
  loc_11F51DC: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1F3B0
  'Data Table: 4BB5FC
  loc_E1F3A7: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1F3AF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1F310
  'Data Table: 4BB5FC
  loc_E1F307: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1F30F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E7D440
  'Data Table: 4BB5FC
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  Dim var_A0 As TextBox
  loc_E7D3E0: Call Proc_278_61_DFD250()
  loc_E7D3F8: var_9C = CLng(Me.FGrid.Col)
  loc_E7D408: If Not (var_9C = CLng(3)) Then
  loc_E7D412:   If (var_9C = CLng(2)) Then
  loc_E7D415:   End If
  loc_E7D418: Else
  loc_E7D423:   Set var_88 = Me.TxtGrid
  loc_E7D429:   Call 0.Method_FGrid_UnknownEvent_150 (0, var_A0)
  loc_E7D431:   var_A0.Visible = False
  loc_E7D43D: End If
  loc_E7D43D: Exit Sub
End Sub

Private Sub CmdSave_UnknownEvent_9 'E0090C
  'Data Table: 4BB5FC
  loc_E00904: Call TopCtrl1_UnknownEvent_16()
  loc_E00909: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'E7F92C
  'Data Table: 4BB5FC
  Dim var_94 As TextBox
  loc_E7F8C8: On Error Goto loc_E7F924
  loc_E7F8EE: Call Proc_278_60_E9ADE8(Proc_5_1_100EC1C("ADD", Me))
  loc_E7F8F9: Call Proc_278_59_F19AD8(global_100)
  loc_E7F909: Set var_8C = Me.Txt
  loc_E7F90F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_E7F917: var_94.SetFocus
  loc_E7F923: Exit Sub
  loc_E7F924: ' Referenced from: E7F8C8
  loc_E7F924: Proc_6_60_E63754(var_94)
  loc_E7F929: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E988F8
  'Data Table: 4BB5FC
  loc_E98884: On Error Goto loc_E988F0
  loc_E988BE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E988E4:   Call Proc_278_60_E9ADE8(Proc_5_1_100EC1C("INI", Me))
  loc_E988EF: End If
  loc_E988EF: Exit Sub
  loc_E988F0: ' Referenced from: E98884
  loc_E988F0: Proc_6_60_E63754(global_100)
  loc_E988F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16FB8
  'Data Table: 4BB5FC
  loc_E16FAD: Me.Global.Unload Me
  loc_E16FB5: Exit Sub
  loc_E16FB6: Error
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC7C84
  'Data Table: 4BB5FC
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EC7BE4: On Error Goto loc_EC7C7C
  loc_EC7BFE: If (Me.RecordCount <= 0) Then
  loc_EC7C07:   var_B8 = "Information"
  loc_EC7C22:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC7C32:   Exit Sub
  loc_EC7C33: End If
  loc_EC7C3A: var_10C = "Select DISTINCT (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103)) AS Code,LM.Name As LocationName,Convert(Varchar(11),LF.AppDate,103) From (LocationFacility LF Left Join LocationMast LM On LF.LcCode=LM.Code) Where (LF.LOGSITE_CODE='" & MemVar_1F95078
  loc_EC7C41: MemVar_1F950E4 = var_10C & "' or LF.LOGSITE_CODE='HO') Order By (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103))"
  loc_EC7C4E: MemVar_1F95120 = Me
  loc_EC7C5B: Proc_6_126_F1C850("4500,1500")
  loc_EC7C76: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC7C7B: Exit Sub
  loc_EC7C7C: ' Referenced from: EC7BE4
  loc_EC7C7C: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EC7C81: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2A254
  'Data Table: 4BB5FC
  loc_E2A248: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2A250: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2A1F8
  'Data Table: 4BB5FC
  loc_E2A1EC: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2A1F4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2A19C
  'Data Table: 4BB5FC
  loc_E2A190: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2A198: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2A140
  'Data Table: 4BB5FC
  loc_E2A134: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2A13C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A708
  'Data Table: 4BB5FC
  Dim Me As Recordset15
  loc_E0A6FF: Me.Requery -1
  loc_E0A704: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '12D0BFC
  'Data Table: 4BB5FC
  Dim unk_4BB609 As Connection15
  Dim var_8C As Variant
  Dim var_D4 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_F8 As Variant
  Dim var_130 As Variant
  Dim var_C4 As Variant
  Dim var_180 As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_108 As Variant
  Dim var_98 As String
  Dim var_10C As Label
  Dim var_5AC As Double
  Dim var_5B4 As Double
  Dim var_5BC As Double
  Dim var_30C As Variant
  Dim var_4DC As Variant
  loc_12D063C: On Error Goto loc_12D0BA9
  loc_12D0643: var_86 = CByte(0) 'Byte
  loc_12D0652: Set var_8C = Me.Txt
  loc_12D0658: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_12D0681: If (Proc_6_27_EA61EC(var_90, "For Month") = 0) Then
  loc_12D068B:   Call Txt_GotFocus()
  loc_12D0690:   Exit Sub
  loc_12D0691: End If
  loc_12D069C: Set var_8C = Me.Txt
  loc_12D06A2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_90)
  loc_12D06B3: Set var_94 = var_90
  loc_12D06CB: If (Proc_6_27_EA61EC(var_94, "Bill Date") = 0) Then
  loc_12D06D5:   Call Txt_GotFocus()
  loc_12D06DA:   Exit Sub
  loc_12D06DB: End If
  loc_12D06DE: Call Proc_278_56_DFEFAC(var_9A, CInt(1))
  loc_12D06E9: If (var_9A = &HFF) Then
  loc_12D06EC:   Exit Sub
  loc_12D06ED: End If
  loc_12D06F6: unk_4BB609.BeginTrans var_A0
  loc_12D06FF: var_86 = CByte(1) 'Byte
  loc_12D0744: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, CVar("Delete From MemFacilityBilling Where FcCode='" & Me.LblFacility.Tag & "' And EntryDate="), var_108)
  loc_12D0753: Proc_6_7_F26918(var_C4, CVar(var_94), -1)
  loc_12D0769: unk_4BB609.Execute CStr(var_10C & var_C4), CInt(0), Me.Txt
  loc_12D07B2: For var_110 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_110 'Integer
  loc_12D07BC:   var_F8 = CVar(CLng(var_88)) 'Long
  loc_12D07C4:   var_130 = CVar(CLng(1)) 'Long
  loc_12D07E4:   var_D4 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_12D085D:   If CBool(CVar(CLng(6)) And (CDbl(Val(CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))))) <> CDbl(0))) Then
  loc_12D086C:     var_130 = CVar(CLng(1)) 'Long
  loc_12D087B:     var_B4 = Me.FGrid.TextMatrix)
  loc_12D0892:     Set var_90 = Me.Txt
  loc_12D0898:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_B4, var_130, CVar(CLng(var_88)))
  loc_12D08A0:     var_C4 = CVar(var_94) 'Address
  loc_12D08A7:     Proc_6_7_F26918(var_D4, var_C4, CVar(CLng(var_88)), (var_D4 <> vbNullString))
  loc_12D08C9:     Set var_1E8 = Me.Txt
  loc_12D08CF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1EC, var_130)
  loc_12D08E7:     var_180 = CVar(CLng(var_88)) 'Long
  loc_12D0911:     var_5AC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_12D0942:     var_5B4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_12D0973:     var_5BC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_12D097A:     Set var_3C8 = Me.TopCtrl1
  loc_12D0980:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_5BC)
  loc_12D09C2:     Proc_6_7_F26918(var_4CC, CVar(Proc_6_15_EF37AC(CVar(CLng(6)), CVar(CLng(var_88)), var_5B4, CVar(CLng(5)), CVar(CLng(var_88)))), var_5AC, CVar(CLng(4)))
  loc_12D09DB:     var_98 = "Insert Into MemFacilityBilling (MemCode,EntryDate,FcCode,MthYear,Occurence,Rate,Amount,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('"
  loc_12D09ED:     var_E4 = CVar(var_98 & CStr(var_B4) & "',") 'String
  loc_12D0A3E:     var_30C = var_E4 & var_D4 & ",'" & CVar(Me.LblFacility.Tag) & "','" & Trim(CVar(var_1EC)) & "'," & CVar(var_5AC) & "," & CVar(var_5B4) 
  loc_12D0A85:     var_4DC = var_30C & "," & CVar(var_5BC) & ",'" & IIf((CStr(var_3D8) = "Add"), "A", "E") & "','" & CVar(MemVar_1F950C8) & "'," & var_4CC 
  loc_12D0AC2:     unk_4BB609.Execute CStr(var_4DC & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), var_5A0, -1
  loc_12D0B42:   End If
  loc_12D0B45: Next var_110 'Integer
  loc_12D0B50: unk_4BB609.CommitTrans
  loc_12D0B59: var_86 = CByte(0) 'Byte
  loc_12D0B6A: var_98 = Me.LblFacility.Caption
  loc_12D0B8E: MsgBox(CVar("Details Of " & var_98 & " Facility Saved."), &H40, var_C4, var_D4, var_E4)
  loc_12D0BA8: Exit Sub
  loc_12D0BA9: ' Referenced from: 12D063C
  loc_12D0BB2: If (CInt(var_86) = 1) Then
  loc_12D0BBB:   unk_4BB609.RollbackTrans
  loc_12D0BC0: End If
  loc_12D0BC8: Set var_8C = Err()
  loc_12D0BCE: Call 0.Method_arg_2C (var_98)
  loc_12D0BE7: MsgBox(CVar(var_98), &H10, var_C4, var_D4, var_E4)
  loc_12D0BFA: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E48F54
  'Data Table: 4BB5FC
  loc_E48F32: Set var_88 = Me.Txt
  loc_E48F38: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E48F46: Proc_6_74_E23240(var_8C)
  loc_E48F52: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'EDE024
  'Data Table: 4BB5FC
  Dim var_86 As Integer
  loc_EDDF7A: If (CLng(Shift) = &H1B) Then
  loc_EDDF7D:   Exit Sub
  loc_EDDF7E: End If
  loc_EDDF81: var_86 = KeyCode
  loc_EDDFDA: If (((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGSundry.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_EDDFF2:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_EDDFFB:     Proc_6_75_E5335C(Shift, arg_14)
  loc_EDE000:   End If
  loc_EDE015:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_EDE01E:     Proc_6_76_E533C8(Shift, arg_14)
  loc_EDE023:   End If
  loc_EDE023: End If
  loc_EDE023: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E065D0
  'Data Table: 4BB5FC
  Dim var_86 As Integer
  loc_E065C3: Proc_6_58_E06050(arg_10)
  loc_E065CB: var_86 = KeyAscii
  loc_E065CE: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFFC5C
  'Data Table: 4BB5FC
  Dim var_86 As Integer
  loc_DFFC57: var_86 = KeyCode
  loc_DFFC5A: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E48DB4
  'Data Table: 4BB5FC
  loc_E48D92: Set var_88 = Me.Txt
  loc_E48D98: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E48DA6: Proc_6_73_E23294(var_8C)
  loc_E48DB2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '103ED84
  'Data Table: 4BB5FC
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim arg_10 As Integer
  Dim var_A0 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  loc_103EB3F: var_86 = Cancel
  loc_103EB4A: If (var_86 = CInt(0)) Then
  loc_103EB58:   Set var_8C = Me.Txt
  loc_103EB5E:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_103EB87:   If (Proc_6_27_EA61EC(var_90, "For Month") = 0) Then
  loc_103EB95:     Set var_8C = Me.Txt
  loc_103EB9B:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_103EBA3:     var_90.SetFocus
  loc_103EBB1:     arg_10 = &HFF
  loc_103EBB4:     Exit Sub
  loc_103EBB5:   End If
  loc_103EBBF:   Set var_8C = Me.Txt
  loc_103EBC5:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_103EBE5:   Set var_9C = Me.Txt
  loc_103EBEB:   Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_103EBF3:   var_A0.Text = Proc_6_120_133AEC8(var_90, arg_10)
  loc_103EC06:   Call Proc_278_53_13F3EF0(var_86)
  loc_103EC0E: Else
  loc_103EC16:   If (var_86 = CInt(1)) Then
  loc_103EC24:     Set var_8C = Me.Txt
  loc_103EC2A:     Call 0.Method_Txt_Validate0 (CInt(1))
  loc_103EC53:     If (Proc_6_27_EA61EC(var_90, "Bill Date") = 0) Then
  loc_103EC61:       Set var_8C = Me.Txt
  loc_103EC67:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_103EC6F:       var_90.SetFocus
  loc_103EC7D:       arg_10 = &HFF
  loc_103EC80:       Exit Sub
  loc_103EC81:     End If
  loc_103EC8B:     Set var_8C = Me.Txt
  loc_103EC91:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_103ECB1:     Set var_9C = Me.Txt
  loc_103ECB7:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_103ECBF:     var_A0.Text = Proc_6_33_15125B8(var_90, arg_10)
  loc_103ECDC:     Set var_8C = Me.Txt
  loc_103ECE2:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_103ED1D:     Set var_94 = Me.Txt
  loc_103ED23:     Call 0.Method_Txt_Validate0 (CInt(0), var_9C, CStr(Format(CVar(var_90), "MMM/yyyy")))
  loc_103ED2B:     var_9C.Text = 1
  loc_103ED45:     Call Proc_278_53_13F3EF0(1)
  loc_103ED5D:     Me.FGrid.Row = 1
  loc_103ED78:     Me.FGrid.Col = 2
  loc_103ED80:   End If
  loc_103ED80: End If
  loc_103ED80: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'FF0B54
  'Data Table: 4BB5FC
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_FF0974: Call Proc_278_61_DFD250()
  loc_FF098C: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_FF09A7: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FF09B0: Set var_BC = Me.FGrid
  loc_FF09E6: Set var_104 = Me.TxtGrid
  loc_FF09EC: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_FF09F4: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_FF0A25: var_110 = CLng(Me.FGrid.Col)
  loc_FF0A35: If (var_110 = CLng(3)) Then
  loc_FF0A45:   Set var_A8 = Me.TxtGrid
  loc_FF0A4B:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, vbNullString)
  loc_FF0A53:   var_BC.Text = var_110
  loc_FF0A6E:   Set var_A8 = Me.TxtGrid
  loc_FF0A74:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_FF0A7C:   var_BC.MaxLength = &HA
  loc_FF0A8B: Else
  loc_FF0A92:   If (var_110 = CLng(2)) Then
  loc_FF0AA2:     Set var_A8 = Me.TxtGrid
  loc_FF0AA8:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_FF0AB0:     var_BC.Text = vbNullString
  loc_FF0ACB:     Set var_A8 = Me.TxtGrid
  loc_FF0AD1:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_FF0AD9:     var_BC.MaxLength = &H32
  loc_FF0AE8:   Else
  loc_FF0AEF:     If (var_110 = CLng(4)) Then
  loc_FF0B01:       Set var_A8 = Me.TxtGrid
  loc_FF0B07:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_FF0B0F:       var_BC.MaxLength = 4
  loc_FF0B1E:     Else
  loc_FF0B25:       If (var_110 = CLng(5)) Then
  loc_FF0B37:         Set var_A8 = Me.TxtGrid
  loc_FF0B3D:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_FF0B45:         var_BC.MaxLength = &HB
  loc_FF0B51:       End If
  loc_FF0B51:     End If
  loc_FF0B51:   End If
  loc_FF0B51: End If
  loc_FF0B51: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1102980
  'Data Table: 4BB5FC
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_1102640: On Error Goto loc_1102977
  loc_110264D: If (CLng(Shift) = &H1B) Then
  loc_110265D:   Set var_88 = Me.TxtGrid
  loc_1102663:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_110267D:   Set var_94 = Me.TxtGrid
  loc_1102683:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_110268B:   var_98.Text = var_8C.Tag
  loc_11026A7:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_11026AC:   Call Proc_278_61_DFD250(arg_14)
  loc_11026B5:   Set var_88 = Me.FGrid
  loc_11026D2:   Set var_88 = Me.TxtGrid
  loc_11026D8:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_11026E0:   var_8C.Visible = False
  loc_11026EC:   Exit Sub
  loc_11026ED: End If
  loc_1102700: var_AC = CLng(Me.FGrid.Col)
  loc_1102710: If (var_AC = CLng(3)) Then
  loc_110271D:   If (CLng(Shift) = &HD) Then
  loc_1102726:     Call Proc_278_58_11A3D7C(KeyCode, var_AE)
  loc_1102731:     If (var_AE = &HFF) Then
  loc_1102777:       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 7)
  loc_1102787:     End If
  loc_1102787:   End If
  loc_110278A: Else
  loc_1102791:   If (var_AC = CLng(2)) Then
  loc_110279E:     If (CLng(Shift) = &HD) Then
  loc_11027A7:       Call Proc_278_58_11A3D7C(KeyCode, var_AE, 0, 4)
  loc_11027B2:       If (var_AE = &HFF) Then
  loc_11027F8:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 7)
  loc_1102808:       End If
  loc_1102808:     End If
  loc_110280B:   Else
  loc_1102812:     If (var_AC = CLng(4)) Then
  loc_1102855:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_110285E:         Call Proc_278_58_11A3D7C(KeyCode, var_AE, 0, 3)
  loc_1102869:         If (var_AE = &HFF) Then
  loc_11028AF:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 7, 0)
  loc_11028BF:         End If
  loc_11028BF:       End If
  loc_11028C2:     Else
  loc_11028C9:       If (var_AC = CLng(5)) Then
  loc_110290C:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_1102915:           Call Proc_278_58_11A3D7C(KeyCode, var_AE, 5, 0)
  loc_1102920:           If (var_AE = &HFF) Then
  loc_1102966:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 7, 0)
  loc_1102976:           End If
  loc_1102976:         End If
  loc_1102976:       End If
  loc_1102976:     End If
  loc_1102976:   End If
  loc_1102976: End If
  loc_1102976: Exit Sub
  loc_1102977: ' Referenced from: 1102640
  loc_1102977: Proc_6_60_E63754(3, 0, 0)
  loc_110297C: Exit Sub
  loc_110297D: 0 = var_AC
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '1112644
  'Data Table: 4BB5FC
  Dim var_86 As Integer
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim arg_10 As Integer
  loc_1112314: On Error Goto loc_111263E
  loc_111231A: Proc_6_58_E06050(arg_10)
  loc_1112322: var_86 = KeyAscii
  loc_111232B: If (var_86 = 0) Then
  loc_1112341:   var_A0 = CLng(Me.FGrid.Col)
  loc_1112351:   If (var_A0 = CLng(3)) Then
  loc_1112358:     Set var_8C = Me.TopCtrl1
  loc_111235E:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A0)
  loc_1112377:     If (CStr(var_86) = "Add") Then
  loc_1112384:       Set var_8C = Me.TxtGrid
  loc_111238A:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii)
  loc_11123F4:       Call MemSelGridKeyPress(var_A8, Me.FGrid, global_96, arg_10, Me.Fields.Item(1).Name, "14737632", "16777215")
  loc_1112414:     Else
  loc_1112418:       Set var_8C = Me.TopCtrl1
  loc_111241E:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A8)
  loc_1112437:       If (CStr() = "Edit") Then
  loc_111243A:       End If
  loc_111243A:     End If
  loc_1112443:     Set var_8C = Me.TxtGrid
  loc_1112449:     Call 0.Method_TxtGrid_KeyPress0 (0)
  loc_1112476:     If (Len(Trim(CVar(var_A8))) > 1) Then
  loc_111247B:       arg_10 = 0
  loc_111247E:     End If
  loc_1112481:   Else
  loc_1112488:     If (var_A0 = CLng(2)) Then
  loc_111248F:       Set var_8C = Me.TopCtrl1
  loc_1112495:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_11124AE:       If (CStr(var_A8) = "Add") Then
  loc_11124BB:         Set var_8C = Me.TxtGrid
  loc_11124C1:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii)
  loc_111252B:         Call MemSelGridKeyPress(var_A8, Me.FGrid, global_96, arg_10, Me.Fields.Item(2).Name, "14737632", "16777215")
  loc_111254B:       Else
  loc_111254F:         Set var_8C = Me.TopCtrl1
  loc_1112555:         Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A8)
  loc_111256E:         If (CStr() = "Edit") Then
  loc_1112571:         End If
  loc_1112571:       End If
  loc_111257A:       Set var_8C = Me.TxtGrid
  loc_1112580:       Call 0.Method_TxtGrid_KeyPress0 (0)
  loc_11125AD:       If (Len(Trim(CVar(var_A8))) > 1) Then
  loc_11125B2:         arg_10 = 0
  loc_11125B5:       End If
  loc_11125B8:     Else
  loc_11125BF:       If (var_A0 = CLng(4)) Then
  loc_11125CC:         Set var_8C = Me.TxtGrid
  loc_11125D2:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8)
  loc_11125ED:         Proc_6_42_129B55C(var_A8, arg_10, 4)
  loc_11125FC:       Else
  loc_1112603:         If (var_A0 = CLng(5)) Then
  loc_1112610:           Set var_8C = Me.TxtGrid
  loc_1112616:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, 0)
  loc_1112631:           Proc_6_42_129B55C(var_A8, arg_10, 8)
  loc_111263D:         End If
  loc_111263D:       End If
  loc_111263D:     End If
  loc_111263D:   End If
  loc_111263D: End If
  loc_111263D: Exit Sub
  loc_111263E: ' Referenced from: 1112314
  loc_111263E: Proc_6_60_E63754(2, arg_10)
  loc_1112643: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E30544
  'Data Table: 4BB5FC
  Dim var_9C As Long
  loc_E3051C: On Error Goto loc_E3053C
  loc_E30532: var_9C = CLng(Me.FGrid.Col)
  loc_E3053B: Exit Sub
  loc_E3053C: ' Referenced from: E3051C
  loc_E3053C: Proc_6_60_E63754(var_9C)
  loc_E30541: Exit Sub
  loc_E30542: Assert
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E232E8
  'Data Table: 4BB5FC
  Dim arg_10 As Integer
  loc_E232D0: If (Cancel = 0) Then
  loc_E232D9:   Call Proc_278_58_11A3D7C(Cancel, var_88)
  loc_E232E2:   arg_10 = Not(var_88)
  loc_E232E5: End If
  loc_E232E5: Exit Sub
End Sub

Public Function MasterFormExitGet() '4BC4A8
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4BC4B7
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '4BC4C6
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '4BC4D5
  SearchCode = Value
End Sub

Public Function global_60Get() '4BC4E4
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '4BC4F3
  global_60 = Value
End Sub

Public Function global_64Get() '4BC502
  global_64Get = global_64
End Function

Public Sub global_64Put(Value) '4BC511
  global_64 = Value
End Sub

Public Sub global_64Set(Value) '4BC520
  global_64 = Value
End Sub

Public Function global_80Get() '4BC52F
  global_80Get = global_80
End Function

Public Sub global_80Put(Value) '4BC53E
  global_80 = Value
End Sub

Public Sub global_80Set(Value) '4BC54D
  global_80 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E8EF7C
  'Data Table: 4BB5FC
  Dim Me As Recordset15
  loc_E8EF12: On Error Goto loc_E8EF76
  loc_E8EF1B: Me.MoveFirst
  loc_E8EF45: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E8EF6D: Proc_5_0_1107AD0(&HFF, Me, global_100)
  loc_E8EF75: Exit Sub
  loc_E8EF76: ' Referenced from: E8EF12
  loc_E8EF76: Proc_6_60_E63754(0)
  loc_E8EF7B: Exit Sub
End Sub

Public Sub MemSelGridKeyPress(Txt, FGrid, Rst, KeyAscii, FindFldName, CellBackColEnter, CellBackColLeave) '1152550
  'Data Table: 4BB5FC
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim var_104 As Double
  Dim KeyAscii As Integer
  loc_11521B8: On Error Goto loc_1152547
  loc_11521CE: If (.rows < 1) Then
  loc_11521D1:   Exit Sub
  loc_11521D2: End If
  loc_11521E6: If (Me.RecordCount <= 0) Then
  loc_11521F2:   Me.TEXT = vbNullString
  loc_11521F6:   Exit Sub
  loc_11521F7: End If
  loc_1152213: If (((CLng(KeyAscii) = &H1B) Or (CLng(KeyAscii) = &HD)) Or (KeyAscii = 0)) Then
  loc_1152220:   .CellBackColor = CVar(CellBackColLeave)
  loc_1152224:   Exit Sub
  loc_1152225: End If
  loc_115222F: If (CLng(KeyAscii) = 8) Then
  loc_1152249:   If (Len(Me.SelText) > 1) Then
  loc_115225D:     var_E0 = (Len(Me.SelText) - 1)
  loc_1152265:     Me.SelLength = var_E0
  loc_1152275:     var_8C = CStr(Me.SelText)
  loc_115227E:   Else
  loc_1152287:     Me.TEXT = vbNullString
  loc_115228E:     Call .SetFocus
  loc_115229C:     Me.Visible = False
  loc_11522A0:     Exit Sub
  loc_11522A1:   End If
  loc_11522A4: Else
  loc_11522BB:   var_E0 = (Me.SelText + Chr(CLng(KeyAscii)))
  loc_11522C0:   var_8C = CStr(var_E0)
  loc_11522CC: End If
  loc_11522E9: var_8C = Replace(var_8C, "'", "''", 1, -1, 0)
  loc_11522EF: Me.Recordset15.MoveFirst
  loc_115232C: If (Me.Recordset15.Fields.Item(CVar(FindFldName)).Type = 3) Then
  loc_1152337:   var_104 = Val(var_8C)
  loc_115236F:   Me.Recordset15.Find vbNullString & FindFldName & " >=" & CStr(var_104) & vbNullString, 0, 1
  loc_1152384: Else
  loc_11523B4:   Me.Recordset15.Find vbNullString & FindFldName & " like '" & var_8C & "*'", 0, 1
  loc_11523C4: End If
  loc_11523C6: KeyAscii = 0
  loc_11523F2: If ((Me.Recordset15.AbsolutePosition <> -3) And (Me.Recordset15.AbsolutePosition <> -2)) Then
  loc_11523FF:   .CellBackColor = CVar(CellBackColLeave)
  loc_1152419:   .Row = CVar(Me.Recordset15.AbsolutePosition)
  loc_1152427:   .CellBackColor = CVar(CellBackColEnter)
  loc_115245A:   Me.TEXT = Me.Recordset15.Fields.Item(CVar(FindFldName)).Value
  loc_1152474:   Me.SelLength = CVar(Len(var_8C))
  loc_1152488:   var_E0 = (.CellLeft + .left)
  loc_1152490:   Me.left = var_E0
  loc_11524AD:   var_E0 = (.CellTop + .top)
  loc_11524B5:   Me.top = var_E0
  loc_11524D4:   If (Me.Visible = False) Then
  loc_11524DE:     Me.Visible = True
  loc_11524E2:     var_9C = 0
  loc_11524EB:     Call Me.ZOrder
  loc_11524F4:     Call Me.SetFocus
  loc_1152506:     Me.BackColor = .CellBackColor
  loc_1152519:     Me.ForeColor = .CellForeColor
  loc_115252C:     Me.width = .CellWidth
  loc_115253F:     Me.height = .CellHeight
  loc_1152546:   End If
  loc_1152546: End If
  loc_1152546: Exit Sub
  loc_1152547: ' Referenced from: 11521B8
  loc_1152547: Proc_6_60_E63754(var_9C, KeyAscii, var_9C)
  loc_115254C: Exit Sub
  loc_115254D: var_9C = var_104
End Sub

Public Sub Proc_278_52_F1BBD0
  'Data Table: 4BB5FC
  loc_F1BB2A: Me.FacilityListView.ColumnHeaders.Add 1, var_DC, "Facility Name", var_11C, var_13C, var_15C
  loc_F1BB35: Set var_88 = var_164
  loc_F1BB8C: Me.FacilityListView.ColumnHeaders.Add 2, var_DC, "Code", var_11C, var_13C, var_15C
  loc_F1BB97: Set var_88 = var_164
  loc_F1BBC7: Me.FacilityListView.View = 2
  loc_F1BBCF: Exit Sub
End Sub

Public Sub Proc_278_53_13F3EF0
  'Data Table: 4BB5FC
  Dim var_8C As Variant
  Dim var_94 As String
  Dim var_AC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim unk_4BB609 As Connection15
  Dim var_90 As String
  Dim var_BC As Variant
  Dim var_168 As Variant
  Dim var_124 As Variant
  Dim var_1A0 As Variant
  Dim var_178 As Variant
  Dim var_1C0 As Variant
  Dim var_1E0 As Variant
  Dim var_210 As Variant
  Dim var_98 As Label
  Dim var_240 As Variant
  Dim var_2A0 As Variant
  Dim Me As Recordset15
  Dim var_86 As Integer
  Dim var_9C As Fields15
  Dim var_104 As Fields15
  loc_13F3546: var_94 = "Select M.MemCode,S.Name As MemName,M.EntryDate,M.Occurence,M.Rate,M.Amount from (MemFacilityBilling M left Join SubGroup S On M.MemCode=S.SubCode) Where M.FcCode='" & Me.LblFacility.Tag
  loc_13F355B: Set var_98 = Me.Txt
  loc_13F3561: Call 0.Method_Proc_278_53_13F3EF00 (CInt(0), var_9C, CVar(var_94 & "' And M.MthYear='"))
  loc_13F3569: var_AC = CVar(var_9C) 'Address
  loc_13F3590: Set var_100 = Me.Txt
  loc_13F3596: Call 0.Method_Proc_278_53_13F3EF00 (CInt(1), var_104, var_178 & Trim(var_AC) & "' And M.EntryDate=")
  loc_13F35A5: Proc_6_7_F26918(var_124, CVar(var_104))
  loc_13F35AD: var_134 = -1 & var_124 
  loc_13F35C4: unk_4BB609.Execute CStr(var_134 & " Order by S.Name"), var_17C, 
  loc_13F35D5: Set global_108 = var_17C
  loc_13F361A: var_90 = "select S.SubCode,S.CardNo,S.Name,S1.ChrgType,S1.FixedRate,S1.Pmember,S1.Spouse from subgroup S Left Join (Select MCF.* from " & "MemCatFacility MCF Inner Join (select max(MemCatCode)As MemCatCode,Max(AppDate) As AppDate from MemCatFacility "
  loc_13F362F: Proc_6_7_F26918(var_AC, MemVar_1F950EC, CVar(var_90 & "where appdate<="))
  loc_13F3649: var_FC = var_2C4 & var_AC & " Group By MemCatCode) As M1 On MCF.MemCatCode=M1.MemCatCode And MCF.AppDate=M1.AppDate " & "Where fccode='" 
  loc_13F366E: var_134 = var_FC & CVar(Me.LblFacility.Tag) & "') As S1 On S.CompanyType=S1.MemCatCode Where S.CompanyType In(Select MCF.MemCatCode from " 
  loc_13F3672: var_1A0 = "MemCatFacility MCF Inner Join (select max(MemCatCode)As MemCatCode,Max(AppDate) As AppDate from MemCatFacility "
  loc_13F368F: Proc_6_7_F26918(var_1D0, MemVar_1F950EC, var_134 & var_1A0 & "where appdate<=")
  loc_13F3697: var_1E0 = -1 & var_1D0 
  loc_13F36C5: var_240 = var_1E0 & " Group By MemCatCode) As M1 On MCF.MemCatCode=M1.MemCatCode And MCF.AppDate=M1.AppDate " & "Where fccode='" & CVar(Me.LblFacility.Tag) 
  loc_13F36E1: var_2A0 = var_240 & "')And S.ActiveYN=1 And (S.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "' or S.LOGSITE_CODE='HO') Order By S.CardNo,S.Name" 
  loc_13F36EF: unk_4BB609.Execute CStr(var_2A0), var_9C, 
  loc_13F3700: Set global_96 = var_9C
  loc_13F3754: Me.FGrid.Rows = 1
  loc_13F3773: If (Me.RecordCount = 0) Then
  loc_13F3789:   Me.FGrid.Rows = 2
  loc_13F37A4:   Me.FGrid.FixedRows = 1
  loc_13F37AC:   Exit Sub
  loc_13F37AD: End If
  loc_13F37C4: If (Me.RecordCount > 0) Then
  loc_13F37C9:   var_86 = 1
  loc_13F37CC:   ' Referenced from: 13F3E92
  loc_13F37DE:   If Not(Me.EOF) Then
  loc_13F37E6:     var_AC = CVar(CStr(var_86)) 'String
  loc_13F37EE:     Set var_8C = Me.FGrid
  loc_13F383E:     var_BC = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("CardNo")), CVar(CLng(3)), CVar(CLng(var_86)))) 'String
  loc_13F384C:     LateIdCallSt
  loc_13F389E:     var_BC = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Name")), CVar(CLng(2)), CVar(CLng(var_86)), Me.FGrid)) 'String
  loc_13F38AC:     LateIdCallSt
  loc_13F38FE:     var_BC = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("subcode")), CVar(CLng(1)), CVar(CLng(var_86)), Me.FGrid, var_BC)) 'String
  loc_13F3906:     Set var_9C = Me.FGrid
  loc_13F390C:     LateIdCallSt
  loc_13F3939:     If (Me.RecordCount > 0) Then
  loc_13F3942:       Me.MoveFirst
  loc_13F394B:       var_EC = CVar(CLng(var_86)) 'Long
  loc_13F3997:       Me.Find "MemCode='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_13F39D4:       If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_13F39DA:         var_EC = "Rate"
  loc_13F3A00:         Proc_6_39_E7D3A0(var_BC, CVar(Me.Fields.Item(var_EC)), var_1A0, CVar(Me.Fields.Item(var_EC)), CVar(CLng(1)), var_EC)
  loc_13F3A09:         var_168 = CVar(CLng(var_86)) 'Long
  loc_13F3A48:         LateIdCallSt
  loc_13F3A8D:         Proc_6_39_E7D3A0(var_BC, CVar(Me.Fields.Item("Occurence")), Me.FGrid, CVar(CStr(Format(var_BC, "0.00"))), 1, 1, CVar(CLng(5)))
  loc_13F3A96:         var_168 = CVar(CLng(var_86)) 'Long
  loc_13F3AD5:         LateIdCallSt
  loc_13F3B1A:         Proc_6_39_E7D3A0(var_BC, CVar(Me.Fields.Item("Amount")), Me.FGrid, CVar(CStr(Format(var_BC, "0"))), 1, 1, CVar(CLng(4)))
  loc_13F3B23:         var_168 = CVar(CLng(var_86)) 'Long
  loc_13F3B2B:         var_1A0 = CVar(CLng(6)) 'Long
  loc_13F3B54:         var_FC = CVar(CStr(Format(var_BC, "0.00"))) 'String
  loc_13F3B5C:         Set var_9C = Me.FGrid
  loc_13F3B62:         LateIdCallSt
  loc_13F3B81:       Else
  loc_13F3C15:         var_1C0 = CVar(CLng(var_86)) 'Long
  loc_13F3C1D:         var_210 = CVar(CLng(5)) 'Long
  loc_13F3C4F:         var_90 = Proc_6_38_E69628(CVar(Me.Fields.Item("ChrgType")), Me.Fields, CVar(Me.Fields.Item("PMember")), 1, 1, "0.00", "0.00")
  loc_13F3C5E:         var_134 = IIf((var_90 = "Fixed"), Format(CVar(Me.Fields.Item("FixedRate")), "0.00"), Format(CVar(Me.Fields.Item("PMember")), "0.00"))
  loc_13F3C67:         var_154 = CVar(CStr(var_134)) 'String
  loc_13F3C6F:         Set var_180 = Me.FGrid
  loc_13F3C75:         LateIdCallSt
  loc_13F3CAA:         var_EC = CVar(CLng(var_86)) 'Long
  loc_13F3CB2:         var_168 = CVar(CLng(4)) 'Long
  loc_13F3CB7:         var_1A0 = "0"
  loc_13F3CC1:         Set var_8C = Me.FGrid
  loc_13F3CC7:         LateIdCallSt
  loc_13F3CD6:         var_EC = CVar(CLng(var_86)) 'Long
  loc_13F3CDE:         var_168 = CVar(CLng(6)) 'Long
  loc_13F3CE3:         var_1A0 = "0.00"
  loc_13F3CED:         Set var_8C = Me.FGrid
  loc_13F3CF3:         LateIdCallSt
  loc_13F3CFE:       End If
  loc_13F3D01:     Else
  loc_13F3D04:       var_EC = "ChrgType"
  loc_13F3D13:       var_8C = Me.Fields
  loc_13F3D95:       var_1C0 = CVar(CLng(var_86)) 'Long
  loc_13F3D9D:       var_210 = CVar(CLng(5)) 'Long
  loc_13F3DDE:       var_134 = IIf((Proc_6_38_E69628(CVar(var_8C.Item(var_EC)), var_8C, "0.00", "0.00", var_EC, var_8C, "0.00") = "Fixed"), Format(CVar(Me.Fields.Item("FixedRate")), "0.00"), Format(CVar(Me.Fields.Item("PMember")), "0.00"))
  loc_13F3DE7:       var_154 = CVar(CStr(var_134)) 'String
  loc_13F3DEF:       Set var_180 = Me.FGrid
  loc_13F3DF5:       LateIdCallSt
  loc_13F3E2A:       var_EC = CVar(CLng(var_86)) 'Long
  loc_13F3E32:       var_168 = CVar(CLng(4)) 'Long
  loc_13F3E37:       var_1A0 = "0"
  loc_13F3E41:       Set var_8C = Me.FGrid
  loc_13F3E47:       LateIdCallSt
  loc_13F3E56:       var_EC = CVar(CLng(var_86)) 'Long
  loc_13F3E5E:       var_168 = CVar(CLng(6)) 'Long
  loc_13F3E63:       var_1A0 = "0.00"
  loc_13F3E6D:       Set var_8C = Me.FGrid
  loc_13F3E73:       LateIdCallSt
  loc_13F3E7E:     End If
  loc_13F3E84:     var_86 = (var_86 + 1)
  loc_13F3E8D:     Me.MoveNext
  loc_13F3E92:     GoTo loc_13F37CC
  loc_13F3E95:   End If
  loc_13F3E95: End If
  loc_13F3EB4: If (CLng(Me.FGrid.Rows) = 1) Then
  loc_13F3EB7:   var_EC = "1"
  loc_13F3EC1:   Set var_8C = Me.FGrid
  loc_13F3ED2: End If
  loc_13F3EE5: Me.FGrid.FixedRows = 1
  loc_13F3EED: Exit Sub
End Sub

Public Sub Proc_278_54_F9BA8C
  'Data Table: 4BB5FC
  Dim var_8C As Variant
  Dim Me As Recordset15
  Dim var_168 As String
  loc_F9B953: Me.FacilityListView.ListItems.Clear
  loc_F9B979: If (Me.RecordCount > 0) Then
  loc_F9B982:   Me.MoveFirst
  loc_F9B987:   ' Referenced from: F9BA73
  loc_F9B999:   If Not(Me.EOF) Then
  loc_F9B9FA:     Me.FacilityListView.ListItems.Add var_EC, var_10C, CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Name")))), var_13C, var_15C
  loc_F9BA52:     var_168 = Proc_6_38_E69628(CVar(Me.Fields.Item("Code")))
  loc_F9BA5A:     var_164.SubItems = 1
  loc_F9BA6E:     Me.MoveNext
  loc_F9BA73:     GoTo loc_F9B987
  loc_F9BA76:   End If
  loc_F9BA76: End If
  loc_F9BA7A: Set var_8C = Me.FacilityListView
  loc_F9BA8B: Exit Sub
End Sub

Public Sub Proc_278_55_10ECEAC
  'Data Table: 4BB5FC
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  loc_10ECB80: On Error Goto loc_10ECEA5
  loc_10ECB87: Set var_88 = Me.FGrid
  loc_10ECB96: var_88.Height = CVar(CDbl(6500))
  loc_10ECBA7: var_88.Width = CVar(CDbl(8500))
  loc_10ECBB8: var_88.Cols = 8
  loc_10ECBC9: var_88.Rows = 2
  loc_10ECBE2: global_84 = CStr(CLng(var_88.BackColor))
  loc_10ECBEC: var_98 = 0
  loc_10ECBF5: var_CC = &H64
  loc_10ECC01: LateIdCallSt
  loc_10ECC0C: var_98 = CVar(CLng(1)) 'Long
  loc_10ECC11: var_CC = 0
  loc_10ECC1D: LateIdCallSt
  loc_10ECC28: var_98 = CVar(CLng(3)) 'Long
  loc_10ECC2D: var_CC = &H320
  loc_10ECC39: LateIdCallSt
  loc_10ECC41: var_98 = 0
  loc_10ECC4D: var_CC = CVar(CLng(3)) 'Long
  loc_10ECC52: var_EC = "Card No"
  loc_10ECC5B: LateIdCallSt
  loc_10ECC66: var_98 = CVar(CLng(3)) 'Long
  loc_10ECC71: var_CC = CVar(CInt(1)) 'Integer
  loc_10ECC78: LateIdCallSt
  loc_10ECC83: var_98 = CVar(CLng(2)) 'Long
  loc_10ECC88: var_CC = &HA28
  loc_10ECC94: LateIdCallSt
  loc_10ECC9C: var_98 = 0
  loc_10ECCA8: var_CC = CVar(CLng(2)) 'Long
  loc_10ECCAD: var_EC = "Member Name"
  loc_10ECCB6: LateIdCallSt
  loc_10ECCC1: var_98 = CVar(CLng(2)) 'Long
  loc_10ECCCC: var_CC = CVar(CInt(1)) 'Integer
  loc_10ECCD3: LateIdCallSt
  loc_10ECCDE: var_98 = CVar(CLng(4)) 'Long
  loc_10ECCE3: var_CC = &H708
  loc_10ECCEF: LateIdCallSt
  loc_10ECCF7: var_98 = 0
  loc_10ECD03: var_CC = CVar(CLng(4)) 'Long
  loc_10ECD08: var_EC = "No Of Occurences"
  loc_10ECD11: LateIdCallSt
  loc_10ECD1C: var_98 = CVar(CLng(4)) 'Long
  loc_10ECD27: var_CC = CVar(CInt(7)) 'Integer
  loc_10ECD2E: LateIdCallSt
  loc_10ECD39: var_98 = CVar(CLng(4)) 'Long
  loc_10ECD44: var_CC = CVar(CInt(7)) 'Integer
  loc_10ECD4B: LateIdCallSt
  loc_10ECD56: var_98 = CVar(CLng(5)) 'Long
  loc_10ECD5B: var_CC = &H578
  loc_10ECD67: LateIdCallSt
  loc_10ECD6F: var_98 = 0
  loc_10ECD7B: var_CC = CVar(CLng(5)) 'Long
  loc_10ECD80: var_EC = "Rate"
  loc_10ECD89: LateIdCallSt
  loc_10ECD94: var_98 = CVar(CLng(5)) 'Long
  loc_10ECD9F: var_CC = CVar(CInt(7)) 'Integer
  loc_10ECDA6: LateIdCallSt
  loc_10ECDB1: var_98 = CVar(CLng(5)) 'Long
  loc_10ECDBC: var_CC = CVar(CInt(7)) 'Integer
  loc_10ECDC3: LateIdCallSt
  loc_10ECDCE: var_98 = CVar(CLng(6)) 'Long
  loc_10ECDD3: var_CC = &H578
  loc_10ECDDF: LateIdCallSt
  loc_10ECDE7: var_98 = 0
  loc_10ECDF3: var_CC = CVar(CLng(6)) 'Long
  loc_10ECDF8: var_EC = "Amount"
  loc_10ECE01: LateIdCallSt
  loc_10ECE0C: var_98 = CVar(CLng(6)) 'Long
  loc_10ECE17: var_CC = CVar(CInt(7)) 'Integer
  loc_10ECE1E: LateIdCallSt
  loc_10ECE29: var_98 = CVar(CLng(6)) 'Long
  loc_10ECE34: var_CC = CVar(CInt(7)) 'Integer
  loc_10ECE3B: LateIdCallSt
  loc_10ECE46: var_98 = CVar(CLng(7)) 'Long
  loc_10ECE4B: var_CC = 0
  loc_10ECE57: LateIdCallSt
  loc_10ECE5F: var_98 = 0
  loc_10ECE6B: var_CC = CVar(CLng(7)) 'Long
  loc_10ECE70: var_EC = "Charge Type"
  loc_10ECE79: LateIdCallSt
  loc_10ECE84: var_98 = CVar(CLng(7)) 'Long
  loc_10ECE8F: var_CC = CVar(CInt(1)) 'Integer
  loc_10ECE96: LateIdCallSt
  loc_10ECEA0: Set var_88 = Nothing 
  loc_10ECEA4: Exit Sub
  loc_10ECEA5: ' Referenced from: 10ECB80
  loc_10ECEA5: Proc_6_60_E63754(var_88, var_CC, var_98, var_88, var_EC, var_CC, var_98, var_88)
  loc_10ECEAA: Exit Sub
End Sub

Public Sub Proc_278_56_DFEFAC
  'Data Table: 4BB5FC
  loc_DFEFA4: Proc_278_56_DFEFAC = 
End Sub

Public Sub Proc_278_57_E44154
  'Data Table: 4BB5FC
  loc_E44130: Set var_88 = Me.TopCtrl1
  loc_E44136: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4414F: If (CStr() = "Browse") Then
  loc_E44152:   Exit Sub
  loc_E44153: End If
  loc_E44153: Exit Sub
End Sub

Public Sub Proc_278_58_11A3D7C
  'Data Table: 4BB5FC
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_B8 As Variant
  Dim var_A8 As String
  Dim var_170 As Variant
  Dim var_174 As MSHFlexGrid
  Dim var_1F4 As Variant
  Dim var_214 As Variant
  Dim var_234 As Variant
  loc_11A399F: var_A0 = CLng(Me.FGrid.Col)
  loc_11A39AF: If (var_A0 = CLng(4)) Then
  loc_11A39BE:   Set var_8C = Me.TxtGrid
  loc_11A39C4:   Call 0.Method_Proc_278_58_11A3D7C0 (0, var_A4)
  loc_11A39EF:   var_120 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A3A07:   var_140 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11A3A34:   var_160 = CVar(CStr(Format(CVar(Val(var_A4.Text)), "0"))) 'String
  loc_11A3A3C:   Set var_174 = Me.FGrid
  loc_11A3A42:   LateIdCallSt
  loc_11A3A7C:   var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A3A85:   Set var_A4 = Me.FGrid
  loc_11A3A94:   var_120 = CVar(CLng(var_A4.Col)) 'Long
  loc_11A3AAE:   var_A8 = CStr(Me.FGrid.TextMatrix))
  loc_11A3ACC:   var_140 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A3AD4:   var_170 = CVar(CLng(5)) 'Long
  loc_11A3B0C:   var_1F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A3B14:   var_214 = CVar(CLng(6)) 'Long
  loc_11A3B45:   var_234 = CVar(CStr(Format(CVar((Val(var_A8) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_11A3B4D:   Set var_248 = Me.FGrid
  loc_11A3B53:   LateIdCallSt
  loc_11A3B8D: Else
  loc_11A3B94:   If (var_A0 = CLng(5)) Then
  loc_11A3BA3:     Set var_8C = Me.TxtGrid
  loc_11A3BA9:     Call 0.Method_Proc_278_58_11A3D7C0 (0, var_A4, var_A8, var_248, var_234, 1, 1)
  loc_11A3BB1:     var_214 = var_A4.Text
  loc_11A3BD4:     var_120 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A3BEC:     var_140 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11A3C19:     var_160 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00"))) 'String
  loc_11A3C21:     Set var_174 = Me.FGrid
  loc_11A3C27:     LateIdCallSt
  loc_11A3C61:     var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A3C79:     var_120 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11A3CB1:     var_140 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A3CB9:     var_170 = CVar(CLng(4)) 'Long
  loc_11A3CF1:     var_1F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A3CF9:     var_214 = CVar(CLng(6)) 'Long
  loc_11A3D2A:     var_234 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_11A3D32:     Set var_248 = Me.FGrid
  loc_11A3D38:     LateIdCallSt
  loc_11A3D6F:   End If
  loc_11A3D6F: End If
  loc_11A3D74: Proc_278_58_11A3D7C = &HFF
End Sub

Public Sub Proc_278_59_F19AD8
  'Data Table: 4BB5FC
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F199EE: Set var_8C = Me.Txt
  loc_F199F4: Call 0.Method_Proc_278_59_F19AD8C (var_8E, var_86)
  loc_F19A04: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F19A1A:   Set var_8C = Me.Txt
  loc_F19A20:   Call 0.Method_Proc_278_59_F19AD80 (CInt(var_86), var_98)
  loc_F19A28:   var_98.Text = vbNullString
  loc_F19A44:   Set var_8C = Me.Txt
  loc_F19A4A:   Call 0.Method_Proc_278_59_F19AD80 (CInt(var_86), var_98)
  loc_F19A52:   var_98.Tag = vbNullString
  loc_F19A61: Next var_92 'Byte
  loc_F19A7A: Me.FGrid.Rows = 1
  loc_F19A97: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F19A9F: Set var_98 = Me.FGrid
  loc_F19ACE: Me.FGrid.FixedRows = 1
  loc_F19AD6: Exit Sub
End Sub

Public Sub Proc_278_60_E9ADE8(arg_C) 'E9ADE8
  'Data Table: 4BB5FC
  Dim var_98 As TextBox
  loc_E9AD6E: Set var_8C = Me.Txt
  loc_E9AD74: Call 0.Method_Proc_278_60_E9ADE8C (var_8E, var_86)
  loc_E9AD84: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9AD9A:   Set var_8C = Me.Txt
  loc_E9ADA0:   Call 0.Method_Proc_278_60_E9ADE80 (CInt(var_86), var_98)
  loc_E9ADA8:   var_98.Enabled = arg_C
  loc_E9ADB7: Next var_92 'Byte
  loc_E9ADCA: Set var_8C = Me.Txt
  loc_E9ADD0: Call 0.Method_Proc_278_60_E9ADE80 (CInt(0), var_98)
  loc_E9ADD8: var_98.Enabled = False
  loc_E9ADE4: Exit Sub
End Sub

Public Sub Proc_278_61_DFD250
  'Data Table: 4BB5FC
  loc_DFD24C: Exit Sub
End Sub
