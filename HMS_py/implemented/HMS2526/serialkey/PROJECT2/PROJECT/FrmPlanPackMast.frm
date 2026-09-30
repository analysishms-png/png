VERSION 5.00
Begin VB.Form FrmPlanPackMast
  Caption = "Plan Defination Master"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = False
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 7470
  ClientHeight = 5925
  LockControls = -1  'True
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin MainCtrl topCtrl1
    Left = 0
    Top = 0
    Width = 7470
    Height = 450
    TabIndex = 14
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &H8000000E&
    ForeColor = &HFF0000&
    Left = 2985
    Top = 1140
    Width = 870
    Height = 240
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 25
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
  Begin CheckBox Check1
    Caption = "Percentage Basis"
    ForeColor = &H80000008&
    Left = 4455
    Top = 885
    Width = 2070
    Height = 270
    TabIndex = 11
    BeginProperty Font
      Name = "MS Sans Serif"
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
    BackColor = &H8000000E&
    ForeColor = &HFF0000&
    Left = 2985
    Top = 885
    Width = 1425
    Height = 240
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 25
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
  Begin MSFlexGrid FGPoint
    Left = 9240
    Top = 2055
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 9
  End
  Begin DataGrid DGHelp
    Left = 7605
    Top = 3390
    Width = 3495
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin DataGrid DGRev
    Left = 7770
    Top = 2670
    Width = 3855
    Height = 3375
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HC00000&
    Left = 3885
    Top = 5580
    Width = 2010
    Height = 240
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 25
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &H80000012&
    Left = 2130
    Top = 3030
    Width = 915
    Height = 240
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
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
    BackColor = &H8000000E&
    ForeColor = &HFF0000&
    Left = 2985
    Top = 630
    Width = 3500
    Height = 240
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 25
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
    Left = 1530
    Top = 1500
    Width = 5295
    Height = 3765
    TabIndex = 2
  End
  Begin Label Label1
    Caption = "Room Percent"
    Index = 3
    ForeColor = &HC00000&
    Left = 1335
    Top = 1155
    Width = 1350
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
    Caption = "Applicable Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 1335
    Top = 900
    Width = 1515
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
    Caption = "Total"
    Index = 0
    ForeColor = &HC00000&
    Left = 3240
    Top = 5580
    Width = 480
    Height = 240
    Visible = 0   'False
    TabIndex = 6
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
    Caption = "Plan Name"
    Index = 1
    ForeColor = &HC00000&
    Left = 1335
    Top = 645
    Width = 1050
    Height = 240
    TabIndex = 4
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

Attribute VB_Name = "FrmPlanPackMast"

Private MasterFormExit As Integer
Private global_76 As Integer
Private global_78 As Integer

Private Sub TopCtrl1_UnknownEvent_A 'E7F7EC
  'Data Table: 48DC98
  Dim var_94 As TextBox
  loc_E7F788: On Error Goto loc_E7F7E4
  loc_E7F7AE: Call Proc_21_47_EB6B2C(Proc_5_1_100EC1C("ADD", Me))
  loc_E7F7B9: Call Proc_21_46_F2B908(global_64)
  loc_E7F7C9: Set var_8C = Me.Txt
  loc_E7F7CF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_E7F7D7: var_94.SetFocus
  loc_E7F7E3: Exit Sub
  loc_E7F7E4: ' Referenced from: E7F788
  loc_E7F7E4: Proc_6_60_E63754(var_94)
  loc_E7F7E9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC1DDC
  'Data Table: 48DC98
  loc_EC1D44: On Error Goto loc_EC1DD4
  loc_EC1D7E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EC1D81:   Call Proc_21_45_EBE53C()
  loc_EC1D92:   Set var_10C = Me
  loc_EC1DA9:   Call Proc_21_47_EB6B2C(Proc_5_1_100EC1C("INI", var_10C))
  loc_EC1DB4:   Call Proc_21_50_145562C(global_64)
  loc_EC1DBC: Else
  loc_EC1DC2:   Call 0.Method_arg_1E8 (var_10C)
  loc_EC1DCA:   Call var_10C.SetFocus
  loc_EC1DD3: End If
  loc_EC1DD3: Exit Sub
  loc_EC1DD4: ' Referenced from: EC1D44
  loc_EC1DD4: Proc_6_60_E63754()
  loc_EC1DD9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11C6944
  'Data Table: 48DC98
  Dim var_98 As Integer
  Dim unk_48DCA7 As Connection15
  Dim Me As Recordset15
  Dim var_128 As Fields15
  Dim var_100 As Variant
  Dim var_130 As String
  loc_11C6518: On Error Goto loc_11C68ED
  loc_11C6529: If (Proc_183_56_FE8B08(global_64) = &HFF) Then
  loc_11C652C:   Exit Sub
  loc_11C652D: End If
  loc_11C6564: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_100, var_120) = 6) Then
  loc_11C6569:   var_98 = &HFF
  loc_11C6575:   unk_48DCA7.BeginTrans var_124
  loc_11C658B:   var_94 = Me.Bookmark 'Variant
  loc_11C65E5:   unk_48DCA7.Execute CStr("Delete From PlanMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_11C6630:   var_16C = 0
  loc_11C6643:   var_164 = 0
  loc_11C664E:   var_160 = 0
  loc_11C6661:   var_158 = 0
  loc_11C666C:   var_154 = 0
  loc_11C667F:   var_14C = 0
  loc_11C66C8:   Proc_154_5_10E3BD4(MemVar_1F95044, "PlanMast", "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_11C6738:   var_100 = "Delete from Plan1 where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_11C6746:   unk_48DCA7.Execute CStr(var_100), var_120, -1
  loc_11C6791:   var_16C = 0
  loc_11C67A4:   var_164 = 0
  loc_11C67AF:   var_160 = 0
  loc_11C67C2:   var_158 = 0
  loc_11C67CD:   var_154 = 0
  loc_11C67E0:   var_14C = 0
  loc_11C6820:   var_130 = "PlanMast"
  loc_11C6829:   Proc_154_5_10E3BD4(MemVar_1F95044, var_130, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_11C6857:   unk_48DCA7.CommitTrans
  loc_11C685E:   var_98 = 0
  loc_11C686C:   Me.Requery -1
  loc_11C688C:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11C6899:     Me.Bookmark = var_94
  loc_11C68A1:   Else
  loc_11C68B5:     If (Me.EOF = 0) Then
  loc_11C68BE:       Me.MoveLast
  loc_11C68C3:     End If
  loc_11C68C3:   End If
  loc_11C68C3:   Call Proc_21_50_145562C(var_98, var_14C, 0, var_154, var_158)
  loc_11C68E4:   Proc_5_0_1107AD0(&HFF, Me, global_64, 0)
  loc_11C68EC: End If
  loc_11C68EC: Exit Sub
  loc_11C68ED: ' Referenced from: 11C6518
  loc_11C68F3: If (var_98 = &HFF) Then
  loc_11C68FC:   unk_48DCA7.RollbackTrans
  loc_11C6901: End If
  loc_11C6909: Set var_128 = Err()
  loc_11C690F: Call 0.Method_arg_2C (var_130, 0, var_160)
  loc_11C6930: MsgBox(CVar(var_130), &H10, " Deletion Message", var_100, var_120)
  loc_11C6943: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F77184
  'Data Table: 48DC98
  Dim var_94 As TextBox
  loc_F77040: On Error Goto loc_F7717E
  loc_F77051: If (Proc_183_55_FE8490(global_64) = &HFF) Then
  loc_F77054:   Exit Sub
  loc_F77055: End If
  loc_F77078: Call Proc_21_47_EB6B2C(Proc_5_1_100EC1C("EDIT", Me))
  loc_F77091: Set var_8C = Me.Txt
  loc_F77097: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F770AA: global_68 = var_94.Text
  loc_F770C6: Set var_8C = Me.Txt
  loc_F770CC: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_F770DF: global_72 = var_94.Text
  loc_F77105: Call Proc_21_52_F29DCC(Me.FGrid, 0)
  loc_F77117: Set var_94 = Me.FGrid
  loc_F7713E: Set var_8C = Me.Txt
  loc_F77144: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94, 0, FGrid.DispID_10000)
  loc_F7714C: var_94.Enabled = CVar(CStr(var_96))
  loc_F77163: Set var_8C = Me.Txt
  loc_F77169: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F77171: var_94.SetFocus
  loc_F7717D: Exit Sub
  loc_F7717E: ' Referenced from: F77040
  loc_F7717E: Proc_6_60_E63754(var_96)
  loc_F77183: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16A14
  'Data Table: 48DC98
  loc_E16A09: Me.Global.Unload Me
  loc_E16A11: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC78F4
  'Data Table: 48DC98
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim MemVar_1F950E4 As String
  loc_EC7854: On Error Goto loc_EC78EC
  loc_EC786E: If (Me.RecordCount <= 0) Then
  loc_EC7877:   var_B8 = "Information"
  loc_EC7892:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC78A2:   Exit Sub
  loc_EC78A3: End If
  loc_EC78B1: MemVar_1F950E4 = "Select Code As SearchCode,Name ,Total from PlanMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By Name"
  loc_EC78C1: Proc_6_126_F1C850("3000,2000")
  loc_EC78CF: MemVar_1F95120 = Me
  loc_EC78E6: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC78EB: Exit Sub
  loc_EC78EC: ' Referenced from: EC7854
  loc_EC78EC: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EC78F1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2F108
  'Data Table: 48DC98
  loc_E2F0F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2F100: Call Proc_21_50_145562C(global_64)
  loc_E2F105: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2F0A8
  'Data Table: 48DC98
  Dim arg_2000 As String
  loc_E2F098: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2F0A0: Call Proc_21_50_145562C(global_64)
  loc_E2F0A5: Exit Sub
  loc_E2F0A6: arg_2000 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2F048
  'Data Table: 48DC98
  loc_E2F038: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2F040: Call Proc_21_50_145562C(global_64)
  loc_E2F045: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2EFE8
  'Data Table: 48DC98
  loc_E2EFD8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2EFE0: Call Proc_21_50_145562C(global_64)
  loc_E2EFE5: Exit Sub
  loc_E2EFE6: Set arg_2000 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E235DC
  'Data Table: 48DC98
  Dim Me As Recordset15
  loc_E235C3: Me.Requery -1
  loc_E235D3: Me.Requery -1
  loc_E235D8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '154E608
  'Data Table: 48DC98
  Dim var_98 As Variant
  Dim var_F8 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_108 As Variant
  Dim var_8A As Integer
  Dim unk_48DCA7 As Connection15
  Dim var_A4 As String
  Dim var_134 As String
  Dim var_9C As Variant
  Dim var_A0 As Variant
  Dim var_E8 As Variant
  Dim var_140 As Variant
  Dim var_1B8 As Variant
  Dim var_1D8 As Variant
  Dim var_118 As Variant
  Dim var_240 As Variant
  Dim var_15C As String
  Dim var_16C As Variant
  Dim var_270 As Variant
  Dim var_280 As Variant
  Dim var_2A0 As Variant
  Dim var_2B0 As Variant
  Dim var_2C0 As Variant
  Dim Me As Recordset15
  Dim var_170 As Variant
  Dim var_30C As Variant
  Dim var_144 As String
  Dim var_194 As Variant
  Dim var_2E4 As Variant
  Dim var_2F8 As Variant
  Dim var_C8 As Variant
  Dim var_35C As Variant
  Dim var_394 As Variant
  Dim var_3B8 As Variant
  Dim var_3D8 As Variant
  Dim var_404 As Variant
  Dim var_424 As Variant
  Dim var_174 As MSHFlexGrid
  Dim var_450 As Variant
  Dim var_470 As Variant
  Dim var_49C As Variant
  Dim var_4BC As Variant
  Dim var_22C As MSHFlexGrid
  Dim var_4EC As Variant
  Dim var_50C As Variant
  Dim var_230 As MSHFlexGrid
  Dim var_53C As Variant
  Dim var_55C As Variant
  Dim var_2E8 As MSHFlexGrid
  Dim var_828 As Double
  Dim var_830 As Double
  Dim var_370 As MSHFlexGrid
  Dim var_1F8 As Variant
  Dim var_838 As Double
  Dim var_840 As Double
  Dim var_848 As Double
  Dim var_48C As String
  Dim var_57C As String
  Dim var_680 As String
  Dim var_250 As Variant
  Dim var_36C As Variant
  Dim var_7A8 As Variant
  loc_154D758: On Error Goto loc_154E5EA
  loc_154D766: Set var_98 = Me.Txt
  loc_154D76C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_154D795: If (Proc_6_27_EA61EC(var_9C, "Plan Name") = 0) Then
  loc_154D798:   Exit Sub
  loc_154D799: End If
  loc_154D7A4: Set var_98 = Me.Txt
  loc_154D7AA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C)
  loc_154D7BB: Set var_A0 = var_9C
  loc_154D7D3: If (Proc_6_27_EA61EC(var_A0, "Applicable Date") = 0) Then
  loc_154D7D6:   Exit Sub
  loc_154D7D7: End If
  loc_154D7FE: Set var_9C = Me.Txt
  loc_154D804: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A0)
  loc_154D813: var_C8 = Trim(CVar(var_A0))
  loc_154D825: var_108 = (Me.Check1.Value = 1) And (var_C8 = vbNullString)
  loc_154D83B: If CBool(var_108) Then
  loc_154D851:   var_B8 = "Room Rate Percent is invalid"
  loc_154D857:   MsgBox(var_B8, &H40, var_C8, var_E8, var_108)
  loc_154D867:   Exit Sub
  loc_154D868: End If
  loc_154D883: Call Proc_21_55_F59B74(var_12A, (Me.Check1.Value = 1))
  loc_154D892: If (var_9C And (var_12A = 0)) Then
  loc_154D895:   Exit Sub
  loc_154D896: End If
  loc_154D89E: Call Proc_21_53_F59A10(var_B8)
  loc_154D8AF: unk_48DCA7.BeginTrans var_130
  loc_154D8B8: Set var_98 = Me.topCtrl1
  loc_154D8BE: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(&HFF)
  loc_154D8D7: If (CStr() = "Add") Then
  loc_154D8E0:   var_F8 = 0
  loc_154D8FD:   var_A4 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From PlanMast WHERE SITE_CODE='" & MemVar_1F95070
  loc_154D904:   var_134 = CStr() & "'"
  loc_154D90D:   unk_48DCA7.Execute var_134, var_B8, -1
  loc_154D915:   var_98 = var_98.Fields
  loc_154D91D:   var_F8 = var_9C.Item(var_9C)
  loc_154D925:   var_A0 = var_A0.Value
  loc_154D95E:   var_E8 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_154D984:   var_C8 = Format(CStr(var_C8), "000")
  loc_154D98C:   var_108 = (1 + var_C8)
  loc_154D9B7:   Set var_98 = Me.Txt
  loc_154D9BD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_134)
  loc_154D9C5:   1 = var_9C.Text
  loc_154D9D8:   Set var_A0 = Me.Txt
  loc_154D9DE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_140, var_144)
  loc_154D9E6:   var_E8 = var_140.Text
  loc_154D9F9:   Proc_6_7_F26918(var_C8, Date)
  loc_154DA09:   Set var_170 = Me.Txt
  loc_154DA0F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_174)
  loc_154DA1E:   Proc_6_7_F26918(var_194, CVar(var_174))
  loc_154DA2A:   Set var_1B8 = Me.Check1
  loc_154DA58:   var_1F8 = IIf((var_1B8.Value = 1), "Yes", "No")
  loc_154DA68:   Set var_22C = Me.Txt
  loc_154DA6E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_230)
  loc_154DA7D:   Proc_6_39_E7D3A0(var_250, CVar(var_230))
  loc_154DA99:   var_A4 = "Insert Into PlanMast (Code,Name,Total,Site_Code,U_Name,U_EntDt,U_AE,App_Date,Plan_Package,ActiveYN,PercentApp,RoomPer,LogSite_Code) Values ('" & CStr(var_108)
  loc_154DAE7:   var_16C = CVar(var_A4 & "','" & var_134 & "'," & var_144 & ",'" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") & var_C8 & ",'A'," 
  loc_154DB2A:   var_2C0 = var_16C & var_194 & ",'Plan','Yes','" & var_1F8 & "'," & var_250 & ",'" & CVar(MemVar_1F95078) & "')" 
  loc_154DB38:   unk_48DCA7.Execute CStr(var_2C0), var_2E4, -1
  loc_154DB9D: Else
  loc_154DBBA:   var_9C = Me.Fields.Item("SearchCode")
  loc_154DBCB:   var_A4 = CStr(var_9C.Value)
  loc_154DBD1:   global_80 = var_A4
  loc_154DBF0:   Set var_98 = Me.Txt
  loc_154DBF6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4)
  loc_154DBFE:   var_2E8 = var_9C.Text
  loc_154DC11:   Set var_A0 = Me.Txt
  loc_154DC17:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_140)
  loc_154DC3B:   var_C8 = "No"
  loc_154DC46:   var_B8 = "Yes"
  loc_154DC69:   Set var_174 = Me.Txt
  loc_154DC6F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1B8)
  loc_154DC7E:   Proc_6_39_E7D3A0(var_1F8, CVar(var_1B8))
  loc_154DC86:   var_240 = Date
  loc_154DC91:   Proc_6_7_F26918(var_250, var_240)
  loc_154DCA1:   Set var_22C = Me.Txt
  loc_154DCA7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_230)
  loc_154DCAF:   var_2A0 = CVar(var_230) 'Address
  loc_154DCB6:   Proc_6_7_F26918(var_2C0, var_2A0)
  loc_154DCC9:   Set var_2E8 = Me.Txt
  loc_154DCCF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_30C)
  loc_154DD0B:   var_16C = CVar("Update PlanMast Set Name='" & var_A4 & "',Total=" & var_140.Text & ",PercentApp='") & IIf((Me.Check1.Value = 1), var_B8, var_C8) 
  loc_154DD1E:   var_194 = var_16C & "',Site_Code='" & CVar(MemVar_1F95070) 
  loc_154DD5A:   var_280 = var_194 & "',U_Name='" & CVar(MemVar_1F950C8) & "',RoomPer=" & var_1F8 & ",U_EntDt=" & var_250 & ",U_AE='E' WHERE aPP_DATE=" 
  loc_154DD8B:   unk_48DCA7.Execute CStr(var_280 & var_2C0 & " AND CODE='" & CVar(var_30C.Tag) & "'"), var_36C, -1
  loc_154DDEF: End If
  loc_154DE00: Set var_98 = Me.Txt
  loc_154DE06: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, global_80)
  loc_154DE0E: var_9C.Tag = var_370
  loc_154DE20: var_F8 = 0
  loc_154DE50: unk_48DCA7.Execute "Select Count(*) From Plan1 Where Code='" & global_80 & "'", var_B8, -1
  loc_154DE58: var_98 = var_98.Fields
  loc_154DE60: var_F8 = var_9C.Item(var_9C)
  loc_154DE8F: If (var_C8 > 0) Then
  loc_154DEAF:   Set var_98 = Me.Txt
  loc_154DEB5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C, "DELETE FROM Plan1 WHERE aPP_DATE=", var_194)
  loc_154DEC4:   Proc_6_7_F26918(var_C8, CVar(var_9C), -1)
  loc_154DEF9:   unk_48DCA7.Execute CStr(var_A0.Value.Value.Value.Value.Value & var_C8 & " AND Code='" & CVar(global_80) & "'"), var_C8, var_C8
  loc_154DF19: End If
  loc_154DF41: For var_374 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_92 = var_374 'Byte
  loc_154DF4C:   var_D8 = CVar(CLng(var_92)) 'Long
  loc_154DF54:   var_118 = CVar(CLng(1)) 'Long
  loc_154DF7F:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_154DF87:     var_D8 = CVar(CLng(var_92)) 'Long
  loc_154DF8F:     var_118 = CVar(CLng(&H10)) 'Long
  loc_154DFAF:     var_1D8 = CVar(CLng(var_92)) 'Long
  loc_154DFB7:     var_270 = CVar(CLng(2)) 'Long
  loc_154DFC0:     Set var_9C = Me.FGrid
  loc_154DFD7:     var_2B0 = CVar(CLng(var_92)) 'Long
  loc_154DFDF:     var_2F8 = CVar(CLng(5)) 'Long
  loc_154DFFF:     var_35C = CVar(CLng(var_92)) 'Long
  loc_154E007:     var_394 = CVar(CLng(3)) 'Long
  loc_154E027:     var_3B8 = CVar(CLng(var_92)) 'Long
  loc_154E02F:     var_3D8 = CVar(CLng(&HB)) 'Long
  loc_154E04F:     var_404 = CVar(CLng(var_92)) 'Long
  loc_154E057:     var_424 = CVar(CLng(&HC)) 'Long
  loc_154E077:     var_450 = CVar(CLng(var_92)) 'Long
  loc_154E07F:     var_470 = CVar(CLng(&HD)) 'Long
  loc_154E09F:     var_49C = CVar(CLng(var_92)) 'Long
  loc_154E0A7:     var_4BC = CVar(CLng(&HE)) 'Long
  loc_154E0D1:     var_4EC = CVar(CLng(var_92)) 'Long
  loc_154E0D9:     var_50C = CVar(CLng(6)) 'Long
  loc_154E103:     var_53C = CVar(CLng(var_92)) 'Long
  loc_154E10B:     var_55C = CVar(CLng(7)) 'Long
  loc_154E12D:     var_828 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_154E15F:     var_830 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_154E191:     var_838 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_154E1C3:     var_840 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_154E1D4:     Proc_6_7_F26918(var_240, Date, var_840, CVar(CLng(&HA)), CVar(CLng(var_92)), var_838, CVar(CLng(9)), CVar(CLng(var_92)))
  loc_154E1DD:     Set var_694 = Me.topCtrl1
  loc_154E1E3:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_830)
  loc_154E249:     var_848 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_154E257:     Set var_754 = Me.Txt
  loc_154E25D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_758, var_848, CVar(CLng(&H11)), CVar(CLng(var_92)), CVar(CLng(8)))
  loc_154E26C:     Proc_6_7_F26918(var_778, CVar(var_758), CVar(CLng(var_92)), var_828)
  loc_154E288:     var_A4 = "INSERT INTO Plan1 (Code,ChrgCode,RevCode,TaxInc,TaxStru,PrintOption,PostingMethod,ChargeType,FlatRate,Adult,child,ExtraAdult,ExtraChild,NoOfDays,Site_Code,U_Name,U_EntDT,U_AE,PlanPer,App_Date,LogSite_Code)VALUES ('" & global_80
  loc_154E2C5:     var_15C = var_A4 & "','" & CStr(Me.FGrid.TextMatrix)) & "','" & CStr(var_9C.TextMatrix)) & "','" & CStr(Me.FGrid.TextMatrix)) & "','"
  loc_154E306:     var_48C = var_15C & CStr(Me.FGrid.TextMatrix)) & "','" & CStr(Me.FGrid.TextMatrix)) & "','" & CStr(Me.FGrid.TextMatrix)) & "','" & CStr(Me.FGrid.TextMatrix))
  loc_154E33F:     var_57C = var_48C & "'," & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CStr(var_828)
  loc_154E394:     var_680 = var_57C & "," & CStr(var_830) & "," & CStr(var_838) & "," & CStr(var_840) & ",'" & MemVar_1F95070 & "','" & MemVar_1F950C8
  loc_154E3DE:     var_7A8 = CVar(var_680 & "',") & var_240 & ",'" & IIf((CStr(var_2A0) = "Add"), "A", "E") & "'," & CVar(var_848) & "," & var_778 & ",'" 
  loc_154E3FF:     unk_48DCA7.Execute CStr(var_7A8 & CVar(MemVar_1F95078) & "')"), var_80C, -1
  loc_154E4DF:   End If
  loc_154E4E2: Next var_374 'Byte
  loc_154E4EE: unk_48DCA7.CommitTrans
  loc_154E4F5: var_8A = 0
  loc_154E506: Set var_98 = Me.Txt
  loc_154E50C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C)
  loc_154E528: var_8A = 0
  loc_154E536: Me.Requery -1
  loc_154E546: Me.Requery -1
  loc_154E551: Me.MoveFirst
  loc_154E57B: Me.Find "SearchCode='" & var_9C.Tag & "'", 0, 1
  loc_154E58B: Set var_98 = Me.topCtrl1
  loc_154E591: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_D8)
  loc_154E5AA: If (CStr(var_8A) = "Add") Then
  loc_154E5AD:   Call TopCtrl1_UnknownEvent_A()
  loc_154E5B2:   Exit Sub
  loc_154E5B3: End If
  loc_154E5D6: Call Proc_21_47_EB6B2C(Proc_5_1_100EC1C("INI", Me), global_64)
  loc_154E5E6: Set var_88 = Nothing
  loc_154E5E9: Exit Sub
  loc_154E5EA: ' Referenced from: 154D758
  loc_154E5F0: If (var_8A = &HFF) Then
  loc_154E5F9:   unk_48DCA7.RollbackTrans
  loc_154E5FE: End If
  loc_154E5FE: Proc_6_60_E63754(var_8A)
  loc_154E603: Exit Sub
  loc_154E604: Exit Sub
End Sub

Private Sub Form_Load() '10C76CC
  'Data Table: 48DC98
  Dim var_94 As Variant
  Dim var_BC As Variant
  Dim var_A8 As Variant
  Dim var_C0 As TextBox
  Dim var_C8 As DataGrid
  Dim var_CC As TextBox
  Dim var_AC As String
  Dim Me As Recordset15
  loc_10C73DC: On Error Goto loc_10C76C4
  loc_10C73E9: Set var_A8 = Me.topCtrl1
  loc_10C73EF: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_8001000B("AEDP")
  loc_10C73FD: Call 0.Method_arg_50 (var_AC)
  loc_10C740D: Set var_A8 = Me.topCtrl1
  loc_10C7413: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030007(CVar(var_AC))
  loc_10C7425: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_10C743D: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B4))
  loc_10C7453: Set var_A8 = Me.Txt
  loc_10C7459: Call 0.Method_Form_Load0 (CInt(0), var_C0)
  loc_10C7478: Me.DGHelp.Left = CVar(var_C0.Left)
  loc_10C7494: Set var_C8 = Me.Txt
  loc_10C749A: Call 0.Method_Form_Load0 (CInt(0), var_CC)
  loc_10C74B5: Set var_A8 = Me.Txt
  loc_10C74BB: Call 0.Method_Form_Load0 (CInt(0), var_C0)
  loc_10C74D3: var_94 = CVar(((var_C0.Top + var_CC.Height) + CDbl(&H1E))) 'Single
  loc_10C74E2: Me.DGHelp.Top = CVar(var_C0.Left)
  loc_10C7507: Me.DGRev.Left = CVar(CDbl(3720))
  loc_10C751C: Set var_A8 = Me.DGRev
  loc_10C7522: var_A8.Top = CVar(CDbl(1185))
  loc_10C752A: Call Proc_21_49_1331D94()
  loc_10C754B: Me.var_A8.CursorLocation = 3
  loc_10C7575: var_BC = CVar("Select *,Code as SearchCode From PlanMast WHERE Plan_Package='Plan' and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_10C757F: Me.Open var_BC, CVar(MemVar_1F95044), 3
  loc_10C75A6: Me.Recordset15.CursorLocation = 3
  loc_10C75C9: var_AC = "Select Code,Name,Sname,Revcode,TaxInc,Taxstru,PrintOption,PostingMethod,ChargeType,FlatRate,Adult,Child,ExtraAdult,ExtraChild From FixedCharge where (LOGSITE_CODE='" & MemVar_1F95078
  loc_10C75EE: CVarUnk
  loc_10C75F3: VerifyVarObj
  loc_10C75F9: Set var_A8 = Me.DGRev
  loc_10C75FF: LateIdStAd
  loc_10C7629: Me.DGRev.CursorLocation = 3
  loc_10C7653: var_BC = CVar("Select Code,Name From PlanMast WHERE Plan_Package='Plan' and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_10C765D: ar("Select Code,Name From PlanMast WHERE Plan_Package='Plan' and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name"), CVar(MemVar_1F95044), 3 var_BC, CVar(MemVar_1F95044), 3
  loc_10C7671: CVarUnk
  loc_10C7676: VerifyVarObj
  loc_10C767C: Set var_A8 = Me.DGHelp
  loc_10C7682: LateIdStAd
  loc_10C76B3: Call Proc_21_47_EB6B2C(Proc_5_1_100EC1C("INI", Me, New, Me, New, 1, -1), Me, New, 1)
  loc_10C76BE: Call Proc_21_50_145562C(-1, 1)
  loc_10C76C3: Exit Sub
  loc_10C76C4: ' Referenced from: 10C73DC
  loc_10C76C4: Proc_6_60_E63754(-1)
  loc_10C76C9: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5885C
  'Data Table: 48DC98
  loc_E58827: Set global_64 = Nothing
  loc_E58839: Set global_56 = Nothing
  loc_E5884B: Set global_60 = Nothing
  loc_E58857: MasterFormExit = 0
  loc_E5885A: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E59DB4
  'Data Table: 48DC98
  loc_E59D7C: Set var_88 = Me.topCtrl1
  loc_E59D82: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_E59DA5: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E59DAD:   Call Form_Unload(&HFF)
  loc_E59DB2: End If
  loc_E59DB2: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2F2E8
  'Data Table: 48DC98
  loc_E2F2BC: On Error Goto loc_E2F2E0
  loc_E2F2D7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2F2DF: Exit Sub
  loc_E2F2E0: ' Referenced from: E2F2BC
  loc_E2F2E0: Proc_6_60_E63754(Shift)
  loc_E2F2E5: Exit Sub
  loc_E2F2E6: CExtInstUnk
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '10C9A58
  'Data Table: 48DC98
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_108 As TextBox
  Dim Me As Recordset15
  Dim var_128 As String
  Dim var_104 As Field20
  loc_10C977C: On Error Goto loc_10C9A52
  loc_10C977F: Call Proc_21_45_EBE53C()
  loc_10C9797: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10C97A0: Set var_9C = Me.FGrid
  loc_10C97D5: Set var_104 = Me.TxtGrid
  loc_10C97DB: Call 0.Method_TxtGrid_GotFocus0 (0, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_10C97E3: var_108.Tag = CVar(CLng(var_9C.Col))
  loc_10C9810: Set var_88 = Me.TxtGrid
  loc_10C9816: Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_10C981E: var_9C.MaxLength = 0
  loc_10C983D: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10C9868: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_10C9882:   If (Me.RecordCount > 0) Then
  loc_10C9890:     Set var_9C = Me.FGPoint
  loc_10C98A8:     Proc_6_137_1192FDC(Me.DGRev, global_60, Index)
  loc_10C98B6:   End If
  loc_10C98BF:   var_114 = Me.RecordCount
  loc_10C98D6:   var_116 = Me.EOF
  loc_10C98EA:   var_118 = Me.BOF
  loc_10C990A:   var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10C9946:   If (CVar(CLng(1)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_10C9949:     Exit Sub
  loc_10C994A:   End If
  loc_10C995D:   var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10C9965:   var_DC = CVar(CLng(1)) 'Long
  loc_10C9989:   var_128 = "Name"
  loc_10C99C8:   If CBool(CVar(CStr(Me.FGrid.TextMatrix))) <> Me.Fields.Item(var_128).Value) Then
  loc_10C99D1:     Me.MoveFirst
  loc_10C99E9:     var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10C99F1:     var_DC = CVar(CLng(1)) 'Long
  loc_10C9A00:     var_AC = Me.FGrid.TextMatrix)
  loc_10C9A35:     Me.Find "Name ='" & CStr(var_AC) & "'", 0, 1
  loc_10C9A51:   End If
  loc_10C9A51: End If
  loc_10C9A51: Exit Sub
  loc_10C9A52: ' Referenced from: 10C977C
  loc_10C9A52: Proc_6_60_E63754(var_128, var_AC, var_DC, var_BC, var_DC, var_BC)
  loc_10C9A57: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1282EEC
  'Data Table: 48DC98
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As Variant
  Dim var_B0 As Long
  Dim Me As Recordset15
  loc_128292F: var_86 = Shift
  loc_1282932: On Error Goto loc_1282EE5
  loc_128293F: If (CLng(Shift) = &H1B) Then
  loc_128294E:   Set var_8C = Me.TxtGrid
  loc_1282954:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_128296D:   Set var_98 = Me.TxtGrid
  loc_1282973:   Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_128297B:   var_9C.Text = var_90.Tag
  loc_1282992:   Set var_8C = Me.FGrid
  loc_12829AE:   Set var_8C = Me.TxtGrid
  loc_12829B4:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0)
  loc_12829BC:   var_90.Visible = FGrid.DispID_8001
  loc_12829C8:   Exit Sub
  loc_12829C9: End If
  loc_12829DC: var_B0 = CLng(Me.FGrid.Col)
  loc_12829EC: If (var_B0 = CLng(6)) Then
  loc_1282A2F:   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_78 = &HFF))) Then
  loc_1282A3F:     Call Proc_21_51_1430110(0, 0, var_B6)
  loc_1282A4A:     If (var_B6 = &HFF) Then
  loc_1282A97:       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_78, CByte((CInt(6) + 1)))
  loc_1282AA7:     End If
  loc_1282AA7:   End If
  loc_1282AAA: Else
  loc_1282AB1:   If (var_B0 = CLng(1)) Then
  loc_1282B0A:     Proc_6_69_134A630(Me.DGRev, Me.TxtGrid, KeyCode, global_60, Shift, &HFF, 1, Nothing)
  loc_1282B79:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1282B9F:       Proc_6_138_106E830(Me.DGRev, global_60, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1282BAD:     End If
  loc_1282BB7:     If (CLng(Shift) = &HD) Then
  loc_1282BC7:       Call Proc_21_51_1430110(0, 0, var_B6, 0)
  loc_1282BD2:       If (var_B6 = &HFF) Then
  loc_1282BF0:         If (Me.Check1.Value = 1) Then
  loc_1282C3D:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_78, CByte((CInt(6) + 1)), 0)
  loc_1282C50:         Else
  loc_1282C93:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_78, 1, 0, 0)
  loc_1282CA3:         End If
  loc_1282CA3:       End If
  loc_1282CA3:     End If
  loc_1282CA6:   Else
  loc_1282CAD:     If (var_B0 = CLng(5)) Then
  loc_1282CF0:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_78 = &HFF))) Then
  loc_1282D00:         Call Proc_21_51_1430110(0, 0, var_B6, 0, &H11)
  loc_1282D0B:         If (var_B6 = &HFF) Then
  loc_1282D58:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_78, CByte((CInt(5) + 3)), 0)
  loc_1282D68:         End If
  loc_1282D68:       End If
  loc_1282D6B:     Else
  loc_1282D72:       If (var_B0 = CLng(&HA)) Then
  loc_1282DB5:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_78 = &HFF))) Then
  loc_1282DC5:           Call Proc_21_51_1430110(0, 0, var_B6, 0, 0)
  loc_1282DD0:           If (var_B6 = &HFF) Then
  loc_1282E16:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_78, &H11, 0)
  loc_1282E26:           End If
  loc_1282E26:         End If
  loc_1282E29:       Else
  loc_1282E30:         If (var_B0 = CLng(&H11)) Then
  loc_1282E73:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_78 = &HFF))) Then
  loc_1282E83:             Call Proc_21_51_1430110(0, 0, var_B6, 0, 0)
  loc_1282E8E:             If (var_B6 = &HFF) Then
  loc_1282ED4:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_78, &H11, 0)
  loc_1282EE4:             End If
  loc_1282EE4:           End If
  loc_1282EE4:         End If
  loc_1282EE4:       End If
  loc_1282EE4:     End If
  loc_1282EE4:   End If
  loc_1282EE4: End If
  loc_1282EE4: Exit Sub
  loc_1282EE5: ' Referenced from: 1282932
  loc_1282EE5: Proc_6_60_E63754(0, 0, 0, 0)
  loc_1282EEA: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F84EE8
  'Data Table: 48DC98
  Dim var_88 As Variant
  Dim var_9C As Long
  loc_F84D90: On Error Goto loc_F84EE0
  loc_F84D96: Proc_6_58_E06050(arg_10)
  loc_F84DAE: var_9C = CLng(Me.FGrid.Col)
  loc_F84DBE: If (var_9C = CLng(1)) Then
  loc_F84DDD:   If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_F84DEF:     var_A0 = "Name"
  loc_F84E0A:     Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_60, arg_10)
  loc_F84E24:     Set var_A8 = Me.FGPoint
  loc_F84E3C:     Proc_6_138_106E830(Me.DGRev, global_60, KeyAscii, var_A8)
  loc_F84E4A:   End If
  loc_F84E4D: Else
  loc_F84E54:   If (var_9C = CLng(6)) Then
  loc_F84E61:     Set var_88 = Me.TxtGrid
  loc_F84E67:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, var_A0)
  loc_F84E82:     Proc_6_42_129B55C(var_A8, arg_10, 8)
  loc_F84E91:   Else
  loc_F84E98:     If (var_9C = CLng(&HA)) Then
  loc_F84EA5:       Set var_88 = Me.TxtGrid
  loc_F84EAB:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, 2)
  loc_F84EC6:       Proc_6_42_129B55C(var_A8, arg_10, 2)
  loc_F84ED5:     Else
  loc_F84EDC:       If (var_9C = CLng(5)) Then
  loc_F84EDF:       End If
  loc_F84EDF:     End If
  loc_F84EDF:   End If
  loc_F84EDF: End If
  loc_F84EDF: Exit Sub
  loc_F84EE0: ' Referenced from: F84D90
  loc_F84EE0: Proc_6_60_E63754(0, 0)
  loc_F84EE5: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F91138
  'Data Table: 48DC98
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  Dim var_114 As Variant
  loc_F90FE4: On Error Goto loc_F9112F
  loc_F90FF3: If (KeyCode = 0) Then
  loc_F91009:   var_A0 = CLng(Me.FGrid.Col)
  loc_F91019:   If (var_A0 = CLng(1)) Then
  loc_F9103F:     If ((Shift <> &HD) And (CBool(Me.DGRev.Visible) = 0)) Then
  loc_F91050:       Call TxtGrid_KeyDown(KeyCode, global_76)
  loc_F91059:       Set var_AC = Me.TxtGrid
  loc_F91064:       var_A8 = "Name"
  loc_F9107F:       Proc_6_89_1470B00(var_AC, KeyCode, global_60, Shift, var_A8)
  loc_F9108E:     End If
  loc_F91091:   Else
  loc_F91098:     If Not (var_A0 = CLng(6)) Then
  loc_F910A2:       If (var_A0 = CLng(&H11)) Then
  loc_F910A5:       End If
  loc_F910E2:       Set var_8C = Me.TxtGrid
  loc_F910E8:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_F910F0:       &HFF = var_AC.Text
  loc_F910FF:       var_114 = CVar(CStr(Val(var_A8))) 'String
  loc_F91107:       Set var_128 = Me.FGrid
  loc_F9110D:       LateIdCallSt
  loc_F9112E:     End If
  loc_F9112E:   End If
  loc_F9112E: End If
  loc_F9112E: Exit Sub
  loc_F9112F: ' Referenced from: F90FE4
  loc_F9112F: Proc_6_60_E63754(var_128, var_114, 0)
  loc_F91134: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23630
  'Data Table: 48DC98
  Dim arg_10 As Integer
  loc_E2360C: On Error Goto loc_E23627
  loc_E2361A: Call Proc_21_51_1430110(Cancel, &HFF)
  loc_E23623: arg_10 = Not(var_88)
  loc_E23626: Exit Sub
  loc_E23627: ' Referenced from: E2360C
  loc_E23627: Proc_6_60_E63754(arg_10)
  loc_E2362C: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'EA92F4
  'Data Table: 48DC98
  Dim var_92 As Integer
  Dim Me As Recordset15
  loc_EA9272: Set var_88 = Me.Txt
  loc_EA9278: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EA9286: Proc_6_74_E23240(var_8C)
  loc_EA9295: var_92 = Index
  loc_EA92A0: If (var_92 = CInt(0)) Then
  loc_EA92BA:   If (Me.RecordCount > 0) Then
  loc_EA92C8:     Set var_8C = Me.FGPoint
  loc_EA92E0:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_EA92EE:   End If
  loc_EA92EE: End If
  loc_EA92EE: Call Proc_21_45_EBE53C(var_8C, var_92)
  loc_EA92F3: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1004D84
  'Data Table: 48DC98
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As DataGrid
  Dim var_94 As DataGrid
  loc_1004B98: If (CLng(Shift) = &H1B) Then
  loc_1004B9B:   Call Proc_21_45_EBE53C(Shift)
  loc_1004BA0:   Exit Sub
  loc_1004BA1: End If
  loc_1004BA4: var_88 = KeyCode
  loc_1004BAF: If (var_88 = CInt(0)) Then
  loc_1004BD4:   If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_1004BF4:     Set var_9C = Me.FGPoint
  loc_1004C22:     Proc_6_79_11AD564(Me.DGHelp, Me.Txt, KeyCode, global_56, Shift)
  loc_1004C36:   End If
  loc_1004C8F:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1004C9D:     Set var_94 = Me.FGPoint
  loc_1004CB5:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, var_94, 0)
  loc_1004CC3:   End If
  loc_1004CC6: Else
  loc_1004CCE:   If (var_88 = CInt(3)) Then
  loc_1004CDC:     Set var_90 = Me.Txt
  loc_1004CE2:     Call 0.Method_Txt_KeyDown0 (CInt(3), var_94, 1)
  loc_1004CF7:     Set var_9C = var_94
  loc_1004CFD:     Proc_6_41_FA1734(var_9C, Shift, 2, 2)
  loc_1004D09:   End If
  loc_1004D09: End If
  loc_1004D44: If ((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGRev.Visible) = 0)) Then
  loc_1004D5C:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1004D65:     Proc_6_75_E5335C(Shift, arg_14, var_9C)
  loc_1004D6A:   End If
  loc_1004D74:   If (CLng(Shift) = &H26) Then
  loc_1004D7D:     Proc_6_76_E533C8(Shift, arg_14)
  loc_1004D82:   End If
  loc_1004D82: End If
  loc_1004D82: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E95480
  'Data Table: 48DC98
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_E9540E: Proc_6_133_E7FB08(var_94)
  loc_E95423: If (CInt(var_94) = &HD) Then
  loc_E95428:   arg_10 = 0
  loc_E9542B: End If
  loc_E9542E: Proc_6_58_E06050(arg_10, arg_10)
  loc_E95436: var_96 = KeyAscii
  loc_E95441: If (var_96 = CInt(3)) Then
  loc_E9544F:   Set var_9C = Me.Txt
  loc_E95455:   Call 0.Method_Txt_KeyPress0 (CInt(3), var_A0, var_96)
  loc_E95470:   Proc_6_42_129B55C(var_A0, arg_10, 2)
  loc_E9547C: End If
  loc_E9547C: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EDCECC
  'Data Table: 48DC98
  Dim Me As Recordset15
  loc_EDCE2A: If (KeyCode = CInt(0)) Then
  loc_EDCE61:   If ((CBool(Me.DGHelp.Visible) = &HFF) And (Me.RecordCount > 0)) Then
  loc_EDCE6E:     var_A4 = "Name"
  loc_EDCE89:     Proc_6_80_FF1F20(Me.Txt, KeyCode, global_56)
  loc_EDCEBB:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EDCEC9:   End If
  loc_EDCEC9: End If
  loc_EDCEC9: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4E4A4
  'Data Table: 48DC98
  loc_E4E482: Set var_88 = Me.Txt
  loc_E4E488: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4E496: Proc_6_73_E23294(var_8C)
  loc_E4E4A2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '12D9E8C
  'Data Table: 48DC98
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_94 As TextBox
  Dim var_98 As String
  Dim var_D4 As Variant
  Dim var_A8 As Variant
  Dim var_E4 As Variant
  Dim unk_48DCA7 As Connection15
  Dim var_12C As Variant
  Dim var_130 As Fields15
  Dim var_144 As Field20
  Dim arg_10 As Integer
  Dim var_154 As Variant
  Dim var_B0 As Recordset15
  Dim var_B4 As Fields15
  loc_12D9813: var_88 = Cancel
  loc_12D981E: If (var_88 = CInt(0)) Then
  loc_12D9838:   If (Me.RecordCount = 0) Then
  loc_12D983B:     Exit Sub
  loc_12D983C:   End If
  loc_12D984A:   Set var_90 = Me.Txt
  loc_12D9850:   Call 0.Method_Txt_Validate0 (CInt(2), var_94)
  loc_12D986F:   If (var_94.Text <> vbNullString) Then
  loc_12D9876:     Set var_90 = Me.topCtrl1
  loc_12D987C:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_88)
  loc_12D9884:     var_98 = CStr()
  loc_12D9895:     If (var_98 = "Add") Then
  loc_12D98C5:       Set var_90 = Me.Txt
  loc_12D98CB:       Call 0.Method_Txt_Validate0 (CInt(0), var_94, var_98, "Select Count(*) From PlanMast Where Name='", var_128, -1)
  loc_12D98D3:       var_12C = var_94.Text
  loc_12D98E3:       var_D4 = CVar(var_130 & var_98 & "' and App_Date=") 'String
  loc_12D98F1:       Set var_B0 = Me.Txt
  loc_12D98F7:       Call 0.Method_Txt_Validate0 (CInt(2), var_B4, var_D4)
  loc_12D9906:       Proc_6_7_F26918(var_C4, CVar(var_B4), 0)
  loc_12D990E:       var_E4 = var_144 & var_C4 
  loc_12D9925:       unk_48DCA7.Execute CStr(var_E4 & vbNullString), var_154, 
  loc_12D992D:        = var_12C.Fields
  loc_12D9935:        = var_130.Item()
  loc_12D993D:        = var_144.Value
  loc_12D9976:       If (var_154 > 0) Then
  loc_12D9984:         var_C4 = "Information"
  loc_12D999A:         MsgBox("Duplicate Name", &H40, var_C4, var_D4, var_E4)
  loc_12D99B5:         Set var_90 = Me.Txt
  loc_12D99BB:         Call 0.Method_Txt_Validate0 (CInt(0))
  loc_12D99C3:         var_94.SetFocus
  loc_12D99D1:         arg_10 = &HFF
  loc_12D99D4:         Exit Sub
  loc_12D99D5:       End If
  loc_12D99D8:     Else
  loc_12D9A05:       Set var_90 = Me.Txt
  loc_12D9A0B:       Call 0.Method_Txt_Validate0 (CInt(0), var_94, var_98, "Select Count(*) From PlanMast Where Name='", var_174, -1, var_12C)
  loc_12D9A13:       var_130 = var_94.Text
  loc_12D9A34:       var_D4 = CVar(0 & var_98 & "' And Name<>'" & global_68 & "' And App_Date=") 'String
  loc_12D9A42:       Set var_B0 = Me.Txt
  loc_12D9A48:       Call 0.Method_Txt_Validate0 (CInt(2), var_B4, var_D4, var_144)
  loc_12D9A57:       Proc_6_7_F26918(var_C4, CVar(var_B4), var_18C)
  loc_12D9A5F:       var_E4 = arg_10 & var_C4 
  loc_12D9A7A:       Proc_6_7_F26918(var_128, global_72)
  loc_12D9A82:       var_154 = var_E4 & " And App_date<>" & var_128 
  loc_12D9A90:       unk_48DCA7.Execute CStr(var_154), var_94, 
  loc_12D9A98:        = var_12C.Fields
  loc_12D9AA0:        = var_130.Item()
  loc_12D9AA8:        = var_144.Value
  loc_12D9AE9:       If (var_18C > 0) Then
  loc_12D9AF7:         var_C4 = "Information"
  loc_12D9B0D:         MsgBox("Duplicate Name", &H40, var_C4, var_D4, var_E4)
  loc_12D9B28:         Set var_90 = Me.Txt
  loc_12D9B2E:         Call 0.Method_Txt_Validate0 (CInt(0))
  loc_12D9B36:         var_94.SetFocus
  loc_12D9B44:         arg_10 = &HFF
  loc_12D9B47:         Exit Sub
  loc_12D9B48:       End If
  loc_12D9B48:     End If
  loc_12D9B48:   End If
  loc_12D9B4B: Else
  loc_12D9B53:   If (var_88 = CInt(2)) Then
  loc_12D9B60:     Set var_90 = Me.Txt
  loc_12D9B66:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_12D9B86:     Set var_B4 = Me.Txt
  loc_12D9B8C:     Call 0.Method_Txt_Validate0 (Cancel, var_12C)
  loc_12D9B94:     var_12C.Text = Proc_6_33_15125B8(var_94, arg_10)
  loc_12D9BB4:     Set var_90 = Me.Txt
  loc_12D9BBA:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_12D9BC2:     var_98 = var_94.Text
  loc_12D9BD9:     If (var_98 = vbNullString) Then
  loc_12D9BDE:       arg_10 = &HFF
  loc_12D9BE1:       Exit Sub
  loc_12D9BE2:     End If
  loc_12D9BF0:     Set var_90 = Me.Txt
  loc_12D9BF6:     Call 0.Method_Txt_Validate0 (CInt(0), var_94, var_98)
  loc_12D9BFE:     arg_10 = var_94.Text
  loc_12D9C15:     If (var_98 <> vbNullString) Then
  loc_12D9C1C:       Set var_90 = Me.topCtrl1
  loc_12D9C22:       Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_94)
  loc_12D9C2A:       var_98 = CStr()
  loc_12D9C3B:       If (var_98 = "Add") Then
  loc_12D9C6B:         Set var_90 = Me.Txt
  loc_12D9C71:         Call 0.Method_Txt_Validate0 (CInt(0), var_94, var_98, "Select Count(*) From PlanMast Where Name='", var_128, -1)
  loc_12D9C79:         var_12C = var_94.Text
  loc_12D9C89:         var_D4 = CVar(var_130 & var_98 & "' and App_date=") 'String
  loc_12D9C97:         Set var_B0 = Me.Txt
  loc_12D9C9D:         Call 0.Method_Txt_Validate0 (CInt(2), var_B4, var_D4)
  loc_12D9CAC:         Proc_6_7_F26918(var_C4, CVar(var_B4), 0)
  loc_12D9CB4:         var_E4 = var_144 & var_C4 
  loc_12D9CCB:         unk_48DCA7.Execute CStr(var_E4 & vbNullString), var_154, 
  loc_12D9CD3:          = var_12C.Fields
  loc_12D9CDB:          = var_130.Item()
  loc_12D9CE3:          = var_144.Value
  loc_12D9D1C:         If (var_154 > 0) Then
  loc_12D9D2A:           var_C4 = "Information"
  loc_12D9D3A:           var_A8 = "Duplicate Name"
  loc_12D9D40:           MsgBox(var_A8, &H40, var_C4, var_D4, var_E4)
  loc_12D9D5B:           Set var_90 = Me.Txt
  loc_12D9D61:           Call 0.Method_Txt_Validate0 (CInt(0))
  loc_12D9D69:           var_94.SetFocus
  loc_12D9D77:           arg_10 = &HFF
  loc_12D9D7A:           Exit Sub
  loc_12D9D7B:         End If
  loc_12D9D7E:       Else
  loc_12D9DAB:         Set var_90 = Me.Txt
  loc_12D9DB1:         Call 0.Method_Txt_Validate0 (CInt(0), var_94, var_98, "Select Count(*) From PlanMast Where Name='", var_A8, -1, var_B0)
  loc_12D9DE3:         unk_48DCA7.Execute 0 & var_98 & "' And Name<>'" & global_68 & "'", var_12C, var_C4
  loc_12D9DEB:         arg_10 = var_B0.Fields
  loc_12D9DF3:          = var_94.Text.Item(var_94)
  loc_12D9DFB:          = var_12C.Value
  loc_12D9E2C:         If (var_C4 > 0) Then
  loc_12D9E50:           MsgBox("Duplicate Name", &H40, "Information", var_D4, var_E4)
  loc_12D9E6B:           Set var_90 = Me.Txt
  loc_12D9E71:           Call 0.Method_Txt_Validate0 (CInt(0))
  loc_12D9E79:           var_94.SetFocus
  loc_12D9E87:           arg_10 = &HFF
  loc_12D9E8A:           Exit Sub
  loc_12D9E8B:         End If
  loc_12D9E8B:       End If
  loc_12D9E8B:     End If
  loc_12D9E8B:   End If
  loc_12D9E8B: End If
  loc_12D9E8B: Exit Sub
End Sub

Private Sub DGRev_UnknownEvent_9 'F51A8C
  'Data Table: 48DC98
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_BC As TextBox
  loc_F51987: If (Me.RecordCount > 0) Then
  loc_F519AD:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_F519CD:     var_B4 = Me.Fields.Item("Name")
  loc_F519EA:     Set var_B8 = Me.TxtGrid
  loc_F519F0:     Call 0.Method_DGRev_UnknownEvent_90 (0, var_BC)
  loc_F519F8:     var_BC.Text = CStr(var_B4.Value)
  loc_F51A0E:   End If
  loc_F51A0E: End If
  loc_F51A1B: Call Proc_21_51_1430110(0, 0)
  loc_F51A2C: Set var_8C = Me.TxtGrid
  loc_F51A32: Call 0.Method_DGRev_UnknownEvent_90 (0, var_B4, var_C2)
  loc_F51A3A: var_C6 = var_B4.Visible
  loc_F51A4C: If (var_C2 = &HFF) Then
  loc_F51A58:   Set var_8C = Me.TxtGrid
  loc_F51A5E:   Call 0.Method_DGRev_UnknownEvent_90 (0, var_B4)
  loc_F51A66:   var_B4.SetFocus
  loc_F51A72: End If
  loc_F51A81: Me.DGRev.Visible = False
  loc_F51A89: Exit Sub
End Sub

Private Sub DGRev_UnknownEvent_1F 'EA78E4
  'Data Table: 48DC98
  Dim var_A8 As Variant
  loc_EA7864: Set var_88 = Me.DGRev
  loc_EA788E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA7896: Set var_BC = Me.DGRev
  loc_EA78D2: Proc_6_138_106E830(Me.DGRev, global_60, CInt(1), Me.FGPoint)
  loc_EA78E0: Exit Sub
  loc_EA78E1: Result DGRev.DispID_1B End Sub 'Currency
End Sub

Private Sub Check1_Click() 'F1D114
  'Data Table: 48DC98
  Dim var_88 As CheckBox
  Dim var_9C As Variant
  Dim var_D0 As Variant
  loc_F1D027: If (Me.Check1.Value = 1) Then
  loc_F1D02D:   var_9C = CVar(CLng(&H11)) 'Long
  loc_F1D03F:   Set var_88 = Me.FGrid
  loc_F1D045:   LateIdCallSt
  loc_F1D061:   Call 0.Method_Check1_Click0 (3, var_D0, &HFF)
  loc_F1D069:   var_D0.Visible = Me.Label1
  loc_F1D082:   Set var_88 = Me.Txt
  loc_F1D088:   Call 0.Method_Check1_Click0 (CInt(3), var_D0, &HFF)
  loc_F1D090:   var_D0.Visible = &H3E8
  loc_F1D09F: Else
  loc_F1D0B4:   Set var_88 = Me.FGrid
  loc_F1D0BA:   LateIdCallSt
  loc_F1D0D6:   Call 0.Method_Check1_Click0 (3, var_D0, 0, Me.Label1)
  loc_F1D0DE:   var_D0.Visible = 0
  loc_F1D0F7:   Set var_88 = Me.Txt
  loc_F1D0FD:   Call 0.Method_Check1_Click0 (CInt(3), var_D0, 0)
  loc_F1D105:   var_D0.Visible = CVar(CLng(&H11))
  loc_F1D111: End If
  loc_F1D111: Exit Sub
  loc_F1D112: DOC
End Sub

Private Sub DGHelp_UnknownEvent_9 'F404B4
  'Data Table: 48DC98
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F403AB: Me.DGHelp.Visible = False
  loc_F403CA: If (Me.RecordCount > 0) Then
  loc_F40409:   Set var_B4 = Me.Txt
  loc_F4040F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F40417:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4044A:   var_B0 = Me.Fields.Item("Name")
  loc_F40469:   Set var_B4 = Me.Txt
  loc_F4046F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F40477:   var_B8.Text = CStr(var_B0.Value)
  loc_F4048D: End If
  loc_F40498: Set var_A8 = Me.Txt
  loc_F4049E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F404A6: var_B0.SetFocus
  loc_F404B2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EA79A8
  'Data Table: 48DC98
  Dim var_A8 As Variant
  loc_EA7928: Set var_88 = Me.DGHelp
  loc_EA7952: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA795A: Set var_BC = Me.DGHelp
  loc_EA7996: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(0), Me.FGPoint)
  loc_EA79A4: Exit Sub
  loc_EA79A5: ThisVCallR8
End Sub

Private Sub FGrid_UnknownEvent_0 'EA6068
  'Data Table: 48DC98
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA6003: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_88)) Then
  loc_EA6019:   Me.FGrid.Col = 1
  loc_EA6021: End If
  loc_EA6034: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA6047: Set var_88 = Me.TxtGrid
  loc_EA604D: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA6055: var_BC.Visible = False
  loc_EA6061: Call Proc_21_45_EBE53C()
  loc_EA6066: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1F9A0
  'Data Table: 48DC98
  loc_E1F997: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1F99F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E6D28C
  'Data Table: 48DC98
  Dim var_8C As TextBox
  loc_E6D247: Set var_88 = Me.TxtGrid
  loc_E6D24D: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_E6D255: var_8C.Visible = False
  loc_E6D265: Set var_88 = Me.topCtrl1
  loc_E6D26B: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_E6D284: If (CStr() = "Browse") Then
  loc_E6D287:   Exit Sub
  loc_E6D288: End If
  loc_E6D288: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '12C845C
  'Data Table: 48DC98
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_D4 As Variant
  Dim arg_C As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_12C7DE0: On Error Goto loc_12C8454
  loc_12C7DE7: Set var_88 = Me.topCtrl1
  loc_12C7DED: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_12C7E06: If (CStr() = "Browse") Then
  loc_12C7E09:   Exit Sub
  loc_12C7E0A: End If
  loc_12C7E7E: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_12C7E94:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_12C7EA4:   var_9C = "+{Tab}"
  loc_12C7EAA:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_12C7EB4:   arg_C = 0
  loc_12C7EBA: Else
  loc_12C7EC4:   var_B0 = Me.FGrid.Rows
  loc_12C7F11:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_12C7F27:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_12C7F34:     Call Proc_21_48_ED7F30(0, var_B0, arg_C)
  loc_12C7F39:   End If
  loc_12C7F39: End If
  loc_12C7F3F: global_76 = arg_C
  loc_12C7F65: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_12C7F89: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_12C7F9F:   var_EC = CLng(Me.FGrid.Col)
  loc_12C7FAF:   If (var_EC = CLng(1)) Then
  loc_12C7FC5:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C7FCD:     var_FC = CVar(CLng(1)) 'Long
  loc_12C7FD2:     var_11C = vbNullString
  loc_12C7FDC:     Set var_A0 = Me.FGrid
  loc_12C7FE2:     LateIdCallSt
  loc_12C8007:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C800F:     var_FC = CVar(CLng(2)) 'Long
  loc_12C8014:     var_11C = vbNullString
  loc_12C801E:     Set var_A0 = Me.FGrid
  loc_12C8024:     LateIdCallSt
  loc_12C8049:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C8051:     var_FC = CVar(CLng(3)) 'Long
  loc_12C8056:     var_11C = vbNullString
  loc_12C8060:     Set var_A0 = Me.FGrid
  loc_12C8066:     LateIdCallSt
  loc_12C808B:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C8093:     var_FC = CVar(CLng(6)) 'Long
  loc_12C8098:     var_11C = vbNullString
  loc_12C80A2:     Set var_A0 = Me.FGrid
  loc_12C80A8:     LateIdCallSt
  loc_12C80CD:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C80D5:     var_FC = CVar(CLng(7)) 'Long
  loc_12C80DA:     var_11C = vbNullString
  loc_12C80E4:     Set var_A0 = Me.FGrid
  loc_12C80EA:     LateIdCallSt
  loc_12C810F:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C8117:     var_FC = CVar(CLng(8)) 'Long
  loc_12C811C:     var_11C = vbNullString
  loc_12C8126:     Set var_A0 = Me.FGrid
  loc_12C812C:     LateIdCallSt
  loc_12C8151:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C8159:     var_FC = CVar(CLng(9)) 'Long
  loc_12C815E:     var_11C = vbNullString
  loc_12C8168:     Set var_A0 = Me.FGrid
  loc_12C816E:     LateIdCallSt
  loc_12C8193:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C819B:     var_FC = CVar(CLng(&HE)) 'Long
  loc_12C81A0:     var_11C = vbNullString
  loc_12C81AA:     Set var_A0 = Me.FGrid
  loc_12C81B0:     LateIdCallSt
  loc_12C81D5:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C81DD:     var_FC = CVar(CLng(4)) 'Long
  loc_12C81E2:     var_11C = vbNullString
  loc_12C81EC:     Set var_A0 = Me.FGrid
  loc_12C81F2:     LateIdCallSt
  loc_12C8217:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C821F:     var_FC = CVar(CLng(&HB)) 'Long
  loc_12C8224:     var_11C = vbNullString
  loc_12C822E:     Set var_A0 = Me.FGrid
  loc_12C8234:     LateIdCallSt
  loc_12C8259:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C8261:     var_FC = CVar(CLng(&HC)) 'Long
  loc_12C8266:     var_11C = vbNullString
  loc_12C8270:     Set var_A0 = Me.FGrid
  loc_12C8276:     LateIdCallSt
  loc_12C829B:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C82A3:     var_FC = CVar(CLng(&HD)) 'Long
  loc_12C82A8:     var_11C = vbNullString
  loc_12C82B2:     Set var_A0 = Me.FGrid
  loc_12C82B8:     LateIdCallSt
  loc_12C82DD:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C82E5:     var_FC = CVar(CLng(5)) 'Long
  loc_12C82EA:     var_11C = vbNullString
  loc_12C82F4:     Set var_A0 = Me.FGrid
  loc_12C82FA:     LateIdCallSt
  loc_12C831F:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C8327:     var_FC = CVar(CLng(&H11)) 'Long
  loc_12C832C:     var_11C = vbNullString
  loc_12C8336:     Set var_A0 = Me.FGrid
  loc_12C833C:     LateIdCallSt
  loc_12C8351:   Else
  loc_12C8358:     If (var_EC = CLng(6)) Then
  loc_12C8365:       var_98 = Me.FGrid.Row
  loc_12C8377:       Set var_A0 = Me.FGrid
  loc_12C839B:       LateIdCallSt
  loc_12C83B6:       Call Proc_21_53_F59A10(var_98, Me.FGrid, "0.00", CVar(CLng(var_A0.Col)), CVar(CLng(var_98)), var_A0, "0.00", CVar(CLng(var_A0.Col)))
  loc_12C83C1:     Else
  loc_12C83C8:       If (var_EC = CLng(5)) Then
  loc_12C83CB:         GoTo loc_12C843D
  loc_12C83CE:       End If
  loc_12C83D5:       If (var_EC = CLng(&HF)) Then
  loc_12C83D8:         GoTo loc_12C843D
  loc_12C83DB:       End If
  loc_12C83E2:       If (var_EC = CLng(&HA)) Then
  loc_12C83F8:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C8410:         var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12C8415:         var_11C = "0"
  loc_12C841F:         Set var_B4 = Me.FGrid
  loc_12C8425:         LateIdCallSt
  loc_12C843D:         ' Referenced from:     12C83D8
  loc_12C843D:         ' Referenced from:     12C83CB
  loc_12C843D:       End If
  loc_12C843D:     End If
  loc_12C843D:   End If
  loc_12C843D: End If
  loc_12C8443: If (arg_C = &HD) Then
  loc_12C844B:   global_78 = 0
  loc_12C844E: End If
  loc_12C8450: arg_C = 0
  loc_12C8453: Exit Sub
  loc_12C8454: ' Referenced from: 12C7DE0
  loc_12C8454: Proc_6_60_E63754(arg_C, global_78, var_B4, var_11C, var_FC, var_D4, var_D4)
  loc_12C8459: Exit Sub
  loc_12C845A: GoTo loc_12C9DFF
End Sub

Private Sub FGrid_UnknownEvent_B 'EF27D4
  'Data Table: 48DC98
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_EF2714: On Error Goto loc_EF27CD
  loc_EF271B: Set var_88 = Me.topCtrl1
  loc_EF2721: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_EF273A: If (CStr() = "Browse") Then
  loc_EF273D:   Exit Sub
  loc_EF273E: End If
  loc_EF2751: var_A0 = CLng(Me.FGrid.Col)
  loc_EF2761: If Not (var_A0 = CLng(1)) Then
  loc_EF276B:   If (var_A0 = CLng(6)) Then
  loc_EF276E:   End If
  loc_EF2786:   var_9C = 0
  loc_EF27AF:   Proc_6_61_1077158(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_EF27C4: End If
  loc_EF27C9: global_78 = 0
  loc_EF27CC: Exit Sub
  loc_EF27CD: ' Referenced from: EF2714
  loc_EF27CD: Proc_6_60_E63754(global_78, var_9C)
  loc_EF27D2: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) '102F1B0
  'Data Table: 48DC98
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_102EF74: On Error Goto loc_102F1A8
  loc_102EF7B: Set var_88 = Me.topCtrl1
  loc_102EF81: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_102EF9A: If (CStr() = "Browse") Then
  loc_102EF9D:   Exit Sub
  loc_102EF9E: End If
  loc_102EFB1: var_A0 = CLng(Me.FGrid.Col)
  loc_102EFC1: If (var_A0 = CLng(1)) Then
  loc_102F002:   Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_102F017: Else
  loc_102F01E:   If (var_A0 = CLng(6)) Then
  loc_102F05F:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Index)
  loc_102F074:   Else
  loc_102F07B:     If (var_A0 = CLng(5)) Then
  loc_102F0BC:       Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Index)
  loc_102F0D1:     Else
  loc_102F0D8:       If Not (var_A0 = CLng(&HF)) Then
  loc_102F0E2:         If (var_A0 = CLng(&H11)) Then
  loc_102F0E5:         End If
  loc_102F123:         Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Index, 0)
  loc_102F138:       Else
  loc_102F13F:         If (var_A0 = CLng(&HA)) Then
  loc_102F180:           Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Index, 0)
  loc_102F192:         End If
  loc_102F192:       End If
  loc_102F192:     End If
  loc_102F192:   End If
  loc_102F192: End If
  loc_102F19C: If (CLng(Index) <> &HD) Then
  loc_102F1A4:   global_78 = &HFF
  loc_102F1A7: End If
  loc_102F1A7: Exit Sub
  loc_102F1A8: ' Referenced from: 102EF74
  loc_102F1A8: Proc_6_60_E63754(global_78, 0, 0, 0)
  loc_102F1AD: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) 'FEAFD0
  'Data Table: 48DC98
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_FEADF0: On Error Goto loc_FEAFC8
  loc_FEADF7: Set var_8C = Me.topCtrl1
  loc_FEADFD: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_FEAE16: If (CStr() = "Browse") Then
  loc_FEAE19:   Exit Sub
  loc_FEAE1A: End If
  loc_FEAE37: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FEAE3A:   Exit Sub
  loc_FEAE3B: End If
  loc_FEAE4C: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_FEAE6E:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FEAEA8:     If (MsgBox("Delete for Sure?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_FEAECA:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FEAEE0:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FEAEE9:         Set var_114 = Me.FGrid
  loc_FEAF04:       Else
  loc_FEAF17:         Me.FGrid.Rows = 1
  loc_FEAF34:         var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FEAF3C:         Set var_114 = Me.FGrid
  loc_FEAF6B:         Me.FGrid.FixedRows = 1
  loc_FEAF73:       End If
  loc_FEAF73:     End If
  loc_FEAF76:   Else
  loc_FEAF81:     var_D0 = "Delete Module"
  loc_FEAF91:     var_9C = "No Entries To Delete"
  loc_FEAF97:     MsgBox(var_9C, &H10, var_D0, var_F0, var_110)
  loc_FEAFA7:   End If
  loc_FEAFAA:   Call Proc_21_53_F59A10(var_9C, FGrid.DispID_10000, var_D0)
  loc_FEAFB6:   Set var_8C = Me.FGrid
  loc_FEAFC7: End If
  loc_FEAFC7: Exit Sub
  loc_FEAFC8: ' Referenced from: FEADF0
  loc_FEAFC8: Proc_6_60_E63754(FGrid.DispID_8001, FGrid.DispID_10000)
  loc_FEAFCD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1F950
  'Data Table: 48DC98
  loc_E1F947: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1F94F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3F8B0
  'Data Table: 48DC98
  Dim var_8C As TextBox
  loc_E3F88F: Set var_88 = Me.TxtGrid
  loc_E3F895: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3F89D: var_8C.Visible = False
  loc_E3F8A9: Call Proc_21_45_EBE53C()
  loc_E3F8AE: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E639EC
  'Data Table: 48DC98
  loc_E639BC: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E639BF:   Call DGHelp_UnknownEvent_9()
  loc_E639C4: End If
  loc_E639E0: If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_E639E3:   Call DGRev_UnknownEvent_9()
  loc_E639E8: End If
  loc_E639E8: Exit Sub
End Sub

Public Function MasterFormExitGet() '48E834
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '48E843
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E94BE0
  'Data Table: 48DC98
  Dim Me As Recordset15
  loc_E94B6E: On Error Goto loc_E94BD7
  loc_E94B77: Me.MoveFirst
  loc_E94BA1: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E94BC9: Proc_5_0_1107AD0(&HFF, Me, global_64)
  loc_E94BD1: Call Proc_21_50_145562C(0)
  loc_E94BD6: Exit Sub
  loc_E94BD7: ' Referenced from: E94B6E
  loc_E94BD7: Proc_6_60_E63754(var_A0)
  loc_E94BDC: Exit Sub
End Sub

Public Sub Proc_21_45_EBE53C
  'Data Table: 48DC98
  loc_EBE4B4: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EBE4C6:   Me.DGHelp.Visible = False
  loc_EBE4CE: End If
  loc_EBE4EA: If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_EBE4FC:   Me.DGRev.Visible = False
  loc_EBE504: End If
  loc_EBE520: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBE532:   Me.FGPoint.Visible = False
  loc_EBE53A: End If
  loc_EBE53A: Exit Sub
End Sub

Public Sub Proc_21_46_F2B908
  'Data Table: 48DC98
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F2B802: global_68 = vbNullString
  loc_F2B80C: global_72 = vbNullString
  loc_F2B81E: Set var_8C = Me.Txt
  loc_F2B824: Call 0.Method_Proc_21_46_F2B908C (var_8E, var_86)
  loc_F2B834: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F2B84A:   Set var_8C = Me.Txt
  loc_F2B850:   Call 0.Method_Proc_21_46_F2B9080 (CInt(var_86), var_98)
  loc_F2B858:   var_98.Text = vbNullString
  loc_F2B874:   Set var_8C = Me.Txt
  loc_F2B87A:   Call 0.Method_Proc_21_46_F2B9080 (CInt(var_86), var_98)
  loc_F2B882:   var_98.Tag = vbNullString
  loc_F2B891: Next var_92 'Byte
  loc_F2B8AA: Me.FGrid.Rows = 1
  loc_F2B8C7: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F2B8CF: Set var_98 = Me.FGrid
  loc_F2B8FE: Me.FGrid.FixedRows = 1
  loc_F2B906: Exit Sub
End Sub

Public Sub Proc_21_47_EB6B2C(arg_C) 'EB6B2C
  'Data Table: 48DC98
  Dim var_98 As TextBox
  Dim var_8C As CheckBox
  loc_EB6A9E: Set var_8C = Me.Txt
  loc_EB6AA4: Call 0.Method_Proc_21_47_EB6B2CC (var_8E, var_86)
  loc_EB6AB4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB6ACA:   Set var_8C = Me.Txt
  loc_EB6AD0:   Call 0.Method_Proc_21_47_EB6B2C0 (CInt(var_86), var_98)
  loc_EB6AD8:   var_98.Enabled = arg_C
  loc_EB6AE7: Next var_92 'Byte
  loc_EB6AFA: Me.Check1.Enabled = arg_C
  loc_EB6B0F: Set var_8C = Me.Txt
  loc_EB6B15: Call 0.Method_Proc_21_47_EB6B2C0 (CInt(1), var_98)
  loc_EB6B1D: var_98.Enabled = False
  loc_EB6B29: Exit Sub
End Sub

Public Sub Proc_21_48_ED7F30
  'Data Table: 48DC98
  loc_ED7E90: Call Proc_21_45_EBE53C()
  loc_ED7EA0: Set var_88 = Me.Txt
  loc_ED7EA6: Call 0.Method_Proc_21_48_ED7F300 (CInt(0))
  loc_ED7ECF: If (Proc_6_27_EA61EC(var_8C, "Name") = 0) Then
  loc_ED7ED2:   Exit Sub
  loc_ED7ED3: End If
  loc_ED7F0A: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_ED7F0D:   Call TopCtrl1_UnknownEvent_16()
  loc_ED7F15: Else
  loc_ED7F1B:   Call 0.Method_arg_1E8 (var_88)
  loc_ED7F23:   Call var_88.SetFocus
  loc_ED7F2C: End If
  loc_ED7F2C: Exit Sub
End Sub

Public Sub Proc_21_49_1331D94
  'Data Table: 48DC98
  Dim var_94 As Variant
  Dim var_B0 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As String
  loc_13315DF: Me.DGRev.Top = CVar(CDbl(1185))
  loc_13315FA: Me.DGRev.Left = CVar(CDbl(3720))
  loc_133160F: global_88 = CStr(&HC9FCF7)
  loc_1331629: Me.FGrid.Cols = &H12
  loc_133162E: var_94 = 0
  loc_133163A: var_C0 = CVar(CLng(0)) 'Long
  loc_133163F: var_E0 = "No."
  loc_1331648: LateIdCallSt
  loc_1331653: var_94 = CVar(CLng(0)) 'Long
  loc_133165E: var_C0 = CVar(CInt(4)) 'Integer
  loc_1331665: LateIdCallSt
  loc_1331670: var_94 = CVar(CLng(0)) 'Long
  loc_133167B: var_C0 = CVar(CInt(4)) 'Integer
  loc_1331682: LateIdCallSt
  loc_133168D: var_94 = CVar(CLng(0)) 'Long
  loc_1331692: var_C0 = &H1F4
  loc_133169E: LateIdCallSt
  loc_13316A6: var_94 = 0
  loc_13316B2: var_C0 = CVar(CLng(1)) 'Long
  loc_13316B7: var_E0 = "Fixed Charge"
  loc_13316C0: LateIdCallSt
  loc_13316CB: var_94 = CVar(CLng(1)) 'Long
  loc_13316D6: var_C0 = CVar(CInt(1)) 'Integer
  loc_13316DD: LateIdCallSt
  loc_13316E8: var_94 = CVar(CLng(1)) 'Long
  loc_13316F3: var_C0 = CVar(CInt(1)) 'Integer
  loc_13316FA: LateIdCallSt
  loc_1331705: var_94 = CVar(CLng(1)) 'Long
  loc_133170A: var_C0 = &H9C4
  loc_1331716: LateIdCallSt
  loc_1331721: var_94 = CVar(CLng(2)) 'Long
  loc_1331726: var_C0 = 0
  loc_1331732: LateIdCallSt
  loc_133173D: var_94 = CVar(CLng(&H10)) 'Long
  loc_1331742: var_C0 = 0
  loc_133174E: LateIdCallSt
  loc_1331756: var_94 = 0
  loc_1331762: var_C0 = CVar(CLng(3)) 'Long
  loc_1331767: var_E0 = "TaxStru"
  loc_1331770: LateIdCallSt
  loc_133177B: var_94 = CVar(CLng(3)) 'Long
  loc_1331786: var_C0 = CVar(CInt(1)) 'Integer
  loc_133178D: LateIdCallSt
  loc_1331798: var_94 = CVar(CLng(3)) 'Long
  loc_13317A3: var_C0 = CVar(CInt(1)) 'Integer
  loc_13317AA: LateIdCallSt
  loc_13317B5: var_94 = CVar(CLng(3)) 'Long
  loc_13317BA: var_C0 = 0
  loc_13317C6: LateIdCallSt
  loc_13317D1: var_94 = CVar(CLng(4)) 'Long
  loc_13317D6: var_C0 = 0
  loc_13317E2: LateIdCallSt
  loc_13317EA: var_94 = 0
  loc_13317F6: var_C0 = CVar(CLng(5)) 'Long
  loc_13317FB: var_E0 = "Tax App"
  loc_1331804: LateIdCallSt
  loc_133180F: var_94 = CVar(CLng(5)) 'Long
  loc_133181A: var_C0 = CVar(CInt(4)) 'Integer
  loc_1331821: LateIdCallSt
  loc_133182C: var_94 = CVar(CLng(5)) 'Long
  loc_1331837: var_C0 = CVar(CInt(4)) 'Integer
  loc_133183E: LateIdCallSt
  loc_1331849: var_94 = CVar(CLng(5)) 'Long
  loc_133184E: var_C0 = 0
  loc_133185A: LateIdCallSt
  loc_1331862: var_94 = 0
  loc_133186E: var_C0 = CVar(CLng(6)) 'Long
  loc_1331873: var_E0 = "Adult Rate"
  loc_133187C: LateIdCallSt
  loc_1331887: var_94 = CVar(CLng(6)) 'Long
  loc_1331892: var_C0 = CVar(CInt(1)) 'Integer
  loc_1331899: LateIdCallSt
  loc_13318A4: var_94 = CVar(CLng(6)) 'Long
  loc_13318AF: var_C0 = CVar(CInt(1)) 'Integer
  loc_13318B6: LateIdCallSt
  loc_13318C1: var_94 = CVar(CLng(6)) 'Long
  loc_13318C6: var_C0 = 0
  loc_13318D2: LateIdCallSt
  loc_13318DA: var_94 = 0
  loc_13318E6: var_C0 = CVar(CLng(7)) 'Long
  loc_13318EB: var_E0 = "Child Rate"
  loc_13318F4: LateIdCallSt
  loc_13318FF: var_94 = CVar(CLng(7)) 'Long
  loc_133190A: var_C0 = CVar(CInt(1)) 'Integer
  loc_1331911: LateIdCallSt
  loc_133191C: var_94 = CVar(CLng(7)) 'Long
  loc_1331927: var_C0 = CVar(CInt(1)) 'Integer
  loc_133192E: LateIdCallSt
  loc_1331939: var_94 = CVar(CLng(7)) 'Long
  loc_133193E: var_C0 = 0
  loc_133194A: LateIdCallSt
  loc_1331952: var_94 = 0
  loc_133195E: var_C0 = CVar(CLng(8)) 'Long
  loc_1331963: var_E0 = "Extra Adult"
  loc_133196C: LateIdCallSt
  loc_1331977: var_94 = CVar(CLng(8)) 'Long
  loc_1331982: var_C0 = CVar(CInt(1)) 'Integer
  loc_1331989: LateIdCallSt
  loc_1331994: var_94 = CVar(CLng(8)) 'Long
  loc_133199F: var_C0 = CVar(CInt(1)) 'Integer
  loc_13319A6: LateIdCallSt
  loc_13319B1: var_94 = CVar(CLng(8)) 'Long
  loc_13319B6: var_C0 = 0
  loc_13319C2: LateIdCallSt
  loc_13319CA: var_94 = 0
  loc_13319D6: var_C0 = CVar(CLng(9)) 'Long
  loc_13319DB: var_E0 = "Extra Child"
  loc_13319E4: LateIdCallSt
  loc_13319EF: var_94 = CVar(CLng(9)) 'Long
  loc_13319FA: var_C0 = CVar(CInt(1)) 'Integer
  loc_1331A01: LateIdCallSt
  loc_1331A0C: var_94 = CVar(CLng(9)) 'Long
  loc_1331A17: var_C0 = CVar(CInt(1)) 'Integer
  loc_1331A1E: LateIdCallSt
  loc_1331A29: var_94 = CVar(CLng(9)) 'Long
  loc_1331A2E: var_C0 = 0
  loc_1331A3A: LateIdCallSt
  loc_1331A42: var_94 = 0
  loc_1331A4E: var_C0 = CVar(CLng(&HA)) 'Long
  loc_1331A53: var_E0 = "No of Days"
  loc_1331A5C: LateIdCallSt
  loc_1331A67: var_94 = CVar(CLng(&HA)) 'Long
  loc_1331A72: var_C0 = CVar(CInt(7)) 'Integer
  loc_1331A79: LateIdCallSt
  loc_1331A84: var_94 = CVar(CLng(&HA)) 'Long
  loc_1331A8F: var_C0 = CVar(CInt(7)) 'Integer
  loc_1331A96: LateIdCallSt
  loc_1331AA1: var_94 = CVar(CLng(&HA)) 'Long
  loc_1331AA6: var_C0 = 0
  loc_1331AB2: LateIdCallSt
  loc_1331ABA: var_94 = 0
  loc_1331AC6: var_C0 = CVar(CLng(&HF)) 'Long
  loc_1331ACB: var_E0 = "Tax Amount"
  loc_1331AD4: LateIdCallSt
  loc_1331ADF: var_94 = CVar(CLng(&HF)) 'Long
  loc_1331AEA: var_C0 = CVar(CInt(1)) 'Integer
  loc_1331AF1: LateIdCallSt
  loc_1331AFC: var_94 = CVar(CLng(&HF)) 'Long
  loc_1331B07: var_C0 = CVar(CInt(1)) 'Integer
  loc_1331B0E: LateIdCallSt
  loc_1331B19: var_94 = CVar(CLng(&HF)) 'Long
  loc_1331B1E: var_C0 = 0
  loc_1331B2A: LateIdCallSt
  loc_1331B32: var_94 = 0
  loc_1331B3E: var_C0 = CVar(CLng(&HB)) 'Long
  loc_1331B43: var_E0 = "Print Option"
  loc_1331B4C: LateIdCallSt
  loc_1331B57: var_94 = CVar(CLng(&HB)) 'Long
  loc_1331B62: var_C0 = CVar(CInt(1)) 'Integer
  loc_1331B69: LateIdCallSt
  loc_1331B74: var_94 = CVar(CLng(&HB)) 'Long
  loc_1331B7F: var_C0 = CVar(CInt(1)) 'Integer
  loc_1331B86: LateIdCallSt
  loc_1331B91: var_94 = CVar(CLng(&HB)) 'Long
  loc_1331B96: var_C0 = 0
  loc_1331BA2: LateIdCallSt
  loc_1331BAA: var_94 = 0
  loc_1331BB6: var_C0 = CVar(CLng(&HC)) 'Long
  loc_1331BBB: var_E0 = "Posting Method"
  loc_1331BC4: LateIdCallSt
  loc_1331BCF: var_94 = CVar(CLng(&HC)) 'Long
  loc_1331BDA: var_C0 = CVar(CInt(1)) 'Integer
  loc_1331BE1: LateIdCallSt
  loc_1331BEC: var_94 = CVar(CLng(&HC)) 'Long
  loc_1331BF7: var_C0 = CVar(CInt(1)) 'Integer
  loc_1331BFE: LateIdCallSt
  loc_1331C09: var_94 = CVar(CLng(&HC)) 'Long
  loc_1331C0E: var_C0 = 0
  loc_1331C1A: LateIdCallSt
  loc_1331C22: var_94 = 0
  loc_1331C2E: var_C0 = CVar(CLng(&HD)) 'Long
  loc_1331C33: var_E0 = "Charge Type"
  loc_1331C3C: LateIdCallSt
  loc_1331C47: var_94 = CVar(CLng(&HD)) 'Long
  loc_1331C52: var_C0 = CVar(CInt(1)) 'Integer
  loc_1331C59: LateIdCallSt
  loc_1331C64: var_94 = CVar(CLng(&HD)) 'Long
  loc_1331C6F: var_C0 = CVar(CInt(1)) 'Integer
  loc_1331C76: LateIdCallSt
  loc_1331C81: var_94 = CVar(CLng(&HD)) 'Long
  loc_1331C86: var_C0 = 0
  loc_1331C92: LateIdCallSt
  loc_1331C9A: var_94 = 0
  loc_1331CA6: var_C0 = CVar(CLng(&HE)) 'Long
  loc_1331CAB: var_E0 = "Flat Rate"
  loc_1331CB4: LateIdCallSt
  loc_1331CBF: var_94 = CVar(CLng(&HE)) 'Long
  loc_1331CCA: var_C0 = CVar(CInt(1)) 'Integer
  loc_1331CD1: LateIdCallSt
  loc_1331CDC: var_94 = CVar(CLng(&HE)) 'Long
  loc_1331CE7: var_C0 = CVar(CInt(1)) 'Integer
  loc_1331CEE: LateIdCallSt
  loc_1331CF9: var_94 = CVar(CLng(&HE)) 'Long
  loc_1331CFE: var_C0 = 0
  loc_1331D0A: LateIdCallSt
  loc_1331D12: var_94 = 0
  loc_1331D1E: var_C0 = CVar(CLng(&H11)) 'Long
  loc_1331D23: var_E0 = "Percentage"
  loc_1331D2C: LateIdCallSt
  loc_1331D37: var_94 = CVar(CLng(&H11)) 'Long
  loc_1331D42: var_C0 = CVar(CInt(7)) 'Integer
  loc_1331D49: LateIdCallSt
  loc_1331D54: var_94 = CVar(CLng(&H11)) 'Long
  loc_1331D5F: var_C0 = CVar(CInt(7)) 'Integer
  loc_1331D66: LateIdCallSt
  loc_1331D71: var_94 = CVar(CLng(&H11)) 'Long
  loc_1331D76: var_C0 = &H3E8
  loc_1331D82: LateIdCallSt
  loc_1331D8C: Set var_B0 = Nothing 
  loc_1331D90: Exit Sub
End Sub

Public Sub Proc_21_50_145562C
  'Data Table: 48DC98
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_D8 As Variant
  Dim var_E8 As Variant
  Dim unk_48DCA7 As Connection15
  Dim var_8C As Recordset15
  Dim var_124 As Recordset15
  Dim var_B8 As Variant
  Dim var_128 As TextBox
  Dim var_86 As Integer
  Dim var_140 As Variant
  Dim var_160 As Variant
  loc_1454ABC: On Error Goto loc_1455625
  loc_1454AD6: If (Me.RecordCount > 0) Then
  loc_1454B18:   var_D8 = "Select * From PlanMast Where Code='" & Me.Fields.Item("SearchCode").Value 
  loc_1454B2F:   unk_48DCA7.Execute CStr(var_D8 & "'"), var_11C, -1
  loc_1454B3A:   Set var_8C = var_120
  loc_1454B68:   If (var_8C.RecordCount > 0) Then
  loc_1454B6E:     Set var_124 = var_8C 
  loc_1454BA8:     Set var_120 = Me.Txt
  loc_1454BAE:     Call 0.Method_Proc_21_50_145562C0 (CInt(0), var_128)
  loc_1454BB6:     var_128.Text = Proc_6_38_E69628(CVar(var_124.Fields.Item("Name")))
  loc_1454BE1:     var_A8 = var_124.Fields.Item("Code")
  loc_1454C00:     Set var_120 = Me.Txt
  loc_1454C06:     Call 0.Method_Proc_21_50_145562C0 (CInt(0), var_128)
  loc_1454C0E:     var_128.Tag = Proc_6_38_E69628(CVar(var_A8))
  loc_1454C30:     Set var_94 = Me.Txt
  loc_1454C36:     Call 0.Method_Proc_21_50_145562C0 (CInt(0), var_A8)
  loc_1454C49:     global_68 = var_A8.Text
  loc_1454C71:     var_A8 = var_8C.Fields.Item("PercentApp")
  loc_1454C93:     If (var_A8.Value = "Yes") Then
  loc_1454CA2:       Me.Check1.Value = 1
  loc_1454CB5:       Set var_94 = Me.Label1
  loc_1454CBB:       Call 0.Method_Proc_21_50_145562C0 (3, var_A8)
  loc_1454CC3:       var_A8.Visible = True
  loc_1454CDC:       Set var_94 = Me.Txt
  loc_1454CE2:       Call 0.Method_Proc_21_50_145562C0 (CInt(3), var_A8)
  loc_1454CEA:       var_A8.Visible = True
  loc_1454D0D:       var_A8 = var_8C.Fields.Item("RoomPer")
  loc_1454D1C:       Proc_6_39_E7D3A0(var_D8, CVar(var_A8))
  loc_1454D33:       Set var_120 = Me.Txt
  loc_1454D39:       Call 0.Method_Proc_21_50_145562C0 (CInt(3), var_128)
  loc_1454D41:       var_128.Text = CStr(var_D8)
  loc_1454D5C:     Else
  loc_1454D68:       Me.Check1.Value = 0
  loc_1454D7B:       Set var_94 = Me.Label1
  loc_1454D81:       Call 0.Method_Proc_21_50_145562C0 (3, var_A8)
  loc_1454D89:       var_A8.Visible = False
  loc_1454DA2:       Set var_94 = Me.Txt
  loc_1454DA8:       Call 0.Method_Proc_21_50_145562C0 (CInt(3), var_A8)
  loc_1454DB0:       var_A8.Visible = False
  loc_1454DCA:       Set var_94 = Me.Txt
  loc_1454DD0:       Call 0.Method_Proc_21_50_145562C0 (CInt(3), var_A8)
  loc_1454DD8:       var_A8.Text = "0.00"
  loc_1454DE4:     End If
  loc_1454E0A:     Proc_6_39_E7D3A0(var_D8, CVar(var_124.Fields.Item("Total")))
  loc_1454E21:     Set var_120 = Me.Txt
  loc_1454E27:     Call 0.Method_Proc_21_50_145562C0 (CInt(1), var_128)
  loc_1454E2F:     var_128.Text = CStr(var_D8)
  loc_1454E61:     var_A8 = var_124.Fields.Item("App_Date")
  loc_1454E86:     Call 0.Method_Proc_21_50_145562C0 (CInt(2), var_128)
  loc_1454E8E:     var_128.Text = CStr(var_A8.Value)
  loc_1454EB2:     Set var_94 = Me.Txt
  loc_1454EB8:     Call 0.Method_Proc_21_50_145562C0 (CInt(2), var_A8)
  loc_1454ECB:     global_72 = var_A8.Text
  loc_1454EDB:     Set var_124 = Nothing 
  loc_1454EF2:     Me.FGrid.Rows = 1
  loc_1454F07:     var_C8 = "SELECT Plan1.*,FixedCharge.Name as RevName FROM Plan1 Left Join FixedCharge on Plan1.ChrgCode=FixedCharge.Code WHERE Plan1.Code='"
  loc_1454F50:     unk_48DCA7.Execute CStr(var_C8 & Me.Fields.Item("SearchCode").Value & "' order by FixedCharge.Name"), var_11C, -1
  loc_1454F5B:     Set var_8C = Me.Txt
  loc_1454F77:     var_86 = 1
  loc_1454F7A:     ' Referenced from: 145559C
  loc_1454F89:     If Not(var_8C.EOF) Then
  loc_1454F8C:       var_A4 = vbNullString
  loc_1454F96:       Set var_94 = Me.FGrid
  loc_1454FAB:       Set var_130 = Me.FGrid
  loc_1454FB2:       var_A4 = CVar(CLng(var_86)) 'Long
  loc_1454FC4:       var_B8 = CVar(CStr(var_86)) 'String
  loc_1454FCB:       LateIdCallSt
  loc_145500F:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("RevName")), CVar(CLng(1)), CVar(CLng(var_86)), var_130, CVar(var_8C.Fields.Item("RevName")), CVar(CLng(0)))) 'String
  loc_1455016:       LateIdCallSt
  loc_145502B:       var_A4 = "Adult"
  loc_145504E:       Proc_6_39_E7D3A0(var_D8, CVar(var_8C.Fields.Item(var_A4)), var_130, var_D8, var_A4)
  loc_145508F:       LateIdCallSt
  loc_14550E0:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ChrgCode")), CVar(CLng(&H10)), CVar(CLng(var_86)), var_130, CVar(CStr(Format(var_D8, "0.00"))), 1, 1)) 'String
  loc_14550E7:       LateIdCallSt
  loc_1455132:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("RevCode")), CVar(CLng(2)), CVar(CLng(var_86)), var_130, var_D8, CVar(CLng(6)))) 'String
  loc_1455139:       LateIdCallSt
  loc_1455184:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Code")), CVar(CLng(4)), CVar(CLng(var_86)), var_130, var_D8)) 'String
  loc_145518B:       LateIdCallSt
  loc_14551C3:       Proc_6_39_E7D3A0(var_D8, CVar(var_8C.Fields.Item("Child")), var_130, var_D8, CVar(CLng(var_86)))
  loc_14551CC:       var_E8 = CVar(CLng(var_86)) 'Long
  loc_14551D4:       var_140 = CVar(CLng(7)) 'Long
  loc_1455204:       LateIdCallSt
  loc_1455242:       Proc_6_39_E7D3A0(var_D8, CVar(var_8C.Fields.Item("ExtraAdult")), var_130, CVar(CStr(Format(var_D8, "0.00"))), 1, 1)
  loc_145524B:       var_E8 = CVar(CLng(var_86)) 'Long
  loc_1455283:       LateIdCallSt
  loc_14552C1:       Proc_6_39_E7D3A0(var_D8, CVar(var_8C.Fields.Item("ExtraChild")), var_130, CVar(CStr(Format(var_D8, "0.00"))), 1, 1, CVar(CLng(8)))
  loc_1455302:       LateIdCallSt
  loc_1455353:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("PostingMethod")), CVar(CLng(&HC)), CVar(CLng(var_86)), var_130, CVar(CStr(Format(var_D8, "0.00"))), 1, 1)) 'String
  loc_145535A:       LateIdCallSt
  loc_14553A5:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ChargeType")), CVar(CLng(&HD)), CVar(CLng(var_86)), var_130, var_D8, CVar(CLng(9)))) 'String
  loc_14553AC:       LateIdCallSt
  loc_14553F7:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("PrintOption")), CVar(CLng(&HB)), CVar(CLng(var_86)), var_130, var_D8)) 'String
  loc_14553FE:       LateIdCallSt
  loc_1455449:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("TaxInc")), CVar(CLng(5)), CVar(CLng(var_86)), var_130, var_D8)) 'String
  loc_1455450:       LateIdCallSt
  loc_145549B:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("TaxStru")), CVar(CLng(3)), CVar(CLng(var_86)), var_130, var_D8)) 'String
  loc_14554A2:       LateIdCallSt
  loc_14554ED:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("NoofDays")), CVar(CLng(&HA)), CVar(CLng(var_86)), var_130, var_D8)) 'String
  loc_14554F4:       LateIdCallSt
  loc_145552C:       Proc_6_39_E7D3A0(var_D8, CVar(var_8C.Fields.Item("PlanPer")), var_130, var_D8, CVar(CLng(var_86)))
  loc_1455535:       var_E8 = CVar(CLng(var_86)) 'Long
  loc_145553D:       var_140 = CVar(CLng(&H11)) 'Long
  loc_1455566:       var_160 = CVar(CStr(Format(var_D8, "0.00"))) 'String
  loc_145556D:       LateIdCallSt
  loc_1455587:       Set var_130 = Nothing 
  loc_1455591:       var_86 = (var_86 + 1)
  loc_1455597:       var_8C.MoveNext
  loc_145559C:       GoTo loc_1454F7A
  loc_145559F:     End If
  loc_145559F:   End If
  loc_145559F:   var_A4 = 0
  loc_14555A9:   Set var_94 = Me.FGrid
  loc_14555D6:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_14555D9:     var_A4 = "1"
  loc_14555E3:     Set var_94 = Me.FGrid
  loc_14555F4:   End If
  loc_14555F4:   var_A4 = 1
  loc_1455607:   Me.FGrid.FixedRows = var_A4
  loc_1455612: Else
  loc_1455612:   Call Proc_21_46_F2B908(FGrid.DispID_10000, var_A4, FGrid.DispID_2E, var_A4, var_86, var_130, var_160)
  loc_1455617: End If
  loc_1455617: Call Proc_21_45_EBE53C(1, 1, var_140)
  loc_1455621: Set var_8C = Nothing
  loc_1455624: Exit Sub
  loc_1455625: ' Referenced from: 1454ABC
  loc_1455625: Proc_6_60_E63754(var_E8, var_E8)
  loc_145562A: Exit Sub
End Sub

Public Sub Proc_21_51_1430110(arg_C) '1430110
  'Data Table: 48DC98
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_120 As Variant
  Dim var_B0 As String
  Dim var_164 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_1A4 As Double
  Dim var_178 As MSHFlexGrid
  Dim var_198 As Variant
  loc_142F64F: var_A0 = CLng(Me.FGrid.Col)
  loc_142F65F: If (var_A0 = CLng(1)) Then
  loc_142F682:   var_A6 = Me.EOF
  loc_142F6AF:   Set var_8C = Me.TxtGrid
  loc_142F6B5:   Call 0.Method_Proc_21_51_14301100 (0, var_AC, var_B0)
  loc_142F6BD:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_142F6D5:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_142F6EB:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142F6F3:     var_E0 = CVar(CLng(1)) 'Long
  loc_142F6F8:     var_100 = vbNullString
  loc_142F702:     Set var_AC = Me.FGrid
  loc_142F708:     LateIdCallSt
  loc_142F72D:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142F735:     var_E0 = CVar(CLng(2)) 'Long
  loc_142F73A:     var_100 = vbNullString
  loc_142F744:     Set var_AC = Me.FGrid
  loc_142F74A:     LateIdCallSt
  loc_142F75F:   Else
  loc_142F762:     Call Proc_21_54_F7FDB0(var_A6, var_AC, var_100, var_E0, var_C0)
  loc_142F76D:     If (var_A6 = &HFF) Then
  loc_142F775:       Proc_21_51_1430110 = 0
  loc_142F77B:     End If
  loc_142F78E:     var_100 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142F796:     var_144 = CVar(CLng(0)) 'Long
  loc_142F7B4:     var_C0 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_142F7BC:     var_E0 = CVar(CLng(0)) 'Long
  loc_142F7D6:     var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_142F7E4:     var_164 = CVar(CStr((Val(var_B0) + CDbl(1)))) 'String
  loc_142F7EC:     Set var_178 = Me.FGrid
  loc_142F7F2:     LateIdCallSt
  loc_142F826:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142F82E:     var_F0 = CVar(CLng(1)) 'Long
  loc_142F861:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_142F869:     Set var_178 = Me.FGrid
  loc_142F86F:     LateIdCallSt
  loc_142F89E:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142F8A6:     var_F0 = CVar(CLng(2)) 'Long
  loc_142F8D9:     var_134 = CVar(CStr(Me.Fields.Item("RevCode").Value)) 'String
  loc_142F8E1:     Set var_178 = Me.FGrid
  loc_142F8E7:     LateIdCallSt
  loc_142F916:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142F91E:     var_F0 = CVar(CLng(3)) 'Long
  loc_142F940:     var_AC = Me.Fields.Item("TaxStru")
  loc_142F95F:     LateIdCallSt
  loc_142F9A9:     Set var_8C = Me.Txt
  loc_142F9AF:     Call 0.Method_Proc_21_51_14301100 (CInt(0), var_AC, var_B0, CVar(CLng(4)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(var_AC.Value)))
  loc_142F9B7:     var_F0 = var_AC.Tag
  loc_142F9BF:     var_120 = CVar(var_B0) 'String
  loc_142F9C7:     Set var_178 = Me.FGrid
  loc_142F9CD:     LateIdCallSt
  loc_142F9FA:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142FA02:     var_F0 = CVar(CLng(5)) 'Long
  loc_142FA35:     var_134 = CVar(CStr(Me.Fields.Item("TaxInc").Value)) 'String
  loc_142FA3D:     Set var_178 = Me.FGrid
  loc_142FA43:     LateIdCallSt
  loc_142FA72:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142FA7A:     var_F0 = CVar(CLng(6)) 'Long
  loc_142FAAD:     var_134 = CVar(CStr(Me.Fields.Item("Adult").Value)) 'String
  loc_142FAB5:     Set var_178 = Me.FGrid
  loc_142FABB:     LateIdCallSt
  loc_142FAEA:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142FAF2:     var_F0 = CVar(CLng(7)) 'Long
  loc_142FB25:     var_134 = CVar(CStr(Me.Fields.Item("Child").Value)) 'String
  loc_142FB2D:     Set var_178 = Me.FGrid
  loc_142FB33:     LateIdCallSt
  loc_142FB62:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142FB6A:     var_F0 = CVar(CLng(8)) 'Long
  loc_142FB9D:     var_134 = CVar(CStr(Me.Fields.Item("ExtraAdult").Value)) 'String
  loc_142FBA5:     Set var_178 = Me.FGrid
  loc_142FBAB:     LateIdCallSt
  loc_142FBDA:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142FBE2:     var_F0 = CVar(CLng(9)) 'Long
  loc_142FC15:     var_134 = CVar(CStr(Me.Fields.Item("ExtraChild").Value)) 'String
  loc_142FC1D:     Set var_178 = Me.FGrid
  loc_142FC23:     LateIdCallSt
  loc_142FC52:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142FC5A:     var_F0 = CVar(CLng(&HB)) 'Long
  loc_142FC8D:     var_134 = CVar(CStr(Me.Fields.Item("PrintOption").Value)) 'String
  loc_142FC95:     Set var_178 = Me.FGrid
  loc_142FC9B:     LateIdCallSt
  loc_142FCCA:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142FCD2:     var_F0 = CVar(CLng(&HC)) 'Long
  loc_142FD05:     var_134 = CVar(CStr(Me.Fields.Item("PostingMethod").Value)) 'String
  loc_142FD0D:     Set var_178 = Me.FGrid
  loc_142FD13:     LateIdCallSt
  loc_142FD42:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142FD4A:     var_F0 = CVar(CLng(&HD)) 'Long
  loc_142FD7D:     var_134 = CVar(CStr(Me.Fields.Item("ChargeType").Value)) 'String
  loc_142FD85:     Set var_178 = Me.FGrid
  loc_142FD8B:     LateIdCallSt
  loc_142FDBA:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142FDC2:     var_F0 = CVar(CLng(&HE)) 'Long
  loc_142FDF5:     var_134 = CVar(CStr(Me.Fields.Item("FlatRate").Value)) 'String
  loc_142FDFD:     Set var_178 = Me.FGrid
  loc_142FE03:     LateIdCallSt
  loc_142FE32:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142FE3A:     var_F0 = CVar(CLng(&H10)) 'Long
  loc_142FE6D:     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_142FE75:     Set var_178 = Me.FGrid
  loc_142FE7B:     LateIdCallSt
  loc_142FEAA:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142FEB2:     var_E0 = CVar(CLng(&H11)) 'Long
  loc_142FEB7:     var_100 = "0.00"
  loc_142FEC1:     Set var_AC = Me.FGrid
  loc_142FEC7:     LateIdCallSt
  loc_142FED9:   End If
  loc_142FEDC: Else
  loc_142FEE3:   If (var_A0 = CLng(6)) Then
  loc_142FEF3:     Set var_8C = Me.TxtGrid
  loc_142FEF9:     Call 0.Method_Proc_21_51_14301100 (arg_C, var_AC, var_B0, var_AC, var_100, var_E0, var_C0)
  loc_142FF01:     var_178 = var_AC.Text
  loc_142FF0E:     var_1A4 = Val(var_B0)
  loc_142FF59:     var_9C = CVar(var_1A4) 'Double
  loc_142FF60:     var_134 = Format(var_9C, "0.00")
  loc_142FF77:     LateIdCallSt
  loc_142FFA1:     Call Proc_21_53_F59A10(var_9C, Me.FGrid, CVar(CStr(var_134)), 1, 1, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_142FFAC:   Else
  loc_142FFB3:     If (var_A0 = CLng(&H11)) Then
  loc_142FFC3:       Set var_8C = Me.TxtGrid
  loc_142FFC9:       Call 0.Method_Proc_21_51_14301100 (arg_C, var_AC, var_B0, var_1A4, var_134)
  loc_142FFD1:       var_F0 = var_AC.Text
  loc_142FFF4:       var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_143000C:       var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1430039:       var_198 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00"))) 'String
  loc_1430041:       Set var_19C = Me.FGrid
  loc_1430047:       LateIdCallSt
  loc_1430071:     Else
  loc_1430078:       If (var_A0 = CLng(&HA)) Then
  loc_14300B8:         Set var_8C = Me.TxtGrid
  loc_14300BE:         Call 0.Method_Proc_21_51_14301100 (arg_C, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_19C, var_198)
  loc_14300C6:         1 = var_AC.Text
  loc_14300D5:         var_134 = CVar(CStr(Val(var_B0))) 'String
  loc_14300DD:         Set var_19C = Me.FGrid
  loc_14300E3:         LateIdCallSt
  loc_1430104:       End If
  loc_1430104:     End If
  loc_1430104:   End If
  loc_1430104: End If
  loc_1430109: Proc_21_51_1430110 = &HFF
End Sub

Public Sub Proc_21_52_F29DCC
  'Data Table: 48DC98
  Dim var_BC As Variant
  Dim var_8C As Integer
  Dim var_108 As Variant
  Dim var_86 As Integer
  loc_F29CD2: var_BC = (Me.rows - 1)
  loc_F29CDA: For var_C0 = 1 To CInt(var_BC): var_88 = var_C0 'Integer
  loc_F29CF3:   var_BC = (Me.rows - 1)
  loc_F29CFB:   For var_C4 = var_88 To CInt(var_BC): var_8A = var_C4 'Integer
  loc_F29D24:     var_8C = CInt(Val(CStr(Me.TextMatrix)))
  loc_F29D4F:     var_108 = CVar(Val(CStr(Me.TextMatrix))) 'Double
  loc_F29D79:     If (arg_10 > Me.TextMatrix) Then
  loc_F29D9F:       var_8C = CInt(Val(CStr(Me.TextMatrix)))
  loc_F29DA8:       Exit For
  loc_F29DAB:     End If
  loc_F29DAE:   Next var_C4 'Integer
  loc_F29DB3:   ' Referenced from: F29DA8
  loc_F29DB6: Next var_C0 'Integer
  loc_F29DC1: var_86 = (var_8C + 1)
  loc_F29DC4: Proc_21_52_F29DCC = var_86
End Sub

Public Sub Proc_21_53_F59A10
  'Data Table: 48DC98
  Dim var_A0 As Double
  Dim var_A4 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_118 As TextBox
  loc_F598F5: var_A0 = CDbl(0)
  loc_F59920: For var_B8 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_96 = var_B8 'Byte
  loc_F5992B:   var_C8 = CVar(CLng(var_96)) 'Long
  loc_F59933:   var_E8 = CVar(CLng(6)) 'Long
  loc_F5995E:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_F59966:     var_C8 = CVar(CLng(var_96)) 'Long
  loc_F5996E:     var_E8 = CVar(CLng(6)) 'Long
  loc_F5999A:     var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_F599A6:   End If
  loc_F599A9: Next var_B8 'Byte
  loc_F599E6: Set var_A4 = Me.Txt
  loc_F599EC: Call 0.Method_Proc_21_53_F59A100 (CInt(1), var_118, CStr(Format(var_A0, "0.00")))
  loc_F599F4: var_118.Text = 1
  loc_F59A0A: Proc_21_53_F59A10 = 1
End Sub

Public Sub Proc_21_54_F7FDB0
  'Data Table: 48DC98
  Dim var_86 As Integer
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E4 As String
  Dim var_E8 As MSHFlexGrid
  Dim var_FC As TextBox
  loc_F7FC72: var_86 = 0
  loc_F7FC9D: For var_A0 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A0 'Byte
  loc_F7FCA8:   var_B0 = CVar(CLng(var_88)) 'Long
  loc_F7FCB0:   var_D0 = CVar(CLng(1)) 'Long
  loc_F7FCCA:   var_E4 = CStr(Me.FGrid.TextMatrix))
  loc_F7FCFD:   If ((var_E4 <> vbNullString) And (CLng(var_88) <> CLng(Me.FGrid.Row))) Then
  loc_F7FD05:     var_B0 = CVar(CLng(var_88)) 'Long
  loc_F7FD0D:     var_D0 = CVar(CLng(1)) 'Long
  loc_F7FD36:     Set var_E8 = Me.TxtGrid
  loc_F7FD3C:     Call 0.Method_Proc_21_54_F7FDB00 (0, var_FC, var_E4, CStr(Me.FGrid.TextMatrix)), var_D0)
  loc_F7FD44:     var_B0 = var_FC.Text
  loc_F7FD61:     If (var_D0 = var_E4) Then
  loc_F7FD85:       MsgBox("Duplicate Revenue", &H40, "Validation", var_110, var_120)
  loc_F7FD9A:       Proc_21_54_F7FDB0 = &HFF
  loc_F7FDA0:     End If
  loc_F7FDA0:   End If
  loc_F7FDA3: Next var_A0 'Byte
  loc_F7FDA9: Proc_21_54_F7FDB0 = 
End Sub

Public Sub Proc_21_55_F59B74
  'Data Table: 48DC98
  Dim var_94 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_90 As Double
  Dim var_FC As TextBox
  Dim var_86 As Integer
  loc_F59A7D: For var_A8 = 0 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A8 'Integer
  loc_F59A87:   var_B8 = CVar(CLng(var_88)) 'Long
  loc_F59A8F:   var_D8 = CVar(CLng(&H11)) 'Long
  loc_F59ABB:   var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_F59ACA: Next var_A8 'Integer
  loc_F59AEA: If (Me.Check1.Value = 1) Then
  loc_F59AFB:   Set var_94 = Me.Txt
  loc_F59B01:   Call 0.Method_Proc_21_55_F59B740 (CInt(3), var_FC)
  loc_F59B20:   var_90 = (var_90 + Val(var_FC.Text))
  loc_F59B2D: End If
  loc_F59B34: If (var_90 = CDbl(&H64)) Then
  loc_F59B39:   var_86 = &HFF
  loc_F59B3F: Else
  loc_F59B58:   MsgBox("Please enter valid Percent Rate", 0, var_10C, var_11C, var_12C)
  loc_F59B6A:   var_86 = 0
  loc_F59B6D: End If
  loc_F59B6D: Proc_21_55_F59B74 = var_86
End Sub
