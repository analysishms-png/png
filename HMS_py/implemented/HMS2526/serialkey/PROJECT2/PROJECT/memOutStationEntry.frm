VERSION 5.00
Begin VB.Form memOutStationEntry
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
    Index = 0
    ForeColor = &HFF0000&
    Left = 2085
    Top = 600
    Width = 6120
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
  Begin TextBox Txt
    Index = 1
    ForeColor = &HFF0000&
    Left = 2085
    Top = 990
    Width = 1410
    Height = 285
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
  Begin TextBox Txt
    Index = 2
    ForeColor = &HFF0000&
    Left = 5235
    Top = 960
    Width = 1410
    Height = 285
    TabIndex = 2
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
    Index = 3
    ForeColor = &HFF0000&
    Left = 2085
    Top = 1770
    Width = 1410
    Height = 285
    TabIndex = 4
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
    Index = 4
    ForeColor = &HFF0000&
    Left = 5235
    Top = 1770
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
    Index = 5
    ForeColor = &HFF0000&
    Left = 2085
    Top = 1380
    Width = 615
    Height = 285
    TabIndex = 3
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
  Begin CommandButton CmdFillGrid
    Caption = "Fill Grid"
    Left = 6960
    Top = 1680
    Width = 1245
    Height = 315
    TabIndex = 6
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 1515
    Top = 2940
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 13
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    Left = 975
    Top = 4395
    Width = 1845
    Height = 1815
    Visible = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 12
    End
  End
  Begin DataGrid DGMember
    Left = 12720
    Top = 3480
    Width = 6720
    Height = 2685
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin MSFlexGrid FGPoint
    Left = 12225
    Top = 4935
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 9
  End
  Begin DataGrid DGRev
    Left = 9555
    Top = 1680
    Width = 3930
    Height = 2565
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin MSHFlexGrid FGrid
    Left = 1080
    Top = 2760
    Width = 13140
    Height = 4275
    TabIndex = 7
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11130
    Height = 450
    TabIndex = 14
  End
  Begin Label Label1
    Caption = "Member Name :"
    ForeColor = &HFF0000&
    Left = 450
    Top = 600
    Width = 1515
    Height = 285
    TabIndex = 22
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
    Caption = "Date From :"
    Index = 0
    ForeColor = &HFF0000&
    Left = 450
    Top = 1005
    Width = 1515
    Height = 285
    TabIndex = 21
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
    Caption = "Date To :"
    Index = 1
    ForeColor = &HFF0000&
    Left = 4380
    Top = 1020
    Width = 930
    Height = 285
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
    Caption = "App. Month From :"
    Index = 2
    ForeColor = &HFF0000&
    Left = 450
    Top = 1785
    Width = 1575
    Height = 285
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
    Caption = "App. Month To :"
    Index = 3
    ForeColor = &HFF0000&
    Left = 3795
    Top = 1785
    Width = 1425
    Height = 285
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
    Caption = "Change Revenue :"
    Index = 4
    ForeColor = &HFF0000&
    Left = 435
    Top = 1395
    Width = 1575
    Height = 285
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4485
    Top = 7725
    Width = 2790
    Height = 285
    TabIndex = 16
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
    Left = 1080
    Top = 7680
    Width = 2880
    Height = 255
    TabIndex = 15
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
End

Attribute VB_Name = "memOutStationEntry"

Private global_76 As Integer
Private global_60 As Recordset15
Private global_52 As Integer

Private Sub TxtGrid_GotFocus(Index As Integer) '12B313C
  'Data Table: 4B8EC8
  Dim var_8C As Variant
  Dim var_92 As Integer
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
  loc_12B2B26: Set var_88 = Me.TxtGrid
  loc_12B2B2C: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_12B2B3A: Proc_6_74_E23240(var_8C)
  loc_12B2B46: Call Proc_295_47_E87378(var_8C)
  loc_12B2B59: Set var_88 = Me.TxtGrid
  loc_12B2B5F: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_12B2B67: var_8C.MaxLength = 0
  loc_12B2B76: var_92 = Index
  loc_12B2B7F: If (var_92 = 0) Then
  loc_12B2B98:   Me.FGrid.CellBackColor = CVar(CLng(global_104))
  loc_12B2BB3:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B2BF2:   Set var_108 = Me.TxtGrid
  loc_12B2BF8:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_12B2C00:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_12B2C31:   var_114 = CLng(Me.FGrid.Col)
  loc_12B2C41:   If (var_114 = CLng(1)) Then
  loc_12B2C85:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_12B2C88:       Exit Sub
  loc_12B2C89:     End If
  loc_12B2C94:     Set var_8C = Me.FGPoint
  loc_12B2CAC:     Proc_6_137_1192FDC(Me.DGRev, global_68, Index, var_8C)
  loc_12B2CC8:     Set var_88 = Me.TxtGrid
  loc_12B2CCE:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, &H32)
  loc_12B2CD6:     var_8C.MaxLength = var_114
  loc_12B2CF5:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B2CFD:     var_E4 = CVar(CLng(1)) 'Long
  loc_12B2D30:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_12B2D39:       Me.MoveFirst
  loc_12B2D59:       var_E4 = CVar(CLng(5)) 'Long
  loc_12B2D62:       Set var_8C = Me.FGrid
  loc_12B2D79:       Proc_6_17_EAAE40(var_12C, CVar(CStr(var_8C.TextMatrix))), var_E4, CVar(CLng(Me.FGrid.Row)))
  loc_12B2D98:       var_110 = CStr("Code=" & var_12C)
  loc_12B2DA2:       Me.Find var_110, 0, 1
  loc_12B2DD2:       If (Me.EOF = &HFF) Then
  loc_12B2DDB:         Me.MoveFirst
  loc_12B2DE0:       End If
  loc_12B2DE0:     End If
  loc_12B2DE3:   Else
  loc_12B2DEA:     If (var_114 = CLng(3)) Then
  loc_12B2DFC:       Set var_88 = Me.TxtGrid
  loc_12B2E02:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &HF, var_15C)
  loc_12B2E0A:       var_8C.MaxLength = var_E4
  loc_12B2E23:       ReDim var_160(0 To 4)
  loc_12B2E3A:       var_160(0) = "Monthly"
  loc_12B2E49:       var_160(1) = "Bi Monthly"
  loc_12B2E58:       var_160(2) = "Quarterly"
  loc_12B2E67:       var_160(3) = "Half Yearly"
  loc_12B2E76:       var_160(4) = "Annual"
  loc_12B2E8D:       global_84 = Array(var_160)
  loc_12B2E98:       Set var_108 = Me.ListView
  loc_12B2EB3:       Set var_8C = Me.TxtGrid
  loc_12B2ECD:       Set global_100 = Proc_6_66_F0048C(var_108, var_8C, Index, global_84, 5)
  loc_12B2EEB:       Set var_88 = Me.TxtGrid
  loc_12B2EF1:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, global_84)
  loc_12B2F0B:       Set var_90 = Me.TxtGrid
  loc_12B2F11:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_12B2F19:       var_108.Tag = var_8C.Text
  loc_12B2F2F:     Else
  loc_12B2F36:       If (var_114 = CLng(4)) Then
  loc_12B2F47:         Set var_88 = Me.TxtGrid
  loc_12B2F4D:         Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_12B2F55:         var_8C.MaxLength = 3
  loc_12B2F6E:         ReDim var_160(0 To &HB)
  loc_12B2F85:         var_160(0) = "Jan"
  loc_12B2F94:         var_160(1) = "Feb"
  loc_12B2FA3:         var_160(2) = "Mar"
  loc_12B2FB2:         var_160(3) = "Apr"
  loc_12B2FC1:         var_160(4) = "May"
  loc_12B2FD0:         var_160(5) = "Jun"
  loc_12B2FDF:         var_160(6) = "Jul"
  loc_12B2FEE:         var_160(7) = "Aug"
  loc_12B2FFD:         var_160(8) = "Sep"
  loc_12B300C:         var_160(9) = "Oct"
  loc_12B301B:         var_160(&HA) = "Nov"
  loc_12B302A:         var_160(&HB) = "Dec"
  loc_12B3041:         global_84 = Array(var_160)
  loc_12B304C:         Set var_108 = Me.ListView
  loc_12B3067:         Set var_8C = Me.TxtGrid
  loc_12B3081:         Set global_100 = Proc_6_66_F0048C(var_108, var_8C, Index, global_84)
  loc_12B309F:         Set var_88 = Me.TxtGrid
  loc_12B30A5:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110)
  loc_12B30AD:         &HC = var_8C.Text
  loc_12B30BF:         Set var_90 = Me.TxtGrid
  loc_12B30C5:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_12B30CD:         var_108.Tag = global_84
  loc_12B30E3:       Else
  loc_12B30EA:         If (var_114 = CLng(2)) Then
  loc_12B30FC:           Set var_88 = Me.TxtGrid
  loc_12B3102:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_12B310A:           var_8C.MaxLength = 8
  loc_12B311F:           If (global_76 = 0) Then
  loc_12B312A:             var_110 = "{Home}+{End}"
  loc_12B3130:             Proc_303_0_FBACC8(var_110, 0)
  loc_12B3138:           End If
  loc_12B3138:         End If
  loc_12B3138:       End If
  loc_12B3138:     End If
  loc_12B3138:   End If
  loc_12B3138: End If
  loc_12B3138: Exit Sub
  loc_12B3139: var_F0 = var_92
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12F01E4
  'Data Table: 4B8EC8
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
  loc_12EFB28: If (KeyCode = 0) Then
  loc_12EFB35:   If (CLng(Shift) = &H1B) Then
  loc_12EFB45:     Set var_8C = Me.TxtGrid
  loc_12EFB4B:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_12EFB65:     Set var_98 = Me.TxtGrid
  loc_12EFB6B:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_12EFB73:     var_9C.Text = var_90.Tag
  loc_12EFB8A:     Set var_8C = Me.FGrid
  loc_12EFBA7:     Set var_8C = Me.TxtGrid
  loc_12EFBAD:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_12EFBB5:     var_90.Visible = FGrid.DispID_8001
  loc_12EFBCF:     Set var_8C = Me.TxtGrid
  loc_12EFBD5:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12EFBDD:     var_90.MaxLength = 0
  loc_12EFBE9:     Exit Sub
  loc_12EFBEA:   End If
  loc_12EFC0D:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_12EFC1C:     Set var_8C = Me.TxtGrid
  loc_12EFC22:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B4)
  loc_12EFC2A:     var_B0 = var_90.Left
  loc_12EFC41:     Me.DGRev.Left = CVar(var_B4)
  loc_12EFC5B:     Set var_98 = Me.TxtGrid
  loc_12EFC61:     Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12EFC69:     var_D8 = var_9C.Height
  loc_12EFC7A:     Set var_8C = Me.TxtGrid
  loc_12EFC80:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12EFC94:     var_C4 = CVar((var_90.Top + var_D8)) 'Single
  loc_12EFCA3:     Me.DGRev.Top = CVar(var_90.Top)
  loc_12EFCC0:     Set var_E8 = Me.TxtGrid
  loc_12EFCD2:     Set var_9C = Me.FGPoint
  loc_12EFCDD:     Set var_98 = Nothing
  loc_12EFD0B:     Proc_6_69_134A630(Me.DGRev, var_E8, KeyCode, global_68, Shift, &HFF)
  loc_12EFD2A:     var_B4 = Me.RecordCount
  loc_12EFD38:     If (var_B4 > 0) Then
  loc_12EFD3F:       Set var_98 = Me.DGRev
  loc_12EFD5E:       Proc_6_138_106E830(var_98, global_68, KeyCode, Me.FGPoint, 1)
  loc_12EFD6C:     End If
  loc_12EFD76:     If (CLng(Shift) = &HD) Then
  loc_12EFD7F:       Call Proc_295_49_12581C4(KeyCode, var_DE, var_98)
  loc_12EFD8A:       If (var_DE = &HFF) Then
  loc_12EFDD0:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_76, 5)
  loc_12EFDE0:       End If
  loc_12EFDE0:     End If
  loc_12EFDE3:   Else
  loc_12EFDEA:     If (var_B0 = CLng(2)) Then
  loc_12EFE2D:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_76 = &HFF))) Then
  loc_12EFE36:         Call Proc_295_49_12581C4(KeyCode, var_DE, 0, 2)
  loc_12EFE41:         If (var_DE = &HFF) Then
  loc_12EFE78:           Set var_90 = Me.TxtGrid
  loc_12EFE87:           Proc_6_62_1254E68(Me.FGrid, var_90, KeyCode, Shift, global_76, 5, 0)
  loc_12EFE97:         End If
  loc_12EFE97:       End If
  loc_12EFE9A:     Else
  loc_12EFEA1:       If (var_B0 = CLng(3)) Then
  loc_12EFEB3:         Set var_8C = Me.TxtGrid
  loc_12EFEB9:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, &HF, 3, 0)
  loc_12EFEC1:         var_90.MaxLength = 0
  loc_12EFEEF:         Set var_8C = Me.TxtGrid
  loc_12EFEF5:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_12EFEFD:         var_9C = var_90.Left
  loc_12EFF0F:         Set var_98 = Me.TxtGrid
  loc_12EFF15:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_D8)
  loc_12EFF1D:         0 = var_9C.Top
  loc_12EFF2F:         Set var_DC = Me.TxtGrid
  loc_12EFF35:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E8)
  loc_12EFF4F:         Set var_EC = Me.TxtGrid
  loc_12EFF55:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_F8)
  loc_12EFF5D:         var_FC = var_F8.Width
  loc_12EFFA5:         Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_12EFFD3:         If (CLng(Shift) = &HD) Then
  loc_12EFFDC:           Call Proc_295_49_12581C4(KeyCode, var_DE, CInt(var_B4), CInt((var_D8 + var_E8.Height)))
  loc_12EFFE7:           If (var_DE = &HFF) Then
  loc_12EFFF5:             Set var_9C = Me.TxtGrid
  loc_12F001E:             Set var_90 = var_9C
  loc_12F002D:             Proc_6_62_1254E68(Me.FGrid, var_90, KeyCode, Shift, global_76, 5)
  loc_12F003D:           End If
  loc_12F003D:         End If
  loc_12F0040:       Else
  loc_12F0047:         If (var_B0 = CLng(4)) Then
  loc_12F0059:           Set var_8C = Me.TxtGrid
  loc_12F005F:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 3, 0, 4)
  loc_12F0067:           var_90.MaxLength = 0
  loc_12F0095:           Set var_8C = Me.TxtGrid
  loc_12F009B:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_12F00A3:           CInt(var_FC) = var_90.Left
  loc_12F00B5:           Set var_98 = Me.TxtGrid
  loc_12F00BB:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_D8)
  loc_12F00C3:           1300 = var_9C.Top
  loc_12F00D5:           Set var_DC = Me.TxtGrid
  loc_12F00DB:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E8)
  loc_12F00F5:           Set var_EC = Me.TxtGrid
  loc_12F00FB:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_F8)
  loc_12F0103:           var_FC = var_F8.Width
  loc_12F014B:           Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_12F0179:           If (CLng(Shift) = &HD) Then
  loc_12F0182:             Call Proc_295_49_12581C4(KeyCode, var_DE, CInt(var_B4), CInt((var_D8 + var_E8.Height)))
  loc_12F018D:             If (var_DE = &HFF) Then
  loc_12F01D3:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_76, 5)
  loc_12F01E3:             End If
  loc_12F01E3:           End If
  loc_12F01E3:         End If
  loc_12F01E3:       End If
  loc_12F01E3:     End If
  loc_12F01E3:   End If
  loc_12F01E3: End If
  loc_12F01E3: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F2EC08
  'Data Table: 4B8EC8
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F2EAFF: Proc_6_58_E06050(arg_10)
  loc_F2EB10: If (KeyAscii = 0) Then
  loc_F2EB26:   var_A0 = CLng(Me.FGrid.Col)
  loc_F2EB36:   If (var_A0 = CLng(1)) Then
  loc_F2EB55:     If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_F2EB67:       var_A4 = "Name"
  loc_F2EB82:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_68, arg_10)
  loc_F2EB9C:       Set var_AC = Me.FGPoint
  loc_F2EBB4:       Proc_6_138_106E830(Me.DGRev, global_68, KeyAscii, var_AC)
  loc_F2EBC2:     End If
  loc_F2EBC5:   Else
  loc_F2EBCC:     If (var_A0 = CLng(2)) Then
  loc_F2EBD9:       Set var_8C = Me.TxtGrid
  loc_F2EBDF:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F2EBFA:       Proc_6_42_129B55C(var_AC, arg_10, 5, 2)
  loc_F2EC06:     End If
  loc_F2EC06:   End If
  loc_F2EC06: End If
  loc_F2EC06: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F8DAA4
  'Data Table: 4B8EC8
  Dim var_A0 As Long
  loc_F8D948: On Error Goto loc_F8DA9C
  loc_F8D957: If (KeyCode = 0) Then
  loc_F8D96D:   var_A0 = CLng(Me.FGrid.Col)
  loc_F8D97D:   If (var_A0 = CLng(1)) Then
  loc_F8D9A3:     If ((Shift <> &HD) And (CBool(Me.DGRev.Visible) = 0)) Then
  loc_F8D9B4:       Call TxtGrid_KeyDown(KeyCode, global_78)
  loc_F8D9E3:       Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_68, Shift, "Name")
  loc_F8D9F2:     End If
  loc_F8D9F5:   Else
  loc_F8D9FC:     If Not (var_A0 = CLng(3)) Then
  loc_F8DA06:       If (var_A0 = CLng(4)) Then
  loc_F8DA09:       End If
  loc_F8DA2B:       If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_F8DA3C:         Call TxtGrid_KeyDown(KeyCode, global_78)
  loc_F8DA41:       End If
  loc_F8DA5C:       If (Me.FrmList.Visible = &HFF) Then
  loc_F8DA8B:         Proc_6_64_F299E8(Me.ListView, Me.TxtGrid, KeyCode, Shift, global_100)
  loc_F8DA9B:       End If
  loc_F8DA9B:     End If
  loc_F8DA9B:   End If
  loc_F8DA9B: End If
  loc_F8DA9B: Exit Sub
  loc_F8DA9C: ' Referenced from: F8D948
  loc_F8DA9C: Proc_6_60_E63754(0, &HFF, 0)
  loc_F8DAA1: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E22478
  'Data Table: 4B8EC8
  Dim arg_10 As Integer
  loc_E22460: If (Cancel = 0) Then
  loc_E22469:   Call Proc_295_49_12581C4(Cancel, var_88)
  loc_E22472:   arg_10 = Not(var_88)
  loc_E22475: End If
  loc_E22475: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '101BEF0
  'Data Table: 4B8EC8
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_101BCE2: Set var_88 = Me.Txt
  loc_101BCE8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_101BCF6: Proc_6_74_E23240(var_8C)
  loc_101BD02: Call Proc_295_47_E87378(var_8C)
  loc_101BD0A: var_92 = Index
  loc_101BD15: If (var_92 = CInt(0)) Then
  loc_101BD2F:   If (Me.RecordCount > 0) Then
  loc_101BD3D:     Set var_8C = Me.FGPoint
  loc_101BD55:     Proc_6_137_1192FDC(Me.DGMember, global_64, Index)
  loc_101BD63:   End If
  loc_101BDB1:   Set var_88 = Me.Txt
  loc_101BDB7:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_101BDBF:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_101BDD7:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_101BDDA:     Exit Sub
  loc_101BDDB:   End If
  loc_101BDE8:   Set var_88 = Me.Txt
  loc_101BDEE:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_101BE01:   global_72 = var_8C.Tag
  loc_101BE1C:   Set var_88 = Me.Txt
  loc_101BE22:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_101BE2A:   var_A0 = var_8C.Text
  loc_101BE32:   var_D4 = CVar(var_A0) 'String
  loc_101BE77:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_101BE80:     Me.MoveFirst
  loc_101BEA5:     Set var_88 = Me.Txt
  loc_101BEAB:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_101BEB3:     0 = var_8C.Text
  loc_101BEC1:     Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_101BED7:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_101BEEF:   End If
  loc_101BEEF: End If
  loc_101BEEF: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F36D6C
  'Data Table: 4B8EC8
  loc_F36C66: If (CLng(Shift) = &H1B) Then
  loc_F36C69:   Call Proc_295_47_E87378()
  loc_F36C6E:   Exit Sub
  loc_F36C6F: End If
  loc_F36C7D: If (KeyCode = CInt(0)) Then
  loc_F36C98:   Set var_9C = Nothing
  loc_F36CA3:   Set var_98 = Nothing
  loc_F36CD1:   Proc_6_69_134A630(Me.DGMember, Me.Txt, KeyCode, global_64, Shift, 0)
  loc_F36CE5: End If
  loc_F36D20: If ((CBool(Me.DGMember.Visible) = 0) And (CBool(Me.DGRev.Visible) = 0)) Then
  loc_F36D38:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F36D41:     Proc_6_75_E5335C(Shift, arg_14, 1, var_98)
  loc_F36D46:   End If
  loc_F36D5B:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F36D64:     Proc_6_76_E533C8(Shift, arg_14, var_9C)
  loc_F36D69:   End If
  loc_F36D69: End If
  loc_F36D69: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EF13F8
  'Data Table: 4B8EC8
  Dim var_D0 As TextBox
  Dim arg_10 As Integer
  loc_EF1333: Proc_6_58_E06050(arg_10)
  loc_EF1346: If (KeyAscii = CInt(5)) Then
  loc_EF1372:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_EF1382:     Set var_CC = Me.Txt
  loc_EF1388:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EF1390:     var_D0.Text = "Yes"
  loc_EF139F:   Else
  loc_EF13C8:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_EF13D8:       Set var_CC = Me.Txt
  loc_EF13DE:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EF13E6:       var_D0.Text = "No"
  loc_EF13F2:     End If
  loc_EF13F2:   End If
  loc_EF13F4:   arg_10 = 0
  loc_EF13F7: End If
  loc_EF13F7: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EA24A4
  'Data Table: 4B8EC8
  loc_EA2436: If (KeyCode = CInt(0)) Then
  loc_EA2455:   If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_EA2469:     var_A4 = "Name"
  loc_EA248D:     Proc_6_68_12A2818(Me.DGMember, Me.Txt, KeyCode, global_64)
  loc_EA24A0:   End If
  loc_EA24A0: End If
  loc_EA24A0: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4CF1C
  'Data Table: 4B8EC8
  loc_E4CEFA: Set var_88 = Me.Txt
  loc_E4CF00: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4CF0E: Proc_6_73_E23294(var_8C)
  loc_E4CF1A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1600D74
  'Data Table: 4B8EC8
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A0 As String
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_100 As Variant
  Dim var_DC As Variant
  Dim var_134 As String
  Dim var_13C As String
  Dim var_144 As String
  Dim unk_4B8EDB As Connection15
  Dim var_148 As Variant
  Dim var_14C As Variant
  Dim var_138 As String
  Dim var_9C As Recordset15
  Dim var_150 As String
  Dim var_15C As Fields15
  Dim var_160 As Field20
  Dim var_120 As String
  Dim var_1A0 As Variant
  Dim var_130 As Variant
  loc_15FF943: var_8E = Cancel
  loc_15FF94E: If (var_8E = CInt(0)) Then
  loc_15FF95C:   Set var_94 = Me.Txt
  loc_15FF962:   Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_15FF96A:   var_A0 = "Member Name"
  loc_15FF98B:   If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_15FF999:     Set var_94 = Me.Txt
  loc_15FF99F:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_15FF9A7:     var_98.SetFocus
  loc_15FF9B5:     arg_10 = &HFF
  loc_15FF9B8:     Exit Sub
  loc_15FF9B9:   End If
  loc_15FFA07:   Set var_94 = Me.Txt
  loc_15FFA0D:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_15FFA15:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_15FFA2D:   If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_15FFA3D:     Set var_94 = Me.Txt
  loc_15FFA43:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15FFA4B:     var_98.Text = vbNullString
  loc_15FFA64:     Set var_94 = Me.Txt
  loc_15FFA6A:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15FFA72:     var_98.Tag = vbNullString
  loc_15FFA81:   Else
  loc_15FFABC:     Set var_9C = Me.Txt
  loc_15FFAC2:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_15FFACA:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15FFAFD:     var_98 = Me.Fields.Item("Code")
  loc_15FFB0E:     var_A0 = CStr(var_98.Value)
  loc_15FFB1B:     Set var_9C = Me.Txt
  loc_15FFB21:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_15FFB29:     var_BC.Tag = var_A0
  loc_15FFB3F:   End If
  loc_15FFB52:   Set var_94 = Me.Txt
  loc_15FFB58:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_15FFB60:   global_72 = var_98.Tag
  loc_15FFB74:   If (var_8E <> var_A0) Then
  loc_15FFB85:     Set var_94 = Me.Txt
  loc_15FFB8B:     Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_15FFB93:     var_98.Text = vbNullString
  loc_15FFBAD:     Set var_94 = Me.Txt
  loc_15FFBB3:     Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_15FFBBB:     var_98.Text = vbNullString
  loc_15FFBDA:     Me.FGrid.Rows = 1
  loc_15FFBF7:     var_EC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_15FFBFF:     Set var_98 = Me.FGrid
  loc_15FFC2E:     Me.FGrid.FixedRows = 1
  loc_15FFC36:   End If
  loc_15FFC39: Else
  loc_15FFC41:   If (var_8E = CInt(5)) Then
  loc_15FFC4F:     Set var_94 = Me.Txt
  loc_15FFC55:     Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_15FFC7E:     If (Trim(CVar(var_98)) = vbNullString) Then
  loc_15FFC83:       arg_10 = &HFF
  loc_15FFC86:       Exit Sub
  loc_15FFC87:     End If
  loc_15FFC95:     Set var_94 = Me.Txt
  loc_15FFC9B:     Call 0.Method_Txt_Validate0 (CInt(5), var_98, var_A0)
  loc_15FFCA3:     arg_10 = var_98.Text
  loc_15FFCBA:     If (var_A0 <> "Yes") Then
  loc_15FFCCA:       Set var_94 = Me.Txt
  loc_15FFCD0:       Call 0.Method_Txt_Validate0 (CInt(3), var_98, 0)
  loc_15FFCD8:       var_98.Enabled = FGrid.DispID_10000
  loc_15FFCF1:       Set var_94 = Me.Txt
  loc_15FFCF7:       Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_15FFCFF:       var_98.Enabled = False
  loc_15FFD19:       Set var_94 = Me.Txt
  loc_15FFD1F:       Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_15FFD27:       var_98.Text = vbNullString
  loc_15FFD41:       Set var_94 = Me.Txt
  loc_15FFD47:       Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_15FFD4F:       var_98.Text = vbNullString
  loc_15FFD6E:       Me.FGrid.Rows = 1
  loc_15FFD8B:       var_EC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_15FFD93:       Set var_98 = Me.FGrid
  loc_15FFDC2:       Me.FGrid.FixedRows = 1
  loc_15FFDD9:       Me.FGrid.Enabled = False
  loc_15FFDED:       Me.CmdFillGrid.Enabled = False
  loc_15FFDF8:     Else
  loc_15FFE05:       Set var_94 = Me.Txt
  loc_15FFE0B:       Call 0.Method_Txt_Validate0 (CInt(3), var_98, &HFF)
  loc_15FFE13:       var_98.Enabled = FGrid.DispID_10000
  loc_15FFE2C:       Set var_94 = Me.Txt
  loc_15FFE32:       Call 0.Method_Txt_Validate0 (CInt(4), var_98, &HFF)
  loc_15FFE3A:       var_98.Enabled = var_EC
  loc_15FFE54:       Me.FGrid.Enabled = True
  loc_15FFE68:       Me.CmdFillGrid.Enabled = True
  loc_15FFE7B:       Set var_94 = Me.Txt
  loc_15FFE81:       Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_15FFE89:       var_98.SetFocus
  loc_15FFE95:     End If
  loc_15FFE98:   Else
  loc_15FFEA0:     If (var_8E = CInt(2)) Then
  loc_15FFEAD:       Set var_94 = Me.Txt
  loc_15FFEB3:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15FFED3:       Set var_BC = Me.Txt
  loc_15FFED9:       Call 0.Method_Txt_Validate0 (Cancel, var_100)
  loc_15FFEE1:       var_100.Text = Proc_6_33_15125B8(var_98)
  loc_15FFF02:       Set var_94 = Me.Txt
  loc_15FFF08:       Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_15FFF27:       If (var_98.Text = vbNullString) Then
  loc_15FFF43:         MsgBox("Date To Can't Be Blank", 0, var_EC, var_FC, var_130)
  loc_15FFF5E:         Set var_94 = Me.Txt
  loc_15FFF64:         Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_15FFF6C:         var_98.SetFocus
  loc_15FFF7A:         arg_10 = &HFF
  loc_15FFF7D:         Exit Sub
  loc_15FFF7E:       End If
  loc_15FFF8C:       Set var_9C = Me.Txt
  loc_15FFF92:       Call 0.Method_Txt_Validate0 (CInt(1), var_BC, var_134)
  loc_15FFF9A:       arg_10 = var_BC.Text
  loc_15FFFAD:       Set var_94 = Me.Txt
  loc_15FFFB3:       Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_15FFFDD:       If (CDate(var_98.Text) < CDate(var_134)) Then
  loc_15FFFF9:         MsgBox("To Date Can't Be Less Than From Date", 0, var_EC, var_FC, var_130)
  loc_160000B:         arg_10 = &HFF
  loc_160000E:       End If
  loc_1600011:     Else
  loc_1600019:       If (var_8E = CInt(1)) Then
  loc_1600026:         Set var_94 = Me.Txt
  loc_160002C:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_160004C:         Set var_BC = Me.Txt
  loc_1600052:         Call 0.Method_Txt_Validate0 (Cancel, var_100)
  loc_160005A:         var_100.Text = Proc_6_33_15125B8(var_98, arg_10)
  loc_160007B:         Set var_94 = Me.Txt
  loc_1600081:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1600089:         var_A0 = var_98.Text
  loc_16000A0:         If (var_A0 = vbNullString) Then
  loc_16000BC:           MsgBox("Date From Can't Be Blank", 0, var_EC, var_FC, var_130)
  loc_16000D7:           Set var_94 = Me.Txt
  loc_16000DD:           Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_16000E5:           var_98.SetFocus
  loc_16000F3:           arg_10 = &HFF
  loc_16000F6:           Exit Sub
  loc_16000F7:         End If
  loc_1600105:         Set var_94 = Me.Txt
  loc_160010B:         Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_A0)
  loc_1600113:         arg_10 = var_98.Text
  loc_1600131:         Set var_9C = Me.Txt
  loc_1600137:         Call 0.Method_Txt_Validate0 (CInt(1), var_BC, var_134)
  loc_160013F:         IsDate(CVar(var_A0)) = var_BC.Text
  loc_1600147:         var_EC = CVar(var_134) 'String
  loc_1600162:         If (var_EC And IsDate(var_EC)) Then
  loc_1600173:           Set var_9C = Me.Txt
  loc_1600179:           Call 0.Method_Txt_Validate0 (CInt(1), var_BC)
  loc_1600194:           Set var_94 = Me.Txt
  loc_160019A:           Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_16001C4:           If (CDate(var_98.Text) < CDate(var_BC.Text)) Then
  loc_16001E0:             MsgBox("To Date Can't Be Less Than From Date", 0, var_EC, var_FC, var_130)
  loc_16001F2:             arg_10 = &HFF
  loc_16001F5:           End If
  loc_16001F5:         End If
  loc_16001F8:       Else
  loc_1600200:         If (var_8E = CInt(4)) Then
  loc_1600210:           Set var_94 = Me.Txt
  loc_1600216:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1600235:           If (var_98.Text = vbNullString) Then
  loc_1600251:             MsgBox("App. Month To is a Required Field", 0, var_EC, var_FC, var_130)
  loc_1600263:             arg_10 = &HFF
  loc_1600266:             Exit Sub
  loc_1600267:           End If
  loc_1600271:           Set var_94 = Me.Txt
  loc_1600277:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1600297:           Set var_BC = Me.Txt
  loc_160029D:           Call 0.Method_Txt_Validate0 (Cancel, var_100)
  loc_16002A5:           var_100.Text = Proc_6_120_133AEC8(var_98, arg_10)
  loc_16002C6:           Set var_94 = Me.Txt
  loc_16002CC:           Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_16002D4:           var_A0 = var_98.Text
  loc_16002DC:           var_CC = CVar(var_A0) 'String
  loc_16002EE:           If IsDate(var_CC) Then
  loc_16002FF:             Set var_94 = Me.Txt
  loc_1600305:             Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_160031F:             If (var_98.Enabled = &HFF) Then
  loc_1600328:               var_DC = 0
  loc_160034F:               Set var_94 = Me.Txt
  loc_1600355:               Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0, "Select count(*) from MemBill where Memcode='", var_CC, -1)
  loc_160036D:               var_13C = var_148 & var_A0 & "' and cast('01/' + MthYear As smalldatetime)=cast('01/' + '"
  loc_160037E:               Set var_9C = Me.Txt
  loc_1600384:               Call 0.Method_Txt_Validate0 (CInt(4), var_BC, var_138, var_13C)
  loc_160038C:               var_DC = var_BC.Text
  loc_160039C:               var_144 = var_14C & var_138 & "' As smalldatetime)"
  loc_16003A5:               unk_4B8EDB.Execute var_144, var_EC, arg_10
  loc_16003AD:                = var_98.Tag.Fields
  loc_16003B5:                = var_148.Item()
  loc_16003BD:                = var_14C.Value
  loc_16003C8:               Proc_6_39_E7D3A0(var_FC)
  loc_1600401:               If (var_FC > 0) Then
  loc_1600417:                 var_CC = "Bill Already Exists For Month For Perticular Member"
  loc_160041D:                 MsgBox(var_CC, 0, var_EC, var_FC, var_130)
  loc_160042F:                 arg_10 = &HFF
  loc_1600432:                 Exit Sub
  loc_1600433:               End If
  loc_1600436:             Else
  loc_1600444:               Set var_94 = Me.Txt
  loc_160044A:               Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0)
  loc_1600452:               arg_10 = var_98.Tag
  loc_1600465:               Set var_148 = Me.Txt
  loc_160046B:               Call 0.Method_Txt_Validate0 (CInt(4), var_14C)
  loc_160047E:               var_DC = 0
  loc_160049B:               var_134 = "Select Max(cast('01/' + MthYear As smalldatetime)) from MemBill where Memcode='" & var_A0
  loc_16004A2:               var_138 = var_148 & var_A0 & "'"
  loc_16004AB:               unk_4B8EDB.Execute var_138, var_CC, -1
  loc_16004B3:               var_9C = var_9C.Fields
  loc_16004BB:               var_DC = var_BC.Item(var_BC)
  loc_16004C3:               var_100 = var_100.Value
  loc_1600533:               Set var_94 = Me.Txt
  loc_1600539:               Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0, "Select count(*) from MemBill where Memcode='", var_CC, -1, var_14C)
  loc_1600541:               var_15C = var_98.Tag
  loc_160054A:               var_134 = 0 & var_A0
  loc_1600551:               var_13C = var_134 & "' and cast('01/' + MthYear As smalldatetime)=cast('01/' + '"
  loc_1600562:               Set var_9C = Me.Txt
  loc_1600568:               Call 0.Method_Txt_Validate0 (CInt(4), var_BC, var_138, var_14C.Text, var_160)
  loc_1600570:               var_EC = var_BC.Text
  loc_1600580:               var_150 = CDate(CDbl((CDate(var_EC) <> CDate("01/" & var_14C.Text)))) & var_138 & "' As smalldatetime) And cast('01/' + MthYear As smalldatetime)<>(Select Max(cast('01/' + MthYear As smalldatetime)) from MemBill where Memcode='"
  loc_1600591:               Set var_100 = Me.Txt
  loc_1600597:               Call 0.Method_Txt_Validate0 (CInt(0), var_148, var_144)
  loc_160059F:               var_150 = var_148.Tag
  loc_16005B8:               unk_4B8EDB.Execute var_EC & var_144 & "')", var_EC, 
  loc_16005C0:                = var_14C.Fields
  loc_16005C8:                = var_15C.Item()
  loc_16005D0:                = var_160.Value
  loc_16005DB:               Proc_6_39_E7D3A0(var_FC)
  loc_160061E:               If (var_FC > 0) Then
  loc_160063A:                 MsgBox("Bill Already Exists For Month For Perticular Member", 0, var_EC, var_FC, var_130)
  loc_160064C:                 arg_10 = &HFF
  loc_160064F:                 Exit Sub
  loc_1600650:               End If
  loc_1600650:             End If
  loc_1600650:           End If
  loc_160065E:           Set var_94 = Me.Txt
  loc_1600664:           Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_A0)
  loc_160066C:           arg_10 = var_98.Text
  loc_160068A:           Set var_9C = Me.Txt
  loc_1600690:           Call 0.Method_Txt_Validate0 (CInt(3), var_BC, var_134)
  loc_1600698:           IsDate(CVar(var_A0)) = var_BC.Text
  loc_16006A0:           var_EC = CVar(var_134) 'String
  loc_16006BB:           If (var_EC And IsDate(var_EC)) Then
  loc_16006CC:             Set var_9C = Me.Txt
  loc_16006D2:             Call 0.Method_Txt_Validate0 (CInt(3), var_BC)
  loc_16006DA:             var_134 = var_BC.Text
  loc_16006ED:             Set var_94 = Me.Txt
  loc_16006F3:             Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_16006FB:             var_A0 = var_98.Text
  loc_160071D:             If (CDate(var_A0) < CDate(var_134)) Then
  loc_1600739:               MsgBox("App Month To Can't Be Less Than App Month From", 0, var_EC, var_FC, var_130)
  loc_160074B:               arg_10 = &HFF
  loc_160074E:               Exit Sub
  loc_160074F:             End If
  loc_160074F:           End If
  loc_160075A:           Set var_9C = Me.Txt
  loc_1600760:           Call 0.Method_Txt_Validate0 (CInt(1), var_BC)
  loc_1600774:           var_EC = "MMM/yyyy"
  loc_1600784:           var_FC = Format(CVar(var_BC), var_EC)
  loc_1600794:           Set var_14C = Me.Txt
  loc_160079A:           Call 0.Method_Txt_Validate0 (CInt(2), var_15C, 1)
  loc_160079F:           var_120 = "1/"
  loc_16007CB:           var_1A0 = (1 + Format(CVar(var_15C), "MMM/yyyy"))
  loc_16007FE:           Set var_94 = Me.Txt
  loc_1600804:           Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_A0, 1)
  loc_160080C:           var_120 = var_98.Text
  loc_160081E:           var_130 = ("1/" + var_FC)
  loc_1600833:           Set var_100 = Me.Txt
  loc_1600839:           Call 0.Method_Txt_Validate0 (CInt(4), var_148, var_134)
  loc_1600841:           (CDate(var_A0) >= CDate(var_130)) = var_148.Text
  loc_1600884:           If Not((1 And (CDate(var_134) <= CDate(DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), var_1A0)))))) Then
  loc_16008A0:             MsgBox("App. Month To Must Be Between Date From and Date to", 0, var_EC, var_FC, var_130)
  loc_16008B2:             arg_10 = &HFF
  loc_16008C0:             Set var_94 = Me.Txt
  loc_16008C6:             Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_16008CE:             var_98.SetFocus
  loc_16008DA:             Exit Sub
  loc_16008DB:           End If
  loc_16008DE:         Else
  loc_16008E6:           If (var_8E = CInt(3)) Then
  loc_16008F6:             Set var_94 = Me.Txt
  loc_16008FC:             Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_1600904:             arg_10 = var_98.Text
  loc_160091B:             If (var_A0 = vbNullString) Then
  loc_1600937:               MsgBox("App. Month From is a Required Field", 0, var_EC, var_FC, var_130)
  loc_1600949:               arg_10 = &HFF
  loc_160094C:               Exit Sub
  loc_160094D:             End If
  loc_1600957:             Set var_94 = Me.Txt
  loc_160095D:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_160097D:             Set var_BC = Me.Txt
  loc_1600983:             Call 0.Method_Txt_Validate0 (Cancel, var_100)
  loc_160098B:             var_100.Text = Proc_6_120_133AEC8(var_98, arg_10)
  loc_16009AB:             Set var_94 = Me.Txt
  loc_16009B1:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16009B9:             var_A0 = var_98.Text
  loc_16009C1:             var_CC = CVar(var_A0) 'String
  loc_16009D3:             If IsDate(var_CC) Then
  loc_16009DC:               var_DC = 0
  loc_1600A03:               Set var_94 = Me.Txt
  loc_1600A09:               Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0, "Select count(*) from MemBill where Memcode='", var_CC, -1)
  loc_1600A1A:               var_134 = var_148 & var_A0
  loc_1600A21:               var_13C = var_134 & "' and cast('01/' + MthYear As smalldatetime)=cast('01/' + '"
  loc_1600A31:               Set var_9C = Me.Txt
  loc_1600A37:               Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_138, var_14C.Text)
  loc_1600A3F:               var_DC = var_BC.Text
  loc_1600A58:               unk_4B8EDB.Execute var_14C & var_138 & "' As smalldatetime)", var_EC, arg_10
  loc_1600A60:                = var_98.Tag.Fields
  loc_1600A68:                = var_148.Item()
  loc_1600A70:                = var_14C.Value
  loc_1600A7B:               Proc_6_39_E7D3A0(var_FC)
  loc_1600AB4:               If (var_FC > 0) Then
  loc_1600AD0:                 MsgBox("Bill Already Exists For Month For Perticular Member", 0, var_EC, var_FC, var_130)
  loc_1600AE2:                 arg_10 = &HFF
  loc_1600AE5:                 Exit Sub
  loc_1600AE6:               End If
  loc_1600AE6:             End If
  loc_1600AF4:             Set var_94 = Me.Txt
  loc_1600AFA:             Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_A0)
  loc_1600B02:             arg_10 = var_98.Text
  loc_1600B20:             Set var_9C = Me.Txt
  loc_1600B26:             Call 0.Method_Txt_Validate0 (CInt(3), var_BC, var_134)
  loc_1600B2E:             IsDate(CVar(var_A0)) = var_BC.Text
  loc_1600B36:             var_EC = CVar(var_134) 'String
  loc_1600B51:             If (var_EC And IsDate(var_EC)) Then
  loc_1600B62:               Set var_9C = Me.Txt
  loc_1600B68:               Call 0.Method_Txt_Validate0 (CInt(3), var_BC)
  loc_1600B70:               var_134 = var_BC.Text
  loc_1600B83:               Set var_94 = Me.Txt
  loc_1600B89:               Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_1600B91:               var_A0 = var_98.Text
  loc_1600BB3:               If (CDate(var_A0) < CDate(var_134)) Then
  loc_1600BCF:                 MsgBox("App Month To Can't Be Less Than App Month From", 0, var_EC, var_FC, var_130)
  loc_1600BE1:                 arg_10 = &HFF
  loc_1600BE4:                 Exit Sub
  loc_1600BE5:               End If
  loc_1600BE5:             End If
  loc_1600BF0:             Set var_9C = Me.Txt
  loc_1600BF6:             Call 0.Method_Txt_Validate0 (CInt(1), var_BC)
  loc_1600C0A:             var_EC = "MMM/yyyy"
  loc_1600C1A:             var_FC = Format(CVar(var_BC), var_EC)
  loc_1600C2A:             Set var_14C = Me.Txt
  loc_1600C30:             Call 0.Method_Txt_Validate0 (CInt(2), var_15C, 1)
  loc_1600C35:             var_120 = "1/"
  loc_1600C61:             var_1A0 = (1 + Format(CVar(var_15C), "MMM/yyyy"))
  loc_1600C94:             Set var_94 = Me.Txt
  loc_1600C9A:             Call 0.Method_Txt_Validate0 (CInt(3), var_98, var_A0, 1)
  loc_1600CA2:             var_120 = var_98.Text
  loc_1600CB4:             var_130 = ("1/" + var_FC)
  loc_1600CC9:             Set var_100 = Me.Txt
  loc_1600CCF:             Call 0.Method_Txt_Validate0 (CInt(3), var_148, var_134)
  loc_1600CD7:             (CDate(var_A0) >= CDate(var_130)) = var_148.Text
  loc_1600D1A:             If Not((1 And (CDate(var_134) <= CDate(DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), var_1A0)))))) Then
  loc_1600D36:               MsgBox("App. Month From Must Be Between Date From and Date to", 0, var_EC, var_FC, var_130)
  loc_1600D48:               arg_10 = &HFF
  loc_1600D56:               Set var_94 = Me.Txt
  loc_1600D5C:               Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_1600D64:               var_98.SetFocus
  loc_1600D70:               Exit Sub
  loc_1600D71:             End If
  loc_1600D71:           End If
  loc_1600D71:         End If
  loc_1600D71:       End If
  loc_1600D71:     End If
  loc_1600D71:   End If
  loc_1600D71: End If
  loc_1600D71: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E623C4
  'Data Table: 4B8EC8
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6238F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E623A2: Set var_A8 = Me.TxtGrid
  loc_E623A8: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E623B0: var_AC.Visible = False
  loc_E623BC: Call Proc_295_47_E87378()
  loc_E623C1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E67760
  'Data Table: 4B8EC8
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6771C: Set var_88 = Me.TxtGrid
  loc_E67722: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6773C: If (var_8C.Visible = 0) Then
  loc_E67755:   Me.FGrid.BackColorSel = CVar(CLng(global_104))
  loc_E6775D: End If
  loc_E6775D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E4CB74
  'Data Table: 4B8EC8
  loc_E4CB4C: Set var_88 = Me.TopCtrl1
  loc_E4CB52: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4CB6B: If (CStr() <> "Browse") Then
  loc_E4CB6E:   Call Proc_295_48_E4485C()
  loc_E4CB73: End If
  loc_E4CB73: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10F5F04
  'Data Table: 4B8EC8
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_10F5BDC: Set var_88 = Me.TopCtrl1
  loc_10F5BE2: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10F5C27: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_10F5C30:   Call Form_KeyDown(Cancel, arg_10)
  loc_10F5C35: End If
  loc_10F5C39: Set var_88 = Me.TopCtrl1
  loc_10F5C3F: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10F5C58: If (CStr() = "Browse") Then
  loc_10F5C5B:   Exit Sub
  loc_10F5C5C: End If
  loc_10F5CD0: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_10F5CDB:   var_9C = "+{Tab}"
  loc_10F5CE1:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_10F5CEB:   Cancel = 0
  loc_10F5CF1: Else
  loc_10F5D48:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_10F5D4D:     Cancel = 0
  loc_10F5D50:   End If
  loc_10F5D50: End If
  loc_10F5D7C: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10F5D93: Set var_88 = Me.TopCtrl1
  loc_10F5D99: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(Cancel)
  loc_10F5DB2: If (CStr(Cancel) = "Edit") Then
  loc_10F5DB5:   Exit Sub
  loc_10F5DB6: End If
  loc_10F5DC7: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10F5DDD:   var_DC = CLng(Me.FGrid.Col)
  loc_10F5DED:   If (var_DC = CLng(1)) Then
  loc_10F5E03:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F5E0B:     var_FC = CVar(CLng(1)) 'Long
  loc_10F5E10:     var_11C = vbNullString
  loc_10F5E1A:     Set var_A0 = Me.FGrid
  loc_10F5E20:     LateIdCallSt
  loc_10F5E45:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F5E4D:     var_FC = CVar(CLng(5)) 'Long
  loc_10F5E52:     var_11C = vbNullString
  loc_10F5E5C:     Set var_A0 = Me.FGrid
  loc_10F5E62:     LateIdCallSt
  loc_10F5E77:   Else
  loc_10F5E7E:     If Not (var_DC = CLng(2)) Then
  loc_10F5E88:       If Not (var_DC = CLng(3)) Then
  loc_10F5E92:         If (var_DC = CLng(4)) Then
  loc_10F5E95:         End If
  loc_10F5E95:       End If
  loc_10F5EA8:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F5EC0:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10F5EC5:       var_11C = vbNullString
  loc_10F5ECF:       Set var_B4 = Me.FGrid
  loc_10F5ED5:       LateIdCallSt
  loc_10F5EED:     End If
  loc_10F5EED:   End If
  loc_10F5EED: End If
  loc_10F5EF3: If (Cancel = &HD) Then
  loc_10F5EFB:   global_76 = 0
  loc_10F5EFE: End If
  loc_10F5F00: Cancel = 0
  loc_10F5F03: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E576A8
  'Data Table: 4B8EC8
  loc_E57674: Set var_88 = Me.TopCtrl1
  loc_E5767A: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E57693: If (CStr() = "Browse") Then
  loc_E57696:   Exit Sub
  loc_E57697: End If
  loc_E576A0: Call FGrid_UnknownEvent_C()
  loc_E576A5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1023908
  'Data Table: 4B8EC8
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_10236E4: Set var_88 = Me.TopCtrl1
  loc_10236EA: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1023703: If (CStr() = "Browse") Then
  loc_1023706:   Exit Sub
  loc_1023707: End If
  loc_102371A: var_A0 = CLng(Me.FGrid.Col)
  loc_102372A: If Not (var_A0 = CLng(1)) Then
  loc_1023734:   If Not (var_A0 = CLng(3)) Then
  loc_102373E:     If (var_A0 = CLng(4)) Then
  loc_1023741:     End If
  loc_1023741:   End If
  loc_1023745:   Set var_C4 = Me.FGrid
  loc_1023769:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1023796:   Set var_B4 = var_C4
  loc_10237A8:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_10237D0:   Set var_88 = Me.TxtGrid
  loc_10237D6:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_10237DE:   0 = var_B4.Text
  loc_10237F7:   If (Len(var_9C) <= 1) Then
  loc_1023806:     Set var_88 = Me.TxtGrid
  loc_102380C:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1023814:     var_CA = var_B4.Text
  loc_1023825:     Set var_B8 = Me.TxtGrid
  loc_102382B:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1023833:     var_C4.Text = var_9C
  loc_1023846:   End If
  loc_1023852:   Set var_88 = Me.TxtGrid
  loc_1023858:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1023872:   Set var_B8 = Me.TxtGrid
  loc_1023878:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1023880:   var_C4.SelStart = Len(var_B4.Text)
  loc_1023896: Else
  loc_102389D:   If (var_A0 = CLng(2)) Then
  loc_10238DE:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_10238F0:   End If
  loc_10238F0: End If
  loc_10238FA: If (CLng(Cancel) <> &HD) Then
  loc_1023902:   global_76 = &HFF
  loc_1023905: End If
  loc_1023905: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FE512C
  'Data Table: 4B8EC8
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FE4F5C: Set var_88 = Me.TopCtrl1
  loc_FE4F62: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FE4F7B: If (CStr() = "Browse") Then
  loc_FE4F7E:   Exit Sub
  loc_FE4F7F: End If
  loc_FE4F9C: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FE4F9F:   Exit Sub
  loc_FE4FA0: End If
  loc_FE4FB1: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FE4FD3:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FE500D:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FE502F:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FE5045:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE504E:         Set var_110 = Me.FGrid
  loc_FE5069:       Else
  loc_FE507C:         Me.FGrid.Rows = 1
  loc_FE50A2:         var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_FE50AA:         Set var_110 = Me.FGrid
  loc_FE50D7:         Me.FGrid.FixedRows = 1
  loc_FE50DF:       End If
  loc_FE50DF:     End If
  loc_FE50E2:   Else
  loc_FE5103:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FE5113:   End If
  loc_FE5117:   Set var_88 = Me.FGrid
  loc_FE5128: End If
  loc_FE5128: Exit Sub
  loc_FE5129: Exit Sub
  loc_FE512A: Assert
End Sub

Private Sub FGrid_UnknownEvent_15 'E44D10
  'Data Table: 4B8EC8
  Dim var_8C As TextBox
  loc_E44CE4: Call Proc_295_47_E87378()
  loc_E44CF4: Set var_88 = Me.TxtGrid
  loc_E44CFA: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E44D02: var_8C.Visible = False
  loc_E44D0E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EDAE6C
  'Data Table: 4B8EC8
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EDADB4: On Error Goto loc_EDAE66
  loc_EDADDE: Call Proc_295_46_E8834C(Proc_5_1_100EC1C("ADD", Me))
  loc_EDADE9: Call Proc_295_43_F18D70(global_60)
  loc_EDADFC: Set var_8C = Me.Txt
  loc_EDAE02: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_94)
  loc_EDAE0A: var_94.Text = "No"
  loc_EDAE21: Set var_8C = Me.Txt
  loc_EDAE27: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EDAE2F: var_94.SetFocus
  loc_EDAE48: Me.LblUser.Caption = vbNullString
  loc_EDAE5D: Me.LblLDt.Caption = vbNullString
  loc_EDAE65: Exit Sub
  loc_EDAE66: ' Referenced from: EDADB4
  loc_EDAE66: Proc_6_60_E63754(var_94)
  loc_EDAE6B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA5D4C
  'Data Table: 4B8EC8
  loc_EA5CD0: On Error Goto loc_EA5D45
  loc_EA5D0A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA5D34:   Call Proc_295_46_E8834C(Proc_5_1_100EC1C("INI", Me))
  loc_EA5D3F:   Call Proc_295_45_14A557C(global_60)
  loc_EA5D44: End If
  loc_EA5D44: Exit Sub
  loc_EA5D45: ' Referenced from: EA5CD0
  loc_EA5D45: Proc_6_60_E63754()
  loc_EA5D4A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1207364
  'Data Table: 4B8EC8
  Dim var_CC As Variant
  Dim var_124 As Variant
  Dim var_BC As Variant
  Dim var_130 As Variant
  Dim var_DC As Variant
  Dim var_13C As String
  Dim var_150 As String
  Dim var_148 As TextBox
  Dim unk_4B8EDB As Connection15
  Dim var_160 As Fields15
  Dim var_164 As Field20
  Dim var_96 As Integer
  Dim var_120 As Fields15
  Dim var_FC As Variant
  Dim var_128 As String
  Dim var_12C As Fields15
  loc_1206EEC: On Error Goto loc_120730A
  loc_1206F01: If (Proc_183_56_FE8B08(global_60) = &HFF) Then
  loc_1206F04:   Exit Sub
  loc_1206F05: End If
  loc_1206F3C: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_FC, var_11C) = 6) Then
  loc_1206F4D:   Set var_120 = Me.Txt
  loc_1206F53:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(4), var_124)
  loc_1206F5B:   var_128 = var_124.Text
  loc_1206F63:   var_BC = CVar(var_128) 'String
  loc_1206F79:   Set var_12C = Me.Txt
  loc_1206F7F:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(3), var_130)
  loc_1206F8F:   var_DC = CVar(var_130.Text) 'String
  loc_1206FAA:   If (IsDate(var_BC) And IsDate(var_DC)) Then
  loc_1206FB3:     var_CC = 0
  loc_1206FDA:     Set var_120 = Me.Txt
  loc_1206FE0:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Select count(*) from MemBill where Memcode='", var_BC, -1)
  loc_1206FF8:     var_13C = var_160 & var_128 & "' and cast('01/' + MthYear As smalldatetime)>=cast('01/' + '"
  loc_1207009:     Set var_12C = Me.Txt
  loc_120700F:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(3), var_130, var_138, var_13C)
  loc_1207017:     var_CC = var_130.Text
  loc_1207027:     var_150 = var_164 & var_138 & "' As smalldatetime) and cast('01/' + MthYear As smalldatetime)<=cast('01/' + '"
  loc_1207038:     Set var_144 = Me.Txt
  loc_120703E:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(4), var_148, var_14C)
  loc_1207046:     var_150 = var_148.Text
  loc_120705F:     unk_4B8EDB.Execute var_DC & var_14C & "' As smalldatetime)", , 
  loc_1207067:      = var_124.Tag.Fields
  loc_120706F:      = var_160.Item()
  loc_1207077:      = var_164.Value
  loc_1207082:     Proc_6_39_E7D3A0(var_FC)
  loc_12070C5:     If (var_FC > 0) Then
  loc_12070E1:       MsgBox("Bill Already Exists of This Member", 0, var_DC, var_FC, var_11C)
  loc_12070F1:       Exit Sub
  loc_12070F2:     End If
  loc_12070F2:   End If
  loc_12070F4:   var_96 = 0
  loc_1207100:   unk_4B8EDB.BeginTrans var_168
  loc_1207107:   var_96 = &HFF
  loc_120711E:   var_94 = Me.Recordset15.Bookmark 'Variant
  loc_120717B:   unk_4B8EDB.Execute CStr("Delete From MemOutStation Where Code='" & Me.Recordset15.Fields.Item("SearchCode").Value & "'"), var_11C, -1
  loc_12071E2:   var_FC = "Delete From MemRevenueForPeriod Where Code='" & Me.Recordset15.Fields.Item("SearchCode").Value & "' And Type='" 
  loc_12071FE:   var_12C = Me.Recordset15.Fields
  loc_120720E:   var_11C = var_12C.Item("Type").Value
  loc_1207223:   var_128 = CStr(var_FC & var_11C & "'")
  loc_120722D:   unk_4B8EDB.Execute var_128, var_1B8, -1
  loc_1207259:   unk_4B8EDB.CommitTrans
  loc_1207260:   var_96 = 0
  loc_1207271:   Me.Recordset15.Requery -1
  loc_1207294:   If (CVar(Me.Recordset15.RecordCount) >= var_94) Then
  loc_12072A4:     Me.Recordset15.Bookmark = var_94
  loc_12072AC:   Else
  loc_12072C3:     If (global_60.EOF = 0) Then
  loc_12072CF:       Me.Recordset15.MoveLast
  loc_12072D4:     End If
  loc_12072D4:   End If
  loc_12072D4:   Call Proc_295_45_14A557C(var_96, var_144, var_12C)
  loc_12072F9:   Proc_5_0_1107AD0(&HFF, Me, global_60, 0)
  loc_1207301: End If
  loc_1207306: Set var_9C = Nothing
  loc_1207309: Exit Sub
  loc_120730A: ' Referenced from: 1206EEC
  loc_1207310: If (var_96 = &HFF) Then
  loc_1207319:   unk_4B8EDB.RollbackTrans
  loc_120731E: End If
  loc_1207326: Set var_120 = Err()
  loc_120732C: Call 0.Method_arg_2C (var_128, var_96)
  loc_120734D: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_FC, var_11C)
  loc_1207360: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '11B9CD4
  'Data Table: 4B8EC8
  Dim var_98 As TextBox
  Dim var_C8 As Variant
  Dim var_90 As Variant
  Dim var_12C As String
  Dim var_124 As TextBox
  Dim var_140 As String
  Dim var_138 As TextBox
  Dim unk_4B8EDB As Connection15
  Dim var_150 As Fields15
  Dim var_154 As Field20
  Dim var_B8 As Variant
  loc_11B98C0: On Error Goto loc_11B9C8E
  loc_11B98D5: If (Proc_183_55_FE8490(global_60) = &HFF) Then
  loc_11B98D8:   Exit Sub
  loc_11B98D9: End If
  loc_11B98F3: If (global_60.RecordCount > 0) Then
  loc_11B991D:   Call Proc_295_46_E8834C(Proc_5_1_100EC1C("EDIT", Me))
  loc_11B9933:   Set var_90 = Me.Txt
  loc_11B9939:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_11B9941:   var_98.SetFocus
  loc_11B9950: Else
  loc_11B995B:   var_D8 = "Information"
  loc_11B996B:   var_B8 = "No Record To Edit."
  loc_11B9971:   MsgBox(var_B8, &H40, var_D8, var_F8, var_118)
  loc_11B9981: End If
  loc_11B998F: Set var_90 = Me.Txt
  loc_11B9995: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_98)
  loc_11B999D: var_8C = var_98.Text
  loc_11B99B4: If (var_8C <> "Yes") Then
  loc_11B99C4:   Set var_90 = Me.Txt
  loc_11B99CA:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_11B99D2:   var_98.Enabled = False
  loc_11B99EB:   Set var_90 = Me.Txt
  loc_11B99F1:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_98)
  loc_11B99F9:   var_98.Enabled = False
  loc_11B9A14:   Me.FGrid.Enabled = False
  loc_11B9A28:   Me.CmdFillGrid.Enabled = False
  loc_11B9A33: Else
  loc_11B9A39:   var_C8 = 0
  loc_11B9A60:   Set var_90 = Me.Txt
  loc_11B9A66:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98, var_8C, "Select count(*) from MemBill where Memcode='", var_B8, -1)
  loc_11B9A7E:   var_12C = var_150 & var_8C & "' and cast('01/' + MthYear As smalldatetime)>=cast('01/' + '"
  loc_11B9A8F:   Set var_120 = Me.Txt
  loc_11B9A95:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_124, var_128, var_12C)
  loc_11B9A9D:   var_C8 = var_124.Text
  loc_11B9AAD:   var_140 = var_154 & var_128 & "' As smalldatetime) and cast('01/' + MthYear As smalldatetime)<=cast('01/' + '"
  loc_11B9ABE:   Set var_134 = Me.Txt
  loc_11B9AC4:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_138, var_13C)
  loc_11B9ACC:   var_140 = var_138.Text
  loc_11B9AE5:   unk_4B8EDB.Execute var_D8 & var_13C & "' As smalldatetime)", global_60, 
  loc_11B9AED:    = var_98.Tag.Fields
  loc_11B9AF5:    = var_150.Item()
  loc_11B9AFD:    = var_154.Value
  loc_11B9B08:   Proc_6_39_E7D3A0(var_F8)
  loc_11B9B4B:   If (var_F8 > 0) Then
  loc_11B9B5B:     Set var_90 = Me.Txt
  loc_11B9B61:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_11B9B69:     var_98.Enabled = False
  loc_11B9B82:     Set var_90 = Me.Txt
  loc_11B9B88:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_11B9B90:     var_98.Enabled = False
  loc_11B9BA9:     Set var_90 = Me.Txt
  loc_11B9BAF:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_98)
  loc_11B9BB7:     var_98.Enabled = False
  loc_11B9BD0:     Set var_90 = Me.Txt
  loc_11B9BD6:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_98)
  loc_11B9BDE:     var_98.Enabled = False
  loc_11B9BF7:     Set var_90 = Me.Txt
  loc_11B9BFD:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_11B9C05:     var_98.Enabled = False
  loc_11B9C1E:     Set var_90 = Me.Txt
  loc_11B9C24:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_98)
  loc_11B9C2C:     var_98.Enabled = True
  loc_11B9C47:     Me.FGrid.Enabled = False
  loc_11B9C5B:     Me.CmdFillGrid.Enabled = False
  loc_11B9C63:   End If
  loc_11B9C63: End If
  loc_11B9C70: Me.LblUser.Caption = vbNullString
  loc_11B9C85: Me.LblLDt.Caption = vbNullString
  loc_11B9C8D: Exit Sub
  loc_11B9C8E: ' Referenced from: 11B98C0
  loc_11B9C96: Set var_90 = Err()
  loc_11B9C9C: Call 0.Method_arg_2C (var_8C)
  loc_11B9CBD: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_11B9CD0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A230
  'Data Table: 4B8EC8
  loc_E1A225: Me.Global.Unload Me
  loc_E1A22D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F26690
  'Data Table: 4B8EC8
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F26590: On Error Goto loc_F2662B
  loc_F2659F: var_88 = Me.Recordset15.RecordCount
  loc_F265AD: If (var_88 <= 0) Then
  loc_F265B6:   var_B8 = "Information"
  loc_F265D1:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F265E1:   Exit Sub
  loc_F265E2: End If
  loc_F265E9: var_10C = "Select MemOutStation.Code As SearchCode,S.Name as MemberName,MemOutStation.Type,Convert(Varchar(11),MemOutStation.FrDate,103) as FromDate,Convert(Varchar(11),MemOutStation.ToDate,103) as ToDate,MemOutStation.RevenueChng,MemOutStation.FrMonth,MemOutStation.ToMonth FROM MemOutStation MemOutStation Left Join SubGroup S On MemOutStation.MemCode=S.SubCode where (MemOutStation.LOGSITE_CODE='" & MemVar_1F95078
  loc_F265F0: MemVar_1F950E4 = var_10C & "' or MemOutStation.LOGSITE_CODE='HO') Order by S.Name"
  loc_F265FA: var_10C = "3000,1000,1000,1000,600,1000,1000"
  loc_F26600: Proc_6_126_F1C850(var_10C)
  loc_F2660E: MemVar_1F95120 = Me
  loc_F26625: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F2662A: Exit Sub
  loc_F2662B: ' Referenced from: F26590
  loc_F26633: Set var_110 = Err()
  loc_F26639: Call 0.Method_arg_1C (var_88)
  loc_F2664A: If (var_88 <> 0) Then
  loc_F26655:   Set var_110 = Err()
  loc_F2665B:   Call 0.Method_arg_2C (var_10C)
  loc_F2667C:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F2668F: End If
  loc_F2668F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E457A0
  'Data Table: 4B8EC8
  loc_E45790: Proc_5_0_1107AD0(&HFF, Me)
  loc_E45798: Call Proc_295_45_14A557C(global_60)
  loc_E4579D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E45610
  'Data Table: 4B8EC8
  loc_E45600: Proc_5_0_1107AD0(&HFF, Me)
  loc_E45608: Call Proc_295_45_14A557C(global_60)
  loc_E4560D: Exit Sub
  loc_E4560E: If 4 Then Exit Sub
  loc_E4560E: End If
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E44FD0
  'Data Table: 4B8EC8
  loc_E44FC0: Proc_5_0_1107AD0(&HFF, Me)
  loc_E44FC8: Call Proc_295_45_14A557C(global_60)
  loc_E44FCD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E44F6C
  'Data Table: 4B8EC8
  loc_E44F5C: Proc_5_0_1107AD0(&HFF, Me)
  loc_E44F64: Call Proc_295_45_14A557C(global_60)
  loc_E44F69: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E21E3C
  'Data Table: 4B8EC8
  Dim Me As Recordset15
  loc_E21E23: Me.Requery -1
  loc_E21E33: Me.Requery -1
  loc_E21E38: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1637ABC
  'Data Table: 4B8EC8
  Dim var_B4 As TextBox
  Dim var_A4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_AC As String
  Dim var_B8 As String
  Dim unk_4B8EDB As Connection15
  Dim var_A0 As Variant
  Dim var_A8 As Variant
  Dim var_13C As String
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_140 As String
  Dim var_148 As String
  Dim var_14C As String
  Dim var_150 As Variant
  Dim var_154 As Variant
  Dim var_158 As Variant
  Dim var_164 As Variant
  Dim var_8C As Recordset15
  Dim var_D8 As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_170 As Double
  Dim var_180 As Variant
  Dim var_108 As Variant
  Dim var_1A0 As Variant
  Dim var_1B0 As Variant
  Dim var_168 As String
  Dim var_160 As Variant
  Dim var_F8 As Variant
  Dim var_26C As Variant
  Dim var_2A4 As TextBox
  Dim var_354 As Variant
  Dim var_258 As Variant
  Dim var_2B4 As Variant
  Dim var_2D4 As Variant
  Dim var_324 As Variant
  Dim var_344 As Variant
  Dim var_394 As Variant
  Dim var_364 As Variant
  Dim var_4FC As Double
  Dim var_410 As String
  loc_16365FC: On Error Goto loc_1637A69
  loc_1636603: var_86 = CByte(0) 'Byte
  loc_1636612: Set var_A0 = Me.Txt
  loc_1636618: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1636641: If (Proc_6_27_EA61EC(var_A4, "Member Name") = 0) Then
  loc_163664B:   Call Txt_GotFocus(CInt(0))
  loc_1636650:   Exit Sub
  loc_1636651: End If
  loc_163665C: Set var_A0 = Me.Txt
  loc_1636662: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_163668B: If (Proc_6_27_EA61EC(var_A4, "Date From") = 0) Then
  loc_1636695:   Call Txt_GotFocus(CInt(1))
  loc_163669A:   Exit Sub
  loc_163669B: End If
  loc_16366A6: Set var_A0 = Me.Txt
  loc_16366AC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4)
  loc_16366D5: If (Proc_6_27_EA61EC(var_A4, "Date To") = 0) Then
  loc_16366DF:   Call Txt_GotFocus(CInt(2))
  loc_16366E4:   Exit Sub
  loc_16366E5: End If
  loc_16366F0: Set var_A0 = Me.Txt
  loc_16366F6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A4)
  loc_163671F: If (Proc_6_27_EA61EC(var_A4, "Change Revenue") = 0) Then
  loc_1636729:   Call Txt_GotFocus(CInt(5))
  loc_163672E:   Exit Sub
  loc_163672F: End If
  loc_163673D: Set var_A8 = Me.Txt
  loc_1636743: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B4)
  loc_163675E: Set var_A0 = Me.Txt
  loc_1636764: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4)
  loc_163678E: If (CDate(var_A4.Text) < CDate(var_B4.Text)) Then
  loc_163679A:   Set var_A0 = Me.Txt
  loc_16367A0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_A4)
  loc_16367A8:   var_A4.SetFocus
  loc_16367C7:   var_D8 = "To Date Can't Be Less Than From Date"
  loc_16367CD:   MsgBox(var_D8, 0, var_F8, var_118, var_138)
  loc_16367DD:   Exit Sub
  loc_16367DE: End If
  loc_16367E4: var_E8 = 0
  loc_1636801: var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,8) AS INT)),1)+1 AS MyCode From MemOutStation WHERE isnumeric(SUBSTRING(Code,3,8) )=1 and SITE_CODE='" & MemVar_1F95070
  loc_1636808: var_B8 = var_A4.Text & "'"
  loc_1636811: unk_4B8EDB.Execute var_B8, var_D8, -1
  loc_1636819: var_A0 = var_A0.Fields
  loc_1636821: var_E8 = var_A4.Item(var_A4)
  loc_1636829: var_A8 = var_A8.Value
  loc_1636862: var_118 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_1636888: var_F8 = Format(CStr(var_F8), "00000000")
  loc_1636890: var_138 = (1 + var_F8)
  loc_163689B: global_108 = CStr(var_138)
  loc_16368B1: Set var_A0 = Me.TopCtrl1
  loc_16368B7: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_16368BF: var_AC = CStr(var_118)
  loc_16368D5: Set var_A4 = Me.Txt
  loc_16368DB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A8, var_B8)
  loc_16368E3: (var_AC = "Add") = var_A8.Text
  loc_16368F5: Set var_B4 = Me.TopCtrl1
  loc_16368FB: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005((var_F8 And (var_B8 = "Yes")))
  loc_1636911: var_E8 = 0
  loc_163693F: var_148 = "Select Max(RevenueChng) From MemOutStation  WHERE Code='" & global_108 & "' and SITE_CODE='" & MemVar_1F95070
  loc_163694F: unk_4B8EDB.Execute var_148 & "'", var_118, -1
  loc_1636957: var_150 = var_150.Fields
  loc_163695F: var_E8 = var_154.Item(var_154)
  loc_1636967: var_158 = var_158.Value
  loc_163698B: Set var_160 = Me.Txt
  loc_1636991: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_164)
  loc_16369DD: If ( Or (((CStr(var_A4) = "Edit") And (Proc_6_38_E69628(var_138, var_138) = "N")) And (var_164.Text = "Yes"))) Then
  loc_16369FE:   Set var_A0 = Me.Txt
  loc_1636A04:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, "Select Convert(VarChar(11),Cast('01/' + FrMonth As smalldatetime),106) As FrMonth,Convert(VarChar(11),Cast('01/' + ToMonth As smalldatetime),106) As ToMonth,Type from MemRevenueForPeriod where Memcode='")
  loc_1636A0C:   var_D8 = var_A4.Tag
  loc_1636A15:   var_B8 = -1 & var_AC
  loc_1636A1C:   var_13C = var_B8 & "'"
  loc_1636A25:   unk_4B8EDB.Execute var_13C, var_A8, 
  loc_1636A30:   Set var_8C = var_A8
  loc_1636A48:   ' Referenced from: 1636C34
  loc_1636A57:   If Not(var_8C.EOF) Then
  loc_1636A87:     var_94 = CDate(Proc_6_38_E69628(CVar(var_8C.Fields.Item("FrMonth"))))
  loc_1636AAA:     var_A4 = var_8C.Fields.Item("ToMonth")
  loc_1636ABB:     var_AC = Proc_6_38_E69628(CVar(var_A4))
  loc_1636AC0:     var_9C = CDate(var_AC)
  loc_1636ACC:     ' Referenced from: 1636C29
  loc_1636AD3:     If (var_94 <= var_9C) Then
  loc_1636AD9:       var_170 = var_94
  loc_1636AF0:       Set var_A0 = Me.Txt
  loc_1636AF6:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4, var_AC, "1/")
  loc_1636B1D:       Set var_A8 = Me.Txt
  loc_1636B23:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_B4, var_13C, "1/")
  loc_1636B2B:       CDate(var_A4.Text & var_AC) = var_B4.Text
  loc_1636B51:       If (CDate(var_9C & var_13C) >  > var_94) Then
  loc_1636B74:         var_F8 = Format(var_94, "MMM/yyyy")
  loc_1636B90:         var_A4 = var_8C.Fields.Item("Type")
  loc_1636BA1:         var_AC = Proc_6_38_E69628(CVar(var_A4), 1)
  loc_1636BC2:         var_118 = "Entry For Month " & var_F8 
  loc_1636BCB:         var_138 = var_118 & " As " 
  loc_1636BD2:         var_1A0 = CVar(var_AC) 'String
  loc_1636BD5:         var_1B0 = var_138 & var_1A0 
  loc_1636BE2:         MsgBox(var_1B0 & " Already Exits.", &H40, "Duplicate Entry", var_210, var_230)
  loc_1636C06:         Exit Sub
  loc_1636C07:       End If
  loc_1636C19:       var_D8 = DateAdd("m", CDbl(1), var_94)
  loc_1636C23:       var_94 = CDate(var_D8)
  loc_1636C29:       GoTo loc_1636ACC
  loc_1636C2C:     End If
  loc_1636C2F:     var_8C.MoveNext
  loc_1636C34:     GoTo loc_1636A48
  loc_1636C37:   End If
  loc_1636C3C:   Set var_8C = Nothing
  loc_1636C6C:   Set var_A0 = Me.Txt
  loc_1636C72:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, "Select count(*) from MemBill where Memcode='", var_D8, -1, var_158)
  loc_1636C7A:   var_160 = var_A4.Tag
  loc_1636C8A:   var_140 = 0 & var_AC & "' and cast('01/' + MthYear As smalldatetime)>=cast('01/' + '"
  loc_1636C9B:   Set var_A8 = Me.Txt
  loc_1636CA1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B4, var_13C, var_9C & var_13C)
  loc_1636CB9:   var_14C = var_F8 & var_13C & "' As smalldatetime) and cast('01/' + MthYear As smalldatetime)<=cast('01/' + '"
  loc_1636CCA:   Set var_150 = Me.Txt
  loc_1636CD0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_154, var_148)
  loc_1636CD8:   var_14C = var_154.Text
  loc_1636CF1:   unk_4B8EDB.Execute var_94 & var_148 & "' As smalldatetime)", 1, 
  loc_1636CF9:    = var_158.Fields
  loc_1636D01:    = var_160.Item()
  loc_1636D09:    = var_B4.Text.Value
  loc_1636D14:   Proc_6_39_E7D3A0(var_118)
  loc_1636D57:   If (var_118 > 0) Then
  loc_1636D73:     MsgBox("Bill Already Exists of This Member", 0, var_F8, var_118, var_138)
  loc_1636D83:     Exit Sub
  loc_1636D84:   End If
  loc_1636D84: End If
  loc_1636D92: Set var_A0 = Me.Txt
  loc_1636D98: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A4)
  loc_1636DB7: If (var_A4.Text = "Yes") Then
  loc_1636DC5:   Set var_A0 = Me.Txt
  loc_1636DCB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4)
  loc_1636DF4:   If (Proc_6_27_EA61EC(var_A4, "App. Month From") = 0) Then
  loc_1636DFE:     Call Txt_GotFocus(CInt(3))
  loc_1636E03:     Exit Sub
  loc_1636E04:   End If
  loc_1636E0F:   Set var_A0 = Me.Txt
  loc_1636E15:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4)
  loc_1636E3E:   If (Proc_6_27_EA61EC(var_A4, "App. Month To") = 0) Then
  loc_1636E48:     Call Txt_GotFocus(CInt(4))
  loc_1636E4D:     Exit Sub
  loc_1636E4E:   End If
  loc_1636E73:   For var_234 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_234 'Integer
  loc_1636E7F:     If (var_88 = 1) Then
  loc_1636E86:       var_C8 = CVar(CLng(var_88)) 'Long
  loc_1636E8E:       var_108 = CVar(CLng(5)) 'Long
  loc_1636EA8:       var_F8 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1636EAE:       var_118 = Trim(var_F8)
  loc_1636ECA:       If (var_118 = vbNullString) Then
  loc_1636EE6:         MsgBox("Define revenue ", &H40, var_F8, var_118, var_138)
  loc_1636EF6:         Exit Sub
  loc_1636EF7:       End If
  loc_1636EF7:     End If
  loc_1636EFB:     var_C8 = CVar(CLng(var_88)) 'Long
  loc_1636F03:     var_108 = CVar(CLng(5)) 'Long
  loc_1636F3F:     If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_1636F46:       var_C8 = CVar(CLng(var_88)) 'Long
  loc_1636F4E:       var_108 = CVar(CLng(3)) 'Long
  loc_1636F8A:       If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1636F91:         var_C8 = CVar(CLng(var_88)) 'Long
  loc_1636F99:         var_108 = CVar(CLng(1)) 'Long
  loc_1636FE0:         MsgBox("Fill Nature For Revenue " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_1A0, var_1B0)
  loc_1636FFD:         Set var_A0 = Me.FGrid
  loc_163700E:         Exit Sub
  loc_163700F:       End If
  loc_1637013:       var_C8 = CVar(CLng(var_88)) 'Long
  loc_163701B:       var_108 = CVar(CLng(4)) 'Long
  loc_1637057:       If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_163705E:         var_C8 = CVar(CLng(var_88)) 'Long
  loc_1637066:         var_108 = CVar(CLng(1)) 'Long
  loc_1637080:         var_F8 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_16370AD:         MsgBox("Fill Month For Revenue " & Trim(var_F8), &H40, "Information", var_1A0, var_1B0)
  loc_16370CA:         Set var_A0 = Me.FGrid
  loc_16370DB:         Exit Sub
  loc_16370DC:       End If
  loc_16370DC:     End If
  loc_16370DF:   Next var_234 'Integer
  loc_16370E4: End If
  loc_16370ED: unk_4B8EDB.BeginTrans var_238
  loc_16370F6: var_86 = CByte(1) 'Byte
  loc_16370FE: Set var_A0 = Me.TopCtrl1
  loc_1637104: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_163711D: If (CStr() = "Add") Then
  loc_163712E:   Set var_A0 = Me.Txt
  loc_1637134:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4)
  loc_163714C:   Set var_A8 = Me.Txt
  loc_1637152:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_163715A:   var_D8 = CVar(var_B4) 'Address
  loc_1637161:   Proc_6_7_F26918(var_F8, var_D8)
  loc_1637171:   Set var_150 = Me.Txt
  loc_1637177:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_154)
  loc_1637186:   Proc_6_7_F26918(var_1B0, CVar(var_154))
  loc_1637199:   Set var_158 = Me.Txt
  loc_163719F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_160)
  loc_16371E4:   Set var_164 = Me.Txt
  loc_16371EA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_26C)
  loc_1637205:   Set var_2A0 = Me.Txt
  loc_163720B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_2A4)
  loc_1637213:   var_168 = var_2A4.Text
  loc_163721D:   var_354 = CVar(Proc_6_15_EF37AC(var_B4)) 'String
  loc_1637223:   Proc_6_7_F26918(var_364)
  loc_163723F:   var_AC = "Insert Into MemOutStation(Code,Type,MemCode,FrDate,ToDate,RevenueChng,FrMonth,ToMonth,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_108
  loc_163728B:   var_258 = CVar(var_AC & "','" & global_80 & "','" & var_A4.Tag & "',") & var_F8 & "," & var_1B0 & ",'" & IIf((var_160.Text = "Yes"), "Y", "N") 
  loc_16372D7:   var_324 = var_258 & "','" & CVar(var_26C.Text) & "','" & CVar(var_168) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) 
  loc_16372E0:   var_344 = var_324 & "'," 
  loc_1637311:   unk_4B8EDB.Execute CStr(var_344 & var_364 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_3F8, -1
  loc_1637388: Else
  loc_16373A2:   If (global_60.RecordCount > 0) Then
  loc_16373BC:     var_AC = "Delete From MemRevenueForPeriod Where Code='" & global_108
  loc_16373CD:     var_13C = var_AC & "' And Type='" & global_80
  loc_16373DD:     unk_4B8EDB.Execute var_13C & "'", var_D8, -1
  loc_16373F3:   End If
  loc_1637401:   Set var_A0 = Me.Txt
  loc_1637407:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC)
  loc_163740F:   var_A0 = var_A4.Tag
  loc_163741F:   Set var_A8 = Me.Txt
  loc_1637425:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B4)
  loc_1637434:   Proc_6_7_F26918(var_F8, CVar(var_B4))
  loc_1637444:   Set var_150 = Me.Txt
  loc_163744A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_154)
  loc_1637452:   var_1A0 = CVar(var_154) 'Address
  loc_1637459:   Proc_6_7_F26918(var_1B0, var_1A0)
  loc_163746C:   Set var_158 = Me.Txt
  loc_1637472:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_160, var_13C)
  loc_163747A:   var_3FC = var_160.Text
  loc_163748F:   var_210 = "Y"
  loc_16374B7:   Set var_164 = Me.Txt
  loc_16374BD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_26C)
  loc_16374D8:   Set var_2A0 = Me.Txt
  loc_16374DE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_2A4)
  loc_16374F0:   var_324 = CVar(Proc_6_15_EF37AC(var_354)) 'String
  loc_16374F6:   Proc_6_7_F26918(var_344)
  loc_163753C:   var_258 = CVar("UPDATE MemOutStation SET MemCode='" & var_AC & "',FrDate=") & var_F8 & ",ToDate=" & var_1B0 & ",RevenueChng='" & IIf((var_13C = "Yes"), var_210, "N") 
  loc_163756B:   var_2D4 = var_258 & "',FrMonth='" & CVar(var_26C.Text) & "',ToMonth='" & CVar(var_2A4.Text) & "',U_name='" 
  loc_16375A1:   var_394 = var_2D4 & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_344 & ",U_AE='E',Site_Code='" & CVar(MemVar_1F95070) & "' WHERE Code='" 
  loc_16375C5:   unk_4B8EDB.Execute CStr(var_394 & CVar(global_108) & "'"), var_3F8, -1
  loc_1637631: End If
  loc_1637656: For var_400 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_400 'Integer
  loc_1637660:   var_C8 = CVar(CLng(var_88)) 'Long
  loc_1637668:   var_108 = CVar(CLng(5)) 'Long
  loc_16376A4:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_16376AB:     var_C8 = CVar(CLng(var_88)) 'Long
  loc_16376C2:     var_D8 = Me.FGrid.TextMatrix)
  loc_16376DC:     Set var_A4 = Me.Txt
  loc_16376E2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_168, var_D8, CVar(CLng(5)), var_C8)
  loc_16376EA:     var_108 = var_A8.Tag
  loc_16376FD:     Set var_B4 = Me.Txt
  loc_1637703:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_150, var_408, var_C8)
  loc_163770B:     1 = var_150.Text
  loc_163771E:     Set var_154 = Me.Txt
  loc_1637724:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_158, var_414)
  loc_163772C:     var_3FC = var_158.Text
  loc_1637735:     var_180 = CVar(CLng(var_88)) 'Long
  loc_163774C:     var_F8 = Me.FGrid.TextMatrix)
  loc_163775F:     var_4FC = Val(CStr(var_F8))
  loc_163777D:     var_118 = Me.FGrid.TextMatrix)
  loc_16377A4:     var_138 = Me.FGrid.TextMatrix)
  loc_16377BB:     Proc_6_7_F26918(var_1A0, CVar(Proc_6_15_EF37AC(var_138, CVar(CLng(4)), CVar(CLng(var_88)), var_118, CVar(CLng(3)))), CVar(CLng(var_88)), var_4FC)
  loc_16377C4:     Set var_2A0 = Me.TopCtrl1
  loc_16377CA:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(2)))
  loc_1637815:     var_AC = "Insert Into MemRevenueForPeriod(Code,Type,RevCode,MemCode,FrMonth,ToMonth,Amount,Nature,AppMonth," & "U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) "
  loc_1637865:     var_410 = var_AC & " Values ('" & global_108 & "','" & global_80 & "','" & CStr(var_D8) & "','" & var_168 & "','" & var_408
  loc_16378BF:     var_1B0 = CVar(var_410 & "','" & var_414 & "'," & CStr(var_4FC) & ",'" & CStr(var_118) & "','" & CStr(var_138) & "','" & MemVar_1F950C8 & "',") 'String
  loc_16378FB:     var_2B4 = var_1B0 & var_1A0 & ",'" & IIf((CStr(var_210) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) 
  loc_1637912:     unk_4B8EDB.Execute CStr(var_2B4 & "')"), var_2D4, -1
  loc_16379A0:   End If
  loc_16379A3: Next var_400 'Integer
  loc_16379AE: unk_4B8EDB.CommitTrans
  loc_16379B7: var_86 = CByte(0) 'Byte
  loc_16379C9: Me.Recordset15.Requery -1
  loc_16379F9: Me.Recordset15.Find "SearchCode ='" & global_108 & "'", 0, 1
  loc_1637A09: Set var_A0 = Me.TopCtrl1
  loc_1637A0F: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C8)
  loc_1637A28: If (CStr() = "Add") Then
  loc_1637A2B:   Call TopCtrl1_UnknownEvent_A()
  loc_1637A30:   Exit Sub
  loc_1637A31: End If
  loc_1637A4A: var_AC = "INI"
  loc_1637A58: Call Proc_295_46_E8834C(Proc_5_1_100EC1C(var_AC, Me))
  loc_1637A63: Call Proc_295_45_14A557C(global_60)
  loc_1637A68: Exit Sub
  loc_1637A69: ' Referenced from: 16365FC
  loc_1637A72: If (CInt(var_86) = 1) Then
  loc_1637A7B:   unk_4B8EDB.RollbackTrans
  loc_1637A80: End If
  loc_1637A88: Set var_A0 = Err()
  loc_1637A8E: Call 0.Method_arg_2C (var_AC)
  loc_1637AA7: MsgBox(CVar(var_AC), &H10, var_F8, var_118, var_138)
  loc_1637ABA: Exit Sub
End Sub

Private Sub Form_Load() '116DB04
  'Data Table: 4B8EC8
  Dim var_BC As Variant
  Dim var_AC As String
  Dim var_C0 As String
  Dim Me As Recordset15
  Dim unk_4B8EDB As Connection15
  Dim var_A8 As Variant
  Dim var_C8 As Label
  loc_116D740: On Error Goto loc_116DABE
  loc_116D74D: Set var_A8 = Me.TopCtrl1
  loc_116D753: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_116D761: Call 0.Method_arg_50 (var_AC)
  loc_116D771: Set var_A8 = Me.TopCtrl1
  loc_116D777: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_AC))
  loc_116D788: global_80 = "OutStation"
  loc_116D7A8: Me.TopCtrl1.CursorLocation = 3
  loc_116D7D2: var_C0 = "Select SubCode as Code,Name,Discount,CardNo,CompanyType From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='"
  loc_116D7E0: var_BC = CVar(var_C0 & MemVar_1F95078 & "') Order By Name") 'String
  loc_116D7EA: Me.Open var_BC, CVar(MemVar_1F95044), 3
  loc_116D804: CVarUnk
  loc_116D809: VerifyVarObj
  loc_116D815: LateIdStAd
  loc_116D837: var_AC = "SELECT MembershipRevMast.Code, MembershipRevMast.Description As Name FROM MembershipRevMast Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_116D847: unk_4B8EDB.Execute var_AC & "' or LOGSITE_CODE='HO') ORDER BY MembershipRevMast.Description", var_BC, -1
  loc_116D876: CVarUnk
  loc_116D87B: VerifyVarObj
  loc_116D881: Set var_A8 = Me.DGRev
  loc_116D887: LateIdStAd
  loc_116D8BA: var_C0 = "Select Code as SearchCode,Type,SITE_CODE,LOGSITE_CODE From MemOutStation where Site_Code='" & MemVar_1F95070 & "' And (LOGSITE_CODE='"
  loc_116D8D5: Me.DGRev.Open CVar(var_C0 & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By Code"), CVar(MemVar_1F95044), 3
  loc_116D8F5: Set var_A8 = Me.TopCtrl1
  loc_116D8FB: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(CStr(5800)))
  loc_116D91F: var_AC = "INI"
  loc_116D92D: Call Proc_295_46_E8834C(Proc_5_1_100EC1C(var_AC, Me, global_60, 1, -1, Me), Me.DGMember, Me, Me)
  loc_116D938: Call Proc_295_42_111603C(New, 1)
  loc_116D93D: Call Proc_295_45_14A557C(-1)
  loc_116D951: Me.LblUser.Left = CDbl(500)
  loc_116D968: Me.LblUser.Top = CDbl(7800)
  loc_116D97F: Me.LblLDt.Top = CDbl(8160)
  loc_116D996: Me.LblLDt.Left = CDbl(500)
  loc_116D9AC: Me.Label1.BackColor = CLng(MemVar_1F951B4)
  loc_116D9C1: Set var_A8 = Me.Label2
  loc_116D9C7: Call 0.Method_Form_Load0 (0, var_C8)
  loc_116D9CF: var_C8.BackColor = CLng(MemVar_1F951B4)
  loc_116D9E8: Set var_A8 = Me.Label2
  loc_116D9EE: Call 0.Method_Form_Load0 (1, var_C8)
  loc_116D9F6: var_C8.BackColor = CLng(MemVar_1F951B4)
  loc_116DA0F: Set var_A8 = Me.Label2
  loc_116DA15: Call 0.Method_Form_Load0 (2, var_C8)
  loc_116DA1D: var_C8.BackColor = CLng(MemVar_1F951B4)
  loc_116DA36: Set var_A8 = Me.Label2
  loc_116DA3C: Call 0.Method_Form_Load0 (3, var_C8)
  loc_116DA44: var_C8.BackColor = CLng(MemVar_1F951B4)
  loc_116DA5D: Set var_A8 = Me.Label2
  loc_116DA63: Call 0.Method_Form_Load0 (4, var_C8)
  loc_116DA6B: var_C8.BackColor = CLng(MemVar_1F951B4)
  loc_116DA7E: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_116DA90: Set var_A8 = Me.FGrid
  loc_116DA96: var_A8.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_116DAA7: Call 0.Method_arg_160 (var_A8)
  loc_116DAB5: Call 0.Method_arg_164 (var_A8)
  loc_116DABD: Exit Sub
  loc_116DABE: ' Referenced from: 116D740
  loc_116DAC6: Set var_A8 = Err()
  loc_116DACC: Call 0.Method_arg_2C (var_AC)
  loc_116DAED: MsgBox(CVar(var_AC), &H40, "Information", var_EC, var_10C)
  loc_116DB00: Exit Sub
  loc_116DB01: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5698C
  'Data Table: 4B8EC8
  loc_E56957: Set global_64 = Nothing
  loc_E56969: Set global_60 = Nothing
  loc_E5697B: Set global_68 = Nothing
  loc_E56987: global_52 = 0
  loc_E5698A: Exit Sub
End Sub

Private Sub Form_Activate() 'E50798
  'Data Table: 4B8EC8
  loc_E50768: On Error Goto loc_E50792
  loc_E5076F: Set var_88 = Me.TopCtrl1
  loc_E50775: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E5078A: If (CLng(CInt()) = &H2D) Then
  loc_E5078D:   Call TopCtrl1_UnknownEvent_15()
  loc_E50792:   ' Referenced from: E50768
  loc_E50792: End If
  loc_E50792: Proc_6_60_E63754()
  loc_E50797: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E252BC
  'Data Table: 4B8EC8
  loc_E252A1: If (global_52 = &HFF) Then
  loc_E252B1:   Me.Global.Unload Me
  loc_E252B9: End If
  loc_E252B9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E88B4C
  'Data Table: 4B8EC8
  loc_E88AE8: On Error Goto loc_E88B08
  loc_E88AFF: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E88B07: Exit Sub
  loc_E88B08: ' Referenced from: E88AE8
  loc_E88B10: Set var_88 = Err()
  loc_E88B16: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E88B37: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E88B4A: Exit Sub
  loc_E88B4B: Exit Sub
End Sub

Private Sub CmdFillGrid_Click() 'DFE9C4
  'Data Table: 4B8EC8
  loc_DFE9BC: Call Proc_295_44_11922D4()
  loc_DFE9C1: Exit Sub
End Sub

Public Function global_52Get() '4B9DFC
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4B9E0B
  global_52 = Value
End Sub

Public Function global_56Get() '4B9E1A
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '4B9E29
  global_56 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E9D420
  'Data Table: 4B8EC8
  loc_E9D3A6: On Error Goto loc_E9D419
  loc_E9D3B2: Me.Recordset15.MoveFirst
  loc_E9D3DF: Me.Recordset15.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E9D40B: Proc_5_0_1107AD0(&HFF, Me, global_60)
  loc_E9D413: Call Proc_295_45_14A557C(0)
  loc_E9D418: Exit Sub
  loc_E9D419: ' Referenced from: E9D3A6
  loc_E9D419: Proc_6_60_E63754(var_A0)
  loc_E9D41E: Exit Sub
End Sub

Public Sub Proc_295_42_111603C
  'Data Table: 4B8EC8
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  Dim var_104 As TextBox
  Dim var_10C As DataGrid
  Dim var_110 As TextBox
  loc_1115CF0: Set var_88 = Me.FGrid
  loc_1115CFF: var_88.Height = CVar(CDbl(4250))
  loc_1115D10: var_88.Width = CVar(CDbl(8500))
  loc_1115D21: var_88.Cols = 6
  loc_1115D32: var_88.Rows = 2
  loc_1115D4B: global_104 = CStr(CLng(var_88.BackColor))
  loc_1115D58: var_98 = CVar(CLng(5)) 'Long
  loc_1115D5D: var_CC = 0
  loc_1115D69: LateIdCallSt
  loc_1115D74: var_98 = CVar(CLng(5)) 'Long
  loc_1115D7F: var_CC = CVar(CInt(4)) 'Integer
  loc_1115D86: LateIdCallSt
  loc_1115D8E: var_98 = 1
  loc_1115D9A: var_CC = CVar(CLng(5)) 'Long
  loc_1115D9F: var_EC = "0"
  loc_1115DA8: LateIdCallSt
  loc_1115DB0: var_98 = 0
  loc_1115DBC: var_CC = CVar(CLng(1)) 'Long
  loc_1115DC1: var_EC = "Revenue"
  loc_1115DCA: LateIdCallSt
  loc_1115DD5: var_98 = CVar(CLng(1)) 'Long
  loc_1115DDA: var_CC = &HFA0
  loc_1115DE6: LateIdCallSt
  loc_1115DF1: var_98 = CVar(CLng(1)) 'Long
  loc_1115DFC: var_CC = CVar(CInt(1)) 'Integer
  loc_1115E03: LateIdCallSt
  loc_1115E0B: var_98 = 0
  loc_1115E17: var_CC = CVar(CLng(2)) 'Long
  loc_1115E1C: var_EC = "Amount"
  loc_1115E25: LateIdCallSt
  loc_1115E30: var_98 = CVar(CLng(2)) 'Long
  loc_1115E35: var_CC = &H4B0
  loc_1115E41: LateIdCallSt
  loc_1115E4C: var_98 = CVar(CLng(2)) 'Long
  loc_1115E57: var_CC = CVar(CInt(7)) 'Integer
  loc_1115E5E: LateIdCallSt
  loc_1115E66: var_98 = 0
  loc_1115E72: var_CC = CVar(CLng(3)) 'Long
  loc_1115E77: var_EC = "Nature"
  loc_1115E80: LateIdCallSt
  loc_1115E8B: var_98 = CVar(CLng(3)) 'Long
  loc_1115E90: var_CC = &H708
  loc_1115E9C: LateIdCallSt
  loc_1115EA7: var_98 = CVar(CLng(3)) 'Long
  loc_1115EB2: var_CC = CVar(CInt(1)) 'Integer
  loc_1115EB9: LateIdCallSt
  loc_1115EC1: var_98 = 0
  loc_1115ECD: var_CC = CVar(CLng(4)) 'Long
  loc_1115ED2: var_EC = "Month"
  loc_1115EDB: LateIdCallSt
  loc_1115EE6: var_98 = CVar(CLng(4)) 'Long
  loc_1115EEB: var_CC = &H320
  loc_1115EF7: LateIdCallSt
  loc_1115F02: var_98 = CVar(CLng(4)) 'Long
  loc_1115F0D: var_CC = CVar(CInt(1)) 'Integer
  loc_1115F14: LateIdCallSt
  loc_1115F1C: var_98 = 0
  loc_1115F28: var_CC = CVar(CLng(0)) 'Long
  loc_1115F2D: var_EC = "O"
  loc_1115F36: LateIdCallSt
  loc_1115F41: var_98 = CVar(CLng(0)) 'Long
  loc_1115F46: var_CC = &H64
  loc_1115F52: LateIdCallSt
  loc_1115F5D: var_98 = CVar(CLng(0)) 'Long
  loc_1115F6F: LateIdCallSt
  loc_1115F77: var_98 = True
  loc_1115F7E: var_88.Enabled = var_98
  loc_1115F91: Set var_100 = Me.Txt
  loc_1115F97: Call 0.Method_Proc_295_42_111603C0 (CInt(0), var_104, var_108, var_88, CVar(CInt(4)), var_98, var_88)
  loc_1115F9F: var_CC = var_104.Left
  loc_1115FA7: var_98 = CVar(var_108) 'Single
  loc_1115FB6: Me.DGMember.Left = var_98
  loc_1115FD2: Set var_10C = Me.Txt
  loc_1115FD8: Call 0.Method_Proc_295_42_111603C0 (CInt(0), var_110, var_114, var_98, var_88)
  loc_1115FE0: var_EC = var_110.Height
  loc_1115FF3: Set var_100 = Me.Txt
  loc_1115FF9: Call 0.Method_Proc_295_42_111603C0 (CInt(0), var_104, var_108)
  loc_1116001: var_CC = var_104.Top
  loc_1116011: var_98 = CVar(((var_108 + var_114) + CDbl(&H19))) 'Single
  loc_1116020: Me.DGMember.Top = var_98
  loc_1116034: Set var_88 = Nothing 
  loc_1116038: Exit Sub
End Sub

Public Sub Proc_295_43_F18D70
  'Data Table: 4B8EC8
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F18C86: Set var_8C = Me.Txt
  loc_F18C8C: Call 0.Method_Proc_295_43_F18D70C (var_8E, var_86)
  loc_F18C9C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F18CB2:   Set var_8C = Me.Txt
  loc_F18CB8:   Call 0.Method_Proc_295_43_F18D700 (CInt(var_86), var_98)
  loc_F18CC0:   var_98.Text = vbNullString
  loc_F18CDC:   Set var_8C = Me.Txt
  loc_F18CE2:   Call 0.Method_Proc_295_43_F18D700 (CInt(var_86), var_98)
  loc_F18CEA:   var_98.Tag = vbNullString
  loc_F18CF9: Next var_92 'Byte
  loc_F18D12: Me.FGrid.Rows = 1
  loc_F18D2F: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F18D37: Set var_98 = Me.FGrid
  loc_F18D66: Me.FGrid.FixedRows = 1
  loc_F18D6E: Exit Sub
End Sub

Public Sub Proc_295_44_11922D4
  'Data Table: 4B8EC8
  Dim var_90 As String
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_C8 As String
  Dim var_CC As String
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_FC As String
  Dim var_110 As Variant
  Dim var_150 As Variant
  Dim unk_4B8EDB As Connection15
  Dim var_8A As Integer
  Dim var_88 As Recordset15
  loc_1191F34: var_90 = "Select MemCatMast.Code AS CatCode , MemCatMast.Name AS CatName , MembershipRevMast.Code As RevCode, MembershipRevMast.Description, MR.AppDate , MR.Amount , MR.Nature, MR.AppMonth From ((MemCatRevWise MR Left Join MemCatMast On MR.MemCat = MemCatMast.Code) LEFT JOIN MembershipRevMast ON MR.RevCode = MembershipRevMast.Code) Where MR.Site_Code='" & MemVar_1F95070
  loc_1191F77: var_C8 = Proc_6_38_E69628(CVar(Me.Fields.Item("CompanyType")), var_90 & "' and (MR.LOGSITE_CODE='" & MemVar_1F95078 & "' or MR.LOGSITE_CODE='HO') And MR.MemCat='", var_184)
  loc_1191F7B: var_CC = -1 & var_C8
  loc_1191FB0: var_FC = Proc_6_38_E69628(CVar(Me.Fields.Item("CompanyType")), var_CC & "' And MR.AppDate=(Select Top 1 AppDate From MemCatRevWise Where MemCat='")
  loc_1191FC9: Proc_6_7_F26918(var_120, MemVar_1F950EC)
  loc_1191FE8: unk_4B8EDB.Execute CStr(CVar(var_188 & var_FC & "' And Appdate<=") & var_120 & "Order By AppDate Desc)"), , 
  loc_1191FF3: Set var_88 = var_188
  loc_1192029: var_8A = 1
  loc_119203F: Me.FGrid.Rows = 1
  loc_1192047: ' Referenced from: 1192260
  loc_1192056: If Not(var_88.EOF) Then
  loc_1192059:   var_AC = vbNullString
  loc_1192063:   Set var_9C = Me.FGrid
  loc_1192078:   Set var_190 = Me.FGrid
  loc_119207F:   var_E0 = CVar(CLng(var_8A)) 'Long
  loc_1192087:   var_150 = CVar(CLng(5)) 'Long
  loc_11920B7:   var_F4 = CVar(CStr(var_88.Fields.Item("RevCode").Value)) 'String
  loc_11920BE:   LateIdCallSt
  loc_11920E0:   var_150 = CVar(CLng(1)) 'Long
  loc_119210D:   var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Description")), var_150, CVar(CLng(var_8A)), var_190, var_F4)) 'String
  loc_1192114:   LateIdCallSt
  loc_119214C:   Proc_6_39_E7D3A0(var_F4, CVar(var_88.Fields.Item("Amount")), var_190, var_F4, var_150)
  loc_1192155:   var_110 = CVar(CLng(var_8A)) 'Long
  loc_119218D:   LateIdCallSt
  loc_11921DE:   var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Nature")), CVar(CLng(3)), CVar(CLng(var_8A)), var_190, CVar(CStr(Format(var_F4, "0.00"))), 1, 1)) 'String
  loc_11921E5:   LateIdCallSt
  loc_1192230:   var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("AppMonth")), CVar(CLng(4)), CVar(CLng(var_8A)), var_190, var_F4, CVar(CLng(2)))) 'String
  loc_1192237:   LateIdCallSt
  loc_119224B:   Set var_190 = Nothing 
  loc_1192255:   var_8A = (var_8A + 1)
  loc_119225B:   var_88.MoveNext
  loc_1192260:   GoTo loc_1192047
  loc_1192263: End If
  loc_1192263: var_AC = 0
  loc_119226D: Set var_9C = Me.FGrid
  loc_119229A: If (CLng(Me.FGrid.Rows) = 1) Then
  loc_119229D:   var_AC = vbNullString
  loc_11922A7:   Set var_9C = Me.FGrid
  loc_11922B8: End If
  loc_11922CB: Me.FGrid.FixedRows = 1
  loc_11922D3: Exit Sub
End Sub

Public Sub Proc_295_45_14A557C
  'Data Table: 4B8EC8
  Dim var_98 As String
  Dim var_D8 As Variant
  Dim var_B4 As Variant
  Dim var_A4 As Variant
  Dim var_B8 As Field20
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim unk_4B8EDB As Connection15
  Dim var_11C As Variant
  Dim var_130 As Fields15
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_88 As Recordset15
  Dim var_188 As Fields15
  Dim var_184 As Variant
  Dim var_1E0 As Label
  Dim var_1E6 As Integer
  Dim var_1BC As TextBox
  Dim var_1EC As TextBox
  Dim Me As Recordset15
  Dim var_8E As Integer
  Dim var_8C As Recordset15
  Dim var_12C As Variant
  loc_14A48F8: On Error Goto loc_14A5576
  loc_14A4915: If (Me.Recordset15.RecordCount > 0) Then
  loc_14A4918:   Call Proc_295_43_F18D70()
  loc_14A4931:   var_98 = "Select M.*,S.Name As MemName From MemOutStation M Inner Join SubGroup S On M.MemCode=S.SubCode where M.Site_Code='" & MemVar_1F95070
  loc_14A4979:   var_E8 = CVar(var_98 & "' And (M.LOGSITE_CODE='" & MemVar_1F95078 & "' or M.LOGSITE_CODE='HO') And M.Code='") & Me.Recordset15.Fields.Item("SearchCode").Value 
  loc_14A4990:   unk_4B8EDB.Execute CStr(var_E8 & "'"), var_12C, -1
  loc_14A499B:   Set var_88 = var_130
  loc_14A49D3:   var_98 = "Select M.*,MR.Description As Description From MemRevenueForPeriod M Inner Join MembershipRevMast MR On M.RevCode=MR.Code where M.Site_Code='" & MemVar_1F95070
  loc_14A4A1B:   var_E8 = CVar(var_98 & "' And (M.LOGSITE_CODE='" & MemVar_1F95078 & "' or M.LOGSITE_CODE='HO') And M.Code='") & Me.Recordset15.Fields.Item("SearchCode").Value 
  loc_14A4A6F:   unk_4B8EDB.Execute CStr(var_E8 & "' And M.Type='" & Me.Recordset15.Fields.Item("Type").Value & "'"), var_184, -1
  loc_14A4A7A:   Set var_8C = var_188
  loc_14A4AE2:   var_130 = var_88.Fields
  loc_14A4B4B:   var_164 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE")), var_188) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_130.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_14A4B90:   Me.LblUser.Caption = CStr(var_130 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_164)))
  loc_14A4C0A:   var_134 = var_88.Fields.Item("U_AE")
  loc_14A4C6B:   var_164 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_134)) = "E"), "Last Update : ", "entdt : "))
  loc_14A4C8A:   var_1BC = var_88.Fields.Item("U_EntDt")
  loc_14A4CB0:   Me.LblLDt.Caption = CStr(var_164 & CVar(Proc_6_38_E69628(CVar(var_1BC))))
  loc_14A4CFC:   If (var_88.RecordCount > 0) Then
  loc_14A4D2D:     global_108 = Proc_6_38_E69628(CVar(var_88.Fields.Item("Code")))
  loc_14A4D70:     Set var_130 = Me.Txt
  loc_14A4D76:     Call 0.Method_Proc_295_45_14A557C0 (CInt(0), var_134)
  loc_14A4D7E:     var_134.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MemName")))
  loc_14A4DC8:     Set var_130 = Me.Txt
  loc_14A4DCE:     Call 0.Method_Proc_295_45_14A557C0 (CInt(0), var_134)
  loc_14A4DD6:     var_134.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("MemCode")))
  loc_14A4E75:     var_98 = CStr(IIf(IsNull(CVar(var_88.Fields.Item("FrDate"))), vbNullString, Format(CVar(var_88.Fields.Item("FrDate")), "dd/MMM/yyyy")))
  loc_14A4E84:     Set var_188 = Me.Txt
  loc_14A4E8A:     Call 0.Method_Proc_295_45_14A557C0 (CInt(1), var_1BC, var_98)
  loc_14A4E92:     var_1BC.Text = 1
  loc_14A4EDE:     var_1E6 = IsNull(CVar(var_88.Fields.Item("ToDate")))
  loc_14A4EF8:     var_134 = var_88.Fields.Item("ToDate")
  loc_14A4F50:     Set var_188 = Me.Txt
  loc_14A4F56:     Call 0.Method_Proc_295_45_14A557C0 (CInt(2), var_1BC, CStr(IIf(var_1E6, vbNullString, Format(CVar(var_134), "dd/MMM/yyyy"))), 1)
  loc_14A4F5E:     var_1BC.Text = 1
  loc_14A4FEC:     Set var_130 = Me.Txt
  loc_14A4FF2:     Call 0.Method_Proc_295_45_14A557C0 (CInt(5), var_134, CStr(IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("RevenueChng")), var_1E6) = "Y"), "Yes", "No")))
  loc_14A4FFA:     var_134.Text = 1
  loc_14A50CF:     var_164 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("FrMonth"))) = vbNullString), CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("FrMonth")))), Format(CVar(var_88.Fields.Item("FrMonth")), "MMM/yyyy"))
  loc_14A50E6:     Set var_1E0 = Me.Txt
  loc_14A50EC:     Call 0.Method_Proc_295_45_14A557C0 (CInt(3), var_1EC, CStr(var_164))
  loc_14A50F4:     var_1EC.Text = 1
  loc_14A513B:     var_B8 = var_88.Fields.Item("ToMonth")
  loc_14A5152:     var_F8 = "ToMonth"
  loc_14A516E:     var_D8 = CVar(var_88.Fields.Item(var_F8)) 'Address
  loc_14A51D5:     var_164 = IIf((Proc_6_38_E69628(CVar(var_B8), 1) = vbNullString), CVar(Proc_6_38_E69628(var_D8)), Format(CVar(var_88.Fields.Item("ToMonth")), "MMM/yyyy"))
  loc_14A51EC:     Set var_1E0 = Me.Txt
  loc_14A51F2:     Call 0.Method_Proc_295_45_14A557C0 (CInt(4), var_1EC, CStr(var_164))
  loc_14A51FA:     var_1EC.Text = 1
  loc_14A5241:     If (Me.RecordCount > 0) Then
  loc_14A524A:       Me.MoveFirst
  loc_14A526D:       Set var_A4 = Me.Txt
  loc_14A5273:       Call 0.Method_Proc_295_45_14A557C0 (CInt(0), var_B8, "Name =", 0)
  loc_14A5282:       Proc_6_17_EAAE40(var_D8, CVar(var_B8), 1)
  loc_14A5298:       Me.Find CStr(var_F8 & var_D8), 1, var_1E6
  loc_14A52AC:     End If
  loc_14A52AC:   End If
  loc_14A52AE:   var_8E = 1
  loc_14A52C4:   Me.FGrid.Rows = 1
  loc_14A52CC:   ' Referenced from: 14A54E5
  loc_14A52DB:   If Not(var_8C.EOF) Then
  loc_14A52DE:     var_B4 = vbNullString
  loc_14A52E8:     Set var_A4 = Me.FGrid
  loc_14A52FD:     Set var_1F0 = Me.FGrid
  loc_14A5304:     var_F8 = CVar(CLng(var_8E)) 'Long
  loc_14A530C:     var_154 = CVar(CLng(5)) 'Long
  loc_14A533C:     var_D8 = CVar(CStr(var_8C.Fields.Item("RevCode").Value)) 'String
  loc_14A5343:     LateIdCallSt
  loc_14A5365:     var_154 = CVar(CLng(1)) 'Long
  loc_14A5392:     var_D8 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Description")), var_154, CVar(CLng(var_8E)), var_1F0, var_D8)) 'String
  loc_14A5399:     LateIdCallSt
  loc_14A53D1:     Proc_6_39_E7D3A0(var_D8, CVar(var_8C.Fields.Item("Amount")), var_1F0, var_D8, var_154)
  loc_14A53DA:     var_11C = CVar(CLng(var_8E)) 'Long
  loc_14A5412:     LateIdCallSt
  loc_14A5463:     var_D8 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Nature")), CVar(CLng(3)), CVar(CLng(var_8E)), var_1F0, CVar(CStr(Format(var_D8, "0.00"))), 1, 1)) 'String
  loc_14A546A:     LateIdCallSt
  loc_14A5480:     var_F8 = CVar(CLng(var_8E)) 'Long
  loc_14A54B5:     var_D8 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("AppMonth")), CVar(CLng(4)), var_F8, var_1F0, var_D8, CVar(CLng(2)))) 'String
  loc_14A54BC:     LateIdCallSt
  loc_14A54D0:     Set var_1F0 = Nothing 
  loc_14A54DA:     var_8E = (var_8E + 1)
  loc_14A54E0:     var_8C.MoveNext
  loc_14A54E5:     GoTo loc_14A52CC
  loc_14A54E8:   End If
  loc_14A54E8:   var_B4 = 0
  loc_14A54F2:   Set var_A4 = Me.FGrid
  loc_14A551F:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_14A5522:     var_B4 = vbNullString
  loc_14A552C:     Set var_A4 = Me.FGrid
  loc_14A553D:   End If
  loc_14A553D:   var_B4 = 1
  loc_14A5550:   Me.FGrid.FixedRows = var_B4
  loc_14A555B: Else
  loc_14A555B:   Call Proc_295_43_F18D70(FGrid.DispID_10000, var_B4, FGrid.DispID_2E, var_B4, var_8E, var_1F0)
  loc_14A5560: End If
  loc_14A5560: Call Proc_295_47_E87378(var_D8, var_11C, var_F8)
  loc_14A556A: Set var_88 = Nothing
  loc_14A5572: Set var_8C = Nothing
  loc_14A5575: Exit Sub
  loc_14A5576: ' Referenced from: 14A48F8
  loc_14A5576: Proc_6_60_E63754(FGrid.DispID_10000, var_B4)
  loc_14A557B: Exit Sub
End Sub

Public Sub Proc_295_46_E8834C(arg_C) 'E8834C
  'Data Table: 4B8EC8
  Dim var_98 As TextBox
  Dim var_8C As CommandButton
  loc_E882E6: Set var_8C = Me.Txt
  loc_E882EC: Call 0.Method_Proc_295_46_E8834CC (var_8E, var_86)
  loc_E882FC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E88312:   Set var_8C = Me.Txt
  loc_E88318:   Call 0.Method_Proc_295_46_E8834C0 (CInt(var_86), var_98)
  loc_E88320:   var_98.Enabled = arg_C
  loc_E8832F: Next var_92 'Byte
  loc_E88342: Me.CmdFillGrid.Enabled = arg_C
  loc_E8834A: Exit Sub
End Sub

Public Sub Proc_295_47_E87378
  'Data Table: 4B8EC8
  loc_E87324: If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_E87336:   Me.DGMember.Visible = False
  loc_E8733E: End If
  loc_E8735A: If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_E8736C:   Me.DGRev.Visible = False
  loc_E87374: End If
  loc_E87374: Exit Sub
End Sub

Public Sub Proc_295_48_E4485C
  'Data Table: 4B8EC8
  loc_E44838: Set var_88 = Me.TopCtrl1
  loc_E4483E: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E44857: If (CStr() = "Browse") Then
  loc_E4485A:   Exit Sub
  loc_E4485B: End If
  loc_E4485B: Exit Sub
End Sub

Public Sub Proc_295_49_12581C4(arg_C) '12581C4
  'Data Table: 4B8EC8
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
  loc_1257C7C: If (arg_C = 0) Then
  loc_1257C92:   var_A8 = CLng(Me.FGrid.Col)
  loc_1257CA2:   If (var_A8 = CLng(1)) Then
  loc_1257CC5:     var_AE = Me.EOF
  loc_1257CF3:     Set var_94 = Me.TxtGrid
  loc_1257CF9:     Call 0.Method_Proc_295_49_12581C40 (arg_C, var_B4, var_B8)
  loc_1257D01:     ((Me.RecordCount = 0) Or ((var_AE = &HFF) Or (Me.BOF = &HFF))) = var_B4.Text
  loc_1257D19:     If (var_A8 Or (var_B8 = vbNullString)) Then
  loc_1257D2F:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1257D37:       var_E8 = CVar(CLng(1)) 'Long
  loc_1257D3C:       var_108 = vbNullString
  loc_1257D46:       Set var_B4 = Me.FGrid
  loc_1257D4C:       LateIdCallSt
  loc_1257D71:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1257D79:       var_E8 = CVar(CLng(5)) 'Long
  loc_1257D7E:       var_108 = vbNullString
  loc_1257D88:       Set var_B4 = Me.FGrid
  loc_1257D8E:       LateIdCallSt
  loc_1257DA3:     Else
  loc_1257DA6:       Call Proc_295_50_FC56B0(var_AE, var_B4, var_108, var_E8, var_C8)
  loc_1257DB1:       If (var_AE = 0) Then
  loc_1257DB9:         Proc_295_49_12581C4 = 0
  loc_1257DBF:       End If
  loc_1257DD2:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1257DDA:       var_F8 = CVar(CLng(1)) 'Long
  loc_1257E0D:       var_13C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1257E15:       Set var_140 = Me.FGrid
  loc_1257E1B:       LateIdCallSt
  loc_1257E4A:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1257E52:       var_F8 = CVar(CLng(5)) 'Long
  loc_1257E85:       var_13C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1257E8D:       Set var_140 = Me.FGrid
  loc_1257E93:       LateIdCallSt
  loc_1257EAF:     End If
  loc_1257EC8:     var_C8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1257ED0:     var_E8 = CVar(CLng(5)) 'Long
  loc_1257ED9:     Set var_B4 = Me.FGrid
  loc_1257EEA:     var_B8 = CStr(var_B4.TextMatrix))
  loc_1257F03:     If (var_B8 <> vbNullString) Then
  loc_1257F06:       var_C8 = vbNullString
  loc_1257F10:       Set var_94 = Me.FGrid
  loc_1257F21:     End If
  loc_1257F24:   Else
  loc_1257F2B:     If (var_A8 = CLng(2)) Then
  loc_1257F38:       Set var_94 = Me.TxtGrid
  loc_1257F3E:       Call 0.Method_Proc_295_49_12581C40 (arg_C, var_B4, FGrid.DispID_10000, var_C8, var_E8, var_C8, var_140)
  loc_1257F5D:       Set var_11C = Me.TxtGrid
  loc_1257F63:       Call 0.Method_Proc_295_49_12581C40 (arg_C, var_140, var_B8, Not(IsNumeric(CVar(var_B4))), var_13C, var_F8)
  loc_1257F6B:       var_D8 = var_140.Text
  loc_1257F8D:       If (var_140 Or (CDbl(Val(var_B8)) < CDbl(0))) Then
  loc_1257F94:         var_B8 = CStr(0)
  loc_1257FA1:         Set var_94 = Me.TxtGrid
  loc_1257FA7:         Call 0.Method_Proc_295_49_12581C40 (arg_C, var_B4, var_B8)
  loc_1257FAF:         var_B4.Text = var_13C
  loc_1257FC3:         Proc_295_49_12581C4 = 0
  loc_1257FC9:       End If
  loc_1257FD6:       Set var_94 = Me.TxtGrid
  loc_1257FDC:       Call 0.Method_Proc_295_49_12581C40 (arg_C, var_B4, var_B8)
  loc_1257FE4:       var_F8 = var_B4.Text
  loc_1257FFC:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1258005:       Set var_140 = Me.FGrid
  loc_1258014:       var_F8 = CVar(CLng(var_140.Col)) 'Long
  loc_1258040:       var_170 = CVar(CStr(Format(CVar(var_B8), "0.00"))) 'String
  loc_1258048:       Set var_174 = Me.FGrid
  loc_125804E:       LateIdCallSt
  loc_1258075:     Else
  loc_125807C:       If Not (var_A8 = CLng(3)) Then
  loc_1258086:         If (var_A8 = CLng(4)) Then
  loc_1258089:         End If
  loc_1258096:         Set var_94 = Me.TxtGrid
  loc_125809C:         Call 0.Method_Proc_295_49_12581C40 (arg_C, var_B4, var_B8, var_174, var_170)
  loc_12580A4:         1 = var_B4.Text
  loc_12580BB:         If (var_B8 <> vbNullString) Then
  loc_12580D6:           Set var_B4 = Me.ListView.SelectedItem
  loc_12580DC:           var_B8 = var_B4.Text
  loc_12580EE:           Set var_11C = Me.TxtGrid
  loc_12580F4:           Call 0.Method_Proc_295_49_12581C40 (arg_C, var_140, var_B8, 1)
  loc_12580FC:           var_140.Text = var_F8
  loc_1258112:         End If
  loc_1258125:         var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_125814F:         Set var_94 = Me.TxtGrid
  loc_1258155:         Call 0.Method_Proc_295_49_12581C40 (arg_C, var_B4, var_B8, CVar(CLng(Me.FGrid.Col)))
  loc_125815D:         var_C8 = var_B4.Text
  loc_1258165:         var_13C = CVar(var_B8) 'String
  loc_125816D:         Set var_174 = Me.FGrid
  loc_1258173:         LateIdCallSt
  loc_1258191:       End If
  loc_1258191:     End If
  loc_1258191:   End If
  loc_1258191: End If
  loc_12581A4: Set var_94 = Me.TxtGrid
  loc_12581AA: Call 0.Method_Proc_295_49_12581C40 (0, var_B4, 0, &HFF)
  loc_12581B2: var_B4.MaxLength = var_174
  loc_12581BE: Proc_295_49_12581C4 = var_13C
End Sub

Public Sub Proc_295_50_FC56B0
  'Data Table: 4B8EC8
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC5533: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FC5538:   var_92 = 1 'Byte
  loc_FC553C: End If
  loc_FC5545: Set var_98 = Me.TxtGrid
  loc_FC554B: Call 0.Method_Proc_295_50_FC56B00 (0, var_B0)
  loc_FC556E: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC55A2: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC55C6:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC55C9:     GoTo loc_FC569B
  loc_FC55CC:   End If
  loc_FC55D0:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC55FA:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC5604:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC5639:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC565D:     MsgBox("Duplicate Revenue Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC5676:     Set var_98 = Me.TxtGrid
  loc_FC567C:     Call 0.Method_Proc_295_50_FC56B00 (0, var_B0, CVar(CLng(var_92)))
  loc_FC5684:     var_B0.SetFocus
  loc_FC5695:     Proc_295_50_FC56B0 = 0
  loc_FC569B:     ' Referenced from: FC55C9
  loc_FC569B:   End If
  loc_FC569E: Next var_D4 'Integer
  loc_FC56A8: Proc_295_50_FC56B0 = &HFF
  loc_FC56AE: Set arg_5060 = 
End Sub
