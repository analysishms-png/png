VERSION 5.00
Begin VB.Form FrmLocationFacilities
  Caption = "Location Facilities"
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
  ClientWidth = 8955
  ClientHeight = 7545
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8955
    Height = 420
    TabIndex = 11
  End
  Begin Frame FrmList
    Left = 1200
    Top = 4005
    Width = 1845
    Height = 1815
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 10
    End
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFC0C0&
    ForeColor = &H80000012&
    Left = 1065
    Top = 2460
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
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
    Left = 1815
    Top = 660
    Width = 3510
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 30
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
    ForeColor = &HFF0000&
    Left = 1815
    Top = 930
    Width = 1425
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
  Begin DataGrid DGSundry
    Left = 5850
    Top = 6075
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 3
  End
  Begin DataGrid DGVType
    Left = 2535
    Top = 6285
    Width = 5055
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin MSHFlexGrid FGrid
    Left = 255
    Top = 1800
    Width = 7500
    Height = 4275
    TabIndex = 2
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 375
    Top = 7650
    Width = 3375
    Height = 285
    TabIndex = 13
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
    Left = 375
    Top = 7935
    Width = 3330
    Height = 255
    TabIndex = 12
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
  Begin Label LblName
    Caption = "Location Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 225
    Top = 660
    Width = 1260
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
    Caption = "App.Date"
    Index = 1
    ForeColor = &HFF0000&
    Left = 225
    Top = 930
    Width = 780
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
  Begin Label LblDepart
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 3345
    Top = 1215
    Width = 7605
    Height = 510
    TabIndex = 6
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
End

Attribute VB_Name = "FrmLocationFacilities"

Private MasterFormExit As Integer
Private global_92 As Integer
Private global_94 As Integer

Private Sub DGVType_UnknownEvent_9 'F35B94
  'Data Table: 4A88E0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F35A8B: Me.DGVType.Visible = False
  loc_F35AAA: If (Me.RecordCount > 0) Then
  loc_F35AE9:   Set var_B4 = Me.Txt
  loc_F35AEF:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(0), var_B8)
  loc_F35AF7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F35B2A:   var_B0 = Me.Fields.Item("Code")
  loc_F35B49:   Set var_B4 = Me.Txt
  loc_F35B4F:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(0), var_B8)
  loc_F35B57:   var_B8.Tag = CStr(var_B0.Value)
  loc_F35B6D: End If
  loc_F35B78: Set var_A8 = Me.Txt
  loc_F35B7E: Call 0.Method_DGVType_UnknownEvent_90 (CInt(0))
  loc_F35B86: var_B0.SetFocus
  loc_F35B92: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '12749E0
  'Data Table: 4A88E0
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_F0 As MSHFlexGrid
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Variant
  Dim var_104 As TextBox
  Dim var_158 As String
  loc_1274454: Call Proc_325_59_EB92D4()
  loc_127446C: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1274487: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1274490: Set var_BC = Me.FGrid
  loc_12744C6: Set var_104 = Me.TxtGrid
  loc_12744CC: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_12744D4: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_1274505: var_110 = CLng(Me.FGrid.Col)
  loc_1274515: If (var_110 = CLng(2)) Then
  loc_1274527:   Set var_A8 = Me.TxtGrid
  loc_127452D:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H23)
  loc_1274535:   var_BC.MaxLength = var_110
  loc_1274582:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1274585:     Exit Sub
  loc_1274586:   End If
  loc_1274599:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12745A1:   var_DC = CVar(CLng(2)) 'Long
  loc_12745D4:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_12745DD:     Me.MoveFirst
  loc_12745F5:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12745FD:     var_DC = CVar(CLng(1)) 'Long
  loc_1274606:     Set var_BC = Me.FGrid
  loc_127461D:     Proc_6_17_EAAE40(var_128, CVar(CStr(var_BC.TextMatrix))), var_DC, var_94)
  loc_1274646:     Me.Find CStr("Code=" & var_128), 0, 1
  loc_1274676:     If (Me.EOF = &HFF) Then
  loc_127467F:       Me.MoveFirst
  loc_1274684:     End If
  loc_1274684:   End If
  loc_1274687: Else
  loc_127468E:   If (var_110 = CLng(3)) Then
  loc_12746A0:     Set var_A8 = Me.TxtGrid
  loc_12746A6:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB, var_158)
  loc_12746AE:     var_BC.MaxLength = var_DC
  loc_12746C3:     If (global_94 = 0) Then
  loc_12746CE:       var_10C = "{Home}+{End}"
  loc_12746D4:       Proc_303_0_FBACC8(CStr("Code=" & var_128), 0)
  loc_12746DC:     End If
  loc_12746DF:   Else
  loc_12746E6:     If (var_110 = CLng(4)) Then
  loc_12746F8:       Set var_A8 = Me.TxtGrid
  loc_12746FE:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HF)
  loc_1274706:       var_BC.MaxLength = var_94
  loc_127471F:       ReDim var_15C(0 To 4)
  loc_1274736:       var_15C(0) = "Monthly"
  loc_1274745:       var_15C(1) = "Bi Monthly"
  loc_1274754:       var_15C(2) = "Quarterly"
  loc_1274763:       var_15C(3) = "Half Yearly"
  loc_1274772:       var_15C(4) = "Annual"
  loc_1274789:       global_64 = Array(var_15C)
  loc_1274794:       Set var_104 = Me.ListView
  loc_12747AF:       Set var_BC = Me.TxtGrid
  loc_12747C9:       Set global_80 = Proc_6_66_F0048C(var_104, var_BC, Index, global_64)
  loc_12747E7:       Set var_A8 = Me.TxtGrid
  loc_12747ED:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, CStr("Code=" & var_128))
  loc_12747F5:       5 = var_BC.Text
  loc_1274807:       Set var_F0 = Me.TxtGrid
  loc_127480D:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_104, CStr("Code=" & var_128))
  loc_1274815:       var_104.Tag = global_64
  loc_127482B:     Else
  loc_1274832:       If (var_110 = CLng(5)) Then
  loc_1274844:         Set var_A8 = Me.TxtGrid
  loc_127484A:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_1274852:         var_BC.MaxLength = 3
  loc_127486B:         ReDim var_15C(0 To &HB)
  loc_1274882:         var_15C(0) = "Jan"
  loc_1274891:         var_15C(1) = "Feb"
  loc_12748A0:         var_15C(2) = "Mar"
  loc_12748AF:         var_15C(3) = "Apr"
  loc_12748BE:         var_15C(4) = "May"
  loc_12748CD:         var_15C(5) = "Jun"
  loc_12748DC:         var_15C(6) = "Jul"
  loc_12748EB:         var_15C(7) = "Aug"
  loc_12748FA:         var_15C(8) = "Sep"
  loc_1274909:         var_15C(9) = "Oct"
  loc_1274918:         var_15C(&HA) = "Nov"
  loc_1274927:         var_15C(&HB) = "Dec"
  loc_127493E:         global_64 = Array(var_15C)
  loc_1274949:         Set var_104 = Me.ListView
  loc_1274964:         Set var_BC = Me.TxtGrid
  loc_127497E:         Set global_80 = Proc_6_66_F0048C(var_104, var_BC, Index, global_64)
  loc_127499C:         Set var_A8 = Me.TxtGrid
  loc_12749A2:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, CStr("Code=" & var_128))
  loc_12749AA:         &HC = var_BC.Text
  loc_12749BC:         Set var_F0 = Me.TxtGrid
  loc_12749C2:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_104, CStr("Code=" & var_128))
  loc_12749CA:         var_104.Tag = global_64
  loc_12749DD:       End If
  loc_12749DD:     End If
  loc_12749DD:   End If
  loc_12749DD: End If
  loc_12749DD: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12C9894
  'Data Table: 4A88E0
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C0 As Variant
  Dim var_94 As DataGrid
  Dim var_D8 As DataGrid
  Dim var_E4 As TextBox
  Dim var_F4 As TextBox
  loc_12C9238: On Error Goto loc_12C988E
  loc_12C9245: If (CLng(Shift) = &H1B) Then
  loc_12C9255:   Set var_88 = Me.TxtGrid
  loc_12C925B:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_12C9275:   Set var_94 = Me.TxtGrid
  loc_12C927B:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_12C9283:   var_98.Text = var_8C.Tag
  loc_12C929F:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_12C92A4:   Call Proc_325_59_EB92D4(arg_14)
  loc_12C92AD:   Set var_88 = Me.FGrid
  loc_12C92CA:   Set var_88 = Me.TxtGrid
  loc_12C92D0:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_12C92D8:   var_8C.Visible = False
  loc_12C92E4:   Exit Sub
  loc_12C92E5: End If
  loc_12C9308: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_12C9317:   Set var_88 = Me.TxtGrid
  loc_12C931D:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B0)
  loc_12C9325:   var_AC = var_8C.Left
  loc_12C933C:   Me.DGSundry.Left = CVar(var_B0)
  loc_12C9356:   Set var_94 = Me.TxtGrid
  loc_12C935C:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_12C9364:   var_D4 = var_98.Height
  loc_12C9375:   Set var_88 = Me.TxtGrid
  loc_12C937B:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_12C9383:   var_B0 = var_8C.Top
  loc_12C938F:   var_C0 = CVar((var_B0 + var_D4)) 'Single
  loc_12C939E:   Me.DGSundry.Top = CVar(var_B0)
  loc_12C93BB:   Set var_E4 = Me.TxtGrid
  loc_12C93C8:   Set var_98 = Nothing
  loc_12C9401:   Proc_6_69_134A630(Me.DGSundry, var_E4, KeyCode, global_104, Shift, &HFF)
  loc_12C941F:   If (CLng(Shift) = &HD) Then
  loc_12C9428:     Call Proc_325_55_133B71C(KeyCode, var_DA, 1, Nothing)
  loc_12C9433:     If (var_DA = &HFF) Then
  loc_12C9479:       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 6)
  loc_12C9489:     End If
  loc_12C9489:   End If
  loc_12C948C: Else
  loc_12C9493:   If (var_AC = CLng(3)) Then
  loc_12C94D6:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_12C94DF:       Call Proc_325_55_133B71C(KeyCode, var_DA, 0, 3)
  loc_12C94EA:       If (var_DA = &HFF) Then
  loc_12C9521:         Set var_8C = Me.TxtGrid
  loc_12C9530:         Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_94, 6, 0)
  loc_12C9540:       End If
  loc_12C9540:     End If
  loc_12C9543:   Else
  loc_12C954A:     If (var_AC = CLng(4)) Then
  loc_12C955C:       Set var_88 = Me.TxtGrid
  loc_12C9562:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, &HF, 4, 0)
  loc_12C956A:       var_8C.MaxLength = 0
  loc_12C9598:       Set var_88 = Me.TxtGrid
  loc_12C959E:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, var_B0)
  loc_12C95A6:       var_98 = var_8C.Left
  loc_12C95B8:       Set var_94 = Me.TxtGrid
  loc_12C95BE:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98, var_D4)
  loc_12C95C6:       0 = var_98.Top
  loc_12C95D8:       Set var_D8 = Me.TxtGrid
  loc_12C95DE:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E4)
  loc_12C95F8:       Set var_F0 = Me.TxtGrid
  loc_12C95FE:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_F4)
  loc_12C9606:       var_F8 = var_F4.Width
  loc_12C964E:       Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_12C967C:       If (CLng(Shift) = &HD) Then
  loc_12C9685:         Call Proc_325_55_133B71C(KeyCode, var_DA, CInt(var_B0), CInt((var_D4 + var_E4.Height)))
  loc_12C9690:         If (var_DA = &HFF) Then
  loc_12C969E:           Set var_98 = Me.TxtGrid
  loc_12C96C7:           Set var_8C = var_98
  loc_12C96D6:           Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_94, 6)
  loc_12C96E6:         End If
  loc_12C96E6:       End If
  loc_12C96E9:     Else
  loc_12C96F0:       If (var_AC = CLng(5)) Then
  loc_12C9702:         Set var_88 = Me.TxtGrid
  loc_12C9708:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 3, 0, 5)
  loc_12C9710:         var_8C.MaxLength = 0
  loc_12C973E:         Set var_88 = Me.TxtGrid
  loc_12C9744:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, var_B0)
  loc_12C974C:         CInt(var_F8) = var_8C.Left
  loc_12C975E:         Set var_94 = Me.TxtGrid
  loc_12C9764:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98, var_D4)
  loc_12C976C:         1300 = var_98.Top
  loc_12C977E:         Set var_D8 = Me.TxtGrid
  loc_12C9784:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E4)
  loc_12C979E:         Set var_F0 = Me.TxtGrid
  loc_12C97A4:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_F4)
  loc_12C97AC:         var_F8 = var_F4.Width
  loc_12C97F4:         Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_12C9822:         If (CLng(Shift) = &HD) Then
  loc_12C982B:           Call Proc_325_55_133B71C(KeyCode, var_DA, CInt(var_B0), CInt((var_D4 + var_E4.Height)))
  loc_12C9836:           If (var_DA = &HFF) Then
  loc_12C987E:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, CByte(7))
  loc_12C988E:           End If
  loc_12C988E:         End If
  loc_12C988E:       End If
  loc_12C988E:       ' Referenced from: 12C9238
  loc_12C988E:     End If
  loc_12C988E:   End If
  loc_12C988E: End If
  loc_12C988E: Proc_6_60_E63754(0, 0, 0)
  loc_12C9893: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F00C5C
  'Data Table: 4A88E0
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F00B83: Proc_6_58_E06050(arg_10)
  loc_F00B94: If (KeyAscii = 0) Then
  loc_F00BAA:   var_A0 = CLng(Me.FGrid.Col)
  loc_F00BBA:   If (var_A0 = CLng(2)) Then
  loc_F00BD9:     If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_F00BE0:       Set var_AC = Me.TxtGrid
  loc_F00BEB:       var_A4 = "Name"
  loc_F00C06:       Proc_6_89_1470B00(var_AC, KeyAscii, global_104, arg_10)
  loc_F00C15:     End If
  loc_F00C18:   Else
  loc_F00C1F:     If (var_A0 = CLng(3)) Then
  loc_F00C2C:       Set var_8C = Me.TxtGrid
  loc_F00C32:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F00C4D:       Proc_6_42_129B55C(var_AC, arg_10, 8, 2)
  loc_F00C59:     End If
  loc_F00C59:   End If
  loc_F00C59: End If
  loc_F00C59: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F7D350
  'Data Table: 4A88E0
  Dim var_9C As Long
  loc_F7D208: On Error Goto loc_F7D34A
  loc_F7D21E: var_9C = CLng(Me.FGrid.Col)
  loc_F7D22E: If (var_9C = CLng(2)) Then
  loc_F7D254:   If ((Shift <> &HD) And (CBool(Me.DGSundry.Visible) = 0)) Then
  loc_F7D262:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_F7D276:     var_A4 = "Name"
  loc_F7D291:     Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_104, Shift)
  loc_F7D2A0:   End If
  loc_F7D2A3: Else
  loc_F7D2AA:   If Not (var_9C = CLng(4)) Then
  loc_F7D2B4:     If (var_9C = CLng(5)) Then
  loc_F7D2B7:     End If
  loc_F7D2D9:     If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_F7D2EA:       Call TxtGrid_KeyDown(KeyCode, global_92)
  loc_F7D2EF:     End If
  loc_F7D30A:     If (Me.FrmList.Visible = &HFF) Then
  loc_F7D339:       Proc_6_64_F299E8(Me.ListView, Me.TxtGrid, KeyCode, Shift, global_80)
  loc_F7D349:     End If
  loc_F7D349:   End If
  loc_F7D349: End If
  loc_F7D349: Exit Sub
  loc_F7D34A: ' Referenced from: F7D208
  loc_F7D34A: Proc_6_60_E63754(0, var_A4, &HFF)
  loc_F7D34F: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E2309C
  'Data Table: 4A88E0
  Dim arg_10 As Integer
  loc_E23084: If (Cancel = 0) Then
  loc_E2308D:   Call Proc_325_55_133B71C(Cancel, var_88)
  loc_E23096:   arg_10 = Not(var_88)
  loc_E23099: End If
  loc_E23099: Exit Sub
End Sub

Private Sub Form_Load() '1144E24
  'Data Table: 4A88E0
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim var_88 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  loc_1144A88: On Error Goto loc_1144E1C
  loc_1144AA1: Proc_6_23_DFC5B8(Me, 0)
  loc_1144AB3: Set var_88 = Me.TopCtrl1
  loc_1144AB9: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_1144AC7: Call 0.Method_arg_50 (var_B0)
  loc_1144AD7: Set var_88 = Me.TopCtrl1
  loc_1144ADD: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030007(CVar(var_B0))
  loc_1144AEF: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1144B07: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1144B1E: Me.LblUser.Left = CDbl(13500)
  loc_1144B35: Me.LblUser.Top = CDbl(7800)
  loc_1144B4C: Me.LblLDt.Top = CDbl(8160)
  loc_1144B63: Me.LblLDt.Left = CDbl(13500)
  loc_1144B75: Set global_100 = New 
  loc_1144B87: Me.Recordset15.CursorLocation = 3
  loc_1144BB1: var_C0 = CVar("Select Code,Name From LocationMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_1144BBB: Me.Open var_C0, CVar(MemVar_1F95044), 3
  loc_1144BCF: CVarUnk
  loc_1144BD4: VerifyVarObj
  loc_1144BDA: Set var_88 = Me.DGVType
  loc_1144BE0: LateIdStAd
  loc_1144BF8: Set global_104 = New 
  loc_1144C0A: Me.DGVType.CursorLocation = 3
  loc_1144C34: var_C0 = CVar("Select Code,Name,UnitRate,ChargeType From FacilityMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By Name") 'String
  loc_1144C3E: Me.Open var_C0, CVar(MemVar_1F95044), 3
  loc_1144C52: CVarUnk
  loc_1144C57: VerifyVarObj
  loc_1144C5D: Set var_88 = Me.DGSundry
  loc_1144C63: LateIdStAd
  loc_1144C7B: Set global_96 = New 
  loc_1144C8D: Me.DGSundry.CursorLocation = 3
  loc_1144C9A: If (MemVar_1F953B0 = "A") Then
  loc_1144CBB:   var_B0 = "Select DISTINCT (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Format(LF.AppDate,'dd/mm/yyyy')) AS SearchCode,site_code,logsite_code From LocationFacility LF Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_1144CC2:   var_C0 = CVar("Select Code,Name,UnitRate,ChargeType From FacilityMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Format(LF.AppDate,'dd/mm/yyyy'))") 'String
  loc_1144CCC:   Me.Open var_C0, CVar(MemVar_1F95044), 3
  loc_1144CDA: Else
  loc_1144CE2:   If (MemVar_1F953B0 = "S") Then
  loc_1144D03:     var_B0 = "Select DISTINCT (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103)) AS SearchCode,SITE_CODE,LOGSITE_CODE From LocationFacility LF Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_1144D0A:     var_C0 = CVar("Select Code,Name,UnitRate,ChargeType From FacilityMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103))") 'String
  loc_1144D14:     Me.Open var_C0, CVar(MemVar_1F95044), 3
  loc_1144D1F:   End If
  loc_1144D1F: End If
  loc_1144D42: Call Proc_325_58_E7BBE4(Proc_5_1_100EC1C("INI", Me, global_96, 1, -1, 1, -1, Me), global_104, 1, -1)
  loc_1144D55: Set var_88 = Me.TopCtrl1
  loc_1144D5B: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030019(True)
  loc_1144D6C: Set var_88 = Me.TopCtrl1
  loc_1144D72: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030016(False)
  loc_1144D89: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030017(False)
  loc_1144D91: Call Proc_325_52_11382C0(Me.TopCtrl1, global_100)
  loc_1144D96: Call Proc_325_57_1385048(1)
  loc_1144DAE: Me.FGrid.Left = CVar(CDbl(800))
  loc_1144DC9: Me.FGrid.Top = CVar(CDbl(1800))
  loc_1144DDB: var_C0 = Me.FGrid.Top
  loc_1144DEA: Call 0.Method_Me8 (var_C4, var_C0)
  loc_1144DFD: var_9C = CVar(((var_C4 - CDbl(2400)) - CDbl(var_C0))) 'Single
  loc_1144E0C: Me.FGrid.Height = CVar(CDbl(1800))
  loc_1144E1B: Exit Sub
  loc_1144E1C: ' Referenced from: 1144A88
  loc_1144E1C: Proc_6_60_E63754(-1)
  loc_1144E21: Exit Sub
  loc_1144E22: Result  End Sub 'Long
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E68DB4
  'Data Table: 4A88E0
  loc_E68D6B: Set global_100 = Nothing
  loc_E68D7D: Set global_96 = Nothing
  loc_E68D8F: Set global_104 = Nothing
  loc_E68DA1: Set global_108 = Nothing
  loc_E68DAD: MasterFormExit = 0
  loc_E68DB0: Exit Sub
End Sub

Private Sub Form_Activate() 'E4B658
  'Data Table: 4A88E0
  loc_E4B628: On Error Goto loc_E4B652
  loc_E4B62F: Set var_88 = Me.TopCtrl1
  loc_E4B635: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030000()
  loc_E4B64A: If (CLng(CInt()) = &H2D) Then
  loc_E4B64D:   Call TopCtrl1_UnknownEvent_15()
  loc_E4B652:   ' Referenced from: E4B628
  loc_E4B652: End If
  loc_E4B652: Proc_6_60_E63754()
  loc_E4B657: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E24FFC
  'Data Table: 4A88E0
  loc_E24FE1: If (MasterFormExit = &HFF) Then
  loc_E24FF1:   Me.Global.Unload Me
  loc_E24FF9: End If
  loc_E24FF9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E281A0
  'Data Table: 4A88E0
  loc_E28178: On Error Goto loc_E28198
  loc_E2818F: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E28197: Exit Sub
  loc_E28198: ' Referenced from: E28178
  loc_E28198: Proc_6_60_E63754(Shift)
  loc_E2819D: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5470C
  'Data Table: 4A88E0
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5462E: If (Me.ListView.ListItems.Count > 0) Then
  loc_F54635:   Set var_A8 = Me.ListView
  loc_F5467F:   Set var_C0 = Me.TxtGrid
  loc_F54685:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5468D:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F546AD: End If
  loc_F546B9: Me.FrmList.Visible = False
  loc_F546E9: Set var_9C = Me.TxtGrid
  loc_F546EF: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F546F7: var_A8.SetFocus
  loc_F5470B: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E5342C
  'Data Table: 4A88E0
  loc_E53406: Set var_88 = Me.Txt
  loc_E5340C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E5341A: Proc_6_74_E23240(var_8C)
  loc_E53426: Call Proc_325_59_EB92D4(var_8C)
  loc_E5342B: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F6CB30
  'Data Table: 4A88E0
  Dim var_98 As Frame
  Dim var_C0 As Variant
  loc_F6CA0E: If (CLng(Shift) = &H1B) Then
  loc_F6CA11:   Call Proc_325_59_EB92D4()
  loc_F6CA16:   Exit Sub
  loc_F6CA17: End If
  loc_F6CA25: If (KeyCode = CInt(0)) Then
  loc_F6CA40:   Set var_9C = Nothing
  loc_F6CA4B:   Set var_98 = Nothing
  loc_F6CA79:   Proc_6_69_134A630(Me.DGVType, Me.Txt, KeyCode, global_100, Shift, 0)
  loc_F6CA8D: End If
  loc_F6CAC1: Set var_98 = Me.FrmList
  loc_F6CAE3: If (((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGSundry.Visible) = 0)) And (var_98.Visible = 0)) Then
  loc_F6CAFB:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F6CB04:     Proc_6_75_E5335C(Shift, arg_14, 1, var_98)
  loc_F6CB09:   End If
  loc_F6CB1E:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F6CB27:     Proc_6_76_E533C8(Shift, arg_14, var_9C)
  loc_F6CB2C:   End If
  loc_F6CB2C: End If
  loc_F6CB2C: Exit Sub
  loc_F6CB2D: var_C0 = CVar(0) 'String
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E03CD0
  'Data Table: 4A88E0
  Dim var_86 As Integer
  loc_E03CC3: Proc_6_58_E06050(arg_10)
  loc_E03CCB: var_86 = KeyAscii
  loc_E03CCE: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EA58B4
  'Data Table: 4A88E0
  loc_EA5846: If (KeyCode = CInt(0)) Then
  loc_EA5865:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EA5879:     var_A4 = "Name"
  loc_EA589D:     Proc_6_68_12A2818(Me.DGVType, Me.Txt, KeyCode, global_100)
  loc_EA58B0:   End If
  loc_EA58B0: End If
  loc_EA58B0: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4B10C
  'Data Table: 4A88E0
  loc_E4B0EA: Set var_88 = Me.Txt
  loc_E4B0F0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4B0FE: Proc_6_73_E23294(var_8C)
  loc_E4B10A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '111CD74
  'Data Table: 4A88E0
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As String
  Dim var_B4 As TextBox
  Dim var_94 As Label
  Dim var_C8 As TextBox
  loc_111CA1B: var_86 = Cancel
  loc_111CA26: If (var_86 = CInt(0)) Then
  loc_111CA34:   Set var_8C = Me.Txt
  loc_111CA3A:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_111CA42:   var_98 = "Location Name"
  loc_111CA63:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_111CA71:     Set var_8C = Me.Txt
  loc_111CA77:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_111CA7F:     var_90.SetFocus
  loc_111CA8D:     arg_10 = &HFF
  loc_111CA90:     Exit Sub
  loc_111CA91:   End If
  loc_111CADF:   Set var_8C = Me.Txt
  loc_111CAE5:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_111CAED:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_111CB05:   If (arg_10 Or (var_98 = vbNullString)) Then
  loc_111CB15:     Set var_8C = Me.Txt
  loc_111CB1B:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_111CB23:     var_90.Text = vbNullString
  loc_111CB3C:     Set var_8C = Me.Txt
  loc_111CB42:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_111CB4A:     var_90.Tag = vbNullString
  loc_111CB63:     Me.LblDepart.Caption = vbNullString
  loc_111CB6E:   Else
  loc_111CBA9:     Set var_94 = Me.Txt
  loc_111CBAF:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_111CBB7:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_111CC08:     Set var_94 = Me.Txt
  loc_111CC0E:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_111CC16:     var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_111CC46:     var_90 = Me.Fields.Item("Name")
  loc_111CC64:     Me.LblDepart.Caption = Proc_6_38_E69628(CVar(var_90))
  loc_111CC76:   End If
  loc_111CC79: Else
  loc_111CC81:   If (var_86 = CInt(1)) Then
  loc_111CC8F:     Set var_8C = Me.Txt
  loc_111CC95:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_111CCBE:     If (Proc_6_27_EA61EC(var_90, "App. Date") = 0) Then
  loc_111CCCC:       Set var_8C = Me.Txt
  loc_111CCD2:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_111CCDA:       var_90.SetFocus
  loc_111CCE8:       arg_10 = &HFF
  loc_111CCEB:       Exit Sub
  loc_111CCEC:     End If
  loc_111CCF6:     Set var_8C = Me.Txt
  loc_111CCFC:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_111CD1C:     Set var_B4 = Me.Txt
  loc_111CD22:     Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_111CD2A:     var_C8.Text = Proc_6_33_15125B8(var_90, arg_10)
  loc_111CD50:     Me.FGrid.Row = 1
  loc_111CD6B:     Me.FGrid.Col = 2
  loc_111CD73:   End If
  loc_111CD73: End If
  loc_111CD73: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E872D0
  'Data Table: 4A88E0
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E87273: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E87286: Set var_A8 = Me.TxtGrid
  loc_E8728C: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E87294: var_AC.Visible = False
  loc_E872AE: Set var_A8 = Me.TxtGrid
  loc_E872B4: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E872BC: var_AC.MaxLength = 0
  loc_E872C8: Call Proc_325_59_EB92D4()
  loc_E872CD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E67ED0
  'Data Table: 4A88E0
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E67E8C: Set var_88 = Me.TxtGrid
  loc_E67E92: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E67EAC: If (var_8C.Visible = 0) Then
  loc_E67EC5:   Me.FGrid.BackColorSel = CVar(CLng(global_84))
  loc_E67ECD: End If
  loc_E67ECD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1FB80
  'Data Table: 4A88E0
  loc_E1FB77: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1FB7F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E00CFC
  'Data Table: 4A88E0
  loc_E00CF4: Call Proc_325_54_E44028()
  loc_E00CF9: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '11F3458
  'Data Table: 4A88E0
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_11C As Long
  Dim var_F8 As Variant
  Dim var_12C As String
  loc_11F2FC4: Set var_88 = Me.TopCtrl1
  loc_11F2FCA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_11F300F: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_11F3018:   Call Form_KeyDown(Cancel, arg_10)
  loc_11F301D: End If
  loc_11F3021: Set var_88 = Me.TopCtrl1
  loc_11F3027: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_11F3040: If (CStr() = "Browse") Then
  loc_11F3043:   Exit Sub
  loc_11F3044: End If
  loc_11F3061: var_C4 = Me.FGrid.Rows
  loc_11F30B8: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_11F30CE:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_11F30DE:   var_9C = "+{Tab}"
  loc_11F30E4:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_11F30EE:   Cancel = 0
  loc_11F30F4: Else
  loc_11F30FE:   var_B0 = Me.FGrid.Rows
  loc_11F314B:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_11F3161:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_11F3177:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_11F3181:     Cancel = 0
  loc_11F31BB:     If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_11F31BE:       Call TopCtrl1_UnknownEvent_16()
  loc_11F31C3:     End If
  loc_11F31C3:   End If
  loc_11F31C3: End If
  loc_11F31C9: global_92 = Cancel
  loc_11F31EF: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_11F3213: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_11F3229:   var_11C = CLng(Me.FGrid.Col)
  loc_11F3239:   If (var_11C = CLng(2)) Then
  loc_11F324F:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F3257:     var_F8 = CVar(CLng(2)) 'Long
  loc_11F325C:     var_12C = vbNullString
  loc_11F3266:     Set var_A0 = Me.FGrid
  loc_11F326C:     LateIdCallSt
  loc_11F3291:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F3299:     var_F8 = CVar(CLng(1)) 'Long
  loc_11F329E:     var_12C = vbNullString
  loc_11F32A8:     Set var_A0 = Me.FGrid
  loc_11F32AE:     LateIdCallSt
  loc_11F32D3:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F32DB:     var_F8 = CVar(CLng(3)) 'Long
  loc_11F32E0:     var_12C = vbNullString
  loc_11F32EA:     Set var_A0 = Me.FGrid
  loc_11F32F0:     LateIdCallSt
  loc_11F3315:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F331D:     var_F8 = CVar(CLng(4)) 'Long
  loc_11F3322:     var_12C = vbNullString
  loc_11F332C:     Set var_A0 = Me.FGrid
  loc_11F3332:     LateIdCallSt
  loc_11F3357:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F335F:     var_F8 = CVar(CLng(5)) 'Long
  loc_11F3364:     var_12C = vbNullString
  loc_11F336E:     Set var_A0 = Me.FGrid
  loc_11F3374:     LateIdCallSt
  loc_11F3399:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F33A1:     var_F8 = CVar(CLng(6)) 'Long
  loc_11F33A6:     var_12C = vbNullString
  loc_11F33B0:     Set var_A0 = Me.FGrid
  loc_11F33B6:     LateIdCallSt
  loc_11F33CB:   Else
  loc_11F33D2:     If Not (var_11C = CLng(3)) Then
  loc_11F33DC:       If Not (var_11C = CLng(4)) Then
  loc_11F33E6:         If (var_11C = CLng(5)) Then
  loc_11F33E9:         End If
  loc_11F33E9:       End If
  loc_11F33FC:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F3414:       var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11F3419:       var_12C = vbNullString
  loc_11F3423:       Set var_B4 = Me.FGrid
  loc_11F3429:       LateIdCallSt
  loc_11F3441:     End If
  loc_11F3441:   End If
  loc_11F3441: End If
  loc_11F3447: If (Cancel = &HD) Then
  loc_11F344F:   global_94 = 0
  loc_11F3452: End If
  loc_11F3454: Cancel = 0
  loc_11F3457: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E11A40
  'Data Table: 4A88E0
  loc_E11A31: Call FGrid_UnknownEvent_C()
  loc_E11A3B: global_94 = 0
  loc_E11A3E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1114E1C
  'Data Table: 4A88E0
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1114AD0: Set var_88 = Me.TopCtrl1
  loc_1114AD6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1114AEF: If (CStr() = "Browse") Then
  loc_1114AF2:   Exit Sub
  loc_1114AF3: End If
  loc_1114AF7: Set var_88 = Me.TopCtrl1
  loc_1114AFD: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1114B16: If (CStr() = "Browse") Then
  loc_1114B19:   Exit Sub
  loc_1114B1A: End If
  loc_1114B2D: var_A0 = CLng(Me.FGrid.Col)
  loc_1114B3D: If Not (var_A0 = CLng(2)) Then
  loc_1114B47:   If Not (var_A0 = CLng(4)) Then
  loc_1114B51:     If (var_A0 = CLng(5)) Then
  loc_1114B54:     End If
  loc_1114B54:   End If
  loc_1114B58:   Set var_C4 = Me.FGrid
  loc_1114B7C:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1114BA9:   Set var_B4 = var_C4
  loc_1114BBB:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1114BE3:   Set var_88 = Me.TxtGrid
  loc_1114BE9:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1114BF1:   0 = var_B4.Text
  loc_1114C0A:   If (Len(var_9C) <= 1) Then
  loc_1114C19:     Set var_88 = Me.TxtGrid
  loc_1114C1F:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1114C27:     var_CA = var_B4.Text
  loc_1114C38:     Set var_B8 = Me.TxtGrid
  loc_1114C3E:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1114C46:     var_C4.Text = var_9C
  loc_1114C59:   End If
  loc_1114C65:   Set var_88 = Me.TxtGrid
  loc_1114C6B:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1114C85:   Set var_B8 = Me.TxtGrid
  loc_1114C8B:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1114C93:   var_C4.SelStart = Len(var_B4.Text)
  loc_1114CA9: Else
  loc_1114CB0:   If (var_A0 = CLng(3)) Then
  loc_1114CB7:     Set var_C4 = Me.FGrid
  loc_1114CDB:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1114D08:     Set var_B4 = var_C4
  loc_1114D1A:     Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_1114D42:     Set var_88 = Me.TxtGrid
  loc_1114D48:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1114D50:     0 = var_B4.Text
  loc_1114D69:     If (Len(var_9C) <= 1) Then
  loc_1114D78:       Set var_88 = Me.TxtGrid
  loc_1114D7E:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1114D86:       var_CA = var_B4.Text
  loc_1114D97:       Set var_B8 = Me.TxtGrid
  loc_1114D9D:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1114DA5:       var_C4.Text = var_9C
  loc_1114DB8:     End If
  loc_1114DC4:     Set var_88 = Me.TxtGrid
  loc_1114DCA:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1114DE4:     Set var_B8 = Me.TxtGrid
  loc_1114DEA:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1114DF2:     var_C4.SelStart = Len(var_B4.Text)
  loc_1114E05:   End If
  loc_1114E05: End If
  loc_1114E0F: If (CLng(Cancel) <> &HD) Then
  loc_1114E17:   global_94 = &HFF
  loc_1114E1A: End If
  loc_1114E1A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1FBD0
  'Data Table: 4A88E0
  loc_E1FBC7: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1FBCF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1FB30
  'Data Table: 4A88E0
  loc_E1FB27: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1FB2F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E43E9C
  'Data Table: 4A88E0
  Dim var_8C As TextBox
  loc_E43E70: Call Proc_325_59_EB92D4()
  loc_E43E80: Set var_88 = Me.TxtGrid
  loc_E43E86: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E43E8E: var_8C.Visible = False
  loc_E43E9A: Exit Sub
End Sub

Private Sub DGSundry_UnknownEvent_9 '107884C
  'Data Table: 4A88E0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_128 As TextBox
  loc_10785CB: Me.DGSundry.Visible = False
  loc_10785EA: If (Me.RecordCount > 0) Then
  loc_1078600:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1078608:   var_E4 = CVar(CLng(1)) 'Long
  loc_107863B:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1078643:   Set var_128 = Me.FGrid
  loc_1078649:   LateIdCallSt
  loc_10786BB:   Set var_128 = Me.FGrid
  loc_10786C1:   LateIdCallSt
  loc_1078717:   Set var_B4 = Me.TxtGrid
  loc_107871D:   Call 0.Method_DGSundry_UnknownEvent_90 (0, var_128, CStr(Me.Fields.Item("Name").Value), var_128, CVar(CStr(Me.Fields.Item("Name").Value)), CVar(CLng(2)))
  loc_1078725:   var_128.Text = CVar(CLng(Me.FGrid.Row))
  loc_1078786:   var_114 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("UnitRate")), CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), var_128)) 'String
  loc_107878E:   Set var_128 = Me.FGrid
  loc_1078794:   LateIdCallSt
  loc_10787C1:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10787C9:   var_E4 = CVar(CLng(6)) 'Long
  loc_10787EB:   var_B0 = Me.Fields.Item("ChargeType")
  loc_10787FC:   var_114 = CVar(CStr(var_B0.Value)) 'String
  loc_1078804:   Set var_128 = Me.FGrid
  loc_107880A:   LateIdCallSt
  loc_1078826: End If
  loc_107882F: Set var_A8 = Me.TxtGrid
  loc_1078835: Call 0.Method_DGSundry_UnknownEvent_90 (0, var_B0, var_128, var_114, var_E4, var_A4)
  loc_107883D: var_B0.SetFocus
  loc_1078849: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'E805AC
  'Data Table: 4A88E0
  Dim var_94 As TextBox
  loc_E80548: On Error Goto loc_E805A4
  loc_E8056E: Call Proc_325_58_E7BBE4(Proc_5_1_100EC1C("ADD", Me))
  loc_E80579: Call Proc_325_56_F2B670(global_96)
  loc_E80589: Set var_8C = Me.Txt
  loc_E8058F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_E80597: var_94.SetFocus
  loc_E805A3: Exit Sub
  loc_E805A4: ' Referenced from: E80548
  loc_E805A4: Proc_6_60_E63754(var_94)
  loc_E805A9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EE93C0
  'Data Table: 4A88E0
  loc_EE9304: On Error Goto loc_EE93B9
  loc_EE933E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EE9364:   Call Proc_325_58_E7BBE4(Proc_5_1_100EC1C("INI", Me))
  loc_EE9377:   Set var_10C = Me.TopCtrl1
  loc_EE937D:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030019(True)
  loc_EE938E:   Set var_10C = Me.TopCtrl1
  loc_EE9394:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030016(False)
  loc_EE93A5:   Set var_10C = Me.TopCtrl1
  loc_EE93AB:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030017(False)
  loc_EE93B3:   Call Proc_325_57_1385048(global_96)
  loc_EE93B8: End If
  loc_EE93B8: Exit Sub
  loc_EE93B9: ' Referenced from: EE9304
  loc_EE93B9: Proc_6_60_E63754()
  loc_EE93BE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E17394
  'Data Table: 4A88E0
  loc_E17389: Me.Global.Unload Me
  loc_E17391: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EF469C
  'Data Table: 4A88E0
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EF45D0: On Error Goto loc_EF4696
  loc_EF45EA: If (Me.RecordCount <= 0) Then
  loc_EF45F3:   var_B8 = "Information"
  loc_EF460E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EF461E:   Exit Sub
  loc_EF461F: End If
  loc_EF4627: If (MemVar_1F953B0 = "A") Then
  loc_EF4631:   var_10C = "Select DISTINCT (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Format(LF.AppDate,'dd/mm/yyyy')) AS Code,LM.Name As LocationName,Format(LF.AppDate,'dd/mm/yyyy') From (LocationFacility LF Left Join LocationMast LM On LF.LcCode=LM.Code) Where (LF.LOGSITE_CODE='" & MemVar_1F95078
  loc_EF4638:   MemVar_1F950E4 = var_10C & "' or LF.LOGSITE_CODE='HO') Order By (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Format(LF.AppDate,'dd/mm/yyyy'))"
  loc_EF4642: Else
  loc_EF464A:   If (MemVar_1F953B0 = "S") Then
  loc_EF4654:     var_10C = "Select DISTINCT (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103)) AS Code,LM.Name As LocationName,Convert(Varchar(11),LF.AppDate,103) From (LocationFacility LF Left Join LocationMast LM On LF.LcCode=LM.Code) Where (LF.LOGSITE_CODE='" & MemVar_1F95078
  loc_EF465B:     MemVar_1F950E4 = var_10C & "' or LF.LOGSITE_CODE='HO') Order By (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103))"
  loc_EF4662:   End If
  loc_EF4662: End If
  loc_EF4668: MemVar_1F95120 = Me
  loc_EF4675: Proc_6_126_F1C850("4500,1500", MemVar_1F950E4)
  loc_EF4690: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EF4695: Exit Sub
  loc_EF4696: ' Referenced from: EF45D0
  loc_EF4696: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EF469B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E326A8
  'Data Table: 4A88E0
  loc_E32698: Proc_5_0_1107AD0(&HFF, Me)
  loc_E326A0: Call Proc_325_57_1385048(global_96)
  loc_E326A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E32A68
  'Data Table: 4A88E0
  Dim arg_68FF As Double
  loc_E32A58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32A60: Call Proc_325_57_1385048(global_96)
  loc_E32A65: Exit Sub
  loc_E32A66: arg_68FF = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E32E28
  'Data Table: 4A88E0
  loc_E32E18: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32E20: Call Proc_325_57_1385048(global_96)
  loc_E32E25: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E32E88
  'Data Table: 4A88E0
  Dim arg_68FF As Double
  loc_E32E78: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32E80: Call Proc_325_57_1385048(global_96)
  loc_E32E85: Exit Sub
  loc_E32E86: arg_68FF = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E231EC
  'Data Table: 4A88E0
  Dim Me As Recordset15
  loc_E231D3: Me.Requery -1
  loc_E231E3: Me.Requery -1
  loc_E231E8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '13E97A8
  'Data Table: 4A88E0
  Dim var_8C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_98 As String
  Dim var_130 As Variant
  Dim unk_4A88FE As Connection15
  Dim var_90 As TextBox
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_1A8 As MSHFlexGrid
  Dim var_170 As Variant
  Dim var_1EC As MSHFlexGrid
  Dim var_550 As Double
  Dim var_294 As Variant
  Dim var_328 As Variant
  Dim var_19C As String
  Dim var_110 As Variant
  Dim var_190 As Variant
  Dim var_1B8 As Variant
  Dim var_2B4 As Variant
  Dim var_450 As Variant
  Dim var_1A4 As TextBox
  Dim Me As Recordset15
  loc_13E8E4C: On Error Goto loc_13E9753
  loc_13E8E53: var_86 = CByte(0) 'Byte
  loc_13E8E62: Set var_8C = Me.Txt
  loc_13E8E68: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_13E8E91: If (Proc_6_27_EA61EC(var_90, "Voucher Type") = 0) Then
  loc_13E8E9B:   Call Txt_GotFocus(CInt(0))
  loc_13E8EA0:   Exit Sub
  loc_13E8EA1: End If
  loc_13E8EAC: Set var_8C = Me.Txt
  loc_13E8EB2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_90)
  loc_13E8EDB: If (Proc_6_27_EA61EC(var_90, "App. Date") = 0) Then
  loc_13E8EE5:   Call Txt_GotFocus(CInt(1))
  loc_13E8EEA:   Exit Sub
  loc_13E8EEB: End If
  loc_13E8EEE: Call Proc_325_53_FC9790(var_9A)
  loc_13E8EF9: If (var_9A = &HFF) Then
  loc_13E8EFC:   Exit Sub
  loc_13E8EFD: End If
  loc_13E8F22: For var_B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B0 'Integer
  loc_13E8F53:   If ((var_88 > 0) And (CLng(var_88) < (CLng(Me.FGrid.Rows) - 1))) Then
  loc_13E8F5A:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_13E8F62:     var_E0 = CVar(CLng(1)) 'Long
  loc_13E8F7C:     var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_13E8F82:     var_110 = Trim(var_100)
  loc_13E8F9E:     If (var_110 = vbNullString) Then
  loc_13E8FBA:       MsgBox("Define Facility ", &H40, var_100, var_110, var_130)
  loc_13E8FCA:       Exit Sub
  loc_13E8FCB:     End If
  loc_13E8FCB:   End If
  loc_13E8FCF:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_13E8FD7:   var_E0 = CVar(CLng(2)) 'Long
  loc_13E9013:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_13E901A:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_13E9022:     var_E0 = CVar(CLng(3)) 'Long
  loc_13E904A:     var_98 = CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_13E9067:     If (CDbl(Val(var_98)) = CDbl(0)) Then
  loc_13E906E:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_13E9076:       var_E0 = CVar(CLng(2)) 'Long
  loc_13E90BD:       MsgBox("Fill Unit Rate For Facility " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_13E90DA:       Set var_8C = Me.FGrid
  loc_13E90EB:       Exit Sub
  loc_13E90EC:     End If
  loc_13E90F0:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_13E90F8:     var_E0 = CVar(CLng(4)) 'Long
  loc_13E9134:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_13E913B:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_13E9143:       var_E0 = CVar(CLng(2)) 'Long
  loc_13E918A:       MsgBox("Fill Due On For Facility " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_13E91A7:       Set var_8C = Me.FGrid
  loc_13E91B8:       Exit Sub
  loc_13E91B9:     End If
  loc_13E91BD:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_13E91C5:     var_E0 = CVar(CLng(5)) 'Long
  loc_13E9201:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_13E9208:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_13E9210:       var_E0 = CVar(CLng(2)) 'Long
  loc_13E9257:       MsgBox("Fill StartMonth On For Facility " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_13E9274:       Set var_8C = Me.FGrid
  loc_13E9285:       Exit Sub
  loc_13E9286:     End If
  loc_13E9286:   End If
  loc_13E9289: Next var_B0 'Integer
  loc_13E9297: unk_4A88FE.BeginTrans var_194
  loc_13E92A0: var_86 = CByte(1) 'Byte
  loc_13E92C9: For var_198 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_198 'Integer
  loc_13E92D3:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_13E92DB:   var_E0 = CVar(CLng(1)) 'Long
  loc_13E92F5:   var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_13E9317:   If CBool(Trim(var_100) <> vbNullString) Then
  loc_13E9328:     Set var_8C = Me.Txt
  loc_13E932E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_90, var_98)
  loc_13E9336:     var_E0 = var_90.Tag
  loc_13E9346:     Set var_94 = Me.Txt
  loc_13E934C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1A4)
  loc_13E935B:     Proc_6_7_F26918(var_100, CVar(var_1A4))
  loc_13E9364:     var_D0 = CVar(CLng(var_88)) 'Long
  loc_13E936C:     var_F0 = CVar(CLng(1)) 'Long
  loc_13E939C:     Set var_1EC = Me.FGrid
  loc_13E93B5:     var_550 = Val(CStr(var_1EC.TextMatrix)))
  loc_13E93D3:     var_294 = Me.FGrid.TextMatrix)
  loc_13E93FA:     var_328 = Me.FGrid.TextMatrix)
  loc_13E940A:     Set var_36C = Me.TopCtrl1
  loc_13E9410:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_328)
  loc_13E9452:     Proc_6_8_EB1974(var_470, CVar(Proc_6_14_EF402C(CVar(CLng(5)), CVar(CLng(var_88)), var_294, CVar(CLng(4)), CVar(CLng(var_88)), var_550)), CVar(CLng(3)), CVar(CLng(var_88)))
  loc_13E946B:     var_19C = "Insert Into LocationFacility (LcCode,AppDate,FcCode,UnitRate,DueOn,StartMonth,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('"
  loc_13E94BB:     var_2B4 = CVar(var_19C & var_98 & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(var_550) & ",'" & CVar(CStr(var_294)) 
  loc_13E94FB:     var_450 = var_2B4 & "','" & CVar(CStr(var_328)) & "','" & IIf((CStr(var_37C) = "Add"), "A", "E") & "','" & CVar(MemVar_1F950C8) & "'," 
  loc_13E953F:     unk_4A88FE.Execute CStr(var_450 & var_470 & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), var_544, -1
  loc_13E95B7:   End If
  loc_13E95BA: Next var_198 'Integer
  loc_13E95C5: unk_4A88FE.CommitTrans
  loc_13E95CE: var_86 = CByte(0) 'Byte
  loc_13E95DD: Set var_1A8 = Me.Txt
  loc_13E95E3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_13E95F6: Set var_8C = Me.Txt
  loc_13E95FC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_90)
  loc_13E960C: var_100 = CVar(var_90.Tag) 'String
  loc_13E9622: Set var_94 = Me.Txt
  loc_13E9628: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A4, var_19C)
  loc_13E9630: 6 = var_1A4.Tag
  loc_13E963D: var_AC = Space((var_100 - Len(var_19C)))
  loc_13E9645: var_110 = (var_1EC + CVar(var_1A4))
  loc_13E9649: var_C0 = "**"
  loc_13E964E: var_130 = (CVar(var_19C & var_90.Tag & "',") + var_C0)
  loc_13E9679: var_1B8 = (1 + Format(CVar(var_1EC), "dd/mm/yyyy"))
  loc_13E96BA: Me.Requery -1
  loc_13E96E7: Me.Find "SearchCode ='" & CStr(CVar(var_19C & var_90.Tag & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix)))) & "'", 0, 1
  loc_13E96F7: Set var_8C = Me.TopCtrl1
  loc_13E96FD: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_C0)
  loc_13E9716: If (CStr(1) = "Add") Then
  loc_13E9719:   Call TopCtrl1_UnknownEvent_A()
  loc_13E971E:   Exit Sub
  loc_13E971F: End If
  loc_13E9734: var_98 = "INI"
  loc_13E9742: Call Proc_325_58_E7BBE4(Proc_5_1_100EC1C(var_98, Me), global_96)
  loc_13E974D: Call Proc_325_57_1385048(CVar("SearchCode ='" & CStr(CVar(var_19C & var_90.Tag & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix)))) & "'" & var_98 & "',") & var_100)
  loc_13E9752: Exit Sub
  loc_13E9753: ' Referenced from: 13E8E4C
  loc_13E975C: If (CInt(var_86) = 1) Then
  loc_13E9765:   unk_4A88FE.RollbackTrans
  loc_13E976A: End If
  loc_13E9772: Set var_8C = Err()
  loc_13E9778: Call 0.Method_arg_2C (var_98)
  loc_13E9791: MsgBox(CVar(var_98), &H10, var_100, CVar("SearchCode ='" & CStr(CVar(var_19C & var_90.Tag & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix)))) & "'" & var_98 & "',"), CVar("SearchCode ='" & CStr(CVar(var_19C & var_90.Tag & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix)))) & "'" & var_98 & "',") & var_100)
  loc_13E97A4: Exit Sub
End Sub

Public Function MasterFormExitGet() '4A95E0
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4A95EF
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '4A95FE
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '4A960D
  SearchCode = Value
End Sub

Public Function global_60Get() '4A961C
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '4A962B
  global_60 = Value
End Sub

Public Function global_64Get() '4A963A
  global_64Get = global_64
End Function

Public Sub global_64Put(Value) '4A9649
  global_64 = Value
End Sub

Public Sub global_64Set(Value) '4A9658
  global_64 = Value
End Sub

Public Function global_80Get() '4A9667
  global_80Get = global_80
End Function

Public Sub global_80Put(Value) '4A9676
  global_80 = Value
End Sub

Public Sub global_80Set(Value) '4A9685
  global_80 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E95E90
  'Data Table: 4A88E0
  Dim Me As Recordset15
  loc_E95E1E: On Error Goto loc_E95E87
  loc_E95E27: Me.MoveFirst
  loc_E95E51: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E95E79: Proc_5_0_1107AD0(&HFF, Me, global_96)
  loc_E95E81: Call Proc_325_57_1385048(0)
  loc_E95E86: Exit Sub
  loc_E95E87: ' Referenced from: E95E1E
  loc_E95E87: Proc_6_60_E63754(var_A0)
  loc_E95E8C: Exit Sub
End Sub

Public Sub Proc_325_52_11382C0
  'Data Table: 4A88E0
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_1137F40: On Error Goto loc_11382B9
  loc_1137F51: Set var_88 = Me.Txt
  loc_1137F57: Call 0.Method_Proc_325_52_11382C00 (CInt(0), var_8C)
  loc_1137F76: Me.DGVType.Left = CVar(var_8C.Left)
  loc_1137F92: Set var_B4 = Me.Txt
  loc_1137F98: Call 0.Method_Proc_325_52_11382C00 (CInt(0), var_B8)
  loc_1137FB3: Set var_88 = Me.Txt
  loc_1137FB9: Call 0.Method_Proc_325_52_11382C00 (CInt(0), var_8C)
  loc_1137FD1: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1137FE0: Me.DGVType.Top = CVar(var_8C.Left)
  loc_1137FF6: Set var_C4 = Me.FGrid
  loc_1138005: var_C4.Height = CVar(CDbl(4250))
  loc_1138016: var_C4.Width = CVar(CDbl(8500))
  loc_1138027: var_C4.Cols = 7
  loc_1138038: var_C4.Rows = 2
  loc_1138051: global_84 = CStr(CLng(var_C4.BackColor))
  loc_113805B: var_A0 = 0
  loc_1138064: var_E8 = &H64
  loc_1138070: LateIdCallSt
  loc_113807B: var_A0 = CVar(CLng(1)) 'Long
  loc_1138080: var_E8 = 0
  loc_113808C: LateIdCallSt
  loc_1138097: var_A0 = CVar(CLng(2)) 'Long
  loc_113809C: var_E8 = &HBB8
  loc_11380A8: LateIdCallSt
  loc_11380B0: var_A0 = 0
  loc_11380BC: var_E8 = CVar(CLng(2)) 'Long
  loc_11380C1: var_108 = "Facility Name"
  loc_11380CA: LateIdCallSt
  loc_11380D5: var_A0 = CVar(CLng(2)) 'Long
  loc_11380E0: var_E8 = CVar(CInt(1)) 'Integer
  loc_11380E7: LateIdCallSt
  loc_11380F2: var_A0 = CVar(CLng(3)) 'Long
  loc_11380F7: var_E8 = &H4B0
  loc_1138103: LateIdCallSt
  loc_113810B: var_A0 = 0
  loc_1138117: var_E8 = CVar(CLng(3)) 'Long
  loc_113811C: var_108 = "Unit Rate"
  loc_1138125: LateIdCallSt
  loc_1138130: var_A0 = CVar(CLng(3)) 'Long
  loc_113813B: var_E8 = CVar(CInt(7)) 'Integer
  loc_1138142: LateIdCallSt
  loc_113814D: var_A0 = CVar(CLng(3)) 'Long
  loc_1138158: var_E8 = CVar(CInt(7)) 'Integer
  loc_113815F: LateIdCallSt
  loc_113816A: var_A0 = CVar(CLng(4)) 'Long
  loc_113816F: var_E8 = &H4B0
  loc_113817B: LateIdCallSt
  loc_1138183: var_A0 = 0
  loc_113818F: var_E8 = CVar(CLng(4)) 'Long
  loc_1138194: var_108 = "DueOn"
  loc_113819D: LateIdCallSt
  loc_11381A8: var_A0 = CVar(CLng(4)) 'Long
  loc_11381B3: var_E8 = CVar(CInt(1)) 'Integer
  loc_11381BA: LateIdCallSt
  loc_11381C5: var_A0 = CVar(CLng(4)) 'Long
  loc_11381D0: var_E8 = CVar(CInt(1)) 'Integer
  loc_11381D7: LateIdCallSt
  loc_11381E2: var_A0 = CVar(CLng(5)) 'Long
  loc_11381E7: var_E8 = &H514
  loc_11381F3: LateIdCallSt
  loc_11381FB: var_A0 = 0
  loc_1138207: var_E8 = CVar(CLng(5)) 'Long
  loc_113820C: var_108 = "StartMonth"
  loc_1138215: LateIdCallSt
  loc_1138220: var_A0 = CVar(CLng(5)) 'Long
  loc_113822B: var_E8 = CVar(CInt(1)) 'Integer
  loc_1138232: LateIdCallSt
  loc_113823D: var_A0 = CVar(CLng(5)) 'Long
  loc_1138248: var_E8 = CVar(CInt(1)) 'Integer
  loc_113824F: LateIdCallSt
  loc_113825A: var_A0 = CVar(CLng(6)) 'Long
  loc_113825F: var_E8 = &H514
  loc_113826B: LateIdCallSt
  loc_1138273: var_A0 = 0
  loc_113827F: var_E8 = CVar(CLng(6)) 'Long
  loc_1138284: var_108 = "Charge Type"
  loc_113828D: LateIdCallSt
  loc_1138298: var_A0 = CVar(CLng(6)) 'Long
  loc_11382A3: var_E8 = CVar(CInt(1)) 'Integer
  loc_11382AA: LateIdCallSt
  loc_11382B4: Set var_C4 = Nothing 
  loc_11382B8: Exit Sub
  loc_11382B9: ' Referenced from: 1137F40
  loc_11382B9: Proc_6_60_E63754(var_C4, var_E8, var_A0, var_C4, var_108, var_E8, var_A0, var_C4)
  loc_11382BE: Exit Sub
End Sub

Public Sub Proc_325_53_FC9790
  'Data Table: 4A88E0
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim unk_4A88FE As Connection15
  Dim var_138 As Fields15
  Dim var_14C As Field20
  loc_FC962B: If (Me.RecordCount = 0) Then
  loc_FC962E:   Proc_325_53_FC9790 = 
  loc_FC9634: End If
  loc_FC966F: Set var_94 = Me.Txt
  loc_FC9675: Call 0.Method_Proc_325_53_FC97900 (CInt(0), var_98, var_9C, "Select Count(*) From LocationFacility Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and (LcCode='", var_130, -1)
  loc_FC968D: var_DC = CVar(var_138 & var_9C & "' And AppDate=") 'String
  loc_FC969B: Set var_A8 = Me.Txt
  loc_FC96A1: Call 0.Method_Proc_325_53_FC97900 (CInt(1), var_AC, var_DC)
  loc_FC96B0: Proc_6_7_F26918(var_CC, CVar(var_AC), 0)
  loc_FC96B8: var_EC = var_14C & var_CC 
  loc_FC96CF: unk_4A88FE.Execute CStr(var_EC & ")"), var_15C, 
  loc_FC96D7:  = var_98.Tag.Fields
  loc_FC96DF:  = var_138.Item()
  loc_FC96E7:  = var_14C.Value
  loc_FC9724: If (var_15C > 0) Then
  loc_FC9748:   MsgBox("Duplicate Entry", &H40, "Information", var_DC, var_EC)
  loc_FC9763:   Set var_94 = Me.Txt
  loc_FC9769:   Call 0.Method_Proc_325_53_FC97900 (CInt(0))
  loc_FC9771:   var_98.SetFocus
  loc_FC9782:   Proc_325_53_FC9790 = &HFF
  loc_FC9788: End If
  loc_FC9788: Proc_325_53_FC9790 = var_98
End Sub

Public Sub Proc_325_54_E44028
  'Data Table: 4A88E0
  loc_E44004: Set var_88 = Me.TopCtrl1
  loc_E4400A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E44023: If (CStr() = "Browse") Then
  loc_E44026:   Exit Sub
  loc_E44027: End If
  loc_E44027: Exit Sub
End Sub

Public Sub Proc_325_55_133B71C(arg_C) '133B71C
  'Data Table: 4A88E0
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_D0 As Variant
  Dim var_150 As Variant
  Dim var_164 As MSHFlexGrid
  Dim var_F0 As Variant
  Dim var_130 As Variant
  Dim var_178 As Variant
  Dim var_120 As Variant
  Dim var_B0 As String
  Dim var_168 As Variant
  loc_133AF67: var_A0 = CLng(Me.FGrid.Col)
  loc_133AF77: If (var_A0 = CLng(2)) Then
  loc_133AF9A:   var_A6 = Me.EOF
  loc_133AFC8:   Set var_8C = Me.TxtGrid
  loc_133AFCE:   Call 0.Method_Proc_325_55_133B71C0 (arg_C, var_AC, var_B0)
  loc_133AFD6:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_133AFEE:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_133B004:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_133B00C:     var_E0 = CVar(CLng(2)) 'Long
  loc_133B011:     var_100 = vbNullString
  loc_133B01B:     Set var_AC = Me.FGrid
  loc_133B021:     LateIdCallSt
  loc_133B046:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_133B04E:     var_E0 = CVar(CLng(1)) 'Long
  loc_133B053:     var_100 = vbNullString
  loc_133B05D:     Set var_AC = Me.FGrid
  loc_133B063:     LateIdCallSt
  loc_133B088:     var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_133B090:     var_100 = CVar(CLng(3)) 'Long
  loc_133B0C1:     var_150 = CVar(CStr(Format(vbNullString, "0.00"))) 'String
  loc_133B0C9:     Set var_AC = Me.FGrid
  loc_133B0CF:     LateIdCallSt
  loc_133B0FE:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_133B106:     var_E0 = CVar(CLng(4)) 'Long
  loc_133B10B:     var_100 = vbNullString
  loc_133B115:     Set var_AC = Me.FGrid
  loc_133B11B:     LateIdCallSt
  loc_133B140:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_133B148:     var_E0 = CVar(CLng(5)) 'Long
  loc_133B14D:     var_100 = vbNullString
  loc_133B157:     Set var_AC = Me.FGrid
  loc_133B15D:     LateIdCallSt
  loc_133B182:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_133B18A:     var_E0 = CVar(CLng(6)) 'Long
  loc_133B18F:     var_100 = vbNullString
  loc_133B199:     Set var_AC = Me.FGrid
  loc_133B19F:     LateIdCallSt
  loc_133B1B4:   Else
  loc_133B1B7:     Call Proc_325_60_FBC04C(var_A6, var_AC, var_100, var_E0, var_C0, var_AC, var_100, var_E0)
  loc_133B1C2:     If (var_A6 = 0) Then
  loc_133B1CA:       Proc_325_55_133B71C = 0
  loc_133B1D0:     End If
  loc_133B1E3:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_133B1EB:     var_F0 = CVar(CLng(2)) 'Long
  loc_133B21E:     var_130 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_133B226:     Set var_168 = Me.FGrid
  loc_133B22C:     LateIdCallSt
  loc_133B28D:     var_120 = Me.Fields.Item("Code").Value
  loc_133B2A4:     LateIdCallSt
  loc_133B2E9:     Proc_6_39_E7D3A0(var_120, CVar(Me.Fields.Item("UnitRate")), Me.FGrid, CVar(CStr(var_120)), CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), Me.FGrid)
  loc_133B301:     var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_133B309:     var_100 = CVar(CLng(3)) 'Long
  loc_133B332:     var_178 = CVar(CStr(Format(var_120, "0.00"))) 'String
  loc_133B33A:     Set var_168 = Me.FGrid
  loc_133B340:     LateIdCallSt
  loc_133B373:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_133B37B:     var_F0 = CVar(CLng(6)) 'Long
  loc_133B3AE:     var_130 = CVar(CStr(Me.Fields.Item("ChargeType").Value)) 'String
  loc_133B3B6:     Set var_168 = Me.FGrid
  loc_133B3BC:     LateIdCallSt
  loc_133B3D8:   End If
  loc_133B3F1:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_133B3F6:   var_E0 = 1
  loc_133B403:   Set var_AC = Me.FGrid
  loc_133B414:   var_B0 = CStr(var_AC.TextMatrix))
  loc_133B42D:   If (var_B0 <> vbNullString) Then
  loc_133B430:     var_C0 = vbNullString
  loc_133B43A:     Set var_8C = Me.FGrid
  loc_133B44B:   End If
  loc_133B44E: Else
  loc_133B455:   If (var_A0 = CLng(4)) Then
  loc_133B465:     Set var_8C = Me.TxtGrid
  loc_133B46B:     Call 0.Method_Proc_325_55_133B71C0 (arg_C, var_AC, var_B0, FGrid.DispID_10000, var_C0, var_E0, var_C0)
  loc_133B473:     var_168 = var_AC.Text
  loc_133B48A:     If (var_B0 <> vbNullString) Then
  loc_133B4A5:       Set var_AC = Me.ListView.SelectedItem
  loc_133B4AB:       var_B0 = var_AC.Text
  loc_133B4BD:       Set var_164 = Me.TxtGrid
  loc_133B4C3:       Call 0.Method_Proc_325_55_133B71C0 (arg_C, var_168, var_B0, var_130, var_F0)
  loc_133B4CB:       var_168.Text = var_D0
  loc_133B4E1:     End If
  loc_133B4F4:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_133B50E:     Set var_8C = Me.TxtGrid
  loc_133B514:     Call 0.Method_Proc_325_55_133B71C0 (arg_C, var_AC, var_B0, CVar(CLng(4)))
  loc_133B51C:     var_C0 = var_AC.Text
  loc_133B524:     var_120 = CVar(var_B0) 'String
  loc_133B52C:     Set var_168 = Me.FGrid
  loc_133B532:     LateIdCallSt
  loc_133B54F:   Else
  loc_133B556:     If (var_A0 = CLng(5)) Then
  loc_133B566:       Set var_8C = Me.TxtGrid
  loc_133B56C:       Call 0.Method_Proc_325_55_133B71C0 (arg_C, var_AC, var_B0, var_168)
  loc_133B574:       var_120 = var_AC.Text
  loc_133B58B:       If (var_B0 <> vbNullString) Then
  loc_133B5A6:         Set var_AC = Me.ListView.SelectedItem
  loc_133B5AC:         var_B0 = var_AC.Text
  loc_133B5BE:         Set var_164 = Me.TxtGrid
  loc_133B5C4:         Call 0.Method_Proc_325_55_133B71C0 (arg_C, var_168, var_B0)
  loc_133B5CC:         var_168.Text = var_168
  loc_133B5E2:       End If
  loc_133B5F5:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_133B60F:       Set var_8C = Me.TxtGrid
  loc_133B615:       Call 0.Method_Proc_325_55_133B71C0 (arg_C, var_AC, var_B0, CVar(CLng(5)))
  loc_133B61D:       var_C0 = var_AC.Text
  loc_133B625:       var_120 = CVar(var_B0) 'String
  loc_133B62D:       Set var_168 = Me.FGrid
  loc_133B633:       LateIdCallSt
  loc_133B650:     Else
  loc_133B657:       If (var_A0 = CLng(3)) Then
  loc_133B666:         Set var_8C = Me.TxtGrid
  loc_133B66C:         Call 0.Method_Proc_325_55_133B71C0 (0, var_AC, var_B0, var_168)
  loc_133B674:         var_120 = var_AC.Text
  loc_133B697:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_133B6AF:         var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_133B6DC:         var_178 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00"))) 'String
  loc_133B6E4:         Set var_17C = Me.FGrid
  loc_133B6EA:         LateIdCallSt
  loc_133B711:       End If
  loc_133B711:     End If
  loc_133B711:   End If
  loc_133B711: End If
  loc_133B716: Proc_325_55_133B71C = &HFF
End Sub

Public Sub Proc_325_56_F2B670
  'Data Table: 4A88E0
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_F2B572: Set var_8C = Me.Txt
  loc_F2B578: Call 0.Method_Proc_325_56_F2B670C (var_8E, var_86)
  loc_F2B588: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F2B59E:   Set var_8C = Me.Txt
  loc_F2B5A4:   Call 0.Method_Proc_325_56_F2B6700 (CInt(var_86), var_98)
  loc_F2B5AC:   var_98.Text = vbNullString
  loc_F2B5C8:   Set var_8C = Me.Txt
  loc_F2B5CE:   Call 0.Method_Proc_325_56_F2B6700 (CInt(var_86), var_98)
  loc_F2B5D6:   var_98.Tag = vbNullString
  loc_F2B5E5: Next var_92 'Byte
  loc_F2B5F8: Me.LblDepart.Caption = vbNullString
  loc_F2B613: Me.FGrid.Rows = 1
  loc_F2B630: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F2B638: Set var_98 = Me.FGrid
  loc_F2B667: Me.FGrid.FixedRows = 1
  loc_F2B66F: Exit Sub
End Sub

Public Sub Proc_325_57_1385048
  'Data Table: 4A88E0
  Dim Me As Recordset15
  Dim var_94 As String
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim var_A0 As Variant
  Dim unk_4A88FE As Connection15
  Dim var_88 As Recordset15
  Dim var_130 As TextBox
  Dim var_12C As Variant
  Dim var_118 As Variant
  Dim var_8A As Integer
  loc_13847C4: On Error Goto loc_1385041
  loc_13847DE: If (Me.RecordCount > 0) Then
  loc_13847E1:   Call Proc_325_56_F2B670()
  loc_13847EE:   If (MemVar_1F953B0 = "A") Then
  loc_1384805:     var_94 = "Select LF.*,LM.Name As LcName,FM.Name As FcName,FM.ChargeType From ((LocationFacility LF Left Join LocationMast LM On LF.LcCode=LM.Code) Left Join FacilityMast FM On LF.FcCode=FM.Code) Where LF.LogSite_Code='" & MemVar_1F95078
  loc_138481A:     var_D4 = CVar(var_94 & "' and LF.Site_Code='" & MemVar_1F95070 & "' and LF.LcCode+Space(6-len(LF.LcCode))+'**'+Format(LF.AppDate,'dd/mm/yyyy')='") 'String
  loc_1384861:     unk_4A88FE.Execute CStr(var_D4 & Me.Fields.Item("SearchCode").Value & "' Order By LF.AppDate"), var_128, -1
  loc_138486C:     Set var_88 = var_12C
  loc_1384893:   Else
  loc_138489B:     If (MemVar_1F953B0 = "S") Then
  loc_13848B2:       var_94 = "Select LF.*,LM.Name As LcName,FM.Name As FcName,FM.ChargeType From ((LocationFacility LF Left Join LocationMast LM On LF.LcCode=LM.Code) Left Join FacilityMast FM On LF.FcCode=FM.Code) Where LF.LogSite_Code='" & MemVar_1F95078
  loc_13848C7:       var_D4 = CVar(var_94 & "' and LF.Site_Code='" & MemVar_1F95070 & "' and LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103)='") 'String
  loc_138490E:       unk_4A88FE.Execute CStr(var_D4 & Me.Fields.Item("SearchCode").Value & "' Order By LF.AppDate"), var_128, -1
  loc_1384919:       Set var_88 = var_12C
  loc_138493D:     End If
  loc_138493D:   End If
  loc_1384951:   If (var_88.RecordCount > 0) Then
  loc_138498A:     Set var_12C = Me.Txt
  loc_1384990:     Call 0.Method_Proc_325_57_13850480 (CInt(0), var_130)
  loc_1384998:     var_130.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("lccode")), var_12C)
  loc_13849E2:     Set var_12C = Me.Txt
  loc_13849E8:     Call 0.Method_Proc_325_57_13850480 (CInt(0), var_130)
  loc_13849F0:     var_130.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("LcName")))
  loc_1384A3D:     If (Proc_6_38_E69628(CVar(var_88.Fields.Item("LcName"))) = vbNullString) Then
  loc_1384A40:     End If
  loc_1384A75:     Me.LblDepart.Caption = Proc_6_38_E69628(CVar(var_88.Fields.Item("LcName")))
  loc_1384AD9:     Set var_12C = Me.Txt
  loc_1384ADF:     Call 0.Method_Proc_325_57_13850480 (CInt(1), var_130, CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/MMM/yyyy")))
  loc_1384AE7:     var_130.Text = 1
  loc_1384B3B:     var_12C = var_88.Fields
  loc_1384BA4:     var_190 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE")), 1) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_12C.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1384BE9:     Me.LblUser.Caption = CStr(var_12C & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_190)))
  loc_1384CC4:     var_190 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_1384D09:     Me.LblLDt.Caption = CStr(var_190 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_1384D43:     var_8A = 1
  loc_1384D59:     Me.FGrid.Rows = 1
  loc_1384D61:     ' Referenced from: 1384FB8
  loc_1384D70:     If Not(var_88.EOF) Then
  loc_1384D73:       var_B0 = vbNullString
  loc_1384D7D:       Set var_A0 = Me.FGrid
  loc_1384D92:       Set var_1E8 = Me.FGrid
  loc_1384DCE:       var_D4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("fcCode")), CVar(CLng(1)), CVar(CLng(var_8A)))) 'String
  loc_1384DD5:       LateIdCallSt
  loc_1384E20:       var_D4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("FCname")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1E8)) 'String
  loc_1384E27:       LateIdCallSt
  loc_1384E59:       var_118 = CVar(CLng(var_8A)) 'Long
  loc_1384E95:       LateIdCallSt
  loc_1384EE4:       var_D4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DueOn")), CVar(CLng(4)), CVar(CLng(var_8A)), var_1E8, CVar(CStr(Format(CVar(var_88.Fields.Item("UnitRate")), "0.00"))), 1, 1)) 'String
  loc_1384EEB:       LateIdCallSt
  loc_1384F36:       var_D4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("StartMonth")), CVar(CLng(5)), CVar(CLng(var_8A)), var_1E8, var_D4, CVar(CLng(3)))) 'String
  loc_1384F3D:       LateIdCallSt
  loc_1384F88:       var_D4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ChargeType")), CVar(CLng(6)), CVar(CLng(var_8A)), var_1E8, var_D4)) 'String
  loc_1384F8F:       LateIdCallSt
  loc_1384FA3:       Set var_1E8 = Nothing 
  loc_1384FAD:       var_8A = (var_8A + 1)
  loc_1384FB3:       var_88.MoveNext
  loc_1384FB8:       GoTo loc_1384D61
  loc_1384FBB:     End If
  loc_1384FBB:   End If
  loc_1384FBB:   var_B0 = 0
  loc_1384FC5:   Set var_A0 = Me.FGrid
  loc_1384FF2:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_1384FF5:     var_B0 = "1"
  loc_1384FFF:     Set var_A0 = Me.FGrid
  loc_1385010:   End If
  loc_1385010:   var_B0 = 1
  loc_1385023:   Me.FGrid.FixedRows = var_B0
  loc_138502E: Else
  loc_138502E:   Call Proc_325_56_F2B670(FGrid.DispID_10000, var_B0, FGrid.DispID_2E, var_B0, var_8A, var_1E8)
  loc_1385033: End If
  loc_1385033: Call Proc_325_59_EB92D4(var_D4, var_118, var_1E8)
  loc_138503D: Set var_88 = Nothing
  loc_1385040: Exit Sub
  loc_1385041: ' Referenced from: 13847C4
  loc_1385041: Proc_6_60_E63754(var_D4, var_D4)
  loc_1385046: Exit Sub
End Sub

Public Sub Proc_325_58_E7BBE4(arg_C) 'E7BBE4
  'Data Table: 4A88E0
  Dim var_98 As TextBox
  loc_E7BB92: Set var_8C = Me.Txt
  loc_E7BB98: Call 0.Method_Proc_325_58_E7BBE4C (var_8E, var_86)
  loc_E7BBA8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7BBBE:   Set var_8C = Me.Txt
  loc_E7BBC4:   Call 0.Method_Proc_325_58_E7BBE40 (CInt(var_86), var_98)
  loc_E7BBCC:   var_98.Enabled = arg_C
  loc_E7BBDB: Next var_92 'Byte
  loc_E7BBE1: Exit Sub
End Sub

Public Sub Proc_325_59_EB92D4
  'Data Table: 4A88E0
  loc_EB9250: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EB9262:   Me.DGVType.Visible = False
  loc_EB926A: End If
  loc_EB9286: If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_EB9298:   Me.DGSundry.Visible = False
  loc_EB92A0: End If
  loc_EB92BB: If (Me.FrmList.Visible = &HFF) Then
  loc_EB92CA:   Me.FrmList.Visible = False
  loc_EB92D2: End If
  loc_EB92D2: Exit Sub
End Sub

Public Sub Proc_325_60_FBC04C
  'Data Table: 4A88E0
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBBECF: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_FBBED4:   var_92 = 2 'Byte
  loc_FBBED8: End If
  loc_FBBEE1: Set var_98 = Me.TxtGrid
  loc_FBBEE7: Call 0.Method_Proc_325_60_FBC04C0 (0, var_B0)
  loc_FBBF0A: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBBF3E: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBBF62:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBBF65:     GoTo loc_FBC037
  loc_FBBF68:   End If
  loc_FBBF6C:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBBF96:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBBFA0:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBBFD5:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBBFF9:     MsgBox("Duplicate Facility Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBC012:     Set var_98 = Me.TxtGrid
  loc_FBC018:     Call 0.Method_Proc_325_60_FBC04C0 (0, var_B0, CVar(CLng(var_92)))
  loc_FBC020:     var_B0.SetFocus
  loc_FBC031:     Proc_325_60_FBC04C = 0
  loc_FBC037:     ' Referenced from: FBBF65
  loc_FBC037:   End If
  loc_FBC03A: Next var_D4 'Integer
  loc_FBC044: Proc_325_60_FBC04C = &HFF
End Sub
