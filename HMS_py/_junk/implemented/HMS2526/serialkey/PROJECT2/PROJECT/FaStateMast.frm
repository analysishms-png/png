VERSION 5.00
Begin VB.Form FaStateMast
  Caption = "State Master"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8910
  ClientHeight = 7125
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8910
    Height = 450
    TabIndex = 12
  End
  Begin CommandButton CmdRef
    Caption = "..."
    Left = 7875
    Top = 2475
    Width = 330
    Height = 300
    TabIndex = 8
    TabStop = 0   'False
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "To Print Settlement Details"
  End
  Begin DataGrid DGHelp
    Left = 9345
    Top = 3480
    Width = 4230
    Height = 3060
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
End
Begin DataGrid DGCName
  Left = 8640
  Top = 2565
  Width = 4230
  Height = 2670
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 7
End
Begin TextBox Txt
  Index = 2
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3990
  Top = 2475
  Width = 3870
  Height = 285
  TabIndex = 2
  BorderStyle = 0 'None
  MaxLength = 30
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
  Index = 1
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3990
  Top = 2160
  Width = 2108
  Height = 285
  TabIndex = 1
  BorderStyle = 0 'None
  MaxLength = 6
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
  ForeColor = &HC00000&
  Left = 3990
  Top = 1845
  Width = 4215
  Height = 285
  TabIndex = 0
  BorderStyle = 0 'None
  MaxLength = 30
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
Begin Label LblLDt
  Caption = "Last Update"
  ForeColor = &HFF0000&
  Left = 6150
  Top = 5250
  Width = 2790
  Height = 285
  TabIndex = 11
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
  Left = 2775
  Top = 5250
  Width = 2880
  Height = 255
  TabIndex = 10
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
  Top = 360
  Width = 180
  Height = 540
  TabIndex = 9
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
Begin Label LblName
  Caption = "Country Name"
  Index = 3
  ForeColor = &HC00000&
  Left = 2595
  Top = 2460
  Width = 1350
  Height = 240
  TabIndex = 5
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
Begin Label LblName
  Caption = "Short Name"
  Index = 2
  ForeColor = &HC00000&
  Left = 2595
  Top = 2160
  Width = 1125
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
Begin Label LblName
  Caption = "State Name"
  Index = 0
  ForeColor = &HC00000&
  Left = 2595
  Top = 1845
  Width = 1110
  Height = 240
  TabIndex = 3
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

Attribute VB_Name = "FaStateMast"

Private global_76 As Long

Private Sub TopCtrl1_UnknownEvent_A 'EEDD9C
  'Data Table: 45B6B4
  Dim var_88 As Label
  Dim var_98 As TextBox
  loc_EEDCD8: On Error Goto loc_EEDD72
  loc_EEDCE8: Me.LblUser.Caption = vbNullString
  loc_EEDCFD: Me.LblLDt.Caption = vbNullString
  loc_EEDD1A: var_8C = "ADD"
  loc_EEDD28: Call Proc_197_29_E78FF4(Proc_5_1_100EC1C(var_8C, Me))
  loc_EEDD33: Call Proc_197_30_EB54D0(global_52)
  loc_EEDD49: If (OpenMode = 2) Then
  loc_EEDD57:   Set var_88 = Me.Txt
  loc_EEDD5D:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EEDD65:   var_98.SetFocus
  loc_EEDD71: End If
  loc_EEDD71: Exit Sub
  loc_EEDD72: ' Referenced from: EEDCD8
  loc_EEDD78: Call 0.Method_arg_50 (var_8C)
  loc_EEDD8D: Proc_183_57_104B0BC(var_8C, "TopCtrl1_eAdd")
  loc_EEDD99: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EEE0A8
  'Data Table: 45B6B4
  loc_EEDFF0: On Error Goto loc_EEE080
  loc_EEE02A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EEE039:   Set var_110 = Me
  loc_EEE042:   var_10C = "INI"
  loc_EEE050:   Call Proc_197_29_E78FF4(Proc_5_1_100EC1C(var_10C, var_110))
  loc_EEE05B:   Call Proc_197_34_E85B30(global_52)
  loc_EEE060:   Call Proc_197_31_1255F4C()
  loc_EEE068: Else
  loc_EEE06E:   Call 0.Method_arg_1E8 (var_110)
  loc_EEE076:   Call var_110.SetFocus
  loc_EEE07F: End If
  loc_EEE07F: Exit Sub
  loc_EEE080: ' Referenced from: EEDFF0
  loc_EEE086: Call 0.Method_arg_50 (var_10C)
  loc_EEE08E: var_11C = "TopCtrl1_eCancel"
  loc_EEE09B: Proc_183_57_104B0BC(var_10C)
  loc_EEE0A7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1127A88
  'Data Table: 45B6B4
  Dim Me As Recordset15
  Dim var_96 As Integer
  Dim unk_45B6C7 As Connection15
  Dim var_114 As Variant
  Dim var_B4 As String
  Dim var_C8 As Variant
  loc_1127748: On Error Goto loc_1127A49
  loc_1127759: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_112775C:   Exit Sub
  loc_112775D: End If
  loc_1127782: var_C8 = Me.Fields.Item("SCode").Value
  loc_112778A: var_D4 = "City Master"
  loc_11277D2: If (Proc_183_53_FE0460(MemVar_1F951E0, "City", "State") = 0) Then
  loc_11277D5:   Exit Sub
  loc_11277D6: End If
  loc_112780D: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_1127812:   var_96 = 0
  loc_112781E:   unk_45B6C7.BeginTrans var_D0
  loc_1127825:   var_96 = &HFF
  loc_1127897:   unk_45B6C7.Execute CStr("Delete From State Where Code='" & Me.Fields.Item("SCode").Value & "'"), var_134, -1
  loc_11278E2:   var_164 = 0
  loc_11278F5:   var_15C = 0
  loc_1127900:   var_158 = 0
  loc_1127913:   var_150 = 0
  loc_112791E:   var_14C = 0
  loc_1127931:   var_144 = 0
  loc_1127971:   var_B4 = "State"
  loc_112797A:   Proc_154_5_10E3BD4(MemVar_1F951E0, var_B4, "Code", &HC8, CStr(Me.Fields.Item("SCode").Value), 0, 0, 0)
  loc_11279A8:   unk_45B6C7.CommitTrans
  loc_11279AF:   var_96 = 0
  loc_11279BD:   Me.Requery -1
  loc_11279CD:   Me.Requery -1
  loc_11279E9:   If (Me.RecordCount > 0) Then
  loc_1127A03:     If (Me.AbsolutePosition > 1) Then
  loc_1127A0E:       var_C8 = (CVar(Me.AbsolutePosition) - 1)
  loc_1127A1A:       Me.AbsolutePosition = CLng(Me.Fields.Item("SCode").Value)
  loc_1127A1F:     End If
  loc_1127A1F:   End If
  loc_1127A1F:   Call Proc_197_31_1255F4C(var_96, var_144, 0, var_14C, var_150)
  loc_1127A40:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_1127A48: End If
  loc_1127A48: Exit Sub
  loc_1127A49: ' Referenced from: 1127748
  loc_1127A4F: If (var_96 = &HFF) Then
  loc_1127A58:   unk_45B6C7.RollbackTrans
  loc_1127A5D: End If
  loc_1127A63: Call 0.Method_arg_50 (var_B4, 0, var_158)
  loc_1127A78: Proc_183_57_104B0BC(var_B4, "TopCtrl1_eDel")
  loc_1127A84: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F5F14C
  'Data Table: 45B6B4
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_F5F024: On Error Goto loc_F5F121
  loc_F5F034: Me.LblUser.Caption = vbNullString
  loc_F5F049: Me.LblLDt.Caption = vbNullString
  loc_F5F05F: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_F5F062:   Exit Sub
  loc_F5F063: End If
  loc_F5F086: Call Proc_197_29_E78FF4(Proc_5_1_100EC1C("EDIT", Me))
  loc_F5F09F: Set var_88 = Me.Txt
  loc_F5F0A5: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F5F0B8: global_68 = var_94.Text
  loc_F5F0D4: Set var_88 = Me.Txt
  loc_F5F0DA: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F5F0E2: var_8C = var_94.Text
  loc_F5F0ED: global_72 = var_8C
  loc_F5F106: Set var_88 = Me.Txt
  loc_F5F10C: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F5F114: var_94.SetFocus
  loc_F5F120: Exit Sub
  loc_F5F121: ' Referenced from: F5F024
  loc_F5F127: Call 0.Method_arg_50 (var_8C)
  loc_F5F13C: Proc_183_57_104B0BC(var_8C, "TopCtrl1_eEdit")
  loc_F5F148: Exit Sub
  loc_F5F149: StAryRecMove
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A820
  'Data Table: 45B6B4
  loc_E1A815: Me.Global.Unload Me
  loc_E1A81D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EEEE40
  'Data Table: 45B6B4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EEED80: On Error Goto loc_EEEE18
  loc_EEED9A: If (Me.RecordCount <= 0) Then
  loc_EEEDA3:   var_B8 = "Information"
  loc_EEEDBE:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_EEEDCE:   Exit Sub
  loc_EEEDCF: End If
  loc_EEEDD6: var_10C = "Select State.Code As SearchCode,State.Name,State.ShortName,Country.Name as CountryName FROM State LEFT JOIN Country ON State.Country=Country.Code WHERE (STATE.LOGSITE_CODE='" & MemVar_1F95078
  loc_EEEDDD: MemVar_1F950E4 = var_10C & "' OR STATE.LOGSITE_CODE='HO') ORDER BY State.Name"
  loc_EEEDEA: MemVar_1F95120 = Me
  loc_EEEDF1: var_10C = "3500,800,1500"
  loc_EEEDF7: Proc_183_54_F1EA10(var_10C)
  loc_EEEE12: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EEEE17: Exit Sub
  loc_EEEE18: ' Referenced from: EEED80
  loc_EEEE1E: Call 0.Method_arg_50 (var_10C)
  loc_EEEE33: Proc_183_57_104B0BC(var_10C, "TopCtrl1_eFind")
  loc_EEEE3F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E35288
  'Data Table: 45B6B4
  loc_E35278: Proc_5_0_1107AD0(&HFF, Me)
  loc_E35280: Call Proc_197_31_1255F4C(global_52)
  loc_E35285: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3ADA8
  'Data Table: 45B6B4
  loc_E3AD98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3ADA0: Call Proc_197_31_1255F4C(global_52)
  loc_E3ADA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3AE08
  'Data Table: 45B6B4
  loc_E3ADF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3AE00: Call Proc_197_31_1255F4C(global_52)
  loc_E3AE05: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3AFE8
  'Data Table: 45B6B4
  loc_E3AFD8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3AFE0: Call Proc_197_31_1255F4C(global_52)
  loc_E3AFE5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '104CBA8
  'Data Table: 45B6B4
  Dim var_A0 As String
  Dim unk_45B6C7 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  loc_104C95C: On Error Goto loc_104CB80
  loc_104C973: var_A0 = "SELECT State.Code as SCode, State.Name as SName, State.ShortName as SShortName,Country.Name AS CCountry FROM State LEFT JOIN Country ON State.Country=Country.Code WHERE (STATE.LOGSITE_CODE='" & MemVar_1F95078
  loc_104C983: unk_45B6C7.Execute var_A0 & "' OR STATE.LOGSITE_CODE='HO') ORDER BY State.Name", var_C4, -1
  loc_104C98E: Set var_88 = var_C8
  loc_104C9A4: var_CC = var_88.RecordCount
  loc_104C9B2: If (var_CC = 0) Then
  loc_104C9CE:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_104C9DE:   Exit Sub
  loc_104C9DF: End If
  loc_104C9F5: Set var_C8 = var_88 
  loc_104CA01: var_12E = CreateFieldDefFile(var_C8, MemVar_1F950B4 & "\State.ttx")
  loc_104CA0B: Set var_88 = var_C8
  loc_104CA11: var_B4 = CVar(var_12E) 'Integer
  loc_104CA14: var_98 = var_B4 'Variant
  loc_104CA30: var_A0 = MemVar_1F950B4 & "\State.RPT"
  loc_104CA39: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_104CA44: MemVar_1F951E8 = var_C8
  loc_104CA5F: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_104CA67: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_104CA73: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_104CA8C:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_104CA94:   Call 0.Method_arg_20 (var_138)
  loc_104CA9C:   Call 0.Method_arg_30 (var_A0)
  loc_104CAE2:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_104CAF8:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_104CB00:     Call 0.Method_arg_20 (var_138)
  loc_104CB08:     Call 0.Method_arg_38 ("'State Master'")
  loc_104CB14:   End If
  loc_104CB17: Next var_132 'Integer
  loc_104CB35: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_104CB3D: Call 0.Method_arg_2C (var_DC)
  loc_104CB4B: Call 0.Method_arg_150 (var_FC)
  loc_104CB56: Call 0.Method_arg_50 (var_A0)
  loc_104CB6F: Proc_183_10_1499E94(MemVar_1F951E8, 0)
  loc_104CB7C: Set var_88 = Nothing
  loc_104CB7F: Exit Sub
  loc_104CB80: ' Referenced from: 104C95C
  loc_104CB86: Call 0.Method_arg_50 (var_A0, var_A0)
  loc_104CB9B: Proc_183_57_104B0BC(var_A0, "TopCtrl1_ePrn")
  loc_104CBA7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E21950
  'Data Table: 45B6B4
  Dim Me As Recordset15
  loc_E21937: Me.Requery -1
  loc_E21947: Me.Requery -1
  loc_E2194C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '12D2110
  'Data Table: 45B6B4
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_45B6C7 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_11C As String
  Dim var_114 As TextBox
  Dim var_130 As String
  Dim var_128 As TextBox
  Dim var_164 As Variant
  Dim var_118 As String
  Dim var_12C As String
  Dim var_1A8 As Variant
  loc_12D1AE0: On Error Goto loc_12D20D0
  loc_12D1AE7: var_86 = CByte(0) 'Byte
  loc_12D1AF6: Set var_90 = Me.Txt
  loc_12D1AFC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_12D1B25: If (Proc_183_19_E8E68C(var_94, "Name") = 0) Then
  loc_12D1B2F:   Call Txt_GotFocus()
  loc_12D1B34:   Exit Sub
  loc_12D1B35: End If
  loc_12D1B40: Set var_90 = Me.Txt
  loc_12D1B46: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_12D1B6F: If (Proc_183_19_E8E68C(var_94, "Short Name") = 0) Then
  loc_12D1B79:   Call Txt_GotFocus()
  loc_12D1B7E:   Exit Sub
  loc_12D1B7F: End If
  loc_12D1B8A: Set var_90 = Me.Txt
  loc_12D1B90: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94, CInt(1))
  loc_12D1BB9: If (Proc_183_19_E8E68C(var_94, "Country") = 0) Then
  loc_12D1BC3:   Call Txt_GotFocus()
  loc_12D1BC8:   Exit Sub
  loc_12D1BC9: End If
  loc_12D1BCC: Call Proc_197_32_108F170(var_9E, CInt(2))
  loc_12D1BD7: If (var_9E = &HFF) Then
  loc_12D1BDA:   Exit Sub
  loc_12D1BDB: End If
  loc_12D1BDF: Set var_90 = Me.TopCtrl1
  loc_12D1BE5: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(CInt(0))
  loc_12D1BFE: If (CStr(var_94) = "Add") Then
  loc_12D1C07:   var_D4 = 0
  loc_12D1C24:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From State WHERE SITE_CODE='" & MemVar_1F95070
  loc_12D1C2B:   var_B4 = CStr(var_94) & "'"
  loc_12D1C34:   unk_45B6C7.Execute var_B4, var_B0, -1
  loc_12D1C3C:   var_90 = var_90.Fields
  loc_12D1C44:   var_D4 = var_94.Item(var_94)
  loc_12D1C4C:   var_98 = var_98.Value
  loc_12D1C85:   var_F8 = CVar(Proc_183_15_EAD490(MemVar_1F95070, 2)) 'String
  loc_12D1CAB:   var_E4 = Format(CStr(var_E4), "0000")
  loc_12D1CB3:   var_108 = (1 + var_E4)
  loc_12D1CBE:   global_64 = CStr(var_108)
  loc_12D1CD3: Else
  loc_12D1CF0:   var_94 = Me.Fields.Item("SCode")
  loc_12D1D07:   global_64 = CStr(var_94.Value)
  loc_12D1D18: End If
  loc_12D1D21: unk_45B6C7.BeginTrans var_10C
  loc_12D1D2A: var_86 = CByte(1) 'Byte
  loc_12D1D32: Set var_90 = Me.TopCtrl1
  loc_12D1D38: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(1)
  loc_12D1D51: If (CStr(var_F8) = "Add") Then
  loc_12D1D6B:   var_9C = "Insert Into State(Code,Name,ShortName,Country,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & global_64
  loc_12D1D72:   var_E8 = var_9C & "','"
  loc_12D1D83:   Set var_90 = Me.Txt
  loc_12D1D89:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, var_E8)
  loc_12D1D91:   var_1A8 = var_94.Text
  loc_12D1D9A:   var_110 = -1 & var_B4
  loc_12D1DA1:   var_11C = var_110 & "','"
  loc_12D1DB2:   Set var_98 = Me.Txt
  loc_12D1DB8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_118)
  loc_12D1DC0:   var_11C = var_114.Text
  loc_12D1DD0:   var_130 = var_1AC & var_118 & "','"
  loc_12D1DE1:   Set var_124 = Me.Txt
  loc_12D1DE7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_128, var_12C)
  loc_12D1DEF:   var_130 = var_128.Tag
  loc_12D1E2C:   Proc_183_7_EB17D4(var_E4, Date)
  loc_12D1E47:   var_164 = CVar(var_E4 & var_12C & "','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") & var_E4 & ",'A','" & CVar(MemVar_1F95078) 
  loc_12D1E5E:   unk_45B6C7.Execute CStr(var_164 & "')"), , 
  loc_12D1EAB: Else
  loc_12D1EC9:   Set var_90 = Me.Txt
  loc_12D1ECF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE State SET Name='")
  loc_12D1ED7:   var_1EC = var_94.Text
  loc_12D1EE0:   var_B4 = -1 & var_9C
  loc_12D1EE7:   var_110 = var_B4 & "',ShortName = '"
  loc_12D1EF8:   Set var_98 = Me.Txt
  loc_12D1EFE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_E8)
  loc_12D1F06:   var_110 = var_114.Text
  loc_12D1F27:   Set var_124 = Me.Txt
  loc_12D1F2D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_128)
  loc_12D1F61:   var_F8 = CVar(var_1AC & var_E8 & "',Country='" & var_128.Tag & "',SITE_CODE='" & MemVar_1F95070 & "',U_name='" & MemVar_1F950C8 & "',U_EntDt=") 'String
  loc_12D1F72:   Proc_183_7_EB17D4(var_E4, Date)
  loc_12D1F7E:   var_C4 = " ,U_AE='E',LOGSITE_CODE='"
  loc_12D1FBA:   unk_45B6C7.Execute CStr(var_F8 & var_E4 & var_C4 & CVar(MemVar_1F95078) & "' WHERE Code='" & CVar(global_64) & "'"), , 
  loc_12D2004: End If
  loc_12D200A: unk_45B6C7.CommitTrans
  loc_12D2013: var_86 = CByte(0) 'Byte
  loc_12D2022: Me.Requery -1
  loc_12D2032: Me.Requery -1
  loc_12D205F: Me.Find "SCode='" & global_64 & "'", 0, 1
  loc_12D206F: Set var_90 = Me.TopCtrl1
  loc_12D2075: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_C4)
  loc_12D208E: If (CStr() = "Add") Then
  loc_12D2091:   Call TopCtrl1_UnknownEvent_A()
  loc_12D2096:   Exit Sub
  loc_12D2097: End If
  loc_12D20AC: var_9C = "INI"
  loc_12D20BA: Call Proc_197_29_E78FF4(Proc_5_1_100EC1C(var_9C, Me))
  loc_12D20C5: Call Proc_197_34_E85B30(global_52)
  loc_12D20CA: Call Proc_197_31_1255F4C()
  loc_12D20CF: Exit Sub
  loc_12D20D0: ' Referenced from: 12D1AE0
  loc_12D20D9: If (CInt(var_86) = 1) Then
  loc_12D20E2:   unk_45B6C7.RollbackTrans
  loc_12D20E7: End If
  loc_12D20ED: Call 0.Method_arg_50 (var_9C)
  loc_12D20F5: var_E8 = "TopCtrl1_eSave"
  loc_12D2102: Proc_183_57_104B0BC(var_9C)
  loc_12D210E: Exit Sub
End Sub

Private Sub CmdRef_Click() 'F62354
  'Data Table: 45B6B4
  Dim Me As Recordset15
  Dim var_C8 As TextBox
  loc_F6222C: Set var_88 = Me.TopCtrl1
  loc_F62232: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_F6224B: If (CStr() = "Browse") Then
  loc_F6224E:   Exit Sub
  loc_F6224F: End If
  loc_F62259: Set var_A0 = New FaCountryMast
  loc_F6226B: var_A0.OpenMode = 1
  loc_F62275: var_A0.Caption = "Country Master"
  loc_F62280: Call 0.Method_arg_70 (var_C4)
  loc_F6228B: Form.Left = var_C4
  loc_F62296: Call 0.Method_arg_78 (var_C4)
  loc_F622A7: Form.Top = (var_C4 + CDbl(1500))
  loc_F622B4: Form.Height = CDbl(6000)
  loc_F622C9: Form.Show 1, var_C0
  loc_F622D9: Me.Requery -1
  loc_F622EC: Set var_88 = Me.Txt
  loc_F622F2: Call 0.Method_CmdRef_Click0 (CInt(2), var_C8)
  loc_F622FA: var_C8.Text = vbNullString
  loc_F62314: Set var_88 = Me.Txt
  loc_F6231A: Call 0.Method_CmdRef_Click0 (CInt(2), var_C8)
  loc_F62322: var_C8.Tag = vbNullString
  loc_F62339: Set var_88 = Me.Txt
  loc_F6233F: Call 0.Method_CmdRef_Click0 (CInt(2))
  loc_F62347: var_C8.SetFocus
  loc_F62353: Exit Sub
End Sub

Private Sub DGCName_UnknownEvent_9 'F12C74
  'Data Table: 45B6B4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F12B90: On Error Goto loc_F12C4A
  loc_F12BA2: Me.DGCName.Visible = False
  loc_F12BC1: If (Me.RecordCount > 0) Then
  loc_F12BE1:   var_B0 = Me.Fields.Item("Name")
  loc_F12BF2:   var_CC = CStr(var_B0.Value)
  loc_F12C00:   Set var_B4 = Me.Txt
  loc_F12C06:   Call 0.Method_DGCName_UnknownEvent_90 (CInt(2), var_B8)
  loc_F12C0E:   var_B8.Text = var_CC
  loc_F12C24: End If
  loc_F12C2F: Set var_A8 = Me.Txt
  loc_F12C35: Call 0.Method_DGCName_UnknownEvent_90 (CInt(2))
  loc_F12C3D: var_B0.SetFocus
  loc_F12C49: Exit Sub
  loc_F12C4A: ' Referenced from: F12B90
  loc_F12C50: Call 0.Method_arg_50 (var_CC)
  loc_F12C65: Proc_183_57_104B0BC(var_CC, "DGCName_Click")
  loc_F12C71: Exit Sub
End Sub

Private Sub Form_Load() '116815C
  'Data Table: 45B6B4
  Dim var_8C As Label
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C8 As String
  Dim unk_45B6C7 As Connection15
  loc_1167DA4: On Error Goto loc_1168134
  loc_1167DAE: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1167DC2: Me.LblUser.Left = CDbl(13500)
  loc_1167DD9: Me.LblUser.Top = CDbl(7800)
  loc_1167DF0: Me.LblLDt.Top = CDbl(8160)
  loc_1167E07: Me.LblLDt.Left = CDbl(13500)
  loc_1167E17: Call 0.Method_arg_7C (CDbl(1450))
  loc_1167E24: Call 0.Method_arg_74 (CDbl(1625))
  loc_1167E31: Call 0.Method_MeC (CDbl(9200))
  loc_1167E3E: Call 0.Method_Me4 (CDbl(17000))
  loc_1167E51: Set var_8C = Me.Txt
  loc_1167E57: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_1167E76: Me.DGHelp.Left = CVar(var_90.Left)
  loc_1167E92: Set var_B8 = Me.Txt
  loc_1167E98: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_1167EB3: Set var_8C = Me.Txt
  loc_1167EB9: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_1167ED1: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_1167EE0: Me.DGHelp.Top = CVar(var_90.Left)
  loc_1167F00: Set var_8C = Me.Txt
  loc_1167F06: Call 0.Method_Form_Load0 (CInt(2), var_90)
  loc_1167F25: Me.DGCName.Left = CVar(var_90.Left)
  loc_1167F41: Set var_B8 = Me.Txt
  loc_1167F47: Call 0.Method_Form_Load0 (CInt(2), var_BC)
  loc_1167F68: Call 0.Method_Form_Load0 (CInt(2), var_90)
  loc_1167F80: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_1167F8F: Me.DGCName.Top = CVar(var_90.Left)
  loc_1167FC5: unk_45B6C7.Execute "SELECT Code,Name FROM State WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1
  loc_1167FF4: CVarUnk
  loc_1167FF9: VerifyVarObj
  loc_1168005: LateIdStAd
  loc_1168037: unk_45B6C7.Execute "Select Code,Name from Country WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') order by Name", var_DC, -1
  loc_1168066: CVarUnk
  loc_116806B: VerifyVarObj
  loc_1168077: LateIdStAd
  loc_1168099: var_C8 = "SELECT State.Code as SCode,State.Name as SName,State.ShortName as SShortName,State.Site_Code as SSite_Code,State.U_Name as SU_Name,State.U_EntDt as SU_EntDt,State.U_AE as SU_AE,Country.Name AS CCountry,STATE.LOGSITE_CODE,STATE.SITE_CODE FROM State LEFT JOIN Country ON State.Country=Country.Code WHERE (STATE.LOGSITE_CODE='" & MemVar_1F95078
  loc_11680A9: unk_45B6C7.Execute var_C8 & "' OR STATE.LOGSITE_CODE='HO') ORDER BY State.Name", var_DC, -1
  loc_11680DB: Set var_8C = Me
  loc_11680E4: var_C8 = "INI"
  loc_11680F2: Call Proc_197_29_E78FF4(Proc_5_1_100EC1C(var_C8, var_8C, Me.DGCName, var_8C, var_8C), Me.DGHelp, var_8C)
  loc_11680FD: Call Proc_197_31_1255F4C(var_8C, Me.Txt)
  loc_1168113: If (OpenMode = 1) Then
  loc_1168120:   Set var_8C = Me.TopCtrl1
  loc_1168126:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_8001000B("AE*P")
  loc_116812E:   Call TopCtrl1_UnknownEvent_A()
  loc_1168133: End If
  loc_1168133: Exit Sub
  loc_1168134: ' Referenced from: 1167DA4
  loc_116813A: Call 0.Method_arg_50 (var_C8)
  loc_116814F: Proc_183_57_104B0BC(var_C8, "Form_Load")
  loc_116815B: Exit Sub
End Sub

Private Sub Form_Resize() 'ED4068
  'Data Table: 45B6B4
  Dim var_8C As Label
  loc_ED3FC6: Call 0.Method_arg_50 (var_88)
  loc_ED3FD8: Me.LblFormCaption.Caption = var_88
  loc_ED3FF1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED3FFD: Set var_A0 = Me.TopCtrl1
  loc_ED4003: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010006()
  loc_ED4010: Set var_8C = Me.TopCtrl1
  loc_ED4016: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004()
  loc_ED4030: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED404B: Call 0.Method_arg_100 (var_B8)
  loc_ED405D: Me.LblFormCaption.Width = var_B8
  loc_ED4065: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5185C
  'Data Table: 45B6B4
  loc_E5182F: Set global_52 = Nothing
  loc_E51841: Set global_56 = Nothing
  loc_E51853: Set global_60 = Nothing
  loc_E5185A: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E66328
  'Data Table: 45B6B4
  loc_E662E0: On Error Goto loc_E662FE
  loc_E662F5: Proc_183_40_F3169C(Me, KeyCode)
  loc_E662FD: Exit Sub
  loc_E662FE: ' Referenced from: E662E0
  loc_E66304: Call 0.Method_arg_50 (var_8C)
  loc_E66319: Proc_183_57_104B0BC(var_8C, "Form_KeyDown")
  loc_E66325: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FD05FC
  'Data Table: 45B6B4
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_EC As String
  loc_FD0448: On Error Goto loc_FD05D4
  loc_FD0455: Set var_88 = Me.Txt
  loc_FD045B: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FD0469: Proc_183_28_E216B0(var_8C)
  loc_FD0475: Call Proc_197_34_E85B30(var_8C)
  loc_FD047D: var_92 = Index
  loc_FD0488: If (var_92 = CInt(2)) Then
  loc_FD04D9:   Set var_88 = Me.Txt
  loc_FD04DF:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FD04E7:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FD04FF:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_FD0502:     Exit Sub
  loc_FD0503:   End If
  loc_FD0510:   Set var_88 = Me.Txt
  loc_FD0516:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FD051E:   var_A0 = var_8C.Text
  loc_FD0530:   var_B0 = "Name"
  loc_FD056B:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_FD0574:     Me.MoveFirst
  loc_FD0597:     Set var_88 = Me.Txt
  loc_FD059D:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_FD05A5:     0 = var_8C.Text
  loc_FD05BE:     Me.Find 1 & var_A0 & "'", var_B0, 
  loc_FD05D3:   End If
  loc_FD05D3: End If
  loc_FD05D3: Exit Sub
  loc_FD05D4: ' Referenced from: FD0448
  loc_FD05DA: Call 0.Method_arg_50 (var_A0)
  loc_FD05E2: var_EC = "Txt_GotFocus"
  loc_FD05EF: Proc_183_57_104B0BC(var_A0)
  loc_FD05FB: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FE6690
  'Data Table: 45B6B4
  Dim var_88 As Integer
  Dim Me As Recordset15
  loc_FE64C0: On Error Goto loc_FE6665
  loc_FE64CD: If (CLng(Shift) = &H1B) Then
  loc_FE64D0:   Call Proc_197_34_E85B30()
  loc_FE64D5:   Exit Sub
  loc_FE64D6: End If
  loc_FE64D9: var_88 = KeyCode
  loc_FE64E4: If (var_88 = CInt(0)) Then
  loc_FE64FE:   If (Me.RecordCount > 0) Then
  loc_FE653B:     Proc_183_31_100957C(Me.DGHelp, Me.Txt, CInt(0), global_56)
  loc_FE654B:   End If
  loc_FE654E: Else
  loc_FE6556:   If (var_88 = CInt(2)) Then
  loc_FE658F:     Proc_183_34_1307118(Me.DGCName, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_FE659F:   End If
  loc_FE659F: End If
  loc_FE65DA: If ((CBool(Me.DGCName.Visible) = 0) And (CBool(Me.DGHelp.Visible) = 0)) Then
  loc_FE65F0:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_FE65F9:     Proc_183_30_E53D10(Shift, arg_14, 1, Shift)
  loc_FE65FE:   End If
  loc_FE661C:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(2))) Then
  loc_FE6625:     Call Txt_Validate(KeyCode)
  loc_FE6630:     If (var_86 = 0) Then
  loc_FE6639:       Call Proc_197_35_E92BD8(KeyCode, var_86, 0)
  loc_FE663E:     End If
  loc_FE6641:   Else
  loc_FE6656:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FE665F:       Proc_183_29_E53794(Shift, arg_14)
  loc_FE6664:     End If
  loc_FE6664:   End If
  loc_FE6664: End If
  loc_FE6664: Exit Sub
  loc_FE6665: ' Referenced from: FE64C0
  loc_FE666B: Call 0.Method_arg_50 (var_C8, 1)
  loc_FE6680: Proc_183_57_104B0BC(var_C8, "Txt_KeyDown")
  loc_FE668C: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE19AC
  'Data Table: 45B6B4
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EE18F8: On Error Goto loc_EE1982
  loc_EE1901: Proc_183_52_E80008(var_94)
  loc_EE190A: arg_10 = CInt(var_94)
  loc_EE1913: Proc_183_46_E07C50(arg_10, arg_10)
  loc_EE1926: If (KeyAscii = CInt(2)) Then
  loc_EE1945:   If (CBool(Me.DGCName.Visible) = &HFF) Then
  loc_EE1957:     var_A0 = "Name"
  loc_EE1972:     Proc_183_41_145A968(Me.Txt, KeyAscii, global_60, arg_10)
  loc_EE1981:   End If
  loc_EE1981: End If
  loc_EE1981: Exit Sub
  loc_EE1982: ' Referenced from: EE18F8
  loc_EE1988: Call 0.Method_arg_50 (var_A0, var_A0, 0)
  loc_EE199D: Proc_183_57_104B0BC(var_A0, "TXT_KeyPress")
  loc_EE19A9: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F422EC
  'Data Table: 45B6B4
  Dim var_86 As Integer
  loc_F421DC: On Error Goto loc_F422C1
  loc_F421E2: var_86 = KeyCode
  loc_F421ED: If (var_86 = CInt(0)) Then
  loc_F4220C:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F42219:     var_A4 = "Name"
  loc_F42238:     Proc_183_32_FE97F0(Me.Txt, CInt(0), global_56)
  loc_F42247:   End If
  loc_F4224A: Else
  loc_F42252:   If (var_86 = CInt(2)) Then
  loc_F42271:     If (CBool(Me.DGCName.Visible) = &HFF) Then
  loc_F42285:       var_A4 = "Name"
  loc_F422AD:       Proc_183_33_12A1B50(Me.DGCName, Me.Txt, CInt(2), global_60, Shift)
  loc_F422C0:     End If
  loc_F422C0:   End If
  loc_F422C0: End If
  loc_F422C0: Exit Sub
  loc_F422C1: ' Referenced from: F421DC
  loc_F422C7: Call 0.Method_arg_50 (var_A4, var_A4, Shift)
  loc_F422DC: Proc_183_57_104B0BC(var_A4, "Txt_KeyUp")
  loc_F422E8: Exit Sub
  loc_F422EA: DOC
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4CB0C
  'Data Table: 45B6B4
  loc_E4CAEA: Set var_88 = Me.Txt
  loc_E4CAF0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4CAFE: Proc_183_27_E23198(var_8C)
  loc_E4CB0A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'FD47DC
  'Data Table: 45B6B4
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_FD461C: On Error Goto loc_FD47B1
  loc_FD4622: var_86 = Cancel
  loc_FD462D: If (var_86 = CInt(0)) Then
  loc_FD4633:   Call Proc_197_32_108F170(var_88)
  loc_FD463E:   If (var_88 = &HFF) Then
  loc_FD4643:     arg_10 = &HFF
  loc_FD4646:     Exit Sub
  loc_FD4647:   End If
  loc_FD464A: Else
  loc_FD4652:   If (var_86 = CInt(1)) Then
  loc_FD4658:     Call Proc_197_33_106F92C(var_88, arg_10)
  loc_FD4663:     If (var_88 = &HFF) Then
  loc_FD4668:       arg_10 = &HFF
  loc_FD466B:       Exit Sub
  loc_FD466C:     End If
  loc_FD466F:   Else
  loc_FD4677:     If (var_86 = CInt(2)) Then
  loc_FD46C8:       Set var_94 = Me.Txt
  loc_FD46CE:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_FD46D6:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_FD46EE:       If (arg_10 Or (var_9C = vbNullString)) Then
  loc_FD46F1:         Exit Sub
  loc_FD46F2:       End If
  loc_FD472D:       Set var_B0 = Me.Txt
  loc_FD4733:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_FD473B:       var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD477F:       var_9C = CStr(Me.Fields.Item("Code").Value)
  loc_FD478C:       Set var_B0 = Me.Txt
  loc_FD4792:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_FD479A:       var_B4.Tag = var_9C
  loc_FD47B0:     End If
  loc_FD47B0:   End If
  loc_FD47B0: End If
  loc_FD47B0: Exit Sub
  loc_FD47B1: ' Referenced from: FD461C
  loc_FD47B7: Call 0.Method_arg_50 (var_9C)
  loc_FD47CC: Proc_183_57_104B0BC(var_9C, "Txt_Validate")
  loc_FD47D8: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F12DA8
  'Data Table: 45B6B4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F12CC4: On Error Goto loc_F12D7E
  loc_F12CD6: Me.DGHelp.Visible = False
  loc_F12CF5: If (Me.RecordCount > 0) Then
  loc_F12D15:   var_B0 = Me.Fields.Item("Name")
  loc_F12D26:   var_CC = CStr(var_B0.Value)
  loc_F12D34:   Set var_B4 = Me.Txt
  loc_F12D3A:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F12D42:   var_B8.Text = var_CC
  loc_F12D58: End If
  loc_F12D63: Set var_A8 = Me.Txt
  loc_F12D69: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F12D71: var_B0.SetFocus
  loc_F12D7D: Exit Sub
  loc_F12D7E: ' Referenced from: F12CC4
  loc_F12D84: Call 0.Method_arg_50 (var_CC)
  loc_F12D99: Proc_183_57_104B0BC(var_CC, "DGHelp_Click")
  loc_F12DA5: Exit Sub
End Sub

Public Property Get OpenMode() 'E05ED0
  'Data Table: 45B6B4
  loc_E05EC9: OpenMode = global_76
End Sub

Public Property Let OpenMode(vNewValue) 'E02CEC
  'Data Table: 45B6B4
  loc_E02CE6: global_76 = vNewValue
  loc_E02CE9: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E8F7D8
  'Data Table: 45B6B4
  Dim Me As Recordset15
  Dim var_8C As String
  loc_E8F76A: On Error Goto loc_E8F7AF
  loc_E8F773: Me.MoveFirst
  loc_E8F78D: var_8C = "SCode='" & MyValue
  loc_E8F79D: Me.Find var_8C & "'", 0, 1
  loc_E8F7A9: Call Proc_197_31_1255F4C(var_A0)
  loc_E8F7AE: Exit Sub
  loc_E8F7AF: ' Referenced from: E8F76A
  loc_E8F7B5: Call 0.Method_arg_50 (var_8C)
  loc_E8F7BD: var_A4 = "SEARCHBACK"
  loc_E8F7CA: Proc_183_57_104B0BC(var_8C)
  loc_E8F7D6: Exit Sub
End Sub

Public Sub Proc_197_29_E78FF4(arg_C) 'E78FF4
  'Data Table: 45B6B4
  Dim var_98 As TextBox
  loc_E78FA2: Set var_8C = Me.Txt
  loc_E78FA8: Call 0.Method_Proc_197_29_E78FF4C (var_8E, var_86)
  loc_E78FB8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E78FCE:   Set var_8C = Me.Txt
  loc_E78FD4:   Call 0.Method_Proc_197_29_E78FF40 (CInt(var_86), var_98)
  loc_E78FDC:   var_98.Enabled = arg_C
  loc_E78FEB: Next var_92 'Byte
  loc_E78FF1: Exit Sub
End Sub

Public Sub Proc_197_30_EB54D0
  'Data Table: 45B6B4
  Dim var_98 As TextBox
  loc_EB543A: global_68 = vbNullString
  loc_EB5444: global_72 = vbNullString
  loc_EB5456: Set var_8C = Me.Txt
  loc_EB545C: Call 0.Method_Proc_197_30_EB54D0C (var_8E, var_86)
  loc_EB546C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB5482:   Set var_8C = Me.Txt
  loc_EB5488:   Call 0.Method_Proc_197_30_EB54D00 (CInt(var_86), var_98)
  loc_EB5490:   var_98.Text = vbNullString
  loc_EB54AC:   Set var_8C = Me.Txt
  loc_EB54B2:   Call 0.Method_Proc_197_30_EB54D00 (CInt(var_86), var_98)
  loc_EB54BA:   var_98.Tag = vbNullString
  loc_EB54C9: Next var_92 'Byte
  loc_EB54CF: Exit Sub
End Sub

Public Sub Proc_197_31_1255F4C
  'Data Table: 45B6B4
  Dim Me As Recordset15
  Dim var_F4 As String
  Dim unk_45B6DD As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_184 As Fields15
  Dim var_11C As TextBox
  Dim var_198 As TextBox
  loc_1255A24: On Error Goto loc_1255F23
  loc_1255A2D: Proc_183_45_E5CCA8(global_52)
  loc_1255A88: unk_45B6DD.Execute CStr("Select U_Name,U_AE,U_EntDt From state where Code='" & Me.Fields.Item("SCode").Value & "'  "), var_114, -1
  loc_1255A93: Set var_88 = var_118
  loc_1255AE7: var_118 = var_88.Fields
  loc_1255B50: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1255B95: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_1255C0F: var_11C = var_88.Fields.Item("U_AE")
  loc_1255C70: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_11C)) = "E"), "Last Update : ", "entdt : "))
  loc_1255C8F: var_198 = var_88.Fields.Item("U_EntDt")
  loc_1255CB5: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(var_198))))
  loc_1255D04: If (Me.RecordCount <= 0) Then
  loc_1255D07:   Call Proc_197_30_EB54D0()
  loc_1255D0F: Else
  loc_1255D43:   global_64 = CStr(Me.Fields.Item("SName").Value)
  loc_1255D90:   Set var_118 = Me.Txt
  loc_1255D96:   Call 0.Method_Proc_197_31_1255F4C0 (CInt(0), var_11C)
  loc_1255D9E:   var_11C.Tag = CStr(Me.Fields.Item("SCode").Value)
  loc_1255DF0:   Set var_118 = Me.Txt
  loc_1255DF6:   Call 0.Method_Proc_197_31_1255F4C0 (CInt(0), var_11C)
  loc_1255DFE:   var_11C.Text = CStr(Me.Fields.Item("SName").Value)
  loc_1255E50:   Set var_118 = Me.Txt
  loc_1255E56:   Call 0.Method_Proc_197_31_1255F4C0 (CInt(1), var_11C)
  loc_1255E5E:   var_11C.Text = CStr(Me.Fields.Item("SShortName").Value)
  loc_1255EE5:   var_F4 = CStr(IIf(IsNull(CVar(Me.Fields.Item("CCountry"))), vbNullString, CVar(Me.Fields.Item("CCountry"))))
  loc_1255EF4:   Set var_184 = Me.Txt
  loc_1255EFA:   Call 0.Method_Proc_197_31_1255F4C0 (CInt(2), var_198)
  loc_1255F02:   var_198.Text = var_F4
  loc_1255F22: End If
  loc_1255F22: Exit Sub
  loc_1255F23: ' Referenced from: 1255A24
  loc_1255F29: Call 0.Method_arg_50 (var_F4)
  loc_1255F3E: Proc_183_57_104B0BC(var_F4, "MoveRec")
  loc_1255F4A: Exit Sub
End Sub

Public Sub Proc_197_32_108F170
  'Data Table: 45B6B4
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_A8 As TextBox
  Dim unk_45B6C7 As Connection15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  loc_108EEE0: On Error Goto loc_108F141
  loc_108EEFA: If (Me.RecordCount = 0) Then
  loc_108EEFD:   Proc_197_32_108F170 = 
  loc_108EF03: End If
  loc_108EF07: Set var_90 = Me.TopCtrl1
  loc_108EF0D: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_108EF15: var_A4 = CStr()
  loc_108EF26: If (var_A4 = "Add") Then
  loc_108EF56:   Set var_90 = Me.Txt
  loc_108EF5C:   Call 0.Method_Proc_197_32_108F1700 (CInt(0), var_A8, var_A4, "Select Count(*) From State Where Name='", var_A0, -1)
  loc_108EF7D:   unk_45B6C7.Execute var_C8 & var_A4 & "'", 0, var_DC
  loc_108EF8D:    = var_C8.Item()
  loc_108EF95:    = var_DC.Value
  loc_108EFC2:   If (var_A8.Text.Fields > 0) Then
  loc_108EFE0:     var_A0 = "Duplicate Name"
  loc_108EFE6:     MsgBox(var_A0, &H40, "Information", var_10C, var_12C)
  loc_108F001:     Set var_90 = Me.Txt
  loc_108F007:     Call 0.Method_Proc_197_32_108F1700 (CInt(0))
  loc_108F00F:     var_A8.SetFocus
  loc_108F020:     Proc_197_32_108F170 = &HFF
  loc_108F026:   End If
  loc_108F029: Else
  loc_108F056:   Set var_90 = Me.Txt
  loc_108F05C:   Call 0.Method_Proc_197_32_108F1700 (CInt(0), var_A8, var_A4, "Select Count(*) From State Where Name='", var_A0, -1)
  loc_108F08E:   unk_45B6C7.Execute var_C8 & var_A4 & "' And Name<>'" & global_68 & "'", 0, var_DC
  loc_108F09E:    = var_C8.Item(var_A8)
  loc_108F0A6:    = var_DC.Value
  loc_108F0D7:   If (var_A8.Text.Fields > 0) Then
  loc_108F0FB:     MsgBox("Duplicate Name", &H40, "Information", var_10C, var_12C)
  loc_108F116:     Set var_90 = Me.Txt
  loc_108F11C:     Call 0.Method_Proc_197_32_108F1700 (CInt(0))
  loc_108F124:     var_A8.SetFocus
  loc_108F135:     Proc_197_32_108F170 = &HFF
  loc_108F13B:   End If
  loc_108F13B: End If
  loc_108F13B: Proc_197_32_108F170 = var_A8
  loc_108F141: ' Referenced from: 108EEE0
  loc_108F147: Call 0.Method_arg_50 (var_A4)
  loc_108F15C: Proc_183_57_104B0BC(var_A4)
  loc_108F168: Proc_197_32_108F170 = "ValidateName"
End Sub

Public Sub Proc_197_33_106F92C
  'Data Table: 45B6B4
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_45B6C7 As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  loc_106F6BC: On Error Goto loc_106F8FD
  loc_106F6C3: Set var_8C = Me.TopCtrl1
  loc_106F6C9: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_106F6D1: var_A0 = CStr()
  loc_106F6E2: If (var_A0 = "Add") Then
  loc_106F712:   Set var_8C = Me.Txt
  loc_106F718:   Call 0.Method_Proc_197_33_106F92C0 (CInt(1), var_A4, var_A0, "Select Count(*) From State Where ShortName='", var_9C, -1)
  loc_106F739:   unk_45B6C7.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_106F749:    = var_C4.Item()
  loc_106F751:    = var_D8.Value
  loc_106F77E:   If (var_A4.Text.Fields > 0) Then
  loc_106F79C:     var_9C = "Duplicate Short Name"
  loc_106F7A2:     MsgBox(var_9C, &H40, "Information", var_108, var_128)
  loc_106F7BD:     Set var_8C = Me.Txt
  loc_106F7C3:     Call 0.Method_Proc_197_33_106F92C0 (CInt(1))
  loc_106F7CB:     var_A4.SetFocus
  loc_106F7DC:     Proc_197_33_106F92C = &HFF
  loc_106F7E2:   End If
  loc_106F7E5: Else
  loc_106F812:   Set var_8C = Me.Txt
  loc_106F818:   Call 0.Method_Proc_197_33_106F92C0 (CInt(1), var_A4, var_A0, "Select Count(*) From State Where ShortName='", var_9C, -1)
  loc_106F84A:   unk_45B6C7.Execute var_C4 & var_A0 & "' And ShortName<>'" & global_72 & "'", 0, var_D8
  loc_106F85A:    = var_C4.Item(var_A4)
  loc_106F862:    = var_D8.Value
  loc_106F893:   If (var_A4.Text.Fields > 0) Then
  loc_106F8B7:     MsgBox("Duplicate Short Name", &H40, "Information", var_108, var_128)
  loc_106F8D2:     Set var_8C = Me.Txt
  loc_106F8D8:     Call 0.Method_Proc_197_33_106F92C0 (CInt(1))
  loc_106F8E0:     var_A4.SetFocus
  loc_106F8F1:     Proc_197_33_106F92C = &HFF
  loc_106F8F7:   End If
  loc_106F8F7: End If
  loc_106F8F7: Proc_197_33_106F92C = var_A4
  loc_106F8FD: ' Referenced from: 106F6BC
  loc_106F903: Call 0.Method_arg_50 (var_A0)
  loc_106F918: Proc_183_57_104B0BC(var_A0)
  loc_106F924: Proc_197_33_106F92C = "ValidateSName"
  loc_106F92A:  = 
End Sub

Public Sub Proc_197_34_E85B30
  'Data Table: 45B6B4
  loc_E85ADC: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E85AEE:   Me.DGHelp.Visible = False
  loc_E85AF6: End If
  loc_E85B12: If (CBool(Me.DGCName.Visible) = &HFF) Then
  loc_E85B24:   Me.DGCName.Visible = False
  loc_E85B2C: End If
  loc_E85B2C: Exit Sub
End Sub

Public Sub Proc_197_35_E92BD8(arg_C) 'E92BD8
  'Data Table: 45B6B4
  Dim var_10C As TextBox
  loc_E92B6C: Call Proc_197_34_E85B30()
  loc_E92BA8: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E92BAB:   Call TopCtrl1_UnknownEvent_16()
  loc_E92BB3: Else
  loc_E92BBD:   Set var_108 = Me.Txt
  loc_E92BC3:   Call 0.Method_Proc_197_35_E92BD80 (arg_C)
  loc_E92BCB:   var_10C.SetFocus
  loc_E92BD7: End If
  loc_E92BD7: Exit Sub
End Sub
