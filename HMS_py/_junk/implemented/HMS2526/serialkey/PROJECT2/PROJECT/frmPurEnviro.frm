VERSION 5.00
Begin VB.Form frmPurEnviro
  Caption = "Purchase Parameter"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 4680
  ClientHeight = 3090
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 13
    ForeColor = &H8000&
    Left = 5235
    Top = 1635
    Width = 2535
    Height = 285
    TabIndex = 2
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
    Index = 12
    ForeColor = &H8000&
    Left = 5205
    Top = 4785
    Width = 615
    Height = 285
    Text = "No"
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 15
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
    ForeColor = &H8000&
    Left = 5220
    Top = 4470
    Width = 2535
    Height = 285
    TabIndex = 11
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
  Begin DataGrid DGDepart
    Left = 12015
    Top = 5580
    Width = 3900
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 47
  End
  Begin DataGrid DGHelp
    Left = 12180
    Top = 5055
    Width = 5160
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 46
  End
  Begin DataGrid DGTaxStru
    Left = 12015
    Top = 4515
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 45
  End
  Begin DataGrid DGRevenue
    Left = 12135
    Top = 3945
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 44
  End
  Begin Frame FrmList
    Left = 10965
    Top = 6225
    Width = 1425
    Height = 1830
    Visible = 0   'False
    TabIndex = 43
    BorderStyle = 0 'None
  End
  Begin DataGrid DGTAX
    Left = 12255
    Top = 3330
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 42
  End
  Begin CommandButton CmdSave
    Caption = "&Save && Exit"
    BackColor = &HC0FFFF&
    Left = 3000
    Top = 6750
    Width = 2250
    Height = 465
    TabIndex = 39
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CommandButton CmdExit
    Caption = "&Cancel && Exit"
    BackColor = &HFFFFC0&
    Left = 5340
    Top = 6750
    Width = 2250
    Height = 465
    TabIndex = 38
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &H8000&
    Left = 5235
    Top = 1005
    Width = 2535
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
    Index = 14
    ForeColor = &H8000&
    Left = 5205
    Top = 5100
    Width = 615
    Height = 285
    Text = "No"
    TabIndex = 13
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
    Index = 2
    ForeColor = &H8000&
    Left = 5235
    Top = 1320
    Width = 2535
    Height = 285
    TabIndex = 1
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
    Index = 86
    ForeColor = &H8000&
    Left = 10635
    Top = 5235
    Width = 615
    Height = 285
    Visible = 0   'False
    Text = "No"
    TabIndex = 16
    BorderStyle = 0 'None
    MaxLength = 15
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
    ForeColor = &H8000&
    Left = 5235
    Top = 1935
    Width = 615
    Height = 285
    Text = "No"
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 15
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
    Index = 89
    ForeColor = &H8000&
    Left = 6855
    Top = 5370
    Width = 615
    Height = 285
    Visible = 0   'False
    Text = "No"
    TabIndex = 15
    BorderStyle = 0 'None
    MaxLength = 15
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
    Index = 90
    ForeColor = &H8000&
    Left = 6390
    Top = 5715
    Width = 2535
    Height = 285
    Visible = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 15
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
    ForeColor = &H8000&
    Left = 5220
    Top = 2250
    Width = 615
    Height = 285
    Text = "No"
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 15
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
    ForeColor = &H8000&
    Left = 5220
    Top = 2565
    Width = 615
    Height = 285
    Text = "No"
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 15
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
    ForeColor = &H8000&
    Left = 5220
    Top = 2880
    Width = 615
    Height = 285
    Text = "No"
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 15
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
    Index = 8
    ForeColor = &H8000&
    Left = 5220
    Top = 3510
    Width = 2535
    Height = 285
    TabIndex = 8
    BorderStyle = 0 'None
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
    Index = 9
    ForeColor = &H8000&
    Left = 5220
    Top = 3825
    Width = 2535
    Height = 285
    TabIndex = 9
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
    Index = 10
    ForeColor = &H8000&
    Left = 5220
    Top = 4140
    Width = 2535
    Height = 285
    TabIndex = 10
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
    Index = 7
    ForeColor = &H8000&
    Left = 5220
    Top = 3195
    Width = 2535
    Height = 285
    TabIndex = 7
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
  Begin ListView ListView
    Left = 12870
    Top = 1110
    Width = 1650
    Height = 1815
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 40
  End
  Begin DataGrid DGGodown
    Left = 12270
    Top = 2715
    Width = 3900
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 41
  End
  Begin MSFlexGrid FGPoint
    Left = 11865
    Top = 195
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 48
  End
  Begin Label Label3
    Caption = "Banquet Kitchen"
    Index = 2
    ForeColor = &H8000&
    Left = 2535
    Top = 1650
    Width = 1575
    Height = 240
    TabIndex = 54
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
  Begin Label Label
    Caption = "(Kitchen Closing)"
    Index = 2
    BackColor = &H80000005&
    ForeColor = &HC0&
    Left = 6720
    Top = 4785
    Width = 1665
    Height = 285
    TabIndex = 53
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label Label
    Caption = "Yes/No"
    Index = 1
    BackColor = &H80000005&
    ForeColor = &H8000&
    Left = 5850
    Top = 4800
    Width = 720
    Height = 285
    TabIndex = 52
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label3
    Caption = "Auto Fill Item"
    Index = 1
    ForeColor = &H8000&
    Left = 2520
    Top = 4800
    Width = 1275
    Height = 240
    TabIndex = 51
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
  Begin Label Label
    Caption = "(Data Transfer)"
    Index = 0
    BackColor = &H80000005&
    ForeColor = &HC0&
    Left = 7830
    Top = 4455
    Width = 1410
    Height = 285
    TabIndex = 50
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label Label3
    Caption = "Stock Receive for Godown"
    Index = 0
    ForeColor = &H8000&
    Left = 2520
    Top = 4485
    Width = 2520
    Height = 240
    TabIndex = 49
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
  Begin Label Label3
    Caption = "Cash Purchase A/c"
    Index = 4
    ForeColor = &H8000&
    Left = 2535
    Top = 1005
    Width = 1770
    Height = 240
    TabIndex = 37
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
  Begin Label Label3
    Caption = "Show All A/c In Category"
    Index = 47
    ForeColor = &H8000&
    Left = 2520
    Top = 5115
    Width = 2370
    Height = 240
    TabIndex = 36
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
  Begin Label Label3
    Caption = "Purchase Godown"
    Index = 60
    ForeColor = &H8000&
    Left = 2535
    Top = 1335
    Width = 1740
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
  Begin Label Label3
    Caption = "Req. Company Wise"
    Index = 72
    ForeColor = &H8000&
    Left = 8310
    Top = 5250
    Width = 1920
    Height = 240
    Visible = 0   'False
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
  Begin Label Label3
    Caption = "Modify Account Field"
    Index = 73
    ForeColor = &H8000&
    Left = 2535
    Top = 1950
    Width = 1995
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
  Begin Label Label
    Caption = "Yes/No"
    Index = 33
    BackColor = &H80000005&
    ForeColor = &H8000&
    Left = 11280
    Top = 5250
    Width = 720
    Height = 285
    Visible = 0   'False
    TabIndex = 32
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label
    Caption = "Yes/No"
    Index = 34
    BackColor = &H80000005&
    ForeColor = &H8000&
    Left = 5880
    Top = 1950
    Width = 720
    Height = 285
    TabIndex = 31
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label
    Caption = "Yes/No"
    Index = 35
    BackColor = &H80000005&
    ForeColor = &H8000&
    Left = 7500
    Top = 5385
    Width = 720
    Height = 285
    Visible = 0   'False
    TabIndex = 30
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label3
    Caption = "Exp. && Mfd. Date In M.R."
    Index = 75
    ForeColor = &H8000&
    Left = 4530
    Top = 5385
    Width = 2295
    Height = 240
    Visible = 0   'False
    TabIndex = 29
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
  Begin Label Label3
    Caption = "Excise Invoice Tax Stru."
    Index = 76
    ForeColor = &H8000&
    Left = 4065
    Top = 5715
    Width = 2295
    Height = 240
    Visible = 0   'False
    TabIndex = 28
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
  Begin Label Label
    Caption = "Yes/No"
    Index = 40
    BackColor = &H80000005&
    ForeColor = &H8000&
    Left = 5865
    Top = 2265
    Width = 720
    Height = 285
    TabIndex = 27
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label3
    Caption = "Rate Editable In P.O."
    Index = 101
    ForeColor = &H8000&
    Left = 2535
    Top = 2265
    Width = 1980
    Height = 240
    TabIndex = 26
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
  Begin Label Label
    Caption = "Yes/No"
    Index = 41
    BackColor = &H80000005&
    ForeColor = &H8000&
    Left = 5865
    Top = 2580
    Width = 720
    Height = 285
    TabIndex = 25
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label3
    Caption = "Rate Editable In Issue"
    Index = 102
    ForeColor = &H8000&
    Left = 2535
    Top = 2580
    Width = 2055
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
  Begin Label Label3
    Caption = "Bar Code Feature"
    Index = 107
    ForeColor = &H8000&
    Left = 2535
    Top = 2895
    Width = 1680
    Height = 240
    TabIndex = 23
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
  Begin Label Label
    Caption = "Yes/No"
    Index = 43
    BackColor = &H80000005&
    ForeColor = &H8000&
    Left = 5865
    Top = 2895
    Width = 720
    Height = 285
    TabIndex = 22
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label3
    Caption = "Kitchen Stock Report"
    Index = 108
    ForeColor = &H8000&
    Left = 2535
    Top = 3510
    Width = 1995
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
  Begin Label Label3
    Caption = "Item Rate In M.R. Based on"
    Index = 109
    ForeColor = &H8000&
    Left = 2535
    Top = 3825
    Width = 2580
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
  Begin Label Label3
    Caption = "Item Rate In P.Bill Based on"
    Index = 110
    ForeColor = &H8000&
    Left = 2535
    Top = 4140
    Width = 2670
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
  Begin Label Label
    Caption = "Yes/No"
    Index = 44
    BackColor = &H80000005&
    ForeColor = &H8000&
    Left = 5850
    Top = 5100
    Width = 720
    Height = 285
    TabIndex = 18
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label3
    Caption = "Purchase Tax (VAT)"
    Index = 116
    ForeColor = &H8000&
    Left = 2535
    Top = 3195
    Width = 1875
    Height = 240
    TabIndex = 17
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

Attribute VB_Name = "frmPurEnviro"

Private global_68 As Recordset15

Private Sub DGTaxStru_UnknownEvent_9 'F79364
  'Data Table: 46EAD4
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  loc_F7923B: var_86 = CInt(Val(CStr(Me.DGTaxStru.Tag)))
  loc_F79250: Set var_8C = Me.DGTaxStru
  loc_F79256: var_8C.Visible = False
  loc_F79278: If (Me.var_8C.RecordCount > 0) Then
  loc_F792B9:   Set var_CC = Me.Txt
  loc_F792BF:   Call 0.Method_DGTaxStru_UnknownEvent_90 (var_86, var_D0)
  loc_F792C7:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_F792FD:   var_C8 = Me.Recordset15.Fields.Item("Code")
  loc_F7931B:   Set var_CC = Me.Txt
  loc_F79321:   Call 0.Method_DGTaxStru_UnknownEvent_90 (var_86, var_D0)
  loc_F79329:   var_D0.Tag = CStr(var_C8.Value)
  loc_F7933F: End If
  loc_F79349: Set var_8C = Me.Txt
  loc_F7934F: Call 0.Method_DGTaxStru_UnknownEvent_90 (var_86, var_C8)
  loc_F79357: var_C8.SetFocus
  loc_F79363: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_1F 'EB0068
  'Data Table: 46EAD4
  loc_EAFFFA: Proc_6_153_E91D24(Me.DGTaxStru, arg_14)
  loc_EB002E: Set var_A8 = Me.FGPoint
  loc_EB004E: Proc_6_138_106E830(Me.DGTaxStru, global_72, CInt(Val(CStr(Me.DGTaxStru.Tag))))
  loc_EB0064: Exit Sub
End Sub

Private Sub CmdSave_Click() '12508D0
  'Data Table: 46EAD4
  Dim unk_46EAD9 As Connection15
  Dim var_86 As Integer
  Dim var_94 As TextBox
  Dim var_9C As String
  Dim var_AC As String
  Dim var_A4 As TextBox
  Dim var_C0 As String
  Dim var_B8 As TextBox
  Dim var_10C As String
  Dim var_154 As String
  Dim var_19C As String
  Dim var_1A4 As TextBox
  Dim var_23C As Variant
  Dim var_314 As TextBox
  Dim var_388 As Variant
  Dim var_90 As Variant
  loc_12504BC: On Error Goto loc_12508B3
  loc_12504BF: Call Proc_294_20_F6B7FC()
  loc_12504CD: unk_46EAD9.BeginTrans var_8C
  loc_12504F5: Set var_90 = Me.Txt
  loc_12504FB: Call 0.Method_CmdSave_Click0 (CInt(1), var_94, var_98, "Update Enviro Set  CashPurchAc='")
  loc_1250503: var_3CC = var_94.Tag
  loc_125050C: var_9C = -1 & var_98
  loc_1250513: var_AC = var_9C & "',PurchaseGodown='"
  loc_1250524: Set var_A0 = Me.Txt
  loc_125052A: Call 0.Method_CmdSave_Click0 (CInt(2), var_A4, var_A8)
  loc_1250532: var_AC = var_A4.Tag
  loc_1250542: var_C0 = var_3D0 & var_A8 & "',BanquetKitchen='"
  loc_1250553: Set var_B4 = Me.Txt
  loc_1250559: Call 0.Method_CmdSave_Click0 (CInt(&HD), var_B8, var_BC)
  loc_1250561: var_C0 = var_B8.Tag
  loc_125057F: Set var_C8 = Me.Txt
  loc_1250585: Call 0.Method_CmdSave_Click0 (CInt(3), var_CC)
  loc_12505AF: Set var_EC = Me.Txt
  loc_12505B5: Call 0.Method_CmdSave_Click0 (CInt(4), var_F0)
  loc_12505CA: var_10C = &HFF & var_BC & "',AcFieldAlterable='" & Proc_6_38_E69628(CVar(var_CC)) & "',RateEditableInPO='" & Proc_6_38_E69628(CVar(var_F0))
  loc_12505DF: Set var_110 = Me.Txt
  loc_12505E5: Call 0.Method_CmdSave_Click0 (CInt(5), var_114)
  loc_125060F: Set var_134 = Me.Txt
  loc_1250615: Call 0.Method_CmdSave_Click0 (CInt(6), var_138)
  loc_125062A: var_154 = var_10C & "',RateEditableInStockIssue='" & Proc_6_38_E69628(CVar(var_114)) & "',BarCodeFeatureInPurchase='" & Proc_6_38_E69628(CVar(var_138))
  loc_125063F: Set var_158 = Me.Txt
  loc_1250645: Call 0.Method_CmdSave_Click0 (CInt(&HC), var_15C)
  loc_125066F: Set var_17C = Me.Txt
  loc_1250675: Call 0.Method_CmdSave_Click0 (CInt(&HE), var_180)
  loc_125068A: var_19C = var_154 & "',AutoFillItemInKitchenClosingYN='" & Proc_6_38_E69628(CVar(var_15C)) & "',ShowAllAcInPurcahseCategoryYN='" & Proc_6_38_E69628(CVar(var_180))
  loc_12506A0: Set var_1A0 = Me.Txt
  loc_12506A6: Call 0.Method_CmdSave_Click0 (7, var_1A4)
  loc_12506D7: Set var_1C8 = Me.Txt
  loc_12506DD: Call 0.Method_CmdSave_Click0 (CInt(8), var_1CC)
  loc_12506F4: Proc_6_17_EAAE40(var_1FC, CVar(Proc_6_38_E69628(CVar(var_1CC))))
  loc_1250705: var_23C = CVar(var_19C & "',PurchaseTaxVAT='" & Proc_6_38_E69628(CVar(var_1A4.Tag)) & "',KitchenStockReport = ") & var_1FC & ", ItemRateInMRBasedOn = " 
  loc_1250714: Set var_240 = Me.Txt
  loc_125071A: Call 0.Method_CmdSave_Click0 (CInt(9), var_244)
  loc_1250731: Proc_6_17_EAAE40(var_274, CVar(Proc_6_38_E69628(CVar(var_244))))
  loc_1250751: Set var_2A8 = Me.Txt
  loc_1250757: Call 0.Method_CmdSave_Click0 (CInt(&HA), var_2AC)
  loc_125076E: Proc_6_17_EAAE40(var_2DC, CVar(Proc_6_38_E69628(CVar(var_2AC))))
  loc_1250791: Set var_310 = Me.Txt
  loc_1250797: Call 0.Method_CmdSave_Click0 (CInt(&HB), var_314)
  loc_12507AD: Proc_6_17_EAAE40(var_338, CVar(var_314.Tag))
  loc_12507C8: var_388 = var_23C & var_274 & ", ItemRateInPurchaseBillBasedOn = " & var_2DC & ",StockRecGodown=" & var_338 & " WHERE SITECODE='" & CVar(MemVar_1F95078) 
  loc_12507DF: unk_46EAD9.Execute CStr(var_388 & "'"), , 
  loc_1250893: unk_46EAD9.CommitTrans
  loc_125089A: var_86 = 0
  loc_12508AA: Me.Global.Unload Me
  loc_12508B2: Exit Sub
  loc_12508B3: ' Referenced from: 12504BC
  loc_12508B9: If (var_86 = &HFF) Then
  loc_12508C2:   unk_46EAD9.RollbackTrans
  loc_12508C7: End If
  loc_12508C7: Proc_6_60_E63754(var_86)
  loc_12508CC: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F549DC
  'Data Table: 46EAD4
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F548FE: If (Me.ListView.ListItems.Count > 0) Then
  loc_F54905:   Set var_A8 = Me.ListView
  loc_F5494F:   Set var_C0 = Me.Txt
  loc_F54955:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5495D:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5497D: End If
  loc_F54989: Me.FrmList.Visible = False
  loc_F549B9: Set var_9C = Me.Txt
  loc_F549BF: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F549C7: var_A8.SetFocus
  loc_F549DB: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11A69E8
  'Data Table: 46EAD4
  Dim var_92 As Integer
  Dim var_88 As DataGrid
  Dim var_B4 As Variant
  Dim var_8C As TextBox
  Dim var_90 As Fields15
  Dim var_D4 As Variant
  loc_11A65EA: Set var_88 = Me.Txt
  loc_11A65F0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_11A65FE: Proc_6_74_E23240(var_8C)
  loc_11A660A: Call Proc_294_20_F6B7FC(var_8C)
  loc_11A6612: var_92 = Index
  loc_11A661D: If (var_92 = CInt(1)) Then
  loc_11A663C:   If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_11A6652:     Me.DGHelp.Left = CVar(CDbl(2200))
  loc_11A666D:     Me.DGHelp.Top = CVar(CDbl(400))
  loc_11A6688:     Me.DGHelp.Tag = CVar(CStr(Index))
  loc_11A6693:   End If
  loc_11A66AD:   If (global_68.RecordCount > 0) Then
  loc_11A66BB:     Set var_8C = Me.FGPoint
  loc_11A66D7:     Proc_6_137_1192FDC(Me.DGHelp, global_68, Index)
  loc_11A66E5:   End If
  loc_11A673C:   Set var_88 = Me.Txt
  loc_11A6742:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D0)
  loc_11A674A:   ((global_68.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_11A6762:   If (var_8C Or (var_D0 = vbNullString)) Then
  loc_11A6765:     Exit Sub
  loc_11A6766:   End If
  loc_11A6773:   Set var_88 = Me.Txt
  loc_11A6779:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11A6781:   var_D0 = var_8C.Text
  loc_11A6793:   var_B4 = "Name"
  loc_11A67D1:   If CBool(CVar(var_D0) <> Me.Recordset15.Fields.Item(var_B4).Value) Then
  loc_11A67DD:     Me.Recordset15.MoveFirst
  loc_11A6800:     Set var_88 = Me.Txt
  loc_11A6806:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D0, "Name ='")
  loc_11A680E:     0 = var_8C.Text
  loc_11A682A:     Me.Recordset15.Find 1 & var_D0 & "'", var_B4, var_92
  loc_11A683F:   End If
  loc_11A6842: Else
  loc_11A684A:   If (var_92 = CInt(8)) Then
  loc_11A685A:     ReDim var_100(0 To 1)
  loc_11A6871:     var_100(0) = "Advanced"
  loc_11A6880:     var_100(1) = "Standard"
  loc_11A6894:     var_110 = Array(var_100) 'Variant
  loc_11A689C:     Set var_D4 = Me.ListView
  loc_11A68B4:     Set var_8C = Me.Txt
  loc_11A68CE:     Set global_64 = Proc_6_66_F0048C(var_D4, var_8C, Index)
  loc_11A68EC:     Set var_88 = Me.Txt
  loc_11A68F2:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D0)
  loc_11A68FA:     var_110 = var_8C.Text
  loc_11A690C:     Set var_90 = Me.Txt
  loc_11A6912:     Call 0.Method_Txt_GotFocus0 (Index, var_D4)
  loc_11A691A:     var_D4.Tag = var_D0
  loc_11A6930:   Else
  loc_11A6938:     If Not (var_92 = CInt(9)) Then
  loc_11A6943:       If (var_92 = CInt(&HA)) Then
  loc_11A6946:       End If
  loc_11A6953:       ReDim var_100(0 To 2)
  loc_11A696A:       var_100(0) = "Purchase Rate"
  loc_11A6979:       var_100(1) = "Last Purchase Rate"
  loc_11A6988:       var_100(2) = "Party Wise Last Pur Rate"
  loc_11A699C:       var_110 = Array(var_100) 'Variant
  loc_11A69D6:       Set global_64 = Proc_6_66_F0048C(Me.ListView, Me.Txt, Index)
  loc_11A69E7:     End If
  loc_11A69E7:   End If
  loc_11A69E7: End If
  loc_11A69E7: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '12E79CC
  'Data Table: 46EAD4
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_CC As Variant
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_A4 As Frame
  Dim var_C8 As DataGrid
  loc_12E7342: If (CLng(Shift) = &H1B) Then
  loc_12E7345:   Call Proc_294_20_F6B7FC()
  loc_12E734A:   Exit Sub
  loc_12E734B: End If
  loc_12E734E: var_86 = KeyCode
  loc_12E7359: If (var_86 = CInt(1)) Then
  loc_12E7374:   Set var_9C = Nothing
  loc_12E737F:   Set var_98 = Nothing
  loc_12E73B1:   Proc_6_69_134A630(Me.DGHelp, Me.Txt, KeyCode, global_68, Shift, 0)
  loc_12E7421:   If ((Me.Txt.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12E744B:     Proc_6_138_106E830(Me.DGHelp, global_68, KeyCode, Me.FGPoint, 1)
  loc_12E7459:   End If
  loc_12E745C: Else
  loc_12E7464:   If Not (var_86 = CInt(2)) Then
  loc_12E746F:     If Not (var_86 = CInt(&HB)) Then
  loc_12E747A:       If (var_86 = CInt(&HD)) Then
  loc_12E747D:       End If
  loc_12E747D:     End If
  loc_12E74A0:     Set var_98 = Nothing
  loc_12E74D2:     Proc_6_69_134A630(Me.DGGodown, Me.Txt, KeyCode, global_56, Shift, 0, 1)
  loc_12E7542:     If ((Me.Txt.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12E7549:       Set var_98 = Me.DGGodown
  loc_12E756C:       Proc_6_138_106E830(var_98, global_56, KeyCode, Me.FGPoint, var_98, Nothing)
  loc_12E757A:     End If
  loc_12E757D:   Else
  loc_12E7583:     If Not (var_86 = 7) Then
  loc_12E758E:       If (var_86 = CInt(var_BC)) Then
  loc_12E7591:       End If
  loc_12E759C:       Set var_A8 = Me.Txt
  loc_12E75A9:       Set var_9C = Nothing
  loc_12E75E6:       Proc_6_69_134A630(Me.DGTAX, var_A8, KeyCode, global_60, Shift, 0, 1, Nothing)
  loc_12E7606:       var_AC = Me.Txt.RecordCount
  loc_12E7656:       If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12E7664:         Set var_90 = Me.FGPoint
  loc_12E7680:         Proc_6_138_106E830(Me.DGTAX, global_60, KeyCode, var_90, var_9C, 0)
  loc_12E768E:       End If
  loc_12E7691:     Else
  loc_12E7699:       If (var_86 = CInt(8)) Then
  loc_12E76BE:         Set var_8C = Me.Txt
  loc_12E76C4:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 0)
  loc_12E76CC:         var_98 = var_90.Left
  loc_12E76DE:         Set var_98 = Me.Txt
  loc_12E76E4:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_C0)
  loc_12E76EC:         var_9C = var_9C.Top
  loc_12E76FE:         Set var_A4 = Me.Txt
  loc_12E7704:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_C4)
  loc_12E770C:         0 = var_A8.Height
  loc_12E771E:         Set var_C8 = Me.Txt
  loc_12E7724:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_CC)
  loc_12E772C:         var_D0 = var_CC.Width
  loc_12E7774:         Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12E779B:       Else
  loc_12E77A3:         If Not (var_86 = CInt(9)) Then
  loc_12E77AE:           If (var_86 = CInt(&HA)) Then
  loc_12E77B1:           End If
  loc_12E77D3:           Set var_8C = Me.Txt
  loc_12E77D9:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_12E77E1:           CInt((var_C0 + var_C4)) = var_90.Left
  loc_12E77F3:           Set var_98 = Me.Txt
  loc_12E77F9:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_C0)
  loc_12E7801:           CInt(var_D0) = var_9C.Top
  loc_12E7813:           Set var_A4 = Me.Txt
  loc_12E7819:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_C4)
  loc_12E7821:           520 = var_A8.Height
  loc_12E7833:           Set var_C8 = Me.Txt
  loc_12E7839:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_CC)
  loc_12E7841:           var_D0 = var_CC.Width
  loc_12E7889:           Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12E78AD:         End If
  loc_12E78AD:       End If
  loc_12E78AD:     End If
  loc_12E78AD:   End If
  loc_12E78AD: End If
  loc_12E798A: If ((((((((CBool(Me.DGRevenue.Visible) = 0) And (CBool(Me.DGTAX.Visible) = 0)) And (CBool(Me.DGTaxStru.Visible) = 0)) And (CBool(Me.DGHelp.Visible) = 0)) And (Me.FrmList.Visible = 0)) And (CBool(Me.DGDepart.Visible) = 0)) And (CBool(Me.DGGodown.Visible) = 0)) And (CBool(Me.DGTaxStru.Visible) = 0)) Then
  loc_12E79A2:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_12E79AB:     Proc_6_75_E5335C(Shift, arg_14, CInt(var_AC), CInt((var_C0 + var_C4)))
  loc_12E79B0:   End If
  loc_12E79BA:   If (CLng(Shift) = &H26) Then
  loc_12E79C3:     Proc_6_76_E533C8(Shift, arg_14, CInt(var_D0))
  loc_12E79C8:   End If
  loc_12E79C8: End If
  loc_12E79C8: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FBA900
  'Data Table: 46EAD4
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_A8 As TextBox
  Dim arg_10 As Integer
  loc_FBA76B: var_86 = KeyAscii
  loc_FBA776: If (var_86 = CInt(1)) Then
  loc_FBA795:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_FBA79C:     Set var_A8 = Me.Txt
  loc_FBA7A7:     var_A0 = "Name"
  loc_FBA7C6:     Proc_6_89_1470B00(var_A8, KeyAscii, global_68, arg_10)
  loc_FBA7D5:   End If
  loc_FBA7D8: Else
  loc_FBA7E0:   If Not (var_86 = CInt(var_B8)) Then
  loc_FBA7EB:     If Not (var_86 = CInt(3)) Then
  loc_FBA7F6:       If Not (var_86 = CInt(var_C8)) Then
  loc_FBA801:         If Not (var_86 = CInt(4)) Then
  loc_FBA80C:           If Not (var_86 = CInt(5)) Then
  loc_FBA817:             If Not (var_86 = CInt(6)) Then
  loc_FBA822:               If Not (var_86 = CInt(&HC)) Then
  loc_FBA82D:                 If Not (var_86 = CInt(&HE)) Then
  loc_FBA838:                   If (var_86 = CInt(var_D8)) Then
  loc_FBA83B:                   End If
  loc_FBA83B:                 End If
  loc_FBA83B:               End If
  loc_FBA83B:             End If
  loc_FBA83B:           End If
  loc_FBA83B:         End If
  loc_FBA83B:       End If
  loc_FBA83B:     End If
  loc_FBA864:     If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_FBA874:       Set var_8C = Me.Txt
  loc_FBA87A:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes")
  loc_FBA882:       var_A8.Text = var_A0
  loc_FBA891:     Else
  loc_FBA8BA:       If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_FBA8CA:         Set var_8C = Me.Txt
  loc_FBA8D0:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "No")
  loc_FBA8D8:         var_A8.Text = 0
  loc_FBA8E4:       End If
  loc_FBA8E4:     End If
  loc_FBA8E6:     arg_10 = 0
  loc_FBA8EC:   Else
  loc_FBA8F4:     If (var_86 = CInt(var_118)) Then
  loc_FBA8F9:       arg_10 = 0
  loc_FBA8FC:     End If
  loc_FBA8FC:   End If
  loc_FBA8FC: End If
  loc_FBA8FC: Exit Sub
  loc_FBA8FD: var_D0 = arg_10
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'FBFCE0
  'Data Table: 46EAD4
  Dim var_86 As Integer
  loc_FBFB3B: var_86 = KeyCode
  loc_FBFB46: If (var_86 = CInt(1)) Then
  loc_FBFB65:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_FBFB79:     var_A4 = "Name"
  loc_FBFBA1:     Proc_6_68_12A2818(Me.DGHelp, Me.Txt, KeyCode, global_68)
  loc_FBFBDB:     Proc_6_138_106E830(Me.DGHelp, global_68, KeyCode, Me.FGPoint)
  loc_FBFBE9:   End If
  loc_FBFBEC: Else
  loc_FBFBF4:   If (var_86 = CInt(8)) Then
  loc_FBFC12:     If (Me.FrmList.Visible = &HFF) Then
  loc_FBFC41:       Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_FBFC51:     End If
  loc_FBFC54:   Else
  loc_FBFC5E:     If Not (var_86 = CInt(3)) Then
  loc_FBFC69:       If Not (var_86 = CInt(9)) Then
  loc_FBFC74:         If Not (var_86 = CInt(&HA)) Then
  loc_FBFC7F:           If (var_86 = CInt(var_C0)) Then
  loc_FBFC82:           End If
  loc_FBFC82:         End If
  loc_FBFC82:       End If
  loc_FBFC9D:       If (Me.FrmList.Visible = &HFF) Then
  loc_FBFCCC:         Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift, global_64)
  loc_FBFCDC:       End If
  loc_FBFCDC:     End If
  loc_FBFCDC:   End If
  loc_FBFCDC: End If
  loc_FBFCDC: Exit Sub
  loc_FBFCDD: VCallCy
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E48804
  'Data Table: 46EAD4
  loc_E487E2: Set var_88 = Me.Txt
  loc_E487E8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E487F6: Proc_6_73_E23294(var_8C)
  loc_E48802: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '11A0440
  'Data Table: 46EAD4
  Dim var_86 As Integer
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_11A003C: Call Proc_294_20_F6B7FC()
  loc_11A0044: var_86 = Cancel
  loc_11A004F: If (var_86 = CInt(1)) Then
  loc_11A00A9:   Set var_94 = Me.Txt
  loc_11A00AF:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_11A00B7:   ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_98.Text
  loc_11A00CF:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_11A00DF:     Set var_94 = Me.Txt
  loc_11A00E5:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_11A00ED:     var_98.Tag = vbNullString
  loc_11A00F9:     Exit Sub
  loc_11A00FA:   End If
  loc_11A0138:   Set var_B0 = Me.Txt
  loc_11A013E:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_11A0146:   var_B4.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_11A017C:   var_98 = Me.Recordset15.Fields.Item("Code")
  loc_11A019A:   Set var_B0 = Me.Txt
  loc_11A01A0:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_11A01A8:   var_B4.Tag = CStr(var_98.Value)
  loc_11A01C1: Else
  loc_11A01C9:   If (var_86 = CInt(&HD)) Then
  loc_11A0223:     Set var_94 = Me.Txt
  loc_11A0229:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_11A0249:     If (((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_11A0259:       Set var_94 = Me.Txt
  loc_11A025F:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_11A0267:       var_98.Tag = vbNullString
  loc_11A0273:       Exit Sub
  loc_11A0274:     End If
  loc_11A02B2:     Set var_B0 = Me.Txt
  loc_11A02B8:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_11A02C0:     var_B4.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_11A02F6:     var_98 = Me.Recordset15.Fields.Item("Code")
  loc_11A0314:     Set var_B0 = Me.Txt
  loc_11A031A:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_11A0322:     var_B4.Tag = CStr(var_98.Value)
  loc_11A033B:   Else
  loc_11A0343:     If Not (var_86 = CInt(var_D4)) Then
  loc_11A034E:       If Not (var_86 = CInt(3)) Then
  loc_11A0359:         If Not (var_86 = CInt(var_E4)) Then
  loc_11A0364:           If Not (var_86 = CInt(4)) Then
  loc_11A036F:             If Not (var_86 = CInt(5)) Then
  loc_11A037A:               If Not (var_86 = CInt(6)) Then
  loc_11A0385:                 If Not (var_86 = CInt(&HC)) Then
  loc_11A0390:                   If Not (var_86 = CInt(&HE)) Then
  loc_11A039B:                     If (var_86 = CInt(var_F4)) Then
  loc_11A039E:                     End If
  loc_11A039E:                   End If
  loc_11A039E:                 End If
  loc_11A039E:               End If
  loc_11A039E:             End If
  loc_11A039E:           End If
  loc_11A039E:         End If
  loc_11A039E:       End If
  loc_11A03A8:       Set var_94 = Me.Txt
  loc_11A03AE:       Call 0.Method_Txt_Validate0 (Cancel)
  loc_11A03E9:       If (Ucase(Left(CVar(var_98), 1)) = "Y") Then
  loc_11A03F9:         Set var_94 = Me.Txt
  loc_11A03FF:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_11A0407:         var_98.Text = "Yes"
  loc_11A0416:       Else
  loc_11A0423:         Set var_94 = Me.Txt
  loc_11A0429:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_11A0431:         var_98.Text = "No"
  loc_11A043D:       End If
  loc_11A043D:     End If
  loc_11A043D:   End If
  loc_11A043D: End If
  loc_11A043D: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F79FC4
  'Data Table: 46EAD4
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  loc_F79E9B: var_86 = CInt(Val(CStr(Me.DGHelp.Tag)))
  loc_F79EB0: Set var_8C = Me.DGHelp
  loc_F79EB6: var_8C.Visible = False
  loc_F79ED8: If (Me.var_8C.RecordCount > 0) Then
  loc_F79F19:   Set var_CC = Me.Txt
  loc_F79F1F:   Call 0.Method_DGHelp_UnknownEvent_90 (var_86, var_D0)
  loc_F79F27:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_F79F5D:   var_C8 = Me.Recordset15.Fields.Item("Code")
  loc_F79F7B:   Set var_CC = Me.Txt
  loc_F79F81:   Call 0.Method_DGHelp_UnknownEvent_90 (var_86, var_D0)
  loc_F79F89:   var_D0.Tag = CStr(var_C8.Value)
  loc_F79F9F: End If
  loc_F79FA9: Set var_8C = Me.Txt
  loc_F79FAF: Call 0.Method_DGHelp_UnknownEvent_90 (var_86, var_C8)
  loc_F79FB7: var_C8.SetFocus
  loc_F79FC3: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EB0134
  'Data Table: 46EAD4
  loc_EB00C6: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_EB00FA: Set var_A8 = Me.FGPoint
  loc_EB011A: Proc_6_138_106E830(Me.DGHelp, global_68, CInt(Val(CStr(Me.DGHelp.Tag))))
  loc_EB0130: Exit Sub
End Sub

Private Sub DGGodown_UnknownEvent_9 'F783EC
  'Data Table: 46EAD4
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  loc_F782C3: var_86 = CInt(Val(CStr(Me.DGGodown.Tag)))
  loc_F782D8: Set var_8C = Me.DGGodown
  loc_F782DE: var_8C.Visible = False
  loc_F78300: If (Me.var_8C.RecordCount > 0) Then
  loc_F78341:   Set var_CC = Me.Txt
  loc_F78347:   Call 0.Method_DGGodown_UnknownEvent_90 (var_86, var_D0)
  loc_F7834F:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_F78385:   var_C8 = Me.Recordset15.Fields.Item("Code")
  loc_F783A3:   Set var_CC = Me.Txt
  loc_F783A9:   Call 0.Method_DGGodown_UnknownEvent_90 (var_86, var_D0)
  loc_F783B1:   var_D0.Tag = CStr(var_C8.Value)
  loc_F783C7: End If
  loc_F783D1: Set var_8C = Me.Txt
  loc_F783D7: Call 0.Method_DGGodown_UnknownEvent_90 (var_86, var_C8)
  loc_F783DF: var_C8.SetFocus
  loc_F783EB: Exit Sub
End Sub

Private Sub DGGodown_UnknownEvent_1F 'EAFBA0
  'Data Table: 46EAD4
  loc_EAFB32: Proc_6_153_E91D24(Me.DGGodown, arg_14)
  loc_EAFB66: Set var_A8 = Me.FGPoint
  loc_EAFB86: Proc_6_138_106E830(Me.DGGodown, global_56, CInt(Val(CStr(Me.DGGodown.Tag))))
  loc_EAFB9C: Exit Sub
End Sub

Private Sub CmdExit_Click() 'E171CC
  'Data Table: 46EAD4
  loc_E171C1: Me.Global.Unload Me
  loc_E171C9: Exit Sub
End Sub

Private Sub Form_Load() '1008780
  'Data Table: 46EAD4
  Dim var_9C As Variant
  loc_100856F: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_100857E: Set global_68 = New 
  loc_1008593: Me.Recordset15.CursorLocation = 3
  loc_10085BD: var_9C = CVar("Select SubCode as Code,Name From SubGroup WHERE ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_10085CA: Me.Recordset15.Open var_9C, CVar(MemVar_1F95044), 2
  loc_10085E1: CVarUnk
  loc_10085E6: VerifyVarObj
  loc_10085EC: Set var_88 = Me.DGHelp
  loc_10085F2: LateIdStAd
  loc_100860A: Set global_56 = New 
  loc_100861F: Me.DGHelp.CursorLocation = 3
  loc_1008649: var_9C = CVar("Select Code,Name From Godownmast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_1008656: Me.Recordset15.Open var_9C, CVar(MemVar_1F95044), 2
  loc_100866D: CVarUnk
  loc_1008672: VerifyVarObj
  loc_1008678: Set var_88 = Me.DGGodown
  loc_100867E: LateIdStAd
  loc_1008696: Set global_52 = New 
  loc_10086AB: Me.DGGodown.CursorLocation = 3
  loc_10086E2: Me.Recordset15.Open CVar("Select * From Enviro WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "')"), CVar(MemVar_1F95044), 2
  loc_100870C: Me.Recordset15.CursorLocation = 3
  loc_1008736: var_9C = CVar("Select Code,Name From RevMast Where  FieldType='T' and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_1008743: Me.Recordset15.Open var_9C, CVar(MemVar_1F95044), 2
  loc_100875A: CVarUnk
  loc_100875F: VerifyVarObj
  loc_100876B: LateIdStAd
  loc_1008779: Call Proc_294_19_150B9D4(Me.DGTAX, New, 3, -1, 3, -1, Me.DGTAX)
  loc_100877E: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'EB4290
  'Data Table: 46EAD4
  loc_EB4207: Set global_68 = Nothing
  loc_EB4219: Set global_52 = Nothing
  loc_EB422B: Set global_56 = Nothing
  loc_EB423D: Set global_72 = Nothing
  loc_EB4246: var_98 = Nothing 'Address
  loc_EB424C: var_A8 = Nothing 'Address
  loc_EB425B: Set global_64 = Nothing
  loc_EB426D: Set global_60 = Nothing
  loc_EB427F: Set global_72 = Nothing
  loc_EB4288: var_B8 = Nothing 'Address
  loc_EB428C: Exit Sub
  loc_EB428D: If  Then Exit Sub
  loc_EB428D: End If
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2B224
  'Data Table: 46EAD4
  loc_E2B1FC: On Error Goto loc_E2B21C
  loc_E2B213: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2B21B: Exit Sub
  loc_E2B21C: ' Referenced from: E2B1FC
  loc_E2B21C: Proc_6_60_E63754(Shift)
  loc_E2B221: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EADC9C
  'Data Table: 46EAD4
  loc_EADC24: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EADC27:   Call DGHelp_UnknownEvent_9()
  loc_EADC2C: End If
  loc_EADC48: If (CBool(Me.DGGodown.Visible) = &HFF) Then
  loc_EADC5A:   Me.DGGodown.Visible = False
  loc_EADC62: End If
  loc_EADC7E: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_EADC90:   Me.DGTaxStru.Visible = False
  loc_EADC98: End If
  loc_EADC98: Exit Sub
End Sub

Public Sub Proc_294_19_150B9D4
  'Data Table: 46EAD4
  Dim var_8C As Fields15
  Dim var_B0 As Variant
  Dim var_BC As String
  Dim var_B8 As TextBox
  Dim var_A0 As Variant
  Dim var_C0 As String
  Dim unk_46EAD9 As Connection15
  Dim var_88 As Recordset15
  Dim var_132 As Integer
  Dim var_B4 As Fields15
  Dim var_130 As TextBox
  Dim var_144 As Variant
  loc_150AB29: var_A0 = Me.Recordset15.Fields.Item("CashPurchAc")
  loc_150AB48: Set var_B4 = Me.Txt
  loc_150AB4E: Call 0.Method_Proc_294_19_150B9D40 (CInt(1), var_B8)
  loc_150AB56: var_B8.Tag = Proc_6_38_E69628(CVar(var_A0))
  loc_150AB78: Set var_8C = Me.Txt
  loc_150AB7E: Call 0.Method_Proc_294_19_150B9D40 (CInt(1), var_A0)
  loc_150AB86: var_BC = var_A0.Tag
  loc_150AB9D: If (var_BC <> vbNullString) Then
  loc_150ABBE:   Set var_8C = Me.Txt
  loc_150ABC4:   Call 0.Method_Proc_294_19_150B9D40 (CInt(1), var_A0, var_BC, "Select Name From SubGroup Where SubCode='")
  loc_150ABCC:   var_B0 = var_A0.Tag
  loc_150ABD5:   var_C0 = -1 & var_BC
  loc_150ABE5:   unk_46EAD9.Execute var_C0 & "'", var_B4, 
  loc_150ABF0:   Set var_88 = var_B4
  loc_150AC1C:   If (var_88.RecordCount > 0) Then
  loc_150AC39:     var_A0 = var_88.Fields.Item("Name")
  loc_150AC58:     Set var_B4 = Me.Txt
  loc_150AC5E:     Call 0.Method_Proc_294_19_150B9D40 (CInt(1), var_B8)
  loc_150AC66:     var_B8.Text = CStr(var_A0.Value)
  loc_150AC7C:   End If
  loc_150AC7F: Else
  loc_150AC8D:   Set var_8C = Me.Txt
  loc_150AC93:   Call 0.Method_Proc_294_19_150B9D40 (CInt(1), var_A0)
  loc_150AC9B:   var_A0.Text = vbNullString
  loc_150ACA7: End If
  loc_150ACC4: var_A0 = Me.Recordset15.Fields.Item("PurchaseGodown")
  loc_150ACD5: var_132 = IsNull(CVar(var_A0))
  loc_150ACED: var_B4 = Me.Recordset15.Fields
  loc_150ACF5: var_B8 = var_B4.Item("PurchaseGodown")
  loc_150AD2D: Set var_12C = Me.Txt
  loc_150AD33: Call 0.Method_Proc_294_19_150B9D40 (CInt(2), var_130)
  loc_150AD3B: var_130.Tag = CStr(IIf(var_132, vbNullString, CVar(var_B8)))
  loc_150AD69: Set var_8C = Me.Txt
  loc_150AD6F: Call 0.Method_Proc_294_19_150B9D40 (CInt(2), var_A0)
  loc_150AD77: var_BC = var_A0.Tag
  loc_150AD8E: If (var_BC <> vbNullString) Then
  loc_150ADAF:   Set var_8C = Me.Txt
  loc_150ADB5:   Call 0.Method_Proc_294_19_150B9D40 (CInt(2), var_A0, var_BC, "Select Name From Godownmast Where Code='")
  loc_150ADBD:   var_B0 = var_A0.Tag
  loc_150ADC6:   var_C0 = -1 & var_BC
  loc_150ADD6:   unk_46EAD9.Execute var_C0 & "'", var_B4, var_132
  loc_150ADE1:   Set var_88 = var_B4
  loc_150AE0D:   If (var_88.RecordCount > 0) Then
  loc_150AE2A:     var_A0 = var_88.Fields.Item("Name")
  loc_150AE49:     Set var_B4 = Me.Txt
  loc_150AE4F:     Call 0.Method_Proc_294_19_150B9D40 (CInt(2), var_B8)
  loc_150AE57:     var_B8.Text = CStr(var_A0.Value)
  loc_150AE6D:   End If
  loc_150AE70: Else
  loc_150AE7E:   Set var_8C = Me.Txt
  loc_150AE84:   Call 0.Method_Proc_294_19_150B9D40 (CInt(2), var_A0)
  loc_150AE8C:   var_A0.Text = vbNullString
  loc_150AE98: End If
  loc_150AEB5: var_A0 = Me.Recordset15.Fields.Item("BanquetKitchen")
  loc_150AEC6: var_132 = IsNull(CVar(var_A0))
  loc_150AEDE: var_B4 = Me.Recordset15.Fields
  loc_150AEE6: var_B8 = var_B4.Item("BanquetKitchen")
  loc_150AF1E: Set var_12C = Me.Txt
  loc_150AF24: Call 0.Method_Proc_294_19_150B9D40 (CInt(&HD), var_130)
  loc_150AF2C: var_130.Tag = CStr(IIf(var_132, vbNullString, CVar(var_B8)))
  loc_150AF5A: Set var_8C = Me.Txt
  loc_150AF60: Call 0.Method_Proc_294_19_150B9D40 (CInt(&HD), var_A0)
  loc_150AF68: var_BC = var_A0.Tag
  loc_150AF7F: If (var_BC <> vbNullString) Then
  loc_150AFA0:   Set var_8C = Me.Txt
  loc_150AFA6:   Call 0.Method_Proc_294_19_150B9D40 (CInt(&HD), var_A0, var_BC, "Select Name From Godownmast Where Code='")
  loc_150AFAE:   var_B0 = var_A0.Tag
  loc_150AFB7:   var_C0 = -1 & var_BC
  loc_150AFC7:   unk_46EAD9.Execute var_C0 & "'", var_B4, var_132
  loc_150AFD2:   Set var_88 = var_B4
  loc_150AFFE:   If (var_88.RecordCount > 0) Then
  loc_150B01B:     var_A0 = var_88.Fields.Item("Name")
  loc_150B03A:     Set var_B4 = Me.Txt
  loc_150B040:     Call 0.Method_Proc_294_19_150B9D40 (CInt(&HD), var_B8)
  loc_150B048:     var_B8.Text = CStr(var_A0.Value)
  loc_150B05E:   End If
  loc_150B061: Else
  loc_150B06F:   Set var_8C = Me.Txt
  loc_150B075:   Call 0.Method_Proc_294_19_150B9D40 (CInt(&HD), var_A0)
  loc_150B07D:   var_A0.Text = vbNullString
  loc_150B089: End If
  loc_150B0A6: var_A0 = Me.Recordset15.Fields.Item("PurchaseTaxVAT")
  loc_150B0B7: var_132 = IsNull(CVar(var_A0))
  loc_150B0CF: var_B4 = Me.Recordset15.Fields
  loc_150B0D7: var_B8 = var_B4.Item("PurchaseTaxVAT")
  loc_150B10D: Set var_12C = Me.Txt
  loc_150B113: Call 0.Method_Proc_294_19_150B9D40 (7, var_130)
  loc_150B11B: var_130.Tag = CStr(IIf(var_132, vbNullString, CVar(var_B8)))
  loc_150B147: Set var_8C = Me.Txt
  loc_150B14D: Call 0.Method_Proc_294_19_150B9D40 (7, var_A0)
  loc_150B155: var_BC = var_A0.Tag
  loc_150B16C: If (var_BC <> vbNullString) Then
  loc_150B18B:   Set var_8C = Me.Txt
  loc_150B191:   Call 0.Method_Proc_294_19_150B9D40 (7, var_A0, var_BC, "Select MAx(Name) As Name From RevMast Where FieldType='T' and Code='")
  loc_150B199:   var_B0 = var_A0.Tag
  loc_150B1A2:   var_C0 = -1 & var_BC
  loc_150B1B2:   unk_46EAD9.Execute var_C0 & "'", var_B4, var_132
  loc_150B1BD:   Set var_88 = var_B4
  loc_150B1E9:   If (var_88.RecordCount > 0) Then
  loc_150B206:     var_A0 = var_88.Fields.Item("Name")
  loc_150B223:     Set var_B4 = Me.Txt
  loc_150B229:     Call 0.Method_Proc_294_19_150B9D40 (7, var_B8)
  loc_150B231:     var_B8.Text = CStr(var_A0.Value)
  loc_150B247:   End If
  loc_150B24A: Else
  loc_150B256:   Set var_8C = Me.Txt
  loc_150B25C:   Call 0.Method_Proc_294_19_150B9D40 (7, var_A0)
  loc_150B264:   var_A0.Text = vbNullString
  loc_150B270: End If
  loc_150B2F2: var_144 = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("AcFieldAlterable"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("AcFieldAlterable"))))
  loc_150B309: Set var_12C = Me.Txt
  loc_150B30F: Call 0.Method_Proc_294_19_150B9D40 (CInt(3), var_130)
  loc_150B317: var_130.Text = CStr(var_144)
  loc_150B3D6: var_194 = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("KitchenStockReport"))))) = vbNullString), "Standard", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("KitchenStockReport"))))))
  loc_150B3ED: Set var_12C = Me.Txt
  loc_150B3F3: Call 0.Method_Proc_294_19_150B9D40 (CInt(8), var_130)
  loc_150B3FB: var_130.Text = CStr(var_194)
  loc_150B4A5: var_144 = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RateEditableInPO"))) = vbNullString), "Yes", Trim(CVar(Me.Recordset15.Fields.Item("RateEditableInPO"))))
  loc_150B4BC: Set var_12C = Me.Txt
  loc_150B4C2: Call 0.Method_Proc_294_19_150B9D40 (CInt(4), var_130)
  loc_150B4CA: var_130.Text = CStr(var_144)
  loc_150B574: var_144 = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RateEditableInStockIssue"))) = vbNullString), "Yes", Trim(CVar(Me.Recordset15.Fields.Item("RateEditableInStockIssue"))))
  loc_150B58B: Set var_12C = Me.Txt
  loc_150B591: Call 0.Method_Proc_294_19_150B9D40 (CInt(5), var_130)
  loc_150B599: var_130.Text = CStr(var_144)
  loc_150B643: var_144 = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ItemRateInMRBasedOn"))) = vbNullString), "Purchase Rate", Trim(CVar(Me.Recordset15.Fields.Item("ItemRateInMRBasedOn"))))
  loc_150B65A: Set var_12C = Me.Txt
  loc_150B660: Call 0.Method_Proc_294_19_150B9D40 (CInt(9), var_130)
  loc_150B668: var_130.Text = CStr(var_144)
  loc_150B712: var_144 = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ItemRateInPurchaseBillBasedOn"))) = vbNullString), "Purchase Rate", Trim(CVar(Me.Recordset15.Fields.Item("ItemRateInPurchaseBillBasedOn"))))
  loc_150B729: Set var_12C = Me.Txt
  loc_150B72F: Call 0.Method_Proc_294_19_150B9D40 (CInt(&HA), var_130)
  loc_150B737: var_130.Text = CStr(var_144)
  loc_150B7E1: var_144 = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("BarCodeFeatureInPurchase"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("BarCodeFeatureInPurchase"))))
  loc_150B7F8: Set var_12C = Me.Txt
  loc_150B7FE: Call 0.Method_Proc_294_19_150B9D40 (CInt(6), var_130)
  loc_150B806: var_130.Text = CStr(var_144)
  loc_150B8B0: var_144 = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("AutoFillItemInKitchenClosingYN"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("AutoFillItemInKitchenClosingYN"))))
  loc_150B8C7: Set var_12C = Me.Txt
  loc_150B8CD: Call 0.Method_Proc_294_19_150B9D40 (CInt(&HC), var_130)
  loc_150B8D5: var_130.Text = CStr(var_144)
  loc_150B97F: var_144 = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ShowAllAcInPurcahseCategoryYN"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("ShowAllAcInPurcahseCategoryYN"))))
  loc_150B996: Set var_12C = Me.Txt
  loc_150B99C: Call 0.Method_Proc_294_19_150B9D40 (CInt(&HE), var_130)
  loc_150B9A4: var_130.Text = CStr(var_144)
  loc_150B9CC: Call Proc_294_20_F6B7FC()
  loc_150B9D1: Exit Sub
End Sub

Public Sub Proc_294_20_F6B7FC
  'Data Table: 46EAD4
  Dim MemVar_48A124 As Currency
  loc_F6B6D4: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F6B6E6:   Me.DGHelp.Visible = False
  loc_F6B6EE: End If
  loc_F6B709: If (Me.FrmList.Visible = &HFF) Then
  loc_F6B718:   Me.FrmList.Visible = False
  loc_F6B720: End If
  loc_F6B73C: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_F6B74E:   Me.DGDepart.Visible = False
  loc_F6B756: End If
  loc_F6B772: If (CBool(Me.DGGodown.Visible) = &HFF) Then
  loc_F6B784:   Me.DGGodown.Visible = False
  loc_F6B78C: End If
  loc_F6B7A8: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_F6B7BA:   Me.DGTaxStru.Visible = False
  loc_F6B7C2: End If
  loc_F6B7DE: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F6B7F0:   Me.FGPoint.Visible = False
  loc_F6B7F8: End If
  loc_F6B7F8: Exit Sub
  loc_F6B7F9: MemVar_48A124 = 
End Sub
