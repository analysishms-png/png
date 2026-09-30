VERSION 5.00
Begin VB.Form rsAdvanceDepDialog
  Caption = "Settlement"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 14100
  ClientHeight = 8175
  LockControls = -1  'True
  StartUpPosition = 2 'CenterScreen
  Begin Frame FrTxnNo
    BackColor = &HC9E2F5&
    Left = 8535
    Top = 3120
    Width = 4965
    Height = 300
    Visible = 0   'False
    TabIndex = 73
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 19
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3810
      Height = 285
      Enabled = 0   'False
      TabIndex = 18
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
    Begin Label LblName
      Caption = "Txn. No."
      Index = 5
      ForeColor = &HFF0000&
      Left = -15
      Top = 0
      Width = 795
      Height = 240
      TabIndex = 74
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
  Begin BtnEnh BtnEnh1
    Left = 1320
    Top = 5280
    Width = 5745
    Height = 435
    TabIndex = 69
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 7725
    Width = 14100
    Height = 450
    TabIndex = 57
  End
  Begin Frame FrCashCard
    BackColor = &HC9E2F5&
    Left = 8535
    Top = 2490
    Width = 4965
    Height = 615
    Visible = 0   'False
    TabIndex = 54
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 18
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 315
      Width = 3810
      Height = 285
      Enabled = 0   'False
      TabIndex = 17
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
      Index = 17
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3810
      Height = 285
      Enabled = 0   'False
      TabIndex = 16
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
    Begin Label LblName
      Caption = "Holder"
      Index = 4
      ForeColor = &HFF0000&
      Left = -15
      Top = 315
      Width = 630
      Height = 240
      TabIndex = 56
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
      Caption = "C.C. No."
      Index = 3
      ForeColor = &HFF0000&
      Left = -15
      Top = 0
      Width = 765
      Height = 240
      TabIndex = 55
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
  Begin Frame FrMem
    BackColor = &HC9E2F5&
    Left = 8535
    Top = 1110
    Width = 4920
    Height = 300
    Visible = 0   'False
    TabIndex = 52
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 16
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3795
      Height = 285
      TabIndex = 8
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
    Begin Label LblName
      Caption = "Member"
      Index = 28
      ForeColor = &HFF0000&
      Left = 0
      Top = 0
      Width = 780
      Height = 240
      TabIndex = 53
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
  Begin Frame FrRem
    BackColor = &HC9E2F5&
    Left = 8535
    Top = 3435
    Width = 4965
    Height = 300
    Visible = 0   'False
    TabIndex = 61
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 12
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3810
      Height = 285
      TabIndex = 19
      BorderStyle = 0 'None
      MaxLength = 100
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
    Begin Label LblNarr
      Caption = "Narration"
      ForeColor = &HFF0000&
      Left = -15
      Top = 15
      Width = 885
      Height = 240
      TabIndex = 68
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
  Begin Frame FrChqDet
    BackColor = &HC9E2F5&
    Left = 8535
    Top = 1800
    Width = 2595
    Height = 615
    Visible = 0   'False
    TabIndex = 46
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 10
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 1440
      Height = 285
      TabIndex = 14
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
      Index = 11
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 315
      Width = 1440
      Height = 285
      TabIndex = 15
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
    Begin Label LblName
      Caption = "Cheque No."
      Index = 15
      ForeColor = &HFF0000&
      Left = -15
      Top = 0
      Width = 1110
      Height = 240
      TabIndex = 48
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
      Caption = "Cheque Dt."
      Index = 16
      ForeColor = &HFF0000&
      Left = -15
      Top = 315
      Width = 1050
      Height = 240
      TabIndex = 47
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
  Begin Frame FrSendRoom
    BackColor = &HC9E2F5&
    Left = 8580
    Top = 450
    Width = 2580
    Height = 285
    Visible = 0   'False
    TabIndex = 44
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 14
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 1440
      Height = 285
      TabIndex = 6
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
    Begin Label LblName
      Caption = "Room No.#"
      Index = 26
      ForeColor = &HFF0000&
      Left = -15
      Top = 0
      Width = 1035
      Height = 240
      TabIndex = 45
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
  Begin Frame FrEmp
    BackColor = &HC9E2F5&
    Left = 8535
    Top = 1470
    Width = 4935
    Height = 300
    Visible = 0   'False
    TabIndex = 42
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 13
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3795
      Height = 285
      TabIndex = 13
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
    Begin Label LblName
      Caption = "Staff"
      Index = 22
      ForeColor = &HFF0000&
      Left = -15
      Top = 0
      Width = 435
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
  End
  Begin Frame FrComp
    BackColor = &HC9E2F5&
    Left = 8580
    Top = 750
    Width = 4920
    Height = 300
    Visible = 0   'False
    TabIndex = 40
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 15
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3795
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
    Begin Label LblName
      Caption = "Company"
      Index = 27
      ForeColor = &HFF0000&
      Left = 0
      Top = 0
      Width = 900
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
  End
  Begin Frame FrCCDet
    BackColor = &HC9E2F5&
    Left = 390
    Top = 7905
    Width = 5790
    Height = 960
    Visible = 0   'False
    TabIndex = 36
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 9
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 3540
      Top = 630
      Width = 705
      Height = 285
      TabIndex = 12
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
      Index = 6
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1335
      Top = 0
      Width = 2895
      Height = 285
      TabIndex = 9
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
      Index = 7
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1335
      Top = 315
      Width = 2910
      Height = 285
      TabIndex = 10
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
      Index = 8
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1335
      Top = 630
      Width = 1275
      Height = 285
      TabIndex = 11
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
    Begin Label LblName
      Caption = "Batch No."
      Index = 1
      ForeColor = &HFF0000&
      Left = 2625
      Top = 645
      Width = 915
      Height = 240
      TabIndex = 50
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
      Caption = "C.C. No."
      Index = 18
      ForeColor = &HFF0000&
      Left = 210
      Top = 0
      Width = 765
      Height = 240
      TabIndex = 39
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
      Caption = "Holder"
      Index = 19
      ForeColor = &HFF0000&
      Left = 210
      Top = 315
      Width = 630
      Height = 240
      TabIndex = 38
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
      Caption = "Exp.Dt."
      Index = 20
      ForeColor = &HFF0000&
      Left = 210
      Top = 630
      Width = 675
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
  End
  Begin DataGrid DGCompany
    Left = 5145
    Top = 8010
    Width = 4215
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 34
  End
  Begin DataGrid DGTable
    Left = 6195
    Top = 7530
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 32
  End
  Begin DataGrid DGRoom
    Left = 7590
    Top = 6915
    Width = 2355
    Height = 2430
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 33
  End
  Begin DataGrid DGPayType
    Left = 7275
    Top = 6570
    Width = 4995
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 20
  End
  Begin DataGrid DGEmp
    Left = 7830
    Top = 6150
    Width = 4170
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 30
  End
  Begin Frame FrRest
    BackColor = &HC9E2F5&
    Left = 1065
    Top = 1050
    Width = 5775
    Height = 1080
    Visible = 0   'False
    TabIndex = 26
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 20
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 3525
      Top = 780
      Width = 1395
      Height = 285
      TabIndex = 5
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 5
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 780
      Width = 1440
      Height = 285
      TabIndex = 4
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 4
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 465
      Width = 3810
      Height = 285
      TabIndex = 3
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
      Index = 3
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 150
      Width = 3810
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
    Begin Label LblName
      Caption = "Tip"
      Index = 21
      ForeColor = &HFF0000&
      Left = 2895
      Top = 780
      Width = 300
      Height = 240
      TabIndex = 31
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
      Index = 14
      ForeColor = &HFF0000&
      Left = 0
      Top = 780
      Width = 735
      Height = 240
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
    Begin Label LblName
      Caption = "Room/T"
      Index = 12
      ForeColor = &HFF0000&
      Left = 0
      Top = 495
      Width = 735
      Height = 240
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
    Begin Label LblName
      Caption = "Type"
      Index = 13
      ForeColor = &HFF0000&
      Left = 0
      Top = 150
      Width = 465
      Height = 240
      TabIndex = 27
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 1665
    Top = 4080
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 25
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF&
    Left = 5055
    Top = 570
    Width = 1155
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    Alignment = 2 'Center
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF&
    Left = 2400
    Top = 585
    Width = 960
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
  Begin TextBox Txt
    Index = 0
    BackColor = &H80000004&
    Left = 6570
    Top = 45
    Width = 2145
    Height = 255
    Visible = 0   'False
    TabIndex = 21
    BorderStyle = 0 'None
    MaxLength = 50
    Locked = -1  'True
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 510
    Top = 3795
    Width = 6795
    Height = 1410
    TabIndex = 63
  End
  Begin MSFlexGrid FGPoint
    Left = 8535
    Top = 3630
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 49
  End
  Begin DataGrid DGMember
    Left = 12030
    Top = 3900
    Width = 6750
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 51
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 90
    Top = 2340
    Width = 2880
    Height = 255
    TabIndex = 72
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
    Left = 3465
    Top = 2340
    Width = 2790
    Height = 285
    TabIndex = 71
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 70
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
  Begin Label LTxt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1050
    Top = 3345
    Width = 1410
    Height = 285
    TabIndex = 67
    Alignment = 2 'Center
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
  Begin Label LTxt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 5505
    Top = 3345
    Width = 1320
    Height = 285
    TabIndex = 66
    Alignment = 2 'Center
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
  Begin Label LTxt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2475
    Top = 3345
    Width = 1500
    Height = 285
    TabIndex = 65
    Alignment = 2 'Center
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
  Begin Label LblName
    Caption = "Bill Amount"
    Index = 23
    BackColor = &HC7EBEB&
    ForeColor = &HC00000&
    Left = 1050
    Top = 3060
    Width = 1410
    Height = 285
    TabIndex = 64
    Alignment = 2 'Center
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
  Begin Label LblName
    Caption = "Paid Amount"
    Index = 24
    BackColor = &HC7EBEB&
    ForeColor = &H808000&
    Left = 2475
    Top = 3060
    Width = 1500
    Height = 285
    TabIndex = 62
    Alignment = 2 'Center
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
  Begin Label LblName
    Caption = "Balance"
    Index = 17
    BackColor = &HC7EBEB&
    ForeColor = &HFF&
    Left = 5505
    Top = 3060
    Width = 1335
    Height = 285
    TabIndex = 60
    Alignment = 2 'Center
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
  Begin Label LblName
    Caption = "Payable Amt"
    Index = 0
    BackColor = &HC7EBEB&
    ForeColor = &H0&
    Left = 3990
    Top = 3060
    Width = 1500
    Height = 285
    TabIndex = 59
    Alignment = 2 'Center
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
  Begin Label LTxt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3990
    Top = 3345
    Width = 1500
    Height = 285
    TabIndex = 58
    Alignment = 2 'Center
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
  Begin Label Label1
    Caption = "Press Ctrl+S to Save"
    ForeColor = &HFF0000&
    Left = 12120
    Top = 8100
    Width = 2970
    Height = 300
    Visible = 0   'False
    TabIndex = 35
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
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
    Left = 14670
    Top = 1845
    Width = 675
    Height = 240
    Visible = 0   'False
    TabIndex = 24
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Lbl
    Caption = "Deposit Date"
    Index = 37
    ForeColor = &HFF0000&
    Left = 3840
    Top = 615
    Width = 1200
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
  Begin Label Lbl
    Caption = "Deposit No"
    Index = 36
    ForeColor = &HFF0000&
    Left = 1290
    Top = 615
    Width = 1020
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
  Begin Menu popup
    Visible = 0   'False
    Caption = ""
    Begin Menu Del
      Caption = "Delete"
    End
  End
End

Attribute VB_Name = "rsAdvanceDepDialog"

Private global_180 As Double
Private global_104 As Long
Private global_108 As Long
Private global_132 As Double
Private global_100 As Integer
Private global_172 As Integer

Private Sub DGPayType_UnknownEvent_9 'F6F99C
  'Data Table: 53E44C
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_BC As TextBox
  loc_F6F873: Me.DGPayType.Visible = False
  loc_F6F881: var_AC = global_108
  loc_F6F88D: If Not (var_AC = 5) Then
  loc_F6F899:   If (var_AC = 6) Then
  loc_F6F89C:   End If
  loc_F6F8B3:   If (Me.RecordCount > 0) Then
  loc_F6F8F2:     Set var_B8 = Me.Txt
  loc_F6F8F8:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_BC)
  loc_F6F900:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F6F933:     var_B4 = Me.Fields.Item("Code")
  loc_F6F952:     Set var_B8 = Me.Txt
  loc_F6F958:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_BC)
  loc_F6F960:     var_BC.Tag = CStr(var_B4.Value)
  loc_F6F976:   End If
  loc_F6F981:   Set var_A8 = Me.Txt
  loc_F6F987:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_B4)
  loc_F6F98F:   var_B4.SetFocus
  loc_F6F99B: End If
  loc_F6F99B: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'EA839C
  'Data Table: 53E44C
  Dim var_A8 As Variant
  loc_EA831C: Set var_88 = Me.DGPayType
  loc_EA8346: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA834E: Set var_BC = Me.DGPayType
  loc_EA838A: Proc_6_138_106E830(Me.DGPayType, global_60, CInt(3), Me.FGPoint)
  loc_EA8398: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F3C2B4
  'Data Table: 53E44C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3C1AB: Me.DGRoom.Visible = False
  loc_F3C1CA: If (Me.RecordCount > 0) Then
  loc_F3C209:   Set var_B4 = Me.Txt
  loc_F3C20F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F3C217:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3C24A:   var_B0 = Me.Fields.Item("Code")
  loc_F3C269:   Set var_B4 = Me.Txt
  loc_F3C26F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F3C277:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3C28D: End If
  loc_F3C298: Set var_A8 = Me.Txt
  loc_F3C29E: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&HE))
  loc_F3C2A6: var_B0.SetFocus
  loc_F3C2B2: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_1F 'EA808C
  'Data Table: 53E44C
  Dim var_A8 As Variant
  loc_EA800C: Set var_88 = Me.DGRoom
  loc_EA8036: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA803E: Set var_BC = Me.DGRoom
  loc_EA807A: Proc_6_138_106E830(Me.DGRoom, global_72, CInt(&HE), Me.FGPoint)
  loc_EA8088: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '15D70D4
  'Data Table: 53E44C
  Dim var_8C As Variant
  Dim var_98 As Variant
  Dim var_9A As Integer
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_CC As String
  Dim var_108 As Variant
  Dim var_DC As Variant
  Dim var_88 As Frame
  Dim var_94 As String
  Dim var_124 As Double
  loc_15D5D7A: Set var_88 = Me.Txt
  loc_15D5D80: Call 0.Method_Txt_GotFocus0 (Index)
  loc_15D5D8E: Proc_6_74_E23240(var_8C)
  loc_15D5DA9: Set var_88 = Me.Txt
  loc_15D5DAF: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D5DB7: var_8C.SelStart = 0
  loc_15D5DD0: Set var_88 = Me.Txt
  loc_15D5DD6: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D5DF1: Set var_90 = Me.Txt
  loc_15D5DF7: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_15D5DFF: var_98.SelLength = Len(var_8C.Text)
  loc_15D5E12: Call Proc_76_76_F96F54(var_8C)
  loc_15D5E1A: var_9A = Index
  loc_15D5E25: If (var_9A = CInt(&HC)) Then
  loc_15D5E35:   Set var_88 = Me.Txt
  loc_15D5E3B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D5E71:   var_98 = Me.Fields.Item("PayType")
  loc_15D5E81:   var_CC = "Cash"
  loc_15D5EA6:   If CBool((var_8C.Text = vbNullString) And (var_98.Value = var_CC)) Then
  loc_15D5EB6:     Set var_88 = Me.Txt
  loc_15D5EBC:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D5EC4:     var_8C.Text = "CASH PAYMENT RECD"
  loc_15D5EDF:     Set var_88 = Me.Txt
  loc_15D5EE5:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D5EED:     var_8C.SelStart = 0
  loc_15D5F06:     Set var_88 = Me.Txt
  loc_15D5F0C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D5F14:     var_94 = var_8C.Text
  loc_15D5F27:     Set var_90 = Me.Txt
  loc_15D5F2D:     Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_15D5F35:     var_98.SelLength = Len(var_94)
  loc_15D5F48:   End If
  loc_15D5F4B: Else
  loc_15D5F53:   If (var_9A = CInt(3)) Then
  loc_15D5F76:     Set var_98 = Me.Txt
  loc_15D5F7C:     Call 0.Method_Txt_GotFocus0 (CInt(3), var_108)
  loc_15D5F97:     Set var_88 = Me.Txt
  loc_15D5F9D:     Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_15D5FB5:     var_AC = CVar(((var_8C.Top + Me.FrRest.Top) + var_108.Height)) 'Single
  loc_15D5FC4:     Me.DGPayType.Top = "PayType"
  loc_15D5FF8:     Set var_88 = Me.Txt
  loc_15D5FFE:     Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_15D6012:     var_AC = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_15D6021:     Me.DGPayType.Left = "PayType"
  loc_15D6048:     If (Me.RecordCount > 0) Then
  loc_15D6056:       Set var_8C = Me.FGPoint
  loc_15D606E:       Proc_6_137_1192FDC(Me.DGPayType, global_60, Index)
  loc_15D607C:     End If
  loc_15D60CA:     Set var_88 = Me.Txt
  loc_15D60D0:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15D60D8:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15D60F0:     If (var_8C Or (var_94 = vbNullString)) Then
  loc_15D60F3:       Exit Sub
  loc_15D60F4:     End If
  loc_15D6101:     Set var_88 = Me.Txt
  loc_15D6107:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D610F:     var_94 = var_8C.Text
  loc_15D6121:     var_AC = "Name"
  loc_15D615C:     If CBool(CVar(var_94) <> Me.Fields.Item(var_AC).Value) Then
  loc_15D6165:       Me.MoveFirst
  loc_15D6188:       Set var_88 = Me.Txt
  loc_15D618E:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_15D6196:       0 = var_8C.Text
  loc_15D61AF:       Me.Find 1 & var_94 & "'", var_AC, var_9A
  loc_15D61C4:     End If
  loc_15D61C7:   Else
  loc_15D61CF:     If (var_9A = CInt(&HD)) Then
  loc_15D61F2:       Set var_98 = Me.Txt
  loc_15D61F8:       Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_108)
  loc_15D6213:       Set var_88 = Me.Txt
  loc_15D6219:       Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_8C)
  loc_15D6231:       var_AC = CVar(((var_8C.Top + Me.FrRest.Top) + var_108.Height)) 'Single
  loc_15D6240:       Me.DGEmp.Top = var_AC
  loc_15D6274:       Set var_88 = Me.Txt
  loc_15D627A:       Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_8C)
  loc_15D628E:       var_AC = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_15D629D:       Me.DGEmp.Left = var_AC
  loc_15D62C4:       If (Me.RecordCount > 0) Then
  loc_15D62D2:         Set var_8C = Me.FGPoint
  loc_15D62EA:         Proc_6_137_1192FDC(Me.DGEmp, global_64)
  loc_15D62F8:       End If
  loc_15D6346:       Set var_88 = Me.Txt
  loc_15D634C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15D6354:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15D636C:       If (Index Or (var_94 = vbNullString)) Then
  loc_15D636F:         Exit Sub
  loc_15D6370:       End If
  loc_15D637D:       Set var_88 = Me.Txt
  loc_15D6383:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D638B:       var_94 = var_8C.Text
  loc_15D639D:       var_AC = "Name"
  loc_15D63D8:       If CBool(CVar(var_94) <> Me.Fields.Item(var_AC).Value) Then
  loc_15D63E1:         Me.MoveFirst
  loc_15D6404:         Set var_88 = Me.Txt
  loc_15D640A:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_15D6412:         0 = var_8C.Text
  loc_15D642B:         Me.Find 1 & var_94 & "'", var_AC, var_8C
  loc_15D6440:       End If
  loc_15D6443:     Else
  loc_15D644B:       If (var_9A = CInt(4)) Then
  loc_15D646E:         Set var_98 = Me.Txt
  loc_15D6474:         Call 0.Method_Txt_GotFocus0 (CInt(4), var_108)
  loc_15D648F:         Set var_88 = Me.Txt
  loc_15D6495:         Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_15D64AD:         var_AC = CVar(((var_8C.Top + Me.FrRest.Top) + var_108.Height)) 'Single
  loc_15D64BC:         Me.DGTable.Top = var_AC
  loc_15D64F0:         Set var_88 = Me.Txt
  loc_15D64F6:         Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_15D650A:         var_AC = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_15D6519:         Me.DGTable.Left = var_AC
  loc_15D6540:         If (Me.RecordCount > 0) Then
  loc_15D654E:           Set var_8C = Me.FGPoint
  loc_15D6566:           Proc_6_137_1192FDC(Me.DGTable, global_68)
  loc_15D6574:         End If
  loc_15D65C2:         Set var_88 = Me.Txt
  loc_15D65C8:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15D65D0:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15D65E8:         If (Index Or (var_94 = vbNullString)) Then
  loc_15D65EB:           Exit Sub
  loc_15D65EC:         End If
  loc_15D65F9:         Set var_88 = Me.Txt
  loc_15D65FF:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D6607:         var_94 = var_8C.Text
  loc_15D660F:         var_DC = CVar(var_94) 'String
  loc_15D6654:         If CBool(var_DC <> Me.Fields.Item("Name").Value) Then
  loc_15D665D:           Me.MoveFirst
  loc_15D6682:           Set var_88 = Me.Txt
  loc_15D6688:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_15D6690:           0 = var_8C.Text
  loc_15D669E:           Proc_6_17_EAAE40(var_DC, CVar(var_94), 1)
  loc_15D66B4:           Me.Find CStr(var_CC & var_DC), var_8C, 
  loc_15D66CC:         End If
  loc_15D66CF:       Else
  loc_15D66D7:         If (var_9A = CInt(&HE)) Then
  loc_15D66FA:           Set var_98 = Me.Txt
  loc_15D6700:           Call 0.Method_Txt_GotFocus0 (CInt(&HE), var_108)
  loc_15D671B:           Set var_88 = Me.Txt
  loc_15D6721:           Call 0.Method_Txt_GotFocus0 (CInt(&HE), var_8C)
  loc_15D6739:           var_AC = CVar(((var_8C.Top + Me.FrSendRoom.Top) + var_108.Height)) 'Single
  loc_15D6748:           Me.DGRoom.Top = "Name ="
  loc_15D677C:           Set var_88 = Me.Txt
  loc_15D6782:           Call 0.Method_Txt_GotFocus0 (CInt(&HE), var_8C)
  loc_15D6796:           var_AC = CVar((var_8C.Left + Me.FrSendRoom.Left)) 'Single
  loc_15D67A5:           Me.DGRoom.Left = "Name ="
  loc_15D67CC:           If (Me.RecordCount > 0) Then
  loc_15D67DA:             Set var_8C = Me.FGPoint
  loc_15D67F2:             Proc_6_137_1192FDC(Me.DGRoom, global_72)
  loc_15D6800:           End If
  loc_15D684E:           Set var_88 = Me.Txt
  loc_15D6854:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15D685C:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15D6874:           If (Index Or (var_94 = vbNullString)) Then
  loc_15D6877:             Exit Sub
  loc_15D6878:           End If
  loc_15D6885:           Set var_88 = Me.Txt
  loc_15D688B:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D6893:           var_94 = var_8C.Text
  loc_15D689B:           var_DC = CVar(var_94) 'String
  loc_15D68B4:           var_90 = Me.Fields
  loc_15D68E0:           If CBool(var_DC <> var_90.Item("Name").Value) Then
  loc_15D68E9:             Me.MoveFirst
  loc_15D690E:             Set var_88 = Me.Txt
  loc_15D6914:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_15D691C:             0 = var_8C.Text
  loc_15D692A:             Proc_6_17_EAAE40(var_DC, CVar(var_94), 1)
  loc_15D6940:             Me.Find CStr(var_CC & var_DC), var_8C, 
  loc_15D6958:           End If
  loc_15D695B:         Else
  loc_15D6963:           If (var_9A = CInt(&HF)) Then
  loc_15D6974:             Set var_8C = Me.Txt
  loc_15D697A:             Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_90)
  loc_15D69A0:             var_AC = CVar((Me.FrComp.Top + var_90.Height)) 'Single
  loc_15D69AF:             Me.DGCompany.Top = "Name ="
  loc_15D69F1:             Set var_88 = Me.Txt
  loc_15D69F7:             Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_8C)
  loc_15D6A0F:             var_AC = CVar(((var_8C.Left + Me.FrRest.Left) + Me.FrComp.Left)) 'Single
  loc_15D6A1E:             Me.DGCompany.Left = "Name ="
  loc_15D6A47:             If (Me.RecordCount > 0) Then
  loc_15D6A55:               Set var_8C = Me.FGPoint
  loc_15D6A6D:               Proc_6_137_1192FDC(Me.DGCompany, global_76)
  loc_15D6A7B:             End If
  loc_15D6AC9:             Set var_88 = Me.Txt
  loc_15D6ACF:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15D6AD7:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15D6AEF:             If (Index Or (var_94 = vbNullString)) Then
  loc_15D6AF2:               Exit Sub
  loc_15D6AF3:             End If
  loc_15D6B00:             Set var_88 = Me.Txt
  loc_15D6B06:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D6B0E:             var_94 = var_8C.Text
  loc_15D6B16:             var_DC = CVar(var_94) 'String
  loc_15D6B2F:             var_90 = Me.Fields
  loc_15D6B5B:             If CBool(var_DC <> var_90.Item("Name").Value) Then
  loc_15D6B64:               Me.MoveFirst
  loc_15D6B89:               Set var_88 = Me.Txt
  loc_15D6B8F:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_15D6B97:               0 = var_8C.Text
  loc_15D6BA5:               Proc_6_17_EAAE40(var_DC, CVar(var_94), 1)
  loc_15D6BBB:               Me.Find CStr(var_CC & var_DC), var_8C, 
  loc_15D6BD3:             End If
  loc_15D6BD6:           Else
  loc_15D6BDE:             If (var_9A = CInt(&H10)) Then
  loc_15D6BEF:               Set var_8C = Me.Txt
  loc_15D6BF5:               Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_90)
  loc_15D6C1B:               var_AC = CVar((Me.FrMem.Top + var_90.Height)) 'Single
  loc_15D6C2A:               Me.DGMember.Top = "Name ="
  loc_15D6C6C:               Set var_88 = Me.Txt
  loc_15D6C72:               Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_15D6C8F:               var_AC = CVar((((var_8C.Left + Me.FrRest.Left) + Me.FrMem.Left) - CDbl(1260))) 'Single
  loc_15D6C9E:               Me.DGMember.Left = "Name ="
  loc_15D6CC7:               If (Me.RecordCount > 0) Then
  loc_15D6CD5:                 Set var_8C = Me.FGPoint
  loc_15D6CED:                 Proc_6_137_1192FDC(Me.DGMember, global_80)
  loc_15D6CFB:               End If
  loc_15D6D49:               Set var_88 = Me.Txt
  loc_15D6D4F:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15D6D57:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15D6D6F:               If (Index Or (var_94 = vbNullString)) Then
  loc_15D6D72:                 Exit Sub
  loc_15D6D73:               End If
  loc_15D6D80:               Set var_88 = Me.Txt
  loc_15D6D86:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D6D8E:               var_94 = var_8C.Text
  loc_15D6D96:               var_DC = CVar(var_94) 'String
  loc_15D6DB7:               var_98 = Me.Fields.Item("Name")
  loc_15D6DDB:               If CBool(var_DC <> var_98.Value) Then
  loc_15D6DE4:                 Me.MoveFirst
  loc_15D6E09:                 Set var_88 = Me.Txt
  loc_15D6E0F:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_15D6E17:                 0 = var_8C.Text
  loc_15D6E25:                 Proc_6_17_EAAE40(var_DC, CVar(var_94), 1)
  loc_15D6E3B:                 Me.Find CStr(var_CC & var_DC), var_8C, 
  loc_15D6E53:               End If
  loc_15D6E56:             Else
  loc_15D6E5E:               If (var_9A = CInt(5)) Then
  loc_15D6E65:                 Set var_88 = Me.TopCtrl1
  loc_15D6E6B:                 Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_15D6E84:                 If (CStr() = "Add") Then
  loc_15D6E95:                   Set var_88 = Me.LTxt
  loc_15D6E9B:                   Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_15D6EB0:                   var_124 = Val(var_8C.Caption)
  loc_15D6EE8:                   Set var_90 = Me.Txt
  loc_15D6EEE:                   Call 0.Method_Txt_GotFocus0 (Index, var_98, CStr(Format(CVar(var_124), "0.00")))
  loc_15D6EF6:                   var_98.Text = 1
  loc_15D6F16:                 End If
  loc_15D6F1A:                 Set var_88 = Me.TopCtrl1
  loc_15D6F20:                 Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_15D6F43:                 If ((CStr(var_124) = "Edit") And (global_172 = 0)) Then
  loc_15D6F54:                   Set var_88 = Me.LTxt
  loc_15D6F5A:                   Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_15D6FA7:                   Set var_90 = Me.Txt
  loc_15D6FAD:                   Call 0.Method_Txt_GotFocus0 (Index, var_98, CStr(Format(CVar(Val(var_8C.Caption)), "0.00")))
  loc_15D6FB5:                   var_98.Text = 1
  loc_15D6FD5:                 End If
  loc_15D6FE4:                 Set var_88 = Me.Txt
  loc_15D6FEA:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, 0)
  loc_15D6FF2:                 var_8C.SelStart = 1
  loc_15D700B:                 Set var_88 = Me.Txt
  loc_15D7011:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D702C:                 Set var_90 = Me.Txt
  loc_15D7032:                 Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_15D703A:                 var_98.SelLength = Len(var_8C.Text)
  loc_15D7050:               Else
  loc_15D7058:                 If (var_9A = CInt(&H14)) Then
  loc_15D706A:                   Set var_88 = Me.Txt
  loc_15D7070:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D7078:                   var_8C.SelStart = 0
  loc_15D7091:                   Set var_88 = Me.Txt
  loc_15D7097:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D70B2:                   Set var_90 = Me.Txt
  loc_15D70B8:                   Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_15D70C0:                   var_98.SelLength = Len(var_8C.Text)
  loc_15D70D3:                 End If
  loc_15D70D3:               End If
  loc_15D70D3:             End If
  loc_15D70D3:           End If
  loc_15D70D3:         End If
  loc_15D70D3:       End If
  loc_15D70D3:     End If
  loc_15D70D3:   End If
  loc_15D70D3: End If
  loc_15D70D3: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '13DCABC
  'Data Table: 53E44C
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_90 As DataGrid
  Dim var_A0 As DataGrid
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim Shift As Integer
  Dim var_86 As Integer
  loc_13DC0F3: var_88 = Shift
  loc_13DC100: If (CLng(Shift) = &H1B) Then
  loc_13DC103:   Call Proc_76_76_F96F54(var_88)
  loc_13DC108:   Exit Sub
  loc_13DC109: End If
  loc_13DC10C: var_8A = KeyCode
  loc_13DC117: If (var_8A = CInt(3)) Then
  loc_13DC137:   Set var_A4 = Me.FGPoint
  loc_13DC142:   Set var_A0 = Nothing
  loc_13DC174:   Proc_6_69_134A630(Me.DGPayType, Me.Txt, CInt(3), global_60, Shift, 0)
  loc_13DC1E3:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13DC209:     Proc_6_138_106E830(Me.DGPayType, global_60, KeyCode, Me.FGPoint, 1)
  loc_13DC217:   End If
  loc_13DC21A: Else
  loc_13DC222:   If (var_8A = CInt(&HD)) Then
  loc_13DC24D:     Set var_A0 = Nothing
  loc_13DC27F:     Proc_6_69_134A630(Me.DGEmp, Me.Txt, CInt(&HD), global_64, Shift, 0, 1)
  loc_13DC2EE:     If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13DC2F5:       Set var_A0 = Me.DGEmp
  loc_13DC2FC:       Set var_94 = Me.FGPoint
  loc_13DC314:       Proc_6_138_106E830(var_A0, global_64, KeyCode, var_94, var_A0, Me.FGPoint)
  loc_13DC322:     End If
  loc_13DC325:   Else
  loc_13DC32D:     If (var_8A = CInt(9)) Then
  loc_13DC33A:       Set var_90 = Me.Txt
  loc_13DC340:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, 0, var_A0)
  loc_13DC35B:       Proc_6_41_FA1734(var_94, Shift, 6, 0)
  loc_13DC36A:     Else
  loc_13DC372:       If (var_8A = CInt(4)) Then
  loc_13DC392:         Set var_A4 = Me.FGPoint
  loc_13DC39D:         Set var_A0 = Nothing
  loc_13DC3CF:         Proc_6_69_134A630(Me.DGTable, Me.Txt, CInt(4), global_68, Shift, 0, 1)
  loc_13DC43E:         If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13DC445:           Set var_A0 = Me.DGTable
  loc_13DC464:           Proc_6_138_106E830(var_A0, global_68, KeyCode, Me.FGPoint, var_A0)
  loc_13DC472:         End If
  loc_13DC475:       Else
  loc_13DC47D:         If (var_8A = CInt(&HE)) Then
  loc_13DC4DA:           Proc_6_69_134A630(Me.DGRoom, Me.Txt, CInt(&HE), global_72, Shift, 0, 1, Nothing)
  loc_13DC549:           If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13DC56F:             Proc_6_138_106E830(Me.DGRoom, global_72, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13DC57D:           End If
  loc_13DC580:         Else
  loc_13DC588:           If (var_8A = CInt(&HF)) Then
  loc_13DC5E5:             Proc_6_69_134A630(Me.DGCompany, Me.Txt, CInt(&HF), global_76, Shift, 0, 1, Nothing)
  loc_13DC654:             If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13DC67A:               Proc_6_138_106E830(Me.DGCompany, global_76, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13DC688:             End If
  loc_13DC68B:           Else
  loc_13DC693:             If (var_8A = CInt(&H10)) Then
  loc_13DC6B3:               Set var_A4 = Me.FGPoint
  loc_13DC6F0:               Proc_6_69_134A630(Me.DGMember, Me.Txt, CInt(&H10), global_80, Shift, 0, 1, Nothing)
  loc_13DC75F:               If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13DC76D:                 Set var_94 = Me.FGPoint
  loc_13DC785:                 Proc_6_138_106E830(Me.DGMember, global_80, KeyCode, var_94, var_A4, 0)
  loc_13DC793:               End If
  loc_13DC796:             Else
  loc_13DC79E:               If (var_8A = CInt(&HC)) Then
  loc_13DC7AB:                 If (CLng(Shift) = &H2D) Then
  loc_13DC7B1:                   Call Proc_76_89_EE5848(var_BC, var_A4, 0)
  loc_13DC7C3:                   Set var_90 = Me.Txt
  loc_13DC7C9:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_BC)
  loc_13DC7ED:                   Set var_90 = Me.Txt
  loc_13DC7F3:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_BC)
  loc_13DC7FB:                   0 = var_A4
  loc_13DC80E:                   Set var_A0 = Me.Txt
  loc_13DC814:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4)
  loc_13DC81C:                   var_A4.SelStart = Len(var_BC)
  loc_13DC82F:                   Exit Sub
  loc_13DC830:                 End If
  loc_13DC830:               End If
  loc_13DC830:             End If
  loc_13DC830:           End If
  loc_13DC830:         End If
  loc_13DC830:       End If
  loc_13DC830:     End If
  loc_13DC830:   End If
  loc_13DC830: End If
  loc_13DC867: var_EC = Me.DGPayType.Visible
  loc_13DC87E: var_FC = Me.DGEmp.Visible
  loc_13DC8D7: If ((((((CBool(Me.DGTable.Visible) = 0) And (CBool(Me.DGRoom.Visible) = 0)) And (CBool(var_EC) = 0)) And (CBool(var_FC) = 0)) And (CBool(Me.DGCompany.Visible) = 0)) And (CBool(Me.DGMember.Visible) = 0)) Then
  loc_13DC8FA:   If (((CLng(Shift) = &H26) And (global_108 = 5)) And (KeyCode = CInt(3))) Then
  loc_13DC8FD:     Exit Sub
  loc_13DC8FE:   End If
  loc_13DC91C:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(9))) Then
  loc_13DC929:     If (CLng(Shift) = &H28) Then
  loc_13DC92C:       Exit Sub
  loc_13DC92D:     End If
  loc_13DC964:     If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_13DC967:       Call Proc_76_82_15DC004(var_8A)
  loc_13DC96E:       Shift = 0
  loc_13DC971:     End If
  loc_13DC971:     Exit Sub
  loc_13DC975:   Else
  loc_13DC993:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HC))) Then
  loc_13DC9A0:       If (CLng(Shift) = &H28) Then
  loc_13DC9A3:         Exit Sub
  loc_13DC9A4:       End If
  loc_13DC9DB:       If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_13DC9DE:         Call Proc_76_82_15DC004(Shift)
  loc_13DC9E5:         Shift = 0
  loc_13DC9E8:       End If
  loc_13DC9E8:       Exit Sub
  loc_13DC9EC:     Else
  loc_13DCA0A:       If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HE))) Then
  loc_13DCA17:         If (CLng(Shift) = &H28) Then
  loc_13DCA1A:           Exit Sub
  loc_13DCA1B:         End If
  loc_13DCA1D:         var_86 = 0
  loc_13DCA2A:         Call Txt_Validate(CInt(&HE))
  loc_13DCA35:         If (var_86 = &HFF) Then
  loc_13DCA38:           Exit Sub
  loc_13DCA39:         End If
  loc_13DCA70:         If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_13DCA73:           Call Proc_76_82_15DC004(var_86, var_86)
  loc_13DCA7A:           Shift = 0
  loc_13DCA7D:         End If
  loc_13DCA7D:         Exit Sub
  loc_13DCA7E:       End If
  loc_13DCA7E:     End If
  loc_13DCA7E:   End If
  loc_13DCA93:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_13DCA9C:     Proc_6_75_E5335C(Shift, arg_14)
  loc_13DCAA1:   End If
  loc_13DCAAB:   If (CLng(Shift) = &H26) Then
  loc_13DCAB4:     Proc_6_76_E533C8(Shift, arg_14)
  loc_13DCAB9:   End If
  loc_13DCAB9: End If
  loc_13DCAB9: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE7758
  'Data Table: 53E44C
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_EE769A: If (arg_10 = &HD) Then
  loc_EE769F:   arg_10 = 0
  loc_EE76A2: End If
  loc_EE76A5: Proc_6_58_E06050(arg_10)
  loc_EE76B0: Proc_6_133_E7FB08(var_94, arg_10)
  loc_EE76B9: arg_10 = CInt(var_94)
  loc_EE76C2: var_96 = KeyAscii
  loc_EE76CD: If Not (var_96 = CInt(5)) Then
  loc_EE76D8:   If (var_96 = CInt(&H14)) Then
  loc_EE76DB:   End If
  loc_EE76E5:   Set var_9C = Me.Txt
  loc_EE76EB:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_EE7706:   Proc_6_42_129B55C(var_A0, arg_10, 8)
  loc_EE7715: Else
  loc_EE771D:   If (var_96 = CInt(9)) Then
  loc_EE772A:     Set var_9C = Me.Txt
  loc_EE7730:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, 2)
  loc_EE774B:     Proc_6_42_129B55C(var_A0, arg_10, 6)
  loc_EE7757:   End If
  loc_EE7757: End If
  loc_EE7757: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1185C20
  'Data Table: 53E44C
  Dim var_86 As Integer
  loc_118583B: var_86 = KeyCode
  loc_1185846: If (var_86 = CInt(3)) Then
  loc_1185865:   If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_1185879:     var_A4 = "Name"
  loc_118589D:     Proc_6_68_12A2818(Me.DGPayType, Me.Txt, KeyCode, global_60)
  loc_11858D3:     Proc_6_138_106E830(Me.DGPayType, global_60, KeyCode, Me.FGPoint)
  loc_11858E1:   End If
  loc_11858E4: Else
  loc_11858EC:   If (var_86 = CInt(&HD)) Then
  loc_118590B:     If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_118591F:       var_A4 = "Name"
  loc_1185943:       Proc_6_68_12A2818(Me.DGEmp, Me.Txt, KeyCode, global_64, Shift)
  loc_1185979:       Proc_6_138_106E830(Me.DGEmp, global_64, KeyCode, Me.FGPoint)
  loc_1185987:     End If
  loc_118598A:   Else
  loc_1185992:     If (var_86 = CInt(4)) Then
  loc_11859B1:       If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_11859E9:         Proc_6_68_12A2818(Me.DGTable, Me.Txt, KeyCode, global_68, Shift)
  loc_1185A1F:         Proc_6_138_106E830(Me.DGTable, global_68, KeyCode, Me.FGPoint, "Name")
  loc_1185A2D:       End If
  loc_1185A30:     Else
  loc_1185A38:       If (var_86 = CInt(&HE)) Then
  loc_1185A57:         If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_1185A8F:           Proc_6_68_12A2818(Me.DGRoom, Me.Txt, KeyCode, global_72, Shift)
  loc_1185AC5:           Proc_6_138_106E830(Me.DGRoom, global_72, KeyCode, Me.FGPoint, "Name")
  loc_1185AD3:         End If
  loc_1185AD6:       Else
  loc_1185ADE:         If (var_86 = CInt(&HF)) Then
  loc_1185AFD:           If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_1185B35:             Proc_6_68_12A2818(Me.DGCompany, Me.Txt, KeyCode, global_76, Shift)
  loc_1185B6B:             Proc_6_138_106E830(Me.DGCompany, global_76, KeyCode, Me.FGPoint, "Name")
  loc_1185B79:           End If
  loc_1185B7C:         Else
  loc_1185B84:           If (var_86 = CInt(&H10)) Then
  loc_1185BA3:             If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_1185BDB:               Proc_6_68_12A2818(Me.DGMember, Me.Txt, KeyCode, global_80, Shift)
  loc_1185C11:               Proc_6_138_106E830(Me.DGMember, global_80, KeyCode, Me.FGPoint, "Name")
  loc_1185C1F:             End If
  loc_1185C1F:           End If
  loc_1185C1F:         End If
  loc_1185C1F:       End If
  loc_1185C1F:     End If
  loc_1185C1F:   End If
  loc_1185C1F: End If
  loc_1185C1F: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4AA24
  'Data Table: 53E44C
  loc_E4AA02: Set var_88 = Me.Txt
  loc_E4AA08: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4AA16: Proc_6_73_E23294(var_8C)
  loc_E4AA22: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '151C15C
  'Data Table: 53E44C
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_9C As String
  Dim var_BC As Variant
  Dim var_D0 As String
  Dim var_D4 As String
  Dim unk_53E46D As Connection15
  Dim var_A0 As Recordset15
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_CC As Variant
  Dim var_140 As Double
  Dim var_144 As TextBox
  loc_151B227: var_8E = Cancel
  loc_151B232: If (var_8E = CInt(1)) Then
  loc_151B243:   Set var_94 = Me.Txt
  loc_151B249:   Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_151B251:   var_9C = var_98.Text
  loc_151B268:   If (var_9C <> vbNullString) Then
  loc_151B271:     Call Proc_76_78_1158C74(MemVar_1F95044, var_9C)
  loc_151B27C:   Else
  loc_151B27E:     arg_10 = &HFF
  loc_151B281:     Exit Sub
  loc_151B282:   End If
  loc_151B285: Else
  loc_151B28D:   If (var_8E = CInt(4)) Then
  loc_151B29A:     Set var_94 = Me.Txt
  loc_151B2A0:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151B2A8:     var_9C = "Table"
  loc_151B2C9:     If (Proc_6_27_EA61EC(var_98, var_9C) = 0) Then
  loc_151B2D6:       Set var_94 = Me.Txt
  loc_151B2DC:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151B2E4:       var_98.SetFocus
  loc_151B2F2:       arg_10 = &HFF
  loc_151B2F5:       Exit Sub
  loc_151B2F6:     End If
  loc_151B344:     Set var_94 = Me.Txt
  loc_151B34A:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_151B36A:     If (var_98.Text Or (var_9C = vbNullString)) Then
  loc_151B37A:       Set var_94 = Me.Txt
  loc_151B380:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151B388:       var_98.Text = vbNullString
  loc_151B3A1:       Set var_94 = Me.Txt
  loc_151B3A7:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151B3AF:       var_98.Tag = vbNullString
  loc_151B3C6:       If (global_156 = "RO") Then
  loc_151B3CF:         global_152 = vbNullString
  loc_151B3D3:       End If
  loc_151B3D6:     Else
  loc_151B411:       Set var_A0 = Me.Txt
  loc_151B417:       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_151B41F:       var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_151B470:       Set var_A0 = Me.Txt
  loc_151B476:       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_151B47E:       var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_151B49F:       If (global_156 = "RO") Then
  loc_151B4BF:         var_98 = Me.Fields.Item("RoomCat")
  loc_151B4D0:         var_9C = CStr(var_98.Value)
  loc_151B4D6:         global_152 = var_9C
  loc_151B4E7:       End If
  loc_151B4E7:     End If
  loc_151B4EA:   Else
  loc_151B4F2:     If (var_8E = CInt(&HE)) Then
  loc_151B543:       Set var_94 = Me.Txt
  loc_151B549:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_151B551:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_151B569:       If (var_8E Or (var_9C = vbNullString)) Then
  loc_151B579:         Set var_94 = Me.Txt
  loc_151B57F:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151B587:         var_98.Text = vbNullString
  loc_151B5A0:         Set var_94 = Me.Txt
  loc_151B5A6:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151B5AE:         var_98.Tag = vbNullString
  loc_151B5BD:       Else
  loc_151B5F8:         Set var_A0 = Me.Txt
  loc_151B5FE:         Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_151B606:         var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_151B639:         var_98 = Me.Fields.Item("Code")
  loc_151B641:         var_CC = var_98.Value
  loc_151B64A:         var_9C = CStr(var_CC)
  loc_151B657:         Set var_A0 = Me.Txt
  loc_151B65D:         Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_151B665:         var_BC.Tag = var_9C
  loc_151B6A8:         Set var_94 = Me.Txt
  loc_151B6AE:         Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_9C, "Select count(Distinct Bill_no) from paycharge where bill_no is not null and bill_no<>'' and PayType='Room' And Docid='", var_CC, -1)
  loc_151B6B6:         var_A0 = var_98.Text
  loc_151B6BF:         var_D0 = var_BC & var_9C
  loc_151B6CF:         unk_53E46D.Execute var_D0 & "'", 0, var_E8
  loc_151B6DF:          = var_BC.Item()
  loc_151B6E7:          = var_E8.Value
  loc_151B714:         If (var_A0.Fields > 0) Then
  loc_151B719:           arg_10 = &HFF
  loc_151B71C:           Exit Sub
  loc_151B71D:         End If
  loc_151B75C:         var_F8 = "Select count(Distinct Bill_no) from paycharge where bill_no is not null and bill_no<>'' and FolionoDocid='" & Me.Fields.Item("FolioNoDocid").Value 
  loc_151B765:         var_118 = var_F8 & "'" 
  loc_151B769:         var_9C = CStr(var_118)
  loc_151B773:         unk_53E46D.Execute var_9C, var_138, -1
  loc_151B7B2:         var_98 = var_A0.Fields.Item(0)
  loc_151B7D4:         If (var_98.Value > 0) Then
  loc_151B7F0:           MsgBox("Guest Room Bill Already printed for this Room", &H10, var_F8, var_118, var_138)
  loc_151B805:           Set var_8C = Nothing
  loc_151B80A:           arg_10 = &HFF
  loc_151B80D:           Exit Sub
  loc_151B80E:         End If
  loc_151B80E:       End If
  loc_151B811:     Else
  loc_151B819:       If (var_8E = CInt(2)) Then
  loc_151B82A:         Set var_94 = Me.Txt
  loc_151B830:         Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_9C)
  loc_151B838:         arg_10 = var_98.Text
  loc_151B857:         Set var_A0 = Me.Txt
  loc_151B85D:         Call 0.Method_Txt_Validate0 (CInt(2), var_BC)
  loc_151B865:         var_BC.Text = Proc_6_34_14EEAAC(var_9C, var_A0)
  loc_151B882:         Call Proc_76_78_1158C74(MemVar_1F95044, var_9C)
  loc_151B898:         Set var_94 = Me.Txt
  loc_151B89E:         Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_151B8BD:         If (var_98.Text = vbNullString) Then
  loc_151B8C2:           arg_10 = &HFF
  loc_151B8C5:         End If
  loc_151B8C8:       Else
  loc_151B8D0:         If Not (var_8E = CInt(&HB)) Then
  loc_151B8DB:           If (var_8E = CInt(8)) Then
  loc_151B8DE:           End If
  loc_151B8E8:           Set var_94 = Me.Txt
  loc_151B8EE:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151B90E:           Set var_BC = Me.Txt
  loc_151B914:           Call 0.Method_Txt_Validate0 (Cancel, var_E8)
  loc_151B91C:           var_E8.Text = Proc_6_33_15125B8(var_98, arg_10)
  loc_151B932:         Else
  loc_151B93A:           If (var_8E = CInt(3)) Then
  loc_151B94A:             Set var_94 = Me.Txt
  loc_151B950:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151B96F:             If (var_98.Text <> vbNullString) Then
  loc_151B9AD:               Set var_A0 = Me.Txt
  loc_151B9B3:               Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_151BA0C:               Set var_A0 = Me.Txt
  loc_151BA12:               Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_151BA1A:               var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_151BA4A:               var_98 = Me.Fields.Item("PayType")
  loc_151BA61:               global_160 = Proc_6_38_E69628(CVar(var_98))
  loc_151BA7A:               Me.FrEmp.Visible = False
  loc_151BA8E:               Me.FrChqDet.Visible = False
  loc_151BAA2:               Me.FrCCDet.Visible = False
  loc_151BAB6:               Me.FrCashCard.Visible = False
  loc_151BADC:               Set var_94 = Me.Txt
  loc_151BAE2:               Call 0.Method_Txt_Validate0 (CInt(&H10), var_98, var_D0)
  loc_151BAEA:               (PSettlementMode = "Auto") = var_98.Tag
  loc_151BB06:               Set var_A0 = Me.Txt
  loc_151BB0C:               Call 0.Method_Txt_Validate0 (CInt(&H11), var_BC)
  loc_151BB14:               var_D4 = CStr(Me.Fields.Item("Name").Value)
  loc_151BB36:               If ((arg_10 And (var_D0 = vbNullString)) And (var_D4 = vbNullString)) Then
  loc_151BB39:                 Call Proc_76_70_12C9F5C()
  loc_151BB41:               Else
  loc_151BB6B:                 Set var_94 = Me.Txt
  loc_151BB71:                 Call 0.Method_Txt_Validate0 (CInt(&H11), var_98)
  loc_151BB79:                 var_D0 = var_98.Text
  loc_151BB95:                 If (((PSettlementMode = "Semi") And (global_160 = "Cash Card")) And (var_D0 = vbNullString)) Then
  loc_151BB98:                   Call Proc_76_70_12C9F5C()
  loc_151BBA0:                 Else
  loc_151BBBA:                   var_98 = Me.Fields.Item("PayType")
  loc_151BBCF:                   Call Proc_76_81_1210284(Proc_6_38_E69628(CVar(var_98)))
  loc_151BBDD:                 End If
  loc_151BBDD:               End If
  loc_151BBE0:             Else
  loc_151BBED:               Set var_94 = Me.Txt
  loc_151BBF3:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151BBFB:               var_98.Text = vbNullString
  loc_151BC14:               Set var_94 = Me.Txt
  loc_151BC1A:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151BC22:               var_98.Tag = vbNullString
  loc_151BC2E:             End If
  loc_151BC31:           Else
  loc_151BC39:             If Not (var_8E = CInt(5)) Then
  loc_151BC44:               If (var_8E = CInt(&H14)) Then
  loc_151BC47:               End If
  loc_151BC51:               Set var_94 = Me.Txt
  loc_151BC57:               Call 0.Method_Txt_Validate0 (Cancel)
  loc_151BC63:               Proc_6_40_EA5C80(CVar(var_98))
  loc_151BC7A:               var_118 = "0.00"
  loc_151BC83:               var_F8 = CVar(var_98) 'Double
  loc_151BC8A:               var_138 = Format(var_F8, var_118)
  loc_151BC92:               var_9C = CStr(var_138)
  loc_151BCA0:               Set var_A0 = Me.Txt
  loc_151BCA6:               Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_9C)
  loc_151BCAE:               var_BC.Text = 1
  loc_151BCD8:               Set var_A0 = Me.LTxt
  loc_151BCDE:               Call 0.Method_Txt_Validate0 (CInt(2), var_BC, var_D0)
  loc_151BCE6:               1 = var_BC.Caption
  loc_151BCF3:               var_140 = Val(var_D0)
  loc_151BD0C:               Set var_94 = Me.Txt
  loc_151BD12:               Call 0.Method_Txt_Validate0 (CInt(5), var_98, var_9C)
  loc_151BD1A:               (Cancel = CInt(5)) = var_98.Text
  loc_151BD3B:               Set var_E8 = Me.Txt
  loc_151BD41:               Call 0.Method_Txt_Validate0 (CInt(5), var_144, var_D4)
  loc_151BD49:               (CDbl(Val(var_9C)) > CDbl(var_140)) = var_144.Text
  loc_151BD7F:               If ((var_140 And (var_140 Or (CDbl(Val(var_D4)) < CDbl(0)))) And (global_172 = 0)) Then
  loc_151BD9B:                 MsgBox("Amount You have entered mismatched to Actual amount", &H40, var_F8, var_118, var_138)
  loc_151BDAD:                 arg_10 = &HFF
  loc_151BDB0:                 Exit Sub
  loc_151BDB1:               End If
  loc_151BDB4:             Else
  loc_151BDBC:               If (var_8E = CInt(&HF)) Then
  loc_151BE0D:                 Set var_94 = Me.Txt
  loc_151BE13:                 Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_151BE1B:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_151BE33:                 If (arg_10 Or (var_9C = vbNullString)) Then
  loc_151BE43:                   Set var_94 = Me.Txt
  loc_151BE49:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151BE51:                   var_98.Text = vbNullString
  loc_151BE6A:                   Set var_94 = Me.Txt
  loc_151BE70:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151BE78:                   var_98.Tag = vbNullString
  loc_151BE87:                 Else
  loc_151BEC2:                   Set var_A0 = Me.Txt
  loc_151BEC8:                   Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_151BED0:                   var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_151BF03:                   var_98 = Me.Fields.Item("Code")
  loc_151BF21:                   Set var_A0 = Me.Txt
  loc_151BF27:                   Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_151BF2F:                   var_BC.Tag = CStr(var_98.Value)
  loc_151BF5F:                   Set var_94 = Me.Txt
  loc_151BF65:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151BF6D:                   var_9C = var_98.Tag
  loc_151BF95:                   If (Proc_96_1_F8D0C4(Proc_6_38_E69628(CVar(var_9C))) = 0) Then
  loc_151BFB1:                     MsgBox("Credit Not Allowed.", 0, var_F8, var_118, var_138)
  loc_151BFC3:                     arg_10 = &HFF
  loc_151BFC6:                     Exit Sub
  loc_151BFC7:                   End If
  loc_151BFC7:                 End If
  loc_151BFCA:               Else
  loc_151BFD2:                 If (var_8E = CInt(&H10)) Then
  loc_151C023:                   Set var_94 = Me.Txt
  loc_151C029:                   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_151C031:                   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_151C049:                   If (arg_10 Or (var_9C = vbNullString)) Then
  loc_151C059:                     Set var_94 = Me.Txt
  loc_151C05F:                     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151C067:                     var_98.Text = vbNullString
  loc_151C080:                     Set var_94 = Me.Txt
  loc_151C086:                     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151C08E:                     var_98.Tag = vbNullString
  loc_151C09D:                   Else
  loc_151C0D8:                     Set var_A0 = Me.Txt
  loc_151C0DE:                     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_151C0E6:                     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_151C137:                     Set var_A0 = Me.Txt
  loc_151C13D:                     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_151C145:                     var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_151C15B:                   End If
  loc_151C15B:                 End If
  loc_151C15B:               End If
  loc_151C15B:             End If
  loc_151C15B:           End If
  loc_151C15B:         End If
  loc_151C15B:       End If
  loc_151C15B:     End If
  loc_151C15B:   End If
  loc_151C15B: End If
  loc_151C15B: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'ED84E8
  'Data Table: 53E44C
  loc_ED844C: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_ED844F:   Call DGTable_UnknownEvent_9()
  loc_ED8454: End If
  loc_ED8470: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_ED8473:   Call DGEmp_UnknownEvent_9()
  loc_ED8478: End If
  loc_ED8494: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_ED8497:   Call DGPayType_UnknownEvent_9()
  loc_ED849C: End If
  loc_ED84B8: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_ED84BB:   Call DGRoom_UnknownEvent_9()
  loc_ED84C0: End If
  loc_ED84DC: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_ED84DF:   Call DGCompany_UnknownEvent_9()
  loc_ED84E4: End If
  loc_ED84E4: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_9 'F3AF74
  'Data Table: 53E44C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3AE6B: Me.DGEmp.Visible = False
  loc_F3AE8A: If (Me.RecordCount > 0) Then
  loc_F3AEC9:   Set var_B4 = Me.Txt
  loc_F3AECF:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F3AED7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3AF0A:   var_B0 = Me.Fields.Item("Code")
  loc_F3AF29:   Set var_B4 = Me.Txt
  loc_F3AF2F:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F3AF37:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3AF4D: End If
  loc_F3AF58: Set var_A8 = Me.Txt
  loc_F3AF5E: Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&HD))
  loc_F3AF66: var_B0.SetFocus
  loc_F3AF72: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_1F 'EA8460
  'Data Table: 53E44C
  Dim var_A8 As Variant
  loc_EA83E0: Set var_88 = Me.DGEmp
  loc_EA840A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA8412: Set var_BC = Me.DGEmp
  loc_EA844E: Proc_6_138_106E830(Me.DGEmp, global_64, CInt(&HD), Me.FGPoint)
  loc_EA845C: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_9 'F4FD94
  'Data Table: 53E44C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4FC8B: Me.DGCompany.Visible = False
  loc_F4FCAA: If (Me.RecordCount > 0) Then
  loc_F4FCE9:   Set var_B4 = Me.Txt
  loc_F4FCEF:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F4FCF7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4FD2A:   var_B0 = Me.Fields.Item("Code")
  loc_F4FD49:   Set var_B4 = Me.Txt
  loc_F4FD4F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F4FD57:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4FD6D: End If
  loc_F4FD78: Set var_A8 = Me.Txt
  loc_F4FD7E: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HF))
  loc_F4FD86: var_B0.SetFocus
  loc_F4FD92: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_1F 'EA7D7C
  'Data Table: 53E44C
  Dim var_A8 As Variant
  loc_EA7CFC: Set var_88 = Me.DGCompany
  loc_EA7D26: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA7D2E: Set var_BC = Me.DGCompany
  loc_EA7D6A: Proc_6_138_106E830(Me.DGCompany, global_76, CInt(&HF), Me.FGPoint)
  loc_EA7D78: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E0AC58
  'Data Table: 53E44C
  loc_E0AC44: Call Proc_76_88_144B208()
  loc_E0AC4F: Call Proc_76_81_1210284(global_160)
  loc_E0AC54: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FDF7BC
  'Data Table: 53E44C
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FDF5F0: Set var_88 = Me.TopCtrl1
  loc_FDF5F6: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FDF60F: If (CStr() = "Browse") Then
  loc_FDF612:   Exit Sub
  loc_FDF613: End If
  loc_FDF630: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FDF633:   Exit Sub
  loc_FDF634: End If
  loc_FDF645: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FDF667:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FDF6A1:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FDF6C3:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FDF6D9:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FDF6E2:         Set var_110 = Me.FGrid
  loc_FDF6FD:       Else
  loc_FDF710:         Me.FGrid.Rows = 1
  loc_FDF734:         var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0))) 'String
  loc_FDF73C:         Set var_110 = Me.FGrid
  loc_FDF769:         Me.FGrid.FixedRows = 1
  loc_FDF771:       End If
  loc_FDF771:     End If
  loc_FDF774:   Else
  loc_FDF795:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FDF7A5:   End If
  loc_FDF7A9:   Set var_88 = Me.FGrid
  loc_FDF7BA: End If
  loc_FDF7BA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_E 'E3F65C
  'Data Table: 53E44C
  loc_E3F632: If (Cancel = 2) Then
  loc_E3F64D:   Call 0.Method_arg_2BC (Me.popup, var_98, var_A8)
  loc_E3F655:   Call FGrid_UnknownEvent_9()
  loc_E3F65A: End If
  loc_E3F65A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F7B0F4
  'Data Table: 53E44C
  Dim var_88 As String
  Dim var_D4 As TextBox
  Dim var_D8 As Long
  Dim var_8C As Label
  loc_F7AFA8: On Error Goto loc_F7B0EE
  loc_F7AFCE: Call Proc_76_71_FD0A34(Proc_5_1_100EC1C("ADD", Me))
  loc_F7AFD9: Call Proc_76_73_F88DF0(global_56)
  loc_F7B006: var_88 = CStr(Format(MemVar_1F950EC, "dd/MMM/yyyy"))
  loc_F7B015: Set var_8C = Me.Txt
  loc_F7B01B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4, var_88)
  loc_F7B023: var_D4.Text = 1
  loc_F7B03F: var_D8 = global_108
  loc_F7B04B: If Not (var_D8 = 5) Then
  loc_F7B057:   If (var_D8 = 6) Then
  loc_F7B05A:   End If
  loc_F7B067:   Set var_8C = Me.Txt
  loc_F7B06D:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_D4, &HFF)
  loc_F7B075:   var_D4.Enabled = var_D8
  loc_F7B08D:   If (global_104 = 2) Then
  loc_F7B096:     Call Proc_76_78_1158C74(MemVar_1F95044, var_88)
  loc_F7B0A9:     Set var_8C = Me.Txt
  loc_F7B0AF:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_D4)
  loc_F7B0B7:     var_D4.SetFocus
  loc_F7B0C3:   End If
  loc_F7B0C3: End If
  loc_F7B0D0: Me.LblUser.Caption = vbNullString
  loc_F7B0E5: Me.LblLDt.Caption = vbNullString
  loc_F7B0ED: Exit Sub
  loc_F7B0EE: ' Referenced from: F7AFA8
  loc_F7B0EE: Proc_6_60_E63754(1)
  loc_F7B0F3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBF3DC
  'Data Table: 53E44C
  loc_EBF344: On Error Goto loc_EBF3D4
  loc_EBF37E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBF38D:   Set var_110 = Me
  loc_EBF3A4:   Call Proc_76_71_FD0A34(Proc_5_1_100EC1C("INI", var_110))
  loc_EBF3AF:   Call Proc_76_76_F96F54(global_56)
  loc_EBF3B4:   Call Proc_76_75_15B4F88()
  loc_EBF3BC: Else
  loc_EBF3C2:   Call 0.Method_arg_1E8 (var_110)
  loc_EBF3CA:   Call var_110.SetFocus
  loc_EBF3D3: End If
  loc_EBF3D3: Exit Sub
  loc_EBF3D4: ' Referenced from: EBF344
  loc_EBF3D4: Proc_6_60_E63754()
  loc_EBF3D9: Exit Sub
  loc_EBF3DA: DOC
End Sub

Private Sub TopCtrl1_UnknownEvent_C 'FE0038
  'Data Table: 53E44C
  Dim unk_53E46D As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_FDFE6C: On Error Goto loc_FDFFE7
  loc_FDFE7D: If (Proc_183_56_FE8B08(global_56) = &HFF) Then
  loc_FDFE80:   Exit Sub
  loc_FDFE81: End If
  loc_FDFEB8: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F4, var_114) = 6) Then
  loc_FDFEC4:   unk_53E46D.BeginTrans var_118
  loc_FDFEDA:   var_94 = Me.Bookmark 'Variant
  loc_FDFF26:   var_F4 = "Delete From PayCharge Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_FDFF2A:   var_124 = CStr(var_F4)
  loc_FDFF34:   unk_53E46D.Execute var_124, var_114, -1
  loc_FDFF56:   unk_53E46D.CommitTrans
  loc_FDFF66:   Me.Requery -1
  loc_FDFF86:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_FDFF93:     Me.Bookmark = var_94
  loc_FDFF9B:   Else
  loc_FDFFAF:     If (Me.EOF = 0) Then
  loc_FDFFB8:       Me.MoveLast
  loc_FDFFBD:     End If
  loc_FDFFBD:   End If
  loc_FDFFBD:   Call Proc_76_75_15B4F88(var_128)
  loc_FDFFDE:   Proc_5_0_1107AD0(&HFF, Me)
  loc_FDFFE6: End If
  loc_FDFFE6: Exit Sub
  loc_FDFFE7: ' Referenced from: FDFE6C
  loc_FDFFED: unk_53E46D.RollbackTrans
  loc_FDFFFA: Set var_11C = Err()
  loc_FE0000: Call 0.Method_arg_2C (var_124, global_56)
  loc_FE0021: MsgBox(CVar(var_124), &H30, " Deletion Error ", var_F4, var_114)
  loc_FE0034: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'E89010
  'Data Table: 53E44C
  loc_E88F9C: On Error Goto loc_E8900A
  loc_E88FAD: If (Proc_183_55_FE8490(global_56) = &HFF) Then
  loc_E88FB0:   Exit Sub
  loc_E88FB1: End If
  loc_E88FD4: Call Proc_76_71_FD0A34(Proc_5_1_100EC1C("EDIT", Me))
  loc_E88FEC: Me.LblUser.Caption = vbNullString
  loc_E89001: Me.LblLDt.Caption = vbNullString
  loc_E89009: Exit Sub
  loc_E8900A: ' Referenced from: E88F9C
  loc_E8900A: Proc_6_60_E63754(global_56)
  loc_E8900F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1AA80
  'Data Table: 53E44C
  loc_E1AA75: Me.Global.Unload Me
  loc_E1AA7D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'DFDA3C
  'Data Table: 53E44C
  loc_DFDA38: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3B408
  'Data Table: 53E44C
  loc_E3B3F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3B400: Call Proc_76_75_15B4F88(global_56)
  loc_E3B405: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E35D68
  'Data Table: 53E44C
  loc_E35D58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E35D60: Call Proc_76_75_15B4F88(global_56)
  loc_E35D65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3B528
  'Data Table: 53E44C
  loc_E3B518: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3B520: Call Proc_76_75_15B4F88(global_56)
  loc_E3B525: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3B468
  'Data Table: 53E44C
  loc_E3B458: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3B460: Call Proc_76_75_15B4F88(global_56)
  loc_E3B465: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'DFDB74
  'Data Table: 53E44C
  loc_DFDB70: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E82C70
  'Data Table: 53E44C
  Dim Me As Recordset15
  loc_E82C07: Me.Requery -1
  loc_E82C17: Me.Requery -1
  loc_E82C27: Me.Requery -1
  loc_E82C37: Me.Requery -1
  loc_E82C47: Me.Requery -1
  loc_E82C57: Me.Requery -1
  loc_E82C67: Me.Requery -1
  loc_E82C6C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '17AD9A0
  'Data Table: 53E44C
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_114 As Variant
  Dim var_124 As Variant
  Dim var_128 As String
  Dim var_F0 As Variant
  Dim var_15C As Long
  Dim var_160 As Variant
  Dim var_168 As Variant
  Dim var_174 As Double
  Dim var_AA As Variant
  Dim unk_53E46D As Connection15
  Dim var_16C As String
  Dim var_184 As String
  Dim var_AE As Variant
  Dim var_18C As Long
  Dim var_98 As Variant
  Dim var_138 As Variant
  Dim var_19C As Variant
  Dim var_148 As Variant
  Dim var_110 As String
  Dim var_158 As Variant
  Dim var_1BC As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_298 As Variant
  Dim var_2BC As Variant
  Dim var_30C As Variant
  Dim var_32C As Long
  Dim var_368 As Variant
  Dim var_388 As Variant
  Dim var_39C As MSHFlexGrid
  Dim var_3BC As Variant
  Dim var_3DC As Variant
  Dim var_3F0 As Variant
  Dim var_354 As String
  Dim var_410 As Variant
  Dim var_4C0 As Variant
  Dim var_4E0 As Variant
  Dim var_504 As Variant
  Dim var_588 As MSHFlexGrid
  Dim var_598 As Variant
  Dim var_5E0 As Variant
  Dim var_654 As Long
  Dim var_67C As String
  Dim var_EBC As Double
  Dim var_714 As String
  Dim var_EC4 As Double
  Dim var_7FC As TextBox
  Dim var_848 As TextBox
  Dim var_ECC As Double
  Dim var_8E0 As Variant
  Dim var_974 As Variant
  Dim var_A08 As Variant
  Dim var_A9C As Variant
  Dim var_B40 As Variant
  Dim var_1F8 As String
  Dim var_204 As String
  Dim var_20C As String
  Dim var_218 As String
  Dim var_21C As String
  Dim var_220 As String
  Dim var_238 As Variant
  Dim var_288 As Variant
  Dim var_2CC As Variant
  Dim var_2FC As Variant
  Dim var_480 As Variant
  Dim var_490 As Variant
  Dim var_5B8 As Variant
  Dim var_604 As Variant
  Dim var_6BC As Variant
  Dim var_754 As Variant
  Dim var_794 As Variant
  Dim var_7D4 As Variant
  Dim var_8F0 As Variant
  Dim var_920 As Variant
  Dim var_A28 As Variant
  Dim var_A48 As Variant
  Dim var_CE4 As Variant
  Dim var_D0 As Recordset15
  Dim var_1F0 As String
  Dim var_31C As Variant
  Dim var_33C As Long
  Dim var_5DC As Variant
  Dim var_210 As String
  Dim var_440 As Variant
  Dim var_C8 As Double
  Dim var_EF4 As Double
  Dim var_228 As TextBox
  Dim var_EFC As Double
  Dim Me As Recordset15
  loc_17ABC58: On Error Goto loc_17AD92C
  loc_17ABC5B: var_E0 = 1
  loc_17ABC64: var_100 = 1
  loc_17ABC82: var_128 = CStr(Me.FGrid.TextMatrix))
  loc_17ABC93: If (var_128 = vbNullString) Then
  loc_17ABCA1:   var_138 = "Save Data"
  loc_17ABCB7:   MsgBox("Please Fill Payment Details Before Saving..", &H40, var_138, var_148, var_158)
  loc_17ABCC7:   Exit Sub
  loc_17ABCC8: End If
  loc_17ABCCE: var_15C = global_108
  loc_17ABCDA: If Not (var_15C = 5) Then
  loc_17ABCE6:   If (var_15C = 6) Then
  loc_17ABCE9:   End If
  loc_17ABCF7:   Set var_114 = Me.LTxt
  loc_17ABCFD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_128)
  loc_17ABD05:   var_15C = var_160.Caption
  loc_17ABD21:   If (CDbl(Val(var_128)) <> CDbl(0)) Then
  loc_17ABD32:     Set var_164 = Me.LTxt
  loc_17ABD38:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168, var_16C)
  loc_17ABD40:     var_100 = var_168.Caption
  loc_17ABD4D:     var_174 = Val(var_16C)
  loc_17ABD5E:     Set var_114 = Me.LTxt
  loc_17ABD64:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_128)
  loc_17ABD91:     If (CDbl(Val(var_128)) <> CDbl(var_160.Caption)) Then
  loc_17ABDB3:       MsgBox(CVar("Bill Amount and Received Amount Not Matched" & vbCrLf & "Entry could not be Saved?"), 0, var_138, var_148, var_158)
  loc_17ABDC6:       Exit Sub
  loc_17ABDC7:     End If
  loc_17ABDC7:   End If
  loc_17ABDC7: End If
  loc_17ABDEC: For var_178 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_AC = var_178 'Integer
  loc_17ABDF6:   var_E0 = CVar(CLng(var_AC)) 'Long
  loc_17ABDFB:   var_100 = 2
  loc_17ABE2A:   If (CStr(Me.FGrid.TextMatrix)) = "Cash Card") Then
  loc_17ABE2F:     var_AA = &HFF
  loc_17ABE32:   End If
  loc_17ABE35: Next var_178 'Integer
  loc_17ABE3D: Call Proc_76_85_1012778(var_17A)
  loc_17ABE48: If (var_17A = 0) Then
  loc_17ABE4B:   Exit Sub
  loc_17ABE4C: End If
  loc_17ABE50: Set var_114 = Me.TopCtrl1
  loc_17ABE56: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17ABE76: If ((CStr() = "Add") And (var_AA = &HFF)) Then
  loc_17ABE7C:   Call Proc_76_87_F68A38(var_17A)
  loc_17ABE87:   If (var_17A = 0) Then
  loc_17ABE8A:     Exit Sub
  loc_17ABE8B:   End If
  loc_17ABE8B: End If
  loc_17ABE8F: Set var_114 = Me.TopCtrl1
  loc_17ABE95: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17ABEAE: If (CStr() = "Add") Then
  loc_17ABEB7:   global_176 = MemVar_1F950C8
  loc_17ABEC0:   var_128 = Proc_6_14_EF402C()
  loc_17ABEC8:   global_180 = CDate(var_128)
  loc_17ABECE: End If
  loc_17ABED2: var_86 = CByte(0) 'Byte
  loc_17ABEDF: unk_53E46D.BeginTrans var_180
  loc_17ABEE8: var_86 = CByte(1) 'Byte
  loc_17ABF0A: Set var_114 = Me.Txt
  loc_17ABF10: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_128, "Delete From PayCharge Where Docid='")
  loc_17ABF18: var_124 = var_160.Text
  loc_17ABF21: var_16C = -1 & var_128
  loc_17ABF31: unk_53E46D.Execute var_16C & "'", var_164, global_180
  loc_17ABF70: For var_188 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_AC = var_188 'Integer
  loc_17ABF7A:   var_E0 = CVar(CLng(var_AC)) 'Long
  loc_17ABF7F:   var_100 = 2
  loc_17ABF8C:   Set var_114 = Me.FGrid
  loc_17ABF92:   var_124 = var_114.TextMatrix)
  loc_17ABFAE:   If (CStr(var_124) <> vbNullString) Then
  loc_17ABFB7:     var_AE = (var_AE + 1)
  loc_17ABFC0:     var_18C = global_108
  loc_17ABFCC:     If Not (var_18C = 5) Then
  loc_17ABFD8:       If (var_18C = 6) Then
  loc_17ABFDB:       End If
  loc_17AC002:       unk_53E46D.Execute "Select Name,ShortName from depart where code='" & global_52 & "'", var_124, -1
  loc_17AC00D:       Set var_98 = var_114
  loc_17AC031:       If (var_98.RecordCount > 0) Then
  loc_17AC038:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_17AC03D:         var_100 = 2
  loc_17AC05B:         var_128 = CStr(Me.FGrid.TextMatrix))
  loc_17AC06C:         If (var_128 <> "Room") Then
  loc_17AC073:           var_E0 = CVar(CLng(var_AC)) 'Long
  loc_17AC07B:           var_100 = CVar(CLng(&HE)) 'Long
  loc_17AC0B7:           If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_17AC0BE:             var_E0 = CVar(CLng(var_AC)) 'Long
  loc_17AC0C6:             var_100 = CVar(CLng(&HE)) 'Long
  loc_17AC0EF:             var_94 = CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_17AC101:           Else
  loc_17AC10C:             var_E0 = "ShortName"
  loc_17AC130:             var_138 = ("(" + var_98.Fields.Item(var_E0).Value)
  loc_17AC134:             var_100 = ") "
  loc_17AC139:             var_148 = (CVar(CStr(Me.FGrid.TextMatrix))) + var_100)
  loc_17AC13D:             var_110 = "BILL NO.- "
  loc_17AC142:             var_158 = (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + var_110)
  loc_17AC154:             Set var_164 = Me.Txt
  loc_17AC15A:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168, var_128, var_158, var_100, var_E0, var_100)
  loc_17AC162:             var_E0 = var_168.Text
  loc_17AC16D:             var_1BC = (var_100 + CVar(var_128))
  loc_17AC176:             var_1CC = (var_1BC + " ")
  loc_17AC17F:             var_1EC = (var_1CC + vbNullString)
  loc_17AC184:             var_94 = CStr(var_1EC)
  loc_17AC1A5:           End If
  loc_17AC1A8:         Else
  loc_17AC1B3:           var_E0 = "ShortName"
  loc_17AC1C7:           var_160 = var_98.Fields.Item(var_E0)
  loc_17AC1D7:           var_138 = ("(" + var_160.Value)
  loc_17AC1E0:           var_148 = (CVar(CStr(Me.FGrid.TextMatrix))) + ") ")
  loc_17AC1E4:           var_110 = "BILL NO.- "
  loc_17AC1E9:           var_158 = (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + var_110)
  loc_17AC1FB:           Set var_164 = Me.Txt
  loc_17AC201:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168, var_128, var_158, var_E0)
  loc_17AC209:           var_114 = var_168.Text
  loc_17AC214:           var_1BC = (var_18C + CVar(var_128))
  loc_17AC21D:           var_1CC = (var_1BC + " ")
  loc_17AC226:           var_1EC = (var_1CC + vbNullString)
  loc_17AC22B:           var_94 = CStr(var_1EC)
  loc_17AC24C:         End If
  loc_17AC24C:       End If
  loc_17AC251:       Set var_98 = Nothing
  loc_17AC259:       Set var_9C = Nothing
  loc_17AC26A:       Set var_114 = Me.Txt
  loc_17AC270:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_1F0)
  loc_17AC278:       var_AE = var_160.Text
  loc_17AC28B:       Set var_164 = Me.Txt
  loc_17AC291:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168)
  loc_17AC2B9:       Set var_224 = Me.Txt
  loc_17AC2BF:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_228)
  loc_17AC2CE:       Proc_6_7_F26918(var_1CC, CVar(var_228))
  loc_17AC2FF:       var_19C = CVar(CLng(var_AC)) 'Long
  loc_17AC307:       var_298 = CVar(CLng(&H10)) 'Long
  loc_17AC326:       var_30C = CVar(CLng(var_AC)) 'Long
  loc_17AC32B:       var_32C = 1
  loc_17AC34E:       var_368 = CVar(CLng(var_AC)) 'Long
  loc_17AC353:       var_388 = &H14
  loc_17AC376:       var_3BC = CVar(CLng(var_AC)) 'Long
  loc_17AC37B:       var_3DC = &H18
  loc_17AC3BD:       var_440 = IIf((CStr(Me.FGrid.TextMatrix)) = MemVar_1F95078 & "CRED"), CVar(CStr(Me.FGrid.TextMatrix))), CVar(CStr(Me.FGrid.TextMatrix))))
  loc_17AC3C6:       var_4C0 = CVar(CLng(var_AC)) 'Long
  loc_17AC3CB:       var_4E0 = 1
  loc_17AC3DE:       var_504 = Me.FGrid.TextMatrix)
  loc_17AC406:       var_598 = Me.FGrid.TextMatrix)
  loc_17AC420:       Set var_5DC = Me.LTxt
  loc_17AC426:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_5E0, var_5E4, var_598, 2, CVar(CLng(var_AC)), var_504)
  loc_17AC42E:       var_4E0 = var_5E0.Caption
  loc_17AC43B:       var_174 = Val(var_5E4)
  loc_17AC447:       var_654 = 8
  loc_17AC46D:       var_EBC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17AC49F:       var_EC4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17AC4B0:       Set var_7F8 = Me.Txt
  loc_17AC4B6:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_7FC, var_800, var_EC4, &H1A, CVar(CLng(var_AC)), var_EBC)
  loc_17AC4BE:       var_654 = var_7FC.Text
  loc_17AC4D1:       Set var_844 = Me.Txt
  loc_17AC4D7:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_848, var_84C, CVar(CLng(var_AC)), var_174)
  loc_17AC4DF:       var_4C0 = var_848.Tag
  loc_17AC4EC:       var_ECC = Val(var_84C)
  loc_17AC50A:       var_8E0 = Me.FGrid.TextMatrix)
  loc_17AC531:       var_974 = Me.FGrid.TextMatrix)
  loc_17AC558:       var_A08 = Me.FGrid.TextMatrix)
  loc_17AC590:       Proc_6_7_F26918(var_ABC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HD)), CVar(CLng(var_AC)), var_A08, CVar(CLng(&HC)), CVar(CLng(var_AC)), var_974)
  loc_17AC5B0:       var_B40 = Me.FGrid.TextMatrix)
  loc_17AC5C1:       Proc_6_17_EAAE40(var_B60, CVar(CStr(var_B40)), CVar(CLng(&H11)), CVar(CLng(var_AC)), CVar(CLng(&HA)), CVar(CLng(var_AC)))
  loc_17AC5F2:       Proc_6_7_F26918(var_C04, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_AC)), var_8E0)
  loc_17AC605:       Proc_6_7_F26918(var_C94, Date, CVar(CLng(9)), CVar(CLng(var_AC)))
  loc_17AC637:       Proc_6_39_E7D3A0(var_D78, CVar(CStr(Me.FGrid.TextMatrix))), &H17, CVar(CLng(var_AC)))
  loc_17AC64A:       Proc_6_17_EAAE40(var_E08, global_176, var_ECC)
  loc_17AC65D:       Proc_6_8_EB1974(var_E58, global_180)
  loc_17AC676:       var_128 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, " & "GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_17AC684:       var_184 = var_128 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,batchno,LOGSITE_CODE,AU_Name,AU_EntDt) Values ("
  loc_17AC6D2:       var_220 = var_184 & "'" & var_1F0 & "'," & CStr(var_AE) & ",'" & global_116 & "','" & var_168.Text & "','" & MemVar_1F95070
  loc_17AC6DF:       var_158 = CVar(var_220 & "','") & Trim(CVar(Me.LblVPrefix)) 
  loc_17AC6E3:       var_E0 = "',"
  loc_17AC71F:       var_2FC = var_158 & var_E0 & var_1CC & ",'" & CVar(Format$(Time, "HH:mm")) & "','','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" 
  loc_17AC775:       var_604 = var_2FC & var_440 & "','" & CVar(var_94) & "','" & CVar(CStr(var_504)) & "','" & CVar(CStr(var_598)) & "'," & CVar(var_174) 
  loc_17AC7D2:       var_7D4 = var_604 & "," & CVar(var_EBC) & "," & CVar(var_EC4) & ",'" & CVar(global_152) & "'," & "'" & CVar(global_156) 
  loc_17AC80A:       var_8F0 = CVar(CStr(var_8E0)) 'String
  loc_17AC835:       var_A28 = var_7D4 & "','" & CVar(var_800) & "'," & CVar(var_ECC) & ",'" & var_8F0 & "','" & CVar(CStr(var_974)) & "','" & CVar(CStr(var_A08)) 
  loc_17AC83E:       var_A48 = var_A28 & "'," 
  loc_17AC89E:       var_CE4 = var_A48 & var_ABC & "," & var_B60 & "," & var_C04 & ",'" & CVar(MemVar_1F950C8) & "'," & var_C94 & ",'A','" & CVar(global_52) 
  loc_17AC8F8:       unk_53E46D.Execute CStr(var_CE4 & "'," & var_D78 & ",'" & CVar(MemVar_1F95078) & "'," & var_E08 & "," & var_E58 & ")"), var_EAC, -1
  loc_17ACA42:       var_AE = (var_AE + 1)
  loc_17ACA49:       var_E0 = CVar(CLng(var_AC)) 'Long
  loc_17ACA4E:       var_100 = 2
  loc_17ACA5B:       Set var_114 = Me.FGrid
  loc_17ACA61:       var_124 = var_114.TextMatrix)
  loc_17ACA7D:       If (CStr(var_124) = "Room") Then
  loc_17ACAAB:         unk_53E46D.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F95078 & "TOUT" & "'", var_124, -1
  loc_17ACAB6:         Set var_98 = var_114
  loc_17ACADC:         If (var_98.RecordCount > 0) Then
  loc_17ACB0B:           var_160 = var_98.Fields.Item("TaxStru")
  loc_17ACB1B:           var_138 = "Select * from taxstru where Code='" & var_160.Value 
  loc_17ACB24:           var_148 = var_138 & "' Order by Sno" 
  loc_17ACB32:           unk_53E46D.Execute CStr(var_148), var_158, -1
  loc_17ACB3D:           Set var_A0 = var_164
  loc_17ACB5A:         Else
  loc_17ACB73:           MsgBox("System Defined Revenue is not defined", 0, var_138, var_148, var_158)
  loc_17ACB89:           unk_53E46D.RollbackTrans
  loc_17ACB8E:           Exit Sub
  loc_17ACB8F:         End If
  loc_17ACB93:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_17ACB98:         var_100 = &H16
  loc_17ACBD6:         var_184 = "Select Docid,GuestProf,Company from GuestFolio where Docid='" & CStr(Me.FGrid.TextMatrix)) & "'"
  loc_17ACBDF:         unk_53E46D.Execute var_184, var_138, -1
  loc_17ACBEA:         Set var_D0 = var_160
  loc_17ACC18:         If (var_D0.RecordCount > 0) Then
  loc_17ACC46:           var_CC = CStr(var_D0.Fields.Item("GuestProf").Value)
  loc_17ACC56:           var_E0 = "Company"
  loc_17ACC6A:           var_160 = var_D0.Fields.Item(var_E0)
  loc_17ACC8C:           If (Proc_6_38_E69628(CVar(var_160), var_160, CVar(var_160), var_100, var_E0, var_164) <> vbNullString) Then
  loc_17ACCAE:             var_114 = var_D0.Fields
  loc_17ACCB6:             var_160 = var_114.Item("Company")
  loc_17ACCC7:             var_128 = Proc_6_38_E69628(CVar(var_160), "Update Sale1 Set Party='", var_138, -1, var_224, var_114)
  loc_17ACCD2:             var_1F0 = var_100 & Proc_6_38_E69628(CVar(var_160), var_160, CVar(var_160), var_100, "Company", var_164) & "' Where Docid='"
  loc_17ACCE3:             Set var_164 = Me.Txt
  loc_17ACCE9:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_168, var_184, var_1F0)
  loc_17ACCF1:             var_E0 = var_168.Text
  loc_17ACD0A:             unk_53E46D.Execute var_AE & var_184 & "'", var_EB0, var_3DC
  loc_17ACD30:           End If
  loc_17ACD30:         End If
  loc_17ACD3E:         Set var_114 = Me.Txt
  loc_17ACD44:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160)
  loc_17ACD5F:         Set var_164 = Me.Txt
  loc_17ACD65:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168)
  loc_17ACD6D:         var_204 = var_168.Text
  loc_17ACD8D:         Set var_224 = Me.Txt
  loc_17ACD93:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_17ACDA2:         Proc_6_7_F26918(var_1CC, CVar(var_228))
  loc_17ACDBE:         var_258 = "HH:mm"
  loc_17ACDFA:         var_31C = CVar(CLng(var_AC)) 'Long
  loc_17ACDFF:         var_33C = 2
  loc_17ACE22:         var_388 = CVar(CLng(var_AC)) 'Long
  loc_17ACE27:         var_3BC = 8
  loc_17ACE34:         Set var_3F0 = Me.FGrid
  loc_17ACE54:         var_410 = CVar(CLng(var_AC)) 'Long
  loc_17ACE59:         var_480 = &H12
  loc_17ACE6C:         var_504 = Me.FGrid.TextMatrix)
  loc_17ACEAD:         var_5B8 = Me.FGrid.TextMatrix)
  loc_17ACEF4:         var_6BC = Me.FGrid.TextMatrix)
  loc_17ACF30:         var_794 = Me.FGrid.TextMatrix)
  loc_17ACF5C:         var_EBC = Val(CStr(Right(CVar(CStr(var_794)), 8)))
  loc_17ACF6D:         Proc_6_7_F26918(var_8F0, Date, var_EBC, var_794, &H16, CVar(CLng(var_AC)), var_6BC, &H12)
  loc_17ACFA7:         Proc_6_17_EAAE40(var_A48, global_176, CVar(CLng(var_AC)), var_5B8, &H12)
  loc_17ACFBA:         Proc_6_8_EB1974(var_ABC, global_180, CVar(CLng(var_AC)), var_504)
  loc_17ACFD3:         var_16C = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,Comments,PayCode,PayType,AmtCr,AmtDr,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,BookNo,BookType,U_Name,U_EntDt,U_AE,RestCode,FolioNoDocid,LOGSITE_CODE,AU_Name,AU_EntDt)Values " & "('"
  loc_17ACFED:         var_1F8 = var_16C & var_160.Text & "'," & CStr(var_AE)
  loc_17AD027:         var_158 = CVar(var_1F8 & ",'" & global_116 & "'," & var_204 & ",'" & MemVar_1F95070 & "','") & Trim(CVar(Me.LblVPrefix)) 
  loc_17AD079:         var_2FC = var_158 & "'," & var_1CC & ",'" & CVar(Format$(Time, var_258)) & "','" & CVar(var_CC) & "','" & CVar(var_94) & "','" 
  loc_17AD0A8:         var_490 = var_2FC & var_98.Fields.Item("Code").Value & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," & CVar(Val(CStr(var_3F0.TextMatrix)))) 
  loc_17AD0D8:         var_754 = var_490 & ",'" & Mid(CVar(CStr(var_504)), 3, 5) & "','" & LTrim(Left(CVar(CStr(var_5B8)), 2)) & "','" & Right(CVar(CStr(var_6BC)), 5) 
  loc_17AD12A:         var_920 = var_754 & "'," & CVar(var_EBC) & ",'','',0,''," & vbNullString & "'" & CVar(MemVar_1F950C8) & "'," & var_8F0 & ",'A','" 
  loc_17AD16A:         var_A9C = var_920 & CVar(global_52) & "','" & var_D0.Fields.Item("DocID").Value & "','" & CVar(MemVar_1F95078) & "'," & var_A48 
  loc_17AD191:         unk_53E46D.Execute CStr(var_A9C & "," & var_ABC & ")"), var_B40, -1
  loc_17AD277:         var_AE = (var_AE + 1)
  loc_17AD27E:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_17AD283:         var_100 = &H12
  loc_17AD2BA:         var_B8 = CStr(Right(CVar(CStr(Me.FGrid.TextMatrix))), 5))
  loc_17AD2CD:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_17AD2D2:         var_100 = &H12
  loc_17AD314:         var_BC = CStr(LTrim(Left(CVar(CStr(Me.FGrid.TextMatrix))), 2)))
  loc_17AD329:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_17AD32E:         var_100 = &H16
  loc_17AD385:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_17AD38A:         var_100 = &H12
  loc_17AD3C6:         var_B4 = CStr(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 3, 5))
  loc_17AD3DB:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_17AD3E0:         var_100 = 8
  loc_17AD3FE:         var_128 = CStr(Me.FGrid.TextMatrix))
  loc_17AD406:         var_174 = Val(var_128)
  loc_17AD410:         var_C8 = (var_C8 + var_174)
  loc_17AD42A:         Set var_114 = Me.Txt
  loc_17AD430:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_1F8, var_C8, var_174, var_100, var_E0)
  loc_17AD438:         var_124 = var_160.Text
  loc_17AD44B:         Set var_164 = Me.Txt
  loc_17AD451:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168, var_128, var_100, var_E0)
  loc_17AD459:         var_124 = var_168.Text
  loc_17AD466:         var_EF4 = Val(var_128)
  loc_17AD474:         var_138 = Trim(CVar(Me.LblVPrefix))
  loc_17AD487:         Set var_224 = Me.Txt
  loc_17AD48D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_228, var_204, var_EF4)
  loc_17AD495:         var_100 = var_228.Text
  loc_17AD49D:         var_148 = Time
  loc_17AD4AC:         var_E0 = "HH:mm"
  loc_17AD4B1:         var_158 = var_E0
  loc_17AD4C5:         var_1BC = Trim(CVar(Format$(var_148, var_158)))
  loc_17AD4D0:         var_F0 = "Code"
  loc_17AD4EC:         var_2BC = var_98.Fields.Item(var_F0).Value
  loc_17AD4FF:         Set var_39C = Me.LTxt
  loc_17AD505:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_3F0, var_16C, 1)
  loc_17AD50D:         1 = var_3F0.Caption
  loc_17AD51A:         var_EFC = Val(var_16C)
  loc_17AD521:         var_100 = CVar(CLng(var_AC)) 'Long
  loc_17AD526:         var_19C = 8
  loc_17AD54C:         var_F04 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17AD55D:         var_1EC = Date
  loc_17AD565:         var_238 = Date
  loc_17AD56D:         var_248 = Now
  loc_17AD576:         Set var_588 = Me.TopCtrl1
  loc_17AD57C:         Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(Val(CStr(Val(CStr(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))))
  loc_17AD5AE:         var_288 = IIf((CStr(var_258) = "Add"), "A", "E")
  loc_17AD5D5:         var_2CC = var_D0.Fields.Item("DocID").Value
  loc_17AD5DF:         var_84C = 0
  loc_17AD5EA:         var_800 = 0
  loc_17AD5FD:         var_714 = 0
  loc_17AD608:         var_67C = 0
  loc_17AD645:         var_354 = vbNullString
  loc_17AD64E:         var_220 = vbNullString
  loc_17AD657:         var_21C = vbNullString
  loc_17AD685:         var_218 = "Room"
  loc_17AD699:         var_210 = vbNullString
  loc_17AD6A2:         var_20C = vbNullString
  loc_17AD6E6:         Proc_96_8_1CC4F08(MemVar_1F95078 & "TOUT", var_1F8, var_AE, global_116, CLng(var_EF4), MemVar_1F95070, CStr(var_138), CDate(var_204))
  loc_17AD75E:       End If
  loc_17AD75E:     End If
  loc_17AD75E:   End If
  loc_17AD761: Next var_188 'Integer
  loc_17AD76B: Set var_98 = Nothing
  loc_17AD773: Set var_9C = Nothing
  loc_17AD77B: Set var_A0 = Nothing
  loc_17AD783: Set var_A4 = Nothing
  loc_17AD78B: Set var_D0 = Nothing
  loc_17AD79F: If (OpenMode = 1) Then
  loc_17AD7A6:   Set var_114 = Me.TopCtrl1
  loc_17AD7AC:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17AD7B4:   var_128 = CStr()
  loc_17AD7CC:   If ((var_128 = "Add") And (var_AA = &HFF)) Then
  loc_17AD7D2:     Call Proc_76_86_125C658(var_17A)
  loc_17AD7DD:     If (var_17A = &HFF) Then
  loc_17AD7E6:       unk_53E46D.CommitTrans
  loc_17AD7EF:       var_86 = CByte(0) 'Byte
  loc_17AD800:       Me.Global.Unload Me
  loc_17AD808:       Exit Sub
  loc_17AD80C:     Else
  loc_17AD80F:     Else
  loc_17AD80F:     End If
  loc_17AD80F:   End If
  loc_17AD815:   unk_53E46D.CommitTrans
  loc_17AD81E:   var_86 = CByte(0) 'Byte
  loc_17AD825:   var_180 = OpenMode
  loc_17AD833:   If (var_180 = 1) Then
  loc_17AD843:     Me.Global.Unload Me
  loc_17AD84B:     Exit Sub
  loc_17AD84C:   End If
  loc_17AD857:   Me.Requery -1
  loc_17AD867:   Me.Requery -1
  loc_17AD88B:   Set var_114 = Me.Txt
  loc_17AD891:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_128, "SearchCode='")
  loc_17AD899:   0 = var_160.Text
  loc_17AD8B2:   Me.Find 1 & var_128 & "'", var_E0, 
  loc_17AD8CB:   Set var_114 = Me.TopCtrl1
  loc_17AD8D1:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17AD8EA:   If (CStr() = "Add") Then
  loc_17AD8ED:     Call TopCtrl1_UnknownEvent_A()
  loc_17AD8F2:     Exit Sub
  loc_17AD8F3:   End If
  loc_17AD908:   var_128 = "INI"
  loc_17AD916:   Call Proc_76_71_FD0A34(Proc_5_1_100EC1C(var_128, Me))
  loc_17AD921:   Call Proc_76_76_F96F54(global_56)
  loc_17AD926:   Call Proc_76_75_15B4F88()
  loc_17AD92B:   Exit Sub
  loc_17AD92C: End If
  loc_17AD92C: ' Referenced from: 17ABC58
  loc_17AD935: If (CInt(var_86) = 1) Then
  loc_17AD93E:   unk_53E46D.RollbackTrans
  loc_17AD943: End If
  loc_17AD94B: Set var_114 = Err()
  loc_17AD951: Call 0.Method_arg_1C (var_180)
  loc_17AD962: If (var_180 <> 0) Then
  loc_17AD96D:   Set var_114 = Err()
  loc_17AD973:   Call 0.Method_arg_2C (var_128)
  loc_17AD98C:   MsgBox(CVar(var_128), &H10, var_138, var_148, var_158)
  loc_17AD99F: End If
  loc_17AD99F: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_9 'F54E20
  'Data Table: 53E44C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F54D00: On Error Goto loc_F54E1A
  loc_F54D12: Me.DGTable.Visible = False
  loc_F54D31: If (Me.RecordCount > 0) Then
  loc_F54D70:   Set var_B4 = Me.Txt
  loc_F54D76:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(4), var_B8)
  loc_F54D7E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F54DB1:   var_B0 = Me.Fields.Item("Code")
  loc_F54DD0:   Set var_B4 = Me.Txt
  loc_F54DD6:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(4), var_B8)
  loc_F54DDE:   var_B8.Tag = CStr(var_B0.Value)
  loc_F54DF4: End If
  loc_F54DFF: Set var_A8 = Me.Txt
  loc_F54E05: Call 0.Method_DGTable_UnknownEvent_90 (CInt(4))
  loc_F54E0D: var_B0.SetFocus
  loc_F54E19: Exit Sub
  loc_F54E1A: ' Referenced from: F54D00
  loc_F54E1A: Proc_6_60_E63754(var_B0)
  loc_F54E1F: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'EA7F04
  'Data Table: 53E44C
  Dim var_A8 As Variant
  loc_EA7E84: Set var_88 = Me.DGTable
  loc_EA7EAE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA7EB6: Set var_BC = Me.DGTable
  loc_EA7EF2: Proc_6_138_106E830(Me.DGTable, global_68, CInt(4), Me.FGPoint)
  loc_EA7F00: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_9 'F48B74
  'Data Table: 53E44C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F48A6B: Me.DGMember.Visible = False
  loc_F48A8A: If (Me.RecordCount > 0) Then
  loc_F48AC9:   Set var_B4 = Me.Txt
  loc_F48ACF:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F48AD7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F48B0A:   var_B0 = Me.Fields.Item("Code")
  loc_F48B29:   Set var_B4 = Me.Txt
  loc_F48B2F:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F48B37:   var_B8.Tag = CStr(var_B0.Value)
  loc_F48B4D: End If
  loc_F48B58: Set var_A8 = Me.Txt
  loc_F48B5E: Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H10))
  loc_F48B66: var_B0.SetFocus
  loc_F48B72: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_1F 'EA7CB8
  'Data Table: 53E44C
  Dim var_A8 As Variant
  loc_EA7C38: Set var_88 = Me.DGMember
  loc_EA7C62: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA7C6A: Set var_BC = Me.DGMember
  loc_EA7CA6: Proc_6_138_106E830(Me.DGMember, global_80, CInt(&H10), Me.FGPoint)
  loc_EA7CB4: Exit Sub
End Sub

Private Sub Form_Load() '146E5D8
  'Data Table: 53E44C
  Dim var_98 As Variant
  Dim var_B4 As Variant
  Dim var_C8 As Long
  Dim var_DC As Variant
  Dim var_CC As String
  Dim var_E0 As String
  Dim unk_53E46D As Connection15
  Dim var_C4 As Variant
  Dim var_A0 As Variant
  Dim var_E4 As Field20
  Dim var_F8 As String
  Dim var_90 As Recordset15
  Dim var_100 As Long
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_128 As Long
  Dim var_12C As TextBox
  loc_146D9E0: On Error Goto loc_146E594
  loc_146D9EF: Set var_A0 = MemVar_1F95248.PictSubMenu
  loc_146DA06: Set var_98 = MemVar_1F95248.PictSubMenu
  loc_146DA21: Call 0.Method_arg_7C (((MDIForm1.PictSubMenu.Top + MDIForm1.PictSubMenu.Height) + CDbl(2000)))
  loc_146DA34: Call 0.Method_arg_74 (CDbl(&H19))
  loc_146DA41: Call 0.Method_MeC (CDbl(6500))
  loc_146DA4E: Call 0.Method_Me4 (CDbl(8000))
  loc_146DA62: Me.LblUser.Left = CDbl(13500)
  loc_146DA79: Me.LblUser.Top = CDbl(7800)
  loc_146DA90: Me.LblLDt.Top = CDbl(8160)
  loc_146DAA7: Me.LblLDt.Left = CDbl(13500)
  loc_146DAB6: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_146DACE: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_146DAE4: Me.FrSendRoom.BackColor = CLng(MemVar_1F951B4)
  loc_146DAFA: Me.FrCashCard.BackColor = CLng(MemVar_1F951B4)
  loc_146DB10: Me.FrCCDet.BackColor = CLng(MemVar_1F951B4)
  loc_146DB26: Me.FrChqDet.BackColor = CLng(MemVar_1F951B4)
  loc_146DB3C: Me.FrComp.BackColor = CLng(MemVar_1F951B4)
  loc_146DB52: Me.FrEmp.BackColor = CLng(MemVar_1F951B4)
  loc_146DB68: Me.FrMem.BackColor = CLng(MemVar_1F951B4)
  loc_146DB7E: Me.FrRem.BackColor = CLng(MemVar_1F951B4)
  loc_146DB94: Me.FrTxnNo.BackColor = CLng(MemVar_1F951B4)
  loc_146DBAA: Me.FrRest.BackColor = CLng(MemVar_1F951B4)
  loc_146DBB8: var_C8 = global_108
  loc_146DBC4: If Not (var_C8 = 5) Then
  loc_146DBD0:   If (var_C8 = 6) Then
  loc_146DBD3:   End If
  loc_146DBD3: End If
  loc_146DBDD: Set var_98 = Me.TopCtrl1
  loc_146DBE3: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_146DBF1: Call 0.Method_arg_50 (var_CC)
  loc_146DBF9: var_DC = CVar(var_CC) 'String
  loc_146DC07: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_DC)
  loc_146DC23: global_116 = rsAdvanceDepDialog.AdvType
  loc_146DC4E: unk_53E46D.Execute "Select * from Enviro Where LogSite_Code='" & MemVar_1F95078 & "'", var_DC, -1
  loc_146DC6F: var_C4 = 0
  loc_146DC9F: unk_53E46D.Execute "Select Max(ShortName) from depart where code='" & global_52 & "'", var_DC, -1
  loc_146DCA7: var_98 = var_98.Fields
  loc_146DCAF: var_C4 = var_A0.Item(var_A0)
  loc_146DCB7: var_E4 = var_E4.Value
  loc_146DCCA: global_188 = Proc_6_38_E69628(var_F4, var_F4)
  loc_146DCF6: var_98 = Me.TopCtrl1.Fields
  loc_146DD06: var_DC = CVar(var_98.Item("CreditCardInfoMandatory")) 'Address
  loc_146DD20: If (Proc_6_38_E69628(var_DC, var_98) = "Y") Then
  loc_146DD29:   global_196 = "Y"
  loc_146DD2D: End If
  loc_146DD41: var_CC = "SELECT DP.PayCode as code, RevMast.Name as Name, revMast.PayType as PayType FROM DepartPay as DP LEFT OUTER JOIN RevMast ON DP.PayCode = RevMast.code where (DP.LOGSITE_CODE='" & MemVar_1F95078
  loc_146DD62: unk_53E46D.Execute var_CC & "') AND DP.restcode='" & global_52 & "' ORDER BY NAME ", var_DC, -1
  loc_146DD73: Set global_60 = var_98
  loc_146DD95: CVarUnk
  loc_146DD9A: VerifyVarObj
  loc_146DDA6: LateIdStAd
  loc_146DDD8: unk_53E46D.Execute "SELECT Code,Name FROM Employee WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1
  loc_146DE07: CVarUnk
  loc_146DE0C: VerifyVarObj
  loc_146DE18: LateIdStAd
  loc_146DE3A: var_CC = "Select T.Type+t.RoomCat+Cast(space(5-len(T.RoomCat)) As Varchar)+Code+Cast(space(5-len(Code)) As Varchar) as Code,T.Code As Name,RoomOcc.DOCID as FolioNoDocid From RoomMast T inner join RoomOcc on RoomOcc.RoomNo=T.Code where (RoomOcc.LOGSITE_CODE='" & MemVar_1F95078
  loc_146DE41: var_E0 = "SELECT Code,Name FROM Employee WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or RoomOcc.LOGSITE_CODE='HO') AND T.Type in ('RO') and RoomOcc.ChkoutDate is NULL Order By T.Code"
  loc_146DE4A: unk_53E46D.Execute var_E0, var_DC, -1
  loc_146DE79: CVarUnk
  loc_146DE7E: VerifyVarObj
  loc_146DE8A: LateIdStAd
  loc_146DEB3: var_E0 = "Select SubCode as Code,Name From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND CompanyType in ('Corporate','Travel Agency') Order By Name"
  loc_146DEBC: unk_53E46D.Execute var_E0, var_DC, -1
  loc_146DEEB: CVarUnk
  loc_146DEF0: VerifyVarObj
  loc_146DEFC: LateIdStAd
  loc_146DF25: var_E0 = "Select SubCode as Code,Name,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='"
  loc_146DF3C: unk_53E46D.Execute var_E0 & MemVar_1F95078 & "') Order By Name", var_DC, -1
  loc_146DF6F: CVarUnk
  loc_146DF74: VerifyVarObj
  loc_146DF7A: Set var_98 = Me.DGMember
  loc_146DF80: LateIdStAd
  loc_146DF9A: Call 0.Method_arg_38 (MemVar_1F953B0, var_98, Me.DGCompany, var_98, var_98, Me.DGRoom, var_98, var_98)
  loc_146DFAB: Call 0.Method_arg_3C (MemVar_1F950EC, Me.DGEmp, var_98, var_98)
  loc_146DFBC: Call 0.Method_arg_54 (MemVar_1F9506C, Me.DGPayType, var_98)
  loc_146DFCD: Call 0.Method_arg_1C (MemVar_1F95070, var_98)
  loc_146DFDE: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_146DFEF: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_146E000: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_146E011: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_146E022: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_146E033: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_146E04D: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_146E05B: Set var_98 = MemVar_1F95044
  loc_146E06A: Call 0.Method_Form_Load8 (var_98)
  loc_146E080: Me.DGMember.Clone
  loc_146E08B: Set var_A0 = var_98
  loc_146E09A: Call 0.Method_arg_50 (var_A0, -1)
  loc_146E0AC: var_100 = global_108
  loc_146E0B8: If Not (var_100 = 5) Then
  loc_146E0C4:   If (var_100 = 6) Then
  loc_146E0C7:   End If
  loc_146E0E2:   var_E0 = "SELECT Distinct Docid as SearchCode FROM PayCharge Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND Vtype='"
  loc_146E0FC:   unk_53E46D.Execute var_E0 & global_116 & "'", var_DC, -1
  loc_146E10D:   Set global_56 = var_98
  loc_146E126: End If
  loc_146E132: Set var_98 = Me
  loc_146E149: Call Proc_76_71_FD0A34(Proc_5_1_100EC1C("INI", var_98, global_56, var_98), var_100)
  loc_146E154: Call Proc_76_74_1225540(var_98)
  loc_146E159: Call Proc_76_79_12173B8(global_60)
  loc_146E16A: If (global_104 = 2) Then
  loc_146E16D:   Call Proc_76_75_15B4F88()
  loc_146E172: End If
  loc_146E17E: If (global_104 = 1) Then
  loc_146E18A:   Set var_98 = Me.TopCtrl1
  loc_146E190:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_146E1A5:   Set var_98 = Me.Txt
  loc_146E1AB:   Call 0.Method_Form_Load0 (CInt(0), var_A0)
  loc_146E1B3:   var_A0.Visible = False
  loc_146E1C5:   var_C4 = 0
  loc_146E1E5:   var_CC = "Select count(Distinct Bill_no) from paycharge where bill_no is not null and bill_no<>'' and PayType='Room' And Docid='" & global_120
  loc_146E1F5:   unk_53E46D.Execute var_CC & "'", var_DC, -1
  loc_146E1FD:   var_98 = var_98.Fields
  loc_146E205:   var_C4 = var_A0.Item(var_A0)
  loc_146E20D:   var_E4 = var_E4.Value
  loc_146E234:   If (var_F4 > 0) Then
  loc_146E239:     var_92 = &HFF
  loc_146E23F:   Else
  loc_146E23F:     Call TopCtrl1_UnknownEvent_A()
  loc_146E244:   End If
  loc_146E25B:   If (Me.RecordCount > 0) Then
  loc_146E264:     Me.MoveFirst
  loc_146E291:     Me.Find "SearchCode='" & global_120 & "'", 0, 1
  loc_146E2B1:     If (Me.EOF = 0) Then
  loc_146E2BA:       If (var_92 = 0) Then
  loc_146E2BD:         var_B4 = "Edit"
  loc_146E2C7:         Set var_98 = Me.TopCtrl1
  loc_146E2CD:         Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_B4)
  loc_146E2D5:       End If
  loc_146E2D5:       Call Proc_76_75_15B4F88(var_B4, var_92)
  loc_146E2E0:       Call Proc_76_81_1210284(global_160)
  loc_146E2E5:     End If
  loc_146E2E5:   End If
  loc_146E2F6:   Set var_98 = Me.Txt
  loc_146E2FC:   Call 0.Method_Form_Load0 (CInt(0), var_A0)
  loc_146E304:   var_A0.Text = global_120
  loc_146E344:   Set var_98 = Me.Txt
  loc_146E34A:   Call 0.Method_Form_Load0 (CInt(1), var_A0)
  loc_146E352:   var_A0.Text = CStr(Val(CStr(Right(global_120, 8))))
  loc_146E368:   var_DC = 5
  loc_146E396:   Me.LblVPrefix.Caption = CStr(Mid(global_120, 9, var_DC))
  loc_146E3AE:   var_128 = global_108
  loc_146E3BA:   If Not (var_128 = 5) Then
  loc_146E3C6:     If (var_128 = 6) Then
  loc_146E3C9:     End If
  loc_146E3E0:     Call 0.Method_Form_Load0 (CInt(4), var_A0, global_128)
  loc_146E3E8:     var_A0.Tag = var_128
  loc_146E400:     If (global_108 = 6) Then
  loc_146E428:       var_F8 = "Select Name from RoomMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND code='" & global_128
  loc_146E438:       unk_53E46D.Execute var_F8 & "' and Type='HL' and RoomCat='HALL'", var_DC, -1
  loc_146E443:       Set var_8C = Me.Txt
  loc_146E469:       var_98 = Me.Recordset15.Fields
  loc_146E471:       var_A0 = var_98.Item("Name")
  loc_146E490:       Set var_E4 = Me.Txt
  loc_146E496:       Call 0.Method_Form_Load0 (CInt(4), var_12C)
  loc_146E49E:       var_12C.Text = Proc_6_38_E69628(CVar(var_A0), var_98)
  loc_146E4B5:     Else
  loc_146E4C6:       Set var_98 = Me.Txt
  loc_146E4CC:       Call 0.Method_Form_Load0 (CInt(4), var_A0)
  loc_146E4D4:       var_A0.Text = global_128
  loc_146E4E0:     End If
  loc_146E503:     var_F4 = Format(global_132, "0.00")
  loc_146E51A:     Set var_98 = Me.LTxt
  loc_146E520:     Call 0.Method_Form_Load0 (CInt(0), var_A0, CStr(var_F4))
  loc_146E528:     var_A0.Caption = 1
  loc_146E53E:   End If
  loc_146E53E: End If
  loc_146E53E: Call Proc_76_84_10A8710(1)
  loc_146E547: Set var_98 = Me.TopCtrl1
  loc_146E54D: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_F4)
  loc_146E555: var_CC = CStr()
  loc_146E57B: If ((var_CC = "Add") And (PSettlementMode = "Auto")) Then
  loc_146E57E:   Call Proc_76_70_12C9F5C()
  loc_146E583: End If
  loc_146E588: Set var_8C = Nothing
  loc_146E590: Set var_90 = Nothing
  loc_146E593: Exit Sub
  loc_146E594: ' Referenced from: 146D9E0
  loc_146E59C: Set var_98 = Err()
  loc_146E5A2: Call 0.Method_arg_2C (var_CC)
  loc_146E5C3: MsgBox(CVar(var_CC), &H40, "Information", var_124, var_13C)
  loc_146E5D6: Exit Sub
  loc_146E5D7: Exit Sub
End Sub

Private Sub Form_Resize() 'ED6D68
  'Data Table: 53E44C
  Dim var_8C As Label
  loc_ED6CC6: Call 0.Method_arg_50 (var_88)
  loc_ED6CD8: Me.LblFormCaption.Caption = var_88
  loc_ED6CF1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED6CFD: Set var_A0 = Me.TopCtrl1
  loc_ED6D03: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED6D10: Set var_8C = Me.TopCtrl1
  loc_ED6D16: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED6D30: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED6D4B: Call 0.Method_arg_100 (var_B8)
  loc_ED6D5D: Me.LblFormCaption.Width = var_B8
  loc_ED6D65: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6DEF8
  'Data Table: 53E44C
  loc_E6DEA7: Set global_68 = Nothing
  loc_E6DEB9: Set global_56 = Nothing
  loc_E6DECB: Set global_60 = Nothing
  loc_E6DEDD: Set global_64 = Nothing
  loc_E6DEEF: Set global_80 = Nothing
  loc_E6DEF6: Exit Sub
End Sub

Private Sub Form_Activate() 'F8EB2C
  'Data Table: 53E44C
  Dim var_90 As Long
  Dim var_98 As TextBox
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_CC As TextBox
  Dim var_94 As Frame
  loc_F8E9E3: If (OpenMode = 1) Then
  loc_F8E9F1:   var_90 = OpenType
  loc_F8E9FD:   If Not (var_90 = 5) Then
  loc_F8EA09:     If (var_90 = 6) Then
  loc_F8EA0C:     End If
  loc_F8EA1A:     Set var_94 = Me.Txt
  loc_F8EA20:     Call 0.Method_Form_Activate0 (CInt(3), var_98, var_9A)
  loc_F8EA28:     var_90 = var_98.Enabled
  loc_F8EA3A:     If (var_9A = &HFF) Then
  loc_F8EA48:       Set var_94 = Me.Txt
  loc_F8EA4E:       Call 0.Method_Form_Activate0 (CInt(3), var_98)
  loc_F8EA56:       var_98.SetFocus
  loc_F8EA62:     End If
  loc_F8EA70:     Set var_94 = Me.Txt
  loc_F8EA76:     Call 0.Method_Form_Activate0 (CInt(3), var_98)
  loc_F8EA8F:     Set var_C0 = Me.DGPayType
  loc_F8EA95:     var_C0.Left = CVar(var_98.Left)
  loc_F8EAB1:     Set var_98 = Me.Txt
  loc_F8EAB7:     Call 0.Method_Form_Activate0 (CInt(3), var_C0)
  loc_F8EAD2:     Set var_C8 = Me.Txt
  loc_F8EAD8:     Call 0.Method_Form_Activate0 (CInt(3), var_CC)
  loc_F8EB06:     var_AC = CVar((((Me.FrRest.Top + var_C0.Top) + var_CC.Height) + CDbl(&HF))) 'Single
  loc_F8EB15:     Me.DGPayType.Top = CVar(var_98.Left)
  loc_F8EB29:   End If
  loc_F8EB29: End If
  loc_F8EB29: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F42454
  'Data Table: 53E44C
  Dim var_B8 As DataGrid
  Dim var_86 As Integer
  Dim KeyCode As Integer
  loc_F42358: If ((OpenMode = 1) And (CLng(KeyCode) = &H1B)) Then
  loc_F4238C:   Set var_B8 = Me.DGEmp
  loc_F423B1:   If (((CBool(Me.DGTable.Visible) = 0) And (CBool(Me.DGPayType.Visible) = 0)) And (CBool(var_B8.Visible) = 0)) Then
  loc_F423C1:     Me.var_B8.Unload Me
  loc_F423C9:     Exit Sub
  loc_F423CA:   End If
  loc_F423CA: End If
  loc_F423E8: If (((CLng(KeyCode) = &H53) And (Shift = 2)) And (global_104 = 1)) Then
  loc_F42406:   If (Me.FrSendRoom.Visible = &HFF) Then
  loc_F4240B:     var_86 = 0
  loc_F42418:     Call Txt_Validate(CInt(&HE))
  loc_F42423:     If (var_86 = &HFF) Then
  loc_F42428:       KeyCode = 0
  loc_F4242B:       Exit Sub
  loc_F4242C:     End If
  loc_F4242C:   End If
  loc_F4242C:   Call Proc_76_82_15DC004(KeyCode, var_86)
  loc_F42431:   Call TopCtrl1_UnknownEvent_16()
  loc_F42436:   Exit Sub
  loc_F42437: End If
  loc_F4244B: Proc_6_88_FE8F6C(Me, KeyCode, Shift)
  loc_F42453: Exit Sub
End Sub

Private Sub Del_Click() 'F95CA4
  'Data Table: 53E44C
  Dim var_98 As Variant
  Dim var_A8 As Variant
  loc_F95B5F: If (CLng(Me.FGrid.Row) >= 1) Then
  loc_F95B99:   If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_E8, var_108) = 6) Then
  loc_F95BBB:     If (CLng(Me.FGrid.Rows) > 2) Then
  loc_F95BD1:       var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F95BDA:       Set var_10C = Me.FGrid
  loc_F95BF5:     Else
  loc_F95C08:       Me.FGrid.Rows = 1
  loc_F95C2C:       var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0))) 'String
  loc_F95C34:       Set var_10C = Me.FGrid
  loc_F95C61:       Me.FGrid.FixedRows = 1
  loc_F95C69:     End If
  loc_F95C69:   End If
  loc_F95C6C: Else
  loc_F95C87:   var_98 = "No Entries To Delete"
  loc_F95C8D:   MsgBox(var_98, &H10, "Delete Module", var_E8, var_108)
  loc_F95C9D: End If
  loc_F95C9D: Call Proc_76_84_10A8710(FGrid.DispID_10000, var_98)
  loc_F95CA2: Exit Sub
End Sub

Public Function global_52Get() '540014
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '540023
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EBF134
  'Data Table: 53E44C
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EBF0AA: On Error Goto loc_EBF0EF
  loc_EBF0B3: Me.MoveFirst
  loc_EBF0CD: var_8C = "Searchcode='" & MyValue
  loc_EBF0DD: Me.Find var_8C & "'", 0, 1
  loc_EBF0E9: Call Proc_76_75_15B4F88(var_A0)
  loc_EBF0EE: Exit Sub
  loc_EBF0EF: ' Referenced from: EBF0AA
  loc_EBF0F7: Set var_A4 = Err()
  loc_EBF0FD: Call 0.Method_arg_2C (var_8C)
  loc_EBF11E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EBF131: Exit Sub
  loc_EBF132: Exit Sub
End Sub

Public Property Get OpenMode() 'E05550
  'Data Table: 53E44C
  loc_E05549: OpenMode = global_104
End Sub

Public Property Let OpenMode(vNewValue) 'E02E54
  'Data Table: 53E44C
  loc_E02E4E: global_104 = vNewValue
  loc_E02E51: Exit Sub
End Sub

Public Property Get OpenType() 'E05290
  'Data Table: 53E44C
  loc_E05289: OpenType = global_108
End Sub

Public Property Let OpenType(vNewValue) 'E02710
  'Data Table: 53E44C
  loc_E0270A: global_108 = vNewValue
  loc_E0270D: Exit Sub
End Sub

Public Property Get AdvType() 'E146F4
  'Data Table: 53E44C
  loc_E146E8: var_88 = global_116
  loc_E146EB: AdvType = 
End Sub

Public Property Let AdvType(vNewValue) 'E145D4
  'Data Table: 53E44C
  loc_E145CC: global_116 = vNewValue
  loc_E145D0: Exit Sub
End Sub

Public Property Get IdNo() 'E1458C
  'Data Table: 53E44C
  loc_E14580: var_88 = global_112
  loc_E14583: IdNo = 
End Sub

Public Property Let IdNo(vNewValue) 'E14544
  'Data Table: 53E44C
  loc_E1453C: global_112 = vNewValue
  loc_E14540: Exit Sub
End Sub

Public Property Get PersonCode() 'E144B4
  'Data Table: 53E44C
  loc_E144A8: var_88 = global_124
  loc_E144AB: PersonCode = 
End Sub

Public Property Let PersonCode(vNewValue) 'E14424
  'Data Table: 53E44C
  loc_E1441C: global_124 = vNewValue
  loc_E14420: Exit Sub
End Sub

Public Property Get pDocId() 'E1407C
  'Data Table: 53E44C
  loc_E14070: var_88 = global_120
  loc_E14073: pDocId = 
End Sub

Public Property Let pDocId(vNewValue) 'E13E3C
  'Data Table: 53E44C
  loc_E13E34: global_120 = vNewValue
  loc_E13E38: Exit Sub
End Sub

Public Property Get PTableOrRoomNo() 'E13DAC
  'Data Table: 53E44C
  loc_E13DA0: var_88 = global_128
  loc_E13DA3: PTableOrRoomNo = 
End Sub

Public Property Let PTableOrRoomNo(vNewValue) 'E13D1C
  'Data Table: 53E44C
  loc_E13D14: global_128 = vNewValue
  loc_E13D18: Exit Sub
End Sub

Public Property Get PRoomCat() 'E13CD4
  'Data Table: 53E44C
  loc_E13CC8: var_88 = global_164
  loc_E13CCB: PRoomCat = 
End Sub

Public Property Let PRoomCat(vNewValue) 'E13C44
  'Data Table: 53E44C
  loc_E13C3C: global_164 = vNewValue
  loc_E13C40: Exit Sub
End Sub

Public Property Get PRoomtype() 'E13B6C
  'Data Table: 53E44C
  loc_E13B60: var_88 = global_168
  loc_E13B63: PRoomtype = 
End Sub

Public Property Let PRoomtype(vNewValue) 'E13B24
  'Data Table: 53E44C
  loc_E13B1C: global_168 = vNewValue
  loc_E13B20: Exit Sub
End Sub

Public Property Get PBillAmt() 'E1392C
  'Data Table: 53E44C
  loc_E13922: var_88 = CStr(global_132)
  loc_E13925: PBillAmt = 
End Sub

Public Property Let PBillAmt(vNewValue) 'E13854
  'Data Table: 53E44C
  loc_E1384E: global_132 = CDbl(vNewValue)
  loc_E13851: Exit Sub
End Sub

Public Property Get PSettlementMode() 'E1380C
  'Data Table: 53E44C
  loc_E13800: var_88 = global_140
  loc_E13803: PSettlementMode = 
  loc_E13809: Exit Sub
End Sub

Public Property Let PSettlementMode(vNewValue) 'E137C4
  'Data Table: 53E44C
  loc_E137BC: global_140 = vNewValue
  loc_E137C0: Exit Sub
  loc_E137C1: Exit Sub
End Sub

Public Property Get PCardType() 'E13734
  'Data Table: 53E44C
  loc_E13728: var_88 = global_144
  loc_E1372B: PCardType = 
  loc_E13731: Exit Sub
End Sub

Public Property Let PCardType(vNewValue) 'E136A4
  'Data Table: 53E44C
  loc_E1369C: global_144 = vNewValue
  loc_E136A0: Exit Sub
  loc_E136A1: Exit Sub
End Sub

Public Property Get PCardCode() 'E1365C
  'Data Table: 53E44C
  loc_E13650: var_88 = global_148
  loc_E13653: PCardCode = 
  loc_E13659: Exit Sub
End Sub

Public Property Let PCardCode(vNewValue) 'E13614
  'Data Table: 53E44C
  loc_E1360C: global_148 = vNewValue
  loc_E13610: Exit Sub
  loc_E13611: Exit Sub
End Sub

Public Sub Proc_76_70_12C9F5C
  'Data Table: 53E44C
  Dim var_A8 As String
  Dim unk_53E46D As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As String
  Dim var_D0 As Fields15
  Dim var_CC As Variant
  Dim var_9C As Recordset15
  Dim var_D8 As TextBox
  Dim Me As Recordset15
  loc_12C9904: On Error Goto loc_12C9F54
  loc_12C992B: unk_53E46D.Execute "Select Interface From MemEnviro Where LogSite_Code='" & MemVar_1F95078 & "'", var_CC, -1
  loc_12C9936: Set var_88 = var_D0
  loc_12C995A: If (var_88.RecordCount > 0) Then
  loc_12C996C:   var_D0 = var_88.Fields
  loc_12C997C:   var_CC = CVar(var_D0.Item("Interface")) 'Address
  loc_12C9985:   var_DC = Proc_6_38_E69628(var_CC)
  loc_12C9996:   If (var_DC = "SmartCard_ACR") Then
  loc_12C99F1:     If (Proc_275_12_130B494(2, 0, var_8C, var_94, var_90, 0) = 0) Then
  loc_12C99F4:       Exit Sub
  loc_12C99F5:     End If
  loc_12C99FD:     If (var_94 = "Member") Then
  loc_12C9A14:       var_A8 = "Select S.Name From SmartCardRegistration SCR Inner Join SubGroup S On SCR.MemberCode=S.SubCode Where SCR.Code='" & var_8C
  loc_12C9A24:       unk_53E46D.Execute var_A8 & "'", var_CC, -1
  loc_12C9A2F:       Set var_9C = var_D0
  loc_12C9A53:       If (var_9C.RecordCount > 0) Then
  loc_12C9A59:         var_BC = "Name"
  loc_12C9A65:         var_D0 = var_9C.Fields
  loc_12C9A6D:         var_D8 = var_D0.Item(var_BC)
  loc_12C9A7E:         var_A4 = Proc_6_38_E69628(CVar(var_D8), var_D0, 0, var_A0)
  loc_12C9A87:       End If
  loc_12C9A87:     End If
  loc_12C9A8A:     var_A8 = PCardType
  loc_12C9AC1:     If (((var_A8 = "Cash Card") And (var_94 = "Member")) Or ((PSettlementMode = "Semi") And (var_94 = "Member"))) Then
  loc_12C9AD2:       Set var_D0 = Me.Txt
  loc_12C9AD8:       Call 0.Method_Proc_76_70_12C9F5C0 (CInt(3), var_D8, "CASH CARD")
  loc_12C9AE0:       var_D8.Text = 0
  loc_12C9B2D:       If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_12C9B30:         Exit Sub
  loc_12C9B31:       End If
  loc_12C9B37:       Me.MoveFirst
  loc_12C9B61:       Call 0.Method_Proc_76_70_12C9F5C0 (CInt(3), var_D8, var_A8, "Name ='", 0)
  loc_12C9B69:       1 = var_D8.Text
  loc_12C9B82:       Me.Find var_BC & var_A8 & "'", 0, Me.Txt
  loc_12C9BA5:       Set var_D0 = Me.Txt
  loc_12C9BAB:       Call 0.Method_Proc_76_70_12C9F5C0 (CInt(&H11), var_D8)
  loc_12C9BB3:       var_D8.Text = var_8C
  loc_12C9BCD:       Set var_D0 = Me.Txt
  loc_12C9BD3:       Call 0.Method_Proc_76_70_12C9F5C0 (CInt(&H12), var_D8)
  loc_12C9BDB:       var_D8.Text = var_90
  loc_12C9BF1:       Call Txt_Validate(CInt(3))
  loc_12C9BF9:     Else
  loc_12C9BFC:       var_A8 = PCardType
  loc_12C9C15:       If ((var_A8 = "Member") And (var_94 = "Member")) Then
  loc_12C9C26:         Set var_D0 = Me.Txt
  loc_12C9C2C:         Call 0.Method_Proc_76_70_12C9F5C0 (CInt(3), var_D8)
  loc_12C9C34:         var_D8.Text = "BILL TO MEMBER"
  loc_12C9C81:         If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_12C9C84:           Exit Sub
  loc_12C9C85:         End If
  loc_12C9C8B:         Me.MoveFirst
  loc_12C9CAF:         Set var_D0 = Me.Txt
  loc_12C9CB5:         Call 0.Method_Proc_76_70_12C9F5C0 (CInt(3), var_D8, var_A8, "Name ='")
  loc_12C9CBD:         0 = var_D8.Text
  loc_12C9CD6:         Me.Find 1 & var_A8 & "'", var_BC, var_96
  loc_12C9CF9:         Set var_D0 = Me.Txt
  loc_12C9CFF:         Call 0.Method_Proc_76_70_12C9F5C0 (CInt(&H10), var_D8)
  loc_12C9D07:         var_D8.Text = var_A4
  loc_12C9D21:         Set var_D0 = Me.Txt
  loc_12C9D27:         Call 0.Method_Proc_76_70_12C9F5C0 (CInt(&H10), var_D8)
  loc_12C9D2F:         var_D8.Tag = var_A0
  loc_12C9D45:         Call Txt_Validate(CInt(3))
  loc_12C9D4D:       Else
  loc_12C9D50:         var_A8 = PCardType
  loc_12C9D87:         If (((var_A8 = "Cash Card") And (var_94 = "Cash Card")) Or ((PSettlementMode = "Semi") And (var_94 = "Cash Card"))) Then
  loc_12C9D98:           Set var_D0 = Me.Txt
  loc_12C9D9E:           Call 0.Method_Proc_76_70_12C9F5C0 (CInt(3), var_D8)
  loc_12C9DA6:           var_D8.Text = "CASH CARD"
  loc_12C9DF3:           If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_12C9DF6:             Exit Sub
  loc_12C9DF7:           End If
  loc_12C9DFD:           Me.MoveFirst
  loc_12C9E21:           Set var_D0 = Me.Txt
  loc_12C9E27:           Call 0.Method_Proc_76_70_12C9F5C0 (CInt(3), var_D8, var_A8, "Name ='")
  loc_12C9E2F:           0 = var_D8.Text
  loc_12C9E48:           Me.Find 1 & var_A8 & "'", var_BC, var_96
  loc_12C9E6B:           Set var_D0 = Me.Txt
  loc_12C9E71:           Call 0.Method_Proc_76_70_12C9F5C0 (CInt(&H11), var_D8)
  loc_12C9E79:           var_D8.Text = var_8C
  loc_12C9E93:           Set var_D0 = Me.Txt
  loc_12C9E99:           Call 0.Method_Proc_76_70_12C9F5C0 (CInt(&H12), var_D8)
  loc_12C9EA1:           var_D8.Text = var_90
  loc_12C9EB7:           Call Txt_Validate(CInt(3))
  loc_12C9EBC:         End If
  loc_12C9EBC:       End If
  loc_12C9EBC:     End If
  loc_12C9EBF:   Else
  loc_12C9EC7:     If (var_DC = "NBSD_Mifare") Then
  loc_12C9EE3:       MsgBox("Procedure Not Defined!", &H40, var_124, var_144, var_164)
  loc_12C9EF6:     Else
  loc_12C9F0F:       MsgBox("Smart Card Interface Not Defined!", &H40, var_124, var_144, var_164)
  loc_12C9F1F:     End If
  loc_12C9F1F:   End If
  loc_12C9F22: Else
  loc_12C9F3B:   MsgBox("Member Environment Settings NOT SET!", 0, var_124, var_144, var_164)
  loc_12C9F4B: End If
  loc_12C9F50: Set var_88 = Nothing
  loc_12C9F53: Exit Sub
  loc_12C9F54: ' Referenced from: 12C9904
  loc_12C9F54: Proc_6_60_E63754(var_96)
  loc_12C9F59: Exit Sub
End Sub

Public Sub Proc_76_71_FD0A34(arg_C) 'FD0A34
  'Data Table: 53E44C
  Dim var_98 As TextBox
  loc_FD086E: Set var_8C = Me.Txt
  loc_FD0874: Call 0.Method_Proc_76_71_FD0A348 (var_8E, var_86)
  loc_FD0884: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FD0933:   If (((((((((((((((((CInt(var_86) <> 4) And (CInt(var_86) <> 5)) And (CInt(var_86) <> 6)) And (CInt(var_86) <> 7)) And (CInt(var_86) <> 8)) And (CInt(var_86) <> 9)) And (CInt(var_86) <> &HA)) And (CInt(var_86) <> &HB)) And (CInt(var_86) <> &HC)) And (CInt(var_86) <> &HD)) And (CInt(var_86) <> &HE)) And (CInt(var_86) <> &H1A)) And (CInt(var_86) <> &H1B)) And (CInt(var_86) <> &H1C)) And (CInt(var_86) <> &H1D)) And (CInt(var_86) <> &H21)) And (CInt(var_86) <> &H22)) Then
  loc_FD0946:     Set var_8C = Me.Txt
  loc_FD094C:     Call 0.Method_Proc_76_71_FD0A340 (CInt(var_86), var_98)
  loc_FD0954:     var_98.Enabled = arg_C
  loc_FD0960:   End If
  loc_FD0963: Next var_92 'Byte
  loc_FD0975: If (global_104 = 1) Then
  loc_FD0985:   Set var_8C = Me.Txt
  loc_FD098B:   Call 0.Method_Proc_76_71_FD0A340 (CInt(1), var_98)
  loc_FD0993:   var_98.Enabled = False
  loc_FD099F: End If
  loc_FD09AC: Set var_8C = Me.Txt
  loc_FD09B2: Call 0.Method_Proc_76_71_FD0A340 (CInt(2), var_98)
  loc_FD09BA: var_98.Enabled = False
  loc_FD09D3: Set var_8C = Me.Txt
  loc_FD09D9: Call 0.Method_Proc_76_71_FD0A340 (CInt(0), var_98)
  loc_FD09E1: var_98.Enabled = False
  loc_FD0A04: If (OpenMode = 1) Then
  loc_FD0A14:   Set var_8C = Me.Txt
  loc_FD0A1A:   Call 0.Method_Proc_76_71_FD0A340 (CInt(4), var_98)
  loc_FD0A22:   var_98.Enabled = False
  loc_FD0A2E:   GoTo loc_FD0A31
  loc_FD0A31:   ' Referenced from: FD0A2E
  loc_FD0A31: End If
  loc_FD0A31: Exit Sub
End Sub

Public Sub Proc_76_72_F10E94(arg_C) 'F10E94
  'Data Table: 53E44C
  Dim var_98 As TextBox
  loc_F10DAA: Set var_8C = Me.Txt
  loc_F10DB0: Call 0.Method_Proc_76_72_F10E948 (var_8E, var_86)
  loc_F10DC0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F10E5B:   If (((((((((((((((CInt(var_86) <> 4) And (CInt(var_86) <> 5)) And (CInt(var_86) <> 6)) And (CInt(var_86) <> 7)) And (CInt(var_86) <> 8)) And (CInt(var_86) <> 9)) And (CInt(var_86) <> &HA)) And (CInt(var_86) <> &HB)) And (CInt(var_86) <> &HC)) And (CInt(var_86) <> &HD)) And (CInt(var_86) <> &HE)) And (CInt(var_86) <> &H1A)) And (CInt(var_86) <> &H1B)) And (CInt(var_86) <> &H1C)) And (CInt(var_86) <> &H1D)) Then
  loc_F10E6E:     Set var_8C = Me.Txt
  loc_F10E74:     Call 0.Method_Proc_76_72_F10E940 (CInt(var_86), var_98)
  loc_F10E7C:     var_98.Enabled = arg_C
  loc_F10E88:   End If
  loc_F10E8B: Next var_92 'Byte
  loc_F10E91: Exit Sub
End Sub

Public Sub Proc_76_73_F88DF0
  'Data Table: 53E44C
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_8C As MSHFlexGrid
  loc_F88C96: Set var_8C = Me.Txt
  loc_F88C9C: Call 0.Method_Proc_76_73_F88DF0C (var_8E, var_86)
  loc_F88CAC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F88CC2:   Set var_8C = Me.Txt
  loc_F88CC8:   Call 0.Method_Proc_76_73_F88DF00 (CInt(var_86), var_98)
  loc_F88CD0:   var_98.Text = vbNullString
  loc_F88CEC:   Set var_8C = Me.Txt
  loc_F88CF2:   Call 0.Method_Proc_76_73_F88DF00 (CInt(var_86), var_98)
  loc_F88CFA:   var_98.Tag = vbNullString
  loc_F88D09: Next var_92 'Byte
  loc_F88D22: Me.FGrid.Rows = 1
  loc_F88D2A: var_A8 = "1"
  loc_F88D34: Set var_8C = Me.FGrid
  loc_F88D58: Me.FGrid.FixedRows = 1
  loc_F88D6E: Set var_8C = Me.LTxt
  loc_F88D74: Call 0.Method_Proc_76_73_F88DF00 (CInt(0), var_98, vbNullString)
  loc_F88D7C: var_98.Caption = FGrid.DispID_10000
  loc_F88D96: Set var_8C = Me.LTxt
  loc_F88D9C: Call 0.Method_Proc_76_73_F88DF00 (CInt(1), var_98)
  loc_F88DA4: var_98.Caption = vbNullString
  loc_F88DBE: Set var_8C = Me.LTxt
  loc_F88DC4: Call 0.Method_Proc_76_73_F88DF00 (CInt(2), var_98)
  loc_F88DCC: var_98.Caption = vbNullString
  loc_F88DDE: global_176 = vbNullString
  loc_F88DEB: global_180 = CDate(var_A8)
  loc_F88DEE: Exit Sub
End Sub

Public Sub Proc_76_74_1225540
  'Data Table: 53E44C
  Dim var_90 As Long
  Dim var_A0 As Variant
  loc_122503F: Me.FrRest.Top = CDbl(825)
  loc_1225056: Me.FrRest.Left = CDbl(1250)
  loc_1225069: var_90 = OpenType
  loc_1225075: If Not (var_90 = 1) Then
  loc_1225081:   If (var_90 = 7) Then
  loc_1225084:   End If
  loc_1225097:   Me.FGrid.Top = CVar(CDbl(3705))
  loc_12250A2: Else
  loc_12250AB:   If Not (var_90 = 5) Then
  loc_12250B7:     If (var_90 = 6) Then
  loc_12250BA:     End If
  loc_12250CD:     Me.FGrid.Top = CVar(CDbl(3800))
  loc_12250D5:   End If
  loc_12250D5: End If
  loc_12250E8: Me.FGrid.Left = CVar(CDbl(510))
  loc_1225115: Me.FrChqDet.Top = (Me.FrRest.Top + CDbl(1110))
  loc_1225130: Me.FrChqDet.Left = CDbl(1250)
  loc_122515D: Me.FrCCDet.Top = (Me.FrRest.Top + CDbl(1110))
  loc_1225178: Me.FrCCDet.Left = CDbl(1250)
  loc_12251A2: Me.DGPayType.Top = CVar(CDbl(Me.FGrid.Top))
  loc_12251D3: Me.DGPayType.Height = CVar(CDbl(Me.FGrid.Height))
  loc_1225210: var_A0 = CVar((Me.FrRest.Top + CDbl(Me.FGrid.Top))) 'Single
  loc_122521F: Me.DGTable.Top = CVar(CDbl(Me.FGrid.Height))
  loc_1225252: Me.DGTable.Height = CVar(CDbl(Me.FGrid.Height))
  loc_1225286: Me.FrSendRoom.Top = (Me.FrRest.Top + CDbl(1110))
  loc_12252A1: Me.FrSendRoom.Left = CDbl(1250)
  loc_12252CE: Me.FrEmp.Top = (Me.FrRest.Top + CDbl(1110))
  loc_12252E9: Me.FrEmp.Left = CDbl(1250)
  loc_1225316: Me.FrComp.Top = (Me.FrRest.Top + CDbl(1110))
  loc_1225331: Me.FrComp.Left = CDbl(1250)
  loc_122535E: Me.FrMem.Top = (Me.FrRest.Top + CDbl(1110))
  loc_1225379: Me.FrMem.Left = CDbl(1250)
  loc_12253A6: Me.FrCashCard.Top = (Me.FrRest.Top + CDbl(1110))
  loc_12253C1: Me.FrCashCard.Left = CDbl(1250)
  loc_12253DC: Me.DGRoom.Top = CVar(CDbl(405))
  loc_12253F7: Me.DGRoom.Left = CVar(CDbl(5415))
  loc_1225412: Me.DGEmp.Top = CVar(CDbl(405))
  loc_122542D: Me.DGEmp.Left = CVar(CDbl(5550))
  loc_1225448: Me.DGCompany.Top = CVar(CDbl(405))
  loc_1225463: Me.DGCompany.Left = CVar(CDbl(5550))
  loc_1225477: If (global_108 = 5) Then
  loc_1225489:   Me.FrRem.Width = CDbl(4925)
  loc_1225491: End If
  loc_122549D: If (global_108 = 6) Then
  loc_12254AF:   Me.FrRem.Width = CDbl(4925)
  loc_12254B7: End If
  loc_12254DC: Me.FrRem.Top = (Me.FrRest.Top + CDbl(960))
  loc_1225507: Me.FrRem.Left = Me.FrRest.Left
  loc_1225532: Me.FrTxnNo.Left = Me.FrRest.Left
  loc_122553E: Exit Sub
End Sub

Public Sub Proc_76_75_15B4F88
  'Data Table: 53E44C
  Dim Me As Variant
  Dim var_98 As Long
  Dim var_9C As String
  Dim var_A4 As String
  Dim var_A8 As String
  Dim var_B0 As String
  Dim var_B8 As String
  Dim var_F4 As Variant
  Dim var_D0 As Variant
  Dim var_C0 As Variant
  Dim var_D4 As Field20
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_124 As Variant
  Dim unk_53E46D As Connection15
  Dim var_E4 As Variant
  Dim var_14C As Variant
  Dim var_170 As Variant
  Dim var_160 As Variant
  Dim var_138 As Variant
  Dim var_1B4 As Fields15
  Dim var_1D8 As Variant
  Dim var_150 As Variant
  Dim var_90 As Integer
  Dim var_8E As Integer
  Dim var_1A0 As Variant
  Dim var_1B0 As Variant
  Dim var_8C As Recordset15
  loc_15B3D28: On Error Goto loc_15B4F42
  loc_15B3D31: Proc_183_45_E5CCA8(global_56)
  loc_15B3D4D: If (Me.RecordCount <= 0) Then
  loc_15B3D50:   Call Proc_76_73_F88DF0()
  loc_15B3D58: Else
  loc_15B3D5E:   var_98 = global_108
  loc_15B3D6A:   If Not (var_98 = 5) Then
  loc_15B3D76:     If (var_98 = 6) Then
  loc_15B3D79:     End If
  loc_15B3D8D:     var_9C = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName, ST.EmpCode, " & "E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,"
  loc_15B3D9B:     var_A4 = var_9C & "ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, " & "R.Name AS RoomName, ST.FolioNo, ST.CardNo, st.U_AE,st.U_Name,st.U_Entdt,st.AU_Name,st.AU_Entdt,ST.CardHolder, ST.ChqNo, "
  loc_15B3DA2:     var_A8 = var_A4 & "ST.ChqDate, ST.TxnNo, ST.ExpDate,CC.Name as CompName,CompCode,CC.Name as MemName,CompCode As MemCode FROM ((((PayCharge AS ST LEFT JOIN "
  loc_15B3DB0:     var_B0 = var_A8 & "GuestProf AS GP ON (ST.GuestProf = GP.Code AND ST.LOGSITE_CODE=GP.LOGSITE_CODE)) LEFT JOIN Employee AS E " & "ON (ST.EmpCode = E.Code AND ST.LOGSITE_CODE=E.LOGSITE_CODE)) LEFT JOIN RevMast AS P ON (ST.PayCode = P.Code AND ST.LOGSITE_CODE=P.LOGSITE_CODE)) "
  loc_15B3DBE:     var_B8 = var_B0 & "LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) " & "AND (ST.RoomNo = R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode where (ST.LOGSITE_CODE='"
  loc_15B3E05:     var_124 = CVar(var_B8 & MemVar_1F95078 & "' or ST.LOGSITE_CODE='HO') AND ST.Docid='") & Me.Fields.Item("SearchCode").Value & "' And AmtCr>0" 
  loc_15B3E13:     unk_53E46D.Execute CStr(var_124), var_148, -1
  loc_15B3E1E:     Set var_88 = var_14C
  loc_15B3E4E:   End If
  loc_15B3EF7:   var_1B0 = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_AE")), Me.Recordset15.Fields) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_15B3F3F:   Me.LblUser.Caption = CStr(var_98 & CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_Name")), var_1B0)))
  loc_15B3FBF:   var_150 = Me.Recordset15.Fields.Item("U_AE")
  loc_15B4020:   var_1B0 = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_150)) = "E"), "Last Update :   ", "entdt :   "))
  loc_15B403A:   var_1B4 = Me.Recordset15.Fields
  loc_15B404A:   var_1D8 = CVar(var_1B4.Item("U_EntDt")) 'Address
  loc_15B4068:   Me.LblLDt.Caption = CStr(var_1B0 & CVar(Proc_6_38_E69628(var_1D8)))
  loc_15B40D4:   global_88 = CStr(Me.Fields.Item("SearchCode").Value)
  loc_15B40FC:   If (Me.Recordset15.RecordCount > 0) Then
  loc_15B4133:     global_176 = CStr(Me.Recordset15.Fields.Item("AU_Name").Value)
  loc_15B4176:     global_180 = CDate(Me.Recordset15.Fields.Item("AU_EntDt").Value)
  loc_15B41BF:     Set var_14C = Me.Txt
  loc_15B41C5:     Call 0.Method_Proc_76_75_15B4F880 (CInt(0), var_150)
  loc_15B41CD:     var_150.Text = CStr(Me.Recordset15.Fields.Item("DocID").Value)
  loc_15B421F:     Set var_14C = Me.Txt
  loc_15B4225:     Call 0.Method_Proc_76_75_15B4F880 (CInt(1), var_150)
  loc_15B422D:     var_150.Text = CStr(Me.Recordset15.Fields.Item("VNo").Value)
  loc_15B427F:     Set var_14C = Me.Txt
  loc_15B4285:     Call 0.Method_Proc_76_75_15B4F880 (CInt(2), var_150)
  loc_15B428D:     var_150.Text = CStr(Me.Recordset15.Fields.Item("VDate").Value)
  loc_15B42DE:     Me.LblVPrefix.Caption = CStr(Me.Recordset15.Fields.Item("vPrefix").Value)
  loc_15B42F2:   End If
  loc_15B4301:   Me.FGrid.Redraw = False
  loc_15B4316:   Set var_C0 = Me.FGrid
  loc_15B431C:   var_C0.Rows = 1
  loc_15B4326:   var_90 = 1
  loc_15B4340:   If (Me.var_C0.RecordCount > 0) Then
  loc_15B4343:     ' Referenced from:   15B4E6B
  loc_15B4355:     If Not(Me.Recordset15.EOF) Then
  loc_15B4358:       var_D0 = vbNullString
  loc_15B4362:       Set var_C0 = Me.FGrid
  loc_15B4377:       Set var_204 = Me.FGrid
  loc_15B437E:       var_114 = CVar(CLng(var_90)) 'Long
  loc_15B4383:       var_160 = 0
  loc_15B43BA:       var_F4 = CVar(CStr(Me.FGrid.Fields.Item("SNo").Value)) 'String
  loc_15B43C1:       LateIdCallSt
  loc_15B4414:       var_F4 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PayType")), 2, CVar(CLng(var_90)), var_204, var_F4, 2)) 'String
  loc_15B441B:       LateIdCallSt
  loc_15B4474:       LateIdCallSt
  loc_15B44B5:       var_9C = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PayCode")), var_204, CVar(CStr(Me.Recordset15.Fields.Item("PayCode").Value)), 1, CVar(CLng(var_90)), var_204)
  loc_15B44D1:       If (var_9C = MemVar_1F95070 & "CCAD") Then
  loc_15B44D6:         var_8E = &HFF
  loc_15B44D9:       End If
  loc_15B4516:       var_F4 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PayName")), 3, CVar(CLng(var_90)), var_8E, var_F4)) 'String
  loc_15B451D:       LateIdCallSt
  loc_15B4533:       var_114 = CVar(CLng(var_90)) 'Long
  loc_15B4538:       var_160 = 4
  loc_15B456F:       var_F4 = CVar(CStr(Me.Recordset15.Fields.Item("RoomCat").Value)) 'String
  loc_15B4576:       LateIdCallSt
  loc_15B4590:       var_114 = CVar(CLng(var_90)) 'Long
  loc_15B4595:       var_160 = 5
  loc_15B45CC:       var_F4 = CVar(CStr(Me.Recordset15.Fields.Item("Roomtype").Value)) 'String
  loc_15B45D3:       LateIdCallSt
  loc_15B45ED:       var_114 = CVar(CLng(var_90)) 'Long
  loc_15B45F5:       var_160 = CVar(CLng(6)) 'Long
  loc_15B4628:       var_F4 = CVar(CStr(Me.Recordset15.Fields.Item("RoomNo").Value)) 'String
  loc_15B462F:       LateIdCallSt
  loc_15B4681:       var_F4 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomName")), CVar(CLng(7)), CVar(CLng(var_90)), var_204, var_F4, CVar(CLng(7)), CVar(CLng(var_90)))) 'String
  loc_15B4688:       LateIdCallSt
  loc_15B46BD:       var_138 = CVar(CLng(var_90)) 'Long
  loc_15B46C2:       var_170 = 8
  loc_15B46F3:       var_124 = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_15B46FA:       LateIdCallSt
  loc_15B4714:       var_114 = CVar(CLng(var_90)) 'Long
  loc_15B471C:       var_160 = CVar(CLng(9)) 'Long
  loc_15B474F:       var_F4 = CVar(CStr(Me.Recordset15.Fields.Item("CardNo").Value)) 'String
  loc_15B4756:       LateIdCallSt
  loc_15B4770:       var_114 = CVar(CLng(var_90)) 'Long
  loc_15B4778:       var_160 = CVar(CLng(&HA)) 'Long
  loc_15B47AB:       var_F4 = CVar(CStr(Me.Recordset15.Fields.Item("CardHolder").Value)) 'String
  loc_15B47B2:       LateIdCallSt
  loc_15B4804:       var_F4 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ExpDate")), CVar(CLng(&HB)), CVar(CLng(var_90)), var_204, var_F4, CVar(CLng(&HB)), CVar(CLng(var_90)))) 'String
  loc_15B480B:       LateIdCallSt
  loc_15B485A:       var_F4 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("BatchNo")), &H17, CVar(CLng(var_90)), var_204, var_F4, var_204)) 'String
  loc_15B4861:       LateIdCallSt
  loc_15B4877:       var_114 = CVar(CLng(var_90)) 'Long
  loc_15B487F:       var_160 = CVar(CLng(&HC)) 'Long
  loc_15B48B2:       var_F4 = CVar(CStr(Me.Recordset15.Fields.Item("ChqNo").Value)) 'String
  loc_15B48B9:       LateIdCallSt
  loc_15B490B:       var_F4 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqDate")), CVar(CLng(&HD)), CVar(CLng(var_90)), var_204, var_F4, CVar(CLng(&HD)), CVar(CLng(var_90)))) 'String
  loc_15B4912:       LateIdCallSt
  loc_15B4960:       var_F4 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TxnNo")), CVar(CLng(&H11)), CVar(CLng(var_90)), var_204, var_F4, var_204)) 'String
  loc_15B4967:       LateIdCallSt
  loc_15B497D:       var_114 = CVar(CLng(var_90)) 'Long
  loc_15B4985:       var_160 = CVar(CLng(&HE)) 'Long
  loc_15B49B8:       var_F4 = CVar(CStr(Me.Recordset15.Fields.Item("Comments").Value)) 'String
  loc_15B49BF:       LateIdCallSt
  loc_15B4A11:       var_F4 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("EmpName")), CVar(CLng(&HF)), CVar(CLng(var_90)), var_204, var_F4, CVar(CLng(&HF)), CVar(CLng(var_90)))) 'String
  loc_15B4A18:       LateIdCallSt
  loc_15B4A2E:       var_114 = CVar(CLng(var_90)) 'Long
  loc_15B4A36:       var_160 = CVar(CLng(&H10)) 'Long
  loc_15B4A69:       var_F4 = CVar(CStr(Me.Recordset15.Fields.Item("EmpCode").Value)) 'String
  loc_15B4A70:       LateIdCallSt
  loc_15B4AC3:       var_F4 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CompCode")), &H14, CVar(CLng(var_90)), var_204, var_F4, &H14, CVar(CLng(var_90)))) 'String
  loc_15B4ACA:       LateIdCallSt
  loc_15B4B19:       var_F4 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CompName")), &H15, CVar(CLng(var_90)), var_204, var_F4, var_204)) 'String
  loc_15B4B20:       LateIdCallSt
  loc_15B4B6F:       var_F4 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("MemCode")), &H18, CVar(CLng(var_90)), var_204, var_F4)) 'String
  loc_15B4B76:       LateIdCallSt
  loc_15B4BC5:       var_F4 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("MemName")), &H19, CVar(CLng(var_90)), var_204, var_F4)) 'String
  loc_15B4BCC:       LateIdCallSt
  loc_15B4BE2:       var_114 = CVar(CLng(var_90)) 'Long
  loc_15B4C1E:       var_F4 = CVar(CStr(Me.Recordset15.Fields.Item("TipAmt").Value)) 'String
  loc_15B4C25:       LateIdCallSt
  loc_15B4C69:       var_F4 = "0.00"
  loc_15B4C90:       Set var_14C = Me.LTxt
  loc_15B4C96:       Call 0.Method_Proc_76_75_15B4F880 (CInt(0), var_150, CStr(Format(CVar(Me.Recordset15.Fields.Item("BillAmount")), var_F4)), 1, 1, var_204, var_F4)
  loc_15B4C9E:       var_150.Caption = &H1A
  loc_15B4CCC:       var_F4 = CVar("SELECT P.RoomType+P.RoomCat+SPACE(5-LEN(P.RoomCat))+P.RoomNo+SPACE(5-LEN(P.RoomNo)),code " & " FROM PayCharge AS P INNER JOIN RoomMast AS R ON (P.RoomNo = R.Code) AND (P.RoomCat = R.RoomCat) AND (P.RoomType = R.Type) Where DocId='") 'String
  loc_15B4CFC:       var_104 = var_F4 & Me.Recordset15.Fields.Item("DocID").Value 
  loc_15B4D05:       var_124 = var_104 & "' And SNo=" 
  loc_15B4D3B:       var_1A0 = (Me.Recordset15.Fields.Item("SNo").Value + 1)
  loc_15B4D43:       var_9C = CStr(var_124 & "Created By :   ")
  loc_15B4D4D:       unk_53E46D.Execute var_9C, var_1D8, -1
  loc_15B4D58:       Set var_8C = var_1B4
  loc_15B4D92:       If (var_8C.RecordCount > 0) Then
  loc_15B4DD6:         var_F4 = CVar(Proc_6_38_E69628(var_8C.Fields.Item(0).Value, &H12, CVar(CLng(var_90)), var_1B4, CVar(CLng(var_90)))) 'String
  loc_15B4DDD:         LateIdCallSt
  loc_15B4E34:         var_F4 = CVar(Proc_6_38_E69628(var_8C.Fields.Item(1).Value, &H13, CVar(CLng(var_90)), var_204, var_F4)) 'String
  loc_15B4E3B:         LateIdCallSt
  loc_15B4E51:       End If
  loc_15B4E53:       Set var_204 = Nothing 
  loc_15B4E5D:       var_90 = (var_90 + 1)
  loc_15B4E66:       Me.Recordset15.MoveNext
  loc_15B4E6B:       GoTo loc_15B4343
  loc_15B4E6E:     End If
  loc_15B4E81:     Me.FGrid.FixedRows = 1
  loc_15B4E89:   End If
  loc_15B4E97:   Me.FGrid.Redraw = True
  loc_15B4EA5:   If (var_90 = 1) Then
  loc_15B4EBB:     Me.FGrid.Rows = 1
  loc_15B4EDF:     var_E4 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0, var_90, var_204, var_F4))) 'String
  loc_15B4EE7:     Set var_D4 = Me.FGrid
  loc_15B4F14:     Me.FGrid.FixedRows = 1
  loc_15B4F1C:   End If
  loc_15B4F1C:   Call Proc_76_84_10A8710(FGrid.DispID_10000, var_E4, var_204, var_F4)
  loc_15B4F21:   Call Proc_76_88_144B208(var_F4, var_204)
  loc_15B4F2C:   If (var_8E = &HFF) Then
  loc_15B4F34:     Call Proc_76_72_F10E94(0)
  loc_15B4F39:   End If
  loc_15B4F39: End If
  loc_15B4F3E: Set var_88 = Nothing
  loc_15B4F41: Exit Sub
  loc_15B4F42: ' Referenced from: 15B3D28
  loc_15B4F4A: Set var_C0 = Err()
  loc_15B4F50: Call 0.Method_arg_2C (var_9C)
  loc_15B4F71: MsgBox(CVar(var_9C), &H40, "Information", var_104, var_124)
  loc_15B4F84: Exit Sub
End Sub

Public Sub Proc_76_76_F96F54
  'Data Table: 53E44C
  loc_F96DF4: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_F96E06:   Me.DGPayType.Visible = False
  loc_F96E0E: End If
  loc_F96E2A: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_F96E3C:   Me.DGPayType.Visible = False
  loc_F96E44: End If
  loc_F96E60: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_F96E72:   Me.DGEmp.Visible = False
  loc_F96E7A: End If
  loc_F96E96: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_F96EA8:   Me.DGTable.Visible = False
  loc_F96EB0: End If
  loc_F96ECC: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_F96EDE:   Me.DGRoom.Visible = False
  loc_F96EE6: End If
  loc_F96F02: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_F96F14:   Me.DGCompany.Visible = False
  loc_F96F1C: End If
  loc_F96F38: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F96F4A:   Me.FGPoint.Visible = False
  loc_F96F52: End If
  loc_F96F52: Exit Sub
End Sub

Public Sub Proc_76_77_E8F398(arg_C) 'E8F398
  'Data Table: 53E44C
  Dim var_10C As TextBox
  loc_E8F32C: Call Proc_76_76_F96F54()
  loc_E8F368: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8F36B:   Call TopCtrl1_UnknownEvent_16()
  loc_E8F373: Else
  loc_E8F37D:   Set var_108 = Me.Txt
  loc_E8F383:   Call 0.Method_Proc_76_77_E8F3980 (arg_C)
  loc_E8F38B:   var_10C.SetFocus
  loc_E8F397: End If
  loc_E8F397: Exit Sub
End Sub

Public Sub Proc_76_78_1158C74
  'Data Table: 53E44C
  Dim var_94 As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_A8 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  loc_1158908: var_90 = global_116
  loc_115891F: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1158950: Set var_A8 = Me.Txt
  loc_1158956: Call 0.Method_Proc_76_78_1158C740 (CInt(2), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And "))
  loc_1158965: Proc_6_7_F26918(var_CC, CVar(var_AC), var_130)
  loc_115896D: var_EC = -1 & var_CC 
  loc_1158981: Me.Txt.Execute CStr(var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC"), var_134, 
  loc_115898C: Set var_8C = var_134
  loc_11589C8: If (var_8C.RecordCount > 0) Then
  loc_1158A07:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_1158A0A:     GoTo loc_1158A97
  loc_1158A0D:   End If
  loc_1158A3E:   global_96 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_1158A69:   var_AC = var_8C.Fields.Item("start_srl_no")
  loc_1158A7E:   var_CC = (var_AC.Value + 1)
  loc_1158A86:   global_100 = CInt(var_CC)
  loc_1158A97:   ' Referenced from: 1158A0A
  loc_1158AC2:   var_BC = Space((5 - Len(var_90)))
  loc_1158ACA:   var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_AC.Value)
  loc_1158ADE:   var_EC = Space((5 - Len(global_96)))
  loc_1158AE6:   var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And ") + var_EC)
  loc_1158AF3:   var_130 = (var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC" + CVar(global_96))
  loc_1158B0C:   var_14C = Space((8 - Len(CStr(global_100))))
  loc_1158B14:   var_15C = (var_130 + var_14C)
  loc_1158B23:   var_17C = (var_15C + CVar(CStr(global_100)))
  loc_1158B2E:   global_92 = CStr(var_17C)
  loc_1158B64:   Me.LblVPrefix.Caption = global_96
  loc_1158B7D:   Set var_A8 = Me.Txt
  loc_1158B83:   Call 0.Method_Proc_76_78_1158C740 (CInt(0), var_AC)
  loc_1158B8B:   var_AC.Text = global_92
  loc_1158BAD:   Set var_A8 = Me.Txt
  loc_1158BB3:   Call 0.Method_Proc_76_78_1158C740 (CInt(1), var_AC)
  loc_1158BBB:   var_AC.Text = CStr(global_100)
  loc_1158BD0:   var_88 = global_92
  loc_1158BD6: Else
  loc_1158BDC:   global_92 = vbNullString
  loc_1158BEF:   global_100 = 0
  loc_1158C02:   Me.LblVPrefix.Caption = vbNullString
  loc_1158C1B:   Set var_A8 = Me.Txt
  loc_1158C21:   Call 0.Method_Proc_76_78_1158C740 (CInt(0), var_AC, global_92)
  loc_1158C29:   var_AC.Text = global_100
  loc_1158C43:   Set var_A8 = Me.Txt
  loc_1158C49:   Call 0.Method_Proc_76_78_1158C740 (CInt(1), var_AC)
  loc_1158C51:   var_AC.Text = vbNullString
  loc_1158C63:   var_88 = global_92
  loc_1158C66: End If
  loc_1158C6B: Set var_8C = Nothing
  loc_1158C6E: Proc_76_78_1158C74 = global_100
End Sub

Public Sub Proc_76_79_12173B8
  'Data Table: 53E44C
  Dim var_88 As Long
  Dim var_A0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As String
  loc_1216ED2: var_88 = global_108
  loc_1216EDE: If Not (var_88 = 5) Then
  loc_1216EEA:   If (var_88 = 6) Then
  loc_1216EED:   End If
  loc_1216EF9:   Me.FrRest.Visible = True
  loc_1216F01: End If
  loc_1216F14: Me.FGrid.Cols = &H1B
  loc_1216F1C: var_A0 = CVar(CLng(9)) 'Long
  loc_1216F21: var_C0 = 0
  loc_1216F2D: LateIdCallSt
  loc_1216F38: var_A0 = CVar(CLng(&HA)) 'Long
  loc_1216F3D: var_C0 = 0
  loc_1216F49: LateIdCallSt
  loc_1216F54: var_A0 = CVar(CLng(&HB)) 'Long
  loc_1216F59: var_C0 = 0
  loc_1216F65: LateIdCallSt
  loc_1216F70: var_A0 = CVar(CLng(&HC)) 'Long
  loc_1216F75: var_C0 = 0
  loc_1216F81: LateIdCallSt
  loc_1216F8C: var_A0 = CVar(CLng(&HD)) 'Long
  loc_1216F91: var_C0 = 0
  loc_1216F9D: LateIdCallSt
  loc_1216FA8: var_A0 = CVar(CLng(&HE)) 'Long
  loc_1216FAD: var_C0 = 0
  loc_1216FB9: LateIdCallSt
  loc_1216FC4: var_A0 = CVar(CLng(&HF)) 'Long
  loc_1216FC9: var_C0 = 0
  loc_1216FD5: LateIdCallSt
  loc_1216FE0: var_A0 = CVar(CLng(&H10)) 'Long
  loc_1216FE5: var_C0 = 0
  loc_1216FF1: LateIdCallSt
  loc_1216FF9: var_A0 = &H1A
  loc_1217002: var_C0 = 0
  loc_121700E: LateIdCallSt
  loc_1217016: var_A0 = 1
  loc_121701F: var_C0 = 0
  loc_121702B: LateIdCallSt
  loc_1217033: var_A0 = 4
  loc_121703C: var_C0 = 0
  loc_1217048: LateIdCallSt
  loc_1217050: var_A0 = 5
  loc_1217059: var_C0 = 0
  loc_1217065: LateIdCallSt
  loc_1217070: var_A0 = CVar(CLng(6)) 'Long
  loc_1217075: var_C0 = 0
  loc_1217081: LateIdCallSt
  loc_121708C: var_A0 = CVar(CLng(7)) 'Long
  loc_1217091: var_C0 = 0
  loc_121709D: LateIdCallSt
  loc_12170A5: var_A0 = 2
  loc_12170AE: var_C0 = 0
  loc_12170BA: LateIdCallSt
  loc_12170C2: var_A0 = 0
  loc_12170CB: var_C0 = &HFA
  loc_12170D7: LateIdCallSt
  loc_12170DF: var_A0 = 0
  loc_12170E8: var_C0 = 0
  loc_12170F1: var_E0 = "SNo"
  loc_12170FA: LateIdCallSt
  loc_1217102: var_A0 = 0
  loc_121710B: var_C0 = &H1C2
  loc_1217117: LateIdCallSt
  loc_121711F: var_A0 = 0
  loc_1217128: var_C0 = 3
  loc_1217131: var_E0 = "Payment Type"
  loc_121713A: LateIdCallSt
  loc_1217142: var_A0 = 3
  loc_1217151: var_C0 = CVar(CInt(1)) 'Integer
  loc_1217158: LateIdCallSt
  loc_1217160: var_A0 = 3
  loc_1217169: var_C0 = &HDAC
  loc_1217175: LateIdCallSt
  loc_121717D: var_A0 = 0
  loc_1217186: var_C0 = 8
  loc_121718F: var_E0 = "Amount"
  loc_1217198: LateIdCallSt
  loc_12171A0: var_A0 = 8
  loc_12171AF: var_C0 = CVar(CInt(7)) 'Integer
  loc_12171B6: LateIdCallSt
  loc_12171BE: var_A0 = 8
  loc_12171CD: var_C0 = CVar(CInt(7)) 'Integer
  loc_12171D4: LateIdCallSt
  loc_12171DC: var_A0 = 8
  loc_12171E5: var_C0 = &H4EC
  loc_12171F1: LateIdCallSt
  loc_12171F9: var_A0 = 0
  loc_1217202: var_C0 = &H1A
  loc_121720B: var_E0 = "Tip"
  loc_1217214: LateIdCallSt
  loc_121721C: var_A0 = &H1A
  loc_121722B: var_C0 = CVar(CInt(7)) 'Integer
  loc_1217232: LateIdCallSt
  loc_121723A: var_A0 = &H1A
  loc_1217249: var_C0 = CVar(CInt(7)) 'Integer
  loc_1217250: LateIdCallSt
  loc_1217258: var_A0 = &H1A
  loc_1217261: var_C0 = &H4EC
  loc_121726D: LateIdCallSt
  loc_1217275: var_A0 = &H12
  loc_121727E: var_C0 = 0
  loc_121728A: LateIdCallSt
  loc_1217292: var_A0 = &H13
  loc_121729B: var_C0 = 0
  loc_12172A7: LateIdCallSt
  loc_12172AF: var_A0 = &H14
  loc_12172B8: var_C0 = 0
  loc_12172C4: LateIdCallSt
  loc_12172CC: var_A0 = &H15
  loc_12172D5: var_C0 = 0
  loc_12172E1: LateIdCallSt
  loc_12172E9: var_A0 = &H18
  loc_12172F2: var_C0 = 0
  loc_12172FE: LateIdCallSt
  loc_1217306: var_A0 = &H19
  loc_121730F: var_C0 = 0
  loc_121731B: LateIdCallSt
  loc_1217323: var_A0 = &H16
  loc_121732C: var_C0 = 0
  loc_1217338: LateIdCallSt
  loc_1217340: var_A0 = &H17
  loc_1217349: var_C0 = 0
  loc_1217355: LateIdCallSt
  loc_1217360: var_A0 = CVar(CLng(&H11)) 'Long
  loc_1217365: var_C0 = 0
  loc_1217371: LateIdCallSt
  loc_12173A3: LateIdCallSt
  loc_12173B1: Call Proc_76_80_117F7CC(Me.FGrid, CVar(CStr(1)), 0, 1, Nothing, 0, 1, Nothing)
  loc_12173B6: Exit Sub
End Sub

Public Sub Proc_76_80_117F7CC
  'Data Table: 53E44C
  Dim var_94 As Long
  Dim Me As Recordset15
  Dim var_B8 As Variant
  loc_117F3F2: Set global_68 = New 
  loc_117F404: Me.Recordset15.CursorLocation = 3
  loc_117F414: var_94 = OpenType
  loc_117F420: If (var_94 = 6) Then
  loc_117F446:   Me.Open "Select T.Code,T.Name As Name From RoomMast T where T.Type in('HL') Order by T.Code", CVar(MemVar_1F95044), 3
  loc_117F457:   Set var_8C = Me.LblName
  loc_117F45D:   Call 0.Method_Proc_76_80_117F7CC0 (&HC, var_B8, "Hall")
  loc_117F465:   var_B8.Caption = 1
  loc_117F481:   Set var_8C = Me.DGTable
  loc_117F492:   Set var_B8 = DGTable.DispID_69
  loc_117F4A0:   var_B8.Item(1).Caption = "Hall"
  loc_117F4B7:   global_152 = "HALL"
  loc_117F4C1:   global_156 = "HS"
  loc_117F4C8: Else
  loc_117F4D1:   If (var_94 = 5) Then
  loc_117F4DC:     If (MemVar_1F951AC = "Hall") Then
  loc_117F4EB:       Set var_8C = Me.LblName
  loc_117F4F1:       Call 0.Method_Proc_76_80_117F7CC0 (&HC, var_B8, "Hall #")
  loc_117F4F9:       var_B8.Caption = -1
  loc_117F515:       Set var_8C = Me.DGTable
  loc_117F526:       Set var_B8 = DGTable.DispID_69
  loc_117F534:       var_B8.Item(1).Caption = "Hall #"
  loc_117F568:       Me.Open "Select T.Code,T.Code As Name From RoomMast T where T.Type in ('HL') Order By T.Code", CVar(MemVar_1F95044), 3
  loc_117F573:       global_152 = "HALL"
  loc_117F57D:       global_156 = "HL"
  loc_117F584:     Else
  loc_117F58C:       If (MemVar_1F951AC = "Fast Food") Then
  loc_117F59A:         Set var_8C = Me.LblName
  loc_117F5A0:         Call 0.Method_Proc_76_80_117F7CC0 (&HC, var_B8, 0)
  loc_117F5A8:         var_B8.Visible = True
  loc_117F5C1:         Set var_8C = Me.Txt
  loc_117F5C7:         Call 0.Method_Proc_76_80_117F7CC0 (CInt(4), var_B8, 0)
  loc_117F5CF:         var_B8.Visible = True
  loc_117F5EB:         Set var_8C = Me.DGTable
  loc_117F5FC:         Set var_B8 = DGTable.DispID_69
  loc_117F60A:         var_B8.Item(1).Caption = "Hall #"
  loc_117F63E:         Me.Open "Select T.Code,T.Code As Name From RoomMast T where T.Type in ('HL') Order By T.Code", CVar(MemVar_1F95044), 3
  loc_117F649:         global_152 = "HALL"
  loc_117F653:         global_156 = "HL"
  loc_117F65A:       Else
  loc_117F662:         If (MemVar_1F951AC = "Room Service") Then
  loc_117F671:           Set var_8C = Me.LblName
  loc_117F677:           Call 0.Method_Proc_76_80_117F7CC0 (&HC, var_B8, "Room #")
  loc_117F67F:           var_B8.Caption = 1
  loc_117F69B:           Set var_8C = Me.DGTable
  loc_117F6AC:           Set var_B8 = DGTable.DispID_69
  loc_117F6BA:           var_B8.Item(1).Caption = "Room #"
  loc_117F6EE:           Me.Open "Select T.Code,T.Code As Name,RoomCat From RoomMast T where T.Type in('RO') Order by T.Code", CVar(MemVar_1F95044), 3
  loc_117F6F9:           global_156 = "RO"
  loc_117F700:         Else
  loc_117F70C:           Set var_8C = Me.LblName
  loc_117F712:           Call 0.Method_Proc_76_80_117F7CC0 (&HC, var_B8, "Table #", 1)
  loc_117F71A:           var_B8.Caption = -1
  loc_117F736:           Set var_8C = Me.DGTable
  loc_117F755:           DGTable.DispID_69.Item(1).Caption = "Table #"
  loc_117F789:           Me.Open "Select T.Code,T.Code As Name From RoomMast T where T.Type in ('TB') Order By T.Code", CVar(MemVar_1F95044), 3
  loc_117F794:           global_152 = "REST"
  loc_117F79E:           global_156 = "TB"
  loc_117F7A2:         End If
  loc_117F7A2:       End If
  loc_117F7A2:     End If
  loc_117F7A2:   End If
  loc_117F7A2: End If
  loc_117F7AB: CVarUnk
  loc_117F7B0: VerifyVarObj
  loc_117F7B6: Set var_8C = Me.DGTable
  loc_117F7BC: LateIdStAd
  loc_117F7CA: Exit Sub
End Sub

Public Sub Proc_76_81_1210284(arg_C) '1210284
  'Data Table: 53E44C
  Dim var_8C As Long
  loc_120FDB0: Me.FrChqDet.Visible = False
  loc_120FDC4: Me.FrTxnNo.Visible = False
  loc_120FDD8: Me.FrRem.Visible = False
  loc_120FDEC: Me.FrCCDet.Visible = False
  loc_120FE00: Me.FrEmp.Visible = False
  loc_120FE14: Me.FrComp.Visible = False
  loc_120FE28: Me.FrMem.Visible = False
  loc_120FE3C: Me.FrSendRoom.Visible = False
  loc_120FE50: Me.FrCashCard.Visible = False
  loc_120FE5E: var_8C = global_108
  loc_120FE6A: If Not (var_8C = 5) Then
  loc_120FE76:   If (var_8C = 6) Then
  loc_120FE79:   End If
  loc_120FE7C:   var_90 = arg_C
  loc_120FE87:   If (var_90 = "Cheque") Then
  loc_120FE96:     Me.FrChqDet.Visible = True
  loc_120FEAA:     Me.FrRem.Visible = True
  loc_120FEEC:     Me.FrRem.Top = ((Me.FrChqDet.Top + Me.FrChqDet.Height) + CDbl(&HF))
  loc_120FEFD:   Else
  loc_120FF05:     If (var_90 = "Credit Card") Then
  loc_120FF14:       Me.FrCCDet.Visible = True
  loc_120FF28:       Me.FrRem.Visible = False
  loc_120FF33:     Else
  loc_120FF3B:       If (var_90 = "Staff") Then
  loc_120FF4A:         Me.FrEmp.Visible = True
  loc_120FF5E:         Me.FrRem.Visible = True
  loc_120FFA0:         Me.FrRem.Top = ((Me.FrEmp.Top + Me.FrEmp.Height) + CDbl(&HF))
  loc_120FFB1:       Else
  loc_120FFB9:         If (var_90 = "Company") Then
  loc_120FFC8:           Me.FrComp.Visible = True
  loc_120FFDC:           Me.FrRem.Visible = True
  loc_121001E:           Me.FrRem.Top = ((Me.FrComp.Top + Me.FrComp.Height) + CDbl(&HF))
  loc_121002F:         Else
  loc_1210037:           If (var_90 = "Member") Then
  loc_1210046:             Me.FrMem.Visible = True
  loc_121005A:             Me.FrRem.Visible = True
  loc_121009C:             Me.FrRem.Top = ((Me.FrMem.Top + Me.FrMem.Height) + CDbl(&HF))
  loc_12100AD:           Else
  loc_12100B5:             If (var_90 = "Room") Then
  loc_12100C4:               Me.FrSendRoom.Visible = True
  loc_12100D8:               Me.FrRem.Visible = False
  loc_12100E3:             Else
  loc_12100EB:               If (var_90 = "Cash Card") Then
  loc_12100FA:                 Me.FrCashCard.Visible = True
  loc_121010E:                 Me.FrRem.Visible = True
  loc_1210150:                 Me.FrRem.Top = ((Me.FrCashCard.Top + Me.FrCashCard.Height) + CDbl(&HF))
  loc_1210161:               Else
  loc_1210169:                 If (var_90 = "UPI") Then
  loc_1210178:                   Me.FrTxnNo.Visible = True
  loc_121018C:                   Me.FrRem.Visible = True
  loc_12101CE:                   Me.FrTxnNo.Top = ((Me.FrRest.Top + Me.FrRest.Height) + CDbl(&HF))
  loc_1210216:                   Me.FrRem.Top = ((Me.FrTxnNo.Top + Me.FrTxnNo.Height) + CDbl(&HF))
  loc_1210227:                 Else
  loc_1210233:                   Me.FrRem.Visible = True
  loc_1210275:                   Me.FrRem.Top = ((Me.FrRest.Top + Me.FrRest.Height) + CDbl(&HF))
  loc_1210283:                 End If
  loc_1210283:               End If
  loc_1210283:             End If
  loc_1210283:           End If
  loc_1210283:         End If
  loc_1210283:       End If
  loc_1210283:     End If
  loc_1210283:   End If
  loc_1210283: End If
  loc_1210283: Exit Sub
End Sub

Public Sub Proc_76_82_15DC004
  'Data Table: 53E44C
  Dim var_90 As Variant
  Dim var_EC As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_8C As Variant
  Dim var_10C As Variant
  Dim var_94 As String
  Dim var_86 As Integer
  Dim var_124 As Long
  Dim var_138 As String
  Dim var_11C As Long
  Dim Me As Variant
  loc_15DAC9A: Set var_8C = Me.LTxt
  loc_15DACA0: Call 0.Method_Proc_76_82_15DC0040 (CInt(2), var_90)
  loc_15DACD0: If ((CDbl(Val(var_90.Caption)) <= CDbl(0)) And (global_160 = "Cash Card")) Then
  loc_15DACD3:   Exit Sub
  loc_15DACD4: End If
  loc_15DACE2: Set var_8C = Me.Txt
  loc_15DACE8: Call 0.Method_Proc_76_82_15DC0040 (CInt(5), var_90)
  loc_15DAD0C: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_15DAD1D:   Set var_8C = Me.Txt
  loc_15DAD23:   Call 0.Method_Proc_76_82_15DC0040 (CInt(5), var_90)
  loc_15DAD2B:   var_90.Text = vbNullString
  loc_15DAD37: End If
  loc_15DAD45: Set var_8C = Me.Txt
  loc_15DAD4B: Call 0.Method_Proc_76_82_15DC0040 (CInt(3), var_90)
  loc_15DAD65: If (var_90.Visible = &HFF) Then
  loc_15DAD73:   Set var_8C = Me.Txt
  loc_15DAD79:   Call 0.Method_Proc_76_82_15DC0040 (CInt(3))
  loc_15DADA2:   If (Proc_6_27_EA61EC(var_90, "Payment Type") = 0) Then
  loc_15DADA5:     Exit Sub
  loc_15DADA6:   End If
  loc_15DADA6: End If
  loc_15DADB4: Set var_8C = Me.Txt
  loc_15DADBA: Call 0.Method_Proc_76_82_15DC0040 (CInt(5), var_90)
  loc_15DADD4: If (var_90.Visible = &HFF) Then
  loc_15DADE2:   Set var_8C = Me.Txt
  loc_15DADE8:   Call 0.Method_Proc_76_82_15DC0040 (CInt(5), var_90)
  loc_15DADF0:   var_94 = "Amount"
  loc_15DAE11:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15DAE14:     Exit Sub
  loc_15DAE15:   End If
  loc_15DAE15: End If
  loc_15DAE2E: Set var_8C = Me.Txt
  loc_15DAE34: Call 0.Method_Proc_76_82_15DC0040 (CInt(&HD), var_90, var_94)
  loc_15DAE3C: (global_160 = "Staff") = var_90.Text
  loc_15DAE54: If (var_90 And (var_94 = vbNullString)) Then
  loc_15DAE62:   Set var_8C = Me.Txt
  loc_15DAE68:   Call 0.Method_Proc_76_82_15DC0040 (CInt(&HD))
  loc_15DAE70:   var_94 = "Staff Name"
  loc_15DAE91:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15DAE94:     Exit Sub
  loc_15DAE95:   End If
  loc_15DAE95: End If
  loc_15DAEAE: Set var_8C = Me.Txt
  loc_15DAEB4: Call 0.Method_Proc_76_82_15DC0040 (CInt(&HE), var_90, var_94)
  loc_15DAEBC: (global_160 = "Room") = var_90.Text
  loc_15DAED4: If (var_90 And (var_94 = vbNullString)) Then
  loc_15DAEE2:   Set var_8C = Me.Txt
  loc_15DAEE8:   Call 0.Method_Proc_76_82_15DC0040 (CInt(&HE))
  loc_15DAEF0:   var_94 = "Room Name"
  loc_15DAF11:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15DAF14:     Exit Sub
  loc_15DAF15:   End If
  loc_15DAF15: End If
  loc_15DAF2E: Set var_8C = Me.Txt
  loc_15DAF34: Call 0.Method_Proc_76_82_15DC0040 (CInt(&HF), var_90, var_94)
  loc_15DAF3C: (global_160 = "Company") = var_90.Text
  loc_15DAF54: If (var_90 And (var_94 = vbNullString)) Then
  loc_15DAF62:   Set var_8C = Me.Txt
  loc_15DAF68:   Call 0.Method_Proc_76_82_15DC0040 (CInt(&HF))
  loc_15DAF70:   var_94 = "Company Name"
  loc_15DAF91:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15DAF94:     Exit Sub
  loc_15DAF95:   End If
  loc_15DAF95: End If
  loc_15DAFAE: Set var_8C = Me.Txt
  loc_15DAFB4: Call 0.Method_Proc_76_82_15DC0040 (CInt(&H10), var_90, var_94)
  loc_15DAFBC: (global_160 = "Member") = var_90.Text
  loc_15DAFD4: If (var_90 And (var_94 = vbNullString)) Then
  loc_15DAFE2:   Set var_8C = Me.Txt
  loc_15DAFE8:   Call 0.Method_Proc_76_82_15DC0040 (CInt(&H10))
  loc_15DAFF0:   var_94 = "Member Name"
  loc_15DB011:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15DB014:     Exit Sub
  loc_15DB015:   End If
  loc_15DB015: End If
  loc_15DB020: If (global_196 = "Y") Then
  loc_15DB03C:   Set var_8C = Me.Txt
  loc_15DB042:   Call 0.Method_Proc_76_82_15DC0040 (CInt(6), var_90, var_94)
  loc_15DB04A:   (global_160 = "Credit Card") = var_90.Text
  loc_15DB062:   If (var_90 And (var_94 = vbNullString)) Then
  loc_15DB070:     Set var_8C = Me.Txt
  loc_15DB076:     Call 0.Method_Proc_76_82_15DC0040 (CInt(6))
  loc_15DB07E:     var_94 = "Credit Card No."
  loc_15DB09F:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15DB0A2:       Exit Sub
  loc_15DB0A3:     End If
  loc_15DB0A3:   End If
  loc_15DB0BC:   Set var_8C = Me.Txt
  loc_15DB0C2:   Call 0.Method_Proc_76_82_15DC0040 (CInt(7), var_90, var_94)
  loc_15DB0CA:   (global_160 = "Credit Card") = var_90.Text
  loc_15DB0E2:   If (var_90 And (var_94 = vbNullString)) Then
  loc_15DB0F0:     Set var_8C = Me.Txt
  loc_15DB0F6:     Call 0.Method_Proc_76_82_15DC0040 (CInt(7))
  loc_15DB11F:     If (Proc_6_27_EA61EC(var_90, "Holder's Name") = 0) Then
  loc_15DB122:       Exit Sub
  loc_15DB123:     End If
  loc_15DB123:   End If
  loc_15DB13D:   Set var_8C = Me.Txt
  loc_15DB143:   Call 0.Method_Proc_76_82_15DC0040 (CInt(9), var_90)
  loc_15DB176:   If CBool((global_160 = "Credit Card") And (Trim(CVar(var_90)) = vbNullString)) Then
  loc_15DB184:     Set var_8C = Me.Txt
  loc_15DB18A:     Call 0.Method_Proc_76_82_15DC0040 (CInt(9), var_90)
  loc_15DB192:     var_94 = "Batch No"
  loc_15DB1B3:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15DB1B6:       Exit Sub
  loc_15DB1B7:     End If
  loc_15DB1B7:   End If
  loc_15DB1B7: End If
  loc_15DB1D0: Set var_8C = Me.Txt
  loc_15DB1D6: Call 0.Method_Proc_76_82_15DC0040 (CInt(&HA), var_90, var_94)
  loc_15DB1DE: (global_160 = "Cheque") = var_90.Text
  loc_15DB1F6: If (var_90 And (var_94 = vbNullString)) Then
  loc_15DB204:   Set var_8C = Me.Txt
  loc_15DB20A:   Call 0.Method_Proc_76_82_15DC0040 (CInt(&HA))
  loc_15DB212:   var_94 = "Cheque No."
  loc_15DB233:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15DB236:     Exit Sub
  loc_15DB237:   End If
  loc_15DB237: End If
  loc_15DB250: Set var_8C = Me.Txt
  loc_15DB256: Call 0.Method_Proc_76_82_15DC0040 (CInt(&HB), var_90, var_94)
  loc_15DB25E: (global_160 = "Cheque") = var_90.Text
  loc_15DB276: If (var_90 And (var_94 = vbNullString)) Then
  loc_15DB284:   Set var_8C = Me.Txt
  loc_15DB28A:   Call 0.Method_Proc_76_82_15DC0040 (CInt(&HB))
  loc_15DB292:   var_94 = "Cheque Dt."
  loc_15DB2B3:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15DB2B6:     Exit Sub
  loc_15DB2B7:   End If
  loc_15DB2B7: End If
  loc_15DB2D0: Set var_8C = Me.Txt
  loc_15DB2D6: Call 0.Method_Proc_76_82_15DC0040 (CInt(&H13), var_90, var_94)
  loc_15DB2DE: (global_160 = "UPI") = var_90.Text
  loc_15DB2F6: If (var_90 And (var_94 = vbNullString)) Then
  loc_15DB304:   Set var_8C = Me.Txt
  loc_15DB30A:   Call 0.Method_Proc_76_82_15DC0040 (CInt(&H13))
  loc_15DB333:   If (Proc_6_27_EA61EC(var_90, "Txn. No.") = 0) Then
  loc_15DB336:     Exit Sub
  loc_15DB337:   End If
  loc_15DB337: End If
  loc_15DB340: If (global_172 = 0) Then
  loc_15DB35C:   var_CC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_15DB37F:   var_94 = CStr(Me.FGrid.TextMatrix))
  loc_15DB398:   If (var_94 <> vbNullString) Then
  loc_15DB3B7:     var_AC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0, 3))) 'String
  loc_15DB3BF:     Set var_90 = Me.FGrid
  loc_15DB3D9:   End If
  loc_15DB3F3:   var_86 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_15DB3FF: Else
  loc_15DB413:   var_86 = CInt(CLng(Me.FGrid.Row))
  loc_15DB41C: End If
  loc_15DB427: var_124 = OpenType
  loc_15DB433: If Not (var_124 = 5) Then
  loc_15DB43F:   If (var_124 = 6) Then
  loc_15DB442:   End If
  loc_15DB446:   Set var_128 = Me.FGrid
  loc_15DB469:   Set var_8C = Me.Txt
  loc_15DB46F:   Call 0.Method_Proc_76_82_15DC0040 (CInt(3), var_90, var_94, 1, CVar(CLng(var_86)), var_124)
  loc_15DB477:   var_86 = var_90.Tag
  loc_15DB47F:   var_AC = CVar(var_94) 'String
  loc_15DB486:   LateIdCallSt
  loc_15DB49C:   var_CC = CVar(CLng(var_86)) 'Long
  loc_15DB4A1:   var_10C = 2
  loc_15DB4B7:   LateIdCallSt
  loc_15DB4DF:   Set var_8C = Me.Txt
  loc_15DB4E5:   Call 0.Method_Proc_76_82_15DC0040 (CInt(3), var_90, var_94, 3, CVar(CLng(var_86)), var_128, global_160)
  loc_15DB4ED:   var_10C = var_90.Text
  loc_15DB4F5:   var_AC = CVar(var_94) 'String
  loc_15DB4FC:   LateIdCallSt
  loc_15DB512:   var_CC = CVar(CLng(var_86)) 'Long
  loc_15DB517:   var_10C = 4
  loc_15DB52D:   LateIdCallSt
  loc_15DB539:   var_CC = CVar(CLng(var_86)) 'Long
  loc_15DB53E:   var_10C = 5
  loc_15DB554:   LateIdCallSt
  loc_15DB57B:   Set var_8C = Me.Txt
  loc_15DB581:   Call 0.Method_Proc_76_82_15DC0040 (CInt(4), var_90, var_94, CVar(CLng(6)), CVar(CLng(var_86)), var_128, global_156)
  loc_15DB589:   var_10C = var_90.Tag
  loc_15DB598:   LateIdCallSt
  loc_15DB5C9:   Set var_8C = Me.Txt
  loc_15DB5CF:   Call 0.Method_Proc_76_82_15DC0040 (CInt(4), var_90, var_94, CVar(CLng(7)), CVar(CLng(var_86)), var_128, CVar(var_94))
  loc_15DB5D7:   var_CC = var_90.Text
  loc_15DB5DF:   var_AC = CVar(var_94) 'String
  loc_15DB5E6:   LateIdCallSt
  loc_15DB618:   Set var_8C = Me.Txt
  loc_15DB61E:   Call 0.Method_Proc_76_82_15DC0040 (CInt(5), var_90, var_94, 8, CVar(CLng(var_86)), var_128)
  loc_15DB626:   var_AC = var_90.Text
  loc_15DB62E:   var_AC = CVar(var_94) 'String
  loc_15DB635:   LateIdCallSt
  loc_15DB667:   Set var_8C = Me.Txt
  loc_15DB66D:   Call 0.Method_Proc_76_82_15DC0040 (CInt(&H14), var_90, var_94, &H1A, CVar(CLng(var_86)), var_128)
  loc_15DB675:   var_AC = var_90.Text
  loc_15DB67D:   var_AC = CVar(var_94) 'String
  loc_15DB684:   LateIdCallSt
  loc_15DB6B5:   Set var_8C = Me.Txt
  loc_15DB6BB:   Call 0.Method_Proc_76_82_15DC0040 (CInt(&HC), var_90, var_94, CVar(CLng(&HE)), CVar(CLng(var_86)), var_128)
  loc_15DB6C3:   var_AC = var_90.Text
  loc_15DB6CB:   var_AC = CVar(var_94) 'String
  loc_15DB6D2:   LateIdCallSt
  loc_15DB6EF:   If (global_160 = "Cash Card") Then
  loc_15DB711:     Set var_8C = Me.Txt
  loc_15DB717:     Call 0.Method_Proc_76_82_15DC0040 (CInt(&H11), var_90, var_94, CVar(CLng(9)), CVar(CLng(var_86)), var_128)
  loc_15DB71F:     var_AC = var_90.Text
  loc_15DB727:     var_AC = CVar(var_94) 'String
  loc_15DB72E:     LateIdCallSt
  loc_15DB75F:     Set var_8C = Me.Txt
  loc_15DB765:     Call 0.Method_Proc_76_82_15DC0040 (CInt(&H12), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_128)
  loc_15DB76D:     var_AC = var_90.Text
  loc_15DB775:     var_AC = CVar(var_94) 'String
  loc_15DB77C:     LateIdCallSt
  loc_15DB792:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15DB79A:     var_10C = CVar(CLng(&HB)) 'Long
  loc_15DB79F:     var_138 = vbNullString
  loc_15DB7A8:     LateIdCallSt
  loc_15DB7B4:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15DB7B9:     var_10C = &H17
  loc_15DB7C2:     var_138 = vbNullString
  loc_15DB7CB:     LateIdCallSt
  loc_15DB7D6:   Else
  loc_15DB7E1:     If (global_160 = "Credit Card") Then
  loc_15DB803:       Set var_8C = Me.Txt
  loc_15DB809:       Call 0.Method_Proc_76_82_15DC0040 (CInt(6), var_90, var_94, CVar(CLng(9)), CVar(CLng(var_86)), var_128, var_138)
  loc_15DB811:       var_10C = var_90.Text
  loc_15DB820:       LateIdCallSt
  loc_15DB851:       Set var_8C = Me.Txt
  loc_15DB857:       Call 0.Method_Proc_76_82_15DC0040 (CInt(7), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_128, CVar(var_94))
  loc_15DB85F:       var_CC = var_90.Text
  loc_15DB867:       var_AC = CVar(var_94) 'String
  loc_15DB86E:       LateIdCallSt
  loc_15DB89F:       Set var_8C = Me.Txt
  loc_15DB8A5:       Call 0.Method_Proc_76_82_15DC0040 (CInt(8), var_90, var_94, CVar(CLng(&HB)), CVar(CLng(var_86)), var_128)
  loc_15DB8AD:       var_AC = var_90.Text
  loc_15DB8B5:       var_AC = CVar(var_94) 'String
  loc_15DB8BC:       LateIdCallSt
  loc_15DB8EE:       Set var_8C = Me.Txt
  loc_15DB8F4:       Call 0.Method_Proc_76_82_15DC0040 (CInt(9), var_90, var_94, &H17, CVar(CLng(var_86)), var_128)
  loc_15DB8FC:       var_AC = var_90.Text
  loc_15DB904:       var_AC = CVar(var_94) 'String
  loc_15DB90B:       LateIdCallSt
  loc_15DB920:     Else
  loc_15DB924:       var_CC = CVar(CLng(var_86)) 'Long
  loc_15DB92C:       var_10C = CVar(CLng(9)) 'Long
  loc_15DB931:       var_138 = vbNullString
  loc_15DB93A:       LateIdCallSt
  loc_15DB946:       var_CC = CVar(CLng(var_86)) 'Long
  loc_15DB94E:       var_10C = CVar(CLng(&HA)) 'Long
  loc_15DB953:       var_138 = vbNullString
  loc_15DB95C:       LateIdCallSt
  loc_15DB968:       var_CC = CVar(CLng(var_86)) 'Long
  loc_15DB970:       var_10C = CVar(CLng(&HB)) 'Long
  loc_15DB975:       var_138 = vbNullString
  loc_15DB97E:       LateIdCallSt
  loc_15DB98A:       var_CC = CVar(CLng(var_86)) 'Long
  loc_15DB98F:       var_10C = &H17
  loc_15DB998:       var_138 = vbNullString
  loc_15DB9A1:       LateIdCallSt
  loc_15DB9A9:     End If
  loc_15DB9A9:   End If
  loc_15DB9B4:   If (global_160 = "Cheque") Then
  loc_15DB9D6:     Set var_8C = Me.Txt
  loc_15DB9DC:     Call 0.Method_Proc_76_82_15DC0040 (CInt(&HA), var_90, var_94, CVar(CLng(&HC)), CVar(CLng(var_86)), var_128, var_138)
  loc_15DB9E4:     var_10C = var_90.Text
  loc_15DB9F3:     LateIdCallSt
  loc_15DBA24:     Set var_8C = Me.Txt
  loc_15DBA2A:     Call 0.Method_Proc_76_82_15DC0040 (CInt(&HB), var_90, var_94, CVar(CLng(&HD)), CVar(CLng(var_86)), var_128, CVar(var_94))
  loc_15DBA32:     var_CC = var_90.Text
  loc_15DBA3A:     var_AC = CVar(var_94) 'String
  loc_15DBA41:     LateIdCallSt
  loc_15DBA56:   Else
  loc_15DBA5A:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15DBA62:     var_10C = CVar(CLng(&HC)) 'Long
  loc_15DBA67:     var_138 = vbNullString
  loc_15DBA70:     LateIdCallSt
  loc_15DBA7C:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15DBA84:     var_10C = CVar(CLng(&HD)) 'Long
  loc_15DBA89:     var_138 = vbNullString
  loc_15DBA92:     LateIdCallSt
  loc_15DBA9A:   End If
  loc_15DBAA5:   If (global_160 = "UPI") Then
  loc_15DBAC7:     Set var_8C = Me.Txt
  loc_15DBACD:     Call 0.Method_Proc_76_82_15DC0040 (CInt(&H13), var_90, var_94, CVar(CLng(&H11)), CVar(CLng(var_86)), var_128, var_138)
  loc_15DBAD5:     var_10C = var_90.Text
  loc_15DBADD:     var_AC = CVar(var_94) 'String
  loc_15DBAE4:     LateIdCallSt
  loc_15DBAF9:   Else
  loc_15DBAFD:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15DBB05:     var_10C = CVar(CLng(&H11)) 'Long
  loc_15DBB0A:     var_138 = vbNullString
  loc_15DBB13:     LateIdCallSt
  loc_15DBB1B:   End If
  loc_15DBB26:   If (global_160 = "Staff") Then
  loc_15DBB48:     Set var_8C = Me.Txt
  loc_15DBB4E:     Call 0.Method_Proc_76_82_15DC0040 (CInt(&HD), var_90, var_94, CVar(CLng(&HF)), CVar(CLng(var_86)), var_128, var_138)
  loc_15DBB56:     var_10C = var_90.Text
  loc_15DBB65:     LateIdCallSt
  loc_15DBB96:     Set var_8C = Me.Txt
  loc_15DBB9C:     Call 0.Method_Proc_76_82_15DC0040 (CInt(&HD), var_90, var_94, CVar(CLng(&H10)), CVar(CLng(var_86)), var_128, CVar(var_94))
  loc_15DBBA4:     var_CC = var_90.Tag
  loc_15DBBAC:     var_AC = CVar(var_94) 'String
  loc_15DBBB3:     LateIdCallSt
  loc_15DBBC8:   Else
  loc_15DBBCC:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15DBBD4:     var_10C = CVar(CLng(&HF)) 'Long
  loc_15DBBD9:     var_138 = vbNullString
  loc_15DBBE2:     LateIdCallSt
  loc_15DBBEE:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15DBBF6:     var_10C = CVar(CLng(&H10)) 'Long
  loc_15DBBFB:     var_138 = vbNullString
  loc_15DBC04:     LateIdCallSt
  loc_15DBC0C:   End If
  loc_15DBC17:   If (global_160 = "Company") Then
  loc_15DBC3A:     Set var_8C = Me.Txt
  loc_15DBC40:     Call 0.Method_Proc_76_82_15DC0040 (CInt(&HF), var_90, var_94, &H14, CVar(CLng(var_86)), var_128, var_138)
  loc_15DBC48:     var_10C = var_90.Tag
  loc_15DBC57:     LateIdCallSt
  loc_15DBC89:     Set var_8C = Me.Txt
  loc_15DBC8F:     Call 0.Method_Proc_76_82_15DC0040 (CInt(&HF), var_90, var_94, &H15, CVar(CLng(var_86)), var_128, CVar(var_94))
  loc_15DBC97:     var_CC = var_90.Text
  loc_15DBC9F:     var_AC = CVar(var_94) 'String
  loc_15DBCA6:     LateIdCallSt
  loc_15DBCBB:   Else
  loc_15DBCBF:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15DBCC4:     var_10C = &H14
  loc_15DBCCD:     var_138 = vbNullString
  loc_15DBCD6:     LateIdCallSt
  loc_15DBCE2:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15DBCE7:     var_10C = &H15
  loc_15DBCF0:     var_138 = vbNullString
  loc_15DBCF9:     LateIdCallSt
  loc_15DBD01:   End If
  loc_15DBD0C:   If (global_160 = "Member") Then
  loc_15DBD2F:     Set var_8C = Me.Txt
  loc_15DBD35:     Call 0.Method_Proc_76_82_15DC0040 (CInt(&H10), var_90, var_94, &H18, CVar(CLng(var_86)), var_128, var_138)
  loc_15DBD3D:     var_10C = var_90.Tag
  loc_15DBD4C:     LateIdCallSt
  loc_15DBD7E:     Set var_8C = Me.Txt
  loc_15DBD84:     Call 0.Method_Proc_76_82_15DC0040 (CInt(&H10), var_90, var_94, &H19, CVar(CLng(var_86)), var_128, CVar(var_94))
  loc_15DBD8C:     var_CC = var_90.Text
  loc_15DBD94:     var_AC = CVar(var_94) 'String
  loc_15DBD9B:     LateIdCallSt
  loc_15DBDB0:   Else
  loc_15DBDB4:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15DBDB9:     var_10C = &H18
  loc_15DBDC2:     var_138 = vbNullString
  loc_15DBDCB:     LateIdCallSt
  loc_15DBDD7:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15DBDDC:     var_10C = &H19
  loc_15DBDE5:     var_138 = vbNullString
  loc_15DBDEE:     LateIdCallSt
  loc_15DBDF6:   End If
  loc_15DBE01:   If (global_160 = "Room") Then
  loc_15DBE08:     var_EC = CVar(CLng(var_86)) 'Long
  loc_15DBE0D:     var_11C = &H16
  loc_15DBE33:     var_90 = Me.Fields.Item("FolioNoDocid")
  loc_15DBE4B:     LateIdCallSt
  loc_15DBE81:     Set var_8C = Me.Txt
  loc_15DBE87:     Call 0.Method_Proc_76_82_15DC0040 (CInt(&HE), var_90, var_94, &H12, CVar(CLng(var_86)), var_128, CVar(CStr(var_90.Value)))
  loc_15DBE8F:     var_11C = var_90.Tag
  loc_15DBE9E:     LateIdCallSt
  loc_15DBED0:     Set var_8C = Me.Txt
  loc_15DBED6:     Call 0.Method_Proc_76_82_15DC0040 (CInt(&HE), var_90, var_94, &H13, CVar(CLng(var_86)), var_128, CVar(var_94))
  loc_15DBEDE:     var_EC = var_90.Text
  loc_15DBEE6:     var_AC = CVar(var_94) 'String
  loc_15DBEED:     LateIdCallSt
  loc_15DBF02:   Else
  loc_15DBF06:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15DBF0B:     var_10C = &H16
  loc_15DBF14:     var_138 = vbNullString
  loc_15DBF1D:     LateIdCallSt
  loc_15DBF29:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15DBF2E:     var_10C = &H12
  loc_15DBF37:     var_138 = vbNullString
  loc_15DBF40:     LateIdCallSt
  loc_15DBF4C:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15DBF51:     var_10C = &H13
  loc_15DBF5A:     var_138 = vbNullString
  loc_15DBF63:     LateIdCallSt
  loc_15DBF6B:   End If
  loc_15DBF6D:   Set var_128 = Nothing 
  loc_15DBF71: End If
  loc_15DBF71: Call Proc_76_84_10A8710(var_128, var_138, var_10C, var_CC, var_128, var_138, var_10C, var_CC)
  loc_15DBF84: Set var_8C = Me.LTxt
  loc_15DBF8A: Call 0.Method_Proc_76_82_15DC0040 (CInt(2), var_90, var_94, var_128, var_138)
  loc_15DBF92: var_10C = var_90.Caption
  loc_15DBFC8: If (((CDbl(Val(var_94)) = CDbl(0)) And (global_108 = 5)) Or (global_108 = 6)) Then
  loc_15DBFCB:   Call TopCtrl1_UnknownEvent_16()
  loc_15DBFD0:   Exit Sub
  loc_15DBFD1: End If
  loc_15DBFD1: Call Proc_76_83_1057330(var_CC, var_128)
  loc_15DBFE1: Set var_8C = Me.Txt
  loc_15DBFE7: Call 0.Method_Proc_76_82_15DC0040 (CInt(3), var_90)
  loc_15DBFEF: var_90.SetFocus
  loc_15DC000: global_172 = 0
  loc_15DC003: Exit Sub
End Sub

Public Sub Proc_76_83_1057330
  'Data Table: 53E44C
  Dim var_8C As TextBox
  Dim arg_64FF As Double
  loc_10570BA: Set var_88 = Me.Txt
  loc_10570C0: Call 0.Method_Proc_76_83_10573300 (CInt(3), var_8C)
  loc_10570C8: var_8C.Text = vbNullString
  loc_10570E2: Set var_88 = Me.Txt
  loc_10570E8: Call 0.Method_Proc_76_83_10573300 (CInt(5), var_8C)
  loc_10570F0: var_8C.Text = vbNullString
  loc_105710A: Set var_88 = Me.Txt
  loc_1057110: Call 0.Method_Proc_76_83_10573300 (CInt(&H14), var_8C)
  loc_1057118: var_8C.Text = vbNullString
  loc_1057132: Set var_88 = Me.Txt
  loc_1057138: Call 0.Method_Proc_76_83_10573300 (CInt(&HD), var_8C)
  loc_1057140: var_8C.Text = vbNullString
  loc_105715A: Set var_88 = Me.Txt
  loc_1057160: Call 0.Method_Proc_76_83_10573300 (CInt(&HC), var_8C)
  loc_1057168: var_8C.Text = vbNullString
  loc_1057182: Set var_88 = Me.Txt
  loc_1057188: Call 0.Method_Proc_76_83_10573300 (CInt(6), var_8C)
  loc_1057190: var_8C.Text = vbNullString
  loc_10571AA: Set var_88 = Me.Txt
  loc_10571B0: Call 0.Method_Proc_76_83_10573300 (CInt(7), var_8C)
  loc_10571B8: var_8C.Text = vbNullString
  loc_10571D2: Set var_88 = Me.Txt
  loc_10571D8: Call 0.Method_Proc_76_83_10573300 (CInt(8), var_8C)
  loc_10571E0: var_8C.Text = vbNullString
  loc_10571FA: Set var_88 = Me.Txt
  loc_1057200: Call 0.Method_Proc_76_83_10573300 (CInt(9), var_8C)
  loc_1057208: var_8C.Text = vbNullString
  loc_1057222: Set var_88 = Me.Txt
  loc_1057228: Call 0.Method_Proc_76_83_10573300 (CInt(&H11), var_8C)
  loc_1057230: var_8C.Text = vbNullString
  loc_105724A: Set var_88 = Me.Txt
  loc_1057250: Call 0.Method_Proc_76_83_10573300 (CInt(&H12), var_8C)
  loc_1057258: var_8C.Text = vbNullString
  loc_1057272: Set var_88 = Me.Txt
  loc_1057278: Call 0.Method_Proc_76_83_10573300 (CInt(&HA), var_8C)
  loc_1057280: var_8C.Text = vbNullString
  loc_105729A: Set var_88 = Me.Txt
  loc_10572A0: Call 0.Method_Proc_76_83_10573300 (CInt(&HB), var_8C)
  loc_10572A8: var_8C.Text = vbNullString
  loc_10572C2: Set var_88 = Me.Txt
  loc_10572C8: Call 0.Method_Proc_76_83_10573300 (CInt(&HF), var_8C)
  loc_10572D0: var_8C.Text = vbNullString
  loc_10572EA: Set var_88 = Me.Txt
  loc_10572F0: Call 0.Method_Proc_76_83_10573300 (CInt(&H10), var_8C)
  loc_10572F8: var_8C.Text = vbNullString
  loc_1057312: Set var_88 = Me.Txt
  loc_1057318: Call 0.Method_Proc_76_83_10573300 (CInt(&H13), var_8C)
  loc_1057320: var_8C.Text = vbNullString
  loc_105732C: Exit Sub
  loc_105732D: arg_64FF = 
End Sub

Public Sub Proc_76_84_10A8710
  'Data Table: 53E44C
  Dim var_90 As Label
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_154 As Double
  Dim var_B8 As Variant
  Dim var_D8 As Long
  Dim var_EC As MSHFlexGrid
  Dim var_F0 As String
  Dim var_15C As Double
  Dim var_110 As Variant
  Dim var_148 As Label
  Dim var_144 As Variant
  Dim var_160 As Label
  loc_10A846A: Set var_8C = Me.LTxt
  loc_10A8470: Call 0.Method_Proc_76_84_10A87100 (CInt(1), var_90)
  loc_10A8478: var_90.Caption = vbNullString
  loc_10A84A9: For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A4 'Integer
  loc_10A84BD:   Set var_8C = Me.LTxt
  loc_10A84C3:   Call 0.Method_Proc_76_84_10A87100 (CInt(1), var_90)
  loc_10A84DF:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_10A84E4:   var_D8 = 8
  loc_10A850A:   var_15C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10A8529:   var_110 = CVar((Val(var_90.Caption) + var_15C)) 'Double
  loc_10A8547:   Set var_144 = Me.LTxt
  loc_10A854D:   Call 0.Method_Proc_76_84_10A87100 (CInt(1), var_148, CStr(Format(var_110, "0.00")), 1, 1)
  loc_10A8555:   var_148.Caption = var_15C
  loc_10A857E: Next var_A4 'Integer
  loc_10A8591: Set var_8C = Me.LTxt
  loc_10A8597: Call 0.Method_Proc_76_84_10A87100 (CInt(0), var_90)
  loc_10A859F: var_A8 = var_90.Caption
  loc_10A85BD: Set var_EC = Me.LTxt
  loc_10A85C3: Call 0.Method_Proc_76_84_10A87100 (CInt(1), var_144)
  loc_10A85CB: var_F0 = var_144.Caption
  loc_10A85F7: var_A0 = CVar((Val(var_A8) - Val(var_F0))) 'Double
  loc_10A8615: Set var_148 = Me.LTxt
  loc_10A861B: Call 0.Method_Proc_76_84_10A87100 (CInt(2), var_160, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1)
  loc_10A8623: var_160.Caption = 1
  loc_10A8657: Set var_8C = Me.LTxt
  loc_10A865D: Call 0.Method_Proc_76_84_10A87100 (CInt(1), var_90, var_A8)
  loc_10A8665: var_15C = var_90.Caption
  loc_10A8672: var_154 = Val(var_A8)
  loc_10A8683: Set var_EC = Me.Txt
  loc_10A8689: Call 0.Method_Proc_76_84_10A87100 (CInt(&H14), var_144, var_F0)
  loc_10A86BD: var_A0 = CVar((var_144.Text + Val(var_F0))) 'Double
  loc_10A86DB: Set var_148 = Me.LTxt
  loc_10A86E1: Call 0.Method_Proc_76_84_10A87100 (CInt(3), var_160, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1)
  loc_10A86E9: var_160.Caption = 1
  loc_10A870F: Exit Sub
End Sub

Public Sub Proc_76_85_1012778
  'Data Table: 53E44C
  Dim var_C4 As Variant
  Dim var_E4 As Long
  Dim var_90 As Double
  Dim var_86 As Integer
  loc_101258D: For var_B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B4 'Integer
  loc_1012597:   var_C4 = CVar(CLng(var_88)) 'Long
  loc_101259C:   var_E4 = 1
  loc_10125D6:   If (CStr(Me.FGrid.TextMatrix)) = MemVar_1F95070 & "MEM") Then
  loc_10125DD:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_10125E2:     var_E4 = &H18
  loc_1012600:     var_94 = CStr(Me.FGrid.TextMatrix))
  loc_101260D:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_1012612:     var_E4 = 8
  loc_1012642:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_101264E:   End If
  loc_1012651: Next var_B4 'Integer
  loc_101265E: If (var_94 <> vbNullString) Then
  loc_1012679:   If (Proc_96_1_F8D0C4(var_94) = 0) Then
  loc_101267F:     Proc_96_2_100E504(var_94)
  loc_1012689:     If (CDbl(0) < var_90) Then
  loc_10126AD:       MsgBox("Insufficient Ac. Balance.", 0, "Member Detail", var_124, var_134)
  loc_10126CA:       Me.Global.Unload Me
  loc_10126D4:       var_86 = 0
  loc_10126DA:     Else
  loc_10126DC:       var_86 = &HFF
  loc_10126DF:     End If
  loc_10126E2:   Else
  loc_10126F0:     If (Proc_96_1_F8D0C4(var_94, var_9C) = &HFF) Then
  loc_10126F6:       Proc_96_2_100E504(var_94, var_86)
  loc_101270C:       If ((CDbl((var_86 + var_9C)) < var_90) And (var_9C > CDbl(0))) Then
  loc_1012730:         MsgBox("Insufficient Ac. Balance.", 0, "Member Detail", var_124, var_134)
  loc_101274D:         Me.Global.Unload Me
  loc_1012757:         var_86 = 0
  loc_101275D:       Else
  loc_101275F:         var_86 = &HFF
  loc_1012762:       End If
  loc_1012765:     Else
  loc_1012767:       var_86 = &HFF
  loc_101276A:     End If
  loc_101276A:   End If
  loc_101276D: Else
  loc_101276F:   var_86 = &HFF
  loc_1012772: End If
  loc_1012772: Proc_76_85_1012778 = var_86
End Sub

Public Sub Proc_76_86_125C658
  'Data Table: 53E44C
  Dim var_B8 As MSHFlexGrid
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_110 As String
  Dim var_1B8 As Boolean
  Dim var_124 As Variant
  Dim var_158 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_90 As Double
  Dim var_86 As Integer
  Dim var_EC As Variant
  Dim var_1DC As String
  Dim var_188 As Variant
  Dim var_22C As Variant
  Dim unk_53E46D As Connection15
  Dim var_254 As TextBox
  Dim var_25C As TextBox
  Dim var_278 As String
  loc_125C175: For var_CC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_CC 'Integer
  loc_125C17F:   var_DC = CVar(CLng(var_88)) 'Long
  loc_125C184:   var_FC = 1
  loc_125C1B1:   var_1B8 = (CStr(Me.FGrid.TextMatrix)) = MemVar_1F95070 & "CCAD")
  loc_125C1B9:   var_124 = CVar(CLng(var_88)) 'Long
  loc_125C1CA:   Set var_158 = Me.FGrid
  loc_125C1DB:   var_178 = CVar(CStr(var_158.TextMatrix))) 'String
  loc_125C1E1:   var_188 = Trim(var_178)
  loc_125C214:   If CBool(CVar(CLng(9)) And (var_188 <> vbNullString)) Then
  loc_125C21B:     var_DC = CVar(CLng(var_88)) 'Long
  loc_125C223:     var_FC = CVar(CLng(9)) 'Long
  loc_125C23D:     var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_125C24A:     var_DC = CVar(CLng(var_88)) 'Long
  loc_125C252:     var_FC = CVar(CLng(&HA)) 'Long
  loc_125C26C:     var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_125C279:     var_DC = CVar(CLng(var_88)) 'Long
  loc_125C27E:     var_FC = 8
  loc_125C2AE:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_125C2BA:   End If
  loc_125C2BD: Next var_CC 'Integer
  loc_125C2CD: var_1DC = 0
  loc_125C2FD: var_110 = 0
  loc_125C31C: If (Proc_275_12_130B494(2, var_A8, var_94, var_110, 0) = &HFF) Then
  loc_125C327:   If (var_94 <> var_B0) Then
  loc_125C32C:     var_86 = 0
  loc_125C33A:     var_168 = "Smart Card Verification"
  loc_125C350:     MsgBox("Smart Card is changed.", &H10, var_168, var_178, var_188)
  loc_125C360:   End If
  loc_125C367:   If (var_9C >= var_90) Then
  loc_125C388:     Set var_B8 = Me.Txt
  loc_125C38E:     Call 0.Method_Proc_76_86_125C6580 (CInt(1), var_158, var_110, ") BILL NO.- ", "Agnst. (" & global_188, var_86)
  loc_125C396:     0 = var_158.Text
  loc_125C3A3:     var_AC = 0 & var_110 & 0 & var_110
  loc_125C3C1:     Proc_6_17_EAAE40(var_168, CVar(Proc_6_14_EF402C(var_9C)))
  loc_125C3D1:     Proc_6_17_EAAE40(var_1FC, var_94)
  loc_125C3EB:     var_110 = CStr(var_90)
  loc_125C3F6:     var_178 = CVar("Update SmartCardRegistration Set LastTransAmt=" & var_110 & ",LastTransDate=") 'String
  loc_125C3FC:     var_188 = var_178 & var_168 
  loc_125C410:     var_EC = CVar((var_9C - var_90)) 'Double
  loc_125C437:     var_22C = var_188 & ",CurrBal=" & "Smart Card Verification" & " Where Code=" & var_1FC & " And LogSite_Code='" & CVar(MemVar_1F95078) 
  loc_125C44E:     unk_53E46D.Execute CStr(var_22C & "'"), var_24C, -1
  loc_125C48A:     Set var_B8 = Me.Txt
  loc_125C490:     Call 0.Method_Proc_76_86_125C6580 (CInt(0), var_158, var_110)
  loc_125C498:     var_B8 = var_158.Text
  loc_125C4AB:     Set var_250 = Me.Txt
  loc_125C4B1:     Call 0.Method_Proc_76_86_125C6580 (CInt(1), var_254)
  loc_125C4DE:     Set var_258 = Me.Txt
  loc_125C4E4:     Call 0.Method_Proc_76_86_125C6580 (CInt(2), var_25C)
  loc_125C4FF:     var_288 = "CARDEXP"
  loc_125C508:     var_284 = "A"
  loc_125C511:     var_278 = Proc_6_14_EF402C(var_A4)
  loc_125C55F:     Proc_275_16_10AF65C(MemVar_1F95044, var_110, 1, global_116, CLng(var_254.Text), Me.LblVPrefix.Caption, MemVar_1F95070, CDate(var_25C.Text))
  loc_125C59E:     If (Proc_275_7_10CE5A4((var_9C - var_90), var_A4, var_A8, var_94, var_A8, CDbl(0)) = &HFF) Then
  loc_125C5A3:       var_86 = &HFF
  loc_125C5A9:     Else
  loc_125C5AB:       var_86 = 0
  loc_125C5CF:       MsgBox("Transaction Failed.", &H10, "Cash Card Detail", var_178, var_188)
  loc_125C5DF:     End If
  loc_125C5E2:   Else
  loc_125C5E4:     var_86 = 0
  loc_125C608:     MsgBox("Insufficient Smart Card Balance.", &H10, "Smart Card Verification", var_178, var_188)
  loc_125C618:   End If
  loc_125C61B: Else
  loc_125C61D:   var_86 = 0
  loc_125C641:   MsgBox("Transaction Failed.", &H10, "Cash Card Detail", var_178, var_188)
  loc_125C651: End If
  loc_125C651: Proc_76_86_125C658 = var_86
End Sub

Public Sub Proc_76_87_F68A38
  'Data Table: 53E44C
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_90 As Double
  Dim var_86 As Integer
  loc_F68935: For var_BC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_BC 'Integer
  loc_F6893F:   var_CC = CVar(CLng(var_88)) 'Long
  loc_F68944:   var_EC = 1
  loc_F6897E:   If (CStr(Me.FGrid.TextMatrix)) = MemVar_1F95070 & "CCAD") Then
  loc_F68985:     var_CC = CVar(CLng(var_88)) 'Long
  loc_F6898A:     var_EC = 8
  loc_F689BA:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_F689C6:   End If
  loc_F689C9: Next var_BC 'Integer
  loc_F689DF: If (Proc_275_8_10BF354(var_98, var_A0) = &HFF) Then
  loc_F689E9:   If (var_98 < var_90) Then
  loc_F68A0D:     MsgBox("Insufficient Cash Card Balance.", &H40, "Cash Card Detail", var_12C, var_13C)
  loc_F68A1F:     var_86 = 0
  loc_F68A25:   Else
  loc_F68A27:     var_86 = &HFF
  loc_F68A2A:   End If
  loc_F68A2D: Else
  loc_F68A2F:   var_86 = 0
  loc_F68A32: End If
  loc_F68A32: Proc_76_87_F68A38 = var_86
End Sub

Public Sub Proc_76_88_144B208
  'Data Table: 53E44C
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As MSHFlexGrid
  Dim var_EC As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_158 As Variant
  Dim var_200 As TextBox
  loc_144A6F7: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_144A6FC: var_C8 = 1
  loc_144A733: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_144A73A:   Set var_F4 = Me.FGrid
  loc_144A77A:   Set var_DC = Me.Txt
  loc_144A780:   Call 0.Method_Proc_76_88_144B2080 (CInt(3), var_F8, CStr(var_F4.TextMatrix)), 1)
  loc_144A788:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_144A7B3:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_144A7B8:   var_C8 = 2
  loc_144A7FE:   var_C8 = 3
  loc_144A823:   Set var_DC = Me.Txt
  loc_144A829:   Call 0.Method_Proc_76_88_144B2080 (CInt(3), var_F8, CStr(var_F4.TextMatrix)), var_C8, CVar(CLng(Me.FGrid.Row)))
  loc_144A831:   var_F8.Text = var_C8
  loc_144A85C:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_144A861:   var_C8 = 4
  loc_144A87E:   global_152 = CStr(var_F4.TextMatrix))
  loc_144A8A2:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_144A8A7:   var_C8 = 5
  loc_144A8C4:   global_156 = CStr(var_F4.TextMatrix))
  loc_144A8E8:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_144A911:   Set var_DC = Me.Txt
  loc_144A917:   Call 0.Method_Proc_76_88_144B2080 (CInt(4), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(6)), var_A8, CVar(CLng(6)))
  loc_144A91F:   var_F8.Tag = var_A8
  loc_144A94A:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_144A952:   var_C8 = CVar(CLng(7)) 'Long
  loc_144A989:   var_158 = var_F4.TextMatrix)
  loc_144A999:   Set var_F8 = Me.FGrid
  loc_144A9F7:   Set var_1FC = Me.Txt
  loc_144A9FD:   Call 0.Method_Proc_76_88_144B2080 (CInt(4), var_200, CStr(IIf((CStr(var_F4.TextMatrix)) = vbNullString), CVar(CStr(var_158)), CVar(CStr(var_F4.TextMatrix))))), CVar(CLng(7)), CVar(CLng(var_F8.Row)), var_158, CVar(CLng(6)))
  loc_144AA05:   var_200.Text = CVar(CLng(Me.FGrid.Row))
  loc_144AA4D:   var_C8 = 8
  loc_144AA59:   var_EC = var_F4.TextMatrix)
  loc_144AA72:   Set var_DC = Me.Txt
  loc_144AA78:   Call 0.Method_Proc_76_88_144B2080 (CInt(5), var_F8, CStr(var_EC), var_C8, CVar(CLng(Me.FGrid.Row)), var_EC)
  loc_144AA80:   var_F8.Text = var_C8
  loc_144AAA3:   If (CStr(var_F4.TextMatrix)) = "Cash Card") Then
  loc_144AAB9:     var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_144AAE2:     Set var_DC = Me.Txt
  loc_144AAE8:     Call 0.Method_Proc_76_88_144B2080 (CInt(&H11), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(9)), var_A8)
  loc_144AAF0:     var_F8.Text = var_A8
  loc_144AB44:     Set var_DC = Me.Txt
  loc_144AB4A:     Call 0.Method_Proc_76_88_144B2080 (CInt(&H12), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HA)))
  loc_144AB52:     var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_144AB6D:   Else
  loc_144ABA9:     Set var_DC = Me.Txt
  loc_144ABAF:     Call 0.Method_Proc_76_88_144B2080 (CInt(6), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(9)))
  loc_144ABB7:     var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_144AC0B:     Set var_DC = Me.Txt
  loc_144AC11:     Call 0.Method_Proc_76_88_144B2080 (CInt(7), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HA)))
  loc_144AC19:     var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_144AC31:   End If
  loc_144AC6D:   Set var_DC = Me.Txt
  loc_144AC73:   Call 0.Method_Proc_76_88_144B2080 (CInt(8), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HB)))
  loc_144AC7B:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_144ACD0:   Set var_DC = Me.Txt
  loc_144ACD6:   Call 0.Method_Proc_76_88_144B2080 (CInt(9), var_F8, CStr(var_F4.TextMatrix)), &H17)
  loc_144ACDE:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_144AD32:   Set var_DC = Me.Txt
  loc_144AD38:   Call 0.Method_Proc_76_88_144B2080 (CInt(&HA), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HC)))
  loc_144AD40:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_144AD94:   Set var_DC = Me.Txt
  loc_144AD9A:   Call 0.Method_Proc_76_88_144B2080 (CInt(&HB), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HD)))
  loc_144ADA2:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_144ADF6:   Set var_DC = Me.Txt
  loc_144ADFC:   Call 0.Method_Proc_76_88_144B2080 (CInt(&H13), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H11)))
  loc_144AE04:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_144AE58:   Set var_DC = Me.Txt
  loc_144AE5E:   Call 0.Method_Proc_76_88_144B2080 (CInt(&HC), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HE)))
  loc_144AE66:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_144AEBA:   Set var_DC = Me.Txt
  loc_144AEC0:   Call 0.Method_Proc_76_88_144B2080 (CInt(&HD), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HF)))
  loc_144AEC8:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_144AF1C:   Set var_DC = Me.Txt
  loc_144AF22:   Call 0.Method_Proc_76_88_144B2080 (CInt(&HD), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H10)))
  loc_144AF2A:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_144AF7F:   Set var_DC = Me.Txt
  loc_144AF85:   Call 0.Method_Proc_76_88_144B2080 (CInt(&H14), var_F8, CStr(var_F4.TextMatrix)), &H1A)
  loc_144AF8D:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_144AFE2:   Set var_DC = Me.Txt
  loc_144AFE8:   Call 0.Method_Proc_76_88_144B2080 (CInt(&HE), var_F8, CStr(var_F4.TextMatrix)), &H12)
  loc_144AFF0:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_144B045:   Set var_DC = Me.Txt
  loc_144B04B:   Call 0.Method_Proc_76_88_144B2080 (CInt(&HE), var_F8, CStr(var_F4.TextMatrix)), &H13)
  loc_144B053:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_144B0A8:   Set var_DC = Me.Txt
  loc_144B0AE:   Call 0.Method_Proc_76_88_144B2080 (CInt(&HF), var_F8, CStr(var_F4.TextMatrix)), &H14)
  loc_144B0B6:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_144B10B:   Set var_DC = Me.Txt
  loc_144B111:   Call 0.Method_Proc_76_88_144B2080 (CInt(&HF), var_F8, CStr(var_F4.TextMatrix)), &H15)
  loc_144B119:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_144B16E:   Set var_DC = Me.Txt
  loc_144B174:   Call 0.Method_Proc_76_88_144B2080 (CInt(&H10), var_F8, CStr(var_F4.TextMatrix)), &H18)
  loc_144B17C:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_144B1D1:   Set var_DC = Me.Txt
  loc_144B1D7:   Call 0.Method_Proc_76_88_144B2080 (CInt(&H10), var_F8, CStr(var_F4.TextMatrix)), &H19)
  loc_144B1DF:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_144B1FC:   global_172 = &HFF
  loc_144B201:   Set var_F4 = Nothing 
  loc_144B205: End If
  loc_144B205: Exit Sub
End Sub

Public Sub Proc_76_89_EE5848
  'Data Table: 53E44C
  loc_EE5796: On Error Goto loc_EE57DC
  loc_EE57AE: Call 0.Method_arg_18C (var_8C)
  loc_EE57B6: Call var_8C.Show
  loc_EE57CB: Call 0.Method_arg_188 (var_B0)
  loc_EE57D3: var_88 = var_B0
  loc_EE57D6: Proc_76_89_EE5848 = 1
  loc_EE57DC: ' Referenced from: EE5796
  loc_EE57E4: Set var_8C = Err()
  loc_EE57EA: Call 0.Method_arg_1C (var_B4)
  loc_EE57FB: If (var_B4 <> 0) Then
  loc_EE5806:   Set var_8C = Err()
  loc_EE580C:   Call 0.Method_arg_2C (var_B0)
  loc_EE582D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE5840: End If
  loc_EE5840: Proc_76_89_EE5848 = 
End Sub
