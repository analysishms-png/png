VERSION 5.00
Begin VB.Form FrmChargeMast
  Caption = "Charge Master"
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
  ClientWidth = 11355
  ClientHeight = 7980
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 6495
    Top = 2235
    Width = 1275
    Height = 285
    TabIndex = 3
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
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3780
    Top = 3180
    Width = 1005
    Height = 285
    TabIndex = 6
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
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3780
    Top = 4440
    Width = 1005
    Height = 285
    TabIndex = 12
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11355
    Height = 450
    TabIndex = 39
  End
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3780
    Top = 2235
    Width = 1635
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 20
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
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3780
    Top = 3495
    Width = 1815
    Height = 285
    TabIndex = 7
    BorderStyle = 0 'None
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
  Begin PictureBox Picture1
    Picture = "FrmChargeMast.frx":0
    Left = 12030
    Top = 2055
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 32
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
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
  Begin PictureBox Picture3
    Picture = "FrmChargeMast.frx":34E
    Left = 12030
    Top = 1785
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 31
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
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
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 10965
    Top = 3165
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 28
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = -15
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 29
    End
  End
  Begin DataGrid DGLedgerAc
    Left = 8010
    Top = 3915
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 26
  End
  Begin DataGrid DGHelp
    Left = 7275
    Top = 4350
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 25
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    Left = 10335
    Top = 510
    Width = 1380
    Height = 255
    Visible = 0   'False
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 7
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
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3780
    Top = 4125
    Width = 1005
    Height = 285
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 2
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
    Left = 3780
    Top = 1605
    Width = 3990
    Height = 285
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
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3780
    Top = 3810
    Width = 1005
    Height = 285
    TabIndex = 8
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 9
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
    Index = 6
    BackColor = &HFFFFFF&
    Left = 10470
    Top = 885
    Width = 1380
    Height = 255
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 9
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
    Index = 5
    BackColor = &HFFFFFF&
    Left = 11445
    Top = 2715
    Width = 1380
    Height = 255
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 9
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3780
    Top = 2865
    Width = 3990
    Height = 285
    TabIndex = 5
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
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3780
    Top = 2550
    Width = 3990
    Height = 285
    TabIndex = 4
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3780
    Top = 1920
    Width = 1005
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 5
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
    Left = 11385
    Top = 4980
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 24
  End
  Begin DataGrid DGTaxStru
    Left = 6960
    Top = 3540
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 27
  End
  Begin Label LblLedgerAc
    Caption = "HSN Code"
    Index = 8
    ForeColor = &HC00000&
    Left = 5475
    Top = 2265
    Width = 960
    Height = 240
    TabIndex = 44
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
    Caption = "(Y)es/(N)o"
    Index = 2
    ForeColor = &H80&
    Left = 4815
    Top = 3195
    Width = 885
    Height = 240
    TabIndex = 43
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
  Begin Label LblLedgerAc
    Caption = "Tax Inclusive"
    Index = 7
    ForeColor = &HC00000&
    Left = 2115
    Top = 3180
    Width = 1260
    Height = 240
    TabIndex = 42
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
    Caption = "(Y)es/(N)o"
    Index = 1
    ForeColor = &H80&
    Left = 4815
    Top = 4440
    Width = 885
    Height = 240
    TabIndex = 41
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
  Begin Label LblLedgerAc
    Caption = "Active"
    Index = 6
    ForeColor = &HC00000&
    Left = 2115
    Top = 4440
    Width = 585
    Height = 240
    TabIndex = 40
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4755
    Top = 5460
    Width = 2790
    Height = 285
    TabIndex = 38
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
    Left = 1380
    Top = 5460
    Width = 2880
    Height = 255
    TabIndex = 37
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
    TabIndex = 36
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
  Begin Label LblLedgerAc
    Caption = "Nature of charge"
    Index = 5
    ForeColor = &HC00000&
    Left = 2115
    Top = 2235
    Width = 1590
    Height = 240
    TabIndex = 35
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
  Begin Label Label2
    Caption = "Detailed/Summarize"
    ForeColor = &H80&
    Left = 5610
    Top = 3510
    Width = 1950
    Height = 240
    TabIndex = 34
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
    Caption = "Posting Type"
    Index = 1
    ForeColor = &HC00000&
    Left = 2115
    Top = 3495
    Width = 1230
    Height = 240
    TabIndex = 33
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
    Caption = "Cr/Dr"
    Index = 0
    ForeColor = &H80&
    Left = 4815
    Top = 4155
    Width = 480
    Height = 240
    TabIndex = 30
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
  Begin Label LblLedgerAc
    Caption = "App.Mode"
    Index = 4
    ForeColor = &H0&
    Left = 8805
    Top = 510
    Width = 945
    Height = 240
    Visible = 0   'False
    TabIndex = 23
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblLedgerAc
    Caption = "Type"
    Index = 3
    ForeColor = &HC00000&
    Left = 2115
    Top = 4125
    Width = 465
    Height = 240
    TabIndex = 22
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
  Begin Label LblSysYN
    Caption = "SysYN"
    ForeColor = &H80&
    Left = 4815
    Top = 1935
    Width = 585
    Height = 240
    TabIndex = 21
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
    Caption = "Charge Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 2115
    Top = 1605
    Width = 1305
    Height = 240
    TabIndex = 20
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
    Caption = "Sale Rate"
    Index = 4
    ForeColor = &HC00000&
    Left = 2115
    Top = 3810
    Width = 930
    Height = 240
    TabIndex = 19
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
  Begin Label LblLedgerAc
    Caption = "Tax Structure"
    Index = 0
    ForeColor = &HC00000&
    Left = 2115
    Top = 2865
    Width = 1290
    Height = 240
    TabIndex = 18
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
    Caption = "Staff Rate"
    Index = 6
    ForeColor = &H0&
    Left = 8940
    Top = 885
    Width = 870
    Height = 240
    Visible = 0   'False
    TabIndex = 17
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblLedgerAc
    Caption = "Cost"
    Index = 1
    ForeColor = &H0&
    Left = 9825
    Top = 2715
    Width = 375
    Height = 240
    Visible = 0   'False
    TabIndex = 16
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
    Caption = "Account Name"
    Index = 2
    ForeColor = &HC00000&
    Left = 2115
    Top = 2550
    Width = 1380
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
  Begin Label LblLedgerAc
    Caption = "Short Name"
    Index = 2
    ForeColor = &HC00000&
    Left = 2115
    Top = 1920
    Width = 1125
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
End

Attribute VB_Name = "FrmChargeMast"


Private Sub DGLedgerAc_UnknownEvent_9 'F4EE74
  'Data Table: 4CD140
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4ED6B: Me.DGLedgerAc.Visible = False
  loc_F4ED8A: If (Me.RecordCount > 0) Then
  loc_F4EDC9:   Set var_B4 = Me.Txt
  loc_F4EDCF:   Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(2), var_B8)
  loc_F4EDD7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4EE0A:   var_B0 = Me.Fields.Item("Name")
  loc_F4EE29:   Set var_B4 = Me.Txt
  loc_F4EE2F:   Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(2), var_B8)
  loc_F4EE37:   var_B8.Text = CStr(var_B0.Value)
  loc_F4EE4D: End If
  loc_F4EE58: Set var_A8 = Me.Txt
  loc_F4EE5E: Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(2))
  loc_F4EE66: var_B0.SetFocus
  loc_F4EE72: Exit Sub
End Sub

Private Sub DGLedgerAc_UnknownEvent_1F 'EA8FDC
  'Data Table: 4CD140
  Dim var_A8 As Variant
  loc_EA8F5C: Set var_88 = Me.DGLedgerAc
  loc_EA8F86: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA8F8E: Set var_BC = Me.DGLedgerAc
  loc_EA8FCA: Proc_6_138_106E830(Me.DGLedgerAc, global_60, CInt(2), Me.FGPoint)
  loc_EA8FD8: Exit Sub
  loc_EA8FD9: DGLedgerAc.DispID_1B = var_A8
End Sub

Private Sub DGHelp_UnknownEvent_9 'F4B354
  'Data Table: 4CD140
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4B24B: Me.DGHelp.Visible = False
  loc_F4B26A: If (Me.RecordCount > 0) Then
  loc_F4B2A9:   Set var_B4 = Me.Txt
  loc_F4B2AF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4B2B7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4B2EA:   var_B0 = Me.Fields.Item("Name")
  loc_F4B309:   Set var_B4 = Me.Txt
  loc_F4B30F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4B317:   var_B8.Text = CStr(var_B0.Value)
  loc_F4B32D: End If
  loc_F4B338: Set var_A8 = Me.Txt
  loc_F4B33E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F4B346: var_B0.SetFocus
  loc_F4B352: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EA9164
  'Data Table: 4CD140
  Dim var_A8 As Variant
  loc_EA90E4: Set var_88 = Me.DGHelp
  loc_EA910E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA9116: Set var_BC = Me.DGHelp
  loc_EA9152: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(0), Me.FGPoint)
  loc_EA9160: Exit Sub
  loc_EA9161: DGHelp.DispID_1B = var_A8
End Sub

Private Sub Txt_GotFocus(Index As Integer) '129E1D8
  'Data Table: 4CD140
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_88 As ListView
  loc_129DBF2: Set var_88 = Me.Txt
  loc_129DBF8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_129DC06: Proc_6_74_E23240(var_8C)
  loc_129DC12: Call Proc_71_37_F1FCF8(var_8C)
  loc_129DC17: On Error Goto loc_129E192
  loc_129DC1D: var_92 = Index
  loc_129DC28: If (var_92 = CInt(0)) Then
  loc_129DC42:   If (Me.RecordCount > 0) Then
  loc_129DC50:     Set var_8C = Me.FGPoint
  loc_129DC68:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_129DC76:   End If
  loc_129DC79: Else
  loc_129DC81:   If (var_92 = CInt(2)) Then
  loc_129DC9B:     If (Me.RecordCount > 0) Then
  loc_129DCA9:       Set var_8C = Me.FGPoint
  loc_129DCC1:       Proc_6_137_1192FDC(Me.DGLedgerAc, global_60, Index)
  loc_129DCCF:     End If
  loc_129DD1D:     Set var_88 = Me.Txt
  loc_129DD23:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_129DD2B:     var_8C = var_8C.Text
  loc_129DD43:     If (var_8C Or (var_A0 = vbNullString)) Then
  loc_129DD46:       Exit Sub
  loc_129DD47:     End If
  loc_129DD54:     Set var_88 = Me.Txt
  loc_129DD5A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_129DD62:     var_A0 = var_8C.Text
  loc_129DD74:     var_B0 = "Name"
  loc_129DDAF:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_129DDB8:       Me.MoveFirst
  loc_129DDDB:       Set var_88 = Me.Txt
  loc_129DDE1:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_129DDE9:       0 = var_8C.Text
  loc_129DE02:       Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_129DE17:     End If
  loc_129DE1A:   Else
  loc_129DE22:     If (var_92 = CInt(3)) Then
  loc_129DE3C:       If (Me.RecordCount > 0) Then
  loc_129DE4A:         Set var_8C = Me.FGPoint
  loc_129DE62:         Proc_6_137_1192FDC(Me.DGTaxStru, global_64)
  loc_129DE70:       End If
  loc_129DEBE:       Set var_88 = Me.Txt
  loc_129DEC4:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_129DECC:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_129DEE4:       If (Index Or (var_A0 = vbNullString)) Then
  loc_129DEE7:         Exit Sub
  loc_129DEE8:       End If
  loc_129DEF5:       Set var_88 = Me.Txt
  loc_129DEFB:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_129DF03:       var_A0 = var_8C.Text
  loc_129DF15:       var_B0 = "Name"
  loc_129DF50:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_129DF59:         Me.MoveFirst
  loc_129DF7C:         Set var_88 = Me.Txt
  loc_129DF82:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_129DF8A:         0 = var_8C.Text
  loc_129DFA3:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_129DFB8:       End If
  loc_129DFBB:     Else
  loc_129DFC3:       If (var_92 = CInt(&HA)) Then
  loc_129DFD3:         ReDim var_F0(0 To 6)
  loc_129DFEA:         var_F0(0) = "Room Charge"
  loc_129DFF9:         var_F0(1) = "Meal Charge"
  loc_129E008:         var_F0(2) = "Laundry Charge"
  loc_129E017:         var_F0(3) = "Telephone Charge"
  loc_129E026:         var_F0(4) = "Internet Charge"
  loc_129E035:         var_F0(5) = "Vehicle Charge"
  loc_129E044:         var_F0(6) = "Other"
  loc_129E05B:         global_76 = Array(var_F0)
  loc_129E09B:         Set global_92 = Proc_6_66_F0048C(Me.ListView, Me.Txt, Index)
  loc_129E0BF:         Me.ListView.Tag = CVar(CStr(Index))
  loc_129E0CD:       Else
  loc_129E0D5:         If (var_92 = CInt(8)) Then
  loc_129E0E5:           ReDim var_F0(0 To 1)
  loc_129E0FC:           var_F0(0) = "Percent"
  loc_129E10B:           var_F0(1) = "Amount"
  loc_129E122:           global_76 = Array(var_F0)
  loc_129E162:           Set global_92 = Proc_6_66_F0048C(Me.ListView, Me.Txt, Index, global_76, 2)
  loc_129E186:           Me.ListView.Tag = CVar(CStr(Index))
  loc_129E191:         End If
  loc_129E191:       End If
  loc_129E191:     End If
  loc_129E191:   End If
  loc_129E191: End If
  loc_129E191: Exit Sub
  loc_129E192: ' Referenced from: 129DC17
  loc_129E19A: Set var_88 = Err()
  loc_129E1A0: Call 0.Method_arg_2C (var_A0, global_76, global_76)
  loc_129E1C1: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_164)
  loc_129E1D4: Exit Sub
  loc_129E1D5: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '12CA624
  'Data Table: 4CD140
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_A8 As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_10C As Variant
  loc_12C9FDA: If (CLng(Shift) = &H1B) Then
  loc_12C9FDD:   Call Proc_71_37_F1FCF8()
  loc_12C9FE2:   Exit Sub
  loc_12C9FE3: End If
  loc_12C9FE6: var_86 = KeyCode
  loc_12C9FF1: If (var_86 = CInt(0)) Then
  loc_12CA011:   Set var_98 = Me.FGPoint
  loc_12CA03F:   Proc_6_79_11AD564(Me.DGHelp, Me.Txt, KeyCode, global_56, Shift)
  loc_12CA0AC:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12CA0D2:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint, 0)
  loc_12CA0E0:   End If
  loc_12CA0E3: Else
  loc_12CA0EB:   If (var_86 = CInt(2)) Then
  loc_12CA116:     Set var_98 = Nothing
  loc_12CA148:     Proc_6_69_134A630(Me.DGLedgerAc, Me.Txt, CInt(2), global_60, Shift, 0, 1)
  loc_12CA1B7:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12CA1BE:       Set var_98 = Me.DGLedgerAc
  loc_12CA1DD:       Proc_6_138_106E830(var_98, global_60, KeyCode, Me.FGPoint, var_98, Me.FGPoint)
  loc_12CA1EB:     End If
  loc_12CA1EE:   Else
  loc_12CA1F6:     If (var_86 = CInt(3)) Then
  loc_12CA204:       Set var_A8 = Me.Txt
  loc_12CA216:       Set var_A0 = Me.FGPoint
  loc_12CA253:       Proc_6_69_134A630(Me.DGTaxStru, var_A8, CInt(3), global_64, Shift, 0, 1, Nothing)
  loc_12CA272:       var_AC = Me.RecordCount
  loc_12CA2C2:       If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12CA2D0:         Set var_90 = Me.FGPoint
  loc_12CA2E8:         Proc_6_138_106E830(Me.DGTaxStru, global_64, KeyCode, var_90, var_A0, 0)
  loc_12CA2F6:       End If
  loc_12CA2F9:     Else
  loc_12CA301:       If (var_86 = CInt(&HA)) Then
  loc_12CA326:         Set var_8C = Me.Txt
  loc_12CA32C:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 0)
  loc_12CA334:         1 = var_90.Left
  loc_12CA346:         Set var_98 = Me.Txt
  loc_12CA34C:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B8)
  loc_12CA354:         var_98 = var_A0.Top
  loc_12CA366:         Set var_A4 = Me.Txt
  loc_12CA36C:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_BC)
  loc_12CA374:         0 = var_A8.Height
  loc_12CA386:         Set var_B4 = Me.Txt
  loc_12CA38C:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_12CA394:         var_C4 = var_C0.Width
  loc_12CA3DC:         Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12CA403:       Else
  loc_12CA40B:         If (var_86 = CInt(8)) Then
  loc_12CA430:           Set var_8C = Me.Txt
  loc_12CA436:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_12CA43E:           CInt((var_B8 + var_BC)) = var_90.Left
  loc_12CA450:           Set var_98 = Me.Txt
  loc_12CA456:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B8)
  loc_12CA45E:           CInt(var_C4) = var_A0.Top
  loc_12CA470:           Set var_A4 = Me.Txt
  loc_12CA476:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_BC)
  loc_12CA47E:           1820 = var_A8.Height
  loc_12CA490:           Set var_B4 = Me.Txt
  loc_12CA496:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_12CA49E:           var_C4 = var_C0.Width
  loc_12CA4E6:           Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12CA50A:         End If
  loc_12CA50A:       End If
  loc_12CA50A:     End If
  loc_12CA50A:   End If
  loc_12CA50A: End If
  loc_12CA541: var_10C = Me.DGTaxStru.Visible
  loc_12CA57B: If ((((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGLedgerAc.Visible) = 0)) And (CBool(var_10C) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_12CA59C:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HB))) Then
  loc_12CA5D6:     If (MsgBox("Save Record ?", 4, "Save Data", var_10C, var_15C) = 6) Then
  loc_12CA5D9:       Call TopCtrl1_UnknownEvent_16()
  loc_12CA5DE:     End If
  loc_12CA5DE:     Exit Sub
  loc_12CA5DF:   End If
  loc_12CA5F4:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_12CA5FD:     Proc_6_75_E5335C(Shift, arg_14, CInt(var_AC), CInt((var_B8 + var_BC)))
  loc_12CA602:   End If
  loc_12CA615:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_12CA61E:     Proc_6_76_E533C8(Shift, arg_14, CInt(var_C4))
  loc_12CA623:   End If
  loc_12CA623: End If
  loc_12CA623: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '11C3608
  'Data Table: 4CD140
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  loc_11C31AE: Proc_6_133_E7FB08(var_94)
  loc_11C31B7: arg_10 = CInt(var_94)
  loc_11C31C0: Proc_6_58_E06050(arg_10, arg_10)
  loc_11C31C8: var_96 = KeyAscii
  loc_11C31D3: If (var_96 = CInt(2)) Then
  loc_11C31F2:   If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_11C3204:     var_A0 = "Name"
  loc_11C321F:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_60, arg_10)
  loc_11C3251:     Proc_6_138_106E830(Me.DGLedgerAc, global_60, KeyAscii, Me.FGPoint)
  loc_11C325F:   End If
  loc_11C3262: Else
  loc_11C326A:   If (var_96 = CInt(3)) Then
  loc_11C3289:     If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_11C329B:       var_A0 = "Name"
  loc_11C32B6:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, arg_10, var_A0)
  loc_11C32D0:       Set var_A8 = Me.FGPoint
  loc_11C32E8:       Proc_6_138_106E830(Me.DGTaxStru, global_64, KeyAscii, var_A8, 0)
  loc_11C32F6:     End If
  loc_11C32F9:   Else
  loc_11C3301:     If (var_96 = CInt(4)) Then
  loc_11C330E:       Set var_9C = Me.Txt
  loc_11C3314:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_A0)
  loc_11C332F:       Proc_6_42_129B55C(var_A8, arg_10, 6, 2)
  loc_11C333E:     Else
  loc_11C3346:       If (var_96 = CInt(5)) Then
  loc_11C3353:         Set var_9C = Me.Txt
  loc_11C3359:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_11C3374:         Proc_6_42_129B55C(var_A8, arg_10, 6)
  loc_11C3383:       Else
  loc_11C338B:         If (var_96 = CInt(6)) Then
  loc_11C3398:           Set var_9C = Me.Txt
  loc_11C339E:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 2)
  loc_11C33B9:           Proc_6_42_129B55C(var_A8, arg_10, 6)
  loc_11C33C8:         Else
  loc_11C33D0:           If (var_96 = CInt(7)) Then
  loc_11C33FC:             If (Ucase(Chr(CLng(arg_10))) = "D") Then
  loc_11C340C:               Set var_9C = Me.Txt
  loc_11C3412:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Dr")
  loc_11C341A:               var_A8.Text = 2
  loc_11C3429:             Else
  loc_11C3452:               If (Ucase(Chr(CLng(arg_10))) = "C") Then
  loc_11C3462:                 Set var_9C = Me.Txt
  loc_11C3468:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Cr")
  loc_11C3470:                 var_A8.Text = var_96
  loc_11C347C:               End If
  loc_11C347C:             End If
  loc_11C347E:             arg_10 = 0
  loc_11C3484:           Else
  loc_11C348C:             If (var_96 = CInt(9)) Then
  loc_11C34B8:               If (Ucase(Chr(CLng(arg_10))) = "D") Then
  loc_11C34C8:                 Set var_9C = Me.Txt
  loc_11C34CE:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Detailed")
  loc_11C34D6:                 var_A8.Text = arg_10
  loc_11C34E5:               Else
  loc_11C350E:                 If (Ucase(Chr(CLng(arg_10))) = "S") Then
  loc_11C351E:                   Set var_9C = Me.Txt
  loc_11C3524:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8)
  loc_11C352C:                   var_A8.Text = "Summarize"
  loc_11C3538:                 End If
  loc_11C3538:               End If
  loc_11C353A:               arg_10 = 0
  loc_11C3540:             Else
  loc_11C3548:               If Not (var_96 = CInt(&HB)) Then
  loc_11C3553:                 If (var_96 = CInt(&HC)) Then
  loc_11C3556:                 End If
  loc_11C357F:                 If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_11C358F:                   Set var_9C = Me.Txt
  loc_11C3595:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes")
  loc_11C359D:                   var_A8.Text = arg_10
  loc_11C35AC:                 Else
  loc_11C35D5:                   If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_11C35E5:                     Set var_9C = Me.Txt
  loc_11C35EB:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8)
  loc_11C35F3:                     var_A8.Text = "No"
  loc_11C35FF:                   End If
  loc_11C35FF:                 End If
  loc_11C3601:                 arg_10 = 0
  loc_11C3604:               End If
  loc_11C3604:             End If
  loc_11C3604:           End If
  loc_11C3604:         End If
  loc_11C3604:       End If
  loc_11C3604:     End If
  loc_11C3604:   End If
  loc_11C3604: End If
  loc_11C3604: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F2FA98
  'Data Table: 4CD140
  Dim var_86 As Integer
  loc_F2F98F: var_86 = KeyCode
  loc_F2F99A: If (var_86 = CInt(0)) Then
  loc_F2F9B9:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F2F9C6:     var_A0 = "Name"
  loc_F2F9E1:     Proc_6_80_FF1F20(Me.Txt, KeyCode, global_56)
  loc_F2FA13:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_F2FA21:   End If
  loc_F2FA24: Else
  loc_F2FA2C:   If Not (var_86 = CInt(&HA)) Then
  loc_F2FA37:     If (var_86 = CInt(8)) Then
  loc_F2FA3A:     End If
  loc_F2FA55:     If (Me.FrmList.Visible = &HFF) Then
  loc_F2FA84:       Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F2FA94:     End If
  loc_F2FA94:   End If
  loc_F2FA94: End If
  loc_F2FA94: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4A544
  'Data Table: 4CD140
  loc_E4A522: Set var_88 = Me.Txt
  loc_E4A528: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4A536: Proc_6_73_E23294(var_8C)
  loc_E4A542: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '12FB818
  'Data Table: 4CD140
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_A0 As String
  Dim var_8C As Variant
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C4 As TextBox
  loc_12FB114: On Error Goto loc_12FB7D1
  loc_12FB11A: var_86 = Cancel
  loc_12FB125: If (var_86 = CInt(0)) Then
  loc_12FB12B:   Call Proc_71_35_108B930(var_88)
  loc_12FB136:   If (var_88 = &HFF) Then
  loc_12FB13B:     arg_10 = &HFF
  loc_12FB13E:     Exit Sub
  loc_12FB13F:   End If
  loc_12FB143:   Set var_8C = Me.TopCtrl1
  loc_12FB149:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(arg_10)
  loc_12FB151:   var_A0 = CStr(var_86)
  loc_12FB162:   If (var_A0 = "Add") Then
  loc_12FB172:     Me.LblSysYN.Caption = "User Defined"
  loc_12FB17A:   End If
  loc_12FB17D: Else
  loc_12FB185:   If (var_86 = CInt(1)) Then
  loc_12FB18B:     Call Proc_71_36_10B09A8(var_88)
  loc_12FB196:     If (var_88 = &HFF) Then
  loc_12FB19B:       arg_10 = &HFF
  loc_12FB19E:       Exit Sub
  loc_12FB19F:     End If
  loc_12FB1A2:   Else
  loc_12FB1AA:     If (var_86 = CInt(2)) Then
  loc_12FB1FB:       Set var_8C = Me.Txt
  loc_12FB201:       Call 0.Method_Txt_Validate0 (Cancel, var_AC, var_A0)
  loc_12FB209:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_12FB221:       If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_12FB224:         Exit Sub
  loc_12FB225:       End If
  loc_12FB260:       Set var_C0 = Me.Txt
  loc_12FB266:       Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12FB26E:       var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12FB2A1:       var_AC = Me.Fields.Item("Code")
  loc_12FB2BF:       Set var_C0 = Me.Txt
  loc_12FB2C5:       Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12FB2CD:       var_C4.Tag = CStr(var_AC.Value)
  loc_12FB2E6:     Else
  loc_12FB2EE:       If (var_86 = CInt(3)) Then
  loc_12FB33F:         Set var_8C = Me.Txt
  loc_12FB345:         Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12FB365:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_AC.Text = vbNullString)) Then
  loc_12FB375:           Set var_8C = Me.Txt
  loc_12FB37B:           Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12FB383:           var_AC.Tag = vbNullString
  loc_12FB38F:           Exit Sub
  loc_12FB390:         End If
  loc_12FB3CB:         Set var_C0 = Me.Txt
  loc_12FB3D1:         Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12FB3D9:         var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12FB40C:         var_AC = Me.Fields.Item("Code")
  loc_12FB42A:         Set var_C0 = Me.Txt
  loc_12FB430:         Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12FB438:         var_C4.Tag = CStr(var_AC.Value)
  loc_12FB451:       Else
  loc_12FB459:         If (var_86 = CInt(&HC)) Then
  loc_12FB466:           Set var_8C = Me.Txt
  loc_12FB46C:           Call 0.Method_Txt_Validate0 (Cancel)
  loc_12FB4A7:           If (Ucase(Left(CVar(var_AC), 1)) = "Y") Then
  loc_12FB4B7:             Set var_8C = Me.Txt
  loc_12FB4BD:             Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12FB4C5:             var_AC.Text = "Yes"
  loc_12FB4D4:           Else
  loc_12FB4E1:             Set var_8C = Me.Txt
  loc_12FB4E7:             Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12FB4EF:             var_AC.Text = "No"
  loc_12FB4FB:           End If
  loc_12FB4FE:         Else
  loc_12FB506:           If (var_86 = CInt(4)) Then
  loc_12FB514:             Set var_8C = Me.Txt
  loc_12FB51A:             Call 0.Method_Txt_Validate0 (CInt(4), var_AC)
  loc_12FB555:             Set var_C0 = Me.Txt
  loc_12FB55B:             Call 0.Method_Txt_Validate0 (CInt(4), var_C4, CStr(Format(CVar(var_AC), "0.00")))
  loc_12FB563:             var_C4.Text = 1
  loc_12FB580:           Else
  loc_12FB588:             If (var_86 = CInt(5)) Then
  loc_12FB596:               Set var_8C = Me.Txt
  loc_12FB59C:               Call 0.Method_Txt_Validate0 (CInt(5), var_AC)
  loc_12FB5D7:               Set var_C0 = Me.Txt
  loc_12FB5DD:               Call 0.Method_Txt_Validate0 (CInt(5), var_C4, CStr(Format(CVar(var_AC), "0.00")), 1)
  loc_12FB5E5:               var_C4.Text = 1
  loc_12FB602:             Else
  loc_12FB60A:               If (var_86 = CInt(6)) Then
  loc_12FB618:                 Set var_8C = Me.Txt
  loc_12FB61E:                 Call 0.Method_Txt_Validate0 (CInt(6), var_AC)
  loc_12FB64A:                 var_A0 = CStr(Format(CVar(var_AC), "0.00"))
  loc_12FB659:                 Set var_C0 = Me.Txt
  loc_12FB65F:                 Call 0.Method_Txt_Validate0 (CInt(6), var_C4, var_A0, 1)
  loc_12FB667:                 var_C4.Text = 1
  loc_12FB684:               Else
  loc_12FB68C:                 If Not (var_86 = CInt(&HA)) Then
  loc_12FB697:                   If (var_86 = CInt(8)) Then
  loc_12FB69A:                   End If
  loc_12FB6A7:                   Set var_8C = Me.Txt
  loc_12FB6AD:                   Call 0.Method_Txt_Validate0 (Cancel, var_AC, var_A0)
  loc_12FB6B5:                   1 = var_AC.Text
  loc_12FB6CC:                   If (var_A0 <> vbNullString) Then
  loc_12FB6E7:                     Set var_AC = Me.ListView.SelectedItem
  loc_12FB6ED:                     var_A0 = var_AC.Text
  loc_12FB6FF:                     Set var_C0 = Me.Txt
  loc_12FB705:                     Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12FB70D:                     var_C4.Text = var_A0
  loc_12FB723:                   End If
  loc_12FB726:                 Else
  loc_12FB72E:                   If (var_86 = CInt(7)) Then
  loc_12FB73B:                     Set var_8C = Me.Txt
  loc_12FB741:                     Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12FB760:                     var_E4 = Ucase(Left(CVar(var_AC), 1))
  loc_12FB77C:                     If (var_E4 = "D") Then
  loc_12FB78C:                       Set var_8C = Me.Txt
  loc_12FB792:                       Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12FB79A:                       var_AC.Text = "Dr"
  loc_12FB7A9:                     Else
  loc_12FB7B6:                       Set var_8C = Me.Txt
  loc_12FB7BC:                       Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12FB7C4:                       var_AC.Text = "Cr"
  loc_12FB7D0:                     End If
  loc_12FB7D0:                   End If
  loc_12FB7D0:                 End If
  loc_12FB7D0:               End If
  loc_12FB7D0:             End If
  loc_12FB7D0:           End If
  loc_12FB7D0:         End If
  loc_12FB7D0:       End If
  loc_12FB7D0:     End If
  loc_12FB7D0:   End If
  loc_12FB7D0: End If
  loc_12FB7D0: Exit Sub
  loc_12FB7D1: ' Referenced from: 12FB114
  loc_12FB7D9: Set var_8C = Err()
  loc_12FB7DF: Call 0.Method_arg_2C (var_A0)
  loc_12FB800: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_F4)
  loc_12FB813: Exit Sub
  loc_12FB814: Exit Sub
End Sub

Private Sub Form_Load() '1091230
  'Data Table: 4CD140
  Dim var_8C As Label
  Dim var_90 As String
  Dim var_94 As String
  Dim unk_4CD153 As Connection15
  Dim var_B4 As Variant
  loc_1090F88: On Error Goto loc_10911EB
  loc_1090F9A: Me.LblUser.Left = CDbl(13500)
  loc_1090FB1: Me.LblUser.Top = CDbl(7800)
  loc_1090FC8: Me.LblLDt.Top = CDbl(8160)
  loc_1090FD9: Set var_8C = Me.LblLDt
  loc_1090FDF: var_8C.Left = CDbl(13500)
  loc_1090FEE: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1090FF3: Call Proc_71_38_100931C()
  loc_1091013: var_94 = "SELECT Code,Name FROM RevMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  AND FlagAMR='Detail' and FLAGTYPE='FOM' ORDER BY Name"
  loc_109101C: unk_4CD153.Execute var_94, var_B4, -1
  loc_109104B: CVarUnk
  loc_1091050: VerifyVarObj
  loc_109105C: LateIdStAd
  loc_1091085: var_94 = "SELECT SubCode as Code,Name FROM SubGroup WHERE ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name"
  loc_109108E: unk_4CD153.Execute var_94, var_B4, -1
  loc_10910BD: CVarUnk
  loc_10910C2: VerifyVarObj
  loc_10910CE: LateIdStAd
  loc_1091100: unk_4CD153.Execute "SELECT distinct Code,Name FROM TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_109112F: CVarUnk
  loc_1091134: VerifyVarObj
  loc_1091140: LateIdStAd
  loc_1091162: var_90 = "SELECT distinct R.*,R.Code as SearchCode,S.SubCode as LedgerCode ,S.Name as LedgerName,T.Code as TaxCode,T.Name as TaxName FROM ((RevMast R Left Join TaxStru T on T.Code=R.TaxStru) Left join Subgroup S on S.SubCode=R.ACCode) where (R.LOGSITE_CODE='" & MemVar_1F95078
  loc_1091172: unk_4CD153.Execute var_90 & "' or R.LOGSITE_CODE='HO') AND FlagAMR='Detail' and FlagType='FOM'", var_B4, -1
  loc_10911A4: Set var_8C = Me
  loc_10911AD: var_90 = "INI"
  loc_10911BB: Call Proc_71_32_F332D4(Proc_5_1_100EC1C(var_90, var_8C, Me.DGTaxStru, var_8C, var_8C, Me.DGLedgerAc, var_8C), var_8C, Me.DGHelp, var_8C)
  loc_10911CF: Call 0.Method_arg_160 (var_8C, var_8C)
  loc_10911DD: Call 0.Method_arg_164 (var_8C, var_8C)
  loc_10911E5: Call Proc_71_34_13FE768(var_8C)
  loc_10911EA: Exit Sub
  loc_10911EB: ' Referenced from: 1090F88
  loc_10911F3: Set var_8C = Err()
  loc_10911F9: Call 0.Method_arg_2C (var_90)
  loc_109121A: MsgBox(CVar(var_90), &H40, "Information", var_EC, var_10C)
  loc_109122D: Exit Sub
  loc_109122E: Exit Sub
End Sub

Private Sub Form_Resize() 'ED77B8
  'Data Table: 4CD140
  Dim var_8C As Label
  loc_ED7716: Call 0.Method_arg_50 (var_88)
  loc_ED7728: Me.LblFormCaption.Caption = var_88
  loc_ED7741: Me.LblFormCaption.Left = CDbl(0)
  loc_ED774D: Set var_A0 = Me.TopCtrl1
  loc_ED7753: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010006()
  loc_ED7760: Set var_8C = Me.TopCtrl1
  loc_ED7766: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010004()
  loc_ED7780: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED779B: Call 0.Method_arg_100 (var_B8)
  loc_ED77AD: Me.LblFormCaption.Width = var_B8
  loc_ED77B5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5FAC8
  'Data Table: 4CD140
  loc_E5FA87: Set global_52 = Nothing
  loc_E5FA99: Set global_56 = Nothing
  loc_E5FAAB: Set global_60 = Nothing
  loc_E5FABD: Set global_64 = Nothing
  loc_E5FAC4: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E29E60
  'Data Table: 4CD140
  loc_E29E38: On Error Goto loc_E29E57
  loc_E29E4F: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E29E57: ' Referenced from: E29E38
  loc_E29E57: Proc_6_60_E63754(Shift)
  loc_E29E5C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F54CB4
  'Data Table: 4CD140
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_F54B98: On Error Goto loc_F54C6E
  loc_F54BA8: Me.LblUser.Caption = vbNullString
  loc_F54BBD: Me.LblLDt.Caption = vbNullString
  loc_F54BC5: Call Proc_71_33_E7C434()
  loc_F54BDF: var_8C = "ADD"
  loc_F54BED: Call Proc_71_32_F332D4(Proc_5_1_100EC1C(var_8C, Me))
  loc_F54C06: Set var_88 = Me.Txt
  loc_F54C0C: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HC), var_94)
  loc_F54C14: var_94.Text = "No"
  loc_F54C2E: Set var_88 = Me.Txt
  loc_F54C34: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HB), var_94)
  loc_F54C3C: var_94.Text = "Yes"
  loc_F54C53: Set var_88 = Me.Txt
  loc_F54C59: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_F54C61: var_94.SetFocus
  loc_F54C6D: Exit Sub
  loc_F54C6E: ' Referenced from: F54B98
  loc_F54C76: Set var_88 = Err()
  loc_F54C7C: Call 0.Method_arg_2C (var_8C)
  loc_F54C9D: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_F54CB0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBC9AC
  'Data Table: 4CD140
  loc_EBC918: On Error Goto loc_EBC9A3
  loc_EBC952: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBC961:   Set var_110 = Me
  loc_EBC978:   Call Proc_71_32_F332D4(Proc_5_1_100EC1C("INI", var_110))
  loc_EBC983:   Call Proc_71_34_13FE768(global_52)
  loc_EBC98B: Else
  loc_EBC991:   Call 0.Method_arg_1E8 (var_110)
  loc_EBC999:   Call var_110.SetFocus
  loc_EBC9A2: End If
  loc_EBC9A2: Exit Sub
  loc_EBC9A3: ' Referenced from: EBC918
  loc_EBC9A3: Proc_6_60_E63754()
  loc_EBC9A8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1229FD4
  'Data Table: 4CD140
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_B8 As String
  Dim unk_4CD153 As Connection15
  Dim var_9C As Recordset15
  Dim var_96 As Integer
  loc_1229AF4: On Error Goto loc_1229F7C
  loc_1229B05: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_1229B08:   Exit Sub
  loc_1229B09: End If
  loc_1229B3B: var_D8 = "PayCharge"
  loc_1229B83: If (Proc_6_108_101061C(MemVar_1F95044, "paycharge", "PayCode", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_1229B86:   Exit Sub
  loc_1229B87: End If
  loc_1229BB9: var_D8 = "Leader Revenue"
  loc_1229C01: If (Proc_6_108_101061C(MemVar_1F95044, "LeaderRev", "RevenueCode", CStr(Me.Fields.Item("Code").Value), 0) = 0) Then
  loc_1229C04:   Exit Sub
  loc_1229C05: End If
  loc_1229C44: var_FC = "select SysYN From RevMast Where Code='" & Me.Fields.Item("Code").Value 
  loc_1229C4D: var_11C = var_FC & "'" 
  loc_1229C5B: unk_4CD153.Execute CStr(var_11C), var_13C, -1
  loc_1229C66: Set var_9C = var_140
  loc_1229C86: var_D4 = var_9C.RecordCount
  loc_1229C94: If (var_D4 > 0) Then
  loc_1229CD3:   If (var_9C.Fields.Item("SysYN").Value = "Y") Then
  loc_1229CEF:     MsgBox("SYSTEM ENTRY CAN'T BE DELETED", 0, var_FC, var_11C, var_13C)
  loc_1229CFF:     Exit Sub
  loc_1229D00:   End If
  loc_1229D00: End If
  loc_1229D37: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_11C, var_13C) = 6) Then
  loc_1229D3C:   var_96 = 0
  loc_1229D48:   unk_4CD153.BeginTrans var_D4
  loc_1229D4F:   var_96 = &HFF
  loc_1229D63:   var_94 = Me.Bookmark 'Variant
  loc_1229DAF:   var_11C = "Delete From RevMast Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_1229DBD:   unk_4CD153.Execute CStr(var_11C), var_13C, -1
  loc_1229E08:   var_16C = 0
  loc_1229E1B:   var_164 = 0
  loc_1229E26:   var_160 = 0
  loc_1229E39:   var_158 = 0
  loc_1229E44:   var_154 = 0
  loc_1229E57:   var_14C = 0
  loc_1229E97:   var_B8 = "RevMast"
  loc_1229EA0:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B8, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_1229ECE:   unk_4CD153.CommitTrans
  loc_1229ED5:   var_96 = 0
  loc_1229EE3:   Me.Requery -1
  loc_1229EF3:   Me.Requery -1
  loc_1229F13:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1229F20:     Me.Bookmark = var_94
  loc_1229F28:   Else
  loc_1229F3C:     If (Me.EOF = 0) Then
  loc_1229F45:       Me.MoveLast
  loc_1229F4A:     End If
  loc_1229F4A:   End If
  loc_1229F4A:   Call Proc_71_34_13FE768(var_96, var_14C, 0, var_154, var_158)
  loc_1229F6B:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_1229F73: End If
  loc_1229F78: Set var_9C = Nothing
  loc_1229F7B: Exit Sub
  loc_1229F7C: ' Referenced from: 1229AF4
  loc_1229F82: If (var_96 = &HFF) Then
  loc_1229F8B:   unk_4CD153.RollbackTrans
  loc_1229F90: End If
  loc_1229F98: Set var_A0 = Err()
  loc_1229F9E: Call 0.Method_arg_2C (var_B8, 0, var_160)
  loc_1229FBF: MsgBox(CVar(var_B8), &H30, " Deletion Error ", var_11C, var_13C)
  loc_1229FD2: Exit Sub
  loc_1229FD3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F63A4C
  'Data Table: 4CD140
  Dim var_88 As Label
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F63928: On Error Goto loc_F63A09
  loc_F63938: Me.LblUser.Caption = vbNullString
  loc_F6394D: Me.LblLDt.Caption = vbNullString
  loc_F63963: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_F63966:   Exit Sub
  loc_F63967: End If
  loc_F6397E: If (Me.RecordCount > 0) Then
  loc_F63996:   var_90 = "EDIT"
  loc_F639A4:   Call Proc_71_32_F332D4(Proc_5_1_100EC1C(var_90, Me))
  loc_F639BA:   Set var_88 = Me.Txt
  loc_F639C0:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F639C8:   var_98.SetFocus
  loc_F639D7: Else
  loc_F639F8:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F63A08: End If
  loc_F63A08: Exit Sub
  loc_F63A09: ' Referenced from: F63928
  loc_F63A11: Set var_88 = Err()
  loc_F63A17: Call 0.Method_arg_2C (var_90)
  loc_F63A38: MsgBox(CVar(var_90), &H30, " Editing Error ", var_F8, var_118)
  loc_F63A4B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16F6C
  'Data Table: 4CD140
  loc_E16F61: Me.Global.Unload Me
  loc_E16F69: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F23C48
  'Data Table: 4CD140
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  Dim arg_30FF As Variant
  loc_F23B48: On Error Goto loc_F23BE0
  loc_F23B54: var_88 = Me.RecordCount
  loc_F23B62: If (var_88 <= 0) Then
  loc_F23B6B:   var_B8 = "Information"
  loc_F23B86:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F23B96:   Exit Sub
  loc_F23B97: End If
  loc_F23B9E: var_10C = "Select RevMast.Code As SearchCode,RevMast.HSNCode,RevMast.Name FROM RevMast WHERE FlagAMR='Detail' and FLAGTYPE='FOM' And (RevMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_F23BA5: MemVar_1F950E4 = var_10C & "' or RevMast.LOGSITE_CODE='HO') Order by RevMast.Name"
  loc_F23BAF: var_10C = "1500,3000"
  loc_F23BB5: Proc_6_126_F1C850(var_10C)
  loc_F23BC3: MemVar_1F95120 = Me
  loc_F23BDA: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F23BDF: Exit Sub
  loc_F23BE0: ' Referenced from: F23B48
  loc_F23BE8: Set var_110 = Err()
  loc_F23BEE: Call 0.Method_arg_1C (var_88)
  loc_F23BFF: If (var_88 <> 0) Then
  loc_F23C0A:   Set var_110 = Err()
  loc_F23C10:   Call 0.Method_arg_2C (var_10C)
  loc_F23C31:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F23C44: End If
  loc_F23C44: Exit Sub
  loc_F23C45: arg_30FF = CVar(MemVar_1F950E4) 'Integer
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E30728
  'Data Table: 4CD140
  loc_E30718: Proc_5_0_1107AD0(&HFF, Me)
  loc_E30720: Call Proc_71_34_13FE768(global_52)
  loc_E30725: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E30608
  'Data Table: 4CD140
  loc_E305F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E30600: Call Proc_71_34_13FE768(global_52)
  loc_E30605: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E30668
  'Data Table: 4CD140
  loc_E30658: Proc_5_0_1107AD0(&HFF, Me)
  loc_E30660: Call Proc_71_34_13FE768(global_52)
  loc_E30665: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E306C8
  'Data Table: 4CD140
  loc_E306B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E306C0: Call Proc_71_34_13FE768(global_52)
  loc_E306C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10D7D80
  'Data Table: 4CD140
  Dim unk_4CD153 As Connection15
  Dim var_C4 As String
  Dim var_C8 As String
  Dim var_D0 As String
  Dim var_D8 As String
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_13E As Integer
  Dim var_BC As Variant
  Dim var_FC As Variant
  loc_10D7A9C: On Error Goto loc_10D7D36
  loc_10D7AB5: unk_4CD153.Execute "Select RevMast.Code As SearchCode,RevMast.Name FROM RevMast WHERE FlagAMR='Detail' and FLAGTYPE='FOM' Order by RevMast.Name", var_BC, -1
  loc_10D7AC0: Set var_88 = var_C0
  loc_10D7ADD: var_C4 = "Select RevMast.Name,RevMast.ShortName,cast(RevMast.Cost as Varchar(11)) as Cost,cast(RevMast.SaleRate as varchar(11)) as SaleRate,S.Name as AccName,T.Name as TaxName " & "FROM (RevMast"
  loc_10D7AF2: var_D0 = var_C4 & " left join SubGroup S on Revmast.ACCode=S.SubCode) " & " Left join TaxStru T on Revmast.Code=T.Code" & " where (RevMast.LOGSITE_CODE='"
  loc_10D7B00: var_D8 = var_D0 & MemVar_1F95078 & "' or RevMast.LOGSITE_CODE='HO') and isnull(FLAGTYPE,'')='FOM' and isnull(FieldType,'')='C' Order by RevMast.Name"
  loc_10D7B09: unk_4CD153.Execute var_D8, var_BC, -1
  loc_10D7B14: Set var_88 = var_C0
  loc_10D7B32: var_DC = var_88.RecordCount
  loc_10D7B40: If (var_DC = 0) Then
  loc_10D7B5C:   MsgBox("No Record Present For Printing", 0, var_FC, var_11C, var_13C)
  loc_10D7B6C:   Exit Sub
  loc_10D7B6D: End If
  loc_10D7B7C: var_C8 = MemVar_1F950B4 & "\RevMast.ttx"
  loc_10D7B83: Set var_C0 = var_88 
  loc_10D7B8F: var_13E = CreateFieldDefFile(var_C0, var_C8, &HFF)
  loc_10D7B99: Set var_88 = var_C0
  loc_10D7B9F: var_AC = CVar(var_13E) 'Integer
  loc_10D7BA2: var_98 = var_AC 'Variant
  loc_10D7BBE: var_C4 = MemVar_1F950B4 & "\RevMast.RPT"
  loc_10D7BC7: Call 0.Method_arg_1C (var_C4, var_AC, var_C0)
  loc_10D7BD2: MemVar_1F951E8 = var_C0
  loc_10D7BED: Call 0.Method_arg_90 (var_C0, var_DC, var_9A, 1)
  loc_10D7BF5: Call 0.Method_arg_24 (var_13E, var_C0)
  loc_10D7C01: For var_142 =  To CInt(var_DC): var_C0 = var_142 'Integer
  loc_10D7C1A:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_10D7C22:   Call 0.Method_arg_20 (var_148)
  loc_10D7C2A:   Call 0.Method_arg_30 (var_C4)
  loc_10D7C70:   If (Ucase(CVar(var_C4)) = Ucase("Title")) Then
  loc_10D7C86:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_10D7C8E:     Call 0.Method_arg_20 (var_148)
  loc_10D7C96:     Call 0.Method_arg_38 ("'Revenue Charge Master'")
  loc_10D7CA2:   End If
  loc_10D7CA5: Next var_142 'Integer
  loc_10D7CC3: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_10D7CCB: Call 0.Method_arg_2C (var_EC)
  loc_10D7CD9: Call 0.Method_arg_150 (var_10C)
  loc_10D7CE4: Call 0.Method_arg_50 (var_C4)
  loc_10D7CEE: Set var_148 = Nothing
  loc_10D7D08: Set var_C0 = MemVar_1F951E8 
  loc_10D7D14: Proc_6_99_1484404(var_C0, 0, var_C4)
  loc_10D7D1F: MemVar_1F951E8 = var_C0
  loc_10D7D32: Set var_88 = Nothing
  loc_10D7D35: Exit Sub
  loc_10D7D36: ' Referenced from: 10D7A9C
  loc_10D7D3E: Set var_C0 = Err()
  loc_10D7D44: Call 0.Method_arg_2C (var_C4, &HFF)
  loc_10D7D4F: Call 0.Method_arg_50 (var_C8)
  loc_10D7D6B: MsgBox(CVar(var_C4), &H10, CVar(var_C8), var_11C, var_13C)
  loc_10D7D7E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E44E44
  'Data Table: 4CD140
  Dim Me As Recordset15
  loc_E44E1B: Me.Requery -1
  loc_E44E2B: Me.Requery -1
  loc_E44E3B: Me.Requery -1
  loc_E44E40: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14B424C
  'Data Table: 4CD140
  Dim var_A0 As String
  Dim var_D8 As Variant
  Dim unk_4CD153 As Connection15
  Dim var_94 As Variant
  Dim var_98 As Variant
  Dim var_9C As Field20
  Dim var_FC As Variant
  Dim var_C8 As Variant
  Dim var_10C As Variant
  Dim Me As Recordset15
  Dim var_118 As TextBox
  Dim var_12C As TextBox
  Dim var_140 As TextBox
  Dim var_154 As TextBox
  Dim var_3E0 As Double
  Dim var_16C As TextBox
  Dim var_3E8 As Double
  Dim var_18C As TextBox
  Dim var_164 As String
  Dim var_1A0 As String
  Dim var_1C8 As Variant
  Dim var_2F0 As Variant
  Dim var_390 As Variant
  Dim var_B4 As Variant
  Dim var_1F0 As TextBox
  Dim var_248 As TextBox
  Dim var_3D4 As Variant
  Dim var_2A0 As TextBox
  Dim var_2F8 As TextBox
  Dim var_350 As TextBox
  Dim var_2C0 As Variant
  Dim var_318 As Variant
  Dim var_380 As Variant
  Dim var_500 As Variant
  Dim var_5D4 As Variant
  loc_14B3704: On Error Goto loc_14B41F7
  loc_14B370B: var_86 = CByte(0) 'Byte
  loc_14B371A: Set var_94 = Me.Txt
  loc_14B3720: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_14B3749: If (Proc_183_19_E8E68C(var_98, "Name") = 0) Then
  loc_14B3753:   Call Txt_GotFocus(CInt(0))
  loc_14B3758:   Exit Sub
  loc_14B3759: End If
  loc_14B3764: Set var_94 = Me.Txt
  loc_14B376A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98)
  loc_14B3793: If (Proc_183_19_E8E68C(var_98, "Short Name") = 0) Then
  loc_14B379D:   Call Txt_GotFocus(CInt(1))
  loc_14B37A2:   Exit Sub
  loc_14B37A3: End If
  loc_14B37AE: Set var_94 = Me.Txt
  loc_14B37B4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98)
  loc_14B37DD: If (Proc_183_19_E8E68C(var_98, "Ledger A/C") = 0) Then
  loc_14B37E7:   Call Txt_GotFocus(CInt(2))
  loc_14B37EC:   Exit Sub
  loc_14B37ED: End If
  loc_14B37F1: Set var_94 = Me.TopCtrl1
  loc_14B37F7: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_98)
  loc_14B3810: If (CStr() = "Add") Then
  loc_14B3819:   var_D8 = 0
  loc_14B3836:   var_A0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From RevMast Where SITE_CODE='" & MemVar_1F95070
  loc_14B3846:   unk_4CD153.Execute CStr() & "' AND IsNumeric(substring(Code,3,4))=1", var_B4, -1
  loc_14B384E:   var_94 = var_94.Fields
  loc_14B3856:   var_D8 = var_98.Item(var_98)
  loc_14B385E:   var_9C = var_9C.Value
  loc_14B3897:   var_FC = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_14B38BD:   var_E8 = Format(CStr(var_E8), "0000")
  loc_14B38C5:   var_10C = (1 + var_E8)
  loc_14B38D0:   global_72 = CStr(var_10C)
  loc_14B38E5: Else
  loc_14B3902:   var_98 = Me.Fields.Item("Code")
  loc_14B3919:   global_72 = CStr(var_98.Value)
  loc_14B392A: End If
  loc_14B3933: unk_4CD153.BeginTrans var_110
  loc_14B393C: var_86 = CByte(1) 'Byte
  loc_14B3944: Set var_94 = Me.TopCtrl1
  loc_14B394A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(1)
  loc_14B3963: If (CStr(var_FC) = "Add") Then
  loc_14B3974:   Set var_94 = Me.Txt
  loc_14B397A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98)
  loc_14B3995:   Set var_9C = Me.Txt
  loc_14B399B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_118)
  loc_14B39B6:   Set var_128 = Me.Txt
  loc_14B39BC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_12C)
  loc_14B39D7:   Set var_13C = Me.Txt
  loc_14B39DD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_140)
  loc_14B39F8:   Set var_150 = Me.Txt
  loc_14B39FE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_154)
  loc_14B3A13:   var_3E0 = Val(var_154.Text)
  loc_14B3A24:   Set var_168 = Me.Txt
  loc_14B3A2A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_16C, var_170)
  loc_14B3A3F:   var_3E8 = Val(var_170)
  loc_14B3A50:   Set var_188 = Me.Txt
  loc_14B3A56:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_18C, var_190)
  loc_14B3A71:   Proc_6_7_F26918(var_E8, Date)
  loc_14B3A81:   Set var_1EC = Me.Txt
  loc_14B3A87:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_1F0)
  loc_14B3AA6:   Set var_244 = Me.Txt
  loc_14B3AAC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_248)
  loc_14B3ACB:   Set var_29C = Me.Txt
  loc_14B3AD1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_2A0)
  loc_14B3AE0:   Proc_6_17_EAAE40(var_2C0, CVar(var_2A0))
  loc_14B3AF0:   Set var_2F4 = Me.Txt
  loc_14B3AF6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_2F8)
  loc_14B3B05:   Proc_6_17_EAAE40(var_318, CVar(var_2F8))
  loc_14B3B15:   Set var_34C = Me.Txt
  loc_14B3B1B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_350)
  loc_14B3B35:   Proc_6_17_EAAE40(var_380, Trim(CVar(var_350)))
  loc_14B3B51:   var_A0 = "Insert Into RevMast(Code,Name,ShortName,ACCode,TaxStru,SaleRate,Cost,Site_Code,SysYN,Type,AppMode,FlagType,FlagAMR,DeskCode,U_Name,U_EntDt,U_AE,FIELDTYPE,logSite_Code,ACPosting,Nature,Active,TaxInc,HSNCode) Values('" & global_72
  loc_14B3B9C:   var_164 = var_A0 & "','" & var_98.Text & "','" & var_118.Text & "','" & var_12C.Tag & "','" & var_140.Tag & "'," & CStr(var_16C.Text)
  loc_14B3BD9:   var_1A0 = var_164 & "," & CStr(var_18C.Text) & ",'" & MemVar_1F95070 & "','N','" & var_190 & "','Percent','FOM','Detail','" & MemVar_1F95078
  loc_14B3C07:   var_1C8 = CVar(var_1A0 & "FOM','" & MemVar_1F950C8 & "',") & var_E8 & ",'A','C','" & CVar(MemVar_1F95078) 
  loc_14B3C46:   var_2F0 = var_1C8 & "','" & CVar(Proc_6_38_E69628(CVar(var_1F0))) & "','" & CVar(Proc_6_38_E69628(CVar(var_248))) & "'," & var_2C0 & "," 
  loc_14B3C74:   unk_4CD153.Execute CStr(var_2F0 & var_318 & "," & var_380 & ")"), var_3D4, -1
  loc_14B3D29: Else
  loc_14B3D34:   Set var_94 = Me.Txt
  loc_14B3D3A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_98)
  loc_14B3D49:   Proc_6_17_EAAE40(var_E8, CVar(var_98))
  loc_14B3D59:   Set var_9C = Me.Txt
  loc_14B3D5F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_118)
  loc_14B3D6E:   Proc_6_17_EAAE40(var_1C8, CVar(var_118))
  loc_14B3D81:   Set var_128 = Me.Txt
  loc_14B3D87:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_12C, var_A0)
  loc_14B3D8F:   var_3D8 = var_12C.Text
  loc_14B3DA2:   Set var_13C = Me.Txt
  loc_14B3DA8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_140)
  loc_14B3DC3:   Set var_150 = Me.Txt
  loc_14B3DC9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_154)
  loc_14B3DE1:   Set var_168 = Me.Txt
  loc_14B3DE7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_16C)
  loc_14B3E06:   Set var_188 = Me.Txt
  loc_14B3E0C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_18C)
  loc_14B3E2E:   Set var_1EC = Me.Txt
  loc_14B3E34:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1F0)
  loc_14B3E4F:   Set var_244 = Me.Txt
  loc_14B3E55:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_248)
  loc_14B3E71:   Proc_6_39_E7D3A0(var_410, CVar(Val(var_248.Text)))
  loc_14B3E84:   Set var_29C = Me.Txt
  loc_14B3E8A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_2A0)
  loc_14B3EA6:   Proc_6_39_E7D3A0(var_470, CVar(Val(var_2A0.Text)))
  loc_14B3EB9:   Set var_2F4 = Me.Txt
  loc_14B3EBF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2F8)
  loc_14B3EDA:   Set var_34C = Me.Txt
  loc_14B3EE0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_350)
  loc_14B3EF8:   Set var_3D8 = Me.Txt
  loc_14B3EFE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_524)
  loc_14B3F20:   Proc_183_7_EB17D4(var_614, Date)
  loc_14B3F32:   var_C8 = "UPDATE RevMast SET Active="
  loc_14B3F3A:   var_FC = var_C8 & var_E8 
  loc_14B3F43:   var_10C = var_FC & ",TaxInc=" 
  loc_14B3F8C:   var_2C0 = var_10C & var_1C8 & ",Name='" & CVar(var_A0) & "',ShortName='" & CVar(var_140.Text) & "',ACCode='" & CVar(var_154.Tag) & "',ACPosting='" 
  loc_14B3FBC:   var_390 = var_2C0 & CVar(Proc_6_38_E69628(CVar(var_16C))) & "',Nature='" & CVar(Proc_6_38_E69628(CVar(var_18C))) & "',TaxStru='" & CVar(var_1F0.Tag) 
  loc_14B4002:   var_500 = var_390 & "',SaleRate=" & var_410 & ",Cost=" & var_470 & ",Type='" & CVar(var_2F8.Text) & "',AppMode='" & CVar(var_350.Text) 
  loc_14B4038:   var_5D4 = var_500 & "',HSNCode='" & Trim(CVar(var_524)) & "',SITE_CODE='" & CVar(MemVar_1F95070) & "',U_name='" & CVar(MemVar_1F950C8) 
  loc_14B4075:   unk_4CD153.Execute CStr(var_5D4 & "',U_EntDt=" & var_614 & ",U_AE='E',FIELDTYPE='C' WHERE Code='" & CVar(global_72) & "'"), var_6A4, -1
  loc_14B412B: End If
  loc_14B4131: unk_4CD153.CommitTrans
  loc_14B413A: var_86 = CByte(0) 'Byte
  loc_14B413E: Call Proc_71_37_F1FCF8(var_6A8)
  loc_14B414E: Me.Requery -1
  loc_14B415E: Me.Requery -1
  loc_14B418B: Me.Find "Code='" & global_72 & "'", 0, 1
  loc_14B419B: Set var_94 = Me.TopCtrl1
  loc_14B41A1: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_C8)
  loc_14B41BA: If (CStr(var_E8) = "Add") Then
  loc_14B41BD:   Call TopCtrl1_UnknownEvent_A()
  loc_14B41C2:   Exit Sub
  loc_14B41C3: End If
  loc_14B41D8: var_A0 = "INI"
  loc_14B41E6: Call Proc_71_32_F332D4(Proc_5_1_100EC1C(var_A0, Me))
  loc_14B41F1: Call Proc_71_34_13FE768(global_52)
  loc_14B41F6: Exit Sub
  loc_14B41F7: ' Referenced from: 14B3704
  loc_14B4200: If (CInt(var_86) = 1) Then
  loc_14B4209:   unk_4CD153.RollbackTrans
  loc_14B420E: End If
  loc_14B4216: Set var_94 = Err()
  loc_14B421C: Call 0.Method_arg_2C (var_A0)
  loc_14B4235: MsgBox(CVar(var_A0), &H10, var_E8, var_FC, var_10C)
  loc_14B4248: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F54B44
  'Data Table: 4CD140
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F54A66: If (Me.ListView.ListItems.Count > 0) Then
  loc_F54A6D:   Set var_A8 = Me.ListView
  loc_F54AB7:   Set var_C0 = Me.Txt
  loc_F54ABD:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F54AC5:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F54AE5: End If
  loc_F54AF1: Me.FrmList.Visible = False
  loc_F54B21: Set var_9C = Me.Txt
  loc_F54B27: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F54B2F: var_A8.SetFocus
  loc_F54B43: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_9 'F4F294
  'Data Table: 4CD140
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4F18B: Me.DGTaxStru.Visible = False
  loc_F4F1AA: If (Me.RecordCount > 0) Then
  loc_F4F1E9:   Set var_B4 = Me.Txt
  loc_F4F1EF:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(3), var_B8)
  loc_F4F1F7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4F22A:   var_B0 = Me.Fields.Item("Name")
  loc_F4F249:   Set var_B4 = Me.Txt
  loc_F4F24F:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(3), var_B8)
  loc_F4F257:   var_B8.Text = CStr(var_B0.Value)
  loc_F4F26D: End If
  loc_F4F278: Set var_A8 = Me.Txt
  loc_F4F27E: Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(3))
  loc_F4F286: var_B0.SetFocus
  loc_F4F292: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_1F 'EA9228
  'Data Table: 4CD140
  Dim var_A8 As Variant
  loc_EA91A8: Set var_88 = Me.DGTaxStru
  loc_EA91D2: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA91DA: Set var_BC = Me.DGTaxStru
  loc_EA9216: Proc_6_138_106E830(Me.DGTaxStru, global_64, CInt(3), Me.FGPoint)
  loc_EA9224: Exit Sub
  loc_EA9225: DGTaxStru.DispID_1B = var_A8
End Sub

Private Sub FGPoint_UnknownEvent_9 'E84780
  'Data Table: 4CD140
  loc_E8472C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E8472F:   Call DGHelp_UnknownEvent_9()
  loc_E84734: End If
  loc_E84750: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_E84753:   Call DGTaxStru_UnknownEvent_9()
  loc_E84758: End If
  loc_E84774: If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_E84777:   Call DGLedgerAc_UnknownEvent_9()
  loc_E8477C: End If
  loc_E8477C: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC1354
  'Data Table: 4CD140
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC12CA: On Error Goto loc_EC130F
  loc_EC12D3: Me.MoveFirst
  loc_EC12ED: var_8C = "code='" & MyValue
  loc_EC12FD: Me.Find var_8C & "'", 0, 1
  loc_EC1309: Call Proc_71_34_13FE768(var_A0)
  loc_EC130E: Exit Sub
  loc_EC130F: ' Referenced from: EC12CA
  loc_EC1317: Set var_A4 = Err()
  loc_EC131D: Call 0.Method_arg_2C (var_8C)
  loc_EC133E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC1351: Exit Sub
  loc_EC1352: Exit Sub
End Sub

Public Sub Proc_71_32_F332D4(arg_C) 'F332D4
  'Data Table: 4CD140
  Dim var_98 As TextBox
  loc_F331C6: Set var_8C = Me.Txt
  loc_F331CC: Call 0.Method_Proc_71_32_F332D4C (var_8E, var_86)
  loc_F331DC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F331F2:   Set var_8C = Me.Txt
  loc_F331F8:   Call 0.Method_Proc_71_32_F332D40 (CInt(var_86), var_98)
  loc_F33200:   var_98.Enabled = arg_C
  loc_F3320F: Next var_92 'Byte
  loc_F33223: Set var_8C = Me.Txt
  loc_F33229: Call 0.Method_Proc_71_32_F332D40 (CInt(8), var_98)
  loc_F33248: If (var_98.Text = vbNullString) Then
  loc_F33259:   Set var_8C = Me.Txt
  loc_F3325F:   Call 0.Method_Proc_71_32_F332D40 (CInt(8), var_98)
  loc_F33267:   var_98.Text = "Amount"
  loc_F33273: End If
  loc_F33281: Set var_8C = Me.Txt
  loc_F33287: Call 0.Method_Proc_71_32_F332D40 (CInt(7), var_98)
  loc_F332A6: If (var_98.Text = vbNullString) Then
  loc_F332B7:   Set var_8C = Me.Txt
  loc_F332BD:   Call 0.Method_Proc_71_32_F332D40 (CInt(7), var_98)
  loc_F332C5:   var_98.Text = "Cr"
  loc_F332D1: End If
  loc_F332D1: Exit Sub
End Sub

Public Sub Proc_71_33_E7C434
  'Data Table: 4CD140
  Dim var_98 As TextBox
  loc_E7C3E2: Set var_8C = Me.Txt
  loc_E7C3E8: Call 0.Method_Proc_71_33_E7C434C (var_8E, var_86)
  loc_E7C3F8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7C40E:   Set var_8C = Me.Txt
  loc_E7C414:   Call 0.Method_Proc_71_33_E7C4340 (CInt(var_86), var_98)
  loc_E7C41C:   var_98.Text = vbNullString
  loc_E7C42B: Next var_92 'Byte
  loc_E7C431: Exit Sub
End Sub

Public Sub Proc_71_34_13FE768
  'Data Table: 4CD140
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_4CD153 As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Variant
  Dim var_11C As TextBox
  loc_13FDD64: On Error Goto loc_13FE723
  loc_13FDDBD: unk_4CD153.Execute CStr("Select U_Name,U_AE,U_EntDt From revmast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_13FDDC8: Set var_88 = var_118
  loc_13FDE1C: var_118 = var_88.Fields
  loc_13FDE85: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_13FDECA: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_13FDF44: var_11C = var_88.Fields.Item("U_AE")
  loc_13FDFA5: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_11C)) = "E"), "Last Update : ", "entdt : "))
  loc_13FDFEA: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_13FE028: Proc_183_45_E5CCA8(global_52)
  loc_13FE044: If (Me.RecordCount <= 0) Then
  loc_13FE047:   Call Proc_71_33_E7C434()
  loc_13FE04F: Else
  loc_13FE083:   global_72 = CStr(Me.Fields.Item("Name").Value)
  loc_13FE0D0:   Set var_118 = Me.Txt
  loc_13FE0D6:   Call 0.Method_Proc_71_34_13FE7680 (CInt(0), var_11C)
  loc_13FE0DE:   var_11C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13FE130:   Set var_118 = Me.Txt
  loc_13FE136:   Call 0.Method_Proc_71_34_13FE7680 (CInt(0), var_11C)
  loc_13FE13E:   var_11C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_13FE190:   Set var_118 = Me.Txt
  loc_13FE196:   Call 0.Method_Proc_71_34_13FE7680 (CInt(1), var_11C)
  loc_13FE19E:   var_11C.Text = CStr(Me.Fields.Item("ShortName").Value)
  loc_13FE1ED:   Set var_118 = Me.Txt
  loc_13FE1F3:   Call 0.Method_Proc_71_34_13FE7680 (CInt(2), var_11C)
  loc_13FE1FB:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("LedgerName")))
  loc_13FE248:   Set var_118 = Me.Txt
  loc_13FE24E:   Call 0.Method_Proc_71_34_13FE7680 (CInt(2), var_11C)
  loc_13FE256:   var_11C.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("LedgerCode")))
  loc_13FE2A3:   Set var_118 = Me.Txt
  loc_13FE2A9:   Call 0.Method_Proc_71_34_13FE7680 (CInt(3), var_11C)
  loc_13FE2B1:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxName")))
  loc_13FE2FE:   Set var_118 = Me.Txt
  loc_13FE304:   Call 0.Method_Proc_71_34_13FE7680 (CInt(3), var_11C)
  loc_13FE30C:   var_11C.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxCode")))
  loc_13FE359:   Set var_118 = Me.Txt
  loc_13FE35F:   Call 0.Method_Proc_71_34_13FE7680 (CInt(&HC), var_11C)
  loc_13FE367:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxInc")))
  loc_13FE3D0:   Set var_118 = Me.Txt
  loc_13FE3D6:   Call 0.Method_Proc_71_34_13FE7680 (CInt(4), var_11C, CStr(Format(CVar(Me.Fields.Item("SaleRate")), "0.00")))
  loc_13FE3DE:   var_11C.Text = 1
  loc_13FE44D:   Set var_118 = Me.Txt
  loc_13FE453:   Call 0.Method_Proc_71_34_13FE7680 (CInt(5), var_11C, CStr(Format(CVar(Me.Fields.Item("Cost")), "0.00")))
  loc_13FE45B:   var_11C.Text = 1
  loc_13FE4AE:   Set var_118 = Me.Txt
  loc_13FE4B4:   Call 0.Method_Proc_71_34_13FE7680 (CInt(9), var_11C)
  loc_13FE4BC:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ACPosting")), 1)
  loc_13FE50A:   var_114 = "System Defined"
  loc_13FE51D:   var_F0 = (Me.Fields.Item("SysYN").Value = "Y") 'Variant
  loc_13FE53D:   Me.LblSysYN.Caption = CStr(IIf(var_F0, var_114, "User Defined"))
  loc_13FE594:   Set var_118 = Me.Txt
  loc_13FE59A:   Call 0.Method_Proc_71_34_13FE7680 (CInt(7), var_11C)
  loc_13FE5A2:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Type")))
  loc_13FE5EF:   Set var_118 = Me.Txt
  loc_13FE5F5:   Call 0.Method_Proc_71_34_13FE7680 (CInt(&HA), var_11C)
  loc_13FE5FD:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Nature")))
  loc_13FE64A:   Set var_118 = Me.Txt
  loc_13FE650:   Call 0.Method_Proc_71_34_13FE7680 (CInt(&HD), var_11C)
  loc_13FE658:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("HSNCode")))
  loc_13FE6A5:   Set var_118 = Me.Txt
  loc_13FE6AB:   Call 0.Method_Proc_71_34_13FE7680 (CInt(8), var_11C)
  loc_13FE6B3:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("AppMode")))
  loc_13FE6F2:   var_F4 = Proc_6_38_E69628(CVar(Me.Fields.Item("Active")))
  loc_13FE700:   Set var_118 = Me.Txt
  loc_13FE706:   Call 0.Method_Proc_71_34_13FE7680 (CInt(&HB), var_11C)
  loc_13FE70E:   var_11C.Text = var_F4
  loc_13FE722: End If
  loc_13FE722: Exit Sub
  loc_13FE723: ' Referenced from: 13FDD64
  loc_13FE72B: Set var_8C = Err()
  loc_13FE731: Call 0.Method_arg_2C (var_F4)
  loc_13FE752: MsgBox(CVar(var_F4), &H40, "Information", var_F0, var_114)
  loc_13FE765: Exit Sub
End Sub

Public Sub Proc_71_35_108B930
  'Data Table: 4CD140
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_4CD153 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_108B6C3: If (Me.RecordCount = 0) Then
  loc_108B6C6:   Proc_71_35_108B930 = 
  loc_108B6CC: End If
  loc_108B6D0: Set var_90 = Me.TopCtrl1
  loc_108B6D6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_108B6EF: If (CStr() = "Add") Then
  loc_108B72D:   Set var_90 = Me.Txt
  loc_108B733:   Call 0.Method_Proc_71_35_108B9300 (CInt(0), var_A8, var_AC, "Select Count(*) From RevMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_108B754:   unk_4CD153.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_108B764:    = var_D0.Item()
  loc_108B76C:    = var_E4.Value
  loc_108B79D:   If (var_A8.Text.Fields > 0) Then
  loc_108B7BB:     var_A0 = "Duplicate Name"
  loc_108B7C1:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_108B7DC:     Set var_90 = Me.Txt
  loc_108B7E2:     Call 0.Method_Proc_71_35_108B9300 (CInt(0))
  loc_108B7EA:     var_A8.SetFocus
  loc_108B7FB:     Proc_71_35_108B930 = &HFF
  loc_108B801:   End If
  loc_108B804: Else
  loc_108B83F:   Set var_90 = Me.Txt
  loc_108B845:   Call 0.Method_Proc_71_35_108B9300 (CInt(0), var_A8, var_AC, "Select Count(*) From RevMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_108B877:   unk_4CD153.Execute var_D0 & var_AC & "' And Name<>'" & global_72 & "'", 0, var_E4
  loc_108B887:    = var_D0.Item(var_A8)
  loc_108B88F:    = var_E4.Value
  loc_108B8C4:   If (var_A8.Text.Fields > 0) Then
  loc_108B8E8:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_108B903:     Set var_90 = Me.Txt
  loc_108B909:     Call 0.Method_Proc_71_35_108B9300 (CInt(0))
  loc_108B911:     var_A8.SetFocus
  loc_108B922:     Proc_71_35_108B930 = &HFF
  loc_108B928:   End If
  loc_108B928: End If
  loc_108B928: Proc_71_35_108B930 = var_A8
End Sub

Public Sub Proc_71_36_10B09A8
  'Data Table: 4CD140
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim var_A8 As TextBox
  Dim var_B8 As String
  Dim unk_4CD153 As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_144 As Fields15
  Dim var_148 As Field20
  loc_10B0717: If (Me.RecordCount = 0) Then
  loc_10B071A:   Proc_71_36_10B09A8 = 
  loc_10B0720: End If
  loc_10B0724: Set var_90 = Me.TopCtrl1
  loc_10B072A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10B0743: If (CStr() = "Add") Then
  loc_10B0781:   Set var_90 = Me.Txt
  loc_10B0787:   Call 0.Method_Proc_71_36_10B09A80 (CInt(1), var_A8, var_AC, "Select Count(*) From RevMast Where LogSite_Code='" & MemVar_1F95078 & "' and ShortName='", var_A0, -1)
  loc_10B079F:   var_B8 = var_D0 & var_AC & "'"
  loc_10B07A8:   unk_4CD153.Execute var_B8, 0, var_E4
  loc_10B07B8:    = var_D0.Item()
  loc_10B07C0:    = var_E4.Value
  loc_10B07F1:   If (var_A8.Text.Fields > 0) Then
  loc_10B07FF:     var_F4 = "Information"
  loc_10B080F:     var_A0 = "Duplicate Short Name"
  loc_10B0815:     MsgBox(var_A0, &H40, var_F4, var_114, var_134)
  loc_10B0830:     Set var_90 = Me.Txt
  loc_10B0836:     Call 0.Method_Proc_71_36_10B09A80 (CInt(1))
  loc_10B083E:     var_A8.SetFocus
  loc_10B084F:     Proc_71_36_10B09A8 = &HFF
  loc_10B0855:   End If
  loc_10B0858: Else
  loc_10B085E:   var_E0 = 0
  loc_10B0893:   Set var_90 = Me.Txt
  loc_10B0899:   Call 0.Method_Proc_71_36_10B09A80 (CInt(1), var_A8, var_AC, "Select Count(*) From RevMast Where LogSite_Code='" & MemVar_1F95078 & "' and ShortName='", var_A0, -1)
  loc_10B08C2:   Set var_CC = Me.Txt
  loc_10B08C8:   Call 0.Method_Proc_71_36_10B09A80 (CInt(0), var_D0, var_B8, var_144 & var_AC & "' And Code<>'")
  loc_10B08D0:   var_E0 = var_D0.Tag
  loc_10B08E9:   unk_4CD153.Execute var_148 & var_B8 & "'", var_F4, var_A8
  loc_10B08F1:    = var_A8.Text.Fields
  loc_10B08F9:    = var_144.Item()
  loc_10B0901:    = var_148.Value
  loc_10B093C:   If (var_F4 > 0) Then
  loc_10B0960:     MsgBox("Duplicate Short Name", &H40, "Information", var_114, var_134)
  loc_10B097B:     Set var_90 = Me.Txt
  loc_10B0981:     Call 0.Method_Proc_71_36_10B09A80 (CInt(1))
  loc_10B0989:     var_A8.SetFocus
  loc_10B099A:     Proc_71_36_10B09A8 = &HFF
  loc_10B09A0:   End If
  loc_10B09A0: End If
  loc_10B09A0: Proc_71_36_10B09A8 = var_A8
End Sub

Public Sub Proc_71_37_F1FCF8
  'Data Table: 4CD140
  loc_F1FC08: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F1FC1A:   Me.DGHelp.Visible = False
  loc_F1FC22: End If
  loc_F1FC3E: If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_F1FC50:   Me.DGLedgerAc.Visible = False
  loc_F1FC58: End If
  loc_F1FC74: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_F1FC86:   Me.DGTaxStru.Visible = False
  loc_F1FC8E: End If
  loc_F1FCA9: If (Me.FrmList.Visible = &HFF) Then
  loc_F1FCB8:   Me.FrmList.Visible = False
  loc_F1FCC0: End If
  loc_F1FCDC: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F1FCEE:   Me.FGPoint.Visible = False
  loc_F1FCF6: End If
  loc_F1FCF6: Exit Sub
End Sub

Public Sub Proc_71_38_100931C
  'Data Table: 4CD140
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_100911A: Set var_88 = Me.Txt
  loc_1009120: Call 0.Method_Proc_71_38_100931C0 (CInt(0), var_8C)
  loc_100913F: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_100915B: Set var_B4 = Me.Txt
  loc_1009161: Call 0.Method_Proc_71_38_100931C0 (CInt(0), var_B8)
  loc_100917C: Set var_88 = Me.Txt
  loc_1009182: Call 0.Method_Proc_71_38_100931C0 (CInt(0), var_8C)
  loc_100919A: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_10091A9: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_10091C9: Set var_88 = Me.Txt
  loc_10091CF: Call 0.Method_Proc_71_38_100931C0 (CInt(2), var_8C)
  loc_10091EE: Me.DGLedgerAc.Left = CVar(var_8C.Left)
  loc_100920A: Set var_B4 = Me.Txt
  loc_1009210: Call 0.Method_Proc_71_38_100931C0 (CInt(2), var_B8)
  loc_100922B: Set var_88 = Me.Txt
  loc_1009231: Call 0.Method_Proc_71_38_100931C0 (CInt(2), var_8C)
  loc_1009249: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1009258: Me.DGLedgerAc.Top = CVar(var_8C.Left)
  loc_1009278: Set var_88 = Me.Txt
  loc_100927E: Call 0.Method_Proc_71_38_100931C0 (CInt(3), var_8C)
  loc_100929D: Me.DGTaxStru.Left = CVar(var_8C.Left)
  loc_10092B9: Set var_B4 = Me.Txt
  loc_10092BF: Call 0.Method_Proc_71_38_100931C0 (CInt(3), var_B8)
  loc_10092DA: Set var_88 = Me.Txt
  loc_10092E0: Call 0.Method_Proc_71_38_100931C0 (CInt(3), var_8C)
  loc_10092F8: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1009307: Me.DGTaxStru.Top = CVar(var_8C.Left)
  loc_1009319: Exit Sub
End Sub

Public Sub Proc_71_39_10965C0
  'Data Table: 4CD140
  Dim unk_4CD153 As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_90 As Recordset15
  Dim var_188 As Integer
  Dim var_114 As Variant
  Dim var_174 As Recordset15
  Dim var_178 As Fields15
  Dim var_18C As Field20
  loc_109636C: unk_4CD153.Execute CStr("Select taxcode from taxstru where code='" & Trim(arg_14) & "'"), var_114, -1
  loc_1096377: Set var_88 = var_118
  loc_109638B: ' Referenced from: 10965B9
  loc_109639A: If Not(var_88.EOF) Then
  loc_1096402:   var_150 = "Select Code from taxstru where taxcode='" & var_88.Fields.Item("TaxCode").Value & "' and Code not in ('" & Trim(arg_14) & "')" 
  loc_1096410:   unk_4CD153.Execute CStr(var_150), var_170, -1
  loc_109641B:   Set var_90 = var_174
  loc_109643B:   ' Referenced from: 1096519
  loc_109644A:   If Not(var_90.EOF) Then
  loc_1096453:     var_188 = 0
  loc_10964B4:     var_130 = "Select Count(*) from RevMast where TaxStru='" & var_90.Fields.Item("Code").Value & "' and DeskCode='" & CVar(arg_10) & "'" 
  loc_10964C2:     unk_4CD153.Execute CStr(var_130), var_150, -1
  loc_10964CA:     var_174 = var_174.Fields
  loc_10964D2:     var_188 = var_178.Item(var_178)
  loc_10964DA:     var_18C = var_18C.Value
  loc_109650B:     If (var_170 > 0) Then
  loc_109650E:       GoTo loc_10965B1
  loc_1096511:     End If
  loc_1096514:     var_90.MoveNext
  loc_1096519:     GoTo loc_109643B
  loc_109651C:   End If
  loc_109658F:   unk_4CD153.Execute CStr("Delete From RevMast Where TaxCode='" & var_88.Fields.Item("TaxCode").Value & "' and DeskCode='" & Trim(arg_10) & "'"), var_170, -1
  loc_10965B1:   ' Referenced from: 109650E
  loc_10965B4:   var_88.MoveNext
  loc_10965B9:   GoTo loc_109638B
  loc_10965BC: End If
  loc_10965BC: Exit Sub
End Sub
