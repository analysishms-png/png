VERSION 5.00
Begin VB.Form FrmConsumMast
  Caption = "Consumption Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 10035
  ClientHeight = 6645
  Begin DataGrid DGRest
    Left = 8325
    Top = 6900
    Width = 4230
    Height = 2325
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 25
  End
  Begin Frame Frame1
    BackColor = &HC0FFFF&
    Left = 9600
    Top = 6240
    Width = 5640
    Height = 2130
    Visible = 0   'False
    TabIndex = 20
    Begin TextBox Txt
      Index = 4
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1500
      Top = 330
      Width = 3855
      Height = 285
      TabIndex = 21
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
    Begin BtnEnh Command2
      Index = 1
      Left = 3450
      Top = 1530
      Width = 1080
      Height = 570
      TabIndex = 22
    End
    Begin BtnEnh Command2
      Index = 0
      Left = 4530
      Top = 1530
      Width = 1080
      Height = 570
      TabIndex = 23
    End
    Begin Label LblName
      Caption = "Restaurant"
      Index = 4
      ForeColor = &HC00000&
      Left = 240
      Top = 330
      Width = 1020
      Height = 240
      TabIndex = 24
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 10035
    Height = 450
    TabIndex = 19
  End
  Begin DataGrid DGItem
    Left = 10395
    Top = 1290
    Width = 4230
    Height = 1890
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin DataGrid DGFinish
    Left = 2370
    Top = 3300
    Width = 7950
    Height = 1290
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3690
    Top = 2400
    Width = 1425
    Height = 285
    Enabled = 0   'False
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
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3690
    Top = 2085
    Width = 1425
    Height = 285
    Enabled = 0   'False
    TabIndex = 2
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3690
    Top = 1770
    Width = 1425
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    ForeColor = &HC00000&
    Left = 3690
    Top = 1455
    Width = 3510
    Height = 285
    TabIndex = 0
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
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &H800000&
    Left = 10800
    Top = 180
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 240
      Top = 120
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 10
    End
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H800000&
    Left = 1950
    Top = 4995
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 1800
    Top = 4680
    Width = 7740
    Height = 1875
    TabIndex = 4
  End
  Begin MSFlexGrid FGPoint
    Left = 30
    Top = 3075
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 26
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5160
    Top = 8100
    Width = 2790
    Height = 285
    TabIndex = 18
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
    Left = 1785
    Top = 8100
    Width = 2880
    Height = 255
    TabIndex = 17
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
    Left = 15
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 16
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
  Begin Label LblOutlet
    Caption = "Outlet"
    ForeColor = &H80&
    Left = 7260
    Top = 1470
    Width = 4380
    Height = 285
    TabIndex = 15
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "App Date"
    Index = 3
    ForeColor = &HC00000&
    Left = 1980
    Top = 2400
    Width = 870
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
  Begin Label lbltotal
    Caption = "."
    ForeColor = &H80&
    Left = 5310
    Top = 2385
    Width = 1680
    Height = 270
    TabIndex = 13
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Unit"
    Index = 2
    ForeColor = &HC00000&
    Left = 1980
    Top = 2085
    Width = 375
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
  Begin Label LblName
    Caption = "Finish Item Qty"
    Index = 1
    ForeColor = &HC00000&
    Left = 1980
    Top = 1770
    Width = 1425
    Height = 240
    TabIndex = 11
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
    Caption = "Finish Item Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 1980
    Top = 1455
    Width = 1665
    Height = 240
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
End

Attribute VB_Name = "FrmConsumMast"

Private MasterFormExit As Integer
Private global_64 As Integer
Private global_66 As Integer
Private global_108 As Long

Private Sub TxtGrid_GotFocus(Index As Integer) '10E5418
  'Data Table: 4DD3BC
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Recordset15
  loc_10E5114: Call Proc_28_58_EF94D0()
  loc_10E512C: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10E5147: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E5150: Set var_BC = Me.FGrid
  loc_10E5186: Set var_104 = Me.TxtGrid
  loc_10E518C: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_10E5194: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_10E51C5: var_110 = CLng(Me.FGrid.Col)
  loc_10E51D5: If (var_110 = CLng(2)) Then
  loc_10E51E7:   Set var_A8 = Me.TxtGrid
  loc_10E51ED:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H23)
  loc_10E51F5:   var_BC.MaxLength = var_110
  loc_10E5242:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_10E5245:     Exit Sub
  loc_10E5246:   End If
  loc_10E5259:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E5261:   var_DC = CVar(CLng(2)) 'Long
  loc_10E5294:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_10E529D:     Me.MoveFirst
  loc_10E52B5:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E52BD:     var_DC = CVar(CLng(1)) 'Long
  loc_10E52C6:     Set var_BC = Me.FGrid
  loc_10E52CC:     var_CC = var_BC.TextMatrix)
  loc_10E5301:     Me.Find "Code ='" & CStr(var_CC) & "'", 0, 1
  loc_10E5331:     If (Me.EOF = &HFF) Then
  loc_10E533A:       Me.MoveFirst
  loc_10E533F:     End If
  loc_10E533F:   End If
  loc_10E5342: Else
  loc_10E5349:   If (var_110 = CLng(3)) Then
  loc_10E535B:     Set var_A8 = Me.TxtGrid
  loc_10E5361:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB, var_130, var_CC)
  loc_10E5369:     var_BC.MaxLength = var_DC
  loc_10E5378:   Else
  loc_10E537F:     If (var_110 = CLng(4)) Then
  loc_10E5391:       Set var_A8 = Me.TxtGrid
  loc_10E5397:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H19, var_94)
  loc_10E539F:       var_BC.MaxLength = var_DC
  loc_10E53AE:     Else
  loc_10E53B5:       If (var_110 = CLng(5)) Then
  loc_10E53C7:         Set var_A8 = Me.TxtGrid
  loc_10E53CD:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB)
  loc_10E53D5:         var_BC.MaxLength = var_94
  loc_10E53E4:       Else
  loc_10E53EB:         If (var_110 = CLng(7)) Then
  loc_10E53FD:           Set var_A8 = Me.TxtGrid
  loc_10E5403:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_10E540B:           var_BC.MaxLength = &HB
  loc_10E5417:         End If
  loc_10E5417:       End If
  loc_10E5417:     End If
  loc_10E5417:   End If
  loc_10E5417: End If
  loc_10E5417: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1181920
  'Data Table: 4DD3BC
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C0 As Variant
  Dim var_94 As DataGrid
  loc_1181544: On Error Goto loc_1181918
  loc_1181551: If (CLng(Shift) = &H1B) Then
  loc_1181561:   Set var_88 = Me.TxtGrid
  loc_1181567:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_1181581:   Set var_94 = Me.TxtGrid
  loc_1181587:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_118158F:   var_98.Text = var_8C.Tag
  loc_11815AB:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_11815B0:   Call Proc_28_58_EF94D0(arg_14)
  loc_11815B9:   Set var_88 = Me.FGrid
  loc_11815D6:   Set var_88 = Me.TxtGrid
  loc_11815DC:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_11815E4:   var_8C.Visible = False
  loc_11815F0:   Exit Sub
  loc_11815F1: End If
  loc_1181614: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_1181623:   Set var_88 = Me.TxtGrid
  loc_1181629:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B0)
  loc_1181631:   var_AC = var_8C.Left
  loc_1181648:   Me.DGItem.Left = CVar(var_B0)
  loc_1181662:   Set var_94 = Me.TxtGrid
  loc_1181668:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_1181681:   Set var_88 = Me.TxtGrid
  loc_1181687:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_118169B:   var_C0 = CVar((var_8C.Top + var_98.Height)) 'Single
  loc_11816AA:   Me.DGItem.Top = CVar(var_8C.Top)
  loc_11816D4:   Set var_98 = Nothing
  loc_118170D:   Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_76, Shift, &HFF)
  loc_118172B:   If (CLng(Shift) = &HD) Then
  loc_1181734:     Call Proc_28_54_136D1B0(KeyCode, var_DA, 1, Nothing)
  loc_118173F:     If (var_DA = &HFF) Then
  loc_1181785:       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, 4)
  loc_1181795:     End If
  loc_1181795:   End If
  loc_1181798: Else
  loc_118179F:   If (var_AC = CLng(3)) Then
  loc_11817AC:     If (CLng(Shift) = &HD) Then
  loc_11817B5:       Call Proc_28_54_136D1B0(KeyCode, var_DA, 0, 3)
  loc_11817C0:       If (var_DA = &HFF) Then
  loc_1181806:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, 7, 0)
  loc_1181816:       End If
  loc_1181816:     End If
  loc_1181819:   Else
  loc_1181820:     If (var_AC = CLng(5)) Then
  loc_118182D:       If (CLng(Shift) = &HD) Then
  loc_1181836:         Call Proc_28_54_136D1B0(KeyCode, var_DA, 5, 0)
  loc_1181841:         If (var_DA = &HFF) Then
  loc_1181887:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, 7, 0)
  loc_1181897:         End If
  loc_1181897:       End If
  loc_118189A:     Else
  loc_11818A1:       If (var_AC = CLng(7)) Then
  loc_11818AE:         If (CLng(Shift) = &HD) Then
  loc_11818B7:           Call Proc_28_54_136D1B0(KeyCode, var_DA, 7, 0)
  loc_11818C2:           If (var_DA = &HFF) Then
  loc_1181908:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, 7, 0)
  loc_1181918:           End If
  loc_1181918:         End If
  loc_1181918:       End If
  loc_1181918:       ' Referenced from: 1181544
  loc_1181918:     End If
  loc_1181918:   End If
  loc_1181918: End If
  loc_1181918: Proc_6_60_E63754(0, 0, 0)
  loc_118191D: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F8FA18
  'Data Table: 4DD3BC
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F8F8B7: Proc_6_58_E06050(arg_10)
  loc_F8F8C8: If (KeyAscii = 0) Then
  loc_F8F8DE:   var_A0 = CLng(Me.FGrid.Col)
  loc_F8F8EE:   If (var_A0 = CLng(2)) Then
  loc_F8F90D:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F8F914:       Set var_AC = Me.TxtGrid
  loc_F8F91F:       var_A4 = "Name"
  loc_F8F93A:       Proc_6_89_1470B00(var_AC, KeyAscii, global_76, arg_10)
  loc_F8F949:     End If
  loc_F8F94C:   Else
  loc_F8F953:     If (var_A0 = CLng(3)) Then
  loc_F8F960:       Set var_8C = Me.TxtGrid
  loc_F8F966:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F8F981:       Proc_6_42_129B55C(var_AC, arg_10, 7, 5)
  loc_F8F990:     Else
  loc_F8F997:       If (var_A0 = CLng(5)) Then
  loc_F8F9A4:         Set var_8C = Me.TxtGrid
  loc_F8F9AA:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_F8F9C5:         Proc_6_42_129B55C(var_AC, arg_10, 7)
  loc_F8F9D4:       Else
  loc_F8F9DB:         If (var_A0 = CLng(7)) Then
  loc_F8F9E8:           Set var_8C = Me.TxtGrid
  loc_F8F9EE:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 5)
  loc_F8FA09:           Proc_6_42_129B55C(var_AC, arg_10, 2)
  loc_F8FA15:         End If
  loc_F8FA15:       End If
  loc_F8FA15:     End If
  loc_F8FA15:   End If
  loc_F8FA15: End If
  loc_F8FA15: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EC1444
  'Data Table: 4DD3BC
  loc_EC13A4: On Error Goto loc_EC143D
  loc_EC13CA: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_EC13F0:   If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_EC13FE:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_EC1412:     var_A4 = "Name"
  loc_EC142D:     Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_76, Shift)
  loc_EC143C:   End If
  loc_EC143C: End If
  loc_EC143C: Exit Sub
  loc_EC143D: ' Referenced from: EC13A4
  loc_EC143D: Proc_6_60_E63754(var_A4, &HFF)
  loc_EC1442: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E22D00
  'Data Table: 4DD3BC
  Dim arg_10 As Integer
  loc_E22CE8: If (Cancel = 0) Then
  loc_E22CF1:   Call Proc_28_54_136D1B0(Cancel, var_88)
  loc_E22CFA:   arg_10 = Not(var_88)
  loc_E22CFD: End If
  loc_E22CFD: Exit Sub
End Sub

Private Sub DGFinish_UnknownEvent_9 'FCD178
  'Data Table: 4DD3BC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As Label
  Dim var_EC As String
  loc_FCCFCF: Me.DGFinish.Visible = False
  loc_FCCFEE: If (Me.RecordCount > 0) Then
  loc_FCD02D:   Set var_B4 = Me.Txt
  loc_FCD033:   Call 0.Method_DGFinish_UnknownEvent_90 (CInt(0), var_B8)
  loc_FCD03B:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FCD08D:   Set var_B4 = Me.Txt
  loc_FCD093:   Call 0.Method_DGFinish_UnknownEvent_90 (CInt(0), var_B8)
  loc_FCD09B:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FCD0EC:   Me.LblOutlet.Caption = CStr(Me.Fields.Item("RestName").Value)
  loc_FCD11D:   var_B0 = Me.Fields.Item("RestCode")
  loc_FCD13B:   Me.LblOutlet.Tag = CStr(var_B0.Value)
  loc_FCD14F: End If
  loc_FCD15A: Set var_A8 = Me.Txt
  loc_FCD160: Call 0.Method_DGFinish_UnknownEvent_90 (CInt(0))
  loc_FCD168: var_B0.SetFocus
  loc_FCD174: Exit Sub
  loc_FCD175: var_EC = var_B0
End Sub

Private Sub Txt_GotFocus(Index As Integer) '10DAF7C
  'Data Table: 4DD3BC
  Dim var_92 As Integer
  Dim var_90 As Variant
  Dim var_88 As Variant
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_C4 As TextBox
  Dim Me As Recordset15
  Dim var_8C As TextBox
  loc_10DAC8E: Set var_88 = Me.Txt
  loc_10DAC94: Call 0.Method_Txt_GotFocus0 (Index)
  loc_10DAC9C: Set var_90 = var_8C
  loc_10DACA2: Proc_6_74_E23240(var_90)
  loc_10DACAE: Call Proc_28_58_EF94D0(var_8C)
  loc_10DACB6: var_92 = Index
  loc_10DACC1: If (var_92 = CInt(4)) Then
  loc_10DACD2:   Set var_8C = Me.Txt
  loc_10DACD8:   Call 0.Method_Txt_GotFocus0 (CInt(4), var_90)
  loc_10DACFE:   var_AC = CVar((Me.Frame1.Left + var_90.Left)) 'Single
  loc_10DAD0D:   Me.DGRest.Left = var_AC
  loc_10DAD2B:   Set var_8C = Me.Txt
  loc_10DAD31:   Call 0.Method_Txt_GotFocus0 (CInt(4), var_90)
  loc_10DAD4C:   Set var_C0 = Me.Txt
  loc_10DAD52:   Call 0.Method_Txt_GotFocus0 (CInt(4), var_C4)
  loc_10DAD80:   var_AC = CVar((((Me.Frame1.Top + var_90.Top) + var_C4.Height) + CDbl(&H1E))) 'Single
  loc_10DAD8F:   Me.DGRest.Top = var_AC
  loc_10DADB2:   Me.Filter = 0
  loc_10DADC3:   Me.Filter = "RestType<>'Kitchen'"
  loc_10DADDF:   If (Me.RecordCount > 0) Then
  loc_10DADED:     Set var_8C = Me.FGPoint
  loc_10DAE05:     Proc_6_137_1192FDC(Me.DGRest, global_80, Index)
  loc_10DAE13:   End If
  loc_10DAE61:   Set var_88 = Me.Txt
  loc_10DAE67:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_10DAE6F:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_10DAE87:   If (var_8C Or (var_D4 = vbNullString)) Then
  loc_10DAE8A:     Exit Sub
  loc_10DAE8B:   End If
  loc_10DAE98:   Set var_88 = Me.Txt
  loc_10DAE9E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10DAEA6:   var_D4 = var_8C.Text
  loc_10DAEB8:   var_AC = "Name"
  loc_10DAEF3:   If CBool(CVar(var_D4) <> Me.Fields.Item(var_AC).Value) Then
  loc_10DAEFC:     Me.MoveFirst
  loc_10DAF1F:     Set var_88 = Me.Txt
  loc_10DAF25:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name ='")
  loc_10DAF2D:     0 = var_8C.Text
  loc_10DAF46:     Me.Find 1 & var_D4 & "'", var_AC, var_92
  loc_10DAF5B:   End If
  loc_10DAF6E:   Me.DGRest.Tag = CVar(CStr(Index))
  loc_10DAF79: End If
  loc_10DAF79: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '105BFEC
  'Data Table: 4DD3BC
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  loc_105BD8A: If (CLng(Shift) = &H1B) Then
  loc_105BD8D:   Call Proc_28_58_EF94D0()
  loc_105BD92:   Exit Sub
  loc_105BD93: End If
  loc_105BD96: var_86 = KeyCode
  loc_105BDA1: If (var_86 = CInt(0)) Then
  loc_105BDBC:   Set var_9C = Nothing
  loc_105BDC7:   Set var_98 = Nothing
  loc_105BDF5:   Proc_6_69_134A630(Me.DGFinish, Me.Txt, KeyCode, global_72, Shift, 0)
  loc_105BE0C: Else
  loc_105BE14:   If (var_86 = CInt(4)) Then
  loc_105BE34:     Set var_9C = Me.FGPoint
  loc_105BE6D:     Proc_6_69_134A630(Me.DGRest, Me.Txt, KeyCode, global_80, Shift, 0, 1, Nothing)
  loc_105BEDC:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_105BEE3:       Set var_98 = Me.DGRest
  loc_105BF02:       Proc_6_138_106E830(var_98, global_80, KeyCode, Me.FGPoint, var_9C, 0)
  loc_105BF10:     End If
  loc_105BF10:   End If
  loc_105BF10: End If
  loc_105BF4B: If ((CBool(Me.DGFinish.Visible) = 0) And (CBool(Me.DGRest.Visible) = 0)) Then
  loc_105BF63:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_105BF66:   End If
  loc_105BF7B:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_105BF84:     Proc_6_75_E5335C(Shift, arg_14, 1, var_98)
  loc_105BF89:   End If
  loc_105BF93:   If (CLng(Shift) = &H26) Then
  loc_105BF9A:     Set var_8C = Me.TopCtrl1
  loc_105BFA0:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_9C)
  loc_105BFB9:     If (CStr(0) = "Add") Then
  loc_105BFC4:       If (KeyCode <> CInt(0)) Then
  loc_105BFCD:         Proc_6_76_E533C8(Shift, arg_14)
  loc_105BFD2:       End If
  loc_105BFD5:     Else
  loc_105BFDD:       If (KeyCode <> CInt(1)) Then
  loc_105BFE6:         Proc_6_76_E533C8(Shift, arg_14)
  loc_105BFEB:       End If
  loc_105BFEB:     End If
  loc_105BFEB:   End If
  loc_105BFEB: End If
  loc_105BFEB: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F8FD68
  'Data Table: 4DD3BC
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_F8FC0A: Proc_6_133_E7FB08(var_94)
  loc_F8FC13: arg_10 = CInt(var_94)
  loc_F8FC1C: Proc_6_58_E06050(arg_10, arg_10)
  loc_F8FC24: var_96 = KeyAscii
  loc_F8FC2F: If (var_96 = CInt(0)) Then
  loc_F8FC4E:   If (CBool(Me.DGFinish.Visible) = &HFF) Then
  loc_F8FC60:     var_A0 = "Name"
  loc_F8FC7B:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_72, arg_10)
  loc_F8FC8A:   End If
  loc_F8FC8D: Else
  loc_F8FC95:   If (var_96 = CInt(4)) Then
  loc_F8FCB4:     If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_F8FCC6:       var_A0 = "Name"
  loc_F8FCE1:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_80, arg_10, var_A0)
  loc_F8FCFB:       Set var_A8 = Me.FGPoint
  loc_F8FD13:       Proc_6_138_106E830(Me.DGRest, global_80, KeyAscii, var_A8, 0)
  loc_F8FD21:     End If
  loc_F8FD24:   Else
  loc_F8FD2C:     If (var_96 = CInt(1)) Then
  loc_F8FD39:       Set var_9C = Me.Txt
  loc_F8FD3F:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_A0)
  loc_F8FD5A:       Proc_6_42_129B55C(var_A8, arg_10, 7, 4)
  loc_F8FD66:     End If
  loc_F8FD66:   End If
  loc_F8FD66: End If
  loc_F8FD66: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFF0FC
  'Data Table: 4DD3BC
  Dim var_86 As Integer
  loc_DFF0F7: var_86 = KeyCode
  loc_DFF0FA: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E47B04
  'Data Table: 4DD3BC
  loc_E47AE2: Set var_88 = Me.Txt
  loc_E47AE8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E47AF6: Proc_6_73_E23294(var_8C)
  loc_E47B02: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '11D1CD4
  'Data Table: 4DD3BC
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim arg_10 As Integer
  Dim var_AC As Variant
  Dim var_8C As Variant
  Dim var_94 As String
  Dim var_B4 As TextBox
  Dim var_B0 As Label
  Dim var_104 As TextBox
  loc_11D1873: var_86 = Cancel
  loc_11D187E: If (var_86 = CInt(0)) Then
  loc_11D18A0:   Set var_8C = Me.Txt
  loc_11D18A6:   Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_94, "Code='")
  loc_11D18AE:   0 = var_90.Tag
  loc_11D18C7:   Me.Find 1 & var_94 & "'", var_AC, var_86
  loc_11D18E6:   Set var_8C = Me.Txt
  loc_11D18EC:   Call 0.Method_Txt_Validate0 (Cancel)
  loc_11D1915:   If (Proc_6_27_EA61EC(var_90, "Name") = 0) Then
  loc_11D1922:     Set var_8C = Me.Txt
  loc_11D1928:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11D1930:     var_90.SetFocus
  loc_11D193E:     arg_10 = &HFF
  loc_11D1941:     Exit Sub
  loc_11D1942:   End If
  loc_11D197E:   Set var_B0 = Me.Txt
  loc_11D1984:   Call 0.Method_Txt_Validate0 (CInt(2), var_B4, CStr(Me.Fields.Item("Unit").Value))
  loc_11D198C:   var_B4.Text = arg_10
  loc_11D19DD:   Me.LblOutlet.Caption = CStr(Me.Fields.Item("RestName").Value)
  loc_11D1A0E:   var_90 = Me.Fields.Item("RestCode")
  loc_11D1A1F:   var_94 = CStr(var_90.Value)
  loc_11D1A2C:   Me.LblOutlet.Tag = var_94
  loc_11D1A43:   Call Proc_28_52_107A21C(var_C6)
  loc_11D1A4B: Else
  loc_11D1A53:   If (var_86 = CInt(4)) Then
  loc_11D1AA4:     Set var_8C = Me.Txt
  loc_11D1AAA:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_11D1AB2:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_11D1ACA:     If (var_90 Or (var_94 = vbNullString)) Then
  loc_11D1ADA:       Set var_8C = Me.Txt
  loc_11D1AE0:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11D1AE8:       var_90.Text = vbNullString
  loc_11D1B01:       Set var_8C = Me.Txt
  loc_11D1B07:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11D1B0F:       var_90.Tag = vbNullString
  loc_11D1B1B:       Exit Sub
  loc_11D1B1C:     End If
  loc_11D1B57:     Set var_B0 = Me.Txt
  loc_11D1B5D:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_11D1B65:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11D1B98:     var_90 = Me.Fields.Item("Code")
  loc_11D1BB6:     Set var_B0 = Me.Txt
  loc_11D1BBC:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_11D1BC4:     var_B4.Tag = CStr(var_90.Value)
  loc_11D1BDD:   Else
  loc_11D1BE5:     If (var_86 = CInt(1)) Then
  loc_11D1BF2:       Set var_8C = Me.Txt
  loc_11D1BF8:       Call 0.Method_Txt_Validate0 (Cancel)
  loc_11D1C32:       Set var_B0 = Me.Txt
  loc_11D1C38:       Call 0.Method_Txt_Validate0 (Cancel, var_B4, CStr(Format(CVar(var_90), "0.0000")))
  loc_11D1C40:       var_B4.Text = 1
  loc_11D1C6C:       Me.FGrid.Col = CVar(CLng(2))
  loc_11D1C77:     Else
  loc_11D1C7F:       If (var_86 = CInt(3)) Then
  loc_11D1C8C:         Set var_8C = Me.Txt
  loc_11D1C92:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11D1CB2:         Set var_B4 = Me.Txt
  loc_11D1CB8:         Call 0.Method_Txt_Validate0 (Cancel, var_104)
  loc_11D1CC0:         var_104.Text = Proc_6_33_15125B8(var_90, 1)
  loc_11D1CD3:       End If
  loc_11D1CD3:     End If
  loc_11D1CD3:   End If
  loc_11D1CD3: End If
  loc_11D1CD3: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F9FEAC
  'Data Table: 4DD3BC
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_F9FD4F: Me.DGRest.Visible = False
  loc_F9FD6E: If (Me.RecordCount > 0) Then
  loc_F9FDC0:   Set var_CC = Me.Txt
  loc_F9FDC6:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(Me.DGRest.Tag)), var_D0)
  loc_F9FDCE:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F9FE26:   Set var_B4 = Me.DGRest
  loc_F9FE3D:   Set var_CC = Me.Txt
  loc_F9FE43:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_F9FE4B:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F9FE6B: End If
  loc_F9FE89: Set var_B0 = Me.Txt
  loc_F9FE8F: Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(Me.DGRest.Tag)))
  loc_F9FE97: var_B4.SetFocus
  loc_F9FEAB: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E9B498
  'Data Table: 4DD3BC
  loc_E9B436: Proc_6_153_E91D24(Me.DGRest, arg_14)
  loc_E9B460: Set var_A8 = Me.FGPoint
  loc_E9B481: Proc_6_138_106E830(Me.DGRest, global_80, CInt(CStr(Me.DGRest.Tag)))
  loc_E9B497: Exit Sub
End Sub

Private Sub Form_Load() '1121E28
  'Data Table: 4DD3BC
  Dim var_88 As Variant
  Dim var_AC As String
  Dim var_B0 As String
  Dim var_B4 As String
  Dim var_B8 As String
  Dim var_C8 As Variant
  Dim Me As Recordset15
  Dim var_D0 As String
  Dim unk_4DD3D1 As Connection15
  loc_1121AD0: On Error Goto loc_1121E21
  loc_1121AE2: Me.LblUser.Left = CDbl(13500)
  loc_1121AF9: Me.LblUser.Top = CDbl(7800)
  loc_1121B10: Me.LblLDt.Top = CDbl(8160)
  loc_1121B27: Me.LblLDt.Left = CDbl(13500)
  loc_1121B36: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1121B48: Set var_88 = Me.FGrid
  loc_1121B4E: var_88.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1121B72: Me.var_88.CursorLocation = 3
  loc_1121B9C: var_B0 = "SELECT ItemMast.Code, ItemMast.Name, ItemMast.Unit, Depart.Name as Department,Case When Itemmast.RestCode='" & MemVar_1F95078 & "BANQ"
  loc_1121BA3: var_B4 = var_B0 & "' Then 'BANQUET' Else D1.Name End as RestName,Itemmast.RestCode FROM (ItemMast Inner JOIN Depart ON ItemMast.Kitchen = Depart.Code) Left join Depart  as D1 on D1.Code=ItemMast.RestCode Where (Itemmast.LogSite_Code='"
  loc_1121BB1: var_C8 = CVar(var_B4 & MemVar_1F95078 & "' or ItemMast.LogSite_Code='HO') AND ITEMMAST.DISPCODE<>9999 and Type IN ('Finish','Semi Finish') Order by ItemMast.Name") 'String
  loc_1121BD7: CVarUnk
  loc_1121BDC: VerifyVarObj
  loc_1121BE8: LateIdStAd
  loc_1121C00: Set global_76 = New 
  loc_1121C12: Me.DGFinish.CursorLocation = 3
  loc_1121C2B: var_AC = "Select Code,Name,IssueUnit as Unit,CASE WHEN ISNULL(LPurRate,0)=0 THEN ISNULL(PURCHRATE,0) ELSE ISNULL(LPurRate,0) END AS LPurRate,ConvRatio From ItemMast where (LOGSITE_CODE='" & MemVar_1F95078
  loc_1121C40: var_B8 = var_AC & "' or LOGSITE_CODE='HO') and DispCode<>9999 and Code=ConsumptionItem And ActiveYN<>'No'" & " Union " & "Select Code,Name,Unit as Unit,CASE WHEN ISNULL(LPurRate,0)=0 THEN ISNULL(PURCHRATE,0) ELSE ISNULL(LPurRate,0) END AS LPurRate,ConvRatio From ItemMast Where (LOGSITE_CODE='"
  loc_1121C4E: var_D0 = var_B8 & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Type IN ('Semi Finish') and gravyItem='Yes' And ItemMast.ActiveYN<>'No' Order by Name"
  loc_1121C57: unk_4DD3D1.Execute var_D0, var_C8, -1
  loc_1121C8E: CVarUnk
  loc_1121C93: VerifyVarObj
  loc_1121C9F: LateIdStAd
  loc_1121CC8: var_B0 = "SELECT Code,Name,RestType,DiscApp,RateInclTax FROM Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name"
  loc_1121CD1: unk_4DD3D1.Execute var_B0, var_C8, -1
  loc_1121D00: CVarUnk
  loc_1121D05: VerifyVarObj
  loc_1121D0B: Set var_88 = Me.DGRest
  loc_1121D11: LateIdStAd
  loc_1121D3B: Me.DGRest.CursorLocation = 3
  loc_1121D65: var_B0 = "Select Distinct BOM.FinItem+BOM.RestCode+Convert(Varchar(11),BOM.AppDate,103) as SearchCode,BOM.FinItem,ItemMast.Name,BOM.FinQty,BOM.AppDAte,ItemMast.Unit,BOM.Site_Code,Bom.LogSite_Code,BOM.RestCode,Case When BOM.RestCode='" & MemVar_1F95078 & "BANQ"
  loc_1121D6C: var_B4 = var_B0 & "' Then 'BANQUET' Else Depart.Name End RestName From BOM Inner Join ItemMast on ItemMast.Code=BOM.FinItem And ItemMast.RestCode=BOM.RestCode Left join Depart on Depart.Code=ItemMast.RestCode Where (BOM.LOGSITE_CODE='"
  loc_1121D84: r_C8, CVar(MemVar_1F95044), 2 CVar(var_B4 & MemVar_1F95078 & "') AND ITEMMAST.DISPCODE<>9999 Order by ItemMast.Name,RestName"), CVar(MemVar_1F95044), 2
  loc_1121DA3: Set var_88 = Me
  loc_1121DBA: Call Proc_28_57_EADE34(Proc_5_1_100EC1C("INI", var_88, New, 3, -1, var_88, Me.DGItem), var_88, var_88, Me.DGFinish)
  loc_1121DC5: Call Proc_28_51_11DDBB4(var_88, var_88)
  loc_1121DCA: Call Proc_28_56_141693C(New)
  loc_1121DE2: Me.FGrid.Left = CVar(CDbl(700))
  loc_1121DFD: Me.FGrid.Top = CVar(CDbl(2750))
  loc_1121E18: Me.FGrid.Height = CVar(CDbl(5000))
  loc_1121E20: Exit Sub
  loc_1121E21: ' Referenced from: 1121AD0
  loc_1121E21: Proc_6_60_E63754(3)
  loc_1121E26: Exit Sub
End Sub

Private Sub Form_Resize() 'ED8028
  'Data Table: 4DD3BC
  Dim var_8C As Label
  loc_ED7F86: Call 0.Method_arg_50 (var_88)
  loc_ED7F98: Me.LblFormCaption.Caption = var_88
  loc_ED7FB1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED7FBD: Set var_A0 = Me.TopCtrl1
  loc_ED7FC3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED7FD0: Set var_8C = Me.TopCtrl1
  loc_ED7FD6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED7FF0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED800B: Call 0.Method_arg_100 (var_B8)
  loc_ED801D: Me.LblFormCaption.Width = var_B8
  loc_ED8025: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E56830
  'Data Table: 4DD3BC
  loc_E567FB: Set global_76 = Nothing
  loc_E5680D: Set global_68 = Nothing
  loc_E5681F: Set global_72 = Nothing
  loc_E5682B: MasterFormExit = 0
  loc_E5682E: Exit Sub
End Sub

Private Sub Form_Activate() 'E47AA0
  'Data Table: 4DD3BC
  loc_E47A70: On Error Goto loc_E47A9A
  loc_E47A77: Set var_88 = Me.TopCtrl1
  loc_E47A7D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E47A92: If (CLng(CInt()) = &H2D) Then
  loc_E47A95:   Call TopCtrl1_UnknownEvent_15()
  loc_E47A9A:   ' Referenced from: E47A70
  loc_E47A9A: End If
  loc_E47A9A: Proc_6_60_E63754()
  loc_E47A9F: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E274C4
  'Data Table: 4DD3BC
  loc_E274A9: If (MasterFormExit = &HFF) Then
  loc_E274B9:   Me.Global.Unload Me
  loc_E274C1: End If
  loc_E274C1: Exit Sub
  loc_E274C2: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2B560
  'Data Table: 4DD3BC
  loc_E2B538: On Error Goto loc_E2B558
  loc_E2B54F: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2B557: Exit Sub
  loc_E2B558: ' Referenced from: E2B538
  loc_E2B558: Proc_6_60_E63754(Shift)
  loc_E2B55D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5F544
  'Data Table: 4DD3BC
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5F50F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5F522: Set var_A8 = Me.TxtGrid
  loc_E5F528: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5F530: var_AC.Visible = False
  loc_E5F53C: Call Proc_28_58_EF94D0()
  loc_E5F541: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E69A70
  'Data Table: 4DD3BC
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E69A2C: Set var_88 = Me.TxtGrid
  loc_E69A32: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E69A4C: If (var_8C.Visible = 0) Then
  loc_E69A65:   Me.FGrid.BackColorSel = CVar(CLng(global_56))
  loc_E69A6D: End If
  loc_E69A6D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1E320
  'Data Table: 4DD3BC
  loc_E1E317: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1E31F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFEF74
  'Data Table: 4DD3BC
  loc_DFEF6C: Call Proc_28_53_E3F71C()
  loc_DFEF71: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10C09A4
  'Data Table: 4DD3BC
  Dim var_9C As String
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_11C As Long
  Dim var_F8 As Variant
  Dim var_12C As String
  loc_10C06C8: Set var_88 = Me.TopCtrl1
  loc_10C06CE: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10C0713: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_10C071C:   Call Form_KeyDown(KeyCode, Shift)
  loc_10C0721: End If
  loc_10C0725: Set var_88 = Me.TopCtrl1
  loc_10C072B: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10C0744: If (CStr() = "Browse") Then
  loc_10C0747:   Exit Sub
  loc_10C0748: End If
  loc_10C0765: var_C4 = Me.FGrid.Rows
  loc_10C07BC: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_10C07D2:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10C07E2:   var_9C = "+{Tab}"
  loc_10C07E8:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_10C07F2:   KeyCode = 0
  loc_10C07F8: Else
  loc_10C084F:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_10C0865:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10C08A4:     If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_10C08A7:       Call TopCtrl1_UnknownEvent_16()
  loc_10C08AC:     End If
  loc_10C08AC:   End If
  loc_10C08AC: End If
  loc_10C08B2: global_64 = KeyCode
  loc_10C08D8: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10C08FC: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_10C0912:   var_11C = CLng(Me.FGrid.Col)
  loc_10C0922:   If Not (var_11C = CLng(2)) Then
  loc_10C092C:     If Not (var_11C = CLng(1)) Then
  loc_10C0936:       If Not (var_11C = CLng(3)) Then
  loc_10C0940:         If (var_11C = CLng(4)) Then
  loc_10C0943:         End If
  loc_10C0943:       End If
  loc_10C0943:     End If
  loc_10C0956:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10C096E:     var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10C0973:     var_12C = vbNullString
  loc_10C097D:     Set var_B4 = Me.FGrid
  loc_10C0983:     LateIdCallSt
  loc_10C099B:   End If
  loc_10C099B: End If
  loc_10C099D: KeyCode = 0
  loc_10C09A0: Exit Sub
  loc_10C09A1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E15118
  'Data Table: 4DD3BC
  loc_E15109: Call FGrid_UnknownEvent_C()
  loc_E15113: global_66 = 0
  loc_E15116: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '12896E8
  'Data Table: 4DD3BC
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1289118: Set var_88 = Me.TopCtrl1
  loc_128911E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1289137: If (CStr() = "Browse") Then
  loc_128913A:   Exit Sub
  loc_128913B: End If
  loc_128914E: var_A0 = CLng(Me.FGrid.Col)
  loc_128915E: If (var_A0 = CLng(2)) Then
  loc_1289165:   Set var_C4 = Me.FGrid
  loc_1289189:   var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_12891B6:   Set var_B4 = var_C4
  loc_12891C8:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_12891F0:   Set var_88 = Me.TxtGrid
  loc_12891F6:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_12891FE:   0 = var_B4.Text
  loc_1289217:   If (Len(var_9C) <= 1) Then
  loc_1289226:     Set var_88 = Me.TxtGrid
  loc_128922C:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1289234:     var_CA = var_B4.Text
  loc_1289245:     Set var_B8 = Me.TxtGrid
  loc_128924B:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1289253:     var_C4.Text = var_9C
  loc_1289266:   End If
  loc_1289272:   Set var_88 = Me.TxtGrid
  loc_1289278:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1289292:   Set var_B8 = Me.TxtGrid
  loc_1289298:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12892A0:   var_C4.SelStart = Len(var_B4.Text)
  loc_12892B6: Else
  loc_12892BD:   If (var_A0 = CLng(3)) Then
  loc_12892C4:     Set var_C4 = Me.FGrid
  loc_12892E8:     var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_1289315:     Set var_B4 = var_C4
  loc_1289327:     Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_128934F:     Set var_88 = Me.TxtGrid
  loc_1289355:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_128935D:     0 = var_B4.Text
  loc_1289376:     If (Len(var_9C) <= 1) Then
  loc_1289385:       Set var_88 = Me.TxtGrid
  loc_128938B:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1289393:       var_CA = var_B4.Text
  loc_12893A4:       Set var_B8 = Me.TxtGrid
  loc_12893AA:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12893B2:       var_C4.Text = var_9C
  loc_12893C5:     End If
  loc_12893D1:     Set var_88 = Me.TxtGrid
  loc_12893D7:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_12893F1:     Set var_B8 = Me.TxtGrid
  loc_12893F7:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12893FF:     var_C4.SelStart = Len(var_B4.Text)
  loc_1289415:   Else
  loc_128941C:     If (var_A0 = CLng(5)) Then
  loc_1289423:       Set var_C4 = Me.FGrid
  loc_1289447:       var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_1289474:       Set var_B4 = var_C4
  loc_1289486:       Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_12894AE:       Set var_88 = Me.TxtGrid
  loc_12894B4:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_12894BC:       0 = var_B4.Text
  loc_12894D5:       If (Len(var_9C) <= 1) Then
  loc_12894E4:         Set var_88 = Me.TxtGrid
  loc_12894EA:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_12894F2:         var_CA = var_B4.Text
  loc_1289503:         Set var_B8 = Me.TxtGrid
  loc_1289509:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1289511:         var_C4.Text = var_9C
  loc_1289524:       End If
  loc_1289530:       Set var_88 = Me.TxtGrid
  loc_1289536:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1289550:       Set var_B8 = Me.TxtGrid
  loc_1289556:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_128955E:       var_C4.SelStart = Len(var_B4.Text)
  loc_1289574:     Else
  loc_128957B:       If (var_A0 = CLng(7)) Then
  loc_1289582:         Set var_C4 = Me.FGrid
  loc_12895A6:         var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_12895D3:         Set var_B4 = var_C4
  loc_12895E5:         Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_128960D:         Set var_88 = Me.TxtGrid
  loc_1289613:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_128961B:         0 = var_B4.Text
  loc_1289634:         If (Len(var_9C) <= 1) Then
  loc_1289643:           Set var_88 = Me.TxtGrid
  loc_1289649:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1289651:           var_CA = var_B4.Text
  loc_1289662:           Set var_B8 = Me.TxtGrid
  loc_1289668:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1289670:           var_C4.Text = var_9C
  loc_1289683:         End If
  loc_128968F:         Set var_88 = Me.TxtGrid
  loc_1289695:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_12896AF:         Set var_B8 = Me.TxtGrid
  loc_12896B5:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12896BD:         var_C4.SelStart = Len(var_B4.Text)
  loc_12896D0:       End If
  loc_12896D0:     End If
  loc_12896D0:   End If
  loc_12896D0: End If
  loc_12896DA: If (CLng(KeyCode) <> &HD) Then
  loc_12896E2:   global_66 = &HFF
  loc_12896E5: End If
  loc_12896E5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '10305EC
  'Data Table: 4DD3BC
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  loc_10303B8: Set var_90 = Me.TopCtrl1
  loc_10303BE: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10303D7: If (CStr() = "Browse") Then
  loc_10303DA:   Exit Sub
  loc_10303DB: End If
  loc_10303F8: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_10303FB:   Exit Sub
  loc_10303FC: End If
  loc_103040D: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_103042F:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_1030469:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_103048B:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_10304A1:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10304AA:         Set var_118 = Me.FGrid
  loc_10304C5:       Else
  loc_10304D8:         Me.FGrid.Rows = 1
  loc_10304F5:         var_D4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_10304FD:         Set var_118 = Me.FGrid
  loc_103052C:         Me.FGrid.FixedRows = 1
  loc_1030534:       End If
  loc_1030559:       For var_11C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_11C 'Integer
  loc_1030563:         var_B4 = CVar(CLng(var_86)) 'Long
  loc_103056B:         var_E4 = CVar(CLng(0)) 'Long
  loc_1030575:         var_A0 = CVar(CStr(var_86)) 'String
  loc_103057D:         Set var_90 = Me.FGrid
  loc_1030583:         LateIdCallSt
  loc_1030594:       Next var_11C 'Integer
  loc_1030599:     End If
  loc_103059C:   Else
  loc_10305BD:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_10305CD:   End If
  loc_10305D1:   Set var_90 = Me.FGrid
  loc_10305E2: End If
  loc_10305E7: Set var_8C = Nothing
  loc_10305EA: Exit Sub
  loc_10305EB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1E050
  'Data Table: 4DD3BC
  loc_E1E047: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1E04F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1E1E0
  'Data Table: 4DD3BC
  loc_E1E1D7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1E1DF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3F7E8
  'Data Table: 4DD3BC
  Dim var_8C As TextBox
  loc_E3F7BC: Call Proc_28_58_EF94D0()
  loc_E3F7CC: Set var_88 = Me.TxtGrid
  loc_E3F7D2: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3F7DA: var_8C.Visible = False
  loc_E3F7E6: Exit Sub
End Sub

Private Sub Command2_UnknownEvent_9 '1180848
  'Data Table: 4DD3BC
  Dim var_A8 As TextBox
  Dim var_B0 As String
  Dim var_B2 As Integer
  Dim var_AC As String
  Dim var_C4 As String
  Dim unk_4DD3D1 As Connection15
  Dim var_88 As Recordset15
  Dim var_D4 As Variant
  Dim var_A4 As Frame
  Dim var_14A As Integer
  Dim var_E4 As Variant
  Dim var_108 As Variant
  loc_11804A2: Set var_A4 = Me.Txt
  loc_11804A8: Call 0.Method_Command2_UnknownEvent_90 (CInt(4), var_A8)
  loc_11804C7: If (var_A8.Tag <> vbNullString) Then
  loc_11804DB:   Set var_A4 = Me.Txt
  loc_11804E1:   Call 0.Method_Command2_UnknownEvent_90 (CInt(4), var_A8)
  loc_11804F9:   var_A0 = " And ItemMast2.RestCode='" & var_A8.Tag & "'"
  loc_118050A: End If
  loc_118050A: On Error Goto loc_11807FE
  loc_1180519: If (KeyCode = 0) Then
  loc_1180530:   var_AC = "Select D.Name as Depart,BOM.*,ItemMast1.Name as Name,ItemMast1.Unit as WtUnit,ItemMast1.LPurRate,ItemMast1.IssueUnit,Itemmast2.Name as FinItemName,ItemMast2.Unit,(ItemMast1.LPurRate*BOM.RawQty) as ItemTotal, cast('1' as numeric) as DtlCnt From BOM Left Join ItemMast ItemMast1 on ItemMast1.Code=BOM.RawItem And ItemMast1.ItemType='Store' Left Join ItemMast ItemMast2 on ItemMast2.Code=BOM.FinItem And ItemMast2.RestCode=BOM.RestCode Left Join Depart D on Itemmast2.RestCode=D.Code Where BOM.LogSite_Code='" & MemVar_1F95078
  loc_1180553:   var_C4 = var_AC & "' and BOM.Site_Code='" & MemVar_1F95070 & "' And ItemMast2.ItemType<>'Store'" & var_A0 & " Order By Itemmast1.Name,BOM.AppDate"
  loc_118055C:   unk_4DD3D1.Execute var_C4, var_E4, -1
  loc_1180585:   var_E8 = var_A4.RecordCount
  loc_1180593:   If (var_E8 = 0) Then
  loc_11805AF:     MsgBox("No Record Present For Printing", 0, var_108, var_128, var_148)
  loc_11805C4:     Set var_88 = Nothing
  loc_11805D3:     Me.Frame1.Visible = False
  loc_11805DB:     Exit Sub
  loc_11805DC:   End If
  loc_11805F2:   Set var_A4 = var_88 
  loc_11805FE:   var_14A = CreateFieldDefFile(var_A4, MemVar_1F950B4 & "\ConsumMast.ttx", &HFF)
  loc_1180608:   Set var_88 = var_A4
  loc_118060E:   var_D4 = CVar(var_14A) 'Integer
  loc_1180611:   var_98 = var_D4 'Variant
  loc_118062D:   var_AC = MemVar_1F950B4 & "\ConsumMast.RPT"
  loc_1180636:   Call 0.Method_arg_1C (var_AC, var_D4, var_A4)
  loc_1180641:   MemVar_1F951E8 = var_A4
  loc_118065C:   Call 0.Method_arg_90 (var_A4, var_E8, var_9A, 1)
  loc_1180664:   Call 0.Method_arg_24 (var_14A, var_A4)
  loc_1180670:   For var_14E =  To CInt(var_E8): var_B2 = var_14E 'Integer
  loc_1180689:     Call 0.Method_arg_90 (var_A4, CLng(var_9A))
  loc_1180691:     Call 0.Method_arg_20 (var_A8)
  loc_1180699:     Call 0.Method_arg_30 (var_AC)
  loc_11806DF:     If (Ucase(CVar(var_AC)) = Ucase("Title")) Then
  loc_11806E9:       var_B0 = "'Consumption Master" & " ("
  loc_11806FA:       Set var_A4 = Me.Txt
  loc_1180700:       Call 0.Method_Command2_UnknownEvent_90 (CInt(4), var_A8)
  loc_1180708:       var_AC = var_A8.Text
  loc_118072B:       Call 0.Method_arg_90 (var_164, CLng(var_9A))
  loc_1180733:       Call 0.Method_arg_20 (var_168)
  loc_118073B:       Call 0.Method_arg_38 (var_B0 & var_AC & ")'")
  loc_1180756:     End If
  loc_1180759:   Next var_14E 'Integer
  loc_1180777:   Call 0.Method_arg_64 (var_A4, CVar(var_88))
  loc_118077F:   Call 0.Method_arg_2C (var_F8)
  loc_118078D:   Call 0.Method_arg_150 (var_118)
  loc_1180798:   Call 0.Method_arg_50 (var_AC)
  loc_11807A2:   Set var_A8 = Nothing
  loc_11807BC:   Set var_A4 = MemVar_1F951E8 
  loc_11807C8:   Proc_6_99_1484404(var_A4, 0, var_AC)
  loc_11807D3:   MemVar_1F951E8 = var_A4
  loc_11807E1: End If
  loc_11807E6: Set var_88 = Nothing
  loc_11807F5: Me.Frame1.Visible = False
  loc_11807FD: Exit Sub
  loc_11807FE: ' Referenced from: 118050A
  loc_1180806: Set var_A4 = Err()
  loc_118080C: Call 0.Method_arg_2C (var_AC, &HFF)
  loc_1180817: Call 0.Method_arg_50 (var_B0)
  loc_1180833: MsgBox(CVar(var_AC), &H10, CVar(var_B0), var_128, var_148)
  loc_1180846: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'ED7E54
  'Data Table: 4DD3BC
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_ED7DA0: On Error Goto loc_ED7E4D
  loc_ED7DB0: Me.LblUser.Caption = vbNullString
  loc_ED7DC5: Me.LblLDt.Caption = vbNullString
  loc_ED7DF0: Call Proc_28_57_EADE34(Proc_5_1_100EC1C("ADD", Me))
  loc_ED7DFB: Call Proc_28_55_F32560(global_68)
  loc_ED7E0D: Set var_88 = Me.Txt
  loc_ED7E13: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_ED7E1B: var_94.Enabled = True
  loc_ED7E32: Set var_88 = Me.Txt
  loc_ED7E38: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_ED7E40: var_94.SetFocus
  loc_ED7E4C: Exit Sub
  loc_ED7E4D: ' Referenced from: ED7DA0
  loc_ED7E4D: Proc_6_60_E63754(var_94)
  loc_ED7E52: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EAF144
  'Data Table: 4DD3BC
  loc_EAF0C0: On Error Goto loc_EAF13C
  loc_EAF0FA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EAF120:   Call Proc_28_57_EADE34(Proc_5_1_100EC1C("INI", Me))
  loc_EAF136:   Call Proc_28_56_141693C(2)
  loc_EAF13B: End If
  loc_EAF13B: Exit Sub
  loc_EAF13C: ' Referenced from: EAF0C0
  loc_EAF13C: Proc_6_60_E63754(global_68)
  loc_EAF141: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '113B418
  'Data Table: 4DD3BC
  Dim var_C8 As String
  Dim var_96 As Integer
  Dim unk_4DD3D1 As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_113B0D0: On Error Goto loc_113B3C1
  loc_113B0E1: If (Proc_183_56_FE8B08(global_68) = &HFF) Then
  loc_113B0E4:   Exit Sub
  loc_113B0E5: End If
  loc_113B11C: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_113B121:   var_96 = 0
  loc_113B12D:   unk_4DD3D1.BeginTrans var_11C
  loc_113B134:   var_96 = &HFF
  loc_113B148:   var_94 = Me.Bookmark 'Variant
  loc_113B159:   var_C8 = "Delete From BOM Where BOM.FinItem+BOM.RestCode+Convert(Varchar(11),BOM.AppDate,103)='"
  loc_113B1A2:   unk_4DD3D1.Execute CStr("Confirmation" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_113B237:   var_F8 = Me.Fields.Item("AppDate").Value
  loc_113B241:   var_170 = 0
  loc_113B254:   var_168 = 0
  loc_113B25F:   var_164 = 0
  loc_113B272:   var_15C = 0
  loc_113B28B:   var_150 = "AppDate"
  loc_113B2C6:   var_128 = "BOM"
  loc_113B2CF:   Proc_154_5_10E3BD4(MemVar_1F95044, var_128, "FinItem", &HC8, CStr(Me.Fields.Item("FinItem").Value), "RestCode", &HC8, CStr(Me.Fields.Item("RestCode").Value))
  loc_113B30B:   unk_4DD3D1.CommitTrans
  loc_113B312:   var_96 = 0
  loc_113B320:   Me.Requery -1
  loc_113B330:   Me.Requery -1
  loc_113B340:   Me.Requery -1
  loc_113B360:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_113B36D:     Me.Bookmark = var_94
  loc_113B375:   Else
  loc_113B389:     If (Me.EOF = 0) Then
  loc_113B392:       Me.MoveLast
  loc_113B397:     End If
  loc_113B397:   End If
  loc_113B397:   Call Proc_28_56_141693C(var_96, var_150, 3, CStr(var_F8), var_15C)
  loc_113B3B8:   Proc_5_0_1107AD0(&HFF, Me, global_68, 0)
  loc_113B3C0: End If
  loc_113B3C0: Exit Sub
  loc_113B3C1: ' Referenced from: 113B0D0
  loc_113B3C7: If (var_96 = &HFF) Then
  loc_113B3D0:   unk_4DD3D1.RollbackTrans
  loc_113B3D5: End If
  loc_113B3DD: Set var_120 = Err()
  loc_113B3E3: Call 0.Method_arg_2C (var_128, 0, var_164)
  loc_113B404: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_113B417: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FA5934
  'Data Table: 4DD3BC
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_FA57B4: On Error Goto loc_FA58F1
  loc_FA57C5: If (Proc_183_55_FE8490(global_68) = &HFF) Then
  loc_FA57C8:   Exit Sub
  loc_FA57C9: End If
  loc_FA57E0: If (Me.RecordCount > 0) Then
  loc_FA5806:   Call Proc_28_57_EADE34(Proc_5_1_100EC1C("EDIT", Me))
  loc_FA581F:   Set var_90 = Me.Txt
  loc_FA5825:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FA582D:   var_8C = var_98.Tag
  loc_FA5838:   global_84 = var_8C
  loc_FA5853:   Set var_90 = Me.Txt
  loc_FA5859:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FA5861:   var_98.Enabled = False
  loc_FA5878:   Set var_90 = Me.Txt
  loc_FA587E:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_FA5886:   var_98.SetFocus
  loc_FA5895: Else
  loc_FA58B6:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_FA58C6: End If
  loc_FA58D3: Me.LblUser.Caption = vbNullString
  loc_FA58E8: Me.LblLDt.Caption = vbNullString
  loc_FA58F0: Exit Sub
  loc_FA58F1: ' Referenced from: FA57B4
  loc_FA58F9: Set var_90 = Err()
  loc_FA58FF: Call 0.Method_arg_2C (var_8C)
  loc_FA5920: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_FA5933: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1BC9C
  'Data Table: 4DD3BC
  loc_E1BC91: Me.Global.Unload Me
  loc_E1BC99: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EEFBD8
  'Data Table: 4DD3BC
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_110 As String
  Dim var_114 As String
  Dim MemVar_1F950E4 As String
  loc_EEFB1C: On Error Goto loc_EEFBD1
  loc_EEFB36: If (Me.RecordCount <= 0) Then
  loc_EEFB3F:   var_B8 = "Information"
  loc_EEFB5A:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EEFB6A:   Exit Sub
  loc_EEFB6B: End If
  loc_EEFB79: var_110 = "Select Distinct BOM.FinItem+BOM.RestCode+Convert(Varchar(11),BOM.AppDate,103) As SearchCode,ItemMast.Name,Convert(Varchar(11),AppDate,106) AppDate,FinQty,Case When BOM.RestCode='" & MemVar_1F95078 & "BANQ"
  loc_EEFB80: var_114 = var_110 & "' Then 'BANQUET' Else Depart.Name End Outlet FROM BOM Inner Join ItemMast on ItemMast.Code=BOM.FinItem And ItemMast.RestCode=BOM.RestCode Left Join Depart On Depart.Code=ItemMast.RestCode Where (BOM.LOGSITE_CODE='"
  loc_EEFB8E: MemVar_1F950E4 = var_114 & MemVar_1F95078 & "' or BOM.LOGSITE_CODE='HO') AND ITEMMAST.DISPCODE<>9999 Order by ItemMast.Name,AppDate,Outlet"
  loc_EEFBA3: MemVar_1F95120 = Me
  loc_EEFBB0: Proc_6_126_F1C850("2500,1200,1000,2500")
  loc_EEFBCB: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EEFBD0: Exit Sub
  loc_EEFBD1: ' Referenced from: EEFB1C
  loc_EEFBD1: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EEFBD6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3C5A8
  'Data Table: 4DD3BC
  loc_E3C598: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3C5A0: Call Proc_28_56_141693C(global_68)
  loc_E3C5A5: Exit Sub
  loc_E3C5A6: Set TopCtrl1_UnknownEvent_10400 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3CF68
  'Data Table: 4DD3BC
  loc_E3CF58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3CF60: Call Proc_28_56_141693C(global_68)
  loc_E3CF65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3D3E8
  'Data Table: 4DD3BC
  loc_E3D3D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3D3E0: Call Proc_28_56_141693C(global_68)
  loc_E3D3E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3E5E8
  'Data Table: 4DD3BC
  loc_E3E5D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3E5E0: Call Proc_28_56_141693C(global_68)
  loc_E3E5E5: Exit Sub
  loc_E3E5E6: Set TopCtrl1_UnknownEvent_13400 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'EB6138
  'Data Table: 4DD3BC
  Dim var_90 As Variant
  Dim var_88 As Variant
  loc_EB60A7: Set var_90 = Me.LblFormCaption
  loc_EB60D6: Me.Frame1.Top = (Me.LblFormCaption.Top + var_90.Height)
  loc_EB60F3: Me.Frame1.Left = CDbl(900)
  loc_EB6107: Me.Frame1.Visible = True
  loc_EB611A: Set var_88 = Me.Txt
  loc_EB6120: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(4))
  loc_EB6128: var_90.SetFocus
  loc_EB6134: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E22A60
  'Data Table: 4DD3BC
  Dim Me As Recordset15
  loc_E22A47: Me.Requery -1
  loc_E22A57: Me.Requery -1
  loc_E22A5C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1505D48
  'Data Table: 4DD3BC
  Dim var_FC As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_DC As Variant
  Dim var_13C As Variant
  Dim var_15C As String
  Dim var_220 As Variant
  Dim var_B0 As Variant
  Dim var_1C0 As Variant
  Dim var_1D0 As Variant
  Dim var_A8 As Double
  Dim var_B8 As String
  Dim var_258 As Double
  Dim var_25C As String
  Dim var_264 As String
  Dim var_B4 As Label
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_274 As String
  Dim unk_4DD3D1 As Connection15
  Dim var_278 As Variant
  Dim var_27C As Variant
  Dim var_280 As Variant
  Dim var_26C As TextBox
  Dim var_1B0 As Variant
  Dim var_7D0 As Double
  Dim var_2EC As TextBox
  Dim var_7D8 As Double
  Dim var_36C As Variant
  Dim var_38C As Variant
  Dim var_7E0 As Double
  Dim var_44C As String
  Dim var_7E8 As Double
  Dim var_454 As TextBox
  Dim var_7F0 As Double
  Dim var_7F8 As Double
  Dim var_4F8 As TextBox
  Dim var_800 As Double
  Dim var_68C As Variant
  Dim var_6AC As Variant
  Dim var_2B4 As Variant
  Dim var_51C As Variant
  Dim var_6F0 As Variant
  Dim var_260 As String
  Dim var_4FC As String
  Dim Me As Variant
  loc_1504FC4: On Error Goto loc_1505CF5
  loc_1504FCB: var_86 = CByte(0) 'Byte
  loc_1504FDA: Set var_AC = Me.Txt
  loc_1504FE0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1505009: If (Proc_183_19_E8E68C(var_B0, "Finish Name") = 0) Then
  loc_1505013:   Call Txt_GotFocus(CInt(0))
  loc_1505018:   Exit Sub
  loc_1505019: End If
  loc_1505024: Set var_AC = Me.Txt
  loc_150502A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B0)
  loc_1505053: If (Proc_183_19_E8E68C(var_B0, "Finish Qty") = 0) Then
  loc_150505D:   Call Txt_GotFocus(CInt(1))
  loc_1505062:   Exit Sub
  loc_1505063: End If
  loc_150506E: Set var_AC = Me.Txt
  loc_1505074: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B0)
  loc_150509D: If (Proc_183_19_E8E68C(var_B0, "Applicable Date") = 0) Then
  loc_15050A7:   Call Txt_GotFocus(CInt(3))
  loc_15050AC:   Exit Sub
  loc_15050AD: End If
  loc_15050CE: var_EC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_15050D8: For var_11C = 1 To var_EC: var_9C = var_11C 'Variant
  loc_15050E3:   var_DC = CVar(CLng(var_9C)) 'Long
  loc_15050EB:   var_FC = CVar(CLng(2)) 'Long
  loc_1505127:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_150514F:     For var_170 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_9E = var_170 'Integer
  loc_150515D:       var_220 = (var_9E = CInt(3))
  loc_1505166:       var_DC = CVar(CLng(var_9C)) 'Long
  loc_150516F:       var_FC = CVar(CLng(var_9E)) 'Long
  loc_1505189:       var_13C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1505197:       var_15C = vbNullString
  loc_15051B8:       Set var_B0 = Me.FGrid
  loc_15051BE:       var_1C0 = var_B0.TextMatrix)
  loc_15051C9:       var_1D0 = CVar(CStr(var_1C0)) 'String
  loc_1505203:       If CBool(CVar(CLng(var_9C)) And CVar(CLng(var_9E)) Or (Trim(var_1D0) = "0.00")) Then
  loc_150520E:         If (var_9E = CInt(3)) Then
  loc_150522A:           MsgBox("Item Qty is required", 0, var_13C, Trim(var_13C), var_16C)
  loc_150523A:         End If
  loc_150524E:         Me.FGrid.Row = CVar(CLng(var_9C))
  loc_1505269:         Me.FGrid.Col = CVar(CLng(var_9E))
  loc_1505275:         Set var_AC = Me.FGrid
  loc_1505299:         Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_15052A1:         Exit Sub
  loc_15052A2:       End If
  loc_15052A5:     Next var_170 'Integer
  loc_15052AA:   End If
  loc_15052AD: Next var_11C 'Variant
  loc_15052B6: var_A8 = CDbl(0)
  loc_15052DA: var_EC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_15052E4: For var_250 = 1 To var_EC: var_9C = var_250 'Variant
  loc_15052EF:   var_DC = CVar(CLng(var_9C)) 'Long
  loc_15052F7:   var_FC = CVar(CLng(6)) 'Long
  loc_1505323:   var_A8 = (var_A8 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1505332: Next var_250 'Variant
  loc_150533C: Set var_AC = Me.TopCtrl1
  loc_1505342: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_150534A: var_B8 = CStr()
  loc_150535B: If (var_B8 = "Add") Then
  loc_150538B:   Set var_AC = Me.Txt
  loc_1505391:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B0, var_B8, "Select Count(*) From BOM Where FinItem='", var_1C0, -1)
  loc_1505399:   var_278 = var_B0.Tag
  loc_15053C9:   var_14C = CVar(var_27C & var_B8 & "' And RestCode='" & Me.LblOutlet.Tag & "' And AppDate=") 'String
  loc_15053D7:   Set var_26C = Me.Txt
  loc_15053DD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_270, var_14C)
  loc_15053EC:   Proc_6_7_F26918(var_13C, CVar(var_270), 0)
  loc_15053F4:   var_16C = var_280 & var_13C 
  loc_1505402:   unk_4DD3D1.Execute CStr(var_16C), var_1D0, 
  loc_150540A:    = var_278.Fields
  loc_1505412:    = var_27C.Item()
  loc_150541A:    = var_280.Value
  loc_1505459:   If (var_1D0 > 0) Then
  loc_1505475:     MsgBox("Entry Already Exits Please Modify.", &H10, var_13C, var_14C, var_16C)
  loc_1505485:     Exit Sub
  loc_1505486:   End If
  loc_1505486: End If
  loc_150548F: unk_4DD3D1.BeginTrans var_284
  loc_1505498: var_86 = CByte(1) 'Byte
  loc_15054A0: Set var_AC = Me.TopCtrl1
  loc_15054A6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_15054AE: var_B8 = CStr()
  loc_15054BF: If (var_B8 = "Edit") Then
  loc_15054E0:   Set var_AC = Me.Txt
  loc_15054E6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B0, var_B8, "Delete From BOM Where FinItem='")
  loc_15054EE:   var_1C0 = var_B0.Tag
  loc_15054F7:   var_25C = -1 & var_B8
  loc_15054FE:   var_264 = var_27C & var_B8 & "' And RestCode='"
  loc_150550E:   var_260 = Me.LblOutlet.Tag
  loc_150552C:   Set var_26C = Me.Txt
  loc_1505532:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_270)
  loc_1505541:   Proc_6_7_F26918(var_13C, CVar(var_270))
  loc_150554D:   var_274 = CStr(CVar(var_264 & var_260 & "' And AppDate=") & var_13C)
  loc_1505557:   unk_4DD3D1.Execute var_274, var_278, 
  loc_1505585: End If
  loc_15055A6: var_EC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_15055B0: For var_2A4 = 1 To 0: var_9C = var_2A4 'Variant
  loc_15055BB:   var_DC = CVar(CLng(var_9C)) 'Long
  loc_15055C3:   var_FC = CVar(CLng(1)) 'Long
  loc_15055FF:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_1505610:     Set var_AC = Me.Txt
  loc_1505616:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B0, var_27C & var_B8)
  loc_150561E:     var_FC = var_B0.Tag
  loc_1505626:     var_CC = CVar(var_27C & var_B8) 'String
  loc_150563F:     Set var_B4 = Me.Txt
  loc_1505645:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_26C, var_260)
  loc_150564D:     var_DC = var_26C.Text
  loc_150565A:     var_258 = Val(var_260)
  loc_150566B:     Set var_270 = Me.Txt
  loc_1505671:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_278, var_264)
  loc_15056C0:     var_1B0 = CVar(CLng(var_9C)) 'Long
  loc_15056EA:     var_7D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15056FB:     Set var_2E8 = Me.Txt
  loc_1505701:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_2EC, var_274, var_7D0, CVar(CLng(3)))
  loc_1505709:     var_1B0 = var_2EC.Text
  loc_1505716:     var_7D8 = Val(var_274)
  loc_150571E:     var_36C = CVar(CLng(var_9C)) 'Long
  loc_1505726:     var_38C = CVar(CLng(5)) 'Long
  loc_1505748:     var_7E0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_150577A:     var_7E8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_150578B:     Set var_450 = Me.Txt
  loc_1505791:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_454, var_458, var_7E8, CVar(CLng(7)), CVar(CLng(var_9C)), var_7E0)
  loc_1505799:     var_38C = var_454.Text
  loc_15057A6:     var_7F0 = Val(var_458)
  loc_15057D8:     var_7F8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15057E9:     Set var_4F4 = Me.Txt
  loc_15057EF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4F8, var_4FC, var_7F8, CVar(CLng(6)), CVar(CLng(var_9C)), var_7F0)
  loc_15057F7:     var_36C = var_4F8.Text
  loc_1505804:     var_800 = Val(var_4FC)
  loc_1505815:     Proc_6_7_F26918(var_59C, Date, var_800, var_7D8)
  loc_1505825:     Set var_5D0 = Me.Txt
  loc_150582B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_5D4, CVar(CLng(1)))
  loc_150583A:     Proc_6_39_E7D3A0(var_5F4, CVar(var_5D4), CVar(CLng(var_9C)))
  loc_150584A:     Set var_628 = Me.Txt
  loc_1505850:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_62C)
  loc_150585F:     Proc_6_7_F26918(var_64C, CVar(var_62C))
  loc_1505869:     var_68C = CVar(CLng(var_9C)) 'Long
  loc_1505871:     var_6AC = CVar(CLng(4)) 'Long
  loc_15058B2:     var_B8 = "Insert Into BOM(Site_Code,FinItem,FinQty,RawItem,RawQty,RawSno,Cost,Waste,Total,U_Name,U_EntDt,U_AE,SavedForQty,AppDate,WtUnit,LogSite_Code,RestCode) Values ('" & MemVar_1F95070
  loc_15058DB:     var_FC = ",'"
  loc_15058E7:     var_2B4 = CVar(var_B8 & "','") & Trim(var_CC) & "'," & CVar((var_278.Text / Val(var_264))) & var_FC & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_1505953:     var_51C = var_2B4 & "'," & CVar((var_7D0 / var_7D8)) & "," & var_9C & "," & CVar(var_7E0) & "," & CVar((var_7E8 / var_7F0)) & "," & CVar((var_7F8 / var_800)) 
  loc_15059AA:     var_6F0 = var_51C & ",'" & CVar(MemVar_1F950C8) & "'," & var_59C & ",'A'," & var_5F4 & "," & var_64C & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_15059E7:     unk_4DD3D1.Execute CStr(var_6F0 & "','" & CVar(MemVar_1F95078) & "','" & CVar(Me.LblOutlet.Tag) & "')"), var_7BC, -1
  loc_1505A9B:   End If
  loc_1505A9E: Next var_2A4 'Variant
  loc_1505AB2: Set var_AC = Me.Txt
  loc_1505AB8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B0)
  loc_1505AEC: var_B8 = CStr(var_A8)
  loc_1505B11: var_44C = "Update ItemMast Set IssueUnit=Unit,convRatio=1,PurchRate=" & var_B8 & ",LPurRate=" & CStr(var_A8) & " where Code='" & var_B0.Tag
  loc_1505B2F: unk_4DD3D1.Execute var_44C & "' And RestCode='" & Me.LblOutlet.Tag & "'", var_CC, -1
  loc_1505B63: unk_4DD3D1.CommitTrans
  loc_1505B6C: var_86 = CByte(0) 'Byte
  loc_1505B7B: Me.Requery -1
  loc_1505B8B: Me.Requery -1
  loc_1505B94: Set var_AC = Me.DGItem
  loc_1505BA9: Set var_AC = Me.DGFinish
  loc_1505BC8: Set var_AC = Me.Txt
  loc_1505BCE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B0, var_B8)
  loc_1505BD6: DGFinish.DispID_FFFF = var_B0.Tag
  loc_1505BF8: Set var_26C = Me.Txt
  loc_1505BFE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_270)
  loc_1505C12: var_13C = "dd/mm/yyyy"
  loc_1505C22: var_14C = Format(CVar(var_270), var_13C)
  loc_1505C43: var_16C = CVar("SearchCode='" & var_B8 & Me.LblOutlet.Tag) 'String
  loc_1505C60: Me.Find CStr(var_16C & var_14C & "'"), 0, 1
  loc_1505C99: Set var_AC = Me.TopCtrl1
  loc_1505C9F: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(2)
  loc_1505CB8: If (CStr(var_FC) = "Add") Then
  loc_1505CBB:   Call TopCtrl1_UnknownEvent_A()
  loc_1505CC0:   Exit Sub
  loc_1505CC1: End If
  loc_1505CD6: var_B8 = "INI"
  loc_1505CE4: Call Proc_28_57_EADE34(Proc_5_1_100EC1C(var_B8, Me, global_68, 1), 1)
  loc_1505CEF: Call Proc_28_56_141693C(DGItem.DispID_FFFF)
  loc_1505CF4: Exit Sub
  loc_1505CF5: ' Referenced from: 1504FC4
  loc_1505CFE: If (CInt(var_86) = 1) Then
  loc_1505D07:   unk_4DD3D1.RollbackTrans
  loc_1505D0C: End If
  loc_1505D14: Set var_AC = Err()
  loc_1505D1A: Call 0.Method_arg_2C (var_B8)
  loc_1505D33: MsgBox(CVar(var_B8), &H10, var_13C, var_14C, var_16C)
  loc_1505D46: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 'FC1834
  'Data Table: 4DD3BC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FC169F: Me.DGItem.Visible = False
  loc_FC16BE: If (Me.RecordCount > 0) Then
  loc_FC16FB:   Set var_B4 = Me.TxtGrid
  loc_FC1701:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_FC1709:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FC1732:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FC173A:   var_EC = CVar(CLng(1)) 'Long
  loc_FC176D:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_FC1775:   Set var_B8 = Me.FGrid
  loc_FC177B:   LateIdCallSt
  loc_FC17AA:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FC17B2:   var_EC = CVar(CLng(2)) 'Long
  loc_FC17D4:   var_B0 = Me.Fields.Item("Name")
  loc_FC17E5:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FC17ED:   Set var_B8 = Me.FGrid
  loc_FC17F3:   LateIdCallSt
  loc_FC180F: End If
  loc_FC1818: Set var_A8 = Me.TxtGrid
  loc_FC181E: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_B8, var_11C, var_EC)
  loc_FC1826: var_B0.SetFocus
  loc_FC1832: Exit Sub
End Sub

Public Function MasterFormExitGet() '4DE4F4
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4DE503
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E944B0
  'Data Table: 4DD3BC
  Dim Me As Recordset15
  loc_E9443E: On Error Goto loc_E944A7
  loc_E94447: Me.MoveFirst
  loc_E94471: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E94499: Proc_5_0_1107AD0(&HFF, Me, global_68)
  loc_E944A1: Call Proc_28_56_141693C(0)
  loc_E944A6: Exit Sub
  loc_E944A7: ' Referenced from: E9443E
  loc_E944A7: Proc_6_60_E63754(var_A0)
  loc_E944AC: Exit Sub
End Sub

Public Property Get Mode() 'E05710
  'Data Table: 4DD3BC
  loc_E05709: Mode = global_108
End Sub

Public Property Let Mode(vNewValue) 'E01BD0
  'Data Table: 4DD3BC
  loc_E01BCA: global_108 = vNewValue
  loc_E01BCD: Exit Sub
End Sub

Public Sub Proc_28_51_11DDBB4
  'Data Table: 4DD3BC
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_11DD738: On Error Goto loc_11DDBAB
  loc_11DD749: Set var_88 = Me.Txt
  loc_11DD74F: Call 0.Method_Proc_28_51_11DDBB40 (CInt(0), var_8C)
  loc_11DD76E: Me.DGFinish.Left = CVar(var_8C.Left)
  loc_11DD78A: Set var_B4 = Me.Txt
  loc_11DD790: Call 0.Method_Proc_28_51_11DDBB40 (CInt(0), var_B8)
  loc_11DD7AB: Set var_88 = Me.Txt
  loc_11DD7B1: Call 0.Method_Proc_28_51_11DDBB40 (CInt(0), var_8C)
  loc_11DD7B9: var_90 = var_8C.Top
  loc_11DD7C9: var_A0 = CVar(((var_90 + var_B8.Height) + CDbl(&H19))) 'Single
  loc_11DD7D8: Me.DGFinish.Top = CVar(var_8C.Left)
  loc_11DD7F0: Call 0.Method_Me0 (var_90)
  loc_11DD7FC: var_A0 = CVar((var_90 - CDbl(&H32))) 'Single
  loc_11DD80B: Me.FGrid.Width = CVar(var_8C.Left)
  loc_11DD819: Call 0.Method_Me8 (var_90)
  loc_11DD825: var_A0 = CVar((var_90 - CDbl(&H32))) 'Single
  loc_11DD834: Me.FGrid.Height = CVar(var_8C.Left)
  loc_11DD848: Set var_88 = Me.TxtGrid
  loc_11DD84E: Call 0.Method_Proc_28_51_11DDBB40 (0, var_8C)
  loc_11DD86D: Me.DGItem.Left = CVar(var_8C.Left)
  loc_11DD887: Set var_B4 = Me.TxtGrid
  loc_11DD88D: Call 0.Method_Proc_28_51_11DDBB40 (0, var_B8)
  loc_11DD8A6: Set var_88 = Me.TxtGrid
  loc_11DD8AC: Call 0.Method_Proc_28_51_11DDBB40 (0, var_8C)
  loc_11DD8C0: var_A0 = CVar((var_8C.Top + var_B8.Height)) 'Single
  loc_11DD8CF: Me.DGItem.Top = CVar(var_8C.Left)
  loc_11DD8E5: Set var_C4 = Me.FGrid
  loc_11DD8F4: var_C4.Cols = 8
  loc_11DD905: var_C4.Rows = 1
  loc_11DD91E: global_56 = CStr(CLng(var_C4.BackColor))
  loc_11DD92B: var_A0 = CVar(CLng(0)) 'Long
  loc_11DD930: var_E8 = &H226
  loc_11DD93C: LateIdCallSt
  loc_11DD944: var_A0 = 0
  loc_11DD950: var_E8 = CVar(CLng(0)) 'Long
  loc_11DD955: var_108 = "S.No"
  loc_11DD95E: LateIdCallSt
  loc_11DD969: var_A0 = CVar(CLng(1)) 'Long
  loc_11DD96E: var_E8 = 0
  loc_11DD97A: LateIdCallSt
  loc_11DD985: var_A0 = CVar(CLng(2)) 'Long
  loc_11DD98A: var_E8 = &HBB8
  loc_11DD996: LateIdCallSt
  loc_11DD99E: var_A0 = 0
  loc_11DD9AA: var_E8 = CVar(CLng(2)) 'Long
  loc_11DD9AF: var_108 = "Name"
  loc_11DD9B8: LateIdCallSt
  loc_11DD9C3: var_A0 = CVar(CLng(2)) 'Long
  loc_11DD9CE: var_E8 = CVar(CInt(1)) 'Integer
  loc_11DD9D5: LateIdCallSt
  loc_11DD9E0: var_A0 = CVar(CLng(3)) 'Long
  loc_11DD9E5: var_E8 = &H3E8
  loc_11DD9F1: LateIdCallSt
  loc_11DD9FC: var_A0 = CVar(CLng(3)) 'Long
  loc_11DDA07: var_E8 = CVar(CInt(7)) 'Integer
  loc_11DDA0E: LateIdCallSt
  loc_11DDA16: var_A0 = 0
  loc_11DDA22: var_E8 = CVar(CLng(3)) 'Long
  loc_11DDA27: var_108 = "Qty"
  loc_11DDA30: LateIdCallSt
  loc_11DDA3B: var_A0 = CVar(CLng(4)) 'Long
  loc_11DDA40: var_E8 = &H320
  loc_11DDA4C: LateIdCallSt
  loc_11DDA54: var_A0 = 0
  loc_11DDA60: var_E8 = CVar(CLng(4)) 'Long
  loc_11DDA65: var_108 = "Wt.Unit"
  loc_11DDA6E: LateIdCallSt
  loc_11DDA79: var_A0 = CVar(CLng(4)) 'Long
  loc_11DDA84: var_E8 = CVar(CInt(1)) 'Integer
  loc_11DDA8B: LateIdCallSt
  loc_11DDA96: var_A0 = CVar(CLng(5)) 'Long
  loc_11DDA9B: var_E8 = &H5DC
  loc_11DDAA7: LateIdCallSt
  loc_11DDAAF: var_A0 = 0
  loc_11DDABB: var_E8 = CVar(CLng(5)) 'Long
  loc_11DDAC0: var_108 = "Cost"
  loc_11DDAC9: LateIdCallSt
  loc_11DDAD4: var_A0 = CVar(CLng(5)) 'Long
  loc_11DDADF: var_E8 = CVar(CInt(7)) 'Integer
  loc_11DDAE6: LateIdCallSt
  loc_11DDAF1: var_A0 = CVar(CLng(6)) 'Long
  loc_11DDAF6: var_E8 = &H5DC
  loc_11DDB02: LateIdCallSt
  loc_11DDB0A: var_A0 = 0
  loc_11DDB16: var_E8 = CVar(CLng(6)) 'Long
  loc_11DDB1B: var_108 = "Total"
  loc_11DDB24: LateIdCallSt
  loc_11DDB2F: var_A0 = CVar(CLng(6)) 'Long
  loc_11DDB3A: var_E8 = CVar(CInt(7)) 'Integer
  loc_11DDB41: LateIdCallSt
  loc_11DDB4C: var_A0 = CVar(CLng(7)) 'Long
  loc_11DDB51: var_E8 = &H3E8
  loc_11DDB5D: LateIdCallSt
  loc_11DDB65: var_A0 = 0
  loc_11DDB71: var_E8 = CVar(CLng(7)) 'Long
  loc_11DDB76: var_108 = "Waste %"
  loc_11DDB7F: LateIdCallSt
  loc_11DDB8A: var_A0 = CVar(CLng(7)) 'Long
  loc_11DDB95: var_E8 = CVar(CInt(7)) 'Integer
  loc_11DDB9C: LateIdCallSt
  loc_11DDBA6: Set var_C4 = Nothing 
  loc_11DDBAA: Exit Sub
  loc_11DDBAB: ' Referenced from: 11DD738
  loc_11DDBAB: Proc_6_60_E63754(var_C4, var_E8, var_A0, var_C4, var_108, var_E8, var_A0, var_C4)
  loc_11DDBB0: Exit Sub
End Sub

Public Sub Proc_28_52_107A21C
  'Data Table: 4DD3BC
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_A8 As TextBox
  Dim unk_4DD3D1 As Connection15
  Dim var_120 As Fields15
  Dim var_134 As Field20
  Dim var_154 As Integer
  Dim var_118 As Variant
  Dim var_144 As Variant
  loc_1079FD3: If (Me.RecordCount = 0) Then
  loc_1079FD6:   Proc_28_52_107A21C = 
  loc_1079FDC: End If
  loc_1079FE8: If (global_108 = 1) Then
  loc_1079FEB:   Proc_28_52_107A21C = 
  loc_1079FF1: End If
  loc_1079FF5: Set var_90 = Me.TopCtrl1
  loc_1079FFB: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_107A003: var_A4 = CStr()
  loc_107A014: If (var_A4 = "Add") Then
  loc_107A044:   Set var_90 = Me.Txt
  loc_107A04A:   Call 0.Method_Proc_28_52_107A21C0 (CInt(0), var_A8, var_A4, "Select Count(*) From BOM Where FinItem='", var_118, -1)
  loc_107A090:   Set var_C0 = Me.Txt
  loc_107A096:   Call 0.Method_Proc_28_52_107A21C0 (CInt(3), var_C4, CVar(var_120 & var_A4 & "' And RestCode='" & Me.LblOutlet.Tag & "' And AppDate="))
  loc_107A0A5:   Proc_6_7_F26918(var_D4, CVar(var_C4), 0)
  loc_107A0BB:   unk_4DD3D1.Execute CStr(var_134 & var_D4), var_144, 
  loc_107A0C3:    = var_A8.Tag.Fields
  loc_107A0CB:    = var_120.Item()
  loc_107A0D3:    = var_134.Value
  loc_107A0DB:   var_154 = 0
  loc_107A112:   If (var_144 > var_154) Then
  loc_107A12C:     If (Me.RecordCount > 0) Then
  loc_107A135:       Me.MoveFirst
  loc_107A148:       Set var_90 = Me.Txt
  loc_107A14E:       Call 0.Method_Proc_28_52_107A21C0 (CInt(0), var_A8)
  loc_107A178:       Set var_C0 = Me.Txt
  loc_107A17E:       Call 0.Method_Proc_28_52_107A21C0 (CInt(3))
  loc_107A1E0:       Me.Find CStr(CVar("SearchCode='" & var_A8.Tag & Me.LblOutlet.Tag) & Format(CVar(var_C4), "dd/mm/yyyy") & "'"), 0, 1
  loc_107A20A:       Call TopCtrl1_UnknownEvent_D()
  loc_107A20F:       Call Proc_28_56_141693C(var_154, 1)
  loc_107A214:     End If
  loc_107A214:   End If
  loc_107A214: End If
  loc_107A214: Proc_28_52_107A21C = 1
End Sub

Public Sub Proc_28_53_E3F71C
  'Data Table: 4DD3BC
  loc_E3F6F8: Set var_88 = Me.TopCtrl1
  loc_E3F6FE: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E3F717: If (CStr() = "Browse") Then
  loc_E3F71A:   Exit Sub
  loc_E3F71B: End If
  loc_E3F71B: Exit Sub
End Sub

Public Sub Proc_28_54_136D1B0(arg_C) '136D1B0
  'Data Table: 4DD3BC
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_134 As Variant
  Dim var_124 As Variant
  Dim var_158 As Variant
  Dim var_17C As Variant
  Dim var_B0 As String
  Dim var_198 As Double
  Dim var_148 As Variant
  Dim var_138 As MSHFlexGrid
  Dim var_244 As Double
  loc_136C973: var_A0 = CLng(Me.FGrid.Col)
  loc_136C983: If (var_A0 = CLng(2)) Then
  loc_136C9D4:   Set var_8C = Me.TxtGrid
  loc_136C9DA:   Call 0.Method_Proc_28_54_136D1B00 (arg_C, var_AC, var_B0)
  loc_136C9E2:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_136C9FA:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_136CA10:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136CA18:     var_E0 = CVar(CLng(2)) 'Long
  loc_136CA1D:     var_100 = vbNullString
  loc_136CA27:     Set var_AC = Me.FGrid
  loc_136CA2D:     LateIdCallSt
  loc_136CA52:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136CA5A:     var_E0 = CVar(CLng(1)) 'Long
  loc_136CA5F:     var_100 = vbNullString
  loc_136CA69:     Set var_AC = Me.FGrid
  loc_136CA6F:     LateIdCallSt
  loc_136CA94:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136CA9C:     var_E0 = CVar(CLng(5)) 'Long
  loc_136CAA1:     var_100 = vbNullString
  loc_136CAAB:     Set var_AC = Me.FGrid
  loc_136CAB1:     LateIdCallSt
  loc_136CAC6:   Else
  loc_136CAD9:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136CAE1:     var_F0 = CVar(CLng(2)) 'Long
  loc_136CB14:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_136CB1C:     Set var_138 = Me.FGrid
  loc_136CB22:     LateIdCallSt
  loc_136CB51:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136CB59:     var_F0 = CVar(CLng(1)) 'Long
  loc_136CB8C:     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_136CB9A:     LateIdCallSt
  loc_136CBC0:     var_124 = Me.FGrid.Row
  loc_136CBD1:     var_F0 = CVar(CLng(4)) 'Long
  loc_136CC01:     var_134 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Unit")), var_F0, CVar(CLng(var_124)), Me.FGrid, var_134, var_F0, CVar(CLng(var_124)))) 'String
  loc_136CC0F:     LateIdCallSt
  loc_136CC72:     Proc_6_39_E7D3A0(var_124, CVar(Me.Fields.Item("LPurRate")), CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_134)
  loc_136CC94:     var_138 = Me.Fields.Item("ConvRatio")
  loc_136CCA3:     Proc_6_39_E7D3A0(var_148, CVar(var_138), var_124, var_138, CVar(var_138))
  loc_136CCB0:     var_17C = CVar(CStr((var_F0 / var_148))) 'String
  loc_136CCB8:     Set var_190 = Me.FGrid
  loc_136CCBE:     LateIdCallSt
  loc_136CCE0:   End If
  loc_136CCF9:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_136CCFE:   var_E0 = 1
  loc_136CD1C:   var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_136CD35:   If (var_B0 <> vbNullString) Then
  loc_136CD4D:     var_124 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_136CD55:     Set var_AC = Me.FGrid
  loc_136CD71:   End If
  loc_136CD74: Else
  loc_136CD7B:   If (var_A0 = CLng(3)) Then
  loc_136CD8A:     Set var_8C = Me.TxtGrid
  loc_136CD90:     Call 0.Method_Proc_28_54_136D1B00 (0, var_AC, var_B0, FGrid.DispID_10000, var_124, var_E0)
  loc_136CD98:     var_C0 = var_AC.Text
  loc_136CDBB:     var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136CDC3:     var_100 = CVar(CLng(3)) 'Long
  loc_136CDF0:     var_158 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00000"))) 'String
  loc_136CDF8:     Set var_138 = Me.FGrid
  loc_136CDFE:     LateIdCallSt
  loc_136CE34:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136CE3C:     var_E0 = CVar(CLng(3)) 'Long
  loc_136CE45:     Set var_AC = Me.FGrid
  loc_136CE56:     var_B0 = CStr(var_AC.TextMatrix))
  loc_136CE5E:     var_198 = Val(var_B0)
  loc_136CE74:     var_100 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136CE9E:     var_244 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_136CEFB:     LateIdCallSt
  loc_136CF2E:     Call Proc_28_60_F0AE08(Me.FGrid, CVar(CStr(Format(CVar((var_198 * var_244)), "0.0000"))), 1, 1, CVar(CLng(6)), CVar(CLng(Me.FGrid.Row)), var_244, CVar(CLng(5)))
  loc_136CF36:   Else
  loc_136CF3D:     If (var_A0 = CLng(5)) Then
  loc_136CF4C:       Set var_8C = Me.TxtGrid
  loc_136CF52:       Call 0.Method_Proc_28_54_136D1B00 (0, var_AC, var_B0, var_100, var_198)
  loc_136CF5A:       var_E0 = var_AC.Text
  loc_136CF7D:       var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136CF85:       var_100 = CVar(CLng(5)) 'Long
  loc_136CFB2:       var_158 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00000"))) 'String
  loc_136CFBA:       Set var_138 = Me.FGrid
  loc_136CFC0:       LateIdCallSt
  loc_136CFF6:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136CFFE:       var_E0 = CVar(CLng(3)) 'Long
  loc_136D007:       Set var_AC = Me.FGrid
  loc_136D018:       var_B0 = CStr(var_AC.TextMatrix))
  loc_136D020:       var_198 = Val(var_B0)
  loc_136D036:       var_100 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136D060:       var_244 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_136D0BD:       LateIdCallSt
  loc_136D0F0:       Call Proc_28_60_F0AE08(Me.FGrid, CVar(CStr(Format(CVar((var_198 * var_244)), "0.0000"))), 1, 1, CVar(CLng(6)), CVar(CLng(Me.FGrid.Row)), var_244, CVar(CLng(5)))
  loc_136D0F8:     Else
  loc_136D0FF:       If (var_A0 = CLng(7)) Then
  loc_136D10E:         Set var_8C = Me.TxtGrid
  loc_136D114:         Call 0.Method_Proc_28_54_136D1B00 (0, var_AC, var_B0, var_100, var_198)
  loc_136D11C:         var_E0 = var_AC.Text
  loc_136D13F:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136D147:         var_100 = CVar(CLng(7)) 'Long
  loc_136D174:         var_158 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00"))) 'String
  loc_136D17C:         Set var_138 = Me.FGrid
  loc_136D182:         LateIdCallSt
  loc_136D1A5:       End If
  loc_136D1A5:     End If
  loc_136D1A5:   End If
  loc_136D1A5: End If
  loc_136D1AA: Proc_28_54_136D1B0 = &HFF
End Sub

Public Sub Proc_28_55_F32560
  'Data Table: 4DD3BC
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_F3244E: global_84 = vbNullString
  loc_F32460: Set var_8C = Me.Txt
  loc_F32466: Call 0.Method_Proc_28_55_F32560C (var_8E, var_86)
  loc_F32476: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F3248C:   Set var_8C = Me.Txt
  loc_F32492:   Call 0.Method_Proc_28_55_F325600 (CInt(var_86), var_98)
  loc_F3249A:   var_98.Text = vbNullString
  loc_F324B6:   Set var_8C = Me.Txt
  loc_F324BC:   Call 0.Method_Proc_28_55_F325600 (CInt(var_86), var_98)
  loc_F324C4:   var_98.Tag = vbNullString
  loc_F324D3: Next var_92 'Byte
  loc_F324E6: Me.lbltotal.Caption = vbNullString
  loc_F32501: Me.FGrid.Rows = 1
  loc_F3251E: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F32526: Set var_98 = Me.FGrid
  loc_F32555: Me.FGrid.FixedRows = 1
  loc_F3255D: Exit Sub
End Sub

Public Sub Proc_28_56_141693C
  'Data Table: 4DD3BC
  Dim var_C0 As Variant
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_D0 As Variant
  Dim var_E0 As Variant
  Dim unk_4DD3D1 As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Variant
  Dim var_130 As Variant
  Dim var_104 As Variant
  Dim var_11C As TextBox
  Dim var_1DC As Recordset15
  Dim var_1E0 As Integer
  Dim var_114 As Variant
  Dim var_140 As Variant
  loc_1415EF0: On Error Goto loc_1416933
  loc_1415F00: var_C0 = "Select U_Name,U_AE,U_EntDt From Bom where FinItem+RestCode+Convert(Varchar(11),AppDate,103)='"
  loc_1415F49: unk_4DD3D1.Execute CStr(var_C0 & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_1415F54: Set var_88 = var_118
  loc_1415FA8: var_118 = var_88.Fields
  loc_1416011: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1416056: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_14160D0: var_11C = var_88.Fields.Item("U_AE")
  loc_14160E9: var_114 = "entdt : "
  loc_1416131: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_11C)) = "E"), "Last Update : ", var_114))
  loc_1416176: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_14161C5: If (Me.RecordCount > 0) Then
  loc_14161C8:   Call Proc_28_55_F32560()
  loc_1416209:   Set var_118 = Me.Txt
  loc_141620F:   Call 0.Method_Proc_28_56_141693C0 (CInt(0), var_11C)
  loc_1416217:   var_11C.Tag = CStr(Me.Fields.Item("FinItem").Value)
  loc_1416266:   Set var_118 = Me.Txt
  loc_141626C:   Call 0.Method_Proc_28_56_141693C0 (CInt(0), var_11C)
  loc_1416274:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Name")))
  loc_14162C0:   Me.LblOutlet.Caption = Proc_6_38_E69628(CVar(Me.Fields.Item("RestName")))
  loc_141630A:   Me.LblOutlet.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("RestCode")))
  loc_1416371:   Set var_118 = Me.Txt
  loc_1416377:   Call 0.Method_Proc_28_56_141693C0 (CInt(1), var_11C, CStr(Format(CVar(Me.Fields.Item("FinQty")), "0.0000")))
  loc_141637F:   var_11C.Text = 1
  loc_14163D2:   Set var_118 = Me.Txt
  loc_14163D8:   Call 0.Method_Proc_28_56_141693C0 (CInt(2), var_11C)
  loc_14163E0:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Unit")))
  loc_1416433:   Call 0.Method_Proc_28_56_141693C0 (CInt(3), var_11C)
  loc_141643B:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("AppDate")))
  loc_141645C:   var_C0 = "Select BOM.*,ItemMast.Name as Name,ItemMast.Unit,ItemMast.LPurRate,ItemMast.IssueUnit From BOM Left Join ItemMast on ItemMast.Code=BOM.RawItem And (ItemMast.ItemType='Store' Or GravyItem='Yes') where BOM.FinItem+BOM.RestCode+Convert(Varchar(11),BOM.AppDate,103)='"
  loc_14164A5:   unk_4DD3D1.Execute CStr("0.0000" & Me.Fields.Item("SearchCode").Value & "' Order By BOM.RawSno"), var_114, -1
  loc_14164B0:   Set var_1DC = Me.Txt
  loc_14164DE:   If (var_1DC.RecordCount > 0) Then
  loc_14164E3:     var_1E0 = 1
  loc_14164F9:     Me.FGrid.Rows = 1
  loc_1416501:     ' Referenced from: 141688A
  loc_1416510:     If Not(var_1DC.EOF) Then
  loc_1416513:       var_9C = vbNullString
  loc_141651D:       Set var_8C = Me.FGrid
  loc_1416532:       Set var_1F8 = Me.FGrid
  loc_1416539:       var_C0 = CVar(CLng(var_1E0)) 'Long
  loc_1416541:       var_104 = CVar(CLng(0)) 'Long
  loc_1416571:       var_D0 = CVar(CStr(var_1DC.Fields.Item("RawSno").Value)) 'String
  loc_1416578:       LateIdCallSt
  loc_14165C7:       var_D0 = CVar(Proc_6_38_E69628(CVar(var_1DC.Fields.Item("RawItem")), CVar(CLng(1)), CVar(CLng(var_1E0)), var_1F8, var_D0, CVar(CLng(1)))) 'String
  loc_14165CE:       LateIdCallSt
  loc_1416619:       var_D0 = CVar(Proc_6_38_E69628(CVar(var_1DC.Fields.Item("Name")), CVar(CLng(2)), CVar(CLng(var_1E0)), var_1F8, var_D0, CVar(CLng(var_1E0)))) 'String
  loc_1416620:       LateIdCallSt
  loc_141666B:       var_D0 = CVar(Proc_6_38_E69628(CVar(var_1DC.Fields.Item("IssueUnit")), CVar(CLng(4)), CVar(CLng(var_1E0)), var_1F8, var_D0)) 'String
  loc_1416672:       LateIdCallSt
  loc_14166A4:       var_E0 = CVar(CLng(var_1E0)) 'Long
  loc_14166C0:       var_D0 = "0.00000"
  loc_14166E0:       LateIdCallSt
  loc_141671C:       Proc_6_39_E7D3A0(var_D0, CVar(var_1DC.Fields.Item("Waste")), var_1F8, CVar(CStr(Format(CVar(var_1DC.Fields.Item("RawQty")), var_D0))), 1, 1, CVar(CLng(3)))
  loc_1416725:       var_E0 = CVar(CLng(var_1E0)) 'Long
  loc_141675D:       LateIdCallSt
  loc_141679B:       Proc_6_39_E7D3A0(var_D0, CVar(var_1DC.Fields.Item("Cost")), var_1F8, CVar(CStr(Format(var_D0, "0.00"))), 1, 1, CVar(CLng(7)))
  loc_14167A4:       var_E0 = CVar(CLng(var_1E0)) 'Long
  loc_14167DC:       LateIdCallSt
  loc_141681A:       Proc_6_39_E7D3A0(var_D0, CVar(var_1DC.Fields.Item("Total")), var_1F8, CVar(CStr(Format(var_D0, "0.00000"))), 1, 1, CVar(CLng(5)))
  loc_1416823:       var_E0 = CVar(CLng(var_1E0)) 'Long
  loc_141682B:       var_130 = CVar(CLng(6)) 'Long
  loc_1416854:       var_140 = CVar(CStr(Format(var_D0, "0.0000"))) 'String
  loc_141685B:       LateIdCallSt
  loc_1416875:       Set var_1F8 = Nothing 
  loc_141687F:       var_1E0 = (var_1E0 + 1)
  loc_1416885:       var_1DC.MoveNext
  loc_141688A:       GoTo loc_1416501
  loc_141688D:     End If
  loc_141688D:   End If
  loc_141688D:   var_9C = 0
  loc_1416897:   Set var_8C = Me.FGrid
  loc_14168C4:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_14168C7:     var_9C = "1"
  loc_14168D1:     Set var_8C = Me.FGrid
  loc_14168E2:   End If
  loc_14168E2:   var_9C = 1
  loc_14168F5:   Me.FGrid.FixedRows = var_9C
  loc_14168FD:   Call Proc_28_60_F0AE08(FGrid.DispID_10000, var_9C, FGrid.DispID_2E, var_9C, var_1E0, var_1F8, var_140)
  loc_1416905: Else
  loc_1416905:   Call Proc_28_55_F32560(1, 1, var_130)
  loc_141690A: End If
  loc_141691D: Me.FGrid.Col = 1
  loc_1416925: Call Proc_28_58_EF94D0(var_E0, var_E0)
  loc_141692F: Set var_1DC = Nothing
  loc_1416932: Exit Sub
  loc_1416933: ' Referenced from: 1415EF0
  loc_1416933: Proc_6_60_E63754(var_E0)
  loc_1416938: Exit Sub
End Sub

Public Sub Proc_28_57_EADE34(arg_C) 'EADE34
  'Data Table: 4DD3BC
  Dim var_98 As TextBox
  loc_EADDAE: Set var_8C = Me.Txt
  loc_EADDB4: Call 0.Method_Proc_28_57_EADE34C (var_8E, var_86)
  loc_EADDC4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EADDD1:   If (var_86 <> 2) Then
  loc_EADDE4:     Set var_8C = Me.Txt
  loc_EADDEA:     Call 0.Method_Proc_28_57_EADE340 (CInt(var_86), var_98)
  loc_EADDF2:     var_98.Enabled = arg_C
  loc_EADDFE:   End If
  loc_EADE01: Next var_92 'Byte
  loc_EADE16: Set var_8C = Me.Txt
  loc_EADE1C: Call 0.Method_Proc_28_57_EADE340 (CInt(4), var_98)
  loc_EADE24: var_98.Enabled = Not(arg_C)
  loc_EADE30: Exit Sub
  loc_EADE31: Proc_28_57_EADE344F8 =  'Address Function
End Sub

Public Sub Proc_28_58_EF94D0
  'Data Table: 4DD3BC
  loc_EF9410: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EF9422:   Me.DGItem.Visible = False
  loc_EF942A: End If
  loc_EF9446: If (CBool(Me.DGFinish.Visible) = &HFF) Then
  loc_EF9458:   Me.DGFinish.Visible = False
  loc_EF9460: End If
  loc_EF947C: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EF948E:   Me.DGRest.Visible = False
  loc_EF9496: End If
  loc_EF94B2: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF94C4:   Me.FGPoint.Visible = False
  loc_EF94CC: End If
  loc_EF94CC: Exit Sub
End Sub

Public Sub Proc_28_59_E93A9C(arg_C) 'E93A9C
  'Data Table: 4DD3BC
  Dim var_10C As TextBox
  loc_E93A30: Call Proc_28_58_EF94D0()
  loc_E93A6C: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E93A6F:   Call TopCtrl1_UnknownEvent_16()
  loc_E93A77: Else
  loc_E93A81:   Set var_108 = Me.Txt
  loc_E93A87:   Call 0.Method_Proc_28_59_E93A9C0 (arg_C)
  loc_E93A8F:   var_10C.SetFocus
  loc_E93A9B: End If
  loc_E93A9B: Exit Sub
End Sub

Public Sub Proc_28_60_F0AE08
  'Data Table: 4DD3BC
  Dim var_90 As Double
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  loc_F0AD2D: Me.lbltotal.Caption = vbNullString
  loc_F0AD38: var_90 = CDbl(0)
  loc_F0AD60: For var_A8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A8 'Integer
  loc_F0AD6A:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_F0AD72:   var_D8 = CVar(CLng(6)) 'Long
  loc_F0AD9E:   var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_F0ADAD: Next var_A8 'Integer
  loc_F0ADB2: var_D8 = "Total->"
  loc_F0ADF1: Me.lbltotal.Caption = CStr(1 & Format(var_90, "0.00"))
  loc_F0AE05: Exit Sub
End Sub
