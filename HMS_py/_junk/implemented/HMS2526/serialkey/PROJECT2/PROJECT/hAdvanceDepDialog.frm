VERSION 5.00
Begin VB.Form hAdvanceDepDialog
  Caption = "Settlement"
  BackColor = &HFFC0FF&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 7785
  ClientHeight = 9240
  LockControls = -1  'True
  StartUpPosition = 2 'CenterScreen
  Begin Frame FrTxnNo
    Left = 495
    Top = 3405
    Width = 4950
    Height = 315
    Visible = 0   'False
    TabIndex = 68
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 17
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3810
      Height = 285
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
      Caption = "Txn. No."
      Index = 0
      ForeColor = &HFF0000&
      Left = -15
      Top = 0
      Width = 795
      Height = 240
      TabIndex = 69
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
  Begin BtnEnh BtnEnh5
    Left = 930
    Top = 7275
    Width = 4875
    Height = 375
    TabIndex = 67
  End
  Begin Frame FrMem
    Left = 7845
    Top = 1935
    Width = 4920
    Height = 300
    Visible = 0   'False
    TabIndex = 52
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 15
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3795
      Height = 285
      TabIndex = 8
      BorderStyle = 0 'None
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
    Begin Label LblName
      Caption = "Member"
      Index = 28
      ForeColor = &HFF0000&
      Left = -15
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
    Left = 480
    Top = 3090
    Width = 4965
    Height = 315
    Visible = 0   'False
    TabIndex = 47
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 18
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3810
      Height = 285
      TabIndex = 17
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
      Left = 0
      Top = 0
      Width = 885
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
  End
  Begin Frame FrChqDet
    Left = 7845
    Top = 2535
    Width = 2595
    Height = 615
    Visible = 0   'False
    TabIndex = 44
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 11
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
      Index = 12
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
      TabIndex = 46
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
  Begin Frame FrSendRoom
    Left = 7845
    Top = 1335
    Width = 3150
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
  Begin Frame FrEmp
    Left = 7845
    Top = 2235
    Width = 4935
    Height = 300
    Visible = 0   'False
    TabIndex = 40
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 16
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
  Begin Frame FrComp
    Left = 7845
    Top = 1635
    Width = 4920
    Height = 300
    Visible = 0   'False
    TabIndex = 38
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 14
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
      Left = -15
      Top = 0
      Width = 900
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
  End
  Begin Frame FrCCDet
    Left = 480
    Top = 2145
    Width = 4095
    Height = 945
    Visible = 0   'False
    TabIndex = 34
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 10
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 3315
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
      Index = 7
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 2415
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
      Index = 8
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
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
      Index = 9
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
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
      Left = 2415
      Top = 630
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
      Left = -15
      Top = 0
      Width = 765
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
    Begin Label LblName
      Caption = "Holder"
      Index = 19
      ForeColor = &HFF0000&
      Left = -15
      Top = 315
      Width = 630
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
    Begin Label LblName
      Caption = "Exp.Dt."
      Index = 20
      ForeColor = &HFF0000&
      Left = -15
      Top = 630
      Width = 675
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
  End
  Begin DataGrid DGCompany
    Left = 8250
    Top = 8010
    Width = 4215
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 33
  End
  Begin DataGrid DGTable
    Left = 9300
    Top = 7530
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 31
  End
  Begin DataGrid DGRoom
    Left = 10695
    Top = 6915
    Width = 2355
    Height = 2430
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 32
  End
  Begin DataGrid DGPayType
    Left = 10380
    Top = 6570
    Width = 4995
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 18
  End
  Begin DataGrid DGEmp
    Left = 10935
    Top = 6150
    Width = 4170
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 29
  End
  Begin Frame FrRest
    Left = 240
    Top = 1170
    Width = 5220
    Height = 975
    Visible = 0   'False
    TabIndex = 25
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 6
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 3765
      Top = 660
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
      Left = 1350
      Top = 660
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
      Left = 1350
      Top = 345
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
      Left = 1350
      Top = 30
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
      Left = 3300
      Top = 675
      Width = 300
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
    Begin Label LblName
      Caption = "Amount"
      Index = 14
      ForeColor = &HFF0000&
      Left = 270
      Top = 675
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
      Caption = "Room/T"
      Index = 12
      ForeColor = &HFF0000&
      Left = 270
      Top = 375
      Width = 735
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
    Begin Label LblName
      Caption = "Type"
      Index = 13
      ForeColor = &HFF0000&
      Left = 300
      Top = 30
      Width = 465
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
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 10380
    Top = 4485
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 23
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4335
    Top = 660
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
    ForeColor = &HFF0000&
    Left = 1590
    Top = 660
    Width = 855
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
    TabIndex = 19
    BorderStyle = 0 'None
    MaxLength = 50
    Locked = -1  'True
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 9360
    Top = 4215
    Width = 6780
    Height = 1560
    TabIndex = 24
  End
  Begin MSFlexGrid FGPoint
    Left = 13350
    Top = 2250
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 49
  End
  Begin DataGrid DGMember
    Left = 6900
    Top = 6615
    Width = 4215
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 51
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 8790
    Width = 7785
    Height = 450
    TabIndex = 54
  End
  Begin BtnEnh BtnEnh3
    Left = 3510
    Top = 5190
    Width = 1380
    Height = 300
    TabIndex = 60
  End
  Begin BtnEnh BtnEnh1
    Left = 960
    Top = 5190
    Width = 1305
    Height = 300
    TabIndex = 61
  End
  Begin BtnEnh BtnEnh2
    Left = 2235
    Top = 5190
    Width = 1290
    Height = 300
    TabIndex = 62
  End
  Begin BtnEnh BtnEnh4
    Left = 4860
    Top = 5190
    Width = 1275
    Height = 300
    TabIndex = 63
  End
  Begin BtnEnh cmdDelete
    Left = 2955
    Top = 6120
    Width = 1140
    Height = 720
    TabIndex = 64
  End
  Begin BtnEnh CmdPrint
    Left = 1620
    Top = 6120
    Width = 1140
    Height = 720
    TabIndex = 65
  End
  Begin BtnEnh HeadExit
    Left = 4350
    Top = 6120
    Width = 1140
    Height = 720
    TabIndex = 66
  End
  Begin Shape Shape4
    BorderColor = &HFF0000&
    Left = 930
    Top = 5160
    Width = 5235
    Height = 630
    BorderStyle = 5 'Dash-Dot-Dot
    BorderWidth = 2
    FillColor = &HC0FFC0&
  End
  Begin Label LTxt
    Index = 19
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 945
    Top = 5475
    Width = 1275
    Height = 285
    TabIndex = 59
    BorderStyle = 1 'Fixed Single
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
  End
  Begin Label LTxt
    Index = 21
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4845
    Top = 5490
    Width = 1275
    Height = 285
    TabIndex = 58
    BorderStyle = 1 'Fixed Single
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
  End
  Begin Label LTxt
    Index = 20
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2220
    Top = 5475
    Width = 1275
    Height = 285
    TabIndex = 57
    BorderStyle = 1 'Fixed Single
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
  End
  Begin Label LTxt
    Index = 22
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3495
    Top = 5490
    Width = 1335
    Height = 285
    TabIndex = 56
    BorderStyle = 1 'Fixed Single
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
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = -15
    Top = -15
    Width = 180
    Height = 540
    TabIndex = 55
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
  Begin Shape Shape5
    BorderColor = &H400040&
    Left = 14010
    Top = 7965
    Width = 375
    Height = 195
    Visible = 0   'False
    BorderWidth = 2
    FillColor = &HC0FFC0&
  End
  Begin Shape Shape1
    Index = 1
    BackColor = &H8000000F&
    BorderColor = &H400040&
    Left = 14430
    Top = 7620
    Width = 285
    Height = 180
    Visible = 0   'False
    BorderWidth = 2
    FillColor = &H8000000F&
  End
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HFF&
    Left = 13095
    Top = 8430
    Width = 675
    Height = 240
    Visible = 0   'False
    TabIndex = 22
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
    Caption = "Rect. Date"
    Index = 37
    ForeColor = &H80&
    Left = 3315
    Top = 660
    Width = 975
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
  Begin Label Lbl
    Caption = "Rect. No."
    Index = 36
    ForeColor = &H80&
    Left = 630
    Top = 660
    Width = 855
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
  Begin Menu popup
    Visible = 0   'False
    Caption = ""
    Begin Menu Del
      Caption = "Delete"
    End
  End
End

Attribute VB_Name = "hAdvanceDepDialog"

Private global_108 As Long
Private global_112 As Long
Private global_136 As Double
Private global_104 As Integer
Private global_164 As Integer

Private Sub Del_Click() 'F946B4
  'Data Table: 55E2B8
  Dim var_98 As Variant
  Dim var_A8 As Variant
  loc_F9456F: If (CLng(Me.FGrid.Row) >= 1) Then
  loc_F945A9:   If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_E8, var_108) = 6) Then
  loc_F945CB:     If (CLng(Me.FGrid.Rows) > 2) Then
  loc_F945E1:       var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F945EA:       Set var_10C = Me.FGrid
  loc_F94605:     Else
  loc_F94618:       Me.FGrid.Rows = 1
  loc_F9463C:       var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0))) 'String
  loc_F94644:       Set var_10C = Me.FGrid
  loc_F94671:       Me.FGrid.FixedRows = 1
  loc_F94679:     End If
  loc_F94679:   End If
  loc_F9467C: Else
  loc_F94697:   var_98 = "No Entries To Delete"
  loc_F9469D:   MsgBox(var_98, &H10, "Delete Module", var_E8, var_108)
  loc_F946AD: End If
  loc_F946AD: Call Proc_137_86_10A8A28(FGrid.DispID_10000, var_98)
  loc_F946B2: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '15D5D10
  'Data Table: 55E2B8
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
  loc_15D49B6: Set var_88 = Me.Txt
  loc_15D49BC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_15D49CA: Proc_6_74_E23240(var_8C)
  loc_15D49E5: Set var_88 = Me.Txt
  loc_15D49EB: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D49F3: var_8C.SelStart = 0
  loc_15D4A0C: Set var_88 = Me.Txt
  loc_15D4A12: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D4A2D: Set var_90 = Me.Txt
  loc_15D4A33: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_15D4A3B: var_98.SelLength = Len(var_8C.Text)
  loc_15D4A4E: Call Proc_137_78_FB8E04(var_8C)
  loc_15D4A56: var_9A = Index
  loc_15D4A61: If (var_9A = CInt(&H12)) Then
  loc_15D4A71:   Set var_88 = Me.Txt
  loc_15D4A77:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D4AAD:   var_98 = Me.Fields.Item("PayType")
  loc_15D4ABD:   var_CC = "Cash"
  loc_15D4AE2:   If CBool((var_8C.Text = vbNullString) And (var_98.Value = var_CC)) Then
  loc_15D4AF2:     Set var_88 = Me.Txt
  loc_15D4AF8:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D4B00:     var_8C.Text = "CASH PAYMENT RECD"
  loc_15D4B1B:     Set var_88 = Me.Txt
  loc_15D4B21:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D4B29:     var_8C.SelStart = 0
  loc_15D4B42:     Set var_88 = Me.Txt
  loc_15D4B48:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D4B50:     var_94 = var_8C.Text
  loc_15D4B63:     Set var_90 = Me.Txt
  loc_15D4B69:     Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_15D4B71:     var_98.SelLength = Len(var_94)
  loc_15D4B84:   End If
  loc_15D4B87: Else
  loc_15D4B8F:   If (var_9A = CInt(3)) Then
  loc_15D4BB2:     Set var_98 = Me.Txt
  loc_15D4BB8:     Call 0.Method_Txt_GotFocus0 (CInt(3), var_108)
  loc_15D4BD3:     Set var_88 = Me.Txt
  loc_15D4BD9:     Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_15D4BF1:     var_AC = CVar(((var_8C.Top + Me.FrRest.Top) + var_108.Height)) 'Single
  loc_15D4C00:     Me.DGPayType.Top = "PayType"
  loc_15D4C34:     Set var_88 = Me.Txt
  loc_15D4C3A:     Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_15D4C4E:     var_AC = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_15D4C5D:     Me.DGPayType.Left = "PayType"
  loc_15D4C84:     If (Me.RecordCount > 0) Then
  loc_15D4C92:       Set var_8C = Me.FGPoint
  loc_15D4CAA:       Proc_6_137_1192FDC(Me.DGPayType, global_64, Index)
  loc_15D4CB8:     End If
  loc_15D4D06:     Set var_88 = Me.Txt
  loc_15D4D0C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15D4D14:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15D4D2C:     If (var_8C Or (var_94 = vbNullString)) Then
  loc_15D4D2F:       Exit Sub
  loc_15D4D30:     End If
  loc_15D4D3D:     Set var_88 = Me.Txt
  loc_15D4D43:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D4D4B:     var_94 = var_8C.Text
  loc_15D4D5D:     var_AC = "Name"
  loc_15D4D98:     If CBool(CVar(var_94) <> Me.Fields.Item(var_AC).Value) Then
  loc_15D4DA1:       Me.MoveFirst
  loc_15D4DC4:       Set var_88 = Me.Txt
  loc_15D4DCA:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_15D4DD2:       0 = var_8C.Text
  loc_15D4DEB:       Me.Find 1 & var_94 & "'", var_AC, var_9A
  loc_15D4E00:     End If
  loc_15D4E03:   Else
  loc_15D4E0B:     If (var_9A = CInt(&H10)) Then
  loc_15D4E2E:       Set var_98 = Me.Txt
  loc_15D4E34:       Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_108)
  loc_15D4E4F:       Set var_88 = Me.Txt
  loc_15D4E55:       Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_15D4E6D:       var_AC = CVar(((var_8C.Top + Me.FrRest.Top) + var_108.Height)) 'Single
  loc_15D4E7C:       Me.DGEmp.Top = var_AC
  loc_15D4EB0:       Set var_88 = Me.Txt
  loc_15D4EB6:       Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_15D4ECA:       var_AC = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_15D4ED9:       Me.DGEmp.Left = var_AC
  loc_15D4F00:       If (Me.RecordCount > 0) Then
  loc_15D4F0E:         Set var_8C = Me.FGPoint
  loc_15D4F26:         Proc_6_137_1192FDC(Me.DGEmp, global_68)
  loc_15D4F34:       End If
  loc_15D4F82:       Set var_88 = Me.Txt
  loc_15D4F88:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15D4F90:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15D4FA8:       If (Index Or (var_94 = vbNullString)) Then
  loc_15D4FAB:         Exit Sub
  loc_15D4FAC:       End If
  loc_15D4FB9:       Set var_88 = Me.Txt
  loc_15D4FBF:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D4FC7:       var_94 = var_8C.Text
  loc_15D4FD9:       var_AC = "Name"
  loc_15D5014:       If CBool(CVar(var_94) <> Me.Fields.Item(var_AC).Value) Then
  loc_15D501D:         Me.MoveFirst
  loc_15D5040:         Set var_88 = Me.Txt
  loc_15D5046:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_15D504E:         0 = var_8C.Text
  loc_15D5067:         Me.Find 1 & var_94 & "'", var_AC, var_8C
  loc_15D507C:       End If
  loc_15D507F:     Else
  loc_15D5087:       If (var_9A = CInt(4)) Then
  loc_15D50AA:         Set var_98 = Me.Txt
  loc_15D50B0:         Call 0.Method_Txt_GotFocus0 (CInt(4), var_108)
  loc_15D50CB:         Set var_88 = Me.Txt
  loc_15D50D1:         Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_15D50E9:         var_AC = CVar(((var_8C.Top + Me.FrRest.Top) + var_108.Height)) 'Single
  loc_15D50F8:         Me.DGTable.Top = var_AC
  loc_15D512C:         Set var_88 = Me.Txt
  loc_15D5132:         Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_15D5146:         var_AC = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_15D5155:         Me.DGTable.Left = var_AC
  loc_15D517C:         If (Me.RecordCount > 0) Then
  loc_15D518A:           Set var_8C = Me.FGPoint
  loc_15D51A2:           Proc_6_137_1192FDC(Me.DGTable, global_72)
  loc_15D51B0:         End If
  loc_15D51FE:         Set var_88 = Me.Txt
  loc_15D5204:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15D520C:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15D5224:         If (Index Or (var_94 = vbNullString)) Then
  loc_15D5227:           Exit Sub
  loc_15D5228:         End If
  loc_15D5235:         Set var_88 = Me.Txt
  loc_15D523B:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D5243:         var_94 = var_8C.Text
  loc_15D524B:         var_DC = CVar(var_94) 'String
  loc_15D5290:         If CBool(var_DC <> Me.Fields.Item("Name").Value) Then
  loc_15D5299:           Me.MoveFirst
  loc_15D52BE:           Set var_88 = Me.Txt
  loc_15D52C4:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_15D52CC:           0 = var_8C.Text
  loc_15D52DA:           Proc_6_17_EAAE40(var_DC, CVar(var_94), 1)
  loc_15D52F0:           Me.Find CStr(var_CC & var_DC), var_8C, 
  loc_15D5308:         End If
  loc_15D530B:       Else
  loc_15D5313:         If (var_9A = CInt(&HD)) Then
  loc_15D5336:           Set var_98 = Me.Txt
  loc_15D533C:           Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_108)
  loc_15D5357:           Set var_88 = Me.Txt
  loc_15D535D:           Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_8C)
  loc_15D5375:           var_AC = CVar(((var_8C.Top + Me.FrSendRoom.Top) + var_108.Height)) 'Single
  loc_15D5384:           Me.DGRoom.Top = "Name ="
  loc_15D53B8:           Set var_88 = Me.Txt
  loc_15D53BE:           Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_8C)
  loc_15D53D2:           var_AC = CVar((var_8C.Left + Me.FrSendRoom.Left)) 'Single
  loc_15D53E1:           Me.DGRoom.Left = "Name ="
  loc_15D5408:           If (Me.RecordCount > 0) Then
  loc_15D5416:             Set var_8C = Me.FGPoint
  loc_15D542E:             Proc_6_137_1192FDC(Me.DGRoom, global_76)
  loc_15D543C:           End If
  loc_15D548A:           Set var_88 = Me.Txt
  loc_15D5490:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15D5498:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15D54B0:           If (Index Or (var_94 = vbNullString)) Then
  loc_15D54B3:             Exit Sub
  loc_15D54B4:           End If
  loc_15D54C1:           Set var_88 = Me.Txt
  loc_15D54C7:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D54CF:           var_94 = var_8C.Text
  loc_15D54D7:           var_DC = CVar(var_94) 'String
  loc_15D54F0:           var_90 = Me.Fields
  loc_15D551C:           If CBool(var_DC <> var_90.Item("Name").Value) Then
  loc_15D5525:             Me.MoveFirst
  loc_15D554A:             Set var_88 = Me.Txt
  loc_15D5550:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_15D5558:             0 = var_8C.Text
  loc_15D5566:             Proc_6_17_EAAE40(var_DC, CVar(var_94), 1)
  loc_15D557C:             Me.Find CStr(var_CC & var_DC), var_8C, 
  loc_15D5594:           End If
  loc_15D5597:         Else
  loc_15D559F:           If (var_9A = CInt(&HE)) Then
  loc_15D55B0:             Set var_8C = Me.Txt
  loc_15D55B6:             Call 0.Method_Txt_GotFocus0 (CInt(&HE), var_90)
  loc_15D55DC:             var_AC = CVar((Me.FrComp.Top + var_90.Height)) 'Single
  loc_15D55EB:             Me.DGCompany.Top = "Name ="
  loc_15D562D:             Set var_88 = Me.Txt
  loc_15D5633:             Call 0.Method_Txt_GotFocus0 (CInt(&HE), var_8C)
  loc_15D564B:             var_AC = CVar(((var_8C.Left + Me.FrRest.Left) + Me.FrComp.Left)) 'Single
  loc_15D565A:             Me.DGCompany.Left = "Name ="
  loc_15D5683:             If (Me.RecordCount > 0) Then
  loc_15D5691:               Set var_8C = Me.FGPoint
  loc_15D56A9:               Proc_6_137_1192FDC(Me.DGCompany, global_80)
  loc_15D56B7:             End If
  loc_15D5705:             Set var_88 = Me.Txt
  loc_15D570B:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15D5713:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15D572B:             If (Index Or (var_94 = vbNullString)) Then
  loc_15D572E:               Exit Sub
  loc_15D572F:             End If
  loc_15D573C:             Set var_88 = Me.Txt
  loc_15D5742:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D574A:             var_94 = var_8C.Text
  loc_15D5752:             var_DC = CVar(var_94) 'String
  loc_15D576B:             var_90 = Me.Fields
  loc_15D5797:             If CBool(var_DC <> var_90.Item("Name").Value) Then
  loc_15D57A0:               Me.MoveFirst
  loc_15D57C5:               Set var_88 = Me.Txt
  loc_15D57CB:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_15D57D3:               0 = var_8C.Text
  loc_15D57E1:               Proc_6_17_EAAE40(var_DC, CVar(var_94), 1)
  loc_15D57F7:               Me.Find CStr(var_CC & var_DC), var_8C, 
  loc_15D580F:             End If
  loc_15D5812:           Else
  loc_15D581A:             If (var_9A = CInt(&HF)) Then
  loc_15D582B:               Set var_8C = Me.Txt
  loc_15D5831:               Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_90)
  loc_15D5857:               var_AC = CVar((Me.FrMem.Top + var_90.Height)) 'Single
  loc_15D5866:               Me.DGMember.Top = "Name ="
  loc_15D58A8:               Set var_88 = Me.Txt
  loc_15D58AE:               Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_8C)
  loc_15D58CB:               var_AC = CVar((((var_8C.Left + Me.FrRest.Left) + Me.FrMem.Left) - CDbl(1260))) 'Single
  loc_15D58DA:               Me.DGMember.Left = "Name ="
  loc_15D5903:               If (Me.RecordCount > 0) Then
  loc_15D5911:                 Set var_8C = Me.FGPoint
  loc_15D5929:                 Proc_6_137_1192FDC(Me.DGMember, global_84)
  loc_15D5937:               End If
  loc_15D5985:               Set var_88 = Me.Txt
  loc_15D598B:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15D5993:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15D59AB:               If (Index Or (var_94 = vbNullString)) Then
  loc_15D59AE:                 Exit Sub
  loc_15D59AF:               End If
  loc_15D59BC:               Set var_88 = Me.Txt
  loc_15D59C2:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D59CA:               var_94 = var_8C.Text
  loc_15D59D2:               var_DC = CVar(var_94) 'String
  loc_15D59F3:               var_98 = Me.Fields.Item("Name")
  loc_15D5A17:               If CBool(var_DC <> var_98.Value) Then
  loc_15D5A20:                 Me.MoveFirst
  loc_15D5A45:                 Set var_88 = Me.Txt
  loc_15D5A4B:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_15D5A53:                 0 = var_8C.Text
  loc_15D5A61:                 Proc_6_17_EAAE40(var_DC, CVar(var_94), 1)
  loc_15D5A77:                 Me.Find CStr(var_CC & var_DC), var_8C, 
  loc_15D5A8F:               End If
  loc_15D5A92:             Else
  loc_15D5A9A:               If (var_9A = CInt(5)) Then
  loc_15D5AA1:                 Set var_88 = Me.TopCtrl1
  loc_15D5AA7:                 Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_15D5AC0:                 If (CStr() = "Add") Then
  loc_15D5AD1:                   Set var_88 = Me.LTxt
  loc_15D5AD7:                   Call 0.Method_Txt_GotFocus0 (CInt(&H15), var_8C)
  loc_15D5AEC:                   var_124 = Val(var_8C.Caption)
  loc_15D5B24:                   Set var_90 = Me.Txt
  loc_15D5B2A:                   Call 0.Method_Txt_GotFocus0 (Index, var_98, CStr(Format(CVar(var_124), "0.00")))
  loc_15D5B32:                   var_98.Text = 1
  loc_15D5B52:                 End If
  loc_15D5B56:                 Set var_88 = Me.TopCtrl1
  loc_15D5B5C:                 Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(1)
  loc_15D5B7F:                 If ((CStr(var_124) = "Edit") And (global_164 = 0)) Then
  loc_15D5B90:                   Set var_88 = Me.LTxt
  loc_15D5B96:                   Call 0.Method_Txt_GotFocus0 (CInt(&H15), var_8C)
  loc_15D5BE3:                   Set var_90 = Me.Txt
  loc_15D5BE9:                   Call 0.Method_Txt_GotFocus0 (Index, var_98, CStr(Format(CVar(Val(var_8C.Caption)), "0.00")))
  loc_15D5BF1:                   var_98.Text = 1
  loc_15D5C11:                 End If
  loc_15D5C20:                 Set var_88 = Me.Txt
  loc_15D5C26:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, 0)
  loc_15D5C2E:                 var_8C.SelStart = 1
  loc_15D5C47:                 Set var_88 = Me.Txt
  loc_15D5C4D:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D5C68:                 Set var_90 = Me.Txt
  loc_15D5C6E:                 Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_15D5C76:                 var_98.SelLength = Len(var_8C.Text)
  loc_15D5C8C:               Else
  loc_15D5C94:                 If (var_9A = CInt(6)) Then
  loc_15D5CA6:                   Set var_88 = Me.Txt
  loc_15D5CAC:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D5CB4:                   var_8C.SelStart = 0
  loc_15D5CCD:                   Set var_88 = Me.Txt
  loc_15D5CD3:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D5CEE:                   Set var_90 = Me.Txt
  loc_15D5CF4:                   Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_15D5CFC:                   var_98.SelLength = Len(var_8C.Text)
  loc_15D5D0F:                 End If
  loc_15D5D0F:               End If
  loc_15D5D0F:             End If
  loc_15D5D0F:           End If
  loc_15D5D0F:         End If
  loc_15D5D0F:       End If
  loc_15D5D0F:     End If
  loc_15D5D0F:   End If
  loc_15D5D0F: End If
  loc_15D5D0F: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '13C7530
  'Data Table: 55E2B8
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
  loc_13C6BBB: var_88 = Shift
  loc_13C6BC8: If (CLng(Shift) = &H1B) Then
  loc_13C6BCB:   Call Proc_137_78_FB8E04(var_88)
  loc_13C6BD0:   Exit Sub
  loc_13C6BD1: End If
  loc_13C6BD4: var_8A = KeyCode
  loc_13C6BDF: If (var_8A = CInt(3)) Then
  loc_13C6BFF:   Set var_A4 = Me.FGPoint
  loc_13C6C0A:   Set var_A0 = Nothing
  loc_13C6C3C:   Proc_6_69_134A630(Me.DGPayType, Me.Txt, CInt(3), global_64, Shift, 0)
  loc_13C6CAB:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13C6CD1:     Proc_6_138_106E830(Me.DGPayType, global_64, KeyCode, Me.FGPoint, 1)
  loc_13C6CDF:   End If
  loc_13C6CE2: Else
  loc_13C6CEA:   If (var_8A = CInt(&H10)) Then
  loc_13C6D15:     Set var_A0 = Nothing
  loc_13C6D47:     Proc_6_69_134A630(Me.DGEmp, Me.Txt, CInt(&H10), global_68, Shift, 0, 1)
  loc_13C6DB6:     If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13C6DBD:       Set var_A0 = Me.DGEmp
  loc_13C6DDC:       Proc_6_138_106E830(var_A0, global_68, KeyCode, Me.FGPoint, var_A0, Me.FGPoint)
  loc_13C6DEA:     End If
  loc_13C6DED:   Else
  loc_13C6DF5:     If (var_8A = CInt(4)) Then
  loc_13C6E52:       Proc_6_69_134A630(Me.DGTable, Me.Txt, CInt(4), global_72, Shift, 0, 1, Nothing)
  loc_13C6EC1:       If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13C6EE7:         Proc_6_138_106E830(Me.DGTable, global_72, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13C6EF5:       End If
  loc_13C6EF8:     Else
  loc_13C6F00:       If (var_8A = CInt(&HD)) Then
  loc_13C6F5D:         Proc_6_69_134A630(Me.DGRoom, Me.Txt, CInt(&HD), global_76, Shift, 0, 1, Nothing)
  loc_13C6FCC:         If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13C6FF2:           Proc_6_138_106E830(Me.DGRoom, global_76, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13C7000:         End If
  loc_13C7003:       Else
  loc_13C700B:         If (var_8A = CInt(&HE)) Then
  loc_13C7068:           Proc_6_69_134A630(Me.DGCompany, Me.Txt, CInt(&HE), global_80, Shift, 0, 1, Nothing)
  loc_13C70D7:           If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13C70FD:             Proc_6_138_106E830(Me.DGCompany, global_80, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13C710B:           End If
  loc_13C710E:         Else
  loc_13C7116:           If (var_8A = CInt(&HF)) Then
  loc_13C7136:             Set var_A4 = Me.FGPoint
  loc_13C7173:             Proc_6_69_134A630(Me.DGMember, Me.Txt, CInt(&HF), global_84, Shift, 0, 1, Nothing)
  loc_13C71E2:             If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13C71E9:               Set var_A0 = Me.DGMember
  loc_13C71F0:               Set var_94 = Me.FGPoint
  loc_13C7208:               Proc_6_138_106E830(var_A0, global_84, KeyCode, var_94, var_A4, 0)
  loc_13C7216:             End If
  loc_13C7219:           Else
  loc_13C7221:             If (var_8A = CInt(&H12)) Then
  loc_13C722E:               If (CLng(Shift) = &H2D) Then
  loc_13C7234:                 Call Proc_137_89_EE4548(var_BC, 0, var_A0)
  loc_13C7246:                 Set var_90 = Me.Txt
  loc_13C724C:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_BC)
  loc_13C7270:                 Set var_90 = Me.Txt
  loc_13C7276:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_BC)
  loc_13C727E:                 0 = var_A4
  loc_13C7291:                 Set var_A0 = Me.Txt
  loc_13C7297:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4)
  loc_13C729F:                 var_A4.SelStart = Len(var_BC)
  loc_13C72B2:                 Exit Sub
  loc_13C72B3:               End If
  loc_13C72B3:             End If
  loc_13C72B3:           End If
  loc_13C72B3:         End If
  loc_13C72B3:       End If
  loc_13C72B3:     End If
  loc_13C72B3:   End If
  loc_13C72B3: End If
  loc_13C72EA: var_EC = Me.DGPayType.Visible
  loc_13C7301: var_FC = Me.DGEmp.Visible
  loc_13C735A: If ((((((CBool(Me.DGTable.Visible) = 0) And (CBool(Me.DGRoom.Visible) = 0)) And (CBool(var_EC) = 0)) And (CBool(var_FC) = 0)) And (CBool(Me.DGCompany.Visible) = 0)) And (CBool(Me.DGMember.Visible) = 0)) Then
  loc_13C737D:   If (((CLng(Shift) = &H26) And (global_112 = 5)) And (KeyCode = CInt(3))) Then
  loc_13C7380:     Exit Sub
  loc_13C7381:   End If
  loc_13C739F:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HA))) Then
  loc_13C73AC:     If (CLng(Shift) = &H28) Then
  loc_13C73AF:       Exit Sub
  loc_13C73B0:     End If
  loc_13C73E7:     If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_13C73EA:       Call Proc_137_84_1527EF0(var_8A)
  loc_13C73F1:       Shift = 0
  loc_13C73F4:     End If
  loc_13C73F4:     Exit Sub
  loc_13C73F8:   Else
  loc_13C7416:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H12))) Then
  loc_13C7423:       If (CLng(Shift) = &H28) Then
  loc_13C7426:         Exit Sub
  loc_13C7427:       End If
  loc_13C745E:       If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_13C7461:         Call Proc_137_84_1527EF0(Shift)
  loc_13C7468:         Shift = 0
  loc_13C746B:       End If
  loc_13C746B:       Exit Sub
  loc_13C746F:     Else
  loc_13C748D:       If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HD))) Then
  loc_13C749A:         If (CLng(Shift) = &H28) Then
  loc_13C749D:           Exit Sub
  loc_13C749E:         End If
  loc_13C74AA:         Call Txt_Validate(CInt(&HD))
  loc_13C74E6:         If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_13C74E9:           Call Proc_137_84_1527EF0(0)
  loc_13C74F0:           Shift = 0
  loc_13C74F3:         End If
  loc_13C74F3:         Exit Sub
  loc_13C74F4:       End If
  loc_13C74F4:     End If
  loc_13C74F4:   End If
  loc_13C7509:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_13C7512:     Proc_6_75_E5335C(Shift, arg_14)
  loc_13C7517:   End If
  loc_13C7521:   If (CLng(Shift) = &H26) Then
  loc_13C752A:     Proc_6_76_E533C8(Shift, arg_14)
  loc_13C752F:   End If
  loc_13C752F: End If
  loc_13C752F: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EA11A0
  'Data Table: 55E2B8
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_EA1126: If (arg_10 = &HD) Then
  loc_EA112B:   arg_10 = 0
  loc_EA112E: End If
  loc_EA1131: Proc_6_58_E06050(arg_10)
  loc_EA113C: Proc_6_133_E7FB08(var_94, arg_10)
  loc_EA1145: arg_10 = CInt(var_94)
  loc_EA114E: var_96 = KeyAscii
  loc_EA1159: If Not (var_96 = CInt(5)) Then
  loc_EA1164:   If (var_96 = CInt(6)) Then
  loc_EA1167:   End If
  loc_EA1171:   Set var_9C = Me.Txt
  loc_EA1177:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_EA1192:   Proc_6_42_129B55C(var_A0, arg_10, 8)
  loc_EA119E: End If
  loc_EA119E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1183AA0
  'Data Table: 55E2B8
  Dim var_86 As Integer
  loc_11836BB: var_86 = KeyCode
  loc_11836C6: If (var_86 = CInt(3)) Then
  loc_11836E5:   If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_11836F9:     var_A4 = "Name"
  loc_118371D:     Proc_6_68_12A2818(Me.DGPayType, Me.Txt, KeyCode, global_64)
  loc_1183753:     Proc_6_138_106E830(Me.DGPayType, global_64, KeyCode, Me.FGPoint)
  loc_1183761:   End If
  loc_1183764: Else
  loc_118376C:   If (var_86 = CInt(&H10)) Then
  loc_118378B:     If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_118379F:       var_A4 = "Name"
  loc_11837C3:       Proc_6_68_12A2818(Me.DGEmp, Me.Txt, KeyCode, global_68, Shift)
  loc_11837F9:       Proc_6_138_106E830(Me.DGEmp, global_68, KeyCode, Me.FGPoint)
  loc_1183807:     End If
  loc_118380A:   Else
  loc_1183812:     If (var_86 = CInt(4)) Then
  loc_1183831:       If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_1183869:         Proc_6_68_12A2818(Me.DGTable, Me.Txt, KeyCode, global_72, Shift)
  loc_118389F:         Proc_6_138_106E830(Me.DGTable, global_72, KeyCode, Me.FGPoint, "Name")
  loc_11838AD:       End If
  loc_11838B0:     Else
  loc_11838B8:       If (var_86 = CInt(&HD)) Then
  loc_11838D7:         If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_118390F:           Proc_6_68_12A2818(Me.DGRoom, Me.Txt, KeyCode, global_76, Shift)
  loc_1183945:           Proc_6_138_106E830(Me.DGRoom, global_76, KeyCode, Me.FGPoint, "Name")
  loc_1183953:         End If
  loc_1183956:       Else
  loc_118395E:         If (var_86 = CInt(&HE)) Then
  loc_118397D:           If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_11839B5:             Proc_6_68_12A2818(Me.DGCompany, Me.Txt, KeyCode, global_80, Shift)
  loc_11839EB:             Proc_6_138_106E830(Me.DGCompany, global_80, KeyCode, Me.FGPoint, "Name")
  loc_11839F9:           End If
  loc_11839FC:         Else
  loc_1183A04:           If (var_86 = CInt(&HF)) Then
  loc_1183A23:             If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_1183A5B:               Proc_6_68_12A2818(Me.DGMember, Me.Txt, KeyCode, global_84, Shift)
  loc_1183A91:               Proc_6_138_106E830(Me.DGMember, global_84, KeyCode, Me.FGPoint, "Name")
  loc_1183A9F:             End If
  loc_1183A9F:           End If
  loc_1183A9F:         End If
  loc_1183A9F:       End If
  loc_1183A9F:     End If
  loc_1183A9F:   End If
  loc_1183A9F: End If
  loc_1183A9F: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4F20C
  'Data Table: 55E2B8
  loc_E4F1EA: Set var_88 = Me.Txt
  loc_E4F1F0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4F1FE: Proc_6_73_E23294(var_8C)
  loc_E4F20A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '14C5264
  'Data Table: 55E2B8
  Dim var_8A As Integer
  Dim var_94 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_98 As String
  Dim var_B8 As Variant
  Dim var_D4 As TextBox
  Dim var_11C As Double
  Dim var_E4 As Variant
  Dim var_CC As String
  loc_14C451B: var_8A = Cancel
  loc_14C4526: If (var_8A = CInt(1)) Then
  loc_14C4537:   Set var_90 = Me.Txt
  loc_14C453D:   Call 0.Method_Txt_Validate0 (CInt(1), var_94)
  loc_14C4545:   var_98 = var_94.Text
  loc_14C455C:   If (var_98 <> vbNullString) Then
  loc_14C4565:     Call Proc_137_80_115946C(MemVar_1F95044, var_98)
  loc_14C4570:   Else
  loc_14C4572:     arg_10 = &HFF
  loc_14C4575:     Exit Sub
  loc_14C4576:   End If
  loc_14C4579: Else
  loc_14C4581:   If (var_8A = CInt(4)) Then
  loc_14C458E:     Set var_90 = Me.Txt
  loc_14C4594:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C459C:     var_98 = "Table"
  loc_14C45BD:     If (Proc_6_27_EA61EC(var_94, var_98) = 0) Then
  loc_14C45CA:       Set var_90 = Me.Txt
  loc_14C45D0:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C45D8:       var_94.SetFocus
  loc_14C45E6:       arg_10 = &HFF
  loc_14C45E9:       Exit Sub
  loc_14C45EA:     End If
  loc_14C4638:     Set var_90 = Me.Txt
  loc_14C463E:     Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_14C465E:     If (var_94.Text Or (var_98 = vbNullString)) Then
  loc_14C466E:       Set var_90 = Me.Txt
  loc_14C4674:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C467C:       var_94.Text = vbNullString
  loc_14C4695:       Set var_90 = Me.Txt
  loc_14C469B:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C46A3:       var_94.Tag = vbNullString
  loc_14C46BA:       If (global_148 = "RO") Then
  loc_14C46C3:         global_144 = vbNullString
  loc_14C46C7:       End If
  loc_14C46CA:     Else
  loc_14C4705:       Set var_9C = Me.Txt
  loc_14C470B:       Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_14C4713:       var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14C4764:       Set var_9C = Me.Txt
  loc_14C476A:       Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_14C4772:       var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_14C4793:       If (global_148 = "RO") Then
  loc_14C47B3:         var_94 = Me.Fields.Item("RoomCat")
  loc_14C47C4:         var_98 = CStr(var_94.Value)
  loc_14C47CA:         global_144 = var_98
  loc_14C47DB:       End If
  loc_14C47DB:     End If
  loc_14C47DE:   Else
  loc_14C47E6:     If (var_8A = CInt(&HD)) Then
  loc_14C4837:       Set var_90 = Me.Txt
  loc_14C483D:       Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98)
  loc_14C4845:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_14C485D:       If (var_8A Or (var_98 = vbNullString)) Then
  loc_14C486D:         Set var_90 = Me.Txt
  loc_14C4873:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C487B:         var_94.Text = vbNullString
  loc_14C4894:         Set var_90 = Me.Txt
  loc_14C489A:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C48A2:         var_94.Tag = vbNullString
  loc_14C48B1:       Else
  loc_14C48EC:         Set var_9C = Me.Txt
  loc_14C48F2:         Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_14C48FA:         var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14C492D:         var_94 = Me.Fields.Item("Code")
  loc_14C494B:         Set var_9C = Me.Txt
  loc_14C4951:         Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_14C4959:         var_B8.Tag = CStr(var_94.Value)
  loc_14C496F:       End If
  loc_14C4972:     Else
  loc_14C497A:       If (var_8A = CInt(2)) Then
  loc_14C498B:         Set var_90 = Me.Txt
  loc_14C4991:         Call 0.Method_Txt_Validate0 (CInt(2), var_94)
  loc_14C49B8:         Set var_9C = Me.Txt
  loc_14C49BE:         Call 0.Method_Txt_Validate0 (CInt(2), var_B8)
  loc_14C49C6:         var_B8.Text = Proc_6_34_14EEAAC(var_94.Text)
  loc_14C49EB:         Set var_90 = Me.Txt
  loc_14C49F1:         Call 0.Method_Txt_Validate0 (CInt(0), var_94)
  loc_14C4A10:         If (var_94.Text = vbNullString) Then
  loc_14C4A15:           arg_10 = &HFF
  loc_14C4A18:         End If
  loc_14C4A1B:       Else
  loc_14C4A23:         If Not (var_8A = CInt(&HC)) Then
  loc_14C4A2E:           If (var_8A = CInt(9)) Then
  loc_14C4A31:           End If
  loc_14C4A3B:           Set var_90 = Me.Txt
  loc_14C4A41:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C4A61:           Set var_B8 = Me.Txt
  loc_14C4A67:           Call 0.Method_Txt_Validate0 (Cancel, var_D4)
  loc_14C4A6F:           var_D4.Text = Proc_6_33_15125B8(var_94)
  loc_14C4A85:         Else
  loc_14C4A8D:           If (var_8A = CInt(3)) Then
  loc_14C4A9D:             Set var_90 = Me.Txt
  loc_14C4AA3:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C4AC2:             If (var_94.Text <> vbNullString) Then
  loc_14C4B00:               Set var_9C = Me.Txt
  loc_14C4B06:               Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_14C4B0E:               var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14C4B5F:               Set var_9C = Me.Txt
  loc_14C4B65:               Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_14C4B6D:               var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_14C4BB4:               global_152 = Proc_6_38_E69628(CVar(Me.Fields.Item("PayType")))
  loc_14C4BCD:               Me.FrEmp.Visible = False
  loc_14C4BE1:               Me.FrChqDet.Visible = False
  loc_14C4BF5:               Me.FrCCDet.Visible = False
  loc_14C4C09:               Me.FrTxnNo.Visible = False
  loc_14C4C2B:               var_94 = Me.Fields.Item("PayType")
  loc_14C4C40:               Call Proc_137_83_11AEBD8(Proc_6_38_E69628(CVar(var_94)))
  loc_14C4C51:             Else
  loc_14C4C5E:               Set var_90 = Me.Txt
  loc_14C4C64:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C4C6C:               var_94.Text = vbNullString
  loc_14C4C85:               Set var_90 = Me.Txt
  loc_14C4C8B:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C4C93:               var_94.Tag = vbNullString
  loc_14C4C9F:             End If
  loc_14C4CA2:           Else
  loc_14C4CAA:             If Not (var_8A = CInt(5)) Then
  loc_14C4CB5:               If (var_8A = CInt(6)) Then
  loc_14C4CB8:               End If
  loc_14C4CC2:               Set var_90 = Me.Txt
  loc_14C4CC8:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C4CD4:               Proc_6_40_EA5C80(CVar(var_94))
  loc_14C4CEB:               var_104 = "0.00"
  loc_14C4CF4:               var_E4 = CVar(arg_10) 'Double
  loc_14C4CFB:               var_114 = Format(var_E4, var_104)
  loc_14C4D03:               var_98 = CStr(var_114)
  loc_14C4D11:               Set var_9C = Me.Txt
  loc_14C4D17:               Call 0.Method_Txt_Validate0 (Cancel, var_B8, var_98)
  loc_14C4D1F:               var_B8.Text = 1
  loc_14C4D49:               Set var_9C = Me.LTxt
  loc_14C4D4F:               Call 0.Method_Txt_Validate0 (CInt(&H15), var_B8, var_CC)
  loc_14C4D57:               1 = var_B8.Caption
  loc_14C4D64:               var_11C = Val(var_CC)
  loc_14C4D7D:               Set var_90 = Me.Txt
  loc_14C4D83:               Call 0.Method_Txt_Validate0 (CInt(5), var_94, var_98)
  loc_14C4D8B:               (Cancel = CInt(5)) = var_94.Text
  loc_14C4DBB:               If ((var_11C And (CDbl(Val(var_98)) > CDbl(var_11C))) And (global_164 = 0)) Then
  loc_14C4DD7:                 MsgBox("Amount You have entered is greater than Actual amount", &H40, var_E4, var_104, var_114)
  loc_14C4DE9:                 arg_10 = &HFF
  loc_14C4DEC:                 Exit Sub
  loc_14C4DED:               End If
  loc_14C4DF0:             Else
  loc_14C4DF8:               If (var_8A = CInt(&HE)) Then
  loc_14C4E49:                 Set var_90 = Me.Txt
  loc_14C4E4F:                 Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98)
  loc_14C4E57:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_14C4E6F:                 If (arg_10 Or (var_98 = vbNullString)) Then
  loc_14C4E7F:                   Set var_90 = Me.Txt
  loc_14C4E85:                   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C4E8D:                   var_94.Text = vbNullString
  loc_14C4EA6:                   Set var_90 = Me.Txt
  loc_14C4EAC:                   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C4EB4:                   var_94.Tag = vbNullString
  loc_14C4EC3:                 Else
  loc_14C4EFE:                   Set var_9C = Me.Txt
  loc_14C4F04:                   Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_14C4F0C:                   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14C4F3F:                   var_94 = Me.Fields.Item("Code")
  loc_14C4F50:                   var_98 = CStr(var_94.Value)
  loc_14C4F5D:                   Set var_9C = Me.Txt
  loc_14C4F63:                   Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_14C4F6B:                   var_B8.Tag = var_98
  loc_14C4F9B:                   Set var_90 = Me.Txt
  loc_14C4FA1:                   Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98)
  loc_14C4FA9:                   0 = var_94.Tag
  loc_14C4FD1:                   If (Proc_96_1_F8D0C4(Proc_6_38_E69628(CVar(var_98))) = 0) Then
  loc_14C4FED:                     MsgBox("Credit Not Allowed.", 0, var_E4, var_104, var_114)
  loc_14C4FFF:                     arg_10 = &HFF
  loc_14C5002:                     Exit Sub
  loc_14C5003:                   End If
  loc_14C500E:                   Set var_90 = Me.Txt
  loc_14C5014:                   Call 0.Method_Txt_Validate0 (CInt(&H12), var_94)
  loc_14C503D:                   If (Trim(CVar(var_94)) = vbNullString) Then
  loc_14C504E:                     Set var_90 = Me.Txt
  loc_14C5054:                     Call 0.Method_Txt_Validate0 (CInt(&H12), var_94, "AGAINST V.NO ")
  loc_14C505C:                     var_94.Text = arg_10
  loc_14C5068:                   End If
  loc_14C5068:                 End If
  loc_14C506B:               Else
  loc_14C5073:                 If (var_8A = CInt(&HF)) Then
  loc_14C50C4:                   Set var_90 = Me.Txt
  loc_14C50CA:                   Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98)
  loc_14C50D2:                   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_14C50EA:                   If (var_11C Or (var_98 = vbNullString)) Then
  loc_14C50FA:                     Set var_90 = Me.Txt
  loc_14C5100:                     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C5108:                     var_94.Text = vbNullString
  loc_14C5121:                     Set var_90 = Me.Txt
  loc_14C5127:                     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C512F:                     var_94.Tag = vbNullString
  loc_14C513E:                   Else
  loc_14C5179:                     Set var_9C = Me.Txt
  loc_14C517F:                     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_14C5187:                     var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14C51BA:                     var_94 = Me.Fields.Item("Code")
  loc_14C51D8:                     Set var_9C = Me.Txt
  loc_14C51DE:                     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_14C51E6:                     var_B8.Tag = CStr(var_94.Value)
  loc_14C5207:                     Set var_90 = Me.Txt
  loc_14C520D:                     Call 0.Method_Txt_Validate0 (CInt(&H12))
  loc_14C5236:                     If (Trim(CVar(var_94)) = vbNullString) Then
  loc_14C5247:                       Set var_90 = Me.Txt
  loc_14C524D:                       Call 0.Method_Txt_Validate0 (CInt(&H12), var_94)
  loc_14C5255:                       var_94.Text = "AGAINST V.NO "
  loc_14C5261:                     End If
  loc_14C5261:                   End If
  loc_14C5261:                 End If
  loc_14C5261:               End If
  loc_14C5261:             End If
  loc_14C5261:           End If
  loc_14C5261:         End If
  loc_14C5261:       End If
  loc_14C5261:     End If
  loc_14C5261:   End If
  loc_14C5261: End If
  loc_14C5261: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E0BD14
  'Data Table: 55E2B8
  loc_E0BD00: Call Proc_137_88_1409C38()
  loc_E0BD0B: Call Proc_137_83_11AEBD8(global_152)
  loc_E0BD10: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FDF37C
  'Data Table: 55E2B8
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FDF1B0: Set var_88 = Me.TopCtrl1
  loc_FDF1B6: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_FDF1CF: If (CStr() = "Browse") Then
  loc_FDF1D2:   Exit Sub
  loc_FDF1D3: End If
  loc_FDF1F0: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FDF1F3:   Exit Sub
  loc_FDF1F4: End If
  loc_FDF205: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FDF227:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FDF261:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FDF283:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FDF299:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FDF2A2:         Set var_110 = Me.FGrid
  loc_FDF2BD:       Else
  loc_FDF2D0:         Me.FGrid.Rows = 1
  loc_FDF2F4:         var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0))) 'String
  loc_FDF2FC:         Set var_110 = Me.FGrid
  loc_FDF329:         Me.FGrid.FixedRows = 1
  loc_FDF331:       End If
  loc_FDF331:     End If
  loc_FDF334:   Else
  loc_FDF355:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FDF365:   End If
  loc_FDF369:   Set var_88 = Me.FGrid
  loc_FDF37A: End If
  loc_FDF37A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_E 'E44544
  'Data Table: 55E2B8
  loc_E4451A: If (Cancel = 2) Then
  loc_E44535:   Call 0.Method_arg_2BC (Me.popup, var_98, var_A8)
  loc_E4453D:   Call FGrid_UnknownEvent_9()
  loc_E44542: End If
  loc_E44542: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F33990
  'Data Table: 55E2B8
  Dim var_88 As String
  Dim var_D4 As TextBox
  Dim var_D8 As Long
  loc_F33878: On Error Goto loc_F33988
  loc_F3389E: Call Proc_137_73_F77628(Proc_5_1_100EC1C("ADD", Me))
  loc_F338A9: Call Proc_137_74_F99164(global_60)
  loc_F338D6: var_88 = CStr(Format(MemVar_1F950EC, "dd/MMM/yyyy"))
  loc_F338E5: Set var_8C = Me.Txt
  loc_F338EB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4, var_88)
  loc_F338F3: var_D4.Text = 1
  loc_F3390F: var_D8 = global_112
  loc_F3391B: If (var_D8 = 6) Then
  loc_F3392B:   Set var_8C = Me.Txt
  loc_F33931:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_D4, &HFF)
  loc_F33939:   var_D4.Enabled = var_D8
  loc_F33951:   If (global_108 = 2) Then
  loc_F3395A:     Call Proc_137_80_115946C(MemVar_1F95044, var_88)
  loc_F3396D:     Set var_8C = Me.Txt
  loc_F33973:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_D4)
  loc_F3397B:     var_D4.SetFocus
  loc_F33987:   End If
  loc_F33987: End If
  loc_F33987: Exit Sub
  loc_F33988: ' Referenced from: F33878
  loc_F33988: Proc_6_60_E63754(1)
  loc_F3398D: Exit Sub
  loc_F3398E: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC6F3C
  'Data Table: 55E2B8
  loc_EC6EA4: On Error Goto loc_EC6F34
  loc_EC6EDE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC6EED:   Set var_110 = Me
  loc_EC6F04:   Call Proc_137_73_F77628(Proc_5_1_100EC1C("INI", var_110))
  loc_EC6F0F:   Call Proc_137_78_FB8E04(global_60)
  loc_EC6F14:   Call Proc_137_76_154F7E0()
  loc_EC6F1C: Else
  loc_EC6F22:   Call 0.Method_arg_1E8 (var_110)
  loc_EC6F2A:   Call var_110.SetFocus
  loc_EC6F33: End If
  loc_EC6F33: Exit Sub
  loc_EC6F34: ' Referenced from: EC6EA4
  loc_EC6F34: Proc_6_60_E63754()
  loc_EC6F39: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10B4878
  'Data Table: 55E2B8
  Dim unk_55E2D7 As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_10B45D0: On Error Goto loc_10B4828
  loc_10B460A: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F4, var_114) = 6) Then
  loc_10B4616:   unk_55E2D7.BeginTrans var_118
  loc_10B462C:   var_94 = Me.Bookmark 'Variant
  loc_10B4678:   var_F4 = "Delete From PAYCHARGEH Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_10B4686:   unk_55E2D7.Execute CStr(var_F4), var_114, -1
  loc_10B46D1:   var_160 = 0
  loc_10B46E4:   var_158 = 0
  loc_10B46EF:   var_154 = 0
  loc_10B4702:   var_14C = 0
  loc_10B470D:   var_148 = 0
  loc_10B4720:   var_140 = 0
  loc_10B4760:   var_124 = "PayChargeH"
  loc_10B4769:   Proc_154_5_10E3BD4(MemVar_1F95044, var_124, "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_10B4797:   unk_55E2D7.CommitTrans
  loc_10B47A7:   Me.Requery -1
  loc_10B47C7:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10B47D4:     Me.Bookmark = var_94
  loc_10B47DC:   Else
  loc_10B47F0:     If (Me.EOF = 0) Then
  loc_10B47F9:       Me.MoveLast
  loc_10B47FE:     End If
  loc_10B47FE:   End If
  loc_10B47FE:   Call Proc_137_76_154F7E0(var_140, 0, var_148, var_14C)
  loc_10B481F:   Proc_5_0_1107AD0(&HFF, Me, global_60, 0)
  loc_10B4827: End If
  loc_10B4827: Exit Sub
  loc_10B4828: ' Referenced from: 10B45D0
  loc_10B482E: unk_55E2D7.RollbackTrans
  loc_10B483B: Set var_11C = Err()
  loc_10B4841: Call 0.Method_arg_2C (var_124, 0, var_154)
  loc_10B4862: MsgBox(CVar(var_124), &H30, " Deletion Error ", var_F4, var_114)
  loc_10B4875: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'E540EC
  'Data Table: 55E2B8
  loc_E540B4: On Error Goto loc_E540E6
  loc_E540DA: Call Proc_137_73_F77628(Proc_5_1_100EC1C("EDIT", Me))
  loc_E540E5: Exit Sub
  loc_E540E6: ' Referenced from: E540B4
  loc_E540E6: Proc_6_60_E63754(global_60)
  loc_E540EB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1C1A8
  'Data Table: 55E2B8
  loc_E1C19D: Me.Global.Unload Me
  loc_E1C1A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'DFCA64
  'Data Table: 55E2B8
  loc_DFCA60: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E36B48
  'Data Table: 55E2B8
  loc_E36B38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36B40: Call Proc_137_76_154F7E0(global_60)
  loc_E36B45: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E36848
  'Data Table: 55E2B8
  loc_E36838: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36840: Call Proc_137_76_154F7E0(global_60)
  loc_E36845: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E369C8
  'Data Table: 55E2B8
  loc_E369B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E369C0: Call Proc_137_76_154F7E0(global_60)
  loc_E369C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E36AE8
  'Data Table: 55E2B8
  loc_E36AD8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36AE0: Call Proc_137_76_154F7E0(global_60)
  loc_E36AE5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'DFCEDC
  'Data Table: 55E2B8
  loc_DFCED8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E824C0
  'Data Table: 55E2B8
  Dim Me As Recordset15
  loc_E82457: Me.Requery -1
  loc_E82467: Me.Requery -1
  loc_E82477: Me.Requery -1
  loc_E82487: Me.Requery -1
  loc_E82497: Me.Requery -1
  loc_E824A7: Me.Requery -1
  loc_E824B7: Me.Requery -1
  loc_E824BC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '188BDE4
  'Data Table: 55E2B8
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
  Dim unk_55E2D7 As Connection15
  Dim var_16C As String
  Dim var_17C As String
  Dim var_D0 As Variant
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_AC As Variant
  Dim var_184 As Long
  Dim var_98 As Variant
  Dim var_110 As String
  Dim var_158 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_1C4 As Variant
  Dim var_1E4 As Variant
  Dim var_164 As MSHFlexGrid
  Dim var_1E8 As String
  Dim var_210 As String
  Dim var_1FC As Variant
  Dim var_CC As Variant
  Dim var_2B4 As Variant
  Dim var_304 As Variant
  Dim var_324 As Long
  Dim var_360 As Variant
  Dim var_380 As Variant
  Dim var_394 As MSHFlexGrid
  Dim var_3B4 As Variant
  Dim var_3D4 As Long
  Dim var_3E8 As Variant
  Dim var_418 As Variant
  Dim var_34C As String
  Dim var_4B8 As Variant
  Dim var_4D8 As Long
  Dim var_4EC As Variant
  Dim var_4FC As Variant
  Dim var_580 As MSHFlexGrid
  Dim var_590 As Variant
  Dim var_5D8 As Variant
  Dim var_62C As Variant
  Dim var_64C As Variant
  Dim var_674 As String
  Dim var_6C4 As Variant
  Dim var_6E4 As Variant
  Dim var_70C As String
  Dim var_FE4 As Double
  Dim var_75C As Variant
  Dim var_77C As Variant
  Dim var_7B0 As Variant
  Dim var_820 As Variant
  Dim var_840 As Variant
  Dim var_8D4 As Variant
  Dim var_8F4 As Variant
  Dim var_918 As Variant
  Dim var_A10 As Variant
  Dim var_AA4 As Variant
  Dim var_B38 As Variant
  Dim var_BBC As MSHFlexGrid
  Dim var_C60 As Variant
  Dim var_C70 As Variant
  Dim var_CD0 As Variant
  Dim var_D14 As Variant
  Dim var_D24 As Variant
  Dim var_E3C As Variant
  Dim var_E80 As Integer
  Dim var_E6C As Variant
  Dim var_E70 As Fields15
  Dim var_E84 As Field20
  Dim var_21C As String
  Dim var_224 As String
  Dim var_230 As String
  Dim var_234 As String
  Dim var_238 As String
  Dim var_250 As Variant
  Dim var_290 As Variant
  Dim var_2A0 As Variant
  Dim var_2C4 As Variant
  Dim var_2F4 As Variant
  Dim var_478 As Variant
  Dim var_51C As Variant
  Dim var_52C As Variant
  Dim var_5FC As Variant
  Dim var_6B4 As Variant
  Dim var_72C As Variant
  Dim var_8A4 As Variant
  Dim var_8C4 As Variant
  Dim var_958 As Variant
  Dim var_99C As Variant
  Dim var_A20 As Variant
  Dim var_B78 As Variant
  Dim var_DA4 As Variant
  Dim var_DD4 As Variant
  Dim var_E14 As Variant
  Dim var_314 As Variant
  Dim var_5D4 As Variant
  Dim var_55C As Long
  Dim var_7E0 As Variant
  Dim var_228 As String
  Dim var_438 As Variant
  Dim var_884 As Variant
  Dim var_938 As Variant
  Dim var_C4 As Double
  Dim var_1014 As Double
  Dim var_240 As TextBox
  Dim var_101C As Double
  Dim var_1024 As Double
  Dim var_E38 As Fields15
  Dim var_BEC As Variant
  Dim var_C90 As Variant
  Dim var_D34 As Variant
  Dim var_DC4 As Variant
  Dim var_1030 As Long
  Dim Me As Recordset15
  loc_1889938: On Error Goto loc_188BD92
  loc_188993B: var_E0 = 1
  loc_1889944: var_100 = 1
  loc_1889962: var_128 = CStr(Me.FGrid.TextMatrix))
  loc_1889973: If (var_128 = vbNullString) Then
  loc_1889997:   MsgBox("Please Fill Payment Details Before Saving..", &H40, "Save Data", var_148, var_158)
  loc_18899A7:   Exit Sub
  loc_18899A8: End If
  loc_18899BA: If (global_112 = 6) Then
  loc_18899CB:   Set var_114 = Me.LTxt
  loc_18899D1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_160, var_128)
  loc_18899D9:   var_15C = var_160.Caption
  loc_18899F5:   If (CDbl(Val(var_128)) <> CDbl(0)) Then
  loc_1889A06:     Set var_164 = Me.LTxt
  loc_1889A0C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_168, var_16C)
  loc_1889A14:     var_100 = var_168.Caption
  loc_1889A21:     var_174 = Val(var_16C)
  loc_1889A32:     Set var_114 = Me.LTxt
  loc_1889A38:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_160, var_128)
  loc_1889A65:     If (CDbl(Val(var_128)) <> CDbl(var_160.Caption)) Then
  loc_1889A6E:       var_E0 = "Bill Sattlement..."
  loc_1889A85:       var_128 = "Bill Amount and Received Amount Not Matched" & vbCrLf
  loc_1889AA8:       If (MsgBox(CVar(var_128 & "Are you want save?"), &H14, var_E0, var_148, var_158) = 7) Then
  loc_1889AAB:         Exit Sub
  loc_1889AAC:       End If
  loc_1889AAC:     End If
  loc_1889AAC:   End If
  loc_1889AAC: End If
  loc_1889AB0: var_86 = CByte(0) 'Byte
  loc_1889ABD: unk_55E2D7.BeginTrans var_178
  loc_1889AC6: var_86 = CByte(1) 'Byte
  loc_1889AE8: Set var_114 = Me.Txt
  loc_1889AEE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_128, "Select POSTDocid from paychargeH where Docid='")
  loc_1889AF6: var_124 = var_160.Text
  loc_1889AFF: var_16C = -1 & var_128
  loc_1889B0F: unk_55E2D7.Execute var_16C & "'", var_164, var_E0
  loc_1889B1A: Set var_D0 = var_164
  loc_1889B46: If (var_D0.RecordCount > 0) Then
  loc_1889B67:   Set var_114 = Me.Txt
  loc_1889B6D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_128, "Delete From PAYCHARGEH Where Docid='")
  loc_1889B75:   var_124 = var_160.Text
  loc_1889B7E:   var_16C = -1 & var_128
  loc_1889B8E:   unk_55E2D7.Execute var_16C & "'", var_164, 
  loc_1889BFB:   unk_55E2D7.Execute CStr("Delete From Ledger Where Docid='" & var_D0.Fields.Item("PostDocId").Value & "'"), var_158, -1
  loc_1889C17: End If
  loc_1889C3C: For var_180 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_AA = var_180 'Integer
  loc_1889C46:   var_E0 = CVar(CLng(var_AA)) 'Long
  loc_1889C4B:   var_100 = 2
  loc_1889C58:   Set var_114 = Me.FGrid
  loc_1889C5E:   var_124 = var_114.TextMatrix)
  loc_1889C7A:   If (CStr(var_124) <> vbNullString) Then
  loc_1889C83:     var_AC = (var_AC + 1)
  loc_1889C8C:     var_184 = global_112
  loc_1889C98:     If (var_184 = 6) Then
  loc_1889CB2:       var_128 = "Select Name,ShortName from depart where code='" & global_52
  loc_1889CC2:       unk_55E2D7.Execute var_128 & "'", var_124, -1
  loc_1889CCD:       Set var_98 = var_114
  loc_1889CF1:       If (var_98.RecordCount > 0) Then
  loc_1889D0B:         var_114 = var_98.Fields
  loc_1889D13:         var_160 = var_114.Item("ShortName")
  loc_1889D23:         var_138 = ("(" + var_160.Value)
  loc_1889D27:         var_100 = ") "
  loc_1889D2C:         var_148 = ("Delete From Ledger Where Docid='" & var_D0.Fields.Item("PostDocId").Value + var_100)
  loc_1889D30:         var_110 = "BILL NO.- "
  loc_1889D35:         var_158 = ("Delete From Ledger Where Docid='" & var_D0.Fields.Item("PostDocId").Value & "'" + var_110)
  loc_1889D47:         Set var_164 = Me.Txt
  loc_1889D4D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168, var_128, var_158, var_114, var_184)
  loc_1889D55:         var_AC = var_168.Text
  loc_1889D60:         var_1A4 = (var_100 + CVar(var_128))
  loc_1889D69:         var_1C4 = (var_1A4 + " ")
  loc_1889D72:         var_1E4 = (var_1C4 + vbNullString)
  loc_1889D77:         var_94 = CStr(var_1E4)
  loc_1889D9B:       Else
  loc_1889D9F:         var_E0 = CVar(CLng(var_AA)) 'Long
  loc_1889DC2:         var_128 = CStr(Me.FGrid.TextMatrix))
  loc_1889DD3:         If (var_128 = "Cheque") Then
  loc_1889DE7:           Set var_114 = Me.Txt
  loc_1889DED:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_160, var_128, "PaymentRecd.Agnst.BANQUET BILL NO.- ", 2)
  loc_1889E05:           var_17C = var_160.Text & var_128 & " Chq."
  loc_1889E0C:           var_E0 = CVar(CLng(var_AA)) 'Long
  loc_1889E39:           var_210 = CVar(CLng(&HC)) & CStr(Me.FGrid.TextMatrix)) & " Dt."
  loc_1889E40:           var_1B4 = CVar(CLng(var_AA)) 'Long
  loc_1889E51:           Set var_168 = Me.FGrid
  loc_1889E66:           var_94 = CVar(CLng(&HD)) & CStr(var_168.TextMatrix))
  loc_1889E8F:         Else
  loc_1889EA0:           Set var_114 = Me.Txt
  loc_1889EA6:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_160, var_128, "AGNST BANQUET BILL NO.- ", var_1B4)
  loc_1889EAE:           var_210 = var_160.Text
  loc_1889EBE:           var_94 = var_E0 & var_128 & " "
  loc_1889ECF:         End If
  loc_1889ECF:       End If
  loc_1889ED4:       Set var_98 = Nothing
  loc_1889EDC:       Set var_9C = Nothing
  loc_1889EFB:       var_124 = Me.FGrid.TextMatrix)
  loc_1889F06:       var_128 = CStr(var_124)
  loc_1889F17:       If (var_128 = "Room") Then
  loc_1889F3E:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_128, "DELETE FROM PAYCHARGE WHERE DOCID='", var_124, -1)
  loc_1889F5F:         unk_55E2D7.Execute 2 & var_128 & "'", CVar(CLng(var_AA)), 2 & var_128 & "'"
  loc_1889FA4:         unk_55E2D7.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F95078 & "TOUT" & "'", var_124, -1
  loc_1889FAF:         Set var_98 = Me.Txt
  loc_1889FD5:         If (var_98.RecordCount > 0) Then
  loc_1889FE5:           var_F0 = "Select * from taxstru where Code='"
  loc_188A004:           var_160 = var_98.Fields.Item("TaxStru")
  loc_188A014:           var_138 = var_F0 & var_160.Value 
  loc_188A01D:           var_148 = var_138 & "' Order by Sno" 
  loc_188A02B:           unk_55E2D7.Execute CStr(var_148), var_158, -1
  loc_188A036:           Set var_A0 = var_160.Text
  loc_188A053:         Else
  loc_188A06C:           MsgBox("System Defined Revenue is not defined", 0, var_138, var_148, var_158)
  loc_188A082:           unk_55E2D7.RollbackTrans
  loc_188A087:           Exit Sub
  loc_188A088:         End If
  loc_188A08C:         var_E0 = CVar(CLng(var_AA)) 'Long
  loc_188A091:         var_100 = &H16
  loc_188A0B7:         var_174 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_188A0D3:         var_17C = "Select GF.Docid,GF.GuestProf from GuestFolio GF Inner Join RoomOcc RO On GF.DocId=RO.DocId where GF.FolioNo=" & CStr(var_174)
  loc_188A0DA:         var_1E8 = var_17C & " And RO.ChkOutDate Is Null"
  loc_188A0E3:         unk_55E2D7.Execute var_1E8, var_138, -1
  loc_188A0EE:         Set var_CC = var_160
  loc_188A11E:         If (var_CC.RecordCount > 0) Then
  loc_188A13B:           var_160 = var_CC.Fields.Item("GuestProf")
  loc_188A14C:           var_C8 = CStr(var_160.Value)
  loc_188A159:         End If
  loc_188A167:         Set var_114 = Me.Txt
  loc_188A16D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_1E8, var_160, var_174, var_100)
  loc_188A175:         var_E0 = var_160.Text
  loc_188A18E:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168, var_228, Me.Txt)
  loc_188A196:         var_114 = var_168.Text
  loc_188A1B6:         Set var_23C = Me.Txt
  loc_188A1BC:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_240)
  loc_188A1CB:         Proc_6_7_F26918(var_1C4, CVar(var_240))
  loc_188A1FC:         var_1B4 = CVar(CLng(var_AA)) 'Long
  loc_188A204:         var_1FC = CVar(CLng(&H10)) 'Long
  loc_188A223:         var_304 = CVar(CLng(var_AA)) 'Long
  loc_188A228:         var_324 = 1
  loc_188A24B:         var_360 = CVar(CLng(var_AA)) 'Long
  loc_188A250:         var_380 = &H14
  loc_188A273:         var_3B4 = CVar(CLng(var_AA)) 'Long
  loc_188A278:         var_3D4 = &H18
  loc_188A2BA:         var_438 = IIf((CStr(Me.FGrid.TextMatrix)) = MemVar_1F95078 & "CRED"), CVar(CStr(Me.FGrid.TextMatrix))), CVar(CStr(Me.FGrid.TextMatrix))))
  loc_188A2C3:         var_4B8 = CVar(CLng(var_AA)) 'Long
  loc_188A2C8:         var_4D8 = 1
  loc_188A2D5:         Set var_4EC = Me.FGrid
  loc_188A2DB:         var_4FC = var_4EC.TextMatrix)
  loc_188A303:         var_590 = Me.FGrid.TextMatrix)
  loc_188A31D:         Set var_5D4 = Me.LTxt
  loc_188A323:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_5D8, var_5DC, var_590, 2, CVar(CLng(var_AA)), var_4FC)
  loc_188A32B:         var_4D8 = var_5D8.Caption
  loc_188A33F:         var_62C = CVar(CLng(var_AA)) 'Long
  loc_188A344:         var_64C = 8
  loc_188A371:         var_6C4 = CVar(CLng(var_AA)) 'Long
  loc_188A376:         var_6E4 = &H11
  loc_188A3A3:         var_75C = CVar(CLng(var_AA)) 'Long
  loc_188A3A8:         var_77C = &H12
  loc_188A3E4:         var_820 = CVar(CLng(var_AA)) 'Long
  loc_188A3E9:         var_840 = &H12
  loc_188A42B:         var_8D4 = CVar(CLng(var_AA)) 'Long
  loc_188A430:         var_8F4 = &H12
  loc_188A491:         var_A10 = Me.FGrid.TextMatrix)
  loc_188A4B8:         var_AA4 = Me.FGrid.TextMatrix)
  loc_188A4DF:         var_B38 = Me.FGrid.TextMatrix)
  loc_188A517:         Proc_6_7_F26918(var_BEC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HD)), CVar(CLng(var_AA)), var_B38, CVar(CLng(&HC)), CVar(CLng(var_AA)), var_AA4)
  loc_188A532:         Set var_C60 = Me.FGrid
  loc_188A538:         var_C70 = var_C60.TextMatrix)
  loc_188A549:         Proc_6_17_EAAE40(var_C90, CVar(CStr(var_C70)), &H1A, CVar(CLng(var_AA)), CVar(CLng(&HA)), CVar(CLng(var_AA)))
  loc_188A569:         var_D14 = Me.FGrid.TextMatrix)
  loc_188A574:         var_D24 = CVar(CStr(var_D14)) 'String
  loc_188A57A:         Proc_6_7_F26918(var_D34, var_D24, CVar(CLng(&HB)), CVar(CLng(var_AA)), var_A10)
  loc_188A58D:         Proc_6_7_F26918(var_DC4, Date, CVar(CLng(9)), CVar(CLng(var_AA)))
  loc_188A5A0:         Set var_E38 = Me.Txt
  loc_188A5A6:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_E3C, var_E40)
  loc_188A5AE:         var_918 = var_E3C.Text
  loc_188A5B9:         var_E80 = 0
  loc_188A5E6:         unk_55E2D7.Execute "SELECT BookDocId FROM HallSale1 WHERE DocId='" & var_E40 & "'", var_E68, -1
  loc_188A5EE:         var_E6C = var_E6C.Fields
  loc_188A5F6:         var_E80 = var_E70.Item(var_E70)
  loc_188A5FE:         var_E84 = var_E84.Value
  loc_188A630:         Proc_6_39_E7D3A0(var_F38, CVar(CStr(Me.FGrid.TextMatrix))), &H17, CVar(CLng(var_AA)))
  loc_188A649:         var_128 = "Insert Into PAYCHARGEH (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, " & "GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_188A657:         var_17C = var_128 & "RoomType,RoomNo,FPNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,ContraDocId,batchno,LogSite_Code) Values ("
  loc_188A678:         var_21C = var_17C & "'" & var_1E8 & "'," & CStr(var_AC)
  loc_188A697:         var_230 = var_21C & ",'" & global_120 & "','" & var_228
  loc_188A6B6:         var_E0 = "',"
  loc_188A6D5:         var_290 = CVar(var_230 & "','" & MemVar_1F95070 & "','") & Trim(CVar(Me.LblVPrefix)) & var_E0 & var_1C4 & ",'" & CVar(Format$(Time, "HH:mm")) 
  loc_188A720:         var_51C = var_290 & "','','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & var_438 & "','" & CVar(var_94) & "','" & CVar(CStr(var_4FC)) 
  loc_188A765:         var_6B4 = var_51C & "','" & CVar(CStr(var_590)) & "'," & CVar(Val(var_5DC)) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," 
  loc_188A790:         var_8A4 = var_6B4 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & Mid(CVar(CStr(Me.FGrid.TextMatrix))), 3, 5) & "','" & LTrim(Left(CVar(CStr(Me.FGrid.TextMatrix))), 2)) 
  loc_188A799:         var_8C4 = var_8A4 & "','" 
  loc_188A7C4:         var_A20 = CVar(CStr(var_A10)) 'String
  loc_188A7DB:         var_AC4 = var_8C4 & Trim(Right(CVar(CStr(Me.FGrid.TextMatrix))), 5)) & "'," & CVar(PTableOrRoomNo) & ",'" & var_A20 & "','" & CVar(CStr(var_AA4)) 
  loc_188A7F8:         var_B78 = var_AC4 & "','" & CVar(CStr(var_B38)) & "'," 
  loc_188A83B:         var_DA4 = var_B78 & var_BEC & "," & var_C90 & "," & var_D34 & ",'" & CVar(MemVar_1F950C8) & "'," 
  loc_188A858:         var_E14 = var_DA4 & var_DC4 & ",'A','" & CVar(global_52) 
  loc_188A8A2:         unk_55E2D7.Execute CStr(var_E14 & "','" & var_E94 & "'," & var_F38 & ",'" & CVar(MemVar_1F95078) & "')"), var_FCC, -1
  loc_188AA12:         Set var_114 = Me.Txt
  loc_188AA18:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_128, var_FD0)
  loc_188AA20:         var_E94 = var_160.Text
  loc_188AA33:         Set var_164 = Me.Txt
  loc_188AA39:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168, var_21C)
  loc_188AA41:         var_8F4 = var_168.Text
  loc_188AA61:         Set var_23C = Me.Txt
  loc_188AA67:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_240)
  loc_188AA76:         Proc_6_7_F26918(var_1C4, CVar(var_240))
  loc_188AA92:         var_270 = "HH:mm"
  loc_188AACE:         var_314 = CVar(CLng(var_AA)) 'Long
  loc_188AAE6:         var_418 = Me.FGrid.TextMatrix)
  loc_188AB00:         Set var_3E8 = Me.LTxt
  loc_188AB06:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_4EC, var_230, var_418, 2)
  loc_188AB0E:         var_314 = var_4EC.Caption
  loc_188AB22:         var_3B4 = CVar(CLng(var_AA)) 'Long
  loc_188AB27:         var_3D4 = 8
  loc_188AB54:         var_478 = CVar(CLng(var_AA)) 'Long
  loc_188AB59:         var_4B8 = &H12
  loc_188AB95:         var_52C = CVar(CLng(var_AA)) 'Long
  loc_188AB9A:         var_55C = &H12
  loc_188ABF4:         var_72C = Me.FGrid.TextMatrix)
  loc_188AC30:         var_7E0 = Me.FGrid.TextMatrix)
  loc_188AC4A:         Proc_6_7_F26918(var_8C4, Date, var_7E0, &H16, CVar(CLng(var_AA)), var_72C, &H12, CVar(CLng(var_AA)))
  loc_188AC8A:         var_16C = "Insert Into PAYCHARGE (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,Comments,PayCode,PayType,BillAmount,AmtCr,AmtDr,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,BookNo,BookType,U_Name,U_EntDt,U_AE,RestCode,FolioNoDocid,LogSite_Code)Values " & "('"
  loc_188ACA4:         var_210 = var_16C & var_128 & "'," & CStr(var_AC)
  loc_188ACDE:         var_158 = CVar(var_210 & ",'" & global_120 & "'," & var_21C & ",'" & MemVar_1F95070 & "','") & Trim(CVar(Me.LblVPrefix)) 
  loc_188AD30:         var_2F4 = var_158 & "'," & var_1C4 & ",'" & CVar(Format$(Time, var_270)) & "','" & CVar(var_C8) & "','" & CVar(var_94) & "','" 
  loc_188AD73:         var_4FC = var_2F4 & var_98.Fields.Item("Code").Value & "','" & CVar(CStr(var_418)) & "'," & CVar(Val(var_230)) & ",0," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_188AD93:         var_6B4 = var_4FC & ",'" & Mid(CVar(CStr(Me.FGrid.TextMatrix))), 3, 5) & "','" & LTrim(Left(CVar(CStr(Me.FGrid.TextMatrix))), 2)) 
  loc_188ADD3:         var_884 = var_6B4 & "','" & Right(CVar(CStr(var_72C)), 5) & "'," & CVar(CStr(var_7E0)) & ",'','',0,''," & "'" & CVar(MemVar_1F950C8) 
  loc_188AE1C:         var_99C = var_884 & "'," & var_8C4 & ",'A','" & CVar(global_52) & "','" & var_CC.Fields.Item("DocID").Value & "','" & CVar(MemVar_1F95078) 
  loc_188AE33:         unk_55E2D7.Execute CStr(var_99C & "')"), var_A10, -1
  loc_188AF0F:         var_E0 = CVar(CLng(var_AA)) 'Long
  loc_188AF14:         var_100 = &H12
  loc_188AF56:         var_B4 = CStr(Trim(Right(CVar(CStr(Me.FGrid.TextMatrix))), 5)))
  loc_188AF6B:         var_E0 = CVar(CLng(var_AA)) 'Long
  loc_188AF70:         var_100 = &H12
  loc_188AFB2:         var_B8 = CStr(LTrim(Left(CVar(CStr(Me.FGrid.TextMatrix))), 2)))
  loc_188AFC7:         var_E0 = CVar(CLng(var_AA)) 'Long
  loc_188AFCC:         var_100 = &H16
  loc_188AFF4:         var_BC = CStr(Val(CStr(Me.FGrid.TextMatrix))))
  loc_188B004:         var_E0 = CVar(CLng(var_AA)) 'Long
  loc_188B009:         var_100 = &H12
  loc_188B045:         var_B0 = CStr(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 3, 5))
  loc_188B05A:         var_E0 = CVar(CLng(var_AA)) 'Long
  loc_188B05F:         var_100 = 8
  loc_188B07D:         var_128 = CStr(Me.FGrid.TextMatrix))
  loc_188B085:         var_174 = Val(var_128)
  loc_188B08F:         var_C4 = (var_C4 + var_174)
  loc_188B0A9:         Set var_114 = Me.Txt
  loc_188B0AF:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_210, var_C4, var_174, var_100, var_E0)
  loc_188B0B7:         var_124 = var_160.Text
  loc_188B0CA:         Set var_164 = Me.Txt
  loc_188B0D0:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168, var_128, var_100, var_E0)
  loc_188B0D8:         var_100 = var_168.Text
  loc_188B0E5:         var_1014 = Val(var_128)
  loc_188B106:         Set var_23C = Me.Txt
  loc_188B10C:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_240, var_21C, var_1014)
  loc_188B114:         var_E0 = var_240.Text
  loc_188B144:         var_1A4 = Trim(CVar(Format$(Time, "HH:mm")))
  loc_188B16B:         var_2B4 = var_98.Fields.Item("Code").Value
  loc_188B17E:         Set var_394 = Me.LTxt
  loc_188B184:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_3E8, var_16C, 1)
  loc_188B18C:         1 = var_3E8.Caption
  loc_188B199:         var_101C = Val(var_16C)
  loc_188B1A0:         var_100 = CVar(CLng(var_AA)) 'Long
  loc_188B1A5:         var_1B4 = 8
  loc_188B1B8:         var_1C4 = Me.FGrid.TextMatrix)
  loc_188B1CB:         var_1024 = Val(CStr(var_1C4))
  loc_188B1DC:         var_1E4 = Date
  loc_188B1E4:         var_250 = Date
  loc_188B1EC:         var_260 = Now
  loc_188B1F5:         Set var_580 = Me.TopCtrl1
  loc_188B1FB:         Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(Val(var_BC))
  loc_188B21E:         var_1E8 = CStr(var_270)
  loc_188B22D:         var_2A0 = IIf((var_1E8 = "Add"), "A", "E")
  loc_188B24C:         var_5D8 = var_CC.Fields.Item("DocID")
  loc_188B254:         var_2C4 = var_5D8.Value
  loc_188B25E:         var_E40 = 0
  loc_188B269:         var_97C = 0
  loc_188B27C:         var_70C = 0
  loc_188B287:         var_674 = 0
  loc_188B2C4:         var_34C = vbNullString
  loc_188B2CD:         var_238 = vbNullString
  loc_188B2D6:         var_234 = vbNullString
  loc_188B304:         var_230 = "Room"
  loc_188B318:         var_228 = vbNullString
  loc_188B321:         var_224 = vbNullString
  loc_188B365:         Proc_96_8_1CC4F08(MemVar_1F95078 & "TOUT", var_210, var_AC, global_120, CLng(var_1014), MemVar_1F95070, CStr(Trim(CVar(Me.LblVPrefix))), CDate(var_21C))
  loc_188B3E0:       Else
  loc_188B3EE:         Set var_114 = Me.Txt
  loc_188B3F4:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_1E8, CStr(var_1A4), var_224)
  loc_188B3FC:         var_228 = var_160.Text
  loc_188B40F:         Set var_164 = Me.Txt
  loc_188B415:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168, var_228, var_94)
  loc_188B41D:         CStr(var_2B4) = var_168.Text
  loc_188B42D:         var_138 = Trim(CVar(Me.LblVPrefix))
  loc_188B43D:         Set var_23C = Me.Txt
  loc_188B443:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_240)
  loc_188B452:         Proc_6_7_F26918(var_1C4, CVar(var_240))
  loc_188B483:         var_1B4 = CVar(CLng(var_AA)) 'Long
  loc_188B48B:         var_1FC = CVar(CLng(&H10)) 'Long
  loc_188B4AA:         var_304 = CVar(CLng(var_AA)) 'Long
  loc_188B4AF:         var_324 = 1
  loc_188B4D2:         var_360 = CVar(CLng(var_AA)) 'Long
  loc_188B4D7:         var_380 = &H14
  loc_188B4FA:         var_3B4 = CVar(CLng(var_AA)) 'Long
  loc_188B4FF:         var_3D4 = &H18
  loc_188B541:         var_438 = IIf((CStr(Me.FGrid.TextMatrix)) = MemVar_1F95078 & "CRED"), CVar(CStr(Me.FGrid.TextMatrix))), CVar(CStr(Me.FGrid.TextMatrix))))
  loc_188B54A:         var_4B8 = CVar(CLng(var_AA)) 'Long
  loc_188B54F:         var_4D8 = 1
  loc_188B562:         var_4FC = Me.FGrid.TextMatrix)
  loc_188B58A:         var_590 = Me.FGrid.TextMatrix)
  loc_188B5A4:         Set var_5D4 = Me.LTxt
  loc_188B5AA:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_5D8, var_5DC, var_590, 2, CVar(CLng(var_AA)), var_4FC)
  loc_188B5B2:         var_4D8 = var_5D8.Caption
  loc_188B5C6:         var_62C = CVar(CLng(var_AA)) 'Long
  loc_188B5CB:         var_64C = 8
  loc_188B5F8:         var_6C4 = CVar(CLng(var_AA)) 'Long
  loc_188B5FD:         var_6E4 = &H11
  loc_188B623:         var_FE4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_188B649:         var_884 = Me.FGrid.TextMatrix)
  loc_188B670:         var_918 = Me.FGrid.TextMatrix)
  loc_188B697:         var_958 = Me.FGrid.TextMatrix)
  loc_188B6CF:         Proc_6_7_F26918(var_A20, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HD)), CVar(CLng(var_AA)), var_958, CVar(CLng(&HC)), CVar(CLng(var_AA)), var_918)
  loc_188B701:         Proc_6_17_EAAE40(var_AC4, CVar(CStr(Me.FGrid.TextMatrix))), &H1A, CVar(CLng(var_AA)), CVar(CLng(&HA)), CVar(CLng(var_AA)))
  loc_188B732:         Proc_6_7_F26918(var_B78, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_AA)), var_884)
  loc_188B745:         Proc_6_7_F26918(var_C70, Date, CVar(CLng(9)), CVar(CLng(var_AA)))
  loc_188B758:         Set var_BBC = Me.Txt
  loc_188B75E:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_C60, var_E40)
  loc_188B771:         var_CD0 = 0
  loc_188B79E:         unk_55E2D7.Execute "SELECT BookDocId FROM HallSale1 WHERE DocId='" & var_E40 & "'", var_D14, -1
  loc_188B7A6:         var_D04 = var_D04.Fields
  loc_188B7AE:         var_CD0 = var_E38.Item(var_E38)
  loc_188B7B6:         var_E3C = var_E3C.Value
  loc_188B7E8:         Proc_6_39_E7D3A0(var_DA4, CVar(CStr(Me.FGrid.TextMatrix))), &H17, CVar(CLng(var_AA)))
  loc_188B801:         var_128 = "Insert Into PAYCHARGEH (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, " & "GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_188B80F:         var_17C = var_128 & "RoomType,RoomNo,FPNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,ContraDocId,batchno,LogSite_Code) Values ("
  loc_188B864:         var_148 = CVar(var_17C & "'" & var_1E8 & "'," & CStr(var_AC) & ",'" & global_120 & "','" & var_228 & "','" & MemVar_1F95070 & "','") 'String
  loc_188B86A:         var_158 = var_148 & var_138 
  loc_188B86E:         var_E0 = "',"
  loc_188B8AA:         var_2F4 = var_158 & var_E0 & var_1C4 & ",'" & CVar(Format$(Time, "HH:mm")) & "','','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" 
  loc_188B900:         var_5FC = var_2F4 & var_438 & "','" & CVar(var_94) & "','" & CVar(CStr(var_4FC)) & "','" & CVar(CStr(var_590)) & "'," & CVar(Val(var_5DC)) 
  loc_188B947:         var_7B0 = var_5FC & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_C60.Text) & ",'" & CVar(global_144) & "'," 
  loc_188B998:         var_938 = var_7B0 & "'" & CVar(global_148) & "',''," & CVar(PTableOrRoomNo) & ",'" & CVar(CStr(var_884)) & "','" & CVar(CStr(var_918)) 
  loc_188B9EF:         var_BEC = var_938 & "','" & CVar(CStr(var_958)) & "'," & var_A20 & "," & var_AC4 & "," & var_B78 & ",'" & CVar(MemVar_1F950C8) 
  loc_188BA48:         var_DD4 = var_BEC & "'," & var_C70 & ",'A','" & CVar(global_52) & "','" & var_D24 & "'," & var_DA4 & ",'" & CVar(MemVar_1F95078) 
  loc_188BA5F:         unk_55E2D7.Execute CStr(var_DD4 & "')"), var_E14, -1
  loc_188BBA1:       End If
  loc_188BBA1:     End If
  loc_188BBA1:   End If
  loc_188BBA4: Next var_180 'Integer
  loc_188BBAE: Set var_98 = Nothing
  loc_188BBB6: Set var_9C = Nothing
  loc_188BBBE: Set var_A0 = Nothing
  loc_188BBC6: Set var_A4 = Nothing
  loc_188BBCE: Set var_CC = Nothing
  loc_188BBD7: unk_55E2D7.CommitTrans
  loc_188BBDC: Call Proc_137_90_1C61B4C()
  loc_188BBE5: var_86 = CByte(0) 'Byte
  loc_188BBEF: var_1030 = global_112
  loc_188BBFB: If (var_1030 = 6) Then
  loc_188BC0C:   var_E0 = "Want Print Receipt ?"
  loc_188BC2D:   If (MsgBox(var_E0, &H24, var_138, var_148, var_158) = 6) Then
  loc_188BC3E:     Set var_114 = Me.Txt
  loc_188BC44:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160)
  loc_188BC57:     Call 0.Method_arg_50 (var_128)
  loc_188BC73:     Proc_263_2_12EC834(var_160.Text, "W")
  loc_188BC88:   End If
  loc_188BC88: End If
  loc_188BC99: If (OpenMode = 1) Then
  loc_188BCA9:   Me.Global.Unload Me
  loc_188BCB1:   Exit Sub
  loc_188BCB2: End If
  loc_188BCBD: Me.Requery -1
  loc_188BCCD: Me.Requery -1
  loc_188BCF1: Set var_114 = Me.Txt
  loc_188BCF7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_128, "SearchCode='", 0)
  loc_188BCFF: 1 = var_160.Text
  loc_188BD18: Me.Find var_E0 & var_128 & "'", var_128, var_1030
  loc_188BD31: Set var_114 = Me.TopCtrl1
  loc_188BD37: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_188BD50: If (CStr() = "Add") Then
  loc_188BD53:   Call TopCtrl1_UnknownEvent_A()
  loc_188BD58:   Exit Sub
  loc_188BD59: End If
  loc_188BD6E: var_128 = "INI"
  loc_188BD7C: Call Proc_137_73_F77628(Proc_5_1_100EC1C(var_128, Me))
  loc_188BD87: Call Proc_137_78_FB8E04(global_60)
  loc_188BD8C: Call Proc_137_76_154F7E0()
  loc_188BD91: Exit Sub
  loc_188BD92: ' Referenced from: 1889938
  loc_188BD9B: If (CInt(var_86) = 1) Then
  loc_188BDA4:   unk_55E2D7.RollbackTrans
  loc_188BDA9: End If
  loc_188BDB1: Set var_114 = Err()
  loc_188BDB7: Call 0.Method_arg_2C (var_128)
  loc_188BDD0: MsgBox(CVar(var_128), &H10, var_138, var_148, var_158)
  loc_188BDE3: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_9 'F55960
  'Data Table: 55E2B8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F55840: On Error Goto loc_F5595A
  loc_F55852: Me.DGTable.Visible = False
  loc_F55871: If (Me.RecordCount > 0) Then
  loc_F558B0:   Set var_B4 = Me.Txt
  loc_F558B6:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(4), var_B8)
  loc_F558BE:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F558F1:   var_B0 = Me.Fields.Item("Code")
  loc_F55910:   Set var_B4 = Me.Txt
  loc_F55916:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(4), var_B8)
  loc_F5591E:   var_B8.Tag = CStr(var_B0.Value)
  loc_F55934: End If
  loc_F5593F: Set var_A8 = Me.Txt
  loc_F55945: Call 0.Method_DGTable_UnknownEvent_90 (CInt(4))
  loc_F5594D: var_B0.SetFocus
  loc_F55959: Exit Sub
  loc_F5595A: ' Referenced from: F55840
  loc_F5595A: Proc_6_60_E63754(var_B0)
  loc_F5595F: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'EA2ACC
  'Data Table: 55E2B8
  Dim var_A8 As Variant
  loc_EA2A4C: Set var_88 = Me.DGTable
  loc_EA2A76: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA2A7E: Set var_BC = Me.DGTable
  loc_EA2ABA: Proc_6_138_106E830(Me.DGTable, global_72, CInt(4), Me.FGPoint)
  loc_EA2AC8: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_9 'F4CAB4
  'Data Table: 55E2B8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4C9AB: Me.DGEmp.Visible = False
  loc_F4C9CA: If (Me.RecordCount > 0) Then
  loc_F4CA09:   Set var_B4 = Me.Txt
  loc_F4CA0F:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F4CA17:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4CA4A:   var_B0 = Me.Fields.Item("Code")
  loc_F4CA69:   Set var_B4 = Me.Txt
  loc_F4CA6F:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F4CA77:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4CA8D: End If
  loc_F4CA98: Set var_A8 = Me.Txt
  loc_F4CA9E: Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H10))
  loc_F4CAA6: var_B0.SetFocus
  loc_F4CAB2: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_1F 'EA4AF4
  'Data Table: 55E2B8
  Dim var_A8 As Variant
  loc_EA4A74: Set var_88 = Me.DGEmp
  loc_EA4A9E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA4AA6: Set var_BC = Me.DGEmp
  loc_EA4AE2: Proc_6_138_106E830(Me.DGEmp, global_68, CInt(&H10), Me.FGPoint)
  loc_EA4AF0: Exit Sub
End Sub

Private Sub CmdPrint_UnknownEvent_9 'EBA21C
  'Data Table: 55E2B8
  Dim var_9C As TextBox
  Dim var_88 As Variant
  loc_EBA194: Set var_88 = Me.CmdPrint
  loc_EBA19A: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_69()
  loc_EBA1AB: If (CInt() = 1) Then
  loc_EBA1BC:   Set var_88 = Me.Txt
  loc_EBA1C2:   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(0), var_9C)
  loc_EBA1D5:   Call 0.Method_arg_50 (var_A0)
  loc_EBA1F1:   Proc_263_2_12EC834(var_9C.Text, "W")
  loc_EBA213:   Me.Global.Unload Me
  loc_EBA21B: End If
  loc_EBA21B: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_9 'F3F174
  'Data Table: 55E2B8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3F06B: Me.DGMember.Visible = False
  loc_F3F08A: If (Me.RecordCount > 0) Then
  loc_F3F0C9:   Set var_B4 = Me.Txt
  loc_F3F0CF:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F3F0D7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3F10A:   var_B0 = Me.Fields.Item("Code")
  loc_F3F129:   Set var_B4 = Me.Txt
  loc_F3F12F:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F3F137:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3F14D: End If
  loc_F3F158: Set var_A8 = Me.Txt
  loc_F3F15E: Call 0.Method_DGMember_UnknownEvent_90 (CInt(&HF))
  loc_F3F166: var_B0.SetFocus
  loc_F3F172: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_1F 'EA2D18
  'Data Table: 55E2B8
  Dim var_A8 As Variant
  loc_EA2C98: Set var_88 = Me.DGMember
  loc_EA2CC2: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA2CCA: Set var_BC = Me.DGMember
  loc_EA2D06: Proc_6_138_106E830(Me.DGMember, global_84, CInt(&HF), Me.FGPoint)
  loc_EA2D14: Exit Sub
End Sub

Private Sub HeadExit_UnknownEvent_9 'E1C798
  'Data Table: 55E2B8
  loc_E1C78D: Me.Global.Unload Me
  loc_E1C795: Exit Sub
End Sub

Private Sub Form_Load() '135D64C
  'Data Table: 55E2B8
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_C8 As Variant
  Dim var_B8 As String
  Dim var_CC As String
  Dim unk_55E2D7 As Connection15
  Dim var_D4 As String
  Dim var_DC As Long
  Dim var_D0 As Variant
  Dim Me As Recordset15
  loc_135CE18: On Error Goto loc_135D606
  loc_135CE22: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_135CE35: Me.FrCCDet.BackColor = CLng(MemVar_1F951B4)
  loc_135CE4B: Me.FrChqDet.BackColor = CLng(MemVar_1F951B4)
  loc_135CE61: Me.FrTxnNo.BackColor = CLng(MemVar_1F951B4)
  loc_135CE77: Me.FrComp.BackColor = CLng(MemVar_1F951B4)
  loc_135CE8D: Me.FrMem.BackColor = CLng(MemVar_1F951B4)
  loc_135CEA3: Me.FrSendRoom.BackColor = CLng(MemVar_1F951B4)
  loc_135CEB9: Me.FrEmp.BackColor = CLng(MemVar_1F951B4)
  loc_135CECF: Me.FrRem.BackColor = CLng(MemVar_1F951B4)
  loc_135CEE5: Me.FrRest.BackColor = CLng(MemVar_1F951B4)
  loc_135CF00: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_135CF1B: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_135CF2D: Set var_94 = Me.TopCtrl1
  loc_135CF33: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000B("AEDP")
  loc_135CF41: Call 0.Method_arg_50 (var_B8)
  loc_135CF49: var_C8 = CVar(var_B8) 'String
  loc_135CF51: Set var_94 = Me.TopCtrl1
  loc_135CF57: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030007(var_C8)
  loc_135CF9E: unk_55E2D7.Execute "Select * from Enviro where Logsite_code='" & MemVar_1F95078 & "'", var_C8, -1
  loc_135CFA9: Set var_90 = var_94
  loc_135CFCD: var_B8 = "SELECT DP.PayCode as code, RevMast.name as Name, revMast.PayType as PayType FROM DepartPay as DP LEFT OUTER JOIN RevMast ON DP.PayCode = RevMast.code where (DP.LOGSITE_CODE='" & MemVar_1F95078
  loc_135CFDD: unk_55E2D7.Execute var_B8 & "') AND DP.restcode='BANQ' ORDER BY NAME ", var_C8, -1
  loc_135CFEE: Set global_64 = var_94
  loc_135D00C: CVarUnk
  loc_135D011: VerifyVarObj
  loc_135D01D: LateIdStAd
  loc_135D041: unk_55E2D7.Execute "SELECT Code,Name FROM Employee ORDER BY Name", var_C8, -1
  loc_135D069: CVarUnk
  loc_135D06E: VerifyVarObj
  loc_135D07A: LateIdStAd
  loc_135D09C: var_B8 = "Select T.Type+t.RoomCat+space(5-len(T.RoomCat))+Code+space(5-len(Code)) as Code,T.Code As Name,RoomOcc.FolioNO From RoomMast T inner join RoomOcc on (RoomOcc.RoomNo=T.Code and RoomOcc.LogSite_Code=T.LogSite_Code) where T.LogSite_Code in ('" & MemVar_1F95078
  loc_135D0AC: unk_55E2D7.Execute var_B8 & "','HO') and T.Type in ('RO') and RoomOcc.ChkoutDate is NULL Order By T.Code", var_C8, -1
  loc_135D0DB: CVarUnk
  loc_135D0E0: VerifyVarObj
  loc_135D0EC: LateIdStAd
  loc_135D115: var_CC = "Select SubCode as Code,Name From SubGroup where LogSite_Code in ('" & MemVar_1F95078 & "','HO') and CompanyType in ('Corporate','Travel Agency') Order By Name"
  loc_135D11E: unk_55E2D7.Execute var_CC, var_C8, -1
  loc_135D14D: CVarUnk
  loc_135D152: VerifyVarObj
  loc_135D15E: LateIdStAd
  loc_135D187: var_CC = "Select SubCode as Code,Name,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='"
  loc_135D19E: unk_55E2D7.Execute var_CC & MemVar_1F95078 & "') Order By Name", var_C8, -1
  loc_135D1D1: CVarUnk
  loc_135D1D6: VerifyVarObj
  loc_135D1DC: Set var_94 = Me.DGMember
  loc_135D1E2: LateIdStAd
  loc_135D1FC: Call 0.Method_arg_38 (MemVar_1F953B0, var_94, Me.DGCompany, var_94, var_94, Me.DGRoom, var_94, var_94)
  loc_135D20D: Call 0.Method_arg_3C (MemVar_1F950EC, Me.DGEmp, var_94, var_94)
  loc_135D21E: Call 0.Method_arg_54 (MemVar_1F9506C, Me.DGPayType, var_94)
  loc_135D22F: Call 0.Method_arg_1C (MemVar_1F95070, var_94)
  loc_135D240: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_135D251: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_135D262: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_135D273: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_135D284: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_135D295: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_135D2AF: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_135D2BD: Set var_94 = MemVar_1F95044
  loc_135D2CC: Call 0.Method_Form_Load8 (var_94)
  loc_135D2E2: Me.DGMember.Clone
  loc_135D2ED: Set var_D0 = var_94
  loc_135D2FC: Call 0.Method_arg_50 (var_D0, -1)
  loc_135D30E: var_DC = global_112
  loc_135D31A: If (var_DC = 6) Then
  loc_135D342:   var_D4 = "SELECT Distinct Docid as SearchCode FROM PAYCHARGEH Where LogSite_Code in ('" & MemVar_1F95078 & "') and Vtype='" & hAdvanceDepDialog.AdvType
  loc_135D352:   Me.Connection15.Execute var_D4 & "'", var_C8, -1
  loc_135D363:   Set global_60 = var_94
  loc_135D37C: End If
  loc_135D388: Set var_94 = Me
  loc_135D39F: Call Proc_137_73_F77628(Proc_5_1_100EC1C("INI", var_94, global_60, var_94), var_DC)
  loc_135D3AA: Call Proc_137_75_121EB70(var_94)
  loc_135D3AF: Call Proc_137_81_120D47C(global_64)
  loc_135D3C0: If (global_108 = 2) Then
  loc_135D3C3:   Call Proc_137_76_154F7E0()
  loc_135D3C8: End If
  loc_135D3D4: If (global_108 = 1) Then
  loc_135D3E0:   Set var_94 = Me.TopCtrl1
  loc_135D3E6:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010007(False)
  loc_135D3FB:   Set var_94 = Me.Txt
  loc_135D401:   Call 0.Method_Form_Load0 (CInt(0), var_D0)
  loc_135D409:   var_D0.Visible = False
  loc_135D415:   Call TopCtrl1_UnknownEvent_A()
  loc_135D431:   If (Me.RecordCount > 0) Then
  loc_135D43A:     Me.MoveFirst
  loc_135D467:     Me.Find "SearchCode='" & global_124 & "'", 0, 1
  loc_135D487:     If (Me.EOF = 0) Then
  loc_135D48A:       var_A4 = "Edit"
  loc_135D494:       Set var_94 = Me.TopCtrl1
  loc_135D49A:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_A4)
  loc_135D4A2:       Call Proc_137_76_154F7E0(var_A4)
  loc_135D4AD:       Call Proc_137_83_11AEBD8(global_152)
  loc_135D4B2:     End If
  loc_135D4B2:   End If
  loc_135D4C3:   Set var_94 = Me.Txt
  loc_135D4C9:   Call 0.Method_Form_Load0 (CInt(0), var_D0)
  loc_135D4D1:   var_D0.Text = global_124
  loc_135D511:   Set var_94 = Me.Txt
  loc_135D517:   Call 0.Method_Form_Load0 (CInt(1), var_D0)
  loc_135D51F:   var_D0.Text = CStr(Val(CStr(Right(global_124, 8))))
  loc_135D563:   Me.LblVPrefix.Caption = CStr(Mid(global_124, 9, 5))
  loc_135D58B:   Set var_94 = Me.LTxt
  loc_135D591:   Call 0.Method_Form_Load0 (CInt(&H13), var_D0)
  loc_135D599:   var_D0.Caption = PBillAmt
  loc_135D5AE:   var_B8 = hAdvanceDepDialog.PersonCode
  loc_135D5C1:   Set var_94 = Me.Txt
  loc_135D5C7:   Call 0.Method_Form_Load0 (CInt(4), var_D0)
  loc_135D5CF:   var_D0.Text = var_B8
  loc_135D5DE: End If
  loc_135D5DE: Call Proc_137_86_10A8A28()
  loc_135D5E8: Set var_8C = Nothing
  loc_135D5F3: Call 0.Method_MeC (CDbl(9200))
  loc_135D600: Call 0.Method_Me4 (CDbl(7600))
  loc_135D605: Exit Sub
  loc_135D606: ' Referenced from: 135CE18
  loc_135D60E: Set var_94 = Err()
  loc_135D614: Call 0.Method_arg_2C (var_B8)
  loc_135D635: MsgBox(CVar(var_B8), &H40, "Information", var_104, var_124)
  loc_135D648: Exit Sub
  loc_135D649: Exit Sub
End Sub

Private Sub Form_Resize() 'E724E4
  'Data Table: 55E2B8
  loc_E7248E: Call 0.Method_arg_50 (var_88)
  loc_E724A0: Me.LblFormCaption.Caption = var_88
  loc_E724B9: Me.LblFormCaption.Left = CDbl(0)
  loc_E724C7: Call 0.Method_arg_100 (var_90)
  loc_E724D9: Me.LblFormCaption.Width = var_90
  loc_E724E1: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6DD48
  'Data Table: 55E2B8
  loc_E6DCF7: Set global_72 = Nothing
  loc_E6DD09: Set global_60 = Nothing
  loc_E6DD1B: Set global_64 = Nothing
  loc_E6DD2D: Set global_68 = Nothing
  loc_E6DD3F: Set global_84 = Nothing
  loc_E6DD46: Exit Sub
End Sub

Private Sub Form_Activate() 'F7BD70
  'Data Table: 55E2B8
  Dim var_90 As Long
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_C8 As TextBox
  Dim var_94 As Frame
  loc_F7BC3F: If (OpenMode = 1) Then
  loc_F7BC45:   var_88 = OpenType
  loc_F7BC4D:   var_90 = var_88
  loc_F7BC59:   If Not (var_90 = 5) Then
  loc_F7BC65:     If (var_90 = 6) Then
  loc_F7BC68:     End If
  loc_F7BC73:     Set var_94 = Me.Txt
  loc_F7BC79:     Call 0.Method_Form_Activate0 (CInt(3), var_98)
  loc_F7BC81:     var_98.SetFocus
  loc_F7BC9B:     Set var_94 = Me.Txt
  loc_F7BCA1:     Call 0.Method_Form_Activate0 (CInt(3), var_98, var_88)
  loc_F7BCA9:     var_90 = var_98.Left
  loc_F7BCBA:     Set var_BC = Me.DGPayType
  loc_F7BCC0:     var_BC.Left = CVar(var_88)
  loc_F7BCDC:     Set var_98 = Me.Txt
  loc_F7BCE2:     Call 0.Method_Form_Activate0 (CInt(3), var_BC)
  loc_F7BCFD:     Set var_C4 = Me.Txt
  loc_F7BD03:     Call 0.Method_Form_Activate0 (CInt(3), var_C8)
  loc_F7BD31:     var_A8 = CVar((((Me.FrRest.Top + var_BC.Top) + var_C8.Height) + CDbl(&HF))) 'Single
  loc_F7BD40:     Me.DGPayType.Top = CVar(Me.FrRest.Top)
  loc_F7BD54:   End If
  loc_F7BD5C:   Call 0.Method_arg_7C (CDbl(1450))
  loc_F7BD69:   Call 0.Method_arg_74 (CDbl(1600))
  loc_F7BD6E: End If
  loc_F7BD6E: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'EFF1AC
  'Data Table: 55E2B8
  Dim var_B4 As DataGrid
  loc_EFF0F4: If ((OpenMode = 1) And (CLng(KeyCode) = &H1B)) Then
  loc_EFF128:   Set var_B4 = Me.DGEmp
  loc_EFF14D:   If (((CBool(Me.DGTable.Visible) = 0) And (CBool(Me.DGPayType.Visible) = 0)) And (CBool(var_B4.Visible) = 0)) Then
  loc_EFF15D:     Me.var_B4.Unload Me
  loc_EFF165:     Exit Sub
  loc_EFF166:   End If
  loc_EFF166: End If
  loc_EFF184: If (((CLng(KeyCode) = &H53) And (Shift = 2)) And (global_108 = 1)) Then
  loc_EFF187:   Call TopCtrl1_UnknownEvent_16()
  loc_EFF18C:   Exit Sub
  loc_EFF18D: End If
  loc_EFF1A1: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_EFF1A9: Exit Sub
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'E20300
  'Data Table: 55E2B8
  loc_E202F1: Set var_A8 = Me.cmdDelete
  loc_E202F7: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_2E(&HFF0000)
  loc_E202FF: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F3FB14
  'Data Table: 55E2B8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3FA0B: Me.DGRoom.Visible = False
  loc_F3FA2A: If (Me.RecordCount > 0) Then
  loc_F3FA69:   Set var_B4 = Me.Txt
  loc_F3FA6F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F3FA77:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3FAAA:   var_B0 = Me.Fields.Item("Code")
  loc_F3FAC9:   Set var_B4 = Me.Txt
  loc_F3FACF:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F3FAD7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3FAED: End If
  loc_F3FAF8: Set var_A8 = Me.Txt
  loc_F3FAFE: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&HD))
  loc_F3FB06: var_B0.SetFocus
  loc_F3FB12: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_1F 'EA2A08
  'Data Table: 55E2B8
  Dim var_A8 As Variant
  loc_EA2988: Set var_88 = Me.DGRoom
  loc_EA29B2: var_A8 = CVar(CInt(Fix(((Y - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA29BA: Set var_BC = Me.DGRoom
  loc_EA29F6: Proc_6_138_106E830(Me.DGRoom, global_76, CInt(&HD), Me.FGPoint)
  loc_EA2A04: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_9 'F3DE34
  'Data Table: 55E2B8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3DD2B: Me.DGCompany.Visible = False
  loc_F3DD4A: If (Me.RecordCount > 0) Then
  loc_F3DD89:   Set var_B4 = Me.Txt
  loc_F3DD8F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F3DD97:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3DDCA:   var_B0 = Me.Fields.Item("Code")
  loc_F3DDE9:   Set var_B4 = Me.Txt
  loc_F3DDEF:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F3DDF7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3DE0D: End If
  loc_F3DE18: Set var_A8 = Me.Txt
  loc_F3DE1E: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HE))
  loc_F3DE26: var_B0.SetFocus
  loc_F3DE32: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_1F 'EA2B90
  'Data Table: 55E2B8
  Dim var_A8 As Variant
  loc_EA2B10: Set var_88 = Me.DGCompany
  loc_EA2B3A: var_A8 = CVar(CInt(Fix(((Y - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA2B42: Set var_BC = Me.DGCompany
  loc_EA2B7E: Proc_6_138_106E830(Me.DGCompany, global_80, CInt(&HE), Me.FGPoint)
  loc_EA2B8C: Exit Sub
  loc_EA2B8D: EraseDestruct
End Sub

Private Sub CmdDelete_UnknownEvent_0 'E20940
  'Data Table: 55E2B8
  loc_E20931: Set var_A8 = Me.cmdDelete
  loc_E20937: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_2E(&HFF)
  loc_E2093F: Exit Sub
End Sub

Private Sub CmdDelete_UnknownEvent_1 'E20800
  'Data Table: 55E2B8
  loc_E207F1: Set var_A8 = Me.cmdDelete
  loc_E207F7: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_2E(&HFF0000)
  loc_E207FF: Exit Sub
End Sub

Private Sub CmdDelete_UnknownEvent_9 'E5EAC4
  'Data Table: 55E2B8
  loc_E5EA80: Set var_88 = Me.cmdDelete
  loc_E5EA86: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_69()
  loc_E5EA97: If (CInt() = 1) Then
  loc_E5EA9A:   Call Proc_137_77_11367E8()
  loc_E5EAA9:   Set var_88 = Me.cmdDelete
  loc_E5EAAF:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_69(0)
  loc_E5EAB7:   Call Proc_137_74_F99164()
  loc_E5EABC:   Call Form_Load()
  loc_E5EAC1: End If
  loc_E5EAC1: Exit Sub
End Sub

Private Sub CmdDelete_UnknownEvent_C 'E20440
  'Data Table: 55E2B8
  loc_E20431: Set var_A8 = Me.cmdDelete
  loc_E20437: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_2E(&HFF)
  loc_E2043F: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EF9C5C
  'Data Table: 55E2B8
  loc_EF9B9C: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_EF9B9F:   Call DGTable_UnknownEvent_9()
  loc_EF9BA4: End If
  loc_EF9BC0: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_EF9BC3:   Call DGEmp_UnknownEvent_9()
  loc_EF9BC8: End If
  loc_EF9BE4: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_EF9BE7:   Call DGPayType_UnknownEvent_9()
  loc_EF9BEC: End If
  loc_EF9C08: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_EF9C0B:   Call DGRoom_UnknownEvent_9()
  loc_EF9C10: End If
  loc_EF9C2C: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_EF9C2F:   Call DGCompany_UnknownEvent_9()
  loc_EF9C34: End If
  loc_EF9C50: If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_EF9C53:   Call DGMember_UnknownEvent_9()
  loc_EF9C58: End If
  loc_EF9C58: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_9 'F65E6C
  'Data Table: 55E2B8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_BC As TextBox
  loc_F65D4F: Me.DGPayType.Visible = False
  loc_F65D69: If (global_112 = 6) Then
  loc_F65D83:   If (Me.RecordCount > 0) Then
  loc_F65DC2:     Set var_B8 = Me.Txt
  loc_F65DC8:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_BC)
  loc_F65DD0:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F65E03:     var_B4 = Me.Fields.Item("Code")
  loc_F65E22:     Set var_B8 = Me.Txt
  loc_F65E28:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_BC)
  loc_F65E30:     var_BC.Tag = CStr(var_B4.Value)
  loc_F65E46:   End If
  loc_F65E51:   Set var_A8 = Me.Txt
  loc_F65E57:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_B4)
  loc_F65E5F:   var_B4.SetFocus
  loc_F65E6B: End If
  loc_F65E6B: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'EA27BC
  'Data Table: 55E2B8
  Dim var_A8 As Variant
  loc_EA273C: Set var_88 = Me.DGPayType
  loc_EA2766: var_A8 = CVar(CInt(Fix(((Y - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA276E: Set var_BC = Me.DGPayType
  loc_EA27AA: Proc_6_138_106E830(Me.DGPayType, global_64, CInt(3), Me.FGPoint)
  loc_EA27B8: Exit Sub
End Sub

Public Function global_52Get() '560140
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '56014F
  global_52 = Value
End Sub

Public Function global_56Get() '56015E
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '56016D
  global_56 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC6134
  'Data Table: 55E2B8
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC60AA: On Error Goto loc_EC60EF
  loc_EC60B3: Me.MoveFirst
  loc_EC60CD: var_8C = "Searchcode='" & MyValue
  loc_EC60DD: Me.Find var_8C & "'", 0, 1
  loc_EC60E9: Call Proc_137_76_154F7E0(var_A0)
  loc_EC60EE: Exit Sub
  loc_EC60EF: ' Referenced from: EC60AA
  loc_EC60F7: Set var_A4 = Err()
  loc_EC60FD: Call 0.Method_arg_2C (var_8C)
  loc_EC611E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC6131: Exit Sub
  loc_EC6132: Exit Sub
End Sub

Public Property Get OpenMode() 'E08A10
  'Data Table: 55E2B8
  loc_E08A09: OpenMode = global_108
End Sub

Public Property Let OpenMode(vNewValue) 'E016A8
  'Data Table: 55E2B8
  loc_E016A2: global_108 = vNewValue
  loc_E016A5: Exit Sub
End Sub

Public Property Get OpenType() 'E089D0
  'Data Table: 55E2B8
  loc_E089C9: OpenType = global_112
End Sub

Public Property Let OpenType(vNewValue) 'E01B1C
  'Data Table: 55E2B8
  loc_E01B16: global_112 = vNewValue
  loc_E01B19: Exit Sub
End Sub

Public Property Get AdvType() 'E11CC4
  'Data Table: 55E2B8
  loc_E11CB8: var_88 = global_120
  loc_E11CBB: AdvType = 
End Sub

Public Property Let AdvType(vNewValue) 'E11D54
  'Data Table: 55E2B8
  loc_E11D4C: global_120 = vNewValue
  loc_E11D50: Exit Sub
End Sub

Public Property Get IdNo() 'E11DE4
  'Data Table: 55E2B8
  loc_E11DD8: var_88 = global_116
  loc_E11DDB: IdNo = 
End Sub

Public Property Let IdNo(vNewValue) 'E11E2C
  'Data Table: 55E2B8
  loc_E11E24: global_116 = vNewValue
  loc_E11E28: Exit Sub
End Sub

Public Property Get PersonCode() 'E11F94
  'Data Table: 55E2B8
  loc_E11F88: var_88 = global_128
  loc_E11F8B: PersonCode = 
End Sub

Public Property Let PersonCode(vNewValue) 'E1206C
  'Data Table: 55E2B8
  loc_E12064: global_128 = vNewValue
  loc_E12068: Exit Sub
End Sub

Public Property Get pDocId() 'E1218C
  'Data Table: 55E2B8
  loc_E12180: var_88 = global_124
  loc_E12183: pDocId = 
End Sub

Public Property Let pDocId(vNewValue) 'E121D4
  'Data Table: 55E2B8
  loc_E121CC: global_124 = vNewValue
  loc_E121D0: Exit Sub
End Sub

Public Property Get PTableOrRoomNo() 'E12264
  'Data Table: 55E2B8
  loc_E12258: var_88 = global_132
  loc_E1225B: PTableOrRoomNo = 
End Sub

Public Property Let PTableOrRoomNo(vNewValue) 'E122F4
  'Data Table: 55E2B8
  loc_E122EC: global_132 = vNewValue
  loc_E122F0: Exit Sub
End Sub

Public Property Get PRoomCat() 'E12384
  'Data Table: 55E2B8
  loc_E12378: var_88 = global_156
  loc_E1237B: PRoomCat = 
End Sub

Public Property Let PRoomCat(vNewValue) 'E123CC
  'Data Table: 55E2B8
  loc_E123C4: global_156 = vNewValue
  loc_E123C8: Exit Sub
End Sub

Public Property Get PRoomtype() 'E12414
  'Data Table: 55E2B8
  loc_E12408: var_88 = global_160
  loc_E1240B: PRoomtype = 
End Sub

Public Property Let PRoomtype(vNewValue) 'E1245C
  'Data Table: 55E2B8
  loc_E12454: global_160 = vNewValue
  loc_E12458: Exit Sub
End Sub

Public Property Get PBillAmt() 'E1257C
  'Data Table: 55E2B8
  loc_E12572: var_88 = CStr(global_136)
  loc_E12575: PBillAmt = 
End Sub

Public Property Let PBillAmt(vNewValue) 'E126E4
  'Data Table: 55E2B8
  loc_E126DE: global_136 = CDbl(vNewValue)
  loc_E126E1: Exit Sub
End Sub

Public Sub Proc_137_73_F77628(arg_C) 'F77628
  'Data Table: 55E2B8
  Dim var_98 As TextBox
  loc_F774E6: Set var_8C = Me.Txt
  loc_F774EC: Call 0.Method_Proc_137_73_F776288 (var_8E, var_86)
  loc_F774FC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F77529:   If ((((CInt(var_86) <> &H13) And (CInt(var_86) <> &H14)) And (CInt(var_86) <> &H15)) And (CInt(var_86) <> &H16)) Then
  loc_F7753C:     Set var_8C = Me.Txt
  loc_F77542:     Call 0.Method_Proc_137_73_F776280 (CInt(var_86), var_98)
  loc_F7754A:     var_98.Enabled = arg_C
  loc_F77556:   End If
  loc_F77559: Next var_92 'Byte
  loc_F7756B: If (global_108 = 1) Then
  loc_F7757B:   Set var_8C = Me.Txt
  loc_F77581:   Call 0.Method_Proc_137_73_F776280 (CInt(1), var_98)
  loc_F77589:   var_98.Enabled = False
  loc_F77595: End If
  loc_F775A2: Set var_8C = Me.Txt
  loc_F775A8: Call 0.Method_Proc_137_73_F776280 (CInt(2), var_98)
  loc_F775B0: var_98.Enabled = True
  loc_F775C9: Set var_8C = Me.Txt
  loc_F775CF: Call 0.Method_Proc_137_73_F776280 (CInt(0), var_98)
  loc_F775D7: var_98.Enabled = False
  loc_F775FA: If (OpenMode = 1) Then
  loc_F7760A:   Set var_8C = Me.Txt
  loc_F77610:   Call 0.Method_Proc_137_73_F776280 (CInt(4), var_98)
  loc_F77618:   var_98.Enabled = False
  loc_F77624:   GoTo loc_F77627
  loc_F77627:   ' Referenced from: F77624
  loc_F77627: End If
  loc_F77627: Exit Sub
End Sub

Public Sub Proc_137_74_F99164
  'Data Table: 55E2B8
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_8C As MSHFlexGrid
  loc_F98FF6: Set var_8C = Me.Txt
  loc_F98FFC: Call 0.Method_Proc_137_74_F99164C (var_8E, var_86)
  loc_F9900C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F99039:   If ((((CInt(var_86) <> &H13) And (CInt(var_86) <> &H14)) And (CInt(var_86) <> &H15)) And (CInt(var_86) <> &H16)) Then
  loc_F9904C:     Set var_8C = Me.Txt
  loc_F99052:     Call 0.Method_Proc_137_74_F991640 (CInt(var_86), var_98)
  loc_F9905A:     var_98.Text = vbNullString
  loc_F99076:     Set var_8C = Me.Txt
  loc_F9907C:     Call 0.Method_Proc_137_74_F991640 (CInt(var_86), var_98)
  loc_F99084:     var_98.Tag = vbNullString
  loc_F99090:   End If
  loc_F99093: Next var_92 'Byte
  loc_F990AC: Me.FGrid.Rows = 1
  loc_F990B4: var_A8 = "1"
  loc_F990BE: Set var_8C = Me.FGrid
  loc_F990E2: Me.FGrid.FixedRows = 1
  loc_F990F8: Set var_8C = Me.LTxt
  loc_F990FE: Call 0.Method_Proc_137_74_F991640 (CInt(&H13), var_98, vbNullString)
  loc_F99106: var_98.Caption = FGrid.DispID_10000
  loc_F99120: Set var_8C = Me.LTxt
  loc_F99126: Call 0.Method_Proc_137_74_F991640 (CInt(&H14), var_98)
  loc_F9912E: var_98.Caption = vbNullString
  loc_F99148: Set var_8C = Me.LTxt
  loc_F9914E: Call 0.Method_Proc_137_74_F991640 (CInt(&H15), var_98)
  loc_F99156: var_98.Caption = vbNullString
  loc_F99162: Exit Sub
End Sub

Public Sub Proc_137_75_121EB70
  'Data Table: 55E2B8
  Dim var_A0 As Variant
  loc_121E67F: Me.FrRest.Top = CDbl(915)
  loc_121E695: Me.FrRest.Left = CDbl(0)
  loc_121E6B4: If (OpenType = 6) Then
  loc_121E6CA:   Me.FGrid.Top = CVar(CDbl(2880))
  loc_121E6D2: End If
  loc_121E6E4: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_121E722: Me.FrChqDet.Top = (Me.FrRest.Top + Me.FrRest.Height)
  loc_121E73F: Me.FrChqDet.Left = CDbl(240)
  loc_121E77D: Me.FrTxnNo.Top = (Me.FrRest.Top + Me.FrRest.Height)
  loc_121E79A: Me.FrTxnNo.Left = CDbl(240)
  loc_121E7D8: Me.FrCCDet.Top = (Me.FrRest.Top + Me.FrRest.Height)
  loc_121E7F5: Me.FrCCDet.Left = CDbl(240)
  loc_121E81F: Me.DGPayType.Top = CVar(CDbl(Me.FGrid.Top))
  loc_121E850: Me.DGPayType.Height = CVar(CDbl(Me.FGrid.Height))
  loc_121E88D: var_A0 = CVar((Me.FrRest.Top + CDbl(Me.FGrid.Top))) 'Single
  loc_121E89C: Me.DGTable.Top = CVar(CDbl(Me.FGrid.Height))
  loc_121E8CF: Me.DGTable.Height = CVar(CDbl(Me.FGrid.Height))
  loc_121E914: Me.FrSendRoom.Top = (Me.FrRest.Top + Me.FrRest.Height)
  loc_121E931: Me.FrSendRoom.Left = CDbl(240)
  loc_121E96F: Me.FrEmp.Top = (Me.FrRest.Top + Me.FrRest.Height)
  loc_121E98C: Me.FrEmp.Left = CDbl(240)
  loc_121E9CA: Me.FrComp.Top = (Me.FrRest.Top + Me.FrRest.Height)
  loc_121E9E7: Me.FrComp.Left = CDbl(240)
  loc_121EA25: Me.FrMem.Top = (Me.FrRest.Top + Me.FrRest.Height)
  loc_121EA42: Me.FrMem.Left = CDbl(240)
  loc_121EA5D: Me.DGRoom.Top = CVar(CDbl(405))
  loc_121EA78: Me.DGRoom.Left = CVar(CDbl(5415))
  loc_121EA93: Me.DGEmp.Top = CVar(CDbl(405))
  loc_121EAAE: Me.DGEmp.Left = CVar(CDbl(5550))
  loc_121EAC9: Me.DGCompany.Top = CVar(CDbl(405))
  loc_121EAE4: Me.DGCompany.Left = CVar(CDbl(5550))
  loc_121EAF8: If (global_112 = 6) Then
  loc_121EB0A:   Me.FrRem.Width = CDbl(4925)
  loc_121EB12: End If
  loc_121EB48: Me.FrRem.Top = (Me.FrRest.Top + Me.FrRest.Height)
  loc_121EB65: Me.FrRem.Left = CDbl(240)
  loc_121EB6D: Exit Sub
End Sub

Public Sub Proc_137_76_154F7E0
  'Data Table: 55E2B8
  Dim Me As Recordset15
  Dim var_9C As String
  Dim var_A4 As String
  Dim var_A8 As String
  Dim var_B0 As String
  Dim var_EC As Variant
  Dim var_C8 As Variant
  Dim var_B8 As Variant
  Dim var_CC As Field20
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim unk_55E2D7 As Connection15
  Dim var_148 As Variant
  Dim var_144 As Variant
  Dim var_DC As Variant
  Dim var_8E As Integer
  Dim var_160 As Variant
  Dim var_130 As Variant
  Dim var_170 As Long
  Dim var_1A0 As Variant
  Dim var_8C As Recordset15
  loc_154E7E4: On Error Goto loc_154F79B
  loc_154E7ED: Proc_183_45_E5CCA8(global_60)
  loc_154E809: If (Me.RecordCount <= 0) Then
  loc_154E80C:   Call Proc_137_74_F99164()
  loc_154E814: Else
  loc_154E826:   If (global_112 = 6) Then
  loc_154E83D:     var_9C = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName, ST.EmpCode, " & "E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,"
  loc_154E84B:     var_A4 = var_9C & "ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, " & "R.Name AS RoomName, ST.FPNo, ST.CardNo, ST.CardHolder, ST.ChqNo, "
  loc_154E852:     var_A8 = var_A4 & "ST.ChqDate, ST.TxnNo, ST.ExpDate,CC.Name as CompName,CompCode,CC.Name as MemName,CompCode As MemCode FROM ((((PAYCHARGEH AS ST LEFT JOIN "
  loc_154E860:     var_B0 = var_A8 & "GuestProf AS GP ON ST.GuestProf = GP.Code) LEFT JOIN Employee AS E " & "ON ST.EmpCode = E.Code) LEFT JOIN RevMast AS P ON ST.PayCode = P.Code) "
  loc_154E86E:     var_EC = CVar(var_B0 & "LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) " & "AND (ST.RoomNo = R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode where ST.Docid='") 'String
  loc_154E8B5:     unk_55E2D7.Execute CStr(var_EC & Me.Fields.Item("SearchCode").Value & "'"), var_140, -1
  loc_154E8C0:     Set var_88 = var_144
  loc_154E8EC:   End If
  loc_154E920:   global_92 = CStr(Me.Fields.Item("SearchCode").Value)
  loc_154E948:   If (Me.Recordset15.RecordCount > 0) Then
  loc_154E98D:     Call 0.Method_Proc_137_76_154F7E00 (CInt(0), var_148, CStr(Me.Recordset15.Fields.Item("DocID").Value))
  loc_154E995:     var_148.Text = Me.Txt
  loc_154E9E7:     Set var_144 = Me.Txt
  loc_154E9ED:     Call 0.Method_Proc_137_76_154F7E00 (CInt(1), var_148)
  loc_154E9F5:     var_148.Text = CStr(Me.Recordset15.Fields.Item("VNo").Value)
  loc_154EA47:     Set var_144 = Me.Txt
  loc_154EA4D:     Call 0.Method_Proc_137_76_154F7E00 (CInt(2), var_148)
  loc_154EA55:     var_148.Text = CStr(Me.Recordset15.Fields.Item("VDate").Value)
  loc_154EAA6:     Me.LblVPrefix.Caption = CStr(Me.Recordset15.Fields.Item("vPrefix").Value)
  loc_154EAF3:     Set var_144 = Me.Txt
  loc_154EAF9:     Call 0.Method_Proc_137_76_154F7E00 (CInt(7), var_148)
  loc_154EB01:     var_148.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CardNo")))
  loc_154EB15:   End If
  loc_154EB24:   Me.FGrid.Redraw = False
  loc_154EB39:   Set var_B8 = Me.FGrid
  loc_154EB3F:   var_B8.Rows = 1
  loc_154EB49:   var_8E = 1
  loc_154EB63:   If (Me.var_B8.RecordCount > 0) Then
  loc_154EB66:     ' Referenced from:   154F6D7
  loc_154EB78:     If Not(Me.Recordset15.EOF) Then
  loc_154EB7B:       var_C8 = vbNullString
  loc_154EB85:       Set var_B8 = Me.FGrid
  loc_154EB9A:       Set var_150 = Me.FGrid
  loc_154EBA1:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_154EBA6:       var_160 = 0
  loc_154EBDD:       var_EC = CVar(CStr(Me.FGrid.Fields.Item("SNo").Value)) 'String
  loc_154EBE4:       LateIdCallSt
  loc_154EC37:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PayType")), 2, CVar(CLng(var_8E)), var_150, var_EC, 2)) 'String
  loc_154EC3E:       LateIdCallSt
  loc_154EC54:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_154EC59:       var_160 = 1
  loc_154EC90:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("PayCode").Value)) 'String
  loc_154EC97:       LateIdCallSt
  loc_154ECEA:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PayName")), 3, CVar(CLng(var_8E)), var_150, var_EC, 3, CVar(CLng(var_8E)))) 'String
  loc_154ECF1:       LateIdCallSt
  loc_154ED40:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomCat")), 4, CVar(CLng(var_8E)), var_150, var_EC, var_150)) 'String
  loc_154ED47:       LateIdCallSt
  loc_154ED96:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Roomtype")), 5, CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_154ED9D:       LateIdCallSt
  loc_154EDEB:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomNo")), CVar(CLng(6)), CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_154EDF2:       LateIdCallSt
  loc_154EE40:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomName")), CVar(CLng(7)), CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_154EE47:       LateIdCallSt
  loc_154EE7C:       var_130 = CVar(CLng(var_8E)) 'Long
  loc_154EE81:       var_170 = 8
  loc_154EEB2:       var_11C = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_154EEB9:       LateIdCallSt
  loc_154EED3:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_154EEDB:       var_160 = CVar(CLng(9)) 'Long
  loc_154EF0E:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("CardNo").Value)) 'String
  loc_154EF15:       LateIdCallSt
  loc_154EF2F:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_154EF37:       var_160 = CVar(CLng(&HA)) 'Long
  loc_154EF6A:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("CardHolder").Value)) 'String
  loc_154EF71:       LateIdCallSt
  loc_154EFC3:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ExpDate")), CVar(CLng(&HB)), CVar(CLng(var_8E)), var_150, var_EC, CVar(CLng(&HB)), CVar(CLng(var_8E)))) 'String
  loc_154EFCA:       LateIdCallSt
  loc_154F019:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("BatchNo")), &H17, CVar(CLng(var_8E)), var_150, var_EC, var_150)) 'String
  loc_154F020:       LateIdCallSt
  loc_154F06F:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TxnNo")), &H1A, CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_154F076:       LateIdCallSt
  loc_154F08C:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_154F094:       var_160 = CVar(CLng(&HC)) 'Long
  loc_154F0C7:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("ChqNo").Value)) 'String
  loc_154F0CE:       LateIdCallSt
  loc_154F120:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqDate")), CVar(CLng(&HD)), CVar(CLng(var_8E)), var_150, var_EC, CVar(CLng(&HD)), CVar(CLng(var_8E)))) 'String
  loc_154F127:       LateIdCallSt
  loc_154F13D:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_154F145:       var_160 = CVar(CLng(&HE)) 'Long
  loc_154F178:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("Comments").Value)) 'String
  loc_154F17F:       LateIdCallSt
  loc_154F1D1:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("EmpName")), CVar(CLng(&HF)), CVar(CLng(var_8E)), var_150, var_EC, CVar(CLng(&HF)), CVar(CLng(var_8E)))) 'String
  loc_154F1D8:       LateIdCallSt
  loc_154F1EE:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_154F1F6:       var_160 = CVar(CLng(&H10)) 'Long
  loc_154F229:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("EmpCode").Value)) 'String
  loc_154F230:       LateIdCallSt
  loc_154F283:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CompCode")), &H14, CVar(CLng(var_8E)), var_150, var_EC, &H14, CVar(CLng(var_8E)))) 'String
  loc_154F28A:       LateIdCallSt
  loc_154F2D9:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CompName")), &H15, CVar(CLng(var_8E)), var_150, var_EC, var_150)) 'String
  loc_154F2E0:       LateIdCallSt
  loc_154F32F:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("MemCode")), &H18, CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_154F336:       LateIdCallSt
  loc_154F385:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("MemName")), &H19, CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_154F38C:       LateIdCallSt
  loc_154F3A2:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_154F3A7:       var_160 = &H11
  loc_154F3DE:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("TipAmt").Value)) 'String
  loc_154F3E5:       LateIdCallSt
  loc_154F438:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomNo")), &H12, CVar(CLng(var_8E)), var_150, var_EC, &H12, CVar(CLng(var_8E)))) 'String
  loc_154F43F:       LateIdCallSt
  loc_154F48E:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomNo")), &H13, CVar(CLng(var_8E)), var_150, var_EC, var_150)) 'String
  loc_154F495:       LateIdCallSt
  loc_154F4D5:       var_EC = "0.00"
  loc_154F4FC:       Set var_144 = Me.LTxt
  loc_154F502:       Call 0.Method_Proc_137_76_154F7E00 (CInt(&H13), var_148, CStr(Format(CVar(Me.Recordset15.Fields.Item("BillAmount")), var_EC)), 1, 1, var_150)
  loc_154F50A:       var_148.Caption = var_EC
  loc_154F538:       var_EC = CVar("SELECT P.RoomType+P.RoomCat+SPACE(5-LEN(P.RoomCat))+P.RoomNo+SPACE(5-LEN(P.RoomNo)),code " & " FROM PAYCHARGEH AS P LEFT JOIN RoomMast AS R ON (P.RoomNo = R.Code) AND (P.RoomCat = R.RoomCat) AND (P.RoomType = R.Type) Where DocId='") 'String
  loc_154F568:       var_FC = var_EC & Me.Recordset15.Fields.Item("DocID").Value 
  loc_154F571:       var_11C = var_FC & "' And SNo=" 
  loc_154F5A7:       var_1A0 = (Me.Recordset15.Fields.Item("SNo").Value + 1)
  loc_154F5AF:       var_9C = CStr(var_11C & var_1A0)
  loc_154F5B9:       unk_55E2D7.Execute var_9C, var_1C0, -1
  loc_154F5C4:       Set var_8C = var_1C4
  loc_154F5FE:       If (var_8C.RecordCount > 0) Then
  loc_154F642:         var_EC = CVar(Proc_6_38_E69628(var_8C.Fields.Item(0).Value, &H12, CVar(CLng(var_8E)), var_1C4, var_EC)) 'String
  loc_154F649:         LateIdCallSt
  loc_154F6A0:         var_EC = CVar(Proc_6_38_E69628(var_8C.Fields.Item(1).Value, &H13, CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_154F6A7:         LateIdCallSt
  loc_154F6BD:       End If
  loc_154F6BF:       Set var_150 = Nothing 
  loc_154F6C9:       var_8E = (var_8E + 1)
  loc_154F6D2:       Me.Recordset15.MoveNext
  loc_154F6D7:       GoTo loc_154EB66
  loc_154F6DA:     End If
  loc_154F6ED:     Me.FGrid.FixedRows = 1
  loc_154F6F5:   End If
  loc_154F703:   Me.FGrid.Redraw = True
  loc_154F711:   If (var_8E = 1) Then
  loc_154F727:     Me.FGrid.Rows = 1
  loc_154F74B:     var_DC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0, var_8E, var_150, var_EC))) 'String
  loc_154F753:     Set var_CC = Me.FGrid
  loc_154F780:     Me.FGrid.FixedRows = 1
  loc_154F788:   End If
  loc_154F788:   Call Proc_137_86_10A8A28(FGrid.DispID_10000, var_DC, var_EC)
  loc_154F78D:   Call Proc_137_88_1409C38(var_150, var_EC)
  loc_154F792: End If
  loc_154F797: Set var_88 = Nothing
  loc_154F79A: Exit Sub
  loc_154F79B: ' Referenced from: 154E7E4
  loc_154F7A3: Set var_B8 = Err()
  loc_154F7A9: Call 0.Method_arg_2C (var_9C)
  loc_154F7CA: MsgBox(CVar(var_9C), &H40, "Information", var_FC, var_11C)
  loc_154F7DD: Exit Sub
End Sub

Public Sub Proc_137_77_11367E8
  'Data Table: 55E2B8
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_154 As Boolean
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_16C As String
  Dim unk_55E2D7 As Connection15
  Dim var_88 As Recordset15
  Dim var_17C As Field20
  Dim Me As Recordset15
  loc_11364A9: var_154 = (CLng(Me.FGrid.Rows) > 1)
  loc_11364B1: Set var_A0 = Me.FGrid
  loc_11364C6: var_C0 = CVar((CLng(var_A0.Rows) - 1)) 'Long
  loc_11364D7: Set var_F4 = Me.FGrid
  loc_11364DD: var_104 = var_F4.TextMatrix)
  loc_11364E8: var_114 = CVar(CStr(var_104)) 'String
  loc_11364EE: var_124 = Trim(var_114)
  loc_113651E: If CBool(CVar(CLng(5)) And (var_124 = vbNullString)) Then
  loc_1136521:   Exit Sub
  loc_1136522: End If
  loc_113652D: var_B0 = "Delete..."
  loc_1136538: var_C0 = "Are you sure delete record?"
  loc_113653D: var_9C = var_C0
  loc_1136559: If (MsgBox(var_9C, &H14, var_B0, var_104, var_114) = 7) Then
  loc_113655C:   Exit Sub
  loc_113655D: End If
  loc_113657B: Set var_8C = Me.Txt
  loc_1136581: Call 0.Method_Proc_137_77_11367E80 (CInt(0), var_A0, var_168, "Select count(Distinct Bill_no) from paycharge where bill_no is not null and bill_no<>'' and Docid='", var_9C)
  loc_1136589: -1 = var_A0.Text
  loc_11365A2: unk_55E2D7.Execute var_F4 & var_168 & "'", var_C0, var_154
  loc_11365DF: var_A0 = var_F4.Fields.Item(0)
  loc_1136601: If (var_A0.Value > 0) Then
  loc_1136617:   var_9C = "Guest Room Bill Already printed for this Room."
  loc_113661D:   MsgBox(var_9C, &H10, var_B0, var_104, var_114)
  loc_113662D:   Exit Sub
  loc_113662E: End If
  loc_1136637: unk_55E2D7.BeginTrans var_174
  loc_1136649: var_E0 = "Delete from Ledger where Docid='"
  loc_113667B: Set var_8C = Me.Txt
  loc_1136681: Call 0.Method_Proc_137_77_11367E80 (CInt(0), var_A0, var_168, "SELECT PostDocId FROM PAYCHARGEH WHERE DocId='", var_9C, -1, var_F4)
  loc_11366A2: unk_55E2D7.Execute 0 & var_168 & "'", var_17C, var_B0
  loc_11366AA: var_E0 = var_F4.Fields
  loc_11366B2: -1 = var_A0.Text.Item(var_124)
  loc_11366BA:  = var_17C.Value
  loc_11366D9: unk_55E2D7.Execute CStr(var_B0 & "'"), , 
  loc_1136723: Set var_8C = Me.Txt
  loc_1136729: Call 0.Method_Proc_137_77_11367E80 (CInt(0), var_A0, var_168, "Delete From PAYCHARGEH Where Docid='")
  loc_1136731: var_9C = var_A0.Text
  loc_113673A: var_16C = -1 & var_168
  loc_113674A: unk_55E2D7.Execute 0 & var_168 & "'", var_F4, 
  loc_1136782: Set var_8C = Me.Txt
  loc_1136788: Call 0.Method_Proc_137_77_11367E80 (CInt(0), var_A0, var_168, "Delete From PAYCHARGE Where Docid='")
  loc_1136790: var_9C = var_A0.Text
  loc_1136799: var_16C = -1 & var_168
  loc_11367A9: unk_55E2D7.Execute 0 & var_168 & "'", var_F4, 
  loc_11367C9: unk_55E2D7.CommitTrans
  loc_11367D3: Set var_88 = Nothing
  loc_11367E1: Me.Requery -1
  loc_11367E6: Exit Sub
End Sub

Public Sub Proc_137_78_FB8E04
  'Data Table: 55E2B8
  loc_FB8C6C: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_FB8C7E:   Me.DGPayType.Visible = False
  loc_FB8C86: End If
  loc_FB8CA2: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_FB8CB4:   Me.DGPayType.Visible = False
  loc_FB8CBC: End If
  loc_FB8CD8: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_FB8CEA:   Me.DGEmp.Visible = False
  loc_FB8CF2: End If
  loc_FB8D0E: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_FB8D20:   Me.DGTable.Visible = False
  loc_FB8D28: End If
  loc_FB8D44: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_FB8D56:   Me.DGRoom.Visible = False
  loc_FB8D5E: End If
  loc_FB8D7A: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_FB8D8C:   Me.DGCompany.Visible = False
  loc_FB8D94: End If
  loc_FB8DB0: If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_FB8DC2:   Me.DGMember.Visible = False
  loc_FB8DCA: End If
  loc_FB8DE6: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_FB8DF8:   Me.FGPoint.Visible = False
  loc_FB8E00: End If
  loc_FB8E00: Exit Sub
End Sub

Public Sub Proc_137_79_E92DF4(arg_C) 'E92DF4
  'Data Table: 55E2B8
  Dim var_10C As TextBox
  loc_E92D88: Call Proc_137_78_FB8E04()
  loc_E92DC4: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E92DC7:   Call TopCtrl1_UnknownEvent_16()
  loc_E92DCF: Else
  loc_E92DD9:   Set var_108 = Me.Txt
  loc_E92DDF:   Call 0.Method_Proc_137_79_E92DF40 (arg_C)
  loc_E92DE7:   var_10C.SetFocus
  loc_E92DF3: End If
  loc_E92DF3: Exit Sub
End Sub

Public Sub Proc_137_80_115946C
  'Data Table: 55E2B8
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
  loc_1159100: var_90 = global_120
  loc_1159117: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1159148: Set var_A8 = Me.Txt
  loc_115914E: Call 0.Method_Proc_137_80_115946C0 (CInt(2), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And "))
  loc_115915D: Proc_6_7_F26918(var_CC, CVar(var_AC), var_130)
  loc_1159165: var_EC = -1 & var_CC 
  loc_1159179: Me.Txt.Execute CStr(var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC"), var_134, 
  loc_1159184: Set var_8C = var_134
  loc_11591C0: If (var_8C.RecordCount > 0) Then
  loc_11591FF:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_1159202:     GoTo loc_115928F
  loc_1159205:   End If
  loc_1159236:   global_100 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_1159261:   var_AC = var_8C.Fields.Item("start_srl_no")
  loc_1159276:   var_CC = (var_AC.Value + 1)
  loc_115927E:   global_104 = CInt(var_CC)
  loc_115928F:   ' Referenced from: 1159202
  loc_11592BA:   var_BC = Space((5 - Len(var_90)))
  loc_11592C2:   var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_AC.Value)
  loc_11592D6:   var_EC = Space((5 - Len(global_100)))
  loc_11592DE:   var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And ") + var_EC)
  loc_11592EB:   var_130 = (var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC" + CVar(global_100))
  loc_1159304:   var_14C = Space((8 - Len(CStr(global_104))))
  loc_115930C:   var_15C = (var_130 + var_14C)
  loc_115931B:   var_17C = (var_15C + CVar(CStr(global_104)))
  loc_1159326:   global_96 = CStr(var_17C)
  loc_115935C:   Me.LblVPrefix.Caption = global_100
  loc_1159375:   Set var_A8 = Me.Txt
  loc_115937B:   Call 0.Method_Proc_137_80_115946C0 (CInt(0), var_AC)
  loc_1159383:   var_AC.Text = global_96
  loc_11593A5:   Set var_A8 = Me.Txt
  loc_11593AB:   Call 0.Method_Proc_137_80_115946C0 (CInt(1), var_AC)
  loc_11593B3:   var_AC.Text = CStr(global_104)
  loc_11593C8:   var_88 = global_96
  loc_11593CE: Else
  loc_11593D4:   global_96 = vbNullString
  loc_11593E7:   global_104 = 0
  loc_11593FA:   Me.LblVPrefix.Caption = vbNullString
  loc_1159413:   Set var_A8 = Me.Txt
  loc_1159419:   Call 0.Method_Proc_137_80_115946C0 (CInt(0), var_AC, global_96)
  loc_1159421:   var_AC.Text = global_104
  loc_115943B:   Set var_A8 = Me.Txt
  loc_1159441:   Call 0.Method_Proc_137_80_115946C0 (CInt(1), var_AC)
  loc_1159449:   var_AC.Text = vbNullString
  loc_115945B:   var_88 = global_96
  loc_115945E: End If
  loc_1159463: Set var_8C = Nothing
  loc_1159466: Proc_137_80_115946C = global_104
End Sub

Public Sub Proc_137_81_120D47C
  'Data Table: 55E2B8
  Dim var_A0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As String
  loc_120CFAE: If (global_112 = 6) Then
  loc_120CFBD:   Me.FrRest.Visible = True
  loc_120CFC5: End If
  loc_120CFD8: Me.FGrid.Cols = &H19
  loc_120CFE0: var_A0 = CVar(CLng(9)) 'Long
  loc_120CFE5: var_C0 = 0
  loc_120CFF1: LateIdCallSt
  loc_120CFFC: var_A0 = CVar(CLng(&HA)) 'Long
  loc_120D001: var_C0 = 0
  loc_120D00D: LateIdCallSt
  loc_120D018: var_A0 = CVar(CLng(&HB)) 'Long
  loc_120D01D: var_C0 = 0
  loc_120D029: LateIdCallSt
  loc_120D034: var_A0 = CVar(CLng(&HC)) 'Long
  loc_120D039: var_C0 = 0
  loc_120D045: LateIdCallSt
  loc_120D050: var_A0 = CVar(CLng(&HD)) 'Long
  loc_120D055: var_C0 = 0
  loc_120D061: LateIdCallSt
  loc_120D06C: var_A0 = CVar(CLng(&HE)) 'Long
  loc_120D071: var_C0 = 0
  loc_120D07D: LateIdCallSt
  loc_120D088: var_A0 = CVar(CLng(&HF)) 'Long
  loc_120D08D: var_C0 = 0
  loc_120D099: LateIdCallSt
  loc_120D0A4: var_A0 = CVar(CLng(&H10)) 'Long
  loc_120D0A9: var_C0 = 0
  loc_120D0B5: LateIdCallSt
  loc_120D0BD: var_A0 = &H11
  loc_120D0C6: var_C0 = 0
  loc_120D0D2: LateIdCallSt
  loc_120D0DA: var_A0 = 1
  loc_120D0E3: var_C0 = 0
  loc_120D0EF: LateIdCallSt
  loc_120D0F7: var_A0 = 4
  loc_120D100: var_C0 = 0
  loc_120D10C: LateIdCallSt
  loc_120D114: var_A0 = 5
  loc_120D11D: var_C0 = 0
  loc_120D129: LateIdCallSt
  loc_120D134: var_A0 = CVar(CLng(6)) 'Long
  loc_120D139: var_C0 = 0
  loc_120D145: LateIdCallSt
  loc_120D150: var_A0 = CVar(CLng(7)) 'Long
  loc_120D155: var_C0 = 0
  loc_120D161: LateIdCallSt
  loc_120D169: var_A0 = 2
  loc_120D172: var_C0 = 0
  loc_120D17E: LateIdCallSt
  loc_120D186: var_A0 = 0
  loc_120D18F: var_C0 = &HFA
  loc_120D19B: LateIdCallSt
  loc_120D1A3: var_A0 = 0
  loc_120D1AC: var_C0 = 0
  loc_120D1B5: var_E0 = "SNo"
  loc_120D1BE: LateIdCallSt
  loc_120D1C6: var_A0 = 0
  loc_120D1CF: var_C0 = &H1C2
  loc_120D1DB: LateIdCallSt
  loc_120D1E3: var_A0 = 0
  loc_120D1EC: var_C0 = 3
  loc_120D1F5: var_E0 = "Payment Type"
  loc_120D1FE: LateIdCallSt
  loc_120D206: var_A0 = 3
  loc_120D215: var_C0 = CVar(CInt(1)) 'Integer
  loc_120D21C: LateIdCallSt
  loc_120D224: var_A0 = 3
  loc_120D22D: var_C0 = &HDAC
  loc_120D239: LateIdCallSt
  loc_120D241: var_A0 = 0
  loc_120D24A: var_C0 = 8
  loc_120D253: var_E0 = "Amount"
  loc_120D25C: LateIdCallSt
  loc_120D264: var_A0 = 8
  loc_120D273: var_C0 = CVar(CInt(7)) 'Integer
  loc_120D27A: LateIdCallSt
  loc_120D282: var_A0 = 8
  loc_120D291: var_C0 = CVar(CInt(7)) 'Integer
  loc_120D298: LateIdCallSt
  loc_120D2A0: var_A0 = 8
  loc_120D2A9: var_C0 = &H4EC
  loc_120D2B5: LateIdCallSt
  loc_120D2BD: var_A0 = 0
  loc_120D2C6: var_C0 = &H11
  loc_120D2CF: var_E0 = "Tip"
  loc_120D2D8: LateIdCallSt
  loc_120D2E0: var_A0 = &H11
  loc_120D2EF: var_C0 = CVar(CInt(7)) 'Integer
  loc_120D2F6: LateIdCallSt
  loc_120D2FE: var_A0 = &H11
  loc_120D30D: var_C0 = CVar(CInt(7)) 'Integer
  loc_120D314: LateIdCallSt
  loc_120D31C: var_A0 = &H11
  loc_120D325: var_C0 = &H4EC
  loc_120D331: LateIdCallSt
  loc_120D339: var_A0 = &H12
  loc_120D342: var_C0 = 0
  loc_120D34E: LateIdCallSt
  loc_120D356: var_A0 = &H13
  loc_120D35F: var_C0 = 0
  loc_120D36B: LateIdCallSt
  loc_120D373: var_A0 = &H14
  loc_120D37C: var_C0 = 0
  loc_120D388: LateIdCallSt
  loc_120D390: var_A0 = &H15
  loc_120D399: var_C0 = 0
  loc_120D3A5: LateIdCallSt
  loc_120D3AD: var_A0 = &H18
  loc_120D3B6: var_C0 = 0
  loc_120D3C2: LateIdCallSt
  loc_120D3CA: var_A0 = &H19
  loc_120D3D3: var_C0 = 0
  loc_120D3DF: LateIdCallSt
  loc_120D3E7: var_A0 = &H16
  loc_120D3F0: var_C0 = 0
  loc_120D3FC: LateIdCallSt
  loc_120D404: var_A0 = &H17
  loc_120D40D: var_C0 = 0
  loc_120D419: LateIdCallSt
  loc_120D421: var_A0 = &H1A
  loc_120D42A: var_C0 = 0
  loc_120D436: LateIdCallSt
  loc_120D468: LateIdCallSt
  loc_120D476: Call Proc_137_82_F455D4(Me.FGrid, CVar(CStr(1)), 0, 1, Nothing, 0, 1, Nothing)
  loc_120D47B: Exit Sub
End Sub

Public Sub Proc_137_82_F455D4
  'Data Table: 55E2B8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_BC As Variant
  loc_F454C6: Set global_72 = New 
  loc_F454D8: Me.Recordset15.CursorLocation = 3
  loc_F454F4: If (OpenType = 6) Then
  loc_F4551C:   var_A8 = CVar("Select T.Code,T.Name As Name From RoomMast T where T.LogSite_Code in ('" & MemVar_1F95078 & "','HO') and T.Type in('HL') Order by T.Code") 'String
  loc_F45526:   Me.Open var_A8, CVar(MemVar_1F95044), 3
  loc_F4553D:   Set var_8C = Me.LblName
  loc_F45543:   Call 0.Method_Proc_137_82_F455D40 (&HC, var_BC, "Party Name")
  loc_F4554B:   var_BC.Caption = 1
  loc_F45567:   Set var_8C = Me.DGTable
  loc_F45586:   DGTable.DispID_69.Item(1).Caption = "Party Name"
  loc_F4559D:   global_144 = "HALL"
  loc_F455A7:   global_148 = "HS"
  loc_F455AB: End If
  loc_F455B4: CVarUnk
  loc_F455B9: VerifyVarObj
  loc_F455BF: Set var_8C = Me.DGTable
  loc_F455C5: LateIdStAd
  loc_F455D3: Exit Sub
End Sub

Public Sub Proc_137_83_11AEBD8(arg_C) '11AEBD8
  'Data Table: 55E2B8
  Dim var_98 As Frame
  Dim var_A0 As Variant
  Dim var_A8 As TextBox
  loc_11AE7B0: Me.FrChqDet.Visible = False
  loc_11AE7C4: Me.FrTxnNo.Visible = False
  loc_11AE7D8: Me.FrRem.Visible = False
  loc_11AE7EC: Me.FrCCDet.Visible = False
  loc_11AE800: Me.FrEmp.Visible = False
  loc_11AE814: Me.FrComp.Visible = False
  loc_11AE828: Me.FrMem.Visible = False
  loc_11AE83C: Me.FrSendRoom.Visible = False
  loc_11AE856: If (global_112 = 6) Then
  loc_11AE85C:   var_90 = arg_C
  loc_11AE867:   If (var_90 = "Cheque") Then
  loc_11AE876:     Me.FrChqDet.Visible = True
  loc_11AE88A:     Me.FrRem.Visible = True
  loc_11AE8CC:     Me.FrRem.Top = ((Me.FrChqDet.Top + Me.FrChqDet.Height) + CDbl(&HF))
  loc_11AE8DD:   Else
  loc_11AE8E5:     If (var_90 = "Credit Card") Then
  loc_11AE8F4:       Me.FrCCDet.Visible = True
  loc_11AE908:       Me.FrRem.Visible = False
  loc_11AE913:     Else
  loc_11AE91B:       If (var_90 = "Staff") Then
  loc_11AE92A:         Me.FrEmp.Visible = True
  loc_11AE93E:         Me.FrRem.Visible = True
  loc_11AE980:         Me.FrRem.Top = ((Me.FrEmp.Top + Me.FrEmp.Height) + CDbl(&HF))
  loc_11AE991:       Else
  loc_11AE999:         If (var_90 = "Company") Then
  loc_11AE9A8:           Me.FrComp.Visible = True
  loc_11AE9BC:           Me.FrRem.Visible = True
  loc_11AE9FE:           Me.FrRem.Top = ((Me.FrComp.Top + Me.FrComp.Height) + CDbl(&HF))
  loc_11AEA0F:         Else
  loc_11AEA17:           If (var_90 = "Member") Then
  loc_11AEA26:             Me.FrMem.Visible = True
  loc_11AEA3A:             Me.FrRem.Visible = True
  loc_11AEA7C:             Me.FrRem.Top = ((Me.FrMem.Top + Me.FrMem.Height) + CDbl(&HF))
  loc_11AEA8D:           Else
  loc_11AEA95:             If (var_90 = "Room") Then
  loc_11AEAA4:               Me.FrSendRoom.Visible = True
  loc_11AEAB8:               Me.FrRem.Visible = False
  loc_11AEAC3:             Else
  loc_11AEACB:               If (var_90 = "UPI") Then
  loc_11AEADA:                 Me.FrTxnNo.Visible = True
  loc_11AEAEE:                 Me.FrRem.Visible = True
  loc_11AEB2A:                 Set var_A0 = Me.FrRem
  loc_11AEB30:                 var_A0.Top = ((Me.FrTxnNo.Top + Me.FrTxnNo.Height) + CDbl(&HF))
  loc_11AEB41:               Else
  loc_11AEB4D:                 Me.FrRem.Visible = True
  loc_11AEB63:                 Set var_98 = Me.Txt
  loc_11AEB69:                 Call 0.Method_Proc_137_83_11AEBD80 (CInt(5), var_A0)
  loc_11AEB84:                 Set var_A4 = Me.Txt
  loc_11AEB8A:                 Call 0.Method_Proc_137_83_11AEBD80 (CInt(5), var_A8)
  loc_11AEBC3:                 Me.FrRem.Top = (((Me.FrRest.Top + var_A0.Top) + var_A8.Height) + CDbl(&HF))
  loc_11AEBD7:               End If
  loc_11AEBD7:             End If
  loc_11AEBD7:           End If
  loc_11AEBD7:         End If
  loc_11AEBD7:       End If
  loc_11AEBD7:     End If
  loc_11AEBD7:   End If
  loc_11AEBD7: End If
  loc_11AEBD7: Exit Sub
End Sub

Public Sub Proc_137_84_1527EF0
  'Data Table: 55E2B8
  Dim var_90 As Variant
  Dim var_EC As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_8C As Variant
  Dim var_10C As Variant
  Dim var_BC As Variant
  Dim var_94 As String
  Dim var_86 As Integer
  Dim var_11C As Long
  Dim Me As Variant
  loc_1526F66: Set var_8C = Me.Txt
  loc_1526F6C: Call 0.Method_Proc_137_84_1527EF00 (CInt(5), var_90)
  loc_1526F90: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_1526FA1:   Set var_8C = Me.Txt
  loc_1526FA7:   Call 0.Method_Proc_137_84_1527EF00 (CInt(5), var_90)
  loc_1526FAF:   var_90.Text = vbNullString
  loc_1526FBB: End If
  loc_1526FC9: Set var_8C = Me.Txt
  loc_1526FCF: Call 0.Method_Proc_137_84_1527EF00 (CInt(5), var_90)
  loc_1526FE9: If (var_90.Visible = &HFF) Then
  loc_1526FF7:   Set var_8C = Me.Txt
  loc_1526FFD:   Call 0.Method_Proc_137_84_1527EF00 (CInt(5))
  loc_1527005:   var_94 = "Amount"
  loc_1527026:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_1527029:     Exit Sub
  loc_152702A:   End If
  loc_152702A: End If
  loc_1527043: Set var_8C = Me.Txt
  loc_1527049: Call 0.Method_Proc_137_84_1527EF00 (CInt(&H10), var_90, var_94)
  loc_1527051: (global_152 = "Staff") = var_90.Text
  loc_1527069: If (var_90 And (var_94 = vbNullString)) Then
  loc_1527077:   Set var_8C = Me.Txt
  loc_152707D:   Call 0.Method_Proc_137_84_1527EF00 (CInt(&H10))
  loc_1527085:   var_94 = "Staff Name"
  loc_15270A6:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15270A9:     Exit Sub
  loc_15270AA:   End If
  loc_15270AA: End If
  loc_15270C3: Set var_8C = Me.Txt
  loc_15270C9: Call 0.Method_Proc_137_84_1527EF00 (CInt(&HD), var_90, var_94)
  loc_15270D1: (global_152 = "Room") = var_90.Text
  loc_15270E9: If (var_90 And (var_94 = vbNullString)) Then
  loc_15270F7:   Set var_8C = Me.Txt
  loc_15270FD:   Call 0.Method_Proc_137_84_1527EF00 (CInt(&HD))
  loc_1527105:   var_94 = "Room Name"
  loc_1527126:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_1527129:     Exit Sub
  loc_152712A:   End If
  loc_152712A: End If
  loc_1527143: Set var_8C = Me.Txt
  loc_1527149: Call 0.Method_Proc_137_84_1527EF00 (CInt(&HE), var_90, var_94)
  loc_1527151: (global_152 = "Company") = var_90.Text
  loc_1527169: If (var_90 And (var_94 = vbNullString)) Then
  loc_1527177:   Set var_8C = Me.Txt
  loc_152717D:   Call 0.Method_Proc_137_84_1527EF00 (CInt(&HE))
  loc_1527185:   var_94 = "Company Name"
  loc_15271A6:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15271A9:     Exit Sub
  loc_15271AA:   End If
  loc_15271AA: End If
  loc_15271C3: Set var_8C = Me.Txt
  loc_15271C9: Call 0.Method_Proc_137_84_1527EF00 (CInt(&HF), var_90, var_94)
  loc_15271D1: (global_152 = "Member") = var_90.Text
  loc_15271E9: If (var_90 And (var_94 = vbNullString)) Then
  loc_15271F7:   Set var_8C = Me.Txt
  loc_15271FD:   Call 0.Method_Proc_137_84_1527EF00 (CInt(&HF))
  loc_1527205:   var_94 = "Member Name"
  loc_1527226:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_1527229:     Exit Sub
  loc_152722A:   End If
  loc_152722A: End If
  loc_1527235: If (global_56 = "Y") Then
  loc_1527251:   Set var_8C = Me.Txt
  loc_1527257:   Call 0.Method_Proc_137_84_1527EF00 (CInt(7), var_90, var_94)
  loc_152725F:   (global_152 = "Credit Card") = var_90.Text
  loc_1527277:   If (var_90 And (var_94 = vbNullString)) Then
  loc_1527285:     Set var_8C = Me.Txt
  loc_152728B:     Call 0.Method_Proc_137_84_1527EF00 (CInt(7))
  loc_1527293:     var_94 = "Credit Card No."
  loc_15272B4:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15272B7:       Exit Sub
  loc_15272B8:     End If
  loc_15272B8:   End If
  loc_15272D1:   Set var_8C = Me.Txt
  loc_15272D7:   Call 0.Method_Proc_137_84_1527EF00 (CInt(8), var_90, var_94)
  loc_15272DF:   (global_152 = "Credit Card") = var_90.Text
  loc_15272F7:   If (var_90 And (var_94 = vbNullString)) Then
  loc_1527305:     Set var_8C = Me.Txt
  loc_152730B:     Call 0.Method_Proc_137_84_1527EF00 (CInt(8))
  loc_1527334:     If (Proc_6_27_EA61EC(var_90, "Holder's Name") = 0) Then
  loc_1527337:       Exit Sub
  loc_1527338:     End If
  loc_1527338:   End If
  loc_1527352:   Set var_8C = Me.Txt
  loc_1527358:   Call 0.Method_Proc_137_84_1527EF00 (CInt(&HA), var_90)
  loc_152738B:   If CBool((global_152 = "Credit Card") And (Trim(CVar(var_90)) = vbNullString)) Then
  loc_1527399:     Set var_8C = Me.Txt
  loc_152739F:     Call 0.Method_Proc_137_84_1527EF00 (CInt(&HA), var_90)
  loc_15273A7:     var_94 = "Batch No"
  loc_15273C8:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15273CB:       Exit Sub
  loc_15273CC:     End If
  loc_15273CC:   End If
  loc_15273CC: End If
  loc_15273E5: Set var_8C = Me.Txt
  loc_15273EB: Call 0.Method_Proc_137_84_1527EF00 (CInt(&H11), var_90, var_94)
  loc_15273F3: (global_152 = "UPI") = var_90.Text
  loc_152740B: If (var_90 And (var_94 = vbNullString)) Then
  loc_1527419:   Set var_8C = Me.Txt
  loc_152741F:   Call 0.Method_Proc_137_84_1527EF00 (CInt(&H11))
  loc_1527427:   var_94 = "Txn. No."
  loc_1527448:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_152744B:     Exit Sub
  loc_152744C:   End If
  loc_152744C: End If
  loc_1527465: Set var_8C = Me.Txt
  loc_152746B: Call 0.Method_Proc_137_84_1527EF00 (CInt(&HB), var_90, var_94)
  loc_1527473: (global_152 = "Cheque") = var_90.Text
  loc_152748B: If (var_90 And (var_94 = vbNullString)) Then
  loc_1527499:   Set var_8C = Me.Txt
  loc_152749F:   Call 0.Method_Proc_137_84_1527EF00 (CInt(&HB))
  loc_15274A7:   var_94 = "Cheque No."
  loc_15274C8:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15274CB:     Exit Sub
  loc_15274CC:   End If
  loc_15274CC: End If
  loc_15274E5: Set var_8C = Me.Txt
  loc_15274EB: Call 0.Method_Proc_137_84_1527EF00 (CInt(&HC), var_90, var_94)
  loc_15274F3: (global_152 = "Cheque") = var_90.Text
  loc_152750B: If (var_90 And (var_94 = vbNullString)) Then
  loc_1527519:   Set var_8C = Me.Txt
  loc_152751F:   Call 0.Method_Proc_137_84_1527EF00 (CInt(&HC))
  loc_1527548:   If (Proc_6_27_EA61EC(var_90, "Cheque Dt.") = 0) Then
  loc_152754B:     Exit Sub
  loc_152754C:   End If
  loc_152754C: End If
  loc_1527555: If (global_164 = 0) Then
  loc_1527571:   var_CC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_15275AD:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_15275CC:     var_AC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0, 3))) 'String
  loc_15275D4:     Set var_90 = Me.FGrid
  loc_15275EE:   End If
  loc_1527608:   var_86 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_1527614: Else
  loc_1527628:   var_86 = CInt(CLng(Me.FGrid.Row))
  loc_1527631: End If
  loc_152764A: var_CC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_152764F: var_10C = 1
  loc_152765C: Set var_90 = Me.FGrid
  loc_152766D: var_94 = CStr(var_90.TextMatrix))
  loc_1527686: If (var_94 <> vbNullString) Then
  loc_1527689:   var_CC = vbNullString
  loc_1527693:   Set var_8C = Me.FGrid
  loc_15276BE:   var_86 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_15276C7: End If
  loc_15276DE: If (OpenType = 6) Then
  loc_15276E5:   Set var_128 = Me.FGrid
  loc_15276EC:   var_CC = CVar(CLng(var_86)) 'Long
  loc_15276F1:   var_10C = 0
  loc_1527706:   LateIdCallSt
  loc_1527731:   Set var_8C = Me.Txt
  loc_1527737:   Call 0.Method_Proc_137_84_1527EF00 (CInt(3), var_90, var_94, 1, CVar(CLng(var_86)), var_128, CVar(CStr(var_86)))
  loc_152773F:   var_10C = var_90.Tag
  loc_1527747:   var_AC = CVar(var_94) 'String
  loc_152774E:   LateIdCallSt
  loc_1527764:   var_CC = CVar(CLng(var_86)) 'Long
  loc_1527769:   var_10C = 2
  loc_152777F:   LateIdCallSt
  loc_15277A7:   Set var_8C = Me.Txt
  loc_15277AD:   Call 0.Method_Proc_137_84_1527EF00 (CInt(3), var_90, var_94, 3, CVar(CLng(var_86)), var_128, global_152)
  loc_15277B5:   var_10C = var_90.Text
  loc_15277BD:   var_AC = CVar(var_94) 'String
  loc_15277C4:   LateIdCallSt
  loc_15277DA:   var_CC = CVar(CLng(var_86)) 'Long
  loc_15277DF:   var_10C = 4
  loc_15277F5:   LateIdCallSt
  loc_1527801:   var_CC = CVar(CLng(var_86)) 'Long
  loc_1527806:   var_10C = 5
  loc_152781C:   LateIdCallSt
  loc_1527843:   Set var_8C = Me.Txt
  loc_1527849:   Call 0.Method_Proc_137_84_1527EF00 (CInt(4), var_90, var_94, CVar(CLng(6)), CVar(CLng(var_86)), var_128, global_148)
  loc_1527851:   var_10C = var_90.Tag
  loc_1527860:   LateIdCallSt
  loc_1527891:   Set var_8C = Me.Txt
  loc_1527897:   Call 0.Method_Proc_137_84_1527EF00 (CInt(4), var_90, var_94, CVar(CLng(7)), CVar(CLng(var_86)), var_128, CVar(var_94))
  loc_152789F:   var_CC = var_90.Text
  loc_15278A7:   var_AC = CVar(var_94) 'String
  loc_15278AE:   LateIdCallSt
  loc_15278E0:   Set var_8C = Me.Txt
  loc_15278E6:   Call 0.Method_Proc_137_84_1527EF00 (CInt(5), var_90, var_94, 8, CVar(CLng(var_86)), var_128)
  loc_15278EE:   var_AC = var_90.Text
  loc_15278F6:   var_AC = CVar(var_94) 'String
  loc_15278FD:   LateIdCallSt
  loc_152792E:   Set var_8C = Me.Txt
  loc_1527934:   Call 0.Method_Proc_137_84_1527EF00 (CInt(7), var_90, var_94, CVar(CLng(9)), CVar(CLng(var_86)), var_128)
  loc_152793C:   var_AC = var_90.Text
  loc_1527944:   var_AC = CVar(var_94) 'String
  loc_152794B:   LateIdCallSt
  loc_152797C:   Set var_8C = Me.Txt
  loc_1527982:   Call 0.Method_Proc_137_84_1527EF00 (CInt(8), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_128)
  loc_152798A:   var_AC = var_90.Text
  loc_1527992:   var_AC = CVar(var_94) 'String
  loc_1527999:   LateIdCallSt
  loc_15279CA:   Set var_8C = Me.Txt
  loc_15279D0:   Call 0.Method_Proc_137_84_1527EF00 (CInt(9), var_90, var_94, CVar(CLng(&HB)), CVar(CLng(var_86)), var_128)
  loc_15279D8:   var_AC = var_90.Text
  loc_15279E0:   var_AC = CVar(var_94) 'String
  loc_15279E7:   LateIdCallSt
  loc_1527A19:   Set var_8C = Me.Txt
  loc_1527A1F:   Call 0.Method_Proc_137_84_1527EF00 (CInt(&HA), var_90, var_94, &H17, CVar(CLng(var_86)), var_128)
  loc_1527A27:   var_AC = var_90.Text
  loc_1527A2F:   var_AC = CVar(var_94) 'String
  loc_1527A36:   LateIdCallSt
  loc_1527A68:   Set var_8C = Me.Txt
  loc_1527A6E:   Call 0.Method_Proc_137_84_1527EF00 (CInt(&H11), var_90, var_94, &H1A, CVar(CLng(var_86)), var_128)
  loc_1527A76:   var_AC = var_90.Text
  loc_1527A7E:   var_AC = CVar(var_94) 'String
  loc_1527A85:   LateIdCallSt
  loc_1527AB6:   Set var_8C = Me.Txt
  loc_1527ABC:   Call 0.Method_Proc_137_84_1527EF00 (CInt(&HB), var_90, var_94, CVar(CLng(&HC)), CVar(CLng(var_86)), var_128)
  loc_1527AC4:   var_AC = var_90.Text
  loc_1527ACC:   var_AC = CVar(var_94) 'String
  loc_1527AD3:   LateIdCallSt
  loc_1527B04:   Set var_8C = Me.Txt
  loc_1527B0A:   Call 0.Method_Proc_137_84_1527EF00 (CInt(&HC), var_90, var_94, CVar(CLng(&HD)), CVar(CLng(var_86)), var_128)
  loc_1527B12:   var_AC = var_90.Text
  loc_1527B1A:   var_AC = CVar(var_94) 'String
  loc_1527B21:   LateIdCallSt
  loc_1527B52:   Set var_8C = Me.Txt
  loc_1527B58:   Call 0.Method_Proc_137_84_1527EF00 (CInt(&H12), var_90, var_94, CVar(CLng(&HE)), CVar(CLng(var_86)), var_128)
  loc_1527B60:   var_AC = var_90.Text
  loc_1527B68:   var_AC = CVar(var_94) 'String
  loc_1527B6F:   LateIdCallSt
  loc_1527BA0:   Set var_8C = Me.Txt
  loc_1527BA6:   Call 0.Method_Proc_137_84_1527EF00 (CInt(&H10), var_90, var_94, CVar(CLng(&HF)), CVar(CLng(var_86)), var_128)
  loc_1527BAE:   var_AC = var_90.Text
  loc_1527BB6:   var_AC = CVar(var_94) 'String
  loc_1527BBD:   LateIdCallSt
  loc_1527BEE:   Set var_8C = Me.Txt
  loc_1527BF4:   Call 0.Method_Proc_137_84_1527EF00 (CInt(&H10), var_90, var_94, CVar(CLng(&H10)), CVar(CLng(var_86)), var_128)
  loc_1527BFC:   var_AC = var_90.Tag
  loc_1527C04:   var_AC = CVar(var_94) 'String
  loc_1527C0B:   LateIdCallSt
  loc_1527C3D:   Set var_8C = Me.Txt
  loc_1527C43:   Call 0.Method_Proc_137_84_1527EF00 (CInt(6), var_90, var_94, &H11, CVar(CLng(var_86)), var_128)
  loc_1527C4B:   var_AC = var_90.Text
  loc_1527C53:   var_AC = CVar(var_94) 'String
  loc_1527C5A:   LateIdCallSt
  loc_1527C8C:   Set var_8C = Me.Txt
  loc_1527C92:   Call 0.Method_Proc_137_84_1527EF00 (CInt(&HD), var_90, var_94, &H12, CVar(CLng(var_86)), var_128)
  loc_1527C9A:   var_AC = var_90.Tag
  loc_1527CA2:   var_AC = CVar(var_94) 'String
  loc_1527CA9:   LateIdCallSt
  loc_1527CDB:   Set var_8C = Me.Txt
  loc_1527CE1:   Call 0.Method_Proc_137_84_1527EF00 (CInt(&HD), var_90, var_94, &H13, CVar(CLng(var_86)), var_128)
  loc_1527CE9:   var_AC = var_90.Text
  loc_1527CF1:   var_AC = CVar(var_94) 'String
  loc_1527CF8:   LateIdCallSt
  loc_1527D2A:   Set var_8C = Me.Txt
  loc_1527D30:   Call 0.Method_Proc_137_84_1527EF00 (CInt(&HE), var_90, var_94, &H14, CVar(CLng(var_86)), var_128)
  loc_1527D38:   var_AC = var_90.Tag
  loc_1527D40:   var_AC = CVar(var_94) 'String
  loc_1527D47:   LateIdCallSt
  loc_1527D79:   Set var_8C = Me.Txt
  loc_1527D7F:   Call 0.Method_Proc_137_84_1527EF00 (CInt(&HE), var_90, var_94, &H15, CVar(CLng(var_86)), var_128)
  loc_1527D87:   var_AC = var_90.Text
  loc_1527D8F:   var_AC = CVar(var_94) 'String
  loc_1527D96:   LateIdCallSt
  loc_1527DC8:   Set var_8C = Me.Txt
  loc_1527DCE:   Call 0.Method_Proc_137_84_1527EF00 (CInt(&HF), var_90, var_94, &H18, CVar(CLng(var_86)), var_128)
  loc_1527DD6:   var_AC = var_90.Tag
  loc_1527DDE:   var_AC = CVar(var_94) 'String
  loc_1527DE5:   LateIdCallSt
  loc_1527E00:   var_10C = &H19
  loc_1527E17:   Set var_8C = Me.Txt
  loc_1527E1D:   Call 0.Method_Proc_137_84_1527EF00 (CInt(&HF), var_90, var_94, var_10C, CVar(CLng(var_86)), var_128)
  loc_1527E25:   var_AC = var_90.Text
  loc_1527E2D:   var_AC = CVar(var_94) 'String
  loc_1527E34:   LateIdCallSt
  loc_1527E51:   If (global_152 = "Room") Then
  loc_1527E58:     var_EC = CVar(CLng(var_86)) 'Long
  loc_1527E5D:     var_11C = &H16
  loc_1527E83:     var_90 = Me.Fields.Item("FolioNo")
  loc_1527E8B:     var_AC = var_90.Value
  loc_1527E94:     var_BC = CVar(CStr(var_AC)) 'String
  loc_1527E9B:     LateIdCallSt
  loc_1527EB1:   End If
  loc_1527EB3:   Set var_128 = Nothing 
  loc_1527EB7: End If
  loc_1527EB7: Call Proc_137_86_10A8A28(var_128, var_BC, var_11C, var_EC, var_128, var_AC)
  loc_1527EBC: Call Proc_137_85_FDC930(var_128, global_144, var_10C)
  loc_1527ECC: Set var_8C = Me.Txt
  loc_1527ED2: Call 0.Method_Proc_137_84_1527EF00 (CInt(3), var_90)
  loc_1527EDA: var_90.SetFocus
  loc_1527EEB: global_164 = 0
  loc_1527EEE: Exit Sub
End Sub

Public Sub Proc_137_85_FDC930
  'Data Table: 55E2B8
  Dim var_8C As TextBox
  Dim var_B01 As Integer
  loc_FDC75A: Set var_88 = Me.Txt
  loc_FDC760: Call 0.Method_Proc_137_85_FDC9300 (CInt(3), var_8C)
  loc_FDC768: var_8C.Text = vbNullString
  loc_FDC782: Set var_88 = Me.Txt
  loc_FDC788: Call 0.Method_Proc_137_85_FDC9300 (CInt(5), var_8C)
  loc_FDC790: var_8C.Text = vbNullString
  loc_FDC7AA: Set var_88 = Me.Txt
  loc_FDC7B0: Call 0.Method_Proc_137_85_FDC9300 (CInt(6), var_8C)
  loc_FDC7B8: var_8C.Text = vbNullString
  loc_FDC7D2: Set var_88 = Me.Txt
  loc_FDC7D8: Call 0.Method_Proc_137_85_FDC9300 (CInt(&H10), var_8C)
  loc_FDC7E0: var_8C.Text = vbNullString
  loc_FDC7FA: Set var_88 = Me.Txt
  loc_FDC800: Call 0.Method_Proc_137_85_FDC9300 (CInt(&H12), var_8C)
  loc_FDC808: var_8C.Text = vbNullString
  loc_FDC822: Set var_88 = Me.Txt
  loc_FDC828: Call 0.Method_Proc_137_85_FDC9300 (CInt(7), var_8C)
  loc_FDC830: var_8C.Text = vbNullString
  loc_FDC84A: Set var_88 = Me.Txt
  loc_FDC850: Call 0.Method_Proc_137_85_FDC9300 (CInt(8), var_8C)
  loc_FDC858: var_8C.Text = vbNullString
  loc_FDC872: Set var_88 = Me.Txt
  loc_FDC878: Call 0.Method_Proc_137_85_FDC9300 (CInt(9), var_8C)
  loc_FDC880: var_8C.Text = vbNullString
  loc_FDC89A: Set var_88 = Me.Txt
  loc_FDC8A0: Call 0.Method_Proc_137_85_FDC9300 (CInt(&HA), var_8C)
  loc_FDC8A8: var_8C.Text = vbNullString
  loc_FDC8C2: Set var_88 = Me.Txt
  loc_FDC8C8: Call 0.Method_Proc_137_85_FDC9300 (CInt(&H11), var_8C)
  loc_FDC8D0: var_8C.Text = vbNullString
  loc_FDC8EA: Set var_88 = Me.Txt
  loc_FDC8F0: Call 0.Method_Proc_137_85_FDC9300 (CInt(&HB), var_8C)
  loc_FDC8F8: var_8C.Text = vbNullString
  loc_FDC912: Set var_88 = Me.Txt
  loc_FDC918: Call 0.Method_Proc_137_85_FDC9300 (CInt(&HC), var_8C)
  loc_FDC920: var_8C.Text = vbNullString
  loc_FDC92C: Exit Sub
  loc_FDC92D: var_B01 = 
End Sub

Public Sub Proc_137_86_10A8A28
  'Data Table: 55E2B8
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
  loc_10A8782: Set var_8C = Me.LTxt
  loc_10A8788: Call 0.Method_Proc_137_86_10A8A280 (CInt(&H14), var_90)
  loc_10A8790: var_90.Caption = vbNullString
  loc_10A87C1: For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A4 'Integer
  loc_10A87D5:   Set var_8C = Me.LTxt
  loc_10A87DB:   Call 0.Method_Proc_137_86_10A8A280 (CInt(&H14), var_90)
  loc_10A87F7:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_10A87FC:   var_D8 = 8
  loc_10A8822:   var_15C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10A8841:   var_110 = CVar((Val(var_90.Caption) + var_15C)) 'Double
  loc_10A885F:   Set var_144 = Me.LTxt
  loc_10A8865:   Call 0.Method_Proc_137_86_10A8A280 (CInt(&H14), var_148, CStr(Format(var_110, "0.00")), 1, 1)
  loc_10A886D:   var_148.Caption = var_15C
  loc_10A8896: Next var_A4 'Integer
  loc_10A88A9: Set var_8C = Me.LTxt
  loc_10A88AF: Call 0.Method_Proc_137_86_10A8A280 (CInt(&H13), var_90)
  loc_10A88B7: var_A8 = var_90.Caption
  loc_10A88D5: Set var_EC = Me.LTxt
  loc_10A88DB: Call 0.Method_Proc_137_86_10A8A280 (CInt(&H14), var_144)
  loc_10A88E3: var_F0 = var_144.Caption
  loc_10A890F: var_A0 = CVar((Val(var_A8) - Val(var_F0))) 'Double
  loc_10A892D: Set var_148 = Me.LTxt
  loc_10A8933: Call 0.Method_Proc_137_86_10A8A280 (CInt(&H15), var_160, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1)
  loc_10A893B: var_160.Caption = 1
  loc_10A896F: Set var_8C = Me.LTxt
  loc_10A8975: Call 0.Method_Proc_137_86_10A8A280 (CInt(&H14), var_90, var_A8)
  loc_10A897D: var_15C = var_90.Caption
  loc_10A898A: var_154 = Val(var_A8)
  loc_10A899B: Set var_EC = Me.Txt
  loc_10A89A1: Call 0.Method_Proc_137_86_10A8A280 (CInt(6), var_144, var_F0)
  loc_10A89D5: var_A0 = CVar((var_144.Text + Val(var_F0))) 'Double
  loc_10A89F3: Set var_148 = Me.LTxt
  loc_10A89F9: Call 0.Method_Proc_137_86_10A8A280 (CInt(&H16), var_160, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1)
  loc_10A8A01: var_160.Caption = 1
  loc_10A8A27: Exit Sub
End Sub

Public Sub Proc_137_87_1010AF8
  'Data Table: 55E2B8
  Dim var_C4 As Variant
  Dim var_E4 As Long
  Dim var_90 As Double
  Dim var_86 As Integer
  loc_101090D: For var_B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B4 'Integer
  loc_1010917:   var_C4 = CVar(CLng(var_88)) 'Long
  loc_101091C:   var_E4 = 1
  loc_1010956:   If (CStr(Me.FGrid.TextMatrix)) = MemVar_1F95070 & "MEM") Then
  loc_101095D:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_1010962:     var_E4 = &H18
  loc_1010980:     var_94 = CStr(Me.FGrid.TextMatrix))
  loc_101098D:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_1010992:     var_E4 = 8
  loc_10109C2:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_10109CE:   End If
  loc_10109D1: Next var_B4 'Integer
  loc_10109DE: If (var_94 <> vbNullString) Then
  loc_10109F9:   If (Proc_96_1_F8D0C4(var_94) = 0) Then
  loc_10109FF:     Proc_96_2_100E504(var_94)
  loc_1010A09:     If (CDbl(0) < var_90) Then
  loc_1010A2D:       MsgBox("Insufficient Ac. Balance.", 0, "Member Detail", var_124, var_134)
  loc_1010A4A:       Me.Global.Unload Me
  loc_1010A54:       var_86 = 0
  loc_1010A5A:     Else
  loc_1010A5C:       var_86 = &HFF
  loc_1010A5F:     End If
  loc_1010A62:   Else
  loc_1010A70:     If (Proc_96_1_F8D0C4(var_94, var_9C) = &HFF) Then
  loc_1010A76:       Proc_96_2_100E504(var_94, var_86)
  loc_1010A8C:       If ((CDbl((var_86 + var_9C)) < var_90) And (var_9C > CDbl(0))) Then
  loc_1010AB0:         MsgBox("Insufficient Ac. Balance.", 0, "Member Detail", var_124, var_134)
  loc_1010ACD:         Me.Global.Unload Me
  loc_1010AD7:         var_86 = 0
  loc_1010ADD:       Else
  loc_1010ADF:         var_86 = &HFF
  loc_1010AE2:       End If
  loc_1010AE5:     Else
  loc_1010AE7:       var_86 = &HFF
  loc_1010AEA:     End If
  loc_1010AEA:   End If
  loc_1010AED: Else
  loc_1010AEF:   var_86 = &HFF
  loc_1010AF2: End If
  loc_1010AF2: Proc_137_87_1010AF8 = var_86
End Sub

Public Sub Proc_137_88_1409C38
  'Data Table: 55E2B8
  Dim var_88 As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_F0 As String
  Dim var_F4 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_158 As Variant
  Dim var_200 As TextBox
  Dim var_1FC As TextBox
  loc_140920F: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1409214: var_C8 = 1
  loc_140924B: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1409252:   Set var_F4 = Me.FGrid
  loc_1409292:   Set var_DC = Me.Txt
  loc_1409298:   Call 0.Method_Proc_137_88_1409C380 (CInt(3), var_F8, CStr(var_F4.TextMatrix)), 1)
  loc_14092A0:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_14092CB:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14092D0:   var_C8 = 2
  loc_14092ED:   global_152 = CStr(var_F4.TextMatrix))
  loc_1409316:   var_C8 = 3
  loc_140933B:   Set var_DC = Me.Txt
  loc_1409341:   Call 0.Method_Proc_137_88_1409C380 (CInt(3), var_F8, CStr(var_F4.TextMatrix)), var_C8, CVar(CLng(Me.FGrid.Row)))
  loc_1409349:   var_F8.Text = var_C8
  loc_1409374:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1409379:   var_C8 = 4
  loc_1409396:   global_144 = CStr(var_F4.TextMatrix))
  loc_14093BA:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14093BF:   var_C8 = 5
  loc_14093DC:   global_148 = CStr(var_F4.TextMatrix))
  loc_1409400:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1409429:   Set var_DC = Me.Txt
  loc_140942F:   Call 0.Method_Proc_137_88_1409C380 (CInt(4), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(6)), var_A8, CVar(CLng(6)))
  loc_1409437:   var_F8.Tag = var_A8
  loc_1409462:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140946A:   var_C8 = CVar(CLng(7)) 'Long
  loc_1409472:   var_EC = var_F4.TextMatrix)
  loc_1409482:   Set var_DC = Me.FGrid
  loc_14094A1:   var_158 = var_F4.TextMatrix)
  loc_14094E9:   var_F0 = CStr(var_EC)
  loc_140950F:   Set var_1FC = Me.Txt
  loc_1409515:   Call 0.Method_Proc_137_88_1409C380 (CInt(4), var_200, CStr(IIf((var_F0 = vbNullString), CVar(CStr(var_158)), CVar(CStr(var_F4.TextMatrix))))), CVar(CLng(7)), CVar(CLng(Me.FGrid.Row)), var_158, CVar(CLng(6)))
  loc_140951D:   var_200.Text = CVar(CLng(var_DC.Row))
  loc_140955B:   Set var_88 = Me.LTxt
  loc_1409561:   Call 0.Method_Proc_137_88_1409C380 (CInt(&H15), var_DC, var_F0, var_EC, var_C8)
  loc_1409569:   var_A8 = var_DC.Caption
  loc_140957C:   Set var_F8 = Me.Txt
  loc_1409582:   Call 0.Method_Proc_137_88_1409C380 (CInt(5), var_1FC, var_F0)
  loc_140958A:   var_1FC.Text = var_C8
  loc_14095D9:   Set var_DC = Me.Txt
  loc_14095DF:   Call 0.Method_Proc_137_88_1409C380 (CInt(7), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(9)))
  loc_14095E7:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140963B:   Set var_DC = Me.Txt
  loc_1409641:   Call 0.Method_Proc_137_88_1409C380 (CInt(8), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HA)))
  loc_1409649:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140969D:   Set var_DC = Me.Txt
  loc_14096A3:   Call 0.Method_Proc_137_88_1409C380 (CInt(9), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HB)))
  loc_14096AB:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1409700:   Set var_DC = Me.Txt
  loc_1409706:   Call 0.Method_Proc_137_88_1409C380 (CInt(&HA), var_F8, CStr(var_F4.TextMatrix)), &H17)
  loc_140970E:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1409763:   Set var_DC = Me.Txt
  loc_1409769:   Call 0.Method_Proc_137_88_1409C380 (CInt(&H11), var_F8, CStr(var_F4.TextMatrix)), &H1A)
  loc_1409771:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_14097C5:   Set var_DC = Me.Txt
  loc_14097CB:   Call 0.Method_Proc_137_88_1409C380 (CInt(&HB), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HC)))
  loc_14097D3:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1409827:   Set var_DC = Me.Txt
  loc_140982D:   Call 0.Method_Proc_137_88_1409C380 (CInt(&HC), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HD)))
  loc_1409835:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1409889:   Set var_DC = Me.Txt
  loc_140988F:   Call 0.Method_Proc_137_88_1409C380 (CInt(&H12), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HE)))
  loc_1409897:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_14098EB:   Set var_DC = Me.Txt
  loc_14098F1:   Call 0.Method_Proc_137_88_1409C380 (CInt(&H10), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HF)))
  loc_14098F9:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140994D:   Set var_DC = Me.Txt
  loc_1409953:   Call 0.Method_Proc_137_88_1409C380 (CInt(&H10), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H10)))
  loc_140995B:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_14099B0:   Set var_DC = Me.Txt
  loc_14099B6:   Call 0.Method_Proc_137_88_1409C380 (CInt(6), var_F8, CStr(var_F4.TextMatrix)), &H11)
  loc_14099BE:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1409A13:   Set var_DC = Me.Txt
  loc_1409A19:   Call 0.Method_Proc_137_88_1409C380 (CInt(&HD), var_F8, CStr(var_F4.TextMatrix)), &H12)
  loc_1409A21:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_1409A76:   Set var_DC = Me.Txt
  loc_1409A7C:   Call 0.Method_Proc_137_88_1409C380 (CInt(&HD), var_F8, CStr(var_F4.TextMatrix)), &H13)
  loc_1409A84:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1409AD9:   Set var_DC = Me.Txt
  loc_1409ADF:   Call 0.Method_Proc_137_88_1409C380 (CInt(&HE), var_F8, CStr(var_F4.TextMatrix)), &H14)
  loc_1409AE7:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_1409B3C:   Set var_DC = Me.Txt
  loc_1409B42:   Call 0.Method_Proc_137_88_1409C380 (CInt(&HE), var_F8, CStr(var_F4.TextMatrix)), &H15)
  loc_1409B4A:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1409B9F:   Set var_DC = Me.Txt
  loc_1409BA5:   Call 0.Method_Proc_137_88_1409C380 (CInt(&HF), var_F8, CStr(var_F4.TextMatrix)), &H18)
  loc_1409BAD:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_1409C02:   Set var_DC = Me.Txt
  loc_1409C08:   Call 0.Method_Proc_137_88_1409C380 (CInt(&HF), var_F8, CStr(var_F4.TextMatrix)), &H19)
  loc_1409C10:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1409C2D:   global_164 = &HFF
  loc_1409C32:   Set var_F4 = Nothing 
  loc_1409C36: End If
  loc_1409C36: Exit Sub
End Sub

Public Sub Proc_137_89_EE4548
  'Data Table: 55E2B8
  loc_EE4496: On Error Goto loc_EE44DC
  loc_EE44AE: Call 0.Method_arg_18C (var_8C)
  loc_EE44B6: Call var_8C.Show
  loc_EE44CB: Call 0.Method_arg_188 (var_B0)
  loc_EE44D3: var_88 = var_B0
  loc_EE44D6: Proc_137_89_EE4548 = 1
  loc_EE44DC: ' Referenced from: EE4496
  loc_EE44E4: Set var_8C = Err()
  loc_EE44EA: Call 0.Method_arg_1C (var_B4)
  loc_EE44FB: If (var_B4 <> 0) Then
  loc_EE4506:   Set var_8C = Err()
  loc_EE450C:   Call 0.Method_arg_2C (var_B0)
  loc_EE452D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE4540: End If
  loc_EE4540: Proc_137_89_EE4548 = 
End Sub

Public Sub Proc_137_90_1C61B4C
  'Data Table: 55E2B8
  Dim var_B8 As String
  Dim var_124 As Variant
  Dim var_114 As String
  Dim var_C8 As Long
  Dim var_134 As Variant
  Dim var_110 As String
  Dim unk_55E2D7 As Connection15
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_144 As Variant
  Dim var_17C As Variant
  Dim var_180 As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_1C8 As String
  Dim var_184 As String
  Dim var_1F4 As String
  Dim var_168 As Fields15
  Dim var_CE As Integer
  Dim var_1EC As Fields15
  Dim var_1F0 As Field20
  Dim var_1F8 As Fields15
  Dim var_204 As Fields15
  Dim var_DC As Recordset15
  Dim var_E0 As Recordset15
  Dim var_EC As Double
  Dim var_210 As Double
  Dim var_218 As Double
  Dim var_29C As Variant
  Dim var_F8 As Double
  Dim var_108 As Double
  Dim var_100 As Double
  Dim var_E4 As Recordset15
  Dim var_8C As Recordset15
  Dim var_22C As String
  Dim var_230 As String
  Dim var_1E8 As Variant
  loc_1C5B6E1: Call Proc_137_91_120D924(MemVar_1F95044, "BREC")
  loc_1C5B6EC: var_C2 = var_110
  loc_1C5B72E: var_C8 = CLng(Val(CStr(Right(var_114, 8))))
  loc_1C5B73B: var_134 = 5
  loc_1C5B762: var_B8 = var_110
  loc_1C5B77A: global_100 = CStr(Trim(Mid(var_110, 9, var_134)))
  loc_1C5B799: If (global_120 = "ODC") Then
  loc_1C5B7C0:   unk_55E2D7.Execute "Select OUTDOORPARTYAC AS IndoorPartyAC from Enviro where LOGSite_code='" & MemVar_1F95078 & "'", var_134, -1
  loc_1C5B7CB:   Set var_CC = var_168
  loc_1C5B7DE: Else
  loc_1C5B802:   unk_55E2D7.Execute "Select * from Enviro where LOGSite_code='" & MemVar_1F95078 & "'", var_134, -1
  loc_1C5B80D:   Set var_CC = var_168
  loc_1C5B81D: End If
  loc_1C5B826: unk_55E2D7.BeginTrans var_16C
  loc_1C5B82F: var_86 = CByte(1) 'Byte
  loc_1C5B84D: var_114 = "UPDATE PaychargeH SET PostDocId='" & var_B8
  loc_1C5B854: var_154 = CVar(var_114 & "', SettleDate=") 'String
  loc_1C5B862: Proc_6_7_F26918(var_134, MemVar_1F950EC, var_154, var_1E8, -1, var_1EC)
  loc_1C5B885: Set var_168 = Me.Txt
  loc_1C5B88B: Call 0.Method_Proc_137_90_1C61B4C0 (CInt(0), var_180, var_184, var_168 & var_134 & " WHERE DocID='")
  loc_1C5B893: var_168 = var_180.Text
  loc_1C5B8B5: unk_55E2D7.Execute CStr(var_C8 & CVar(var_184) & "'"), var_B8, var_114
  loc_1C5B8F5: var_110 = var_B8
  loc_1C5B909: unk_55E2D7.Execute "Delete from Ledger where Docid='" & var_110 & "' AND V_Type='BREC'", var_134, -1
  loc_1C5B941: Call 0.Method_Proc_137_90_1C61B4C0 (CInt(0), var_180, var_110, "select AmtCr as CreditAmt,PayCode,Accode ,revmast.name as RevenueName,PaychargeH.Comments,ChqNo,ChqDate from PaychargeH Left Join RevMast on Revmast.Code=PaychargeH.PayCode where PayChargeH.Docid='")
  loc_1C5B949: var_1E8 = var_180.Text
  loc_1C5B952: var_114 = -1 & var_110
  loc_1C5B967: var_164 = CVar("Delete from Ledger where Docid='" & var_110 & "' And PaychargeH.SITE_CODE='" & MemVar_1F95070 & "' AND Vdate = ") 'String
  loc_1C5B975: Set var_1EC = Me.Txt
  loc_1C5B97B: Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_1F0, var_164)
  loc_1C5B98A: Proc_6_7_F26918(var_154, CVar(var_1F0))
  loc_1C5B9BF: unk_55E2D7.Execute CStr(var_1F8 & var_154 & " and AmtCr<>0 and PaychargeH.PayType='Cash' AND RestCode='" & CVar(global_52) & "'"), Me.Txt, 
  loc_1C5B9CA: Set var_8C = var_1F8
  loc_1C5B9F8: ' Referenced from: 1C5C0A5
  loc_1C5BA0A: If Not(Me.Recordset15.EOF) Then
  loc_1C5BA38:   var_D4 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Comments")))
  loc_1C5BA5E:   var_180 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1C5BA80:   If (var_180.Value > 0) Then
  loc_1C5BA89:     var_CE = (var_CE + 1)
  loc_1C5BA9A:     Set var_168 = Me.Txt
  loc_1C5BAA0:     Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180)
  loc_1C5BAA8:     var_184 = var_180.Text
  loc_1C5BB26:     var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5BB2E:     var_164 = Now
  loc_1C5BB38:     var_238 = 0
  loc_1C5BB43:     var_234 = 0
  loc_1C5BB4E:     var_230 = 0
  loc_1C5BB57:     var_22C = "A"
  loc_1C5BBBE:     Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C5BC0E:     var_CE = (var_CE + 1)
  loc_1C5BC1F:     Set var_168 = Me.Txt
  loc_1C5BC25:     Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_184, var_CE, CStr(Me.Recordset15.Fields.Item("IndoorPartyAC").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C5BC2D:     CDbl(0) = var_180.Text
  loc_1C5BC57:     var_17C = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5BCAB:     var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C5BCB3:     var_164 = Now
  loc_1C5BCBD:     var_238 = 0
  loc_1C5BCC8:     var_234 = 0
  loc_1C5BCD3:     var_230 = 0
  loc_1C5BCDC:     var_22C = "A"
  loc_1C5BCFC:     var_154 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1C5BD43:     Proc_6_141_12E23F4(MemVar_1F95044, var_110, var_CE, "Delete from Ledger where Docid='" & var_110, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C5BD4E:     var_B8 = var_110
  loc_1C5BD57:     var_C2 = "Delete from Ledger where Docid='" & var_110
  loc_1C5BD90:   Else
  loc_1C5BD96:     var_CE = (var_CE + 1)
  loc_1C5BDA7:     Set var_168 = Me.Txt
  loc_1C5BDAD:     Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_184, var_CE, CStr(var_17C), CDbl(0))
  loc_1C5BDB5:     CSng(var_154) = var_180.Text
  loc_1C5BE33:     var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C5BE3B:     var_164 = Now
  loc_1C5BE45:     var_238 = 0
  loc_1C5BE50:     var_234 = 0
  loc_1C5BE5B:     var_230 = 0
  loc_1C5BE64:     var_22C = "A"
  loc_1C5BECB:     Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C5BF1B:     var_CE = (var_CE + 1)
  loc_1C5BF2C:     Set var_168 = Me.Txt
  loc_1C5BF32:     Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_184, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C5BF3A:     CDbl(0) = var_180.Text
  loc_1C5BF5C:     var_1F0 = Me.Recordset15.Fields.Item("IndoorPartyAC")
  loc_1C5BF64:     var_17C = var_1F0.Value
  loc_1C5BF7E:     var_1F8 = Me.Recordset15.Fields
  loc_1C5BFB8:     var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5BFC0:     var_164 = Now
  loc_1C5BFCA:     var_238 = 0
  loc_1C5BFD5:     var_234 = 0
  loc_1C5BFE0:     var_230 = 0
  loc_1C5BFE9:     var_22C = "A"
  loc_1C5C009:     var_154 = Abs(var_1F8.Item("CreditAmt").Value)
  loc_1C5C050:     Proc_6_141_12E23F4(MemVar_1F95044, var_110, var_CE, "Delete from Ledger where Docid='" & var_110, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C5C05B:     var_B8 = var_110
  loc_1C5C064:     var_C2 = "Delete from Ledger where Docid='" & var_110
  loc_1C5C09A:   End If
  loc_1C5C0A0:   Me.Recordset15.MoveNext
  loc_1C5C0A5:   GoTo loc_1C5B9F8
  loc_1C5C0A8: End If
  loc_1C5C0C6: Set var_168 = Me.Txt
  loc_1C5C0CC: Call 0.Method_Proc_137_90_1C61B4C0 (CInt(0), var_180, var_110, "select sum(AmtDr) as CreditAmt,RestCode,PayCode,max(Accode) as ACCode,max(revmast.name) as RevenueNAme  from PaychargeH Left Join RevMast on Revmast.Code=PaychargeH.PayCode where PayChargeH.Docid='", var_1E8, -1, var_1F8)
  loc_1C5C0D4: CStr(var_17C) = var_180.Text
  loc_1C5C0F2: var_164 = CVar(CDbl(0) & var_110 & "' And PaychargeH.SITE_CODE='" & MemVar_1F95070 & "' AND Vdate = ") 'String
  loc_1C5C100: Set var_1EC = Me.Txt
  loc_1C5C106: Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_1F0, var_164, CSng(var_154))
  loc_1C5C115: Proc_6_7_F26918(var_154, CVar(var_1F0), CStr(var_194))
  loc_1C5C11D: var_17C = var_D4 & var_154 
  loc_1C5C13C: var_1C4 = var_17C & " and AmtDr<>0 and PaychargeH.PayType='Room' and roomtype='RO' AND RestCode='" & CVar(global_52) & "' Group By PayCode,RestCode" 
  loc_1C5C14A: unk_55E2D7.Execute CStr(var_1C4), MemVar_1F950C8, CDate(var_164)
  loc_1C5C155: Set var_8C = var_1F8
  loc_1C5C183: ' Referenced from: 1C5D001
  loc_1C5C195: If Not(Me.Recordset15.EOF) Then
  loc_1C5C1EE:   unk_55E2D7.Execute CStr("Select * from Depart Where Code='" & Me.Recordset15.Fields.Item("RestCode").Value & "'"), var_17C, -1
  loc_1C5C1F9:   Set var_DC = var_1EC
  loc_1C5C227:   If (var_DC.RecordCount > 0) Then
  loc_1C5C252:     var_110 = Proc_6_38_E69628(CVar(var_DC.Fields.Item("ShortName")))
  loc_1C5C259:     var_114 = var_110 & " "
  loc_1C5C26E:     var_1EC = Me.Recordset15.Fields
  loc_1C5C28B:     var_D4 = var_1EC & Proc_6_38_E69628(CVar(var_1EC.Item("RevenueName")), var_114)
  loc_1C5C2A8:   Else
  loc_1C5C2D6:     var_D4 = CStr(Me.Recordset15.Fields.Item("RevenueName").Value)
  loc_1C5C2E3:   End If
  loc_1C5C315:   If Not(IsNull(CVar(Me.Recordset15.Fields.Item("AcCode")))) Then
  loc_1C5C335:     var_180 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1C5C357:     If (var_180.Value > 0) Then
  loc_1C5C360:       var_CE = (var_CE + 1)
  loc_1C5C371:       Set var_168 = Me.Txt
  loc_1C5C377:       Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180)
  loc_1C5C37F:       var_184 = var_180.Text
  loc_1C5C3FD:       var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C5C405:       var_164 = Now
  loc_1C5C40F:       var_238 = 0
  loc_1C5C41A:       var_234 = 0
  loc_1C5C425:       var_230 = 0
  loc_1C5C42E:       var_22C = "A"
  loc_1C5C495:       Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C5C4E5:       var_CE = (var_CE + 1)
  loc_1C5C4F6:       Set var_168 = Me.Txt
  loc_1C5C4FC:       Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_184, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C5C504:       CDbl(0) = var_180.Text
  loc_1C5C52E:       var_17C = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C5C582:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5C58A:       var_164 = Now
  loc_1C5C594:       var_238 = 0
  loc_1C5C59F:       var_234 = 0
  loc_1C5C5AA:       var_230 = 0
  loc_1C5C5B3:       var_22C = "A"
  loc_1C5C5D3:       var_154 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1C5C61A:       Proc_6_141_12E23F4(MemVar_1F95044, var_110, var_CE, var_114, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C5C625:       var_B8 = var_110
  loc_1C5C62E:       var_C2 = var_114
  loc_1C5C667:     Else
  loc_1C5C66D:       var_CE = (var_CE + 1)
  loc_1C5C67E:       Set var_168 = Me.Txt
  loc_1C5C684:       Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_184, var_CE, CStr(var_17C), CDbl(0))
  loc_1C5C68C:       CSng(var_154) = var_180.Text
  loc_1C5C6B6:       var_17C = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C5C70A:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5C712:       var_164 = Now
  loc_1C5C71C:       var_238 = 0
  loc_1C5C727:       var_234 = 0
  loc_1C5C732:       var_230 = 0
  loc_1C5C73B:       var_22C = "A"
  loc_1C5C762:       var_154 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1C5C7A2:       Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C5C7AD:       var_B8 = var_110
  loc_1C5C7B6:       var_C2 = var_114
  loc_1C5C7EC:     End If
  loc_1C5C7F2:     var_CE = (var_CE + 1)
  loc_1C5C803:     Set var_168 = Me.Txt
  loc_1C5C809:     Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_184, var_CE, CStr(var_17C), CSng(var_154))
  loc_1C5C811:     CDbl(0) = var_180.Text
  loc_1C5C83B:     var_17C = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5C88F:     var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C5C897:     var_164 = Now
  loc_1C5C8A1:     var_238 = 0
  loc_1C5C8AC:     var_234 = 0
  loc_1C5C8B7:     var_230 = 0
  loc_1C5C8C0:     var_22C = "A"
  loc_1C5C8E0:     var_154 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1C5C927:     Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C5C932:     var_B8 = var_110
  loc_1C5C93B:     var_C2 = var_114
  loc_1C5C974:   Else
  loc_1C5C991:     var_180 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1C5C9B3:     If (var_180.Value > 0) Then
  loc_1C5C9CF:       MsgBox(vbNullString, &H10, var_154, var_164, var_17C)
  loc_1C5C9E5:       var_CE = (var_CE + 1)
  loc_1C5C9F6:       Set var_168 = Me.Txt
  loc_1C5C9FC:       Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_184, var_CE, CStr(var_17C), CDbl(0))
  loc_1C5CA04:       CSng(var_154) = var_180.Text
  loc_1C5CA82:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5CA8A:       var_164 = Now
  loc_1C5CA94:       var_238 = 0
  loc_1C5CA9F:       var_234 = 0
  loc_1C5CAAA:       var_230 = 0
  loc_1C5CAB3:       var_22C = "A"
  loc_1C5CB1A:       Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C5CB6A:       var_CE = (var_CE + 1)
  loc_1C5CB7B:       Set var_168 = Me.Txt
  loc_1C5CB81:       Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_184, var_CE, CStr(Me.Recordset15.Fields.Item("IndoorPartyAC").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C5CB89:       CDbl(0) = var_180.Text
  loc_1C5CBB3:       var_17C = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5CC07:       var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C5CC0F:       var_164 = Now
  loc_1C5CC19:       var_238 = 0
  loc_1C5CC24:       var_234 = 0
  loc_1C5CC2F:       var_230 = 0
  loc_1C5CC38:       var_22C = "A"
  loc_1C5CC58:       var_154 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1C5CC9F:       Proc_6_141_12E23F4(MemVar_1F95044, var_110, var_CE, var_114, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C5CCAA:       var_B8 = var_110
  loc_1C5CCB3:       var_C2 = var_114
  loc_1C5CCEC:     Else
  loc_1C5CCF2:       var_CE = (var_CE + 1)
  loc_1C5CD03:       Set var_168 = Me.Txt
  loc_1C5CD09:       Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_184, var_CE, CStr(var_17C), CDbl(0))
  loc_1C5CD11:       CSng(var_154) = var_180.Text
  loc_1C5CD8F:       var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C5CD97:       var_164 = Now
  loc_1C5CDA1:       var_238 = 0
  loc_1C5CDAC:       var_234 = 0
  loc_1C5CDB7:       var_230 = 0
  loc_1C5CDC0:       var_22C = "A"
  loc_1C5CE27:       Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C5CE77:       var_CE = (var_CE + 1)
  loc_1C5CE88:       Set var_168 = Me.Txt
  loc_1C5CE8E:       Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_184, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C5CE96:       CDbl(0) = var_180.Text
  loc_1C5CEB8:       var_1F0 = Me.Recordset15.Fields.Item("IndoorPartyAC")
  loc_1C5CEC0:       var_17C = var_1F0.Value
  loc_1C5CEDA:       var_1F8 = Me.Recordset15.Fields
  loc_1C5CF14:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5CF1C:       var_164 = Now
  loc_1C5CF26:       var_238 = 0
  loc_1C5CF31:       var_234 = 0
  loc_1C5CF3C:       var_230 = 0
  loc_1C5CF45:       var_22C = "A"
  loc_1C5CF65:       var_154 = Abs(var_1F8.Item("CreditAmt").Value)
  loc_1C5CFAC:       Proc_6_141_12E23F4(MemVar_1F95044, var_110, var_CE, var_114, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C5CFB7:       var_B8 = var_110
  loc_1C5CFC0:       var_C2 = var_114
  loc_1C5CFF6:     End If
  loc_1C5CFF6:   End If
  loc_1C5CFFC:   Me.Recordset15.MoveNext
  loc_1C5D001:   GoTo loc_1C5C183
  loc_1C5D004: End If
  loc_1C5D022: Set var_168 = Me.Txt
  loc_1C5D028: Call 0.Method_Proc_137_90_1C61B4C0 (CInt(0), var_180, var_110, "select Sum(AmtCr) as CreditAmt,PayCode,max(Comments) as Comments,max(Accode) as ACCode,max(CardNo) as CardNo,max(RestCode) as RestCode,max(PaychargeH.PayType) as Paytype,max(revmast.name) as RevenueName,BatchNo from PaychargeH Left Join RevMast on Revmast.Code=PaychargeH.PayCode  where PayChargeH.Docid='", var_1E8, -1, var_1F8)
  loc_1C5D030: CStr(var_17C) = var_180.Text
  loc_1C5D039: var_114 = CDbl(0) & var_110
  loc_1C5D047: var_1C8 = var_114 & "' And PaychargeH.SITE_CODE='" & MemVar_1F95070
  loc_1C5D04E: var_164 = CVar(var_1C8 & "' AND Vdate = ") 'String
  loc_1C5D05C: Set var_1EC = Me.Txt
  loc_1C5D062: Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_1F0, var_164, CSng(var_154))
  loc_1C5D071: Proc_6_7_F26918(var_154, CVar(var_1F0), CStr(var_194))
  loc_1C5D098: var_1C4 = var_D4 & var_154 & "  and AmtCr<>0 and RestCode='" & CVar(global_52) & "' and PaychargeH.PayType in ('Credit Card') Group by Paycode,BatchNo" 
  loc_1C5D09C: var_1F4 = CStr(var_1C4)
  loc_1C5D0A6: unk_55E2D7.Execute var_1F4, MemVar_1F950C8, CDate(var_164)
  loc_1C5D0B1: Set var_8C = var_1F8
  loc_1C5D0DF: ' Referenced from: 1C5F9FD
  loc_1C5D0F1: If Not(Me.Recordset15.EOF) Then
  loc_1C5D122:   Proc_6_39_E7D3A0(var_154, CVar(Me.Recordset15.Fields.Item("BatchNo")))
  loc_1C5D12F:   var_D4 = CStr("Batch No. " & var_154)
  loc_1C5D15B:   var_180 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1C5D17D:   If (var_180.Value > 0) Then
  loc_1C5D186:     var_CE = (var_CE + 1)
  loc_1C5D197:     Set var_168 = Me.Txt
  loc_1C5D19D:     Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180)
  loc_1C5D1A5:     var_184 = var_180.Text
  loc_1C5D223:     var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5D22B:     var_164 = Now
  loc_1C5D235:     var_238 = 0
  loc_1C5D240:     var_234 = 0
  loc_1C5D24B:     var_230 = 0
  loc_1C5D254:     var_22C = "A"
  loc_1C5D2BB:     Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C5D30B:     var_CE = (var_CE + 1)
  loc_1C5D31C:     Set var_168 = Me.Txt
  loc_1C5D322:     Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_184, var_CE, CStr(Me.Recordset15.Fields.Item("IndoorPartyAC").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C5D32A:     CDbl(0) = var_180.Text
  loc_1C5D354:     var_17C = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5D3A8:     var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C5D3B0:     var_164 = Now
  loc_1C5D3BA:     var_238 = 0
  loc_1C5D3C5:     var_234 = 0
  loc_1C5D3D0:     var_230 = 0
  loc_1C5D3D9:     var_22C = "A"
  loc_1C5D3F9:     var_154 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1C5D440:     Proc_6_141_12E23F4(MemVar_1F95044, var_110, var_CE, var_114, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C5D44B:     var_B8 = var_110
  loc_1C5D454:     var_C2 = var_114
  loc_1C5D48D:   Else
  loc_1C5D493:     var_CE = (var_CE + 1)
  loc_1C5D4A4:     Set var_168 = Me.Txt
  loc_1C5D4AA:     Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_184, var_CE, CStr(var_17C), CDbl(0))
  loc_1C5D4B2:     CSng(var_154) = var_180.Text
  loc_1C5D530:     var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C5D538:     var_164 = Now
  loc_1C5D542:     var_238 = 0
  loc_1C5D54D:     var_234 = 0
  loc_1C5D558:     var_230 = 0
  loc_1C5D561:     var_22C = "A"
  loc_1C5D5C8:     Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C5D618:     var_CE = (var_CE + 1)
  loc_1C5D629:     Set var_168 = Me.Txt
  loc_1C5D62F:     Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_184, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C5D637:     CDbl(0) = var_180.Text
  loc_1C5D659:     var_1F0 = Me.Recordset15.Fields.Item("IndoorPartyAC")
  loc_1C5D661:     var_17C = var_1F0.Value
  loc_1C5D67B:     var_1F8 = Me.Recordset15.Fields
  loc_1C5D6B5:     var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5D6BD:     var_164 = Now
  loc_1C5D6C7:     var_238 = 0
  loc_1C5D6D2:     var_234 = 0
  loc_1C5D6DD:     var_230 = 0
  loc_1C5D6E6:     var_22C = "A"
  loc_1C5D706:     var_154 = Abs(var_1F8.Item("CreditAmt").Value)
  loc_1C5D74D:     Proc_6_141_12E23F4(MemVar_1F95044, var_110, var_CE, var_114, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C5D758:     var_B8 = var_110
  loc_1C5D761:     var_C2 = var_114
  loc_1C5D797:   End If
  loc_1C5D7D6:   If (Me.Recordset15.Fields.Item("PayType").Value = "Credit Card") Then
  loc_1C5D818:     var_154 = "Select Top 1 Revcode,AppDate from CreditCardHistory Where Revcode='" & Me.Recordset15.Fields.Item("PayCode").Value 
  loc_1C5D830:     Set var_1EC = Me.Txt
  loc_1C5D836:     Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_1F0, var_154 & "' and AppDate<=", var_1E8, -1, var_1F8, CStr(var_17C))
  loc_1C5D845:     Proc_6_7_F26918(var_194, CVar(var_1F0), CDbl(0), CSng(var_154))
  loc_1C5D864:     unk_55E2D7.Execute CStr(CStr(var_194) & var_194 & " Order by AppDate Desc"), var_D4, MemVar_1F950C8
  loc_1C5D86F:     Set var_E0 = var_1F8
  loc_1C5D8A7:     If (var_E0.RecordCount > 0) Then
  loc_1C5D8B7:       var_144 = "Select CommAc as BankCommAc,CommPer as BankCommPer,Taxstru,Limit,Limit1,CompOperator from CreditCardHistory Where Revcode='"
  loc_1C5D8E9:       var_154 = var_144 & Me.Recordset15.Fields.Item("PayCode").Value 
  loc_1C5D8F2:       var_164 = var_154 & "' and AppDate<=" 
  loc_1C5D91C:       Proc_6_7_F26918(var_194, CVar(var_E0.Fields.Item("AppDate")), var_164, var_1E8)
  loc_1C5D924:       var_1A4 = -1 & var_194 
  loc_1C5D93B:       unk_55E2D7.Execute CStr(CStr(var_194) & var_194 & vbNullString), var_1F8, CDate(var_164)
  loc_1C5D946:       Set var_E0 = var_1F8
  loc_1C5D96A:       ' Referenced from: 1C5EBF2
  loc_1C5D979:       If Not(var_E0.EOF) Then
  loc_1C5D9AA:         Proc_6_39_E7D3A0(var_154, CVar(Me.Recordset15.Fields.Item("BatchNo")))
  loc_1C5D9B7:         var_D4 = CStr("Batch No. " & var_154)
  loc_1C5D9EE:         var_25C = Proc_6_38_E69628(CVar(var_E0.Fields.Item("CompOperator")))
  loc_1C5D9FF:         If (var_25C = "<=") Then
  loc_1C5DA6D:           If (Me.Recordset15.Fields.Item("CreditAmt").Value >= var_E0.Fields.Item("Limit").Value) Then
  loc_1C5DAA3:             var_EC = Val(CStr(var_E0.Fields.Item("BankCommPer").Value))
  loc_1C5DADE:             var_F0 = CStr(var_E0.Fields.Item("TaxStru").Value)
  loc_1C5DB08:             var_180 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1C5DB7F:             var_194 = (Round(CVar(((Val(CStr(var_180.Value)) * Val(CStr(var_E0.Fields.Item("BankCommPer").Value))) / CDbl(&H64))), 2) > 0)
  loc_1C5DBE8:             var_29C = var_194 And Not(IsNull(CVar(var_E0.Fields.Item("BankCommAc")))) And (var_E0.Fields.Item("BankCommAc").Value <> vbNullString)
  loc_1C5DC17:             If CBool(var_29C) Then
  loc_1C5DC20:               var_CE = (var_CE + 1)
  loc_1C5DC31:               Set var_168 = Me.Txt
  loc_1C5DC37:               Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_1F4, var_CE)
  loc_1C5DC3F:               var_218 = var_180.Text
  loc_1C5DCED:               var_164 = CVar(((Val(CStr(Me.Recordset15.Fields.Item("CreditAmt").Value)) * Val(CStr(var_E0.Fields.Item("BankCommPer").Value))) / CDbl(&H64))) 'Double
  loc_1C5DD1B:               var_1C4 = var_E0.Fields.Item("BankCommAc").Value
  loc_1C5DD23:               var_194 = Now
  loc_1C5DD2D:               var_2AC = 0
  loc_1C5DD38:               var_2A8 = 0
  loc_1C5DD43:               var_238 = 0
  loc_1C5DD4C:               var_234 = "A"
  loc_1C5DDAF:               Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F95070, CDate(var_1F4))
  loc_1C5DE0D:               var_CE = (var_CE + 1)
  loc_1C5DE1E:               Set var_168 = Me.Txt
  loc_1C5DE24:               Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_1F4, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Round(var_164, 2)))
  loc_1C5DE2C:               CDbl(0) = var_180.Text
  loc_1C5DE53:               var_1A4 = var_E0.Fields.Item("BankCommAc").Value
  loc_1C5DED7:               var_164 = CVar(((Val(CStr(Me.Recordset15.Fields.Item("CreditAmt").Value)) * Val(CStr(var_E0.Fields.Item("BankCommPer").Value))) / CDbl(&H64))) 'Double
  loc_1C5DEDE:               var_17C = Round(var_164, 2)
  loc_1C5DF08:               var_1C4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5DF10:               var_194 = Now
  loc_1C5DF1A:               var_2AC = 0
  loc_1C5DF25:               var_2A8 = 0
  loc_1C5DF30:               var_238 = 0
  loc_1C5DF39:               var_234 = "A"
  loc_1C5DF9C:               Proc_6_141_12E23F4(MemVar_1F95044, var_184, var_CE, var_1C8, var_C8, global_100, MemVar_1F95070, CDate(var_1F4))
  loc_1C5DFA7:               var_B8 = var_184
  loc_1C5DFB0:               var_C2 = var_1C8
  loc_1C5DFF4:             End If
  loc_1C5DFF4:           End If
  loc_1C5DFF7:         Else
  loc_1C5DFFF:           If (var_25C = "Between") Then
  loc_1C5E0B8:             var_1C4 = (Me.Recordset15.Fields.Item("CreditAmt").Value >= var_E0.Fields.Item("Limit").Value) And (Me.Recordset15.Fields.Item("CreditAmt").Value <= var_E0.Fields.Item("Limit1").Value)
  loc_1C5E0DC:             If CBool(var_1C4) Then
  loc_1C5E14D:               var_F0 = CStr(var_E0.Fields.Item("TaxStru").Value)
  loc_1C5E177:               var_180 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1C5E190:               var_210 = Val(CStr(var_180.Value))
  loc_1C5E1C6:               var_218 = Val(CStr(var_E0.Fields.Item("BankCommPer").Value))
  loc_1C5E211:               var_1A4 = CVar(var_E0.Fields.Item("BankCommAc")) 'Address
  loc_1C5E257:               var_29C = (Round(CVar(((var_210 * var_218) / CDbl(&H64))), 2) > 0) And Not(IsNull(var_1A4)) And (var_E0.Fields.Item("BankCommAc").Value <> vbNullString)
  loc_1C5E286:               If CBool(var_29C) Then
  loc_1C5E28F:                 var_CE = (var_CE + 1)
  loc_1C5E2A0:                 Set var_168 = Me.Txt
  loc_1C5E2A6:                 Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_1F4, var_CE, var_218, var_210, Val(CStr(var_E0.Fields.Item("BankCommPer").Value)))
  loc_1C5E2AE:                 CStr(var_1A4) = var_180.Text
  loc_1C5E35C:                 var_164 = CVar(((Val(CStr(Me.Recordset15.Fields.Item("CreditAmt").Value)) * Val(CStr(var_E0.Fields.Item("BankCommPer").Value))) / CDbl(&H64))) 'Double
  loc_1C5E38A:                 var_1C4 = var_E0.Fields.Item("BankCommAc").Value
  loc_1C5E392:                 var_194 = Now
  loc_1C5E39C:                 var_2AC = 0
  loc_1C5E3A7:                 var_2A8 = 0
  loc_1C5E3B2:                 var_238 = 0
  loc_1C5E3BB:                 var_234 = "A"
  loc_1C5E41E:                 Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F95070, CDate(var_1F4))
  loc_1C5E47C:                 var_CE = (var_CE + 1)
  loc_1C5E48D:                 Set var_168 = Me.Txt
  loc_1C5E493:                 Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_1F4, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Round(var_164, 2)))
  loc_1C5E49B:                 CDbl(0) = var_180.Text
  loc_1C5E4C2:                 var_1A4 = var_E0.Fields.Item("BankCommAc").Value
  loc_1C5E546:                 var_164 = CVar(((Val(CStr(Me.Recordset15.Fields.Item("CreditAmt").Value)) * Val(CStr(var_E0.Fields.Item("BankCommPer").Value))) / CDbl(&H64))) 'Double
  loc_1C5E54D:                 var_17C = Round(var_164, 2)
  loc_1C5E577:                 var_1C4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5E57F:                 var_194 = Now
  loc_1C5E589:                 var_2AC = 0
  loc_1C5E594:                 var_2A8 = 0
  loc_1C5E59F:                 var_238 = 0
  loc_1C5E5A8:                 var_234 = "A"
  loc_1C5E60B:                 Proc_6_141_12E23F4(MemVar_1F95044, var_184, var_CE, var_1C8, var_C8, global_100, MemVar_1F95070, CDate(var_1F4))
  loc_1C5E616:                 var_B8 = var_184
  loc_1C5E61F:                 var_C2 = var_1C8
  loc_1C5E663:               End If
  loc_1C5E663:             End If
  loc_1C5E666:           Else
  loc_1C5E699:             var_EC = Val(CStr(var_E0.Fields.Item("BankCommPer").Value))
  loc_1C5E6D4:             var_F0 = CStr(var_E0.Fields.Item("TaxStru").Value)
  loc_1C5E6FE:             var_180 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1C5E717:             var_210 = Val(CStr(var_180.Value))
  loc_1C5E74D:             var_218 = Val(CStr(var_E0.Fields.Item("BankCommPer").Value))
  loc_1C5E798:             var_1A4 = CVar(var_E0.Fields.Item("BankCommAc")) 'Address
  loc_1C5E7DE:             var_29C = (Round(CVar(((var_210 * var_218) / CDbl(&H64))), 2) > 0) And Not(IsNull(var_1A4)) And (var_E0.Fields.Item("BankCommAc").Value <> vbNullString)
  loc_1C5E80D:             If CBool(var_29C) Then
  loc_1C5E816:               var_CE = (var_CE + 1)
  loc_1C5E827:               Set var_168 = Me.Txt
  loc_1C5E82D:               Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_1F4, var_CE, var_218, var_210, var_EC)
  loc_1C5E835:               CStr(var_1A4) = var_180.Text
  loc_1C5E8E3:               var_164 = CVar(((Val(CStr(Me.Recordset15.Fields.Item("CreditAmt").Value)) * Val(CStr(var_E0.Fields.Item("BankCommPer").Value))) / CDbl(&H64))) 'Double
  loc_1C5E911:               var_1C4 = var_E0.Fields.Item("BankCommAc").Value
  loc_1C5E919:               var_194 = Now
  loc_1C5E923:               var_2AC = 0
  loc_1C5E92E:               var_2A8 = 0
  loc_1C5E939:               var_238 = 0
  loc_1C5E942:               var_234 = "A"
  loc_1C5E9A5:               Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F95070, CDate(var_1F4))
  loc_1C5EA03:               var_CE = (var_CE + 1)
  loc_1C5EA14:               Set var_168 = Me.Txt
  loc_1C5EA1A:               Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_1F4, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Round(var_164, 2)))
  loc_1C5EA22:               CDbl(0) = var_180.Text
  loc_1C5EA49:               var_1A4 = var_E0.Fields.Item("BankCommAc").Value
  loc_1C5EACD:               var_164 = CVar(((Val(CStr(Me.Recordset15.Fields.Item("CreditAmt").Value)) * Val(CStr(var_E0.Fields.Item("BankCommPer").Value))) / CDbl(&H64))) 'Double
  loc_1C5EAD4:               var_17C = Round(var_164, 2)
  loc_1C5EAFE:               var_1C4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5EB06:               var_194 = Now
  loc_1C5EB10:               var_2AC = 0
  loc_1C5EB1B:               var_2A8 = 0
  loc_1C5EB26:               var_238 = 0
  loc_1C5EB2F:               var_234 = "A"
  loc_1C5EB92:               Proc_6_141_12E23F4(MemVar_1F95044, var_184, var_CE, var_1C8, var_C8, global_100, MemVar_1F95070, CDate(var_1F4))
  loc_1C5EB9D:               var_B8 = var_184
  loc_1C5EBA6:               var_C2 = var_1C8
  loc_1C5EBEA:             End If
  loc_1C5EBEA:           End If
  loc_1C5EBEA:         End If
  loc_1C5EBED:         var_E0.MoveNext
  loc_1C5EBF2:         GoTo loc_1C5D96A
  loc_1C5EBF5:       End If
  loc_1C5EC0A:       var_168 = Me.Recordset15.Fields
  loc_1C5EC1A:       var_134 = var_168.Item("CreditAmt").Value
  loc_1C5EC4E:       var_F8 = CSng(Round(CVar(((Val(CStr(var_134)) * var_EC) / CDbl(&H64))), 3))
  loc_1C5EC67:       var_108 = CDbl(0)
  loc_1C5EC84:       var_110 = "Select AcCode,Rate,TaxStru.Nature from TaxStru INNER JOIN revmast on RevMast.Code=TaxStru.TaxCode Where TaxStru.Code='" & var_F0
  loc_1C5EC8B:       var_114 = var_110 & "'"
  loc_1C5EC94:       unk_55E2D7.Execute var_114, var_134, -1
  loc_1C5EC9F:       Set var_E4 = var_168
  loc_1C5ECC3:       If (var_E4.RecordCount > 0) Then
  loc_1C5ECE0:         var_180 = var_E4.Fields.Item("Nature")
  loc_1C5ECF0:         var_2CC = var_180.Value 'Variant
  loc_1C5ED06:         If (var_2CC = "On Base Amt") Then
  loc_1C5ED0F:           var_CE = (var_CE + 1)
  loc_1C5ED26:           Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_1C8, var_CE, Me.Txt, CDbl(0), var_108)
  loc_1C5ED2E:           var_F8 = var_180.Text
  loc_1C5EDD1:           var_1A4 = var_E4.Fields.Item("AcCode").Value
  loc_1C5EDD9:           var_17C = Now
  loc_1C5EDE3:           var_2A8 = 0
  loc_1C5EDEE:           var_238 = 0
  loc_1C5EDF9:           var_234 = 0
  loc_1C5EE02:           var_230 = "A"
  loc_1C5EE65:           Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F95070, CDate(var_1C8))
  loc_1C5EEBB:           var_CE = (var_CE + 1)
  loc_1C5EECC:           Set var_168 = Me.Txt
  loc_1C5EED2:           Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_1C8, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_F8) / CDbl(&H64))), 2)))
  loc_1C5EEDA:           CDbl(0) = var_180.Text
  loc_1C5EF01:           var_194 = var_E4.Fields.Item("AcCode").Value
  loc_1C5EF53:           var_164 = Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_F8) / CDbl(&H64))), 2)
  loc_1C5EF7D:           var_1A4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5EF85:           var_17C = Now
  loc_1C5EF8F:           var_2A8 = 0
  loc_1C5EF9A:           var_238 = 0
  loc_1C5EFA5:           var_234 = 0
  loc_1C5EFAE:           var_230 = "A"
  loc_1C5F011:           Proc_6_141_12E23F4(MemVar_1F95044, var_114, var_CE, var_184, var_C8, global_100, MemVar_1F95070, CDate(var_1C8))
  loc_1C5F01C:           var_B8 = var_114
  loc_1C5F025:           var_C2 = var_184
  loc_1C5F0B7:           var_100 = CSng(Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_F8) / CDbl(&H64))), 3))
  loc_1C5F0E7:           var_180 = var_E4.Fields.Item("Rate")
  loc_1C5F100:           var_210 = Val(CStr(var_180.Value))
  loc_1C5F129:           var_17C = (CVar(var_108) + Round(CVar(((var_210 * var_F8) / CDbl(&H64))), 3))
  loc_1C5F12E:           var_108 = CSng(var_17C)
  loc_1C5F149:         Else
  loc_1C5F154:           If (var_2CC = "On Prev. Tax Amt") Then
  loc_1C5F15D:             var_CE = (var_CE + 1)
  loc_1C5F16E:             Set var_168 = Me.Txt
  loc_1C5F174:             Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_1C8, var_CE, var_108, var_210, var_100)
  loc_1C5F17C:             var_210 = var_180.Text
  loc_1C5F21F:             var_1A4 = var_E4.Fields.Item("AcCode").Value
  loc_1C5F227:             var_17C = Now
  loc_1C5F231:             var_2A8 = 0
  loc_1C5F23C:             var_238 = 0
  loc_1C5F247:             var_234 = 0
  loc_1C5F250:             var_230 = "A"
  loc_1C5F2B3:             Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F95070, CDate(var_1C8))
  loc_1C5F309:             var_CE = (var_CE + 1)
  loc_1C5F31A:             Set var_168 = Me.Txt
  loc_1C5F320:             Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_1C8, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_100) / CDbl(&H64))), 2)))
  loc_1C5F328:             CDbl(0) = var_180.Text
  loc_1C5F34F:             var_194 = var_E4.Fields.Item("AcCode").Value
  loc_1C5F3A1:             var_164 = Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_100) / CDbl(&H64))), 2)
  loc_1C5F3CB:             var_1A4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5F3D3:             var_17C = Now
  loc_1C5F3DD:             var_2A8 = 0
  loc_1C5F3E8:             var_238 = 0
  loc_1C5F3F3:             var_234 = 0
  loc_1C5F3FC:             var_230 = "A"
  loc_1C5F45F:             Proc_6_141_12E23F4(MemVar_1F95044, var_114, var_CE, var_184, var_C8, global_100, MemVar_1F95070, CDate(var_1C8))
  loc_1C5F46A:             var_B8 = var_114
  loc_1C5F473:             var_C2 = var_184
  loc_1C5F505:             var_100 = CSng(Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_100) / CDbl(&H64))), 3))
  loc_1C5F535:             var_180 = var_E4.Fields.Item("Rate")
  loc_1C5F54E:             var_210 = Val(CStr(var_180.Value))
  loc_1C5F577:             var_17C = (CVar(var_108) + Round(CVar(((var_210 * var_100) / CDbl(&H64))), 3))
  loc_1C5F57C:             var_108 = CSng(var_17C)
  loc_1C5F597:           Else
  loc_1C5F5A2:             If (var_2CC = "On Running Total") Then
  loc_1C5F5AB:               var_CE = (var_CE + 1)
  loc_1C5F5BC:               Set var_168 = Me.Txt
  loc_1C5F5C2:               Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_1C8, var_CE, var_108, var_210, var_100)
  loc_1C5F5CA:               var_210 = var_180.Text
  loc_1C5F66D:               var_1A4 = var_E4.Fields.Item("AcCode").Value
  loc_1C5F675:               var_17C = Now
  loc_1C5F67F:               var_2A8 = 0
  loc_1C5F68A:               var_238 = 0
  loc_1C5F695:               var_234 = 0
  loc_1C5F69E:               var_230 = "A"
  loc_1C5F701:               Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F95070, CDate(var_1C8))
  loc_1C5F757:               var_CE = (var_CE + 1)
  loc_1C5F768:               Set var_168 = Me.Txt
  loc_1C5F76E:               Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_1C8, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_108) / CDbl(&H64))), 2)))
  loc_1C5F776:               CDbl(0) = var_180.Text
  loc_1C5F795:               var_1F0 = var_E4.Fields.Item("AcCode")
  loc_1C5F79D:               var_194 = var_1F0.Value
  loc_1C5F7B4:               var_1F8 = var_E4.Fields
  loc_1C5F7EF:               var_164 = Round(CVar(((Val(CStr(var_1F8.Item("Rate").Value)) * var_108) / CDbl(&H64))), 2)
  loc_1C5F819:               var_1A4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5F821:               var_17C = Now
  loc_1C5F82B:               var_2A8 = 0
  loc_1C5F836:               var_238 = 0
  loc_1C5F841:               var_234 = 0
  loc_1C5F84A:               var_230 = "A"
  loc_1C5F8AD:               Proc_6_141_12E23F4(MemVar_1F95044, var_114, var_CE, var_184, var_C8, global_100, MemVar_1F95070, CDate(var_1C8))
  loc_1C5F8B8:               var_B8 = var_114
  loc_1C5F8C1:               var_C2 = var_184
  loc_1C5F953:               var_100 = CSng(Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_108) / CDbl(&H64))), 3))
  loc_1C5F983:               var_180 = var_E4.Fields.Item("Rate")
  loc_1C5F994:               var_110 = CStr(var_180.Value)
  loc_1C5F99C:               var_210 = Val(var_110)
  loc_1C5F9B6:               var_154 = CVar(((var_210 * var_108) / CDbl(&H64))) 'Double
  loc_1C5F9C5:               var_17C = (CVar(var_108) + Round(var_154, 3))
  loc_1C5F9CA:               var_108 = CSng(var_17C)
  loc_1C5F9E2:             End If
  loc_1C5F9E2:           End If
  loc_1C5F9E2:         End If
  loc_1C5F9E2:       End If
  loc_1C5F9E2:     End If
  loc_1C5F9E7:     Set var_E0 = Nothing
  loc_1C5F9EF:     Set var_E4 = Nothing
  loc_1C5F9F2:   End If
  loc_1C5F9F8:   var_8C.MoveNext
  loc_1C5F9FD:   GoTo loc_1C5D0DF
  loc_1C5FA00: End If
  loc_1C5FA1E: Set var_168 = Me.Txt
  loc_1C5FA24: Call 0.Method_Proc_137_90_1C61B4C0 (CInt(0), var_180, var_110, "select AmtCr as CreditAmt,PayCode,Comments,Accode,CardNo,RestCode,PaychargeH.PayType,revmast.name as RevenueName,ChqNo,ChqDate  from PaychargeH Left Join RevMast on Revmast.Code=PayChargeH.PayCode  where PayChargeH.Docid='", var_1E8, -1, var_1F8)
  loc_1C5FA2C: var_108 = var_180.Text
  loc_1C5FA35: var_114 = var_210 & var_110
  loc_1C5FA3C: var_184 = var_114 & "' And PaychargeH.SITE_CODE='"
  loc_1C5FA4A: var_164 = CVar(var_184 & MemVar_1F95070 & "' AND Vdate = ") 'String
  loc_1C5FA58: Set var_1EC = Me.Txt
  loc_1C5FA5E: Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_1F0, var_164, var_100)
  loc_1C5FA6D: Proc_6_7_F26918(var_154, CVar(var_1F0), var_210)
  loc_1C5FA75: var_17C = CStr(var_194) & var_154 
  loc_1C5FA79: var_124 = " and AmtCr<>0 and PaychargeH.docid not in (Select ContraDocId from PaychargeH where ContraDocId is not null) and (PaychargeH.DbtChkIn<>'Yes' or PaychargeH.DbtChkIn is NULL ) AND RestCode='"
  loc_1C5FA94: var_1C4 = var_17C & var_124 & CVar(global_52) & "' and PaychargeH.PayType not in ('Cash','Staff','Company','Member','Credit Card')" 
  loc_1C5FAA2: unk_55E2D7.Execute CStr(var_1C4), CDbl(0), CSng(var_164)
  loc_1C5FAAD: Set var_8C = var_1F8
  loc_1C5FADB: ' Referenced from: 1C60C2E
  loc_1C5FAED: If Not(Me.Recordset15.EOF) Then
  loc_1C5FB2C:   If (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Comments"))) = vbNullString) Then
  loc_1C5FB85:     unk_55E2D7.Execute CStr("Select * from Depart Where Code='" & Me.Recordset15.Fields.Item("RestCode").Value & "'"), var_17C, -1
  loc_1C5FB90:     Set var_DC = var_1EC
  loc_1C5FBBE:     If (var_DC.RecordCount > 0) Then
  loc_1C5FC00:       If (Me.Recordset15.Fields.Item("PayType").Value = "Credit Card") Then
  loc_1C5FC62:         var_17C = (CVar(Proc_6_38_E69628(CVar(var_DC.Fields.Item("ShortName"))) & " C.C.No.") + Me.Recordset15.Fields.Item("CardNo").Value)
  loc_1C5FC67:         var_D4 = CStr(var_17C)
  loc_1C5FC84:       Else
  loc_1C5FCE3:         var_17C = (CVar(Proc_6_38_E69628(CVar(var_DC.Fields.Item("ShortName"))) & " ") + Me.Recordset15.Fields.Item("RevenueName").Value)
  loc_1C5FCE8:         var_D4 = CStr(var_17C)
  loc_1C5FD02:       End If
  loc_1C5FD05:     Else
  loc_1C5FD33:       var_D4 = CStr(Me.Recordset15.Fields.Item("RevenueName").Value)
  loc_1C5FD40:     End If
  loc_1C5FD40:   End If
  loc_1C5FD4B:   If (global_152 = "Cheque") Then
  loc_1C5FD79:     var_110 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Comments")))
  loc_1C5FD8A:     If (var_110 = vbNullString) Then
  loc_1C5FD8D:       GoTo loc_1C5FDC4
  loc_1C5FD90:     End If
  loc_1C5FDBB:     var_D4 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Comments")))
  loc_1C5FDC4:     ' Referenced from: 1C5FD8D
  loc_1C5FDC4:   End If
  loc_1C5FE03:   If (Me.Recordset15.Fields.Item("PayType").Value = "Cheque") Then
  loc_1C5FE23:     var_180 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1C5FE45:     If (var_180.Value > 0) Then
  loc_1C5FE4E:       var_CE = (var_CE + 1)
  loc_1C5FE5F:       Set var_168 = Me.Txt
  loc_1C5FE65:       Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_184)
  loc_1C5FEEB:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5FEF3:       var_164 = Now
  loc_1C5FF1D:       var_1A4 = Me.Recordset15.Fields.Item("ChqNo").Value
  loc_1C5FF47:       var_1C4 = Me.Recordset15.Fields.Item("ChqDate").Value
  loc_1C5FF51:       var_238 = 0
  loc_1C5FF6A:       var_22C = "A"
  loc_1C5FFD1:       Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_180.Text, var_C2, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C6002D:       var_CE = (var_CE + 1)
  loc_1C6003E:       Set var_168 = Me.Txt
  loc_1C60044:       Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_184, var_180.Text, CStr(Me.Recordset15.Fields.Item("IndoorPartyAC").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C6004C:       CDbl(0) = var_180.Text
  loc_1C60076:       var_17C = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C600CA:       var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C600D2:       var_164 = Now
  loc_1C600FC:       var_1A4 = Me.Recordset15.Fields.Item("ChqNo").Value
  loc_1C60126:       var_1C4 = Me.Recordset15.Fields.Item("ChqDate").Value
  loc_1C60130:       var_238 = 0
  loc_1C60149:       var_22C = "A"
  loc_1C60169:       var_154 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1C601B0:       Proc_6_141_12E23F4(MemVar_1F95044, var_110, var_180.Text, var_114, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C601BB:       var_B8 = var_110
  loc_1C601C4:       var_C2 = var_114
  loc_1C60209:     Else
  loc_1C6020F:       var_CE = (var_CE + 1)
  loc_1C60220:       Set var_168 = Me.Txt
  loc_1C60226:       Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_184, var_180.Text, CStr(var_17C), CDbl(0))
  loc_1C6022E:       CSng(var_154) = var_180.Text
  loc_1C602AC:       var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C602B4:       var_164 = Now
  loc_1C602DE:       var_1A4 = Me.Recordset15.Fields.Item("ChqNo").Value
  loc_1C60308:       var_1C4 = Me.Recordset15.Fields.Item("ChqDate").Value
  loc_1C60312:       var_238 = 0
  loc_1C6032B:       var_22C = "A"
  loc_1C60392:       Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_180.Text, var_C2, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C603EE:       var_CE = (var_CE + 1)
  loc_1C603FF:       Set var_168 = Me.Txt
  loc_1C60405:       Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_184, var_180.Text, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C6040D:       CDbl(0) = var_180.Text
  loc_1C60437:       var_17C = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C6048B:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C60493:       var_164 = Now
  loc_1C604BD:       var_1A4 = Me.Recordset15.Fields.Item("ChqNo").Value
  loc_1C604E7:       var_1C4 = Me.Recordset15.Fields.Item("ChqDate").Value
  loc_1C604F1:       var_238 = 0
  loc_1C6050A:       var_22C = "A"
  loc_1C6052A:       var_154 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1C60571:       Proc_6_141_12E23F4(MemVar_1F95044, var_110, var_180.Text, var_114, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C6057C:       var_B8 = var_110
  loc_1C60585:       var_C2 = var_114
  loc_1C605C7:     End If
  loc_1C605CA:   Else
  loc_1C605E7:     var_180 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1C60609:     If (var_180.Value > 0) Then
  loc_1C60612:       var_CE = (var_CE + 1)
  loc_1C60623:       Set var_168 = Me.Txt
  loc_1C60629:       Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_184, var_180.Text, CStr(var_17C), CDbl(0))
  loc_1C60631:       CSng(var_154) = var_180.Text
  loc_1C606AF:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C606B7:       var_164 = Now
  loc_1C606C1:       var_238 = 0
  loc_1C606CC:       var_234 = 0
  loc_1C606D7:       var_230 = 0
  loc_1C606E0:       var_22C = "A"
  loc_1C60747:       Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_180.Text, var_C2, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C60797:       var_CE = (var_CE + 1)
  loc_1C607A8:       Set var_168 = Me.Txt
  loc_1C607AE:       Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_184, var_180.Text, CStr(Me.Recordset15.Fields.Item("IndoorPartyAC").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C607B6:       CDbl(0) = var_180.Text
  loc_1C607E0:       var_17C = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C60834:       var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C6083C:       var_164 = Now
  loc_1C60846:       var_238 = 0
  loc_1C60851:       var_234 = 0
  loc_1C6085C:       var_230 = 0
  loc_1C60865:       var_22C = "A"
  loc_1C60885:       var_154 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1C608CC:       Proc_6_141_12E23F4(MemVar_1F95044, var_110, var_180.Text, var_114, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C608D7:       var_B8 = var_110
  loc_1C608E0:       var_C2 = var_114
  loc_1C60919:     Else
  loc_1C6091F:       var_CE = (var_CE + 1)
  loc_1C60930:       Set var_168 = Me.Txt
  loc_1C60936:       Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_184, var_180.Text, CStr(var_17C), CDbl(0))
  loc_1C6093E:       CSng(var_154) = var_180.Text
  loc_1C609BC:       var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C609C4:       var_164 = Now
  loc_1C609CE:       var_238 = 0
  loc_1C609D9:       var_234 = 0
  loc_1C609E4:       var_230 = 0
  loc_1C609ED:       var_22C = "A"
  loc_1C60A54:       Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_180.Text, var_C2, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C60AA4:       var_CE = (var_CE + 1)
  loc_1C60AB5:       Set var_168 = Me.Txt
  loc_1C60ABB:       Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_184, var_180.Text, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C60AC3:       CDbl(0) = var_180.Text
  loc_1C60AE5:       var_1F0 = Me.Recordset15.Fields.Item("IndoorPartyAC")
  loc_1C60AED:       var_17C = var_1F0.Value
  loc_1C60B07:       var_1F8 = Me.Recordset15.Fields
  loc_1C60B41:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C60B49:       var_164 = Now
  loc_1C60B53:       var_238 = 0
  loc_1C60B5E:       var_234 = 0
  loc_1C60B69:       var_230 = 0
  loc_1C60B72:       var_22C = "A"
  loc_1C60B92:       var_154 = Abs(var_1F8.Item("CreditAmt").Value)
  loc_1C60BD9:       Proc_6_141_12E23F4(MemVar_1F95044, var_110, var_180.Text, var_114, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C60BE4:       var_B8 = var_110
  loc_1C60BED:       var_C2 = var_114
  loc_1C60C23:     End If
  loc_1C60C23:   End If
  loc_1C60C29:   Me.Recordset15.MoveNext
  loc_1C60C2E:   GoTo loc_1C5FADB
  loc_1C60C31: End If
  loc_1C60C4F: Set var_168 = Me.Txt
  loc_1C60C55: Call 0.Method_Proc_137_90_1C61B4C0 (CInt(0), var_180, var_110, "SELECT PaychargeH.AmtCr AS CreditAmt,Comments, PaychargeH.PayCode, RestCode,Employee.AC_Code as ACCode,Employee.Name as EName,revmast.name as RevenueName FROM (PaychargeH LEFT JOIN RevMast ON PaychargeH.PayCode = RevMast.Code) LEFT JOIN Employee ON PaychargeH.EmpCode = Employee.Code where  PayChargeH.Docid='", var_1A4, -1, var_1F8)
  loc_1C60C5D: CStr(var_17C) = var_180.Text
  loc_1C60C8C: var_164 = CVar(CDbl(0) & var_110 & "' And PaychargeH.RestCode='" & global_52 & "' and PaychargeH.SITE_CODE='" & MemVar_1F95070 & "' AND Vdate = ") 'String
  loc_1C60C9A: Set var_1EC = Me.Txt
  loc_1C60CA0: Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_1F0, var_164, CSng(var_154))
  loc_1C60CAF: Proc_6_7_F26918(var_154, CVar(var_1F0), CStr(var_194))
  loc_1C60CB7: var_17C = var_D4 & var_154 
  loc_1C60CBB: var_124 = " and AmtCr<>0 and PaychargeH.docid not in (Select distinct ContraDocId from PaychargeH where Contradocid is not NUll and ContraDocid<>'')  and PaychargeH.COntradocid not in (Select DocId from PaychargeH )and PaychargeH.PayType in ('Staff')"
  loc_1C60CCE: unk_55E2D7.Execute CStr(var_17C & var_124), MemVar_1F950C8, CDate(var_164)
  loc_1C60CD9: Set var_8C = var_1F8
  loc_1C60D07: ' Referenced from: 1C611EB
  loc_1C60D19: If Not(Me.Recordset15.EOF) Then
  loc_1C60D72:   unk_55E2D7.Execute CStr("Select * from Depart Where Code='" & Me.Recordset15.Fields.Item("RestCode").Value & "'"), var_17C, -1
  loc_1C60D7D:   Set var_DC = var_1EC
  loc_1C60DD3:   If (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Comments"))) = vbNullString) Then
  loc_1C60DEA:     If (var_DC.RecordCount > 0) Then
  loc_1C60E15:       var_110 = Proc_6_38_E69628(CVar(var_DC.Fields.Item("ShortName")))
  loc_1C60E1C:       var_114 = var_110 & " "
  loc_1C60E31:       var_1EC = Me.Recordset15.Fields
  loc_1C60E4E:       var_D4 = var_1EC & Proc_6_38_E69628(CVar(var_1EC.Item("EName")), var_114)
  loc_1C60E6B:     Else
  loc_1C60E96:       var_D4 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("EName")))
  loc_1C60E9F:     End If
  loc_1C60EA2:   Else
  loc_1C60EBC:     var_180 = Me.Recordset15.Fields.Item("Comments")
  loc_1C60ECD:     var_D4 = Proc_6_38_E69628(CVar(var_180))
  loc_1C60ED6:   End If
  loc_1C60EDC:   var_CE = (var_CE + 1)
  loc_1C60EED:   Set var_168 = Me.Txt
  loc_1C60EF3:   Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180)
  loc_1C60EFB:   var_184 = var_180.Text
  loc_1C60F79:   var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C60F81:   var_164 = Now
  loc_1C60F8B:   var_238 = 0
  loc_1C60F96:   var_234 = 0
  loc_1C60FA1:   var_230 = 0
  loc_1C60FAA:   var_22C = "A"
  loc_1C61011:   Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_180.Text, var_C2, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C61061:   var_CE = (var_CE + 1)
  loc_1C61072:   Set var_168 = Me.Txt
  loc_1C61078:   Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_184, var_180.Text, CStr(Me.Recordset15.Fields.Item("IndoorPartyAC").Value), CDbl(0))
  loc_1C61080:   CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)) = var_180.Text
  loc_1C610A2:   var_1F0 = Me.Recordset15.Fields.Item("AcCode")
  loc_1C610AA:   var_17C = var_1F0.Value
  loc_1C610C4:   var_1F8 = Me.Recordset15.Fields
  loc_1C610EE:   var_204 = Me.Recordset15.Fields
  loc_1C610FE:   var_194 = var_204.Item("IndoorPartyAC").Value
  loc_1C61106:   var_164 = Now
  loc_1C61110:   var_238 = 0
  loc_1C6111B:   var_234 = 0
  loc_1C61126:   var_230 = 0
  loc_1C6112F:   var_22C = "A"
  loc_1C6114F:   var_154 = Abs(var_1F8.Item("CreditAmt").Value)
  loc_1C61196:   Proc_6_141_12E23F4(MemVar_1F95044, var_110, var_180.Text, var_114, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C611A1:   var_B8 = var_110
  loc_1C611AA:   var_C2 = var_114
  loc_1C611E6:   Me.Recordset15.MoveNext
  loc_1C611EB:   GoTo loc_1C60D07
  loc_1C611EE: End If
  loc_1C6120C: Set var_168 = Me.Txt
  loc_1C61212: Call 0.Method_Proc_137_90_1C61B4C0 (CInt(0), var_180, var_110, "SELECT DocId,Vtype,Comments,DbtChkin,Sno,revmast.name as RevenueName FROM (PaychargeH LEFT JOIN SubGroup ON PaychargeH.CompCode = SubGroup.SubCode) LEFT JOIN RevMast ON PaychargeH.PayCode = RevMast.Code where PayChargeH.Docid='", var_1A4, -1, var_1F8)
  loc_1C6121A: CStr(var_17C) = var_180.Text
  loc_1C61249: var_164 = CVar(CDbl(0) & var_110 & "' And PaychargeH.RestCode='" & global_52 & "' and PaychargeH.SITE_CODE='" & MemVar_1F95070 & "' AND  Vdate = ") 'String
  loc_1C61257: Set var_1EC = Me.Txt
  loc_1C6125D: Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_1F0, var_164, CSng(var_154))
  loc_1C6126C: Proc_6_7_F26918(var_154, CVar(var_1F0), CStr(var_194))
  loc_1C6128B: unk_55E2D7.Execute CStr(var_D4 & var_154 & " and AmtCr<>0  and PaychargeH.PayType in ('Company','Member')"), MemVar_1F950C8, CDate(var_164)
  loc_1C61296: Set var_E0 = var_1F8
  loc_1C612C4: ' Referenced from: 1C61B15
  loc_1C612D3: If Not(var_E0.EOF) Then
  loc_1C612EA:   var_110 = "SELECT PaychargeH.AmtCr AS CreditAmt,Comments ,PaychargeH.PayCode, SubGroup.SubCode as AcCode,revmast.name as RevenueNAme FROM (PaychargeH LEFT JOIN SubGroup ON PaychargeH.CompCode = SubGroup.SubCode) LEFT JOIN RevMast ON PaychargeH.PayCode = RevMast.Code where PaychargeH.SITE_CODE='" & MemVar_1F95070
  loc_1C612FF:   Set var_168 = Me.Txt
  loc_1C61305:   Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, CVar(var_110 & "' AND Vdate = "))
  loc_1C61314:   Proc_6_7_F26918(var_154, CVar(var_180), var_2F4)
  loc_1C6131C:   var_17C = -1 & var_154 
  loc_1C6138A:   var_29C = var_D4 & var_154 & " and AmtCr<>0 and PaychargeH.DocId='" & var_E0.Fields.Item("DocID").Value & "' and Sno=" & var_E0.Fields.Item("SNo").Value 
  loc_1C61397:   var_114 = CStr(var_29C & " and PaychargeH.PayType in ('Company','Member')")
  loc_1C613A1:   unk_55E2D7.Execute var_114, var_204, 
  loc_1C613AC:   Set var_8C = var_204
  loc_1C613E0:   ' Referenced from: 1C61B0A
  loc_1C613F2:   If Not(Me.Recordset15.EOF) Then
  loc_1C61420:     var_110 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Comments")))
  loc_1C61431:     If (var_110 = vbNullString) Then
  loc_1C61462:       var_D4 = CStr(Me.Recordset15.Fields.Item("RevenueName").Value)
  loc_1C61472:     Else
  loc_1C6149D:       var_D4 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Comments")))
  loc_1C614A6:     End If
  loc_1C614C3:     var_180 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1C614E5:     If (var_180.Value > 0) Then
  loc_1C614EE:       var_CE = (var_CE + 1)
  loc_1C614FF:       Set var_168 = Me.Txt
  loc_1C61505:       Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180)
  loc_1C6150D:       var_184 = var_180.Text
  loc_1C6158B:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C61593:       var_164 = Now
  loc_1C6159D:       var_238 = 0
  loc_1C615A8:       var_234 = 0
  loc_1C615B3:       var_230 = 0
  loc_1C615BC:       var_22C = "A"
  loc_1C61623:       Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_180.Text, var_C2, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C61673:       var_CE = (var_CE + 1)
  loc_1C61684:       Set var_168 = Me.Txt
  loc_1C6168A:       Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_184, var_180.Text, CStr(Me.Recordset15.Fields.Item("IndoorPartyAC").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C61692:       CDbl(0) = var_180.Text
  loc_1C616BC:       var_17C = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C61710:       var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C61718:       var_164 = Now
  loc_1C61722:       var_238 = 0
  loc_1C6172D:       var_234 = 0
  loc_1C61738:       var_230 = 0
  loc_1C61741:       var_22C = "A"
  loc_1C61761:       var_154 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1C617A8:       Proc_6_141_12E23F4(MemVar_1F95044, var_110, var_180.Text, var_114, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C617B3:       var_B8 = var_110
  loc_1C617BC:       var_C2 = var_114
  loc_1C617F5:     Else
  loc_1C617FB:       var_CE = (var_CE + 1)
  loc_1C6180C:       Set var_168 = Me.Txt
  loc_1C61812:       Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_184, var_180.Text, CStr(var_17C), CDbl(0))
  loc_1C6181A:       CSng(var_154) = var_180.Text
  loc_1C61898:       var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C618A0:       var_164 = Now
  loc_1C618AA:       var_238 = 0
  loc_1C618B5:       var_234 = 0
  loc_1C618C0:       var_230 = 0
  loc_1C618C9:       var_22C = "A"
  loc_1C61930:       Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_180.Text, var_C2, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C61980:       var_CE = (var_CE + 1)
  loc_1C61991:       Set var_168 = Me.Txt
  loc_1C61997:       Call 0.Method_Proc_137_90_1C61B4C0 (CInt(2), var_180, var_184, var_180.Text, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C6199F:       CDbl(0) = var_180.Text
  loc_1C619C9:       var_17C = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C61A1D:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C61A25:       var_164 = Now
  loc_1C61A2F:       var_238 = 0
  loc_1C61A3A:       var_234 = 0
  loc_1C61A45:       var_230 = 0
  loc_1C61A4E:       var_22C = "A"
  loc_1C61A6E:       var_154 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1C61AB5:       Proc_6_141_12E23F4(MemVar_1F95044, var_110, var_180.Text, var_114, var_C8, global_100, MemVar_1F95070, CDate(var_184))
  loc_1C61AC0:       var_B8 = var_110
  loc_1C61AC9:       var_C2 = var_114
  loc_1C61AFF:     End If
  loc_1C61B05:     Me.Recordset15.MoveNext
  loc_1C61B0A:     GoTo loc_1C613E0
  loc_1C61B0D:   End If
  loc_1C61B10:   var_E0.MoveNext
  loc_1C61B15:   GoTo loc_1C612C4
  loc_1C61B18: End If
  loc_1C61B1E: unk_55E2D7.CommitTrans
  loc_1C61B27: var_86 = CByte(0) 'Byte
  loc_1C61B30: Set var_8C = Nothing
  loc_1C61B38: Set var_CC = Nothing
  loc_1C61B40: Set var_E0 = Nothing
  loc_1C61B48: Set var_DC = Nothing
  loc_1C61B4B: Exit Sub
End Sub

Public Sub Proc_137_91_120D924
  'Data Table: 55E2B8
  Dim var_A4 As String
  Dim var_A8 As String
  Dim var_EC As Variant
  Dim var_CC As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_8C As Recordset15
  Dim var_B8 As Fields15
  Dim var_BC As Variant
  Dim var_90 As Recordset15
  Dim var_DC As Variant
  Dim var_9A As Integer
  Dim var_140 As Variant
  Dim var_18C As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_21C As Variant
  Dim var_23C As Variant
  loc_120D4BD: var_94 = arg_10
  loc_120D4D4: var_A4 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_120D505: Set var_B8 = Me.Txt
  loc_120D50B: Call 0.Method_Proc_137_91_120D9240 (CInt(2), var_BC, CVar(var_A4 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_94 & "' And "))
  loc_120D51A: Proc_6_7_F26918(var_DC, CVar(var_BC), var_140)
  loc_120D522: var_FC = -1 & var_DC 
  loc_120D536: Me.Txt.Execute CStr(var_FC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC"), var_144, 
  loc_120D541: Set var_8C = var_144
  loc_120D57D: If (var_8C.RecordCount > 0) Then
  loc_120D59A:   var_BC = var_8C.Fields.Item("Prefix")
  loc_120D5AB:   var_98 = CStr(var_BC.Value)
  loc_120D5D6:   Set var_B8 = Me.Txt
  loc_120D5DC:   Call 0.Method_Proc_137_91_120D9240 (CInt(0), var_BC, var_A4, "Select PostDocId FROM PayChargeH WHERE DocId='")
  loc_120D5E4:   var_CC = var_BC.Text
  loc_120D5ED:   var_A8 = -1 & var_A4
  loc_120D5FA:   Me.Connection15.Execute var_A4 & "' AND VP.LOGSITE_CODE='" & "'", var_144, 
  loc_120D605:   Set var_90 = var_144
  loc_120D689:   If CBool((var_90.RecordCount <= 0) And (Trim(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("PostDocId"))))) <> vbNullString)) Then
  loc_120D6B7:     var_A0 = CStr(var_90.Fields.Item("PostDocId").Value)
  loc_120D6C7:   Else
  loc_120D6E1:     var_BC = var_8C.Fields.Item("start_srl_no")
  loc_120D6F6:     var_DC = (var_BC.Value + 1)
  loc_120D6FB:     var_9A = CInt(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("PostDocId")))))
  loc_120D720:     var_A4 = "UPDATE Voucher_Prefix SET Start_Srl_No = Start_Srl_No+ 1 WHERE (SITE_CODE='" & MemVar_1F95070
  loc_120D751:     Set var_B8 = Me.Txt
  loc_120D757:     Call 0.Method_Proc_137_91_120D9240 (CInt(2), var_BC, CVar(var_A4 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "') and V_Type='" & var_94 & "' And "), var_140)
  loc_120D766:     Proc_6_7_F26918(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("PostDocId")))), CVar(var_BC), -1)
  loc_120D782:     Me.Txt.Execute CStr(var_144 & CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("PostDocId")))) & " between Date_From and Date_to"), var_9A, 
  loc_120D7D6:     var_EC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2)) + Trim(var_94))
  loc_120D7FC:     var_11C = Space((5 - Len(CStr(Trim(var_94)))))
  loc_120D804:     var_140 = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "') and V_Type='" & var_94 & "' And ") + var_144 & CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("PostDocId")))) & " between Date_From and Date_to")
  loc_120D82A:     var_17C = Space((5 - Len(CStr(Trim(var_98)))))
  loc_120D832:     var_18C = (var_140 + var_17C)
  loc_120D849:     var_1BC = (var_18C + Trim(var_98))
  loc_120D85F:     var_1CC = Space((8 - Len(CStr(var_9A))))
  loc_120D867:     var_1DC = (var_1BC + var_1CC)
  loc_120D89A:     var_21C = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_120D8A3:     var_23C = (var_1DC + CVar(CStr(var_21C)))
  loc_120D8A8:     var_A0 = CStr(var_23C)
  loc_120D8E8:   End If
  loc_120D8EB:   var_88 = var_A0
  loc_120D8F1: Else
  loc_120D8FD:   global_100 = vbNullString
  loc_120D903:   var_9A = 0
  loc_120D909:   var_88 = vbNullString
  loc_120D90C: End If
  loc_120D911: Set var_8C = Nothing
  loc_120D919: Set var_90 = Nothing
  loc_120D91C: Proc_137_91_120D924 = var_9A
End Sub
