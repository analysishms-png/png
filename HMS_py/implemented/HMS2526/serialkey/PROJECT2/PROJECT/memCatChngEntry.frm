VERSION 5.00
Begin VB.Form memCatChngEntry
  Caption = "Out-Station Member Entry"
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
  ClientWidth = 11130
  ClientHeight = 5145
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 6
    ForeColor = &HFF0000&
    Left = 8205
    Top = 600
    Width = 1410
    Height = 285
    Enabled = 0   'False
    TabIndex = 1
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
  Begin DataGrid DGMemType
    Left = 9570
    Top = 2040
    Width = 4725
    Height = 2010
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 21
  End
  Begin CommandButton CmdFillGrid
    Caption = "Fill Grid"
    Left = 6960
    Top = 2130
    Width = 1245
    Height = 315
    TabIndex = 7
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 5
    ForeColor = &HFF0000&
    Left = 2085
    Top = 1770
    Width = 615
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 3
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
    ForeColor = &HFF0000&
    Left = 5235
    Top = 2160
    Width = 1410
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 8
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
    Left = 2085
    Top = 2160
    Width = 1410
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 8
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
    ForeColor = &HFF0000&
    Left = 2085
    Top = 1380
    Width = 4560
    Height = 285
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 1515
    Top = 2865
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    Left = 1920
    Top = 4560
    Width = 1845
    Height = 1815
    Visible = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 120
      Top = 0
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 15
    End
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HFF0000&
    Left = 2085
    Top = 990
    Width = 4560
    Height = 285
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
  Begin TextBox Txt
    Index = 0
    ForeColor = &HFF0000&
    Left = 2085
    Top = 600
    Width = 6090
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 75
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
  Begin DataGrid DGMember
    Left = 10200
    Top = 4440
    Width = 6720
    Height = 2685
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin MSFlexGrid FGPoint
    Left = 12225
    Top = 4935
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 10
  End
  Begin DataGrid DGRev
    Left = 9555
    Top = 1680
    Width = 3930
    Height = 2565
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 11
  End
  Begin MSHFlexGrid FGrid
    Left = 1320
    Top = 2760
    Width = 7500
    Height = 4275
    TabIndex = 8
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11130
    Height = 450
    TabIndex = 22
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 240
    Top = 7680
    Width = 2880
    Height = 255
    TabIndex = 24
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 3645
    Top = 7725
    Width = 2790
    Height = 285
    TabIndex = 23
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
  Begin Label Label2
    Caption = "Change Revenue :"
    Index = 4
    ForeColor = &HFF0000&
    Left = 435
    Top = 1785
    Width = 1575
    Height = 240
    TabIndex = 20
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
  Begin Label Label2
    Caption = "App. Month To :"
    Index = 3
    ForeColor = &HFF0000&
    Left = 3795
    Top = 2175
    Width = 1425
    Height = 225
    TabIndex = 19
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
  Begin Label Label2
    Caption = "App. Month From :"
    Index = 2
    ForeColor = &HFF0000&
    Left = 450
    Top = 2175
    Width = 1575
    Height = 240
    TabIndex = 18
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
  Begin Label Label2
    Caption = "New Category :"
    Index = 1
    ForeColor = &HFF0000&
    Left = 450
    Top = 1395
    Width = 1590
    Height = 225
    TabIndex = 17
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
  Begin Label Label2
    Caption = "Old Category :"
    Index = 0
    ForeColor = &HFF0000&
    Left = 450
    Top = 1005
    Width = 1515
    Height = 240
    TabIndex = 13
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
    Caption = "Member Name :"
    ForeColor = &HFF0000&
    Left = 450
    Top = 600
    Width = 1515
    Height = 270
    TabIndex = 12
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

Attribute VB_Name = "memCatChngEntry"

Private global_80 As Integer
Private global_52 As Integer
Private global_60 As Recordset15

Private Sub CmdFillGrid_Click() 'DFEE94
  'Data Table: 4C5608
  loc_DFEE8C: Call Proc_288_44_11A6558()
  loc_DFEE91: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '12B2AB4
  'Data Table: 4C5608
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Variant
  Dim var_108 As TextBox
  Dim var_15C As String
  loc_12B249E: Set var_88 = Me.TxtGrid
  loc_12B24A4: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_12B24B2: Proc_6_74_E23240(var_8C)
  loc_12B24BE: Call Proc_288_47_EBAF18(var_8C)
  loc_12B24D1: Set var_88 = Me.TxtGrid
  loc_12B24D7: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_12B24DF: var_8C.MaxLength = 0
  loc_12B24F7: If (Index = 0) Then
  loc_12B2510:   Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_12B252B:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B256A:   Set var_108 = Me.TxtGrid
  loc_12B2570:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_12B2578:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_12B25A9:   var_114 = CLng(Me.FGrid.Col)
  loc_12B25B9:   If (var_114 = CLng(1)) Then
  loc_12B25FD:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_12B2600:       Exit Sub
  loc_12B2601:     End If
  loc_12B260C:     Set var_8C = Me.FGPoint
  loc_12B2624:     Proc_6_137_1192FDC(Me.DGRev, global_72, Index, var_8C)
  loc_12B2640:     Set var_88 = Me.TxtGrid
  loc_12B2646:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, &H32)
  loc_12B264E:     var_8C.MaxLength = var_114
  loc_12B266D:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B2675:     var_E4 = CVar(CLng(1)) 'Long
  loc_12B26A8:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_12B26B1:       Me.MoveFirst
  loc_12B26D1:       var_E4 = CVar(CLng(5)) 'Long
  loc_12B26DA:       Set var_8C = Me.FGrid
  loc_12B26F1:       Proc_6_17_EAAE40(var_12C, CVar(CStr(var_8C.TextMatrix))), var_E4, CVar(CLng(Me.FGrid.Row)))
  loc_12B2710:       var_110 = CStr("Code=" & var_12C)
  loc_12B271A:       Me.Find var_110, 0, 1
  loc_12B274A:       If (Me.EOF = &HFF) Then
  loc_12B2753:         Me.MoveFirst
  loc_12B2758:       End If
  loc_12B2758:     End If
  loc_12B275B:   Else
  loc_12B2762:     If (var_114 = CLng(3)) Then
  loc_12B2774:       Set var_88 = Me.TxtGrid
  loc_12B277A:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &HF, var_15C)
  loc_12B2782:       var_8C.MaxLength = var_E4
  loc_12B279B:       ReDim var_160(0 To 4)
  loc_12B27B2:       var_160(0) = "Monthly"
  loc_12B27C1:       var_160(1) = "Bi Monthly"
  loc_12B27D0:       var_160(2) = "Quarterly"
  loc_12B27DF:       var_160(3) = "Half Yearly"
  loc_12B27EE:       var_160(4) = "Annual"
  loc_12B2805:       global_88 = Array(var_160)
  loc_12B2810:       Set var_108 = Me.ListView
  loc_12B282B:       Set var_8C = Me.TxtGrid
  loc_12B2845:       Set global_104 = Proc_6_66_F0048C(var_108, var_8C, Index, global_88, 5)
  loc_12B2863:       Set var_88 = Me.TxtGrid
  loc_12B2869:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, global_88)
  loc_12B2883:       Set var_90 = Me.TxtGrid
  loc_12B2889:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_12B2891:       var_108.Tag = var_8C.Text
  loc_12B28A7:     Else
  loc_12B28AE:       If (var_114 = CLng(4)) Then
  loc_12B28BF:         Set var_88 = Me.TxtGrid
  loc_12B28C5:         Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_12B28CD:         var_8C.MaxLength = 3
  loc_12B28E6:         ReDim var_160(0 To &HB)
  loc_12B28FD:         var_160(0) = "Jan"
  loc_12B290C:         var_160(1) = "Feb"
  loc_12B291B:         var_160(2) = "Mar"
  loc_12B292A:         var_160(3) = "Apr"
  loc_12B2939:         var_160(4) = "May"
  loc_12B2948:         var_160(5) = "Jun"
  loc_12B2957:         var_160(6) = "Jul"
  loc_12B2966:         var_160(7) = "Aug"
  loc_12B2975:         var_160(8) = "Sep"
  loc_12B2984:         var_160(9) = "Oct"
  loc_12B2993:         var_160(&HA) = "Nov"
  loc_12B29A2:         var_160(&HB) = "Dec"
  loc_12B29B9:         global_88 = Array(var_160)
  loc_12B29C4:         Set var_108 = Me.ListView
  loc_12B29DF:         Set var_8C = Me.TxtGrid
  loc_12B29F9:         Set global_104 = Proc_6_66_F0048C(var_108, var_8C, Index, global_88)
  loc_12B2A17:         Set var_88 = Me.TxtGrid
  loc_12B2A1D:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110)
  loc_12B2A25:         &HC = var_8C.Text
  loc_12B2A37:         Set var_90 = Me.TxtGrid
  loc_12B2A3D:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_12B2A45:         var_108.Tag = global_88
  loc_12B2A5B:       Else
  loc_12B2A62:         If (var_114 = CLng(2)) Then
  loc_12B2A74:           Set var_88 = Me.TxtGrid
  loc_12B2A7A:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_12B2A82:           var_8C.MaxLength = 8
  loc_12B2A97:           If (global_80 = 0) Then
  loc_12B2AA2:             var_110 = "{Home}+{End}"
  loc_12B2AA8:             Proc_303_0_FBACC8(var_110, 0)
  loc_12B2AB0:           End If
  loc_12B2AB0:         End If
  loc_12B2AB0:       End If
  loc_12B2AB0:     End If
  loc_12B2AB0:   End If
  loc_12B2AB0: End If
  loc_12B2AB0: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12F1EC4
  'Data Table: 4C5608
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_C4 As Variant
  Dim var_98 As DataGrid
  Dim var_DC As DataGrid
  Dim Me As Recordset15
  Dim var_E8 As TextBox
  Dim var_F8 As TextBox
  loc_12F1808: If (KeyCode = 0) Then
  loc_12F1815:   If (CLng(Shift) = &H1B) Then
  loc_12F1825:     Set var_8C = Me.TxtGrid
  loc_12F182B:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_12F1845:     Set var_98 = Me.TxtGrid
  loc_12F184B:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_12F1853:     var_9C.Text = var_90.Tag
  loc_12F186A:     Set var_8C = Me.FGrid
  loc_12F1887:     Set var_8C = Me.TxtGrid
  loc_12F188D:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_12F1895:     var_90.Visible = FGrid.DispID_8001
  loc_12F18AF:     Set var_8C = Me.TxtGrid
  loc_12F18B5:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12F18BD:     var_90.MaxLength = 0
  loc_12F18C9:     Exit Sub
  loc_12F18CA:   End If
  loc_12F18ED:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_12F18FC:     Set var_8C = Me.TxtGrid
  loc_12F1902:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B4)
  loc_12F190A:     var_B0 = var_90.Left
  loc_12F1921:     Me.DGRev.Left = CVar(var_B4)
  loc_12F193B:     Set var_98 = Me.TxtGrid
  loc_12F1941:     Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12F1949:     var_D8 = var_9C.Height
  loc_12F195A:     Set var_8C = Me.TxtGrid
  loc_12F1960:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12F1974:     var_C4 = CVar((var_90.Top + var_D8)) 'Single
  loc_12F1983:     Me.DGRev.Top = CVar(var_90.Top)
  loc_12F19A0:     Set var_E8 = Me.TxtGrid
  loc_12F19B2:     Set var_9C = Me.FGPoint
  loc_12F19BD:     Set var_98 = Nothing
  loc_12F19EB:     Proc_6_69_134A630(Me.DGRev, var_E8, KeyCode, global_72, Shift, &HFF)
  loc_12F1A0A:     var_B4 = Me.RecordCount
  loc_12F1A18:     If (var_B4 > 0) Then
  loc_12F1A1F:       Set var_98 = Me.DGRev
  loc_12F1A3E:       Proc_6_138_106E830(var_98, global_72, KeyCode, Me.FGPoint, 1)
  loc_12F1A4C:     End If
  loc_12F1A56:     If (CLng(Shift) = &HD) Then
  loc_12F1A5F:       Call Proc_288_49_1258D34(KeyCode, var_DE, var_98)
  loc_12F1A6A:       If (var_DE = &HFF) Then
  loc_12F1AB0:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_80, 5)
  loc_12F1AC0:       End If
  loc_12F1AC0:     End If
  loc_12F1AC3:   Else
  loc_12F1ACA:     If (var_B0 = CLng(2)) Then
  loc_12F1B0D:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_80 = &HFF))) Then
  loc_12F1B16:         Call Proc_288_49_1258D34(KeyCode, var_DE, 0, 2)
  loc_12F1B21:         If (var_DE = &HFF) Then
  loc_12F1B58:           Set var_90 = Me.TxtGrid
  loc_12F1B67:           Proc_6_62_1254E68(Me.FGrid, var_90, KeyCode, Shift, global_80, 5, 0)
  loc_12F1B77:         End If
  loc_12F1B77:       End If
  loc_12F1B7A:     Else
  loc_12F1B81:       If (var_B0 = CLng(3)) Then
  loc_12F1B93:         Set var_8C = Me.TxtGrid
  loc_12F1B99:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, &HF, 3, 0)
  loc_12F1BA1:         var_90.MaxLength = 0
  loc_12F1BCF:         Set var_8C = Me.TxtGrid
  loc_12F1BD5:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_12F1BDD:         var_9C = var_90.Left
  loc_12F1BEF:         Set var_98 = Me.TxtGrid
  loc_12F1BF5:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_D8)
  loc_12F1BFD:         0 = var_9C.Top
  loc_12F1C0F:         Set var_DC = Me.TxtGrid
  loc_12F1C15:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E8)
  loc_12F1C2F:         Set var_EC = Me.TxtGrid
  loc_12F1C35:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_F8)
  loc_12F1C3D:         var_FC = var_F8.Width
  loc_12F1C85:         Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_12F1CB3:         If (CLng(Shift) = &HD) Then
  loc_12F1CBC:           Call Proc_288_49_1258D34(KeyCode, var_DE, CInt(var_B4), CInt((var_D8 + var_E8.Height)))
  loc_12F1CC7:           If (var_DE = &HFF) Then
  loc_12F1CD5:             Set var_9C = Me.TxtGrid
  loc_12F1CFE:             Set var_90 = var_9C
  loc_12F1D0D:             Proc_6_62_1254E68(Me.FGrid, var_90, KeyCode, Shift, global_80, 5)
  loc_12F1D1D:           End If
  loc_12F1D1D:         End If
  loc_12F1D20:       Else
  loc_12F1D27:         If (var_B0 = CLng(4)) Then
  loc_12F1D39:           Set var_8C = Me.TxtGrid
  loc_12F1D3F:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 3, 0, 4)
  loc_12F1D47:           var_90.MaxLength = 0
  loc_12F1D75:           Set var_8C = Me.TxtGrid
  loc_12F1D7B:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_12F1D83:           CInt(var_FC) = var_90.Left
  loc_12F1D95:           Set var_98 = Me.TxtGrid
  loc_12F1D9B:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_D8)
  loc_12F1DA3:           1300 = var_9C.Top
  loc_12F1DB5:           Set var_DC = Me.TxtGrid
  loc_12F1DBB:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E8)
  loc_12F1DD5:           Set var_EC = Me.TxtGrid
  loc_12F1DDB:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_F8)
  loc_12F1DE3:           var_FC = var_F8.Width
  loc_12F1E2B:           Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_12F1E59:           If (CLng(Shift) = &HD) Then
  loc_12F1E62:             Call Proc_288_49_1258D34(KeyCode, var_DE, CInt(var_B4), CInt((var_D8 + var_E8.Height)))
  loc_12F1E6D:             If (var_DE = &HFF) Then
  loc_12F1EB3:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_80, 5)
  loc_12F1EC3:             End If
  loc_12F1EC3:           End If
  loc_12F1EC3:         End If
  loc_12F1EC3:       End If
  loc_12F1EC3:     End If
  loc_12F1EC3:   End If
  loc_12F1EC3: End If
  loc_12F1EC3: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F2C898
  'Data Table: 4C5608
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F2C78F: Proc_6_58_E06050(arg_10)
  loc_F2C7A0: If (KeyAscii = 0) Then
  loc_F2C7B6:   var_A0 = CLng(Me.FGrid.Col)
  loc_F2C7C6:   If (var_A0 = CLng(1)) Then
  loc_F2C7E5:     If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_F2C7F7:       var_A4 = "Name"
  loc_F2C812:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_72, arg_10)
  loc_F2C82C:       Set var_AC = Me.FGPoint
  loc_F2C844:       Proc_6_138_106E830(Me.DGRev, global_72, KeyAscii, var_AC)
  loc_F2C852:     End If
  loc_F2C855:   Else
  loc_F2C85C:     If (var_A0 = CLng(2)) Then
  loc_F2C869:       Set var_8C = Me.TxtGrid
  loc_F2C86F:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F2C88A:       Proc_6_42_129B55C(var_AC, arg_10, 5, 2)
  loc_F2C896:     End If
  loc_F2C896:   End If
  loc_F2C896: End If
  loc_F2C896: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F8DC48
  'Data Table: 4C5608
  Dim var_A0 As Long
  loc_F8DAEC: On Error Goto loc_F8DC40
  loc_F8DAFB: If (KeyCode = 0) Then
  loc_F8DB11:   var_A0 = CLng(Me.FGrid.Col)
  loc_F8DB21:   If (var_A0 = CLng(1)) Then
  loc_F8DB47:     If ((Shift <> &HD) And (CBool(Me.DGRev.Visible) = 0)) Then
  loc_F8DB58:       Call TxtGrid_KeyDown(KeyCode, global_82)
  loc_F8DB87:       Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_72, Shift, "Name")
  loc_F8DB96:     End If
  loc_F8DB99:   Else
  loc_F8DBA0:     If Not (var_A0 = CLng(3)) Then
  loc_F8DBAA:       If (var_A0 = CLng(4)) Then
  loc_F8DBAD:       End If
  loc_F8DBCF:       If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_F8DBE0:         Call TxtGrid_KeyDown(KeyCode, global_82)
  loc_F8DBE5:       End If
  loc_F8DC00:       If (Me.FrmList.Visible = &HFF) Then
  loc_F8DC2F:         Proc_6_64_F299E8(Me.ListView, Me.TxtGrid, KeyCode, Shift, global_104)
  loc_F8DC3F:       End If
  loc_F8DC3F:     End If
  loc_F8DC3F:   End If
  loc_F8DC3F: End If
  loc_F8DC3F: Exit Sub
  loc_F8DC40: ' Referenced from: F8DAEC
  loc_F8DC40: Proc_6_60_E63754(0, &HFF, 0)
  loc_F8DC45: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E2348C
  'Data Table: 4C5608
  Dim arg_10 As Integer
  loc_E23474: If (Cancel = 0) Then
  loc_E2347D:   Call Proc_288_49_1258D34(Cancel, var_88)
  loc_E23486:   arg_10 = Not(var_88)
  loc_E23489: End If
  loc_E23489: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E62D44
  'Data Table: 4C5608
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E62D0F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E62D22: Set var_A8 = Me.TxtGrid
  loc_E62D28: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E62D30: var_AC.Visible = False
  loc_E62D3C: Call Proc_288_47_EBAF18()
  loc_E62D41: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E67650
  'Data Table: 4C5608
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6760C: Set var_88 = Me.TxtGrid
  loc_E67612: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6762C: If (var_8C.Visible = 0) Then
  loc_E67645:   Me.FGrid.BackColorSel = CVar(CLng(global_108))
  loc_E6764D: End If
  loc_E6764D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E4E5DC
  'Data Table: 4C5608
  loc_E4E5B4: Set var_88 = Me.TopCtrl1
  loc_E4E5BA: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_E4E5D3: If (CStr() <> "Browse") Then
  loc_E4E5D6:   Call Proc_288_48_E42D04()
  loc_E4E5DB: End If
  loc_E4E5DB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10FA7DC
  'Data Table: 4C5608
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_10FA4B4: Set var_88 = Me.TopCtrl1
  loc_10FA4BA: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_10FA4FF: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_10FA508:   Call Form_KeyDown(Cancel, arg_10)
  loc_10FA50D: End If
  loc_10FA511: Set var_88 = Me.TopCtrl1
  loc_10FA517: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_10FA530: If (CStr() = "Browse") Then
  loc_10FA533:   Exit Sub
  loc_10FA534: End If
  loc_10FA5A8: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_10FA5B3:   var_9C = "+{Tab}"
  loc_10FA5B9:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_10FA5C3:   Cancel = 0
  loc_10FA5C9: Else
  loc_10FA620:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_10FA625:     Cancel = 0
  loc_10FA628:   End If
  loc_10FA628: End If
  loc_10FA654: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10FA66B: Set var_88 = Me.TopCtrl1
  loc_10FA671: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(Cancel)
  loc_10FA68A: If (CStr(Cancel) = "Edit") Then
  loc_10FA68D:   Exit Sub
  loc_10FA68E: End If
  loc_10FA69F: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10FA6B5:   var_DC = CLng(Me.FGrid.Col)
  loc_10FA6C5:   If (var_DC = CLng(1)) Then
  loc_10FA6DB:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10FA6E3:     var_FC = CVar(CLng(1)) 'Long
  loc_10FA6E8:     var_11C = vbNullString
  loc_10FA6F2:     Set var_A0 = Me.FGrid
  loc_10FA6F8:     LateIdCallSt
  loc_10FA71D:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10FA725:     var_FC = CVar(CLng(5)) 'Long
  loc_10FA72A:     var_11C = vbNullString
  loc_10FA734:     Set var_A0 = Me.FGrid
  loc_10FA73A:     LateIdCallSt
  loc_10FA74F:   Else
  loc_10FA756:     If Not (var_DC = CLng(2)) Then
  loc_10FA760:       If Not (var_DC = CLng(3)) Then
  loc_10FA76A:         If (var_DC = CLng(4)) Then
  loc_10FA76D:         End If
  loc_10FA76D:       End If
  loc_10FA780:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10FA798:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10FA79D:       var_11C = vbNullString
  loc_10FA7A7:       Set var_B4 = Me.FGrid
  loc_10FA7AD:       LateIdCallSt
  loc_10FA7C5:     End If
  loc_10FA7C5:   End If
  loc_10FA7C5: End If
  loc_10FA7CB: If (Cancel = &HD) Then
  loc_10FA7D3:   global_80 = 0
  loc_10FA7D6: End If
  loc_10FA7D8: Cancel = 0
  loc_10FA7DB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E59660
  'Data Table: 4C5608
  loc_E5962C: Set var_88 = Me.TopCtrl1
  loc_E59632: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_E5964B: If (CStr() = "Browse") Then
  loc_E5964E:   Exit Sub
  loc_E5964F: End If
  loc_E59658: Call FGrid_UnknownEvent_C()
  loc_E5965D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1023DF8
  'Data Table: 4C5608
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1023BD4: Set var_88 = Me.TopCtrl1
  loc_1023BDA: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_1023BF3: If (CStr() = "Browse") Then
  loc_1023BF6:   Exit Sub
  loc_1023BF7: End If
  loc_1023C0A: var_A0 = CLng(Me.FGrid.Col)
  loc_1023C1A: If Not (var_A0 = CLng(1)) Then
  loc_1023C24:   If Not (var_A0 = CLng(3)) Then
  loc_1023C2E:     If (var_A0 = CLng(4)) Then
  loc_1023C31:     End If
  loc_1023C31:   End If
  loc_1023C35:   Set var_C4 = Me.FGrid
  loc_1023C59:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1023C86:   Set var_B4 = var_C4
  loc_1023C98:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1023CC0:   Set var_88 = Me.TxtGrid
  loc_1023CC6:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1023CCE:   0 = var_B4.Text
  loc_1023CE7:   If (Len(var_9C) <= 1) Then
  loc_1023CF6:     Set var_88 = Me.TxtGrid
  loc_1023CFC:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1023D04:     var_CA = var_B4.Text
  loc_1023D15:     Set var_B8 = Me.TxtGrid
  loc_1023D1B:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1023D23:     var_C4.Text = var_9C
  loc_1023D36:   End If
  loc_1023D42:   Set var_88 = Me.TxtGrid
  loc_1023D48:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1023D62:   Set var_B8 = Me.TxtGrid
  loc_1023D68:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1023D70:   var_C4.SelStart = Len(var_B4.Text)
  loc_1023D86: Else
  loc_1023D8D:   If (var_A0 = CLng(2)) Then
  loc_1023DCE:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1023DE0:   End If
  loc_1023DE0: End If
  loc_1023DEA: If (CLng(Cancel) <> &HD) Then
  loc_1023DF2:   global_80 = &HFF
  loc_1023DF5: End If
  loc_1023DF5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FE4AC0
  'Data Table: 4C5608
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FE48F0: Set var_88 = Me.TopCtrl1
  loc_FE48F6: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_FE490F: If (CStr() = "Browse") Then
  loc_FE4912:   Exit Sub
  loc_FE4913: End If
  loc_FE4930: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FE4933:   Exit Sub
  loc_FE4934: End If
  loc_FE4945: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FE4967:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FE49A1:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FE49C3:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FE49D9:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE49E2:         Set var_110 = Me.FGrid
  loc_FE49FD:       Else
  loc_FE4A10:         Me.FGrid.Rows = 1
  loc_FE4A36:         var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_FE4A3E:         Set var_110 = Me.FGrid
  loc_FE4A6B:         Me.FGrid.FixedRows = 1
  loc_FE4A73:       End If
  loc_FE4A73:     End If
  loc_FE4A76:   Else
  loc_FE4A97:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FE4AA7:   End If
  loc_FE4AAB:   Set var_88 = Me.FGrid
  loc_FE4ABC: End If
  loc_FE4ABC: Exit Sub
  loc_FE4ABD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E4308C
  'Data Table: 4C5608
  Dim var_8C As TextBox
  loc_E43060: Call Proc_288_47_EBAF18()
  loc_E43070: Set var_88 = Me.TxtGrid
  loc_E43076: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4307E: var_8C.Visible = False
  loc_E4308A: Exit Sub
End Sub

Private Sub Form_Load() '1144658
  'Data Table: 4C5608
  Dim var_BC As Variant
  Dim var_AC As String
  Dim var_C0 As String
  Dim Me As Recordset15
  Dim unk_4C561B As Connection15
  Dim var_A8 As Variant
  loc_11442D0: On Error Goto loc_1144613
  loc_11442DD: Set var_A8 = Me.TopCtrl1
  loc_11442E3: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_8001000B("AEDP")
  loc_11442F1: Call 0.Method_arg_50 (var_AC)
  loc_1144301: Set var_A8 = Me.TopCtrl1
  loc_1144307: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030007(CVar(var_AC))
  loc_1144318: global_84 = "ChangeCategory"
  loc_1144338: Me.TopCtrl1.CursorLocation = 3
  loc_1144362: var_C0 = "Select SubCode as Code,Name,Discount,CardNo,CompanyType From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='"
  loc_1144394: CVarUnk
  loc_1144399: VerifyVarObj
  loc_114439F: Set var_A8 = Me.DGMember
  loc_11443A5: LateIdStAd
  loc_11443CF: Me.DGMember.CursorLocation = 3
  loc_11443F9: var_BC = CVar("Select  Code, Name From MemCatMast WHERE (Corporate='N') AND (  LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  Order by Name") 'String
  loc_1144403: ar(var_C0 & MemVar_1F95078 & "') Order By Name"), CVar(MemVar_1F95044), 3 var_BC, CVar(MemVar_1F951E0), 2
  loc_1144417: CVarUnk
  loc_114441C: VerifyVarObj
  loc_1144428: LateIdStAd
  loc_114444A: var_AC = "SELECT MembershipRevMast.Code, MembershipRevMast.Description As Name FROM MembershipRevMast Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_114445A: unk_4C561B.Execute var_AC & "' or LOGSITE_CODE='HO') ORDER BY MembershipRevMast.Description", var_BC, -1
  loc_1144489: CVarUnk
  loc_114448E: VerifyVarObj
  loc_1144494: Set var_A8 = Me.DGRev
  loc_114449A: LateIdStAd
  loc_11444CD: var_C0 = "Select Code as SearchCode,Type,SITE_CODE,LOGSITE_CODE From MemCatChngDetail where Site_Code='" & MemVar_1F95070 & "' And (LOGSITE_CODE='"
  loc_11444E8: Me.DGRev.Open CVar(var_C0 & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By Code"), CVar(MemVar_1F95044), 3
  loc_1144508: Set var_A8 = Me.TopCtrl1
  loc_114450E: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030007(CVar(CStr(5800)))
  loc_1144529: Set var_A8 = Me
  loc_1144532: var_AC = "INI"
  loc_1144540: Call Proc_288_46_F69D60(Proc_5_1_100EC1C(var_AC, var_A8, global_60, 1, -1, var_A8, Me.DGMemType, var_A8), var_A8, New, 3)
  loc_114454B: Call Proc_288_42_11163DC(-1, var_A8)
  loc_1144550: Call Proc_288_45_14C7B60(New)
  loc_1144568: Me.FGrid.Left = CVar(CDbl(700))
  loc_114457F: Me.LblUser.Left = CDbl(500)
  loc_1144596: Me.LblUser.Top = CDbl(7800)
  loc_11445AD: Me.LblLDt.Top = CDbl(8160)
  loc_11445C4: Me.LblLDt.Left = CDbl(500)
  loc_11445D3: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_11445E5: Set var_A8 = Me.FGrid
  loc_11445EB: var_A8.BackColorBkg = CVar(CLng(MemVar_1F951B4))
  loc_11445FC: Call 0.Method_arg_160 (var_A8)
  loc_114460A: Call 0.Method_arg_164 (var_A8)
  loc_1144612: Exit Sub
  loc_1144613: ' Referenced from: 11442D0
  loc_114461B: Set var_A8 = Err()
  loc_1144621: Call 0.Method_arg_2C (var_AC)
  loc_1144642: MsgBox(CVar(var_AC), &H40, "Information", var_EC, var_10C)
  loc_1144655: Exit Sub
  loc_1144656: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E67544
  'Data Table: 4C5608
  loc_E674FB: Set global_64 = Nothing
  loc_E6750D: Set global_68 = Nothing
  loc_E6751F: Set global_60 = Nothing
  loc_E67531: Set global_72 = Nothing
  loc_E6753D: global_52 = 0
  loc_E67540: Exit Sub
End Sub

Private Sub Form_Activate() 'E4BB38
  'Data Table: 4C5608
  loc_E4BB08: On Error Goto loc_E4BB32
  loc_E4BB0F: Set var_88 = Me.TopCtrl1
  loc_E4BB15: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030000()
  loc_E4BB2A: If (CLng(CInt()) = &H2D) Then
  loc_E4BB2D:   Call TopCtrl1_UnknownEvent_15()
  loc_E4BB32:   ' Referenced from: E4BB08
  loc_E4BB32: End If
  loc_E4BB32: Proc_6_60_E63754()
  loc_E4BB37: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E24EF4
  'Data Table: 4C5608
  loc_E24ED9: If (global_52 = &HFF) Then
  loc_E24EE9:   Me.Global.Unload Me
  loc_E24EF1: End If
  loc_E24EF1: Exit Sub
  loc_E24EF2: Loop Until  'do at: E1DEFA
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E89158
  'Data Table: 4C5608
  loc_E890F4: On Error Goto loc_E89114
  loc_E8910B: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E89113: Exit Sub
  loc_E89114: ' Referenced from: E890F4
  loc_E8911C: Set var_88 = Err()
  loc_E89122: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E89143: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E89156: Exit Sub
  loc_E89157: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F07FB8
  'Data Table: 4C5608
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F07ED0: On Error Goto loc_F07FB2
  loc_F07EFA: Call Proc_288_46_F69D60(Proc_5_1_100EC1C("ADD", Me))
  loc_F07F05: Call Proc_288_43_F183B0(global_60)
  loc_F07F1D: Set var_8C = Me.Txt
  loc_F07F23: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_94)
  loc_F07F2B: var_94.Text = CStr(MemVar_1F950EC)
  loc_F07F48: Set var_8C = Me.Txt
  loc_F07F4E: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_94)
  loc_F07F56: var_94.Text = "No"
  loc_F07F6D: Set var_8C = Me.Txt
  loc_F07F73: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_F07F7B: var_94.SetFocus
  loc_F07F94: Me.LblUser.Caption = vbNullString
  loc_F07FA9: Me.LblLDt.Caption = vbNullString
  loc_F07FB1: Exit Sub
  loc_F07FB2: ' Referenced from: F07ED0
  loc_F07FB2: Proc_6_60_E63754(var_94)
  loc_F07FB7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA7A64
  'Data Table: 4C5608
  loc_EA79E8: On Error Goto loc_EA7A5D
  loc_EA7A22: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA7A4C:   Call Proc_288_46_F69D60(Proc_5_1_100EC1C("INI", Me))
  loc_EA7A57:   Call Proc_288_45_14C7B60(global_60)
  loc_EA7A5C: End If
  loc_EA7A5C: Exit Sub
  loc_EA7A5D: ' Referenced from: EA79E8
  loc_EA7A5D: Proc_6_60_E63754()
  loc_EA7A62: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1206E50
  'Data Table: 4C5608
  Dim var_CC As Variant
  Dim var_124 As Variant
  Dim var_BC As Variant
  Dim var_130 As Variant
  Dim var_DC As Variant
  Dim var_13C As String
  Dim var_150 As String
  Dim var_148 As TextBox
  Dim unk_4C561B As Connection15
  Dim var_160 As Fields15
  Dim var_164 As Field20
  Dim var_96 As Integer
  Dim var_120 As Fields15
  Dim var_FC As Variant
  Dim var_128 As String
  Dim var_12C As Fields15
  loc_12069D8: On Error Goto loc_1206DF6
  loc_12069ED: If (Proc_183_56_FE8B08(global_60) = &HFF) Then
  loc_12069F0:   Exit Sub
  loc_12069F1: End If
  loc_1206A28: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_FC, var_11C) = 6) Then
  loc_1206A39:   Set var_120 = Me.Txt
  loc_1206A3F:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(4), var_124)
  loc_1206A47:   var_128 = var_124.Text
  loc_1206A4F:   var_BC = CVar(var_128) 'String
  loc_1206A65:   Set var_12C = Me.Txt
  loc_1206A6B:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(3), var_130)
  loc_1206A7B:   var_DC = CVar(var_130.Text) 'String
  loc_1206A96:   If (IsDate(var_BC) And IsDate(var_DC)) Then
  loc_1206A9F:     var_CC = 0
  loc_1206AC6:     Set var_120 = Me.Txt
  loc_1206ACC:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Select count(*) from MemBill where Memcode='", var_BC, -1)
  loc_1206AE4:     var_13C = var_160 & var_128 & "' and cast('01/' + MthYear As smalldatetime)>=cast('01/' + '"
  loc_1206AF5:     Set var_12C = Me.Txt
  loc_1206AFB:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(3), var_130, var_138, var_13C)
  loc_1206B03:     var_CC = var_130.Text
  loc_1206B13:     var_150 = var_164 & var_138 & "' As smalldatetime) and cast('01/' + MthYear As smalldatetime)<=cast('01/' + '"
  loc_1206B24:     Set var_144 = Me.Txt
  loc_1206B2A:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(4), var_148, var_14C)
  loc_1206B32:     var_150 = var_148.Text
  loc_1206B4B:     unk_4C561B.Execute var_DC & var_14C & "' As smalldatetime)", , 
  loc_1206B53:      = var_124.Tag.Fields
  loc_1206B5B:      = var_160.Item()
  loc_1206B63:      = var_164.Value
  loc_1206B6E:     Proc_6_39_E7D3A0(var_FC)
  loc_1206BB1:     If (var_FC > 0) Then
  loc_1206BCD:       MsgBox("Bill Already Exists of This Member", 0, var_DC, var_FC, var_11C)
  loc_1206BDD:       Exit Sub
  loc_1206BDE:     End If
  loc_1206BDE:   End If
  loc_1206BE0:   var_96 = 0
  loc_1206BEC:   unk_4C561B.BeginTrans var_168
  loc_1206BF3:   var_96 = &HFF
  loc_1206C0A:   var_94 = Me.Recordset15.Bookmark 'Variant
  loc_1206C67:   unk_4C561B.Execute CStr("Delete From MemCatChngDetail Where Code='" & Me.Recordset15.Fields.Item("SearchCode").Value & "'"), var_11C, -1
  loc_1206CCE:   var_FC = "Delete From MemRevenueForPeriod Where Code='" & Me.Recordset15.Fields.Item("SearchCode").Value & "' And Type='" 
  loc_1206CEA:   var_12C = Me.Recordset15.Fields
  loc_1206CFA:   var_11C = var_12C.Item("Type").Value
  loc_1206D0F:   var_128 = CStr(var_FC & var_11C & "'")
  loc_1206D19:   unk_4C561B.Execute var_128, var_1B8, -1
  loc_1206D45:   unk_4C561B.CommitTrans
  loc_1206D4C:   var_96 = 0
  loc_1206D5D:   Me.Recordset15.Requery -1
  loc_1206D80:   If (CVar(Me.Recordset15.RecordCount) >= var_94) Then
  loc_1206D90:     Me.Recordset15.Bookmark = var_94
  loc_1206D98:   Else
  loc_1206DAF:     If (global_60.EOF = 0) Then
  loc_1206DBB:       Me.Recordset15.MoveLast
  loc_1206DC0:     End If
  loc_1206DC0:   End If
  loc_1206DC0:   Call Proc_288_45_14C7B60(var_96, var_144, var_12C)
  loc_1206DE5:   Proc_5_0_1107AD0(&HFF, Me, global_60, 0)
  loc_1206DED: End If
  loc_1206DF2: Set var_9C = Nothing
  loc_1206DF5: Exit Sub
  loc_1206DF6: ' Referenced from: 12069D8
  loc_1206DFC: If (var_96 = &HFF) Then
  loc_1206E05:   unk_4C561B.RollbackTrans
  loc_1206E0A: End If
  loc_1206E12: Set var_120 = Err()
  loc_1206E18: Call 0.Method_arg_2C (var_128, var_96)
  loc_1206E39: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_FC, var_11C)
  loc_1206E4C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '11B9838
  'Data Table: 4C5608
  Dim var_98 As TextBox
  Dim var_C8 As Variant
  Dim var_90 As Variant
  Dim var_12C As String
  Dim var_124 As TextBox
  Dim var_140 As String
  Dim var_138 As TextBox
  Dim unk_4C561B As Connection15
  Dim var_150 As Fields15
  Dim var_154 As Field20
  Dim var_B8 As Variant
  loc_11B9424: On Error Goto loc_11B97F2
  loc_11B9439: If (Proc_183_55_FE8490(global_60) = &HFF) Then
  loc_11B943C:   Exit Sub
  loc_11B943D: End If
  loc_11B9457: If (global_60.RecordCount > 0) Then
  loc_11B9481:   Call Proc_288_46_F69D60(Proc_5_1_100EC1C("EDIT", Me))
  loc_11B9499:   Set var_90 = Me.Txt
  loc_11B949F:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_11B94A7:   var_98.Enabled = False
  loc_11B94C0:   Set var_90 = Me.Txt
  loc_11B94C6:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_98)
  loc_11B94CE:   var_98.Enabled = False
  loc_11B94E5:   Set var_90 = Me.Txt
  loc_11B94EB:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_98)
  loc_11B94F3:   var_98.SetFocus
  loc_11B9502: Else
  loc_11B950D:   var_D8 = "Information"
  loc_11B951D:   var_B8 = "No Record To Edit."
  loc_11B9523:   MsgBox(var_B8, &H40, var_D8, var_F8, var_118)
  loc_11B9533: End If
  loc_11B9541: Set var_90 = Me.Txt
  loc_11B9547: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_98)
  loc_11B954F: var_8C = var_98.Text
  loc_11B9566: If (var_8C <> "Yes") Then
  loc_11B9576:   Set var_90 = Me.Txt
  loc_11B957C:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_11B9584:   var_98.Enabled = False
  loc_11B959D:   Set var_90 = Me.Txt
  loc_11B95A3:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_98)
  loc_11B95AB:   var_98.Enabled = False
  loc_11B95C6:   Me.FGrid.Enabled = False
  loc_11B95DA:   Me.CmdFillGrid.Enabled = False
  loc_11B95E5: Else
  loc_11B95EB:   var_C8 = 0
  loc_11B9612:   Set var_90 = Me.Txt
  loc_11B9618:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98, var_8C, "Select count(*) from MemBill where Memcode='", var_B8, -1)
  loc_11B9630:   var_12C = var_150 & var_8C & "' and cast('01/' + MthYear As smalldatetime)>=cast('01/' + '"
  loc_11B9641:   Set var_120 = Me.Txt
  loc_11B9647:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_124, var_128, var_12C)
  loc_11B964F:   var_C8 = var_124.Text
  loc_11B965F:   var_140 = var_154 & var_128 & "' As smalldatetime) and cast('01/' + MthYear As smalldatetime)<=cast('01/' + '"
  loc_11B9670:   Set var_134 = Me.Txt
  loc_11B9676:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_138, var_13C)
  loc_11B967E:   var_140 = var_138.Text
  loc_11B9697:   unk_4C561B.Execute var_D8 & var_13C & "' As smalldatetime)", global_60, 
  loc_11B969F:    = var_98.Tag.Fields
  loc_11B96A7:    = var_150.Item()
  loc_11B96AF:    = var_154.Value
  loc_11B96BA:   Proc_6_39_E7D3A0(var_F8)
  loc_11B96FD:   If (var_F8 > 0) Then
  loc_11B970D:     Set var_90 = Me.Txt
  loc_11B9713:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_11B971B:     var_98.Enabled = False
  loc_11B9734:     Set var_90 = Me.Txt
  loc_11B973A:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_98)
  loc_11B9742:     var_98.Enabled = False
  loc_11B975B:     Set var_90 = Me.Txt
  loc_11B9761:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_11B9769:     var_98.Enabled = False
  loc_11B9782:     Set var_90 = Me.Txt
  loc_11B9788:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_98)
  loc_11B9790:     var_98.Enabled = True
  loc_11B97AB:     Me.FGrid.Enabled = False
  loc_11B97BF:     Me.CmdFillGrid.Enabled = False
  loc_11B97C7:   End If
  loc_11B97C7: End If
  loc_11B97D4: Me.LblUser.Caption = vbNullString
  loc_11B97E9: Me.LblLDt.Caption = vbNullString
  loc_11B97F1: Exit Sub
  loc_11B97F2: ' Referenced from: 11B9424
  loc_11B97FA: Set var_90 = Err()
  loc_11B9800: Call 0.Method_arg_2C (var_8C)
  loc_11B9821: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_11B9834: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18518
  'Data Table: 4C5608
  loc_E1850D: Me.Global.Unload Me
  loc_E18515: Exit Sub
  loc_E18516: Set var_7000 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F275F0
  'Data Table: 4C5608
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F274F0: On Error Goto loc_F2758B
  loc_F274FF: var_88 = Me.Recordset15.RecordCount
  loc_F2750D: If (var_88 <= 0) Then
  loc_F27516:   var_B8 = "Information"
  loc_F27531:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F27541:   Exit Sub
  loc_F27542: End If
  loc_F27549: var_10C = "Select M.Code As SearchCode,S.Name as MemberName,M.Type,M.RevenueChng,M.FrMonth,M.ToMonth FROM MemCatChngDetail M Left Join SubGroup S On M.MemCode=S.SubCode where (M.LOGSITE_CODE='" & MemVar_1F95078
  loc_F27550: MemVar_1F950E4 = var_10C & "' or M.LOGSITE_CODE='HO') Order by S.Name"
  loc_F2755A: var_10C = "3000,1500,1000,1000,1000,1000"
  loc_F27560: Proc_6_126_F1C850(var_10C)
  loc_F2756E: MemVar_1F95120 = Me
  loc_F27585: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F2758A: Exit Sub
  loc_F2758B: ' Referenced from: F274F0
  loc_F27593: Set var_110 = Err()
  loc_F27599: Call 0.Method_arg_1C (var_88)
  loc_F275AA: If (var_88 <> 0) Then
  loc_F275B5:   Set var_110 = Err()
  loc_F275BB:   Call 0.Method_arg_2C (var_10C)
  loc_F275DC:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F275EF: End If
  loc_F275EF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E43F68
  'Data Table: 4C5608
  loc_E43F58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E43F60: Call Proc_288_45_14C7B60(global_60)
  loc_E43F65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E439F0
  'Data Table: 4C5608
  loc_E439E0: Proc_5_0_1107AD0(&HFF, Me)
  loc_E439E8: Call Proc_288_45_14C7B60(global_60)
  loc_E439ED: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E437FC
  'Data Table: 4C5608
  loc_E437EC: Proc_5_0_1107AD0(&HFF, Me)
  loc_E437F4: Call Proc_288_45_14C7B60(global_60)
  loc_E437F9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E435A4
  'Data Table: 4C5608
  loc_E43594: Proc_5_0_1107AD0(&HFF, Me)
  loc_E4359C: Call Proc_288_45_14C7B60(global_60)
  loc_E435A1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E434E0
  'Data Table: 4C5608
  Dim Me As Recordset15
  loc_E434B7: Me.Requery -1
  loc_E434C7: Me.Requery -1
  loc_E434D7: Me.Requery -1
  loc_E434DC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '161B2F4
  'Data Table: 4C5608
  Dim var_AC As String
  Dim var_E4 As Variant
  Dim var_C4 As String
  Dim unk_4C561B As Connection15
  Dim var_A0 As Variant
  Dim var_A4 As Variant
  Dim var_A8 As Variant
  Dim var_F8 As String
  Dim var_108 As Variant
  Dim var_D4 As Variant
  Dim var_118 As Variant
  Dim var_120 As String
  Dim var_128 As String
  Dim var_12C As String
  Dim var_130 As Variant
  Dim var_134 As Variant
  Dim var_138 As Variant
  Dim var_144 As Variant
  Dim var_8C As Recordset15
  Dim var_C0 As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_150 As Double
  Dim var_11C As TextBox
  Dim var_180 As Variant
  Dim var_160 As Variant
  Dim var_1A0 As Variant
  Dim var_1B0 As Variant
  Dim var_1D0 As Variant
  Dim var_148 As String
  Dim var_140 As Variant
  Dim var_F4 As Variant
  Dim var_24C As Variant
  Dim var_258 As TextBox
  Dim var_244 As String
  Dim var_210 As Variant
  Dim var_230 As Variant
  Dim var_26C As Variant
  Dim var_28C As Variant
  Dim var_29C As Variant
  Dim var_2EC As Variant
  Dim var_30C As Variant
  Dim var_34C As Variant
  Dim var_2DC As Variant
  Dim var_4C4 As Double
  Dim var_250 As String
  loc_1619EF0: On Error Goto loc_161B2A1
  loc_1619EF7: var_86 = CByte(0) 'Byte
  loc_1619F06: Set var_A0 = Me.Txt
  loc_1619F0C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1619F35: If (Proc_6_27_EA61EC(var_A4, "Member Name") = 0) Then
  loc_1619F3F:   Call Txt_GotFocus()
  loc_1619F44:   Exit Sub
  loc_1619F45: End If
  loc_1619F50: Set var_A0 = Me.Txt
  loc_1619F56: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A4)
  loc_1619F7F: If (Proc_6_27_EA61EC(var_A4, "Change Revenue") = 0) Then
  loc_1619F89:   Call Txt_GotFocus()
  loc_1619F8E:   Exit Sub
  loc_1619F8F: End If
  loc_1619F93: Set var_A0 = Me.TopCtrl1
  loc_1619F99: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(CInt(5))
  loc_1619FB2: If (CStr(CInt(0)) = "Add") Then
  loc_1619FBB:   var_E4 = 0
  loc_1619FD8:   var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,8) AS INT)),1)+1 AS MyCode From MemCatChngDetail WHERE isnumeric(SUBSTRING(Code,3,8) )=1 and SITE_CODE='" & MemVar_1F95070
  loc_1619FDF:   var_C4 = CStr(CInt(0)) & "'"
  loc_1619FE8:   unk_4C561B.Execute var_C4, var_C0, -1
  loc_1619FF0:   var_A0 = var_A0.Fields
  loc_1619FF8:   var_E4 = var_A4.Item(var_A4)
  loc_161A000:   var_A8 = var_A8.Value
  loc_161A039:   var_108 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_161A05F:   var_F4 = Format(CStr(var_F4), "00000000")
  loc_161A067:   var_118 = (1 + var_F4)
  loc_161A072:   global_112 = CStr(var_118)
  loc_161A087: Else
  loc_161A0BE:   global_112 = CStr(Me.Recordset15.Fields.Item("SearchCode").Value)
  loc_161A0CF: End If
  loc_161A0D3: Set var_A0 = Me.TopCtrl1
  loc_161A0D9: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(1)
  loc_161A0E1: var_AC = CStr(var_108)
  loc_161A0F7: Set var_A4 = Me.Txt
  loc_161A0FD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A8, var_C4)
  loc_161A105: (var_AC = "Add") = var_A8.Text
  loc_161A117: Set var_11C = Me.TopCtrl1
  loc_161A11D: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005((var_F4 And (var_C4 = "Yes")))
  loc_161A133: var_E4 = 0
  loc_161A161: var_128 = "Select Max(RevenueChng) From MemCatChngDetail  WHERE Code='" & global_112 & "' and SITE_CODE='" & MemVar_1F95070
  loc_161A171: unk_4C561B.Execute var_128 & "'", var_108, -1
  loc_161A179: var_130 = var_130.Fields
  loc_161A181: var_E4 = var_134.Item(var_134)
  loc_161A189: var_138 = var_138.Value
  loc_161A1AD: Set var_140 = Me.Txt
  loc_161A1B3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_144)
  loc_161A1FF: If ( Or (((CStr(var_A4) = "Edit") And (Proc_6_38_E69628(var_118, var_118) = "N")) And (var_144.Text = "Yes"))) Then
  loc_161A220:   Set var_A0 = Me.Txt
  loc_161A226:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, "Select Convert(VarChar(11),Cast('01/' + FrMonth As smalldatetime),106) As FrMonth,Convert(VarChar(11),Cast('01/' + ToMonth As smalldatetime),106) As ToMonth,Type from MemRevenueForPeriod where Memcode='")
  loc_161A22E:   var_C0 = var_A4.Tag
  loc_161A237:   var_C4 = -1 & var_AC
  loc_161A23E:   var_F8 = var_C4 & "'"
  loc_161A247:   unk_4C561B.Execute var_F8, var_A8, 
  loc_161A252:   Set var_8C = var_A8
  loc_161A26A:   ' Referenced from: 161A456
  loc_161A279:   If Not(var_8C.EOF) Then
  loc_161A2A9:     var_94 = CDate(Proc_6_38_E69628(CVar(var_8C.Fields.Item("FrMonth"))))
  loc_161A2CC:     var_A4 = var_8C.Fields.Item("ToMonth")
  loc_161A2DD:     var_AC = Proc_6_38_E69628(CVar(var_A4))
  loc_161A2E2:     var_9C = CDate(var_AC)
  loc_161A2EE:     ' Referenced from: 161A44B
  loc_161A2F5:     If (var_94 <= var_9C) Then
  loc_161A2FB:       var_150 = var_94
  loc_161A312:       Set var_A0 = Me.Txt
  loc_161A318:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4, var_AC, "1/")
  loc_161A33F:       Set var_A8 = Me.Txt
  loc_161A345:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_11C, var_F8, "1/")
  loc_161A34D:       CDate(var_A4.Text & var_AC) = var_11C.Text
  loc_161A373:       If (CDate(var_9C & var_F8) >  > var_94) Then
  loc_161A396:         var_F4 = Format(var_94, "MMM/yyyy")
  loc_161A3B2:         var_A4 = var_8C.Fields.Item("Type")
  loc_161A3C3:         var_AC = Proc_6_38_E69628(CVar(var_A4), 1)
  loc_161A3E4:         var_108 = "Entry For Month " & var_F4 
  loc_161A3ED:         var_118 = var_108 & " As " 
  loc_161A3F4:         var_1A0 = CVar(var_AC) 'String
  loc_161A3F7:         var_1B0 = var_118 & var_1A0 
  loc_161A404:         MsgBox(var_1B0 & " Already Exits.", &H40, "Duplicate Entry", var_210, var_230)
  loc_161A428:         Exit Sub
  loc_161A429:       End If
  loc_161A43B:       var_C0 = DateAdd("m", CDbl(1), var_94)
  loc_161A445:       var_94 = CDate(var_C0)
  loc_161A44B:       GoTo loc_161A2EE
  loc_161A44E:     End If
  loc_161A451:     var_8C.MoveNext
  loc_161A456:     GoTo loc_161A26A
  loc_161A459:   End If
  loc_161A45E:   Set var_8C = Nothing
  loc_161A48E:   Set var_A0 = Me.Txt
  loc_161A494:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, "Select count(*) from MemBill where Memcode='", var_C0, -1, var_138)
  loc_161A49C:   var_140 = var_A4.Tag
  loc_161A4AC:   var_120 = 0 & var_AC & "' and cast('01/' + MthYear As smalldatetime)>=cast('01/' + '"
  loc_161A4BD:   Set var_A8 = Me.Txt
  loc_161A4C3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_11C, var_F8, var_9C & var_F8)
  loc_161A4DB:   var_12C = var_F4 & var_F8 & "' As smalldatetime) and cast('01/' + MthYear As smalldatetime)<=cast('01/' + '"
  loc_161A4EC:   Set var_130 = Me.Txt
  loc_161A4F2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_134, var_128)
  loc_161A4FA:   var_12C = var_134.Text
  loc_161A513:   unk_4C561B.Execute var_94 & var_128 & "' As smalldatetime)", 1, 
  loc_161A51B:    = var_138.Fields
  loc_161A523:    = var_140.Item()
  loc_161A52B:    = var_11C.Text.Value
  loc_161A536:   Proc_6_39_E7D3A0(var_108)
  loc_161A579:   If (var_108 > 0) Then
  loc_161A595:     MsgBox("Bill Already Exists of This Member", 0, var_F4, var_108, var_118)
  loc_161A5A5:     Exit Sub
  loc_161A5A6:   End If
  loc_161A5A6: End If
  loc_161A5B4: Set var_A0 = Me.Txt
  loc_161A5BA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A4)
  loc_161A5D9: If (var_A4.Text = "Yes") Then
  loc_161A5E7:   Set var_A0 = Me.Txt
  loc_161A5ED:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4)
  loc_161A616:   If (Proc_6_27_EA61EC(var_A4, "App. Month From") = 0) Then
  loc_161A620:     Call Txt_GotFocus()
  loc_161A625:     Exit Sub
  loc_161A626:   End If
  loc_161A631:   Set var_A0 = Me.Txt
  loc_161A637:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4)
  loc_161A660:   If (Proc_6_27_EA61EC(var_A4, "App. Month To") = 0) Then
  loc_161A66A:     Call Txt_GotFocus()
  loc_161A66F:     Exit Sub
  loc_161A670:   End If
  loc_161A695:   For var_234 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_234 'Integer
  loc_161A6A1:     If (var_88 = 1) Then
  loc_161A6A8:       var_D4 = CVar(CLng(var_88)) 'Long
  loc_161A6B0:       var_160 = CVar(CLng(5)) 'Long
  loc_161A6CA:       var_F4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_161A6D0:       var_108 = Trim(var_F4)
  loc_161A6EC:       If (var_108 = vbNullString) Then
  loc_161A708:         MsgBox("Define revenue ", &H40, var_F4, var_108, var_118)
  loc_161A718:         Exit Sub
  loc_161A719:       End If
  loc_161A719:     End If
  loc_161A71D:     var_D4 = CVar(CLng(var_88)) 'Long
  loc_161A725:     var_160 = CVar(CLng(5)) 'Long
  loc_161A761:     If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_161A768:       var_D4 = CVar(CLng(var_88)) 'Long
  loc_161A770:       var_160 = CVar(CLng(3)) 'Long
  loc_161A7AC:       If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_161A7B3:         var_D4 = CVar(CLng(var_88)) 'Long
  loc_161A7BB:         var_160 = CVar(CLng(1)) 'Long
  loc_161A802:         MsgBox("Fill Nature For Revenue " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_1A0, var_1B0)
  loc_161A81F:         Set var_A0 = Me.FGrid
  loc_161A830:         Exit Sub
  loc_161A831:       End If
  loc_161A835:       var_D4 = CVar(CLng(var_88)) 'Long
  loc_161A83D:       var_160 = CVar(CLng(4)) 'Long
  loc_161A879:       If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_161A880:         var_D4 = CVar(CLng(var_88)) 'Long
  loc_161A888:         var_160 = CVar(CLng(1)) 'Long
  loc_161A8CF:         MsgBox("Fill Month For Revenue " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_1A0, var_1B0)
  loc_161A8EC:         Set var_A0 = Me.FGrid
  loc_161A8FD:         Exit Sub
  loc_161A8FE:       End If
  loc_161A8FE:     End If
  loc_161A901:   Next var_234 'Integer
  loc_161A906: End If
  loc_161A90F: unk_4C561B.BeginTrans var_238
  loc_161A918: var_86 = CByte(1) 'Byte
  loc_161A920: Set var_A0 = Me.TopCtrl1
  loc_161A926: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_161A93F: If (CStr() = "Add") Then
  loc_161A950:   Set var_A0 = Me.Txt
  loc_161A956:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4)
  loc_161A971:   Set var_A8 = Me.Txt
  loc_161A977:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_11C)
  loc_161A998:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_134)
  loc_161A9B3:   Set var_138 = Me.Txt
  loc_161A9B9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_140)
  loc_161A9D6:   var_C0 = "Y"
  loc_161A9FE:   Set var_144 = Me.Txt
  loc_161AA04:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_24C)
  loc_161AA1F:   Set var_254 = Me.Txt
  loc_161AA25:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_258)
  loc_161AA2D:   var_25C = var_258.Text
  loc_161AA3D:   Proc_6_7_F26918(var_2DC)
  loc_161AA4D:   Set var_350 = Me.Txt
  loc_161AA53:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_354)
  loc_161AA62:   Proc_6_7_F26918(var_374, CVar(var_354))
  loc_161AA7E:   var_AC = "Insert Into MemCatChngDetail(Code,Type,MemCode,OldCat,NewCat,RevenueChng,FrMonth,ToMonth,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,ChngDate) Values('" & global_112
  loc_161AA8F:   var_F8 = var_AC & "','" & global_84
  loc_161AAAB:   var_148 = var_F8 & "','" & var_A4.Tag & "','" & var_11C.Tag
  loc_161AAB9:   var_244 = var_148 & "','" & var_134.Tag
  loc_161AAF5:   var_26C = CVar(var_244 & "','") & IIf((var_140.Text = "Yes"), var_C0, "N") & "','" & CVar(var_24C.Text) & "','" & CVar(var_25C) & "','" 
  loc_161AB12:   var_29C = var_26C & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) 
  loc_161AB3E:   var_34C = var_29C & "'," & var_2DC & ",'A','" & CVar(MemVar_1F95078) & "'," 
  loc_161AB5C:   unk_4C561B.Execute CStr(var_34C & var_374 & ")"), var_3C8, -1
  loc_161ABF8:   Set var_A0 = Me.Txt
  loc_161ABFE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4, var_AC, "UPDATE SubGroup SET CompanyType='", var_C0)
  loc_161AC06:   -1 = var_A4.Tag
  loc_161AC16:   var_120 = Me.Txt & var_AC & "' WHERE SubCode='"
  loc_161AC27:   Set var_A8 = Me.Txt
  loc_161AC2D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_11C, var_F8)
  loc_161AC35:   var_120 = var_11C.Tag
  loc_161AC4E:   unk_4C561B.Execute var_3CC & var_F8 & "'", CVar(Proc_6_15_EF37AC()), 
  loc_161AC75: Else
  loc_161AC8F:   If (global_60.RecordCount > 0) Then
  loc_161ACCA:     unk_4C561B.Execute "Delete From MemRevenueForPeriod Where Code='" & global_112 & "' And Type='" & global_84 & "'", var_C0, -1
  loc_161ACE0:   End If
  loc_161ACF4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A4)
  loc_161AD39:   Set var_A8 = Me.Txt
  loc_161AD3F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_11C)
  loc_161AD5A:   Set var_130 = Me.Txt
  loc_161AD60:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_134)
  loc_161AD72:   var_28C = CVar(Proc_6_15_EF37AC(Me.Txt)) 'String
  loc_161AD78:   Proc_6_7_F26918(var_29C)
  loc_161ADA2:   var_1A0 = CVar(var_11C.Text) 'String
  loc_161ADAE:   var_1D0 = "UPDATE MemCatChngDetail SET RevenueChng='" & IIf((var_A4.Text = "Yes"), "Y", "N") & "',FrMonth='" & var_1A0 & "',ToMonth='" 
  loc_161ADB8:   var_210 = var_1D0 & CVar(var_134.Text) 
  loc_161ADF7:   var_2EC = var_210 & "',U_name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_29C & ",U_AE='E',Site_Code='" & CVar(MemVar_1F95070) & "' WHERE Code='" 
  loc_161AE04:   var_30C = var_2EC & CVar(global_112) 
  loc_161AE1B:   unk_4C561B.Execute CStr(var_30C & "'"), var_34C, -1
  loc_161AE69: End If
  loc_161AE8E: For var_3D0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_3D0 'Integer
  loc_161AE98:   var_D4 = CVar(CLng(var_88)) 'Long
  loc_161AEA0:   var_160 = CVar(CLng(5)) 'Long
  loc_161AEDC:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_161AEE3:     var_D4 = CVar(CLng(var_88)) 'Long
  loc_161AEFA:     var_C0 = Me.FGrid.TextMatrix)
  loc_161AF14:     Set var_A4 = Me.Txt
  loc_161AF1A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_148, var_C0, CVar(CLng(5)), var_D4)
  loc_161AF22:     var_160 = var_A8.Tag
  loc_161AF35:     Set var_11C = Me.Txt
  loc_161AF3B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_130, var_244, var_D4)
  loc_161AF43:     1 = var_130.Text
  loc_161AF56:     Set var_134 = Me.Txt
  loc_161AF5C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_138, var_25C)
  loc_161AF64:     var_138 = var_138.Text
  loc_161AF6D:     var_180 = CVar(CLng(var_88)) 'Long
  loc_161AF84:     var_F4 = Me.FGrid.TextMatrix)
  loc_161AF97:     var_4C4 = Val(CStr(var_F4))
  loc_161AFB5:     var_108 = Me.FGrid.TextMatrix)
  loc_161AFDC:     var_118 = Me.FGrid.TextMatrix)
  loc_161AFF3:     Proc_6_7_F26918(var_1A0, CVar(Proc_6_15_EF37AC(var_118, CVar(CLng(4)), CVar(CLng(var_88)), var_108, CVar(CLng(3)))), CVar(CLng(var_88)), var_4C4)
  loc_161AFFC:     Set var_254 = Me.TopCtrl1
  loc_161B002:     Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(CVar(CLng(2)))
  loc_161B04D:     var_AC = "Insert Into MemRevenueForPeriod(Code,Type,RevCode,MemCode,FrMonth,ToMonth,Amount,Nature,AppMonth," & "U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) "
  loc_161B09D:     var_250 = var_AC & " Values ('" & global_112 & "','" & global_84 & "','" & CStr(var_C0) & "','" & var_148 & "','" & var_244
  loc_161B0F7:     var_1B0 = CVar(var_250 & "','" & var_25C & "'," & CStr(var_4C4) & ",'" & CStr(var_108) & "','" & CStr(var_118) & "','" & MemVar_1F950C8 & "',") 'String
  loc_161B133:     var_2DC = var_1B0 & var_1A0 & ",'" & IIf((CStr(var_210) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) 
  loc_161B14A:     unk_4C561B.Execute CStr(var_2DC & "')"), var_30C, -1
  loc_161B1D8:   End If
  loc_161B1DB: Next var_3D0 'Integer
  loc_161B1E6: unk_4C561B.CommitTrans
  loc_161B1EF: var_86 = CByte(0) 'Byte
  loc_161B201: Me.Recordset15.Requery -1
  loc_161B231: Me.Recordset15.Find "SearchCode ='" & global_112 & "'", 0, 1
  loc_161B241: Set var_A0 = Me.TopCtrl1
  loc_161B247: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_D4)
  loc_161B260: If (CStr() = "Add") Then
  loc_161B263:   Call TopCtrl1_UnknownEvent_A()
  loc_161B268:   Exit Sub
  loc_161B269: End If
  loc_161B282: var_AC = "INI"
  loc_161B290: Call Proc_288_46_F69D60(Proc_5_1_100EC1C(var_AC, Me))
  loc_161B29B: Call Proc_288_45_14C7B60(global_60)
  loc_161B2A0: Exit Sub
  loc_161B2A1: ' Referenced from: 1619EF0
  loc_161B2AA: If (CInt(var_86) = 1) Then
  loc_161B2B3:   unk_4C561B.RollbackTrans
  loc_161B2B8: End If
  loc_161B2C0: Set var_A0 = Err()
  loc_161B2C6: Call 0.Method_arg_2C (var_AC)
  loc_161B2DF: MsgBox(CVar(var_AC), &H10, var_F4, var_108, var_118)
  loc_161B2F2: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1175654
  'Data Table: 4C5608
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_1175292: Set var_88 = Me.Txt
  loc_1175298: Call 0.Method_Txt_GotFocus0 (Index)
  loc_11752A6: Proc_6_74_E23240(var_8C)
  loc_11752B2: Call Proc_288_47_EBAF18(var_8C)
  loc_11752BA: var_92 = Index
  loc_11752C5: If (var_92 = CInt(0)) Then
  loc_11752DF:   If (Me.RecordCount > 0) Then
  loc_11752ED:     Set var_8C = Me.FGPoint
  loc_1175305:     Proc_6_137_1192FDC(Me.DGMember, global_64, Index)
  loc_1175313:   End If
  loc_1175361:   Set var_88 = Me.Txt
  loc_1175367:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_117536F:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1175387:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_117538A:     Exit Sub
  loc_117538B:   End If
  loc_1175398:   Set var_88 = Me.Txt
  loc_117539E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11753B1:   global_76 = var_8C.Tag
  loc_11753CC:   Set var_88 = Me.Txt
  loc_11753D2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11753DA:   var_A0 = var_8C.Text
  loc_11753E2:   var_D4 = CVar(var_A0) 'String
  loc_1175427:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1175430:     Me.MoveFirst
  loc_1175455:     Set var_88 = Me.Txt
  loc_117545B:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1175463:     0 = var_8C.Text
  loc_1175471:     Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_1175487:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_117549F:   End If
  loc_11754A2: Else
  loc_11754AA:   If (var_92 = CInt(2)) Then
  loc_11754C4:     If (Me.RecordCount > 0) Then
  loc_11754D2:       Set var_8C = Me.FGPoint
  loc_11754EA:       Proc_6_137_1192FDC(Me.DGMemType, global_68)
  loc_11754F8:     End If
  loc_1175546:     Set var_88 = Me.Txt
  loc_117554C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1175554:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_117556C:     If (Index Or (var_A0 = vbNullString)) Then
  loc_117556F:       Exit Sub
  loc_1175570:     End If
  loc_117557D:     Set var_88 = Me.Txt
  loc_1175583:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_117558B:     var_A0 = var_8C.Text
  loc_1175593:     var_D4 = CVar(var_A0) 'String
  loc_11755D8:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_11755E1:       Me.MoveFirst
  loc_1175606:       Set var_88 = Me.Txt
  loc_117560C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1175614:       0 = var_8C.Text
  loc_1175622:       Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_1175638:       Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_1175650:     End If
  loc_1175650:   End If
  loc_1175650: End If
  loc_1175650: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FBB884
  'Data Table: 4C5608
  Dim var_86 As Integer
  Dim var_98 As DataGrid
  loc_FBB6F2: If (CLng(Shift) = &H1B) Then
  loc_FBB6F5:   Call Proc_288_47_EBAF18()
  loc_FBB6FA:   Exit Sub
  loc_FBB6FB: End If
  loc_FBB6FE: var_86 = KeyCode
  loc_FBB709: If (var_86 = CInt(0)) Then
  loc_FBB724:   Set var_9C = Nothing
  loc_FBB72F:   Set var_98 = Nothing
  loc_FBB75D:   Proc_6_69_134A630(Me.DGMember, Me.Txt, KeyCode, global_64, Shift, 0)
  loc_FBB774: Else
  loc_FBB77C:   If (var_86 = CInt(2)) Then
  loc_FBB797:     Set var_9C = Nothing
  loc_FBB7D0:     Proc_6_69_134A630(Me.DGMemType, Me.Txt, KeyCode, global_68, Shift, 0, 1, Nothing)
  loc_FBB7E4:   End If
  loc_FBB7E4: End If
  loc_FBB815: Set var_98 = Me.DGRev
  loc_FBB83A: If (((CBool(Me.DGMember.Visible) = 0) And (CBool(Me.DGMemType.Visible) = 0)) And (CBool(var_98.Visible) = 0)) Then
  loc_FBB852:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FBB85B:     Proc_6_75_E5335C(Shift, arg_14, var_9C, 0, 1)
  loc_FBB860:   End If
  loc_FBB875:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_FBB87E:     Proc_6_76_E533C8(Shift, arg_14, var_98)
  loc_FBB883:   End If
  loc_FBB883: End If
  loc_FBB883: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EF2C0C
  'Data Table: 4C5608
  Dim var_D0 As TextBox
  Dim arg_10 As Integer
  loc_EF2B47: Proc_6_58_E06050(arg_10)
  loc_EF2B5A: If (KeyAscii = CInt(5)) Then
  loc_EF2B86:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_EF2B96:     Set var_CC = Me.Txt
  loc_EF2B9C:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EF2BA4:     var_D0.Text = "Yes"
  loc_EF2BB3:   Else
  loc_EF2BDC:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_EF2BEC:       Set var_CC = Me.Txt
  loc_EF2BF2:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EF2BFA:       var_D0.Text = "No"
  loc_EF2C06:     End If
  loc_EF2C06:   End If
  loc_EF2C08:   arg_10 = 0
  loc_EF2C0B: End If
  loc_EF2C0B: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F17508
  'Data Table: 4C5608
  Dim var_86 As Integer
  loc_F1741B: var_86 = KeyCode
  loc_F17426: If (var_86 = CInt(0)) Then
  loc_F17445:   If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_F17459:     var_A4 = "Name"
  loc_F1747D:     Proc_6_68_12A2818(Me.DGMember, Me.Txt, KeyCode, global_64)
  loc_F17490:   End If
  loc_F17493: Else
  loc_F1749B:   If (var_86 = CInt(2)) Then
  loc_F174BA:     If (CBool(Me.DGMemType.Visible) = &HFF) Then
  loc_F174CE:       var_A4 = "Name"
  loc_F174F2:       Proc_6_68_12A2818(Me.DGMemType, Me.Txt, KeyCode, global_68, Shift)
  loc_F17505:     End If
  loc_F17505:   End If
  loc_F17505: End If
  loc_F17505: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4DC84
  'Data Table: 4C5608
  loc_E4DC62: Set var_88 = Me.Txt
  loc_E4DC68: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4DC76: Proc_6_73_E23294(var_8C)
  loc_E4DC82: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '151F044
  'Data Table: 4C5608
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A0 As String
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_D0 As String
  Dim var_D4 As String
  Dim unk_4C561B As Connection15
  Dim var_9C As Recordset15
  Dim var_108 As Variant
  Dim var_124 As String
  Dim var_120 As Variant
  Dim var_F4 As Variant
  Dim var_E4 As Integer
  Dim var_14C As String
  Dim var_11C As Variant
  Dim var_150 As String
  Dim var_160 As Field20
  loc_151E11B: var_8E = Cancel
  loc_151E126: If (var_8E = CInt(0)) Then
  loc_151E134:   Set var_94 = Me.Txt
  loc_151E13A:   Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_151E142:   var_A0 = "Member Name"
  loc_151E163:   If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_151E171:     Set var_94 = Me.Txt
  loc_151E177:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_151E17F:     var_98.SetFocus
  loc_151E18D:     arg_10 = &HFF
  loc_151E190:     Exit Sub
  loc_151E191:   End If
  loc_151E1DF:   Set var_94 = Me.Txt
  loc_151E1E5:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_151E1ED:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_151E205:   If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_151E215:     Set var_94 = Me.Txt
  loc_151E21B:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151E223:     var_98.Text = vbNullString
  loc_151E23C:     Set var_94 = Me.Txt
  loc_151E242:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151E24A:     var_98.Tag = vbNullString
  loc_151E264:     Set var_94 = Me.Txt
  loc_151E26A:     Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_151E272:     var_98.Text = vbNullString
  loc_151E28C:     Set var_94 = Me.Txt
  loc_151E292:     Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_151E29A:     var_98.Tag = vbNullString
  loc_151E2A9:   Else
  loc_151E2E4:     Set var_9C = Me.Txt
  loc_151E2EA:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_151E2F2:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_151E343:     Set var_9C = Me.Txt
  loc_151E349:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_151E351:     var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_151E3B1:     var_A0 = Proc_6_38_E69628(CVar(Me.Fields.Item("CompanyType")), "Select Max(Name) From MemCatMast WHERE Code='", var_F4, -1, var_9C)
  loc_151E3BC:     var_D4 = var_BC & CStr(Me.Fields.Item("Code").Value) & "'"
  loc_151E3C5:     unk_4C561B.Execute var_D4, 0, var_108
  loc_151E3CD:     var_118 = var_9C.Fields
  loc_151E3D5:      = var_BC.Item(var_8E)
  loc_151E3DD:      = var_108.Value
  loc_151E3F8:     Set var_11C = Me.Txt
  loc_151E3FE:     Call 0.Method_Txt_Validate0 (CInt(1), var_120)
  loc_151E406:     var_120.Text = Proc_6_38_E69628(var_118)
  loc_151E448:     var_98 = Me.Fields.Item("CompanyType")
  loc_151E467:     Set var_9C = Me.Txt
  loc_151E46D:     Call 0.Method_Txt_Validate0 (CInt(1), var_BC)
  loc_151E475:     var_BC.Tag = Proc_6_38_E69628(CVar(var_98))
  loc_151E489:   End If
  loc_151E49C:   Set var_94 = Me.Txt
  loc_151E4A2:   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151E4AA:   var_A0 = var_98.Tag
  loc_151E4BE:   If (global_76 <> var_A0) Then
  loc_151E4CF:     Set var_94 = Me.Txt
  loc_151E4D5:     Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_151E4DD:     var_98.Text = vbNullString
  loc_151E4F7:     Set var_94 = Me.Txt
  loc_151E4FD:     Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_151E505:     var_98.Text = vbNullString
  loc_151E524:     Me.FGrid.Rows = 1
  loc_151E541:     var_F4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_151E549:     Set var_98 = Me.FGrid
  loc_151E578:     Me.FGrid.FixedRows = 1
  loc_151E580:   End If
  loc_151E583: Else
  loc_151E58B:   If (var_8E = CInt(5)) Then
  loc_151E599:     Set var_94 = Me.Txt
  loc_151E59F:     Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_151E5C8:     If (Trim(CVar(var_98)) = vbNullString) Then
  loc_151E5CD:       arg_10 = &HFF
  loc_151E5D0:       Exit Sub
  loc_151E5D1:     End If
  loc_151E5DF:     Set var_94 = Me.Txt
  loc_151E5E5:     Call 0.Method_Txt_Validate0 (CInt(5), var_98, var_A0)
  loc_151E5ED:     arg_10 = var_98.Text
  loc_151E604:     If (var_A0 <> "Yes") Then
  loc_151E614:       Set var_94 = Me.Txt
  loc_151E61A:       Call 0.Method_Txt_Validate0 (CInt(3), var_98, 0)
  loc_151E622:       var_98.Enabled = FGrid.DispID_10000
  loc_151E63B:       Set var_94 = Me.Txt
  loc_151E641:       Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_151E649:       var_98.Enabled = False
  loc_151E663:       Set var_94 = Me.Txt
  loc_151E669:       Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_151E671:       var_98.Text = vbNullString
  loc_151E68B:       Set var_94 = Me.Txt
  loc_151E691:       Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_151E699:       var_98.Text = vbNullString
  loc_151E6B8:       Me.FGrid.Rows = 1
  loc_151E6D5:       var_F4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_151E6DD:       Set var_98 = Me.FGrid
  loc_151E70C:       Me.FGrid.FixedRows = 1
  loc_151E723:       Me.FGrid.Enabled = False
  loc_151E737:       Me.CmdFillGrid.Enabled = False
  loc_151E742:     Else
  loc_151E74F:       Set var_94 = Me.Txt
  loc_151E755:       Call 0.Method_Txt_Validate0 (CInt(3), var_98, &HFF)
  loc_151E75D:       var_98.Enabled = FGrid.DispID_10000
  loc_151E776:       Set var_94 = Me.Txt
  loc_151E77C:       Call 0.Method_Txt_Validate0 (CInt(4), var_98, &HFF)
  loc_151E784:       var_98.Enabled = var_F4
  loc_151E79E:       Me.FGrid.Enabled = True
  loc_151E7B2:       Me.CmdFillGrid.Enabled = True
  loc_151E7C5:       Set var_94 = Me.Txt
  loc_151E7CB:       Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_151E7D3:       var_98.SetFocus
  loc_151E7DF:     End If
  loc_151E7E2:   Else
  loc_151E7EA:     If (var_8E = CInt(4)) Then
  loc_151E7FA:       Set var_94 = Me.Txt
  loc_151E800:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151E81F:       If (var_98.Text = vbNullString) Then
  loc_151E83B:         MsgBox("App. Month To is a Required Field", 0, var_F4, var_118, var_144)
  loc_151E84D:         arg_10 = &HFF
  loc_151E850:         Exit Sub
  loc_151E851:       End If
  loc_151E85B:       Set var_94 = Me.Txt
  loc_151E861:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151E881:       Set var_BC = Me.Txt
  loc_151E887:       Call 0.Method_Txt_Validate0 (Cancel, var_108)
  loc_151E88F:       var_108.Text = Proc_6_120_133AEC8(var_98, arg_10)
  loc_151E8B0:       Set var_94 = Me.Txt
  loc_151E8B6:       Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_151E8BE:       var_A0 = var_98.Text
  loc_151E8C6:       var_CC = CVar(var_A0) 'String
  loc_151E8D8:       If IsDate(var_CC) Then
  loc_151E8E9:         Set var_94 = Me.Txt
  loc_151E8EF:         Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_151E909:         If (var_98.Enabled = &HFF) Then
  loc_151E912:           var_E4 = 0
  loc_151E939:           Set var_94 = Me.Txt
  loc_151E93F:           Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0, "Select count(*) from MemBill where Memcode='", var_CC, -1)
  loc_151E957:           var_124 = var_11C & var_A0 & "' and cast('01/' + MthYear As smalldatetime)=cast('01/' + '"
  loc_151E968:           Set var_9C = Me.Txt
  loc_151E96E:           Call 0.Method_Txt_Validate0 (CInt(4), var_BC, var_D4, Proc_6_38_E69628(var_118))
  loc_151E976:           var_E4 = var_BC.Text
  loc_151E986:           var_14C = var_120 & var_D4 & "' As smalldatetime)"
  loc_151E98F:           unk_4C561B.Execute var_14C, var_F4, var_F4
  loc_151E997:            = var_98.Tag.Fields
  loc_151E99F:            = var_11C.Item()
  loc_151E9A7:            = var_120.Value
  loc_151E9B2:           Proc_6_39_E7D3A0(var_118)
  loc_151E9EB:           If (var_118 > 0) Then
  loc_151EA01:             var_CC = "Bill Already Exists For Month For Perticular Member"
  loc_151EA07:             MsgBox(var_CC, 0, var_F4, var_118, var_144)
  loc_151EA19:             arg_10 = &HFF
  loc_151EA1C:             Exit Sub
  loc_151EA1D:           End If
  loc_151EA20:         Else
  loc_151EA2E:           Set var_94 = Me.Txt
  loc_151EA34:           Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0)
  loc_151EA3C:           arg_10 = var_98.Tag
  loc_151EA4F:           Set var_11C = Me.Txt
  loc_151EA55:           Call 0.Method_Txt_Validate0 (CInt(4), var_120)
  loc_151EA68:           var_E4 = 0
  loc_151EA85:           var_D0 = "Select Max(cast('01/' + MthYear As smalldatetime)) from MemBill where Memcode='" & var_A0
  loc_151EA8C:           var_D4 = var_11C & var_A0 & "'"
  loc_151EA95:           unk_4C561B.Execute var_D4, var_CC, -1
  loc_151EA9D:           var_9C = var_9C.Fields
  loc_151EAA5:           var_E4 = var_BC.Item(var_BC)
  loc_151EAAD:           var_108 = var_108.Value
  loc_151EB1D:           Set var_94 = Me.Txt
  loc_151EB23:           Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0, "Select count(*) from MemBill where Memcode='", var_CC, -1, var_120)
  loc_151EB34:           var_D0 = 0 & var_A0
  loc_151EB3B:           var_124 = var_D0 & "' and cast('01/' + MthYear As smalldatetime)=cast('01/' + '"
  loc_151EB4C:           Set var_9C = Me.Txt
  loc_151EB52:           Call 0.Method_Txt_Validate0 (CInt(4), var_BC, var_D4, var_120.Text, var_160)
  loc_151EB5A:           var_F4 = var_BC.Text
  loc_151EB6A:           var_150 = CDate(CDbl((CDate(var_F4) <> CDate("01/" & var_120.Text)))) & var_D4 & "' As smalldatetime) And cast('01/' + MthYear As smalldatetime)<>(Select Max(cast('01/' + MthYear As smalldatetime)) from MemBill where Memcode='"
  loc_151EB7B:           Set var_108 = Me.Txt
  loc_151EB81:           Call 0.Method_Txt_Validate0 (CInt(0), var_11C, var_14C)
  loc_151EB89:           var_150 = var_11C.Tag
  loc_151EBA2:           unk_4C561B.Execute var_F4 & var_14C & "')", var_F4, 
  loc_151EBAA:            = var_120.Fields
  loc_151EBB2:            = var_98.Tag.Item()
  loc_151EBBA:            = var_160.Value
  loc_151EBC5:           Proc_6_39_E7D3A0(var_118)
  loc_151EC08:           If (var_118 > 0) Then
  loc_151EC24:             MsgBox("Bill Already Exists For Month For Perticular Member", 0, var_F4, var_118, var_144)
  loc_151EC36:             arg_10 = &HFF
  loc_151EC39:             Exit Sub
  loc_151EC3A:           End If
  loc_151EC3A:         End If
  loc_151EC3A:       End If
  loc_151EC48:       Set var_94 = Me.Txt
  loc_151EC4E:       Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_A0)
  loc_151EC56:       arg_10 = var_98.Text
  loc_151EC74:       Set var_9C = Me.Txt
  loc_151EC7A:       Call 0.Method_Txt_Validate0 (CInt(3), var_BC, var_D0)
  loc_151EC82:       IsDate(CVar(var_A0)) = var_BC.Text
  loc_151EC8A:       var_F4 = CVar(var_D0) 'String
  loc_151ECA5:       If (var_F4 And IsDate(var_F4)) Then
  loc_151ECB6:         Set var_9C = Me.Txt
  loc_151ECBC:         Call 0.Method_Txt_Validate0 (CInt(3), var_BC)
  loc_151ECD7:         Set var_94 = Me.Txt
  loc_151ECDD:         Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_151ED07:         If (CDate(var_98.Text) < CDate(var_BC.Text)) Then
  loc_151ED23:           MsgBox("App Month To Can't Be Less Than App Month From", 0, var_F4, var_118, var_144)
  loc_151ED35:           arg_10 = &HFF
  loc_151ED38:           Exit Sub
  loc_151ED39:         End If
  loc_151ED39:       End If
  loc_151ED3C:     Else
  loc_151ED44:       If (var_8E = CInt(3)) Then
  loc_151ED54:         Set var_94 = Me.Txt
  loc_151ED5A:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151ED79:         If (var_98.Text = vbNullString) Then
  loc_151ED95:           MsgBox("App. Month From is a Required Field", 0, var_F4, var_118, var_144)
  loc_151EDA7:           arg_10 = &HFF
  loc_151EDAA:           Exit Sub
  loc_151EDAB:         End If
  loc_151EDB5:         Set var_94 = Me.Txt
  loc_151EDBB:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151EDDB:         Set var_BC = Me.Txt
  loc_151EDE1:         Call 0.Method_Txt_Validate0 (Cancel, var_108)
  loc_151EDE9:         var_108.Text = Proc_6_120_133AEC8(var_98, arg_10)
  loc_151EE09:         Set var_94 = Me.Txt
  loc_151EE0F:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151EE17:         var_A0 = var_98.Text
  loc_151EE1F:         var_CC = CVar(var_A0) 'String
  loc_151EE31:         If IsDate(var_CC) Then
  loc_151EE3A:           var_E4 = 0
  loc_151EE61:           Set var_94 = Me.Txt
  loc_151EE67:           Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0, "Select count(*) from MemBill where Memcode='", var_CC, -1)
  loc_151EE78:           var_D0 = var_11C & var_A0
  loc_151EE7F:           var_124 = var_D0 & "' and cast('01/' + MthYear As smalldatetime)=cast('01/' + '"
  loc_151EE8F:           Set var_9C = Me.Txt
  loc_151EE95:           Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_D4, var_120.Text)
  loc_151EE9D:           var_E4 = var_BC.Text
  loc_151EEB6:           unk_4C561B.Execute var_120 & var_D4 & "' As smalldatetime)", var_F4, arg_10
  loc_151EEBE:            = var_98.Tag.Fields
  loc_151EEC6:            = var_11C.Item()
  loc_151EECE:            = var_120.Value
  loc_151EED9:           Proc_6_39_E7D3A0(var_118)
  loc_151EF12:           If (var_118 > 0) Then
  loc_151EF2E:             MsgBox("Bill Already Exists For Month For Perticular Member", 0, var_F4, var_118, var_144)
  loc_151EF40:             arg_10 = &HFF
  loc_151EF43:             Exit Sub
  loc_151EF44:           End If
  loc_151EF44:         End If
  loc_151EF52:         Set var_94 = Me.Txt
  loc_151EF58:         Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_A0)
  loc_151EF60:         arg_10 = var_98.Text
  loc_151EF7E:         Set var_9C = Me.Txt
  loc_151EF84:         Call 0.Method_Txt_Validate0 (CInt(3), var_BC, var_D0)
  loc_151EF8C:         IsDate(CVar(var_A0)) = var_BC.Text
  loc_151EF94:         var_F4 = CVar(var_D0) 'String
  loc_151EFAF:         If (var_F4 And IsDate(var_F4)) Then
  loc_151EFC0:           Set var_9C = Me.Txt
  loc_151EFC6:           Call 0.Method_Txt_Validate0 (CInt(3), var_BC)
  loc_151EFE1:           Set var_94 = Me.Txt
  loc_151EFE7:           Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_151F011:           If (CDate(var_98.Text) < CDate(var_BC.Text)) Then
  loc_151F02D:             MsgBox("App Month To Can't Be Less Than App Month From", 0, var_F4, var_118, var_144)
  loc_151F03F:             arg_10 = &HFF
  loc_151F042:             Exit Sub
  loc_151F043:           End If
  loc_151F043:         End If
  loc_151F043:       End If
  loc_151F043:     End If
  loc_151F043:   End If
  loc_151F043: End If
  loc_151F043: Exit Sub
End Sub

Public Function global_52Get() '4C65F8
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4C6607
  global_52 = Value
End Sub

Public Function global_56Get() '4C6616
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '4C6625
  global_56 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E9D720
  'Data Table: 4C5608
  loc_E9D6A6: On Error Goto loc_E9D719
  loc_E9D6B2: Me.Recordset15.MoveFirst
  loc_E9D6DF: Me.Recordset15.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E9D70B: Proc_5_0_1107AD0(&HFF, Me, global_60)
  loc_E9D713: Call Proc_288_45_14C7B60(0)
  loc_E9D718: Exit Sub
  loc_E9D719: ' Referenced from: E9D6A6
  loc_E9D719: Proc_6_60_E63754(var_A0)
  loc_E9D71E: Exit Sub
End Sub

Public Sub Proc_288_42_11163DC
  'Data Table: 4C5608
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  Dim var_104 As TextBox
  Dim var_10C As DataGrid
  Dim var_110 As TextBox
  loc_1116090: Set var_88 = Me.FGrid
  loc_111609F: var_88.Height = CVar(CDbl(4250))
  loc_11160B0: var_88.Width = CVar(CDbl(8500))
  loc_11160C1: var_88.Cols = 6
  loc_11160D2: var_88.Rows = 2
  loc_11160EB: global_108 = CStr(CLng(var_88.BackColor))
  loc_11160F8: var_98 = CVar(CLng(5)) 'Long
  loc_11160FD: var_CC = 0
  loc_1116109: LateIdCallSt
  loc_1116114: var_98 = CVar(CLng(5)) 'Long
  loc_111611F: var_CC = CVar(CInt(4)) 'Integer
  loc_1116126: LateIdCallSt
  loc_111612E: var_98 = 1
  loc_111613A: var_CC = CVar(CLng(5)) 'Long
  loc_111613F: var_EC = "1"
  loc_1116148: LateIdCallSt
  loc_1116150: var_98 = 0
  loc_111615C: var_CC = CVar(CLng(1)) 'Long
  loc_1116161: var_EC = "Revenue"
  loc_111616A: LateIdCallSt
  loc_1116175: var_98 = CVar(CLng(1)) 'Long
  loc_111617A: var_CC = &HFA0
  loc_1116186: LateIdCallSt
  loc_1116191: var_98 = CVar(CLng(1)) 'Long
  loc_111619C: var_CC = CVar(CInt(1)) 'Integer
  loc_11161A3: LateIdCallSt
  loc_11161AB: var_98 = 0
  loc_11161B7: var_CC = CVar(CLng(2)) 'Long
  loc_11161BC: var_EC = "Amount"
  loc_11161C5: LateIdCallSt
  loc_11161D0: var_98 = CVar(CLng(2)) 'Long
  loc_11161D5: var_CC = &H4B0
  loc_11161E1: LateIdCallSt
  loc_11161EC: var_98 = CVar(CLng(2)) 'Long
  loc_11161F7: var_CC = CVar(CInt(7)) 'Integer
  loc_11161FE: LateIdCallSt
  loc_1116206: var_98 = 0
  loc_1116212: var_CC = CVar(CLng(3)) 'Long
  loc_1116217: var_EC = "Nature"
  loc_1116220: LateIdCallSt
  loc_111622B: var_98 = CVar(CLng(3)) 'Long
  loc_1116230: var_CC = &H708
  loc_111623C: LateIdCallSt
  loc_1116247: var_98 = CVar(CLng(3)) 'Long
  loc_1116252: var_CC = CVar(CInt(1)) 'Integer
  loc_1116259: LateIdCallSt
  loc_1116261: var_98 = 0
  loc_111626D: var_CC = CVar(CLng(4)) 'Long
  loc_1116272: var_EC = "Month"
  loc_111627B: LateIdCallSt
  loc_1116286: var_98 = CVar(CLng(4)) 'Long
  loc_111628B: var_CC = &H320
  loc_1116297: LateIdCallSt
  loc_11162A2: var_98 = CVar(CLng(4)) 'Long
  loc_11162AD: var_CC = CVar(CInt(1)) 'Integer
  loc_11162B4: LateIdCallSt
  loc_11162BC: var_98 = 0
  loc_11162C8: var_CC = CVar(CLng(0)) 'Long
  loc_11162CD: var_EC = "O"
  loc_11162D6: LateIdCallSt
  loc_11162E1: var_98 = CVar(CLng(0)) 'Long
  loc_11162E6: var_CC = &H64
  loc_11162F2: LateIdCallSt
  loc_11162FD: var_98 = CVar(CLng(0)) 'Long
  loc_111630F: LateIdCallSt
  loc_1116317: var_98 = True
  loc_111631E: var_88.Enabled = var_98
  loc_1116331: Set var_100 = Me.Txt
  loc_1116337: Call 0.Method_Proc_288_42_11163DC0 (CInt(0), var_104, var_108, var_88, CVar(CInt(4)), var_98, var_88)
  loc_111633F: var_CC = var_104.Left
  loc_1116347: var_98 = CVar(var_108) 'Single
  loc_1116356: Me.DGMember.Left = var_98
  loc_1116372: Set var_10C = Me.Txt
  loc_1116378: Call 0.Method_Proc_288_42_11163DC0 (CInt(0), var_110, var_114, var_98, var_88)
  loc_1116380: var_EC = var_110.Height
  loc_1116393: Set var_100 = Me.Txt
  loc_1116399: Call 0.Method_Proc_288_42_11163DC0 (CInt(0), var_104, var_108)
  loc_11163A1: var_CC = var_104.Top
  loc_11163B1: var_98 = CVar(((var_108 + var_114) + CDbl(&H19))) 'Single
  loc_11163C0: Me.DGMember.Top = var_98
  loc_11163D4: Set var_88 = Nothing 
  loc_11163D8: Exit Sub
  loc_11163D9: CExtInstUnk
End Sub

Public Sub Proc_288_43_F183B0
  'Data Table: 4C5608
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F182C6: Set var_8C = Me.Txt
  loc_F182CC: Call 0.Method_Proc_288_43_F183B0C (var_8E, var_86)
  loc_F182DC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F182F2:   Set var_8C = Me.Txt
  loc_F182F8:   Call 0.Method_Proc_288_43_F183B00 (CInt(var_86), var_98)
  loc_F18300:   var_98.Text = vbNullString
  loc_F1831C:   Set var_8C = Me.Txt
  loc_F18322:   Call 0.Method_Proc_288_43_F183B00 (CInt(var_86), var_98)
  loc_F1832A:   var_98.Tag = vbNullString
  loc_F18339: Next var_92 'Byte
  loc_F18352: Me.FGrid.Rows = 1
  loc_F1836F: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F18377: Set var_98 = Me.FGrid
  loc_F183A6: Me.FGrid.FixedRows = 1
  loc_F183AE: Exit Sub
End Sub

Public Sub Proc_288_44_11A6558
  'Data Table: 4C5608
  Dim var_9C As String
  Dim var_94 As Variant
  Dim var_B4 As String
  Dim var_C0 As String
  Dim var_B8 As TextBox
  Dim var_F4 As Variant
  Dim var_D4 As Variant
  Dim var_114 As Variant
  Dim unk_4C561B As Connection15
  Dim var_8A As Integer
  Dim var_90 As Variant
  Dim var_88 As Recordset15
  Dim var_160 As Variant
  Dim var_E4 As Variant
  Dim var_138 As Variant
  Dim var_148 As Variant
  loc_11A6177: Set var_90 = Me.Txt
  loc_11A617D: Call 0.Method_Proc_288_44_11A65580 (CInt(2))
  loc_11A61A6: If (Proc_6_27_EA61EC(var_94, "New CateGory") = 0) Then
  loc_11A61B0:   Call Txt_GotFocus(CInt(2))
  loc_11A61B5:   Exit Sub
  loc_11A61B6: End If
  loc_11A61CA: var_9C = "Select MemCatMast.Code AS CatCode , MemCatMast.Name AS CatName , MembershipRevMast.Code As RevCode, MembershipRevMast.Description, MR.AppDate , MR.Amount , MR.Nature, MR.AppMonth From ((MemCatRevWise MR Left Join MemCatMast On MR.MemCat = MemCatMast.Code) LEFT JOIN MembershipRevMast ON MR.RevCode = MembershipRevMast.Code) Where MR.Site_Code='" & MemVar_1F95070
  loc_11A61F0: Set var_90 = Me.Txt
  loc_11A61F6: Call 0.Method_Proc_288_44_11A65580 (CInt(2), var_94, var_AC, var_9C & "' and (MR.LOGSITE_CODE='" & MemVar_1F95078 & "' or MR.LOGSITE_CODE='HO') And MR.MemCat='")
  loc_11A61FE: var_148 = var_94.Tag
  loc_11A6207: var_B4 = -1 & var_AC
  loc_11A620E: var_C0 = var_B4 & "' And MR.AppDate=(Select Top 1 AppDate From MemCatRevWise Where MemCat='"
  loc_11A621F: Set var_98 = Me.Txt
  loc_11A6225: Call 0.Method_Proc_288_44_11A65580 (CInt(2), var_B8, var_BC)
  loc_11A622D: var_C0 = var_B8.Tag
  loc_11A624B: Proc_6_7_F26918(var_E4, MemVar_1F950EC)
  loc_11A626A: unk_4C561B.Execute CStr(CVar(var_14C & var_BC & "' And Appdate<=") & var_E4 & "Order By AppDate Desc)"), var_94, 
  loc_11A6275: Set var_88 = var_14C
  loc_11A62AB: var_8A = 1
  loc_11A62C1: Me.FGrid.Rows = 1
  loc_11A62C9: ' Referenced from: 11A64E2
  loc_11A62D8: If Not(var_88.EOF) Then
  loc_11A62DB:   var_D4 = vbNullString
  loc_11A62E5:   Set var_90 = Me.FGrid
  loc_11A62FA:   Set var_150 = Me.FGrid
  loc_11A6301:   var_114 = CVar(CLng(var_8A)) 'Long
  loc_11A6309:   var_160 = CVar(CLng(5)) 'Long
  loc_11A6339:   var_F4 = CVar(CStr(var_88.Fields.Item("RevCode").Value)) 'String
  loc_11A6340:   LateIdCallSt
  loc_11A6362:   var_160 = CVar(CLng(1)) 'Long
  loc_11A638F:   var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Description")), var_160, CVar(CLng(var_8A)), var_150, var_F4)) 'String
  loc_11A6396:   LateIdCallSt
  loc_11A63CE:   Proc_6_39_E7D3A0(var_F4, CVar(var_88.Fields.Item("Amount")), var_150, var_F4, var_160)
  loc_11A63D7:   var_138 = CVar(CLng(var_8A)) 'Long
  loc_11A640F:   LateIdCallSt
  loc_11A6460:   var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Nature")), CVar(CLng(3)), CVar(CLng(var_8A)), var_150, CVar(CStr(Format(var_F4, "0.00"))), 1, 1)) 'String
  loc_11A6467:   LateIdCallSt
  loc_11A64B2:   var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("AppMonth")), CVar(CLng(4)), CVar(CLng(var_8A)), var_150, var_F4, CVar(CLng(2)))) 'String
  loc_11A64B9:   LateIdCallSt
  loc_11A64CD:   Set var_150 = Nothing 
  loc_11A64D7:   var_8A = (var_8A + 1)
  loc_11A64DD:   var_88.MoveNext
  loc_11A64E2:   GoTo loc_11A62C9
  loc_11A64E5: End If
  loc_11A64E5: var_D4 = 0
  loc_11A64EF: Set var_90 = Me.FGrid
  loc_11A651C: If (CLng(Me.FGrid.Rows) = 1) Then
  loc_11A651F:   var_D4 = vbNullString
  loc_11A6529:   Set var_90 = Me.FGrid
  loc_11A653A: End If
  loc_11A654D: Me.FGrid.FixedRows = 1
  loc_11A6555: Exit Sub
End Sub

Public Sub Proc_288_45_14C7B60
  'Data Table: 4C5608
  Dim var_98 As String
  Dim var_D8 As Variant
  Dim var_B4 As Variant
  Dim var_A4 As Variant
  Dim var_B8 As Field20
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim unk_4C561B As Connection15
  Dim var_11C As Variant
  Dim var_130 As Variant
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_88 As Recordset15
  Dim var_188 As Variant
  Dim var_184 As Variant
  Dim var_1E0 As Variant
  Dim var_1E8 As TextBox
  Dim Me As Recordset15
  Dim var_8E As Integer
  Dim var_8C As Recordset15
  Dim var_12C As Variant
  loc_14C6E3C: On Error Goto loc_14C7B5A
  loc_14C6E59: If (Me.Recordset15.RecordCount > 0) Then
  loc_14C6E5C:   Call Proc_288_43_F183B0()
  loc_14C6E75:   var_98 = "Select M.*,S.Name As MemName From MemCatChngDetail M Inner Join SubGroup S On M.MemCode=S.SubCode where M.Site_Code='" & MemVar_1F95070
  loc_14C6EBD:   var_E8 = CVar(var_98 & "' And (M.LOGSITE_CODE='" & MemVar_1F95078 & "' or M.LOGSITE_CODE='HO') And M.Code='") & Me.Recordset15.Fields.Item("SearchCode").Value 
  loc_14C6ED4:   unk_4C561B.Execute CStr(var_E8 & "'"), var_12C, -1
  loc_14C6EDF:   Set var_88 = var_130
  loc_14C6F17:   var_98 = "Select M.*,MR.Description As Description From MemRevenueForPeriod M Inner Join MembershipRevMast MR On M.RevCode=MR.Code where M.Site_Code='" & MemVar_1F95070
  loc_14C6F5F:   var_E8 = CVar(var_98 & "' And (M.LOGSITE_CODE='" & MemVar_1F95078 & "' or M.LOGSITE_CODE='HO') And M.Code='") & Me.Recordset15.Fields.Item("SearchCode").Value 
  loc_14C6FB3:   unk_4C561B.Execute CStr(var_E8 & "' And M.Type='" & Me.Recordset15.Fields.Item("Type").Value & "'"), var_184, -1
  loc_14C6FBE:   Set var_8C = var_188
  loc_14C7026:   var_130 = var_88.Fields
  loc_14C708F:   var_164 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE")), var_188) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_130.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_14C70D4:   Me.LblUser.Caption = CStr(var_130 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_164)))
  loc_14C714E:   var_134 = var_88.Fields.Item("U_AE")
  loc_14C7156:   var_D8 = CVar(var_134) 'Address
  loc_14C71AF:   var_164 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(var_D8) = "E"), "Last Update : ", "entdt : "))
  loc_14C71C6:   var_188 = var_88.Fields
  loc_14C71EE:   Set var_1E0 = Me.LblLDt
  loc_14C71F4:   var_1E0.Caption = CStr(var_164 & CVar(Proc_6_38_E69628(CVar(var_188.Item("U_EntDt")))))
  loc_14C7240:   If (var_88.RecordCount > 0) Then
  loc_14C7271:     global_112 = Proc_6_38_E69628(CVar(var_88.Fields.Item("Code")))
  loc_14C72B4:     Set var_130 = Me.Txt
  loc_14C72BA:     Call 0.Method_Proc_288_45_14C7B600 (CInt(0), var_134)
  loc_14C72C2:     var_134.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MemName")))
  loc_14C730C:     Set var_130 = Me.Txt
  loc_14C7312:     Call 0.Method_Proc_288_45_14C7B600 (CInt(0), var_134)
  loc_14C731A:     var_134.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("MemCode")))
  loc_14C7375:     var_98 = Proc_6_38_E69628(CVar(var_88.Fields.Item("OldCat")), "Select Max(Name) From MemCatMast WHERE Code='", var_D8, -1, var_130)
  loc_14C7389:     unk_4C561B.Execute var_134 & Proc_6_38_E69628(CVar(var_88.Fields.Item("MemCode"))) & "'", 0, var_188
  loc_14C7399:      = var_134.Item()
  loc_14C73A1:      = var_188.Value
  loc_14C73BC:     Set var_1BC = Me.Txt
  loc_14C73C2:     Call 0.Method_Proc_288_45_14C7B600 (CInt(1), var_1E0)
  loc_14C73CA:     var_1E0.Text = Proc_6_38_E69628(var_130.Fields)
  loc_14C7428:     Set var_130 = Me.Txt
  loc_14C742E:     Call 0.Method_Proc_288_45_14C7B600 (CInt(1), var_134)
  loc_14C7436:     var_134.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("OldCat")))
  loc_14C7491:     var_98 = Proc_6_38_E69628(CVar(var_88.Fields.Item("NewCat")), "Select Max(Name) From MemCatMast WHERE Code='", var_D8, -1, var_130)
  loc_14C74A5:     unk_4C561B.Execute var_134 & Proc_6_38_E69628(CVar(var_88.Fields.Item("OldCat"))) & "'", 0, var_188
  loc_14C74B5:      = var_134.Item()
  loc_14C74BD:      = var_188.Value
  loc_14C74D8:     Set var_1BC = Me.Txt
  loc_14C74DE:     Call 0.Method_Proc_288_45_14C7B600 (CInt(2), var_1E0)
  loc_14C74E6:     var_1E0.Text = Proc_6_38_E69628(var_130.Fields)
  loc_14C7544:     Set var_130 = Me.Txt
  loc_14C754A:     Call 0.Method_Proc_288_45_14C7B600 (CInt(2), var_134)
  loc_14C7552:     var_134.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("NewCat")))
  loc_14C75D0:     Set var_130 = Me.Txt
  loc_14C75D6:     Call 0.Method_Proc_288_45_14C7B600 (CInt(5), var_134)
  loc_14C75DE:     var_134.Text = CStr(IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("RevenueChng"))) = "Y"), "Yes", "No"))
  loc_14C76B3:     var_164 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("FrMonth"))) = vbNullString), CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("FrMonth")))), Format(CVar(var_88.Fields.Item("FrMonth")), "MMM/yyyy"))
  loc_14C76CA:     Set var_1E0 = Me.Txt
  loc_14C76D0:     Call 0.Method_Proc_288_45_14C7B600 (CInt(3), var_1E8, CStr(var_164))
  loc_14C76D8:     var_1E8.Text = 1
  loc_14C771F:     var_B8 = var_88.Fields.Item("ToMonth")
  loc_14C7736:     var_F8 = "ToMonth"
  loc_14C7752:     var_D8 = CVar(var_88.Fields.Item(var_F8)) 'Address
  loc_14C77B9:     var_164 = IIf((Proc_6_38_E69628(CVar(var_B8)) = vbNullString), CVar(Proc_6_38_E69628(var_D8)), Format(CVar(var_88.Fields.Item("ToMonth")), "MMM/yyyy"))
  loc_14C77D0:     Set var_1E0 = Me.Txt
  loc_14C77D6:     Call 0.Method_Proc_288_45_14C7B600 (CInt(4), var_1E8, CStr(var_164))
  loc_14C77DE:     var_1E8.Text = 1
  loc_14C7825:     If (Me.RecordCount > 0) Then
  loc_14C782E:       Me.MoveFirst
  loc_14C7851:       Set var_A4 = Me.Txt
  loc_14C7857:       Call 0.Method_Proc_288_45_14C7B600 (CInt(0), var_B8, "Name =", 0)
  loc_14C7866:       Proc_6_17_EAAE40(var_D8, CVar(var_B8), 1)
  loc_14C787C:       Me.Find CStr(var_F8 & var_D8), 1, 1
  loc_14C7890:     End If
  loc_14C7890:   End If
  loc_14C7892:   var_8E = 1
  loc_14C78A8:   Me.FGrid.Rows = 1
  loc_14C78B0:   ' Referenced from: 14C7AC9
  loc_14C78BF:   If Not(var_8C.EOF) Then
  loc_14C78C2:     var_B4 = vbNullString
  loc_14C78CC:     Set var_A4 = Me.FGrid
  loc_14C78E1:     Set var_1F0 = Me.FGrid
  loc_14C78E8:     var_F8 = CVar(CLng(var_8E)) 'Long
  loc_14C78F0:     var_154 = CVar(CLng(5)) 'Long
  loc_14C7920:     var_D8 = CVar(CStr(var_8C.Fields.Item("RevCode").Value)) 'String
  loc_14C7927:     LateIdCallSt
  loc_14C7949:     var_154 = CVar(CLng(1)) 'Long
  loc_14C7976:     var_D8 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Description")), var_154, CVar(CLng(var_8E)), var_1F0, var_D8)) 'String
  loc_14C797D:     LateIdCallSt
  loc_14C79B5:     Proc_6_39_E7D3A0(var_D8, CVar(var_8C.Fields.Item("Amount")), var_1F0, var_D8, var_154)
  loc_14C79BE:     var_11C = CVar(CLng(var_8E)) 'Long
  loc_14C79F6:     LateIdCallSt
  loc_14C7A47:     var_D8 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Nature")), CVar(CLng(3)), CVar(CLng(var_8E)), var_1F0, CVar(CStr(Format(var_D8, "0.00"))), 1, 1)) 'String
  loc_14C7A4E:     LateIdCallSt
  loc_14C7A64:     var_F8 = CVar(CLng(var_8E)) 'Long
  loc_14C7A99:     var_D8 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("AppMonth")), CVar(CLng(4)), var_F8, var_1F0, var_D8, CVar(CLng(2)))) 'String
  loc_14C7AA0:     LateIdCallSt
  loc_14C7AB4:     Set var_1F0 = Nothing 
  loc_14C7ABE:     var_8E = (var_8E + 1)
  loc_14C7AC4:     var_8C.MoveNext
  loc_14C7AC9:     GoTo loc_14C78B0
  loc_14C7ACC:   End If
  loc_14C7ACC:   var_B4 = 0
  loc_14C7AD6:   Set var_A4 = Me.FGrid
  loc_14C7B03:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_14C7B06:     var_B4 = vbNullString
  loc_14C7B10:     Set var_A4 = Me.FGrid
  loc_14C7B21:   End If
  loc_14C7B21:   var_B4 = 1
  loc_14C7B34:   Me.FGrid.FixedRows = var_B4
  loc_14C7B3F: Else
  loc_14C7B3F:   Call Proc_288_43_F183B0(FGrid.DispID_10000, var_B4, FGrid.DispID_2E, var_B4, var_8E, var_1F0)
  loc_14C7B44: End If
  loc_14C7B44: Call Proc_288_47_EBAF18(var_D8, var_11C, var_F8)
  loc_14C7B4E: Set var_88 = Nothing
  loc_14C7B56: Set var_8C = Nothing
  loc_14C7B59: Exit Sub
  loc_14C7B5A: ' Referenced from: 14C6E3C
  loc_14C7B5A: Proc_6_60_E63754(FGrid.DispID_10000, var_B4)
  loc_14C7B5F: Exit Sub
End Sub

Public Sub Proc_288_46_F69D60(arg_C) 'F69D60
  'Data Table: 4C5608
  Dim var_98 As TextBox
  Dim var_8C As CommandButton
  loc_F69C36: Set var_8C = Me.Txt
  loc_F69C3C: Call 0.Method_Proc_288_46_F69D60C (var_8E, var_86)
  loc_F69C4C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F69C62:   Set var_8C = Me.Txt
  loc_F69C68:   Call 0.Method_Proc_288_46_F69D600 (CInt(var_86), var_98)
  loc_F69C70:   var_98.Enabled = arg_C
  loc_F69C7F: Next var_92 'Byte
  loc_F69C92: Me.CmdFillGrid.Enabled = arg_C
  loc_F69CA7: Set var_8C = Me.Txt
  loc_F69CAD: Call 0.Method_Proc_288_46_F69D600 (CInt(1), var_98)
  loc_F69CB5: var_98.Enabled = False
  loc_F69CCE: Set var_8C = Me.Txt
  loc_F69CD4: Call 0.Method_Proc_288_46_F69D600 (CInt(6), var_98)
  loc_F69CDC: var_98.Enabled = False
  loc_F69CEC: Set var_8C = Me.TopCtrl1
  loc_F69CF2: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_F69D0B: If (CStr() = "Edit") Then
  loc_F69D1B:   Set var_8C = Me.Txt
  loc_F69D21:   Call 0.Method_Proc_288_46_F69D600 (CInt(0), var_98)
  loc_F69D29:   var_98.Enabled = False
  loc_F69D42:   Set var_8C = Me.Txt
  loc_F69D48:   Call 0.Method_Proc_288_46_F69D600 (CInt(2), var_98)
  loc_F69D50:   var_98.Enabled = False
  loc_F69D5C: End If
  loc_F69D5C: Exit Sub
  loc_F69D5D: DOC
End Sub

Public Sub Proc_288_47_EBAF18
  'Data Table: 4C5608
  loc_EBAE90: If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_EBAEA2:   Me.DGMember.Visible = False
  loc_EBAEAA: End If
  loc_EBAEC6: If (CBool(Me.DGMemType.Visible) = &HFF) Then
  loc_EBAED8:   Me.DGMemType.Visible = False
  loc_EBAEE0: End If
  loc_EBAEFC: If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_EBAF0E:   Me.DGRev.Visible = False
  loc_EBAF16: End If
  loc_EBAF16: Exit Sub
End Sub

Public Sub Proc_288_48_E42D04
  'Data Table: 4C5608
  loc_E42CE0: Set var_88 = Me.TopCtrl1
  loc_E42CE6: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_E42CFF: If (CStr() = "Browse") Then
  loc_E42D02:   Exit Sub
  loc_E42D03: End If
  loc_E42D03: Exit Sub
End Sub

Public Sub Proc_288_49_1258D34(arg_C) '1258D34
  'Data Table: 4C5608
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_13C As Variant
  Dim var_B8 As String
  Dim var_140 As Variant
  Dim var_170 As Variant
  loc_12587EC: If (arg_C = 0) Then
  loc_1258802:   var_A8 = CLng(Me.FGrid.Col)
  loc_1258812:   If (var_A8 = CLng(1)) Then
  loc_1258835:     var_AE = Me.EOF
  loc_1258863:     Set var_94 = Me.TxtGrid
  loc_1258869:     Call 0.Method_Proc_288_49_1258D340 (arg_C, var_B4, var_B8)
  loc_1258871:     ((Me.RecordCount = 0) Or ((var_AE = &HFF) Or (Me.BOF = &HFF))) = var_B4.Text
  loc_1258889:     If (var_A8 Or (var_B8 = vbNullString)) Then
  loc_125889F:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12588A7:       var_E8 = CVar(CLng(1)) 'Long
  loc_12588AC:       var_108 = vbNullString
  loc_12588B6:       Set var_B4 = Me.FGrid
  loc_12588BC:       LateIdCallSt
  loc_12588E1:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12588E9:       var_E8 = CVar(CLng(5)) 'Long
  loc_12588EE:       var_108 = vbNullString
  loc_12588F8:       Set var_B4 = Me.FGrid
  loc_12588FE:       LateIdCallSt
  loc_1258913:     Else
  loc_1258916:       Call Proc_288_50_FBFECC(var_AE, var_B4, var_108, var_E8, var_C8)
  loc_1258921:       If (var_AE = 0) Then
  loc_1258929:         Proc_288_49_1258D34 = 0
  loc_125892F:       End If
  loc_1258942:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_125894A:       var_F8 = CVar(CLng(1)) 'Long
  loc_125897D:       var_13C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1258985:       Set var_140 = Me.FGrid
  loc_125898B:       LateIdCallSt
  loc_12589BA:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12589C2:       var_F8 = CVar(CLng(5)) 'Long
  loc_12589F5:       var_13C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_12589FD:       Set var_140 = Me.FGrid
  loc_1258A03:       LateIdCallSt
  loc_1258A1F:     End If
  loc_1258A38:     var_C8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1258A40:     var_E8 = CVar(CLng(5)) 'Long
  loc_1258A49:     Set var_B4 = Me.FGrid
  loc_1258A5A:     var_B8 = CStr(var_B4.TextMatrix))
  loc_1258A73:     If (var_B8 <> vbNullString) Then
  loc_1258A76:       var_C8 = vbNullString
  loc_1258A80:       Set var_94 = Me.FGrid
  loc_1258A91:     End If
  loc_1258A94:   Else
  loc_1258A9B:     If (var_A8 = CLng(2)) Then
  loc_1258AA8:       Set var_94 = Me.TxtGrid
  loc_1258AAE:       Call 0.Method_Proc_288_49_1258D340 (arg_C, var_B4, FGrid.DispID_10000, var_C8, var_E8, var_C8, var_140)
  loc_1258ACD:       Set var_11C = Me.TxtGrid
  loc_1258AD3:       Call 0.Method_Proc_288_49_1258D340 (arg_C, var_140, var_B8, Not(IsNumeric(CVar(var_B4))), var_13C, var_F8)
  loc_1258ADB:       var_D8 = var_140.Text
  loc_1258AFD:       If (var_140 Or (CDbl(Val(var_B8)) < CDbl(0))) Then
  loc_1258B04:         var_B8 = CStr(0)
  loc_1258B11:         Set var_94 = Me.TxtGrid
  loc_1258B17:         Call 0.Method_Proc_288_49_1258D340 (arg_C, var_B4, var_B8)
  loc_1258B1F:         var_B4.Text = var_13C
  loc_1258B33:         Proc_288_49_1258D34 = 0
  loc_1258B39:       End If
  loc_1258B46:       Set var_94 = Me.TxtGrid
  loc_1258B4C:       Call 0.Method_Proc_288_49_1258D340 (arg_C, var_B4, var_B8)
  loc_1258B54:       var_F8 = var_B4.Text
  loc_1258B6C:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1258B75:       Set var_140 = Me.FGrid
  loc_1258B84:       var_F8 = CVar(CLng(var_140.Col)) 'Long
  loc_1258BB0:       var_170 = CVar(CStr(Format(CVar(var_B8), "0.00"))) 'String
  loc_1258BB8:       Set var_174 = Me.FGrid
  loc_1258BBE:       LateIdCallSt
  loc_1258BE5:     Else
  loc_1258BEC:       If Not (var_A8 = CLng(3)) Then
  loc_1258BF6:         If (var_A8 = CLng(4)) Then
  loc_1258BF9:         End If
  loc_1258C06:         Set var_94 = Me.TxtGrid
  loc_1258C0C:         Call 0.Method_Proc_288_49_1258D340 (arg_C, var_B4, var_B8, var_174, var_170)
  loc_1258C14:         1 = var_B4.Text
  loc_1258C2B:         If (var_B8 <> vbNullString) Then
  loc_1258C46:           Set var_B4 = Me.ListView.SelectedItem
  loc_1258C4C:           var_B8 = var_B4.Text
  loc_1258C5E:           Set var_11C = Me.TxtGrid
  loc_1258C64:           Call 0.Method_Proc_288_49_1258D340 (arg_C, var_140, var_B8, 1)
  loc_1258C6C:           var_140.Text = var_F8
  loc_1258C82:         End If
  loc_1258C95:         var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1258CBF:         Set var_94 = Me.TxtGrid
  loc_1258CC5:         Call 0.Method_Proc_288_49_1258D340 (arg_C, var_B4, var_B8, CVar(CLng(Me.FGrid.Col)))
  loc_1258CCD:         var_C8 = var_B4.Text
  loc_1258CD5:         var_13C = CVar(var_B8) 'String
  loc_1258CDD:         Set var_174 = Me.FGrid
  loc_1258CE3:         LateIdCallSt
  loc_1258D01:       End If
  loc_1258D01:     End If
  loc_1258D01:   End If
  loc_1258D01: End If
  loc_1258D14: Set var_94 = Me.TxtGrid
  loc_1258D1A: Call 0.Method_Proc_288_49_1258D340 (0, var_B4, 0, &HFF)
  loc_1258D22: var_B4.MaxLength = var_174
  loc_1258D2E: Proc_288_49_1258D34 = var_13C
End Sub

Public Sub Proc_288_50_FBFECC
  'Data Table: 4C5608
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBFD4F: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FBFD54:   var_92 = 1 'Byte
  loc_FBFD58: End If
  loc_FBFD61: Set var_98 = Me.TxtGrid
  loc_FBFD67: Call 0.Method_Proc_288_50_FBFECC0 (0, var_B0)
  loc_FBFD8A: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBFDBE: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBFDE2:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBFDE5:     GoTo loc_FBFEB7
  loc_FBFDE8:   End If
  loc_FBFDEC:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBFE16:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBFE20:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBFE55:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBFE79:     MsgBox("Duplicate Revenue Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBFE92:     Set var_98 = Me.TxtGrid
  loc_FBFE98:     Call 0.Method_Proc_288_50_FBFECC0 (0, var_B0, CVar(CLng(var_92)))
  loc_FBFEA0:     var_B0.SetFocus
  loc_FBFEB1:     Proc_288_50_FBFECC = 0
  loc_FBFEB7:     ' Referenced from: FBFDE5
  loc_FBFEB7:   End If
  loc_FBFEBA: Next var_D4 'Integer
  loc_FBFEC4: Proc_288_50_FBFECC = &HFF
End Sub
