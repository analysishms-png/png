VERSION 5.00
Begin VB.Form prSalCreate
  Caption = "Salary Creation"
  BackColor = &HD0C7BB&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 7590
  ClientHeight = 3600
  LockControls = -1  'True
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
  Begin DataGrid DGEmployee
    Left = 8640
    Top = 2475
    Width = 11250
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 12
  End
  Begin DataGrid DGDepartment
    Left = 8775
    Top = 1740
    Width = 4185
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 22
  End
  Begin CheckBox ChkDepart
    Caption = "All Department"
    BackColor = &HD0C7BB&
    ForeColor = &HC00000&
    Left = 1980
    Top = 1575
    Width = 1755
    Height = 240
    TabIndex = 21
    Value = 1
    Alignment = 1 'Right Justify
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
  Begin TextBox Txt
    Index = 2
    ForeColor = &HFF0000&
    Left = 3795
    Top = 1560
    Width = 3780
    Height = 285
    Enabled = 0   'False
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 7590
    Height = 450
    Visible = 0   'False
    TabIndex = 19
  End
  Begin PictureBox Picture3
    Picture = "prSalCreate.frx":0
    Left = 14205
    Top = 750
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 17
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HFF0000&
    Left = 6105
    Top = 1245
    Width = 1470
    Height = 285
    TabIndex = 1
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
  Begin TextBox Txt
    Index = 3
    ForeColor = &HFF0000&
    Left = 3795
    Top = 1875
    Width = 3780
    Height = 285
    Enabled = 0   'False
    TabIndex = 3
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
  Begin CheckBox ChkEmp
    Caption = "All Employee"
    BackColor = &HD0C7BB&
    ForeColor = &HC00000&
    Left = 1980
    Top = 1890
    Width = 1755
    Height = 240
    TabIndex = 4
    Value = 1
    Alignment = 1 'Right Justify
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
  Begin TextBox Txt
    Index = 0
    ForeColor = &HFF0000&
    Left = 3795
    Top = 1245
    Width = 975
    Height = 285
    TabIndex = 0
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
  Begin CommandButton Command1z
    Caption = "&Exit"
    Index = 1
    BackColor = &HFFFF&
    Left = 6060
    Top = 6810
    Width = 1920
    Height = 450
    Visible = 0   'False
    TabIndex = 9
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton Command1z
    Caption = "&Create Salary"
    Index = 0
    BackColor = &HFFFF&
    Left = 2100
    Top = 6810
    Width = 2010
    Height = 450
    Visible = 0   'False
    TabIndex = 8
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton Command2z
    Caption = "&DeCreate Salary"
    BackColor = &HFFFF&
    Left = 4125
    Top = 6810
    Width = 1920
    Height = 450
    Visible = 0   'False
    TabIndex = 10
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End
Begin DataGrid DGAgentName
  Left = 11085
  Top = 3585
  Width = 4230
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 11
End
Begin MSFlexGrid FGPoint
  Left = 12825
  Top = 6720
  Width = 1980
  Height = 1440
  Visible = 0   'False
  TabIndex = 16
End
Begin BtnEnh Command1
  Left = 2085
  Top = 3555
  Width = 2310
  Height = 705
  TabIndex = 5
End
Begin BtnEnh Command2
  Left = 4455
  Top = 3555
  Width = 2310
  Height = 705
  TabIndex = 6
End
Begin BtnEnh CmdExit
  Left = 6825
  Top = 3555
  Width = 2310
  Height = 705
  TabIndex = 7
End
Begin Label LblEmpRef
  Caption = "."
  BackColor = &H80000005&
  ForeColor = &HFF0000&
  Left = 7695
  Top = 1860
  Width = 105
  Height = 270
  TabIndex = 20
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Tahoma"
    Size = 11.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin Label LblFormCaption
  BackColor = &HC0FFFF&
  Left = 0
  Top = 0
  Width = 180
  Height = 540
  TabIndex = 18
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
  Caption = "Salary Date"
  Index = 1
  ForeColor = &HC00000&
  Left = 4905
  Top = 1245
  Width = 1110
  Height = 240
  TabIndex = 15
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
Begin Shape Shape1
  Left = 2190
  Top = 5730
  Width = 5925
  Height = 525
  Visible = 0   'False
  FillStyle = 0
End
Begin Label Label1
  Caption = "For Month"
  Index = 0
  ForeColor = &HC00000&
  Left = 2670
  Top = 1260
  Width = 960
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
Begin Label LabelSal
  Caption = "Salary Creation"
  BackColor = &H80000005&
  ForeColor = &HFF&
  Left = 4290
  Top = 4635
  Width = 2085
  Height = 360
  TabIndex = 13
  Alignment = 2 'Center
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 13.5
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = -1 'True
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
End

Attribute VB_Name = "prSalCreate"


Private Sub DGDepartment_UnknownEvent_9 'F45CB4
  'Data Table: 4C2D80
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F45BAB: Me.DGDepartment.Visible = False
  loc_F45BCA: If (Me.RecordCount > 0) Then
  loc_F45C09:   Set var_B4 = Me.Txt
  loc_F45C0F:   Call 0.Method_DGDepartment_UnknownEvent_90 (CInt(2), var_B8)
  loc_F45C17:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F45C4A:   var_B0 = Me.Fields.Item("Name")
  loc_F45C69:   Set var_B4 = Me.Txt
  loc_F45C6F:   Call 0.Method_DGDepartment_UnknownEvent_90 (CInt(2), var_B8)
  loc_F45C77:   var_B8.Text = CStr(var_B0.Value)
  loc_F45C8D: End If
  loc_F45C98: Set var_A8 = Me.Txt
  loc_F45C9E: Call 0.Method_DGDepartment_UnknownEvent_90 (CInt(2))
  loc_F45CA6: var_B0.SetFocus
  loc_F45CB2: Exit Sub
End Sub

Private Sub DGDepartment_UnknownEvent_1F 'E74F14
  'Data Table: 4C2D80
  loc_E74ED2: Proc_6_153_E91D24(Me.DGDepartment, arg_14)
  loc_E74EE9: Set var_8C = Me.FGPoint
  loc_E74F05: Proc_6_138_106E830(Me.DGDepartment, global_56, CInt(2))
  loc_E74F13: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12493EC
  'Data Table: 4C2D80
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim var_C4 As Variant
  Dim Me As Recordset15
  Dim var_F0 As Variant
  loc_1248EB6: Set var_88 = Me.Txt
  loc_1248EBC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1248ECA: Proc_6_74_E23240(var_8C)
  loc_1248ED6: Call Proc_310_20_EBD77C(var_8C)
  loc_1248EDE: var_92 = Index
  loc_1248EE9: If (var_92 = CInt(0)) Then
  loc_1248EF4:   var_98 = "{Home}+{End}"
  loc_1248EFA:   Proc_303_0_FBACC8(var_98, 0)
  loc_1248F05: Else
  loc_1248F0D:   If (var_92 = CInt(2)) Then
  loc_1248F1D:     Set var_88 = Me.Txt
  loc_1248F23:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1248F2B:     var_98 = var_8C.Text
  loc_1248F36:     global_60 = var_98
  loc_1248F51:     Set var_88 = Me.Txt
  loc_1248F57:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1248F76:     Me.DGDepartment.Left = CVar(var_8C.Left)
  loc_1248F91:     Set var_90 = Me.Txt
  loc_1248F97:     Call 0.Method_Txt_GotFocus0 (Index, var_C4)
  loc_1248FB1:     Set var_88 = Me.Txt
  loc_1248FB7:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1248FCB:     var_B0 = CVar((var_8C.Top + var_C4.Height)) 'Single
  loc_1248FDA:     Me.DGDepartment.Top = CVar(var_8C.Left)
  loc_1249003:     If (Me.RecordCount > 0) Then
  loc_1249011:       Set var_8C = Me.FGPoint
  loc_1249029:       Proc_6_137_1192FDC(Me.DGDepartment, global_56, Index)
  loc_1249037:     End If
  loc_1249085:     Set var_88 = Me.Txt
  loc_124908B:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1249093:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12490AB:     If (var_8C Or (var_98 = vbNullString)) Then
  loc_12490AE:       Exit Sub
  loc_12490AF:     End If
  loc_12490BC:     Set var_88 = Me.Txt
  loc_12490C2:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12490CA:     var_98 = var_8C.Text
  loc_12490D2:     var_F0 = CVar(var_98) 'String
  loc_12490F3:     var_C4 = Me.Fields.Item("Name")
  loc_1249117:     If CBool(var_F0 <> var_C4.Value) Then
  loc_1249120:       Me.MoveFirst
  loc_1249145:       Set var_88 = Me.Txt
  loc_124914B:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name =")
  loc_1249153:       0 = var_8C.Text
  loc_1249161:       Proc_6_17_EAAE40(var_F0, CVar(var_98), 1)
  loc_1249177:       Me.Find CStr(var_C0 & var_F0), var_92, 
  loc_124918F:     End If
  loc_1249192:   Else
  loc_124919A:     If (var_92 = CInt(3)) Then
  loc_12491AA:       Set var_88 = Me.Txt
  loc_12491B0:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12491CF:       Me.DGEmployee.Left = CVar(var_8C.Left)
  loc_12491EA:       Set var_90 = Me.Txt
  loc_12491F0:       Call 0.Method_Txt_GotFocus0 (Index, var_C4)
  loc_124920A:       Set var_88 = Me.Txt
  loc_1249210:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1249224:       var_B0 = CVar((var_8C.Top + var_C4.Height)) 'Single
  loc_1249233:       Me.DGEmployee.Top = CVar(var_8C.Left)
  loc_124925C:       If (Me.RecordCount > 0) Then
  loc_124926A:         Set var_8C = Me.FGPoint
  loc_1249282:         Proc_6_137_1192FDC(Me.DGEmployee, global_52)
  loc_1249290:       End If
  loc_12492DE:       Set var_88 = Me.Txt
  loc_12492E4:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_12492EC:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1249304:       If (Index Or (var_98 = vbNullString)) Then
  loc_1249307:         Exit Sub
  loc_1249308:       End If
  loc_1249315:       Set var_88 = Me.Txt
  loc_124931B:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1249323:       var_98 = var_8C.Text
  loc_124932B:       var_F0 = CVar(var_98) 'String
  loc_1249370:       If CBool(var_F0 <> Me.Fields.Item("Name").Value) Then
  loc_1249379:         Me.MoveFirst
  loc_124939E:         Set var_88 = Me.Txt
  loc_12493A4:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name =")
  loc_12493AC:         0 = var_8C.Text
  loc_12493BA:         Proc_6_17_EAAE40(var_F0, CVar(var_98), 1)
  loc_12493D0:         Me.Find CStr(var_C0 & var_F0), var_8C, 
  loc_12493E8:       End If
  loc_12493E8:     End If
  loc_12493E8:   End If
  loc_12493E8: End If
  loc_12493E8: Exit Sub
  loc_12493E9: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10E50BC
  'Data Table: 4C2D80
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  loc_10E4DB7: var_86 = Shift
  loc_10E4DC4: If (CLng(Shift) = &H1B) Then
  loc_10E4DC7:   Call Proc_310_20_EBD77C(var_86)
  loc_10E4DCC:   Exit Sub
  loc_10E4DCD: End If
  loc_10E4DD0: var_88 = KeyCode
  loc_10E4DDB: If (var_88 = CInt(2)) Then
  loc_10E4DFB:   Set var_9C = Me.FGPoint
  loc_10E4E06:   Set var_98 = Nothing
  loc_10E4E34:   Proc_6_69_134A630(Me.DGDepartment, Me.Txt, KeyCode, global_56, Shift, 0)
  loc_10E4EA3:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_10E4EC9:     Proc_6_138_106E830(Me.DGDepartment, global_56, KeyCode, Me.FGPoint, 1)
  loc_10E4ED7:   End If
  loc_10E4EDA: Else
  loc_10E4EE2:   If (var_88 = CInt(3)) Then
  loc_10E4F02:     Set var_9C = Me.FGPoint
  loc_10E4F0D:     Set var_98 = Nothing
  loc_10E4F3B:     Proc_6_69_134A630(Me.DGEmployee, Me.Txt, KeyCode, global_52, Shift, 0, 1)
  loc_10E4FAA:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_10E4FB1:       Set var_98 = Me.DGEmployee
  loc_10E4FD0:       Proc_6_138_106E830(var_98, global_52, KeyCode, Me.FGPoint, var_98, var_9C)
  loc_10E4FDE:     End If
  loc_10E4FDE:   End If
  loc_10E4FDE: End If
  loc_10E5019: If ((CBool(Me.DGDepartment.Visible) = 0) And (CBool(Me.DGEmployee.Visible) = 0)) Then
  loc_10E503A:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(3))) Then
  loc_10E5043:     Proc_6_75_E5335C(Shift, arg_14, 0, var_98)
  loc_10E5048:   End If
  loc_10E504C:   Set var_8C = Me.TopCtrl1
  loc_10E5052:   Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_9C)
  loc_10E5074:   If ((CStr(0) = "Browse") And (KeyCode <> CInt(2))) Then
  loc_10E508C:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10E5095:       Proc_6_76_E533C8(Shift, arg_14)
  loc_10E509A:     End If
  loc_10E509A:   End If
  loc_10E50B8:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(3))) Then
  loc_10E50BB:   End If
  loc_10E50BB: End If
  loc_10E50BB: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F77DC4
  'Data Table: 4C2D80
  Dim var_86 As Integer
  loc_F77C80: On Error Goto loc_F77DBD
  loc_F77C86: Proc_6_58_E06050(arg_10)
  loc_F77C8E: var_86 = KeyAscii
  loc_F77C99: If (var_86 = CInt(2)) Then
  loc_F77CB8:   If (CBool(Me.DGDepartment.Visible) = &HFF) Then
  loc_F77CCA:     var_A0 = "Name"
  loc_F77CE5:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_56, arg_10)
  loc_F77D17:     Proc_6_138_106E830(Me.DGDepartment, global_56, KeyAscii, Me.FGPoint)
  loc_F77D25:   End If
  loc_F77D28: Else
  loc_F77D30:   If (var_86 = CInt(3)) Then
  loc_F77D4F:     If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_F77D61:       var_A0 = "Name"
  loc_F77D7C:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_52, arg_10, var_A0)
  loc_F77DAE:       Proc_6_138_106E830(Me.DGEmployee, global_52, KeyAscii, Me.FGPoint)
  loc_F77DBC:     End If
  loc_F77DBC:   End If
  loc_F77DBC: End If
  loc_F77DBC: Exit Sub
  loc_F77DBD: ' Referenced from: F77C80
  loc_F77DBD: Proc_6_60_E63754(0, var_A0)
  loc_F77DC2: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F15B70
  'Data Table: 4C2D80
  Dim var_86 As Integer
  loc_F15A83: var_86 = KeyCode
  loc_F15A8E: If (var_86 = CInt(2)) Then
  loc_F15AAD:   If (CBool(Me.DGDepartment.Visible) = &HFF) Then
  loc_F15AC1:     var_A4 = "Name"
  loc_F15AE5:     Proc_6_68_12A2818(Me.DGDepartment, Me.Txt, KeyCode, global_56)
  loc_F15AF8:   End If
  loc_F15AFB: Else
  loc_F15B03:   If (var_86 = CInt(3)) Then
  loc_F15B22:     If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_F15B36:       var_A4 = "Name"
  loc_F15B5A:       Proc_6_68_12A2818(Me.DGEmployee, Me.Txt, KeyCode, global_52, Shift)
  loc_F15B6D:     End If
  loc_F15B6D:   End If
  loc_F15B6D: End If
  loc_F15B6D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4915C
  'Data Table: 4C2D80
  loc_E4913A: Set var_88 = Me.Txt
  loc_E49140: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4914E: Proc_6_73_E23294(var_8C)
  loc_E4915A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '13192A4
  'Data Table: 4C2D80
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_94 As String
  Dim var_F0 As Variant
  Dim var_100 As String
  Dim var_E4 As Variant
  Dim var_EC As Variant
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_E8 As Fields15
  loc_1318B4C: On Error Goto loc_131929C
  loc_1318B52: var_86 = Cancel
  loc_1318B5D: If (var_86 = CInt(0)) Then
  loc_1318B6E:   Set var_8C = Me.Txt
  loc_1318B74:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_1318BAC:   If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_1318BC1:     Set var_8C = Me.Txt
  loc_1318BC7:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1318BCF:     var_90.Text = CStr(MemVar_1F950EC)
  loc_1318BE8:     Set var_8C = Me.Txt
  loc_1318BEE:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1318C0E:     Set var_EC = Me.Txt
  loc_1318C14:     Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_1318C1C:     var_F0.Text = Proc_6_120_133AEC8(var_90)
  loc_1318C32:   Else
  loc_1318C3C:     Set var_8C = Me.Txt
  loc_1318C42:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1318C62:     Set var_EC = Me.Txt
  loc_1318C68:     Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_1318C70:     var_F0.Text = Proc_6_120_133AEC8(var_90)
  loc_1318C83:   End If
  loc_1318C8E:   Set var_8C = Me.Txt
  loc_1318C94:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_1318C99:   var_100 = "01/"
  loc_1318CF7:   var_94 = CStr(CDate(DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & Format(CVar(var_90), "mmm/yyyy")))))))
  loc_1318D05:   Set var_E8 = Me.Txt
  loc_1318D0B:   Call 0.Method_Txt_Validate0 (CInt(1), var_EC, var_94)
  loc_1318D13:   var_EC.Text = 1
  loc_1318D3C: Else
  loc_1318D44:   If (var_86 = CInt(1)) Then
  loc_1318D54:     Set var_8C = Me.Txt
  loc_1318D5A:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_1318D62:     var_100 = var_90.Text
  loc_1318D80:     Set var_E8 = Me.Txt
  loc_1318D86:     Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_1318D8E:     var_EC.Text = Proc_6_34_14EEAAC(var_94)
  loc_1318DA8:   Else
  loc_1318DB0:     If (var_86 = CInt(2)) Then
  loc_1318E01:       Set var_8C = Me.Txt
  loc_1318E07:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_1318E0F:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_1318E27:       If (var_86 Or (var_94 = vbNullString)) Then
  loc_1318E37:         Set var_8C = Me.Txt
  loc_1318E3D:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1318E45:         var_90.Text = vbNullString
  loc_1318E5E:         Set var_8C = Me.Txt
  loc_1318E64:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1318E6C:         var_90.Tag = vbNullString
  loc_1318E87:         Me.Filter = 0
  loc_1318E97:         Me.Requery -1
  loc_1318E9F:       Else
  loc_1318EDA:         Set var_E8 = Me.Txt
  loc_1318EE0:         Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_1318EE8:         var_EC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1318F1B:         var_90 = Me.Fields.Item("Code")
  loc_1318F39:         Set var_E8 = Me.Txt
  loc_1318F3F:         Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_1318F47:         var_EC.Tag = CStr(var_90.Value)
  loc_1318F5D:       End If
  loc_1318F70:       Set var_8C = Me.Txt
  loc_1318F76:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1318F92:       If (global_60 <> var_90.Text) Then
  loc_1318FA4:         Me.Filter = 0
  loc_1318FBA:         Set var_8C = Me.Txt
  loc_1318FC0:         Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_1318FE2:         Me.Filter = CVar("DepartCode='" & var_90.Tag & "'")
  loc_1319006:         Set var_8C = Me.Txt
  loc_131900C:         Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_1319014:         var_90.Text = vbNullString
  loc_131902E:         Set var_8C = Me.Txt
  loc_1319034:         Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_131903C:         var_90.Tag = vbNullString
  loc_1319055:         Me.LblEmpRef.Caption = vbNullString
  loc_131905D:       End If
  loc_1319060:     Else
  loc_1319068:       If (var_86 = CInt(3)) Then
  loc_13190B9:         Set var_8C = Me.Txt
  loc_13190BF:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13190DF:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_13190EF:           Set var_8C = Me.Txt
  loc_13190F5:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13190FD:           var_90.Text = vbNullString
  loc_1319116:           Set var_8C = Me.Txt
  loc_131911C:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1319124:           var_90.Tag = vbNullString
  loc_131913D:           Me.LblEmpRef.Caption = vbNullString
  loc_1319148:         Else
  loc_1319183:           Set var_E8 = Me.Txt
  loc_1319189:           Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_1319191:           var_EC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13191E2:           Set var_E8 = Me.Txt
  loc_13191E8:           Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_13191F0:           var_EC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1319233:           var_100 = " - "
  loc_1319238:           var_B4 = (Me.Fields.Item("Department").Value + var_100)
  loc_1319269:           var_E4 = ("mmm/yyyy" + Me.Fields.Item("Designation").Value)
  loc_131927B:           Me.LblEmpRef.Caption = CStr(1 & Format(CVar(Me.Fields.Item("Department")), "mmm/yyyy"))
  loc_131929B:         End If
  loc_131929B:       End If
  loc_131929B:     End If
  loc_131929B:   End If
  loc_131929B: End If
  loc_131929B: Exit Sub
  loc_131929C: ' Referenced from: 1318B4C
  loc_131929C: Proc_6_60_E63754()
  loc_13192A1: Exit Sub
End Sub

Private Sub ChkDepart_Click() 'F1CC14
  'Data Table: 4C2D80
  Dim var_88 As CheckBox
  Dim var_90 As TextBox
  Dim Me As Recordset15
  loc_F1CB27: If (Me.ChkDepart.Value = 1) Then
  loc_F1CB37:   Set var_88 = Me.Txt
  loc_F1CB3D:   Call 0.Method_ChkDepart_Click0 (CInt(2), var_90)
  loc_F1CB45:   var_90.Enabled = False
  loc_F1CB5F:   Set var_88 = Me.Txt
  loc_F1CB65:   Call 0.Method_ChkDepart_Click0 (CInt(2), var_90)
  loc_F1CB6D:   var_90.Text = vbNullString
  loc_F1CB87:   Set var_88 = Me.Txt
  loc_F1CB8D:   Call 0.Method_ChkDepart_Click0 (CInt(2), var_90)
  loc_F1CB95:   var_90.Tag = vbNullString
  loc_F1CBA1:   Call Proc_310_20_EBD77C()
  loc_F1CBB5:   Me.Filter = 0
  loc_F1CBC5:   Me.Requery -1
  loc_F1CBCD: Else
  loc_F1CBE8:   If (Me.ChkDepart.Value = 0) Then
  loc_F1CBF8:     Set var_88 = Me.Txt
  loc_F1CBFE:     Call 0.Method_ChkDepart_Click0 (CInt(2), var_90)
  loc_F1CC06:     var_90.Enabled = True
  loc_F1CC12:   End If
  loc_F1CC12: End If
  loc_F1CC12: Exit Sub
End Sub

Private Sub ChkEmp_Click() 'F10D64
  'Data Table: 4C2D80
  Dim var_88 As Variant
  Dim var_90 As TextBox
  loc_F10C87: If (Me.ChkEmp.Value = 1) Then
  loc_F10C97:   Set var_88 = Me.Txt
  loc_F10C9D:   Call 0.Method_ChkEmp_Click0 (CInt(3), var_90)
  loc_F10CA5:   var_90.Enabled = False
  loc_F10CBF:   Set var_88 = Me.Txt
  loc_F10CC5:   Call 0.Method_ChkEmp_Click0 (CInt(3), var_90)
  loc_F10CCD:   var_90.Text = vbNullString
  loc_F10CE7:   Set var_88 = Me.Txt
  loc_F10CED:   Call 0.Method_ChkEmp_Click0 (CInt(3), var_90)
  loc_F10CF5:   var_90.Tag = vbNullString
  loc_F10D0E:   Me.LblEmpRef.Caption = vbNullString
  loc_F10D16:   Call Proc_310_20_EBD77C()
  loc_F10D1E: Else
  loc_F10D39:   If (Me.ChkEmp.Value = 0) Then
  loc_F10D49:     Set var_88 = Me.Txt
  loc_F10D4F:     Call 0.Method_ChkEmp_Click0 (CInt(3), var_90)
  loc_F10D57:     var_90.Enabled = True
  loc_F10D63:   End If
  loc_F10D63: End If
  loc_F10D63: Exit Sub
End Sub

Private Sub Form_Load() 'F9C354
  'Data Table: 4C2D80
  Dim var_88 As Shape
  Dim var_98 As Variant
  Dim var_BC As String
  Dim var_CC As TextBox
  loc_F9C1EB: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_F9C1FE: Me.Shape1.BackColor = CLng(MemVar_1F951B4)
  loc_F9C222: Me.Recordset15.CursorLocation = 3
  loc_F9C23E: var_98 = "Select Employee.Code,Employee.Name,IsNull(Depart.Name,'') As Department,Desig.Name As Designation,IsNull(Depart.Code,'') As DepartCode From Employee Left Join Depart On Depart.Code=Employee.Department Left Join Desig on Desig.Code=Employee.Designation Order by Name"
  loc_F9C258: CVarUnk
  loc_F9C25D: VerifyVarObj
  loc_F9C263: Set var_88 = Me.DGEmployee
  loc_F9C269: LateIdStAd
  loc_F9C293: Me.DGEmployee.CursorLocation = 3
  loc_F9C2B6: var_BC = "Select Distinct G.Code,G.Name From GodownMast G iNNER join Employee E on E.Department=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F95078
  loc_F9C2C7: r_98, CVar(MemVar_1F95044), 2 CVar(var_BC & "')  Order by G.Name"), CVar(MemVar_1F95044), 2
  loc_F9C2DB: CVarUnk
  loc_F9C2E0: VerifyVarObj
  loc_F9C2E6: Set var_88 = Me.DGDepartment
  loc_F9C2EC: LateIdStAd
  loc_F9C305: Set var_88 = Me.Txt
  loc_F9C30B: Call 0.Method_Form_Load0 (CInt(0), var_C0, var_88, New, 3)
  loc_F9C31E: var_BC = Proc_6_120_133AEC8(var_C0, -1, var_88)
  loc_F9C32C: Set var_C8 = Me.Txt
  loc_F9C332: Call 0.Method_Form_Load0 (CInt(0), var_CC, var_BC)
  loc_F9C33A: var_CC.Text = New
  loc_F9C34D: Exit Sub
  loc_F9C34E: Proc_6_60_E63754(3)
  loc_F9C353: Exit Sub
End Sub

Private Sub Form_Resize() 'ED4428
  'Data Table: 4C2D80
  Dim var_8C As Label
  loc_ED4386: Call 0.Method_arg_50 (var_88)
  loc_ED4398: Me.LblFormCaption.Caption = var_88
  loc_ED43B1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED43BD: Set var_A0 = Me.TopCtrl1
  loc_ED43C3: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED43D0: Set var_8C = Me.TopCtrl1
  loc_ED43D6: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED43F0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED440B: Call 0.Method_arg_100 (var_B8)
  loc_ED441D: Me.LblFormCaption.Width = var_B8
  loc_ED4425: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E2A3C4
  'Data Table: 4C2D80
  loc_E2A3A7: Set global_52 = Nothing
  loc_E2A3B9: Set global_56 = Nothing
  loc_E2A3C0: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A30C
  'Data Table: 4C2D80
  loc_E2A2E4: On Error Goto loc_E2A304
  loc_E2A2FB: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2A303: Exit Sub
  loc_E2A304: ' Referenced from: E2A2E4
  loc_E2A304: Proc_6_60_E63754(Shift)
  loc_E2A309: Exit Sub
  loc_E2A30A: Set Me6C = 0
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1C324
  'Data Table: 4C2D80
  loc_E1C319: Me.Global.Unload Me
  loc_E1C321: Exit Sub
End Sub

Private Sub Command1_UnknownEvent_9 '1D05B70
  'Data Table: 4C2D80
  Dim var_234 As Variant
  Dim var_228 As Variant
  Dim var_23C As String
  Dim var_92 As Variant
  Dim var_25C As Variant
  Dim var_26C As Variant
  Dim var_2BC As Variant
  Dim var_2EC As Variant
  Dim var_27C As Variant
  Dim var_22C As String
  Dim unk_4C2D98 As Connection15
  Dim var_224 As Variant
  Dim var_304 As String
  Dim var_308 As String
  Dim var_238 As String
  Dim var_2DC As Variant
  Dim var_28C As Variant
  Dim var_2FC As Variant
  Dim var_318 As Variant
  Dim var_33C As String
  Dim var_230 As Variant
  Dim var_344 As Variant
  Dim var_20C As Recordset15
  Dim var_358 As Variant
  Dim var_29C As Variant
  Dim var_2CC As Variant
  Dim var_1B4 As Double
  Dim var_1BC As Double
  Dim var_108 As Double
  Dim var_110 As Double
  Dim var_208 As Recordset15
  Dim var_90 As Variant
  Dim var_328 As Variant
  Dim var_378 As Variant
  Dim var_A0 As Variant
  Dim var_C0 As Double
  Dim var_14C As Double
  Dim var_39C As Variant
  Dim var_414 As Variant
  Dim var_338 As Variant
  Dim var_388 As Variant
  Dim var_3BC As Variant
  Dim var_3CC As Variant
  Dim var_3EC As Variant
  Dim var_400 As Variant
  Dim var_404 As Variant
  Dim var_418 As Variant
  Dim var_1F4 As Double
  Dim var_3DC As Variant
  Dim var_428 As Variant
  Dim var_43C As Variant
  Dim var_3AC As Variant
  Dim var_46C As Variant
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_D8 As Double
  Dim var_E0 As Double
  Dim var_E8 As Double
  Dim var_F0 As Double
  Dim var_F8 As Double
  Dim var_124 As Double
  Dim var_11C As Double
  Dim var_C8 As Double
  Dim var_D0 As Double
  Dim var_188 As Double
  Dim var_12C As Double
  Dim var_134 As Double
  Dim var_154 As Double
  Dim var_16C As Double
  Dim var_164 As Double
  Dim var_15C As Double
  Dim var_13C As Double
  Dim var_210 As Recordset15
  Dim var_200 As Recordset15
  Dim var_220 As Recordset15
  Dim var_3FC As Variant
  Dim var_49C As Variant
  Dim var_4AC As Variant
  Dim var_44C As Variant
  Dim var_45C As Variant
  Dim var_4DC As Variant
  Dim var_4FC As Variant
  Dim var_38C As Variant
  Dim var_218 As Recordset15
  Dim var_524 As Double
  Dim var_52C As Double
  Dim var_534 As Double
  Dim var_19C As Double
  Dim var_144 As Double
  Dim var_1A4 As Double
  Dim var_538 As Variant
  Dim var_53C As Fields15
  Dim var_540 As Field20
  Dim var_178 As Double
  Dim var_1AC As Double
  Dim var_194 As Long
  Dim var_5B0 As Variant
  Dim var_51C As Variant
  Dim var_580 As Variant
  Dim var_5A0 As Variant
  Dim var_5D0 As Variant
  Dim var_5F0 As Variant
  Dim var_610 As Variant
  Dim unk_4C2E48 As Connection15
  Dim var_65C As String
  Dim var_654 As Fields15
  Dim var_4CC As Variant
  Dim var_5C0 As Variant
  Dim var_650 As Variant
  Dim var_180 As Double
  Dim var_190 As Double
  Dim var_688 As Fields15
  Dim var_684 As Variant
  Dim var_800 As Variant
  Dim var_6DC As Variant
  Dim var_8C0 As Variant
  loc_1CFE80E: Set var_230 = Me.Txt
  loc_1CFE814: Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_234)
  loc_1CFE81C: var_238 = var_234.Text
  loc_1CFE82F: Set var_224 = Me.Txt
  loc_1CFE835: Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228)
  loc_1CFE868: If (CDate(var_228.Text) < CDate("01/" & var_238)) Then
  loc_1CFE884:   MsgBox("Salary Date can't be less than Salary Month & Year", 0, var_27C, var_29C, var_2BC)
  loc_1CFE894:   Exit Sub
  loc_1CFE895: End If
  loc_1CFE8A5: Set var_224 = Me.Txt
  loc_1CFE8AB: Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_228)
  loc_1CFE8BB: Set var_230 = Me.Txt
  loc_1CFE8C1: Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_234)
  loc_1CFE8DE: var_25C = CVar(var_228) 'Address
  loc_1CFE8E5: var_29C = Format(var_25C, "MMM")
  loc_1CFE8FC: var_2CC = "YYYY"
  loc_1CFE914: var_2EC = (1 + Format(CVar(var_234), var_2CC))
  loc_1CFE924: var_170 = CStr(Ucase(var_2EC))
  loc_1CFE95E: Proc_6_17_EAAE40(var_25C, MemVar_1F95078, "Select * From Enviro WHERE LOGSITE_CODE=", var_29C, -1, var_224)
  loc_1CFE974: unk_4C2D98.Execute CStr(1 & var_25C), var_29C, 1
  loc_1CFE97F: Set var_208 = var_224
  loc_1CFE9AC: If (Me.ChkEmp.Value = 0) Then
  loc_1CFE9C3:   var_22C = "Select E.*,EC.Name,EC.Type From Employee E Left Join EmpCategory EC On E.Category=EC.Code Where E.LOGSITE_CODE='" & MemVar_1F95078
  loc_1CFE9DB:   Set var_224 = Me.Txt
  loc_1CFE9E1:   Call 0.Method_Command1_UnknownEvent_90 (CInt(3), var_228, var_238, var_22C & "' and E.Code='", var_25C)
  loc_1CFE9E9:   -1 = var_228.Tag
  loc_1CFE9F2:   var_304 = var_230 & var_238
  loc_1CFEA02:   unk_4C2D98.Execute var_304 & "'", 1, 0
  loc_1CFEA0D:   Set var_20C = var_230
  loc_1CFEA2C: Else
  loc_1CFEA47:   If (Me.ChkDepart.Value = 0) Then
  loc_1CFEA5B:     Set var_224 = Me.Txt
  loc_1CFEA61:     Call 0.Method_Command1_UnknownEvent_90 (CInt(2), var_228)
  loc_1CFEA79:     var_1FC = " And E.Department='" & var_228.Tag & "'"
  loc_1CFEA8A:   End If
  loc_1CFEA95:   Set var_224 = Me.Txt
  loc_1CFEA9B:   Call 0.Method_Command1_UnknownEvent_90 (CInt(0))
  loc_1CFEAA0:   var_26C = "01"
  loc_1CFEAB4:   var_27C = "/MMM/YYYY"
  loc_1CFEABD:   var_25C = CVar(var_228) 'Address
  loc_1CFEAC4:   var_29C = Format(var_25C, var_27C)
  loc_1CFEACC:   var_2BC = (1 + var_29C)
  loc_1CFEAD3:   Proc_6_7_F26918(var_2CC, CVar(var_234), 1)
  loc_1CFEAEC:   var_22C = "Select E.*,EC.Name,EC.Type From Employee E Left Join EmpCategory EC On E.Category=EC.Code Where E.LOGSITE_CODE='" & MemVar_1F95078
  loc_1CFEAF9:   var_2EC = CVar(var_22C & "' and (E.Resign_Date Is Null or E.Resign_Date > ") & var_2CC 
  loc_1CFEB03:   var_2FC = var_2EC & CVar(var_1FC) 
  loc_1CFEB1A:   unk_4C2D98.Execute CStr(var_2FC & ")"), var_338, -1
  loc_1CFEB25:   Set var_20C = var_230
  loc_1CFEB4D: End If
  loc_1CFEB68: If (Me.ChkEmp.Value = 0) Then
  loc_1CFEB71:   var_26C = 0
  loc_1CFEBB4:   Set var_224 = Me.Txt
  loc_1CFEBBA:   Call 0.Method_Command1_UnknownEvent_90 (CInt(3), var_228, var_304, "Select Count(*) From Salary Where LOGSITE_CODE='" & MemVar_1F95078 & "' AND Mth_Year='" & var_170 & "' And Emp_Code='", var_25C, -1, var_230)
  loc_1CFEBC2:   var_234 = var_228.Tag
  loc_1CFEBDB:   unk_4C2D98.Execute var_26C & var_304 & "'", var_344, var_27C
  loc_1CFEBE3:   var_230 = var_230.Fields
  loc_1CFEBEB:   var_228 = var_234.Item(var_26C)
  loc_1CFEBF3:    = var_344.Value
  loc_1CFEC28:   If (var_27C > 0) Then
  loc_1CFEC36:     var_27C = "Pay Roll..."
  loc_1CFEC4F:     var_25C = CVar("* Salary Already created *" & vbCrLf & "  Do you want continue!") 'String
  loc_1CFEC6B:     If (MsgBox(var_25C, &H144, var_27C, var_29C, CVar(var_234)) = 7) Then
  loc_1CFEC7B:       Me.LabelSal.Caption = "<<<<<<<  Processing Terminated  >>>>>>>"
  loc_1CFEC8D:       Me.LabelSal.Refresh
  loc_1CFEC95:       Exit Sub
  loc_1CFEC96:     End If
  loc_1CFEC96:   End If
  loc_1CFEC99: Else
  loc_1CFECB4:   If (Me.ChkDepart.Value = 0) Then
  loc_1CFECD6:     Set var_224 = Me.Txt
  loc_1CFECDC:     Call 0.Method_Command1_UnknownEvent_90 (CInt(2), var_228)
  loc_1CFECF4:     var_1FC = " And Emp_Code In (Select Code From Employee Where site_code='" & MemVar_1F95078 & "' And Department='" & var_228.Tag & "')"
  loc_1CFED09:   End If
  loc_1CFED0F:   var_26C = 0
  loc_1CFED51:   unk_4C2D98.Execute "Select Count(*) From Salary Where LOGSITE_CODE='" & MemVar_1F95078 & "' AND Mth_Year='" & var_170 & "'" & var_1FC, var_25C, -1
  loc_1CFED59:   var_224 = var_224.Fields
  loc_1CFED61:   var_26C = var_228.Item(var_228)
  loc_1CFED69:   var_230 = var_230.Value
  loc_1CFED96:   If (var_27C > 0) Then
  loc_1CFEDD9:     If (MsgBox(CVar("* Salary Already created *" & vbCrLf & "  Do you want continue!"), &H144, "Pay Roll...", var_29C, CVar(var_234)) = 7) Then
  loc_1CFEDE9:       Me.LabelSal.Caption = "<<<<<<<  Processing Terminated  >>>>>>>"
  loc_1CFEDFB:       Me.LabelSal.Refresh
  loc_1CFEE03:       Exit Sub
  loc_1CFEE04:     End If
  loc_1CFEE04:   End If
  loc_1CFEE04: End If
  loc_1CFEE0A: var_348 = var_20C.RecordCount
  loc_1CFEE18: If (var_348 <= 0) Then
  loc_1CFEE3C:   MsgBox("No more record for this month.", &H40, "Pay Roll...", var_29C, CVar(var_234))
  loc_1CFEE4C:   Exit Sub
  loc_1CFEE4D: End If
  loc_1CFEE56: unk_4C2D98.BeginTrans var_348
  loc_1CFEE5D: var_92 = 1
  loc_1CFEE60: ' Referenced from: 1D05ABF
  loc_1CFEE6F: If Not(var_20C.EOF) Then
  loc_1CFEE78:   var_358 = 0
  loc_1CFEEC9:   var_29C = CVar("Select Count(*) From Salary Where Logsite_code='" & MemVar_1F95078 & "' and Emp_Code='") & var_20C.Fields.Item("Code").Value 
  loc_1CFEEF3:   unk_4C2D98.Execute CStr(var_29C & "' AND Mth_Year='" & CVar(var_170) & "'"), var_2EC, -1
  loc_1CFEEFB:   var_230 = var_230.Fields
  loc_1CFEF03:   var_358 = var_234.Item(var_234)
  loc_1CFEF0B:   var_344 = var_344.Value
  loc_1CFEF42:   If (var_2FC > 0) Then
  loc_1CFEF45:     GoTo loc_1D05AB7
  loc_1CFEF48:   End If
  loc_1CFEF67:   var_228 = var_20C.Fields.Item("Name")
  loc_1CFEF92:   Me.LabelSal.Caption = CStr("<<<<<<<  Processing " & var_228.Value & "  >>>>>>>")
  loc_1CFEFB6:   Me.LabelSal.Refresh
  loc_1CFEFC9:   Set var_224 = Me.Txt
  loc_1CFEFCF:   Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_228, var_2FC)
  loc_1CFEFD4:   var_26C = "01/"
  loc_1CFF006:   var_1B4 = CDate(1 & Format(CVar(var_228), "mmm/yyyy"))
  loc_1CFF024:   Set var_224 = Me.Txt
  loc_1CFF02A:   Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_228, var_1B4, 1)
  loc_1CFF02F:   var_26C = "01/"
  loc_1CFF043:   var_27C = "mmm/yyyy"
  loc_1CFF08B:   var_1BC = CDate(DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & Format(CVar(var_228), var_27C))))))
  loc_1CFF0A9:   var_108 = var_1B4
  loc_1CFF0AF:   var_110 = var_1BC
  loc_1CFF0D8:   Proc_6_39_E7D3A0(var_27C, CVar(var_208.Fields.Item("GWorkingDaysInAMonth")), var_110, var_108, var_1BC)
  loc_1CFF0E0:   var_26C = 0
  loc_1CFF0F2:   If (var_27C > var_26C) Then
  loc_1CFF11B:     Proc_6_39_E7D3A0(var_27C, CVar(var_208.Fields.Item("GWorkingDaysInAMonth")), 1, var_26C)
  loc_1CFF124:     var_90 = CSng(var_27C)
  loc_1CFF134:   Else
  loc_1CFF161:     var_27C = (DateDiff("d", var_1B4, var_1BC, 1, 1) + 1)
  loc_1CFF166:     var_90 = CSng(var_27C)
  loc_1CFF170:   End If
  loc_1CFF177:   If (var_1BC > MemVar_1F950EC) Then
  loc_1CFF17D:     var_1BC = MemVar_1F950EC
  loc_1CFF180:   End If
  loc_1CFF1AF:   If Not(IsNull(CVar(var_20C.Fields.Item("Resign_Date")))) Then
  loc_1CFF1EE:     var_2CC = Format(var_1BC, "Short Date")
  loc_1CFF253:     var_29C = Format(CVar(var_20C.Fields.Item("Resign_Date")), "Short Date")
  loc_1CFF2B9:     If (1 And (CDate(Format(CVar(var_20C.Fields.Item("Resign_Date")), "Short Date")) >= CDate(Format(var_1B4, "Short Date")))) Then
  loc_1CFF313:       var_1BC = CDate(Format(DateAdd("d", CDbl(&HFF), CVar(var_20C.Fields.Item("Resign_Date"))), "Short Date"))
  loc_1CFF327:     Else
  loc_1CFF3AB:       If (CDate(Format(CVar(var_20C.Fields.Item("Resign_Date")), "Short Date")) < CDate(Format(var_1B4, "Short Date"))) Then
  loc_1CFF3AE:         GoTo loc_1D05AB7
  loc_1CFF3B1:         GoTo loc_1CFF3B4
  loc_1CFF3B4:         ' Referenced from:   1CFF3B1
  loc_1CFF3B4:       End If
  loc_1CFF3B4:     End If
  loc_1CFF3B4:   End If
  loc_1CFF3E5:   If (IsNull(CVar(var_20C.Fields.Item("Joining_Date"))) = 0) Then
  loc_1CFF424:     var_2CC = Format(var_1BC, "Short Date")
  loc_1CFF440:     var_234 = var_20C.Fields.Item("Joining_Date")
  loc_1CFF489:     var_29C = Format(CVar(var_20C.Fields.Item("Joining_Date")), "Short Date")
  loc_1CFF4EF:     If (1 And (CDate(Format(CVar(var_234), "Short Date")) >= CDate(Format(var_1B4, "Short Date")))) Then
  loc_1CFF537:       var_1B4 = CDate(Format(CVar(var_20C.Fields.Item("Joining_Date")), "Short Date"))
  loc_1CFF549:     Else
  loc_1CFF5CD:       If (CDate(Format(CVar(var_20C.Fields.Item("Joining_Date")), "Short Date")) > CDate(Format(var_1BC, "Short Date"))) Then
  loc_1CFF5D0:         GoTo loc_1D05AB7
  loc_1CFF5D3:       End If
  loc_1CFF5D3:     End If
  loc_1CFF5D6:   Else
  loc_1CFF5D9:   Else
  loc_1CFF606:     var_27C = (DateDiff("d", var_1B4, var_1BC, 1, 1) + 1)
  loc_1CFF60B:     var_A0 = CSng("Short Date")
  loc_1CFF638:     var_228 = var_20C.Fields.Item("Resign_Date")
  loc_1CFF650:     If Not(IsNull(CVar(var_228))) Then
  loc_1CFF65E:       Set var_224 = Me.Txt
  loc_1CFF664:       Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_228, CDbl(0), CDbl(0), var_A0, 1, 1)
  loc_1CFF698:       Set var_230 = Me.Txt
  loc_1CFF69E:       Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_234, 1, 1, 1, 1)
  loc_1CFF6ED:       Proc_6_7_F26918(var_3AC, CVar(var_20C.Fields.Item("Joining_Date")), 1, 1, var_1B4)
  loc_1CFF6FD:       Proc_6_7_F26918(var_3DC, var_1BC, 1)
  loc_1CFF708:       var_414 = 0
  loc_1CFF72C:       var_2BC = CVar("select count(*) from holiday where LogSite_Code='" & MemVar_1F95078 & "' AND datepart(dw,vdate)<>'1' and month(VDate)='") 'String
  loc_1CFF752:       var_3BC = var_2BC & Format(CVar(var_228), "mm") & "' and year(VDate)='" & Format(CVar(var_234), "yyyy") & "' and vdate>=" & var_3AC 
  loc_1CFF770:       unk_4C2D98.Execute CStr(var_3BC & " And vdate<=" & var_3DC), var_3FC, -1
  loc_1CFF778:       var_400 = var_400.Fields
  loc_1CFF780:       var_414 = var_404.Item(var_404)
  loc_1CFF788:       var_418 = var_418.Value
  loc_1CFF791:       var_C0 = CSng(var_428)
  loc_1CFF7D6:     Else
  loc_1CFF7E1:       Set var_224 = Me.Txt
  loc_1CFF7E7:       Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_228, var_C0, var_428)
  loc_1CFF81B:       Set var_230 = Me.Txt
  loc_1CFF821:       Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_234, 1, 1)
  loc_1CFF870:       Proc_6_7_F26918(var_3AC, CVar(var_20C.Fields.Item("Joining_Date")), 1, 1)
  loc_1CFF880:       Proc_6_7_F26918(var_3DC, var_1BC, 1)
  loc_1CFF88B:       var_414 = 0
  loc_1CFF8AF:       var_2BC = CVar("select count(*) from holiday where LOGSITE_CODE='" & MemVar_1F95078 & "' AND datepart(dw,vdate)<>'1' and month(VDate)='") 'String
  loc_1CFF8D5:       var_3BC = var_2BC & Format(CVar(var_228), "mm") & "' and year(VDate)='" & Format(CVar(var_234), "yyyy") & "' and vdate>=" & var_3AC 
  loc_1CFF8F3:       unk_4C2D98.Execute CStr(var_3BC & " And vdate<=" & var_3DC), var_3FC, -1
  loc_1CFF8FB:       var_400 = var_400.Fields
  loc_1CFF903:       var_414 = var_404.Item(var_404)
  loc_1CFF90B:       var_418 = var_418.Value
  loc_1CFF914:       var_C0 = CSng(var_428)
  loc_1CFF956:     End If
  loc_1CFF98E:     var_1F4 = CSng(Day(DateAdd("d", CDbl(&HFF), DateAdd("d", CDbl(1), var_1BC))))
  loc_1CFF9A3:     For var_42C = 1 To CInt(var_1F4):   var_86 = var_42C 'Integer
  loc_1CFF9B4:       Set var_224 = Me.Txt
  loc_1CFF9BA:       Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_228, 1, var_1F4)
  loc_1CFF9FA:       var_234 = var_20C.Fields.Item("OffDay")
  loc_1CFFA16:       var_38C = var_20C.Fields.Item("Joining_Date")
  loc_1CFFA26:       Set var_400 = Me.Txt
  loc_1CFFA2C:       Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_404, 1, 1)
  loc_1CFFA40:       var_3EC = "mmm/yyyy"
  loc_1CFFB1E:       var_378 = (CDate(Format(CVar(var_38C), "Short Date")) <= CDate(Format(CVar(CStr(var_86) & "/") & Format(CVar(var_404), var_3EC), "dd/MMM/yyyy")))
  loc_1CFFB6D:       If CBool(1 And var_378) Then
  loc_1CFFB9F:         If Not(IsNull(CVar(var_20C.Fields.Item("Resign_Date")))) Then
  loc_1CFFBC9:           Set var_230 = Me.Txt
  loc_1CFFBCF:           Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_234, 1, (Ucase(Format(CVar(CStr(var_86) & "/") & Format(CVar(var_20C.Fields.Item("Resign_Date")), "mmm/yyyy"), "DDD")) = Ucase(Left(CVar(var_234), 3))), 1, 1, 1)
  loc_1CFFBE3:           var_2CC = "mmm/yyyy"
  loc_1CFFC7F:           If (CDate(Format(CVar(var_20C.Fields.Item("Resign_Date")), "Short Date")) >= CDate(Format(CVar(CStr(var_86) & "/") & Format(CVar(var_234), var_2CC), "dd/MMM/yyyy"))) Then
  loc_1CFFC89:             var_14C = (var_14C + CDbl(1))
  loc_1CFFC8C:           End If
  loc_1CFFC8F:         Else
  loc_1CFFC96:           var_14C = (var_14C + CDbl(1))
  loc_1CFFC99:         End If
  loc_1CFFC99:       End If
  loc_1CFFC9C:     Next var_42C 'Integer
  loc_1CFFCCB:     var_28C = var_1BC
  loc_1CFFCD3:     Proc_6_7_F26918(var_2CC)
  loc_1CFFCE3:     Set var_230 = Me.Txt
  loc_1CFFCE9:     Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_234)
  loc_1CFFD0D:     var_338 = Format(CVar(var_234), "MM")
  loc_1CFFD1D:     Set var_344 = Me.Txt
  loc_1CFFD23:     Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_38C, 1)
  loc_1CFFD67:     var_27C = CVar("Select * From Attend Where LOGSITE_CODE='" & MemVar_1F95078 & "' AND Emp_Code='") 'String
  loc_1CFFD96:     var_39C = var_27C & var_20C.Fields.Item("Code").Value & "' And v_date <=" & var_2CC & " and  Month(V_Date)=" & var_338 & " And Year(V_Date)=" 
  loc_1CFFDAB:     unk_4C2D98.Execute CStr(var_39C & Format(CVar(var_38C), "YYYY")), var_3EC, -1
  loc_1CFFDB6:     Set var_210 = var_400
  loc_1CFFDF5:     var_A8 = CDbl(0)
  loc_1CFFDFB:     var_B0 = CDbl(0)
  loc_1CFFE01:     var_B8 = CDbl(0)
  loc_1CFFE07:     var_D8 = CDbl(0)
  loc_1CFFE0D:     var_E0 = CDbl(0)
  loc_1CFFE13:     var_E8 = CDbl(0)
  loc_1CFFE19:     var_F0 = CDbl(0)
  loc_1CFFE1F:     var_F8 = CDbl(0)
  loc_1CFFE25:     var_124 = CDbl(0)
  loc_1CFFE2C:     var_114 = CStr(0)
  loc_1CFFE32:     var_11C = CDbl(0)
  loc_1CFFE38:     var_C8 = CDbl(0)
  loc_1CFFE3E:     var_D0 = CDbl(0)
  loc_1CFFE44:     var_188 = CDbl(0)
  loc_1CFFE4A:     var_12C = CDbl(0)
  loc_1CFFE50:     var_134 = CDbl(0)
  loc_1CFFE56:     var_154 = CDbl(0)
  loc_1CFFE5C:     var_16C = CDbl(0)
  loc_1CFFE62:     var_164 = CDbl(0)
  loc_1CFFE68:     var_15C = CDbl(0)
  loc_1CFFE6E:     var_154 = CDbl(0)
  loc_1CFFE74:     var_13C = CDbl(0)
  loc_1CFFE8B:     If (var_210.RecordCount > 0) Then
  loc_1CFFE97:       For var_47C = var_1B4 To var_1BC:   var_1C4 = var_47C 'Double
  loc_1CFFEAB:         If var_210.EOF Then
  loc_1CFFEAE:           GoTo loc_1D0009B
  loc_1CFFEB1:         End If
  loc_1CFFEED:         If (var_210.Fields.Item("FirstShift").Value = "A") Then
  loc_1CFFEFD:           var_B0 = (var_B0 + 0.5)
  loc_1CFFF00:         End If
  loc_1CFFF3C:         If (var_210.Fields.Item("SecondShift").Value = "A") Then
  loc_1CFFF4C:           var_B0 = (var_B0 + 0.5)
  loc_1CFFF4F:         End If
  loc_1CFFF8B:         If (var_210.Fields.Item("FirstShift").Value = "E") Then
  loc_1CFFF9B:           var_B8 = (var_B8 + 0.5)
  loc_1CFFF9E:         End If
  loc_1CFFFDA:         If (var_210.Fields.Item("SecondShift").Value = "E") Then
  loc_1CFFFEA:           var_B8 = (var_B8 + 0.5)
  loc_1CFFFED:         End If
  loc_1D00029:         If (var_210.Fields.Item("FirstShift").Value = "C") Then
  loc_1D00039:           var_D8 = (var_D8 + 0.5)
  loc_1D0003C:         End If
  loc_1D00078:         If (var_210.Fields.Item("SecondShift").Value = "C") Then
  loc_1D00088:           var_D8 = (var_D8 + 0.5)
  loc_1D0008B:         End If
  loc_1D0008E:         var_210.MoveNext
  loc_1D00096:       Next var_47C 'Double
  loc_1D0009B:       ' Referenced from:   1CFFEAE
  loc_1D0009B:       GoTo loc_1D0009E
  loc_1D0009E:       ' Referenced from:   1D0009B
  loc_1D0009E:     End If
  loc_1D000DA:     If (var_20C.Fields.Item("Type").Value = "Permanent") Then
  loc_1D00119:       If (var_20C.Fields.Item("sunday").Value = "Yes") Then
  loc_1D0011F:         var_90 = var_90
  loc_1D00139:         var_E0 = (((((var_A0 - var_D8) - var_B8) - var_C0) - var_B0) - CDbl(0))
  loc_1D00143:         var_A0 = (var_A0 - var_B0)
  loc_1D00149:       Else
  loc_1D00150:         var_90 = (var_90 - CDbl(0))
  loc_1D0016A:         var_E0 = (((((var_A0 - var_D8) - var_B8) - var_C0) - var_B0) - CDbl(0))
  loc_1D0017C:         var_A0 = (((var_A0 - var_B0) - CDbl(0)) - var_C0)
  loc_1D0017F:       End If
  loc_1D001A5:       Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("DA")), var_A0, var_E0)
  loc_1D00230:       Set var_230 = Me.Txt
  loc_1D00236:       Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_234, CSng(Format(((CVar(var_A0) * var_27C) / CVar(var_90)), "0")), 1, 1)
  loc_1D00253:       var_2BC = CVar(var_234) 'Address
  loc_1D0026F:       var_2EC = StrConv(Format(var_2BC, "MMM"), 3, 0)
  loc_1D00289:       var_27C = "SELECT IncrMth, Basic, Increment FROM Employee WHERE Code='" & var_20C.Fields.Item("Code").Value 
  loc_1D002A2:       var_318 = var_27C & "' AND IncrMth='" & var_2EC & "'" 
  loc_1D002B0:       unk_4C2D98.Execute CStr(var_318), var_338, -1
  loc_1D002BB:       Set var_200 = var_344
  loc_1D002F7:       If (var_200.RecordCount > 0) Then
  loc_1D00309:         If ((var_108 = var_1B4) And (var_110 = var_1BC)) Then
  loc_1D00332:           Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("Basic")), var_344, 1, 1)
  loc_1D0035D:           Proc_6_39_E7D3A0(var_2BC, CVar(var_20C.Fields.Item("Increment")), var_90)
  loc_1D00388:           Proc_6_39_E7D3A0(var_2EC, CVar(var_20C.Fields.Item("Basic")), var_A0)
  loc_1D003A4:           var_404 = var_20C.Fields.Item("Increment")
  loc_1D003B3:           Proc_6_39_E7D3A0(var_318, CVar(var_404))
  loc_1D003D3:           var_2CC = (var_27C + var_2BC)
  loc_1D003E4:           var_338 = (var_2EC + var_318)
  loc_1D003F7:           var_3AC = ("MMM" - ((CVar(var_B0) * var_338) / CVar(var_90)))
  loc_1D00405:           var_3DC = Format(CVar(var_20C.Fields.Item("Basic")), "0")
  loc_1D0040E:           var_D0 = CSng(var_3DC)
  loc_1D0043C:         Else
  loc_1D00462:           Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("Basic")), var_D0, 1)
  loc_1D0048D:           Proc_6_39_E7D3A0(var_2BC, CVar(var_20C.Fields.Item("Increment")), 1)
  loc_1D004B4:           var_2CC = (var_27C + var_2BC)
  loc_1D004B8:           var_2DC = (CVar(var_A0) * "MMM")
  loc_1D004D1:           var_338 = Format((var_2DC / CVar(var_90)), "0")
  loc_1D004DA:           var_D0 = CSng(var_338)
  loc_1D004F7:         End If
  loc_1D0051D:         Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("Basic")), var_D0, 1)
  loc_1D00534:         var_230 = var_20C.Fields
  loc_1D0054B:         Proc_6_39_E7D3A0(var_2BC, CVar(var_230.Item("Increment")), var_27C)
  loc_1D00553:         var_2CC = (1 + var_2BC)
  loc_1D00558:         var_188 = CSng("MMM")
  loc_1D00598:         var_27C = CVar("Select *  from salarylog where LOGSITE_CODE='" & MemVar_1F95078 & "' and mth_year='" & var_170 & "' and Emp_Code='") 'String
  loc_1D005DC:         unk_4C2D98.Execute CStr(var_27C & var_20C.Fields.Item("Code").Value & "'"), "MMM", -1
  loc_1D005E7:         Set var_220 = var_230
  loc_1D0060B:         ' Referenced from:   1D00625
  loc_1D0061A:         If Not(var_220.EOF) Then
  loc_1D00620:           var_220.MoveNext
  loc_1D00625:           GoTo loc_1D0060B
  loc_1D00628:         End If
  loc_1D00651:         var_27C = CVar("Delete from salarylog where LOGSITE_CODE='" & MemVar_1F95078 & "' and mth_year='" & var_170 & "' and Emp_Code='") 'String
  loc_1D00695:         unk_4C2D98.Execute CStr(var_27C & var_20C.Fields.Item("Code").Value & "'"), "MMM", -1
  loc_1D006CF:         var_22C = "Insert Into SalaryLog(Mth_Year,Emp_Code,Basic,Increment,U_Name,U_EntDt,Site_code,logsite_code,CreationDate) VALUES('" & var_170
  loc_1D006D6:         var_27C = CVar(var_22C & "','") 'String
  loc_1D0070C:         var_2BC = var_27C & var_20C.Fields.Item("Code").Value & "'," 
  loc_1D0071F:         var_230 = var_200.Fields
  loc_1D00736:         Proc_6_39_E7D3A0(var_2DC, CVar(var_230.Item("Basic")), var_2BC, var_51C, -1, var_418)
  loc_1D00771:         Proc_6_39_E7D3A0(var_338, CVar(var_200.Fields.Item("Increment")), var_230 & var_2DC & ",", var_230)
  loc_1D0078C:         var_3AC = var_188 & var_338 & ",'" & CVar(MemVar_1F950C8) 
  loc_1D007A4:         Proc_6_8_EB1974(var_3DC, CVar(Proc_6_14_EF402C(var_3AC & "',", var_E0)))
  loc_1D007F0:         Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_404)
  loc_1D007FF:         Proc_6_7_F26918(var_4CC, CVar(var_404))
  loc_1D0081E:         unk_4C2D98.Execute CStr(var_90 & var_3DC & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "'," & var_4CC & ")"), , 
  loc_1D008AA:         Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("Basic")), "Update Employee Set Basic=")
  loc_1D008D8:         Proc_6_39_E7D3A0(var_2BC, CVar(var_20C.Fields.Item("Increment")), var_27C)
  loc_1D008E0:         var_2CC = (var_3AC + var_2BC)
  loc_1D008E4:         var_2DC = -1 & CVar(var_20C.Fields.Item("Basic")) 
  loc_1D00916:         var_344 = var_20C.Fields
  loc_1D0092E:         var_388 = var_2DC & ",Increment=0,IncrMth='' where LOGSITE_CODE='" & CVar(MemVar_1F95078) & "' And Code='" & var_344.Item("Code").Value 
  loc_1D00945:         unk_4C2D98.Execute CStr(var_388 & "'"), Me.Txt, 
  loc_1D0097A:       Else
  loc_1D00989:         If ((var_108 = var_1B4) And (var_110 = var_1BC)) Then
  loc_1D009AB:           var_25C = CVar(var_20C.Fields.Item("Basic")) 'Address
  loc_1D009B2:           Proc_6_39_E7D3A0(var_27C)
  loc_1D009CE:           var_234 = var_20C.Fields.Item("Basic")
  loc_1D009DD:           Proc_6_39_E7D3A0(var_2BC, CVar(var_234))
  loc_1D00A13:           var_2EC = (var_27C - ((CVar(var_B0) * var_2BC) / CVar(var_90)))
  loc_1D00A21:           var_338 = Format(((CVar(var_B0) * var_2BC) / CVar(var_90)) & ",Increment=0,IncrMth='' where LOGSITE_CODE='", "0")
  loc_1D00A2A:           var_D0 = CSng(var_338)
  loc_1D00A48:         Else
  loc_1D00A6E:           Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("Basic")), var_D0)
  loc_1D00AB4:           var_D0 = CSng(Format(((CVar(var_A0) * var_27C) / CVar(var_90)), "0"))
  loc_1D00AC7:         End If
  loc_1D00AED:         Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("Basic")), var_D0, 1)
  loc_1D00AF6:         var_188 = CSng(var_27C)
  loc_1D00B03:       End If
  loc_1D00B06:     Else
  loc_1D00B42:       If (var_20C.Fields.Item("sunday").Value = "Yes") Then
  loc_1D00B48:         var_90 = var_90
  loc_1D00B62:         var_E0 = (((((var_A0 - var_D8) - var_B8) - var_C0) - var_B0) - CDbl(0))
  loc_1D00B6C:         var_A0 = (var_A0 - var_B0)
  loc_1D00B72:       Else
  loc_1D00B79:         var_90 = (var_90 - CDbl(0))
  loc_1D00B93:         var_E0 = (((((var_A0 - var_D8) - var_B8) - var_C0) - var_B0) - CDbl(0))
  loc_1D00BA5:         var_A0 = (((var_A0 - var_B0) - CDbl(0)) - var_C0)
  loc_1D00BA8:       End If
  loc_1D00BCE:       Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("DA")), var_A0, var_E0, var_90, var_A0, var_E0)
  loc_1D00C14:       var_C8 = CSng(Format(((CVar(var_A0) * var_27C) / CVar(var_90)), "0"))
  loc_1D00C59:       Set var_230 = Me.Txt
  loc_1D00C5F:       Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_234, var_C8, 1, 1, var_90)
  loc_1D00C7C:       var_2BC = CVar(var_234) 'Address
  loc_1D00CB2:       var_27C = "SELECT IncrMth, Basic, Increment FROM Employee WHERE Code='" & var_20C.Fields.Item("Code").Value 
  loc_1D00CD9:       unk_4C2D98.Execute CStr(var_27C & "' AND IncrMth='" & StrConv(Format(var_2BC, "MMM"), 3, 0) & "'"), var_338, -1
  loc_1D00CE4:       Set var_200 = var_344
  loc_1D00D20:       If (var_200.RecordCount > 0) Then
  loc_1D00D49:         Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("Basic")), var_344, 1, 1)
  loc_1D00D74:         Proc_6_39_E7D3A0(var_2BC, CVar(var_20C.Fields.Item("Increment")), var_188, 1)
  loc_1D00D9B:         var_2CC = (var_27C + var_2BC)
  loc_1D00D9F:         var_2DC = (CVar(var_A0) * "MMM")
  loc_1D00DB8:         var_338 = Format((var_2DC / CVar(var_90)), "0")
  loc_1D00E04:         Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("Basic")), CSng(var_338), 1)
  loc_1D00E1B:         var_230 = var_20C.Fields
  loc_1D00E32:         Proc_6_39_E7D3A0(var_2BC, CVar(var_230.Item("Increment")), var_27C, 1)
  loc_1D00E3A:         var_2CC = (1 + var_2BC)
  loc_1D00E3F:         var_188 = CSng("MMM")
  loc_1D00E7F:         var_27C = CVar("Select *  from salarylog where LOGSITE_CODE='" & MemVar_1F95078 & "' and mth_year='" & var_170 & "' and Emp_Code='") 'String
  loc_1D00EC3:         unk_4C2D98.Execute CStr(var_27C & var_20C.Fields.Item("Code").Value & "'"), "MMM", -1
  loc_1D00ECE:         Set var_220 = var_230
  loc_1D00EF2:         ' Referenced from:     1D00F0C
  loc_1D00F01:         If Not(var_220.EOF) Then
  loc_1D00F07:           var_220.MoveNext
  loc_1D00F0C:           GoTo loc_1D00EF2
  loc_1D00F0F:         End If
  loc_1D00F38:         var_27C = CVar("Delete from salarylog where LOGSITE_CODE='" & MemVar_1F95078 & "' and mth_year='" & var_170 & "' and Emp_Code='") 'String
  loc_1D00F7C:         unk_4C2D98.Execute CStr(var_27C & var_20C.Fields.Item("Code").Value & "'"), "MMM", -1
  loc_1D00FB6:         var_22C = "Insert Into SalaryLog(Mth_Year,Emp_Code,Basic,Increment,U_Name,U_EntDt,Site_code,logsite_code,CreationDate) VALUES('" & var_170
  loc_1D00FBD:         var_27C = CVar(var_22C & "','") 'String
  loc_1D00FE2:         var_25C = var_20C.Fields.Item("Code").Value
  loc_1D00FF3:         var_2BC = var_27C & var_25C & "'," 
  loc_1D01006:         var_230 = var_200.Fields
  loc_1D0101D:         Proc_6_39_E7D3A0(var_2DC, CVar(var_230.Item("Basic")), var_2BC, var_51C, -1, var_418)
  loc_1D01058:         Proc_6_39_E7D3A0(var_338, CVar(var_200.Fields.Item("Increment")), var_230 & var_2DC & ",", var_230)
  loc_1D01073:         var_3AC = var_188 & var_338 & ",'" & CVar(MemVar_1F950C8) 
  loc_1D01085:         var_3CC = CVar(Proc_6_14_EF402C(var_3AC & "',", 1)) 'String
  loc_1D0108B:         Proc_6_8_EB1974(var_3DC, var_3CC)
  loc_1D01093:         var_3EC = var_25C & var_3DC 
  loc_1D010A6:         var_428 = var_3EC & ",'" & CVar(MemVar_1F95070) 
  loc_1D010AF:         var_43C = var_428 & "','" 
  loc_1D010B9:         var_44C = var_43C & CVar(MemVar_1F95078) 
  loc_1D010D1:         Set var_400 = Me.Txt
  loc_1D010D7:         Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_404)
  loc_1D010E6:         Proc_6_7_F26918(var_4CC, CVar(var_404))
  loc_1D01105:         unk_4C2D98.Execute CStr(var_44C & "'," & var_4CC & ")"), , 
  loc_1D01191:         Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("Basic")), "Update Employee Set Basic=")
  loc_1D011B0:         var_234 = var_20C.Fields.Item("Increment")
  loc_1D011BF:         Proc_6_39_E7D3A0(var_2BC, CVar(var_234), var_27C)
  loc_1D011C7:         var_2CC = (var_3AC + var_2BC)
  loc_1D011CB:         var_2DC = -1 & CVar(var_20C.Fields.Item("Basic")) 
  loc_1D01215:         var_388 = var_2DC & ",Increment=0,IncrMth='' where LOGSITE_CODE='" & CVar(MemVar_1F95078) & "' And Code='" & var_20C.Fields.Item("Code").Value 
  loc_1D0122C:         unk_4C2D98.Execute CStr(var_388 & "'"), var_400, 
  loc_1D01261:       Else
  loc_1D01280:         var_25C = CVar(var_20C.Fields.Item("Basic")) 'Address
  loc_1D01287:         Proc_6_39_E7D3A0(var_27C)
  loc_1D012CD:         var_D0 = CSng(Format(((CVar(var_A0) * var_27C) / CVar(var_90)), "0"))
  loc_1D012F7:         var_228 = var_20C.Fields.Item("Basic")
  loc_1D01306:         Proc_6_39_E7D3A0(var_27C, CVar(var_228), var_D0)
  loc_1D0130F:         var_188 = CSng(var_27C)
  loc_1D0131C:       End If
  loc_1D0131C:     End If
  loc_1D01327:     Set var_224 = Me.Txt
  loc_1D0132D:     Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_228, var_188)
  loc_1D01361:     Set var_230 = Me.Txt
  loc_1D01367:     Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_234, 1, 1)
  loc_1D013D8:     var_2CC = CVar("Select * from overtime where LOGSITE_CODE='" & MemVar_1F95078 & "' AND month(OTDATE)='") & Format(CVar(var_228), "mm") 
  loc_1D013F1:     var_388 = var_2CC & "' and Year(OTDATE)='" & Format(CVar(var_234), "yyyy") & "' and EmpCode='" 
  loc_1D0140F:     unk_4C2D98.Execute CStr(var_388 & var_20C.Fields.Item("Code").Value & "'"), var_3CC, -1
  loc_1D0141A:     Set var_218 = var_400
  loc_1D01452:     ' Referenced from:   1D015AD
  loc_1D01461:     If Not(var_218.EOF) Then
  loc_1D0148F:       var_27C = Left(CVar(var_218.Fields.Item("OTime")), 2)
  loc_1D014A0:       var_524 = Val(CStr(var_27C))
  loc_1D014DF:       var_52C = Val(CStr(Right(CVar(var_218.Fields.Item("OTime")), 2)))
  loc_1D01516:       var_534 = Val(CStr(Format(CVar((var_52C / CDbl(&H3C))), "0.00")))
  loc_1D0152B:       var_114 = CStr((Val(var_114) + (var_524 + var_534)))
  loc_1D01586:       Proc_6_39_E7D3A0(var_27C, CVar(var_218.Fields.Item("Amount")), CVar(Val(CStr(var_11C))), var_534, 1, 1, var_52C)
  loc_1D0158E:       var_29C = (var_524 + var_27C)
  loc_1D01593:       var_11C = CSng(CVar(var_218.Fields.Item("OTime")))
  loc_1D015A8:       var_218.MoveNext
  loc_1D015AD:       GoTo loc_1D01452
  loc_1D015B0:     End If
  loc_1D015D6:     Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("LTA")), var_11C, var_400, 1)
  loc_1D015F0:     If (var_27C > 0) Then
  loc_1D01619:       Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("LTA")), 1)
  loc_1D0165F:       var_E8 = CSng(Format(((CVar(var_A0) * var_27C) / CVar(var_90)), "0"))
  loc_1D01672:     End If
  loc_1D01698:     Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("HRA")), var_E8, 1)
  loc_1D016B2:     If (var_27C > 0) Then
  loc_1D016DB:       Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("HRA")), 1)
  loc_1D01704:       var_F8 = CSng(Format(var_27C, "0"))
  loc_1D01715:     End If
  loc_1D0173B:     Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("Medical")), var_F8, 1)
  loc_1D01755:     If (var_27C > 0) Then
  loc_1D0177E:       Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("Medical")), 1)
  loc_1D017A7:       var_124 = CSng(Format(var_27C, "0"))
  loc_1D017B8:     End If
  loc_1D017DE:     Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("Conveyance")), var_124, 1)
  loc_1D017F8:     If (var_27C > 0) Then
  loc_1D01821:       Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("Conveyance")), 1)
  loc_1D01867:       var_F0 = CSng(Format(((CVar(var_A0) * var_27C) / CVar(var_90)), "0"))
  loc_1D0187A:     End If
  loc_1D018A0:     Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("Other_Allow")), var_F0, 1)
  loc_1D018BA:     If (var_27C > 0) Then
  loc_1D018E3:       Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("Other_Allow")), 1)
  loc_1D0190C:       var_164 = CSng(Format(var_27C, "0"))
  loc_1D0191D:     End If
  loc_1D01943:     Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("Other_Deduc")), var_164, 1)
  loc_1D0195D:     If (var_27C > 0) Then
  loc_1D01986:       Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("Other_Deduc")), 1)
  loc_1D019AF:       var_154 = CSng(Format(var_27C, "0"))
  loc_1D019C0:     End If
  loc_1D019E6:     Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("Income_Tax")), var_154, 1)
  loc_1D01A00:     If (var_27C > 0) Then
  loc_1D01A29:       Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("Income_Tax")), 1)
  loc_1D01A49:       var_2BC = Format(var_27C, "0")
  loc_1D01A52:       var_15C = CSng(var_2BC)
  loc_1D01A63:     End If
  loc_1D01A9F:     If (var_20C.Fields.Item("PF_YN").Value = "Y") Then
  loc_1D01AA9:       var_26C = CVar((var_D0 + var_C8)) 'Double
  loc_1D01AD4:       Proc_6_39_E7D3A0(var_27C, CVar(var_208.Fields.Item("PF_LIMIT")), "Y", var_15C, 1)
  loc_1D01AE8:       If (1 > var_27C) Then
  loc_1D01B11:         Proc_6_39_E7D3A0(var_27C, CVar(var_208.Fields.Item("PF_LIMIT")), 1)
  loc_1D01B3C:         Proc_6_39_E7D3A0(var_2BC, CVar(var_208.Fields.Item("PF_EMPLOYEE")))
  loc_1D01B7C:         var_12C = CSng(Format(((var_27C * var_2BC) / 100), "0"))
  loc_1D01B9A:       Else
  loc_1D01BC0:         Proc_6_39_E7D3A0(var_27C, CVar(var_208.Fields.Item("PF_EMPLOYEE")), var_12C, 1)
  loc_1D01BE1:         var_26C = CVar((var_D0 + var_C8)) 'Double
  loc_1D01BF1:         var_2BC = (("PF_EMPLOYEE" * var_27C) / 100)
  loc_1D01C08:         var_12C = CSng(Format(var_2BC, "0"))
  loc_1D01C1B:       End If
  loc_1D01C22:       var_26C = CVar((var_D0 + var_C8)) 'Double
  loc_1D01C4D:       Proc_6_39_E7D3A0(var_27C, CVar(var_208.Fields.Item("PF_LIMIT")), "PF_EMPLOYEE", var_12C, 1)
  loc_1D01C61:       If (1 > var_27C) Then
  loc_1D01C8A:         Proc_6_39_E7D3A0(var_27C, CVar(var_208.Fields.Item("PF_LIMIT")), 1)
  loc_1D01CB5:         Proc_6_39_E7D3A0(var_2BC, CVar(var_208.Fields.Item("PF_EMPLOYER")))
  loc_1D01CC9:         var_2FC = "0"
  loc_1D01CEC:         var_318 = Format(((var_27C * var_2BC) / 100), var_2FC)
  loc_1D01CF5:         var_16C = CSng(var_318)
  loc_1D01D13:       Else
  loc_1D01D39:         Proc_6_39_E7D3A0(var_27C, CVar(var_208.Fields.Item("PF_EMPLOYER")), var_16C, 1)
  loc_1D01D5A:         var_26C = CVar((var_D0 + var_C8)) 'Double
  loc_1D01D78:         var_2EC = Format((("PF_EMPLOYER" * var_27C) / 100), "0")
  loc_1D01D81:         var_16C = CSng(var_2EC)
  loc_1D01D94:       End If
  loc_1D01D94:     End If
  loc_1D01DA3:     var_27C = "0"
  loc_1D01DC4:     var_25C = CVar(((((((var_D0 + var_C8) + var_F8) + var_F0) + var_E8) + var_124) + var_164)) 'Double
  loc_1D01DDA:     var_2BC = (Format(CVar(var_208.Fields.Item("PF_EMPLOYER")), var_27C) + CVar(var_100))
  loc_1D01DE5:     var_2CC = ((("PF_EMPLOYER" * var_27C) / 100) + CVar(var_11C))
  loc_1D01DEA:     var_19C = CSng((("PF_EMPLOYER" * var_27C) / 100))
  loc_1D01E2E:     Proc_6_39_E7D3A0(var_27C, CVar(var_208.Fields.Item("ESI_LIMIT")), CVar(var_19C), CDbl(0), var_19C, 1, 1)
  loc_1D01E54:     var_234 = var_20C.Fields.Item("ESI_YN")
  loc_1D01E86:     If CBool((var_16C > var_27C) Or (var_234.Value <> "Y")) Then
  loc_1D01E89:       GoTo loc_1D0217F
  loc_1D01E8C:     End If
  loc_1D01EC5:     If (Proc_6_38_E69628(CVar(var_208.Fields.Item("ESIBasic")), 1, 1) = "Y") Then
  loc_1D01ECF:       var_13C = (var_13C + var_D0)
  loc_1D01ED2:     End If
  loc_1D01F0B:     If (Proc_6_38_E69628(CVar(var_208.Fields.Item("ESIDA")), CDbl(0), 1) = "Y") Then
  loc_1D01F15:       var_13C = (var_13C + var_C8)
  loc_1D01F18:     End If
  loc_1D01F51:     If (Proc_6_38_E69628(CVar(var_208.Fields.Item("ESIHRA")), CDbl(0)) = "Y") Then
  loc_1D01F5B:       var_13C = (var_13C + var_F8)
  loc_1D01F5E:     End If
  loc_1D01F97:     If (Proc_6_38_E69628(CVar(var_208.Fields.Item("ESIConvey")), CDbl(0)) = "Y") Then
  loc_1D01FA1:       var_13C = (var_13C + var_F0)
  loc_1D01FA4:     End If
  loc_1D01FDD:     If (Proc_6_38_E69628(CVar(var_208.Fields.Item("ESIOther")), CDbl(0)) = "Y") Then
  loc_1D01FE7:       var_13C = (var_13C + var_164)
  loc_1D01FEA:     End If
  loc_1D02023:     If (Proc_6_38_E69628(CVar(var_208.Fields.Item("ESILTA")), CDbl(0)) = "Y") Then
  loc_1D0202D:       var_13C = (var_13C + var_E8)
  loc_1D02030:     End If
  loc_1D0204F:     var_25C = CVar(var_208.Fields.Item("esi_employee")) 'Address
  loc_1D02056:     Proc_6_39_E7D3A0(var_27C, var_25C, CDbl(0))
  loc_1D02077:     Proc_6_130_E24F50(CSng(((CVar(CDbl(0)) * var_27C) / 100)), 1)
  loc_1D020A7:     var_25C = CVar((var_25C - Int(var_25C))) 'Double
  loc_1D02107:     var_144 = CSng(Right(Str(Format(CSng(Format("0.00", "0.00")), "0.00")), 1))
  loc_1D02124:     If ((var_144 < CDbl(5)) And (var_144 > CDbl(0))) Then
  loc_1D0213C:       var_13C = ((var_13C - (var_144 / CDbl(&H64))) + 0.05)
  loc_1D02142:     Else
  loc_1D02149:       If (var_144 > CDbl(5)) Then
  loc_1D02175:         var_13C = CSng(Format("0.0", "0.0"))
  loc_1D0217F:       End If
  loc_1D0217F:       ' Referenced from:   1D01E89
  loc_1D0217F:     End If
  loc_1D021A7:     var_25C = CVar(((((var_12C + var_13C) + var_100) + var_154) + var_15C)) 'Double
  loc_1D021B7:     var_1A4 = CSng(Format("0.0", "0"))
  loc_1D021F5:     Proc_6_7_F26918((("PF_EMPLOYER" * "0") / 100), var_1BC, var_1A4, 1, 1, var_13C, 1)
  loc_1D0220C:     var_404 = var_20C.Fields
  loc_1D0222C:     Proc_6_7_F26918(var_3EC, var_1BC, 1, var_13C)
  loc_1D02237:     var_328 = 0
  loc_1D0225B:     var_27C = CVar("Select IsNull(Sum(Amount),0) From Loan Where LOGSITE_CODE='" & MemVar_1F95078 & "' AND V_Type='LO' And Emp_Code='") 'String
  loc_1D02275:     var_238 = CStr(var_27C & var_20C.Fields.Item("Code").Value & "' and V_Date<=" & (("PF_EMPLOYER" * var_27C) / 100))
  loc_1D0227F:     unk_4C2D98.Execute var_238, var_2EC, -1
  loc_1D02287:     var_230 = var_230.Fields
  loc_1D0228F:     var_328 = var_234.Item(var_234)
  loc_1D02297:     var_344 = var_344.Value
  loc_1D022A2:     Proc_6_39_E7D3A0(var_318, var_2FC, var_2FC, var_144)
  loc_1D022D0:     Proc_6_39_E7D3A0(var_388, CVar(var_20C.Fields.Item("OP_Loan")), var_318)
  loc_1D022D8:     var_39C = (1 + var_388)
  loc_1D022E2:     var_49C = 0
  loc_1D02306:     var_3BC = CVar("Select IsNull(Sum(Amount),0) From Loan Where LOGSITE_CODE='" & MemVar_1F95078 & "' and V_Type In('LR','LR1') And Emp_Code='") 'String
  loc_1D0232A:     unk_4C2D98.Execute CStr(var_3BC & var_404.Item("Code").Value & "' and V_Date<=" & var_3EC), var_428, -1
  loc_1D02332:     var_538 = var_538.Fields
  loc_1D0233A:     var_49C = var_53C.Item(var_53C)
  loc_1D02342:     var_540 = var_540.Value
  loc_1D0234D:     Proc_6_39_E7D3A0(var_44C, var_43C, var_43C)
  loc_1D02355:     var_45C = (var_20C.Fields.Item("Code").Value - var_44C)
  loc_1D0235A:     var_178 = CSng(var_44C & "',")
  loc_1D023BB:     If (var_178 > CDbl(0)) Then
  loc_1D023EC:       Proc_6_39_E7D3A0(var_27C, CVar(var_20C.Fields.Item("OP_Inst")), CVar(var_178), CDbl(0))
  loc_1D02400:       If (var_178 > var_27C) Then
  loc_1D0241A:         var_228 = var_20C.Fields.Item("OP_Inst")
  loc_1D02429:         Proc_6_39_E7D3A0(var_27C, CVar(var_228))
  loc_1D02452:         var_1AC = CSng(Format(var_27C, "0"))
  loc_1D02466:       Else
  loc_1D0248F:         var_1AC = CSng(Format(var_178, "0"))
  loc_1D02499:       End If
  loc_1D024A5:       If (CDbl((var_19C - var_1A4)) > CDbl(0)) Then
  loc_1D024B4:         If (var_1AC < CDbl((var_19C - var_1A4))) Then
  loc_1D024C6:           var_27C = "0"
  loc_1D024D3:           var_25C = CVar((var_178 - var_1AC)) 'Double
  loc_1D024E3:           var_178 = CSng(Format("0", var_27C))
  loc_1D024F2:         Else
  loc_1D024F5:           var_1AC = CDbl(0)
  loc_1D024F8:         End If
  loc_1D024FB:       Else
  loc_1D024FE:         var_1AC = CDbl(0)
  loc_1D02501:       End If
  loc_1D02508:       If (var_1AC > CDbl(0)) Then
  loc_1D0251D:         Call Proc_310_22_F92F18(MemVar_1F95044, "LR1", var_1BC, var_238, var_1AC, var_1AC, var_178, 1)
  loc_1D02526:         var_194 = CLng(var_238)
  loc_1D02542:         Call Proc_310_23_100A0D4(MemVar_1F95044, "LR1", var_1BC, var_238, var_194, 1, var_1AC)
  loc_1D0254A:         var_98 = var_238
  loc_1D02562:         Call Proc_310_24_F92D6C(MemVar_1F95044, "LR1", var_1BC, var_238, 1)
  loc_1D0256A:         var_1F8 = var_238
  loc_1D0257B:         Set var_224 = Me.Txt
  loc_1D02581:         Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228, 1, var_1AC)
  loc_1D02590:         Proc_6_7_F26918(var_27C, CVar(var_228), 1)
  loc_1D025A7:         var_230 = var_20C.Fields
  loc_1D025EF:         var_524 = Val(CStr(var_20C.Fields.Item("OP_Inst").Value))
  loc_1D025FD:         Set var_400 = Me.Txt
  loc_1D02603:         Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_404, var_524)
  loc_1D0265E:         Set var_53C = Me.Txt
  loc_1D02664:         Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_540, 1)
  loc_1D02698:         Proc_6_8_EB1974(var_5C0, CVar(Proc_6_14_EF402C(1, 1, 1)))
  loc_1D026B6:         var_238 = "Insert Into Loan(Sr_No,V_Type,V_Date,Emp_Code,Amount,Installment,Remark,AC_Code,MTH_YEAR,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values (" & CStr(var_194)
  loc_1D026CC:         var_2CC = CVar(var_238 & ",'LR1',") & var_27C & ",'" 
  loc_1D02704:         var_3AC = var_2CC & var_230.Item("Code").Value & "'," & CVar(var_1AC) & "," & CVar(var_524) & ",'Being Loan Inst. Deduct For The Month of " 
  loc_1D0272B:         var_4DC = var_3AC & Format(CVar(var_404), "MMM/yy") & "','" & var_20C.Fields.Item("Ac_Code").Value & "','" & Format(CVar(var_540), "MMMyyyy") 
  loc_1D0273E:         var_51C = var_4DC & "','" & CVar(MemVar_1F95070) 
  loc_1D0278B:         unk_4C2D98.Execute CStr(var_51C & "','" & CVar(MemVar_1F950C8) & "'," & var_5C0 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_650, -1
  loc_1D0281A:         var_27C = CVar("SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and SUBCODE='") 'String
  loc_1D02837:         var_228 = var_208.Fields.Item("Loan_AC")
  loc_1D0285E:         unk_4C2E48.Execute CStr(var_27C & var_228.Value & "'"), var_2CC, -1
  loc_1D02869:         Set var_21C = var_230
  loc_1D028A0:         If (Me.Recordset15.RecordCount > 0) Then
  loc_1D028AE:           Set var_224 = Me.Txt
  loc_1D028B4:           Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228, var_230)
  loc_1D028C3:           Proc_6_7_F26918(var_27C, CVar(var_228), var_654)
  loc_1D02923:           var_524 = Val(CStr(var_1AC))
  loc_1D02931:           Set var_400 = Me.Txt
  loc_1D02937:           Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_404, var_524)
  loc_1D02992:           Proc_6_8_EB1974(var_51C, CVar(Proc_6_14_EF402C(1, 1)))
  loc_1D029FF:           var_22C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_Prefix,V_No,Site_Code,V_Date,SubCode,ContraSub,AmtCr,Narration,mth_year,Emp_Code,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) Values ('" & var_98
  loc_1D02A4B:           var_2EC = CVar(var_22C & "',1,'LR1','" & var_1F8 & "'," & CStr(var_194) & ",'" & MemVar_1F95070 & "',") & var_27C & ",'" & var_208.Fields.Item("Loan_AC").Value 
  loc_1D02A78:           var_3AC = var_2EC & "','" & var_20C.Fields.Item("Ac_Code").Value & "'," & CVar(var_524) & ",'Being Loan Inst. Deduct For The Month of " 
  loc_1D02AAB:           var_46C = var_3AC & Format(CVar(var_404), "MMM/yy") & "','" & CVar(var_170) & "','" & var_20C.Fields.Item("Code").Value & "','" 
  loc_1D02ADE:           var_5C0 = var_46C & CVar(MemVar_1F950C8) & "'," & var_51C & ",'A','" & Me.Recordset15.Fields.Item("GroupCode").Value & "','" 
  loc_1D02B0F:           unk_4C2D98.Execute CStr(var_5C0 & Me.Recordset15.Fields.Item("GroupNature").Value & "','" & CVar(MemVar_1F95078) & "')"), var_684, -1
  loc_1D02B9A:         Else
  loc_1D02BA5:           Set var_224 = Me.Txt
  loc_1D02BAB:           Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228, var_688)
  loc_1D02BBA:           Proc_6_7_F26918(var_27C, CVar(var_228))
  loc_1D02BD1:           var_230 = var_208.Fields
  loc_1D02C1A:           var_524 = Val(CStr(var_1AC))
  loc_1D02C28:           Set var_400 = Me.Txt
  loc_1D02C2E:           Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_404, var_524)
  loc_1D02C89:           Proc_6_8_EB1974(var_51C, CVar(Proc_6_14_EF402C(1, 1)))
  loc_1D02CCD:           var_654 = Me.Recordset15.Fields
  loc_1D02CDD:           var_5D0 = var_654.Item("GroupNature").Value
  loc_1D02CF6:           var_22C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_Prefix,V_No,Site_Code,V_Date,SubCode,ContraSub,AmtCr,Narration,mth_year,Emp_Code,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) Values ('" & var_98
  loc_1D02D3B:           var_2CC = CVar(var_22C & "',1,'LR1','" & var_1F8 & "'," & CStr(var_194) & ",'" & MemVar_1F95070 & "',") & var_27C & ",'" 
  loc_1D02D6F:           var_3AC = var_2CC & var_230.Item("Loan_AC").Value & "','" & var_20C.Fields.Item("Ac_Code").Value & "'," & CVar(var_524) & ",'Being Loan Inst. Deduct For The Month of " 
  loc_1D02D99:           var_45C = var_3AC & Format(CVar(var_404), "MMM/yy") & "','" & CVar(var_170) & "','" & var_20C.Fields.Item("Code").Value 
  loc_1D02DCC:           var_5B0 = var_45C & "','" & CVar(MemVar_1F950C8) & "'," & var_51C & ",'A','" & Me.Recordset15.Fields.Item("GroupCode").Value 
  loc_1D02E06:           unk_4C2D98.Execute CStr(var_5B0 & "','" & var_5D0 & "','" & CVar(MemVar_1F95078) & "')"), var_684, -1
  loc_1D02E8E:         End If
  loc_1D02EA9:         var_27C = CVar("SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  and SUBCODE='") 'String
  loc_1D02EC6:         var_228 = var_20C.Fields.Item("Ac_Code")
  loc_1D02EED:         unk_4C2E48.Execute CStr(var_27C & var_228.Value & "'"), var_2CC, -1
  loc_1D02EF8:         Set var_21C = var_230
  loc_1D02F2F:         If (Me.Recordset15.RecordCount > 0) Then
  loc_1D02F3D:           Set var_224 = Me.Txt
  loc_1D02F43:           Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228, var_230)
  loc_1D02F52:           Proc_6_7_F26918(var_27C, CVar(var_228), var_688)
  loc_1D02FB2:           var_524 = Val(CStr(var_1AC))
  loc_1D02FE7:           Proc_6_8_EB1974(var_45C, CVar(Proc_6_14_EF402C(var_524, 1)))
  loc_1D03054:           var_22C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_Prefix,V_No,Site_Code,V_Date,SubCode,ContraSub,AmtDr,Narration,mth_year,Emp_Code,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) Values ('" & var_98
  loc_1D030A0:           var_2EC = CVar(var_22C & "',2,'LR1','" & var_1F8 & "'," & CStr(var_194) & ",'" & MemVar_1F95070 & "',") & var_27C & ",'" & var_20C.Fields.Item("Ac_Code").Value 
  loc_1D030D7:           var_3BC = var_2EC & "','" & var_208.Fields.Item("Loan_AC").Value & "'," & CVar(var_524) & ",'Being Loan Inst. Deduct','" & CVar(var_170) 
  loc_1D0311A:           var_4FC = var_3BC & "','" & var_20C.Fields.Item("Code").Value & "','" & CVar(MemVar_1F950C8) & "'," & var_45C & ",'A','" & Me.Recordset15.Fields.Item("GroupCode").Value 
  loc_1D03154:           unk_4C2D98.Execute CStr(var_4FC & "','" & Me.Recordset15.Fields.Item("GroupNature").Value & "','" & CVar(MemVar_1F95078) & "')"), var_5D0, -1
  loc_1D031D3:         Else
  loc_1D031DE:           Set var_224 = Me.Txt
  loc_1D031E4:           Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228)
  loc_1D031EC:           var_25C = CVar(var_228) 'Address
  loc_1D031F3:           Proc_6_7_F26918(var_27C, var_25C)
  loc_1D03212:           var_234 = var_20C.Fields.Item("Ac_Code")
  loc_1D03253:           var_524 = Val(CStr(var_1AC))
  loc_1D03288:           Proc_6_8_EB1974(var_45C, CVar(Proc_6_14_EF402C(var_524, var_654)))
  loc_1D032CC:           var_53C = Me.Recordset15.Fields
  loc_1D032F5:           var_22C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_Prefix,V_No,Site_Code,V_Date,SubCode,ContraSub,AmtDr,Narration,mth_year,Emp_Code,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) Values ('" & var_98
  loc_1D0333A:           var_2CC = CVar(var_22C & "',2,'LR1','" & var_1F8 & "'," & CStr(var_194) & ",'" & MemVar_1F95070 & "',") & var_27C & ",'" 
  loc_1D03341:           var_2EC = var_2CC & var_234.Value 
  loc_1D0334A:           var_2FC = var_2EC & "','" 
  loc_1D03351:           var_338 = var_2FC & var_208.Fields.Item("Loan_AC").Value 
  loc_1D03381:           var_3CC = var_338 & "'," & CVar(var_524) & ",'Being Loan Inst. Deduct','" & CVar(var_170) & "','" 
  loc_1D03388:           var_3EC = var_3CC & var_20C.Fields.Item("Code").Value 
  loc_1D03391:           var_3FC = var_3EC & "','" 
  loc_1D033C4:           var_51C = var_3FC & CVar(MemVar_1F950C8) & "'," & var_45C & ",'A','" & Me.Recordset15.Fields.Item("GroupCode").Value & "','" 
  loc_1D033E7:           var_5C0 = var_51C & var_53C.Item("GroupNature").Value & "','" & CVar(MemVar_1F95078) & "')" 
  loc_1D033F5:           unk_4C2D98.Execute CStr(var_5C0), var_5D0, -1
  loc_1D03471:         End If
  loc_1D0347E:         var_524 = Val(CStr(var_194))
  loc_1D0348C:         Proc_6_7_F26918(var_25C, var_1BC, var_524)
  loc_1D0349C:         Proc_6_7_F26918(var_2CC, var_1BC)
  loc_1D034CF:         var_33C = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_524) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_1D034FA:         var_2BC = CVar(var_33C & MemVar_1F95078 & "') and PREFIX='" & var_1F8 & "' AND V_Type='LR1' and Date_From<=") & var_25C & " aND Date_TO>=" 
  loc_1D0350F:         unk_4C2D98.Execute CStr(var_2BC & var_2CC), var_2EC, -1
  loc_1D0353F:       End If
  loc_1D0353F:     End If
  loc_1D0355B:     var_25C = CVar((var_1A4 + var_1AC)) 'Double
  loc_1D0356B:     var_1A4 = CSng(Format(var_25C, "0"))
  loc_1D03589:     var_224 = var_20C.Fields
  loc_1D03591:     var_228 = var_224.Item("Code")
  loc_1D03599:     var_25C = var_228.Value
  loc_1D035A9:     Proc_6_7_F26918(var_2CC, var_1BC, var_1A4, 1)
  loc_1D035C0:     var_404 = var_20C.Fields
  loc_1D035E0:     Proc_6_7_F26918(var_3CC, var_1BC, 1)
  loc_1D035EB:     var_328 = 0
  loc_1D0360F:     var_27C = CVar("Select IsNull(Sum(Amount),0) From Loan Where LOGSITE_CODE='" & MemVar_1F95078 & "' and  V_Type='ADE' And Emp_Code='") 'String
  loc_1D03633:     unk_4C2D98.Execute CStr(var_27C & var_25C & "' and V_Date<=" & var_2CC), var_2EC, -1
  loc_1D0363B:     var_230 = var_230.Fields
  loc_1D03643:     var_328 = var_234.Item(var_234)
  loc_1D0364B:     var_344 = var_344.Value
  loc_1D0366A:     var_400 = var_20C.Fields.Item("OP_Advance")
  loc_1D03679:     Proc_6_39_E7D3A0(var_338, CVar(var_400), var_2FC, var_2FC)
  loc_1D03681:     var_388 = (var_224 + var_338)
  loc_1D0368B:     var_4AC = 0
  loc_1D036B2:     var_3BC = "Select IsNull(Sum(Amount),0) From Loan Where V_Type In('AR1','AR2') AND Emp_Code='" & var_404.Item("Code").Value & "' and V_Date<=" 
  loc_1D036C7:     unk_4C2D98.Execute CStr(var_3BC & var_3CC), var_3EC, -1
  loc_1D036CF:     var_538 = var_538.Fields
  loc_1D036D7:     var_4AC = var_53C.Item(var_53C)
  loc_1D036DF:     var_540 = var_540.Value
  loc_1D036E7:     var_428 = (var_3FC - var_3FC)
  loc_1D036EC:     var_180 = CSng(var_3FC & CVar(MemVar_1F950C8))
  loc_1D0373B:     var_190 = CDbl(0)
  loc_1D03745:     If (var_180 > CDbl(0)) Then
  loc_1D0374F:       If (var_19C > var_1A4) Then
  loc_1D0375E:         If (var_180 > CDbl((var_19C - var_1A4))) Then
  loc_1D03768:           var_190 = (var_19C - var_1A4)
  loc_1D03772:           var_180 = (var_180 - var_190)
  loc_1D03778:         Else
  loc_1D0377B:           var_190 = var_180
  loc_1D03781:           var_180 = CDbl(0)
  loc_1D03784:         End If
  loc_1D03787:       Else
  loc_1D0378A:         var_190 = CDbl(0)
  loc_1D0378D:       End If
  loc_1D03793:       var_26C = 0
  loc_1D037B0:       var_22C = "Select IsNull(Max(Sr_No),0)+1 From Loan Where LOGSITE_CODE='" & MemVar_1F95078
  loc_1D037B7:       var_238 = "Select IsNull(Sum(Amount),0) From Loan Where LOGSITE_CODE='" & MemVar_1F95078 & "' and  V_Type='AR2'"
  loc_1D037C0:       unk_4C2D98.Execute var_238, var_25C, -1
  loc_1D037C8:       var_224 = var_224.Fields
  loc_1D037D0:       var_26C = var_228.Item(var_228)
  loc_1D037D8:       var_230 = var_230.Value
  loc_1D0380E:       Call Proc_310_22_F92F18(MemVar_1F95044, "AR2", var_1BC, var_238, CLng(var_27C), var_27C, var_190)
  loc_1D03817:       var_194 = CLng(var_238)
  loc_1D03833:       Call Proc_310_23_100A0D4(MemVar_1F95044, "AR2", var_1BC, var_238, var_194, var_180)
  loc_1D0383B:       var_98 = var_238
  loc_1D03853:       Call Proc_310_24_F92D6C(MemVar_1F95044, "AR2", var_1BC, var_238, var_190)
  loc_1D0385B:       var_1F8 = var_238
  loc_1D0386C:       Proc_6_7_F26918(var_25C, var_1BC, var_180)
  loc_1D038A3:       Set var_230 = Me.Txt
  loc_1D038A9:       Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_234, var_190)
  loc_1D03904:       Proc_6_8_EB1974(var_51C, CVar(Proc_6_14_EF402C(1, 1)))
  loc_1D03922:       var_238 = "Insert Into Loan(Sr_No,V_Type,V_Date,Emp_Code,Amount,Installment,Remark,AC_Code,mth_year,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values (" & CStr(var_194)
  loc_1D03938:       var_2BC = CVar(var_238 & ",'AR2',") & var_25C & ",'" 
  loc_1D03970:       var_388 = var_2BC & var_20C.Fields.Item("Code").Value & "'," & CVar(var_190) & "," & CVar(var_190) & ",'Being Advance Inst. Deduct For The Month of " 
  loc_1D039A3:       var_44C = var_388 & Format(CVar(var_234), "MMM/yy") & "','" & var_20C.Fields.Item("Ac_Code").Value & "','" & CVar(var_170) & "','" 
  loc_1D039E3:       var_5A0 = var_44C & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_51C & ",'A','" & CVar(MemVar_1F95078) 
  loc_1D039FA:       unk_4C2D98.Execute CStr(var_5A0 & "')"), var_5C0, -1
  loc_1D03A86:       var_228 = var_208.Fields.Item("AdvanceAc")
  loc_1D03A96:       var_27C = "SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE SUBCODE='" & var_228.Value 
  loc_1D03AAD:       unk_4C2E48.Execute CStr(var_27C & "'"), var_2BC, -1
  loc_1D03AB8:       Set var_21C = var_230
  loc_1D03AE9:       If (Me.Recordset15.RecordCount > 0) Then
  loc_1D03AF7:         Set var_224 = Me.Txt
  loc_1D03AFD:         Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228, var_230)
  loc_1D03B0C:         Proc_6_7_F26918(var_27C, CVar(var_228), var_400)
  loc_1D03B6A:         Set var_400 = Me.Txt
  loc_1D03B70:         Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_404)
  loc_1D03BF2:         Proc_6_8_EB1974(var_5A0, CVar(Proc_6_14_EF402C(1, 1)))
  loc_1D03C5F:         var_22C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_Prefix,V_No,Site_Code,V_Date,SubCode,ContraSub,AmtCr,Narration,mth_year,Emp_Code,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) Values ('" & var_98
  loc_1D03CAB:         var_2EC = CVar(var_22C & "',1,'AR2','" & var_1F8 & "'," & CStr(var_194) & ",'" & MemVar_1F95070 & "',") & var_27C & ",'" & var_208.Fields.Item("AdvanceAc").Value 
  loc_1D03CD8:         var_3AC = var_2EC & "','" & var_20C.Fields.Item("Ac_Code").Value & "'," & CVar(var_190) & ",'Being Advance Inst. Deduct For The Month of " 
  loc_1D03D0B:         var_46C = var_3AC & Format(CVar(var_404), "MMM/yy") & " From " & var_20C.Fields.Item("Name").Value & "','" & CVar(var_170) & "','" 
  loc_1D03D45:         var_5F0 = var_46C & var_20C.Fields.Item("Code").Value & "','" & CVar(MemVar_1F950C8) & "'," & var_5A0 & ",'A','" & Me.Recordset15.Fields.Item("GroupCode").Value 
  loc_1D03D7F:         unk_4C2D98.Execute CStr(var_5F0 & "','" & Me.Recordset15.Fields.Item("GroupNature").Value & "','" & CVar(MemVar_1F95078) & "')"), var_6DC, -1
  loc_1D03E12:       Else
  loc_1D03E1D:         Set var_224 = Me.Txt
  loc_1D03E23:         Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228, var_6E0)
  loc_1D03E32:         Proc_6_7_F26918(var_27C, CVar(var_228))
  loc_1D03E49:         var_230 = var_208.Fields
  loc_1D03E90:         Set var_400 = Me.Txt
  loc_1D03E96:         Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_404)
  loc_1D03F18:         Proc_6_8_EB1974(var_5A0, CVar(Proc_6_14_EF402C(1, 1)))
  loc_1D03F32:         var_654 = Me.Recordset15.Fields
  loc_1D03F42:         var_5D0 = var_654.Item("GroupCode").Value
  loc_1D03F85:         var_22C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_Prefix,V_No,Site_Code,V_Date,SubCode,ContraSub,AmtCr,Narration,mth_year,Emp_Code,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) Values ('" & var_98
  loc_1D03FCA:         var_2CC = CVar(var_22C & "',1,'AR2','" & var_1F8 & "'," & CStr(var_194) & ",'" & MemVar_1F95070 & "',") & var_27C & ",'" 
  loc_1D03FFE:         var_3AC = var_2CC & var_230.Item("AdvanceAc").Value & "','" & var_20C.Fields.Item("Ac_Code").Value & "'," & CVar(var_190) & ",'Being Advance Inst. Deduct For The Month of " 
  loc_1D04028:         var_45C = var_3AC & Format(CVar(var_404), "MMM/yy") & " From " & var_20C.Fields.Item("Name").Value & "','" & CVar(var_170) 
  loc_1D0406B:         var_5F0 = var_45C & "','" & var_20C.Fields.Item("Code").Value & "','" & CVar(MemVar_1F950C8) & "'," & var_5A0 & ",'A','" & var_5D0 
  loc_1D04074:         var_610 = var_5F0 & "','" 
  loc_1D040A5:         unk_4C2D98.Execute CStr(var_610 & Me.Recordset15.Fields.Item("GroupNature").Value & "','" & CVar(MemVar_1F95078) & "')"), var_6DC, -1
  loc_1D04135:       End If
  loc_1D04150:       var_27C = CVar("SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  and  SUBCODE='") 'String
  loc_1D0416D:       var_228 = var_20C.Fields.Item("Ac_Code")
  loc_1D04194:       unk_4C2E48.Execute CStr(var_27C & var_228.Value & "'"), var_2CC, -1
  loc_1D0419F:       Set var_21C = var_230
  loc_1D041D6:       If (Me.Recordset15.RecordCount > 0) Then
  loc_1D041E4:         Set var_224 = Me.Txt
  loc_1D041EA:         Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228, var_230)
  loc_1D041F9:         Proc_6_7_F26918(var_27C, CVar(var_228), var_6E0)
  loc_1D0427E:         Proc_6_8_EB1974(var_45C, CVar(Proc_6_14_EF402C(var_190)))
  loc_1D042EB:         var_22C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_Prefix,V_No,Site_Code,V_Date,SubCode,ContraSub,AmtDr,Narration,mth_year,Emp_Code,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) Values ('" & var_98
  loc_1D04337:         var_2EC = CVar(var_22C & "',2,'AR2','" & var_1F8 & "'," & CStr(var_194) & ",'" & MemVar_1F95070 & "',") & var_27C & ",'" & var_20C.Fields.Item("Ac_Code").Value 
  loc_1D0436E:         var_3BC = var_2EC & "','" & var_208.Fields.Item("AdvanceAc").Value & "'," & CVar(var_190) & ",'Being Advance Inst. Deduct','" & CVar(var_170) 
  loc_1D043B1:         var_4FC = var_3BC & "','" & var_20C.Fields.Item("Code").Value & "','" & CVar(MemVar_1F950C8) & "'," & var_45C & ",'A','" & Me.Recordset15.Fields.Item("GroupCode").Value 
  loc_1D043EB:         unk_4C2D98.Execute CStr(var_4FC & "','" & Me.Recordset15.Fields.Item("GroupNature").Value & "','" & CVar(MemVar_1F95078) & "')"), var_5D0, -1
  loc_1D04468:       Else
  loc_1D04473:         Set var_224 = Me.Txt
  loc_1D04479:         Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228)
  loc_1D04481:         var_25C = CVar(var_228) 'Address
  loc_1D04488:         Proc_6_7_F26918(var_27C, var_25C)
  loc_1D0449F:         var_230 = var_20C.Fields
  loc_1D0450D:         Proc_6_8_EB1974(var_45C, CVar(Proc_6_14_EF402C(var_654)))
  loc_1D0457A:         var_22C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_Prefix,V_No,Site_Code,V_Date,SubCode,ContraSub,AmtDr,Narration,mth_year,Emp_Code,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) Values ('" & var_98
  loc_1D045BF:         var_2CC = CVar(var_22C & "',2,'AR2','" & var_1F8 & "'," & CStr(var_194) & ",'" & MemVar_1F95070 & "',") & var_27C & ",'" 
  loc_1D045C6:         var_2EC = var_2CC & var_230.Item("Ac_Code").Value 
  loc_1D045FD:         var_3BC = var_2EC & "','" & var_208.Fields.Item("AdvanceAc").Value & "'," & CVar(var_190) & ",'Being Advance Inst. Deduct','" & CVar(var_170) 
  loc_1D04639:         var_4CC = var_3BC & "','" & var_20C.Fields.Item("Code").Value & "','" & CVar(MemVar_1F950C8) & "'," & var_45C & ",'A','" 
  loc_1D04659:         var_5A0 = var_4CC & Me.Recordset15.Fields.Item("GroupCode").Value & "','" & Me.Recordset15.Fields.Item("GroupNature").Value & "','" 
  loc_1D0467A:         unk_4C2D98.Execute CStr(var_5A0 & CVar(MemVar_1F95078) & "')"), var_5D0, -1
  loc_1D046F4:       End If
  loc_1D046F9:       var_22C = CStr(var_194)
  loc_1D04701:       var_524 = Val(var_22C)
  loc_1D0470F:       Proc_6_7_F26918(var_25C, var_1BC, var_524)
  loc_1D0471F:       Proc_6_7_F26918(var_2CC, var_1BC)
  loc_1D0473D:       var_23C = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_524)
  loc_1D04767:       var_65C = var_23C & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "') and PREFIX='" & var_1F8
  loc_1D04792:       unk_4C2D98.Execute CStr(CVar(var_65C & "' AND V_Type='AR2' and Date_From<=") & var_25C & " aND Date_TO>=" & var_2CC), var_2EC, -1
  loc_1D047C2:     End If
  loc_1D047DE:     var_25C = CVar((var_1A4 + var_190)) 'Double
  loc_1D047EE:     var_1A4 = CSng(Format(var_25C, "0"))
  loc_1D04808:     Set var_224 = Me.Txt
  loc_1D0480E:     Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228, var_22C, var_1A4, 1)
  loc_1D04816:     1 = var_228.Text
  loc_1D0482A:     var_238 = "SL"
  loc_1D04833:     Call Proc_310_22_F92F18(MemVar_1F95044, var_238, CDate(var_22C), var_23C)
  loc_1D0483C:     var_194 = CLng(var_23C)
  loc_1D0485D:     Set var_224 = Me.Txt
  loc_1D04863:     Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228, var_238, var_194)
  loc_1D0486B:     var_224 = var_228.Text
  loc_1D04888:     Call Proc_310_23_100A0D4(MemVar_1F95044, "SL", CDate(var_238))
  loc_1D04890:     var_98 = var_23C
  loc_1D048AF:     Set var_224 = Me.Txt
  loc_1D048B5:     Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228, var_238)
  loc_1D048BD:     var_23C = var_228.Text
  loc_1D048DA:     Call Proc_310_24_F92D6C(MemVar_1F95044, "SL", CDate(var_238))
  loc_1D048E2:     var_1F8 = var_23C
  loc_1D0490E:     var_27C = CVar("SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and SUBCODE='") 'String
  loc_1D0492B:     var_228 = var_20C.Fields.Item("Ac_Code")
  loc_1D04952:     unk_4C2E48.Execute CStr(var_27C & var_228.Value & "'"), var_2CC, -1
  loc_1D0495D:     Set var_21C = var_230
  loc_1D04994:     If (Me.Recordset15.RecordCount > 0) Then
  loc_1D049A2:       Set var_224 = Me.Txt
  loc_1D049A8:       Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228, var_230)
  loc_1D049B7:       Proc_6_7_F26918(var_27C, CVar(var_228), var_23C)
  loc_1D04A3C:       Proc_6_8_EB1974(var_4CC, CVar(Proc_6_14_EF402C(var_654)))
  loc_1D04AA9:       var_22C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_Prefix,V_No,Site_Code,V_Date,SubCode,ContraSub,AmtCr,Narration,mth_year,Emp_Code,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) Values ('" & var_98
  loc_1D04AF5:       var_2EC = CVar(var_22C & "',1,'SL','" & var_1F8 & "'," & CStr(var_194) & ",'" & MemVar_1F95070 & "',") & var_27C & ",'" & var_20C.Fields.Item("Ac_Code").Value 
  loc_1D04B21:       var_358 = CVar((((var_19C - var_1A4) + var_1AC) + var_190)) 'Double
  loc_1D04B38:       var_3BC = var_2EC & "','" & var_208.Fields.Item("SALARY_AC").Value & "'," & CVar(var_190) & ",'Being Salary for the Month of " & CVar(var_170) 
  loc_1D04B7E:       var_4DC = var_3BC & "','" & CVar(var_170) & "','" & var_20C.Fields.Item("Code").Value & "','" & CVar(MemVar_1F950C8) & "'," & var_4CC 
  loc_1D04B9E:       var_5B0 = var_4DC & ",'A','" & Me.Recordset15.Fields.Item("GroupCode").Value & "','" & Me.Recordset15.Fields.Item("GroupNature").Value 
  loc_1D04BC8:       unk_4C2D98.Execute CStr(var_5B0 & "','" & CVar(MemVar_1F95078) & "')"), var_610, -1
  loc_1D04C49:     Else
  loc_1D04C54:       Set var_224 = Me.Txt
  loc_1D04C5A:       Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228)
  loc_1D04C69:       Proc_6_7_F26918(var_27C, CVar(var_228))
  loc_1D04C80:       var_230 = var_20C.Fields
  loc_1D04CEE:       Proc_6_8_EB1974(var_4CC, CVar(Proc_6_14_EF402C(var_654)))
  loc_1D04D5B:       var_22C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_Prefix,V_No,Site_Code,V_Date,SubCode,ContraSub,AmtCr,Narration,mth_year,Emp_Code,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) Values ('" & var_98
  loc_1D04D97:       var_2BC = CVar(var_22C & "',1,'SL','" & var_1F8 & "'," & CStr(var_194) & ",'" & MemVar_1F95070 & "',") & var_27C 
  loc_1D04DD3:       var_358 = CVar((((var_19C - var_1A4) + var_1AC) + var_190)) 'Double
  loc_1D04DD7:       var_39C = var_2BC & ",'" & var_230.Item("Ac_Code").Value & "','" & var_208.Fields.Item("SALARY_AC").Value & "'," & CVar(var_190) 
  loc_1D04E0D:       var_428 = var_39C & ",'Being Salary for the Month of " & CVar(var_170) & "','" & CVar(var_170) & "','" & var_20C.Fields.Item("Code").Value 
  loc_1D04E49:       var_580 = var_428 & "','" & CVar(MemVar_1F950C8) & "'," & var_4CC & ",'A','" & Me.Recordset15.Fields.Item("GroupCode").Value & "','" 
  loc_1D04E7A:       unk_4C2D98.Execute CStr(var_580 & Me.Recordset15.Fields.Item("GroupNature").Value & "','" & CVar(MemVar_1F95078) & "')"), var_610, -1
  loc_1D04EF8:     End If
  loc_1D04F24:     var_228 = var_208.Fields.Item("SALARY_AC")
  loc_1D04F34:     var_27C = "SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE SUBCODE='" & var_228.Value 
  loc_1D04F4B:     unk_4C2E48.Execute CStr(var_27C & "'"), var_2BC, -1
  loc_1D04F56:     Set var_21C = var_230
  loc_1D04F87:     If (Me.Recordset15.RecordCount > 0) Then
  loc_1D04F95:       Set var_224 = Me.Txt
  loc_1D04F9B:       Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228, var_230)
  loc_1D04FAA:       Proc_6_7_F26918(var_27C, CVar(var_228))
  loc_1D0502F:       Proc_6_8_EB1974(var_4CC, CVar(Proc_6_14_EF402C(var_654)))
  loc_1D0509C:       var_22C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_Prefix,V_No,Site_Code,V_Date,SubCode,ContraSub,AmtDr,Narration,mth_year,Emp_Code,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) Values ('" & var_98
  loc_1D050E8:       var_2EC = CVar(var_22C & "',2,'SL','" & var_1F8 & "'," & CStr(var_194) & ",'" & MemVar_1F95070 & "',") & var_27C & ",'" & var_208.Fields.Item("SALARY_AC").Value 
  loc_1D05114:       var_358 = CVar((((var_19C - var_1A4) + var_1AC) + var_190)) 'Double
  loc_1D0512B:       var_3BC = var_2EC & "','" & var_20C.Fields.Item("Ac_Code").Value & "'," & CVar(var_190) & ",'Being Salary for the Month of " & CVar(var_170) 
  loc_1D05171:       var_4DC = var_3BC & "','" & CVar(var_170) & "','" & var_20C.Fields.Item("Code").Value & "','" & CVar(MemVar_1F950C8) & "'," & var_4CC 
  loc_1D05191:       var_5B0 = var_4DC & ",'A','" & Me.Recordset15.Fields.Item("GroupCode").Value & "','" & Me.Recordset15.Fields.Item("GroupNature").Value 
  loc_1D051BB:       unk_4C2D98.Execute CStr(var_5B0 & "','" & CVar(MemVar_1F95078) & "')"), var_610, -1
  loc_1D0523C:     Else
  loc_1D05247:       Set var_224 = Me.Txt
  loc_1D0524D:       Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228)
  loc_1D05255:       var_25C = CVar(var_228) 'Address
  loc_1D0525C:       Proc_6_7_F26918(var_27C, var_25C)
  loc_1D05273:       var_230 = var_208.Fields
  loc_1D052E1:       Proc_6_8_EB1974(var_4CC, CVar(Proc_6_14_EF402C(var_654)))
  loc_1D0534E:       var_22C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_Prefix,V_No,Site_Code,V_Date,SubCode,ContraSub,AmtDr,Narration,mth_year,Emp_Code,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) Values ('" & var_98
  loc_1D05393:       var_2CC = CVar(var_22C & "',2,'SL','" & var_1F8 & "'," & CStr(var_194) & ",'" & MemVar_1F95070 & "',") & var_27C & ",'" 
  loc_1D0539A:       var_2EC = var_2CC & var_230.Item("SALARY_AC").Value 
  loc_1D053C6:       var_358 = CVar((((var_19C - var_1A4) + var_1AC) + var_190)) 'Double
  loc_1D053DD:       var_3BC = var_2EC & "','" & var_20C.Fields.Item("Ac_Code").Value & "'," & CVar(var_190) & ",'Being Salary for the Month of " & CVar(var_170) 
  loc_1D05423:       var_4DC = var_3BC & "','" & CVar(var_170) & "','" & var_20C.Fields.Item("Code").Value & "','" & CVar(MemVar_1F950C8) & "'," & var_4CC 
  loc_1D05443:       var_5B0 = var_4DC & ",'A','" & Me.Recordset15.Fields.Item("GroupCode").Value & "','" & Me.Recordset15.Fields.Item("GroupNature").Value 
  loc_1D0546D:       unk_4C2D98.Execute CStr(var_5B0 & "','" & CVar(MemVar_1F95078) & "')"), var_610, -1
  loc_1D054EB:     End If
  loc_1D054F8:     var_524 = Val(CStr(var_194))
  loc_1D05506:     Proc_6_7_F26918(var_25C, var_1BC, var_524)
  loc_1D05516:     Proc_6_7_F26918(var_2CC, var_1BC)
  loc_1D05549:     var_33C = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_524) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_1D05574:     var_2BC = CVar(var_33C & MemVar_1F95078 & "') and PREFIX='" & var_1F8 & "' AND V_Type='SL' and Date_From<=") & var_25C & " aND Date_TO>=" 
  loc_1D05589:     unk_4C2D98.Execute CStr(var_2BC & var_2CC), var_2EC, -1
  loc_1D055E2:     var_1A4 = CSng(Format(var_1A4, "0.00"))
  loc_1D055F9:     var_524 = Val(CStr(var_B8))
  loc_1D05609:     var_52C = Val(CStr(var_D8))
  loc_1D05628:     var_25C = CVar((var_12C + var_16C)) 'Double
  loc_1D05699:     var_23C = "Update Employee Set Curr_Earned=IsNull(Curr_Earned,0)+" & CStr(var_524)
  loc_1D056A0:     var_308 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_524) & ",Curr_Casual=IsNull(Curr_Casual,0)+"
  loc_1D056B3:     var_2BC = CVar("Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_524) & " Where (SITE_CODE='" & MemVar_1F95070 & CStr(var_52C) & ",Curr_PF_Balance=IsNull(Curr_PF_Balance,0)+") 'String
  loc_1D056BD:     var_28C = ",Curr_ESI_Balance=IsNull(Curr_ESI_Balance,0)+"
  loc_1D056D9:     var_39C = var_2BC & Format("0.00", "0.00") & var_1BC & Format(var_13C, "0.00") & " Where Code='" & var_20C.Fields.Item("Code").Value 
  loc_1D056F0:     unk_4C2D98.Execute CStr(var_39C & "'"), var_3BC, -1
  loc_1D05773:     var_800 = CVar((var_19C - var_1A4)) 'Double
  loc_1D0578A:     Proc_6_8_EB1974(var_A80, CVar(Proc_6_14_EF402C(1, 1, var_230, 1, 1, 1, 1)), var_52C, var_524)
  loc_1D057A3:     var_22C = "Insert Into Salary(Mth_Year,Emp_Code,Work_Day,Leave,Sunday,Holiday,Absent,Basic,DA,HRA,Income_Tax,Other_Allow,Other_Deduc,Conveyance,Medical,LTA,PF,EPF,ESI,Loan,Advance,Net_Salary,Loan_Bal,Adv_Bal,Emp_Basic,OverTime,OverTimeAmt,CL,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & var_170
  loc_1D057B0:     var_29C = CVar(var_22C & "','") & var_20C.Fields.Item("Code").Value 
  loc_1D057B9:     var_2BC = var_29C & "'," 
  loc_1D05828:     var_3CC = var_2BC & CVar(var_E0) & "," & CVar(var_B8) & "," & CVar(CDbl(0)) & "," & CVar(var_C0) & "," & CVar(var_B0) & "," & CVar(var_D0) 
  loc_1D05895:     var_4FC = var_3CC & "," & CVar(var_C8) & "," & CVar(var_F8) & "," & CVar(var_15C) & "," & CVar(var_164) & "," & CVar(var_154) & "," 
  loc_1D05904:     var_650 = var_4FC & CVar(var_F0) & "," & CVar(var_124) & "," & CVar(var_E8) & "," & CVar(var_12C) & "," & CVar(var_16C) & "," & CVar(var_13C) 
  loc_1D05964:     var_8C0 = var_650 & "," & CVar(var_1AC) & " ," & CVar(var_190) & "," & Format(var_800, "0") & "," & CVar(var_178) & "," & CVar(var_180) 
  loc_1D059C6:     var_A00 = var_8C0 & "," & CVar(var_188) & ",'" & CVar(var_114) & "'," & CVar(var_11C) & "," & CVar(var_D8) & ",'" & CVar(MemVar_1F95070) 
  loc_1D05A13:     unk_4C2D98.Execute CStr(var_A00 & "','" & CVar(MemVar_1F950C8) & "'," & var_A80 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_B10, -1
  loc_1D05AB7:   End If
  loc_1D05AB7:   ' Referenced from: 1CFF5D0
  loc_1D05AB7:   ' Referenced from: 1CFF3AE
  loc_1D05AB7:   ' Referenced from: 1CFEF45
  loc_1D05ABA:   var_20C.MoveNext
  loc_1D05ABF:   GoTo loc_1CFEE60
  loc_1D05AC2: End If
  loc_1D05AC8: unk_4C2D98.CommitTrans
  loc_1D05ACF: var_92 = 0
  loc_1D05AD7: Set var_20C = Nothing
  loc_1D05ADF: Set var_200 = Nothing
  loc_1D05AE7: Set var_204 = Nothing
  loc_1D05AEF: Set var_208 = Nothing
  loc_1D05AF7: Set var_220 = Nothing
  loc_1D05B07: Me.LabelSal.Caption = " <<<<<< Processing Completed >>>>>>"
  loc_1D05B14: Set var_21C = Nothing
  loc_1D05B17: Exit Sub
  loc_1D05B1E: If (var_92 = 1) Then
  loc_1D05B27:   unk_4C2D98.RollbackTrans
  loc_1D05B2C: End If
  loc_1D05B34: Set var_224 = Err()
  loc_1D05B3A: Call 0.Method_arg_2C (var_22C, var_92, var_230, var_1A4)
  loc_1D05B5B: MsgBox(CVar(var_22C), &H10, "Salary Creation", var_29C, var_2BC)
  loc_1D05B6E: Exit Sub
End Sub

Private Sub Command2_UnknownEvent_9 '16E4478
  'Data Table: 4C2D80
  Dim var_8E As Integer
  Dim var_1D4 As Variant
  Dim var_1E4 As Variant
  Dim var_208 As String
  Dim var_268 As Variant
  Dim var_288 As String
  Dim var_298 As Variant
  Dim var_218 As Variant
  Dim var_2B8 As Variant
  Dim var_238 As Variant
  Dim var_2FC As String
  Dim unk_4C2D98 As Connection15
  Dim var_304 As String
  Dim var_1DC As Variant
  Dim var_308 As String
  Dim var_30C As String
  Dim var_180 As Recordset15
  Dim var_300 As String
  Dim var_2D8 As Variant
  Dim var_2F8 As Variant
  Dim var_248 As Variant
  Dim var_278 As Variant
  Dim var_184 As Recordset15
  Dim var_1E0 As Variant
  Dim var_4F4 As Double
  Dim var_380 As Variant
  Dim var_2E8 As String
  Dim var_320 As Variant
  Dim var_3D0 As String
  Dim var_448 As Variant
  Dim var_468 As Variant
  Dim var_4F8 As String
  Dim var_4FC As String
  Dim var_1D0 As Recordset15
  loc_16E2A6C: On Error Goto loc_16E4429
  loc_16E2A91: Set var_1DC = Me.Txt
  loc_16E2A97: Call 0.Method_Command2_UnknownEvent_90 (CInt(3), var_1E0)
  loc_16E2AA3: Set var_1E4 = Me.ChkDepart
  loc_16E2B10: var_298 = "Are You Sure To Decreate Salary of " & IIf((Me.ChkEmp.Value = 0), CVar(var_1E0), IIf((var_1E4.Value = 0), "Of Department", "All Employees")) 
  loc_16E2B41: If (MsgBox(var_298, 4, "Confirmation", var_2D8, var_2F8) = 6) Then
  loc_16E2B4F:   Set var_1D4 = Me.Txt
  loc_16E2B55:   Call 0.Method_Command2_UnknownEvent_90 (CInt(0), var_1DC)
  loc_16E2B65:   Set var_1E0 = Me.Txt
  loc_16E2B6B:   Call 0.Method_Command2_UnknownEvent_90 (CInt(0), var_1E4)
  loc_16E2B88:   var_218 = CVar(var_1DC) 'Address
  loc_16E2B8F:   var_248 = Format(var_218, "MMM")
  loc_16E2BA6:   var_278 = "YYYY"
  loc_16E2BAF:   var_268 = CVar(var_1E4) 'Address
  loc_16E2BBE:   var_2B8 = (1 + Format(var_268, var_278))
  loc_16E2BCE:   var_88 = CStr(Ucase("Confirmation"))
  loc_16E2C08:   Proc_6_17_EAAE40(var_218, MemVar_1F95078, "Select * From Enviro WHERE LOGSITE_CODE=", var_248, -1, var_1D4)
  loc_16E2C1E:   unk_4C2D98.Execute CStr(1 & var_218), var_248, 1
  loc_16E2C29:   Set var_190 = var_1D4
  loc_16E2C56:   If (Me.ChkEmp.Value = 0) Then
  loc_16E2C6D:     var_2FC = "Select * From Salary Where Mth_Year='" & var_88
  loc_16E2C85:     Set var_1D4 = Me.Txt
  loc_16E2C8B:     Call 0.Method_Command2_UnknownEvent_90 (CInt(3), var_1DC, var_300, var_2FC & "' and Emp_Code='", var_218)
  loc_16E2C93:     -1 = var_1DC.Tag
  loc_16E2CAC:     unk_4C2D98.Execute var_1E0 & var_300 & "'", 1, 0
  loc_16E2CE7:     If (var_1E0.RecordCount <= 0) Then
  loc_16E2CF0:       Call 0.Method_arg_50 (var_2FC)
  loc_16E2D0B:       var_218 = "* Salary Already Decreated *"
  loc_16E2D11:       MsgBox(var_218, &H40, CVar(var_2FC), var_248, var_268)
  loc_16E2D21:       Exit Sub
  loc_16E2D22:     End If
  loc_16E2D25:   Else
  loc_16E2D40:     If (Me.ChkDepart.Value = 0) Then
  loc_16E2D62:       Set var_1D4 = Me.Txt
  loc_16E2D68:       Call 0.Method_Command2_UnknownEvent_90 (CInt(2), var_1DC)
  loc_16E2D80:       var_194 = " And Emp_Code In (Select Code From Employee Where site_code='" & MemVar_1F95078 & "' And Department='" & var_1DC.Tag & "')"
  loc_16E2D95:     End If
  loc_16E2DA9:     var_2FC = "Select * From Salary Where Mth_Year='" & var_88
  loc_16E2DB0:     var_300 = var_2FC & "'"
  loc_16E2DC0:     unk_4C2D98.Execute var_300 & var_194, var_218, -1
  loc_16E2DE3:     var_310 = var_1D4.RecordCount
  loc_16E2DF1:     If (var_310 <= 0) Then
  loc_16E2DFA:       Call 0.Method_arg_50 (var_2FC)
  loc_16E2E1B:       MsgBox("* Salary Already Decreated *", &H40, CVar(var_2FC), var_248, var_268)
  loc_16E2E2B:       Exit Sub
  loc_16E2E2C:     End If
  loc_16E2E2C:   End If
  loc_16E2E47:   If (Me.ChkEmp.Value = 0) Then
  loc_16E2E7C:     Call 0.Method_Command2_UnknownEvent_90 (CInt(3), var_1DC, var_300, "Select * From Employee Where site_code='" & MemVar_1F95078 & "' and Code='")
  loc_16E2E84:     var_218 = var_1DC.Tag
  loc_16E2E8D:     var_308 = -1 & var_300
  loc_16E2E94:     var_30C = " And Emp_Code In (Select Code From Employee Where site_code='" & MemVar_1F95078 & "' And Department='" & var_1DC.Tag & "'"
  loc_16E2E9D:     unk_4C2D98.Execute var_30C, var_1E0, Me.Txt
  loc_16E2EA8:     Set var_180 = var_1E0
  loc_16E2EC7:   Else
  loc_16E2EE2:     If (Me.ChkDepart.Value = 0) Then
  loc_16E2F04:       Set var_1D4 = Me.Txt
  loc_16E2F0A:       Call 0.Method_Command2_UnknownEvent_90 (CInt(2), var_1DC)
  loc_16E2F1B:       var_308 = " And Code In (Select Code From Employee Where site_code='" & MemVar_1F95078 & "' And Department='" & var_1DC.Tag
  loc_16E2F22:       var_194 = var_308 & "')"
  loc_16E2F37:     End If
  loc_16E2F42:     Set var_1D4 = Me.Txt
  loc_16E2F48:     Call 0.Method_Command2_UnknownEvent_90 (CInt(0))
  loc_16E2F4D:     var_208 = "01"
  loc_16E2F79:     var_268 = (1 + Format(CVar(var_1DC), "/MMM/YYYY"))
  loc_16E2F80:     Proc_6_7_F26918(var_278, var_268, 1)
  loc_16E2FA0:     var_298 = CVar("Select * From Employee Where site_code='" & MemVar_1F95078 & "' and (Resign_Date Is Null or Resign_Date > ") 'String
  loc_16E2FC7:     unk_4C2D98.Execute CStr(var_298 & var_278 & CVar(var_194) & ")"), var_320, -1
  loc_16E2FD2:     Set var_180 = var_1E0
  loc_16E2FFA:   End If
  loc_16E3003:   unk_4C2D98.BeginTrans var_310
  loc_16E300A:   var_8E = 1
  loc_16E300D:   ' Referenced from: 16E35C9
  loc_16E301C:   If Not(var_180.EOF) Then
  loc_16E307B:     var_2FC = CStr("Select * From Salary Where Emp_COde='" & var_180.Fields.Item("Code").Value & "' and Mth_Year='" & CVar(var_88) & "'")
  loc_16E3085:     unk_4C2D98.Execute var_2FC, var_298, -1
  loc_16E3090:     Set var_184 = var_1E0
  loc_16E30C2:     If (var_184.RecordCount > 0) Then
  loc_16E30F4:       var_238 = "<<<<<<<  Processing " & var_180.Fields.Item("Name").Value 
  loc_16E3109:       Set var_1E0 = Me.LabelSal
  loc_16E310F:       var_1E0.Caption = CStr(var_238 & "  >>>>>>>")
  loc_16E3133:       Me.LabelSal.Refresh
  loc_16E3143:       If (MemVar_1F953B0 = "S") Then
  loc_16E3151:         Proc_6_8_EB1974(var_238, CVar(Proc_6_14_EF402C(var_1E0, var_8E, var_1E0)))
  loc_16E31BF:         var_4F4 = Val(CStr(var_184.Fields.Item("CL").Value))
  loc_16E322B:         var_380 = (var_184.Fields.Item("PF").Value + var_184.Fields.Item("EPF").Value)
  loc_16E32B7:         var_208 = ",Curr_Earned=IsNull(Curr_Earned,0)-"
  loc_16E32C7:         var_298 = "Update Employee Set U_EntDt=" & var_238 & "<<<<<<<  Processing " & CVar(Val(CStr(var_184.Fields.Item("Leave").Value))) 
  loc_16E32CB:         var_288 = ",Curr_Casual=IsNull(Curr_Casual,0)-"
  loc_16E32DF:         var_2E8 = ",Curr_PF_Balance=IsNull(Curr_PF_Balance,0)-"
  loc_16E32EF:         var_3D0 = ",Curr_ESI_Balance=IsNull(Curr_ESI_Balance,0)-"
  loc_16E32FB:         var_448 = var_298 & "'" & CVar(var_4F4) & var_2E8 & Format(var_380, "0.00") & var_3D0 & Format(CVar(var_184.Fields.Item("ESI")), "0.00") 
  loc_16E3322:         unk_4C2D98.Execute CStr(var_448 & " Where Code='" & var_180.Fields.Item("Code").Value & "'"), var_4E0, -1
  loc_16E3385:       Else
  loc_16E338A:         var_218 = CVar(Proc_6_14_EF402C(var_4E4, 1, 1, 1, 1)) 'String
  loc_16E3390:         Proc_6_8_EB1974(var_238, var_218, var_4F4)
  loc_16E33AF:         var_1DC = var_184.Fields.Item("Leave")
  loc_16E33DD:         var_1E0 = var_184.Fields
  loc_16E346A:         var_380 = (var_184.Fields.Item("PF").Value + var_184.Fields.Item("EPF").Value)
  loc_16E34F6:         var_208 = ",Curr_Earned=IIF(IsNull(Curr_Earned),0,Curr_Earned)-"
  loc_16E350A:         var_288 = ",Curr_Casual=IIF(IsNull(Curr_Casual),0,Curr_Casual)-"
  loc_16E351A:         var_2F8 = "Update Employee Set U_EntDt=" & var_238 & "<<<<<<<  Processing " & CVar(Val(CStr(var_1DC.Value))) & "'" & CVar(Val(CStr(var_1E0.Item("CL").Value))) 
  loc_16E351E:         var_2E8 = ",Curr_PF_Balance=IIF(IsNull(Curr_PF_Balance),0,Curr_PF_Balance)-"
  loc_16E352E:         var_3D0 = ",Curr_ESI_Balance=IIF(IsNull(Curr_ESI_Balance),0,Curr_ESI_Balance)-"
  loc_16E3543:         var_468 = var_2F8 & var_2E8 & Format(var_380, "0.00") & var_3D0 & Format(CVar(var_184.Fields.Item("ESI")), "0.00") & " Where Code='" 
  loc_16E3561:         unk_4C2D98.Execute CStr(var_468 & var_180.Fields.Item("Code").Value & "'"), var_4E0, -1
  loc_16E35C1:       End If
  loc_16E35C1:     End If
  loc_16E35C4:     var_180.MoveNext
  loc_16E35C9:     GoTo loc_16E300D
  loc_16E35CC:   End If
  loc_16E35D1:   Set var_180 = Nothing
  loc_16E35D9:   Set var_184 = Nothing
  loc_16E35E1:   Set var_190 = Nothing
  loc_16E35FF:   If (Me.ChkEmp.Value = 0) Then
  loc_16E363C:     Set var_1D4 = Me.Txt
  loc_16E3642:     Call 0.Method_Command2_UnknownEvent_90 (CInt(3), var_1DC, var_308, "Select * From Salary Where Logsite_code='" & MemVar_1F95078 & "' and Mth_Year='" & var_88 & "' And Emp_Code='", var_218, -1, var_1E0)
  loc_16E364A:     var_4E4 = var_1DC.Tag
  loc_16E3663:     unk_4C2D98.Execute 1 & var_308 & "'", 1, 1
  loc_16E366E:     Set var_1D0 = var_1E0
  loc_16E36A2:     If (var_1D0.RecordCount > 0) Then
  loc_16E36A5:       ' Referenced from: 16E37FD
  loc_16E36B4:       If Not(var_1D0.EOF) Then
  loc_16E36D1:         var_1DC = var_1D0.Fields.Item("Mth_Year")
  loc_16E36D9:         var_218 = var_1DC.Value
  loc_16E36F0:         var_1E0 = var_1D0.Fields
  loc_16E3727:         var_248 = var_1D0.Fields.Item("LogSite_Code").Value
  loc_16E3731:         var_51C = 0
  loc_16E3744:         var_514 = 0
  loc_16E374F:         var_510 = 0
  loc_16E3762:         var_508 = 0
  loc_16E377B:         var_4F8 = "LogSite_Code"
  loc_16E3794:         var_308 = "Emp_Code"
  loc_16E37BF:         Proc_154_5_10E3BD4(MemVar_1F95044, "SALARY", "Mth_Year", &HC8, CStr(var_218), var_308, &HC8, CStr(var_1E0.Item("Emp_Code").Value))
  loc_16E37F8:         var_1D0.MoveNext
  loc_16E37FD:         GoTo loc_16E36A5
  loc_16E3800:       End If
  loc_16E383A:       Set var_1D4 = Me.Txt
  loc_16E3840:       Call 0.Method_Command2_UnknownEvent_90 (CInt(3), var_1DC, var_308, "Delete From Salary Where Logsite_code='" & MemVar_1F95078 & "' and Mth_Year='" & var_88 & "' And Emp_Code='", var_218, -1, var_1E0)
  loc_16E3848:       var_4F8 = var_1DC.Tag
  loc_16E3861:       unk_4C2D98.Execute &HC8 & var_308 & "'", CStr(var_248), var_508
  loc_16E3883:     End If
  loc_16E389E:     var_300 = "Select * From Loan Where Logsite_code='" & MemVar_1F95078 & "' and Upper(Convert(varchar(3),V_Date,0))+Convert(varchar(4),Year(V_Date))='"
  loc_16E38BD:     Set var_1D4 = Me.Txt
  loc_16E38C3:     Call 0.Method_Command2_UnknownEvent_90 (CInt(3), var_1DC, var_308, "Delete From Salary Where Logsite_code='" & MemVar_1F95078 & "' and Mth_Year='" & var_88 & "' And Emp_Code='", var_218)
  loc_16E38CB:     -1 = var_1DC.Tag
  loc_16E38E4:     unk_4C2D98.Execute var_1E0 & var_308 & "' And V_Type In('LR1','AR2')", 0, var_510
  loc_16E38EF:     Set var_1D0 = var_1E0
  loc_16E3923:     If (var_1D0.RecordCount > 0) Then
  loc_16E3926:       ' Referenced from: 16E3AA6
  loc_16E3935:       If Not(var_1D0.EOF) Then
  loc_16E3952:         var_1DC = var_1D0.Fields.Item("SR_no")
  loc_16E395A:         var_218 = var_1DC.Value
  loc_16E3971:         var_1E0 = var_1D0.Fields
  loc_16E39A8:         var_248 = var_1D0.Fields.Item("Emp_Code").Value
  loc_16E39CF:         var_268 = var_1D0.Fields.Item("LogSite_Code").Value
  loc_16E39D9:         var_51C = 0
  loc_16E39EC:         var_514 = 0
  loc_16E3A05:         var_508 = "LogSite_Code"
  loc_16E3A1E:         var_4F8 = "Emp_Code"
  loc_16E3A37:         var_308 = "V_Type"
  loc_16E3A62:         Proc_154_5_10E3BD4(MemVar_1F95044, "LOAN", "Sr_No", 1, CStr(var_218), var_308, &HC8, CStr(var_1E0.Item("V_Type").Value))
  loc_16E3AA1:         var_1D0.MoveNext
  loc_16E3AA6:         GoTo loc_16E3926
  loc_16E3AA9:       End If
  loc_16E3AC4:       var_300 = "Delete From Loan Where Logsite_code='" & MemVar_1F95078 & "' and Upper(Convert(varchar(3),V_Date,0))+Convert(varchar(4),Year(V_Date))='"
  loc_16E3AE3:       Set var_1D4 = Me.Txt
  loc_16E3AE9:       Call 0.Method_Command2_UnknownEvent_90 (CInt(3), var_1DC, var_308, "Sr_No" & var_88 & "' And Emp_Code='", var_218, -1, var_1E0)
  loc_16E3AF1:       var_4F8 = var_1DC.Tag
  loc_16E3B0A:       unk_4C2D98.Execute &HC8 & var_308 & "' And V_Type In('LR1','AR2')", CStr(var_248), var_508
  loc_16E3B2C:     End If
  loc_16E3B4E:     var_304 = "Select * From Ledger Where Logsite_code='" & MemVar_1F95078 & "' and V_Type In('LR1','AR2','SL') And UPpER(mth_year)='" & var_88
  loc_16E3B66:     Set var_1D4 = Me.Txt
  loc_16E3B6C:     Call 0.Method_Command2_UnknownEvent_90 (CInt(3), var_1DC, var_308, var_304 & "' And Emp_Code='", var_218)
  loc_16E3B74:     -1 = var_1DC.Tag
  loc_16E3B8D:     unk_4C2D98.Execute var_1E0 & var_308 & "'", &HC8, CStr(var_268)
  loc_16E3B98:     Set var_1D0 = var_1E0
  loc_16E3BCC:     If (var_1D0.RecordCount > 0) Then
  loc_16E3BCF:       ' Referenced from: 16E3CD5
  loc_16E3BDE:       If Not(var_1D0.EOF) Then
  loc_16E3BFB:         var_1DC = var_1D0.Fields.Item("DocID")
  loc_16E3C03:         var_218 = var_1DC.Value
  loc_16E3C0D:         var_51C = 0
  loc_16E3C20:         var_514 = 0
  loc_16E3C2B:         var_510 = 0
  loc_16E3C3E:         var_508 = 0
  loc_16E3C49:         var_4FC = 0
  loc_16E3C5C:         var_4F8 = 0
  loc_16E3C7A:         var_308 = 0
  loc_16E3CA5:         Proc_154_5_10E3BD4(MemVar_1F95044, "LEDGER", "DocId", &HC8, CStr(var_218), var_308, 0, 0)
  loc_16E3CD0:         var_1D0.MoveNext
  loc_16E3CD5:         GoTo loc_16E3BCF
  loc_16E3CD8:       End If
  loc_16E3CF3:       var_300 = "Delete From Ledger Where Logsite_code='" & MemVar_1F95078 & "' and V_Type In('LR1','AR2','SL') And UPpER(mth_year)='"
  loc_16E3D12:       Set var_1D4 = Me.Txt
  loc_16E3D18:       Call 0.Method_Command2_UnknownEvent_90 (CInt(3), var_1DC, var_308, var_300 & var_88 & "' And Emp_Code='", var_218, -1, var_1E0)
  loc_16E3D20:       var_4F8 = var_1DC.Tag
  loc_16E3D39:       unk_4C2D98.Execute 0 & var_308 & "'", 0 & var_308 & "'", var_508
  loc_16E3D5B:     End If
  loc_16E3D5E:   Else
  loc_16E3D79:     If (Me.ChkDepart.Value = 0) Then
  loc_16E3D9B:       Set var_1D4 = Me.Txt
  loc_16E3DA1:       Call 0.Method_Command2_UnknownEvent_90 (CInt(2), var_1DC, var_300, " And Emp_Code In (Select Code From Employee Where site_code='" & MemVar_1F95078 & "' And Department='")
  loc_16E3DA9:       0 = var_1DC.Tag
  loc_16E3DB9:       var_194 = var_510 & var_300 & "')"
  loc_16E3DCE:     End If
  loc_16E3E07:     unk_4C2D98.Execute "Select * From Salary Where Logsite_code='" & MemVar_1F95078 & "' and Mth_Year='" & var_88 & "'" & var_194, var_218, -1
  loc_16E3E12:     Set var_1D0 = var_1D4
  loc_16E3E3C:     If (var_1D0.RecordCount > 0) Then
  loc_16E3E3F:       ' Referenced from:   16E3F97
  loc_16E3E4E:       If Not(var_1D0.EOF) Then
  loc_16E3E63:         var_1D4 = var_1D0.Fields
  loc_16E3E73:         var_218 = var_1D4.Item("Mth_Year").Value
  loc_16E3EC1:         var_248 = var_1D0.Fields.Item("LogSite_Code").Value
  loc_16E3ECB:         var_51C = 0
  loc_16E3EDE:         var_514 = 0
  loc_16E3EE9:         var_510 = 0
  loc_16E3EFC:         var_508 = 0
  loc_16E3F15:         var_4F8 = "LogSite_Code"
  loc_16E3F59:         Proc_154_5_10E3BD4(MemVar_1F95044, "SALARY", "Mth_Year", &HC8, CStr(var_218), "Emp_Code", &HC8, CStr(var_1D0.Fields.Item("Emp_Code").Value))
  loc_16E3F92:         var_1D0.MoveNext
  loc_16E3F97:         GoTo loc_16E3E3F
  loc_16E3F9A:       End If
  loc_16E3FD3:       unk_4C2D98.Execute "Delete From Salary Where Logsite_code='" & MemVar_1F95078 & "' and Mth_Year='" & var_88 & "'" & var_194, var_218, -1
  loc_16E3FEB:     End If
  loc_16E4006:     var_300 = "Select * From Loan Where Logsite_code='" & MemVar_1F95078 & "' and Upper(Convert(varchar(3),V_Date,0))+Convert(varchar(4),Year(V_Date))='"
  loc_16E4014:     var_308 = "Delete From Salary Where Logsite_code='" & MemVar_1F95078 & "' and Mth_Year='" & var_88 & "' And V_Type In('LR1','AR2')"
  loc_16E4024:     unk_4C2D98.Execute var_308 & var_194, var_218, -1
  loc_16E402F:     Set var_1D0 = var_1D4
  loc_16E4059:     If (var_1D0.RecordCount > 0) Then
  loc_16E405C:       ' Referenced from:   16E41DC
  loc_16E406B:       If Not(var_1D0.EOF) Then
  loc_16E4080:         var_1D4 = var_1D0.Fields
  loc_16E4090:         var_218 = var_1D4.Item("SR_no").Value
  loc_16E40B7:         var_238 = var_1D0.Fields.Item("V_Type").Value
  loc_16E40DE:         var_248 = var_1D0.Fields.Item("Emp_Code").Value
  loc_16E4105:         var_268 = var_1D0.Fields.Item("LogSite_Code").Value
  loc_16E410F:         var_51C = 0
  loc_16E4122:         var_514 = 0
  loc_16E413B:         var_508 = "LogSite_Code"
  loc_16E4154:         var_4F8 = "Emp_Code"
  loc_16E4198:         Proc_154_5_10E3BD4(MemVar_1F95044, "LOAN", "Sr_No", 1, CStr(var_218), "V_Type", &HC8, CStr(var_238))
  loc_16E41D7:         var_1D0.MoveNext
  loc_16E41DC:         GoTo loc_16E405C
  loc_16E41DF:       End If
  loc_16E41FA:       var_300 = "Delete From Loan Where Logsite_code='" & MemVar_1F95078 & "' and Upper(Convert(varchar(3),V_Date,0))+Convert(varchar(4),Year(V_Date))='"
  loc_16E4218:       unk_4C2D98.Execute "Sr_No" & var_88 & "' And V_Type In('LR1','AR2')" & var_194, var_218, -1
  loc_16E4230:     End If
  loc_16E4252:     var_304 = "Select * From Ledger Where Logsite_code='" & MemVar_1F95078 & "' and V_Type In('LR1','AR2','SL') And UPpER(mth_year)='" & var_88
  loc_16E4269:     unk_4C2D98.Execute var_304 & "'" & var_194, var_218, -1
  loc_16E4274:     Set var_1D0 = var_1D4
  loc_16E429E:     If (var_1D0.RecordCount > 0) Then
  loc_16E42A1:       ' Referenced from:   16E43A7
  loc_16E42B0:       If Not(var_1D0.EOF) Then
  loc_16E42D5:         var_218 = var_1D0.Fields.Item("DocID").Value
  loc_16E42DF:         var_51C = 0
  loc_16E42F2:         var_514 = 0
  loc_16E42FD:         var_510 = 0
  loc_16E4310:         var_508 = 0
  loc_16E431B:         var_4FC = 0
  loc_16E432E:         var_4F8 = 0
  loc_16E4377:         Proc_154_5_10E3BD4(MemVar_1F95044, "LEDGER", "DocId", &HC8, CStr(var_218), 0, 0, 0)
  loc_16E43A2:         var_1D0.MoveNext
  loc_16E43A7:         GoTo loc_16E42A1
  loc_16E43AA:       End If
  loc_16E43BE:       var_2FC = "Delete From Ledger Where Logsite_code='" & MemVar_1F95078
  loc_16E43E3:       unk_4C2D98.Execute var_2FC & "' and V_Type In('LR1','AR2','SL') And UPpER(mth_year)='" & var_88 & "'" & var_194, var_218, -1
  loc_16E43FB:     End If
  loc_16E43FB:   End If
  loc_16E4401:   unk_4C2D98.CommitTrans
  loc_16E4408:   var_8E = 0
  loc_16E440B: End If
  loc_16E4418: Me.LabelSal.Caption = " <<<<<< Processing Completed >>>>>>"
  loc_16E4425: Set var_1D0 = Nothing
  loc_16E4428: Exit Sub
  loc_16E4429: ' Referenced from: 16E2A6C
  loc_16E442F: If (var_8E = 1) Then
  loc_16E4438:   unk_4C2D98.RollbackTrans
  loc_16E443D: End If
  loc_16E444B: Call 0.Method_arg_2C (var_2FC, var_8E, Err(), var_4F8, 0, var_4FC)
  loc_16E4464: MsgBox(CVar(var_2FC), &H10, var_238, var_248, var_268)
  loc_16E4477: Exit Sub
End Sub

Private Sub DGEmployee_UnknownEvent_9 'F41ED4
  'Data Table: 4C2D80
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F41DCB: Me.DGEmployee.Visible = False
  loc_F41DEA: If (Me.RecordCount > 0) Then
  loc_F41E29:   Set var_B4 = Me.Txt
  loc_F41E2F:   Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(3), var_B8)
  loc_F41E37:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F41E6A:   var_B0 = Me.Fields.Item("Name")
  loc_F41E89:   Set var_B4 = Me.Txt
  loc_F41E8F:   Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(3), var_B8)
  loc_F41E97:   var_B8.Text = CStr(var_B0.Value)
  loc_F41EAD: End If
  loc_F41EB8: Set var_A8 = Me.Txt
  loc_F41EBE: Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(3))
  loc_F41EC6: var_B0.SetFocus
  loc_F41ED2: Exit Sub
End Sub

Private Sub DGEmployee_UnknownEvent_1F 'E74B08
  'Data Table: 4C2D80
  loc_E74AC6: Proc_6_153_E91D24(Me.DGEmployee, arg_14)
  loc_E74ADD: Set var_8C = Me.FGPoint
  loc_E74AF9: Proc_6_138_106E830(Me.DGEmployee, global_52, CInt(3))
  loc_E74B07: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E64D84
  'Data Table: 4C2D80
  loc_E64D54: If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_E64D57:   Call DGEmployee_UnknownEvent_9()
  loc_E64D5C: End If
  loc_E64D78: If (CBool(Me.DGDepartment.Visible) = &HFF) Then
  loc_E64D7B:   Call DGDepartment_UnknownEvent_9()
  loc_E64D80: End If
  loc_E64D80: Exit Sub
  loc_E64D81: StAryRecMove
End Sub

Public Sub Proc_310_20_EBD77C
  'Data Table: 4C2D80
  loc_EBD6F4: If (CBool(Me.DGDepartment.Visible) = &HFF) Then
  loc_EBD706:   Me.DGDepartment.Visible = False
  loc_EBD70E: End If
  loc_EBD72A: If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_EBD73C:   Me.DGEmployee.Visible = False
  loc_EBD744: End If
  loc_EBD760: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBD772:   Me.FGPoint.Visible = False
  loc_EBD77A: End If
  loc_EBD77A: Exit Sub
End Sub

Public Sub Proc_310_21_E6BB14
  'Data Table: 4C2D80
  Dim var_AC As String
  loc_E6BAD0: Exit Sub
  loc_E6BAD9: Set var_88 = Err()
  loc_E6BADF: Call 0.Method_arg_2C (var_8C)
  loc_E6BAEA: var_AC = "Salary De-Created"
  loc_E6BB00: MsgBox(CVar(var_8C), &H10, var_AC, var_DC, var_FC)
  loc_E6BB13: Exit Sub
End Sub

Public Sub Proc_310_22_F92F18
  'Data Table: 4C2D80
  Dim var_98 As String
  Dim var_D8 As Variant
  Dim var_8C As Recordset15
  Dim var_130 As Fields15
  loc_F92DF6: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_F92E27: Proc_6_7_F26918(var_C8, arg_14, CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & arg_10 & "' And VP.Date_From<="))
  loc_F92E43: Me.Connection15.Execute CStr(var_12C & var_C8 & " Order By VP.Date_From DESC"), -1, var_130
  loc_F92E4E: Set var_8C = var_130
  loc_F92E84: If (var_8C.RecordCount > 0) Then
  loc_F92EB2:   var_90 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_F92EEE:   var_D8 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_F92EF3:   var_94 = CStr(CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & arg_10 & "' And VP.Date_From<="))
  loc_F92F04: End If
  loc_F92F09: Set var_8C = Nothing
  loc_F92F0F: var_88 = var_94
  loc_F92F12: Proc_310_22_F92F18 = 
End Sub

Public Sub Proc_310_23_100A0D4
  'Data Table: 4C2D80
  Dim var_98 As String
  Dim var_D8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_8C As Recordset15
  Dim var_130 As Fields15
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  loc_1009F1A: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1009F4B: Proc_6_7_F26918(var_C8, arg_14, CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & arg_10 & "' And VP.Date_From<="))
  loc_1009F67: Me.Connection15.Execute CStr(var_12C & var_C8 & " Order By VP.Date_From DESC"), -1, var_130
  loc_1009F72: Set var_8C = var_130
  loc_1009FA8: If (var_8C.RecordCount > 0) Then
  loc_1009FD6:   var_90 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_100A012:   var_D8 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_100A017:   var_94 = CStr(CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & arg_10 & "' And VP.Date_From<="))
  loc_100A028: End If
  loc_100A02D: Set var_8C = Nothing
  loc_100A05B: var_C8 = Space((5 - Len(arg_10)))
  loc_100A063: var_E8 = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & arg_10) + var_8C.Fields.Item("start_srl_no").Value)
  loc_100A074: var_108 = Space((5 - Len(var_90)))
  loc_100A07C: var_12C = (var_12C & var_8C.Fields.Item("start_srl_no").Value + var_12C & var_8C.Fields.Item("start_srl_no").Value & " Order By VP.Date_From DESC")
  loc_100A086: var_14C = (var_12C + CVar(var_90))
  loc_100A097: var_15C = Space((8 - Len(var_94)))
  loc_100A09F: var_16C = (var_14C + var_15C)
  loc_100A0A9: var_17C = (var_16C + CVar(var_94))
  loc_100A0AE: var_88 = CStr(var_17C)
  loc_100A0CD: Proc_310_23_100A0D4 = 
End Sub

Public Sub Proc_310_24_F92D6C
  'Data Table: 4C2D80
  Dim var_98 As String
  Dim var_D8 As Variant
  Dim var_8C As Recordset15
  Dim var_130 As Fields15
  loc_F92C4A: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_F92C7B: Proc_6_7_F26918(var_C8, arg_14, CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & arg_10 & "' And VP.Date_From<="))
  loc_F92C97: Me.Connection15.Execute CStr(var_12C & var_C8 & " Order By VP.Date_From DESC"), -1, var_130
  loc_F92CA2: Set var_8C = var_130
  loc_F92CD8: If (var_8C.RecordCount > 0) Then
  loc_F92D06:   var_90 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_F92D42:   var_D8 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_F92D47:   var_94 = CStr(CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & arg_10 & "' And VP.Date_From<="))
  loc_F92D58: End If
  loc_F92D5D: Set var_8C = Nothing
  loc_F92D63: var_88 = var_90
  loc_F92D66: Proc_310_24_F92D6C = 
End Sub
