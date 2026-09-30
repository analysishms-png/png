VERSION 5.00
Begin VB.Form FaMagic
  Caption = "Magic"
  BackColor = &HCBBE9E&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FaMagic.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11130
  ClientHeight = 6600
  LockControls = -1  'True
  Begin CommandButton BtnSite
    Caption = "C&hange Sites"
    Left = 18570
    Top = 150
    Width = 1725
    Height = 330
    Visible = 0   'False
    TabIndex = 32
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Change Site"
    Style = 1
  End
  Begin TextBox TxtSearch1
    BackColor = &HE0E0E0&
    ForeColor = &HE0E0E0&
    Left = 12225
    Top = 1095
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 28
    BorderStyle = 0 'None
    HideSelection = 0   'False
    Appearance = 0 'Flat
  End
  Begin Frame Frame3
    BackColor = &HB7A4F0&
    Left = 4000
    Top = 6400
    Width = 4560
    Height = 2145
    TabIndex = 24
    BorderStyle = 0 'None
    Begin CommandButton BTNSITEOK
      Caption = "Ok"
      BackColor = &H8000000A&
      Left = 0
      Top = 1665
      Width = 4560
      Height = 495
      TabIndex = 26
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Refresh"
      Style = 1
    End
    Begin CheckBox Check
      Caption = "All"
      Index = 0
      BackColor = &H800000&
      ForeColor = &HFFFF&
      Left = 30
      Top = 45
      Width = 915
      Height = 195
      TabIndex = 25
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
    Begin MSHFlexGrid GridSel
      Index = 0
      Left = 15
      Top = 15
      Width = 4560
      Height = 1650
      TabIndex = 27
    End
  End
  Begin Frame Frame1
    BackColor = &HFF8080&
    Left = 2985
    Top = 2955
    Width = 5085
    Height = 2685
    TabIndex = 3
    BorderStyle = 0 'None
    Begin BtnEnh BtnOK
      Left = 3540
      Top = 1260
      Width = 1035
      Height = 615
      TabIndex = 45
    End
    Begin ComboBox Combo1
      Style = 2
      Left = 3480
      Top = 690
      Width = 1470
      Height = 315
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 30
      List = "FaMagic.frx":442
      ItemData = "FaMagic.frx":45D
    End
    Begin CheckBox Check5
      Caption = "Show Only Debit"
      BackColor = &HC0FFFF&
      Left = 105
      Top = 1410
      Width = 2100
      Height = 225
      TabIndex = 10
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CheckBox Check6
      Caption = "Show Only Credit"
      BackColor = &HC0C0FF&
      Left = 105
      Top = 1635
      Width = 2100
      Height = 225
      TabIndex = 11
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CheckBox Check4
      Caption = "Group Wise"
      BackColor = &HC0FFC0&
      Left = 105
      Top = 1185
      Width = 2100
      Height = 225
      TabIndex = 9
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CheckBox Check3
      Caption = "Show Zero Balance"
      BackColor = &HFFFFC0&
      Left = 105
      Top = 960
      Width = 2100
      Height = 225
      TabIndex = 8
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CheckBox Check2
      Caption = "Detailed"
      BackColor = &HFFC0C0&
      Left = 105
      Top = 735
      Width = 2100
      Height = 225
      TabIndex = 7
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CheckBox Check1
      Caption = "Op.Balance"
      BackColor = &HFFC0FF&
      Left = 105
      Top = 540
      Width = 2100
      Height = 225
      TabIndex = 6
      Value = 1
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox TXTE_DATE
      BackColor = &HFFFFFF&
      Left = 2010
      Top = 270
      Width = 1395
      Height = 195
      TabIndex = 5
      BorderStyle = 0 'None
      Appearance = 0 'Flat
    End
    Begin TextBox TXTS_DATE
      BackColor = &HFFFFFF&
      Left = 2010
      Top = 30
      Width = 1395
      Height = 195
      TabIndex = 4
      BorderStyle = 0 'None
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "For Period"
      Index = 2
      ForeColor = &H0&
      Left = 2385
      Top = 735
      Width = 735
      Height = 225
      Visible = 0   'False
      TabIndex = 31
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "From Date"
      Index = 0
      ForeColor = &H0&
      Left = 105
      Top = 30
      Width = 720
      Height = 225
      TabIndex = 13
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "To Date "
      Index = 1
      ForeColor = &H0&
      Left = 105
      Top = 270
      Width = 555
      Height = 225
      TabIndex = 12
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin MSHFlexGrid FGrid1
    Left = 0
    Top = 1710
    Width = 9240
    Height = 4155
    TabIndex = 0
  End
  Begin TextBox TxtSearch
    BackColor = &HE0E0E0&
    Left = 11595
    Top = 1860
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 16
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
  Begin Frame Frame2
    Caption = "Frame1"
    BackColor = &HFF0000&
    Left = 0
    Top = 0
    Width = 13080
    Height = 660
    TabIndex = 14
    BorderStyle = 0 'None
    Begin BtnEnh LblShort
      Index = 3
      Left = 15
      Top = 0
      Width = 1680
      Height = 645
      TabIndex = 37
    End
    Begin BtnEnh CmdExit
      Left = 11940
      Top = 0
      Width = 1125
      Height = 645
      TabIndex = 34
    End
    Begin BtnEnh BTNRefresh
      Left = 8700
      Top = 0
      Width = 1080
      Height = 645
      TabIndex = 35
    End
    Begin BtnEnh BtnPrint
      Index = 2
      Left = 10860
      Top = 0
      Width = 1080
      Height = 645
      TabIndex = 36
    End
    Begin BtnEnh BtnPrint
      Index = 0
      Left = 9780
      Top = 0
      Width = 1080
      Height = 660
      TabIndex = 33
    End
    Begin BtnEnh LblShort
      Index = 2
      Left = 1695
      Top = 0
      Width = 1680
      Height = 645
      TabIndex = 38
    End
    Begin BtnEnh LblShort
      Index = 1
      Left = 3375
      Top = 0
      Width = 1680
      Height = 645
      TabIndex = 39
    End
    Begin BtnEnh LblShort
      Index = 0
      Left = 5055
      Top = 0
      Width = 1680
      Height = 645
      TabIndex = 40
    End
    Begin BtnEnh LblShort
      Index = 4
      Left = 0
      Top = 615
      Width = 330
      Height = 645
      Visible = 0   'False
      TabIndex = 41
    End
    Begin BtnEnh LblShort
      Index = 5
      Left = 330
      Top = 630
      Width = 330
      Height = 645
      Visible = 0   'False
      TabIndex = 42
    End
    Begin BtnEnh LblShort
      Index = 6
      Left = 6735
      Top = 0
      Width = 1680
      Height = 645
      Visible = 0   'False
      TabIndex = 43
    End
    Begin BtnEnh LblShort
      Index = 7
      Left = 930
      Top = 630
      Width = 330
      Height = 645
      Visible = 0   'False
      TabIndex = 44
    End
    Begin Label LblShortz
      Caption = "Vr. Wise Analysis (Ctl F3)"
      Index = 7
      BackColor = &H80000005&
      ForeColor = &HFFFF&
      Left = 7845
      Top = 1020
      Width = 1800
      Height = 240
      Visible = 0   'False
      TabIndex = 29
      AutoSize = -1  'True
      Tag = "vbKeyF6"
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblShortz
      Caption = "Trial-Group (F5)"
      Index = 2
      BackColor = &H80000005&
      ForeColor = &HFFFFC0&
      Left = 2010
      Top = 1005
      Width = 1785
      Height = 285
      Visible = 0   'False
      TabIndex = 23
      AutoSize = -1  'True
      Tag = "vbKeyF6"
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblShortz
      Caption = "Trial-Ledger (F6)"
      Index = 3
      BackColor = &H80000005&
      ForeColor = &HC0FFC0&
      Left = 75
      Top = 1005
      Width = 1875
      Height = 285
      Visible = 0   'False
      TabIndex = 22
      AutoSize = -1  'True
      Tag = "vbKeyF7"
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblShortz
      Caption = "Profit/Loss (F4)"
      Index = 1
      BackColor = &H80000005&
      ForeColor = &HFFFFC0&
      Left = 3870
      Top = 1005
      Width = 1740
      Height = 285
      Visible = 0   'False
      TabIndex = 21
      AutoSize = -1  'True
      Tag = "vbKeyF9"
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblShortz
      Caption = "Balance sheet (F3)"
      Index = 0
      BackColor = &H80000005&
      ForeColor = &HFFFFC0&
      Left = 5670
      Top = 990
      Width = 2115
      Height = 285
      Visible = 0   'False
      TabIndex = 20
      AutoSize = -1  'True
      Tag = "vbKeyF6"
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblShortz
      Caption = "CashFlow (F7)"
      Index = 4
      BackColor = &H80000005&
      ForeColor = &HFFFF&
      Left = 10260
      Top = 1005
      Width = 1080
      Height = 240
      Visible = 0   'False
      TabIndex = 19
      AutoSize = -1  'True
      Tag = "vbKeyF7"
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblShortz
      Caption = "FundFlow (F8)"
      Index = 5
      BackColor = &H80000005&
      ForeColor = &HFFFF&
      Left = 10200
      Top = 735
      Width = 1080
      Height = 240
      Visible = 0   'False
      TabIndex = 18
      AutoSize = -1  'True
      Tag = "vbKeyF7"
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblShortz
      Caption = "Cash/Bank Books (F9)"
      Index = 6
      BackColor = &H80000005&
      ForeColor = &HFFFF&
      Left = 8685
      Top = 870
      Width = 1620
      Height = 240
      Visible = 0   'False
      TabIndex = 17
      AutoSize = -1  'True
      Tag = "vbKeyF7"
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
  Begin TextBox Text2
    BackColor = &HCBBE9E&
    ForeColor = &HFF0000&
    Left = 0
    Top = 1110
    Width = 7110
    Height = 240
    TabIndex = 15
    BorderStyle = 0 'None
    TabStop = 0   'False
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Text1
    BackColor = &HCBBE9E&
    ForeColor = &HFF&
    Left = -15
    Top = 1380
    Width = 7110
    Height = 240
    TabIndex = 2
    BorderStyle = 0 'None
    TabStop = 0   'False
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSFlexGrid FGrid2
    Left = -30
    Top = 5880
    Width = 9105
    Height = 255
    TabStop = 0   'False
    TabIndex = 1
  End
End

Attribute VB_Name = "FaMagic"

Private global_88 As Integer
Private global_90 As Integer
Private mREFRESH As Integer
Private X11 As Variant

Private Sub Check3_KeyDown(KeyCode As Integer, Shift As Integer) 'E23C14
  'Data Table: 5167AC
  loc_E23BFA: If (KeyCode = &HD) Then
  loc_E23C0B:   Proc_303_0_FBACC8("	")
  loc_E23C13: End If
  loc_E23C13: Exit Sub
End Sub

Private Sub Check4_KeyDown(KeyCode As Integer, Shift As Integer) 'E21B98
  'Data Table: 5167AC
  loc_E21B7E: If (KeyCode = &HD) Then
  loc_E21B8F:   Proc_303_0_FBACC8("	")
  loc_E21B97: End If
  loc_E21B97: Exit Sub
End Sub

Private Sub LblShort_UnknownEvent_9 '108BC50
  'Data Table: 5167AC
  Dim var_86 As Integer
  Dim var_A0 As String
  loc_108B9A0: On Error Goto loc_108BC27
  loc_108B9A6: Call Proc_189_60_E855F0(KeyCode)
  loc_108B9AE: var_86 = KeyCode
  loc_108B9B7: If (var_86 = 0) Then
  loc_108B9DD:   If (CStr(Me.FGrid1.Tag) <> "BALSHEET") Then
  loc_108B9EB:     Set MagicStack = Nothing
  loc_108B9F8:     FaMagic.OpenType = "BALSHEET"
  loc_108B9FD:   End If
  loc_108BA00: Else
  loc_108BA06:   If (var_86 = 1) Then
  loc_108BA2C:     If (CStr(Me.FGrid1.Tag) <> "PROFLOSS") Then
  loc_108BA3A:       Set MagicStack = Nothing
  loc_108BA47:       FaMagic.OpenType = "PROFLOSS"
  loc_108BA4C:     End If
  loc_108BA4F:   Else
  loc_108BA55:     If (var_86 = 2) Then
  loc_108BA7B:       If (CStr(Me.FGrid1.Tag) <> "GROUPTRIAL") Then
  loc_108BA89:         Set MagicStack = Nothing
  loc_108BA96:         FaMagic.OpenType = "GROUPTRIAL"
  loc_108BA9B:       End If
  loc_108BA9E:     Else
  loc_108BAA4:       If (var_86 = 3) Then
  loc_108BACA:         If (CStr(Me.FGrid1.Tag) <> "LEDTRIAL") Then
  loc_108BAD8:           Set MagicStack = Nothing
  loc_108BAE5:           FaMagic.OpenType = "LEDTRIAL"
  loc_108BAEA:         End If
  loc_108BAED:       Else
  loc_108BAF3:         If (var_86 = 4) Then
  loc_108BB19:           If (CStr(Me.FGrid1.Tag) <> "CASHFLOW") Then
  loc_108BB27:             Set MagicStack = Nothing
  loc_108BB34:             FaMagic.OpenType = "CASHFLOW"
  loc_108BB39:           End If
  loc_108BB3C:         Else
  loc_108BB42:           If (var_86 = 5) Then
  loc_108BB68:             If (CStr(Me.FGrid1.Tag) <> "FUNDFLOW") Then
  loc_108BB76:               Set MagicStack = Nothing
  loc_108BB83:               FaMagic.OpenType = "FUNDFLOW"
  loc_108BB88:             End If
  loc_108BB8B:           Else
  loc_108BB91:             If (var_86 = 6) Then
  loc_108BBB7:               If (CStr(Me.FGrid1.Tag) <> "CASHBANKSUM") Then
  loc_108BBC5:                 Set MagicStack = Nothing
  loc_108BBD2:                 FaMagic.OpenType = "CASHBANKSUM"
  loc_108BBD7:               End If
  loc_108BBDA:             Else
  loc_108BBE0:               If (var_86 = 7) Then
  loc_108BBF5:                 var_A0 = CStr(Me.FGrid1.Tag)
  loc_108BC06:                 If (var_A0 <> "VRANAL") Then
  loc_108BC14:                   Set MagicStack = Nothing
  loc_108BC21:                   FaMagic.OpenType = "VRANAL"
  loc_108BC26:                 End If
  loc_108BC26:               End If
  loc_108BC26:             End If
  loc_108BC26:           End If
  loc_108BC26:         End If
  loc_108BC26:       End If
  loc_108BC26:     End If
  loc_108BC26:   End If
  loc_108BC26: End If
  loc_108BC26: Exit Sub
  loc_108BC27: ' Referenced from: 108B9A0
  loc_108BC2D: Call 0.Method_arg_50 (var_A0)
  loc_108BC42: Proc_183_57_104B0BC(var_A0, "LblShort_Click")
  loc_108BC4E: Exit Sub
End Sub

Private Sub Check6_KeyDown(KeyCode As Integer, Shift As Integer) 'E21C94
  'Data Table: 5167AC
  loc_E21C7A: If (KeyCode = &HD) Then
  loc_E21C8B:   Proc_303_0_FBACC8("	")
  loc_E21C93: End If
  loc_E21C93: Exit Sub
End Sub

Private Sub Check5_KeyDown(KeyCode As Integer, Shift As Integer) 'E21C40
  'Data Table: 5167AC
  loc_E21C26: If (KeyCode = &HD) Then
  loc_E21C37:   Proc_303_0_FBACC8("	")
  loc_E21C3F: End If
  loc_E21C3F: Exit Sub
End Sub

Private Sub Check_Click(Index As Integer) '1025430
  'Data Table: 5167AC
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_C8 As MSHFlexGrid
  loc_1025208: On Error Goto loc_1025407
  loc_1025218: Set var_88 = Me.Check
  loc_102521E: Call 0.Method_Check_Click0 (Index, var_8C)
  loc_102523C: If (CLng(var_8C.Value) = 0) Then
  loc_102524D:   Set var_88 = Me.GridSel
  loc_1025253:   Call 0.Method_Check_Click0 (Index, var_8C)
  loc_102525B:   var_8C.Enabled = True
  loc_1025271:   Set var_88 = Me.GridSel
  loc_1025277:   Call 0.Method_Check_Click0 (Index)
  loc_1025298:   If (CLng(var_8C.Rows) > 1) Then
  loc_10252AE:     Set var_88 = Me.GridSel
  loc_10252B4:     Call 0.Method_Check_Click0 (Index, var_8C)
  loc_10252BC:     var_8C.Row = 1
  loc_10252DB:     Set var_88 = Me.GridSel
  loc_10252E1:     Call 0.Method_Check_Click0 (Index, var_8C)
  loc_10252E9:     var_8C.Col = 0
  loc_10252F5:   End If
  loc_10252F8: Else
  loc_1025307:   Set var_88 = Me.GridSel
  loc_102530D:   Call 0.Method_Check_Click0 (Index, var_8C)
  loc_1025315:   var_8C.Enabled = False
  loc_102532B:   Set var_88 = Me.GridSel
  loc_1025331:   Call 0.Method_Check_Click0 (Index, var_8C)
  loc_1025352:   If (CLng(var_8C.Rows) > 1) Then
  loc_1025368:     Set var_88 = Me.GridSel
  loc_102536E:     Call 0.Method_Check_Click0 (Index, var_8C)
  loc_1025395:     Set var_88 = Me.GridSel
  loc_102539B:     Call 0.Method_Check_Click0 (Index, var_8C)
  loc_10253A3:     var_8C.Col = 0
  loc_10253B9:     Set var_88 = Me.GridSel
  loc_10253BF:     Call 0.Method_Check_Click0 (Index, var_8C)
  loc_10253D6:     var_A0 = CVar((CLng(var_8C.Rows) - 1)) 'Long
  loc_10253E5:     Set var_C4 = Me.GridSel
  loc_10253EB:     Call 0.Method_Check_Click0 (Index, var_C8)
  loc_10253F3:     var_C8.RowSel = 0
  loc_1025406:   End If
  loc_1025406: End If
  loc_1025406: Exit Sub
  loc_1025407: ' Referenced from: 1025208
  loc_102540D: Call 0.Method_arg_50 (var_CC)
  loc_1025422: Proc_183_57_104B0BC(var_CC, "Check_Click")
  loc_102542E: Exit Sub
End Sub

Private Sub Check_GotFocus(Index As Integer) 'E3F9DC
  'Data Table: 5167AC
  Dim var_8C As CheckBox
  loc_E3F9BF: Set var_88 = Me.Check
  loc_E3F9C5: Call 0.Method_Check_GotFocus0 (Index, var_8C)
  loc_E3F9CD: var_8C.BackColor = &HFF
  loc_E3F9D9: Exit Sub
End Sub

Private Sub Check_KeyDown(KeyCode As Integer, Shift As Integer) 'E21EE0
  'Data Table: 5167AC
  loc_E21EC6: If (Shift = &HD) Then
  loc_E21ED7:   Proc_303_0_FBACC8("	")
  loc_E21EDF: End If
  loc_E21EDF: Exit Sub
End Sub

Private Sub TXTS_DATE_KeyDown(KeyCode As Integer, Shift As Integer) 'E21DE4
  'Data Table: 5167AC
  loc_E21DCA: If (KeyCode = &HD) Then
  loc_E21DDB:   Proc_303_0_FBACC8("	")
  loc_E21DE3: End If
  loc_E21DE3: Exit Sub
End Sub

Private Sub TXTS_DATE_Validate(Cancel As Boolean) 'E57050
  'Data Table: 5167AC
  loc_E5702E: Call 0.Method_arg_184 (Me.TXTS_DATE)
  loc_E5703A: Set var_90 = Me.TXTS_DATE
  loc_E57040: Me.TXTS_DATE.Text = var_8C
  loc_E5704F: Exit Sub
End Sub

Private Sub TXTE_DATE_KeyDown(KeyCode As Integer, Shift As Integer) 'E21D90
  'Data Table: 5167AC
  loc_E21D76: If (KeyCode = &HD) Then
  loc_E21D87:   Proc_303_0_FBACC8("	")
  loc_E21D8F: End If
  loc_E21D8F: Exit Sub
End Sub

Private Sub TXTE_DATE_Validate(Cancel As Boolean) 'E57138
  'Data Table: 5167AC
  loc_E57116: Call 0.Method_arg_184 (Me.TXTE_DATE)
  loc_E57122: Set var_90 = Me.TXTE_DATE
  loc_E57128: Me.TXTE_DATE.Text = var_8C
  loc_E57137: Exit Sub
End Sub

Private Sub BTNSITEOK_Click() 'E02FF8
  'Data Table: 5167AC
  loc_E02FEC: Call Proc_189_64_1292538()
  loc_E02FF1: Call btnok_UnknownEvent_9()
  loc_E02FF6: Exit Sub
End Sub

Private Sub BtnSite_Click() 'E81D08
  'Data Table: 5167AC
  loc_E81CD4: If ((Me.Frame1.Visible = &HFF) Or (Me.Frame3.Visible = &HFF)) Then
  loc_E81CD7:   Exit Sub
  loc_E81CD8: End If
  loc_E81CE4: Me.Frame3.Visible = True
  loc_E81CFC: Me.Frame3.ZOrder 0
  loc_E81D04: Exit Sub
  loc_E81D06: ArrayRebase1Var
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1A360
  'Data Table: 5167AC
  loc_E1A355: Me.Global.Unload Me
  loc_E1A35D: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E23B18
  'Data Table: 5167AC
  loc_E23AFE: If (KeyCode = &HD) Then
  loc_E23B0F:   Proc_303_0_FBACC8("	")
  loc_E23B17: End If
  loc_E23B17: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_0 'E4D608
  'Data Table: 5167AC
  Dim var_8C As MSHFlexGrid
  loc_E4D5EB: Set var_88 = Me.GridSel
  loc_E4D5F1: Call 0.Method_GridSel_UnknownEvent_00 (KeyCode, var_8C)
  loc_E4D5F9: var_8C.CellBackColor = CVar(CLng("16777152"))
  loc_E4D605: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_8 'E4DE28
  'Data Table: 5167AC
  Dim var_8C As MSHFlexGrid
  loc_E4DE0B: Set var_88 = Me.GridSel
  loc_E4DE11: Call 0.Method_GridSel_UnknownEvent_80 (KeyCode, var_8C)
  loc_E4DE19: var_8C.CellBackColor = CVar(CLng("15595518"))
  loc_E4DE25: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A '11093A0
  'Data Table: 5167AC
  Dim var_98 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_E0 As Long
  Dim var_D0 As MSHFlexGrid
  Dim var_8C As String
  Dim var_122 As Integer
  Dim var_128 As Integer
  Dim var_86 As Integer
  loc_1109068: On Error Goto loc_1109378
  loc_1109071: If (Shift = &HD) Then
  loc_1109082:   Proc_303_0_FBACC8("	")
  loc_110908A: End If
  loc_1109094: Set var_94 = Me.GridSel
  loc_110909A: Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_11090BB: If (CLng(var_98.Rows) < 1) Then
  loc_11090BE:   Exit Sub
  loc_11090BF: End If
  loc_11090D3: Set var_94 = Me.GridSel
  loc_11090D9: Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_11090FB: If ((CLng(Shift) = &H20) And (CLng(var_98.Col) = 0)) Then
  loc_110910E:   Set var_94 = Me.GridSel
  loc_1109114:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_110911C:   var_98.CellFontName = "WINGDINGS"
  loc_110913A:   Set var_94 = Me.GridSel
  loc_1109140:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_1109148:   var_98.CellFontSize = CVar(CDbl(&HE))
  loc_110915E:   Set var_94 = Me.GridSel
  loc_1109164:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_1109175:   var_B8 = CVar(CLng(var_98.Row)) 'Long
  loc_110918D:   Set var_CC = Me.GridSel
  loc_1109193:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_D0, 0)
  loc_11091A6:   var_8C = CStr(var_D0.TextMatrix))
  loc_11091C3:   If (var_8C = "ü") Then
  loc_11091D0:     Set var_94 = Me.GridSel
  loc_11091D6:     Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_11091E7:     var_B8 = CVar(CLng(var_98.Row)) 'Long
  loc_1109205:     Set var_CC = Me.GridSel
  loc_110920B:     Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_D0, " ", 0)
  loc_1109213:     LateIdCallSt
  loc_110922C:     var_122 = KeyCode
  loc_1109235:     If (var_122 = 0) Then
  loc_1109248:       For var_126 = 0 To CInt(UBound(global_84, 1)): var_86 = var_126 'Integer
  loc_1109264:         Set var_94 = Me.GridSel
  loc_110926A:         Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98, CLng(global_84(CLng(var_86))), 0, var_122)
  loc_1109286:         If (var_D0 = CLng(var_98.Row)) Then
  loc_1109295:           global_84(CLng(var_86)) = 0
  loc_1109296:         End If
  loc_1109299:       Next var_126 'Integer
  loc_110929E:     End If
  loc_11092A1:   Else
  loc_11092AB:     Set var_94 = Me.GridSel
  loc_11092B1:     Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode)
  loc_11092C2:     var_B8 = CVar(CLng(var_98.Row)) 'Long
  loc_11092C7:     var_E0 = 0
  loc_11092E0:     Set var_CC = Me.GridSel
  loc_11092E6:     Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_D0, "ü")
  loc_11092EE:     LateIdCallSt
  loc_1109307:     var_128 = KeyCode
  loc_1109310:     If (var_128 = 0) Then
  loc_1109324:       var_86 = CInt((UBound(global_84, 1) + 1))
  loc_1109336:       ReDim Preserve global_84(0 To CLng(var_86))
  loc_110934A:       Set var_94 = Me.GridSel
  loc_1109350:       Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98, var_86, var_128)
  loc_110936C:       global_84(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1109377:     End If
  loc_1109377:   End If
  loc_1109377: End If
  loc_1109377: Exit Sub
  loc_1109378: ' Referenced from: 1109068
  loc_110937E: Call 0.Method_arg_50 (var_8C, var_D0, var_E0)
  loc_1109393: Proc_183_57_104B0BC(var_8C, "GridSel_KeyDown")
  loc_110939F: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_C 'FC1048
  'Data Table: 5167AC
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_A4 As MSHFlexGrid
  Dim var_B6 As Integer
  Dim Me As Recordset15
  Dim Shift As Integer
  Dim var_D4 As String
  Dim var_88 As TextBox
  loc_FC0EC0: On Error Goto loc_FC101D
  loc_FC0ECD: Set var_88 = Me.GridSel
  loc_FC0ED3: Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode)
  loc_FC0EF4: Set var_A0 = Me.GridSel
  loc_FC0EFA: Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode, var_A4)
  loc_FC0F24: If ((CLng(var_8C.Col) = 0) Or (CLng(var_A4.Row) = 0)) Then
  loc_FC0F27:   Exit Sub
  loc_FC0F28: End If
  loc_FC0F2B: var_B6 = KeyCode
  loc_FC0F34: If (var_B6 = 0) Then
  loc_FC0F48:   Set var_88 = Me.GridSel
  loc_FC0F4E:   Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode, var_8C)
  loc_FC0F5D:   Set var_A0 = Me.GridSel
  loc_FC0F63:   Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode, var_A4)
  loc_FC0F6B:   var_9C = var_A4.Col
  loc_FC0FA5:   var_E8 = "15595518"
  loc_FC0FAE:   var_E4 = "16777152"
  loc_FC0FD6:   Proc_183_11_113DA88(Me.TxtSearch1, var_8C, global_80, Shift, Me.Fields.Item(CVar(CLng(var_9C))).Name)
  loc_FC0FFC:   Shift = 0
  loc_FC0FFF: End If
  loc_FC1004: var_D4 = CStr(KeyCode)
  loc_FC1011: Me.TxtSearch.Tag = var_D4
  loc_FC101C: Exit Sub
  loc_FC101D: ' Referenced from: FC0EC0
  loc_FC1023: Call 0.Method_arg_50 (var_D4, Shift, var_E4, var_E8)
  loc_FC1038: Proc_183_57_104B0BC(var_D4, "GridSel_KeyPress", var_9C)
  loc_FC1044: Exit Sub
  loc_FC1046: (var_8C Mod var_B6) = arg_34FF
End Sub

Private Sub GridSel_UnknownEvent_E 'E83EF8
  'Data Table: 5167AC
  Dim var_8C As MSHFlexGrid
  loc_E83E9A: Set var_88 = Me.GridSel
  loc_E83EA0: Call 0.Method_GridSel_UnknownEvent_E0 (KeyCode)
  loc_E83EC1: If (CLng(var_8C.Col) <> 0) Then
  loc_E83EC4:   Exit Sub
  loc_E83EC5: End If
  loc_E83ECF: Set var_88 = Me.GridSel
  loc_E83ED5: Call 0.Method_GridSel_UnknownEvent_E0 (KeyCode, var_8C)
  loc_E83EEA: global_88 = CInt(CLng(var_8C.Row))
  loc_E83EF7: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '114B720
  'Data Table: 5167AC
  Dim var_90 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_DC As Long
  Dim var_CC As MSHFlexGrid
  Dim var_100 As String
  Dim var_122 As Integer
  Dim var_128 As Integer
  Dim var_86 As Integer
  loc_114B388: On Error Goto loc_114B6F5
  loc_114B395: Set var_8C = Me.GridSel
  loc_114B39B: Call 0.Method_GridSel_UnknownEvent_100 (KeyCode)
  loc_114B3C6: If ((CLng(var_90.Col) <> 0) Or (global_88 = 0)) Then
  loc_114B3C9:   Exit Sub
  loc_114B3CA: End If
  loc_114B3D4: Set var_8C = Me.GridSel
  loc_114B3DA: Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90)
  loc_114B3EF: global_90 = CInt(CLng(var_90.RowSel))
  loc_114B40B: For var_A4 = global_88 To global_90: var_88 = var_A4 'Integer
  loc_114B424:   Set var_8C = Me.GridSel
  loc_114B42A:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, CVar(CLng(var_88)))
  loc_114B432:   var_90.Row = global_88
  loc_114B451:   Set var_8C = Me.GridSel
  loc_114B457:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, 0)
  loc_114B45F:   var_90.Col = global_90
  loc_114B47B:   Set var_8C = Me.GridSel
  loc_114B481:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90)
  loc_114B489:   var_90.CellFontName = "WINGDINGS"
  loc_114B4A7:   Set var_8C = Me.GridSel
  loc_114B4AD:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90)
  loc_114B4B5:   var_90.CellFontSize = CVar(CDbl(&HE))
  loc_114B4CB:   Set var_8C = Me.GridSel
  loc_114B4D1:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90)
  loc_114B4E2:   var_B4 = CVar(CLng(var_90.Row)) 'Long
  loc_114B4FA:   Set var_C8 = Me.GridSel
  loc_114B500:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_CC, 0)
  loc_114B513:   var_100 = CStr(var_CC.TextMatrix))
  loc_114B530:   If (var_100 = "ü") Then
  loc_114B53D:     Set var_8C = Me.GridSel
  loc_114B543:     Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90)
  loc_114B554:     var_B4 = CVar(CLng(var_90.Row)) 'Long
  loc_114B572:     Set var_C8 = Me.GridSel
  loc_114B578:     Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_CC, " ", 0)
  loc_114B580:     LateIdCallSt
  loc_114B599:     var_122 = KeyCode
  loc_114B5A2:     If (var_122 = 0) Then
  loc_114B5B5:       For var_126 = 0 To CInt(UBound(global_84, 1)): var_86 = var_126 'Integer
  loc_114B5D1:         Set var_8C = Me.GridSel
  loc_114B5D7:         Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, CLng(global_84(CLng(var_86))), 0, var_122)
  loc_114B5F3:         If (var_CC = CLng(var_90.Row)) Then
  loc_114B602:           global_84(CLng(var_86)) = 0
  loc_114B603:         End If
  loc_114B606:       Next var_126 'Integer
  loc_114B60B:     End If
  loc_114B60E:   Else
  loc_114B618:     Set var_8C = Me.GridSel
  loc_114B61E:     Call 0.Method_GridSel_UnknownEvent_100 (KeyCode)
  loc_114B62F:     var_B4 = CVar(CLng(var_90.Row)) 'Long
  loc_114B634:     var_DC = 0
  loc_114B64D:     Set var_C8 = Me.GridSel
  loc_114B653:     Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_CC, "ü")
  loc_114B65B:     LateIdCallSt
  loc_114B674:     var_128 = KeyCode
  loc_114B67D:     If (var_128 = 0) Then
  loc_114B691:       var_86 = CInt((UBound(global_84, 1) + 1))
  loc_114B6A3:       ReDim Preserve global_84(0 To CLng(var_86))
  loc_114B6B7:       Set var_8C = Me.GridSel
  loc_114B6BD:       Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, var_86, var_128)
  loc_114B6D9:       global_84(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_114B6E4:     End If
  loc_114B6E4:   End If
  loc_114B6E7: Next var_A4 'Integer
  loc_114B6F1: global_88 = 0
  loc_114B6F4: Exit Sub
  loc_114B6F5: ' Referenced from: 114B388
  loc_114B6FB: Call 0.Method_arg_50 (var_100)
  loc_114B710: Proc_183_57_104B0BC(var_100, "GridSel_MouseUp")
  loc_114B71C: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_13 'E4D468
  'Data Table: 5167AC
  Dim var_8C As MSHFlexGrid
  loc_E4D44B: Set var_88 = Me.GridSel
  loc_E4D451: Call 0.Method_GridSel_UnknownEvent_130 (KeyCode, var_8C)
  loc_E4D459: var_8C.CellBackColor = CVar(CLng("16777152"))
  loc_E4D465: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_14 'E4D6D8
  'Data Table: 5167AC
  Dim var_8C As MSHFlexGrid
  loc_E4D6BB: Set var_88 = Me.GridSel
  loc_E4D6C1: Call 0.Method_GridSel_UnknownEvent_140 (KeyCode, var_8C)
  loc_E4D6C9: var_8C.CellBackColor = CVar(CLng("15595518"))
  loc_E4D6D5: Exit Sub
End Sub

Private Sub Form_Load() '1319A78
  'Data Table: 5167AC
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As String
  Dim var_B4 As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_CC As Variant
  Dim Me As Recordset15
  Dim var_100 As CheckBox
  Dim unk_5167CF As Connection15
  loc_1319310: On Error Goto loc_1319A4F
  loc_131931A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1319332: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1319348: Me.Text1.BackColor = CLng(MemVar_1F951B8)
  loc_131935E: Me.Text2.BackColor = CLng(MemVar_1F951B8)
  loc_1319374: Me.Frame2.BackColor = CLng(MemVar_1F951B8)
  loc_131938E: Me.TXTS_DATE.Text = CStr(MemVar_1F950F4)
  loc_13193AB: Me.TXTE_DATE.Text = CStr(MemVar_1F950EC)
  loc_13193C3: Me.Text1.Text = vbNullString
  loc_13193D9: Me.Frame2.Left = CDbl(0)
  loc_13193EF: Me.Frame2.Top = CDbl(0)
  loc_131942D: Me.Text2.Top = (Me.Frame2.Top + Me.Frame2.Height)
  loc_1319471: Me.Text1.Top = (Me.Text2.Top + Me.Text2.Height)
  loc_1319491: Me.FGrid1.Left = CVar(CDbl(0))
  loc_13194C8: var_94 = CVar(((Me.Text1.Top + Me.Text1.Height) + CDbl(&H19))) 'Single
  loc_13194D7: Me.FGrid1.Top = CVar(CDbl(0))
  loc_13194F8: Me.FGrid1.Width = CVar(CDbl(11850))
  loc_1319513: Me.FGrid1.Height = CVar(CDbl(5400))
  loc_131952D: Me.FGrid2.Left = CVar(CDbl(0))
  loc_131953F: var_DC = Me.FGrid1.Height
  loc_1319561: var_94 = CVar((CDbl(Me.FGrid1.Top) + CDbl(var_DC))) 'Single
  loc_1319570: Me.FGrid2.Top = CVar(CDbl(0))
  loc_1319598: Me.FGrid2.Width = CVar(CDbl(11850))
  loc_13195BE: Me.Frame2.Width = CDbl(Me.FGrid2.Width)
  loc_13195D4: Call 0.Method_arg_A4 (CInt(&HB))
  loc_13195E0: Call 0.Method_arg_A4 (CInt(0))
  loc_13195F1: Me.Frame1.Visible = False
  loc_1319608: Me.Frame1.Left = CDbl(1500)
  loc_131961F: Me.Frame1.Top = CDbl(500)
  loc_1319633: Me.Frame3.Visible = False
  loc_131964A: Me.Frame3.Left = CDbl(1500)
  loc_1319661: Me.Frame3.Top = CDbl(500)
  loc_1319675: Me.Frame3.Visible = False
  loc_1319689: Call 0.Method_arg_38 (MemVar_1F953B0)
  loc_131969A: Call 0.Method_arg_3C (MemVar_1F950EC)
  loc_13196AB: Call 0.Method_arg_54 (MemVar_1F9506C)
  loc_13196BC: Call 0.Method_arg_1C (MemVar_1F95070)
  loc_13196CD: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_13196DE: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_13196EF: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_1319700: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_1319711: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_1319722: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_131973C: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_131974A: Set var_A8 = MemVar_1F95044
  loc_1319759: Call 0.Method_Form_Load8 (var_A8)
  loc_131976F: Me.Recordset20.Clone
  loc_131977A: Set var_B4 = var_A8
  loc_1319789: Call 0.Method_arg_50 (var_B4, -1)
  loc_131979B: global_96 = MemVar_1F95070
  loc_13197BB: Me.Recordset15.CursorLocation = 3
  loc_13197E3: Me.Open "SELECT '' as O,SITE_DESC AS Site,SITE_CODE FROM SITE ORDER BY SITE_dESC", CVar(MemVar_1F951E0), 3
  loc_13197F1: CVarUnk
  loc_13197F6: VerifyVarObj
  loc_1319801: Set var_A8 = Me.GridSel
  loc_1319807: Call 0.Method_Form_Load0 (0, var_B4, New, 1)
  loc_131980F: LateIdStAd
  loc_1319831: ReDim Preserve global_84(0 To 0)
  loc_131984D: Set var_A8 = Me.GridSel
  loc_1319853: Call 0.Method_Form_Load0 (0, var_B4, CVar(CDbl(5200)), var_B4)
  loc_131985B: var_B4.Width = -1
  loc_1319867: var_94 = 0
  loc_1319882: Set var_A8 = Me.GridSel
  loc_1319888: Call 0.Method_Form_Load0 (0, var_B4, &H3E8)
  loc_1319890: LateIdCallSt
  loc_13198BA: Set var_A8 = Me.GridSel
  loc_13198C0: Call 0.Method_Form_Load0 (0, var_B4, 0, 2)
  loc_13198C8: LateIdCallSt
  loc_13198D7: var_94 = 1
  loc_13198F2: Set var_A8 = Me.GridSel
  loc_13198F8: Call 0.Method_Form_Load0 (0, var_B4, &HBB8, var_94, var_B4)
  loc_1319900: LateIdCallSt
  loc_131991C: global_84(0) = 0
  loc_1319926: Set var_A8 = Me.GridSel
  loc_131992C: Call 0.Method_Form_Load0 (0, var_B4, var_B4, var_B4)
  loc_131994B: Set var_BC = Me.Check
  loc_1319951: Call 0.Method_Form_Load0 (0, var_100, (CDbl(var_B4.Top) + CDbl(&H14)))
  loc_1319959: var_100.Top = var_94
  loc_1319975: Set var_A8 = Me.GridSel
  loc_131997B: Call 0.Method_Form_Load0 (0, var_B4)
  loc_1319983: var_CC = var_B4.Left
  loc_131999A: Set var_BC = Me.Check
  loc_13199A0: Call 0.Method_Form_Load0 (0, var_100, (CDbl(var_CC) + CDbl(&H28)))
  loc_13199A8: var_100.Left = var_A8
  loc_13199CF: var_AC = "SELECT * FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078
  loc_13199DF: unk_5167CF.Execute var_AC & "'", var_CC, -1
  loc_13199F0: Set RstEnviro = var_A8
  loc_1319A1C: If (Me.RecordCount <= 0) Then
  loc_1319A38:   MsgBox("Parameter Not Set", 0, var_DC, var_114, var_124)
  loc_1319A48:   Exit Sub
  loc_1319A49: End If
  loc_1319A49: Proc_7_6_DFD07C(var_A8)
  loc_1319A4E: Exit Sub
  loc_1319A4F: ' Referenced from: 1319310
  loc_1319A55: Call 0.Method_arg_50 (var_AC)
  loc_1319A6A: Proc_183_57_104B0BC(var_AC, "Form_Load")
  loc_1319A76: Exit Sub
End Sub

Private Sub Form_Resize() 'F7C864
  'Data Table: 5167AC
  Dim var_98 As Variant
  loc_F7C71C: On Error Resume Next
  loc_F7C727: Call 0.Method_arg_100 (var_88)
  loc_F7C734: var_98 = CVar((var_88 - CDbl(250))) 'Single
  loc_F7C743: Me.FGrid1.Width = var_98
  loc_F7C777: Call 0.Method_arg_108 (var_88)
  loc_F7C78C: var_98 = CVar(((var_88 - (Me.Frame2.Height + Me.Text1.Height)) - CDbl(1000))) 'Single
  loc_F7C79B: Me.FGrid1.Height = var_98
  loc_F7C7DB: var_98 = CVar(((CDbl(Me.FGrid1.Top) + CDbl(Me.FGrid1.Height)) + CDbl(&H19))) 'Single
  loc_F7C7EA: Me.FGrid2.Top = var_98
  loc_F7C823: Me.FGrid2.Width = CVar(CDbl(Me.FGrid1.Width))
  loc_F7C852: Me.Frame2.Width = CDbl(Me.FGrid1.Width)
  loc_F7C863: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5F948
  'Data Table: 5167AC
  loc_E5F907: Set MagicStack = Nothing
  loc_E5F919: Set global_92 = Nothing
  loc_E5F92B: Set RstEnviro = Nothing
  loc_E5F93D: Set global_80 = Nothing
  loc_E5F944: Exit Sub
End Sub

Private Sub Form_Activate() '13DFDC8
  'Data Table: 5167AC
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_A0 As String
  Dim var_B4 As Variant
  Dim var_B8 As String
  Dim var_CC As Variant
  Dim Me As Variant
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim unk_5167CF As Connection15
  loc_13DF3F8: On Error Goto loc_13DFD9F
  loc_13DF41F: var_B4 = Me.FGrid1.Tag
  loc_13DF43A: var_CC = Me.FGrid1.Tag
  loc_13DF466: If (((CStr(Me.FGrid1.Tag) = "VOUCHER") Or (CStr(var_B4) = "VOUCHERREG")) Or (CStr(var_CC) = "OPDIFF")) Then
  loc_13DF480:   If (Me.RecordCount > 1) Then
  loc_13DF489:     Me.MoveLast
  loc_13DF4C0:     If Not(IsNull(CVar(Me.Fields.Item("FS_DATE")))) Then
  loc_13DF4FE:       Me.TXTS_DATE.Text = CStr(Me.Fields.Item("FS_DATE").Value)
  loc_13DF512:     End If
  loc_13DF544:     If Not(IsNull(CVar(Me.Fields.Item("FE_DATE")))) Then
  loc_13DF582:       Me.TXTE_DATE.Text = CStr(Me.Fields.Item("FE_DATE").Value)
  loc_13DF596:     End If
  loc_13DF5C8:     If Not(IsNull(CVar(Me.Fields.Item("Check1")))) Then
  loc_13DF603:       Me.Check1.Value = CInt(Me.Fields.Item("Check1").Value)
  loc_13DF617:     Else
  loc_13DF623:       Me.Check1.Value = 1
  loc_13DF62B:     End If
  loc_13DF65D:     If Not(IsNull(CVar(Me.Fields.Item("Check2")))) Then
  loc_13DF698:       Me.Check2.Value = CInt(Me.Fields.Item("Check2").Value)
  loc_13DF6AC:     Else
  loc_13DF6B8:       Me.Check2.Value = 0
  loc_13DF6C0:     End If
  loc_13DF6F2:     If Not(IsNull(CVar(Me.Fields.Item("Check3")))) Then
  loc_13DF72D:       Me.Check3.Value = CInt(Me.Fields.Item("Check3").Value)
  loc_13DF741:     Else
  loc_13DF74D:       Me.Check3.Value = 0
  loc_13DF755:     End If
  loc_13DF787:     If Not(IsNull(CVar(Me.Fields.Item("Check4")))) Then
  loc_13DF7C2:       Me.Check4.Value = CInt(Me.Fields.Item("Check4").Value)
  loc_13DF7D6:     Else
  loc_13DF7E2:       Me.Check4.Value = 0
  loc_13DF7EA:     End If
  loc_13DF81C:     If Not(IsNull(CVar(Me.Fields.Item("Check5")))) Then
  loc_13DF857:       Me.Check5.Value = CInt(Me.Fields.Item("Check5").Value)
  loc_13DF86B:     Else
  loc_13DF877:       Me.Check5.Value = 0
  loc_13DF87F:     End If
  loc_13DF8B1:     If Not(IsNull(CVar(Me.Fields.Item("Check6")))) Then
  loc_13DF8EC:       Me.Check6.Value = CInt(Me.Fields.Item("Check6").Value)
  loc_13DF900:     Else
  loc_13DF90C:       Me.Check6.Value = 0
  loc_13DF914:     End If
  loc_13DF936:     var_9C = CVar(Me.Fields.Item("FRow")) 'Address
  loc_13DF93D:     Proc_183_3_E7DD58(var_B4)
  loc_13DF946:     var_86 = CInt(var_B4)
  loc_13DF97C:     Proc_183_3_E7DD58(var_B4, CVar(Me.Fields.Item("Fcol")))
  loc_13DF985:     var_88 = CInt(var_B4)
  loc_13DF99D:     Me.Delete
  loc_13DF9C5:     If (CStr(Me.FGrid1.Tag) = "VOUCHER") Then
  loc_13DF9DF:       If (Me.RecordCount > 0) Then
  loc_13DF9E8:         Me.MoveLast
  loc_13DFA25:         Me.Text1.Text = Proc_183_2_E5AE94(CVar(Me.Fields.Item("Name")), 1, var_88)
  loc_13DFA37:         Call Proc_189_64_1292538(var_86)
  loc_13DFA73:         var_A0 = Me.TXTS_DATE.Text
  loc_13DFA85:         var_B8 = Me.TXTE_DATE.Text
  loc_13DFAAA:         Call Proc_189_74_F19248(CStr(Me.Fields.Item("LedCode").Value), var_86, var_88)
  loc_13DFAC6:       End If
  loc_13DFAC9:     Else
  loc_13DFAEC:       If (CStr(Me.FGrid1.Tag) = "VOUCHERREG") Then
  loc_13DFB06:         If (Me.RecordCount > 0) Then
  loc_13DFB0F:           Me.MoveLast
  loc_13DFB4C:           Me.Text1.Text = Proc_183_2_E5AE94(CVar(Me.Fields.Item("Name")), CDate(var_A0))
  loc_13DFB5E:           Call Proc_189_64_1292538(CDate(var_B8))
  loc_13DFBB2:           var_B4 = Me.Fields.Item("Name").Value
  loc_13DFBC4:           var_A0 = Me.TXTS_DATE.Text
  loc_13DFBD6:           var_B8 = Me.TXTE_DATE.Text
  loc_13DFC03:           Call Proc_189_79_F0DF3C(CStr(Me.Fields.Item("LedCode").Value), CStr(var_B4), var_86, var_88)
  loc_13DFC29:         End If
  loc_13DFC2C:       Else
  loc_13DFC4F:         If (CStr(Me.FGrid1.Tag) = "OPDIFF") Then
  loc_13DFC69:           If (Me.RecordCount > 0) Then
  loc_13DFC72:             Me.MoveLast
  loc_13DFC99:             var_9C = CVar(Me.Fields.Item("Name")) 'Address
  loc_13DFCAF:             Me.Text1.Text = Proc_183_2_E5AE94(var_9C, CDate(var_A0))
  loc_13DFCC1:             Call Proc_189_64_1292538(CDate(var_B8))
  loc_13DFCCD:             Set var_8C = Me.TXTS_DATE
  loc_13DFCD3:             var_A0 = var_8C.Text
  loc_13DFCE7:             Call Proc_189_73_F0ED4C(var_86, var_88)
  loc_13DFCF2:           End If
  loc_13DFCF2:         End If
  loc_13DFCF2:       End If
  loc_13DFCF2:     End If
  loc_13DFCF8:     MemVar_1F95070 = global_96
  loc_13DFCFC:   End If
  loc_13DFCFC: End If
  loc_13DFD05: If (mREFRESH = &HFF) Then
  loc_13DFD1C:   var_A0 = "SELECT * FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078
  loc_13DFD2C:   unk_5167CF.Execute var_A0 & "'", var_9C, -1
  loc_13DFD3D:   Set RstEnviro = var_8C
  loc_13DFD69:   If (Me.RecordCount <= 0) Then
  loc_13DFD85:     MsgBox("Parameter Not Set", 0, var_B4, var_CC, var_144)
  loc_13DFD95:     Exit Sub
  loc_13DFD96:   End If
  loc_13DFD9B:   mREFRESH = 0
  loc_13DFD9E: End If
  loc_13DFD9E: Exit Sub
  loc_13DFD9F: ' Referenced from: 13DF3F8
  loc_13DFDA5: Call 0.Method_arg_50 (var_A0, mREFRESH, var_8C)
  loc_13DFDBA: Proc_183_57_104B0BC(var_A0, "Form_Activate")
  loc_13DFDC6: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E02A58
  'Data Table: 5167AC
  loc_E02A51: mREFRESH = &HFF
  loc_E02A54: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'FB6D54
  'Data Table: 5167AC
  Dim var_88 As Frame
  Dim var_8C As TextBox
  Dim var_96 As Integer
  loc_FB6BA8: On Error Resume Next
  loc_FB6BB3: Call 0.Method_arg_1E8 (var_88)
  loc_FB6BC5: Call 0.Method_arg_1E8 (var_8C)
  loc_FB6BD9: If (TypeOf var_88 Is arg_B Or TypeOf var_8C Is Shift) Then
  loc_FB6C16:   If ((Me.Frame1.Visible = 0) And (Me.TxtSearch.Visible = 0)) Then
  loc_FB6C21:     If (KeyCode = &HD) Then
  loc_FB6C34:       Proc_303_0_FBACC8("	")
  loc_FB6C3C:     End If
  loc_FB6C3C:   End If
  loc_FB6C3C: End If
  loc_FB6C46: If (Shift = 0) Then
  loc_FB6C4E:   var_96 = KeyCode
  loc_FB6C59:   If (var_96 = &H72) Then
  loc_FB6C63:     Call LblShort_UnknownEvent_9()
  loc_FB6C6B:   Else
  loc_FB6C73:     If (var_96 = &H73) Then
  loc_FB6C7D:       Call LblShort_UnknownEvent_9()
  loc_FB6C85:     Else
  loc_FB6C8D:       If (var_96 = &H74) Then
  loc_FB6C97:         Call LblShort_UnknownEvent_9()
  loc_FB6C9F:       Else
  loc_FB6CA7:         If (var_96 = &H75) Then
  loc_FB6CB1:           Call LblShort_UnknownEvent_9()
  loc_FB6CB9:         Else
  loc_FB6CC1:           If (var_96 = &H76) Then
  loc_FB6CCB:             Call LblShort_UnknownEvent_9()
  loc_FB6CD3:           Else
  loc_FB6CDB:             If (var_96 = &H77) Then
  loc_FB6CE5:               Call LblShort_UnknownEvent_9()
  loc_FB6CED:             Else
  loc_FB6CF5:               If (var_96 = &H78) Then
  loc_FB6CFF:                 Call LblShort_UnknownEvent_9()
  loc_FB6D07:               Else
  loc_FB6D0F:                 If (var_96 = &H79) Then
  loc_FB6D19:                   Call Proc_189_61_E1A01C(0, 6, 5, 4, 3)
  loc_FB6D1E:                 End If
  loc_FB6D1E:               End If
  loc_FB6D1E:             End If
  loc_FB6D1E:           End If
  loc_FB6D1E:         End If
  loc_FB6D1E:       End If
  loc_FB6D1E:     End If
  loc_FB6D1E:   End If
  loc_FB6D20: End If
  loc_FB6D2A: If (Shift = 2) Then
  loc_FB6D3D:   If (KeyCode = &H72) Then
  loc_FB6D47:     Call LblShort_UnknownEvent_9()
  loc_FB6D4C:   End If
  loc_FB6D4E: End If
  loc_FB6D52: Exit Sub
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '14991E0
  'Data Table: 5167AC
  Dim var_8C As Variant
  Dim KeyAscii As Integer
  Dim Me As Recordset15
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_CC As String
  Dim var_C8 As Variant
  loc_1498568: On Error Goto loc_14991B5
  loc_1498571: If (KeyAscii = &H1B) Then
  loc_149858F:   If (Me.Frame1.Visible = &HFF) Then
  loc_149859E:     Me.Frame1.Visible = False
  loc_14985A8:     KeyAscii = 0
  loc_14985AB:     Exit Sub
  loc_14985AC:   End If
  loc_14985C3:   If (Me.RecordCount = 1) Then
  loc_14985C6:     Exit Sub
  loc_14985C7:   End If
  loc_14985DE:   If (Me.RecordCount > 1) Then
  loc_14985E7:     Me.MoveLast
  loc_1498615:     Proc_183_3_E7DD58(var_C8, CVar(Me.Fields.Item("FRow")))
  loc_149861E:     var_86 = CInt(var_C8)
  loc_1498654:     Proc_183_3_E7DD58(var_C8, CVar(Me.Fields.Item("Fcol")))
  loc_149865D:     var_88 = CInt(var_C8)
  loc_1498675:     Me.Delete
  loc_149867A:   End If
  loc_1498691:   If (Me.RecordCount > 0) Then
  loc_149869A:     Me.MoveLast
  loc_14986D1:     If Not(IsNull(CVar(Me.Fields.Item("FS_DATE")))) Then
  loc_149870F:       Me.TXTS_DATE.Text = CStr(Me.Fields.Item("FS_DATE").Value)
  loc_1498723:     End If
  loc_1498755:     If Not(IsNull(CVar(Me.Fields.Item("FE_DATE")))) Then
  loc_1498793:       Me.TXTE_DATE.Text = CStr(Me.Fields.Item("FE_DATE").Value)
  loc_14987A7:     End If
  loc_14987D9:     If Not(IsNull(CVar(Me.Fields.Item("Check1")))) Then
  loc_1498814:       Me.Check1.Value = CInt(Me.Fields.Item("Check1").Value)
  loc_1498828:     Else
  loc_1498834:       Me.Check1.Value = 1
  loc_149883C:     End If
  loc_149886E:     If Not(IsNull(CVar(Me.Fields.Item("Check2")))) Then
  loc_14988A9:       Me.Check2.Value = CInt(Me.Fields.Item("Check2").Value)
  loc_14988BD:     Else
  loc_14988C9:       Me.Check2.Value = 0
  loc_14988D1:     End If
  loc_1498903:     If Not(IsNull(CVar(Me.Fields.Item("Check3")))) Then
  loc_149893E:       Me.Check3.Value = CInt(Me.Fields.Item("Check3").Value)
  loc_1498952:     Else
  loc_149895E:       Me.Check3.Value = 0
  loc_1498966:     End If
  loc_1498998:     If Not(IsNull(CVar(Me.Fields.Item("Check4")))) Then
  loc_14989D3:       Me.Check4.Value = CInt(Me.Fields.Item("Check4").Value)
  loc_14989E7:     Else
  loc_14989F3:       Me.Check4.Value = 0
  loc_14989FB:     End If
  loc_1498A2D:     If Not(IsNull(CVar(Me.Fields.Item("Check5")))) Then
  loc_1498A68:       Me.Check5.Value = CInt(Me.Fields.Item("Check5").Value)
  loc_1498A7C:     Else
  loc_1498A88:       Me.Check5.Value = 0
  loc_1498A90:     End If
  loc_1498AC2:     If Not(IsNull(CVar(Me.Fields.Item("Check6")))) Then
  loc_1498AFD:       Me.Check6.Value = CInt(Me.Fields.Item("Check6").Value)
  loc_1498B11:     Else
  loc_1498B1D:       Me.Check6.Value = 0
  loc_1498B25:     End If
  loc_1498B61:     var_F0 = Ucase(Trim(CVar(Me.Fields.Item("TypeName")))) 'Variant
  loc_1498B7A:     If (var_F0 = "PROFLOSS") Then
  loc_1498B8A:       Me.Text1.Text = vbNullString
  loc_1498B98:       Call Proc_189_66_F0E770(var_86, var_88, 1)
  loc_1498BA0:     Else
  loc_1498BAB:       If (var_F0 = "BALSHEET") Then
  loc_1498BBB:         Me.Text1.Text = vbNullString
  loc_1498BC9:         Call Proc_189_65_F0E3EC(var_86, var_88, var_88)
  loc_1498BD1:       Else
  loc_1498BDC:         If (var_F0 = "SUBTRIAL") Then
  loc_1498C1A:           Me.Text1.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1498C66:           Call Proc_189_69_F0EAF4(CStr(Me.Fields.Item("GroupCode").Value), var_86, var_88)
  loc_1498C7B:         Else
  loc_1498C86:           If (var_F0 = "GROUPTRIAL") Then
  loc_1498C96:             Me.Text1.Text = vbNullString
  loc_1498CA4:             Call Proc_189_67_F0DBB8(var_86, var_88)
  loc_1498CAC:           Else
  loc_1498CB7:             If (var_F0 = "LEDTRIAL") Then
  loc_1498CC7:               Me.Text1.Text = vbNullString
  loc_1498CD5:               Call Proc_189_68_F0EC20(var_86, var_88)
  loc_1498CDD:             Else
  loc_1498CE8:               If (var_F0 = "LEDGER") Then
  loc_1498D26:                 Me.Text1.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1498D83:                 var_104 = Me.TXTE_DATE.Text
  loc_1498DA8:                 Call Proc_189_74_F19248(CStr(Me.Fields.Item("LedCode").Value), var_86, var_88, CDate(Me.TXTS_DATE.Text))
  loc_1498DC7:               Else
  loc_1498DD2:                 If (var_F0 = "CASHBOOK") Then
  loc_1498E10:                   Me.Text1.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1498E76:                   Call Proc_189_74_F19248(CStr(Me.Fields.Item("LedCode").Value), var_86, var_88, 0)
  loc_1498E8B:                 Else
  loc_1498E96:                   If (var_F0 = "MONTHSUM") Then
  loc_1498EC7:                     var_CC = CStr(Me.Fields.Item("Name").Value)
  loc_1498ED4:                     Me.Text1.Text = var_CC
  loc_1498F20:                     Call Proc_189_76_F067B8(CStr(Me.Fields.Item("LedCode").Value), var_86, var_88, 0)
  loc_1498F35:                   Else
  loc_1498F40:                     If (var_F0 = "CASHBANKSUM") Then
  loc_1498F50:                       Me.Text1.Text = vbNullString
  loc_1498F5E:                       Call Proc_189_70_F0E518(var_86, var_88, CDate(var_104))
  loc_1498F66:                     Else
  loc_1498F71:                       If (var_F0 = "CASHFLOW") Then
  loc_1498F81:                         Me.Text1.Text = vbNullString
  loc_1498F8F:                         Call Proc_189_71_F0DCE4(var_86, var_88)
  loc_1498F97:                       Else
  loc_1498FA2:                         If (var_F0 = "FUNDFLOW") Then
  loc_1498FB2:                           Me.Text1.Text = vbNullString
  loc_1498FC0:                           Call Proc_189_72_F0E644(var_86, var_88)
  loc_1498FC8:                         Else
  loc_1498FD3:                           If (var_F0 = "VRANAL") Then
  loc_1498FE3:                             Me.Text1.Text = vbNullString
  loc_1498FF5:                             Call Proc_189_77_F0DA8C(0, 0)
  loc_1498FFD:                           Else
  loc_1499008:                             If (var_F0 = "VRANALPER") Then
  loc_1499018:                               Me.Text1.Text = vbNullString
  loc_149908A:                               Call Proc_189_78_F08564(CStr(Me.Fields.Item("LedCode").Value), CStr(Me.Fields.Item("Name").Value), var_86)
  loc_14990A8:                             End If
  loc_14990A8:                           End If
  loc_14990A8:                         End If
  loc_14990A8:                       End If
  loc_14990A8:                     End If
  loc_14990A8:                   End If
  loc_14990A8:                 End If
  loc_14990A8:               End If
  loc_14990A8:             End If
  loc_14990A8:           End If
  loc_14990A8:         End If
  loc_14990A8:       End If
  loc_14990A8:     End If
  loc_14990A8:   End If
  loc_14990AB: Else
  loc_14990B1:   If (KeyAscii = &HD) Then
  loc_14990CF:     If (Me.Frame1.Visible = 0) Then
  loc_14990D2:       Call Fgrid1_UnknownEvent_B()
  loc_14990D7:     End If
  loc_14990D7:   End If
  loc_14990D7: End If
  loc_149910F: If ((Me.Frame1.Visible = 0) And (Me.TxtSearch.Visible = 0)) Then
  loc_149919C:   If CBool((Ucase(Trim(CVar(CStr(Me.FGrid1.Tag)))) <> "VOUCHER") And (Ucase(Trim(CVar(CStr(Me.FGrid1.Tag)))) <> "VOUCHERREG")) Then
  loc_14991A3:     Set var_8C = Me.FGrid1
  loc_14991B4:   End If
  loc_14991B4: End If
  loc_14991B4: Exit Sub
  loc_14991B5: ' Referenced from: 1498568
  loc_14991BB: Call 0.Method_arg_50 (var_CC, FGrid1.DispID_8001, var_88)
  loc_14991D0: Proc_183_57_104B0BC(var_CC, "Form_KeyPress")
  loc_14991DC: Exit Sub
End Sub

Private Sub BTNPRINT_UnknownEvent_9 '15B0414
  'Data Table: 5167AC
  Dim var_9C As Variant
  Dim var_A4 As Variant
  Dim var_A8 As Integer
  Dim var_B8 As Variant
  Dim var_108 As Variant
  Dim var_118 As String
  Dim Me As Recordset15
  Dim var_12C As Field20
  Dim var_178 As String
  Dim var_9E As Integer
  loc_15AF1E8: On Error Goto loc_15B03EC
  loc_15AF223: If ((Me.Frame1.Visible = &HFF) Or (Me.Frame3.Visible = &HFF)) Then
  loc_15AF226:   Exit Sub
  loc_15AF227: End If
  loc_15AF233: If (KeyAscii = 1) Then
  loc_15AF236:   GoTo loc_15AFACA
  loc_15AF239: End If
  loc_15AF264: var_F8 = Ucase(Trim(CVar(CStr(Me.FGrid1.Tag)))) 'Variant
  loc_15AF27F: If Not (var_F8 = "BALSHEET") Then
  loc_15AF28D:   If (var_F8 = "PROFLOSS") Then
  loc_15AF290:   End If
  loc_15AF294:   Set var_9C = Me.FGrid1
  loc_15AF2DA:   var_A4 = Me.Fields
  loc_15AF318:   If CBool((Ucase(Trim(CVar(CStr(var_9C.Tag)))) = "PROFLOSS") And (var_A4.Item("ShowQty").Value = "Yes")) Then
  loc_15AF327:     Call 0.Method_arg_AC (var_9C)
  loc_15AF332:     MemVar_1F951E8 = var_9C
  loc_15AF33C:   Else
  loc_15AF348:     Call 0.Method_arg_A8 (var_9C)
  loc_15AF353:     MemVar_1F951E8 = var_9C
  loc_15AF36B:     Call 0.Method_arg_90 (var_9C, var_170, var_86)
  loc_15AF373:     Call 0.Method_arg_24 (1)
  loc_15AF37F:     For var_174 =  To CInt(var_170):   var_A8 = var_174 'Integer
  loc_15AF398:       Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AF3A0:       Call 0.Method_arg_20 (var_A4)
  loc_15AF3A8:       Call 0.Method_arg_30 (var_178)
  loc_15AF3B0:       var_17C = var_178
  loc_15AF3C2:       If (var_17C = "comp_name") Then
  loc_15AF3E6:         Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AF3EE:         Call 0.Method_arg_20 (var_A4)
  loc_15AF3F6:         Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_15AF40C:       Else
  loc_15AF414:         If (var_17C = "comp_add1") Then
  loc_15AF438:           Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AF440:           Call 0.Method_arg_20 (var_A4)
  loc_15AF448:           Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_15AF45E:         Else
  loc_15AF466:           If (var_17C = "comp_city") Then
  loc_15AF48A:             Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AF492:             Call 0.Method_arg_20 (var_A4)
  loc_15AF49A:             Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_15AF4AD:           End If
  loc_15AF4AD:         End If
  loc_15AF4AD:       End If
  loc_15AF4B0:     Next var_174 'Integer
  loc_15AF4B5:   End If
  loc_15AF4B9:   Set var_9C = Me.FGrid1
  loc_15AF4F3:   var_9E = CreateFieldDefFile(var_9C.DataSource, MemVar_1F953B4 & "\FaProfLoss.ttx")
  loc_15AF4FD:   var_98 = CVar(var_9E) 'Variant
  loc_15AF517: Else
  loc_15AF522:   If Not (var_F8 = "GROUPTRIAL") Then
  loc_15AF530:     If Not (var_F8 = "LEDTRIAL") Then
  loc_15AF53E:       If (var_F8 = "SUBTRIAL") Then
  loc_15AF541:       End If
  loc_15AF541:     End If
  loc_15AF54D:     Call 0.Method_arg_BC (var_9C, var_9E)
  loc_15AF558:     MemVar_1F951E8 = var_9C
  loc_15AF563:     Set var_9C = Me.FGrid1
  loc_15AF569:     var_B8 = var_9C.DataSource
  loc_15AF59D:     var_9E = CreateFieldDefFile(var_B8, MemVar_1F953B4 & "\FaLedTrial.ttx", &HFF)
  loc_15AF5A7:     var_98 = CVar(var_9E) 'Variant
  loc_15AF5C1:   Else
  loc_15AF5CC:     If (var_F8 = "MONTHSUM") Then
  loc_15AF5DB:       Call 0.Method_arg_B0 (var_9C, var_9E, var_B8)
  loc_15AF5E6:       MemVar_1F951E8 = var_9C
  loc_15AF5F1:       Set var_9C = Me.FGrid1
  loc_15AF5F7:       var_B8 = Me.FGrid1.DataSource
  loc_15AF62B:       var_9E = CreateFieldDefFile(var_B8, MemVar_1F953B4 & "\FaMonthSum.ttx", &HFF)
  loc_15AF635:       var_98 = CVar(var_9E) 'Variant
  loc_15AF64F:     Else
  loc_15AF65A:       If Not (var_F8 = "CASHFLOW") Then
  loc_15AF660:         var_118 = "FUNDFLOW"
  loc_15AF668:         If (var_F8 = var_118) Then
  loc_15AF66B:         End If
  loc_15AF677:         Call 0.Method_arg_B4 (var_9C, var_9E, var_B8)
  loc_15AF682:         MemVar_1F951E8 = var_9C
  loc_15AF68D:         Set var_9C = Me.FGrid1
  loc_15AF693:         var_B8 = var_9C.DataSource
  loc_15AF6C7:         var_9E = CreateFieldDefFile(var_B8, MemVar_1F953B4 & "\FaCashfl.ttx", &HFF)
  loc_15AF6D1:         var_98 = CVar(var_9E) 'Variant
  loc_15AF6EB:       Else
  loc_15AF6F6:         If (var_F8 = "CASHBANKSUM") Then
  loc_15AF705:           Call 0.Method_arg_B8 (var_9C, var_9E, var_B8)
  loc_15AF710:           MemVar_1F951E8 = var_9C
  loc_15AF71B:           Set var_9C = Me.FGrid1
  loc_15AF721:           var_B8 = Me.FGrid1.DataSource
  loc_15AF755:           var_9E = CreateFieldDefFile(var_B8, MemVar_1F953B4 & "\FaCBCB.ttx", &HFF)
  loc_15AF75F:           var_98 = CVar(var_9E) 'Variant
  loc_15AF779:         Else
  loc_15AF784:           If (var_F8 = "CASHBOOK") Then
  loc_15AF793:             Call 0.Method_arg_A4 (var_9C, var_9E, var_B8)
  loc_15AF79E:             MemVar_1F951E8 = var_9C
  loc_15AF7A9:             Set var_9C = Me.FGrid1
  loc_15AF7AF:             var_B8 = Me.FGrid1.DataSource
  loc_15AF7E3:             var_9E = CreateFieldDefFile(var_B8, MemVar_1F953B4 & "\FaMagCashBook.ttx", &HFF)
  loc_15AF7ED:             var_98 = CVar(var_9E) 'Variant
  loc_15AF807:           Else
  loc_15AF812:             If (var_F8 = "LEDGER") Then
  loc_15AF821:               Call 0.Method_arg_A0 (var_9C, var_9E, var_B8)
  loc_15AF82C:               MemVar_1F951E8 = var_9C
  loc_15AF837:               Set var_9C = Me.FGrid1
  loc_15AF83D:               var_B8 = Me.FGrid1.DataSource
  loc_15AF871:               var_9E = CreateFieldDefFile(var_B8, MemVar_1F953B4 & "\FaMagLedger.ttx", &HFF)
  loc_15AF87B:               var_98 = CVar(var_9E) 'Variant
  loc_15AF895:             Else
  loc_15AF8A0:               If (var_F8 = "OPDIFF") Then
  loc_15AF8AF:                 Call 0.Method_arg_1EC (var_9C, var_9E, var_B8)
  loc_15AF8BA:                 MemVar_1F951E8 = var_9C
  loc_15AF8C5:                 Set var_9C = Me.FGrid1
  loc_15AF8CB:                 var_B8 = Me.FGrid1.DataSource
  loc_15AF8FF:                 var_9E = CreateFieldDefFile(var_B8, MemVar_1F953B4 & "\FaOpDiff.ttx", &HFF)
  loc_15AF909:                 var_98 = CVar(var_9E) 'Variant
  loc_15AF923:               Else
  loc_15AF92E:                 If (var_F8 = "VRANAL") Then
  loc_15AF93D:                   Call 0.Method_arg_D8 (var_9C, var_9E, var_B8)
  loc_15AF948:                   MemVar_1F951E8 = var_9C
  loc_15AF953:                   Set var_9C = Me.FGrid1
  loc_15AF959:                   var_B8 = Me.FGrid1.DataSource
  loc_15AF98D:                   var_9E = CreateFieldDefFile(var_B8, MemVar_1F953B4 & "\FaVrAnal.ttx", &HFF)
  loc_15AF997:                   var_98 = CVar(var_9E) 'Variant
  loc_15AF9B1:                 Else
  loc_15AF9BC:                   If (var_F8 = "VRANALPER") Then
  loc_15AF9CB:                     Call 0.Method_arg_DC (var_9C, var_9E, var_B8)
  loc_15AF9D6:                     MemVar_1F951E8 = var_9C
  loc_15AF9E1:                     Set var_9C = Me.FGrid1
  loc_15AF9E7:                     var_B8 = Me.FGrid1.DataSource
  loc_15AFA1B:                     var_9E = CreateFieldDefFile(var_B8, MemVar_1F953B4 & "\FaVrAnalPer.ttx", &HFF)
  loc_15AFA25:                     var_98 = CVar(var_9E) 'Variant
  loc_15AFA3F:                   Else
  loc_15AFA4A:                     If (var_F8 = "VRREG") Then
  loc_15AFA59:                       Call 0.Method_arg_D4 (var_9C, var_9E, var_B8)
  loc_15AFA64:                       MemVar_1F951E8 = var_9C
  loc_15AFA6F:                       Set var_9C = Me.FGrid1
  loc_15AFA87:                       var_178 = MemVar_1F953B4 & "\FaVrReg.ttx"
  loc_15AFA9E:                       Set var_12C = Me.FGrid1.DataSource
  loc_15AFAA9:                       var_9E = CreateFieldDefFile(var_12C, var_178, &HFF)
  loc_15AFAB0:                       var_108 = CVar(var_9E) 'Integer
  loc_15AFAB3:                       var_98 = var_108 'Variant
  loc_15AFACA:                     End If
  loc_15AFACA:                   End If
  loc_15AFACA:                 End If
  loc_15AFACA:               End If
  loc_15AFACA:             End If
  loc_15AFACA:           End If
  loc_15AFACA:         End If
  loc_15AFACA:       End If
  loc_15AFACA:     End If
  loc_15AFACA:   End If
  loc_15AFACA:   ' Referenced from: 15AF236
  loc_15AFACA: End If
  loc_15AFAD6: Set var_9C = Me.FGrid1
  loc_15AFADC: var_B8 = var_9C.DataSource
  loc_15AFAE7: CVarUnk
  loc_15AFAF5: Call 0.Method_arg_64 (var_A4, var_B8, var_108, var_118)
  loc_15AFAFD: Call 0.Method_arg_2C (var_9E, var_B8)
  loc_15AFB21: Call 0.Method_arg_90 (var_9C, var_170, var_86)
  loc_15AFB29: Call 0.Method_arg_24 (1, &HFF)
  loc_15AFB35: For var_184 =  To CInt(var_170): var_B8 = var_184 'Integer
  loc_15AFB4E:   Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AFB56:   Call 0.Method_arg_20 (var_A4)
  loc_15AFB5E:   Call 0.Method_arg_30 (var_178)
  loc_15AFB66:   var_188 = var_178
  loc_15AFB78:   If Not (var_188 = "title") Then
  loc_15AFB83:     If (var_188 = "TITLE") Then
  loc_15AFB86:     End If
  loc_15AFB8F:     Call 0.Method_arg_50 (var_178)
  loc_15AFBB2:     Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AFBBA:     Call 0.Method_arg_20 (var_A4)
  loc_15AFBC2:     Call 0.Method_arg_38 ("'" & var_178 & "'")
  loc_15AFBDA:   Else
  loc_15AFBE2:     If Not (var_188 = "DATE") Then
  loc_15AFBED:       If Not (var_188 = "date") Then
  loc_15AFBF8:         If Not (var_188 = "FROMDATE") Then
  loc_15AFC03:           If (var_188 = "DT") Then
  loc_15AFC06:           End If
  loc_15AFC06:         End If
  loc_15AFC06:       End If
  loc_15AFC47:       If (Ucase(Trim(CVar(CStr(Me.FGrid1.Tag)))) = "BALSHEET") Then
  loc_15AFC7D:         Call 0.Method_arg_90 (var_A4, CLng(var_86))
  loc_15AFC85:         Call 0.Method_arg_20 (var_12C)
  loc_15AFC8D:         Call 0.Method_arg_38 ("'As On " & Me.TXTE_DATE.Text & "'")
  loc_15AFCA7:       Else
  loc_15AFCD1:         Set var_A4 = Me.TXTE_DATE
  loc_15AFCFA:         Call 0.Method_arg_90 (var_12C, CLng(var_86))
  loc_15AFD02:         Call 0.Method_arg_20 (var_198)
  loc_15AFD0A:         Call 0.Method_arg_38 ("'From " & Me.TXTS_DATE.Text & " To " & var_A4.Text & "'")
  loc_15AFD29:       End If
  loc_15AFD2C:     Else
  loc_15AFD34:       If (var_188 = "ForParty") Then
  loc_15AFDA8:         Call 0.Method_arg_90 (var_A4, CLng(var_86))
  loc_15AFDB0:         Call 0.Method_arg_20 (var_12C)
  loc_15AFDB8:         Call 0.Method_arg_38 (CStr(IIf((Trim(CVar(Me.Text1)) = vbNullString), "''", CVar("'For       :     " & Me.Text1.Text & "'"))))
  loc_15AFDE1:       Else
  loc_15AFDE9:         If (var_188 = "Lia") Then
  loc_15AFE17:           var_1AC = Ucase(Trim(CVar(CStr(Me.FGrid1.Tag)))) 'Variant
  loc_15AFE32:           If (var_1AC = "BALSHEET") Then
  loc_15AFE4A:             var_9C = Me.Fields
  loc_15AFE52:             var_A4 = var_9C.Item("VerticleBalanceSheet")
  loc_15AFE74:             If (var_A4.Value = "No") Then
  loc_15AFE8A:               Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AFE92:               Call 0.Method_arg_20 (var_A4)
  loc_15AFE9A:               Call 0.Method_arg_38 ("'Liabilities'")
  loc_15AFEA9:             Else
  loc_15AFEBC:               Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AFEC4:               Call 0.Method_arg_20 (var_A4)
  loc_15AFECC:               Call 0.Method_arg_38 ("'Particulars'")
  loc_15AFED8:             End If
  loc_15AFEDB:           Else
  loc_15AFEE6:             If (var_1AC = "PROFLOSS") Then
  loc_15AFEFC:               Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AFF04:               Call 0.Method_arg_20 (var_A4)
  loc_15AFF0C:               Call 0.Method_arg_38 ("'Particulars'")
  loc_15AFF18:             End If
  loc_15AFF18:           End If
  loc_15AFF1B:         Else
  loc_15AFF23:           If (var_188 = "ASS") Then
  loc_15AFF51:             var_1BC = Ucase(Trim(CVar(CStr(Me.FGrid1.Tag)))) 'Variant
  loc_15AFF6C:             If (var_1BC = "BALSHEET") Then
  loc_15AFF84:               var_9C = Me.Fields
  loc_15AFF8C:               var_A4 = var_9C.Item("VerticleBalanceSheet")
  loc_15AFFAE:               If (var_A4.Value = "No") Then
  loc_15AFFC4:                 Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AFFCC:                 Call 0.Method_arg_20 (var_A4)
  loc_15AFFD4:                 Call 0.Method_arg_38 ("'Assets'")
  loc_15AFFE3:               Else
  loc_15AFFF6:                 Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AFFFE:                 Call 0.Method_arg_20 (var_A4)
  loc_15B0006:                 Call 0.Method_arg_38 ("''")
  loc_15B0012:               End If
  loc_15B0015:             Else
  loc_15B0020:               If (var_1BC = "PROFLOSS") Then
  loc_15B0036:                 Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15B003E:                 Call 0.Method_arg_20 (var_A4)
  loc_15B0046:                 Call 0.Method_arg_38 ("'Particulars'")
  loc_15B0052:               End If
  loc_15B0052:             End If
  loc_15B0055:           Else
  loc_15B005D:             If (var_188 = "Amt") Then
  loc_15B008B:               var_1CC = Ucase(Trim(CVar(CStr(Me.FGrid1.Tag)))) 'Variant
  loc_15B00A6:               If (var_1CC = "BALSHEET") Then
  loc_15B00BE:                 var_9C = Me.Fields
  loc_15B00C6:                 var_A4 = var_9C.Item("VerticleBalanceSheet")
  loc_15B00E8:                 If (var_A4.Value = "No") Then
  loc_15B00FE:                   Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15B0106:                   Call 0.Method_arg_20 (var_A4)
  loc_15B010E:                   Call 0.Method_arg_38 ("'Amount'")
  loc_15B011D:                 Else
  loc_15B0130:                   Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15B0138:                   Call 0.Method_arg_20 (var_A4)
  loc_15B0140:                   Call 0.Method_arg_38 ("''")
  loc_15B014C:                 End If
  loc_15B014F:               Else
  loc_15B015A:                 If (var_1CC = "PROFLOSS") Then
  loc_15B0170:                   Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15B0178:                   Call 0.Method_arg_20 (var_A4)
  loc_15B0180:                   Call 0.Method_arg_38 ("'Amount'")
  loc_15B018C:                 End If
  loc_15B018C:               End If
  loc_15B018F:             Else
  loc_15B0197:               If (var_188 = "DosPrint") Then
  loc_15B01D9:                 Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15B01E1:                 Call 0.Method_arg_20 (var_A4)
  loc_15B01E9:                 Call 0.Method_arg_38 (CStr(IIf((KeyAscii = 1), "'Y'", "'N'")))
  loc_15B0206:               Else
  loc_15B020E:                 If (var_188 = "ShowQty") Then
  loc_15B0264:                   Call 0.Method_arg_90 (var_12C, CLng(var_86))
  loc_15B026C:                   Call 0.Method_arg_20 (var_198)
  loc_15B0274:                   Call 0.Method_arg_38 (CStr("'" & Me.Fields.Item("ShowQty").Value & "'"))
  loc_15B0293:                 Else
  loc_15B029B:                   If (var_188 = "PageNo") Then
  loc_15B02F1:                     Call 0.Method_arg_90 (var_12C, CLng(var_86))
  loc_15B02F9:                     Call 0.Method_arg_20 (var_198)
  loc_15B0301:                     Call 0.Method_arg_38 (CStr("'" & Me.Fields.Item("pagenofill").Value & "'"))
  loc_15B0320:                   Else
  loc_15B0328:                     If (var_188 = "DT1") Then
  loc_15B036A:                       var_178 = CStr("'" & Me.Fields.Item("daterfill").Value & "'")
  loc_15B037E:                       Call 0.Method_arg_90 (var_12C, CLng(var_86))
  loc_15B0386:                       Call 0.Method_arg_20 (var_198)
  loc_15B038E:                       Call 0.Method_arg_38 (var_178)
  loc_15B03AA:                     End If
  loc_15B03AA:                   End If
  loc_15B03AA:                 End If
  loc_15B03AA:               End If
  loc_15B03AA:             End If
  loc_15B03AA:           End If
  loc_15B03AA:         End If
  loc_15B03AA:       End If
  loc_15B03AA:     End If
  loc_15B03AA:   End If
  loc_15B03AD: Next var_184 'Integer
  loc_15B03B8: Call 0.Method_arg_150 ()
  loc_15B03C3: Call 0.Method_arg_50 (var_178)
  loc_15B03DA: Proc_183_10_1499E94(MemVar_1F951E8, KeyAscii)
  loc_15B03E7: MemVar_1F951E8 = Nothing
  loc_15B03EB: Exit Sub
  loc_15B03EC: ' Referenced from: 15AF1E8
  loc_15B03F2: Call 0.Method_arg_50 (var_178, var_178)
  loc_15B0407: Proc_183_57_104B0BC(var_178, "BTNPRINT_Click")
  loc_15B0413: Exit Sub
End Sub

Private Sub btnok_UnknownEvent_9 '13C9CD0
  'Data Table: 5167AC
  Dim Me As Recordset15
  Dim var_88 As Variant
  Dim var_A4 As String
  Dim var_B4 As Variant
  Dim var_C4 As Variant
  Dim var_8C As String
  loc_13C9348: On Error Goto loc_13C9CA5
  loc_13C9351: Me.MoveLast
  loc_13C9393: If (CDate(Me.TXTE_DATE.Text) < CDate(Me.TXTS_DATE.Text)) Then
  loc_13C93AF:   MsgBox("To Date Can't be less then From Date", 0, var_D4, var_F4, var_114)
  loc_13C93C9:   Me.TXTE_DATE.SetFocus
  loc_13C93D1:   Exit Sub
  loc_13C93D2: End If
  loc_13C93DE: Me.Frame1.Visible = False
  loc_13C93EA: var_B4 = CVar(Me.TXTS_DATE) 'Address
  loc_13C93FB: Me.Collect = "FS_DATE"
  loc_13C9407: var_B4 = CVar(Me.TXTE_DATE) 'Address
  loc_13C9418: Me.Collect = "FE_DATE"
  loc_13C9435: var_C4 = CVar(Me.Check1.Value) 'Integer
  loc_13C9445: Me.Collect = "Check1"
  loc_13C9462: var_C4 = CVar(Me.Check2.Value) 'Integer
  loc_13C9472: Me.Collect = "Check2"
  loc_13C948F: var_C4 = CVar(Me.Check3.Value) 'Integer
  loc_13C949F: Me.Collect = "Check3"
  loc_13C94BC: var_C4 = CVar(Me.Check4.Value) 'Integer
  loc_13C94CC: Me.Collect = "Check4"
  loc_13C94E9: var_C4 = CVar(Me.Check5.Value) 'Integer
  loc_13C94F9: Me.Collect = "Check5"
  loc_13C9516: var_C4 = CVar(Me.Check6.Value) 'Integer
  loc_13C951A: var_A4 = "Check6"
  loc_13C9526: Me.Collect = var_A4
  loc_13C953C: Me.Update var_A4, var_C4
  loc_13C957D: var_128 = Ucase(Trim(CVar(Me.Fields.Item("TypeName")))) 'Variant
  loc_13C9596: If (var_128 = "VRANAL") Then
  loc_13C95A6:   Me.Text1.Text = vbNullString
  loc_13C95B8:   Call Proc_189_77_F0DA8C(0, 0, var_C4, var_C4, var_C4)
  loc_13C95C0: Else
  loc_13C95CB:   If (var_128 = "VRANALPER") Then
  loc_13C9609:     Me.Text1.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13C964D:     var_C4 = "Name"
  loc_13C968B:     Call Proc_189_78_F08564(CStr(Me.Fields.Item("LedCode").Value), CStr(Me.Fields.Item(var_C4).Value), 0, 0, var_C4)
  loc_13C96AC:   Else
  loc_13C96B7:     If (var_128 = "VRREG") Then
  loc_13C96F5:       Me.Text1.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13C9739:       var_C4 = "Name"
  loc_13C9791:       Call Proc_189_79_F0DF3C(CStr(Me.Fields.Item("LedCode").Value), CStr(Me.Fields.Item(var_C4).Value), 0, 0, 0)
  loc_13C97B2:     Else
  loc_13C97BD:       If (var_128 = "PROFLOSS") Then
  loc_13C97CD:         Me.Text1.Text = vbNullString
  loc_13C97DF:         Call Proc_189_66_F0E770(0, 0, 0, var_C4)
  loc_13C97E7:       Else
  loc_13C97F2:         If (var_128 = "BALSHEET") Then
  loc_13C9802:           Me.Text1.Text = vbNullString
  loc_13C9814:           Call Proc_189_65_F0E3EC(0, 0, var_C4)
  loc_13C981C:         Else
  loc_13C9827:           If (var_128 = "SUBTRIAL") Then
  loc_13C9865:             Me.Text1.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13C98B5:             Call Proc_189_69_F0EAF4(CStr(Me.Fields.Item("GroupCode").Value), 0, 0)
  loc_13C98CA:           Else
  loc_13C98D5:             If (var_128 = "LEDGER") Then
  loc_13C9913:               Me.Text1.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13C9970:               var_94 = Me.TXTE_DATE.Text
  loc_13C9999:               Call Proc_189_74_F19248(CStr(Me.Fields.Item("LedCode").Value), 0, 0, CDate(Me.TXTS_DATE.Text))
  loc_13C99B8:             Else
  loc_13C99C3:               If (var_128 = "CASHBOOK") Then
  loc_13C9A01:                 Me.Text1.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13C9A5E:                 var_94 = Me.TXTE_DATE.Text
  loc_13C9A87:                 Call Proc_189_75_F0868C(CStr(Me.Fields.Item("LedCode").Value), 0, 0, CDate(Me.TXTS_DATE.Text))
  loc_13C9AA6:               Else
  loc_13C9AB1:                 If (var_128 = "GROUPTRIAL") Then
  loc_13C9AC1:                   Me.Text1.Text = vbNullString
  loc_13C9AD3:                   Call Proc_189_67_F0DBB8(0, 0, CDate(var_94))
  loc_13C9ADB:                 Else
  loc_13C9AE6:                   If (var_128 = "LEDTRIAL") Then
  loc_13C9AF6:                     Me.Text1.Text = vbNullString
  loc_13C9B08:                     Call Proc_189_68_F0EC20(0, 0, CDate(var_94))
  loc_13C9B10:                   Else
  loc_13C9B1B:                     If (var_128 = "MONTHSUM") Then
  loc_13C9B59:                       Me.Text1.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13C9BA9:                       Call Proc_189_76_F067B8(CStr(Me.Fields.Item("LedCode").Value), 0, 0)
  loc_13C9BBE:                     Else
  loc_13C9BC9:                       If (var_128 = "CASHBANKSUM") Then
  loc_13C9BF7:                         var_8C = Proc_183_2_E5AE94(CVar(Me.Fields.Item("Name")), CVar(Me.Fields.Item("Name")))
  loc_13C9C04:                         Me.Text1.Text = var_8C
  loc_13C9C20:                         Call Proc_189_70_F0E518(0, 0)
  loc_13C9C28:                       Else
  loc_13C9C33:                         If (var_128 = "CASHFLOW") Then
  loc_13C9C43:                           Me.Text1.Text = vbNullString
  loc_13C9C55:                           Call Proc_189_71_F0DCE4(0, 0)
  loc_13C9C5D:                         Else
  loc_13C9C68:                           If (var_128 = "FUNDFLOW") Then
  loc_13C9C78:                             Me.Text1.Text = vbNullString
  loc_13C9C8A:                             Call Proc_189_72_F0E644(0, 0)
  loc_13C9C8F:                           End If
  loc_13C9C8F:                         End If
  loc_13C9C8F:                       End If
  loc_13C9C8F:                     End If
  loc_13C9C8F:                   End If
  loc_13C9C8F:                 End If
  loc_13C9C8F:               End If
  loc_13C9C8F:             End If
  loc_13C9C8F:           End If
  loc_13C9C8F:         End If
  loc_13C9C8F:       End If
  loc_13C9C8F:     End If
  loc_13C9C8F:   End If
  loc_13C9C8F: End If
  loc_13C9C93: Set var_88 = Me.FGrid1
  loc_13C9CA4: Exit Sub
  loc_13C9CA5: ' Referenced from: 13C9348
  loc_13C9CAB: Call 0.Method_arg_50 (var_8C, FGrid1.DispID_8001)
  loc_13C9CC0: Proc_183_57_104B0BC(var_8C, "btnok_Click")
  loc_13C9CCC: Exit Sub
End Sub

Private Sub Check2_KeyDown(KeyCode As Integer, Shift As Integer) 'E21AF0
  'Data Table: 5167AC
  loc_E21AD6: If (KeyCode = &HD) Then
  loc_E21AE7:   Proc_303_0_FBACC8("	")
  loc_E21AEF: End If
  loc_E21AEF: Exit Sub
End Sub

Private Sub TxtSearch1_KeyDown(KeyCode As Integer, Shift As Integer) 'F6A338
  'Data Table: 5167AC
  loc_F6A208: On Error Goto loc_F6A310
  loc_F6A216: If (Proc_183_12_E7AF74(KeyCode) = &HFF) Then
  loc_F6A241:   Set var_90 = Me.GridSel
  loc_F6A247:   Call 0.Method_TxtSearch1_KeyDown0 (CInt(Val(Me.TxtSearch1.Tag)), var_94)
  loc_F6A26F:   Me.TxtSearch1.Visible = False
  loc_F6A277: End If
  loc_F6A281: If (CLng(KeyCode) = &H2E) Then
  loc_F6A291:   Me.TxtSearch.Text = vbNullString
  loc_F6A299: End If
  loc_F6A2AE: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_F6A2BE:   var_8C = Me.TxtSearch1.Tag
  loc_F6A2D9:   Set var_90 = Me.GridSel
  loc_F6A2DF:   Call 0.Method_TxtSearch1_KeyDown0 (CInt(Val(var_8C)), var_94, Val(var_8C))
  loc_F6A307:   Me.TxtSearch1.Visible = False
  loc_F6A30F: End If
  loc_F6A30F: Exit Sub
  loc_F6A310: ' Referenced from: F6A208
  loc_F6A316: Call 0.Method_arg_50 (var_8C, GridSel.DispID_8001)
  loc_F6A32B: Proc_183_57_104B0BC(var_8C, "TxtSearch1_KeyDown")
  loc_F6A337: Exit Sub
End Sub

Private Sub TxtSearch1_KeyPress(KeyAscii As Integer) 'FAF08C
  'Data Table: 5167AC
  Dim var_8C As String
  Dim var_AC As MSHFlexGrid
  Dim var_BC As Variant
  Dim Me As Recordset15
  loc_FAEF2C: On Error Goto loc_FAF064
  loc_FAEF59: If (Me.TxtSearch1.Tag = CStr(0)) Then
  loc_FAEF70:   var_8C = Me.TxtSearch1.Tag
  loc_FAEF8B:   Set var_98 = Me.GridSel
  loc_FAEF91:   Call 0.Method_TxtSearch1_KeyPress0 (CInt(Val(var_8C)), var_9C)
  loc_FAEFBE:   Set var_A8 = Me.GridSel
  loc_FAEFC4:   Call 0.Method_TxtSearch1_KeyPress0 (CInt(Val(Me.TxtSearch1.Tag)), var_AC)
  loc_FAEFCC:   var_BC = var_AC.Col
  loc_FAF006:   var_EC = "15595518"
  loc_FAF00F:   var_E8 = "16777152"
  loc_FAF037:   Proc_183_11_113DA88(Me.TxtSearch1, var_9C, global_80, KeyAscii, Me.Fields.Item(CVar(CLng(var_BC))).Name)
  loc_FAF063: End If
  loc_FAF063: Exit Sub
  loc_FAF064: ' Referenced from: FAEF2C
  loc_FAF06A: Call 0.Method_arg_50 (var_8C, var_E8, var_EC)
  loc_FAF07F: Proc_183_57_104B0BC(var_8C, "TxtSearch1_KeyPress", var_BC)
  loc_FAF08B: Exit Sub
End Sub

Private Sub TxtSearch1_LostFocus() 'ECC298
  'Data Table: 5167AC
  loc_ECC1F8: On Error Goto loc_ECC26F
  loc_ECC208: Me.TxtSearch1.Text = vbNullString
  loc_ECC21D: var_8C = Me.TxtSearch1.Tag
  loc_ECC238: Set var_90 = Me.GridSel
  loc_ECC23E: Call 0.Method_TxtSearch1_LostFocus0 (CInt(Val(var_8C)), var_94)
  loc_ECC266: Me.TxtSearch1.Visible = False
  loc_ECC26E: Exit Sub
  loc_ECC26F: ' Referenced from: ECC1F8
  loc_ECC275: Call 0.Method_arg_50 (var_8C, GridSel.DispID_8001)
  loc_ECC28A: Proc_183_57_104B0BC(var_8C, "TxtSearch1_LostFocus")
  loc_ECC296: Exit Sub
End Sub

Private Sub TxtSearch1_Click() 'ECC468
  'Data Table: 5167AC
  loc_ECC3C8: On Error Goto loc_ECC43F
  loc_ECC3D8: Me.TxtSearch1.Text = vbNullString
  loc_ECC3ED: var_8C = Me.TxtSearch1.Tag
  loc_ECC408: Set var_90 = Me.GridSel
  loc_ECC40E: Call 0.Method_TxtSearch1_Click0 (CInt(Val(var_8C)), var_94)
  loc_ECC436: Me.TxtSearch1.Visible = False
  loc_ECC43E: Exit Sub
  loc_ECC43F: ' Referenced from: ECC3C8
  loc_ECC445: Call 0.Method_arg_50 (var_8C, GridSel.DispID_8001)
  loc_ECC45A: Proc_183_57_104B0BC(var_8C, "TxtSearch1_Click")
  loc_ECC466: Exit Sub
End Sub

Public Sub Fgrid1_UnknownEvent_A(Index As Integer) 'E5E748
  'Data Table: 5167AC
  Dim var_88 As TextBox
  loc_E5E70A: If (CLng(Index) = &H1B) Then
  loc_E5E71A:   Me.TxtSearch.Text = vbNullString
  loc_E5E722: End If
  loc_E5E72C: If (CLng(Index) = &HD) Then
  loc_E5E733:   Set var_88 = Me.FGrid1
  loc_E5E744: End If
  loc_E5E744: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B '1AD0F74
  'Data Table: 5167AC
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_13C As Variant
  Dim Me As Recordset15
  Dim var_170 As Long
  Dim var_174 As Long
  Dim var_198 As Variant
  Dim var_1EC As Variant
  Dim var_154 As String
  Dim var_1A8 As Variant
  Dim var_1C8 As Variant
  Dim var_240 As Long
  Dim var_8C As Double
  Dim var_94 As Double
  Dim var_314 As Variant
  loc_1ACCEA4: On Error Goto loc_1AD0F4B
  loc_1ACCED2: var_E8 = Ucase(Trim(CVar(CStr(Me.FGrid1.Tag)))) 'Variant
  loc_1ACCEED: If Not (var_E8 = "PROFLOSS") Then
  loc_1ACCEF3:   var_108 = "BALSHEET"
  loc_1ACCEFB:   If Not (var_E8 = var_108) Then
  loc_1ACCF09:     If Not (var_E8 = "CASHFLOW") Then
  loc_1ACCF17:       If (var_E8 = "FUNDFLOW") Then
  loc_1ACCF1A:       End If
  loc_1ACCF1A:     End If
  loc_1ACCF1A:   End If
  loc_1ACCF32:   var_118 = 0
  loc_1ACCF78:   If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "*****") Then
  loc_1ACCF89:     Me.AddNew CVar(CLng(Me.FGrid1.Row)), var_108
  loc_1ACCF8E:     var_108 = "PROFLOSS"
  loc_1ACCFA0:     Me.Collect = "TypeName"
  loc_1ACCFA9:     var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1ACCFBA:     Me.Collect = "FS_DATE"
  loc_1ACCFC6:     var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1ACCFD7:     Me.Collect = "FE_DATE"
  loc_1ACCFF4:     var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1ACD004:     Me.Collect = "Check1"
  loc_1ACD021:     var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1ACD031:     Me.Collect = "Check2"
  loc_1ACD04E:     var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1ACD05E:     Me.Collect = "Check3"
  loc_1ACD07B:     var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1ACD08B:     Me.Collect = "Check4"
  loc_1ACD0A8:     var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1ACD0B8:     Me.Collect = "Check5"
  loc_1ACD0D5:     var_108 = CVar(Me.Check6.Value) 'Integer
  loc_1ACD0D9:     var_F8 = "Check6"
  loc_1ACD0E5:     Me.Collect = var_F8
  loc_1ACD0FB:     Me.Update var_F8, var_108
  loc_1ACD10D:     Me.Text1.Text = vbNullString
  loc_1ACD11F:     Call Proc_189_66_F0E770(0, 0, var_108, var_108, var_108, var_108, var_108)
  loc_1ACD127:   Else
  loc_1ACD13F:     var_118 = 0
  loc_1ACD185:     If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "Diff") Then
  loc_1ACD196:       Me.AddNew CVar(CLng(Me.FGrid1.Row)), var_108
  loc_1ACD19B:       var_108 = "OPDIFF"
  loc_1ACD1AD:       Me.Collect = "TypeName"
  loc_1ACD1B6:       var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1ACD1C7:       Me.Collect = "FS_DATE"
  loc_1ACD1D3:       var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1ACD1E4:       Me.Collect = "FE_DATE"
  loc_1ACD201:       var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1ACD211:       Me.Collect = "Check1"
  loc_1ACD22E:       var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1ACD23E:       Me.Collect = "Check2"
  loc_1ACD25B:       var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1ACD26B:       Me.Collect = "Check3"
  loc_1ACD288:       var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1ACD298:       Me.Collect = "Check4"
  loc_1ACD2B5:       var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1ACD2C5:       Me.Collect = "Check5"
  loc_1ACD2E2:       var_108 = CVar(Me.Check6.Value) 'Integer
  loc_1ACD2E6:       var_F8 = "Check6"
  loc_1ACD2F2:       Me.Collect = var_F8
  loc_1ACD308:       Me.Update var_F8, var_108
  loc_1ACD31A:       Me.Text1.Text = vbNullString
  loc_1ACD347:       Call Proc_189_73_F0ED4C(0, 0, CDate(Me.TXTS_DATE.Text), var_108, var_108, var_108, var_108, var_108)
  loc_1ACD355:     Else
  loc_1ACD380:       var_16C = Ucase(Trim(CVar(CStr(Me.FGrid1.Tag)))) 'Variant
  loc_1ACD39B:       If Not (var_16C = "CASHFLOW") Then
  loc_1ACD3A1:         var_108 = "FUNDFLOW"
  loc_1ACD3A9:         If (var_16C = var_108) Then
  loc_1ACD3AC:         End If
  loc_1ACD3BF:         var_170 = CLng(Me.FGrid1.Col)
  loc_1ACD3D1:         If Not (var_170 = 1) Then
  loc_1ACD3DD:           If (var_170 = 3) Then
  loc_1ACD3E0:           End If
  loc_1ACD3F3:           var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACD3F8:           var_118 = 0
  loc_1ACD43E:           If CBool(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) Then
  loc_1ACD48A:             Call Proc_189_62_1041F58(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 0, CVar(CLng(Me.FGrid1.Row)), 0, CVar(CLng(Me.FGrid1.Row)), var_170, var_108)
  loc_1ACD4A4:           End If
  loc_1ACD4A7:         Else
  loc_1ACD4B0:           If Not (var_170 = 6) Then
  loc_1ACD4BC:             If (var_170 = 8) Then
  loc_1ACD4BF:             End If
  loc_1ACD4D2:             var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACD4D7:             var_118 = 5
  loc_1ACD51D:             If CBool(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) Then
  loc_1ACD52A:               var_A8 = Me.FGrid1.Row
  loc_1ACD569:               Call Proc_189_62_1041F58(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 5, CVar(CLng(var_A8)), 5, CVar(CLng(var_A8)), var_A8)
  loc_1ACD583:             End If
  loc_1ACD583:           End If
  loc_1ACD583:         End If
  loc_1ACD586:       Else
  loc_1ACD599:         var_174 = CLng(Me.FGrid1.Col)
  loc_1ACD5AB:         If Not (var_174 = 1) Then
  loc_1ACD5B7:           If Not (var_174 = 2) Then
  loc_1ACD5C3:             If Not (var_174 = 3) Then
  loc_1ACD5CF:               If (var_174 = 4) Then
  loc_1ACD5D2:               End If
  loc_1ACD5D2:             End If
  loc_1ACD5D2:           End If
  loc_1ACD5E5:           var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACD5EA:           var_118 = 0
  loc_1ACD630:           If CBool(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) Then
  loc_1ACD67C:             Call Proc_189_62_1041F58(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 0, CVar(CLng(Me.FGrid1.Row)), 0, CVar(CLng(Me.FGrid1.Row)), var_174)
  loc_1ACD696:           End If
  loc_1ACD699:         Else
  loc_1ACD6A2:           If Not (var_174 = 7) Then
  loc_1ACD6AE:             If Not (var_174 = 8) Then
  loc_1ACD6BA:               If Not (var_174 = 9) Then
  loc_1ACD6C6:                 If (var_174 = &HA) Then
  loc_1ACD6C9:                 End If
  loc_1ACD6C9:               End If
  loc_1ACD6C9:             End If
  loc_1ACD6DC:             var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACD6E1:             var_118 = 6
  loc_1ACD727:             If CBool(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) Then
  loc_1ACD734:               var_A8 = Me.FGrid1.Row
  loc_1ACD773:               Call Proc_189_62_1041F58(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6, CVar(CLng(var_A8)), 6, CVar(CLng(var_A8)), var_A8)
  loc_1ACD78D:             End If
  loc_1ACD78D:           End If
  loc_1ACD78D:         End If
  loc_1ACD78D:       End If
  loc_1ACD78D:     End If
  loc_1ACD78D:   End If
  loc_1ACD790: Else
  loc_1ACD79B:   If (var_E8 = "OPDIFF") Then
  loc_1ACD7B1:     var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACD7B6:     var_118 = 6
  loc_1ACD7DA:     var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACD7E2:     var_13C = "Opening Balance"
  loc_1ACD7FF:     var_198 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACD85E:     If CBool(1 Or (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = vbNullString)) Then
  loc_1ACD861:       Exit Sub
  loc_1ACD862:     End If
  loc_1ACD870:     Me.AddNew var_F8, var_108
  loc_1ACD875:     var_108 = "OPDIFF"
  loc_1ACD887:     Me.Collect = "TypeName"
  loc_1ACD89F:     var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACD8A4:     var_118 = &HB
  loc_1ACD8C8:     var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACD8DD:     Me.Collect = "GroupCode"
  loc_1ACD907:     var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACD90C:     var_118 = &HC
  loc_1ACD930:     var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACD945:     Me.Collect = "LedCode"
  loc_1ACD96F:     var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACD974:     var_118 = 2
  loc_1ACD998:     var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACD9AD:     Me.Collect = "Name"
  loc_1ACD9E1:     var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1ACD9F2:     Me.Collect = "FRow"
  loc_1ACDA1D:     var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1ACDA2E:     Me.Collect = "Fcol"
  loc_1ACDA40:     var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1ACDA51:     Me.Collect = "FS_DATE"
  loc_1ACDA5D:     var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1ACDA6E:     Me.Collect = "FE_DATE"
  loc_1ACDA8B:     var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1ACDA9B:     Me.Collect = "Check1"
  loc_1ACDAB8:     var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1ACDAC8:     Me.Collect = "Check2"
  loc_1ACDAE5:     var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1ACDAF5:     Me.Collect = "Check3"
  loc_1ACDB12:     var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1ACDB22:     Me.Collect = "Check4"
  loc_1ACDB3F:     var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1ACDB4F:     Me.Collect = "Check5"
  loc_1ACDB70:     var_F8 = "Check6"
  loc_1ACDB7C:     Me.Collect = var_F8
  loc_1ACDB92:     Me.Update var_F8, CVar(Me.Check6.Value)
  loc_1ACDBA4:     Me.Text1.Text = vbNullString
  loc_1ACDBBF:     var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACDBC4:     var_118 = 8
  loc_1ACDC00:     var_13C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACDC90:     Proc_7_7_F30134(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), CLng(Val(CStr(Me.FGrid1.TextMatrix)))), CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), Me.FGrid1, &HA, CVar(CLng(Me.FGrid1.Row)), Val(CStr(Me.FGrid1.TextMatrix))), 9)
  loc_1ACDCC9:   Else
  loc_1ACDCD4:     If Not (var_E8 = "LEDGER") Then
  loc_1ACDCDA:       var_108 = "CASHBOOK"
  loc_1ACDCE2:       If (var_E8 = var_108) Then
  loc_1ACDCE5:       End If
  loc_1ACDCF8:       var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACDCFD:       var_118 = 6
  loc_1ACDD21:       var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACDD29:       var_13C = "Opening Balance"
  loc_1ACDD46:       var_198 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACDDA5:       If CBool(1 Or (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = vbNullString)) Then
  loc_1ACDDA8:         Exit Sub
  loc_1ACDDA9:       End If
  loc_1ACDDB7:       Me.AddNew var_F8, var_108
  loc_1ACDDBC:       var_108 = "VOUCHER"
  loc_1ACDDCE:       Me.Collect = "TypeName"
  loc_1ACDDE6:       var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACDDEB:       var_118 = 0
  loc_1ACDE0F:       var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACDE24:       Me.Collect = "GroupCode"
  loc_1ACDE4E:       var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACDE53:       var_118 = 1
  loc_1ACDE77:       var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACDE8C:       Me.Collect = "LedCode"
  loc_1ACDEB6:       var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACDEBB:       var_118 = 2
  loc_1ACDEDF:       var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACDEF4:       Me.Collect = "Name"
  loc_1ACDF28:       var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1ACDF39:       Me.Collect = "FRow"
  loc_1ACDF64:       var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1ACDF75:       Me.Collect = "Fcol"
  loc_1ACDF87:       var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1ACDF98:       Me.Collect = "FS_DATE"
  loc_1ACDFA4:       var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1ACDFB5:       Me.Collect = "FE_DATE"
  loc_1ACDFD2:       var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1ACDFE2:       Me.Collect = "Check1"
  loc_1ACDFFF:       var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1ACE00F:       Me.Collect = "Check2"
  loc_1ACE02C:       var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1ACE03C:       Me.Collect = "Check3"
  loc_1ACE059:       var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1ACE069:       Me.Collect = "Check4"
  loc_1ACE086:       var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1ACE096:       Me.Collect = "Check5"
  loc_1ACE0B3:       var_108 = CVar(Me.Check6.Value) 'Integer
  loc_1ACE0B7:       var_F8 = "Check6"
  loc_1ACE0C3:       Me.Collect = var_F8
  loc_1ACE0D9:       Me.Update var_F8, var_108
  loc_1ACE0EB:       Me.Text1.Text = vbNullString
  loc_1ACE106:       var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACE10B:       var_118 = 3
  loc_1ACE147:       var_13C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACE1D7:       Proc_7_1_1365788(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), CLng(Val(CStr(Me.FGrid1.TextMatrix)))), CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), Me.FGrid1, 5, CVar(CLng(Me.FGrid1.Row)), Val(CStr(Me.FGrid1.TextMatrix))), 4)
  loc_1ACE210:     Else
  loc_1ACE21B:       If (var_E8 = "VRREG") Then
  loc_1ACE231:         var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACE236:         var_118 = 6
  loc_1ACE25A:         var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACE262:         var_13C = "Opening Balance"
  loc_1ACE27F:         var_198 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACE2DE:         If CBool(1 Or (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = vbNullString)) Then
  loc_1ACE2E1:           Exit Sub
  loc_1ACE2E2:         End If
  loc_1ACE2F0:         Me.AddNew var_F8, var_108
  loc_1ACE2F5:         var_108 = "VOUCHERREG"
  loc_1ACE307:         Me.Collect = "TypeName"
  loc_1ACE329:         var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1ACE33A:         Me.Collect = "FRow"
  loc_1ACE365:         var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1ACE376:         Me.Collect = "Fcol"
  loc_1ACE388:         var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1ACE399:         Me.Collect = "FS_DATE"
  loc_1ACE3A5:         var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1ACE3B6:         Me.Collect = "FE_DATE"
  loc_1ACE3D3:         var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1ACE3E3:         Me.Collect = "Check1"
  loc_1ACE400:         var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1ACE410:         Me.Collect = "Check2"
  loc_1ACE42D:         var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1ACE43D:         Me.Collect = "Check3"
  loc_1ACE45A:         var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1ACE46A:         Me.Collect = "Check4"
  loc_1ACE487:         var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1ACE497:         Me.Collect = "Check5"
  loc_1ACE4B4:         var_108 = CVar(Me.Check6.Value) 'Integer
  loc_1ACE4B8:         var_F8 = "Check6"
  loc_1ACE4C4:         Me.Collect = var_F8
  loc_1ACE4DA:         Me.Update var_F8, var_108
  loc_1ACE4EC:         Me.Text1.Text = vbNullString
  loc_1ACE507:         var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACE50C:         var_118 = 1
  loc_1ACE548:         var_13C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACE5D8:         Proc_7_0_F794E8(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), CLng(Val(CStr(Me.FGrid1.TextMatrix)))), CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), Me.FGrid1, 9, CVar(CLng(Me.FGrid1.Row)), Val(CStr(Me.FGrid1.TextMatrix))), 2)
  loc_1ACE611:       Else
  loc_1ACE61C:         If (var_E8 = "MONTHSUM") Then
  loc_1ACE632:           var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACE637:           var_118 = 2
  loc_1ACE65B:           var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACE663:           var_13C = "Opening Balance"
  loc_1ACE680:           var_198 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACE6DF:           If CBool(2 Or (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = vbNullString)) Then
  loc_1ACE6E2:             Exit Sub
  loc_1ACE6E3:           End If
  loc_1ACE6F6:           var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACE6FB:           var_118 = 8
  loc_1ACE71E:           var_8C = CDate(CStr(Me.FGrid1.TextMatrix)))
  loc_1ACE74A:           var_118 = 9
  loc_1ACE76D:           var_94 = CDate(CStr(Me.FGrid1.TextMatrix)))
  loc_1ACE793:           Me.TXTS_DATE.Text = CStr(var_8C)
  loc_1ACE7B0:           Me.TXTE_DATE.Text = CStr(var_94)
  loc_1ACE7C9:           Me.AddNew CVar(CLng(Me.FGrid1.Row)), var_108
  loc_1ACE7CE:           var_108 = "LEDGER"
  loc_1ACE7E0:           Me.Collect = "TypeName"
  loc_1ACE7F8:           var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACE7FD:           var_118 = 0
  loc_1ACE821:           var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACE836:           Me.Collect = "LedCode"
  loc_1ACE860:           var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACE865:           var_118 = 6
  loc_1ACE889:           var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACE89E:           Me.Collect = "Name"
  loc_1ACE8D2:           var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1ACE8E3:           Me.Collect = "FRow"
  loc_1ACE90E:           var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1ACE91F:           Me.Collect = "Fcol"
  loc_1ACE930:           var_108 = CDate(var_8C)
  loc_1ACE941:           Me.Collect = "FS_DATE"
  loc_1ACE949:           var_108 = CDate(var_94)
  loc_1ACE95A:           Me.Collect = "FE_DATE"
  loc_1ACE974:           var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1ACE984:           Me.Collect = "Check1"
  loc_1ACE9A1:           var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1ACE9B1:           Me.Collect = "Check2"
  loc_1ACE9CE:           var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1ACE9DE:           Me.Collect = "Check3"
  loc_1ACE9FB:           var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1ACEA0B:           Me.Collect = "Check4"
  loc_1ACEA28:           var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1ACEA38:           Me.Collect = "Check5"
  loc_1ACEA55:           var_108 = CVar(Me.Check6.Value) 'Integer
  loc_1ACEA59:           var_F8 = "Check6"
  loc_1ACEA65:           Me.Collect = var_F8
  loc_1ACEA7B:           Me.Update var_F8, var_108
  loc_1ACEA93:           var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACEA98:           var_118 = 6
  loc_1ACEAD2:           Me.Text1.Text = CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1ACEB4F:           Call Proc_189_74_F19248(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 0, 0, var_8C, var_94, 0, CVar(CLng(Me.FGrid1.Row)), 0)
  loc_1ACEB6C:         Else
  loc_1ACEB77:           If (var_E8 = "VRANAL") Then
  loc_1ACEB92:             var_118 = 1
  loc_1ACEC1D:             If CBool((Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) And (Me.Fields.Item("MonthTotal").Value = "Yes")) Then
  loc_1ACEC2E:               Me.AddNew CVar(CLng(Me.FGrid1.Row)), var_108
  loc_1ACEC33:               var_108 = "VRANALPER"
  loc_1ACEC45:               Me.Collect = "TypeName"
  loc_1ACEC5D:               var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACEC62:               var_118 = 1
  loc_1ACEC86:               var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACEC9B:               Me.Collect = "LedCode"
  loc_1ACECC5:               var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACECCA:               var_118 = 0
  loc_1ACECEE:               var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACED03:               Me.Collect = "Name"
  loc_1ACED37:               var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1ACED48:               Me.Collect = "FRow"
  loc_1ACED73:               var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1ACED84:               Me.Collect = "Fcol"
  loc_1ACED96:               var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1ACEDA7:               Me.Collect = "FS_DATE"
  loc_1ACEDB3:               var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1ACEDC4:               Me.Collect = "FE_DATE"
  loc_1ACEDE1:               var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1ACEDF1:               Me.Collect = "Check1"
  loc_1ACEE0E:               var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1ACEE1E:               Me.Collect = "Check2"
  loc_1ACEE3B:               var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1ACEE4B:               Me.Collect = "Check3"
  loc_1ACEE68:               var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1ACEE78:               Me.Collect = "Check4"
  loc_1ACEE95:               var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1ACEEA5:               Me.Collect = "Check5"
  loc_1ACEEC2:               var_108 = CVar(Me.Check6.Value) 'Integer
  loc_1ACEEC6:               var_F8 = "Check6"
  loc_1ACEED2:               Me.Collect = var_F8
  loc_1ACEEE8:               Me.Update var_F8, var_108
  loc_1ACEF00:               var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACEF05:               var_118 = 0
  loc_1ACEF3F:               Me.Text1.Text = CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1ACEFF7:               Call Proc_189_78_F08564(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 0, 0, 0, CVar(CLng(Me.FGrid1.Row)), 1, CVar(CLng(Me.FGrid1.Row)))
  loc_1ACF024:             Else
  loc_1ACF03C:               var_118 = 1
  loc_1ACF082:               If CBool(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) Then
  loc_1ACF093:                 Me.AddNew CVar(CLng(Me.FGrid1.Row)), var_108
  loc_1ACF098:                 var_108 = "VRREG"
  loc_1ACF0AA:                 Me.Collect = "TypeName"
  loc_1ACF0C2:                 var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACF0C7:                 var_118 = 1
  loc_1ACF0EB:                 var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACF100:                 Me.Collect = "LedCode"
  loc_1ACF12A:                 var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACF12F:                 var_118 = 0
  loc_1ACF153:                 var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACF168:                 Me.Collect = "Name"
  loc_1ACF19C:                 var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1ACF1AD:                 Me.Collect = "FRow"
  loc_1ACF1D8:                 var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1ACF1E9:                 Me.Collect = "Fcol"
  loc_1ACF1FB:                 var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1ACF20C:                 Me.Collect = "FS_DATE"
  loc_1ACF218:                 var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1ACF229:                 Me.Collect = "FE_DATE"
  loc_1ACF246:                 var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1ACF256:                 Me.Collect = "Check1"
  loc_1ACF273:                 var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1ACF283:                 Me.Collect = "Check2"
  loc_1ACF2A0:                 var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1ACF2B0:                 Me.Collect = "Check3"
  loc_1ACF2CD:                 var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1ACF2DD:                 Me.Collect = "Check4"
  loc_1ACF2FA:                 var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1ACF30A:                 Me.Collect = "Check5"
  loc_1ACF327:                 var_108 = CVar(Me.Check6.Value) 'Integer
  loc_1ACF32B:                 var_F8 = "Check6"
  loc_1ACF337:                 Me.Collect = var_F8
  loc_1ACF34D:                 Me.Update var_F8, var_108
  loc_1ACF365:                 var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACF36A:                 var_118 = 0
  loc_1ACF3A4:                 Me.Text1.Text = CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1ACF3D3:                 var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACF3D8:                 var_118 = 1
  loc_1ACF492:                 Call Proc_189_79_F0DF3C(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 0, 0, CDate(Me.TXTS_DATE.Text), CDate(Me.TXTE_DATE.Text), 0, CVar(CLng(Me.FGrid1.Row)))
  loc_1ACF4C4:               End If
  loc_1ACF4C4:             End If
  loc_1ACF4C7:           Else
  loc_1ACF4CA:             var_F8 = "VRANALPER"
  loc_1ACF4D2:             If (var_E8 = var_F8) Then
  loc_1ACF4E3:               Me.AddNew var_F8, var_108
  loc_1ACF4E8:               var_108 = "VRREG"
  loc_1ACF4FA:               Me.Collect = "TypeName"
  loc_1ACF512:               var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACF517:               var_118 = 4
  loc_1ACF53B:               var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACF550:               Me.Collect = "LedCode"
  loc_1ACF57A:               var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACF57F:               var_118 = 0
  loc_1ACF5A3:               var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACF5B8:               Me.Collect = "Name"
  loc_1ACF5EC:               var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1ACF5FD:               Me.Collect = "FRow"
  loc_1ACF628:               var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1ACF639:               Me.Collect = "Fcol"
  loc_1ACF64B:               var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1ACF65C:               Me.Collect = "FS_DATE"
  loc_1ACF668:               var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1ACF679:               Me.Collect = "FE_DATE"
  loc_1ACF696:               var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1ACF6A6:               Me.Collect = "Check1"
  loc_1ACF6C3:               var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1ACF6D3:               Me.Collect = "Check2"
  loc_1ACF6F0:               var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1ACF700:               Me.Collect = "Check3"
  loc_1ACF71D:               var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1ACF72D:               Me.Collect = "Check4"
  loc_1ACF74A:               var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1ACF75A:               Me.Collect = "Check5"
  loc_1ACF777:               var_108 = CVar(Me.Check6.Value) 'Integer
  loc_1ACF77B:               var_F8 = "Check6"
  loc_1ACF787:               Me.Collect = var_F8
  loc_1ACF79D:               Me.Update var_F8, var_108
  loc_1ACF7B5:               var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACF7BA:               var_118 = 2
  loc_1ACF7F4:               Me.TXTS_DATE.Text = CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1ACF823:               var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACF828:               var_118 = 3
  loc_1ACF862:               Me.TXTE_DATE.Text = CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1ACF891:               var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACF896:               var_118 = 0
  loc_1ACF8D0:               Me.Text1.Text = CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1ACF8FF:               var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACF904:               var_118 = 4
  loc_1ACF940:               var_13C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACF945:               var_1A8 = 0
  loc_1ACF981:               var_1C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACF986:               var_240 = 2
  loc_1ACFA1C:               Call Proc_189_79_F0DF3C(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 0, 0, CDate(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), CDate(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 3, CVar(CLng(Me.FGrid1.Row)))
  loc_1ACFA65:             Else
  loc_1ACFA68:               var_F8 = "CASHBANKSUM"
  loc_1ACFA70:               If (var_E8 = var_F8) Then
  loc_1ACFA81:                 Me.AddNew var_F8, var_108
  loc_1ACFA86:                 var_108 = "CASHBOOK"
  loc_1ACFA98:                 Me.Collect = "TypeName"
  loc_1ACFAB0:                 var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACFAB5:                 var_118 = 0
  loc_1ACFAD9:                 var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACFAEE:                 Me.Collect = "LedCode"
  loc_1ACFB18:                 var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACFB1D:                 var_118 = 1
  loc_1ACFB41:                 var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACFB56:                 Me.Collect = "Name"
  loc_1ACFB8A:                 var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1ACFB9B:                 Me.Collect = "FRow"
  loc_1ACFBC6:                 var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1ACFBD7:                 Me.Collect = "Fcol"
  loc_1ACFBE9:                 var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1ACFBFA:                 Me.Collect = "FS_DATE"
  loc_1ACFC06:                 var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1ACFC17:                 Me.Collect = "FE_DATE"
  loc_1ACFC34:                 var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1ACFC44:                 Me.Collect = "Check1"
  loc_1ACFC61:                 var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1ACFC71:                 Me.Collect = "Check2"
  loc_1ACFC8E:                 var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1ACFC9E:                 Me.Collect = "Check3"
  loc_1ACFCBB:                 var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1ACFCCB:                 Me.Collect = "Check4"
  loc_1ACFCE8:                 var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1ACFCF8:                 Me.Collect = "Check5"
  loc_1ACFD15:                 var_108 = CVar(Me.Check6.Value) 'Integer
  loc_1ACFD19:                 var_F8 = "Check6"
  loc_1ACFD25:                 Me.Collect = var_F8
  loc_1ACFD3B:                 Me.Update var_F8, var_108
  loc_1ACFD53:                 var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACFD58:                 var_118 = 1
  loc_1ACFD92:                 Me.Text1.Text = CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1ACFE37:                 Call Proc_189_75_F0868C(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 0, 0, CDate(Me.TXTS_DATE.Text), CDate(Me.TXTE_DATE.Text), 0, CVar(CLng(Me.FGrid1.Row)), 0)
  loc_1ACFE5E:               Else
  loc_1ACFE69:                 If (var_E8 = "GROUPTRIAL") Then
  loc_1ACFE84:                   var_118 = 2
  loc_1ACFECA:                   If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "# Difference in Opening Balance") Then
  loc_1ACFEDB:                     Me.AddNew CVar(CLng(Me.FGrid1.Row)), var_108
  loc_1ACFEE0:                     var_108 = "OPDIFF"
  loc_1ACFEF2:                     Me.Collect = "TypeName"
  loc_1ACFEFB:                     var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1ACFF0C:                     Me.Collect = "FS_DATE"
  loc_1ACFF18:                     var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1ACFF29:                     Me.Collect = "FE_DATE"
  loc_1ACFF4E:                     var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1ACFF5F:                     Me.Collect = "FRow"
  loc_1ACFF8A:                     var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1ACFF9B:                     Me.Collect = "Fcol"
  loc_1ACFFBE:                     var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1ACFFCE:                     Me.Collect = "Check1"
  loc_1ACFFEB:                     var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1ACFFFB:                     Me.Collect = "Check2"
  loc_1AD0018:                     var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1AD0028:                     Me.Collect = "Check3"
  loc_1AD0045:                     var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1AD0055:                     Me.Collect = "Check4"
  loc_1AD0072:                     var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1AD0082:                     Me.Collect = "Check5"
  loc_1AD009F:                     var_108 = CVar(Me.Check6.Value) 'Integer
  loc_1AD00A3:                     var_F8 = "Check6"
  loc_1AD00AF:                     Me.Collect = var_F8
  loc_1AD00C5:                     Me.Update var_F8, var_108
  loc_1AD00D7:                     Me.Text1.Text = vbNullString
  loc_1AD0104:                     Call Proc_189_73_F0ED4C(0, 0, CDate(Me.TXTS_DATE.Text), var_108, var_108, var_108, var_108, var_108)
  loc_1AD0112:                   Else
  loc_1AD015B:                     Call Proc_189_62_1041F58(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 0, CVar(CLng(Me.FGrid1.Row)), var_108, var_108, var_108)
  loc_1AD0175:                   End If
  loc_1AD0178:                 Else
  loc_1AD0183:                   If Not (var_E8 = "LEDTRIAL") Then
  loc_1AD0189:                     var_108 = "SUBTRIAL"
  loc_1AD0191:                     If (var_E8 = var_108) Then
  loc_1AD0194:                     End If
  loc_1AD01AC:                     var_118 = 2
  loc_1AD01F2:                     If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "# Difference in Opening Balance") Then
  loc_1AD0203:                       Me.AddNew CVar(CLng(Me.FGrid1.Row)), var_108
  loc_1AD0208:                       var_108 = "OPDIFF"
  loc_1AD021A:                       Me.Collect = "TypeName"
  loc_1AD0223:                       var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1AD0234:                       Me.Collect = "FS_DATE"
  loc_1AD0240:                       var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1AD0251:                       Me.Collect = "FE_DATE"
  loc_1AD0276:                       var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1AD0287:                       Me.Collect = "FRow"
  loc_1AD02B2:                       var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1AD02C3:                       Me.Collect = "Fcol"
  loc_1AD02E6:                       var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1AD02F6:                       Me.Collect = "Check1"
  loc_1AD0313:                       var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1AD0323:                       Me.Collect = "Check2"
  loc_1AD0340:                       var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1AD0350:                       Me.Collect = "Check3"
  loc_1AD036D:                       var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1AD037D:                       Me.Collect = "Check4"
  loc_1AD039A:                       var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1AD03AA:                       Me.Collect = "Check5"
  loc_1AD03C7:                       var_108 = CVar(Me.Check6.Value) 'Integer
  loc_1AD03CB:                       var_F8 = "Check6"
  loc_1AD03D7:                       Me.Collect = var_F8
  loc_1AD03ED:                       Me.Update var_F8, var_108
  loc_1AD03FF:                       Me.Text1.Text = vbNullString
  loc_1AD042C:                       Call Proc_189_73_F0ED4C(0, 0, CDate(Me.TXTS_DATE.Text), var_108, var_108, var_108, var_108, var_108)
  loc_1AD043A:                     Else
  loc_1AD044D:                       var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1AD0452:                       var_118 = 0
  loc_1AD0476:                       var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1AD04FA:                       If CBool(1 And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = vbNullString)) Then
  loc_1AD0546:                         Call Proc_189_62_1041F58(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 0, CVar(CLng(Me.FGrid1.Row)), CVar(CLng(Me.FGrid1.Row)), (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString), 0, CVar(CLng(Me.FGrid1.Row)), var_108)
  loc_1AD0563:                       Else
  loc_1AD057B:                         var_118 = 1
  loc_1AD05E8:                         var_1EC = (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) And (Me.Fields.Item("MonthTotal").Value = "Yes")
  loc_1AD0606:                         If CBool(var_1EC) Then
  loc_1AD0617:                           Me.AddNew CVar(CLng(Me.FGrid1.Row)), var_108
  loc_1AD061C:                           var_108 = "MONTHSUM"
  loc_1AD062E:                           Me.Collect = "TypeName"
  loc_1AD0646:                           var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1AD064B:                           var_118 = 0
  loc_1AD066F:                           var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1AD0684:                           Me.Collect = "GroupCode"
  loc_1AD06AE:                           var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1AD06B3:                           var_118 = 1
  loc_1AD06D7:                           var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1AD06EC:                           Me.Collect = "LedCode"
  loc_1AD0716:                           var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1AD071B:                           var_118 = 2
  loc_1AD073F:                           var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1AD0754:                           Me.Collect = "Name"
  loc_1AD0788:                           var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1AD0799:                           Me.Collect = "FRow"
  loc_1AD07C4:                           var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1AD07D5:                           Me.Collect = "Fcol"
  loc_1AD07E7:                           var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1AD07F8:                           Me.Collect = "FS_DATE"
  loc_1AD0804:                           var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1AD0815:                           Me.Collect = "FE_DATE"
  loc_1AD0832:                           var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1AD0842:                           Me.Collect = "Check1"
  loc_1AD085F:                           var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1AD086F:                           Me.Collect = "Check2"
  loc_1AD088C:                           var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1AD089C:                           Me.Collect = "Check3"
  loc_1AD08B9:                           var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1AD08C9:                           Me.Collect = "Check4"
  loc_1AD08E6:                           var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1AD08F6:                           Me.Collect = "Check5"
  loc_1AD0913:                           var_108 = CVar(Me.Check6.Value) 'Integer
  loc_1AD0917:                           var_F8 = "Check6"
  loc_1AD0923:                           Me.Collect = var_F8
  loc_1AD0939:                           Me.Update var_F8, var_108
  loc_1AD0951:                           var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1AD0956:                           var_118 = 2
  loc_1AD0990:                           Me.Text1.Text = CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1AD09FF:                           Call Proc_189_76_F067B8(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 0, 0, 1, CVar(CLng(Me.FGrid1.Row)), 1, CVar(CLng(Me.FGrid1.Row)), var_108)
  loc_1AD0A1C:                         Else
  loc_1AD0A34:                           var_118 = 1
  loc_1AD0A7A:                           If CBool(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) Then
  loc_1AD0A8B:                             Me.AddNew CVar(CLng(Me.FGrid1.Row)), var_108
  loc_1AD0A90:                             var_108 = "LEDGER"
  loc_1AD0AA2:                             Me.Collect = "TypeName"
  loc_1AD0ABA:                             var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1AD0ABF:                             var_118 = 1
  loc_1AD0AE3:                             var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1AD0AF8:                             Me.Collect = "LedCode"
  loc_1AD0B22:                             var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1AD0B27:                             var_118 = 2
  loc_1AD0B4B:                             var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1AD0B60:                             Me.Collect = "Name"
  loc_1AD0B94:                             var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1AD0BA5:                             Me.Collect = "FRow"
  loc_1AD0BD0:                             var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1AD0BE1:                             Me.Collect = "Fcol"
  loc_1AD0BF3:                             var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1AD0C04:                             Me.Collect = "FS_DATE"
  loc_1AD0C10:                             var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1AD0C21:                             Me.Collect = "FE_DATE"
  loc_1AD0C3E:                             var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1AD0C4E:                             Me.Collect = "Check1"
  loc_1AD0C6B:                             var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1AD0C7B:                             Me.Collect = "Check2"
  loc_1AD0C98:                             var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1AD0CA8:                             Me.Collect = "Check3"
  loc_1AD0CC5:                             var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1AD0CD5:                             Me.Collect = "Check4"
  loc_1AD0CF2:                             var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1AD0D02:                             Me.Collect = "Check5"
  loc_1AD0D23:                             var_F8 = "Check6"
  loc_1AD0D2F:                             Me.Collect = var_F8
  loc_1AD0D45:                             Me.Update var_F8, CVar(Me.Check6.Value)
  loc_1AD0D5D:                             var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1AD0D62:                             var_118 = 2
  loc_1AD0D9C:                             Me.Text1.Text = CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1AD0E06:                             var_154 = Me.TXTS_DATE.Text
  loc_1AD0E41:                             Call Proc_189_74_F19248(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 0, 0, CDate(var_154), CDate(Me.TXTE_DATE.Text), 1, CVar(CLng(Me.FGrid1.Row)), 1)
  loc_1AD0E65:                           End If
  loc_1AD0E65:                         End If
  loc_1AD0E65:                       End If
  loc_1AD0E65:                     End If
  loc_1AD0E65:                   End If
  loc_1AD0E65:                 End If
  loc_1AD0E65:               End If
  loc_1AD0E65:             End If
  loc_1AD0E65:           End If
  loc_1AD0E65:         End If
  loc_1AD0E65:       End If
  loc_1AD0E65:     End If
  loc_1AD0E65:   End If
  loc_1AD0E65: End If
  loc_1AD0E90: var_F8 = "VOUCHERREG"
  loc_1AD0EC5: var_108 = "VOUCHER"
  loc_1AD0F08: var_314 = (Ucase(Trim(CVar(CStr(Me.FGrid1.Tag)))) <> var_F8) And (Ucase(Trim(CVar(CStr(Me.FGrid1.Tag)))) <> var_108) And (Ucase(Trim(CVar(CStr(Me.FGrid1.Tag)))) <> "OPDIFF")
  loc_1AD0F32: If CBool(var_314) Then
  loc_1AD0F39:   Set var_98 = Me.FGrid1
  loc_1AD0F4A: End If
  loc_1AD0F4A: Exit Sub
  loc_1AD0F4B: ' Referenced from: 1ACCEA4
  loc_1AD0F51: Call 0.Method_arg_50 (var_154, FGrid1.DispID_8001, var_F8, var_108, var_108)
  loc_1AD0F66: Proc_183_57_104B0BC(var_154, "FGrid1_DblClick", var_108, var_108)
  loc_1AD0F72: Exit Sub
End Sub

Public Sub Fgrid1_UnknownEvent_C(Index As Integer) 'F1BD04
  'Data Table: 5167AC
  Dim var_88 As Recordset15
  Dim Index As Integer
  loc_F1BC47: Set var_88 = Me.FGrid1.DataSource
  loc_F1BC9B: var_B8 = var_88.Fields.Item(CVar(CLng(Me.FGrid1.Col))).Name
  loc_F1BCA3: var_CC = "8454143"
  loc_F1BCAC: var_C8 = "8454143"
  loc_F1BCD1: Proc_183_11_113DA88(Me.TxtSearch, Me.FGrid1, var_88, Index)
  loc_F1BCF5: Index = 0
  loc_F1BCFD: Set var_88 = Nothing
  loc_F1BD00: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_14 'E1DD30
  'Data Table: 5167AC
  loc_E1DD27: Me.FGrid1.CellBackColor = &H80FFFF
  loc_E1DD2F: Exit Sub
End Sub

Private Sub BTNRefresh_UnknownEvent_9 'E93944
  'Data Table: 5167AC
  loc_E93900: If ((Me.Frame1.Visible = &HFF) Or (Me.Frame3.Visible = &HFF)) Then
  loc_E93903:   Exit Sub
  loc_E93904: End If
  loc_E93910: Me.Frame1.Visible = True
  loc_E93928: Me.Frame1.ZOrder 0
  loc_E9393A: Me.TXTS_DATE.SetFocus
  loc_E93942: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'E6C638
  'Data Table: 5167AC
  Dim var_88 As TextBox
  loc_E6C5E7: If (Proc_183_12_E7AF74(KeyCode) = &HFF) Then
  loc_E6C5EE:   Set var_88 = Me.FGrid1
  loc_E6C60B:   Me.TxtSearch.Visible = False
  loc_E6C613: End If
  loc_E6C61D: If (CLng(KeyCode) = &H2E) Then
  loc_E6C62D:   Me.TxtSearch.Text = vbNullString
  loc_E6C635: End If
  loc_E6C635: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) 'E02620
  'Data Table: 5167AC
  loc_E02617: Call Fgrid1_UnknownEvent_C(KeyAscii)
  loc_E0261C: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E8B4FC
  'Data Table: 5167AC
  Dim var_88 As TextBox
  loc_E8B490: On Error Goto loc_E8B4D2
  loc_E8B4A0: Me.TxtSearch.Text = vbNullString
  loc_E8B4AC: Set var_88 = Me.FGrid1
  loc_E8B4C9: Me.TxtSearch.Visible = False
  loc_E8B4D1: Exit Sub
  loc_E8B4D2: ' Referenced from: E8B490
  loc_E8B4D8: Call 0.Method_arg_50 (var_8C)
  loc_E8B4ED: Proc_183_57_104B0BC(var_8C, "TxtSearch_LostFocus")
  loc_E8B4F9: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E5868C
  'Data Table: 5167AC
  Dim var_88 As TextBox
  loc_E58659: Me.TxtSearch.Text = vbNullString
  loc_E58665: Set var_88 = Me.FGrid1
  loc_E58682: Me.TxtSearch.Visible = False
  loc_E5868A: Exit Sub
End Sub

Public Function MagicStackGet() '517ED0
  MagicStackGet = MagicStack
End Function

Public Sub MagicStackPut(Value) '517EDF
  MagicStack = Value
End Sub

Public Sub MagicStackSet(Value) '517EEE
  MagicStack = Value
End Sub

Public Function X11Get() '517EFD
  X11Get = X11
End Function

Public Sub X11Put(Value) '517F0C
  X11 = Value
End Sub

Public Sub X11Set(Value) '517F1B
  X11 = Value
End Sub

Public Function RstEnviroGet() '517F2A
  RstEnviroGet = RstEnviro
End Function

Public Sub RstEnviroPut(Value) '517F39
  RstEnviro = Value
End Sub

Public Sub RstEnviroSet(Value) '517F48
  RstEnviro = Value
End Sub

Public Function mREFRESHGet() '517F57
  mREFRESHGet = mREFRESH
End Function

Public Sub mREFRESHPut(Value) '517F66
  mREFRESH = Value
End Sub

Public Property Let OpenType(TITL) '1250468
  'Data Table: 5167AC
  Dim var_A4 As Variant
  Dim var_D4 As String
  Dim Me As Recordset15
  Dim var_B4 As Variant
  loc_124FF16: On Error Goto loc_125043D
  loc_124FF36: Set var_8C = New
  loc_124FF45: Call 0.Method_arg_1A4 (var_8C)
  loc_124FF53: MagicStack = var_8C
  loc_124FF63: Set MagicStack = var_90
  loc_124FF83: var_C4 = Ucase(TITL) 'Variant
  loc_124FF8A: var_A4 = "BALSHEET"
  loc_124FF92: If (var_C4 = var_A4) Then
  loc_124FFA3:   Me.Recordset15.AddNew var_A4, var_D4
  loc_124FFA8:   var_D4 = "BALSHEET"
  loc_124FFBA:   Me.Collect = "TypeName"
  loc_124FFC3:   var_B4 = CVar(Me.TXTS_DATE) 'Address
  loc_124FFD4:   Me.Collect = "FS_DATE"
  loc_124FFE5:   var_A4 = "FE_DATE"
  loc_124FFF1:   Me.Collect = var_A4
  loc_1250007:   Me.Update var_A4, var_D4
  loc_1250016:   Call Proc_189_65_F0E3EC(0, 0, CVar(Me.TXTE_DATE))
  loc_125001E: Else
  loc_1250021:   var_A4 = "PROFLOSS"
  loc_1250029:   If (var_C4 = var_A4) Then
  loc_125003A:     Me.AddNew var_A4, var_D4
  loc_125003F:     var_D4 = "PROFLOSS"
  loc_1250051:     Me.Collect = "TypeName"
  loc_125005A:     var_B4 = CVar(Me.TXTS_DATE) 'Address
  loc_125006B:     Me.Collect = "FS_DATE"
  loc_125007C:     var_A4 = "FE_DATE"
  loc_1250088:     Me.Collect = var_A4
  loc_125009E:     Me.Update var_A4, var_D4
  loc_12500AD:     Call Proc_189_66_F0E770(0, 0, CVar(Me.TXTE_DATE), CVar(Me.TXTE_DATE))
  loc_12500B5:   Else
  loc_12500B8:     var_A4 = "GROUPTRIAL"
  loc_12500C0:     If (var_C4 = var_A4) Then
  loc_12500D1:       Me.AddNew var_A4, var_D4
  loc_12500D6:       var_D4 = "GROUPTRIAL"
  loc_12500E8:       Me.Collect = "TypeName"
  loc_12500F1:       var_B4 = CVar(Me.TXTS_DATE) 'Address
  loc_1250102:       Me.Collect = "FS_DATE"
  loc_1250113:       var_A4 = "FE_DATE"
  loc_125011F:       Me.Collect = var_A4
  loc_1250135:       Me.Update var_A4, var_D4
  loc_1250144:       Call Proc_189_67_F0DBB8(0, 0, CVar(Me.TXTE_DATE), CVar(Me.TXTE_DATE), var_D4)
  loc_125014C:     Else
  loc_125014F:       var_A4 = "LEDTRIAL"
  loc_1250157:       If (var_C4 = var_A4) Then
  loc_1250168:         Me.AddNew var_A4, var_D4
  loc_125016D:         var_D4 = "LEDTRIAL"
  loc_125017F:         Me.Collect = "TypeName"
  loc_1250188:         var_B4 = CVar(Me.TXTS_DATE) 'Address
  loc_1250199:         Me.Collect = "FS_DATE"
  loc_12501AA:         var_A4 = "FE_DATE"
  loc_12501B6:         Me.Collect = var_A4
  loc_12501CC:         Me.Update var_A4, var_D4
  loc_12501DB:         Call Proc_189_68_F0EC20(0, 0, CVar(Me.TXTE_DATE), CVar(Me.TXTE_DATE), var_D4)
  loc_12501E3:       Else
  loc_12501E6:         var_A4 = "CASHBANKSUM"
  loc_12501EE:         If (var_C4 = var_A4) Then
  loc_12501FF:           Me.AddNew var_A4, var_D4
  loc_1250204:           var_D4 = "CASHBANKSUM"
  loc_1250216:           Me.Collect = "TypeName"
  loc_125021F:           var_B4 = CVar(Me.TXTS_DATE) 'Address
  loc_1250230:           Me.Collect = "FS_DATE"
  loc_1250241:           var_A4 = "FE_DATE"
  loc_125024D:           Me.Collect = var_A4
  loc_1250263:           Me.Update var_A4, var_D4
  loc_1250272:           Call Proc_189_70_F0E518(0, 0, CVar(Me.TXTE_DATE), CVar(Me.TXTE_DATE), var_D4)
  loc_125027A:         Else
  loc_125027D:           var_A4 = "CASHFLOW"
  loc_1250285:           If (var_C4 = var_A4) Then
  loc_1250296:             Me.AddNew var_A4, var_D4
  loc_125029B:             var_D4 = "CASHFLOW"
  loc_12502AD:             Me.Collect = "TypeName"
  loc_12502B6:             var_B4 = CVar(Me.TXTS_DATE) 'Address
  loc_12502C7:             Me.Collect = "FS_DATE"
  loc_12502D8:             var_A4 = "FE_DATE"
  loc_12502E4:             Me.Collect = var_A4
  loc_12502FA:             Me.Update var_A4, var_D4
  loc_1250309:             Call Proc_189_71_F0DCE4(0, 0, CVar(Me.TXTE_DATE), CVar(Me.TXTE_DATE), var_D4)
  loc_1250311:           Else
  loc_1250314:             var_A4 = "FUNDFLOW"
  loc_125031C:             If (var_C4 = var_A4) Then
  loc_125032D:               Me.AddNew var_A4, var_D4
  loc_1250332:               var_D4 = "FUNDFLOW"
  loc_1250344:               Me.Collect = "TypeName"
  loc_125034D:               var_B4 = CVar(Me.TXTS_DATE) 'Address
  loc_125035E:               Me.Collect = "FS_DATE"
  loc_125036F:               var_A4 = "FE_DATE"
  loc_125037B:               Me.Collect = var_A4
  loc_1250391:               Me.Update var_A4, var_D4
  loc_12503A0:               Call Proc_189_72_F0E644(0, 0, CVar(Me.TXTE_DATE), CVar(Me.TXTE_DATE), var_D4)
  loc_12503A8:             Else
  loc_12503AB:               var_A4 = "VRANAL"
  loc_12503B3:               If (var_C4 = var_A4) Then
  loc_12503C4:                 Me.AddNew var_A4, var_D4
  loc_12503C9:                 var_D4 = "VRANAL"
  loc_12503DB:                 Me.Collect = "TypeName"
  loc_12503E4:                 var_B4 = CVar(Me.TXTS_DATE) 'Address
  loc_12503F5:                 Me.Collect = "FS_DATE"
  loc_1250401:                 var_B4 = CVar(Me.TXTE_DATE) 'Address
  loc_1250406:                 var_A4 = "FE_DATE"
  loc_1250412:                 Me.Collect = var_A4
  loc_1250428:                 Me.Update var_A4, var_D4
  loc_1250437:                 Call Proc_189_77_F0DA8C(0, 0, var_B4, var_B4, var_D4)
  loc_125043C:               End If
  loc_125043C:             End If
  loc_125043C:           End If
  loc_125043C:         End If
  loc_125043C:       End If
  loc_125043C:     End If
  loc_125043C:   End If
  loc_125043C: End If
  loc_125043C: Exit Sub
  loc_125043D: ' Referenced from: 124FF16
  loc_1250443: Call 0.Method_arg_50 (var_DC, var_D4, var_B4)
  loc_1250458: Proc_183_57_104B0BC(var_DC, "OpenType")
  loc_1250464: Exit Sub
End Sub

Public Property Let ShowSiteWise(YesNo) 'DFC890
  'Data Table: 5167AC
  loc_DFC88C: Exit Sub
End Sub

Public Sub Proc_189_60_E855F0(arg_C) 'E855F0
  'Data Table: 5167AC
  Dim var_A4 As Long
  loc_E85587: For var_8A = 0 To 7: var_86 = var_8A 'Integer
  loc_E8558D:   var_A4 = -2147483643
  loc_E855A0:   Set var_90 = Me.LblShort
  loc_E855A6:   Call 0.Method_Proc_189_60_E855F00 (var_86, var_94)
  loc_E855AE:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_2E(var_A4)
  loc_E855BD: Next var_8A 'Integer
  loc_E855D5: Set var_90 = Me.LblShort
  loc_E855DB: Call 0.Method_Proc_189_60_E855F00 (arg_C, var_94)
  loc_E855E3: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_2E(&HFFFF00)
  loc_E855EF: Exit Sub
End Sub

Public Sub Proc_189_61_E1A01C
  'Data Table: 5167AC
  loc_E1A011: Me.Global.Unload Me
  loc_E1A019: Exit Sub
End Sub

Public Sub Proc_189_62_1041F58(arg_C) '1041F58
  'Data Table: 5167AC
  Dim var_C8 As Variant
  Dim var_98 As Variant
  Dim var_DC As String
  Dim unk_5167CF As Connection15
  Dim var_88 As Recordset15
  Dim Me As Recordset15
  Dim var_100 As Variant
  Dim var_A8 As Variant
  loc_1041D10: On Error Goto loc_1041F30
  loc_1041D20: var_C8 = "SELECT GROUPNAME FROM ACGROUP WHERE GROUPCODE="
  loc_1041D28: var_98 = arg_C
  loc_1041D3B: Proc_183_9_EAB2F0(var_B8, Trim(var_98), var_C8)
  loc_1041D51: unk_5167CF.Execute CStr(var_FC & var_B8), -1, var_100
  loc_1041D5C: Set var_88 = var_100
  loc_1041D84: If (var_88.RecordCount > 0) Then
  loc_1041D95:   Me.AddNew var_98, var_C8
  loc_1041D9A:   var_C8 = "SUBTRIAL"
  loc_1041DAC:   Me.Collect = "TypeName"
  loc_1041DB4:   var_C8 = CVar(arg_C) 'String
  loc_1041DC4:   Me.Collect = "GroupCode"
  loc_1041DE8:   var_A8 = CVar(var_88.Fields.Item("GroupName")) 'Address
  loc_1041DF9:   Me.Collect = "Name"
  loc_1041E21:   var_C8 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1041E32:   Me.Collect = "FRow"
  loc_1041E5D:   var_C8 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1041E6E:   Me.Collect = "Fcol"
  loc_1041E80:   var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1041E91:   Me.Collect = "FS_DATE"
  loc_1041E9D:   var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1041EA2:   var_98 = "FE_DATE"
  loc_1041EAE:   Me.Collect = var_98
  loc_1041EC4:   Me.Update var_98, var_C8
  loc_1041EEB:   var_A8 = var_88.Fields.Item("GroupName").Value
  loc_1041EF4:   var_DC = CStr(var_A8)
  loc_1041F01:   Me.Text1.Text = var_DC
  loc_1041F22:   Call Proc_189_69_F0EAF4(arg_C, 0, 0, var_A8, var_A8)
  loc_1041F27: End If
  loc_1041F2C: Set var_88 = Nothing
  loc_1041F2F: Exit Sub
  loc_1041F30: ' Referenced from: 1041D10
  loc_1041F36: Call 0.Method_arg_50 (var_DC, var_C8, var_C8)
  loc_1041F4B: Proc_183_57_104B0BC(var_DC, "ShowSubtrial", var_A8)
  loc_1041F57: Exit Sub
End Sub

Public Sub Proc_189_63_EDD588
  'Data Table: 5167AC
  loc_EDD4CF: For var_8A = 0 To 7: var_86 = var_8A 'Integer
  loc_EDD4E4:   Set var_90 = Me.LblShort
  loc_EDD4EA:   Call 0.Method_Proc_189_63_EDD5880 (var_86, var_94)
  loc_EDD4F2:   var_94.FontBold = False
  loc_EDD510:   Set var_90 = var_94(var_86)
  loc_EDD516:   Call 0.Method_Proc_189_63_EDD5880 (&HFFFF)
  loc_EDD51E:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_2E(0)
  loc_EDD52D: Next var_8A 'Integer
  loc_EDD545: Set var_90 = var_94(arg_10)
  loc_EDD54B: Call 0.Method_Proc_189_63_EDD5880 (&HFFFF00)
  loc_EDD553: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_2E()
  loc_EDD56D: Set var_90 = var_94(arg_10)
  loc_EDD573: Call 0.Method_Proc_189_63_EDD5880 (True)
  loc_EDD57B: var_94.FontBold = 
  loc_EDD586: Exit Sub
End Sub

Public Sub Proc_189_64_1292538
  'Data Table: 5167AC
  Dim var_98 As Variant
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_138 As Variant
  Dim var_104 As Fields15
  Dim var_118 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_1A8 As Variant
  Dim var_C0 As Variant
  Dim var_1AC As String
  Dim MemVar_1F953D4 As String
  Dim var_90 As Integer
  Dim var_1C8 As String
  loc_1291F80: On Error Goto loc_1292510
  loc_1291F8F: Me.Frame3.Visible = False
  loc_1291F9A: var_88 = vbNullString
  loc_1291FA0: var_8C = vbNullString
  loc_1291FAF: Set var_98 = Me.Check
  loc_1291FB5: Call 0.Method_Proc_189_64_12925380 (0, var_9C)
  loc_1291FCF: If (var_9C.Value = 1) Then
  loc_1291FD8:   Me.MoveFirst
  loc_1291FDD:   ' Referenced from: 1292171
  loc_1291FEF:   If Not(Me.EOF) Then
  loc_1292059:     var_148 = (CVar("," & "'") + Me.Fields.Item("Site_Code").Value)
  loc_1292062:     var_168 = (var_148 + "'")
  loc_129206E:     var_E0 = ("'" + Me.Fields.Item("Site_Code").Value)
  loc_1292077:     var_100 = (var_E0 + "'")
  loc_1292092:     var_1A8 = (CVar(var_88) + IIf((var_88 = vbNullString), var_100, var_168))
  loc_1292097:     var_88 = CStr(var_1A8)
  loc_12920D6:     var_9C = Me.Fields.Item("Site")
  loc_129210F:     var_118 = Me.Fields.Item("Site")
  loc_1292126:     var_138 = ("," + Trim(CVar(var_118)))
  loc_1292144:     var_168 = (CVar(var_8C) + IIf((var_8C = vbNullString), Trim(CVar(var_9C)), CVar("," & "'")))
  loc_1292149:     var_8C = CStr(var_168)
  loc_129216C:     Me.MoveNext
  loc_1292171:     GoTo loc_1291FDD
  loc_1292174:   End If
  loc_129217C:   If (var_88 <> vbNullString) Then
  loc_1292199:     Call 0.Method_arg_28 ("(" & var_88 & ")")
  loc_12921B3:     MemVar_1F953D4 = "(" & var_88 & ")"
  loc_12921BA:   End If
  loc_12921C2:   If (var_8C <> vbNullString) Then
  loc_12921D1:     Call 0.Method_arg_24 (var_8C)
  loc_12921D9:     MemVar_1F953D8 = var_8C
  loc_12921DD:   End If
  loc_12921E0: Else
  loc_12921E3:   var_88 = vbNullString
  loc_12921F6:   For var_1B4 = 0 To CInt(UBound(global_84, 1)):   var_8E = var_1B4 'Integer
  loc_129220A:     If (global_84(CLng(var_8E)) = 0) Then
  loc_129220D:       GoTo loc_129234E
  loc_1292210:     End If
  loc_129221B:     var_90 = global_84(CLng(var_8E))
  loc_1292239:     Set var_98 = Me.GridSel
  loc_129223F:     Call 0.Method_Proc_189_64_12925380 (0, var_9C, 0, CVar(CLng(var_90)))
  loc_1292267:     If (CStr(var_9C.TextMatrix)) = "ü") Then
  loc_1292285:       Set var_98 = Me.GridSel
  loc_129228B:       Call 0.Method_Proc_189_64_12925380 (0, var_9C, 2, CVar(CLng(var_90)))
  loc_1292293:       var_C0 = var_9C.TextMatrix)
  loc_12922CA:       Set var_104 = Me.GridSel
  loc_12922D0:       Call 0.Method_Proc_189_64_12925380 (0, var_118, 2, CVar(CLng(var_90)), "," & "'")
  loc_129231D:       var_148 = (var_C0 + IIf((var_88 = vbNullString), CVar("'" & CStr(var_C0) & "'"), CVar(CVar(var_88) & CStr(var_118.TextMatrix)) & "'")))
  loc_1292322:       var_88 = CStr(IIf((var_8C = vbNullString), Trim(CVar(var_9C)), CVar("," & "'")))
  loc_129234E:       ' Referenced from:   129220D
  loc_129234E:     End If
  loc_1292351:   Next var_1B4 'Integer
  loc_129235E:   If (var_88 <> vbNullString) Then
  loc_129237B:     Call 0.Method_arg_28 ("(" & var_88 & ")")
  loc_1292395:     MemVar_1F953D4 = "(" & var_88 & ")"
  loc_129239C:   End If
  loc_129239F:   var_88 = vbNullString
  loc_12923B2:   For var_1F4 = 0 To CInt(UBound(global_84, 1)):   var_8E = var_1F4 'Integer
  loc_12923C6:     If (global_84(CLng(var_8E)) = 0) Then
  loc_12923C9:       GoTo loc_12924E4
  loc_12923CC:     End If
  loc_12923D7:     var_90 = global_84(CLng(var_8E))
  loc_12923F5:     Set var_98 = Me.GridSel
  loc_12923FB:     Call 0.Method_Proc_189_64_12925380 (0, var_9C, 0, CVar(CLng(var_90)))
  loc_1292423:     If (CStr(var_9C.TextMatrix)) = "ü") Then
  loc_1292441:       Set var_98 = Me.GridSel
  loc_1292447:       Call 0.Method_Proc_189_64_12925380 (0, var_9C, 1, CVar(CLng(var_90)))
  loc_129244F:       var_C0 = var_9C.TextMatrix)
  loc_129247F:       Set var_104 = Me.GridSel
  loc_1292485:       Call 0.Method_Proc_189_64_12925380 (0, var_118, 1, CVar(CLng(var_90)), ",")
  loc_1292498:       var_1AC = CStr(var_118.TextMatrix))
  loc_12924BD:       var_148 = (var_C0 + IIf((var_88 = vbNullString), CVar(CStr(var_C0)), CVar(CVar(var_88) & var_1AC)))
  loc_12924C2:       var_88 = CStr(IIf((var_8C = vbNullString), Trim(CVar(var_9C)), CVar("," & "'")))
  loc_12924E4:       ' Referenced from:   12923C9
  loc_12924E4:     End If
  loc_12924E7:   Next var_1F4 'Integer
  loc_12924F4:   If (var_88 <> vbNullString) Then
  loc_1292503:     Call 0.Method_arg_24 (var_88)
  loc_129250B:     MemVar_1F953D8 = var_88
  loc_129250F:   End If
  loc_129250F: End If
  loc_129250F: Exit Sub
  loc_1292510: ' Referenced from: 1291F80
  loc_1292516: Call 0.Method_arg_50 (var_1AC)
  loc_129251E: var_1C8 = "SiteAsign"
  loc_129252B: Proc_183_57_104B0BC(var_1AC)
  loc_1292537: Exit Sub
End Sub

Public Sub Proc_189_65_F0E3EC(arg_C) 'F0E3EC
  'Data Table: 5167AC
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_9C As String
  Dim var_92 As Integer
  loc_F0E308: On Error Goto loc_F0E3C1
  loc_F0E327: Call 0.Method_Me0 (Me, arg_C)
  loc_F0E332: Set var_88 = var_90
  loc_F0E341: Call Proc_189_60_E855F0(0)
  loc_F0E35A: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F0E367:   arg_2C = Me.FGrid1.Text
  loc_F0E372: End If
  loc_F0E37B: var_9C = MemVar_1F953B4 & "\FaBalSheet.ttx"
  loc_F0E388: Set var_8C = var_88 
  loc_F0E394: var_92 = CreateFieldDefFile(var_8C, var_9C, &HFF)
  loc_F0E39E: Set var_88 = var_8C
  loc_F0E3AA: X11 = CVar(var_92)
  loc_F0E3BD: Set var_88 = Nothing
  loc_F0E3C0: Exit Sub
  loc_F0E3C1: ' Referenced from: F0E308
  loc_F0E3C7: Call 0.Method_arg_50 (var_9C, X11, var_92)
  loc_F0E3DC: Proc_183_57_104B0BC(var_9C, "BalSheet", arg_2C)
  loc_F0E3E8: Exit Sub
  loc_F0E3E9: StAryRecMove
End Sub

Public Sub Proc_189_66_F0E770(arg_C) 'F0E770
  'Data Table: 5167AC
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_9C As String
  Dim var_92 As Integer
  loc_F0E68C: On Error Goto loc_F0E745
  loc_F0E6AB: Call 0.Method_Me8 (Me, arg_C)
  loc_F0E6B6: Set var_88 = var_90
  loc_F0E6C5: Call Proc_189_60_E855F0(1)
  loc_F0E6DE: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F0E6EB:   arg_2C = Me.FGrid1.Text
  loc_F0E6F6: End If
  loc_F0E6FF: var_9C = MemVar_1F953B4 & "\FaProfLoss.ttx"
  loc_F0E70C: Set var_8C = var_88 
  loc_F0E718: var_92 = CreateFieldDefFile(var_8C, var_9C, &HFF)
  loc_F0E722: Set var_88 = var_8C
  loc_F0E72E: X11 = CVar(var_92)
  loc_F0E741: Set var_88 = Nothing
  loc_F0E744: Exit Sub
  loc_F0E745: ' Referenced from: F0E68C
  loc_F0E74B: Call 0.Method_arg_50 (var_9C, X11, var_92)
  loc_F0E760: Proc_183_57_104B0BC(var_9C, "ProfLoss", arg_2C)
  loc_F0E76C: Exit Sub
  loc_F0E76D: StAryRecMove
End Sub

Public Sub Proc_189_67_F0DBB8(arg_C) 'F0DBB8
  'Data Table: 5167AC
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_9C As String
  Dim var_92 As Integer
  loc_F0DAD4: On Error Goto loc_F0DB8D
  loc_F0DAF3: Call 0.Method_MeC (Me, arg_C)
  loc_F0DAFE: Set var_88 = var_90
  loc_F0DB0D: Call Proc_189_60_E855F0(2)
  loc_F0DB26: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F0DB33:   arg_2C = Me.FGrid1.Text
  loc_F0DB3E: End If
  loc_F0DB47: var_9C = MemVar_1F953B4 & "\FaGroupTrial.ttx"
  loc_F0DB54: Set var_8C = var_88 
  loc_F0DB60: var_92 = CreateFieldDefFile(var_8C, var_9C, &HFF)
  loc_F0DB6A: Set var_88 = var_8C
  loc_F0DB76: X11 = CVar(var_92)
  loc_F0DB89: Set var_88 = Nothing
  loc_F0DB8C: Exit Sub
  loc_F0DB8D: ' Referenced from: F0DAD4
  loc_F0DB93: Call 0.Method_arg_50 (var_9C, X11, var_92)
  loc_F0DBA8: Proc_183_57_104B0BC(var_9C, "GroupTrial", arg_2C)
  loc_F0DBB4: Exit Sub
  loc_F0DBB5: StAryRecMove
End Sub

Public Sub Proc_189_68_F0EC20(arg_C) 'F0EC20
  'Data Table: 5167AC
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_9C As String
  Dim var_92 As Integer
  loc_F0EB3C: On Error Goto loc_F0EBF5
  loc_F0EB5B: Call 0.Method_arg_90 (Me, arg_C)
  loc_F0EB66: Set var_88 = var_90
  loc_F0EB75: Call Proc_189_60_E855F0(3)
  loc_F0EB8E: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F0EB9B:   arg_2C = Me.FGrid1.Text
  loc_F0EBA6: End If
  loc_F0EBAF: var_9C = MemVar_1F953B4 & "\FaLedTrial.ttx"
  loc_F0EBBC: Set var_8C = var_88 
  loc_F0EBC8: var_92 = CreateFieldDefFile(var_8C, var_9C, &HFF)
  loc_F0EBD2: Set var_88 = var_8C
  loc_F0EBDE: X11 = CVar(var_92)
  loc_F0EBF1: Set var_88 = Nothing
  loc_F0EBF4: Exit Sub
  loc_F0EBF5: ' Referenced from: F0EB3C
  loc_F0EBFB: Call 0.Method_arg_50 (var_9C, X11, var_92)
  loc_F0EC10: Proc_183_57_104B0BC(var_9C, "LedTrial", arg_2C)
  loc_F0EC1C: Exit Sub
  loc_F0EC1D: StAryRecMove
End Sub

Public Sub Proc_189_69_F0EAF4(arg_C, arg_10) 'F0EAF4
  'Data Table: 5167AC
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_98 As String
  Dim var_9E As Integer
  loc_F0EA10: On Error Goto loc_F0EAC9
  loc_F0EA17: Set var_88 = New 
  loc_F0EA39: Call 0.Method_arg_78 (Me, arg_C, arg_10)
  loc_F0EA44: Set var_88 = var_90
  loc_F0EA62: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F0EA6F:   arg_2C = Me.FGrid1.Text
  loc_F0EA7A: End If
  loc_F0EA83: var_98 = MemVar_1F953B4 & "\FaSubTrial.ttx"
  loc_F0EA90: Set var_8C = var_88 
  loc_F0EA9C: var_9E = CreateFieldDefFile(var_8C, var_98, &HFF)
  loc_F0EAA6: Set var_88 = var_8C
  loc_F0EAB2: X11 = CVar(var_9E)
  loc_F0EAC5: Set var_88 = Nothing
  loc_F0EAC8: Exit Sub
  loc_F0EAC9: ' Referenced from: F0EA10
  loc_F0EACF: Call 0.Method_arg_50 (var_98, X11, var_9E)
  loc_F0EAE4: Proc_183_57_104B0BC(var_98, "Subtrial", arg_2C)
  loc_F0EAF0: Exit Sub
  loc_F0EAF1: StAryRecMove
End Sub

Public Sub Proc_189_70_F0E518(arg_C) 'F0E518
  'Data Table: 5167AC
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_9C As String
  Dim var_92 As Integer
  loc_F0E434: On Error Goto loc_F0E4ED
  loc_F0E453: Call 0.Method_arg_7C (Me, arg_C)
  loc_F0E45E: Set var_88 = var_90
  loc_F0E46D: Call Proc_189_60_E855F0(6)
  loc_F0E486: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F0E493:   arg_2C = Me.FGrid1.Text
  loc_F0E49E: End If
  loc_F0E4A7: var_9C = MemVar_1F953B4 & "\FaCashBankSum.ttx"
  loc_F0E4B4: Set var_8C = var_88 
  loc_F0E4C0: var_92 = CreateFieldDefFile(var_8C, var_9C, &HFF)
  loc_F0E4CA: Set var_88 = var_8C
  loc_F0E4D6: X11 = CVar(var_92)
  loc_F0E4E9: Set var_88 = Nothing
  loc_F0E4EC: Exit Sub
  loc_F0E4ED: ' Referenced from: F0E434
  loc_F0E4F3: Call 0.Method_arg_50 (var_9C, X11, var_92)
  loc_F0E508: Proc_183_57_104B0BC(var_9C, "CashBankSum", arg_2C)
  loc_F0E514: Exit Sub
  loc_F0E515: StAryRecMove
End Sub

Public Sub Proc_189_71_F0DCE4(arg_C) 'F0DCE4
  'Data Table: 5167AC
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_9C As String
  Dim var_92 As Integer
  loc_F0DC00: On Error Goto loc_F0DCB9
  loc_F0DC1F: Call 0.Method_arg_94 (Me, arg_C)
  loc_F0DC2A: Set var_88 = var_90
  loc_F0DC39: Call Proc_189_60_E855F0(4)
  loc_F0DC52: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F0DC5F:   arg_2C = Me.FGrid1.Text
  loc_F0DC6A: End If
  loc_F0DC73: var_9C = MemVar_1F953B4 & "\FaCashFundFlow.ttx"
  loc_F0DC80: Set var_8C = var_88 
  loc_F0DC8C: var_92 = CreateFieldDefFile(var_8C, var_9C, &HFF)
  loc_F0DC96: Set var_88 = var_8C
  loc_F0DCA2: X11 = CVar(var_92)
  loc_F0DCB5: Set var_88 = Nothing
  loc_F0DCB8: Exit Sub
  loc_F0DCB9: ' Referenced from: F0DC00
  loc_F0DCBF: Call 0.Method_arg_50 (var_9C, X11, var_92)
  loc_F0DCD4: Proc_183_57_104B0BC(var_9C, "CashFlow", arg_2C)
  loc_F0DCE0: Exit Sub
  loc_F0DCE1: StAryRecMove
End Sub

Public Sub Proc_189_72_F0E644(arg_C) 'F0E644
  'Data Table: 5167AC
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_9C As String
  Dim var_92 As Integer
  loc_F0E560: On Error Goto loc_F0E619
  loc_F0E57F: Call 0.Method_arg_98 (Me, arg_C)
  loc_F0E58A: Set var_88 = var_90
  loc_F0E599: Call Proc_189_60_E855F0(5)
  loc_F0E5B2: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F0E5BF:   arg_2C = Me.FGrid1.Text
  loc_F0E5CA: End If
  loc_F0E5D3: var_9C = MemVar_1F953B4 & "\FaCashFundFlow.ttx"
  loc_F0E5E0: Set var_8C = var_88 
  loc_F0E5EC: var_92 = CreateFieldDefFile(var_8C, var_9C, &HFF)
  loc_F0E5F6: Set var_88 = var_8C
  loc_F0E602: X11 = CVar(var_92)
  loc_F0E615: Set var_88 = Nothing
  loc_F0E618: Exit Sub
  loc_F0E619: ' Referenced from: F0E560
  loc_F0E61F: Call 0.Method_arg_50 (var_9C, X11, var_92)
  loc_F0E634: Proc_183_57_104B0BC(var_9C, "FundFlow", arg_2C)
  loc_F0E640: Exit Sub
  loc_F0E641: StAryRecMove
End Sub

Public Sub Proc_189_73_F0ED4C(arg_C) 'F0ED4C
  'Data Table: 5167AC
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_9C As String
  Dim var_92 As Integer
  loc_F0EC68: On Error Goto loc_F0ED21
  loc_F0EC87: Call 0.Method_Me4 (Me, arg_C)
  loc_F0EC92: Set var_88 = var_90
  loc_F0ECA1: Call Proc_189_60_E855F0(0)
  loc_F0ECBA: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F0ECC7:   arg_2C = Me.FGrid1.Text
  loc_F0ECD2: End If
  loc_F0ECDB: var_9C = MemVar_1F953B4 & "\FaBalSheet.ttx"
  loc_F0ECE8: Set var_8C = var_88 
  loc_F0ECF4: var_92 = CreateFieldDefFile(var_8C, var_9C, &HFF)
  loc_F0ECFE: Set var_88 = var_8C
  loc_F0ED0A: X11 = CVar(var_92)
  loc_F0ED1D: Set var_88 = Nothing
  loc_F0ED20: Exit Sub
  loc_F0ED21: ' Referenced from: F0EC68
  loc_F0ED27: Call 0.Method_arg_50 (var_9C, X11, var_92)
  loc_F0ED3C: Proc_183_57_104B0BC(var_9C, "OpDiff", arg_2C)
  loc_F0ED48: Exit Sub
  loc_F0ED49: StAryRecMove
End Sub

Public Sub Proc_189_74_F19248(arg_C, arg_10, arg_14, arg_18, arg_1C) 'F19248
  'Data Table: 5167AC
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_90 As String
  Dim var_9E As Integer
  loc_F19158: On Error Goto loc_F1921E
  loc_F19163: var_90 = 0
  loc_F1918B: Call 0.Method_arg_64 (Me, arg_C, arg_10, arg_14)
  loc_F19196: Set var_88 = var_94
  loc_F191B7: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F191C4:   arg_2C = Me.FGrid1.Text
  loc_F191CF: End If
  loc_F191D8: var_90 = MemVar_1F953B4 & "\FaMagLedger.ttx"
  loc_F191E5: Set var_8C = var_88 
  loc_F191F1: var_9E = CreateFieldDefFile(var_8C, var_90, &HFF, arg_2C)
  loc_F191FB: Set var_88 = var_8C
  loc_F19207: X11 = CVar(var_9E)
  loc_F1921A: Set var_88 = Nothing
  loc_F1921D: Exit Sub
  loc_F1921E: ' Referenced from: F19158
  loc_F19224: Call 0.Method_arg_50 (var_90, X11, var_9E, arg_18)
  loc_F19239: Proc_183_57_104B0BC(var_90, "MagLedger", arg_1C)
  loc_F19245: Exit Sub
End Sub

Public Sub Proc_189_75_F0868C(arg_C, arg_10, arg_14, arg_18) 'F0868C
  'Data Table: 5167AC
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_98 As String
  Dim var_9E As Integer
  loc_F085AC: On Error Goto loc_F08664
  loc_F085D4: Call 0.Method_arg_60 (Me, arg_C, arg_10, arg_14)
  loc_F085DF: Set var_88 = var_90
  loc_F085FD: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F0860A:   arg_2C = Me.FGrid1.Text
  loc_F08615: End If
  loc_F0861E: var_98 = MemVar_1F953B4 & "\FaMagCashBook.ttx"
  loc_F0862B: Set var_8C = var_88 
  loc_F08637: var_9E = CreateFieldDefFile(var_8C, var_98, &HFF, arg_2C)
  loc_F08641: Set var_88 = var_8C
  loc_F0864D: X11 = CVar(var_9E)
  loc_F08660: Set var_88 = Nothing
  loc_F08663: Exit Sub
  loc_F08664: ' Referenced from: F085AC
  loc_F0866A: Call 0.Method_arg_50 (var_98, X11, var_9E)
  loc_F0867F: Proc_183_57_104B0BC(var_98, "MagCashBook", arg_18)
  loc_F0868B: Exit Sub
End Sub

Public Sub Proc_189_76_F067B8(arg_C, arg_10) 'F067B8
  'Data Table: 5167AC
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_98 As String
  Dim var_9E As Integer
  loc_F066DC: On Error Goto loc_F0678E
  loc_F066FE: Call 0.Method_arg_68 (Me, arg_C, arg_10)
  loc_F06709: Set var_88 = var_90
  loc_F06727: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F06734:   arg_2C = Me.FGrid1.Text
  loc_F0673F: End If
  loc_F06748: var_98 = MemVar_1F953B4 & "\FaMonthSum.ttx"
  loc_F06755: Set var_8C = var_88 
  loc_F06761: var_9E = CreateFieldDefFile(var_8C, var_98, &HFF)
  loc_F0676B: Set var_88 = var_8C
  loc_F06777: X11 = CVar(var_9E)
  loc_F0678A: Set var_88 = Nothing
  loc_F0678D: Exit Sub
  loc_F0678E: ' Referenced from: F066DC
  loc_F06794: Call 0.Method_arg_50 (var_98, X11, var_9E)
  loc_F067A9: Proc_183_57_104B0BC(var_98, "monthSum", arg_2C)
  loc_F067B5: Exit Sub
End Sub

Public Sub Proc_189_77_F0DA8C(arg_C) 'F0DA8C
  'Data Table: 5167AC
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_9C As String
  Dim var_92 As Integer
  loc_F0D9A8: On Error Goto loc_F0DA61
  loc_F0D9C7: Call 0.Method_arg_70 (Me, arg_C)
  loc_F0D9D2: Set var_88 = var_90
  loc_F0D9E1: Call Proc_189_60_E855F0(7)
  loc_F0D9FA: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F0DA07:   arg_2C = Me.FGrid1.Text
  loc_F0DA12: End If
  loc_F0DA1B: var_9C = MemVar_1F953B4 & "\FaGroupTrial.ttx"
  loc_F0DA28: Set var_8C = var_88 
  loc_F0DA34: var_92 = CreateFieldDefFile(var_8C, var_9C, &HFF)
  loc_F0DA3E: Set var_88 = var_8C
  loc_F0DA4A: X11 = CVar(var_92)
  loc_F0DA5D: Set var_88 = Nothing
  loc_F0DA60: Exit Sub
  loc_F0DA61: ' Referenced from: F0D9A8
  loc_F0DA67: Call 0.Method_arg_50 (var_9C, X11, var_92)
  loc_F0DA7C: Proc_183_57_104B0BC(var_9C, "VrAnal", arg_2C)
  loc_F0DA88: Exit Sub
End Sub

Public Sub Proc_189_78_F08564(arg_C, arg_10, arg_14) 'F08564
  'Data Table: 5167AC
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_98 As String
  Dim var_9E As Integer
  loc_F08484: On Error Goto loc_F08539
  loc_F084A9: Call 0.Method_arg_6C (Me, arg_C, arg_10)
  loc_F084B4: Set var_88 = var_90
  loc_F084D2: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F084DF:   arg_2C = Me.FGrid1.Text
  loc_F084EA: End If
  loc_F084F3: var_98 = MemVar_1F953B4 & "\FaMonthSum.ttx"
  loc_F08500: Set var_8C = var_88 
  loc_F0850C: var_9E = CreateFieldDefFile(var_8C, var_98, &HFF, arg_2C)
  loc_F08516: Set var_88 = var_8C
  loc_F08522: X11 = CVar(var_9E)
  loc_F08535: Set var_88 = Nothing
  loc_F08538: Exit Sub
  loc_F08539: ' Referenced from: F08484
  loc_F0853F: Call 0.Method_arg_50 (var_98, X11, var_9E)
  loc_F08554: Proc_183_57_104B0BC(var_98, "monthSumVrAnal", arg_14)
  loc_F08560: Exit Sub
End Sub

Public Sub Proc_189_79_F0DF3C(arg_C, arg_10, arg_14, arg_18, arg_1C) 'F0DF3C
  'Data Table: 5167AC
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_98 As String
  Dim var_9E As Integer
  loc_F0DE58: On Error Goto loc_F0DF13
  loc_F0DE83: Call 0.Method_arg_74 (Me, arg_C, arg_10, arg_14)
  loc_F0DE8E: Set var_88 = var_90
  loc_F0DEAC: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F0DEB9:   arg_2C = Me.FGrid1.Text
  loc_F0DEC4: End If
  loc_F0DECD: var_98 = MemVar_1F953B4 & "\FaMonthSum.ttx"
  loc_F0DEDA: Set var_8C = var_88 
  loc_F0DEE6: var_9E = CreateFieldDefFile(var_8C, var_98, &HFF, arg_2C)
  loc_F0DEF0: Set var_88 = var_8C
  loc_F0DEFC: X11 = CVar(var_9E)
  loc_F0DF0F: Set var_88 = Nothing
  loc_F0DF12: Exit Sub
  loc_F0DF13: ' Referenced from: F0DE58
  loc_F0DF19: Call 0.Method_arg_50 (var_98, X11, var_9E, arg_18)
  loc_F0DF2E: Proc_183_57_104B0BC(var_98, "VrRegister", arg_1C)
  loc_F0DF3A: Exit Sub
End Sub
