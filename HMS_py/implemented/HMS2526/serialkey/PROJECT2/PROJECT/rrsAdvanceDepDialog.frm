VERSION 5.00
Begin VB.Form rrsAdvanceDepDialog
  Caption = "Settlememt Entry"
  BackColor = &HFFC0FF&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "rrsAdvanceDepDialog.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 6915
  ClientHeight = 7440
  LockControls = -1  'True
  Begin Frame FrTxnNo
    BackColor = &HC9E2F5&
    Left = 7935
    Top = 2340
    Width = 4965
    Height = 300
    Visible = 0   'False
    TabIndex = 72
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 4
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3810
      Height = 285
      TabIndex = 5
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
      TabIndex = 73
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
  Begin DataGrid DGBill
    Left = 4980
    Top = 4965
    Width = 2700
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 71
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 6915
    Height = 450
    TabIndex = 68
  End
  Begin Frame FrRest
    BackColor = &HC9E2F5&
    Left = 1230
    Top = 1425
    Width = 6210
    Height = 945
    Visible = 0   'False
    TabIndex = 60
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 1
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 0
      Width = 1605
      Height = 285
      TabIndex = 70
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
      Index = 16
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4530
      Top = 0
      Width = 1605
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
      Index = 25
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4530
      Top = 630
      Width = 1600
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
      Index = 17
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 630
      Width = 1600
      Height = 285
      TabIndex = 3
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
      Index = 15
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 315
      Width = 5025
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
    Begin Label Lbl
      Caption = "Bill No."
      Index = 37
      ForeColor = &HC00000&
      Left = 0
      Top = 30
      Width = 690
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
    Begin Label LblName
      Caption = "Room/T"
      Index = 12
      ForeColor = &HC00000&
      Left = 3465
      Top = 30
      Width = 735
      Height = 240
      TabIndex = 64
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
      Caption = "Tip"
      Index = 21
      ForeColor = &HC00000&
      Left = 3885
      Top = 645
      Width = 300
      Height = 240
      TabIndex = 63
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
      ForeColor = &HC00000&
      Left = 0
      Top = 660
      Width = 735
      Height = 240
      TabIndex = 62
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
      ForeColor = &HC00000&
      Left = 0
      Top = 330
      Width = 465
      Height = 240
      TabIndex = 61
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
  Begin Frame FrMember
    BackColor = &HC9E2F5&
    Left = 7935
    Top = 2010
    Width = 6210
    Height = 315
    Visible = 0   'False
    TabIndex = 47
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 32
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 15
      Width = 5025
      Height = 285
      TabIndex = 13
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
    Begin Label LblName
      Caption = "Member"
      Index = 2
      ForeColor = &HC00000&
      Left = 0
      Top = 0
      Width = 780
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
  Begin Frame FrRem
    BackColor = &HC9E2F5&
    Left = 1230
    Top = 2370
    Width = 6210
    Height = 315
    Visible = 0   'False
    TabIndex = 42
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 23
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 0
      Width = 5025
      Height = 285
      TabIndex = 16
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
    Begin Label LblNarr
      Caption = "Narration"
      ForeColor = &HC00000&
      Left = 0
      Top = 30
      Width = 900
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
  Begin Frame FrChqDet
    BackColor = &HC9E2F5&
    Left = 7935
    Top = 2640
    Width = 6210
    Height = 630
    Visible = 0   'False
    TabIndex = 39
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 21
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 0
      Width = 1600
      Height = 285
      TabIndex = 14
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
      Index = 22
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 315
      Width = 1600
      Height = 285
      TabIndex = 15
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
    Begin Label LblName
      Caption = "Cheque No."
      Index = 15
      ForeColor = &HC00000&
      Left = -15
      Top = 0
      Width = 1110
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
    Begin Label LblName
      Caption = "Cheque Dt."
      Index = 16
      ForeColor = &HC00000&
      Left = -15
      Top = 315
      Width = 1050
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
  End
  Begin Frame FrSendRoom
    BackColor = &HC9E2F5&
    Left = 7935
    Top = 975
    Width = 6210
    Height = 315
    Visible = 0   'False
    TabIndex = 37
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 30
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 15
      Width = 1600
      Height = 285
      TabIndex = 10
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
    Begin Label LblName
      Caption = "Room No.#"
      Index = 26
      ForeColor = &HC00000&
      Left = 0
      Top = 0
      Width = 1035
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
  End
  Begin Frame FrEmp
    BackColor = &HC9E2F5&
    Left = 7935
    Top = 1335
    Width = 6210
    Height = 315
    Visible = 0   'False
    TabIndex = 35
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 24
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 15
      Width = 5025
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
    Begin Label LblName
      Caption = "Staff"
      Index = 22
      ForeColor = &HC00000&
      Left = 0
      Top = 0
      Width = 435
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
  End
  Begin Frame FrComp
    BackColor = &HC9E2F5&
    Left = 7935
    Top = 1680
    Width = 6210
    Height = 315
    Visible = 0   'False
    TabIndex = 33
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 31
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 15
      Width = 5025
      Height = 285
      TabIndex = 12
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
    Begin Label LblName
      Caption = "Company"
      Index = 27
      ForeColor = &HC00000&
      Left = 0
      Top = 0
      Width = 900
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
  End
  Begin Frame FrCCDet
    BackColor = &HC9E2F5&
    Left = 1230
    Top = 2685
    Width = 6210
    Height = 945
    Visible = 0   'False
    TabIndex = 29
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 3
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4530
      Top = 630
      Width = 1600
      Height = 285
      TabIndex = 9
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
    Begin TextBox Txt
      Index = 18
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 0
      Width = 5025
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
    Begin TextBox Txt
      Index = 19
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 315
      Width = 5025
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
    Begin TextBox Txt
      Index = 20
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 630
      Width = 1600
      Height = 285
      TabIndex = 8
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
    Begin Label LblName
      Caption = "Batch No"
      Index = 1
      ForeColor = &HC00000&
      Left = 3615
      Top = 660
      Width = 855
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
      Caption = "C.C. No."
      Index = 18
      ForeColor = &HC00000&
      Left = 0
      Top = 30
      Width = 765
      Height = 240
      TabIndex = 32
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
      ForeColor = &HC00000&
      Left = 0
      Top = 345
      Width = 630
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
      Caption = "Exp.Dt."
      Index = 20
      ForeColor = &HC00000&
      Left = 0
      Top = 660
      Width = 675
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
  End
  Begin DataGrid DGCompany
    Left = 11805
    Top = 7110
    Width = 4215
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 27
  End
  Begin DataGrid DGTable
    Left = 7785
    Top = 5640
    Width = 2700
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 25
  End
  Begin DataGrid DGRoom
    Left = 13545
    Top = 6705
    Width = 2355
    Height = 2430
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 26
  End
  Begin DataGrid DGPayType
    Left = 12105
    Top = 5055
    Width = 4995
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 19
  End
  Begin DataGrid DGEmp
    Left = 12225
    Top = 5940
    Width = 4170
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 24
  End
  Begin Frame FrRest1
    BackColor = &HFFFFFF&
    Left = 1125
    Top = 1000
    Width = 6555
    Height = 390
    TabIndex = 23
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 2
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 5085
      Top = 60
      Width = 1080
      Height = 285
      TabIndex = 0
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
    Begin Label LblOutLet
      ForeColor = &HC00000&
      Left = 45
      Top = 60
      Width = 2715
      Height = 285
      TabIndex = 65
      Alignment = 2 'Center
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
      Caption = "Bill Detail"
      Index = 36
      ForeColor = &HC00000&
      Left = 3030
      Top = 60
      Width = 930
      Height = 240
      TabIndex = 59
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
    BackColor = &HE0E0E0&
    ForeColor = &HE0E0E0&
    Left = 1485
    Top = 4305
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 22
    BorderStyle = 0 'None
    MultiLine = -1  'True
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
  Begin TextBox Txt
    Index = 0
    BackColor = &H80000004&
    Left = 6570
    Top = 45
    Width = 2145
    Height = 255
    Visible = 0   'False
    TabIndex = 20
    BorderStyle = 0 'None
    MaxLength = 50
    Locked = -1  'True
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 1380
    Top = 4185
    Width = 6105
    Height = 2325
    TabIndex = 17
  End
  Begin MSFlexGrid FGPoint
    Left = 14100
    Top = 615
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 44
  End
  Begin MSHFlexGrid FGrid1
    Left = 7560
    Top = 3960
    Width = 6780
    Height = 4500
    TabIndex = 18
  End
  Begin DataGrid DGMember
    Left = 12840
    Top = 3510
    Width = 6735
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 49
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4395
    Top = 7920
    Width = 2790
    Height = 285
    TabIndex = 67
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
    Left = 1020
    Top = 7920
    Width = 2880
    Height = 255
    TabIndex = 66
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
  Begin Label LTxt
    Index = 26
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1425
    Top = 3885
    Width = 1470
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
  Begin Label LTxt
    Index = 28
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 5925
    Top = 3885
    Width = 1515
    Height = 285
    TabIndex = 57
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
    Index = 27
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2925
    Top = 3885
    Width = 1470
    Height = 285
    TabIndex = 56
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
    Left = 1425
    Top = 3630
    Width = 1515
    Height = 255
    TabIndex = 55
    Alignment = 2 'Center
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
  Begin Label LblName
    Caption = "Paid Amount"
    Index = 24
    BackColor = &HC7EBEB&
    ForeColor = &H808000&
    Left = 2925
    Top = 3630
    Width = 1515
    Height = 255
    TabIndex = 54
    Alignment = 2 'Center
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
  Begin Label LblName
    Caption = "Balance"
    Index = 17
    BackColor = &HC7EBEB&
    ForeColor = &HFF&
    Left = 5925
    Top = 3630
    Width = 1515
    Height = 255
    TabIndex = 53
    Alignment = 2 'Center
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
  Begin Label LblName
    Caption = "Payable Amt"
    Index = 0
    BackColor = &HC7EBEB&
    ForeColor = &HC0&
    Left = 4425
    Top = 3630
    Width = 1515
    Height = 255
    TabIndex = 52
    Alignment = 2 'Center
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
  Begin Label LTxt
    Index = 29
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4425
    Top = 3885
    Width = 1470
    Height = 285
    TabIndex = 51
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
  Begin Shape Shape5
    BorderColor = &H400040&
    Left = 10245
    Top = 7350
    Width = 750
    Height = 585
    Visible = 0   'False
    BorderWidth = 2
    FillColor = &HC0FFC0&
  End
  Begin Shape Shape1
    Index = 1
    BackColor = &HE7F3FA&
    BorderColor = &H400040&
    Left = 9795
    Top = 8250
    Width = 990
    Height = 525
    Visible = 0   'False
    BorderWidth = 2
    FillColor = &HE7F3FA&
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 50
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
  Begin Label Label1
    Caption = "Settlement Payment Pending Bill Details"
    Index = 1
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 7560
    Top = 3615
    Width = 5430
    Height = 345
    TabIndex = 45
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
  Begin Label Label1
    Caption = "Press Ctrl+S to Save"
    Index = 0
    ForeColor = &HFF0000&
    Left = 240
    Top = 75
    Width = 2970
    Height = 300
    TabIndex = 28
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
    Left = 14265
    Top = 2895
    Width = 675
    Height = 240
    Visible = 0   'False
    TabIndex = 21
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
  Begin Shape Shape4
    BorderColor = &H400040&
    Left = 9780
    Top = 6825
    Width = 1170
    Height = 405
    Visible = 0   'False
    BorderWidth = 2
    FillColor = &HC0FFC0&
  End
  Begin Menu popup
    Visible = 0   'False
    Caption = ""
    Begin Menu Del
      Caption = "Delete"
    End
  End
End

Attribute VB_Name = "rrsAdvanceDepDialog"

Private global_88 As Recordset15
Private global_180 As Double
Private global_116 As Long
Private global_120 As Long
Private global_112 As Long
Private global_172 As Integer

Private Sub DGTable_UnknownEvent_9 'F5ED08
  'Data Table: 5495F0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5EBE8: On Error Goto loc_F5ED02
  loc_F5EBFA: Me.DGTable.Visible = False
  loc_F5EC19: If (Me.RecordCount > 0) Then
  loc_F5EC58:   Set var_B4 = Me.Txt
  loc_F5EC5E:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F5EC66:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F5EC99:   var_B0 = Me.Fields.Item("Code")
  loc_F5ECB8:   Set var_B4 = Me.Txt
  loc_F5ECBE:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F5ECC6:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5ECDC: End If
  loc_F5ECE7: Set var_A8 = Me.Txt
  loc_F5ECED: Call 0.Method_DGTable_UnknownEvent_90 (CInt(&H10))
  loc_F5ECF5: var_B0.SetFocus
  loc_F5ED01: Exit Sub
  loc_F5ED02: ' Referenced from: F5EBE8
  loc_F5ED02: Proc_6_60_E63754(var_B0)
  loc_F5ED07: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'E71CC8
  'Data Table: 5495F0
  loc_E71C86: Proc_6_153_E91D24(Me.DGTable, arg_14)
  loc_E71C9D: Set var_8C = Me.FGPoint
  loc_E71CB9: Proc_6_138_106E830(Me.DGTable, global_72, CInt(&H10))
  loc_E71CC7: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_9 'F41114
  'Data Table: 5495F0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4100B: Me.DGMember.Visible = False
  loc_F4102A: If (Me.RecordCount > 0) Then
  loc_F41069:   Set var_B4 = Me.Txt
  loc_F4106F:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H20), var_B8)
  loc_F41077:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F410AA:   var_B0 = Me.Fields.Item("Code")
  loc_F410C9:   Set var_B4 = Me.Txt
  loc_F410CF:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H20), var_B8)
  loc_F410D7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F410ED: End If
  loc_F410F8: Set var_A8 = Me.Txt
  loc_F410FE: Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H20))
  loc_F41106: var_B0.SetFocus
  loc_F41112: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_1F 'E71B0C
  'Data Table: 5495F0
  loc_E71ACA: Proc_6_153_E91D24(Me.DGMember, arg_14)
  loc_E71AE1: Set var_8C = Me.FGPoint
  loc_E71AFD: Proc_6_138_106E830(Me.DGMember, global_92, CInt(&H20))
  loc_E71B0B: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_9 'F38634
  'Data Table: 5495F0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3852B: Me.DGEmp.Visible = False
  loc_F3854A: If (Me.RecordCount > 0) Then
  loc_F38589:   Set var_B4 = Me.Txt
  loc_F3858F:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H18), var_B8)
  loc_F38597:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F385CA:   var_B0 = Me.Fields.Item("Code")
  loc_F385E9:   Set var_B4 = Me.Txt
  loc_F385EF:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H18), var_B8)
  loc_F385F7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3860D: End If
  loc_F38618: Set var_A8 = Me.Txt
  loc_F3861E: Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H18))
  loc_F38626: var_B0.SetFocus
  loc_F38632: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_1F 'E72168
  'Data Table: 5495F0
  loc_E72126: Proc_6_153_E91D24(Me.DGEmp, arg_14)
  loc_E7213D: Set var_8C = Me.FGPoint
  loc_E72159: Proc_6_138_106E830(Me.DGEmp, global_68, CInt(&H18))
  loc_E72167: Exit Sub
End Sub

Private Sub DGBill_UnknownEvent_9 'F66154
  'Data Table: 5495F0
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F66028: On Error Goto loc_F6614B
  loc_F66034: Set var_A8 = Me.DGBill
  loc_F6603A: var_A8.Visible = False
  loc_F6605C: If (Me.var_A8.RecordCount > 0) Then
  loc_F6609E:   Set var_B4 = Me.Txt
  loc_F660A4:   Call 0.Method_DGBill_UnknownEvent_90 (CInt(1), var_B8)
  loc_F660AC:   var_B8.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_F660E2:   var_B0 = Me.Recordset15.Fields.Item("Code")
  loc_F66101:   Set var_B4 = Me.Txt
  loc_F66107:   Call 0.Method_DGBill_UnknownEvent_90 (CInt(1), var_B8)
  loc_F6610F:   var_B8.Tag = CStr(var_B0.Value)
  loc_F66125: End If
  loc_F66130: Set var_A8 = Me.Txt
  loc_F66136: Call 0.Method_DGBill_UnknownEvent_90 (CInt(1))
  loc_F6613E: var_B0.SetFocus
  loc_F6614A: Exit Sub
  loc_F6614B: ' Referenced from: F66028
  loc_F6614B: Proc_6_60_E63754(var_B0)
  loc_F66150: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_9 'F43FD4
  'Data Table: 5495F0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F43ECB: Me.DGCompany.Visible = False
  loc_F43EEA: If (Me.RecordCount > 0) Then
  loc_F43F29:   Set var_B4 = Me.Txt
  loc_F43F2F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H1F), var_B8)
  loc_F43F37:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F43F6A:   var_B0 = Me.Fields.Item("Code")
  loc_F43F89:   Set var_B4 = Me.Txt
  loc_F43F8F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H1F), var_B8)
  loc_F43F97:   var_B8.Tag = CStr(var_B0.Value)
  loc_F43FAD: End If
  loc_F43FB8: Set var_A8 = Me.Txt
  loc_F43FBE: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H1F))
  loc_F43FC6: var_B0.SetFocus
  loc_F43FD2: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_1F 'E71C34
  'Data Table: 5495F0
  loc_E71BF2: Proc_6_153_E91D24(Me.DGCompany, arg_14)
  loc_E71C09: Set var_8C = Me.FGPoint
  loc_E71C25: Proc_6_138_106E830(Me.DGCompany, global_84, CInt(&H1F))
  loc_E71C33: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F3BA74
  'Data Table: 5495F0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3B96B: Me.DGRoom.Visible = False
  loc_F3B98A: If (Me.RecordCount > 0) Then
  loc_F3B9C9:   Set var_B4 = Me.Txt
  loc_F3B9CF:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H1E), var_B8)
  loc_F3B9D7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3BA0A:   var_B0 = Me.Fields.Item("Code")
  loc_F3BA29:   Set var_B4 = Me.Txt
  loc_F3BA2F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H1E), var_B8)
  loc_F3BA37:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3BA4D: End If
  loc_F3BA58: Set var_A8 = Me.Txt
  loc_F3BA5E: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H1E))
  loc_F3BA66: var_B0.SetFocus
  loc_F3BA72: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_1F 'E72040
  'Data Table: 5495F0
  loc_E71FFE: Proc_6_153_E91D24(Me.DGRoom, arg_14)
  loc_E72015: Set var_8C = Me.FGPoint
  loc_E72031: Proc_6_138_106E830(Me.DGRoom, global_76, CInt(&H1E))
  loc_E7203F: Exit Sub
End Sub

Private Sub Del_Click() 'F94A14
  'Data Table: 5495F0
  Dim var_98 As Variant
  Dim var_A8 As Variant
  loc_F948CF: If (CLng(Me.FGrid.Row) >= 1) Then
  loc_F94909:   If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_E8, var_108) = 6) Then
  loc_F9492B:     If (CLng(Me.FGrid.Rows) > 2) Then
  loc_F94941:       var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F9494A:       Set var_10C = Me.FGrid
  loc_F94965:     Else
  loc_F94978:       Me.FGrid.Rows = 1
  loc_F9499C:       var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0))) 'String
  loc_F949A4:       Set var_10C = Me.FGrid
  loc_F949D1:       Me.FGrid.FixedRows = 1
  loc_F949D9:     End If
  loc_F949D9:   End If
  loc_F949DC: Else
  loc_F949F7:   var_98 = "No Entries To Delete"
  loc_F949FD:   MsgBox(var_98, &H10, "Delete Module", var_E8, var_108)
  loc_F94A0D: End If
  loc_F94A0D: Call Proc_98_79_107CDCC(FGrid.DispID_10000, var_98)
  loc_F94A12: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_9 'F6FB1C
  'Data Table: 5495F0
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_BC As TextBox
  loc_F6F9F3: Me.DGPayType.Visible = False
  loc_F6FA01: var_AC = global_120
  loc_F6FA0D: If Not (var_AC = 5) Then
  loc_F6FA19:   If (var_AC = 6) Then
  loc_F6FA1C:   End If
  loc_F6FA33:   If (Me.RecordCount > 0) Then
  loc_F6FA72:     Set var_B8 = Me.Txt
  loc_F6FA78:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(&HF), var_BC)
  loc_F6FA80:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F6FAB3:     var_B4 = Me.Fields.Item("Code")
  loc_F6FAD2:     Set var_B8 = Me.Txt
  loc_F6FAD8:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(&HF), var_BC)
  loc_F6FAE0:     var_BC.Tag = CStr(var_B4.Value)
  loc_F6FAF6:   End If
  loc_F6FB01:   Set var_A8 = Me.Txt
  loc_F6FB07:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(&HF), var_B4)
  loc_F6FB0F:   var_B4.SetFocus
  loc_F6FB1B: End If
  loc_F6FB1B: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'E720D4
  'Data Table: 5495F0
  loc_E72092: Proc_6_153_E91D24(Me.DGPayType, arg_14)
  loc_E720A9: Set var_8C = Me.FGPoint
  loc_E720C5: Proc_6_138_106E830(Me.DGPayType, global_64, CInt(&HF))
  loc_E720D3: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '15B9C54
  'Data Table: 5495F0
  Dim var_92 As Integer
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_8C As Variant
  Dim var_B8 As Variant
  Dim var_A0 As Variant
  Dim Me As Variant
  Dim var_F4 As Variant
  Dim var_88 As Frame
  Dim var_D4 As String
  Dim var_C8 As String
  loc_15B8992: Set var_88 = Me.Txt
  loc_15B8998: Call 0.Method_Txt_GotFocus0 (Index)
  loc_15B89A6: Proc_6_74_E23240(var_8C)
  loc_15B89B2: Call Proc_98_71_FB8840(var_8C)
  loc_15B89BA: var_92 = Index
  loc_15B89C5: If (var_92 = CInt(&HF)) Then
  loc_15B89E8:   Set var_A0 = Me.Txt
  loc_15B89EE:   Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_A4)
  loc_15B8A09:   Set var_88 = Me.Txt
  loc_15B8A0F:   Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_8C)
  loc_15B8A27:   var_B8 = CVar(((var_8C.Top + Me.FrRest.Top) + var_A4.Height)) 'Single
  loc_15B8A36:   Me.DGPayType.Top = var_B8
  loc_15B8A6A:   Set var_88 = Me.Txt
  loc_15B8A70:   Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_8C)
  loc_15B8A84:   var_B8 = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_15B8A93:   Me.DGPayType.Left = var_B8
  loc_15B8ABA:   If (Me.RecordCount > 0) Then
  loc_15B8AC8:     Set var_8C = Me.FGPoint
  loc_15B8AE0:     Proc_6_137_1192FDC(Me.DGPayType, global_64, Index)
  loc_15B8AEE:   End If
  loc_15B8B3C:   Set var_88 = Me.Txt
  loc_15B8B42:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_15B8B4A:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B8B62:   If (var_8C Or (var_D4 = vbNullString)) Then
  loc_15B8B65:     Exit Sub
  loc_15B8B66:   End If
  loc_15B8B73:   Set var_88 = Me.Txt
  loc_15B8B79:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B8B81:   var_D4 = var_8C.Text
  loc_15B8B93:   var_B8 = "Name"
  loc_15B8BCE:   If CBool(CVar(var_D4) <> Me.Fields.Item(var_B8).Value) Then
  loc_15B8BD7:     Me.MoveFirst
  loc_15B8BFA:     Set var_88 = Me.Txt
  loc_15B8C00:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name ='")
  loc_15B8C08:     0 = var_8C.Text
  loc_15B8C21:     Me.Find 1 & var_D4 & "'", var_B8, var_92
  loc_15B8C36:   End If
  loc_15B8C39: Else
  loc_15B8C41:   If (var_92 = CInt(&H18)) Then
  loc_15B8C5B:     If (Me.RecordCount > 0) Then
  loc_15B8C69:       Set var_8C = Me.FGPoint
  loc_15B8C81:       Proc_6_137_1192FDC(Me.DGEmp, global_68)
  loc_15B8C8F:     End If
  loc_15B8CDD:     Set var_88 = Me.Txt
  loc_15B8CE3:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_15B8CEB:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B8D03:     If (Index Or (var_D4 = vbNullString)) Then
  loc_15B8D06:       Exit Sub
  loc_15B8D07:     End If
  loc_15B8D14:     Set var_88 = Me.Txt
  loc_15B8D1A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B8D22:     var_D4 = var_8C.Text
  loc_15B8D34:     var_B8 = "Name"
  loc_15B8D6F:     If CBool(CVar(var_D4) <> Me.Fields.Item(var_B8).Value) Then
  loc_15B8D78:       Me.MoveFirst
  loc_15B8D9B:       Set var_88 = Me.Txt
  loc_15B8DA1:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name ='")
  loc_15B8DA9:       0 = var_8C.Text
  loc_15B8DC2:       Me.Find 1 & var_D4 & "'", var_B8, var_8C
  loc_15B8DD7:     End If
  loc_15B8DDA:   Else
  loc_15B8DE2:     If (var_92 = CInt(1)) Then
  loc_15B8E05:       Set var_A0 = Me.Txt
  loc_15B8E0B:       Call 0.Method_Txt_GotFocus0 (CInt(1), var_A4)
  loc_15B8E26:       Set var_88 = Me.Txt
  loc_15B8E2C:       Call 0.Method_Txt_GotFocus0 (CInt(1), var_8C)
  loc_15B8E44:       var_B8 = CVar(((var_8C.Top + Me.FrRest.Top) + var_A4.Height)) 'Single
  loc_15B8E53:       Me.DGBill.Top = var_B8
  loc_15B8E87:       Set var_88 = Me.Txt
  loc_15B8E8D:       Call 0.Method_Txt_GotFocus0 (CInt(1), var_8C)
  loc_15B8EA1:       var_B8 = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_15B8EAA:       Set var_A0 = Me.DGBill
  loc_15B8EB0:       var_A0.Left = var_B8
  loc_15B8EDA:       If (Me.var_A0.RecordCount > 0) Then
  loc_15B8EE8:         Set var_8C = Me.FGPoint
  loc_15B8F04:         Proc_6_137_1192FDC(Me.DGBill, global_88)
  loc_15B8F12:       End If
  loc_15B8F69:       Set var_88 = Me.Txt
  loc_15B8F6F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_15B8F77:       ((global_88.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_15B8F8F:       If (Index Or (var_D4 = vbNullString)) Then
  loc_15B8F92:         Exit Sub
  loc_15B8F93:       End If
  loc_15B8FA0:       Set var_88 = Me.Txt
  loc_15B8FA6:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B8FAE:       var_D4 = var_8C.Text
  loc_15B8FB6:       var_F4 = CVar(var_D4) 'String
  loc_15B8FFE:       If CBool(var_F4 <> Me.Recordset15.Fields.Item("Name").Value) Then
  loc_15B900A:         Me.Recordset15.MoveFirst
  loc_15B902F:         Set var_88 = Me.Txt
  loc_15B9035:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name =")
  loc_15B903D:         0 = var_8C.Text
  loc_15B904B:         Proc_6_17_EAAE40(var_F4, CVar(var_D4), 1)
  loc_15B9064:         Me.Recordset15.Find CStr(var_C8 & var_F4), var_8C, 
  loc_15B907C:       End If
  loc_15B907F:     Else
  loc_15B9087:       If (var_92 = CInt(&H10)) Then
  loc_15B90AA:         Set var_A0 = Me.Txt
  loc_15B90B0:         Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_A4)
  loc_15B90CB:         Set var_88 = Me.Txt
  loc_15B90D1:         Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_15B90E9:         var_B8 = CVar(((var_8C.Top + Me.FrRest.Top) + var_A4.Height)) 'Single
  loc_15B90F8:         Me.DGTable.Top = "Name ="
  loc_15B912C:         Set var_88 = Me.Txt
  loc_15B9132:         Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_15B9146:         var_B8 = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_15B9155:         Me.DGTable.Left = "Name ="
  loc_15B917C:         If (Me.RecordCount > 0) Then
  loc_15B918A:           Set var_8C = Me.FGPoint
  loc_15B91A2:           Proc_6_137_1192FDC(Me.DGTable, global_72)
  loc_15B91B0:         End If
  loc_15B91FE:         Set var_88 = Me.Txt
  loc_15B9204:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_15B920C:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B9224:         If (Index Or (var_D4 = vbNullString)) Then
  loc_15B9227:           Exit Sub
  loc_15B9228:         End If
  loc_15B9235:         Set var_88 = Me.Txt
  loc_15B923B:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B9243:         var_D4 = var_8C.Text
  loc_15B924B:         var_F4 = CVar(var_D4) 'String
  loc_15B9290:         If CBool(var_F4 <> Me.Fields.Item("Name").Value) Then
  loc_15B9299:           Me.MoveFirst
  loc_15B92BE:           Set var_88 = Me.Txt
  loc_15B92C4:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name =")
  loc_15B92CC:           0 = var_8C.Text
  loc_15B92DA:           Proc_6_17_EAAE40(var_F4, CVar(var_D4), 1)
  loc_15B92F0:           Me.Find CStr(var_C8 & var_F4), var_8C, 
  loc_15B9308:         End If
  loc_15B930B:       Else
  loc_15B9313:         If (var_92 = CInt(&H1E)) Then
  loc_15B9336:           Set var_A0 = Me.Txt
  loc_15B933C:           Call 0.Method_Txt_GotFocus0 (CInt(&H1E), var_A4)
  loc_15B9357:           Set var_88 = Me.Txt
  loc_15B935D:           Call 0.Method_Txt_GotFocus0 (CInt(&H1E), var_8C)
  loc_15B9375:           var_B8 = CVar(((var_8C.Top + Me.FrSendRoom.Top) + var_A4.Height)) 'Single
  loc_15B9384:           Me.DGRoom.Top = "Name ="
  loc_15B93B8:           Set var_88 = Me.Txt
  loc_15B93BE:           Call 0.Method_Txt_GotFocus0 (CInt(&H1E), var_8C)
  loc_15B93D2:           var_B8 = CVar((var_8C.Left + Me.FrSendRoom.Left)) 'Single
  loc_15B93E1:           Me.DGRoom.Left = "Name ="
  loc_15B9408:           If (Me.RecordCount > 0) Then
  loc_15B9416:             Set var_8C = Me.FGPoint
  loc_15B942E:             Proc_6_137_1192FDC(Me.DGRoom, global_76)
  loc_15B943C:           End If
  loc_15B948A:           Set var_88 = Me.Txt
  loc_15B9490:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_15B9498:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B94B0:           If (Index Or (var_D4 = vbNullString)) Then
  loc_15B94B3:             Exit Sub
  loc_15B94B4:           End If
  loc_15B94C1:           Set var_88 = Me.Txt
  loc_15B94C7:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B94CF:           var_D4 = var_8C.Text
  loc_15B94D7:           var_F4 = CVar(var_D4) 'String
  loc_15B94F0:           var_90 = Me.Fields
  loc_15B951C:           If CBool(var_F4 <> var_90.Item("Name").Value) Then
  loc_15B9525:             Me.MoveFirst
  loc_15B954A:             Set var_88 = Me.Txt
  loc_15B9550:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name =")
  loc_15B9558:             0 = var_8C.Text
  loc_15B9566:             Proc_6_17_EAAE40(var_F4, CVar(var_D4), 1)
  loc_15B957C:             Me.Find CStr(var_C8 & var_F4), var_8C, 
  loc_15B9594:           End If
  loc_15B9597:         Else
  loc_15B959F:           If (var_92 = CInt(&H1F)) Then
  loc_15B95B0:             Set var_8C = Me.Txt
  loc_15B95B6:             Call 0.Method_Txt_GotFocus0 (CInt(&H1F), var_90)
  loc_15B95DC:             var_B8 = CVar((Me.FrComp.Top + var_90.Height)) 'Single
  loc_15B95EB:             Me.DGCompany.Top = "Name ="
  loc_15B962D:             Set var_88 = Me.Txt
  loc_15B9633:             Call 0.Method_Txt_GotFocus0 (CInt(&H1F), var_8C)
  loc_15B964B:             var_B8 = CVar(((var_8C.Left + Me.FrRest.Left) + Me.FrComp.Left)) 'Single
  loc_15B965A:             Me.DGCompany.Left = "Name ="
  loc_15B9683:             If (Me.RecordCount > 0) Then
  loc_15B9691:               Set var_8C = Me.FGPoint
  loc_15B96A9:               Proc_6_137_1192FDC(Me.DGCompany, global_84)
  loc_15B96B7:             End If
  loc_15B9705:             Set var_88 = Me.Txt
  loc_15B970B:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_15B9713:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B972B:             If (Index Or (var_D4 = vbNullString)) Then
  loc_15B972E:               Exit Sub
  loc_15B972F:             End If
  loc_15B973C:             Set var_88 = Me.Txt
  loc_15B9742:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B974A:             var_D4 = var_8C.Text
  loc_15B9752:             var_F4 = CVar(var_D4) 'String
  loc_15B976B:             var_90 = Me.Fields
  loc_15B9797:             If CBool(var_F4 <> var_90.Item("Name").Value) Then
  loc_15B97A0:               Me.MoveFirst
  loc_15B97C5:               Set var_88 = Me.Txt
  loc_15B97CB:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name =")
  loc_15B97D3:               0 = var_8C.Text
  loc_15B97E1:               Proc_6_17_EAAE40(var_F4, CVar(var_D4), 1)
  loc_15B97F7:               Me.Find CStr(var_C8 & var_F4), var_8C, 
  loc_15B980F:             End If
  loc_15B9812:           Else
  loc_15B981A:             If (var_92 = CInt(&H20)) Then
  loc_15B982B:               Set var_8C = Me.Txt
  loc_15B9831:               Call 0.Method_Txt_GotFocus0 (CInt(&H20), var_90)
  loc_15B9857:               var_B8 = CVar((Me.FrMember.Top + var_90.Height)) 'Single
  loc_15B9866:               Me.DGMember.Top = "Name ="
  loc_15B98A8:               Set var_88 = Me.Txt
  loc_15B98AE:               Call 0.Method_Txt_GotFocus0 (CInt(&H20), var_8C)
  loc_15B98CB:               var_B8 = CVar((((var_8C.Left + Me.FrRest.Left) + Me.FrMember.Left) - CDbl(1260))) 'Single
  loc_15B98DA:               Me.DGMember.Left = "Name ="
  loc_15B9903:               If (Me.RecordCount > 0) Then
  loc_15B9911:                 Set var_8C = Me.FGPoint
  loc_15B9929:                 Proc_6_137_1192FDC(Me.DGMember, global_92)
  loc_15B9937:               End If
  loc_15B9985:               Set var_88 = Me.Txt
  loc_15B998B:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_15B9993:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B99AB:               If (Index Or (var_D4 = vbNullString)) Then
  loc_15B99AE:                 Exit Sub
  loc_15B99AF:               End If
  loc_15B99BC:               Set var_88 = Me.Txt
  loc_15B99C2:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B99CA:               var_D4 = var_8C.Text
  loc_15B99D2:               var_F4 = CVar(var_D4) 'String
  loc_15B99F3:               var_A0 = Me.Fields.Item("Name")
  loc_15B9A17:               If CBool(var_F4 <> var_A0.Value) Then
  loc_15B9A20:                 Me.MoveFirst
  loc_15B9A45:                 Set var_88 = Me.Txt
  loc_15B9A4B:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name =")
  loc_15B9A53:                 0 = var_8C.Text
  loc_15B9A61:                 Proc_6_17_EAAE40(var_F4, CVar(var_D4), 1)
  loc_15B9A77:                 Me.Find CStr(var_C8 & var_F4), var_8C, 
  loc_15B9A8F:               End If
  loc_15B9A92:             Else
  loc_15B9A9A:               If (var_92 = CInt(&H11)) Then
  loc_15B9AA1:                 Set var_88 = Me.TopCtrl1
  loc_15B9AA7:                 Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_15B9AC0:                 If (CStr() = "Add") Then
  loc_15B9AD1:                   Set var_88 = Me.LTxt
  loc_15B9AD7:                   Call 0.Method_Txt_GotFocus0 (CInt(&H1C), var_8C)
  loc_15B9B24:                   Set var_90 = Me.Txt
  loc_15B9B2A:                   Call 0.Method_Txt_GotFocus0 (Index, var_A0, CStr(Format(CVar(Val(var_8C.Caption)), "0.00")))
  loc_15B9B32:                   var_A0.Text = 1
  loc_15B9B52:                 End If
  loc_15B9B61:                 Set var_88 = Me.Txt
  loc_15B9B67:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, 0)
  loc_15B9B6F:                 var_8C.SelStart = 1
  loc_15B9B88:                 Set var_88 = Me.Txt
  loc_15B9B8E:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B9BA9:                 Set var_90 = Me.Txt
  loc_15B9BAF:                 Call 0.Method_Txt_GotFocus0 (Index, var_A0)
  loc_15B9BB7:                 var_A0.SelLength = Len(var_8C.Text)
  loc_15B9BCD:               Else
  loc_15B9BD5:                 If (var_92 = CInt(&H19)) Then
  loc_15B9BE7:                   Set var_88 = Me.Txt
  loc_15B9BED:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B9BF5:                   var_8C.SelStart = 0
  loc_15B9C0E:                   Set var_88 = Me.Txt
  loc_15B9C14:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B9C2F:                   Set var_90 = Me.Txt
  loc_15B9C35:                   Call 0.Method_Txt_GotFocus0 (Index, var_A0)
  loc_15B9C3D:                   var_A0.SelLength = Len(var_8C.Text)
  loc_15B9C50:                 End If
  loc_15B9C50:               End If
  loc_15B9C50:             End If
  loc_15B9C50:           End If
  loc_15B9C50:         End If
  loc_15B9C50:       End If
  loc_15B9C50:     End If
  loc_15B9C50:   End If
  loc_15B9C50: End If
  loc_15B9C50: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '142B2BC
  'Data Table: 5495F0
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
  loc_142A807: var_88 = Shift
  loc_142A814: If (CLng(Shift) = &H1B) Then
  loc_142A817:   Call Proc_98_71_FB8840(var_88)
  loc_142A81C:   Exit Sub
  loc_142A81D: End If
  loc_142A820: var_8A = KeyCode
  loc_142A82B: If (var_8A = CInt(&HF)) Then
  loc_142A84B:   Set var_A4 = Me.FGPoint
  loc_142A856:   Set var_A0 = Nothing
  loc_142A888:   Proc_6_69_134A630(Me.DGPayType, Me.Txt, CInt(&HF), global_64, Shift, 0)
  loc_142A8F7:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_142A91D:     Proc_6_138_106E830(Me.DGPayType, global_64, KeyCode, Me.FGPoint, 1)
  loc_142A92B:   End If
  loc_142A92E: Else
  loc_142A936:   If (var_8A = CInt(&H18)) Then
  loc_142A961:     Set var_A0 = Nothing
  loc_142A993:     Proc_6_69_134A630(Me.DGEmp, Me.Txt, CInt(&H18), global_68, Shift, 0, 1)
  loc_142AA02:     If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_142AA09:       Set var_A0 = Me.DGEmp
  loc_142AA28:       Proc_6_138_106E830(var_A0, global_68, KeyCode, Me.FGPoint, var_A0, Me.FGPoint)
  loc_142AA36:     End If
  loc_142AA39:   Else
  loc_142AA41:     If (var_8A = CInt(1)) Then
  loc_142AAA2:       Proc_6_69_134A630(Me.DGBill, Me.Txt, CInt(1), global_88, Shift, 0, 1, Nothing)
  loc_142AB14:       If ((Me.FGPoint.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_142AB3E:         Proc_6_138_106E830(Me.DGBill, global_88, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_142AB4C:       End If
  loc_142AB4F:     Else
  loc_142AB57:       If (var_8A = CInt(&H10)) Then
  loc_142ABB4:         Proc_6_69_134A630(Me.DGTable, Me.Txt, CInt(&H10), global_72, Shift, 0, 1, Nothing)
  loc_142AC23:         If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_142AC49:           Proc_6_138_106E830(Me.DGTable, global_72, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_142AC57:         End If
  loc_142AC5A:       Else
  loc_142AC62:         If (var_8A = CInt(&H1E)) Then
  loc_142ACBF:           Proc_6_69_134A630(Me.DGRoom, Me.Txt, CInt(&H1E), global_76, Shift, 0, 1, Nothing)
  loc_142AD2E:           If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_142AD54:             Proc_6_138_106E830(Me.DGRoom, global_76, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_142AD62:           End If
  loc_142AD65:         Else
  loc_142AD6D:           If (var_8A = CInt(&H1F)) Then
  loc_142ADCA:             Proc_6_69_134A630(Me.DGCompany, Me.Txt, CInt(&H1F), global_84, Shift, 0, 1, Nothing)
  loc_142AE39:             If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_142AE5F:               Proc_6_138_106E830(Me.DGCompany, global_84, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_142AE6D:             End If
  loc_142AE70:           Else
  loc_142AE78:             If (var_8A = CInt(&H20)) Then
  loc_142AE98:               Set var_A4 = Me.FGPoint
  loc_142AED5:               Proc_6_69_134A630(Me.DGMember, Me.Txt, CInt(&H20), global_92, Shift, 0, 1, Nothing)
  loc_142AF44:               If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_142AF4B:                 Set var_A0 = Me.DGMember
  loc_142AF52:                 Set var_94 = Me.FGPoint
  loc_142AF6A:                 Proc_6_138_106E830(var_A0, global_92, KeyCode, var_94, var_A4, 0)
  loc_142AF78:               End If
  loc_142AF7B:             Else
  loc_142AF83:               If (var_8A = CInt(&H17)) Then
  loc_142AF90:                 If (CLng(Shift) = &H2D) Then
  loc_142AF96:                   Call Proc_98_81_EE4848(var_BC, 0, var_A0)
  loc_142AFA8:                   Set var_90 = Me.Txt
  loc_142AFAE:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_BC)
  loc_142AFD2:                   Set var_90 = Me.Txt
  loc_142AFD8:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_BC)
  loc_142AFE0:                   0 = var_A4
  loc_142AFF3:                   Set var_A0 = Me.Txt
  loc_142AFF9:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4)
  loc_142B001:                   var_A4.SelStart = Len(var_BC)
  loc_142B014:                   Exit Sub
  loc_142B015:                 End If
  loc_142B015:               End If
  loc_142B015:             End If
  loc_142B015:           End If
  loc_142B015:         End If
  loc_142B015:       End If
  loc_142B015:     End If
  loc_142B015:   End If
  loc_142B015: End If
  loc_142B04C: var_EC = Me.DGPayType.Visible
  loc_142B063: var_FC = Me.DGEmp.Visible
  loc_142B0D7: If (((((((CBool(Me.DGTable.Visible) = 0) And (CBool(Me.DGRoom.Visible) = 0)) And (CBool(var_EC) = 0)) And (CBool(var_FC) = 0)) And (CBool(Me.DGCompany.Visible) = 0)) And (CBool(Me.DGMember.Visible) = 0)) And (CBool(Me.DGBill.Visible) = 0)) Then
  loc_142B0FA:   If (((CLng(Shift) = &H26) And (global_120 = 5)) And (KeyCode = CInt(&HF))) Then
  loc_142B0FD:     Exit Sub
  loc_142B0FE:   End If
  loc_142B11C:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(3))) Then
  loc_142B129:     If (CLng(Shift) = &H28) Then
  loc_142B12C:       Exit Sub
  loc_142B12D:     End If
  loc_142B164:     If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_142B167:       Call Proc_98_77_1591438(var_8A)
  loc_142B16E:       Shift = 0
  loc_142B171:     End If
  loc_142B171:     Exit Sub
  loc_142B175:   Else
  loc_142B193:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H17))) Then
  loc_142B1A0:       If (CLng(Shift) = &H28) Then
  loc_142B1A3:         Exit Sub
  loc_142B1A4:       End If
  loc_142B1DB:       If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_142B1DE:         Call Proc_98_77_1591438(Shift)
  loc_142B1E5:         Shift = 0
  loc_142B1E8:       End If
  loc_142B1E8:       Exit Sub
  loc_142B1EC:     Else
  loc_142B20A:       If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H1E))) Then
  loc_142B217:         If (CLng(Shift) = &H28) Then
  loc_142B21A:           Exit Sub
  loc_142B21B:         End If
  loc_142B21D:         var_86 = 0
  loc_142B22A:         Call Txt_Validate(CInt(&H1E))
  loc_142B235:         If (var_86 = &HFF) Then
  loc_142B238:           Exit Sub
  loc_142B239:         End If
  loc_142B270:         If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_142B273:           Call Proc_98_77_1591438(var_86, var_86)
  loc_142B27A:           Shift = 0
  loc_142B27D:         End If
  loc_142B27D:         Exit Sub
  loc_142B27E:       End If
  loc_142B27E:     End If
  loc_142B27E:   End If
  loc_142B293:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_142B29C:     Proc_6_75_E5335C(Shift, arg_14)
  loc_142B2A1:   End If
  loc_142B2AB:   If (CLng(Shift) = &H26) Then
  loc_142B2B4:     Proc_6_76_E533C8(Shift, arg_14)
  loc_142B2B9:   End If
  loc_142B2B9: End If
  loc_142B2B9: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE7E74
  'Data Table: 5495F0
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_EE7DB6: If (arg_10 = &HD) Then
  loc_EE7DBB:   arg_10 = 0
  loc_EE7DBE: End If
  loc_EE7DC1: Proc_6_58_E06050(arg_10)
  loc_EE7DCC: Proc_6_133_E7FB08(var_94, arg_10)
  loc_EE7DD5: arg_10 = CInt(var_94)
  loc_EE7DDE: var_96 = KeyAscii
  loc_EE7DE9: If Not (var_96 = CInt(&H11)) Then
  loc_EE7DF4:   If (var_96 = CInt(&H19)) Then
  loc_EE7DF7:   End If
  loc_EE7E01:   Set var_9C = Me.Txt
  loc_EE7E07:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_EE7E22:   Proc_6_42_129B55C(var_A0, arg_10, 8)
  loc_EE7E31: Else
  loc_EE7E39:   If (var_96 = CInt(3)) Then
  loc_EE7E46:     Set var_9C = Me.Txt
  loc_EE7E4C:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, 2)
  loc_EE7E67:     Proc_6_42_129B55C(var_A0, arg_10, 5)
  loc_EE7E73:   End If
  loc_EE7E73: End If
  loc_EE7E73: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '11EBEF4
  'Data Table: 5495F0
  Dim var_86 As Integer
  Dim arg_78FF As Integer
  loc_11EBA5F: var_86 = KeyCode
  loc_11EBA6A: If (var_86 = CInt(&HF)) Then
  loc_11EBA89:   If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_11EBA9D:     var_A4 = "Name"
  loc_11EBAC1:     Proc_6_68_12A2818(Me.DGPayType, Me.Txt, KeyCode, global_64)
  loc_11EBAF7:     Proc_6_138_106E830(Me.DGPayType, global_64, KeyCode, Me.FGPoint)
  loc_11EBB05:   End If
  loc_11EBB08: Else
  loc_11EBB10:   If (var_86 = CInt(&H18)) Then
  loc_11EBB2F:     If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_11EBB43:       var_A4 = "Name"
  loc_11EBB67:       Proc_6_68_12A2818(Me.DGEmp, Me.Txt, KeyCode, global_68, Shift)
  loc_11EBB9D:       Proc_6_138_106E830(Me.DGEmp, global_68, KeyCode, Me.FGPoint)
  loc_11EBBAB:     End If
  loc_11EBBAE:   Else
  loc_11EBBB6:     If (var_86 = CInt(1)) Then
  loc_11EBBD5:       If (CBool(Me.DGBill.Visible) = &HFF) Then
  loc_11EBC11:         Proc_6_68_12A2818(Me.DGBill, Me.Txt, KeyCode, global_88, Shift)
  loc_11EBC4B:         Proc_6_138_106E830(Me.DGBill, global_88, KeyCode, Me.FGPoint, "Name")
  loc_11EBC59:       End If
  loc_11EBC5C:     Else
  loc_11EBC64:       If (var_86 = CInt(&H10)) Then
  loc_11EBC83:         If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_11EBCBB:           Proc_6_68_12A2818(Me.DGTable, Me.Txt, KeyCode, global_72, Shift)
  loc_11EBCF1:           Proc_6_138_106E830(Me.DGTable, global_72, KeyCode, Me.FGPoint, "Name")
  loc_11EBCFF:         End If
  loc_11EBD02:       Else
  loc_11EBD0A:         If (var_86 = CInt(&H1E)) Then
  loc_11EBD29:           If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_11EBD61:             Proc_6_68_12A2818(Me.DGRoom, Me.Txt, KeyCode, global_76, Shift)
  loc_11EBD97:             Proc_6_138_106E830(Me.DGRoom, global_76, KeyCode, Me.FGPoint, "Name")
  loc_11EBDA5:           End If
  loc_11EBDA8:         Else
  loc_11EBDB0:           If (var_86 = CInt(&H1F)) Then
  loc_11EBDCF:             If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_11EBE07:               Proc_6_68_12A2818(Me.DGCompany, Me.Txt, KeyCode, global_84, Shift)
  loc_11EBE3D:               Proc_6_138_106E830(Me.DGCompany, global_84, KeyCode, Me.FGPoint, "Name")
  loc_11EBE4B:             End If
  loc_11EBE4E:           Else
  loc_11EBE56:             If (var_86 = CInt(&H20)) Then
  loc_11EBE75:               If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_11EBE89:                 var_A4 = "Name"
  loc_11EBEAD:                 Proc_6_68_12A2818(Me.DGMember, Me.Txt, KeyCode, global_92, Shift)
  loc_11EBEE3:                 Proc_6_138_106E830(Me.DGMember, global_92, KeyCode, Me.FGPoint, var_A4)
  loc_11EBEF1:               End If
  loc_11EBEF1:             End If
  loc_11EBEF1:           End If
  loc_11EBEF1:         End If
  loc_11EBEF1:       End If
  loc_11EBEF1:     End If
  loc_11EBEF1:   End If
  loc_11EBEF1: End If
  loc_11EBEF1: Exit Sub
  loc_11EBEF2: arg_78FF = var_A4
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4AB5C
  'Data Table: 5495F0
  loc_E4AB3A: Set var_88 = Me.Txt
  loc_E4AB40: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4AB4E: Proc_6_73_E23294(var_8C)
  loc_E4AB5A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '16AF560
  'Data Table: 5495F0
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim arg_10 As Integer
  Dim var_94 As Variant
  Dim var_A0 As String
  Dim var_C0 As Variant
  Dim Me As Recordset15
  Dim var_D4 As String
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_9C As Fields15
  Dim unk_549616 As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Recordset15
  Dim var_190 As TextBox
  loc_16ADBE7: var_8E = Cancel
  loc_16ADBF2: If (var_8E = CInt(1)) Then
  loc_16ADBFF:   Set var_94 = Me.Txt
  loc_16ADC05:   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16ADC0D:   var_A0 = "Bill No."
  loc_16ADC2E:   If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_16ADC3E:     Set var_94 = Me.Txt
  loc_16ADC44:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16ADC5E:     If (var_98.Enabled = &HFF) Then
  loc_16ADC6B:       Set var_94 = Me.Txt
  loc_16ADC71:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16ADC79:       var_98.SetFocus
  loc_16ADC85:     End If
  loc_16ADC87:     arg_10 = &HFF
  loc_16ADC8A:     Exit Sub
  loc_16ADC8B:   End If
  loc_16ADCE2:   Set var_94 = Me.Txt
  loc_16ADCE8:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_16ADCF0:   ((global_88.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_98.Text
  loc_16ADD08:   If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_16ADD18:     Set var_94 = Me.Txt
  loc_16ADD1E:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16ADD26:     var_98.Text = vbNullString
  loc_16ADD3F:     Set var_94 = Me.Txt
  loc_16ADD45:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16ADD4D:     var_98.Tag = vbNullString
  loc_16ADD64:     If (global_156 = "RO") Then
  loc_16ADD6D:       global_152 = vbNullString
  loc_16ADD71:     End If
  loc_16ADD74:   Else
  loc_16ADDB2:     Set var_9C = Me.Txt
  loc_16ADDB8:     Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16ADDC0:     var_C0.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_16ADE14:     Set var_9C = Me.Txt
  loc_16ADE1A:     Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16ADE22:     var_C0.Tag = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_16ADE6C:     global_156 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Roomtype")))
  loc_16ADEAD:     global_152 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomCat")))
  loc_16ADEBA:     Call Proc_98_68_103BE9C(var_8E)
  loc_16ADEFD:     Set var_9C = Me.Txt
  loc_16ADF03:     Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16ADF0B:     var_C0.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_16ADF5F:     Set var_9C = Me.Txt
  loc_16ADF65:     Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16ADF6D:     var_C0.Tag = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_16ADFBF:     Set var_9C = Me.Txt
  loc_16ADFC5:     Call 0.Method_Txt_Validate0 (CInt(&H10), var_C0)
  loc_16ADFCD:     var_C0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TableNo")))
  loc_16AE01D:     Set var_9C = Me.Txt
  loc_16AE023:     Call 0.Method_Txt_Validate0 (CInt(0), var_C0)
  loc_16AE02B:     var_C0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("DocID")))
  loc_16AE05F:     var_98 = Me.Recordset15.Fields.Item("NetAmt")
  loc_16AE07E:     Set var_9C = Me.LTxt
  loc_16AE084:     Call 0.Method_Txt_Validate0 (CInt(&H1A), var_C0)
  loc_16AE08C:     var_C0.Caption = CStr(var_98.Value)
  loc_16AE0B4:     Set var_94 = Me.LTxt
  loc_16AE0BA:     Call 0.Method_Txt_Validate0 (CInt(&H1B), var_98)
  loc_16AE0C2:     var_98.Caption = CStr(0)
  loc_16AE0E3:     Set var_94 = Me.LTxt
  loc_16AE0E9:     Call 0.Method_Txt_Validate0 (CInt(&H1D), var_98)
  loc_16AE0F1:     var_98.Caption = CStr(0)
  loc_16AE120:     var_98 = Me.Recordset15.Fields.Item("NetAmt")
  loc_16AE13F:     Set var_9C = Me.LTxt
  loc_16AE145:     Call 0.Method_Txt_Validate0 (CInt(&H1C), var_C0)
  loc_16AE14D:     var_C0.Caption = CStr(var_98.Value)
  loc_16AE163:   End If
  loc_16AE166: Else
  loc_16AE16E:   If (var_8E = CInt(&H10)) Then
  loc_16AE17B:     Set var_94 = Me.Txt
  loc_16AE181:     Call 0.Method_Txt_Validate0 (Cancel)
  loc_16AE189:     var_A0 = "Table"
  loc_16AE1AA:     If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_16AE1BA:       Set var_94 = Me.Txt
  loc_16AE1C0:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AE1DA:       If (var_98.Enabled = &HFF) Then
  loc_16AE1E7:         Set var_94 = Me.Txt
  loc_16AE1ED:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AE1F5:         var_98.SetFocus
  loc_16AE201:       End If
  loc_16AE203:       arg_10 = &HFF
  loc_16AE206:       Exit Sub
  loc_16AE207:     End If
  loc_16AE255:     Set var_94 = Me.Txt
  loc_16AE25B:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_16AE263:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_16AE27B:     If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_16AE28B:       Set var_94 = Me.Txt
  loc_16AE291:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AE299:       var_98.Text = vbNullString
  loc_16AE2B2:       Set var_94 = Me.Txt
  loc_16AE2B8:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AE2C0:       var_98.Tag = vbNullString
  loc_16AE2D7:       If (global_156 = "RO") Then
  loc_16AE2E0:         global_152 = vbNullString
  loc_16AE2E4:       End If
  loc_16AE2E7:     Else
  loc_16AE322:       Set var_9C = Me.Txt
  loc_16AE328:       Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16AE330:       var_C0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_16AE381:       Set var_9C = Me.Txt
  loc_16AE387:       Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16AE38F:       var_C0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_16AE3B0:       If (global_156 = "RO") Then
  loc_16AE3E7:         global_152 = CStr(Me.Fields.Item("RoomCat").Value)
  loc_16AE3F8:       End If
  loc_16AE40C:       var_A0 = "SELECT Sale1.Docid,Sale1.Vno,sale1.NetAmt FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) LEFT JOIN RoomMast AS T ON (Sale1.RoomType = T.Type) AND (Sale1.RoomNo = T.Code) AND (Sale1.RestCode = T.RestCode)) LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code WHERE  (SALE1.LOGSITE_CODE='" & MemVar_1F95078
  loc_16AE413:       var_D4 = var_A0 & "' or SALE1.LOGSITE_CODE='HO') AND IsNull(PAYCHARGE.AmtCr, 0)< SALE1.NetAmt AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') AND  Sale1.RoomType='TB' AND SALE1.restcode='"
  loc_16AE424:       var_E8 = CVar(var_D4 & global_52 & "' and sale1.RoomNO='") 'String
  loc_16AE45D:       var_118 = var_E8 & Me.Fields.Item("Code").Value & "' AND Sale1.DocId='" 
  loc_16AE47E:       var_C0 = Me.Fields.Item("DocID")
  loc_16AE4A5:       unk_549616.Execute CStr(var_118 & var_C0.Value & "'"), var_18C, -1
  loc_16AE4B0:       Set var_88 = var_190
  loc_16AE4F2:       If (var_88.RecordCount > 0) Then
  loc_16AE4F5:         Call Proc_98_68_103BE9C(var_190)
  loc_16AE535:         Set var_9C = Me.Txt
  loc_16AE53B:         Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16AE543:         var_C0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_16AE594:         Set var_9C = Me.Txt
  loc_16AE59A:         Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16AE5A2:         var_C0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_16AE5DE:         Proc_6_39_E7D3A0(var_E8, CVar(var_88.Fields.Item("VNo")))
  loc_16AE5F5:         Set var_9C = Me.Txt
  loc_16AE5FB:         Call 0.Method_Txt_Validate0 (CInt(1), var_C0)
  loc_16AE603:         var_C0.Text = CStr(var_E8)
  loc_16AE651:         Set var_9C = Me.Txt
  loc_16AE657:         Call 0.Method_Txt_Validate0 (CInt(0), var_C0)
  loc_16AE65F:         var_C0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("DocID")))
  loc_16AE68D:         var_98 = var_88.Fields.Item("NetAmt")
  loc_16AE6AC:         Set var_9C = Me.LTxt
  loc_16AE6B2:         Call 0.Method_Txt_Validate0 (CInt(&H1A), var_C0)
  loc_16AE6BA:         var_C0.Caption = CStr(var_98.Value)
  loc_16AE6E2:         Set var_94 = Me.LTxt
  loc_16AE6E8:         Call 0.Method_Txt_Validate0 (CInt(&H1B), var_98)
  loc_16AE6F0:         var_98.Caption = CStr(0)
  loc_16AE711:         Set var_94 = Me.LTxt
  loc_16AE717:         Call 0.Method_Txt_Validate0 (CInt(&H1D), var_98)
  loc_16AE71F:         var_98.Caption = CStr(0)
  loc_16AE748:         var_98 = var_88.Fields.Item("NetAmt")
  loc_16AE759:         var_A0 = CStr(var_98.Value)
  loc_16AE767:         Set var_9C = Me.LTxt
  loc_16AE76D:         Call 0.Method_Txt_Validate0 (CInt(&H1C), var_C0)
  loc_16AE775:         var_C0.Caption = var_A0
  loc_16AE78B:       End If
  loc_16AE78B:     End If
  loc_16AE78E:   Else
  loc_16AE796:     If (var_8E = CInt(&H1E)) Then
  loc_16AE7E7:       Set var_94 = Me.Txt
  loc_16AE7ED:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_16AE7F5:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_16AE80D:       If (var_98 Or (var_A0 = vbNullString)) Then
  loc_16AE81D:         Set var_94 = Me.Txt
  loc_16AE823:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AE82B:         var_98.Text = vbNullString
  loc_16AE844:         Set var_94 = Me.Txt
  loc_16AE84A:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AE852:         var_98.Tag = vbNullString
  loc_16AE861:       Else
  loc_16AE89C:         Set var_9C = Me.Txt
  loc_16AE8A2:         Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16AE8AA:         var_C0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_16AE901:         Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16AE909:         var_C0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_16AE95E:         var_E8 = "Select count(Distinct Bill_no) from paycharge where bill_no is not null and bill_no<>'' and FolionoDocid='" & Me.Fields.Item("FolioNoDocid").Value 
  loc_16AE967:         var_F8 = var_E8 & "'" 
  loc_16AE96B:         var_A0 = CStr(var_F8)
  loc_16AE975:         unk_549616.Execute var_A0, var_118, -1
  loc_16AE9B4:         var_98 = Me.Txt.Fields.Item(0)
  loc_16AE9D6:         If (var_98.Value > 0) Then
  loc_16AE9F2:           MsgBox("Guest Room Bill Already printed for this Room", &H10, var_E8, var_F8, var_118)
  loc_16AEA07:           Set var_8C = Nothing
  loc_16AEA0C:           arg_10 = &HFF
  loc_16AEA0F:           Exit Sub
  loc_16AEA10:         End If
  loc_16AEA10:       End If
  loc_16AEA13:     Else
  loc_16AEA1B:       If (var_8E = CInt(2)) Then
  loc_16AEA2C:         Set var_94 = Me.Txt
  loc_16AEA32:         Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_A0)
  loc_16AEA3A:         arg_10 = var_98.Text
  loc_16AEA59:         Set var_9C = Me.Txt
  loc_16AEA5F:         Call 0.Method_Txt_Validate0 (CInt(2), var_C0)
  loc_16AEA67:         var_C0.Text = Proc_6_34_14EEAAC(var_A0)
  loc_16AEA84:         Call Proc_98_73_10C96F4(MemVar_1F95044, var_A0)
  loc_16AEA9A:         Set var_94 = Me.Txt
  loc_16AEAA0:         Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_16AEABF:         If (var_98.Text = vbNullString) Then
  loc_16AEAC4:           arg_10 = &HFF
  loc_16AEAC7:         End If
  loc_16AEACA:       Else
  loc_16AEAD2:         If (var_8E = CInt(&H16)) Then
  loc_16AEADF:           Set var_94 = Me.Txt
  loc_16AEAE5:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AEB05:           Set var_C0 = Me.Txt
  loc_16AEB0B:           Call 0.Method_Txt_Validate0 (Cancel, var_190)
  loc_16AEB13:           var_190.Text = Proc_6_33_15125B8(var_98, arg_10)
  loc_16AEB29:         Else
  loc_16AEB31:           If (var_8E = CInt(&H14)) Then
  loc_16AEB42:             Set var_94 = Me.Txt
  loc_16AEB48:             Call 0.Method_Txt_Validate0 (CInt(&H14), var_98)
  loc_16AEB67:             If (var_98.Text = vbNullString) Then
  loc_16AEB74:               Set var_94 = Me.Txt
  loc_16AEB7A:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AEBA3:               If (Proc_6_27_EA61EC(var_98, "Expiry Date") = 0) Then
  loc_16AEBB0:                 Set var_94 = Me.Txt
  loc_16AEBB6:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AEBBE:                 var_98.SetFocus
  loc_16AEBCC:                 arg_10 = &HFF
  loc_16AEBCF:                 Exit Sub
  loc_16AEBD0:               End If
  loc_16AEBD0:             End If
  loc_16AEBDA:             Set var_94 = Me.Txt
  loc_16AEBE0:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AEC00:             Set var_C0 = Me.Txt
  loc_16AEC06:             Call 0.Method_Txt_Validate0 (Cancel, var_190)
  loc_16AEC0E:             var_190.Text = Proc_6_33_15125B8(var_98, arg_10)
  loc_16AEC2F:             Set var_94 = Me.Txt
  loc_16AEC35:             Call 0.Method_Txt_Validate0 (CInt(&H14), var_98)
  loc_16AEC55:             If (CDate(var_98.Text) <= MemVar_1F950EC) Then
  loc_16AEC71:               MsgBox("Credit Card has been Expired", &H40, var_E8, var_F8, var_118)
  loc_16AEC83:               arg_10 = &HFF
  loc_16AEC86:               Exit Sub
  loc_16AEC87:             End If
  loc_16AEC8A:           Else
  loc_16AEC92:             If (var_8E = CInt(&HF)) Then
  loc_16AEC9F:               Set var_94 = Me.Txt
  loc_16AECA5:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AECAD:               var_A0 = "Payment Type"
  loc_16AECCE:               If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_16AECDB:                 Set var_94 = Me.Txt
  loc_16AECE1:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AECE9:                 var_98.SetFocus
  loc_16AECF7:                 arg_10 = &HFF
  loc_16AECFA:                 Exit Sub
  loc_16AECFB:               End If
  loc_16AED08:               Set var_94 = Me.Txt
  loc_16AED0E:               Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_16AED2D:               If (var_A0 <> vbNullString) Then
  loc_16AED6B:                 Set var_9C = Me.Txt
  loc_16AED71:                 Call 0.Method_Txt_Validate0 (Cancel, var_C0, CStr(Me.Fields.Item("Name").Value))
  loc_16AED79:                 var_C0.Text = Me.Fields.Item("Name").Text
  loc_16AEDCA:                 Set var_9C = Me.Txt
  loc_16AEDD0:                 Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16AEDD8:                 var_C0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_16AEE1F:                 global_160 = Proc_6_38_E69628(CVar(Me.Fields.Item("PayType")))
  loc_16AEE38:                 Me.FrEmp.Visible = False
  loc_16AEE4C:                 Me.FrChqDet.Visible = False
  loc_16AEE60:                 Me.FrCCDet.Visible = False
  loc_16AEE74:                 Me.FrTxnNo.Visible = False
  loc_16AEE96:                 var_98 = Me.Fields.Item("PayType")
  loc_16AEEAB:                 Call Proc_98_76_11D2664(Proc_6_38_E69628(CVar(var_98)))
  loc_16AEEBC:               Else
  loc_16AEEC9:                 Set var_94 = Me.Txt
  loc_16AEECF:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AEED7:                 var_98.Text = vbNullString
  loc_16AEEF0:                 Set var_94 = Me.Txt
  loc_16AEEF6:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AEEFE:                 var_98.Tag = vbNullString
  loc_16AEF0A:               End If
  loc_16AEF0D:             Else
  loc_16AEF15:               If Not (var_8E = CInt(&H11)) Then
  loc_16AEF20:                 If (var_8E = CInt(&H19)) Then
  loc_16AEF23:                 End If
  loc_16AEF2D:                 Set var_94 = Me.Txt
  loc_16AEF33:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AEF3F:                 Proc_6_40_EA5C80(CVar(var_98))
  loc_16AEF56:                 var_F8 = "0.00"
  loc_16AEF5F:                 var_E8 = CVar(var_9C) 'Double
  loc_16AEF66:                 var_118 = Format(var_E8, var_F8)
  loc_16AEF6E:                 var_A0 = CStr(var_118)
  loc_16AEF7C:                 Set var_9C = Me.Txt
  loc_16AEF82:                 Call 0.Method_Txt_Validate0 (Cancel, var_C0, var_A0)
  loc_16AEF8A:                 var_C0.Text = 1
  loc_16AEFB4:                 Set var_9C = Me.LTxt
  loc_16AEFBA:                 Call 0.Method_Txt_Validate0 (CInt(&H1C), var_C0, var_D4)
  loc_16AEFC2:                 1 = var_C0.Caption
  loc_16AEFE8:                 Set var_94 = Me.Txt
  loc_16AEFEE:                 Call 0.Method_Txt_Validate0 (CInt(&H11), var_98, var_A0)
  loc_16AEFF6:                 (Cancel = CInt(&H11)) = var_98.Text
  loc_16AF026:                 If ((Val(var_D4) And (CDbl(Val(var_A0)) > CDbl(Val(var_D4)))) And (global_172 = 0)) Then
  loc_16AF042:                   MsgBox("Amount You have entered is greater than Actual amount", &H40, var_E8, var_F8, var_118)
  loc_16AF054:                   arg_10 = &HFF
  loc_16AF057:                   Exit Sub
  loc_16AF058:                 End If
  loc_16AF05B:               Else
  loc_16AF063:                 If (var_8E = CInt(&H1F)) Then
  loc_16AF0B4:                   Set var_94 = Me.Txt
  loc_16AF0BA:                   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_16AF0C2:                   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_16AF0DA:                   If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_16AF0EA:                     Set var_94 = Me.Txt
  loc_16AF0F0:                     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AF0F8:                     var_98.Text = vbNullString
  loc_16AF111:                     Set var_94 = Me.Txt
  loc_16AF117:                     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AF11F:                     var_98.Tag = vbNullString
  loc_16AF12E:                   Else
  loc_16AF169:                     Set var_9C = Me.Txt
  loc_16AF16F:                     Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16AF177:                     var_C0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_16AF1AA:                     var_98 = Me.Fields.Item("Code")
  loc_16AF1BB:                     var_A0 = CStr(var_98.Value)
  loc_16AF1C8:                     Set var_9C = Me.Txt
  loc_16AF1CE:                     Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16AF1D6:                     var_C0.Tag = var_A0
  loc_16AF206:                     Set var_94 = Me.Txt
  loc_16AF20C:                     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_16AF214:                     0 = var_98.Tag
  loc_16AF23C:                     If (Proc_96_1_F8D0C4(Proc_6_38_E69628(CVar(var_A0))) = 0) Then
  loc_16AF258:                       MsgBox("Credit Not Allowed.", 0, var_E8, var_F8, var_118)
  loc_16AF26A:                       arg_10 = &HFF
  loc_16AF26D:                       Exit Sub
  loc_16AF26E:                     End If
  loc_16AF26E:                   End If
  loc_16AF271:                 Else
  loc_16AF279:                   If (var_8E = CInt(&H20)) Then
  loc_16AF2CA:                     Set var_94 = Me.Txt
  loc_16AF2D0:                     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_16AF2D8:                     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_16AF2F0:                     If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_16AF300:                       Set var_94 = Me.Txt
  loc_16AF306:                       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AF30E:                       var_98.Text = vbNullString
  loc_16AF327:                       Set var_94 = Me.Txt
  loc_16AF32D:                       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AF335:                       var_98.Tag = vbNullString
  loc_16AF344:                     Else
  loc_16AF37F:                       Set var_9C = Me.Txt
  loc_16AF385:                       Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16AF38D:                       var_C0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_16AF3C0:                       var_98 = Me.Fields.Item("Code")
  loc_16AF3DE:                       Set var_9C = Me.Txt
  loc_16AF3E4:                       Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16AF3EC:                       var_C0.Tag = CStr(var_98.Value)
  loc_16AF402:                     End If
  loc_16AF405:                   Else
  loc_16AF40D:                     If (var_8E = CInt(&H12)) Then
  loc_16AF41A:                       Set var_94 = Me.Txt
  loc_16AF420:                       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AF449:                       If (Proc_6_27_EA61EC(var_98, "Credit Card No.") = 0) Then
  loc_16AF456:                         Set var_94 = Me.Txt
  loc_16AF45C:                         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AF464:                         var_98.SetFocus
  loc_16AF472:                         arg_10 = &HFF
  loc_16AF475:                         Exit Sub
  loc_16AF476:                       End If
  loc_16AF479:                     Else
  loc_16AF481:                       If (var_8E = CInt(&H13)) Then
  loc_16AF48E:                         Set var_94 = Me.Txt
  loc_16AF494:                         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AF4BD:                         If (Proc_6_27_EA61EC(var_98, "Account Holder Name") = 0) Then
  loc_16AF4CA:                           Set var_94 = Me.Txt
  loc_16AF4D0:                           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AF4D8:                           var_98.SetFocus
  loc_16AF4E6:                           arg_10 = &HFF
  loc_16AF4E9:                           Exit Sub
  loc_16AF4EA:                         End If
  loc_16AF4ED:                       Else
  loc_16AF4F5:                         If (var_8E = CInt(3)) Then
  loc_16AF502:                           Set var_94 = Me.Txt
  loc_16AF508:                           Call 0.Method_Txt_Validate0 (Cancel, var_98, arg_10)
  loc_16AF531:                           If (Proc_6_27_EA61EC(var_98, "Batch No.") = 0) Then
  loc_16AF53E:                             Set var_94 = Me.Txt
  loc_16AF544:                             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AF54C:                             var_98.SetFocus
  loc_16AF55A:                             arg_10 = &HFF
  loc_16AF55D:                             Exit Sub
  loc_16AF55E:                           End If
  loc_16AF55E:                         End If
  loc_16AF55E:                       End If
  loc_16AF55E:                     End If
  loc_16AF55E:                   End If
  loc_16AF55E:                 End If
  loc_16AF55E:               End If
  loc_16AF55E:             End If
  loc_16AF55E:           End If
  loc_16AF55E:         End If
  loc_16AF55E:       End If
  loc_16AF55E:     End If
  loc_16AF55E:   End If
  loc_16AF55E: End If
  loc_16AF55E: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'ED29F8
  'Data Table: 5495F0
  loc_ED295C: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_ED295F:   Call DGTable_UnknownEvent_9()
  loc_ED2964: End If
  loc_ED2980: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_ED2983:   Call DGEmp_UnknownEvent_9()
  loc_ED2988: End If
  loc_ED29A4: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_ED29A7:   Call DGPayType_UnknownEvent_9()
  loc_ED29AC: End If
  loc_ED29C8: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_ED29CB:   Call DGRoom_UnknownEvent_9()
  loc_ED29D0: End If
  loc_ED29EC: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_ED29EF:   Call DGCompany_UnknownEvent_9()
  loc_ED29F4: End If
  loc_ED29F4: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E0B340
  'Data Table: 5495F0
  loc_E0B32C: Call Proc_98_80_140F224()
  loc_E0B337: Call Proc_98_76_11D2664(global_160)
  loc_E0B33C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FE179C
  'Data Table: 5495F0
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FE15D0: Set var_88 = Me.TopCtrl1
  loc_FE15D6: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_FE15EF: If (CStr() = "Browse") Then
  loc_FE15F2:   Exit Sub
  loc_FE15F3: End If
  loc_FE1610: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FE1613:   Exit Sub
  loc_FE1614: End If
  loc_FE1625: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FE1647:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FE1681:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FE16A3:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FE16B9:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE16C2:         Set var_110 = Me.FGrid
  loc_FE16DD:       Else
  loc_FE16F0:         Me.FGrid.Rows = 1
  loc_FE1714:         var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0))) 'String
  loc_FE171C:         Set var_110 = Me.FGrid
  loc_FE1749:         Me.FGrid.FixedRows = 1
  loc_FE1751:       End If
  loc_FE1751:     End If
  loc_FE1754:   Else
  loc_FE1775:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FE1785:   End If
  loc_FE1789:   Set var_88 = Me.FGrid
  loc_FE179A: End If
  loc_FE179A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_E 'E40408
  'Data Table: 5495F0
  loc_E403DE: If (Cancel = 2) Then
  loc_E403F9:   Call 0.Method_arg_2BC (Me.popup, var_98, var_A8)
  loc_E40401:   Call FGrid_UnknownEvent_9()
  loc_E40406: End If
  loc_E40406: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F7DCB4
  'Data Table: 5495F0
  Dim var_88 As String
  Dim var_D4 As TextBox
  Dim var_D8 As Long
  Dim var_8C As Label
  loc_F7DB68: On Error Goto loc_F7DCAE
  loc_F7DB8E: Call Proc_98_67_FDD1A0(Proc_5_1_100EC1C("ADD", Me))
  loc_F7DB99: Call Proc_98_68_103BE9C(global_60)
  loc_F7DBC6: var_88 = CStr(Format(MemVar_1F950EC, "dd/MMM/yyyy"))
  loc_F7DBD5: Set var_8C = Me.Txt
  loc_F7DBDB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4, var_88)
  loc_F7DBE3: var_D4.Text = 1
  loc_F7DBFF: var_D8 = global_120
  loc_F7DC0B: If Not (var_D8 = 5) Then
  loc_F7DC17:   If (var_D8 = 6) Then
  loc_F7DC1A:   End If
  loc_F7DC27:   Set var_8C = Me.Txt
  loc_F7DC2D:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HF), var_D4, &HFF)
  loc_F7DC35:   var_D4.Enabled = var_D8
  loc_F7DC4D:   If (global_116 = 2) Then
  loc_F7DC56:     Call Proc_98_73_10C96F4(MemVar_1F95044, var_88)
  loc_F7DC69:     Set var_8C = Me.Txt
  loc_F7DC6F:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_D4)
  loc_F7DC77:     var_D4.SetFocus
  loc_F7DC83:   End If
  loc_F7DC83: End If
  loc_F7DC90: Me.LblUser.Caption = vbNullString
  loc_F7DCA5: Me.LblLDt.Caption = vbNullString
  loc_F7DCAD: Exit Sub
  loc_F7DCAE: ' Referenced from: F7DB68
  loc_F7DCAE: Proc_6_60_E63754(1)
  loc_F7DCB3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC64BC
  'Data Table: 5495F0
  loc_EC6424: On Error Goto loc_EC64B4
  loc_EC645E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC646D:   Set var_110 = Me
  loc_EC6484:   Call Proc_98_67_FDD1A0(Proc_5_1_100EC1C("INI", var_110))
  loc_EC648F:   Call Proc_98_71_FB8840(global_60)
  loc_EC6494:   Call Proc_98_70_15D490C()
  loc_EC649C: Else
  loc_EC64A2:   Call 0.Method_arg_1E8 (var_110)
  loc_EC64AA:   Call var_110.SetFocus
  loc_EC64B3: End If
  loc_EC64B3: Exit Sub
  loc_EC64B4: ' Referenced from: EC6424
  loc_EC64B4: Proc_6_60_E63754()
  loc_EC64B9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1071898
  'Data Table: 5495F0
  Dim unk_549616 As Connection15
  Dim Me As Recordset15
  Dim var_11C As Variant
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_1071610: On Error Goto loc_1071847
  loc_1071621: If (Proc_183_56_FE8B08(global_60) = &HFF) Then
  loc_1071624:   Exit Sub
  loc_1071625: End If
  loc_107165C: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F4, var_114) = 6) Then
  loc_1071668:   unk_549616.BeginTrans var_118
  loc_107167E:   var_94 = Me.Bookmark 'Variant
  loc_10716CA:   var_F4 = "Delete From PayCharge Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_10716CE:   var_124 = CStr(var_F4)
  loc_10716D8:   unk_549616.Execute var_124, var_114, -1
  loc_10716FA:   unk_549616.CommitTrans
  loc_107170A:   Me.Requery -1
  loc_107171D:   Me.Recordset15.Requery -1
  loc_107172D:   Me.Requery -1
  loc_107173E:   CVarUnk
  loc_1071743:   VerifyVarObj
  loc_1071749:   Set var_11C = Me.FGrid1
  loc_107174F:   LateIdStAd
  loc_1071777:   If (Me.FGrid1.RecordCount <= 0) Then
  loc_107178D:     Me.FGrid1.Rows = 2
  loc_10717A8:     Me.FGrid1.FixedRows = 1
  loc_10717BD:     Set var_11C = Me.FGrid1
  loc_10717C3:     var_11C.Row = 1
  loc_10717CB:   End If
  loc_10717E6:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10717F3:     Me.Bookmark = var_94
  loc_10717FB:   Else
  loc_107180F:     If (Me.EOF = 0) Then
  loc_1071818:       Me.MoveLast
  loc_107181D:     End If
  loc_107181D:   End If
  loc_107181D:   Call Proc_98_70_15D490C(var_11C, global_88)
  loc_107183E:   Proc_5_0_1107AD0(&HFF, Me, global_60)
  loc_1071846: End If
  loc_1071846: Exit Sub
  loc_1071847: ' Referenced from: 1071610
  loc_107184D: unk_549616.RollbackTrans
  loc_107185A: Set var_11C = Err()
  loc_1071860: Call 0.Method_arg_2C (var_124, 0)
  loc_1071881: MsgBox(CVar(var_124), &H30, " Deletion Error ", var_F4, var_114)
  loc_1071894: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F0657C
  'Data Table: 5495F0
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F06494: On Error Goto loc_F06575
  loc_F064A5: If (Proc_183_55_FE8490(global_60) = &HFF) Then
  loc_F064A8:   Exit Sub
  loc_F064A9: End If
  loc_F064CC: Call Proc_98_67_FDD1A0(Proc_5_1_100EC1C("EDIT", Me))
  loc_F064E4: Set var_8C = Me.Txt
  loc_F064EA: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F064F2: var_94.Enabled = False
  loc_F0650B: Set var_8C = Me.Txt
  loc_F06511: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H10), var_94)
  loc_F06519: var_94.Enabled = False
  loc_F06530: Set var_8C = Me.Txt
  loc_F06536: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HF), var_94)
  loc_F0653E: var_94.SetFocus
  loc_F06557: Me.LblUser.Caption = vbNullString
  loc_F0656C: Me.LblLDt.Caption = vbNullString
  loc_F06574: Exit Sub
  loc_F06575: ' Referenced from: F06494
  loc_F06575: Proc_6_60_E63754(global_60)
  loc_F0657A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A950
  'Data Table: 5495F0
  loc_E1A945: Me.Global.Unload Me
  loc_E1A94D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F '105A450
  'Data Table: 5495F0
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_E8 As Variant
  Dim var_10C As String
  Dim var_110 As String
  Dim var_108 As Variant
  Dim var_144 As Variant
  Dim MemVar_1F950E4 As String
  Dim var_124 As Variant
  Dim var_1D4 As Variant
  Dim var_A8 As Variant
  loc_105A200: On Error Goto loc_105A3E8
  loc_105A20C: var_88 = Me.RecordCount
  loc_105A21A: If (var_88 <= 0) Then
  loc_105A23E:   MsgBox("Records Not Present For Searching.", &H40, "Information", var_E8, var_108)
  loc_105A24E:   Exit Sub
  loc_105A24F: End If
  loc_105A25A: var_A8 = Ucase(MemVar_1F950C8)
  loc_105A283: If CBool((var_A8 = "SA") Or (MemVar_1F950B8 = 1)) Then
  loc_105A28D:   var_10C = "SELECT Sale1.DocId as SearchCode,max(Sale1.vNO) as Bill_No,MAX(T.CODE) AS Table_No,CAST(max(SALE1.VDATE) AS VARCHAR(11)) as Bill_Date FROM ((SALE1 INNER JOIN pAYcHARGE AS pchrg ON SALE1.DOCID=PCHRG.DOCID ) left JOIN RoomMast AS T ON (Sale1.RestCode = T.RestCode) AND (Sale1.RoomNo = T.Code) AND (Sale1.RoomType = T.Type)) left JOIN Waiter ON Sale1.Waiter = Waiter.Code  Where SALE1.LOGSITE_CODE='" & MemVar_1F95078
  loc_105A294:   var_110 = var_10C & "'  AND (Sale1.DelFlag='' Or Sale1.DelFlag='N' OR Sale1.DelFlag IS NULL) AND  Sale1.RoomType='TB' AND SALE1.restcode='"
  loc_105A2B3:   Proc_6_7_F26918(var_A8, MemVar_1F950F4)
  loc_105A2D3:   Proc_6_7_F26918(var_124, MemVar_1F950FC)
  loc_105A2E4:   var_144 = CVar(var_110 & global_52 & "' AND Sale1.VDate between ") & var_A8 & " and " & var_124 & " GROUP BY SALE1.DOCID ORDER BY max(Sale1.vNO),MAX(T.Code)" 
  loc_105A2E9:   MemVar_1F950E4 = CStr(var_144)
  loc_105A30A: Else
  loc_105A311:   var_10C = "SELECT Sale1.DocId as SearchCode,max(Sale1.vNO) as Bill_No,MAX(T.CODE) AS Table_No,CAST(max(SALE1.VDATE) AS VARCHAR(11)) as Bill_Date FROM ((SALE1 INNER JOIN pAYcHARGE AS pchrg ON SALE1.DOCID=PCHRG.DOCID ) left JOIN RoomMast AS T ON (Sale1.RestCode = T.RestCode) AND (Sale1.RoomNo = T.Code) AND (Sale1.RoomType = T.Type)) left JOIN Waiter ON Sale1.Waiter = Waiter.Code  Where SALE1.LOGSITE_CODE='" & MemVar_1F95078
  loc_105A326:   Proc_6_7_F26918(var_A8, MemVar_1F950EC)
  loc_105A32E:   var_E8 = CVar(var_10C & "' aND PCHRG.VDATE=") & var_A8 
  loc_105A332:   var_B8 = " AND (Sale1.DelFlag='' Or Sale1.DelFlag='N' OR Sale1.DelFlag IS NULL) AND  Sale1.RoomType='TB' AND SALE1.restcode='"
  loc_105A337:   var_108 = var_E8 & var_B8 
  loc_105A35C:   Proc_6_7_F26918(var_144, MemVar_1F950F4)
  loc_105A37C:   Proc_6_7_F26918(var_1A4, MemVar_1F950FC)
  loc_105A38D:   var_1D4 = var_108 & CVar(global_52) & "' AND Sale1.VDate between " & var_144 & " and " & var_1A4 & " GROUP BY SALE1.DOCID ORDER BY max(Sale1.vNO),MAX(T.Code)" 
  loc_105A392:   MemVar_1F950E4 = CStr(var_1D4)
  loc_105A3B4: End If
  loc_105A3BA: MemVar_1F95120 = Me
  loc_105A3C1: var_10C = "1100,1100,1500"
  loc_105A3C7: Proc_6_126_F1C850(var_10C, MemVar_1F950E4)
  loc_105A3E2: Call 0.Method_arg_2B0 (1, var_B8)
  loc_105A3E7: Exit Sub
  loc_105A3E8: ' Referenced from: 105A200
  loc_105A3F0: Set var_1D8 = Err()
  loc_105A3F6: Call 0.Method_arg_1C (var_88)
  loc_105A407: If (var_88 <> 0) Then
  loc_105A412:   Set var_1D8 = Err()
  loc_105A418:   Call 0.Method_arg_2C (var_10C)
  loc_105A439:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_105A44C: End If
  loc_105A44C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E34D48
  'Data Table: 5495F0
  loc_E34D38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E34D40: Call Proc_98_70_15D490C(global_60)
  loc_E34D45: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3AF88
  'Data Table: 5495F0
  loc_E3AF78: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3AF80: Call Proc_98_70_15D490C(global_60)
  loc_E3AF85: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3AF28
  'Data Table: 5495F0
  loc_E3AF18: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3AF20: Call Proc_98_70_15D490C(global_60)
  loc_E3AF25: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3AEC8
  'Data Table: 5495F0
  loc_E3AEB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3AEC0: Call Proc_98_70_15D490C(global_60)
  loc_E3AEC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E834C4
  'Data Table: 5495F0
  Dim Me As Recordset15
  loc_E8345B: Me.Requery -1
  loc_E8346B: Me.Requery -1
  loc_E8347B: Me.Requery -1
  loc_E8348B: Me.Requery -1
  loc_E8349B: Me.Requery -1
  loc_E834AB: Me.Requery -1
  loc_E834BB: Me.Requery -1
  loc_E834C0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1738C80
  'Data Table: 5495F0
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_124 As String
  Dim var_EC As Variant
  Dim var_158 As Long
  Dim var_15C As Variant
  Dim var_164 As Variant
  Dim var_170 As Double
  Dim unk_549616 As Connection15
  Dim var_168 As String
  Dim var_17C As String
  Dim var_AC As Variant
  Dim var_184 As Long
  Dim var_98 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_290 As Variant
  Dim var_2B4 As Variant
  Dim var_304 As Variant
  Dim var_324 As Long
  Dim var_360 As Variant
  Dim var_380 As Variant
  Dim var_394 As MSHFlexGrid
  Dim var_3B4 As Variant
  Dim var_3D4 As Variant
  Dim var_3E8 As Variant
  Dim var_34C As String
  Dim var_408 As Variant
  Dim var_4B8 As Variant
  Dim var_4D8 As Variant
  Dim var_4FC As Variant
  Dim var_580 As MSHFlexGrid
  Dim var_590 As Variant
  Dim var_5D8 As Variant
  Dim var_64C As Long
  Dim var_674 As String
  Dim var_EB4 As Double
  Dim var_70C As String
  Dim var_EBC As Double
  Dim var_7F4 As TextBox
  Dim var_840 As TextBox
  Dim var_8D8 As Variant
  Dim var_96C As Variant
  Dim var_A00 As Variant
  Dim var_A94 As Variant
  Dim var_B38 As Variant
  Dim var_1E0 As String
  Dim var_1EC As String
  Dim var_1F4 As String
  Dim var_200 As String
  Dim var_204 As String
  Dim var_208 As String
  Dim var_220 As Variant
  Dim var_270 As Variant
  Dim var_2C4 As Variant
  Dim var_2F4 As Variant
  Dim var_478 As Variant
  Dim var_488 As Variant
  Dim var_5B0 As Variant
  Dim var_5FC As Variant
  Dim var_6B4 As Variant
  Dim var_74C As Variant
  Dim var_78C As Variant
  Dim var_7CC As Variant
  Dim var_8E8 As Variant
  Dim var_918 As Variant
  Dim var_A20 As Variant
  Dim var_A40 As Variant
  Dim var_CDC As Variant
  Dim var_134 As Variant
  Dim var_1D8 As String
  Dim var_C8 As Recordset15
  Dim var_314 As Variant
  Dim var_334 As Long
  Dim var_5D4 As Variant
  Dim var_1F8 As String
  Dim var_438 As Variant
  Dim var_C4 As Double
  Dim var_EEC As Double
  Dim var_210 As TextBox
  Dim var_EF4 As Double
  Dim var_EFC As Double
  Dim Me As Recordset15
  loc_173721C: On Error Goto loc_1738C2B
  loc_173721F: var_DC = 1
  loc_1737228: var_FC = 1
  loc_1737246: var_124 = CStr(Me.FGrid.TextMatrix))
  loc_1737257: If (var_124 = vbNullString) Then
  loc_1737265:   var_134 = "Save Data"
  loc_1737270:   var_DC = "Please Fill Payment Details Before Saving.."
  loc_173727B:   MsgBox(var_DC, &H40, var_134, var_144, var_154)
  loc_173728B:   Exit Sub
  loc_173728C: End If
  loc_1737292: var_158 = global_120
  loc_173729E: If Not (var_158 = 5) Then
  loc_17372AA:   If (var_158 = 6) Then
  loc_17372AD:   End If
  loc_17372BB:   Set var_110 = Me.LTxt
  loc_17372C1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_15C, var_124)
  loc_17372C9:   var_158 = var_15C.Caption
  loc_17372E5:   If (CDbl(Val(var_124)) <> CDbl(0)) Then
  loc_17372F6:     Set var_160 = Me.LTxt
  loc_17372FC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_164, var_168)
  loc_1737304:     var_FC = var_164.Caption
  loc_1737311:     var_170 = Val(var_168)
  loc_1737322:     Set var_110 = Me.LTxt
  loc_1737328:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_15C, var_124)
  loc_1737355:     If (CDbl(Val(var_124)) <> CDbl(var_15C.Caption)) Then
  loc_1737377:       MsgBox(CVar("Bill Amount and Received Amount Not Matched" & vbCrLf & "Entry could not be Saved?"), 0, var_134, var_144, var_154)
  loc_173738A:       Exit Sub
  loc_173738B:     End If
  loc_173738B:   End If
  loc_173738B: End If
  loc_173738E: Call Proc_98_66_1010178(var_172)
  loc_1737399: If (var_172 = 0) Then
  loc_173739C:   Exit Sub
  loc_173739D: End If
  loc_17373A1: Set var_110 = Me.TopCtrl1
  loc_17373A7: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_DC)
  loc_17373C0: If (CStr() = "Add") Then
  loc_17373C9:   global_176 = MemVar_1F950C8
  loc_17373D2:   var_124 = Proc_6_14_EF402C()
  loc_17373DA:   global_180 = CDate(var_124)
  loc_17373E0: End If
  loc_17373E4: var_86 = CByte(0) 'Byte
  loc_17373F1: unk_549616.BeginTrans var_178
  loc_17373FA: var_86 = CByte(1) 'Byte
  loc_173741C: Set var_110 = Me.Txt
  loc_1737422: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_124, "Delete From PayCharge Where Docid='")
  loc_173742A: var_120 = var_15C.Text
  loc_1737433: var_168 = -1 & var_124
  loc_1737443: unk_549616.Execute var_168 & "'", var_160, global_180
  loc_1737482: For var_180 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_AA = var_180 'Integer
  loc_173748C:   var_DC = CVar(CLng(var_AA)) 'Long
  loc_1737491:   var_FC = 2
  loc_173749E:   Set var_110 = Me.FGrid
  loc_17374A4:   var_120 = var_110.TextMatrix)
  loc_17374C0:   If (CStr(var_120) <> vbNullString) Then
  loc_17374C9:     var_AC = (var_AC + 1)
  loc_17374D2:     var_184 = global_120
  loc_17374DE:     If Not (var_184 = 5) Then
  loc_17374EA:       If (var_184 = 6) Then
  loc_17374ED:       End If
  loc_1737504:       var_124 = "Select Name,ShortName from depart where code='" & global_52
  loc_1737514:       unk_549616.Execute var_124 & "'", var_120, -1
  loc_173751F:       Set var_98 = var_110
  loc_1737543:       If (var_98.RecordCount > 0) Then
  loc_1737555:         var_110 = var_98.Fields
  loc_173755D:         var_15C = var_110.Item("ShortName")
  loc_1737574:         var_EC = " ("
  loc_1737579:         var_144 = (Trim(CVar(var_15C)) + var_EC)
  loc_173757D:         var_FC = "BILL NO.- "
  loc_1737582:         var_154 = (var_144 + var_FC)
  loc_1737594:         Set var_160 = Me.Txt
  loc_173759A:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_164, var_124, var_154, var_110)
  loc_17375A2:         var_184 = var_164.Text
  loc_17375AD:         var_1A4 = (var_AC + CVar(var_124))
  loc_17375B6:         var_1B4 = (var_1A4 + " ")
  loc_17375BF:         var_1D4 = (var_1B4 + ")")
  loc_17375C4:         var_94 = CStr(var_1D4)
  loc_17375E3:       End If
  loc_17375E8:       Set var_98 = Nothing
  loc_17375F0:       Set var_9C = Nothing
  loc_1737601:       Set var_110 = Me.Txt
  loc_1737607:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_1D8)
  loc_173760F:       var_FC = var_15C.Text
  loc_1737628:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_164, var_1F8)
  loc_1737630:       var_DC = var_164.Text
  loc_1737650:       Set var_20C = Me.Txt
  loc_1737656:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_210)
  loc_1737665:       Proc_6_7_F26918(var_1B4, CVar(var_210))
  loc_1737696:       var_1C4 = CVar(CLng(var_AA)) 'Long
  loc_173769E:       var_290 = CVar(CLng(&H10)) 'Long
  loc_17376BD:       var_304 = CVar(CLng(var_AA)) 'Long
  loc_17376C2:       var_324 = 1
  loc_17376E5:       var_360 = CVar(CLng(var_AA)) 'Long
  loc_17376EA:       var_380 = &H14
  loc_173770D:       var_3B4 = CVar(CLng(var_AA)) 'Long
  loc_1737712:       var_3D4 = &H18
  loc_1737754:       var_438 = IIf((CStr(Me.FGrid.TextMatrix)) = MemVar_1F95078 & "CRED"), CVar(CStr(Me.FGrid.TextMatrix))), CVar(CStr(Me.FGrid.TextMatrix))))
  loc_173775D:       var_4B8 = CVar(CLng(var_AA)) 'Long
  loc_1737762:       var_4D8 = 1
  loc_1737775:       var_4FC = Me.FGrid.TextMatrix)
  loc_173779D:       var_590 = Me.FGrid.TextMatrix)
  loc_17377B7:       Set var_5D4 = Me.LTxt
  loc_17377BD:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_5D8, var_5DC, var_590, 2, CVar(CLng(var_AA)), var_4FC)
  loc_17377C5:       var_4D8 = var_5D8.Caption
  loc_17377D2:       var_170 = Val(var_5DC)
  loc_17377DE:       var_64C = 8
  loc_1737804:       var_EB4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1737836:       var_EBC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1737847:       Set var_7F0 = Me.Txt
  loc_173784D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_7F4, var_7F8, var_EBC, &H11, CVar(CLng(var_AA)), var_EB4)
  loc_1737855:       var_64C = var_7F4.Text
  loc_1737868:       Set var_83C = Me.Txt
  loc_173786E:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_840, var_844, CVar(CLng(var_AA)), var_170)
  loc_1737876:       var_4B8 = var_840.Tag
  loc_1737883:       var_EC4 = Val(var_844)
  loc_17378A1:       var_8D8 = Me.FGrid.TextMatrix)
  loc_17378C8:       var_96C = Me.FGrid.TextMatrix)
  loc_17378EF:       var_A00 = Me.FGrid.TextMatrix)
  loc_1737927:       Proc_6_7_F26918(var_AB4, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HD)), CVar(CLng(var_AA)), var_A00, CVar(CLng(&HC)), CVar(CLng(var_AA)), var_96C)
  loc_1737947:       var_B38 = Me.FGrid.TextMatrix)
  loc_1737958:       Proc_6_17_EAAE40(var_B58, CVar(CStr(var_B38)), CVar(CLng(&H1A)), CVar(CLng(var_AA)), CVar(CLng(&HA)), CVar(CLng(var_AA)))
  loc_1737989:       Proc_6_7_F26918(var_BFC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_AA)), var_8D8)
  loc_173799C:       Proc_6_7_F26918(var_C8C, Date, CVar(CLng(9)), CVar(CLng(var_AA)))
  loc_17379CE:       Proc_6_39_E7D3A0(var_D70, CVar(CStr(Me.FGrid.TextMatrix))), &H17, CVar(CLng(var_AA)))
  loc_17379E1:       Proc_6_17_EAAE40(var_E00, global_176, var_EC4)
  loc_17379F4:       Proc_6_8_EB1974(var_E50, global_180)
  loc_1737A0D:       var_124 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, " & "GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_1737A1B:       var_17C = var_124 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,BatchNo,LOGSITE_CODE,AU_Name,AU_EntDt) Values ("
  loc_1737A3C:       var_1EC = var_17C & "'" & var_1D8 & "'," & CStr(var_AC)
  loc_1737A76:       var_154 = CVar(var_1EC & ",'" & global_128 & "','" & var_1F8 & "','" & MemVar_1F95070 & "','") & Trim(CVar(Me.LblVPrefix)) 
  loc_1737A7A:       var_DC = "',"
  loc_1737A8A:       var_EC = ",'"
  loc_1737AB6:       var_2F4 = var_154 & var_DC & var_1B4 & var_EC & CVar(Format$(Time, "HH:mm")) & "','','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" 
  loc_1737B0C:       var_5FC = var_2F4 & var_438 & "','" & CVar(var_94) & "','" & CVar(CStr(var_4FC)) & "','" & CVar(CStr(var_590)) & "'," & CVar(var_170) 
  loc_1737B69:       var_7CC = var_5FC & "," & CVar(var_EB4) & "," & CVar(var_EBC) & ",'" & CVar(global_152) & "'," & "'" & CVar(global_156) 
  loc_1737BA1:       var_8E8 = CVar(CStr(var_8D8)) 'String
  loc_1737BCC:       var_A20 = var_7CC & "','" & CVar(var_7F8) & "'," & CVar(var_EC4) & ",'" & var_8E8 & "','" & CVar(CStr(var_96C)) & "','" & CVar(CStr(var_A00)) 
  loc_1737BD5:       var_A40 = var_A20 & "'," 
  loc_1737C35:       var_CDC = var_A40 & var_AB4 & "," & var_B58 & "," & var_BFC & ",'" & CVar(MemVar_1F950C8) & "'," & var_C8C & ",'A','" & CVar(global_52) 
  loc_1737C8F:       unk_549616.Execute CStr(var_CDC & "'," & var_D70 & ",'" & CVar(MemVar_1F95078) & "'," & var_E00 & "," & var_E50 & ")"), var_EA4, -1
  loc_1737DD9:       var_AC = (var_AC + 1)
  loc_1737DE0:       var_DC = CVar(CLng(var_AA)) 'Long
  loc_1737DE5:       var_FC = 2
  loc_1737DF2:       Set var_110 = Me.FGrid
  loc_1737DF8:       var_120 = var_110.TextMatrix)
  loc_1737E14:       If (CStr(var_120) = "Room") Then
  loc_1737E42:         unk_549616.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F95078 & "TOUT" & "'", var_120, -1
  loc_1737E4D:         Set var_98 = var_110
  loc_1737E73:         If (var_98.RecordCount > 0) Then
  loc_1737EA2:           var_15C = var_98.Fields.Item("TaxStru")
  loc_1737EB2:           var_134 = "Select * from taxstru where Code='" & var_15C.Value 
  loc_1737EBB:           var_144 = var_134 & "' Order by Sno" 
  loc_1737EC9:           unk_549616.Execute CStr(var_144), var_154, -1
  loc_1737ED4:           Set var_A0 = Me.Txt
  loc_1737EF1:         Else
  loc_1737F0A:           MsgBox("System Defined Revenue is not defined", 0, var_134, var_144, var_154)
  loc_1737F20:           unk_549616.RollbackTrans
  loc_1737F25:           Exit Sub
  loc_1737F26:         End If
  loc_1737F2A:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_1737F2F:         var_FC = &H16
  loc_1737F62:         var_124 = "Select Docid,GuestProf from GuestFolio where LOGSITE_CODE='" & MemVar_1F95078
  loc_1737F84:         unk_549616.Execute var_124 & "' AND Docid='" & CStr(Me.FGrid.TextMatrix)) & "' ORDER BY VDATE DESC", var_134, -1
  loc_1737F8F:         Set var_C8 = var_15C
  loc_1737FC1:         If (var_C8.RecordCount > 0) Then
  loc_1737FCA:           var_DC = "GuestProf"
  loc_1737FDE:           var_15C = var_C8.Fields.Item(var_DC)
  loc_1737FE6:           var_120 = var_15C.Value
  loc_1737FEF:           var_CC = CStr(var_120)
  loc_1737FFC:         End If
  loc_1738010:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_124, var_15C, var_120, var_FC, var_DC)
  loc_1738018:         var_160 = var_15C.Text
  loc_173802B:         Set var_160 = Me.Txt
  loc_1738031:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_164, var_1EC, Me.Txt, var_FC)
  loc_1738039:         var_DC = var_164.Text
  loc_1738059:         Set var_20C = Me.Txt
  loc_173805F:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_210, var_AC)
  loc_173806E:         Proc_6_7_F26918(var_1B4, CVar(var_210))
  loc_173808A:         var_240 = "HH:mm"
  loc_17380C6:         var_314 = CVar(CLng(var_AA)) 'Long
  loc_17380CB:         var_334 = 2
  loc_17380EE:         var_380 = CVar(CLng(var_AA)) 'Long
  loc_17380F3:         var_3B4 = 8
  loc_1738100:         Set var_3E8 = Me.FGrid
  loc_1738120:         var_408 = CVar(CLng(var_AA)) 'Long
  loc_1738125:         var_478 = &H12
  loc_1738138:         var_4FC = Me.FGrid.TextMatrix)
  loc_1738179:         var_5B0 = Me.FGrid.TextMatrix)
  loc_17381C0:         var_6B4 = Me.FGrid.TextMatrix)
  loc_17381FC:         var_78C = Me.FGrid.TextMatrix)
  loc_1738228:         var_EB4 = Val(CStr(Right(CVar(CStr(var_78C)), 8)))
  loc_1738239:         Proc_6_7_F26918(var_8E8, Date, var_EB4, var_78C, &H16, CVar(CLng(var_AA)), var_6B4, &H12)
  loc_1738273:         Proc_6_17_EAAE40(var_A40, global_176, CVar(CLng(var_AA)), var_5B0, &H12)
  loc_1738286:         Proc_6_8_EB1974(var_AB4, global_180, CVar(CLng(var_AA)), var_4FC)
  loc_173829F:         var_168 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,Comments,PayCode,PayType,AmtCr,AmtDr,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,BookNo,BookType,U_Name,U_EntDt,U_AE,RestCode,FolioNoDocid,LOGSITE_CODE,AU_Name,AU_EntDt)Values " & "('"
  loc_17382B9:         var_1E0 = var_168 & var_124 & "'," & CStr(var_AC)
  loc_17382F3:         var_154 = CVar(var_1E0 & ",'" & global_128 & "'," & var_1EC & ",'" & MemVar_1F95070 & "','") & Trim(CVar(Me.LblVPrefix)) 
  loc_1738345:         var_2F4 = var_154 & "'," & var_1B4 & ",'" & CVar(Format$(Time, var_240)) & "','" & CVar(var_CC) & "','" & CVar(var_94) & "','" 
  loc_1738374:         var_488 = var_2F4 & var_98.Fields.Item("Code").Value & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," & CVar(Val(CStr(var_3E8.TextMatrix)))) 
  loc_17383A4:         var_74C = var_488 & ",'" & Mid(CVar(CStr(var_4FC)), 3, 5) & "','" & LTrim(Left(CVar(CStr(var_5B0)), 2)) & "','" & Right(CVar(CStr(var_6B4)), 5) 
  loc_17383F6:         var_918 = var_74C & "'," & CVar(var_EB4) & ",'','',0,''," & vbNullString & "'" & CVar(MemVar_1F950C8) & "'," & var_8E8 & ",'A','" 
  loc_1738436:         var_A94 = var_918 & CVar(global_52) & "','" & var_C8.Fields.Item("DocID").Value & "','" & CVar(MemVar_1F95078) & "'," & var_A40 
  loc_173845D:         unk_549616.Execute CStr(var_A94 & "," & var_AB4 & ")"), var_B38, -1
  loc_1738543:         var_AC = (var_AC + 1)
  loc_173854A:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_173854F:         var_FC = &H12
  loc_1738586:         var_B4 = CStr(Right(CVar(CStr(Me.FGrid.TextMatrix))), 5))
  loc_1738599:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_173859E:         var_FC = &H12
  loc_17385E0:         var_B8 = CStr(LTrim(Left(CVar(CStr(Me.FGrid.TextMatrix))), 2)))
  loc_17385F5:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_17385FA:         var_FC = &H16
  loc_1738651:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_1738656:         var_FC = &H12
  loc_1738692:         var_B0 = CStr(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 3, 5))
  loc_17386A7:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_17386AC:         var_FC = 8
  loc_17386CA:         var_124 = CStr(Me.FGrid.TextMatrix))
  loc_17386D2:         var_170 = Val(var_124)
  loc_17386DC:         var_C4 = (var_C4 + var_170)
  loc_17386F6:         Set var_110 = Me.Txt
  loc_17386FC:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_1E0, var_C4, var_170, var_FC, var_DC)
  loc_1738704:         var_120 = var_15C.Text
  loc_1738717:         Set var_160 = Me.Txt
  loc_173871D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_164, var_124, var_FC, var_DC)
  loc_1738725:         var_120 = var_164.Text
  loc_1738732:         var_EEC = Val(var_124)
  loc_1738740:         var_134 = Trim(CVar(Me.LblVPrefix))
  loc_1738753:         Set var_20C = Me.Txt
  loc_1738759:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_210, var_1EC, var_EEC)
  loc_1738761:         var_FC = var_210.Text
  loc_1738769:         var_144 = Time
  loc_173877D:         var_154 = "HH:mm"
  loc_1738791:         var_1A4 = Trim(CVar(Format$(var_144, var_154)))
  loc_17387B8:         var_2B4 = var_98.Fields.Item("Code").Value
  loc_17387CB:         Set var_394 = Me.LTxt
  loc_17387D1:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_3E8, var_168, 1)
  loc_17387D9:         1 = var_3E8.Caption
  loc_17387E6:         var_EF4 = Val(var_168)
  loc_17387ED:         var_FC = CVar(CLng(var_AA)) 'Long
  loc_17387F2:         var_1C4 = 8
  loc_1738818:         var_EFC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1738829:         var_1D4 = Date
  loc_1738831:         var_220 = Date
  loc_1738839:         var_230 = Now
  loc_1738842:         Set var_580 = Me.TopCtrl1
  loc_1738848:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(Val(CStr(Val(CStr(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))))
  loc_173887A:         var_270 = IIf((CStr(var_240) = "Add"), "A", "E")
  loc_17388A1:         var_2C4 = var_C8.Fields.Item("DocID").Value
  loc_17388AB:         var_844 = 0
  loc_17388B6:         var_7F8 = 0
  loc_17388C9:         var_70C = 0
  loc_17388D4:         var_674 = 0
  loc_1738911:         var_34C = vbNullString
  loc_173891A:         var_208 = vbNullString
  loc_1738923:         var_204 = vbNullString
  loc_1738951:         var_200 = "Room"
  loc_1738965:         var_1F8 = vbNullString
  loc_173896E:         var_1F4 = vbNullString
  loc_17389B2:         Proc_96_8_1CC4F08(MemVar_1F95078 & "TOUT", var_1E0, var_AC, global_128, CLng(var_EEC), MemVar_1F95070, CStr(var_134), CDate(var_1EC))
  loc_1738A2A:       End If
  loc_1738A2A:     End If
  loc_1738A2A:   End If
  loc_1738A2D: Next var_180 'Integer
  loc_1738A37: Set var_98 = Nothing
  loc_1738A3F: Set var_9C = Nothing
  loc_1738A47: Set var_A0 = Nothing
  loc_1738A4F: Set var_A4 = Nothing
  loc_1738A58: unk_549616.CommitTrans
  loc_1738A61: var_86 = CByte(0) 'Byte
  loc_1738A76: If (OpenMode = 1) Then
  loc_1738A86:   Me.Global.Unload Me
  loc_1738A8E:   Exit Sub
  loc_1738A8F: End If
  loc_1738A9A: Me.Requery -1
  loc_1738AAA: Me.Requery -1
  loc_1738ABD: Me.Recordset15.Requery -1
  loc_1738ACD: Me.Requery -1
  loc_1738ADE: CVarUnk
  loc_1738AE3: VerifyVarObj
  loc_1738AE9: Set var_110 = Me.FGrid1
  loc_1738AEF: LateIdStAd
  loc_1738B17: If (Me.FGrid1.RecordCount <= 0) Then
  loc_1738B2D:   Me.FGrid1.Rows = 2
  loc_1738B48:   Me.FGrid1.FixedRows = 1
  loc_1738B50:   var_DC = 1
  loc_1738B63:   Me.FGrid1.Row = var_DC
  loc_1738B6B: End If
  loc_1738B90: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_124, "SearchCode='", 0)
  loc_1738B98: 1 = var_15C.Text
  loc_1738BB1: Me.Find var_DC & var_124 & "'", Me.Txt, global_88
  loc_1738BCA: Set var_110 = Me.TopCtrl1
  loc_1738BD0: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1738BE9: If (CStr() = "Add") Then
  loc_1738BEC:   Call TopCtrl1_UnknownEvent_A()
  loc_1738BF1:   Exit Sub
  loc_1738BF2: End If
  loc_1738C07: var_124 = "INI"
  loc_1738C15: Call Proc_98_67_FDD1A0(Proc_5_1_100EC1C(var_124, Me))
  loc_1738C20: Call Proc_98_71_FB8840(global_60)
  loc_1738C25: Call Proc_98_70_15D490C()
  loc_1738C2A: Exit Sub
  loc_1738C2B: ' Referenced from: 173721C
  loc_1738C34: If (CInt(var_86) = 1) Then
  loc_1738C3D:   unk_549616.RollbackTrans
  loc_1738C42: End If
  loc_1738C4A: Set var_110 = Err()
  loc_1738C50: Call 0.Method_arg_2C (var_124)
  loc_1738C69: MsgBox(CVar(var_124), &H10, var_134, var_144, var_154)
  loc_1738C7C: Exit Sub
End Sub

Private Sub Form_Load() '149510C
  'Data Table: 5495F0
  Dim var_A8 As String
  Dim var_AC As Variant
  Dim var_C4 As Variant
  Dim var_D8 As Long
  Dim var_E8 As Variant
  Dim var_B0 As String
  Dim unk_549616 As Connection15
  Dim var_EC As Variant
  Dim var_90 As Recordset15
  Dim var_B4 As String
  Dim var_F8 As String
  Dim var_100 As Long
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_190 As Variant
  Dim var_1AC As String
  Dim var_1B8 As String
  loc_14944C0: On Error Goto loc_14950C5
  loc_14944CB: var_A8 = 0
  loc_14944FC: Me.LblFormCaption.Caption = var_9C & " Bill Settlement"
  loc_149450E: Call 0.Method_arg_64 (CLng(MemVar_1F951B4), Proc_96_17_FDCB2C(global_52, var_A0, var_9C))
  loc_1494522: Me.LblUser.Left = CDbl(13500)
  loc_1494539: Me.LblUser.Top = CDbl(7800)
  loc_1494550: Me.LblLDt.Top = CDbl(8160)
  loc_1494567: Me.LblLDt.Left = CDbl(13500)
  loc_149458D: var_A8 = 0
  loc_1494599: Proc_96_17_FDCB2C(global_52, var_A8, 0, 0)
  loc_14945BA: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_14945D5: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_14945EB: Me.FrRem.BackColor = CLng(MemVar_1F951B4)
  loc_14945F9: var_D8 = global_120
  loc_1494605: If Not (var_D8 = 5) Then
  loc_1494611:   If (var_D8 = 6) Then
  loc_1494614:   End If
  loc_1494614: End If
  loc_149461E: Set var_AC = Me.TopCtrl1
  loc_1494624: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000B("AEDP")
  loc_1494632: Call 0.Method_arg_50 (var_A8, var_D8, var_A4)
  loc_149463A: var_E8 = CVar(var_A8) 'String
  loc_1494648: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030007(var_E8)
  loc_1494664: global_128 = rrsAdvanceDepDialog.AdvType
  loc_1494692: unk_549616.Execute "Select Name from depart where code='" & global_52 & "'", var_E8, -1
  loc_14946BF: var_AC = Me.TopCtrl1.Fields
  loc_14946CF: var_E8 = var_AC.Item("Name").Value
  loc_14946E5: Me.LblOutLet.Caption = CStr(var_E8)
  loc_149471D: unk_549616.Execute "Select * from Enviro Where LogSite_Code='" & MemVar_1F95078 & "'", var_E8, -1
  loc_1494747: var_AC = var_AC.Fields
  loc_1494757: var_E8 = CVar(var_AC.Item("CreditCardInfoMandatory")) 'Address
  loc_1494771: If (Proc_6_38_E69628(var_E8, var_AC, var_AC) = "Y") Then
  loc_149477A:   global_56 = "Y"
  loc_149477E: End If
  loc_1494792: var_A8 = "SELECT DP.PayCode as code, RevMast.name as Name, revMast.PayType as PayType FROM DepartPay as DP LEFT OUTER JOIN RevMast ON DP.PayCode = RevMast.code where (DP.LOGSITE_CODE='" & MemVar_1F95078
  loc_14947C1: unk_549616.Execute var_A8 & "') AND DP.restcode='" & global_52 & "' And RevMast.Code Not In ('" & MemVar_1F95078 & "CCAD') ORDER BY NAME ", var_E8, -1
  loc_14947D2: Set global_64 = var_AC
  loc_14947F8: CVarUnk
  loc_14947FD: VerifyVarObj
  loc_1494809: LateIdStAd
  loc_149483B: unk_549616.Execute "SELECT Code,Name FROM Employee Where (LogSite_Code='" & MemVar_1F95078 & "' or LogSite_Code='HO') ORDER BY Name", var_E8, -1
  loc_149486A: CVarUnk
  loc_149486F: VerifyVarObj
  loc_149487B: LateIdStAd
  loc_149489D: var_A8 = "Select T.Type+t.RoomCat+space(5-len(T.RoomCat))+Code+space(5-len(Code)) as Code,T.Code As Name,RoomOcc.Docid as FolioNODocid From RoomMast T inner join RoomOcc on RoomOcc.RoomNo=T.Code where (T.LOGSITE_CODE='" & MemVar_1F95078
  loc_14948A4: var_B0 = "SELECT Code,Name FROM Employee Where (LogSite_Code='" & MemVar_1F95078 & "' or T.LOGSITE_CODE='HO') AND T.Type in ('RO') and RoomOcc.ChkoutDate is NULL Order By T.Code"
  loc_14948AD: unk_549616.Execute var_B0, var_E8, -1
  loc_14948DC: CVarUnk
  loc_14948E1: VerifyVarObj
  loc_14948ED: LateIdStAd
  loc_1494916: var_B0 = "Select SubCode as Code,Name From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND CompanyType in ('Corporate','Travel Agency') Order By Name"
  loc_149491F: unk_549616.Execute var_B0, var_E8, -1
  loc_149494E: CVarUnk
  loc_1494953: VerifyVarObj
  loc_149495F: LateIdStAd
  loc_1494988: var_B0 = "Select SubCode as Code,Name,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='"
  loc_149499F: unk_549616.Execute var_B0 & MemVar_1F95078 & "') Order By Name", var_E8, -1
  loc_14949D2: CVarUnk
  loc_14949D7: VerifyVarObj
  loc_14949DD: Set var_AC = Me.DGMember
  loc_14949E3: LateIdStAd
  loc_14949FD: Call 0.Method_arg_38 (MemVar_1F953B0, var_AC, Me.DGCompany, var_AC, var_AC, Me.DGRoom, var_AC, var_AC)
  loc_1494A0E: Call 0.Method_arg_3C (MemVar_1F950EC, Me.DGEmp, var_AC, var_AC)
  loc_1494A1F: Call 0.Method_arg_54 (MemVar_1F9506C, Me.DGPayType, var_AC)
  loc_1494A30: Call 0.Method_arg_1C (MemVar_1F95070, var_AC)
  loc_1494A41: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_1494A52: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_1494A63: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_1494A74: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_1494A85: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_1494A96: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_1494AB0: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_1494ABE: Set var_AC = MemVar_1F95044
  loc_1494ACD: Call 0.Method_Form_Load8 (var_AC)
  loc_1494AE3: Me.DGMember.Clone
  loc_1494AEE: Set var_EC = var_AC
  loc_1494AFD: Call 0.Method_arg_50 (var_EC, -1)
  loc_1494B0F: var_100 = global_120
  loc_1494B1B: If Not (var_100 = 5) Then
  loc_1494B27:   If (var_100 = 6) Then
  loc_1494B2A:   End If
  loc_1494B3E:   var_A8 = "SELECT Sale1.DocId as SearchCode,max(Sale1.LogSite_Code) as LogSite_Code,max(Sale1.Site_Code) as Site_Code FROM ((SALE1 INNER JOIN pAYcHARGE AS pchrg ON SALE1.DOCID=PCHRG.DOCID ) left JOIN RoomMast AS T ON (Sale1.RestCode = T.RestCode) AND (Sale1.RoomNo = T.Code) AND (Sale1.RoomType = T.Type)) left JOIN Waiter ON Sale1.Waiter = Waiter.Code  Where SALE1.LOGSITE_CODE='" & MemVar_1F95078
  loc_1494B53:   Proc_6_7_F26918(var_E8, MemVar_1F950EC, CVar(var_A8 & "' aND PCHRG.VDATE="), var_190, -1)
  loc_1494B64:   var_130 = var_AC & var_E8 & " AND (Sale1.DelFlag='' Or Sale1.DelFlag='N' OR Sale1.DelFlag IS NULL) AND  Sale1.RoomType='TB' AND SALE1.restcode='" 
  loc_1494B71:   var_150 = var_130 & CVar(global_52) 
  loc_1494B88:   unk_549616.Execute CStr(var_150 & "' GROUP BY SALE1.DOCID ORDER BY  max(SALE1.vno)"), var_100, var_AC
  loc_1494B99:   Set global_60 = var_AC
  loc_1494BC6:   If (CDbl(MemVar_1F950B8) = CDbl("1")) Then
  loc_1494BDD:     var_A8 = "SELECT Sale1.DocId as SearchCode,max(Sale1.LogSite_Code) as LogSite_Code,max(Sale1.Site_Code) as Site_Code FROM ((SALE1 INNER JOIN pAYcHARGE AS pchrg ON SALE1.DOCID=PCHRG.DOCID ) left JOIN RoomMast AS T ON (Sale1.RestCode = T.RestCode) AND (Sale1.RoomNo = T.Code) AND (Sale1.RoomType = T.Type)) left JOIN Waiter ON Sale1.Waiter = Waiter.Code  Where SALE1.LOGSITE_CODE='" & MemVar_1F95078
  loc_1494BE4:     var_B0 = var_A8 & "'  AND (Sale1.DelFlag='' Or Sale1.DelFlag='N' OR Sale1.DelFlag IS NULL) AND  Sale1.RoomType='TB' AND SALE1.restcode='"
  loc_1494C03:     Proc_6_7_F26918(var_E8, MemVar_1F950F4, CVar(var_B0 & global_52 & "' AND SALE1.VDATE BETWEEN "), var_1A0)
  loc_1494C0B:     var_120 = -1 & var_E8 
  loc_1494C23:     Proc_6_7_F26918(var_150, MemVar_1F950FC, var_AC & var_E8 & " AND ")
  loc_1494C34:     var_190 = var_AC & var_150 & " GROUP BY SALE1.DOCID ORDER BY  max(SALE1.vno)" 
  loc_1494C42:     unk_549616.Execute CStr(var_190), global_64, 
  loc_1494C53:     Set global_60 = var_AC
  loc_1494C7F:   Else
  loc_1494C93:     var_A8 = "SELECT Sale1.DocId as SearchCode,max(Sale1.LogSite_Code) as LogSite_Code,max(Sale1.Site_Code) as Site_Code FROM ((SALE1 INNER JOIN pAYcHARGE AS pchrg ON SALE1.DOCID=PCHRG.DOCID ) left JOIN RoomMast AS T ON (Sale1.RestCode = T.RestCode) AND (Sale1.RoomNo = T.Code) AND (Sale1.RoomType = T.Type)) left JOIN Waiter ON Sale1.Waiter = Waiter.Code  Where SALE1.LOGSITE_CODE='" & MemVar_1F95078
  loc_1494CA8:     Proc_6_7_F26918(var_E8, MemVar_1F950EC, CVar(var_A8 & "' aND PCHRG.VDATE="))
  loc_1494CB0:     var_120 = var_190 & var_E8 
  loc_1494CB9:     var_130 = var_120 & " AND (Sale1.DelFlag='' Or Sale1.DelFlag='N' OR Sale1.DelFlag IS NULL) AND  Sale1.RoomType='TB' AND SALE1.restcode='" 
  loc_1494CDD:     unk_549616.Execute CStr(var_130 & CVar(global_52) & "' GROUP BY SALE1.DOCID ORDER BY  max(SALE1.vno)"), -1, var_AC
  loc_1494CEE:     Set global_60 = var_AC
  loc_1494D11:   End If
  loc_1494D11: End If
  loc_1494D1D: Set var_AC = Me
  loc_1494D34: Call Proc_98_67_FDD1A0(Proc_5_1_100EC1C("INI", var_AC))
  loc_1494D3F: Call Proc_98_69_1206998(global_60)
  loc_1494D44: Call Proc_98_74_1218330()
  loc_1494D55: If (global_116 = 2) Then
  loc_1494D58:   Call Proc_98_70_15D490C()
  loc_1494D71:   var_A8 = "SELECT Cast(MAX(Sale1.VNo) As Varchar) AS Code,Cast(MAX(Sale1.VNo) As Varchar) AS Name,Max(Sale1.RoomType) As RoomType,Max(Sale1.RoomCat) As RoomCat,Sale1.DocId,MAX(Sale1.VNo) AS BillNo,MAX(T.Code) AS TableNo ,Case When IsNull(max(DB.Name),'')<>'' Then 'DB - '+max(DB.Name) Else max(Waiter.Name) End Steward, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End,Sum(SALE1.NetAmt) As NetAmt "
  loc_1494D7F:   var_B4 = "INI" & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "INNER JOIN RoomMast AS T ON (Sale1.RoomType = T.Type) "
  loc_1494D8D:   var_F8 = var_B4 & "AND (Sale1.RoomNo = T.Code) AND (Sale1.RestCode = T.RestCode)) " & "INNER JOIN Waiter on SAle1.Waiter=Waiter.Code LEFT JOIN AssignDelivery AD on SAle1.DocId=AD.Docid LEFT JOIN DeliveryBoy DB on AD.DeliBoy=DB.Code "
  loc_1494DA2:   var_1AC = var_F8 & "WHERE (SALE1.LOGSITE_CODE='" & MemVar_1F95078 & "' or SALE1.LOGSITE_CODE='HO') AND PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') "
  loc_1494DBA:   var_1B8 = var_1AC & "AND  Sale1.RoomType='TB' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID ORDER BY MAX(Sale1.VNo),MAX(T.Code)"
  loc_1494DC3:   unk_549616.Execute var_1B8, var_E8, -1
  loc_1494DD4:   Set global_88 = var_AC
  loc_1494E07:   CVarUnk
  loc_1494E0C:   VerifyVarObj
  loc_1494E12:   Set var_AC = Me.FGrid1
  loc_1494E18:   LateIdStAd
  loc_1494E32:   CVarUnk
  loc_1494E37:   VerifyVarObj
  loc_1494E3D:   Set var_AC = Me.DGBill
  loc_1494E43:   LateIdStAd
  loc_1494E51:   var_C4 = 0
  loc_1494E5A:   var_140 = 0
  loc_1494E67:   Set var_AC = Me.FGrid1
  loc_1494E6D:   LateIdCallSt
  loc_1494E78:   var_C4 = 1
  loc_1494E81:   var_140 = 0
  loc_1494E8E:   Set var_AC = Me.FGrid1
  loc_1494E94:   LateIdCallSt
  loc_1494E9F:   var_C4 = 2
  loc_1494EA8:   var_140 = 0
  loc_1494EB5:   Set var_AC = Me.FGrid1
  loc_1494EBB:   LateIdCallSt
  loc_1494EC6:   var_C4 = 3
  loc_1494ECF:   var_140 = 0
  loc_1494EDC:   Set var_AC = Me.FGrid1
  loc_1494EE2:   LateIdCallSt
  loc_1494EED:   var_C4 = 4
  loc_1494EF6:   var_140 = 0
  loc_1494F03:   Set var_AC = Me.FGrid1
  loc_1494F09:   LateIdCallSt
  loc_1494F14:   var_C4 = 5
  loc_1494F1D:   var_140 = 0
  loc_1494F2A:   Set var_AC = Me.FGrid1
  loc_1494F30:   LateIdCallSt
  loc_1494F3B:   var_C4 = 6
  loc_1494F44:   var_140 = &H514
  loc_1494F51:   Set var_AC = Me.FGrid1
  loc_1494F57:   LateIdCallSt
  loc_1494F62:   var_C4 = 7
  loc_1494F6B:   var_140 = &H3E8
  loc_1494F78:   Set var_AC = Me.FGrid1
  loc_1494F7E:   LateIdCallSt
  loc_1494F89:   var_C4 = 8
  loc_1494F92:   var_140 = &H9C4
  loc_1494F9F:   Set var_AC = Me.FGrid1
  loc_1494FA5:   LateIdCallSt
  loc_1494FB0:   var_C4 = 9
  loc_1494FB9:   var_140 = &H514
  loc_1494FC6:   Set var_AC = Me.FGrid1
  loc_1494FCC:   LateIdCallSt
  loc_1494FD7:   var_C4 = &HA
  loc_1494FE0:   var_140 = &H578
  loc_1494FED:   Set var_AC = Me.FGrid1
  loc_1494FF3:   LateIdCallSt
  loc_1495002:   var_C4 = CVar(CDbl(7800)) 'Single
  loc_1495011:   Me.FGrid1.Width = var_C4
  loc_149502D:   Call 0.Method_Form_Load0 (1, var_EC, CDbl(7500), Me.Label1, var_140, var_C4, Me.Label1)
  loc_1495035:   var_EC.Width = var_140
  loc_149505B:   If (Me.Recordset15.RecordCount <= 0) Then
  loc_1495071:     Me.FGrid1.Rows = 2
  loc_149508C:     Me.FGrid1.FixedRows = 1
  loc_1495094:     var_C4 = 1
  loc_14950A1:     Set var_AC = Me.FGrid1
  loc_14950A7:     var_AC.Row = var_C4
  loc_14950AF:   End If
  loc_14950AF: End If
  loc_14950AF: Call Proc_98_79_107CDCC(var_C4, var_AC, var_140)
  loc_14950B9: Set var_8C = Nothing
  loc_14950C1: Set var_90 = Nothing
  loc_14950C4: Exit Sub
  loc_14950C5: ' Referenced from: 14944C0
  loc_14950CD: Set var_AC = Err()
  loc_14950D3: Call 0.Method_arg_2C ("INI", var_C4)
  loc_14950F4: MsgBox(CVar("INI"), &H40, "Information", var_120, var_130)
  loc_1495107: Exit Sub
  loc_1495108: Exit Sub
End Sub

Private Sub Form_Resize() 'EAB22C
  'Data Table: 5495F0
  Dim var_88 As Label
  loc_EAB1B6: Me.LblFormCaption.Left = CDbl(0)
  loc_EAB1C2: Set var_9C = Me.TopCtrl1
  loc_EAB1C8: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010006()
  loc_EAB1D5: Set var_88 = Me.TopCtrl1
  loc_EAB1DB: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004()
  loc_EAB1F5: Me.LblFormCaption.Top = (CDbl() + CDbl(var_AC))
  loc_EAB210: Call 0.Method_arg_100 (var_B4)
  loc_EAB222: Me.LblFormCaption.Width = var_B4
  loc_EAB22A: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E83044
  'Data Table: 5495F0
  loc_E82FDF: Set global_72 = Nothing
  loc_E82FF1: Set global_60 = Nothing
  loc_E83003: Set global_64 = Nothing
  loc_E83015: Set global_68 = Nothing
  loc_E83027: Set global_88 = Nothing
  loc_E83039: Set global_92 = Nothing
  loc_E83040: Exit Sub
End Sub

Private Sub Form_Activate() '1078DF4
  'Data Table: 5495F0
  Dim var_90 As Long
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_C8 As TextBox
  Dim var_94 As Variant
  Dim var_D4 As String
  Dim var_DC As String
  Dim var_E4 As String
  Dim var_EC As String
  Dim unk_549616 As Connection15
  loc_1078B97: If (OpenMode = 1) Then
  loc_1078B9D:   var_88 = OpenType
  loc_1078BA5:   var_90 = var_88
  loc_1078BB1:   If Not (var_90 = 5) Then
  loc_1078BBD:     If (var_90 = 6) Then
  loc_1078BC0:     End If
  loc_1078BCB:     Set var_94 = Me.Txt
  loc_1078BD1:     Call 0.Method_Form_Activate0 (CInt(&HF), var_98)
  loc_1078BD9:     var_98.SetFocus
  loc_1078BF3:     Set var_94 = Me.Txt
  loc_1078BF9:     Call 0.Method_Form_Activate0 (CInt(&HF), var_98, var_88)
  loc_1078C01:     var_90 = var_98.Left
  loc_1078C12:     Set var_BC = Me.DGPayType
  loc_1078C18:     var_BC.Left = CVar(var_88)
  loc_1078C34:     Set var_98 = Me.Txt
  loc_1078C3A:     Call 0.Method_Form_Activate0 (CInt(&HF), var_BC)
  loc_1078C55:     Set var_C4 = Me.Txt
  loc_1078C5B:     Call 0.Method_Form_Activate0 (CInt(&HF), var_C8)
  loc_1078C6F:     Set var_94 = Me.FrRest
  loc_1078C89:     var_A8 = CVar((((var_94.Top + var_BC.Top) + var_C8.Height) + CDbl(&HF))) 'Single
  loc_1078C98:     Me.DGPayType.Top = CVar(var_94.Top)
  loc_1078CAC:   End If
  loc_1078CAC: End If
  loc_1078CB8: If (global_116 = 2) Then
  loc_1078CCF:   var_D4 = "SELECT Cast(MAX(Sale1.VNo) As Varchar) AS Code,Cast(MAX(Sale1.VNo) As Varchar) AS Name,Max(Sale1.RoomType) As RoomType,Max(Sale1.RoomCat) As RoomCat,Sale1.DocId,MAX(Sale1.VNo) AS BillNo,MAX(T.Code) AS TableNo ,Case When IsNull(max(DB.Name),'')<>'' Then 'DB - '+max(DB.Name) Else max(Waiter.Name) End Steward, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End,Sum(SALE1.NetAmt) As NetAmt "
  loc_1078CDD:   var_DC = var_D4 & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN RoomMast AS T ON (Sale1.RoomType = T.Type) "
  loc_1078CEB:   var_E4 = var_DC & "AND (Sale1.RoomNo = T.Code) AND (Sale1.RestCode = T.RestCode)) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code LEFT JOIN AssignDelivery AD on SAle1.DocId=AD.Docid LEFT JOIN DeliveryBoy DB on AD.DeliBoy=DB.Code "
  loc_1078CF9:   var_EC = var_E4 & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & "AND  Sale1.RoomType='TB' AND SALE1.restcode='"
  loc_1078D13:   unk_549616.Execute var_EC & global_52 & "' GROUP BY SALE1.DOCID ORDER BY MAX(Sale1.VNo),MAX(T.Code)", var_104, -1
  loc_1078D24:   Set global_88 = var_94
  loc_1078D53:   CVarUnk
  loc_1078D58:   VerifyVarObj
  loc_1078D5E:   Set var_94 = Me.FGrid1
  loc_1078D64:   LateIdStAd
  loc_1078D7E:   CVarUnk
  loc_1078D83:   VerifyVarObj
  loc_1078D89:   Set var_94 = Me.DGBill
  loc_1078D8F:   LateIdStAd
  loc_1078DB7:   If (Me.DGBill.RecordCount <= 0) Then
  loc_1078DCD:     Me.FGrid1.Rows = 2
  loc_1078DE8:     Me.FGrid1.FixedRows = 1
  loc_1078DF0:   End If
  loc_1078DF0: End If
  loc_1078DF0: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F36694
  'Data Table: 5495F0
  Dim var_B8 As DataGrid
  Dim var_86 As Integer
  Dim KeyCode As Integer
  loc_F36598: If ((OpenMode = 1) And (CLng(KeyCode) = &H1B)) Then
  loc_F365CC:   Set var_B8 = Me.DGEmp
  loc_F365F1:   If (((CBool(Me.DGTable.Visible) = 0) And (CBool(Me.DGPayType.Visible) = 0)) And (CBool(var_B8.Visible) = 0)) Then
  loc_F36601:     Me.var_B8.Unload Me
  loc_F36609:     Exit Sub
  loc_F3660A:   End If
  loc_F3660A: End If
  loc_F36628: If (((CLng(KeyCode) = &H53) And (Shift = 2)) And (global_116 = 1)) Then
  loc_F36646:   If (Me.FrSendRoom.Visible = &HFF) Then
  loc_F3664B:     var_86 = 0
  loc_F36658:     Call Txt_Validate(CInt(&H1E))
  loc_F36663:     If (var_86 = &HFF) Then
  loc_F36668:       KeyCode = 0
  loc_F3666B:       Exit Sub
  loc_F3666C:     End If
  loc_F3666C:   End If
  loc_F3666C:   Call Proc_98_77_1591438(KeyCode, var_86)
  loc_F36671:   Call TopCtrl1_UnknownEvent_16()
  loc_F36676:   Exit Sub
  loc_F36677: End If
  loc_F3668B: Proc_6_88_FE8F6C(Me, KeyCode, Shift)
  loc_F36693: Exit Sub
End Sub

Public Function global_52Get() '54B318
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '54B327
  global_52 = Value
End Sub

Public Function global_56Get() '54B336
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '54B345
  global_56 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC3D54
  'Data Table: 5495F0
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC3CCA: On Error Goto loc_EC3D0F
  loc_EC3CD3: Me.MoveFirst
  loc_EC3CED: var_8C = "Searchcode='" & MyValue
  loc_EC3CFD: Me.Find var_8C & "'", 0, 1
  loc_EC3D09: Call Proc_98_70_15D490C(var_A0)
  loc_EC3D0E: Exit Sub
  loc_EC3D0F: ' Referenced from: EC3CCA
  loc_EC3D17: Set var_A4 = Err()
  loc_EC3D1D: Call 0.Method_arg_2C (var_8C)
  loc_EC3D3E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC3D51: Exit Sub
  loc_EC3D52: Exit Sub
  loc_EC3D53: Exit Sub
End Sub

Public Property Get OpenMode() 'E05B10
  'Data Table: 5495F0
  loc_E05B09: OpenMode = global_116
End Sub

Public Property Let OpenMode(vNewValue) 'E0319C
  'Data Table: 5495F0
  loc_E03196: global_116 = vNewValue
  loc_E03199: Exit Sub
End Sub

Public Property Get OpenType() 'E05890
  'Data Table: 5495F0
  loc_E05889: OpenType = global_120
End Sub

Public Property Let OpenType(vNewValue) 'E02D64
  'Data Table: 5495F0
  loc_E02D5E: global_120 = vNewValue
  loc_E02D61: Exit Sub
End Sub

Public Property Get AdvType() 'E14B2C
  'Data Table: 5495F0
  loc_E14B20: var_88 = global_128
  loc_E14B23: AdvType = 
End Sub

Public Property Let AdvType(vNewValue) 'E14A9C
  'Data Table: 5495F0
  loc_E14A94: global_128 = vNewValue
  loc_E14A98: Exit Sub
End Sub

Public Property Get IdNo() 'E1389C
  'Data Table: 5495F0
  loc_E13890: var_88 = global_124
  loc_E13893: IdNo = 
End Sub

Public Property Let IdNo(vNewValue) 'E135CC
  'Data Table: 5495F0
  loc_E135C4: global_124 = vNewValue
  loc_E135C8: Exit Sub
End Sub

Public Property Get PersonCode() 'E13584
  'Data Table: 5495F0
  loc_E13578: var_88 = global_136
  loc_E1357B: PersonCode = 
  loc_E13582: If Not ( = ) Then Exit Sub
  loc_E13582: End If
End Sub

Public Property Let PersonCode(vNewValue) 'E1353C
  'Data Table: 5495F0
  loc_E13534: global_136 = vNewValue
  loc_E13538: Exit Sub
End Sub

Public Property Get pDocId() 'E134AC
  'Data Table: 5495F0
  loc_E134A0: var_88 = global_132
  loc_E134A3: pDocId = 
  loc_E134AA: If Not ( = ) Then Exit Sub
  loc_E134AA: End If
End Sub

Public Property Let pDocId(vNewValue) 'E13464
  'Data Table: 5495F0
  loc_E1345C: global_132 = vNewValue
  loc_E13460: Exit Sub
  loc_E13461: StAryRecCopy
End Sub

Public Property Get PTableOrRoomNo() 'E13344
  'Data Table: 5495F0
  loc_E13338: var_88 = global_140
  loc_E1333B: PTableOrRoomNo = 
End Sub

Public Property Let PTableOrRoomNo(vNewValue) 'E1326C
  'Data Table: 5495F0
  loc_E13264: global_140 = vNewValue
  loc_E13268: Exit Sub
End Sub

Public Property Get PRoomCat() 'E13194
  'Data Table: 5495F0
  loc_E13188: var_88 = global_164
  loc_E1318B: PRoomCat = 
End Sub

Public Property Let PRoomCat(vNewValue) 'E13104
  'Data Table: 5495F0
  loc_E130FC: global_164 = vNewValue
  loc_E13100: Exit Sub
End Sub

Public Property Get PRoomtype() 'E13074
  'Data Table: 5495F0
  loc_E13068: var_88 = global_168
  loc_E1306B: PRoomtype = 
End Sub

Public Property Let PRoomtype(vNewValue) 'E1302C
  'Data Table: 5495F0
  loc_E13024: global_168 = vNewValue
  loc_E13028: Exit Sub
End Sub

Public Property Get PBillAmt() 'E12F9C
  'Data Table: 5495F0
  loc_E12F92: var_88 = CStr(global_144)
  loc_E12F95: PBillAmt = 
End Sub

Public Property Let PBillAmt(vNewValue) 'E12DA4
  'Data Table: 5495F0
  loc_E12DA1: Exit Sub
  loc_E12DA2: If Not CDbl(vNewValue) Then Exit Sub
  loc_E12DA2: End If
End Sub

Public Sub Proc_98_66_1010178
  'Data Table: 5495F0
  Dim var_C4 As Variant
  Dim var_E4 As Long
  Dim var_90 As Double
  Dim var_86 As Integer
  loc_100FF8D: For var_B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B4 'Integer
  loc_100FF97:   var_C4 = CVar(CLng(var_88)) 'Long
  loc_100FF9C:   var_E4 = 1
  loc_100FFD6:   If (CStr(Me.FGrid.TextMatrix)) = MemVar_1F95070 & "MEM") Then
  loc_100FFDD:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_100FFE2:     var_E4 = &H18
  loc_1010000:     var_94 = CStr(Me.FGrid.TextMatrix))
  loc_101000D:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_1010012:     var_E4 = 8
  loc_1010042:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_101004E:   End If
  loc_1010051: Next var_B4 'Integer
  loc_101005E: If (var_94 <> vbNullString) Then
  loc_1010079:   If (Proc_96_1_F8D0C4(var_94) = 0) Then
  loc_101007F:     Proc_96_2_100E504(var_94)
  loc_1010089:     If (CDbl(0) < var_90) Then
  loc_10100AD:       MsgBox("Insufficient Ac. Balance.", 0, "Member Detail", var_124, var_134)
  loc_10100CA:       Me.Global.Unload Me
  loc_10100D4:       var_86 = 0
  loc_10100DA:     Else
  loc_10100DC:       var_86 = &HFF
  loc_10100DF:     End If
  loc_10100E2:   Else
  loc_10100F0:     If (Proc_96_1_F8D0C4(var_94, var_9C) = &HFF) Then
  loc_10100F6:       Proc_96_2_100E504(var_94, var_86)
  loc_101010C:       If ((CDbl((var_86 + var_9C)) < var_90) And (var_9C > CDbl(0))) Then
  loc_1010130:         MsgBox("Insufficient Ac. Balance.", 0, "Member Detail", var_124, var_134)
  loc_101014D:         Me.Global.Unload Me
  loc_1010157:         var_86 = 0
  loc_101015D:       Else
  loc_101015F:         var_86 = &HFF
  loc_1010162:       End If
  loc_1010165:     Else
  loc_1010167:       var_86 = &HFF
  loc_101016A:     End If
  loc_101016A:   End If
  loc_101016D: Else
  loc_101016F:   var_86 = &HFF
  loc_1010172: End If
  loc_1010172: Proc_98_66_1010178 = var_86
End Sub

Public Sub Proc_98_67_FDD1A0(arg_C) 'FDD1A0
  'Data Table: 5495F0
  Dim var_98 As TextBox
  loc_FDCFCA: Set var_8C = Me.Txt
  loc_FDCFD0: Call 0.Method_Proc_98_67_FDD1A08 (var_8E, var_86)
  loc_FDCFDD: For var_92 =  To CByte(var_8E): CByte(0) = var_92 'Byte
  loc_FDD078:   If (((((((((((((((CInt(var_86) <> 4) And (CInt(var_86) <> 5)) And (CInt(var_86) <> 6)) And (CInt(var_86) <> 7)) And (CInt(var_86) <> 8)) And (CInt(var_86) <> 9)) And (CInt(var_86) <> &HA)) And (CInt(var_86) <> &HB)) And (CInt(var_86) <> &HC)) And (CInt(var_86) <> &HD)) And (CInt(var_86) <> &HE)) And (CInt(var_86) <> &H1A)) And (CInt(var_86) <> &H1B)) And (CInt(var_86) <> &H1C)) And (CInt(var_86) <> &H1D)) Then
  loc_FDD08B:     Set var_8C = Me.Txt
  loc_FDD091:     Call 0.Method_Proc_98_67_FDD1A00 (CInt(var_86), var_98)
  loc_FDD099:     var_98.Enabled = arg_C
  loc_FDD0A5:   End If
  loc_FDD0A8: Next var_92 'Byte
  loc_FDD0BA: If (global_116 = 1) Then
  loc_FDD0CA:   Set var_8C = Me.Txt
  loc_FDD0D0:   Call 0.Method_Proc_98_67_FDD1A00 (CInt(1), var_98)
  loc_FDD0D8:   var_98.Enabled = False
  loc_FDD0E4: End If
  loc_FDD0F1: Set var_8C = Me.Txt
  loc_FDD0F7: Call 0.Method_Proc_98_67_FDD1A00 (CInt(2), var_98)
  loc_FDD0FF: var_98.Enabled = False
  loc_FDD118: Set var_8C = Me.Txt
  loc_FDD11E: Call 0.Method_Proc_98_67_FDD1A00 (CInt(0), var_98)
  loc_FDD126: var_98.Enabled = False
  loc_FDD13F: Set var_8C = Me.Txt
  loc_FDD145: Call 0.Method_Proc_98_67_FDD1A00 (CInt(&H10), var_98)
  loc_FDD14D: var_98.Enabled = False
  loc_FDD170: If (OpenMode = 1) Then
  loc_FDD180:   Set var_8C = Me.Txt
  loc_FDD186:   Call 0.Method_Proc_98_67_FDD1A00 (CInt(&H10), var_98)
  loc_FDD18E:   var_98.Enabled = False
  loc_FDD19A:   GoTo loc_FDD19D
  loc_FDD19D:   ' Referenced from: FDD19A
  loc_FDD19D: End If
  loc_FDD19D: Exit Sub
End Sub

Public Sub Proc_98_68_103BE9C
  'Data Table: 5495F0
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_8C As MSHFlexGrid
  loc_103BC52: Set var_8C = Me.Txt
  loc_103BC58: Call 0.Method_Proc_98_68_103BE9C8 (var_8E, var_86)
  loc_103BC65: For var_92 =  To CByte(var_8E): CByte(0) = var_92 'Byte
  loc_103BD00:   If (((((((((((((((CInt(var_86) <> 4) And (CInt(var_86) <> 5)) And (CInt(var_86) <> 6)) And (CInt(var_86) <> 7)) And (CInt(var_86) <> 8)) And (CInt(var_86) <> 9)) And (CInt(var_86) <> &HA)) And (CInt(var_86) <> &HB)) And (CInt(var_86) <> &HC)) And (CInt(var_86) <> &HD)) And (CInt(var_86) <> &HE)) And (CInt(var_86) <> &H1A)) And (CInt(var_86) <> &H1B)) And (CInt(var_86) <> &H1C)) And (CInt(var_86) <> &H1D)) Then
  loc_103BD13:     Set var_8C = Me.Txt
  loc_103BD19:     Call 0.Method_Proc_98_68_103BE9C0 (CInt(var_86), var_98)
  loc_103BD21:     var_98.Text = vbNullString
  loc_103BD3D:     Set var_8C = Me.Txt
  loc_103BD43:     Call 0.Method_Proc_98_68_103BE9C0 (CInt(var_86), var_98)
  loc_103BD4B:     var_98.Tag = vbNullString
  loc_103BD57:   End If
  loc_103BD5A: Next var_92 'Byte
  loc_103BD97: Set var_8C = Me.Txt
  loc_103BD9D: Call 0.Method_Proc_98_68_103BE9C0 (CInt(2), var_98, CStr(Format(MemVar_1F950EC, "dd/MMM/yyyy")))
  loc_103BDA5: var_98.Text = 1
  loc_103BDCE: Me.FGrid.Rows = 1
  loc_103BDD6: var_A8 = "1"
  loc_103BDE0: Set var_8C = Me.FGrid
  loc_103BDF1: var_A8 = 1
  loc_103BE04: Me.FGrid.FixedRows = var_A8
  loc_103BE1A: Set var_8C = Me.LTxt
  loc_103BE20: Call 0.Method_Proc_98_68_103BE9C0 (CInt(&H1A), var_98, vbNullString)
  loc_103BE28: var_98.Caption = FGrid.DispID_10000
  loc_103BE42: Set var_8C = Me.LTxt
  loc_103BE48: Call 0.Method_Proc_98_68_103BE9C0 (CInt(&H1B), var_98, vbNullString)
  loc_103BE50: var_98.Caption = var_A8
  loc_103BE6A: Set var_8C = Me.LTxt
  loc_103BE70: Call 0.Method_Proc_98_68_103BE9C0 (CInt(&H1C), var_98)
  loc_103BE78: var_98.Caption = vbNullString
  loc_103BE8A: global_176 = vbNullString
  loc_103BE97: global_180 = CDate(var_A8)
  loc_103BE9A: Exit Sub
End Sub

Public Sub Proc_98_69_1206998
  'Data Table: 5495F0
  Dim var_90 As Long
  Dim var_A0 As Variant
  loc_12064D7: Me.FrRest.Top = CDbl(1425)
  loc_12064EE: Me.FrRest.Left = CDbl(1230)
  loc_1206504: Me.FrRest.BackColor = CLng(MemVar_1F951B4)
  loc_1206517: var_90 = OpenType
  loc_1206523: If Not (var_90 = 1) Then
  loc_120652F:   If (var_90 = 7) Then
  loc_1206532:   End If
  loc_1206545:   Me.FGrid.Top = CVar(CDbl(4185))
  loc_1206550: Else
  loc_1206559:   If Not (var_90 = 5) Then
  loc_1206565:     If (var_90 = 6) Then
  loc_1206568:     End If
  loc_120657B:     Me.FGrid.Top = CVar(CDbl(4185))
  loc_1206583:   End If
  loc_1206583: End If
  loc_1206596: Me.FGrid.Left = CVar(CDbl(1430))
  loc_12065C3: Me.FrChqDet.Top = (Me.FrRest.Top + CDbl(945))
  loc_12065DE: Me.FrChqDet.Left = CDbl(1230)
  loc_12065F4: Me.FrChqDet.BackColor = CLng(MemVar_1F951B4)
  loc_1206621: Me.FrCCDet.Top = (Me.FrRest.Top + CDbl(945))
  loc_120663C: Me.FrCCDet.Left = CDbl(1230)
  loc_1206652: Me.FrCCDet.BackColor = CLng(MemVar_1F951B4)
  loc_120667C: Me.DGPayType.Top = CVar(CDbl(Me.FGrid.Top))
  loc_12066AD: Me.DGPayType.Height = CVar(CDbl(Me.FGrid.Height))
  loc_12066EA: var_A0 = CVar((Me.FrRest.Top + CDbl(Me.FGrid.Top))) 'Single
  loc_12066F9: Me.DGTable.Top = CVar(CDbl(Me.FGrid.Height))
  loc_120672C: Me.DGTable.Height = CVar(CDbl(Me.FGrid.Height))
  loc_1206760: Me.FrSendRoom.Top = (Me.FrRest.Top + CDbl(945))
  loc_120677B: Me.FrSendRoom.Left = CDbl(1230)
  loc_1206791: Me.FrSendRoom.BackColor = CLng(MemVar_1F951B4)
  loc_12067BE: Me.FrEmp.Top = (Me.FrRest.Top + CDbl(945))
  loc_12067D9: Me.FrEmp.Left = CDbl(1230)
  loc_12067EF: Me.FrEmp.BackColor = CLng(MemVar_1F951B4)
  loc_120681C: Me.FrComp.Top = (Me.FrRest.Top + CDbl(945))
  loc_1206837: Me.FrComp.Left = CDbl(1230)
  loc_120684D: Me.FrComp.BackColor = CLng(MemVar_1F951B4)
  loc_120687A: Me.FrMember.Top = (Me.FrRest.Top + CDbl(945))
  loc_1206895: Me.FrMember.Left = CDbl(1230)
  loc_12068AB: Me.FrMember.BackColor = CLng(MemVar_1F951B4)
  loc_12068C6: Me.DGRoom.Top = CVar(CDbl(405))
  loc_12068E1: Me.DGRoom.Left = CVar(CDbl(5415))
  loc_12068FC: Me.DGEmp.Top = CVar(CDbl(405))
  loc_1206917: Me.DGEmp.Left = CVar(CDbl(5550))
  loc_1206932: Me.DGCompany.Top = CVar(CDbl(405))
  loc_120694D: Me.DGCompany.Left = CVar(CDbl(5415))
  loc_1206974: Me.FrTxnNo.Left = Me.FrRest.Left
  loc_120698E: Me.FrTxnNo.BackColor = CLng(MemVar_1F951B4)
  loc_1206996: Exit Sub
End Sub

Public Sub Proc_98_70_15D490C
  'Data Table: 5495F0
  Dim Me As Variant
  Dim var_98 As Long
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
  Dim unk_549616 As Connection15
  Dim var_DC As Variant
  Dim var_144 As Variant
  Dim var_158 As Variant
  Dim var_130 As Variant
  Dim var_1AC As Fields15
  Dim var_1D0 As Variant
  Dim var_148 As Variant
  Dim var_90 As Integer
  Dim var_8E As Integer
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim var_8C As Recordset15
  loc_15D35EC: On Error Goto loc_15D48C7
  loc_15D35F5: Proc_183_45_E5CCA8(global_60)
  loc_15D3611: If (Me.RecordCount <= 0) Then
  loc_15D3614:   Call Proc_98_68_103BE9C()
  loc_15D361C: Else
  loc_15D3622:   var_98 = global_120
  loc_15D362E:   If Not (var_98 = 5) Then
  loc_15D363A:     If (var_98 = 6) Then
  loc_15D363D:     End If
  loc_15D3651:     var_9C = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName, ST.EmpCode, " & "E.Name AS EmpName, ST.Comments, ST.PayCode, P.Name AS PayName,"
  loc_15D365F:     var_A4 = var_9C & "ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, " & "R.Name AS RoomName, ST.FolioNo, ST.CardNo, ST.CardHolder, ST.ChqNo,ST.BatchNo, "
  loc_15D3666:     var_A8 = var_A4 & "ST.ChqDate, ST.TxnNo, ST.ExpDate,CC.Name as CompName,CompCode,st.U_AE,st.U_Name,st.U_Entdt,st.AU_Name,st.AU_Entdt,CC.Name as MemName,CompCode as MemCode FROM ((((PayCharge AS ST left JOIN "
  loc_15D3674:     var_B0 = var_A8 & "GuestProf AS GP ON ST.GuestProf = GP.Code) left JOIN Employee AS E " & "ON ST.EmpCode = E.Code) left JOIN RevMast AS P ON ST.PayCode = P.Code) "
  loc_15D3682:     var_EC = CVar(var_B0 & "left JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) " & "AND (ST.RoomNo = R.Code))left join SubGroup CC on CC.SubCode=ST.CompCode where ST.Docid='") 'String
  loc_15D36C9:     unk_549616.Execute CStr(var_EC & Me.Fields.Item("SearchCode").Value & "' And AmtCr>0"), var_140, -1
  loc_15D36D4:     Set var_88 = var_144
  loc_15D3700:   End If
  loc_15D37A9:   var_1A8 = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_AE")), Me.Recordset15.Fields) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_15D37F1:   Me.LblUser.Caption = CStr(var_98 & CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_Name")), var_1A8)))
  loc_15D3871:   var_148 = Me.Recordset15.Fields.Item("U_AE")
  loc_15D38D2:   var_1A8 = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_148)) = "E"), "Last Update :   ", "entdt :   "))
  loc_15D38EC:   var_1AC = Me.Recordset15.Fields
  loc_15D38FC:   var_1D0 = CVar(var_1AC.Item("U_EntDt")) 'Address
  loc_15D391A:   Me.LblLDt.Caption = CStr(var_1A8 & CVar(Proc_6_38_E69628(var_1D0)))
  loc_15D3986:   global_100 = CStr(Me.Fields.Item("SearchCode").Value)
  loc_15D39AE:   If (Me.Recordset15.RecordCount > 0) Then
  loc_15D39E5:     global_176 = CStr(Me.Recordset15.Fields.Item("AU_Name").Value)
  loc_15D3A28:     global_180 = CDate(Me.Recordset15.Fields.Item("AU_EntDt").Value)
  loc_15D3A71:     Set var_144 = Me.Txt
  loc_15D3A77:     Call 0.Method_Proc_98_70_15D490C0 (CInt(0), var_148)
  loc_15D3A7F:     var_148.Text = CStr(Me.Recordset15.Fields.Item("DocID").Value)
  loc_15D3AD1:     Set var_144 = Me.Txt
  loc_15D3AD7:     Call 0.Method_Proc_98_70_15D490C0 (CInt(1), var_148)
  loc_15D3ADF:     var_148.Text = CStr(Me.Recordset15.Fields.Item("VNo").Value)
  loc_15D3B31:     Set var_144 = Me.Txt
  loc_15D3B37:     Call 0.Method_Proc_98_70_15D490C0 (CInt(2), var_148)
  loc_15D3B3F:     var_148.Text = CStr(Me.Recordset15.Fields.Item("VDate").Value)
  loc_15D3B90:     Me.LblVPrefix.Caption = CStr(Me.Recordset15.Fields.Item("vPrefix").Value)
  loc_15D3BDD:     Set var_144 = Me.Txt
  loc_15D3BE3:     Call 0.Method_Proc_98_70_15D490C0 (CInt(&H12), var_148)
  loc_15D3BEB:     var_148.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CardNo")))
  loc_15D3BFF:   End If
  loc_15D3C0E:   Me.FGrid.Redraw = False
  loc_15D3C23:   Set var_B8 = Me.FGrid
  loc_15D3C29:   var_B8.Rows = 1
  loc_15D3C33:   var_90 = 1
  loc_15D3C4D:   If (Me.var_B8.RecordCount > 0) Then
  loc_15D3C50:     ' Referenced from:   15D4765
  loc_15D3C62:     If Not(Me.Recordset15.EOF) Then
  loc_15D3C65:       var_C8 = vbNullString
  loc_15D3C6F:       Set var_B8 = Me.FGrid
  loc_15D3C84:       Set var_1FC = Me.FGrid
  loc_15D3C8B:       var_10C = CVar(CLng(var_90)) 'Long
  loc_15D3C90:       var_158 = 0
  loc_15D3CC7:       var_EC = CVar(CStr(Me.FGrid.Fields.Item("SNo").Value)) 'String
  loc_15D3CCE:       LateIdCallSt
  loc_15D3D21:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PayType")), 2, CVar(CLng(var_90)), var_1FC, var_EC, 2)) 'String
  loc_15D3D28:       LateIdCallSt
  loc_15D3D81:       LateIdCallSt
  loc_15D3DC2:       var_9C = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PayCode")), var_1FC, CVar(CStr(Me.Recordset15.Fields.Item("PayCode").Value)), 1, CVar(CLng(var_90)), var_1FC)
  loc_15D3DDE:       If (var_9C = MemVar_1F95070 & "CCAD") Then
  loc_15D3DE3:         var_8E = &HFF
  loc_15D3DE6:       End If
  loc_15D3E23:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PayName")), 3, CVar(CLng(var_90)), var_8E, var_EC)) 'String
  loc_15D3E2A:       LateIdCallSt
  loc_15D3E40:       var_10C = CVar(CLng(var_90)) 'Long
  loc_15D3E45:       var_158 = 4
  loc_15D3E7C:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("RoomCat").Value)) 'String
  loc_15D3E83:       LateIdCallSt
  loc_15D3E9D:       var_10C = CVar(CLng(var_90)) 'Long
  loc_15D3EA2:       var_158 = 5
  loc_15D3ED9:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("Roomtype").Value)) 'String
  loc_15D3EE0:       LateIdCallSt
  loc_15D3EFA:       var_10C = CVar(CLng(var_90)) 'Long
  loc_15D3F02:       var_158 = CVar(CLng(6)) 'Long
  loc_15D3F35:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("RoomNo").Value)) 'String
  loc_15D3F3C:       LateIdCallSt
  loc_15D3F8E:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomName")), CVar(CLng(7)), CVar(CLng(var_90)), var_1FC, var_EC, CVar(CLng(7)), CVar(CLng(var_90)))) 'String
  loc_15D3F95:       LateIdCallSt
  loc_15D3FCA:       var_130 = CVar(CLng(var_90)) 'Long
  loc_15D4007:       LateIdCallSt
  loc_15D4059:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CardNo")), CVar(CLng(9)), CVar(CLng(var_90)), var_1FC, CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))), 1, 1)) 'String
  loc_15D4060:       LateIdCallSt
  loc_15D40AE:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CardHolder")), CVar(CLng(&HA)), CVar(CLng(var_90)), var_1FC, var_EC, 8)) 'String
  loc_15D40B5:       LateIdCallSt
  loc_15D4103:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ExpDate")), CVar(CLng(&HB)), CVar(CLng(var_90)), var_1FC, var_EC)) 'String
  loc_15D410A:       LateIdCallSt
  loc_15D4157:       Proc_6_39_E7D3A0(var_EC, CVar(Me.Recordset15.Fields.Item("BatchNo")), &H17, CVar(CLng(var_90)), var_1FC, var_EC)
  loc_15D4167:       LateIdCallSt
  loc_15D41B7:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqNo")), CVar(CLng(&HC)), CVar(CLng(var_90)), var_1FC, CVar(CStr(var_EC)))) 'String
  loc_15D41BE:       LateIdCallSt
  loc_15D420C:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqDate")), CVar(CLng(&HD)), CVar(CLng(var_90)), var_1FC, var_EC)) 'String
  loc_15D4213:       LateIdCallSt
  loc_15D4261:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TxnNo")), CVar(CLng(&H1A)), CVar(CLng(var_90)), var_1FC, var_EC)) 'String
  loc_15D4268:       LateIdCallSt
  loc_15D427E:       var_10C = CVar(CLng(var_90)) 'Long
  loc_15D4286:       var_158 = CVar(CLng(&HE)) 'Long
  loc_15D42B9:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("Comments").Value)) 'String
  loc_15D42C0:       LateIdCallSt
  loc_15D4312:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("EmpName")), CVar(CLng(&HF)), CVar(CLng(var_90)), var_1FC, var_EC, CVar(CLng(&HF)), CVar(CLng(var_90)))) 'String
  loc_15D4319:       LateIdCallSt
  loc_15D4367:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("EmpCode")), CVar(CLng(&H10)), CVar(CLng(var_90)), var_1FC, var_EC, var_1FC)) 'String
  loc_15D436E:       LateIdCallSt
  loc_15D43BD:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CompCode")), &H14, CVar(CLng(var_90)), var_1FC, var_EC)) 'String
  loc_15D43C4:       LateIdCallSt
  loc_15D4413:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CompName")), &H15, CVar(CLng(var_90)), var_1FC, var_EC)) 'String
  loc_15D441A:       LateIdCallSt
  loc_15D4469:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("MemCode")), &H18, CVar(CLng(var_90)), var_1FC, var_EC)) 'String
  loc_15D4470:       LateIdCallSt
  loc_15D44BF:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("MemName")), &H19, CVar(CLng(var_90)), var_1FC, var_EC)) 'String
  loc_15D44C6:       LateIdCallSt
  loc_15D44DC:       var_10C = CVar(CLng(var_90)) 'Long
  loc_15D4518:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("TipAmt").Value)) 'String
  loc_15D451F:       LateIdCallSt
  loc_15D4563:       var_EC = "0.00"
  loc_15D458A:       Set var_144 = Me.LTxt
  loc_15D4590:       Call 0.Method_Proc_98_70_15D490C0 (CInt(&H1A), var_148, CStr(Format(CVar(Me.Recordset15.Fields.Item("BillAmount")), var_EC)), 1, 1, var_1FC, var_EC)
  loc_15D4598:       var_148.Caption = &H11
  loc_15D45C6:       var_EC = CVar("SELECT P.RoomType+P.RoomCat+SPACE(5-LEN(P.RoomCat))+P.RoomNo+SPACE(5-LEN(P.RoomNo)),code " & " FROM PayCharge AS P INNER JOIN RoomMast AS R ON (P.RoomNo = R.Code) AND (P.RoomCat = R.RoomCat) AND (P.RoomType = R.Type) Where DocId='") 'String
  loc_15D45F6:       var_FC = var_EC & Me.Recordset15.Fields.Item("DocID").Value 
  loc_15D45FF:       var_11C = var_FC & "' And SNo=" 
  loc_15D4635:       var_198 = (Me.Recordset15.Fields.Item("SNo").Value + 1)
  loc_15D4647:       unk_549616.Execute CStr(var_11C & "Created By :   "), var_1D0, -1
  loc_15D4652:       Set var_8C = var_1AC
  loc_15D468C:       If (var_8C.RecordCount > 0) Then
  loc_15D46D0:         var_EC = CVar(Proc_6_38_E69628(var_8C.Fields.Item(0).Value, &H12, CVar(CLng(var_90)), var_1AC, CVar(CLng(var_90)))) 'String
  loc_15D46D7:         LateIdCallSt
  loc_15D472E:         var_EC = CVar(Proc_6_38_E69628(var_8C.Fields.Item(1).Value, &H13, CVar(CLng(var_90)), var_1FC, var_EC)) 'String
  loc_15D4735:         LateIdCallSt
  loc_15D474B:       End If
  loc_15D474D:       Set var_1FC = Nothing 
  loc_15D4757:       var_90 = (var_90 + 1)
  loc_15D4760:       Me.Recordset15.MoveNext
  loc_15D4765:       GoTo loc_15D3C50
  loc_15D4768:     End If
  loc_15D477B:     Me.FGrid.FixedRows = 1
  loc_15D4783:   End If
  loc_15D4791:   Me.FGrid.Redraw = True
  loc_15D479F:   If (var_90 = 1) Then
  loc_15D47B5:     Me.FGrid.Rows = 1
  loc_15D47D9:     var_DC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0, var_90, var_1FC, var_EC))) 'String
  loc_15D47E1:     Set var_CC = Me.FGrid
  loc_15D480E:     Me.FGrid.FixedRows = 1
  loc_15D4816:   End If
  loc_15D481F:   var_130 = 2
  loc_15D4841:   Call Proc_98_76_11D2664(CStr(Me.FGrid.TextMatrix)), var_130, 1, FGrid.DispID_10000, Me.FGrid.TextMatrix))
  loc_15D484F:   Call Proc_98_79_107CDCC(var_1FC, var_EC, var_EC)
  loc_15D4854:   Call Proc_98_80_140F224(var_130)
  loc_15D486E:   var_9C = "INI"
  loc_15D487C:   Call Proc_98_67_FDD1A0(Proc_5_1_100EC1C(var_9C, Me))
  loc_15D488D:   If (var_8E = &HFF) Then
  loc_15D4899:     Set var_B8 = Me.TopCtrl1
  loc_15D489F:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030016(False)
  loc_15D48B0:     Set var_B8 = Me.TopCtrl1
  loc_15D48B6:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030017(False)
  loc_15D48BE:   End If
  loc_15D48BE: End If
  loc_15D48C3: Set var_88 = Nothing
  loc_15D48C6: Exit Sub
  loc_15D48C7: ' Referenced from: 15D35EC
  loc_15D48CF: Set var_B8 = Err()
  loc_15D48D5: Call 0.Method_arg_2C (var_9C, global_60)
  loc_15D48F6: MsgBox(CVar(var_9C), &H40, "Information", var_FC, var_11C)
  loc_15D4909: Exit Sub
End Sub

Public Sub Proc_98_71_FB8840
  'Data Table: 5495F0
  loc_FB86A8: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_FB86BA:   Me.DGPayType.Visible = False
  loc_FB86C2: End If
  loc_FB86DE: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_FB86F0:   Me.DGPayType.Visible = False
  loc_FB86F8: End If
  loc_FB8714: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_FB8726:   Me.DGEmp.Visible = False
  loc_FB872E: End If
  loc_FB874A: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_FB875C:   Me.DGTable.Visible = False
  loc_FB8764: End If
  loc_FB8780: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_FB8792:   Me.DGRoom.Visible = False
  loc_FB879A: End If
  loc_FB87B6: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_FB87C8:   Me.DGCompany.Visible = False
  loc_FB87D0: End If
  loc_FB87EC: If (CBool(Me.DGBill.Visible) = &HFF) Then
  loc_FB87FE:   Me.DGBill.Visible = False
  loc_FB8806: End If
  loc_FB8822: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_FB8834:   Me.FGPoint.Visible = False
  loc_FB883C: End If
  loc_FB883C: Exit Sub
End Sub

Public Sub Proc_98_72_E92584(arg_C) 'E92584
  'Data Table: 5495F0
  Dim var_10C As TextBox
  loc_E92518: Call Proc_98_71_FB8840()
  loc_E92554: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E92557:   Call TopCtrl1_UnknownEvent_16()
  loc_E9255F: Else
  loc_E92569:   Set var_108 = Me.Txt
  loc_E9256F:   Call 0.Method_Proc_98_72_E925840 (arg_C)
  loc_E92577:   var_10C.SetFocus
  loc_E92583: End If
  loc_E92583: Exit Sub
End Sub

Public Sub Proc_98_73_10C96F4
  'Data Table: 5495F0
  Dim var_94 As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_A8 As Variant
  Dim var_AC As Field20
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  loc_10C9444: var_90 = global_128
  loc_10C945B: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_10C948C: Set var_A8 = Me.Txt
  loc_10C9492: Call 0.Method_Proc_98_73_10C96F40 (CInt(2), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And "))
  loc_10C94A1: Proc_6_7_F26918(var_CC, CVar(var_AC), var_130)
  loc_10C94A9: var_EC = -1 & var_CC 
  loc_10C94BD: Me.Txt.Execute CStr(var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC"), var_134, 
  loc_10C94C8: Set var_8C = var_134
  loc_10C9504: If (var_8C.RecordCount > 0) Then
  loc_10C9543:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_10C9546:     GoTo loc_10C95D4
  loc_10C9549:   End If
  loc_10C957A:   global_108 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10C95BA:   var_CC = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_10C95C3:   global_112 = CLng(var_CC)
  loc_10C95D4:   ' Referenced from: 10C9546
  loc_10C95FF:   var_BC = Space((5 - Len(var_90)))
  loc_10C9607:   var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_8C.Fields.Item("start_srl_no").Value)
  loc_10C961B:   var_EC = Space((5 - Len(global_108)))
  loc_10C9623:   var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And ") + var_EC)
  loc_10C9630:   var_130 = (var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC" + CVar(global_108))
  loc_10C9649:   var_14C = Space((8 - Len(CStr(global_112))))
  loc_10C9651:   var_15C = (var_130 + var_14C)
  loc_10C9660:   var_17C = (var_15C + CVar(CStr(global_112)))
  loc_10C966B:   global_104 = CStr(var_17C)
  loc_10C96A1:   Me.LblVPrefix.Caption = global_108
  loc_10C96AC: Else
  loc_10C96B2:   global_104 = vbNullString
  loc_10C96C8:   global_112 = 0
  loc_10C96DB:   Me.LblVPrefix.Caption = vbNullString
  loc_10C96E3: End If
  loc_10C96E8: Set var_8C = Nothing
  loc_10C96EB: Proc_98_73_10C96F4 = global_112
End Sub

Public Sub Proc_98_74_1218330
  'Data Table: 5495F0
  Dim var_88 As Long
  Dim var_A0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As String
  loc_1217E4A: var_88 = global_120
  loc_1217E56: If Not (var_88 = 5) Then
  loc_1217E62:   If (var_88 = 6) Then
  loc_1217E65:   End If
  loc_1217E71:   Me.FrRest.Visible = True
  loc_1217E79: End If
  loc_1217E8C: Me.FGrid.Cols = &H19
  loc_1217E94: var_A0 = CVar(CLng(9)) 'Long
  loc_1217E99: var_C0 = 0
  loc_1217EA5: LateIdCallSt
  loc_1217EB0: var_A0 = CVar(CLng(&HA)) 'Long
  loc_1217EB5: var_C0 = 0
  loc_1217EC1: LateIdCallSt
  loc_1217ECC: var_A0 = CVar(CLng(&HB)) 'Long
  loc_1217ED1: var_C0 = 0
  loc_1217EDD: LateIdCallSt
  loc_1217EE8: var_A0 = CVar(CLng(&HC)) 'Long
  loc_1217EED: var_C0 = 0
  loc_1217EF9: LateIdCallSt
  loc_1217F04: var_A0 = CVar(CLng(&HD)) 'Long
  loc_1217F09: var_C0 = 0
  loc_1217F15: LateIdCallSt
  loc_1217F20: var_A0 = CVar(CLng(&HE)) 'Long
  loc_1217F25: var_C0 = 0
  loc_1217F31: LateIdCallSt
  loc_1217F3C: var_A0 = CVar(CLng(&HF)) 'Long
  loc_1217F41: var_C0 = 0
  loc_1217F4D: LateIdCallSt
  loc_1217F58: var_A0 = CVar(CLng(&H10)) 'Long
  loc_1217F5D: var_C0 = 0
  loc_1217F69: LateIdCallSt
  loc_1217F71: var_A0 = &H11
  loc_1217F7A: var_C0 = 0
  loc_1217F86: LateIdCallSt
  loc_1217F8E: var_A0 = 1
  loc_1217F97: var_C0 = 0
  loc_1217FA3: LateIdCallSt
  loc_1217FAB: var_A0 = 4
  loc_1217FB4: var_C0 = 0
  loc_1217FC0: LateIdCallSt
  loc_1217FC8: var_A0 = 5
  loc_1217FD1: var_C0 = 0
  loc_1217FDD: LateIdCallSt
  loc_1217FE8: var_A0 = CVar(CLng(6)) 'Long
  loc_1217FED: var_C0 = 0
  loc_1217FF9: LateIdCallSt
  loc_1218004: var_A0 = CVar(CLng(7)) 'Long
  loc_1218009: var_C0 = 0
  loc_1218015: LateIdCallSt
  loc_121801D: var_A0 = 2
  loc_1218026: var_C0 = 0
  loc_1218032: LateIdCallSt
  loc_121803A: var_A0 = 0
  loc_1218043: var_C0 = &HFA
  loc_121804F: LateIdCallSt
  loc_1218057: var_A0 = 0
  loc_1218060: var_C0 = 0
  loc_1218069: var_E0 = "SNo"
  loc_1218072: LateIdCallSt
  loc_121807A: var_A0 = 0
  loc_1218083: var_C0 = &H1F4
  loc_121808F: LateIdCallSt
  loc_1218097: var_A0 = 0
  loc_12180A0: var_C0 = 3
  loc_12180A9: var_E0 = "Payment Type"
  loc_12180B2: LateIdCallSt
  loc_12180BA: var_A0 = 3
  loc_12180C9: var_C0 = CVar(CInt(1)) 'Integer
  loc_12180D0: LateIdCallSt
  loc_12180D8: var_A0 = 3
  loc_12180E1: var_C0 = &HDAC
  loc_12180ED: LateIdCallSt
  loc_12180F5: var_A0 = 0
  loc_12180FE: var_C0 = 8
  loc_1218107: var_E0 = "Amount"
  loc_1218110: LateIdCallSt
  loc_1218118: var_A0 = 8
  loc_1218127: var_C0 = CVar(CInt(7)) 'Integer
  loc_121812E: LateIdCallSt
  loc_1218136: var_A0 = 8
  loc_1218145: var_C0 = CVar(CInt(7)) 'Integer
  loc_121814C: LateIdCallSt
  loc_1218154: var_A0 = 8
  loc_121815D: var_C0 = &H4EC
  loc_1218169: LateIdCallSt
  loc_1218171: var_A0 = 0
  loc_121817A: var_C0 = &H11
  loc_1218183: var_E0 = "Tip"
  loc_121818C: LateIdCallSt
  loc_1218194: var_A0 = &H11
  loc_12181A3: var_C0 = CVar(CInt(7)) 'Integer
  loc_12181AA: LateIdCallSt
  loc_12181B2: var_A0 = &H11
  loc_12181C1: var_C0 = CVar(CInt(7)) 'Integer
  loc_12181C8: LateIdCallSt
  loc_12181D0: var_A0 = &H11
  loc_12181D9: var_C0 = &H320
  loc_12181E5: LateIdCallSt
  loc_12181ED: var_A0 = &H12
  loc_12181F6: var_C0 = 0
  loc_1218202: LateIdCallSt
  loc_121820A: var_A0 = &H13
  loc_1218213: var_C0 = 0
  loc_121821F: LateIdCallSt
  loc_1218227: var_A0 = &H14
  loc_1218230: var_C0 = 0
  loc_121823C: LateIdCallSt
  loc_1218244: var_A0 = &H15
  loc_121824D: var_C0 = 0
  loc_1218259: LateIdCallSt
  loc_1218261: var_A0 = &H18
  loc_121826A: var_C0 = 0
  loc_1218276: LateIdCallSt
  loc_121827E: var_A0 = &H19
  loc_1218287: var_C0 = 0
  loc_1218293: LateIdCallSt
  loc_121829B: var_A0 = &H16
  loc_12182A4: var_C0 = 0
  loc_12182B0: LateIdCallSt
  loc_12182B8: var_A0 = &H17
  loc_12182C1: var_C0 = 0
  loc_12182CD: LateIdCallSt
  loc_12182D8: var_A0 = CVar(CLng(&H1A)) 'Long
  loc_12182DD: var_C0 = 0
  loc_12182E9: LateIdCallSt
  loc_121831B: LateIdCallSt
  loc_1218329: Call Proc_98_75_11C02C8(Me.FGrid, CVar(CStr(1)), 0, 1, Nothing, 0, 1, Nothing)
  loc_121832E: Exit Sub
End Sub

Public Sub Proc_98_75_11C02C8
  'Data Table: 5495F0
  Dim var_94 As Long
  Dim var_98 As String
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_BC As Variant
  Dim var_C4 As String
  loc_11BFE7E: Set global_72 = New 
  loc_11BFE90: Me.Recordset15.CursorLocation = 3
  loc_11BFEA0: var_94 = OpenType
  loc_11BFEAC: If (var_94 = 6) Then
  loc_11BFED4:   var_A8 = CVar("Select T.Code,T.Name As Name From RoomMast T where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND T.Type in('HL') Order by T.Code") 'String
  loc_11BFEDE:   Me.Open var_A8, CVar(MemVar_1F95044), 3
  loc_11BFEF5:   Set var_8C = Me.LblName
  loc_11BFEFB:   Call 0.Method_Proc_98_75_11C02C80 (&HC, var_BC, "Hall")
  loc_11BFF03:   var_BC.Caption = 1
  loc_11BFF1F:   Set var_8C = Me.DGTable
  loc_11BFF30:   Set var_BC = DGTable.DispID_69
  loc_11BFF3E:   var_BC.Item(1).Caption = "Hall"
  loc_11BFF55:   global_152 = "HALL"
  loc_11BFF5F:   global_156 = "HS"
  loc_11BFF66: Else
  loc_11BFF6F:   If (var_94 = 5) Then
  loc_11BFF7A:     If (MemVar_1F951AC = "Hall") Then
  loc_11BFF89:       Set var_8C = Me.LblName
  loc_11BFF8F:       Call 0.Method_Proc_98_75_11C02C80 (&HC, var_BC, "Hall #")
  loc_11BFF97:       var_BC.Caption = -1
  loc_11BFFB3:       Set var_8C = Me.DGTable
  loc_11BFFC4:       Set var_BC = DGTable.DispID_69
  loc_11BFFD2:       var_BC.Item(1).Caption = "Hall #"
  loc_11C0008:       var_A8 = CVar("Select T.Code,T.Code As Name From RoomMast T where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND T.Type in ('HL') Order By T.Code") 'String
  loc_11C0012:       Me.Open var_A8, CVar(MemVar_1F95044), 3
  loc_11C0023:       global_152 = "HALL"
  loc_11C002D:       global_156 = "HL"
  loc_11C0034:     Else
  loc_11C003C:       If (MemVar_1F951AC = "Fast Food") Then
  loc_11C004A:         Set var_8C = Me.LblName
  loc_11C0050:         Call 0.Method_Proc_98_75_11C02C80 (&HC, var_BC, 0)
  loc_11C0058:         var_BC.Visible = True
  loc_11C0071:         Set var_8C = Me.Txt
  loc_11C0077:         Call 0.Method_Proc_98_75_11C02C80 (CInt(&H10), var_BC, 0)
  loc_11C007F:         var_BC.Visible = True
  loc_11C009B:         Set var_8C = Me.DGTable
  loc_11C00AC:         Set var_BC = DGTable.DispID_69
  loc_11C00BA:         var_BC.Item(1).Caption = "Hall #"
  loc_11C00F0:         var_A8 = CVar("Select T.Code,T.Code As Name From RoomMast T where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND T.Type in ('HL') Order By T.Code") 'String
  loc_11C00FA:         Me.Open var_A8, CVar(MemVar_1F95044), 3
  loc_11C010B:         global_152 = "HALL"
  loc_11C0115:         global_156 = "HL"
  loc_11C011C:       Else
  loc_11C0124:         If (MemVar_1F951AC = "Room Service") Then
  loc_11C0133:           Set var_8C = Me.LblName
  loc_11C0139:           Call 0.Method_Proc_98_75_11C02C80 (&HC, var_BC, "Room #")
  loc_11C0141:           var_BC.Caption = 1
  loc_11C015D:           Set var_8C = Me.DGTable
  loc_11C016E:           Set var_BC = DGTable.DispID_69
  loc_11C017C:           var_BC.Item(1).Caption = "Room #"
  loc_11C01B2:           var_A8 = CVar("Select T.Code,T.Code As Name,RoomCat From RoomMast T where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND  T.Type in('RO') Order by T.Code") 'String
  loc_11C01BC:           Me.Open var_A8, CVar(MemVar_1F95044), 3
  loc_11C01CD:           global_156 = "RO"
  loc_11C01D4:         Else
  loc_11C01E0:           Set var_8C = Me.LblName
  loc_11C01E6:           Call 0.Method_Proc_98_75_11C02C80 (&HC, var_BC, "Table #", 1)
  loc_11C01EE:           var_BC.Caption = -1
  loc_11C020A:           Set var_8C = Me.DGTable
  loc_11C0229:           DGTable.DispID_69.Item(1).Caption = "Table #"
  loc_11C0258:           var_98 = "SELECT Max(T.Code) AS CODE, Max(T.Code) AS Name, Sale1.DocId, Max(Sale1.VNo) AS VNO FROM ((SALE1 LEFT JOIN (SELECT DOCID,SUM(AMTCR) AS AMT FROM PAYCHARGE GROUP BY DOCID ) PCHRG ON SALE1.DOCID=PCHRG.DOCID ) INNER JOIN RoomMast T ON (Sale1.RestCode = T.RestCode) AND (Sale1.RoomNo = T.Code) AND (Sale1.RoomType = T.Type)) Left JOIN Waiter ON Sale1.Waiter = Waiter.Code WHERE (SALE1.LOGSITE_CODE='" & MemVar_1F95078
  loc_11C025F:           var_C4 = var_98 & "' or SALE1.LOGSITE_CODE='HO') AND IsNull(PCHRG.Amt, 0) < SALE1.NetAmt AND PCHRG.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') AND  Sale1.RoomType='TB' AND SALE1.restcode='"
  loc_11C027A:           Me.Open CVar(var_C4 & global_52 & "'GROUP BY SALE1.DOCID ORDER BY MAX(T.Code)"), CVar(MemVar_1F95044), 3
  loc_11C0291:           global_152 = "REST"
  loc_11C029B:           global_156 = "TB"
  loc_11C029F:         End If
  loc_11C029F:       End If
  loc_11C029F:     End If
  loc_11C029F:   End If
  loc_11C029F: End If
  loc_11C02A8: CVarUnk
  loc_11C02AD: VerifyVarObj
  loc_11C02B3: Set var_8C = Me.DGTable
  loc_11C02B9: LateIdStAd
  loc_11C02C7: Exit Sub
End Sub

Public Sub Proc_98_76_11D2664(arg_C) '11D2664
  'Data Table: 5495F0
  Dim var_8C As Long
  Dim var_98 As Frame
  Dim var_A0 As Variant
  Dim var_A8 As TextBox
  loc_11D21FC: Me.FrChqDet.Visible = False
  loc_11D2210: Me.FrRem.Visible = False
  loc_11D2224: Me.FrCCDet.Visible = False
  loc_11D2238: Me.FrEmp.Visible = False
  loc_11D224C: Me.FrComp.Visible = False
  loc_11D2260: Me.FrMember.Visible = False
  loc_11D2274: Me.FrSendRoom.Visible = False
  loc_11D2288: Me.FrTxnNo.Visible = False
  loc_11D2296: var_8C = global_120
  loc_11D22A2: If Not (var_8C = 5) Then
  loc_11D22AE:   If (var_8C = 6) Then
  loc_11D22B1:   End If
  loc_11D22B4:   var_90 = arg_C
  loc_11D22BF:   If (var_90 = "Cheque") Then
  loc_11D22CE:     Me.FrChqDet.Visible = True
  loc_11D22E2:     Me.FrRem.Visible = True
  loc_11D2320:     Me.FrRem.Top = (Me.FrChqDet.Top + Me.FrChqDet.Height)
  loc_11D2331:   Else
  loc_11D2339:     If (var_90 = "Credit Card") Then
  loc_11D2348:       Me.FrCCDet.Visible = True
  loc_11D235C:       Me.FrRem.Visible = False
  loc_11D2367:     Else
  loc_11D236F:       If (var_90 = "Staff") Then
  loc_11D237E:         Me.FrEmp.Visible = True
  loc_11D2392:         Me.FrRem.Visible = True
  loc_11D23D0:         Me.FrRem.Top = (Me.FrEmp.Top + Me.FrEmp.Height)
  loc_11D23E1:       Else
  loc_11D23E9:         If (var_90 = "Company") Then
  loc_11D23F8:           Me.FrComp.Visible = True
  loc_11D240C:           Me.FrRem.Visible = True
  loc_11D244A:           Me.FrRem.Top = (Me.FrComp.Top + Me.FrComp.Height)
  loc_11D245B:         Else
  loc_11D2463:           If (var_90 = "Member") Then
  loc_11D2472:             Me.FrMember.Visible = True
  loc_11D2486:             Me.FrRem.Visible = True
  loc_11D24C4:             Me.FrRem.Top = (Me.FrMember.Top + Me.FrMember.Height)
  loc_11D24D5:           Else
  loc_11D24DD:             If (var_90 = "Room") Then
  loc_11D24EC:               Me.FrSendRoom.Visible = True
  loc_11D2500:               Me.FrRem.Visible = False
  loc_11D250B:             Else
  loc_11D2513:               If (var_90 = "UPI") Then
  loc_11D2522:                 Me.FrTxnNo.Visible = True
  loc_11D2536:                 Me.FrRem.Visible = True
  loc_11D2578:                 Me.FrTxnNo.Top = ((Me.FrRest.Top + Me.FrRest.Height) + CDbl(&HF))
  loc_11D25BA:                 Set var_A0 = Me.FrRem
  loc_11D25C0:                 var_A0.Top = ((Me.FrTxnNo.Top + Me.FrTxnNo.Height) + CDbl(&HF))
  loc_11D25D1:               Else
  loc_11D25DD:                 Me.FrRem.Visible = True
  loc_11D25F3:                 Set var_98 = Me.Txt
  loc_11D25F9:                 Call 0.Method_Proc_98_76_11D26640 (CInt(&H11), var_A0)
  loc_11D2614:                 Set var_A4 = Me.Txt
  loc_11D261A:                 Call 0.Method_Proc_98_76_11D26640 (CInt(&H11), var_A8)
  loc_11D264F:                 Me.FrRem.Top = ((Me.FrRest.Top + var_A0.Top) + var_A8.Height)
  loc_11D2663:               End If
  loc_11D2663:             End If
  loc_11D2663:           End If
  loc_11D2663:         End If
  loc_11D2663:       End If
  loc_11D2663:     End If
  loc_11D2663:   End If
  loc_11D2663: End If
  loc_11D2663: Exit Sub
End Sub

Public Sub Proc_98_77_1591438
  'Data Table: 5495F0
  Dim var_90 As Variant
  Dim var_8C As Variant
  Dim var_AC As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_94 As String
  Dim var_86 As Integer
  Dim var_104 As Long
  Dim var_118 As String
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim Me As Variant
  loc_159028A: Set var_8C = Me.Txt
  loc_1590290: Call 0.Method_Proc_98_77_15914380 (CInt(&H11), var_90)
  loc_15902B4: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_15902C5:   Set var_8C = Me.Txt
  loc_15902CB:   Call 0.Method_Proc_98_77_15914380 (CInt(&H11), var_90)
  loc_15902D3:   var_90.Text = vbNullString
  loc_15902DF: End If
  loc_15902ED: Set var_8C = Me.Txt
  loc_15902F3: Call 0.Method_Proc_98_77_15914380 (CInt(&H11), var_90)
  loc_159030D: If (var_90.Visible = &HFF) Then
  loc_159031B:   Set var_8C = Me.Txt
  loc_1590321:   Call 0.Method_Proc_98_77_15914380 (CInt(&H11))
  loc_1590329:   var_94 = "Amount"
  loc_159034A:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_159034D:     Exit Sub
  loc_159034E:   End If
  loc_159034E: End If
  loc_1590367: Set var_8C = Me.Txt
  loc_159036D: Call 0.Method_Proc_98_77_15914380 (CInt(&H18), var_90, var_94)
  loc_1590375: (global_160 = "Staff") = var_90.Text
  loc_159038D: If (var_90 And (var_94 = vbNullString)) Then
  loc_159039B:   Set var_8C = Me.Txt
  loc_15903A1:   Call 0.Method_Proc_98_77_15914380 (CInt(&H18))
  loc_15903A9:   var_94 = "Staff Name"
  loc_15903CA:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15903CD:     Exit Sub
  loc_15903CE:   End If
  loc_15903CE: End If
  loc_15903E7: Set var_8C = Me.Txt
  loc_15903ED: Call 0.Method_Proc_98_77_15914380 (CInt(&H1E), var_90, var_94)
  loc_15903F5: (global_160 = "Room") = var_90.Text
  loc_159040D: If (var_90 And (var_94 = vbNullString)) Then
  loc_159041B:   Set var_8C = Me.Txt
  loc_1590421:   Call 0.Method_Proc_98_77_15914380 (CInt(&H1E))
  loc_1590429:   var_94 = "Room Name"
  loc_159044A:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_159044D:     Exit Sub
  loc_159044E:   End If
  loc_159044E: End If
  loc_1590467: Set var_8C = Me.Txt
  loc_159046D: Call 0.Method_Proc_98_77_15914380 (CInt(&H1F), var_90, var_94)
  loc_1590475: (global_160 = "Company") = var_90.Text
  loc_159048D: If (var_90 And (var_94 = vbNullString)) Then
  loc_159049B:   Set var_8C = Me.Txt
  loc_15904A1:   Call 0.Method_Proc_98_77_15914380 (CInt(&H1F))
  loc_15904A9:   var_94 = "Company Name"
  loc_15904CA:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15904CD:     Exit Sub
  loc_15904CE:   End If
  loc_15904CE: End If
  loc_15904E7: Set var_8C = Me.Txt
  loc_15904ED: Call 0.Method_Proc_98_77_15914380 (CInt(&H20), var_90, var_94)
  loc_15904F5: (global_160 = "Member") = var_90.Text
  loc_159050D: If (var_90 And (var_94 = vbNullString)) Then
  loc_159051B:   Set var_8C = Me.Txt
  loc_1590521:   Call 0.Method_Proc_98_77_15914380 (CInt(&H20))
  loc_1590529:   var_94 = "Member Name"
  loc_159054A:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_159054D:     Exit Sub
  loc_159054E:   End If
  loc_159054E: End If
  loc_1590559: If (global_56 = "Y") Then
  loc_1590575:   Set var_8C = Me.Txt
  loc_159057B:   Call 0.Method_Proc_98_77_15914380 (CInt(&H12), var_90, var_94)
  loc_1590583:   (global_160 = "Credit Card") = var_90.Text
  loc_159059B:   If (var_90 And (var_94 = vbNullString)) Then
  loc_15905A9:     Set var_8C = Me.Txt
  loc_15905AF:     Call 0.Method_Proc_98_77_15914380 (CInt(&H12))
  loc_15905B7:     var_94 = "Credit Card No."
  loc_15905D8:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15905DB:       Exit Sub
  loc_15905DC:     End If
  loc_15905DC:   End If
  loc_15905F5:   Set var_8C = Me.Txt
  loc_15905FB:   Call 0.Method_Proc_98_77_15914380 (CInt(&H13), var_90, var_94)
  loc_1590603:   (global_160 = "Credit Card") = var_90.Text
  loc_159061B:   If (var_90 And (var_94 = vbNullString)) Then
  loc_1590629:     Set var_8C = Me.Txt
  loc_159062F:     Call 0.Method_Proc_98_77_15914380 (CInt(&H13))
  loc_1590637:     var_94 = "Holder's Name"
  loc_1590658:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_159065B:       Exit Sub
  loc_159065C:     End If
  loc_159065C:   End If
  loc_1590675:   Set var_8C = Me.Txt
  loc_159067B:   Call 0.Method_Proc_98_77_15914380 (CInt(3), var_90, var_94)
  loc_1590683:   (global_160 = "Credit Card") = var_90.Text
  loc_159069B:   If (var_90 And (var_94 = vbNullString)) Then
  loc_15906A9:     Set var_8C = Me.Txt
  loc_15906AF:     Call 0.Method_Proc_98_77_15914380 (CInt(3))
  loc_15906B7:     var_94 = "Batch No."
  loc_15906D8:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15906DB:       Exit Sub
  loc_15906DC:     End If
  loc_15906DC:   End If
  loc_15906DC: End If
  loc_15906F5: Set var_8C = Me.Txt
  loc_15906FB: Call 0.Method_Proc_98_77_15914380 (CInt(&H15), var_90, var_94)
  loc_1590703: (global_160 = "Cheque") = var_90.Text
  loc_159071B: If (var_90 And (var_94 = vbNullString)) Then
  loc_1590729:   Set var_8C = Me.Txt
  loc_159072F:   Call 0.Method_Proc_98_77_15914380 (CInt(&H15))
  loc_1590737:   var_94 = "Cheque No."
  loc_1590758:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_159075B:     Exit Sub
  loc_159075C:   End If
  loc_159075C: End If
  loc_1590775: Set var_8C = Me.Txt
  loc_159077B: Call 0.Method_Proc_98_77_15914380 (CInt(&H16), var_90, var_94)
  loc_1590783: (global_160 = "Cheque") = var_90.Text
  loc_159079B: If (var_90 And (var_94 = vbNullString)) Then
  loc_15907A9:   Set var_8C = Me.Txt
  loc_15907AF:   Call 0.Method_Proc_98_77_15914380 (CInt(&H16))
  loc_15907B7:   var_94 = "Cheque Dt."
  loc_15907D8:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15907DB:     Exit Sub
  loc_15907DC:   End If
  loc_15907DC: End If
  loc_15907F5: Set var_8C = Me.Txt
  loc_15907FB: Call 0.Method_Proc_98_77_15914380 (CInt(4), var_90, var_94)
  loc_1590803: (global_160 = "UPI") = var_90.Text
  loc_159081B: If (var_90 And (var_94 = vbNullString)) Then
  loc_1590829:   Set var_8C = Me.Txt
  loc_159082F:   Call 0.Method_Proc_98_77_15914380 (CInt(4))
  loc_1590858:   If (Proc_6_27_EA61EC(var_90, "Txn. No.") = 0) Then
  loc_159085B:     Exit Sub
  loc_159085C:   End If
  loc_159085C: End If
  loc_1590865: If (global_172 = 0) Then
  loc_1590881:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_15908A4:   var_94 = CStr(Me.FGrid.TextMatrix))
  loc_15908BD:   If (var_94 <> vbNullString) Then
  loc_15908DC:     var_AC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0, 3))) 'String
  loc_15908E4:     Set var_90 = Me.FGrid
  loc_15908FE:   End If
  loc_1590918:   var_86 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_1590924: Else
  loc_1590938:   var_86 = CInt(CLng(Me.FGrid.Row))
  loc_1590941: End If
  loc_159094C: var_104 = OpenType
  loc_1590958: If Not (var_104 = 5) Then
  loc_1590964:   If (var_104 = 6) Then
  loc_1590967:   End If
  loc_159096B:   Set var_108 = Me.FGrid
  loc_159098E:   Set var_8C = Me.Txt
  loc_1590994:   Call 0.Method_Proc_98_77_15914380 (CInt(&HF), var_90, var_94, 1, CVar(CLng(var_86)), var_104)
  loc_159099C:   var_86 = var_90.Tag
  loc_15909A4:   var_AC = CVar(var_94) 'String
  loc_15909AB:   LateIdCallSt
  loc_15909C1:   var_BC = CVar(CLng(var_86)) 'Long
  loc_15909C6:   var_DC = 2
  loc_15909DC:   LateIdCallSt
  loc_1590A04:   Set var_8C = Me.Txt
  loc_1590A0A:   Call 0.Method_Proc_98_77_15914380 (CInt(&HF), var_90, var_94, 3, CVar(CLng(var_86)), var_108, global_160)
  loc_1590A12:   var_DC = var_90.Text
  loc_1590A1A:   var_AC = CVar(var_94) 'String
  loc_1590A21:   LateIdCallSt
  loc_1590A37:   var_BC = CVar(CLng(var_86)) 'Long
  loc_1590A3C:   var_DC = 4
  loc_1590A52:   LateIdCallSt
  loc_1590A5E:   var_BC = CVar(CLng(var_86)) 'Long
  loc_1590A63:   var_DC = 5
  loc_1590A79:   LateIdCallSt
  loc_1590AA0:   Set var_8C = Me.Txt
  loc_1590AA6:   Call 0.Method_Proc_98_77_15914380 (CInt(&H10), var_90, var_94, CVar(CLng(6)), CVar(CLng(var_86)), var_108, global_156)
  loc_1590AAE:   var_DC = var_90.Tag
  loc_1590ABD:   LateIdCallSt
  loc_1590AEE:   Set var_8C = Me.Txt
  loc_1590AF4:   Call 0.Method_Proc_98_77_15914380 (CInt(&H10), var_90, var_94, CVar(CLng(7)), CVar(CLng(var_86)), var_108, CVar(var_94))
  loc_1590AFC:   var_BC = var_90.Text
  loc_1590B04:   var_AC = CVar(var_94) 'String
  loc_1590B0B:   LateIdCallSt
  loc_1590B3D:   Set var_8C = Me.Txt
  loc_1590B43:   Call 0.Method_Proc_98_77_15914380 (CInt(&H11), var_90, var_94, 8, CVar(CLng(var_86)), var_108)
  loc_1590B4B:   var_AC = var_90.Text
  loc_1590B53:   var_AC = CVar(var_94) 'String
  loc_1590B5A:   LateIdCallSt
  loc_1590B8C:   Set var_8C = Me.Txt
  loc_1590B92:   Call 0.Method_Proc_98_77_15914380 (CInt(&H19), var_90, var_94, &H11, CVar(CLng(var_86)), var_108)
  loc_1590B9A:   var_AC = var_90.Text
  loc_1590BA2:   var_AC = CVar(var_94) 'String
  loc_1590BA9:   LateIdCallSt
  loc_1590BDA:   Set var_8C = Me.Txt
  loc_1590BE0:   Call 0.Method_Proc_98_77_15914380 (CInt(&H17), var_90, var_94, CVar(CLng(&HE)), CVar(CLng(var_86)), var_108)
  loc_1590BE8:   var_AC = var_90.Text
  loc_1590BF0:   var_AC = CVar(var_94) 'String
  loc_1590BF7:   LateIdCallSt
  loc_1590C14:   If (global_160 = "Credit Card") Then
  loc_1590C36:     Set var_8C = Me.Txt
  loc_1590C3C:     Call 0.Method_Proc_98_77_15914380 (CInt(&H12), var_90, var_94, CVar(CLng(9)), CVar(CLng(var_86)), var_108)
  loc_1590C44:     var_AC = var_90.Text
  loc_1590C4C:     var_AC = CVar(var_94) 'String
  loc_1590C53:     LateIdCallSt
  loc_1590C84:     Set var_8C = Me.Txt
  loc_1590C8A:     Call 0.Method_Proc_98_77_15914380 (CInt(&H13), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_108)
  loc_1590C92:     var_AC = var_90.Text
  loc_1590C9A:     var_AC = CVar(var_94) 'String
  loc_1590CA1:     LateIdCallSt
  loc_1590CD2:     Set var_8C = Me.Txt
  loc_1590CD8:     Call 0.Method_Proc_98_77_15914380 (CInt(&H14), var_90, var_94, CVar(CLng(&HB)), CVar(CLng(var_86)), var_108)
  loc_1590CE0:     var_AC = var_90.Text
  loc_1590CE8:     var_AC = CVar(var_94) 'String
  loc_1590CEF:     LateIdCallSt
  loc_1590D21:     Set var_8C = Me.Txt
  loc_1590D27:     Call 0.Method_Proc_98_77_15914380 (CInt(3), var_90, var_94, &H17, CVar(CLng(var_86)), var_108)
  loc_1590D2F:     var_AC = var_90.Text
  loc_1590D37:     var_AC = CVar(var_94) 'String
  loc_1590D3E:     LateIdCallSt
  loc_1590D53:   Else
  loc_1590D57:     var_BC = CVar(CLng(var_86)) 'Long
  loc_1590D5F:     var_DC = CVar(CLng(9)) 'Long
  loc_1590D64:     var_118 = vbNullString
  loc_1590D6D:     LateIdCallSt
  loc_1590D79:     var_BC = CVar(CLng(var_86)) 'Long
  loc_1590D81:     var_DC = CVar(CLng(&HA)) 'Long
  loc_1590D86:     var_118 = vbNullString
  loc_1590D8F:     LateIdCallSt
  loc_1590D9B:     var_BC = CVar(CLng(var_86)) 'Long
  loc_1590DA3:     var_DC = CVar(CLng(&HB)) 'Long
  loc_1590DA8:     var_118 = vbNullString
  loc_1590DB1:     LateIdCallSt
  loc_1590DBD:     var_BC = CVar(CLng(var_86)) 'Long
  loc_1590DC2:     var_DC = &H17
  loc_1590DCB:     var_118 = vbNullString
  loc_1590DD4:     LateIdCallSt
  loc_1590DDC:   End If
  loc_1590DE7:   If (global_160 = "Cheque") Then
  loc_1590E09:     Set var_8C = Me.Txt
  loc_1590E0F:     Call 0.Method_Proc_98_77_15914380 (CInt(&H15), var_90, var_94, CVar(CLng(&HC)), CVar(CLng(var_86)), var_108, var_118)
  loc_1590E17:     var_DC = var_90.Text
  loc_1590E26:     LateIdCallSt
  loc_1590E57:     Set var_8C = Me.Txt
  loc_1590E5D:     Call 0.Method_Proc_98_77_15914380 (CInt(&H16), var_90, var_94, CVar(CLng(&HD)), CVar(CLng(var_86)), var_108, CVar(var_94))
  loc_1590E65:     var_BC = var_90.Text
  loc_1590E6D:     var_AC = CVar(var_94) 'String
  loc_1590E74:     LateIdCallSt
  loc_1590E89:   Else
  loc_1590E8D:     var_BC = CVar(CLng(var_86)) 'Long
  loc_1590E95:     var_DC = CVar(CLng(&HC)) 'Long
  loc_1590E9A:     var_118 = vbNullString
  loc_1590EA3:     LateIdCallSt
  loc_1590EAF:     var_BC = CVar(CLng(var_86)) 'Long
  loc_1590EB7:     var_DC = CVar(CLng(&HD)) 'Long
  loc_1590EBC:     var_118 = vbNullString
  loc_1590EC5:     LateIdCallSt
  loc_1590ECD:   End If
  loc_1590ED8:   If (global_160 = "UPI") Then
  loc_1590EFA:     Set var_8C = Me.Txt
  loc_1590F00:     Call 0.Method_Proc_98_77_15914380 (CInt(4), var_90, var_94, CVar(CLng(&H1A)), CVar(CLng(var_86)), var_108, var_118)
  loc_1590F08:     var_DC = var_90.Text
  loc_1590F10:     var_AC = CVar(var_94) 'String
  loc_1590F17:     LateIdCallSt
  loc_1590F2C:   Else
  loc_1590F30:     var_BC = CVar(CLng(var_86)) 'Long
  loc_1590F38:     var_DC = CVar(CLng(&H1A)) 'Long
  loc_1590F3D:     var_118 = vbNullString
  loc_1590F46:     LateIdCallSt
  loc_1590F4E:   End If
  loc_1590F59:   If (global_160 = "Staff") Then
  loc_1590F7B:     Set var_8C = Me.Txt
  loc_1590F81:     Call 0.Method_Proc_98_77_15914380 (CInt(&H18), var_90, var_94, CVar(CLng(&HF)), CVar(CLng(var_86)), var_108, var_118)
  loc_1590F89:     var_DC = var_90.Text
  loc_1590F98:     LateIdCallSt
  loc_1590FC9:     Set var_8C = Me.Txt
  loc_1590FCF:     Call 0.Method_Proc_98_77_15914380 (CInt(&H18), var_90, var_94, CVar(CLng(&H10)), CVar(CLng(var_86)), var_108, CVar(var_94))
  loc_1590FD7:     var_BC = var_90.Tag
  loc_1590FDF:     var_AC = CVar(var_94) 'String
  loc_1590FE6:     LateIdCallSt
  loc_1590FFB:   Else
  loc_1590FFF:     var_BC = CVar(CLng(var_86)) 'Long
  loc_1591007:     var_DC = CVar(CLng(&HF)) 'Long
  loc_159100C:     var_118 = vbNullString
  loc_1591015:     LateIdCallSt
  loc_1591021:     var_BC = CVar(CLng(var_86)) 'Long
  loc_1591029:     var_DC = CVar(CLng(&H10)) 'Long
  loc_159102E:     var_118 = vbNullString
  loc_1591037:     LateIdCallSt
  loc_159103F:   End If
  loc_159104A:   If (global_160 = "Company") Then
  loc_159106D:     Set var_8C = Me.Txt
  loc_1591073:     Call 0.Method_Proc_98_77_15914380 (CInt(&H1F), var_90, var_94, &H14, CVar(CLng(var_86)), var_108, var_118)
  loc_159107B:     var_DC = var_90.Tag
  loc_159108A:     LateIdCallSt
  loc_15910BC:     Set var_8C = Me.Txt
  loc_15910C2:     Call 0.Method_Proc_98_77_15914380 (CInt(&H1F), var_90, var_94, &H15, CVar(CLng(var_86)), var_108, CVar(var_94))
  loc_15910CA:     var_BC = var_90.Text
  loc_15910D2:     var_AC = CVar(var_94) 'String
  loc_15910D9:     LateIdCallSt
  loc_15910EE:   Else
  loc_15910F2:     var_BC = CVar(CLng(var_86)) 'Long
  loc_15910F7:     var_DC = &H14
  loc_1591100:     var_118 = vbNullString
  loc_1591109:     LateIdCallSt
  loc_1591115:     var_BC = CVar(CLng(var_86)) 'Long
  loc_159111A:     var_DC = &H15
  loc_1591123:     var_118 = vbNullString
  loc_159112C:     LateIdCallSt
  loc_1591134:   End If
  loc_159113F:   If (global_160 = "Member") Then
  loc_1591162:     Set var_8C = Me.Txt
  loc_1591168:     Call 0.Method_Proc_98_77_15914380 (CInt(&H20), var_90, var_94, &H18, CVar(CLng(var_86)), var_108, var_118)
  loc_1591170:     var_DC = var_90.Tag
  loc_159117F:     LateIdCallSt
  loc_15911B1:     Set var_8C = Me.Txt
  loc_15911B7:     Call 0.Method_Proc_98_77_15914380 (CInt(&H20), var_90, var_94, &H19, CVar(CLng(var_86)), var_108, CVar(var_94))
  loc_15911BF:     var_BC = var_90.Text
  loc_15911C7:     var_AC = CVar(var_94) 'String
  loc_15911CE:     LateIdCallSt
  loc_15911E3:   Else
  loc_15911E7:     var_BC = CVar(CLng(var_86)) 'Long
  loc_15911EC:     var_DC = &H18
  loc_15911F5:     var_118 = vbNullString
  loc_15911FE:     LateIdCallSt
  loc_159120A:     var_BC = CVar(CLng(var_86)) 'Long
  loc_159120F:     var_DC = &H19
  loc_1591218:     var_118 = vbNullString
  loc_1591221:     LateIdCallSt
  loc_1591229:   End If
  loc_1591234:   If (global_160 = "Room") Then
  loc_159123B:     var_CC = CVar(CLng(var_86)) 'Long
  loc_1591240:     var_EC = &H16
  loc_1591266:     var_90 = Me.Fields.Item("FolioNoDocid")
  loc_159127E:     LateIdCallSt
  loc_15912B4:     Set var_8C = Me.Txt
  loc_15912BA:     Call 0.Method_Proc_98_77_15914380 (CInt(&H1E), var_90, var_94, &H12, CVar(CLng(var_86)), var_108, CVar(CStr(var_90.Value)))
  loc_15912C2:     var_EC = var_90.Tag
  loc_15912D1:     LateIdCallSt
  loc_1591303:     Set var_8C = Me.Txt
  loc_1591309:     Call 0.Method_Proc_98_77_15914380 (CInt(&H1E), var_90, var_94, &H13, CVar(CLng(var_86)), var_108, CVar(var_94))
  loc_1591311:     var_CC = var_90.Text
  loc_1591319:     var_AC = CVar(var_94) 'String
  loc_1591320:     LateIdCallSt
  loc_1591335:   Else
  loc_1591339:     var_BC = CVar(CLng(var_86)) 'Long
  loc_159133E:     var_DC = &H16
  loc_1591347:     var_118 = vbNullString
  loc_1591350:     LateIdCallSt
  loc_159135C:     var_BC = CVar(CLng(var_86)) 'Long
  loc_1591361:     var_DC = &H12
  loc_159136A:     var_118 = vbNullString
  loc_1591373:     LateIdCallSt
  loc_159137F:     var_BC = CVar(CLng(var_86)) 'Long
  loc_1591384:     var_DC = &H13
  loc_159138D:     var_118 = vbNullString
  loc_1591396:     LateIdCallSt
  loc_159139E:   End If
  loc_15913A0:   Set var_108 = Nothing 
  loc_15913A4: End If
  loc_15913A4: Call Proc_98_79_107CDCC(var_108, var_118, var_DC, var_BC, var_108, var_118, var_DC, var_BC)
  loc_15913B7: Set var_8C = Me.LTxt
  loc_15913BD: Call 0.Method_Proc_98_77_15914380 (CInt(&H1C), var_90, var_94, var_108, var_118)
  loc_15913C5: var_DC = var_90.Caption
  loc_15913FB: If (((CDbl(Val(var_94)) = CDbl(0)) And (global_120 = 5)) Or (global_120 = 6)) Then
  loc_15913FE:   Call TopCtrl1_UnknownEvent_16()
  loc_1591403:   Exit Sub
  loc_1591404: End If
  loc_1591404: Call Proc_98_78_101C3E4(var_BC, var_108)
  loc_1591414: Set var_8C = Me.Txt
  loc_159141A: Call 0.Method_Proc_98_77_15914380 (CInt(&HF), var_90)
  loc_1591422: var_90.SetFocus
  loc_1591433: global_172 = 0
  loc_1591436: Exit Sub
End Sub

Public Sub Proc_98_78_101C3E4
  'Data Table: 5495F0
  Dim var_8C As TextBox
  loc_101C1BE: Set var_88 = Me.Txt
  loc_101C1C4: Call 0.Method_Proc_98_78_101C3E40 (CInt(&HF), var_8C)
  loc_101C1CC: var_8C.Text = vbNullString
  loc_101C1E6: Set var_88 = Me.Txt
  loc_101C1EC: Call 0.Method_Proc_98_78_101C3E40 (CInt(&H11), var_8C)
  loc_101C1F4: var_8C.Text = vbNullString
  loc_101C20E: Set var_88 = Me.Txt
  loc_101C214: Call 0.Method_Proc_98_78_101C3E40 (CInt(&H19), var_8C)
  loc_101C21C: var_8C.Text = vbNullString
  loc_101C236: Set var_88 = Me.Txt
  loc_101C23C: Call 0.Method_Proc_98_78_101C3E40 (CInt(&H18), var_8C)
  loc_101C244: var_8C.Text = vbNullString
  loc_101C25E: Set var_88 = Me.Txt
  loc_101C264: Call 0.Method_Proc_98_78_101C3E40 (CInt(&H17), var_8C)
  loc_101C26C: var_8C.Text = vbNullString
  loc_101C286: Set var_88 = Me.Txt
  loc_101C28C: Call 0.Method_Proc_98_78_101C3E40 (CInt(&H12), var_8C)
  loc_101C294: var_8C.Text = vbNullString
  loc_101C2AE: Set var_88 = Me.Txt
  loc_101C2B4: Call 0.Method_Proc_98_78_101C3E40 (CInt(&H13), var_8C)
  loc_101C2BC: var_8C.Text = vbNullString
  loc_101C2D6: Set var_88 = Me.Txt
  loc_101C2DC: Call 0.Method_Proc_98_78_101C3E40 (CInt(&H14), var_8C)
  loc_101C2E4: var_8C.Text = vbNullString
  loc_101C2FE: Set var_88 = Me.Txt
  loc_101C304: Call 0.Method_Proc_98_78_101C3E40 (CInt(3), var_8C)
  loc_101C30C: var_8C.Text = vbNullString
  loc_101C326: Set var_88 = Me.Txt
  loc_101C32C: Call 0.Method_Proc_98_78_101C3E40 (CInt(&H15), var_8C)
  loc_101C334: var_8C.Text = vbNullString
  loc_101C34E: Set var_88 = Me.Txt
  loc_101C354: Call 0.Method_Proc_98_78_101C3E40 (CInt(&H16), var_8C)
  loc_101C35C: var_8C.Text = vbNullString
  loc_101C376: Set var_88 = Me.Txt
  loc_101C37C: Call 0.Method_Proc_98_78_101C3E40 (CInt(&H1F), var_8C)
  loc_101C384: var_8C.Text = vbNullString
  loc_101C39E: Set var_88 = Me.Txt
  loc_101C3A4: Call 0.Method_Proc_98_78_101C3E40 (CInt(&H20), var_8C)
  loc_101C3AC: var_8C.Text = vbNullString
  loc_101C3C6: Set var_88 = Me.Txt
  loc_101C3CC: Call 0.Method_Proc_98_78_101C3E40 (CInt(4), var_8C)
  loc_101C3D4: var_8C.Text = vbNullString
  loc_101C3E0: Exit Sub
End Sub

Public Sub Proc_98_79_107CDCC
  'Data Table: 5495F0
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
  Dim var_14C As String
  Dim var_148 As Label
  Dim var_144 As Variant
  Dim var_160 As Label
  loc_107CB56: Set var_8C = Me.LTxt
  loc_107CB5C: Call 0.Method_Proc_98_79_107CDCC0 (CInt(&H1B), var_90)
  loc_107CB64: var_90.Caption = vbNullString
  loc_107CB95: For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A4 'Integer
  loc_107CBA9:   Set var_8C = Me.LTxt
  loc_107CBAF:   Call 0.Method_Proc_98_79_107CDCC0 (CInt(&H1B), var_90)
  loc_107CBCB:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_107CBD0:   var_D8 = 8
  loc_107CBF6:   var_15C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_107CC15:   var_110 = CVar((Val(var_90.Caption) + var_15C)) 'Double
  loc_107CC33:   Set var_144 = Me.LTxt
  loc_107CC39:   Call 0.Method_Proc_98_79_107CDCC0 (CInt(&H1B), var_148, CStr(Format(var_110, "0.00")), 1, 1)
  loc_107CC41:   var_148.Caption = var_15C
  loc_107CC6A: Next var_A4 'Integer
  loc_107CC7D: Set var_8C = Me.LTxt
  loc_107CC83: Call 0.Method_Proc_98_79_107CDCC0 (CInt(&H1A), var_90)
  loc_107CC8B: var_A8 = var_90.Caption
  loc_107CCA9: Set var_EC = Me.LTxt
  loc_107CCAF: Call 0.Method_Proc_98_79_107CDCC0 (CInt(&H1B), var_144)
  loc_107CCB7: var_F0 = var_144.Caption
  loc_107CCE3: var_A0 = CVar((Val(var_A8) - Val(var_F0))) 'Double
  loc_107CD01: Set var_148 = Me.LTxt
  loc_107CD07: Call 0.Method_Proc_98_79_107CDCC0 (CInt(&H1C), var_160, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1)
  loc_107CD0F: var_160.Caption = 1
  loc_107CD43: Set var_EC = Me.Txt
  loc_107CD49: Call 0.Method_Proc_98_79_107CDCC0 (CInt(&H19), var_144, var_F0)
  loc_107CD51: var_15C = var_144.Text
  loc_107CD5E: var_154 = Val(var_F0)
  loc_107CD6F: Set var_8C = Me.LTxt
  loc_107CD75: Call 0.Method_Proc_98_79_107CDCC0 (CInt(&H1B), var_90, var_A8)
  loc_107CD90: var_14C = CStr((Val(var_A8) + var_90.Caption))
  loc_107CD9E: Set var_148 = Me.LTxt
  loc_107CDA4: Call 0.Method_Proc_98_79_107CDCC0 (CInt(&H1D), var_160)
  loc_107CDAC: var_160.Caption = CStr(Format(Me.FGrid.TextMatrix), "0.00"))
  loc_107CDC9: Exit Sub
End Sub

Public Sub Proc_98_80_140F224
  'Data Table: 5495F0
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As MSHFlexGrid
  Dim var_EC As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_158 As Variant
  Dim var_200 As TextBox
  loc_140E7E7: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140E7EC: var_C8 = 1
  loc_140E823: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_140E82A:   Set var_F4 = Me.FGrid
  loc_140E86A:   Set var_DC = Me.Txt
  loc_140E870:   Call 0.Method_Proc_98_80_140F2240 (CInt(&HF), var_F8, CStr(var_F4.TextMatrix)), 1)
  loc_140E878:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_140E8A3:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140E8A8:   var_C8 = 2
  loc_140E8C5:   global_160 = CStr(var_F4.TextMatrix))
  loc_140E8EE:   var_C8 = 3
  loc_140E913:   Set var_DC = Me.Txt
  loc_140E919:   Call 0.Method_Proc_98_80_140F2240 (CInt(&HF), var_F8, CStr(var_F4.TextMatrix)), var_C8, CVar(CLng(Me.FGrid.Row)))
  loc_140E921:   var_F8.Text = var_C8
  loc_140E94C:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140E951:   var_C8 = 4
  loc_140E96E:   global_152 = CStr(var_F4.TextMatrix))
  loc_140E992:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140E997:   var_C8 = 5
  loc_140E9B4:   global_156 = CStr(var_F4.TextMatrix))
  loc_140E9D8:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140EA01:   Set var_DC = Me.Txt
  loc_140EA07:   Call 0.Method_Proc_98_80_140F2240 (CInt(&H10), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(6)), var_A8, CVar(CLng(6)))
  loc_140EA0F:   var_F8.Tag = var_A8
  loc_140EA3A:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140EA42:   var_C8 = CVar(CLng(7)) 'Long
  loc_140EA79:   var_158 = var_F4.TextMatrix)
  loc_140EA89:   Set var_F8 = Me.FGrid
  loc_140EAE7:   Set var_1FC = Me.Txt
  loc_140EAED:   Call 0.Method_Proc_98_80_140F2240 (CInt(&H10), var_200, CStr(IIf((CStr(var_F4.TextMatrix)) = vbNullString), CVar(CStr(var_158)), CVar(CStr(var_F4.TextMatrix))))), CVar(CLng(7)), CVar(CLng(var_F8.Row)), var_158, CVar(CLng(6)))
  loc_140EAF5:   var_200.Text = CVar(CLng(Me.FGrid.Row))
  loc_140EB3D:   var_C8 = 8
  loc_140EB49:   var_EC = var_F4.TextMatrix)
  loc_140EB62:   Set var_DC = Me.Txt
  loc_140EB68:   Call 0.Method_Proc_98_80_140F2240 (CInt(&H11), var_F8, CStr(var_EC), var_C8, CVar(CLng(Me.FGrid.Row)), var_EC)
  loc_140EB70:   var_F8.Text = var_C8
  loc_140EB9B:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140EBC4:   Set var_DC = Me.Txt
  loc_140EBCA:   Call 0.Method_Proc_98_80_140F2240 (CInt(&H12), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(9)), var_A8)
  loc_140EBD2:   var_F8.Text = var_A8
  loc_140EC26:   Set var_DC = Me.Txt
  loc_140EC2C:   Call 0.Method_Proc_98_80_140F2240 (CInt(&H13), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HA)))
  loc_140EC34:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140EC88:   Set var_DC = Me.Txt
  loc_140EC8E:   Call 0.Method_Proc_98_80_140F2240 (CInt(&H14), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HB)))
  loc_140EC96:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140ECEB:   Set var_DC = Me.Txt
  loc_140ECF1:   Call 0.Method_Proc_98_80_140F2240 (CInt(3), var_F8, CStr(var_F4.TextMatrix)), &H17)
  loc_140ECF9:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140ED4D:   Set var_DC = Me.Txt
  loc_140ED53:   Call 0.Method_Proc_98_80_140F2240 (CInt(&H15), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HC)))
  loc_140ED5B:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140EDAF:   Set var_DC = Me.Txt
  loc_140EDB5:   Call 0.Method_Proc_98_80_140F2240 (CInt(&H16), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HD)))
  loc_140EDBD:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140EE11:   Set var_DC = Me.Txt
  loc_140EE17:   Call 0.Method_Proc_98_80_140F2240 (CInt(4), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H1A)))
  loc_140EE1F:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140EE73:   Set var_DC = Me.Txt
  loc_140EE79:   Call 0.Method_Proc_98_80_140F2240 (CInt(&H17), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HE)))
  loc_140EE81:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140EED5:   Set var_DC = Me.Txt
  loc_140EEDB:   Call 0.Method_Proc_98_80_140F2240 (CInt(&H18), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HF)))
  loc_140EEE3:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140EF37:   Set var_DC = Me.Txt
  loc_140EF3D:   Call 0.Method_Proc_98_80_140F2240 (CInt(&H18), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H10)))
  loc_140EF45:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_140EF9A:   Set var_DC = Me.Txt
  loc_140EFA0:   Call 0.Method_Proc_98_80_140F2240 (CInt(&H19), var_F8, CStr(var_F4.TextMatrix)), &H11)
  loc_140EFA8:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140EFFD:   Set var_DC = Me.Txt
  loc_140F003:   Call 0.Method_Proc_98_80_140F2240 (CInt(&H1E), var_F8, CStr(var_F4.TextMatrix)), &H12)
  loc_140F00B:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_140F060:   Set var_DC = Me.Txt
  loc_140F066:   Call 0.Method_Proc_98_80_140F2240 (CInt(&H1E), var_F8, CStr(var_F4.TextMatrix)), &H13)
  loc_140F06E:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140F0C3:   Set var_DC = Me.Txt
  loc_140F0C9:   Call 0.Method_Proc_98_80_140F2240 (CInt(&H1F), var_F8, CStr(var_F4.TextMatrix)), &H14)
  loc_140F0D1:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_140F126:   Set var_DC = Me.Txt
  loc_140F12C:   Call 0.Method_Proc_98_80_140F2240 (CInt(&H1F), var_F8, CStr(var_F4.TextMatrix)), &H15)
  loc_140F134:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140F189:   Set var_DC = Me.Txt
  loc_140F18F:   Call 0.Method_Proc_98_80_140F2240 (CInt(&H20), var_F8, CStr(var_F4.TextMatrix)), &H18)
  loc_140F197:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_140F1EC:   Set var_DC = Me.Txt
  loc_140F1F2:   Call 0.Method_Proc_98_80_140F2240 (CInt(&H20), var_F8, CStr(var_F4.TextMatrix)), &H19)
  loc_140F1FA:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140F217:   global_172 = &HFF
  loc_140F21C:   Set var_F4 = Nothing 
  loc_140F220: End If
  loc_140F220: Exit Sub
End Sub

Public Sub Proc_98_81_EE4848
  'Data Table: 5495F0
  loc_EE4796: On Error Goto loc_EE47DC
  loc_EE47AE: Call 0.Method_arg_18C (var_8C)
  loc_EE47B6: Call var_8C.Show
  loc_EE47CB: Call 0.Method_arg_188 (var_B0)
  loc_EE47D3: var_88 = var_B0
  loc_EE47D6: Proc_98_81_EE4848 = 1
  loc_EE47DC: ' Referenced from: EE4796
  loc_EE47E4: Set var_8C = Err()
  loc_EE47EA: Call 0.Method_arg_1C (var_B4)
  loc_EE47FB: If (var_B4 <> 0) Then
  loc_EE4806:   Set var_8C = Err()
  loc_EE480C:   Call 0.Method_arg_2C (var_B0)
  loc_EE482D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE4840: End If
  loc_EE4840: Proc_98_81_EE4848 = 
End Sub
