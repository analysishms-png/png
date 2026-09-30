VERSION 5.00
Begin VB.Form FrmUserPaymentCollection
  Caption = "User Payment Receive Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11010
  ClientHeight = 7950
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11010
    Height = 450
    TabIndex = 20
  End
  Begin DataGrid DGUser
    Left = 7665
    Top = 705
    Width = 4200
    Height = 2160
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin Frame FrmList
    Left = 11760
    Top = 5565
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 17
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 135
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 18
    End
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HFF0000&
    Left = 2535
    Top = 1320
    Width = 1350
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 12
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2535
    Top = 2265
    Width = 4185
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 35
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
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2535
    Top = 1950
    Width = 1350
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox Txt
    Index = 2
    Left = 6900
    Top = 5700
    Width = 1350
    Height = 255
    Enabled = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 8
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &HFF0000&
    Left = 2535
    Top = 1635
    Width = 1350
    Height = 285
    TabIndex = 3
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
    Left = 6900
    Top = 6120
    Width = 1875
    Height = 255
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 21
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2535
    Top = 2580
    Width = 4185
    Height = 1050
    TabIndex = 7
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 150
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
  Begin MaskEdBox txtM
    Index = 4
    Left = 3900
    Top = 1635
    Width = 720
    Height = 255
    TabIndex = 4
  End
  Begin MSFlexGrid FGPoint
    Left = 11940
    Top = 3210
    Width = 1785
    Height = 1440
    Visible = 0   'False
    TabIndex = 19
  End
  Begin Label LblName
    Caption = "Type"
    Index = 3
    ForeColor = &HFF0000&
    Left = 1320
    Top = 1305
    Width = 465
    Height = 240
    Visible = 0   'False
    TabIndex = 16
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
    Caption = "Against User"
    Index = 0
    ForeColor = &HFF0000&
    Left = 1305
    Top = 2265
    Width = 1185
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
  Begin Label LblName
    Caption = "Amount"
    Index = 6
    ForeColor = &HFF0000&
    Left = 1305
    Top = 1950
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
  Begin Label LblName
    Caption = "Date"
    Index = 2
    ForeColor = &HFF0000&
    Left = 1305
    Top = 1635
    Width = 435
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HFF&
    Left = 6180
    Top = 5715
    Width = 600
    Height = 240
    TabIndex = 11
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Vr.No"
    Index = 1
    ForeColor = &H0&
    Left = 5535
    Top = 5700
    Width = 480
    Height = 240
    TabIndex = 10
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Label1
    Caption = "DOC ID"
    Index = 3
    ForeColor = &H0&
    Left = 6105
    Top = 6120
    Width = 615
    Height = 240
    Visible = 0   'False
    TabIndex = 9
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Narration"
    Index = 4
    ForeColor = &HFF0000&
    Left = 1305
    Top = 2580
    Width = 885
    Height = 240
    TabIndex = 8
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

Attribute VB_Name = "FrmUserPaymentCollection"

Private global_68 As Recordset15
Private global_72 As Variant
Private MasterFormExit As Integer

Private Sub DGUser_UnknownEvent_9 'EEB770
  'Data Table: 480BE4
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EEB6B9: Set var_A8 = Me.DGUser
  loc_EEB6BF: var_A8.Visible = False
  loc_EEB6E1: If (Me.var_A8.RecordCount > 0) Then
  loc_EEB704:   var_B0 = Me.Recordset15.Fields.Item("Name")
  loc_EEB723:   Set var_B4 = Me.Txt
  loc_EEB729:   Call 0.Method_DGUser_UnknownEvent_90 (CInt(5), var_B8)
  loc_EEB731:   var_B8.Text = CStr(var_B0.Value)
  loc_EEB747: End If
  loc_EEB752: Set var_A8 = Me.Txt
  loc_EEB758: Call 0.Method_DGUser_UnknownEvent_90 (CInt(5))
  loc_EEB760: var_B0.SetFocus
  loc_EEB76C: Exit Sub
  loc_EEB76D: GoTo loc_EF22B0
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11180C8
  'Data Table: 480BE4
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_B4 As String
  Dim var_90 As Fields15
  Dim var_B8 As Variant
  loc_1117D96: Set var_88 = Me.Txt
  loc_1117D9C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1117DAA: Proc_6_74_E23240(var_8C)
  loc_1117DB6: Call Proc_287_39_EB904C(var_8C)
  loc_1117DBE: var_92 = Index
  loc_1117DC9: If Not (var_92 = CInt(3)) Then
  loc_1117DD4:   If (var_92 = CInt(4)) Then
  loc_1117DD7:   End If
  loc_1117DDF:   var_98 = "{Home}+{End}"
  loc_1117DE5:   Proc_303_0_FBACC8(var_98, 0)
  loc_1117DF0: Else
  loc_1117DF8:   If (var_92 = CInt(5)) Then
  loc_1117E15:     If (Me.Recordset15.RecordCount > 0) Then
  loc_1117E23:       Set var_8C = Me.FGPoint
  loc_1117E3F:       Proc_6_137_1192FDC(Me.DGUser, global_68, Index)
  loc_1117E4D:     End If
  loc_1117EA4:     Set var_88 = Me.Txt
  loc_1117EAA:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1117EB2:     ((global_68.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_1117ECA:     If (var_8C Or (var_98 = vbNullString)) Then
  loc_1117EDA:       Set var_88 = Me.Txt
  loc_1117EE0:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1117EE8:       var_8C.Tag = vbNullString
  loc_1117EF4:       Exit Sub
  loc_1117EF5:     End If
  loc_1117F02:     Set var_88 = Me.Txt
  loc_1117F08:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1117F10:     var_98 = var_8C.Text
  loc_1117F22:     var_B4 = "Name"
  loc_1117F60:     If CBool(CVar(var_98) <> Me.Recordset15.Fields.Item(var_B4).Value) Then
  loc_1117F6C:       Me.Recordset15.MoveFirst
  loc_1117F8F:       Set var_88 = Me.Txt
  loc_1117F95:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name='")
  loc_1117F9D:       0 = var_8C.Text
  loc_1117FB9:       Me.Recordset15.Find 1 & var_98 & "'", var_B4, var_92
  loc_1117FCE:     End If
  loc_1117FD1:   Else
  loc_1117FD9:     If (var_92 = CInt(1)) Then
  loc_1117FE9:       ReDim var_F4(0 To 1)
  loc_1118000:       var_F4(0) = "Misc Rect."
  loc_111800F:       var_F4(1) = "Misc Payment"
  loc_1118026:       global_72 = Array(var_F4)
  loc_1118031:       Set var_B8 = Me.ListView
  loc_111804C:       Set var_8C = Me.Txt
  loc_1118066:       Set global_88 = Proc_6_66_F0048C(var_B8, var_8C, Index)
  loc_1118084:       Set var_88 = Me.Txt
  loc_111808A:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1118092:       global_72 = var_8C.Text
  loc_11180A4:       Set var_90 = Me.Txt
  loc_11180AA:       Call 0.Method_Txt_GotFocus0 (Index, var_B8, var_98)
  loc_11180B2:       var_B8.Tag = 2
  loc_11180C5:     End If
  loc_11180C5:   End If
  loc_11180C5: End If
  loc_11180C5: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11E97D4
  'Data Table: 480BE4
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim var_8C As DataGrid
  Dim var_E0 As String
  loc_11E9373: var_86 = Shift
  loc_11E9380: If (CLng(Shift) = &H1B) Then
  loc_11E9383:   Call Proc_287_39_EB904C(var_86)
  loc_11E9388:   Exit Sub
  loc_11E9389: End If
  loc_11E938C: var_88 = KeyCode
  loc_11E9397: If (var_88 = CInt(5)) Then
  loc_11E93A5:   Set var_A8 = Me.Txt
  loc_11E93B7:   Set var_9C = Me.FGPoint
  loc_11E93C2:   Set var_98 = Nothing
  loc_11E93F4:   Proc_6_69_134A630(Me.DGUser, var_A8, KeyCode, global_68, Shift, 0)
  loc_11E9416:   var_B0 = Me.FGPoint.RecordCount
  loc_11E9466:   If ((var_B0 > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_11E946D:     Set var_98 = Me.DGUser
  loc_11E9474:     Set var_90 = Me.FGPoint
  loc_11E9490:     Proc_6_138_106E830(var_98, global_68, KeyCode, var_90, 1)
  loc_11E949E:   End If
  loc_11E94A1: Else
  loc_11E94A9:   If (var_88 = CInt(1)) Then
  loc_11E94CE:     Set var_8C = Me.Txt
  loc_11E94D4:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, var_98)
  loc_11E94DC:     var_9C = var_90.Left
  loc_11E94EE:     Set var_98 = Me.Txt
  loc_11E94F4:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_B4)
  loc_11E94FC:     0 = var_9C.Top
  loc_11E950E:     Set var_A4 = Me.Txt
  loc_11E9514:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_11E951C:     var_B8 = var_A8.Height
  loc_11E952E:     Set var_AC = Me.Txt
  loc_11E9534:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_11E953C:     var_C0 = var_BC.Width
  loc_11E9584:     Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11E95AB:   Else
  loc_11E95B3:     If (var_88 = CInt(6)) Then
  loc_11E95B9:       Proc_6_58_E06050(Shift, CInt(var_B0), CInt((var_B4 + var_B8)))
  loc_11E95C8:       If (CLng(Shift) = &H2D) Then
  loc_11E95D8:         Set var_8C = Me.Txt
  loc_11E95DE:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_E4)
  loc_11E95E6:         CInt(var_C0) = var_90.Text
  loc_11E95F1:         Call Proc_287_42_EE4248(var_E0, var_E4)
  loc_11E9607:         Set var_98 = Me.Txt
  loc_11E960D:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11E9615:         var_9C.Text = 680 & var_E0
  loc_11E963B:         Set var_8C = Me.Txt
  loc_11E9641:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_11E965C:         Set var_98 = Me.Txt
  loc_11E9662:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11E966A:         var_9C.SelStart = Len(var_90.Text)
  loc_11E967D:         Exit Sub
  loc_11E967E:       End If
  loc_11E967E:     End If
  loc_11E967E:   End If
  loc_11E967E: End If
  loc_11E96B7: If ((CBool(Me.DGUser.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_11E96D8:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(6))) Then
  loc_11E96E1:     Proc_6_75_E5335C(Shift, arg_14)
  loc_11E96E6:   End If
  loc_11E96EA:   Set var_8C = Me.TopCtrl1
  loc_11E96F0:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000C(var_88)
  loc_11E9712:   If ((CStr() = "Add") And (KeyCode <> CInt(2))) Then
  loc_11E972A:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11E9733:       Proc_6_76_E533C8(Shift)
  loc_11E9738:     End If
  loc_11E973B:   Else
  loc_11E973F:     Set var_8C = Me.TopCtrl1
  loc_11E9745:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000C(arg_14)
  loc_11E975E:     If (CStr() = "Edit") Then
  loc_11E9776:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11E977F:         Proc_6_76_E533C8(Shift)
  loc_11E9784:       End If
  loc_11E9784:     End If
  loc_11E9784:   End If
  loc_11E97A2:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(6))) Then
  loc_11E97A8:     Call Proc_287_40_E92368(KeyCode)
  loc_11E97AD:     Exit Sub
  loc_11E97AE:   End If
  loc_11E97C3:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11E97CC:     Proc_6_75_E5335C(Shift, arg_14)
  loc_11E97D1:   End If
  loc_11E97D1: End If
  loc_11E97D1: Exit Sub
  loc_11E97D2: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F1E148
  'Data Table: 480BE4
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_F1E04C: On Error Goto loc_F1E13F
  loc_F1E052: Proc_6_58_E06050(arg_10)
  loc_F1E05A: var_86 = KeyAscii
  loc_F1E065: If (var_86 = CInt(4)) Then
  loc_F1E072:   Set var_8C = Me.Txt
  loc_F1E078:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F1E093:   Proc_6_42_129B55C(var_90, arg_10, 7)
  loc_F1E0A2: Else
  loc_F1E0AA:   If (var_86 = CInt(5)) Then
  loc_F1E0C9:     If (CBool(Me.DGUser.Visible) = &HFF) Then
  loc_F1E0DB:       var_AC = "Name"
  loc_F1E0FA:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, arg_10)
  loc_F1E130:       Proc_6_138_106E830(Me.DGUser, global_68, KeyAscii, Me.FGPoint)
  loc_F1E13E:     End If
  loc_F1E13E:   End If
  loc_F1E13E: End If
  loc_F1E13E: Exit Sub
  loc_F1E13F: ' Referenced from: F1E04C
  loc_F1E13F: Proc_6_60_E63754(var_AC, 0)
  loc_F1E144: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E000BC
  'Data Table: 480BE4
  Dim var_86 As Integer
  loc_E000B7: var_86 = KeyCode
  loc_E000BA: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E502B4
  'Data Table: 480BE4
  loc_E50292: Set var_88 = Me.Txt
  loc_E50298: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E502A6: Proc_6_73_E23294(var_8C)
  loc_E502B2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '11A4674
  'Data Table: 480BE4
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_C4 As Long
  Dim var_94 As String
  Dim var_F0 As TextBox
  Dim var_EC As TextBox
  Dim arg_10 As Integer
  Dim var_8C As Fields15
  loc_11A4267: var_86 = Cancel
  loc_11A4272: If (var_86 = CInt(3)) Then
  loc_11A4283:   Set var_8C = Me.Txt
  loc_11A4289:   Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_11A42A7:   var_C4 = Len(Trim(CVar(var_90.Text)))
  loc_11A42C1:   If (var_C4 = 0) Then
  loc_11A42D7:     Set var_8C = Me.Txt
  loc_11A42DD:     Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_11A42E5:     var_90.Text = CStr(MemVar_1F950EC)
  loc_11A42F7:   Else
  loc_11A4301:     Set var_8C = Me.Txt
  loc_11A4307:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11A4327:     Set var_EC = Me.Txt
  loc_11A432D:     Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_11A4335:     var_F0.Text = Proc_6_33_15125B8(var_90)
  loc_11A4355:     Set var_8C = Me.Txt
  loc_11A435B:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11A437E:     Set var_E8 = Me.Txt
  loc_11A4384:     Call 0.Method_Txt_Validate0 (Cancel, var_EC, var_F4)
  loc_11A438C:     (CDate(var_90.Text) >= MemVar_1F950F4) = var_EC.Text
  loc_11A43AE:     If Not((var_86 And (CDate(var_F4) <= MemVar_1F950FC))) Then
  loc_11A43D2:       MsgBox("Invalid Date !", &H10, "Validation Error", var_C4, var_E4)
  loc_11A43EC:       Set var_8C = Me.Txt
  loc_11A43F2:       Call 0.Method_Txt_Validate0 (Cancel)
  loc_11A43FA:       var_90.SetFocus
  loc_11A4408:       arg_10 = &HFF
  loc_11A440B:       Exit Sub
  loc_11A440C:     End If
  loc_11A4410:     Set var_8C = Me.TopCtrl1
  loc_11A4416:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(arg_10)
  loc_11A441E:     var_94 = CStr(var_90)
  loc_11A442F:     If (var_94 = "Add") Then
  loc_11A4438:       Call Proc_287_41_115B448(MemVar_1F95044)
  loc_11A444B:       Set var_8C = Me.Txt
  loc_11A4451:       Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_11A4459:       var_90.Text = var_94
  loc_11A4468:     End If
  loc_11A4468:   End If
  loc_11A446B: Else
  loc_11A4473:   If (var_86 = CInt(4)) Then
  loc_11A4480:     Set var_8C = Me.Txt
  loc_11A4486:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11A44B2:     var_94 = CStr(Format(CVar(var_90), "0.00"))
  loc_11A44C0:     Set var_E8 = Me.Txt
  loc_11A44C6:     Call 0.Method_Txt_Validate0 (Cancel, var_EC, var_94)
  loc_11A44CE:     var_EC.Text = 1
  loc_11A44EB:   Else
  loc_11A44F3:     If (var_86 = CInt(5)) Then
  loc_11A454D:       Set var_8C = Me.Txt
  loc_11A4553:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_11A455B:       ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_90.Text
  loc_11A4573:       If (1 Or (var_94 = vbNullString)) Then
  loc_11A4583:         Set var_8C = Me.Txt
  loc_11A4589:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11A4591:         var_90.Tag = vbNullString
  loc_11A459D:         Exit Sub
  loc_11A459E:       End If
  loc_11A45DC:       Set var_E8 = Me.Txt
  loc_11A45E2:       Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_11A45EA:       var_EC.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_11A463E:       Set var_E8 = Me.Txt
  loc_11A4644:       Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_11A464C:       var_EC.Tag = CStr(Me.Recordset15.Fields.Item("SearchCode").Value)
  loc_11A4665:     Else
  loc_11A466D:       If (var_86 = CInt(1)) Then
  loc_11A4670:       End If
  loc_11A4670:     End If
  loc_11A4670:   End If
  loc_11A4670: End If
  loc_11A4670: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F1887C
  'Data Table: 480BE4
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F18798: On Error Goto loc_F18876
  loc_F1879F: Set var_A4 = Me.ListView
  loc_F187E9: Set var_BC = Me.Txt
  loc_F187EF: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F187F7: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F18823: Me.FrmList.Visible = False
  loc_F18845: var_C8 = Val(CStr(Me.ListView.Tag))
  loc_F18853: Set var_9C = Me.Txt
  loc_F18859: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F18861: var_A4.SetFocus
  loc_F18875: Exit Sub
  loc_F18876: ' Referenced from: F18798
  loc_F18876: Proc_6_60_E63754(var_C8)
  loc_F1887B: Exit Sub
End Sub

Private Sub Form_Load() '119E588
  'Data Table: 480BE4
  Dim var_94 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim var_D0 As Variant
  Dim Me As Recordset15
  Dim var_15C As Double
  Dim var_154 As String
  Dim var_168 As TextBox
  Dim var_C0 As TextBox
  Dim var_164 As DataGrid
  loc_119E190: On Error Goto loc_119E581
  loc_119E19D: Set var_A8 = Me.TopCtrl1
  loc_119E1A3: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_119E1B1: Call 0.Method_arg_50 (var_AC)
  loc_119E1B9: var_BC = CVar(var_AC) 'String
  loc_119E1C1: Set var_A8 = Me.TopCtrl1
  loc_119E1C7: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030007(var_BC)
  loc_119E1D9: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_119E1EA: Call 0.Method_arg_38 (MemVar_1F953B0)
  loc_119E1FB: Call 0.Method_arg_3C (MemVar_1F950EC)
  loc_119E20C: Call 0.Method_arg_54 (MemVar_1F9506C)
  loc_119E21D: Call 0.Method_arg_1C (MemVar_1F95070)
  loc_119E22E: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_119E23F: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_119E250: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_119E261: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_119E272: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_119E283: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_119E29D: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_119E2AB: Set var_A8 = MemVar_1F95044
  loc_119E2BA: Call 0.Method_Form_Load8 (var_A8)
  loc_119E2D0: Me.TopCtrl1.Clone
  loc_119E2EA: Call 0.Method_Form_LoadC (var_A8, -1)
  loc_119E304: Me.Recordset20.Clone
  loc_119E30F: Set var_C0 = var_A8
  loc_119E31E: Call 0.Method_arg_50 (var_C0, -1)
  loc_119E346: Me.Recordset15.CursorLocation = 3
  loc_119E356: Proc_6_7_F26918(var_BC, MemVar_1F950F4)
  loc_119E366: Proc_6_7_F26918(var_110, MemVar_1F950FC)
  loc_119E390: var_D0 = CVar("Select DocID as SearchCode,DocID,LogSite_Code,Site_Code From UserCollection where LOGSITE_CODE='" & MemVar_1F95078 & "' AND vdate between ") 'String
  loc_119E3BA: Me.Open var_D0 & var_BC & " And " & var_110 & " Order by DocID", CVar(MemVar_1F95044), 2
  loc_119E3F2: Me.Recordset15.CursorLocation = 3
  loc_119E3FF: var_15C = Val(MemVar_1F95128)
  loc_119E425: var_154 = "Select User_Name as SearchCode,User_Name Name From UserMast where ActiveYN='Y' And User_Name In (Select UserName From MenuHelp Where [Option] In ('Recharge Entry','Refund Entry') And UserName<>'SA' And Cast(CompCode As Int)=" & CStr(var_15C)
  loc_119E439: Me.Recordset15.Open CVar(var_154 & " And Flag<>'V') Order by Name"), CVar(MemVar_1F95044), 2
  loc_119E454: CVarUnk
  loc_119E459: VerifyVarObj
  loc_119E465: LateIdStAd
  loc_119E481: Set var_164 = Me.Txt
  loc_119E487: Call 0.Method_Form_Load0 (CInt(5), var_168, var_16C, Me.DGUser, New, 3)
  loc_119E48F: -1 = var_168.Height
  loc_119E4A2: Set var_A8 = Me.Txt
  loc_119E4A8: Call 0.Method_Form_Load0 (CInt(5), var_C0, var_160, var_15C)
  loc_119E4B0: 3 = var_C0.Top
  loc_119E4BC: var_94 = CVar((var_160 + var_16C)) 'Single
  loc_119E4CB: Me.DGUser.Top = CVar(MemVar_1F95044)
  loc_119E4EB: Set var_A8 = Me.Txt
  loc_119E4F1: Call 0.Method_Form_Load0 (CInt(5), var_C0, var_160)
  loc_119E4F9: -1 = var_C0.Left
  loc_119E510: Me.DGUser.Left = CVar(var_160)
  loc_119E524: global_60 = "UPREC"
  loc_119E54B: Call Proc_287_38_EF5698(Proc_5_1_100EC1C("INI", Me, New), Me)
  loc_119E568: Set var_A8 = Me
  loc_119E56E: Proc_6_23_DFC5B8(var_A8, 4000)
  loc_119E576: Call Proc_287_36_EE415C(6700)
  loc_119E57B: Call Proc_287_37_11ED25C(var_A8)
  loc_119E580: Exit Sub
  loc_119E581: ' Referenced from: 119E190
  loc_119E581: Proc_6_60_E63754()
  loc_119E586: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E45AC0
  'Data Table: 480BE4
  loc_E45A9B: Set global_64 = Nothing
  loc_E45AA7: MasterFormExit = 0
  loc_E45AB5: Set global_92 = Nothing
  loc_E45ABC: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2536C
  'Data Table: 480BE4
  loc_E25351: If (MasterFormExit = &HFF) Then
  loc_E25361:   Me.Global.Unload Me
  loc_E25369: End If
  loc_E25369: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E34B08
  'Data Table: 480BE4
  loc_E34ADC: On Error Goto loc_E34B00
  loc_E34AF7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E34AFF: Exit Sub
  loc_E34B00: ' Referenced from: E34ADC
  loc_E34B00: Proc_6_60_E63754(Shift)
  loc_E34B05: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F77924
  'Data Table: 480BE4
  Dim var_D4 As Variant
  Dim var_88 As String
  loc_F777E8: On Error Goto loc_F7791E
  loc_F7780E: Call Proc_287_38_EF5698(Proc_5_1_100EC1C("ADD", Me))
  loc_F77819: Call Proc_287_36_EE415C(global_64)
  loc_F77859: Set var_8C = Me.txtM
  loc_F7785F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_D4, CVar(CStr(Format(Now, "HH:MM"))))
  loc_F77867: var_D4.Text = 1
  loc_F7788F: Set var_8C = Me.txtM
  loc_F77895: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_D4)
  loc_F7789D: var_D4.Tag = vbNullString
  loc_F778AE: var_88 = CStr(MemVar_1F950EC)
  loc_F778BC: Set var_8C = Me.Txt
  loc_F778C2: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_D4)
  loc_F778CA: var_D4.Text = var_88
  loc_F778E5: Call Txt_Validate(CInt(3))
  loc_F778F0: Call Proc_287_41_115B448(MemVar_1F95044, var_88)
  loc_F77903: Set var_8C = Me.Txt
  loc_F77909: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_D4)
  loc_F77911: var_D4.SetFocus
  loc_F7791D: Exit Sub
  loc_F7791E: ' Referenced from: F777E8
  loc_F7791E: Proc_6_60_E63754(0)
  loc_F77923: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EAD3C8
  'Data Table: 480BE4
  loc_EAD344: On Error Goto loc_EAD3BF
  loc_EAD37E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EAD3A4:   Call Proc_287_38_EF5698(Proc_5_1_100EC1C("INI", Me))
  loc_EAD3AF:   Call Proc_287_39_EB904C(global_64)
  loc_EAD3B4:   Call Proc_287_36_EE415C()
  loc_EAD3B9:   Call Proc_287_37_11ED25C()
  loc_EAD3BE: End If
  loc_EAD3BE: Exit Sub
  loc_EAD3BF: ' Referenced from: EAD344
  loc_EAD3BF: Proc_6_60_E63754()
  loc_EAD3C4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10BE018
  'Data Table: 480BE4
  Dim var_96 As Integer
  Dim unk_480BFD As Connection15
  Dim Me As Recordset15
  Dim var_124 As TextBox
  Dim var_12C As String
  Dim var_B8 As Variant
  loc_10BDD6C: On Error Goto loc_10BDFC0
  loc_10BDD7D: If (Proc_183_56_FE8B08(global_64) = &HFF) Then
  loc_10BDD80:   Exit Sub
  loc_10BDD81: End If
  loc_10BDDB8: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10BDDC9:   unk_480BFD.BeginTrans var_11C
  loc_10BDDDF:   var_94 = Me.Bookmark 'Variant
  loc_10BDE01:   Set var_120 = Me.Txt
  loc_10BDE07:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Delete From UserCollection Where DocID='")
  loc_10BDE0F:   var_B8 = var_124.Text
  loc_10BDE18:   var_12C = -1 & var_128
  loc_10BDE28:   unk_480BFD.Execute var_12C & "'", var_134, &HFF
  loc_10BDE50:   Set var_120 = Me.Txt
  loc_10BDE56:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124)
  loc_10BDE68:   var_168 = 0
  loc_10BDE7B:   var_160 = 0
  loc_10BDE86:   var_15C = 0
  loc_10BDE99:   var_154 = 0
  loc_10BDEA4:   var_150 = 0
  loc_10BDEB7:   var_148 = 0
  loc_10BDEF6:   var_128 = "UserCollection"
  loc_10BDEFF:   Proc_154_5_10E3BD4(MemVar_1F95044, var_128, "DocId", &HC8, var_124.Text, 0, 0, 0)
  loc_10BDF2A:   unk_480BFD.CommitTrans
  loc_10BDF31:   var_96 = 0
  loc_10BDF3F:   Me.Requery -1
  loc_10BDF5F:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10BDF6C:     Me.Bookmark = var_94
  loc_10BDF74:   Else
  loc_10BDF88:     If (Me.EOF = 0) Then
  loc_10BDF91:       Me.MoveLast
  loc_10BDF96:     End If
  loc_10BDF96:   End If
  loc_10BDF96:   Call Proc_287_37_11ED25C(var_96, var_148, 0, var_150, var_154)
  loc_10BDFB7:   Proc_5_0_1107AD0(&HFF, Me, global_64, 0)
  loc_10BDFBF: End If
  loc_10BDFBF: Exit Sub
  loc_10BDFC0: ' Referenced from: 10BDD6C
  loc_10BDFC6: If (var_96 = &HFF) Then
  loc_10BDFCF:   unk_480BFD.RollbackTrans
  loc_10BDFD4: End If
  loc_10BDFDC: Set var_120 = Err()
  loc_10BDFE2: Call 0.Method_arg_2C (var_128, 0, var_15C)
  loc_10BE003: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10BE016: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F7FA90
  'Data Table: 480BE4
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F7F948: On Error Goto loc_F7FA4D
  loc_F7F959: If (Proc_183_55_FE8490(global_64) = &HFF) Then
  loc_F7F95C:   Exit Sub
  loc_F7F95D: End If
  loc_F7F974: If (Me.RecordCount > 0) Then
  loc_F7F98C:   var_8C = "EDIT"
  loc_F7F99A:   Call Proc_287_38_EF5698(Proc_5_1_100EC1C(var_8C, Me))
  loc_F7F9B2:   Set var_90 = Me.Txt
  loc_F7F9B8:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_98)
  loc_F7F9C0:   var_98.Enabled = False
  loc_F7F9D9:   Set var_90 = Me.Txt
  loc_F7F9DF:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_F7F9E7:   var_98.Enabled = False
  loc_F7F9FE:   Set var_90 = Me.Txt
  loc_F7FA04:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_98)
  loc_F7FA0C:   var_98.SetFocus
  loc_F7FA1B: Else
  loc_F7FA3C:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F7FA4C: End If
  loc_F7FA4C: Exit Sub
  loc_F7FA4D: ' Referenced from: F7F948
  loc_F7FA55: Set var_90 = Err()
  loc_F7FA5B: Call 0.Method_arg_2C (var_8C)
  loc_F7FA7C: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F7FA8F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A314
  'Data Table: 480BE4
  loc_E1A309: Me.Global.Unload Me
  loc_E1A311: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F20D54
  'Data Table: 480BE4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim MemVar_1F950E4 As String
  loc_F20C60: On Error Goto loc_F20D4D
  loc_F20C7A: If (Me.RecordCount <= 0) Then
  loc_F20C98:   var_A8 = "No Records To Search."
  loc_F20C9E:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F20CAE:   Exit Sub
  loc_F20CAF: End If
  loc_F20CB6: var_10C = "Select E.DocID as SearchCode,E.VNo VNo,cast(E.VDate as Varchar(11)) as Date,E.VTime Time,E.Remarks,cast(E.Amount as varchar) As Amount,E.AgUser Agnst_User From UserCollection E where (E.LOGSITE_CODE='" & MemVar_1F95078
  loc_F20CCB: Proc_6_7_F26918(var_A8, MemVar_1F950F4)
  loc_F20CD7: var_B8 = " And "
  loc_F20CEB: Proc_6_7_F26918(var_11C, MemVar_1F950FC)
  loc_F20D01: MemVar_1F950E4 = CStr(CVar(var_10C & "' or E.LOGSITE_CODE='HO') AND E.vdate Between ") & var_A8 & var_B8 & var_11C & " Order by DocID,VNo")
  loc_F20D22: Proc_6_126_F1C850("500,1300,500,4000,1000,1500")
  loc_F20D30: MemVar_1F95120 = Me
  loc_F20D47: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F20D4C: Exit Sub
  loc_F20D4D: ' Referenced from: F20C60
  loc_F20D4D: Proc_6_60_E63754(MemVar_1F950E4)
  loc_F20D52: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E34BC8
  'Data Table: 480BE4
  loc_E34BB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E34BC0: Call Proc_287_37_11ED25C(global_64)
  loc_E34BC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E34DA8
  'Data Table: 480BE4
  loc_E34D98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E34DA0: Call Proc_287_37_11ED25C(global_64)
  loc_E34DA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E34CE8
  'Data Table: 480BE4
  loc_E34CD8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E34CE0: Call Proc_287_37_11ED25C(global_64)
  loc_E34CE5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E34C88
  'Data Table: 480BE4
  loc_E34C78: Proc_5_0_1107AD0(&HFF, Me)
  loc_E34C80: Call Proc_287_37_11ED25C(global_64)
  loc_E34C85: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'DFFFA4
  'Data Table: 480BE4
  loc_DFFF9C: Call Proc_287_33_13D0020()
  loc_DFFFA1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0B494
  'Data Table: 480BE4
  loc_E0B48E: Me.Recordset15.Requery -1
  loc_E0B493: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '147EAFC
  'Data Table: 480BE4
  Dim var_A4 As Variant
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_AC As String
  Dim unk_480BFD As Connection15
  Dim var_98 As Recordset15
  Dim var_A0 As Variant
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_134 As Variant
  Dim var_12C As Variant
  Dim var_10C As Variant
  Dim var_86 As Integer
  Dim var_13C As String
  Dim MemVar_1F950EC As Double
  Dim var_144 As Variant
  Dim var_444 As Double
  Dim var_19C As Variant
  Dim var_21C As TextBox
  Dim var_44C As Double
  Dim var_258 As TextBox
  Dim var_150 As String
  Dim var_184 As Variant
  Dim var_204 As Variant
  Dim var_3B4 As Variant
  Dim var_8C As Recordset15
  Dim Me As Recordset15
  loc_147DFB4: On Error Goto loc_147EAE2
  loc_147DFC2: Set var_A0 = Me.Txt
  loc_147DFC8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3))
  loc_147DFF1: If (Proc_6_27_EA61EC(var_A4, "Date") = 0) Then
  loc_147DFF4:   Exit Sub
  loc_147DFF5: End If
  loc_147E000: Set var_A0 = Me.Txt
  loc_147E006: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4)
  loc_147E02F: If (Proc_6_27_EA61EC(var_A4, "Vr No") = 0) Then
  loc_147E032:   Exit Sub
  loc_147E033: End If
  loc_147E041: Set var_A0 = Me.Txt
  loc_147E047: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4)
  loc_147E06B: If (CDbl(Val(var_A4.Text)) = CDbl(0)) Then
  loc_147E089:   var_CC = "Amount should not be zero."
  loc_147E08F:   MsgBox(var_CC, &H10, "Validation Error", var_10C, var_12C)
  loc_147E0AA:   Set var_A0 = Me.Txt
  loc_147E0B0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4)
  loc_147E0B8:   var_A4.SetFocus
  loc_147E0C4:   Exit Sub
  loc_147E0C5: End If
  loc_147E0D0: Set var_A0 = Me.Txt
  loc_147E0D6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A4)
  loc_147E0FF: If (Proc_6_27_EA61EC(var_A4, "Against User") = 0) Then
  loc_147E102:   Exit Sub
  loc_147E103: End If
  loc_147E106: Call Proc_287_35_F8E7C4(var_12E)
  loc_147E111: If (var_12E = 0) Then
  loc_147E114:   Exit Sub
  loc_147E115: End If
  loc_147E132: Proc_6_17_EAAE40(var_CC, MemVar_1F95078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=", var_10C)
  loc_147E13A: var_EC = -1 & var_CC 
  loc_147E148: unk_480BFD.Execute CStr("Validation Error"), var_A0, var_A4
  loc_147E153: Set var_98 = var_A0
  loc_147E1A3: var_A8 = var_98.Fields
  loc_147E1B3: var_EC = var_A8.Item("CashPayType").Value
  loc_147E1C5: var_12C = IsNull(CVar(var_98.Fields.Item("CashPayType"))) Or (var_EC = vbNullString)
  loc_147E1DD: If CBool(var_12C) Then
  loc_147E1F9:   MsgBox("Set Cash Pay Type in Enviro", &H40, var_EC, var_10C, var_12C)
  loc_147E209:   Exit Sub
  loc_147E20A: End If
  loc_147E236: var_A4 = var_98.Fields.Item("CashPayType")
  loc_147E23E: var_CC = var_A4.Value
  loc_147E246: var_EC = "SELECT ACCODE FROM REVMAST WHERE cODE='" & var_CC 
  loc_147E24F: var_10C = var_EC & "'" 
  loc_147E25D: unk_480BFD.Execute CStr(var_10C), var_12C, -1
  loc_147E268: Set var_9C = var_A8
  loc_147E290: unk_480BFD.BeginTrans var_138
  loc_147E299: Set var_A0 = Me.TopCtrl1
  loc_147E29F: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(&HFF)
  loc_147E2B8: If (CStr(var_A8) = "Add") Then
  loc_147E2C1:   var_DC = 0
  loc_147E2DE:   var_AC = "Select NCUR from enviro where LOGsite_code='" & MemVar_1F95078
  loc_147E2EE:   unk_480BFD.Execute var_AC & "'", var_CC, -1
  loc_147E2F6:   var_A0 = var_A0.Fields
  loc_147E2FE:   var_DC = var_A4.Item(var_A4)
  loc_147E306:   var_A8 = var_A8.Value
  loc_147E310:   MemVar_1F950EC = CDate(var_EC)
  loc_147E357:   Set var_A0 = Me.Txt
  loc_147E35D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, "Select Count(*) From UserCollection Where DocID='", var_CC, -1, var_A8)
  loc_147E37E:   unk_480BFD.Execute 0 & var_AC & "'", var_144, var_EC
  loc_147E386:   MemVar_1F950EC = var_A8.Fields
  loc_147E38E:    = var_A4.Text.Item(var_EC)
  loc_147E396:    = var_144.Value
  loc_147E3C3:   If (var_EC > 0) Then
  loc_147E3CC:     Call 0.Method_arg_50 (var_AC)
  loc_147E3DA:     var_EC = CVar(var_AC) 'String
  loc_147E3ED:     MsgBox("Duplicate Vr. No.", &H40, var_EC, var_10C, var_12C)
  loc_147E403:     Call Proc_287_41_115B448(MemVar_1F95044)
  loc_147E413:     If (var_AC = vbNullString) Then
  loc_147E416:       Exit Sub
  loc_147E417:     End If
  loc_147E41D:     Call Proc_287_41_115B448(MemVar_1F95044, var_AC)
  loc_147E430:     Set var_A0 = Me.Txt
  loc_147E436:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4)
  loc_147E43E:     var_A4.Text = var_AC
  loc_147E44D:     Exit Sub
  loc_147E44E:   End If
  loc_147E44E: End If
  loc_147E46C: Set var_A0 = Me.Txt
  loc_147E472: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, "Delete From UserCollection Where DocID='")
  loc_147E47A: var_CC = var_A4.Text
  loc_147E483: var_13C = -1 & var_AC
  loc_147E493: unk_480BFD.Execute 0 & var_AC & "'", var_A8, var_AC
  loc_147E4BB: Set var_A0 = Me.Txt
  loc_147E4C1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4)
  loc_147E4D5: Set var_A8 = Me.LblVPrefix
  loc_147E4EE: Set var_134 = Me.Txt
  loc_147E4F4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_144)
  loc_147E509: var_444 = Val(var_144.Text)
  loc_147E517: Set var_170 = Me.Txt
  loc_147E51D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_174)
  loc_147E52C: Proc_6_7_F26918(var_EC, CVar(var_174))
  loc_147E53C: Set var_188 = Me.txtM
  loc_147E542: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_18C)
  loc_147E551: Proc_6_17_EAAE40(var_1AC, CVar(var_18C))
  loc_147E561: Set var_1D0 = Me.Txt
  loc_147E567: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1D4)
  loc_147E576: Proc_6_17_EAAE40(var_1F4, CVar(var_1D4))
  loc_147E589: Set var_218 = Me.Txt
  loc_147E58F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_21C)
  loc_147E5A4: var_44C = Val(var_21C.Text)
  loc_147E5B5: Set var_254 = Me.Txt
  loc_147E5BB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_258, var_25C)
  loc_147E5D3: Proc_6_7_F26918(var_2FC)
  loc_147E5DC: Set var_330 = Me.TopCtrl1
  loc_147E5E2: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(CVar(Proc_6_15_EF37AC(var_444)))
  loc_147E62D: var_13C = "Insert Into UserCollection(DocID,VType,VPrefix,Site_Code,VNo,VDate,Vtime,Remarks,Amount,AgUser,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & var_A4.Text
  loc_147E645: var_150 = var_13C & "','" & global_60 & "','"
  loc_147E69A: var_204 = CVar(var_150 & var_A8.Caption & "','" & MemVar_1F95070 & "'," & CStr(var_444) & ",") & var_EC & "," & var_1AC & "," & var_1F4 
  loc_147E6F4: var_3B4 = var_204 & "," & CVar(var_258.Tag) & ",'" & CVar(var_25C) & "','" & CVar(MemVar_1F950C8) & "'," & var_2FC & ",'" & IIf((CStr(var_340) = "Add"), "A", "E") 
  loc_147E71E: unk_480BFD.Execute CStr(var_3B4 & "','" & CVar(MemVar_1F95078) & "')"), var_438, -1
  loc_147E7B0: Set var_A0 = Me.TopCtrl1
  loc_147E7B6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000C(var_43C)
  loc_147E7CF: If (CStr() = "Add") Then
  loc_147E7E6:   var_AC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_147E80C:   var_10C = CVar(var_AC & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_60 & "' And VP.Date_From<=") 'String
  loc_147E81D:   Set var_A0 = Me.Txt
  loc_147E823:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4, var_150, var_10C)
  loc_147E82B:   var_19C = var_A4.Text
  loc_147E839:   Proc_6_7_F26918(var_EC, CVar(var_150))
  loc_147E841:   var_12C = -1 & var_EC 
  loc_147E84A:   var_184 = CVar(var_150 & var_A8.Caption & "','" & MemVar_1F95070 & "'," & CStr(var_444) & ",") & var_EC & " Order By VP.Date_From DESC" 
  loc_147E858:   unk_480BFD.Execute CStr(var_184), var_A8, 
  loc_147E863:   Set var_8C = var_A8
  loc_147E8A1:   If (var_8C.RecordCount > 0) Then
  loc_147E8B2:     Set var_A0 = Me.Txt
  loc_147E8B8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4)
  loc_147E8CD:     var_444 = Val(var_A4.Text)
  loc_147E8D3:     var_BC = "Date_From"
  loc_147E8F6:     Proc_6_7_F26918(var_EC, CVar(var_8C.Fields.Item(var_BC)))
  loc_147E929:     var_150 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_444) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_147E948:     var_10C = CVar(var_150 & MemVar_1F95078 & "') and V_Type='" & global_60 & "' and Date_From=") 'String
  loc_147E94E:     var_12C = var_10C & var_EC 
  loc_147E95C:     unk_480BFD.Execute CStr(var_12C), var_184, -1
  loc_147E990:   End If
  loc_147E990: End If
  loc_147E996: unk_480BFD.CommitTrans
  loc_147E99B: Call Proc_287_39_EB904C(var_144)
  loc_147E9AE: Set var_A0 = Me.Txt
  loc_147E9B4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4)
  loc_147E9D0: var_86 = 0
  loc_147E9DE: Me.Requery -1
  loc_147EA08: Me.Find "SearchCode ='" & var_A4.Text & "'", 0, 1
  loc_147EA18: Set var_A0 = Me.TopCtrl1
  loc_147EA1E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000C(var_BC)
  loc_147EA37: If (CStr(var_86) = "Add") Then
  loc_147EA3A:   Call TopCtrl1_UnknownEvent_A()
  loc_147EA3F:   Exit Sub
  loc_147EA40: End If
  loc_147EA55: var_AC = "INI"
  loc_147EA63: Call Proc_287_38_EF5698(Proc_5_1_100EC1C(var_AC, Me), global_64)
  loc_147EA6E: Call Proc_287_37_11ED25C(var_444)
  loc_147EA8A: If (Me.RecordCount > 0) Then
  loc_147EA93:   Call 0.Method_arg_50 (var_AC)
  loc_147EAD1:   If (MsgBox(CVar(var_AC & " ?"), &H24, "Print", var_10C, var_12C) = 6) Then
  loc_147EAD4:     Call TopCtrl1_UnknownEvent_14()
  loc_147EAD9:   End If
  loc_147EAD9: End If
  loc_147EADE: Set var_8C = Nothing
  loc_147EAE1: Exit Sub
  loc_147EAE2: ' Referenced from: 147DFB4
  loc_147EAE8: If (var_86 = &HFF) Then
  loc_147EAF1:   unk_480BFD.RollbackTrans
  loc_147EAF6: End If
  loc_147EAF6: Proc_6_60_E63754()
  loc_147EAFB: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_0 'E53720
  'Data Table: 480BE4
  loc_E536FA: Set var_88 = Me.txtM
  loc_E53700: Call 0.Method_txtM_UnknownEvent_00 (KeyCode)
  loc_E5370E: Proc_6_74_E23240(var_8C)
  loc_E5371A: Call Proc_287_39_EB904C(var_8C)
  loc_E5371F: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_1 'E50384
  'Data Table: 480BE4
  loc_E50362: Set var_88 = Me.txtM
  loc_E50368: Call 0.Method_txtM_UnknownEvent_10 (KeyCode)
  loc_E50376: Proc_6_73_E23294(var_8C)
  loc_E50382: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_8 'E54C48
  'Data Table: 480BE4
  Dim Shift As Integer
  loc_E54C1E: Set var_88 = Me.txtM
  loc_E54C24: Call 0.Method_txtM_UnknownEvent_80 (KeyCode)
  loc_E54C3E: If (IsDate(CVar(var_8C)) = 0) Then
  loc_E54C43:   Shift = &HFF
  loc_E54C46: End If
  loc_E54C46: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_B 'E6124C
  'Data Table: 480BE4
  loc_E61206: If (CLng(Shift) = &H1B) Then
  loc_E61209:   Call Proc_287_39_EB904C()
  loc_E6120E:   Exit Sub
  loc_E6120F: End If
  loc_E61224: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E6122D:   Proc_6_75_E5335C(Shift)
  loc_E61232: End If
  loc_E6123C: If (CLng(Shift) = &H26) Then
  loc_E61245:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E6124A: End If
  loc_E6124A: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E34A44
  'Data Table: 480BE4
  loc_E34A38: If (CBool(Me.DGUser.Visible) = &HFF) Then
  loc_E34A3B:   Call DGUser_UnknownEvent_9()
  loc_E34A40: End If
  loc_E34A40: Exit Sub
  loc_E34A41: StUdtVar
End Sub

Public Function MasterFormExitGet() '4817C0
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4817CF
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E94340
  'Data Table: 480BE4
  Dim Me As Recordset15
  loc_E942CE: On Error Goto loc_E94337
  loc_E942D7: Me.MoveFirst
  loc_E94301: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E94329: Proc_5_0_1107AD0(&HFF, Me, global_64)
  loc_E94331: Call Proc_287_37_11ED25C(0)
  loc_E94336: Exit Sub
  loc_E94337: ' Referenced from: E942CE
  loc_E94337: Proc_6_60_E63754(var_A0)
  loc_E9433C: Exit Sub
  loc_E9433D: Result  End Sub 'Currency
End Sub

Public Sub Proc_287_33_13D0020
  'Data Table: 480BE4
  Dim var_D0 As Variant
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_B0 As Field20
  Dim var_E0 As Variant
  Dim var_F0 As String
  Dim var_104 As String
  Dim unk_480BFD As Connection15
  Dim var_98 As Recordset15
  Dim var_130 As Recordset15
  Dim var_128 As Fields15
  Dim var_124 As Variant
  Dim var_92 As Integer
  loc_13CF6B5: var_D0 = "SELECT UserCollection.* FROM UserCollection Where DocID='"
  loc_13CF6C0: var_AC = "DocID"
  loc_13CF6CF: var_9C = Me.Fields
  loc_13CF6FE: unk_480BFD.Execute CStr(var_D0 & var_9C.Item(var_AC).Value & "'"), var_124, -1
  loc_13CF709: Set var_98 = var_128
  loc_13CF729: var_12C = var_98.RecordCount
  loc_13CF737: If (var_12C = 0) Then
  loc_13CF73A:   Exit Sub
  loc_13CF73B: End If
  loc_13CF748: Call Proc_287_34_FDEF50(New, var_9C)
  loc_13CF750: Set var_88 = var_9C
  loc_13CF756: Set var_130 = var_88 
  loc_13CF765: var_130.AddNew var_AC, var_D0
  loc_13CF7B9: var_130.Fields.Item("VNo").Value = CVar(CStr(var_98.Fields.Item("VNo").Value))
  loc_13CF817: var_F0 = "VDate"
  loc_13CF833: var_130.Fields.Item(var_F0).Value = Format(CVar(var_98.Fields.Item("VDate")), "dd/MMM/yyyy")
  loc_13CF88D: var_130.Fields.Item("VType").Value = CVar(var_98.Fields.Item("vType"))
  loc_13CF916: var_130.Fields.Item("AgUser").Value = CVar(Proc_6_45_EADFB8(CStr(StrConv(CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("AgUser")), 1)), 3, 0)), &HA))
  loc_13CF95E: var_E0 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("Remarks")), 1)) 'String
  loc_13CF9C4: var_130.Fields.Item("Particulars").Value = CVar(Proc_6_45_EADFB8(CStr(StrConv(Left(Trim(var_E0), &H96), 3, 0)), 150))
  loc_13CFA0A: Proc_6_47_EF6560(var_E0, CVar(var_98.Fields.Item("Amount")))
  loc_13CFA32: var_130.Fields.Item("Amount").Value = var_E0
  loc_13CFA6D: Proc_6_39_E7D3A0(var_E0, CVar(var_98.Fields.Item("Amount")))
  loc_13CFAD3: var_130.Fields.Item("Charge").Value = StrConv(CVar(Proc_6_43_1003B24(CSng(Abs(var_E0)), vbNullString)), 3, 0)
  loc_13CFB30: var_128 = var_130.Fields
  loc_13CFB40: var_128.Item("Uname").Value = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("U_Name")), vbNullString))
  loc_13CFB58: var_D0 = CVar(MemVar_1F950C8) 'String
  loc_13CFB5F: var_AC = "LUName"
  loc_13CFB73: var_B0 = var_130.Fields.Item(var_AC)
  loc_13CFB7B: var_B0.Value = var_D0
  loc_13CFB92: var_130.Update var_AC, var_D0
  loc_13CFB9A: var_8C = "UserPaymentCollection"
  loc_13CFBA0: var_90 = "User Payment Collection Receipt"
  loc_13CFBA5: var_92 = 0
  loc_13CFBCC: Set var_9C = var_88 
  loc_13CFBD3: CreateFieldDefFile(var_9C, MemVar_1F950B4 & "\" & var_8C & ".ttx", &HFF)
  loc_13CFC01: var_104 = "\" & var_8C
  loc_13CFC15: Call 0.Method_arg_1C (MemVar_1F950B4 & var_104 & ".RPT", var_AC, var_9C)
  loc_13CFC20: MemVar_1F951E8 = var_9C
  loc_13CFC49: Call 0.Method_arg_64 (var_9C, CVar(var_9C), var_D0)
  loc_13CFC51: Call 0.Method_arg_2C (var_F0, var_92)
  loc_13CFC5F: Call 0.Method_arg_150 (var_128)
  loc_13CFC75: Call 0.Method_arg_90 (var_9C, var_12C)
  loc_13CFC7D: Call 0.Method_arg_24 (var_94)
  loc_13CFC89: For var_170 =  To CInt(var_12C): 1 = var_170 'Integer
  loc_13CFCA2:   Call 0.Method_arg_90 (var_9C, CLng(var_94))
  loc_13CFCAA:   Call 0.Method_arg_20 (var_B0)
  loc_13CFCB2:   Call 0.Method_arg_30 (var_104)
  loc_13CFCC8:   var_180 = Ucase(CVar(var_104)) 'Variant
  loc_13CFCF8:   If (var_180 = Ucase("comp_name")) Then
  loc_13CFD1C:     Call 0.Method_arg_90 (var_9C, CLng(var_94))
  loc_13CFD24:     Call 0.Method_arg_20 (var_B0)
  loc_13CFD2C:     Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_13CFD42:   Else
  loc_13CFD64:     If (var_180 = Ucase("comp_add1")) Then
  loc_13CFD88:       Call 0.Method_arg_90 (var_9C, CLng(var_94))
  loc_13CFD90:       Call 0.Method_arg_20 (var_B0)
  loc_13CFD98:       Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_13CFDAE:     Else
  loc_13CFDD0:       If (var_180 = Ucase("comp_pin")) Then
  loc_13CFDF4:         Call 0.Method_arg_90 (var_9C, CLng(var_94))
  loc_13CFDFC:         Call 0.Method_arg_20 (var_B0)
  loc_13CFE04:         Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_13CFE1A:       Else
  loc_13CFE3C:         If (var_180 = Ucase("comp_GSTIN")) Then
  loc_13CFE60:           Call 0.Method_arg_90 (var_9C, CLng(var_94))
  loc_13CFE68:           Call 0.Method_arg_20 (var_B0)
  loc_13CFE70:           Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_13CFE86:         Else
  loc_13CFEA8:           If (var_180 = Ucase("comp_tin")) Then
  loc_13CFECC:             Call 0.Method_arg_90 (var_9C, CLng(var_94))
  loc_13CFED4:             Call 0.Method_arg_20 (var_B0)
  loc_13CFEDC:             Call 0.Method_arg_38 ("'" & MemVar_1F95150 & "'")
  loc_13CFEF2:           Else
  loc_13CFF14:             If (var_180 = Ucase("Title")) Then
  loc_13CFF38:               Call 0.Method_arg_90 (var_9C, CLng(var_94))
  loc_13CFF40:               Call 0.Method_arg_20 (var_B0)
  loc_13CFF48:               Call 0.Method_arg_38 ("'Phone No. " & MemVar_1F95140 & "'")
  loc_13CFF5E:             Else
  loc_13CFF80:               If (var_180 = Ucase("BetweenDate")) Then
  loc_13CFF83:                 GoTo loc_13CFFD3
  loc_13CFF86:               End If
  loc_13CFFA8:               If (var_180 = Ucase("Dater")) Then
  loc_13CFFAB:                 GoTo loc_13CFFD3
  loc_13CFFAE:               End If
  loc_13CFFD0:               If (var_180 = Ucase("Pager")) Then
  loc_13CFFD3:                 ' Referenced from:             13CFFAB
  loc_13CFFD3:                 ' Referenced from:             13CFF83
  loc_13CFFD3:               End If
  loc_13CFFD3:             End If
  loc_13CFFD3:           End If
  loc_13CFFD3:         End If
  loc_13CFFD3:       End If
  loc_13CFFD3:     End If
  loc_13CFFD3:   End If
  loc_13CFFD6: Next var_170 'Integer
  loc_13CFFE0: Set var_B0 = Nothing
  loc_13CFFF4: Set var_9C = MemVar_1F951E8 
  loc_13D0000: Proc_6_99_1484404(var_9C, var_92, var_90)
  loc_13D000B: MemVar_1F951E8 = var_9C
  loc_13D0018: Set var_130 = Nothing 
  loc_13D001C: Exit Sub
End Sub

Public Sub Proc_287_34_FDEF50(arg_C) 'FDEF50
  'Data Table: 480BE4
  Dim var_8C As Recordset15
  loc_FDED71: Set var_8C = arg_C 
  loc_FDED99: var_8C.Fields.Append "VNo", &HC8, &HA
  loc_FDEDC5: var_8C.Fields.Append "VDate", &HC8, &HB
  loc_FDEDF1: var_8C.Fields.Append "VType", &HC8, &H32
  loc_FDEE1D: var_8C.Fields.Append "AgUser", &HC8, &HA
  loc_FDEE49: var_8C.Fields.Append "Particulars", &HC8, &H96
  loc_FDEE75: var_8C.Fields.Append "Amount", &HC8, &HB
  loc_FDEEA1: var_8C.Fields.Append "Charge", &HC8, &HC8
  loc_FDEECD: var_8C.Fields.Append "Uname", &HC8, &HA
  loc_FDEEF9: var_8C.Fields.Append "LUName", &HC8, &HA
  loc_FDEF09: var_8C.CursorType = 3
  loc_FDEF16: var_8C.LockType = 3
  loc_FDEF35: var_8C.Open var_A0, var_B0, -1
  loc_FDEF3C: Set var_8C = Nothing 
  loc_FDEF43: Set var_88 = arg_C 
  loc_FDEF47: Proc_287_34_FDEF50 = -1
End Sub

Public Sub Proc_287_35_F8E7C4
  'Data Table: 480BE4
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_480BFD As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  loc_F8E685: Set var_8C = Me.TopCtrl1
  loc_F8E68B: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(&HFF)
  loc_F8E693: var_A0 = CStr()
  loc_F8E6A4: If (var_A0 = "Add") Then
  loc_F8E6D4:   Set var_8C = Me.Txt
  loc_F8E6DA:   Call 0.Method_Proc_287_35_F8E7C40 (CInt(0), var_A4, var_A0, "Select Count(*) From UserCollection Where DocID='", var_9C, -1)
  loc_F8E6FB:   unk_480BFD.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_F8E70B:    = var_C4.Item()
  loc_F8E713:    = var_D8.Value
  loc_F8E740:   If (var_A4.Text.Fields > 0) Then
  loc_F8E749:     Call 0.Method_arg_50 (var_A0)
  loc_F8E76A:     MsgBox("Duplicate Serial No.", &H40, CVar(var_A0), var_108, var_118)
  loc_F8E780:     Call Proc_287_41_115B448(MemVar_1F95044)
  loc_F8E793:     Set var_8C = Me.Txt
  loc_F8E799:     Call 0.Method_Proc_287_35_F8E7C40 (CInt(0), var_A4)
  loc_F8E7A1:     var_A4.Text = var_A0
  loc_F8E7B5:     Proc_287_35_F8E7C4 = 0
  loc_F8E7BB:   End If
  loc_F8E7BB: End If
  loc_F8E7BB: Proc_287_35_F8E7C4 = var_A0
  loc_F8E7C1: Put , , 
End Sub

Public Sub Proc_287_36_EE415C
  'Data Table: 480BE4
  Dim var_98 As Variant
  Dim var_8C As Label
  loc_EE40A2: Set var_8C = Me.Txt
  loc_EE40A8: Call 0.Method_Proc_287_36_EE415CC (var_8E, var_86)
  loc_EE40B8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EE40CE:   Set var_8C = Me.Txt
  loc_EE40D4:   Call 0.Method_Proc_287_36_EE415C0 (CInt(var_86), var_98)
  loc_EE40DC:   var_98.Text = vbNullString
  loc_EE40F8:   Set var_8C = Me.Txt
  loc_EE40FE:   Call 0.Method_Proc_287_36_EE415C0 (CInt(var_86), var_98)
  loc_EE4106:   var_98.Tag = vbNullString
  loc_EE4115: Next var_92 'Byte
  loc_EE412C: Set var_8C = Me.txtM
  loc_EE4132: Call 0.Method_Proc_287_36_EE415C0 (CInt(4), var_98)
  loc_EE413A: var_98.defaultText = vbNullString
  loc_EE4153: Me.LblVPrefix.Caption = vbNullString
  loc_EE415B: Exit Sub
End Sub

Public Sub Proc_287_37_11ED25C
  'Data Table: 480BE4
  Dim Me As Recordset15
  Dim unk_480BFD As Connection15
  Dim var_88 As Recordset15
  Dim var_124 As Recordset15
  Dim var_128 As Variant
  Dim var_120 As Label
  Dim var_11C As Variant
  loc_11ECDDC: On Error Goto loc_11ED255
  loc_11ECDF6: If (Me.RecordCount > 0) Then
  loc_11ECE4F:   unk_480BFD.Execute CStr("SELECT UserCollection.* FROM UserCollection Where DocID='" & Me.Fields.Item("DocID").Value & "'"), var_11C, -1
  loc_11ECE5A:   Set var_88 = var_120
  loc_11ECE77:   Set var_124 = var_88 
  loc_11ECEAC:   global_60 = CStr(var_88.Fields.Item("vType").Value)
  loc_11ECEF6:   Set var_120 = Me.Txt
  loc_11ECEFC:   Call 0.Method_Proc_287_37_11ED25C0 (CInt(0), var_128)
  loc_11ECF04:   var_128.Text = CStr(var_124.Fields.Item("DocID").Value)
  loc_11ECF52:   Me.LblVPrefix.Caption = CStr(var_124.Fields.Item("vPrefix").Value)
  loc_11ECFB8:   Set var_120 = Me.Txt
  loc_11ECFBE:   Call 0.Method_Proc_287_37_11ED25C0 (CInt(3), var_128, CStr(Format(CVar(var_124.Fields.Item("VDate")), "dd/MMM/yyyy")))
  loc_11ECFC6:   var_128.Text = 1
  loc_11ED019:   Set var_120 = Me.Txt
  loc_11ED01F:   Call 0.Method_Proc_287_37_11ED25C0 (CInt(2), var_128, CStr(var_124.Fields.Item("VNo").Value))
  loc_11ED027:   var_128.Text = 1
  loc_11ED090:   Set var_120 = Me.txtM
  loc_11ED096:   Call 0.Method_Proc_287_37_11ED25C0 (CInt(4), var_128, CVar(CStr(Format(CVar(var_124.Fields.Item("VTIME")), "hh:mm"))))
  loc_11ED09E:   var_128.defaultText = 1
  loc_11ED109:   Set var_120 = Me.Txt
  loc_11ED10F:   Call 0.Method_Proc_287_37_11ED25C0 (CInt(4), var_128, CStr(Format(CVar(var_124.Fields.Item("Amount")), "0.00")), 1)
  loc_11ED117:   var_128.Text = 1
  loc_11ED167:   Set var_120 = Me.Txt
  loc_11ED16D:   Call 0.Method_Proc_287_37_11ED25C0 (CInt(6), var_128)
  loc_11ED175:   var_128.Text = Proc_6_38_E69628(CVar(var_124.Fields.Item("Remarks")), 1)
  loc_11ED1BF:   Set var_120 = Me.Txt
  loc_11ED1C5:   Call 0.Method_Proc_287_37_11ED25C0 (CInt(5), var_128)
  loc_11ED1CD:   var_128.Tag = Proc_6_38_E69628(CVar(var_124.Fields.Item("AgUser")))
  loc_11ED217:   Set var_120 = Me.Txt
  loc_11ED21D:   Call 0.Method_Proc_287_37_11ED25C0 (CInt(5), var_128)
  loc_11ED225:   var_128.Text = Proc_6_38_E69628(CVar(var_124.Fields.Item("AgUser")))
  loc_11ED23B:   Set var_124 = Nothing 
  loc_11ED242: Else
  loc_11ED242:   Call Proc_287_36_EE415C(var_120)
  loc_11ED247: End If
  loc_11ED247: Call Proc_287_39_EB904C()
  loc_11ED251: Set var_88 = Nothing
  loc_11ED254: Exit Sub
  loc_11ED255: ' Referenced from: 11ECDDC
  loc_11ED255: Proc_6_60_E63754()
  loc_11ED25A: Exit Sub
End Sub

Public Sub Proc_287_38_EF5698(arg_C) 'EF5698
  'Data Table: 480BE4
  Dim var_98 As Variant
  loc_EF55CE: Set var_8C = Me.Txt
  loc_EF55D4: Call 0.Method_Proc_287_38_EF5698C (var_8E, var_86)
  loc_EF55E4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EF55FA:   Set var_8C = Me.Txt
  loc_EF5600:   Call 0.Method_Proc_287_38_EF56980 (CInt(var_86), var_98)
  loc_EF5608:   var_98.Enabled = arg_C
  loc_EF5617: Next var_92 'Byte
  loc_EF562A: Set var_8C = Me.Txt
  loc_EF5630: Call 0.Method_Proc_287_38_EF56980 (CInt(2), var_98)
  loc_EF5638: var_98.Enabled = False
  loc_EF5654: Set var_8C = Me.txtM
  loc_EF565A: Call 0.Method_Proc_287_38_EF56980 (CInt(4), var_98)
  loc_EF5662: var_98.Enabled = False
  loc_EF567B: Set var_8C = Me.Txt
  loc_EF5681: Call 0.Method_Proc_287_38_EF56980 (CInt(0), var_98)
  loc_EF5689: var_98.Enabled = False
  loc_EF5695: Exit Sub
End Sub

Public Sub Proc_287_39_EB904C
  'Data Table: 480BE4
  loc_EB8FC8: If (CBool(Me.DGUser.Visible) = &HFF) Then
  loc_EB8FDA:   Me.DGUser.Visible = False
  loc_EB8FE2: End If
  loc_EB8FFD: If (Me.FrmList.Visible = &HFF) Then
  loc_EB900C:   Me.FrmList.Visible = False
  loc_EB9014: End If
  loc_EB9030: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB9042:   Me.FGPoint.Visible = False
  loc_EB904A: End If
  loc_EB904A: Exit Sub
End Sub

Public Sub Proc_287_40_E92368(arg_C) 'E92368
  'Data Table: 480BE4
  Dim var_10C As TextBox
  loc_E922FC: Call Proc_287_39_EB904C()
  loc_E92338: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E9233B:   Call TopCtrl1_UnknownEvent_16()
  loc_E92343: Else
  loc_E9234D:   Set var_108 = Me.Txt
  loc_E92353:   Call 0.Method_Proc_287_40_E923680 (arg_C)
  loc_E9235B:   var_10C.SetFocus
  loc_E92367: End If
  loc_E92367: Exit Sub
End Sub

Public Sub Proc_287_41_115B448
  'Data Table: 480BE4
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_94 As Long
  Dim var_D8 As Variant
  Dim var_13C As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  loc_115B0E0: var_90 = global_60
  loc_115B0F7: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_115B11A: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_115B128: Set var_B4 = Me.Txt
  loc_115B12E: Call 0.Method_Proc_287_41_115B4480 (CInt(3), var_B8, var_E8)
  loc_115B13D: Proc_6_7_F26918(var_D8, CVar(var_B8), var_13C)
  loc_115B145: var_F8 = -1 & var_D8 
  loc_115B159: ŒÅš³í2¤E¾¢j(”„[.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_115B164: Set var_8C = var_140
  loc_115B1A0: If (var_8C.RecordCount <= 0) Then
  loc_115B1BC:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_115B1CF:   var_88 = vbNullString
  loc_115B1D2:   Proc_287_41_115B448 = 
  loc_115B1D8: End If
  loc_115B1EC: If (var_8C.RecordCount > 0) Then
  loc_115B22B:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_115B248:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_115B259:     var_9C = CStr(var_B8.Value)
  loc_115B274:     Set var_B4 = Me.Txt
  loc_115B27A:     Call 0.Method_Proc_287_41_115B4480 (CInt(2), var_B8)
  loc_115B290:     var_94 = CLng(Val(var_B8.Text))
  loc_115B2A0:   Else
  loc_115B2CB:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_115B2F2:     var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_115B307:     var_D8 = (var_B8.Value + 1)
  loc_115B30D:     var_94 = CLng(var_D8)
  loc_115B31E:   End If
  loc_115B31E: End If
  loc_115B349: var_C8 = Space((5 - Len(var_90)))
  loc_115B351: var_E8 = (CVar(var_94 & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & var_90) + var_B8.Value)
  loc_115B35B: var_F8 = (var_E8 + CVar(var_9C))
  loc_115B36C: var_118 = Space((5 - Len(var_9C)))
  loc_115B374: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_115B38A: var_178 = Space((8 - Len(CStr(var_94))))
  loc_115B392: var_188 = (var_13C + var_178)
  loc_115B39E: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_115B3A3: var_98 = CStr(var_1A8)
  loc_115B3D3: Me.LblVPrefix.Caption = var_9C
  loc_115B3E9: Set var_B4 = Me.Txt
  loc_115B3EF: Call 0.Method_Proc_287_41_115B4480 (CInt(0), var_B8)
  loc_115B3F7: var_B8.Text = var_98
  loc_115B416: Set var_B4 = Me.Txt
  loc_115B41C: Call 0.Method_Proc_287_41_115B4480 (CInt(2), var_B8)
  loc_115B424: var_B8.Text = CStr(var_94)
  loc_115B436: var_88 = var_98
  loc_115B43E: Set var_8C = Nothing
  loc_115B441: Proc_287_41_115B448 = var_94
End Sub

Public Sub Proc_287_42_EE4248
  'Data Table: 480BE4
  loc_EE4196: On Error Goto loc_EE41DC
  loc_EE41AE: Call 0.Method_arg_18C (var_8C)
  loc_EE41B6: Call var_8C.Show
  loc_EE41CB: Call 0.Method_arg_188 (var_B0)
  loc_EE41D3: var_88 = var_B0
  loc_EE41D6: Proc_287_42_EE4248 = 1
  loc_EE41DC: ' Referenced from: EE4196
  loc_EE41E4: Set var_8C = Err()
  loc_EE41EA: Call 0.Method_arg_1C (var_B4)
  loc_EE41FB: If (var_B4 <> 0) Then
  loc_EE4206:   Set var_8C = Err()
  loc_EE420C:   Call 0.Method_arg_2C (var_B0)
  loc_EE422D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE4240: End If
  loc_EE4240: Proc_287_42_EE4248 = 
End Sub
