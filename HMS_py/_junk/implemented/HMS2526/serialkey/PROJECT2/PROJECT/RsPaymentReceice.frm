VERSION 5.00
Begin VB.Form RsPaymentReceice
  Caption = "Payment Receive Entry (POS)"
  BackColor = &HFFC0FF&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "RsPaymentReceice.frx":0
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
    Left = 1275
    Top = 7200
    Width = 6210
    Height = 315
    Visible = 0   'False
    TabIndex = 59
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 17
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 0
      Width = 5025
      Height = 285
      TabIndex = 17
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
      ForeColor = &HC00000&
      Left = -15
      Top = 15
      Width = 795
      Height = 240
      TabIndex = 60
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
  Begin DataGrid DGAgAc
    Left = 14640
    Top = 5295
    Width = 5385
    Height = 2160
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 57
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2340
    Top = 1110
    Width = 5025
    Height = 285
    TabIndex = 1
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
  Begin DataGrid DGRoom
    Left = 14640
    Top = 4935
    Width = 2355
    Height = 2430
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 25
  End
  Begin DataGrid DGCompany
    Left = 14655
    Top = 4560
    Width = 4215
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 26
  End
  Begin DataGrid DGEmp
    Left = 14640
    Top = 4200
    Width = 4170
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 24
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 6915
    Height = 450
    TabIndex = 53
  End
  Begin Frame FrRest
    BackColor = &HC9E2F5&
    Left = 1230
    Top = 1425
    Width = 6210
    Height = 945
    TabIndex = 48
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 3
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 5505
      Top = 0
      Width = 630
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
      Index = 2
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4080
      Top = 0
      Width = 1395
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
      Index = 1
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 0
      Width = 1605
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
      Index = 6
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 630
      Width = 1600
      Height = 285
      TabIndex = 6
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
      ForeColor = &HC00000&
      Left = 1110
      Top = 315
      Width = 5025
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
    Begin Label Lbl
      Caption = "Date"
      Index = 0
      ForeColor = &HC00000&
      Left = 3570
      Top = 15
      Width = 435
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
    Begin Label Lbl
      Caption = "Vr. No."
      Index = 37
      ForeColor = &HC00000&
      Left = 0
      Top = 30
      Width = 645
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
    Begin Label LblName
      Caption = "Amount"
      Index = 14
      ForeColor = &HC00000&
      Left = 0
      Top = 660
      Width = 735
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
    Begin Label LblName
      Caption = "Type"
      Index = 13
      ForeColor = &HC00000&
      Left = 0
      Top = 330
      Width = 465
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
  End
  Begin Frame FrMember
    BackColor = &HC9E2F5&
    Left = 1275
    Top = 6255
    Width = 6210
    Height = 315
    Visible = 0   'False
    TabIndex = 45
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 14
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 15
      Width = 5025
      Height = 285
      TabIndex = 14
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
  End
  Begin Frame FrRem
    BackColor = &HC9E2F5&
    Left = 1230
    Top = 2370
    Width = 6210
    Height = 315
    Visible = 0   'False
    TabIndex = 41
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 18
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 0
      Width = 5025
      Height = 285
      TabIndex = 18
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
  End
  Begin Frame FrChqDet
    BackColor = &HC9E2F5&
    Left = 1275
    Top = 5325
    Width = 6210
    Height = 630
    Visible = 0   'False
    TabIndex = 38
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 11
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 0
      Width = 1600
      Height = 285
      TabIndex = 11
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
      Index = 12
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 315
      Width = 1600
      Height = 285
      TabIndex = 12
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
      Top = 15
      Width = 1110
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
    Begin Label LblName
      Caption = "Cheque Dt."
      Index = 16
      ForeColor = &HC00000&
      Left = -15
      Top = 330
      Width = 1050
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
  Begin Frame FrSendRoom
    BackColor = &HC9E2F5&
    Left = 1275
    Top = 6885
    Width = 6210
    Height = 315
    Visible = 0   'False
    TabIndex = 36
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 16
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 15
      Width = 1600
      Height = 285
      TabIndex = 16
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
  Begin Frame FrEmp
    BackColor = &HC9E2F5&
    Left = 1275
    Top = 6570
    Width = 6210
    Height = 315
    Visible = 0   'False
    TabIndex = 34
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 15
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 15
      Width = 5025
      Height = 285
      TabIndex = 15
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
  Begin Frame FrComp
    BackColor = &HC9E2F5&
    Left = 1275
    Top = 5940
    Width = 6210
    Height = 315
    Visible = 0   'False
    TabIndex = 32
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 13
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
      Caption = "Company"
      Index = 27
      ForeColor = &HC00000&
      Left = 0
      Top = 0
      Width = 900
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
  End
  Begin Frame FrCCDet
    BackColor = &HC9E2F5&
    Left = 1230
    Top = 2685
    Width = 6210
    Height = 945
    Visible = 0   'False
    TabIndex = 28
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 10
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4530
      Top = 630
      Width = 1600
      Height = 285
      TabIndex = 10
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
      Index = 7
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 0
      Width = 5025
      Height = 285
      TabIndex = 7
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
      ForeColor = &HC00000&
      Left = 1110
      Top = 315
      Width = 5025
      Height = 285
      TabIndex = 8
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
      Index = 9
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 630
      Width = 1600
      Height = 285
      TabIndex = 9
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
    Begin Label LblName
      Caption = "C.C. No."
      Index = 18
      ForeColor = &HC00000&
      Left = 0
      Top = 30
      Width = 765
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
      Caption = "Holder"
      Index = 19
      ForeColor = &HC00000&
      Left = 0
      Top = 345
      Width = 630
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
      Caption = "Exp.Dt."
      Index = 20
      ForeColor = &HC00000&
      Left = 0
      Top = 660
      Width = 675
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
  End
  Begin DataGrid DGPayType
    Left = 14640
    Top = 3840
    Width = 4995
    Height = 2300
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 22
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
    TabIndex = 21
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
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 50
    Locked = -1  'True
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 1275
    Top = 4080
    Width = 6105
    Height = 1230
    TabIndex = 20
  End
  Begin MSFlexGrid FGPoint
    Left = 14100
    Top = 615
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 43
  End
  Begin DataGrid DGMember
    Left = 14640
    Top = 3480
    Width = 6735
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 47
  End
  Begin MSHFlexGrid GridSel
    Left = 7695
    Top = 1440
    Width = 6495
    Height = 5985
    TabIndex = 19
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 480
    Width = 180
    Height = 540
    TabIndex = 58
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
  Begin Label Lbl
    Caption = "Party"
    Index = 1
    ForeColor = &HC00000&
    Left = 1230
    Top = 1155
    Width = 495
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4395
    Top = 7920
    Width = 2790
    Height = 285
    TabIndex = 52
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
    TabIndex = 50
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
  Begin Label Label1
    Caption = "Press Ctrl+S to Save"
    Index = 0
    ForeColor = &HFF0000&
    Left = 240
    Top = 75
    Width = 2970
    Height = 300
    TabIndex = 27
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
    Left = 6120
    Top = 600
    Width = 675
    Height = 240
    Visible = 0   'False
    TabIndex = 23
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
  Begin Menu popup
    Visible = 0   'False
    Caption = ""
    Begin Menu Del
      Caption = "Delete"
    End
  End
End

Attribute VB_Name = "RsPaymentReceice"

Private global_196 As Double
Private global_164 As Integer
Private global_184 As Double
Private global_116 As Long
Private global_120 As Long
Private global_144 As Double
Private global_112 As Long
Private global_176 As Integer

Private Sub Txt_GotFocus(Index As Integer) '1515464
  'Data Table: 539FB8
  Dim var_92 As Integer
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_8C As TextBox
  Dim var_B8 As Variant
  Dim var_A0 As Variant
  Dim Me As Variant
  Dim var_F4 As Variant
  Dim var_88 As Frame
  loc_151454E: Set var_88 = Me.Txt
  loc_1514554: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1514562: Proc_6_74_E23240(var_8C)
  loc_151456E: Call Proc_339_73_F70BAC(var_8C)
  loc_1514576: var_92 = Index
  loc_1514581: If (var_92 = CInt(5)) Then
  loc_15145A4:   Set var_A0 = Me.Txt
  loc_15145AA:   Call 0.Method_Txt_GotFocus0 (CInt(5), var_A4)
  loc_15145C5:   Set var_88 = Me.Txt
  loc_15145CB:   Call 0.Method_Txt_GotFocus0 (CInt(5), var_8C)
  loc_15145E3:   var_B8 = CVar(((var_8C.Top + Me.FrRest.Top) + var_A4.Height)) 'Single
  loc_15145F2:   Me.DGPayType.Top = var_B8
  loc_1514626:   Set var_88 = Me.Txt
  loc_151462C:   Call 0.Method_Txt_GotFocus0 (CInt(5), var_8C)
  loc_1514640:   var_B8 = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_151464F:   Me.DGPayType.Left = var_B8
  loc_1514676:   If (Me.RecordCount > 0) Then
  loc_1514684:     Set var_8C = Me.FGPoint
  loc_151469C:     Proc_6_137_1192FDC(Me.DGPayType, global_68, Index)
  loc_15146AA:   End If
  loc_15146F8:   Set var_88 = Me.Txt
  loc_15146FE:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_1514706:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_151471E:   If (var_8C Or (var_D4 = vbNullString)) Then
  loc_1514721:     Exit Sub
  loc_1514722:   End If
  loc_151472F:   Set var_88 = Me.Txt
  loc_1514735:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_151473D:   var_D4 = var_8C.Text
  loc_151474F:   var_B8 = "Name"
  loc_1514766:   var_A0 = Me.Fields.Item(var_B8)
  loc_151478A:   If CBool(CVar(var_D4) <> var_A0.Value) Then
  loc_1514793:     Me.MoveFirst
  loc_15147B6:     Set var_88 = Me.Txt
  loc_15147BC:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name ='")
  loc_15147C4:     0 = var_8C.Text
  loc_15147DD:     Me.Find 1 & var_D4 & "'", var_B8, var_92
  loc_15147F2:   End If
  loc_15147F5: Else
  loc_15147FD:   If (var_92 = CInt(4)) Then
  loc_151480E:     Set var_90 = Me.Txt
  loc_1514814:     Call 0.Method_Txt_GotFocus0 (CInt(4), var_A0)
  loc_151482F:     Set var_88 = Me.Txt
  loc_1514835:     Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_1514849:     var_B8 = CVar((var_8C.Top + var_A0.Height)) 'Single
  loc_1514852:     Set var_A4 = Me.DGAgAc
  loc_1514858:     var_A4.Top = var_B8
  loc_1514878:     Set var_88 = Me.Txt
  loc_151487E:     Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_1514897:     Set var_90 = Me.DGAgAc
  loc_151489D:     var_90.Left = CVar(var_8C.Left)
  loc_15148C5:     If (Me.var_90.RecordCount > 0) Then
  loc_15148D3:       Set var_8C = Me.FGPoint
  loc_15148EF:       Proc_6_137_1192FDC(Me.DGAgAc, global_92)
  loc_15148FD:     End If
  loc_1514954:     Set var_88 = Me.Txt
  loc_151495A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_1514962:     ((global_92.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_151497A:     If (Index Or (var_D4 = vbNullString)) Then
  loc_151498A:       Set var_88 = Me.Txt
  loc_1514990:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1514998:       var_8C.Tag = vbNullString
  loc_15149A4:       Exit Sub
  loc_15149A5:     End If
  loc_15149B2:     Set var_88 = Me.Txt
  loc_15149B8:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15149CB:     global_168 = var_8C.Text
  loc_15149E6:     Set var_88 = Me.Txt
  loc_15149EC:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15149F4:     var_D4 = var_8C.Text
  loc_1514A06:     var_B8 = "Name"
  loc_1514A44:     If CBool(CVar(var_D4) <> Me.Recordset15.Fields.Item(var_B8).Value) Then
  loc_1514A50:       Me.Recordset15.MoveFirst
  loc_1514A73:       Set var_88 = Me.Txt
  loc_1514A79:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name='")
  loc_1514A81:       0 = var_8C.Text
  loc_1514A9D:       Me.Recordset15.Find 1 & var_D4 & "'", var_B8, var_8C
  loc_1514AB2:     End If
  loc_1514AB5:   Else
  loc_1514ABD:     If (var_92 = CInt(&HF)) Then
  loc_1514AD7:       If (Me.RecordCount > 0) Then
  loc_1514AE5:         Set var_8C = Me.FGPoint
  loc_1514AFD:         Proc_6_137_1192FDC(Me.DGEmp, global_72)
  loc_1514B0B:       End If
  loc_1514B59:       Set var_88 = Me.Txt
  loc_1514B5F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_1514B67:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1514B7F:       If (Index Or (var_D4 = vbNullString)) Then
  loc_1514B82:         Exit Sub
  loc_1514B83:       End If
  loc_1514B90:       Set var_88 = Me.Txt
  loc_1514B96:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1514B9E:       var_D4 = var_8C.Text
  loc_1514BB0:       var_B8 = "Name"
  loc_1514BEB:       If CBool(CVar(var_D4) <> Me.Fields.Item(var_B8).Value) Then
  loc_1514BF4:         Me.MoveFirst
  loc_1514C17:         Set var_88 = Me.Txt
  loc_1514C1D:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name ='")
  loc_1514C25:         0 = var_8C.Text
  loc_1514C3E:         Me.Find 1 & var_D4 & "'", var_B8, var_8C
  loc_1514C53:       End If
  loc_1514C56:     Else
  loc_1514C5E:       If (var_92 = CInt(&H10)) Then
  loc_1514C81:         Set var_A0 = Me.Txt
  loc_1514C87:         Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_A4)
  loc_1514CA2:         Set var_88 = Me.Txt
  loc_1514CA8:         Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_1514CC0:         var_B8 = CVar(((var_8C.Top + Me.FrSendRoom.Top) + var_A4.Height)) 'Single
  loc_1514CCF:         Me.DGRoom.Top = var_B8
  loc_1514D03:         Set var_88 = Me.Txt
  loc_1514D09:         Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_1514D1D:         var_B8 = CVar((var_8C.Left + Me.FrSendRoom.Left)) 'Single
  loc_1514D2C:         Me.DGRoom.Left = var_B8
  loc_1514D53:         If (Me.RecordCount > 0) Then
  loc_1514D61:           Set var_8C = Me.FGPoint
  loc_1514D79:           Proc_6_137_1192FDC(Me.DGRoom, global_76)
  loc_1514D87:         End If
  loc_1514DD5:         Set var_88 = Me.Txt
  loc_1514DDB:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_1514DE3:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1514DFB:         If (Index Or (var_D4 = vbNullString)) Then
  loc_1514DFE:           Exit Sub
  loc_1514DFF:         End If
  loc_1514E0C:         Set var_88 = Me.Txt
  loc_1514E12:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1514E1A:         var_D4 = var_8C.Text
  loc_1514E22:         var_F4 = CVar(var_D4) 'String
  loc_1514E3B:         var_90 = Me.Fields
  loc_1514E67:         If CBool(var_F4 <> var_90.Item("Name").Value) Then
  loc_1514E70:           Me.MoveFirst
  loc_1514E95:           Set var_88 = Me.Txt
  loc_1514E9B:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name =")
  loc_1514EA3:           0 = var_8C.Text
  loc_1514EB1:           Proc_6_17_EAAE40(var_F4, CVar(var_D4), 1)
  loc_1514EC7:           Me.Find CStr(var_C8 & var_F4), var_8C, 
  loc_1514EDF:         End If
  loc_1514EE2:       Else
  loc_1514EEA:         If (var_92 = CInt(&HD)) Then
  loc_1514EFB:           Set var_8C = Me.Txt
  loc_1514F01:           Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_90)
  loc_1514F27:           var_B8 = CVar((Me.FrComp.Top + var_90.Height)) 'Single
  loc_1514F36:           Me.DGCompany.Top = "Name ="
  loc_1514F78:           Set var_88 = Me.Txt
  loc_1514F7E:           Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_8C)
  loc_1514F96:           var_B8 = CVar(((var_8C.Left + Me.FrRest.Left) + Me.FrComp.Left)) 'Single
  loc_1514FA5:           Me.DGCompany.Left = "Name ="
  loc_1514FCE:           If (Me.RecordCount > 0) Then
  loc_1514FDC:             Set var_8C = Me.FGPoint
  loc_1514FF4:             Proc_6_137_1192FDC(Me.DGCompany, global_84)
  loc_1515002:           End If
  loc_1515050:           Set var_88 = Me.Txt
  loc_1515056:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_151505E:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1515076:           If (Index Or (var_D4 = vbNullString)) Then
  loc_1515079:             Exit Sub
  loc_151507A:           End If
  loc_1515087:           Set var_88 = Me.Txt
  loc_151508D:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1515095:           var_D4 = var_8C.Text
  loc_151509D:           var_F4 = CVar(var_D4) 'String
  loc_15150B6:           var_90 = Me.Fields
  loc_15150E2:           If CBool(var_F4 <> var_90.Item("Name").Value) Then
  loc_15150EB:             Me.MoveFirst
  loc_1515110:             Set var_88 = Me.Txt
  loc_1515116:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name =")
  loc_151511E:             0 = var_8C.Text
  loc_151512C:             Proc_6_17_EAAE40(var_F4, CVar(var_D4), 1)
  loc_1515142:             Me.Find CStr(var_C8 & var_F4), var_8C, 
  loc_151515A:           End If
  loc_151515D:         Else
  loc_1515165:           If (var_92 = CInt(&HE)) Then
  loc_1515176:             Set var_8C = Me.Txt
  loc_151517C:             Call 0.Method_Txt_GotFocus0 (CInt(&HE), var_90)
  loc_15151A2:             var_B8 = CVar((Me.FrMember.Top + var_90.Height)) 'Single
  loc_15151B1:             Me.DGMember.Top = "Name ="
  loc_15151F3:             Set var_88 = Me.Txt
  loc_15151F9:             Call 0.Method_Txt_GotFocus0 (CInt(&HE), var_8C)
  loc_1515216:             var_B8 = CVar((((var_8C.Left + Me.FrRest.Left) + Me.FrMember.Left) - CDbl(1260))) 'Single
  loc_1515225:             Me.DGMember.Left = "Name ="
  loc_151524E:             If (Me.RecordCount > 0) Then
  loc_151525C:               Set var_8C = Me.FGPoint
  loc_1515274:               Proc_6_137_1192FDC(Me.DGMember, global_88)
  loc_1515282:             End If
  loc_15152D0:             Set var_88 = Me.Txt
  loc_15152D6:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_15152DE:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15152F6:             If (Index Or (var_D4 = vbNullString)) Then
  loc_15152F9:               Exit Sub
  loc_15152FA:             End If
  loc_1515307:             Set var_88 = Me.Txt
  loc_151530D:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1515315:             var_D4 = var_8C.Text
  loc_151531D:             var_F4 = CVar(var_D4) 'String
  loc_151533E:             var_A0 = Me.Fields.Item("Name")
  loc_1515362:             If CBool(var_F4 <> var_A0.Value) Then
  loc_151536B:               Me.MoveFirst
  loc_1515390:               Set var_88 = Me.Txt
  loc_1515396:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name =")
  loc_151539E:               0 = var_8C.Text
  loc_15153AC:               Proc_6_17_EAAE40(var_F4, CVar(var_D4), 1)
  loc_15153C2:               Me.Find CStr(var_C8 & var_F4), var_8C, 
  loc_15153DA:             End If
  loc_15153DD:           Else
  loc_15153E5:             If (var_92 = CInt(6)) Then
  loc_15153F7:               Set var_88 = Me.Txt
  loc_15153FD:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1515405:               var_8C.SelStart = 0
  loc_151541E:               Set var_88 = Me.Txt
  loc_1515424:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_151543F:               Set var_90 = Me.Txt
  loc_1515445:               Call 0.Method_Txt_GotFocus0 (Index, var_A0)
  loc_151544D:               var_A0.SelLength = Len(var_8C.Text)
  loc_1515460:             End If
  loc_1515460:           End If
  loc_1515460:         End If
  loc_1515460:       End If
  loc_1515460:     End If
  loc_1515460:   End If
  loc_1515460: End If
  loc_1515460: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '13E4FD4
  'Data Table: 539FB8
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_A0 As Variant
  Dim var_9C As DataGrid
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim Shift As Integer
  Dim var_86 As Integer
  loc_13E45F7: var_88 = Shift
  loc_13E4604: If (CLng(Shift) = &H1B) Then
  loc_13E4607:   Call Proc_339_73_F70BAC(var_88)
  loc_13E460C:   Exit Sub
  loc_13E460D: End If
  loc_13E4610: var_8A = KeyCode
  loc_13E461B: If (var_8A = CInt(5)) Then
  loc_13E463B:   Set var_A0 = Me.FGPoint
  loc_13E4646:   Set var_9C = Nothing
  loc_13E4674:   Proc_6_69_134A630(Me.DGPayType, Me.Txt, KeyCode, global_68, Shift, 0)
  loc_13E46E3:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13E46EA:     Set var_9C = Me.DGPayType
  loc_13E4709:     Proc_6_138_106E830(var_9C, global_68, KeyCode, Me.FGPoint, 1)
  loc_13E4717:   End If
  loc_13E472E:   If (Me.RecordCount > 0) Then
  loc_13E4760:     Call Proc_339_77_119819C(Proc_6_38_E69628(CVar(Me.Fields.Item("PayType")), var_9C, var_A0), 0)
  loc_13E476E:   End If
  loc_13E4771: Else
  loc_13E4779:   If (var_8A = CInt(4)) Then
  loc_13E4799:     Set var_A0 = Me.FGPoint
  loc_13E47A4:     Set var_9C = Nothing
  loc_13E47D6:     Proc_6_69_134A630(Me.DGAgAc, Me.Txt, KeyCode, global_92, Shift, 0)
  loc_13E4848:     If ((Me.FGPoint.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13E4872:       Proc_6_138_106E830(Me.DGAgAc, global_92, KeyCode, Me.FGPoint, 1)
  loc_13E4880:     End If
  loc_13E4883:   Else
  loc_13E488B:     If (var_8A = CInt(&HF)) Then
  loc_13E48B6:       Set var_9C = Nothing
  loc_13E48E8:       Proc_6_69_134A630(Me.DGEmp, Me.Txt, CInt(&HF), global_72, Shift, 0, 1)
  loc_13E4957:       If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13E495E:         Set var_9C = Me.DGEmp
  loc_13E497D:         Proc_6_138_106E830(var_9C, global_72, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_13E498B:       End If
  loc_13E498E:     Else
  loc_13E4996:       If (var_8A = CInt(&H10)) Then
  loc_13E49F3:         Proc_6_69_134A630(Me.DGRoom, Me.Txt, CInt(&H10), global_76, Shift, 0, 1, Nothing)
  loc_13E4A62:         If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13E4A88:           Proc_6_138_106E830(Me.DGRoom, global_76, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13E4A96:         End If
  loc_13E4A99:       Else
  loc_13E4AA1:         If (var_8A = CInt(&HD)) Then
  loc_13E4AFE:           Proc_6_69_134A630(Me.DGCompany, Me.Txt, CInt(&HD), global_84, Shift, 0, 1, Nothing)
  loc_13E4B6D:           If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13E4B93:             Proc_6_138_106E830(Me.DGCompany, global_84, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13E4BA1:           End If
  loc_13E4BA4:         Else
  loc_13E4BAC:           If (var_8A = CInt(&HE)) Then
  loc_13E4BCC:             Set var_A0 = Me.FGPoint
  loc_13E4C09:             Proc_6_69_134A630(Me.DGMember, Me.Txt, CInt(&HE), global_88, Shift, 0, 1, Nothing)
  loc_13E4C78:             If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13E4C7F:               Set var_9C = Me.DGMember
  loc_13E4C86:               Set var_94 = Me.FGPoint
  loc_13E4C9E:               Proc_6_138_106E830(var_9C, global_88, KeyCode, var_94, var_A0, 0)
  loc_13E4CAC:             End If
  loc_13E4CAF:           Else
  loc_13E4CB7:             If (var_8A = CInt(&H12)) Then
  loc_13E4CC4:               If (CLng(Shift) = &H2D) Then
  loc_13E4CCA:                 Call Proc_339_82_EE4048(var_D8, 0, var_9C)
  loc_13E4CDC:                 Set var_90 = Me.Txt
  loc_13E4CE2:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_D8)
  loc_13E4D06:                 Set var_90 = Me.Txt
  loc_13E4D0C:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_D8)
  loc_13E4D14:                 0 = var_A0
  loc_13E4D27:                 Set var_9C = Me.Txt
  loc_13E4D2D:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0)
  loc_13E4D35:                 var_A0.SelStart = Len(var_D8)
  loc_13E4D48:                 Exit Sub
  loc_13E4D49:               End If
  loc_13E4D49:             End If
  loc_13E4D49:           End If
  loc_13E4D49:         End If
  loc_13E4D49:       End If
  loc_13E4D49:     End If
  loc_13E4D49:   End If
  loc_13E4D49: End If
  loc_13E4D80: var_FC = Me.DGAgAc.Visible
  loc_13E4D97: var_10C = Me.DGEmp.Visible
  loc_13E4DF0: If ((((((CBool(Me.DGRoom.Visible) = 0) And (CBool(Me.DGPayType.Visible) = 0)) And (CBool(var_FC) = 0)) And (CBool(var_10C) = 0)) And (CBool(Me.DGCompany.Visible) = 0)) And (CBool(Me.DGMember.Visible) = 0)) Then
  loc_13E4E13:   If (((CLng(Shift) = &H26) And (global_120 = 5)) And (KeyCode = CInt(5))) Then
  loc_13E4E16:     Exit Sub
  loc_13E4E17:   End If
  loc_13E4E35:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HA))) Then
  loc_13E4E42:     If (CLng(Shift) = &H28) Then
  loc_13E4E45:       Exit Sub
  loc_13E4E46:     End If
  loc_13E4E7D:     If (MsgBox("OK?", 4, "Save Detail", var_FC, var_10C) = 6) Then
  loc_13E4E80:       Call Proc_339_78_14D3020(var_8A)
  loc_13E4E87:       Shift = 0
  loc_13E4E8A:     End If
  loc_13E4E8A:     Exit Sub
  loc_13E4E8E:   Else
  loc_13E4EAC:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H12))) Then
  loc_13E4EB9:       If (CLng(Shift) = &H28) Then
  loc_13E4EBC:         Exit Sub
  loc_13E4EBD:       End If
  loc_13E4EF4:       If (MsgBox("OK?", 4, "Save Detail", var_FC, var_10C) = 6) Then
  loc_13E4EF7:         Call Proc_339_78_14D3020(Shift)
  loc_13E4EFE:         Shift = 0
  loc_13E4F01:       End If
  loc_13E4F01:       Exit Sub
  loc_13E4F05:     Else
  loc_13E4F23:       If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H10))) Then
  loc_13E4F30:         If (CLng(Shift) = &H28) Then
  loc_13E4F33:           Exit Sub
  loc_13E4F34:         End If
  loc_13E4F36:         var_86 = 0
  loc_13E4F43:         Call Txt_Validate(CInt(&H10))
  loc_13E4F4E:         If (var_86 = &HFF) Then
  loc_13E4F51:           Exit Sub
  loc_13E4F52:         End If
  loc_13E4F89:         If (MsgBox("OK?", 4, "Save Detail", var_FC, var_10C) = 6) Then
  loc_13E4F8C:           Call Proc_339_78_14D3020(var_86, var_86)
  loc_13E4F93:           Shift = 0
  loc_13E4F96:         End If
  loc_13E4F96:         Exit Sub
  loc_13E4F97:       End If
  loc_13E4F97:     End If
  loc_13E4F97:   End If
  loc_13E4FAC:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_13E4FB5:     Proc_6_75_E5335C(Shift, arg_14)
  loc_13E4FBA:   End If
  loc_13E4FC4:   If (CLng(Shift) = &H26) Then
  loc_13E4FCD:     Proc_6_76_E533C8(Shift, arg_14)
  loc_13E4FD2:   End If
  loc_13E4FD2: End If
  loc_13E4FD2: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1033120
  'Data Table: 539FB8
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As Variant
  Dim var_94 As Variant
  Dim Me As Recordset15
  loc_1032EDE: If (arg_10 = &HD) Then
  loc_1032EE3:   arg_10 = 0
  loc_1032EE6: End If
  loc_1032EE9: Proc_6_58_E06050(arg_10)
  loc_1032EF4: Proc_6_133_E7FB08(var_94, arg_10)
  loc_1032EFD: arg_10 = CInt(var_94)
  loc_1032F06: var_96 = KeyAscii
  loc_1032F11: If (var_96 = CInt(5)) Then
  loc_1032F30:   If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_1032F5D:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_1032F8F:     Proc_6_138_106E830(Me.DGPayType, global_68, KeyAscii, Me.FGPoint)
  loc_1032F9D:   End If
  loc_1032FB4:   If (Me.RecordCount > 0) Then
  loc_1032FD1:     var_A8 = Me.Fields.Item("PayType")
  loc_1032FE6:     Call Proc_339_77_119819C(Proc_6_38_E69628(CVar(var_A8), 0, var_96), arg_10)
  loc_1032FF4:   End If
  loc_1032FF7: Else
  loc_1032FFF:   If (var_96 = CInt(6)) Then
  loc_103300C:     Set var_9C = Me.Txt
  loc_1033012:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8)
  loc_103302D:     Proc_6_42_129B55C(var_A8, arg_10, 8)
  loc_103303C:   Else
  loc_1033044:     If (var_96 = CInt(&HA)) Then
  loc_1033051:       Set var_9C = Me.Txt
  loc_1033057:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8)
  loc_1033072:       Proc_6_42_129B55C(var_A8, arg_10, 5)
  loc_1033081:     Else
  loc_1033089:       If (var_96 = CInt(4)) Then
  loc_10330A8:         If (CBool(Me.DGAgAc.Visible) = &HFF) Then
  loc_10330D9:           Proc_6_89_1470B00(Me.Txt, KeyAscii, global_92, arg_10, "Name")
  loc_103310F:           Proc_6_138_106E830(Me.DGAgAc, global_92, KeyAscii, Me.FGPoint)
  loc_103311D:         End If
  loc_103311D:       End If
  loc_103311D:     End If
  loc_103311D:   End If
  loc_103311D: End If
  loc_103311D: Exit Sub
  loc_103311E: If 0 Then Exit Sub
  loc_103311E: End If
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1109AC4
  'Data Table: 539FB8
  Dim var_86 As Integer
  loc_1109783: var_86 = KeyCode
  loc_110978E: If (var_86 = CInt(5)) Then
  loc_11097AD:   If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_11097C1:     var_A4 = "Name"
  loc_11097E5:     Proc_6_68_12A2818(Me.DGPayType, Me.Txt, KeyCode, global_68)
  loc_110981B:     Proc_6_138_106E830(Me.DGPayType, global_68, KeyCode, Me.FGPoint)
  loc_1109829:   End If
  loc_110982C: Else
  loc_1109834:   If (var_86 = CInt(&HF)) Then
  loc_1109853:     If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_1109867:       var_A4 = "Name"
  loc_110988B:       Proc_6_68_12A2818(Me.DGEmp, Me.Txt, KeyCode, global_72, Shift)
  loc_11098C1:       Proc_6_138_106E830(Me.DGEmp, global_72, KeyCode, Me.FGPoint)
  loc_11098CF:     End If
  loc_11098D2:   Else
  loc_11098DA:     If (var_86 = CInt(&H10)) Then
  loc_11098F9:       If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_1109931:         Proc_6_68_12A2818(Me.DGRoom, Me.Txt, KeyCode, global_76, Shift)
  loc_1109967:         Proc_6_138_106E830(Me.DGRoom, global_76, KeyCode, Me.FGPoint, "Name")
  loc_1109975:       End If
  loc_1109978:     Else
  loc_1109980:       If (var_86 = CInt(&HD)) Then
  loc_110999F:         If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_11099D7:           Proc_6_68_12A2818(Me.DGCompany, Me.Txt, KeyCode, global_84, Shift)
  loc_1109A0D:           Proc_6_138_106E830(Me.DGCompany, global_84, KeyCode, Me.FGPoint, "Name")
  loc_1109A1B:         End If
  loc_1109A1E:       Else
  loc_1109A26:         If (var_86 = CInt(&HE)) Then
  loc_1109A45:           If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_1109A7D:             Proc_6_68_12A2818(Me.DGMember, Me.Txt, KeyCode, global_88, Shift)
  loc_1109AB3:             Proc_6_138_106E830(Me.DGMember, global_88, KeyCode, Me.FGPoint, "Name")
  loc_1109AC1:           End If
  loc_1109AC1:         End If
  loc_1109AC1:       End If
  loc_1109AC1:     End If
  loc_1109AC1:   End If
  loc_1109AC1: End If
  loc_1109AC1: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4D18C
  'Data Table: 539FB8
  loc_E4D16A: Set var_88 = Me.Txt
  loc_E4D170: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4D17E: Proc_6_73_E23294(var_8C)
  loc_E4D18A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '14F9B4C
  'Data Table: 539FB8
  Dim var_8E As Integer
  Dim Me As Variant
  Dim var_A0 As Variant
  Dim var_9C As Fields15
  Dim var_A4 As String
  Dim var_BC As TextBox
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim unk_539FE7 As Connection15
  Dim var_8C As Recordset15
  Dim arg_10 As Integer
  Dim var_130 As TextBox
  loc_14F8CDB: var_8E = Cancel
  loc_14F8CE6: If (var_8E = CInt(&H10)) Then
  loc_14F8D37:   Set var_9C = Me.Txt
  loc_14F8D3D:   Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A4)
  loc_14F8D45:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A0.Text
  loc_14F8D5D:   If (var_8E Or (var_A4 = vbNullString)) Then
  loc_14F8D6D:     Set var_9C = Me.Txt
  loc_14F8D73:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F8D7B:     var_A0.Text = vbNullString
  loc_14F8D94:     Set var_9C = Me.Txt
  loc_14F8D9A:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F8DA2:     var_A0.Tag = vbNullString
  loc_14F8DB1:   Else
  loc_14F8DEC:     Set var_B8 = Me.Txt
  loc_14F8DF2:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14F8DFA:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14F8E51:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14F8E59:     var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_14F8EAE:     var_EC = "Select count(Distinct Bill_no) from paycharge where bill_no is not null and bill_no<>'' and FolionoDocid='" & Me.Fields.Item("FolioNoDocid").Value 
  loc_14F8EB7:     var_10C = var_EC & "'" 
  loc_14F8EC5:     unk_539FE7.Execute CStr(var_10C), var_12C, -1
  loc_14F8F04:     var_A0 = Me.Txt.Fields.Item(0)
  loc_14F8F26:     If (var_A0.Value > 0) Then
  loc_14F8F42:       MsgBox("Guest Room Bill Already printed for this Room", &H10, var_EC, var_10C, var_12C)
  loc_14F8F57:       Set var_8C = Nothing
  loc_14F8F5C:       arg_10 = &HFF
  loc_14F8F5F:       Exit Sub
  loc_14F8F60:     End If
  loc_14F8F60:   End If
  loc_14F8F63: Else
  loc_14F8F6B:   If (var_8E = CInt(2)) Then
  loc_14F8F6E:     GoTo loc_14F9B48
  loc_14F8F71:   End If
  loc_14F8F79:   If (var_8E = CInt(&HC)) Then
  loc_14F8F86:     Set var_9C = Me.Txt
  loc_14F8F8C:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F8FAC:     Set var_BC = Me.Txt
  loc_14F8FB2:     Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_14F8FBA:     var_130.Text = Proc_6_33_15125B8(var_A0, arg_10)
  loc_14F8FD0:   Else
  loc_14F8FD8:     If (var_8E = CInt(9)) Then
  loc_14F8FE9:       Set var_9C = Me.Txt
  loc_14F8FEF:       Call 0.Method_Txt_Validate0 (CInt(9), var_A0)
  loc_14F900E:       If (var_A0.Text = vbNullString) Then
  loc_14F901B:         Set var_9C = Me.Txt
  loc_14F9021:         Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F904A:         If (Proc_6_27_EA61EC(var_A0, "Expiry Date") = 0) Then
  loc_14F9057:           Set var_9C = Me.Txt
  loc_14F905D:           Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F9065:           var_A0.SetFocus
  loc_14F9073:           arg_10 = &HFF
  loc_14F9076:           Exit Sub
  loc_14F9077:         End If
  loc_14F9077:       End If
  loc_14F9081:       Set var_9C = Me.Txt
  loc_14F9087:       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F90A7:       Set var_BC = Me.Txt
  loc_14F90AD:       Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_14F90B5:       var_130.Text = Proc_6_33_15125B8(var_A0, arg_10)
  loc_14F90D6:       Set var_9C = Me.Txt
  loc_14F90DC:       Call 0.Method_Txt_Validate0 (CInt(9), var_A0)
  loc_14F90FC:       If (CDate(var_A0.Text) <= MemVar_1F950EC) Then
  loc_14F9118:         MsgBox("Credit Card has been Expired", &H40, var_EC, var_10C, var_12C)
  loc_14F912A:         arg_10 = &HFF
  loc_14F912D:         Exit Sub
  loc_14F912E:       End If
  loc_14F9131:     Else
  loc_14F9139:       If (var_8E = CInt(5)) Then
  loc_14F9146:         Set var_9C = Me.Txt
  loc_14F914C:         Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F9154:         var_A4 = "Payment Type"
  loc_14F9175:         If (Proc_6_27_EA61EC(var_A0, var_A4) = 0) Then
  loc_14F9182:           Set var_9C = Me.Txt
  loc_14F9188:           Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F9190:           var_A0.SetFocus
  loc_14F919E:           arg_10 = &HFF
  loc_14F91A1:           Exit Sub
  loc_14F91A2:         End If
  loc_14F91AF:         Set var_9C = Me.Txt
  loc_14F91B5:         Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A4)
  loc_14F91D4:         If (var_A4 <> vbNullString) Then
  loc_14F9212:           Set var_B8 = Me.Txt
  loc_14F9218:           Call 0.Method_Txt_Validate0 (Cancel, var_BC, CStr(Me.Fields.Item("Name").Value))
  loc_14F9220:           var_BC.Text = Me.Fields.Item("Name").Text
  loc_14F9271:           Set var_B8 = Me.Txt
  loc_14F9277:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14F927F:           var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_14F92C0:           var_A4 = Proc_6_38_E69628(CVar(Me.Fields.Item("PayType")))
  loc_14F92C6:           global_160 = var_A4
  loc_14F92ED:           var_A0 = Me.Fields.Item("PayType")
  loc_14F9302:           Call Proc_339_79_11AB60C(Proc_6_38_E69628(CVar(var_A0)))
  loc_14F9313:         Else
  loc_14F9320:           Set var_9C = Me.Txt
  loc_14F9326:           Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F932E:           var_A0.Text = vbNullString
  loc_14F9347:           Set var_9C = Me.Txt
  loc_14F934D:           Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F9355:           var_A0.Tag = vbNullString
  loc_14F9361:         End If
  loc_14F9364:       Else
  loc_14F936C:         If (var_8E = CInt(4)) Then
  loc_14F93C6:           Set var_9C = Me.Txt
  loc_14F93CC:           Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A4)
  loc_14F93D4:           ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_A0.Text
  loc_14F93EC:           If (var_B8 Or (var_A4 = vbNullString)) Then
  loc_14F93FC:             Set var_9C = Me.Txt
  loc_14F9402:             Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F940A:             var_A0.Tag = vbNullString
  loc_14F9416:             Exit Sub
  loc_14F9417:           End If
  loc_14F9455:           Set var_B8 = Me.Txt
  loc_14F945B:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14F9463:           var_BC.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_14F94B7:           Set var_B8 = Me.Txt
  loc_14F94BD:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14F94C5:           var_BC.Tag = CStr(Me.Recordset15.Fields.Item("SearchCode").Value)
  loc_14F9521:           If CBool(CVar(global_168) <> Me.Recordset15.Fields.Item("Name").Value) Then
  loc_14F9524:             Call Proc_339_83_11B5D00()
  loc_14F9529:             Call Proc_339_71_11010E0()
  loc_14F954E:             var_A0 = Me.Recordset15.Fields.Item("SearchCode")
  loc_14F9563:             Call Proc_339_84_1246720(CStr(var_A0.Value))
  loc_14F957B:             global_196 = CDbl(0)
  loc_14F9594:             Set var_9C = Me.Txt
  loc_14F959A:             Call 0.Method_Txt_Validate0 (CInt(6), var_A0)
  loc_14F95A2:             var_A0.Text = CStr(global_196)
  loc_14F95B1:           End If
  loc_14F95B4:         Else
  loc_14F95BC:           If (var_8E = CInt(6)) Then
  loc_14F95C9:             Set var_9C = Me.Txt
  loc_14F95CF:             Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F95DB:             Proc_6_40_EA5C80(CVar(var_A0))
  loc_14F95F2:             var_10C = "0.00"
  loc_14F95FB:             var_EC = CVar(global_196) 'Double
  loc_14F9602:             var_12C = Format(var_EC, var_10C)
  loc_14F960A:             var_A4 = CStr(var_12C)
  loc_14F9618:             Set var_B8 = Me.Txt
  loc_14F961E:             Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_A4)
  loc_14F9626:             var_BC.Text = 1
  loc_14F9645:           Else
  loc_14F964D:             If (var_8E = CInt(&HD)) Then
  loc_14F969E:               Set var_9C = Me.Txt
  loc_14F96A4:               Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A4)
  loc_14F96AC:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A0.Text
  loc_14F96C4:               If (1 Or (var_A4 = vbNullString)) Then
  loc_14F96D4:                 Set var_9C = Me.Txt
  loc_14F96DA:                 Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F96E2:                 var_A0.Text = vbNullString
  loc_14F96FB:                 Set var_9C = Me.Txt
  loc_14F9701:                 Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F9709:                 var_A0.Tag = vbNullString
  loc_14F9718:               Else
  loc_14F9753:                 Set var_B8 = Me.Txt
  loc_14F9759:                 Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14F9761:                 var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14F9794:                 var_A0 = Me.Fields.Item("Code")
  loc_14F97A5:                 var_A4 = CStr(var_A0.Value)
  loc_14F97B2:                 Set var_B8 = Me.Txt
  loc_14F97B8:                 Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14F97C0:                 var_BC.Tag = var_A4
  loc_14F97F0:                 Set var_9C = Me.Txt
  loc_14F97F6:                 Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A4)
  loc_14F97FE:                 0 = var_A0.Tag
  loc_14F9826:                 If (Proc_96_1_F8D0C4(Proc_6_38_E69628(CVar(var_A4))) = 0) Then
  loc_14F9842:                   MsgBox("Credit Not Allowed.", 0, var_EC, var_10C, var_12C)
  loc_14F9854:                   arg_10 = &HFF
  loc_14F9857:                   Exit Sub
  loc_14F9858:                 End If
  loc_14F9858:               End If
  loc_14F985B:             Else
  loc_14F9863:               If (var_8E = CInt(&HE)) Then
  loc_14F98B4:                 Set var_9C = Me.Txt
  loc_14F98BA:                 Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A4)
  loc_14F98C2:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A0.Text
  loc_14F98DA:                 If (arg_10 Or (var_A4 = vbNullString)) Then
  loc_14F98EA:                   Set var_9C = Me.Txt
  loc_14F98F0:                   Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F98F8:                   var_A0.Text = vbNullString
  loc_14F9911:                   Set var_9C = Me.Txt
  loc_14F9917:                   Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F991F:                   var_A0.Tag = vbNullString
  loc_14F992E:                 Else
  loc_14F9969:                   Set var_B8 = Me.Txt
  loc_14F996F:                   Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14F9977:                   var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14F99AA:                   var_A0 = Me.Fields.Item("Code")
  loc_14F99C8:                   Set var_B8 = Me.Txt
  loc_14F99CE:                   Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14F99D6:                   var_BC.Tag = CStr(var_A0.Value)
  loc_14F99EC:                 End If
  loc_14F99EF:               Else
  loc_14F99F7:                 If (var_8E = CInt(7)) Then
  loc_14F9A04:                   Set var_9C = Me.Txt
  loc_14F9A0A:                   Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F9A33:                   If (Proc_6_27_EA61EC(var_A0, "Credit Card No.") = 0) Then
  loc_14F9A40:                     Set var_9C = Me.Txt
  loc_14F9A46:                     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F9A4E:                     var_A0.SetFocus
  loc_14F9A5C:                     arg_10 = &HFF
  loc_14F9A5F:                     Exit Sub
  loc_14F9A60:                   End If
  loc_14F9A63:                 Else
  loc_14F9A6B:                   If (var_8E = CInt(8)) Then
  loc_14F9A78:                     Set var_9C = Me.Txt
  loc_14F9A7E:                     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F9AA7:                     If (Proc_6_27_EA61EC(var_A0, "Account Holder Name") = 0) Then
  loc_14F9AB4:                       Set var_9C = Me.Txt
  loc_14F9ABA:                       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F9AC2:                       var_A0.SetFocus
  loc_14F9AD0:                       arg_10 = &HFF
  loc_14F9AD3:                       Exit Sub
  loc_14F9AD4:                     End If
  loc_14F9AD7:                   Else
  loc_14F9ADF:                     If (var_8E = CInt(&HA)) Then
  loc_14F9AEC:                       Set var_9C = Me.Txt
  loc_14F9AF2:                       Call 0.Method_Txt_Validate0 (Cancel, var_A0, arg_10)
  loc_14F9B1B:                       If (Proc_6_27_EA61EC(var_A0, "Batch No.") = 0) Then
  loc_14F9B28:                         Set var_9C = Me.Txt
  loc_14F9B2E:                         Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F9B36:                         var_A0.SetFocus
  loc_14F9B44:                         arg_10 = &HFF
  loc_14F9B47:                         Exit Sub
  loc_14F9B48:                       End If
  loc_14F9B48:                     End If
  loc_14F9B48:                   End If
  loc_14F9B48:                 End If
  loc_14F9B48:               End If
  loc_14F9B48:             End If
  loc_14F9B48:           End If
  loc_14F9B48:         End If
  loc_14F9B48:       End If
  loc_14F9B48:       ' Referenced from:   14F8F6E
  loc_14F9B48:     End If
  loc_14F9B48:   End If
  loc_14F9B48: End If
  loc_14F9B48: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F501B4
  'Data Table: 539FB8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F500AB: Me.DGRoom.Visible = False
  loc_F500CA: If (Me.RecordCount > 0) Then
  loc_F50109:   Set var_B4 = Me.Txt
  loc_F5010F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F50117:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F5014A:   var_B0 = Me.Fields.Item("Code")
  loc_F50169:   Set var_B4 = Me.Txt
  loc_F5016F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F50177:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5018D: End If
  loc_F50198: Set var_A8 = Me.Txt
  loc_F5019E: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H10))
  loc_F501A6: var_B0.SetFocus
  loc_F501B2: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_1F 'E6E13C
  'Data Table: 539FB8
  loc_E6E0FA: Proc_6_153_E91D24(Me.DGRoom, arg_14)
  loc_E6E111: Set var_8C = Me.FGPoint
  loc_E6E12D: Proc_6_138_106E830(Me.DGRoom, global_76, CInt(&H10))
  loc_E6E13B: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'ED1CD8
  'Data Table: 539FB8
  loc_ED1C3C: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_ED1C3F:   Call DGEmp_UnknownEvent_9()
  loc_ED1C44: End If
  loc_ED1C60: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_ED1C63:   Call DGPayType_UnknownEvent_9()
  loc_ED1C68: End If
  loc_ED1C84: If (CBool(Me.DGAgAc.Visible) = &HFF) Then
  loc_ED1C87:   Call DGAgAc_UnknownEvent_9()
  loc_ED1C8C: End If
  loc_ED1CA8: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_ED1CAB:   Call DGRoom_UnknownEvent_9()
  loc_ED1CB0: End If
  loc_ED1CCC: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_ED1CCF:   Call DGCompany_UnknownEvent_9()
  loc_ED1CD4: End If
  loc_ED1CD4: Exit Sub
End Sub

Private Sub Del_Click() 'F95AF4
  'Data Table: 539FB8
  Dim var_98 As Variant
  Dim var_A8 As Variant
  loc_F959AF: If (CLng(Me.FGrid.Row) >= 1) Then
  loc_F959E9:   If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_E8, var_108) = 6) Then
  loc_F95A0B:     If (CLng(Me.FGrid.Rows) > 2) Then
  loc_F95A21:       var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F95A2A:       Set var_10C = Me.FGrid
  loc_F95A45:     Else
  loc_F95A58:       Me.FGrid.Rows = 1
  loc_F95A7C:       var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0))) 'String
  loc_F95A84:       Set var_10C = Me.FGrid
  loc_F95AB1:       Me.FGrid.FixedRows = 1
  loc_F95AB9:     End If
  loc_F95AB9:   End If
  loc_F95ABC: Else
  loc_F95AD7:   var_98 = "No Entries To Delete"
  loc_F95ADD:   MsgBox(var_98, &H10, "Delete Module", var_E8, var_108)
  loc_F95AED: End If
  loc_F95AED: Call Proc_339_80_DFDF84(FGrid.DispID_10000, var_98)
  loc_F95AF2: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_9 'F39814
  'Data Table: 539FB8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3970B: Me.DGPayType.Visible = False
  loc_F3972A: If (Me.RecordCount > 0) Then
  loc_F39769:   Set var_B4 = Me.Txt
  loc_F3976F:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(5), var_B8)
  loc_F39777:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F397AA:   var_B0 = Me.Fields.Item("Code")
  loc_F397C9:   Set var_B4 = Me.Txt
  loc_F397CF:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(5), var_B8)
  loc_F397D7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F397ED: End If
  loc_F397F8: Set var_A8 = Me.Txt
  loc_F397FE: Call 0.Method_DGPayType_UnknownEvent_90 (CInt(5))
  loc_F39806: var_B0.SetFocus
  loc_F39812: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'E6E014
  'Data Table: 539FB8
  loc_E6DFD2: Proc_6_153_E91D24(Me.DGPayType, arg_14)
  loc_E6DFE9: Set var_8C = Me.FGPoint
  loc_E6E005: Proc_6_138_106E830(Me.DGPayType, global_68, CInt(5))
  loc_E6E013: Exit Sub
End Sub

Private Sub Form_Load() '134D830
  'Data Table: 539FB8
  Dim var_A8 As String
  Dim var_C8 As Variant
  Dim var_118 As Variant
  Dim var_11C As String
  Dim var_120 As Variant
  Dim unk_539FE7 As Connection15
  Dim var_90 As Recordset15
  Dim var_F8 As Variant
  Dim Me As Recordset15
  loc_134D044: On Error Goto loc_134D7EA
  loc_134D07B: var_A8 = "(" & var_9C
  loc_134D09C: var_118 = ("Payment Receive " + IIf((var_9C <> vbNullString), CVar(var_A8 & ")"), "(POS)"))
  loc_134D0AE: Me.LblFormCaption.Caption = CStr(var_118)
  loc_134D0D1: Call 0.Method_arg_64 (CLng(MemVar_1F951B4), Proc_96_17_FDCB2C(global_52, global_56, var_9C))
  loc_134D0E5: Me.LblUser.Left = CDbl(13500)
  loc_134D0FC: Me.LblUser.Top = CDbl(7800)
  loc_134D113: Me.LblLDt.Top = CDbl(8160)
  loc_134D12A: Me.LblLDt.Left = CDbl(13500)
  loc_134D145: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_134D15B: Me.FrRem.BackColor = CLng(MemVar_1F951B4)
  loc_134D16D: Set var_120 = Me.TopCtrl1
  loc_134D173: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_134D181: Call 0.Method_arg_50 (var_A8, var_A0)
  loc_134D197: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_A8))
  loc_134D1B4: var_C8 = CVar("P" & var_A0) 'String
  loc_134D1D5: global_128 = CStr(IIf((var_A0 <> vbNullString), var_C8, "RPV"))
  loc_134D20B: unk_539FE7.Execute "Select * from Enviro Where LogSite_Code='" & MemVar_1F95078 & "'", var_C8, -1
  loc_134D235: var_120 = Me.TopCtrl1.Fields
  loc_134D245: var_C8 = CVar(var_120.Item("CreditCardInfoMandatory")) 'Address
  loc_134D25F: If (Proc_6_38_E69628(var_C8, var_120) = "Y") Then
  loc_134D268:   global_60 = "Y"
  loc_134D26C: End If
  loc_134D280: var_A8 = "SELECT RevMast.Code as code, RevMast.name as Name, RevMast.PayType as PayType FROM RevMast where (LOGSITE_CODE='" & MemVar_1F95078
  loc_134D287: var_11C = var_A8 & "') And RevMast.Fieldtype in ('P') And RevMast.PayType In ('Cash','Cheque','Credit Card','Complementry','UPI','Other') ORDER BY NAME "
  loc_134D290: unk_539FE7.Execute var_11C, var_C8, -1
  loc_134D2A1: Set global_68 = var_120
  loc_134D2BF: CVarUnk
  loc_134D2C4: VerifyVarObj
  loc_134D2D0: LateIdStAd
  loc_134D302: unk_539FE7.Execute "SELECT Code,Name FROM Employee Where (LogSite_Code='" & MemVar_1F95078 & "' or LogSite_Code='HO') ORDER BY Name", var_C8, -1
  loc_134D313: Set global_72 = Me.DGPayType
  loc_134D331: CVarUnk
  loc_134D336: VerifyVarObj
  loc_134D342: LateIdStAd
  loc_134D364: var_A8 = "Select T.Type+t.RoomCat+space(5-len(T.RoomCat))+Code+space(5-len(Code)) as Code,T.Code As Name,RoomOcc.Docid as FolioNODocid From RoomMast T inner join RoomOcc on RoomOcc.RoomNo=T.Code where (T.LOGSITE_CODE='" & MemVar_1F95078
  loc_134D36B: var_11C = "SELECT Code,Name FROM Employee Where (LogSite_Code='" & MemVar_1F95078 & "' or T.LOGSITE_CODE='HO') AND T.Type in ('RO') and RoomOcc.ChkoutDate is NULL Order By T.Code"
  loc_134D374: unk_539FE7.Execute var_11C, var_C8, -1
  loc_134D3A3: CVarUnk
  loc_134D3A8: VerifyVarObj
  loc_134D3B4: LateIdStAd
  loc_134D3DD: var_11C = "Select SubCode as Code,Name From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND CompanyType in ('Corporate','Travel Agency') Order By Name"
  loc_134D3E6: unk_539FE7.Execute var_11C, var_C8, -1
  loc_134D415: CVarUnk
  loc_134D41A: VerifyVarObj
  loc_134D426: LateIdStAd
  loc_134D44F: var_11C = "Select SubCode as Code,Name,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='"
  loc_134D466: unk_539FE7.Execute var_11C & MemVar_1F95078 & "') Order By Name", var_C8, -1
  loc_134D499: CVarUnk
  loc_134D49E: VerifyVarObj
  loc_134D4AA: LateIdStAd
  loc_134D4CC: var_A8 = "Select SubCode as SearchCode,Name From SubGroup where ActiveYN=1 And SubCode In (Select CompCode From PayCharge Where RestCode In (Select Code From Depart Where RestType In ('Outlet','Room Service'))) And (LOGSITE_CODE='" & MemVar_1F95078
  loc_134D4DC: unk_539FE7.Execute var_A8 & "' or LOGSITE_CODE='HO') Order by Name", var_C8, -1
  loc_134D50E: CVarUnk
  loc_134D513: VerifyVarObj
  loc_134D519: Set var_120 = Me.DGAgAc
  loc_134D51F: LateIdStAd
  loc_134D539: Call 0.Method_arg_38 (MemVar_1F953B0, var_120, Me.DGMember, var_120, var_120, Me.DGCompany, var_120, var_120)
  loc_134D54A: Call 0.Method_arg_3C (MemVar_1F950EC, Me.DGRoom, var_120, var_120)
  loc_134D55B: Call 0.Method_arg_54 (MemVar_1F9506C, Me.DGEmp, var_120)
  loc_134D56C: Call 0.Method_arg_1C (MemVar_1F95070, var_120)
  loc_134D57D: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_134D58E: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_134D59F: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_134D5B0: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_134D5C1: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_134D5D2: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_134D5EC: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_134D5FA: Set var_120 = MemVar_1F95044
  loc_134D609: Call 0.Method_Form_Load8 (var_120)
  loc_134D61F: Me.DGAgAc.Clone
  loc_134D639: Call 0.Method_arg_50 (var_120, -1)
  loc_134D64F: Set global_64 = New 
  loc_134D661: Me.Recordset15.CursorLocation = 3
  loc_134D670: If (CDbl(MemVar_1F950B8) = CDbl("1")) Then
  loc_134D67E:   Proc_6_7_F26918(var_C8, MemVar_1F950F4)
  loc_134D6AB:   var_11C = "Select DocID as SearchCode,DocID,LogSite_Code,Site_Code From PayCharge where VType='" & global_128 & "' And RestCode='"
  loc_134D6E4:   Me.Open CVar(var_11C & global_52 & "' And LOGSITE_CODE='" & MemVar_1F95078 & "' AND vdate>=") & var_C8 & " Order by DocID", CVar(MemVar_1F95044), 2
  loc_134D704: Else
  loc_134D70F:   Proc_6_7_F26918(var_C8, MemVar_1F950EC, 3)
  loc_134D73C:   var_11C = "Select DocID as SearchCode,DocID,LogSite_Code,Site_Code From PayCharge where VType='" & global_128 & "' And RestCode='"
  loc_134D761:   var_F8 = CVar(var_11C & global_52 & "' And LOGSITE_CODE='" & MemVar_1F95078 & "' AND vdate=") & var_C8 
  loc_134D76A:   var_118 = var_F8 & " Order by DocID" 
  loc_134D775:   Me.Open var_118, CVar(MemVar_1F95044), 2
  loc_134D792: End If
  loc_134D79E: Set var_120 = Me
  loc_134D7A7: var_A8 = "INI"
  loc_134D7B5: Call Proc_339_69_F8E644(Proc_5_1_100EC1C(var_A8, var_120, global_64, 3), -1, -1)
  loc_134D7C0: Call Proc_339_83_11B5D00(var_120)
  loc_134D7C5: Call Proc_339_71_11010E0(global_72)
  loc_134D7CA: Call Proc_339_76_11C0C28()
  loc_134D7CF: Call Proc_339_72_1641738()
  loc_134D7D4: Call Proc_339_80_DFDF84()
  loc_134D7DE: Set var_8C = Nothing
  loc_134D7E6: Set var_90 = Nothing
  loc_134D7E9: Exit Sub
  loc_134D7EA: ' Referenced from: 134D044
  loc_134D7F2: Set var_120 = Err()
  loc_134D7F8: Call 0.Method_arg_2C (var_A8)
  loc_134D819: MsgBox(CVar(var_A8), &H40, "Information", var_F8, var_118)
  loc_134D82C: Exit Sub
  loc_134D82D: Exit Sub
End Sub

Private Sub Form_Resize() 'EA99F4
  'Data Table: 539FB8
  Dim var_88 As Label
  loc_EA997E: Me.LblFormCaption.Left = CDbl(0)
  loc_EA998A: Set var_9C = Me.TopCtrl1
  loc_EA9990: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_EA999D: Set var_88 = Me.TopCtrl1
  loc_EA99A3: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_EA99BD: Me.LblFormCaption.Top = (CDbl() + CDbl(var_AC))
  loc_EA99D8: Call 0.Method_arg_100 (var_B4)
  loc_EA99EA: Me.LblFormCaption.Width = var_B4
  loc_EA99F2: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E61FC8
  'Data Table: 539FB8
  Dim Form_Unload048 As Boolean
  loc_E61F87: Set global_64 = Nothing
  loc_E61F99: Set global_68 = Nothing
  loc_E61FAB: Set global_72 = Nothing
  loc_E61FBD: Set global_88 = Nothing
  loc_E61FC4: Exit Sub
  loc_E61FC5: Form_Unload048 = 
End Sub

Private Sub Form_Activate() 'DFC4B4
  'Data Table: 539FB8
  loc_DFC4B0: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F1DECC
  'Data Table: 539FB8
  Dim var_A4 As DataGrid
  Dim var_86 As Integer
  Dim KeyCode As Integer
  loc_F1DDE8: If ((OpenMode = 1) And (CLng(KeyCode) = &H1B)) Then
  loc_F1DE05:   Set var_A4 = Me.DGEmp
  loc_F1DE26:   If ((CBool(Me.DGPayType.Visible) = 0) And (CBool(var_A4.Visible) = 0)) Then
  loc_F1DE36:     Me.var_A4.Unload Me
  loc_F1DE3E:     Exit Sub
  loc_F1DE3F:   End If
  loc_F1DE3F: End If
  loc_F1DE5D: If (((CLng(KeyCode) = &H53) And (Shift = 2)) And (global_116 = 1)) Then
  loc_F1DE7B:   If (Me.FrSendRoom.Visible = &HFF) Then
  loc_F1DE80:     var_86 = 0
  loc_F1DE8D:     Call Txt_Validate(CInt(&H10))
  loc_F1DE98:     If (var_86 = &HFF) Then
  loc_F1DE9D:       KeyCode = 0
  loc_F1DEA0:       Exit Sub
  loc_F1DEA1:     End If
  loc_F1DEA1:   End If
  loc_F1DEA1:   Call Proc_339_78_14D3020(KeyCode, var_86)
  loc_F1DEA6:   Call TopCtrl1_UnknownEvent_16()
  loc_F1DEAB:   Exit Sub
  loc_F1DEAC: End If
  loc_F1DEC0: Proc_6_88_FE8F6C(Me, KeyCode, Shift)
  loc_F1DEC8: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E0A928
  'Data Table: 539FB8
  loc_E0A914: Call Proc_339_81_1374460()
  loc_E0A91F: Call Proc_339_77_119819C(global_160)
  loc_E0A924: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FE2ABC
  'Data Table: 539FB8
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FE28F0: Set var_88 = Me.TopCtrl1
  loc_FE28F6: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FE290F: If (CStr() = "Browse") Then
  loc_FE2912:   Exit Sub
  loc_FE2913: End If
  loc_FE2930: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FE2933:   Exit Sub
  loc_FE2934: End If
  loc_FE2945: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_FE2967:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FE29A1:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FE29C3:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FE29D9:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE29E2:         Set var_110 = Me.FGrid
  loc_FE29FD:       Else
  loc_FE2A10:         Me.FGrid.Rows = 1
  loc_FE2A34:         var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0))) 'String
  loc_FE2A3C:         Set var_110 = Me.FGrid
  loc_FE2A69:         Me.FGrid.FixedRows = 1
  loc_FE2A71:       End If
  loc_FE2A71:     End If
  loc_FE2A74:   Else
  loc_FE2A95:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FE2AA5:   End If
  loc_FE2AA9:   Set var_88 = Me.FGrid
  loc_FE2ABA: End If
  loc_FE2ABA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_E 'E43BE4
  'Data Table: 539FB8
  loc_E43BBA: If (KeyCode = 2) Then
  loc_E43BD5:   Call 0.Method_arg_2BC (Me.popup, var_98, var_A8)
  loc_E43BDD:   Call FGrid_UnknownEvent_9()
  loc_E43BE2: End If
  loc_E43BE2: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_9 'F505D4
  'Data Table: 539FB8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F504CB: Me.DGMember.Visible = False
  loc_F504EA: If (Me.RecordCount > 0) Then
  loc_F50529:   Set var_B4 = Me.Txt
  loc_F5052F:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F50537:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F5056A:   var_B0 = Me.Fields.Item("Code")
  loc_F50589:   Set var_B4 = Me.Txt
  loc_F5058F:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F50597:   var_B8.Tag = CStr(var_B0.Value)
  loc_F505AD: End If
  loc_F505B8: Set var_A8 = Me.Txt
  loc_F505BE: Call 0.Method_DGMember_UnknownEvent_90 (CInt(&HE))
  loc_F505C6: var_B0.SetFocus
  loc_F505D2: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_1F 'E6E670
  'Data Table: 539FB8
  loc_E6E62E: Proc_6_153_E91D24(Me.DGMember, arg_14)
  loc_E6E645: Set var_8C = Me.FGPoint
  loc_E6E661: Proc_6_138_106E830(Me.DGMember, global_88, CInt(&HE))
  loc_E6E66F: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A '10E1E18
  'Data Table: 539FB8
  Dim var_94 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_E8 As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  Dim var_1BC As Variant
  Dim var_1D8 As Double
  Dim var_86 As Integer
  loc_10E1B22: If (KeyCode = &HD) Then
  loc_10E1B33:   Proc_303_0_FBACC8("	")
  loc_10E1B3B: End If
  loc_10E1B5A: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_10E1B5D:   Exit Sub
  loc_10E1B5E: End If
  loc_10E1B86: If ((CLng(KeyCode) = &H20) And (CLng(Me.GridSel.Col) = CLng(0))) Then
  loc_10E1B99:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_10E1BB3:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_10E1BCE:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_10E1BD6:   var_D4 = CVar(CLng(0)) 'Long
  loc_10E1C04:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_10E1C0C:   var_19C = CVar(CLng(0)) 'Long
  loc_10E1C43:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_10E1C4B:   Set var_1D0 = Me.GridSel
  loc_10E1C51:   LateIdCallSt
  loc_10E1C8D:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_10E1C95:   var_D4 = CVar(CLng(0)) 'Long
  loc_10E1CC8:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_10E1CDE:     var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_10E1CE6:     var_D4 = CVar(CLng(5)) 'Long
  loc_10E1D18:     global_196 = (global_196 + Val(CStr(Me.GridSel.TextMatrix))))
  loc_10E1D2F:   Else
  loc_10E1D42:     var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_10E1D4A:     var_D4 = CVar(CLng(5)) 'Long
  loc_10E1D53:     Set var_E8 = Me.GridSel
  loc_10E1D6C:     var_1D8 = Val(CStr(var_E8.TextMatrix)))
  loc_10E1D7C:     global_196 = (global_196 - var_1D8)
  loc_10E1D90:   End If
  loc_10E1DA6:   Set var_94 = Me.Txt
  loc_10E1DAC:   Call 0.Method_GridSel_UnknownEvent_A0 (CInt(6), var_E8, CStr(global_196), global_196, var_1D8, var_D4, var_B4)
  loc_10E1DB4:   var_E8.Text = global_196
  loc_10E1DD4:   var_86 = CInt((UBound(global_172, 1) + 1))
  loc_10E1DE6:   ReDim Preserve global_172(0 To CLng(var_86))
  loc_10E1E0E:   global_172(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_10E1E15: End If
  loc_10E1E15: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E5DD94
  'Data Table: 539FB8
  loc_E5DD6D: If (CLng(Me.GridSel.Col) <> CLng(0)) Then
  loc_E5DD70:   Exit Sub
  loc_E5DD71: End If
  loc_E5DD88: global_164 = CInt(CLng(Me.GridSel.Row))
  loc_E5DD91: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '10A906C
  'Data Table: 539FB8
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_1B0 As Double
  Dim var_1A8 As TextBox
  Dim var_86 As Integer
  loc_10A8DCB: If ((CLng(Me.GridSel.Col) <> CLng(0)) Or (global_164 = 0)) Then
  loc_10A8DCE:   Exit Sub
  loc_10A8DCF: End If
  loc_10A8DFE: For var_A0 = global_164 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_A0 'Integer
  loc_10A8E17:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_10A8E32:   Me.GridSel.Col = 0
  loc_10A8E4A:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_10A8E64:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_10A8E70:   var_B0 = CVar(CLng(var_88)) 'Long
  loc_10A8E78:   var_D0 = CVar(CLng(0)) 'Long
  loc_10A8E97:   var_154 = CVar(CLng(var_88)) 'Long
  loc_10A8E9F:   var_174 = CVar(CLng(0)) 'Long
  loc_10A8ED6:   var_194 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_10A8EDE:   Set var_1A8 = Me.GridSel
  loc_10A8EE4:   LateIdCallSt
  loc_10A8F09:   var_B0 = CVar(CLng(var_88)) 'Long
  loc_10A8F11:   var_D0 = CVar(CLng(0)) 'Long
  loc_10A8F3C:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_10A8F43:     var_B0 = CVar(CLng(var_88)) 'Long
  loc_10A8F4B:     var_D0 = CVar(CLng(5)) 'Long
  loc_10A8F7D:     global_196 = (global_196 + Val(CStr(Me.GridSel.TextMatrix))))
  loc_10A8F8C:   Else
  loc_10A8F90:     var_B0 = CVar(CLng(var_88)) 'Long
  loc_10A8F98:     var_D0 = CVar(CLng(5)) 'Long
  loc_10A8FBA:     var_1B0 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_10A8FCA:     global_196 = (global_196 - var_1B0)
  loc_10A8FD6:   End If
  loc_10A8FEC:   Set var_8C = Me.Txt
  loc_10A8FF2:   Call 0.Method_GridSel_UnknownEvent_100 (CInt(6), var_1A8, CStr(global_196), global_196, var_1B0, var_D0, var_B0)
  loc_10A8FFA:   var_1A8.Text = global_196
  loc_10A901A:   var_86 = CInt((UBound(global_172, 1) + 1))
  loc_10A902C:   ReDim Preserve global_172(0 To CLng(var_86))
  loc_10A9054:   global_172(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_10A905E: Next var_A0 'Integer
  loc_10A9068: global_164 = 0
  loc_10A906B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FB9D70
  'Data Table: 539FB8
  Dim var_88 As String
  Dim var_D4 As TextBox
  Dim var_8C As Label
  loc_FB9BC8: On Error Goto loc_FB9D6A
  loc_FB9BEE: Call Proc_339_69_F8E644(Proc_5_1_100EC1C("ADD", Me))
  loc_FB9BF9: Call Proc_339_70_F79E3C(global_64)
  loc_FB9C38: Set var_8C = Me.Txt
  loc_FB9C3E: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_D4, CStr(Format(Now, "HH:MM")))
  loc_FB9C46: var_D4.Text = 1
  loc_FB9C6C: Set var_8C = Me.Txt
  loc_FB9C72: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_D4)
  loc_FB9C7A: var_D4.Tag = vbNullString
  loc_FB9CAE: var_88 = CStr(Format(MemVar_1F950EC, "dd/MMM/yyyy"))
  loc_FB9CBD: Set var_8C = Me.Txt
  loc_FB9CC3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4, var_88)
  loc_FB9CCB: var_D4.Text = 1
  loc_FB9CED: Call Txt_Validate(CInt(2))
  loc_FB9CF8: Call Proc_339_75_10EE9C0(MemVar_1F95044, var_88, 0)
  loc_FB9D12: Call Proc_339_77_119819C(vbNullString, CDbl(0))
  loc_FB9D25: Set var_8C = Me.Txt
  loc_FB9D2B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_D4)
  loc_FB9D33: var_D4.SetFocus
  loc_FB9D4C: Me.LblUser.Caption = vbNullString
  loc_FB9D61: Me.LblLDt.Caption = vbNullString
  loc_FB9D69: Exit Sub
  loc_FB9D6A: ' Referenced from: FB9BC8
  loc_FB9D6A: Proc_6_60_E63754(1)
  loc_FB9D6F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC207C
  'Data Table: 539FB8
  loc_EC1FE4: On Error Goto loc_EC2074
  loc_EC201E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC202D:   Set var_110 = Me
  loc_EC2044:   Call Proc_339_69_F8E644(Proc_5_1_100EC1C("INI", var_110))
  loc_EC204F:   Call Proc_339_73_F70BAC(global_64)
  loc_EC2054:   Call Proc_339_72_1641738()
  loc_EC205C: Else
  loc_EC2062:   Call 0.Method_arg_1E8 (var_110)
  loc_EC206A:   Call var_110.SetFocus
  loc_EC2073: End If
  loc_EC2073: Exit Sub
  loc_EC2074: ' Referenced from: EC1FE4
  loc_EC2074: Proc_6_60_E63754()
  loc_EC2079: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1036420
  'Data Table: 539FB8
  Dim unk_539FE7 As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_10361E4: On Error Goto loc_10363D1
  loc_10361F5: If (Proc_183_56_FE8B08(global_64) = &HFF) Then
  loc_10361F8:   Exit Sub
  loc_10361F9: End If
  loc_1036230: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F4, var_114) = 6) Then
  loc_103623C:   unk_539FE7.BeginTrans var_118
  loc_1036252:   var_94 = Me.Bookmark 'Variant
  loc_10362AC:   unk_539FE7.Execute CStr("Delete From PayCharge Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_1036310:   var_F4 = "Delete From LedgerAdj Where Docid1='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1036314:   var_124 = CStr(var_F4)
  loc_103631E:   unk_539FE7.Execute var_124, var_114, -1
  loc_1036340:   unk_539FE7.CommitTrans
  loc_1036350:   Me.Requery -1
  loc_1036370:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_103637D:     Me.Bookmark = var_94
  loc_1036385:   Else
  loc_1036399:     If (Me.EOF = 0) Then
  loc_10363A2:       Me.MoveLast
  loc_10363A7:     End If
  loc_10363A7:   End If
  loc_10363A7:   Call Proc_339_72_1641738(var_128)
  loc_10363C8:   Proc_5_0_1107AD0(&HFF, Me, global_64)
  loc_10363D0: End If
  loc_10363D0: Exit Sub
  loc_10363D1: ' Referenced from: 10361E4
  loc_10363D7: unk_539FE7.RollbackTrans
  loc_10363E4: Set var_11C = Err()
  loc_10363EA: Call 0.Method_arg_2C (var_124, 0)
  loc_103640B: MsgBox(CVar(var_124), &H30, " Deletion Error ", var_F4, var_114)
  loc_103641E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EF8B18
  'Data Table: 539FB8
  Dim var_94 As TextBox
  Dim var_8C As Variant
  loc_EF8A40: On Error Goto loc_EF8B11
  loc_EF8A51: If (Proc_183_55_FE8490(global_64) = &HFF) Then
  loc_EF8A54:   Exit Sub
  loc_EF8A55: End If
  loc_EF8A78: Call Proc_339_69_F8E644(Proc_5_1_100EC1C("EDIT", Me))
  loc_EF8A90: Set var_8C = Me.Txt
  loc_EF8A96: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_94)
  loc_EF8A9E: var_94.Enabled = False
  loc_EF8AB9: Me.GridSel.Enabled = False
  loc_EF8ACC: Set var_8C = Me.Txt
  loc_EF8AD2: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_94)
  loc_EF8ADA: var_94.SetFocus
  loc_EF8AF3: Me.LblUser.Caption = vbNullString
  loc_EF8B08: Me.LblLDt.Caption = vbNullString
  loc_EF8B10: Exit Sub
  loc_EF8B11: ' Referenced from: EF8A40
  loc_EF8B11: Proc_6_60_E63754(global_64)
  loc_EF8B16: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B0BC
  'Data Table: 539FB8
  loc_E1B0B1: Me.Global.Unload Me
  loc_E1B0B9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F '100E054
  'Data Table: 539FB8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_E8 As Variant
  Dim var_10C As String
  Dim var_C8 As Variant
  Dim var_108 As Variant
  Dim MemVar_1F950E4 As String
  Dim var_A8 As Variant
  loc_100DE50: On Error Goto loc_100DFED
  loc_100DE5C: var_88 = Me.RecordCount
  loc_100DE6A: If (var_88 <= 0) Then
  loc_100DE8E:   MsgBox("Records Not Present For Searching.", &H40, "Information", var_E8, var_108)
  loc_100DE9E:   Exit Sub
  loc_100DE9F: End If
  loc_100DEAA: var_A8 = Ucase(MemVar_1F950C8)
  loc_100DED3: If CBool((var_A8 = "SA") Or (MemVar_1F950B8 = 1)) Then
  loc_100DEE0:   var_10C = "Select P.DocID as SearchCode,P.VNo,S.Name As Party From PayCharge P Left Join Subgroup S On S.SubCode=P.AgAc where P.VType='" & global_128
  loc_100DF06:   var_C8 = CVar(var_10C & "' And P.RestCode='" & global_52 & "' And P.LOGSITE_CODE='" & MemVar_1F95078 & "' AND P.vdate>=") 'String
  loc_100DF14:   Proc_6_7_F26918(var_A8, MemVar_1F950F4)
  loc_100DF2A:   MemVar_1F950E4 = CStr(var_C8 & var_A8 & " Order by DocID")
  loc_100DF49: Else
  loc_100DF53:   var_10C = "Select P.DocID as SearchCode,P.VNo,S.Name As Party From PayCharge P Left Join Subgroup S On S.SubCode=P.AgAc where P.VType='" & global_128
  loc_100DF79:   var_C8 = CVar(var_10C & "' And P.RestCode='" & global_52 & "' And P.LOGSITE_CODE='" & MemVar_1F95078 & "' AND P.vdate=") 'String
  loc_100DF87:   Proc_6_7_F26918(var_A8, MemVar_1F950EC)
  loc_100DF8F:   var_E8 = var_C8 & var_A8 
  loc_100DF93:   var_B8 = " Order by DocID"
  loc_100DF98:   var_108 = var_E8 & var_B8 
  loc_100DF9D:   MemVar_1F950E4 = CStr(var_108)
  loc_100DFB9: End If
  loc_100DFBF: MemVar_1F95120 = Me
  loc_100DFC6: var_10C = "1100,3500"
  loc_100DFCC: Proc_6_126_F1C850(var_10C, MemVar_1F950E4)
  loc_100DFE7: Call 0.Method_arg_2B0 (1, var_B8)
  loc_100DFEC: Exit Sub
  loc_100DFED: ' Referenced from: 100DE50
  loc_100DFF5: Set var_120 = Err()
  loc_100DFFB: Call 0.Method_arg_1C (var_88)
  loc_100E00C: If (var_88 <> 0) Then
  loc_100E017:   Set var_120 = Err()
  loc_100E01D:   Call 0.Method_arg_2C (var_10C)
  loc_100E03E:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_100E051: End If
  loc_100E051: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3ABC8
  'Data Table: 539FB8
  loc_E3ABB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3ABC0: Call Proc_339_72_1641738(global_64)
  loc_E3ABC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3A8C8
  'Data Table: 539FB8
  loc_E3A8B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3A8C0: Call Proc_339_72_1641738(global_64)
  loc_E3A8C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E342C8
  'Data Table: 539FB8
  loc_E342B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E342C0: Call Proc_339_72_1641738(global_64)
  loc_E342C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E347A8
  'Data Table: 539FB8
  loc_E34798: Proc_5_0_1107AD0(&HFF, Me)
  loc_E347A0: Call Proc_339_72_1641738(global_64)
  loc_E347A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '11C8574
  'Data Table: 539FB8
  Dim var_AC As String
  Dim var_A4 As TextBox
  Dim var_B0 As String
  Dim unk_539FE7 As Connection15
  Dim var_88 As Recordset15
  Dim var_A8 As String
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_EC As Long
  loc_11C8140: On Error Goto loc_11C856B
  loc_11C8157: var_AC = "SELECT P.VNO AS RECTNO,P.VDATE AS RECTDATE,P.PAYTYPE AS RECTMODE,P.U_Name As UserName,P.AMTCR AS RECTAMT,P.CardNo AS CCardNo,P.Cardholder As CCardholder,P.ChqNo,P.ChqDate,P.ExpDate AS CCExpDate,P.BatchNo,P.AgAc,S.Name AS AgCompany," & " R.NAME As PayName,P.TxnNo FROM PAYCHARGE P LEFT JOIN RevMast R ON P.PayCode = R.Code LEFT JOIN SubGroup S ON P.AgAc = S.SubCode WHERE P.DOCID='"
  loc_11C8168: Set var_A0 = Me.Txt
  loc_11C816E: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_A4, var_A8, var_AC)
  loc_11C8176: var_D4 = var_A4.Text
  loc_11C817F: var_B0 = -1 & var_A8
  loc_11C818F: unk_539FE7.Execute var_B0 & "' ORDER BY P.DOCID", var_D8, 
  loc_11C819A: Set var_88 = var_D8
  loc_11C81D2: Set var_A0 = Me.Txt
  loc_11C81D8: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_A4, var_A8, "Select D.Name OutletName, Cast(LTrim(Substring(DocId1,14,8)) As Integer) RecptNo, Cast(LTrim(Substring(DocId2,14,8)) As Integer) BillNo,Cr As BillAmt From LEDGERADJ LA Left Join PayCharge P On LA.Docid1=P.Docid Left Join Depart D On D.Code=P.RestCode Where Docid1='")
  loc_11C81E0: var_D4 = var_A4.Text
  loc_11C81E9: var_AC = -1 & var_A8
  loc_11C81F9: unk_539FE7.Execute var_AC & "' Order By Cast(LTrim(Substring(DocId2,14,8)) As Integer)", var_D8, 
  loc_11C821F: var_9C = "PosPaymentRecieptBillInfo"
  loc_11C8228: var_DC = var_88.RecordCount
  loc_11C8236: If (var_DC > 0) Then
  loc_11C823C:   var_8C = "POSPAYMENTRECIEPT"
  loc_11C8263:   Set var_A0 = var_88 
  loc_11C826A:   CreateFieldDefFile(var_A0, MemVar_1F950B4 & "\" & var_8C & ".ttx")
  loc_11C82AC:   Call 0.Method_arg_1C (MemVar_1F950B4 & "\" & var_8C & ".RPT", var_C4)
  loc_11C82B7:   MemVar_1F951E8 = var_A0
  loc_11C82E0:   Call 0.Method_arg_64 (var_A0, CVar(var_A0), var_EC)
  loc_11C82E8:   Call 0.Method_arg_2C (var_FC, var_A0)
  loc_11C82F9:   Call 0.Method_arg_20 (var_A0)
  loc_11C8304:   Set var_104 = var_A0
  loc_11C8315:   Call 0.Method_arg_24 (var_DC, var_10E)
  loc_11C831E:   For var_114 = &HFF To CInt(var_DC): 1 = var_114 'Integer
  loc_11C8331:     Call 0.Method_arg_20 (CVar(var_10E), var_A0)
  loc_11C833C:     Set var_108 = var_A0
  loc_11C8348:     Call 0.Method_arg_2C (var_A0)
  loc_11C8353:     Set var_10C = var_A0
  loc_11C8364:     Call 0.Method_arg_24 (var_DC, var_110)
  loc_11C836D:     For var_118 = &HFF To CInt(var_DC): 1 = var_118 'Integer
  loc_11C8380:       Call 0.Method_arg_20 (CVar(var_110), var_A0)
  loc_11C838D:       var_EC = 5
  loc_11C839E:       If (var_A0.Kind = var_EC) Then
  loc_11C83AE:         Call 0.Method_arg_20 (CVar(var_110), var_A0)
  loc_11C83CD:         If (var_A0.Name = "Subreport1") Then
  loc_11C83DC:           var_A8 = "\" & var_9C
  loc_11C83F4:           Set var_A0 = var_D8 
  loc_11C83FB:           CreateFieldDefFile(var_A0, MemVar_1F950B4 & var_A8 & ".ttx")
  loc_11C8437:           Call 0.Method_arg_174 (var_9C, var_A0, var_A4, CVar(var_A0))
  loc_11C843F:           Call 0.Method_arg_64 (var_EC, var_FC)
  loc_11C8447:           Call 0.Method_arg_2C (&HFF)
  loc_11C8453:         End If
  loc_11C8453:       End If
  loc_11C8456:     Next var_118 'Integer
  loc_11C845E:   Next var_114 'Integer
  loc_11C8469:   Call 0.Method_arg_150 ()
  loc_11C847F:   Call 0.Method_arg_90 (var_A0, var_DC)
  loc_11C8487:   Call 0.Method_arg_24 (var_92)
  loc_11C8493:   For var_13C =  To CInt(var_DC): 1 = var_13C 'Integer
  loc_11C84AC:     Call 0.Method_arg_90 (var_A0, CLng(var_92))
  loc_11C84B4:     Call 0.Method_arg_20 (var_A4)
  loc_11C84BC:     Call 0.Method_arg_30 (var_A8)
  loc_11C84EB:     If (Ucase(CVar(var_A8)) = "TITLE") Then
  loc_11C8501:       Call 0.Method_arg_90 (var_A0, CLng(var_92))
  loc_11C8509:       Call 0.Method_arg_20 (var_A4)
  loc_11C8511:       Call 0.Method_arg_38 ("'PAYMENT RECIEPT'")
  loc_11C851D:     End If
  loc_11C8520:   Next var_13C 'Integer
  loc_11C852A:   Set var_A4 = Nothing
  loc_11C8540:   Set var_A0 = MemVar_1F951E8 
  loc_11C854C:   Proc_6_99_1484404(var_A0, 0, var_90)
  loc_11C8557:   MemVar_1F951E8 = var_A0
  loc_11C8562: End If
  loc_11C8567: Set var_88 = Nothing
  loc_11C856A: Exit Sub
  loc_11C856B: ' Referenced from: 11C8140
  loc_11C856B: Proc_6_60_E63754(&HFF)
  loc_11C8570: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E6E42C
  'Data Table: 539FB8
  Dim Me As Recordset15
  loc_E6E3D3: Me.Requery -1
  loc_E6E3E3: Me.Requery -1
  loc_E6E3F3: Me.Requery -1
  loc_E6E403: Me.Requery -1
  loc_E6E413: Me.Requery -1
  loc_E6E423: Me.Requery -1
  loc_E6E428: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '17BDC4C
  'Data Table: 539FB8
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_124 As String
  Dim var_EC As Variant
  Dim var_15C As Variant
  Dim var_168 As Double
  Dim var_158 As Variant
  Dim var_160 As String
  Dim var_170 As String
  Dim unk_539FE7 As Connection15
  Dim var_96 As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Variant
  Dim var_1C4 As Variant
  Dim var_134 As Variant
  Dim var_1C8 As String
  Dim var_1E4 As Variant
  Dim var_204 As Variant
  Dim var_218 As MSHFlexGrid
  Dim var_144 As Variant
  Dim var_390 As Double
  Dim var_238 As Variant
  Dim var_26C As Variant
  Dim var_154 As Variant
  Dim var_17C As String
  Dim var_1D4 As String
  Dim var_220 As String
  Dim var_224 As String
  Dim var_270 As String
  Dim var_274 As String
  Dim var_278 As String
  Dim var_27C As String
  Dim var_2B0 As Variant
  Dim var_2E0 As Variant
  Dim var_2F0 As Variant
  Dim var_300 As Variant
  Dim var_320 As Variant
  Dim var_330 As Variant
  Dim var_340 As Variant
  Dim unk_53A005 As Connection15
  Dim var_AC As Variant
  Dim var_2A0 As Variant
  Dim var_3A4 As Variant
  Dim var_1F4 As Variant
  Dim var_214 As Variant
  Dim var_248 As Variant
  Dim var_268 As Variant
  Dim var_3FC As Variant
  Dim var_374 As Variant
  Dim var_480 As Variant
  Dim var_4A0 As Variant
  Dim var_4B4 As MSHFlexGrid
  Dim var_514 As Variant
  Dim var_534 As Long
  Dim var_5A8 As Variant
  Dim var_5C8 As Long
  Dim var_5EC As Variant
  Dim var_63C As Variant
  Dim var_65C As Long
  Dim var_6D0 As Variant
  Dim var_6F0 As Variant
  Dim var_718 As String
  Dim var_7B0 As String
  Dim var_F58 As Double
  Dim var_898 As TextBox
  Dim var_F60 As Double
  Dim var_930 As Variant
  Dim var_9C4 As Variant
  Dim var_A58 As Variant
  Dim var_B90 As Variant
  Dim var_D5C As TextBox
  Dim var_290 As Variant
  Dim var_384 As Variant
  Dim var_3B4 As Variant
  Dim var_3C4 As Variant
  Dim var_450 As Variant
  Dim var_4E4 As Variant
  Dim var_578 As Variant
  Dim var_60C As Variant
  Dim var_6C0 As Variant
  Dim var_7D0 As Variant
  Dim var_810 As Variant
  Dim var_850 As Variant
  Dim var_940 As Variant
  Dim var_9E4 As Variant
  Dim var_A04 As Variant
  Dim var_A98 As Variant
  Dim var_D34 As Variant
  Dim var_F28 As String
  Dim var_9C As Recordset15
  Dim var_C8 As Recordset15
  Dim var_440 As Variant
  Dim var_C4 As Double
  Dim var_F88 As Double
  Dim var_F90 As Double
  Dim var_F98 As Double
  Dim Me As Recordset15
  loc_17BBEC4: Call Proc_339_78_14D3020()
  loc_17BBEC9: var_DC = 1
  loc_17BBED2: var_FC = 1
  loc_17BBF01: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_17BBF25:   MsgBox("Please Fill Payment Details Before Saving..", &H40, "Save Data", var_144, var_154)
  loc_17BBF35:   Exit Sub
  loc_17BBF36: End If
  loc_17BBF44: Set var_158 = Me.Txt
  loc_17BBF4A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_15C, var_160)
  loc_17BBF52: var_FC = var_15C.Text
  loc_17BBF5F: var_168 = Val(var_160)
  loc_17BBF62: var_DC = 1
  loc_17BBF6B: var_FC = 8
  loc_17BBFAA: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(var_168)) Then
  loc_17BBFB8:   var_134 = "Save Data"
  loc_17BBFC3:   var_DC = "Amount Mismatched save Detail in Grid first"
  loc_17BBFCE:   MsgBox(var_DC, &H40, var_134, var_144, var_154)
  loc_17BBFDE:   Exit Sub
  loc_17BBFDF: End If
  loc_17BBFE2: Call Proc_339_67_1010FB8(var_16A, var_FC, var_DC)
  loc_17BBFED: If (var_16A = 0) Then
  loc_17BBFF0:   Exit Sub
  loc_17BBFF1: End If
  loc_17BBFF5: Set var_110 = Me.TopCtrl1
  loc_17BBFFB: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_168)
  loc_17BC014: If (CStr(var_DC) = "Add") Then
  loc_17BC01D:   global_180 = MemVar_1F950C8
  loc_17BC02E:   global_184 = CDate(Proc_6_14_EF402C())
  loc_17BC034: End If
  loc_17BC038: Set var_110 = Me.TopCtrl1
  loc_17BC03E: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(global_184)
  loc_17BC057: If (CStr() = "Add") Then
  loc_17BC060:   Call Proc_339_75_10EE9C0(MemVar_1F95044)
  loc_17BC068: End If
  loc_17BC076: Set var_110 = Me.Txt
  loc_17BC07C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_158)
  loc_17BC084: var_124 = var_158.Text
  loc_17BC09B: If (var_124 = vbNullString) Then
  loc_17BC0B7:   MsgBox("Voucher Not defined for Entry", &H10, var_134, var_144, var_154)
  loc_17BC0C7: End If
  loc_17BC0E5: Set var_110 = Me.Txt
  loc_17BC0EB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_158, var_124, "Delete From LEDGERADJ Where Docid1='")
  loc_17BC0F3: var_120 = var_158.Text
  loc_17BC0FC: var_160 = -1 & var_124
  loc_17BC10C: unk_539FE7.Execute var_160 & "'", var_15C, var_124
  loc_17BC12A: var_86 = CByte(0) 'Byte
  loc_17BC137: unk_539FE7.BeginTrans var_174
  loc_17BC140: var_86 = CByte(1) 'Byte
  loc_17BC162: Set var_110 = Me.Txt
  loc_17BC168: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_158, var_124, "Delete From PayCharge Where Docid='")
  loc_17BC170: var_120 = var_158.Text
  loc_17BC179: var_160 = -1 & var_124
  loc_17BC189: unk_539FE7.Execute var_160 & "'", var_15C, 
  loc_17BC1C8: For var_178 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_AA = var_178 'Integer
  loc_17BC1D1:   var_96 = var_AA
  loc_17BC1D8:   var_DC = CVar(CLng(var_96)) 'Long
  loc_17BC1E0:   var_FC = CVar(CLng(0)) 'Long
  loc_17BC20B:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_17BC234:     var_124 = CStr(Me.GridSel.TextMatrix))
  loc_17BC245:     If (var_124 <> vbNullString) Then
  loc_17BC256:       Set var_110 = Me.Txt
  loc_17BC25C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_158, var_124, CVar(CLng(2)), CVar(CLng(var_96)))
  loc_17BC264:       var_FC = var_158.Text
  loc_17BC26D:       var_DC = CVar(CLng(var_96)) 'Long
  loc_17BC275:       var_FC = CVar(CLng(2)) 'Long
  loc_17BC294:       var_190 = CVar(CLng(var_96)) 'Long
  loc_17BC29C:       var_1B0 = CVar(CLng(3)) 'Long
  loc_17BC2A5:       Set var_1C4 = Me.GridSel
  loc_17BC2EF:       var_390 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_17BC307:       Set var_26C = Me.GridSel
  loc_17BC30D:       var_154 = var_26C.TextMatrix)
  loc_17BC327:       Proc_183_7_EB17D4(var_2A0, Now, var_154, CVar(CLng(7)), CVar(CLng(var_96)), var_390, CVar(CLng(5)), CVar(CLng(var_96)))
  loc_17BC340:       var_160 = "INSERT INTO LEDGERADJ (DOCID1,V_SNO1,DOCID2,V_SNO2,CR,SUBCODE,U_Name,U_EntDt,U_AE,SITE_CODE,LOGSITE_CODE) VALUES ('" & var_124
  loc_17BC34E:       var_17C = CStr(Me.GridSel.TextMatrix))
  loc_17BC374:       var_224 = CStr(var_390)
  loc_17BC391:       var_27C = var_160 & "',1,'" & var_17C & "'," & CStr(Val(CStr(var_1C4.TextMatrix)))) & "," & var_224 & ",'" & CStr(var_154) & "','"
  loc_17BC39F:       var_2B0 = CVar(var_27C & MemVar_1F950C8 & "',") 'String
  loc_17BC3E2:       unk_53A005.Execute CStr(var_2B0 & var_2A0 & ",'A','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), var_384, -1
  loc_17BC440:     End If
  loc_17BC440:   End If
  loc_17BC443: Next var_178 'Integer
  loc_17BC46D: For var_394 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_AA = var_394 'Integer
  loc_17BC477:   var_DC = CVar(CLng(var_AA)) 'Long
  loc_17BC47C:   var_FC = 2
  loc_17BC4AB:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_17BC4B4:     var_AC = (var_AC + 1)
  loc_17BC4C5:     Set var_110 = Me.Txt
  loc_17BC4CB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_158, var_17C, var_AC)
  loc_17BC4D3:     var_FC = var_158.Text
  loc_17BC4EC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1C4, var_224)
  loc_17BC4F4:     var_DC = var_1C4.Text
  loc_17BC514:     Set var_218 = Me.Txt
  loc_17BC51A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_26C)
  loc_17BC529:     Proc_6_7_F26918(var_2B0, CVar(var_26C))
  loc_17BC55A:     var_190 = CVar(CLng(var_AA)) 'Long
  loc_17BC562:     var_1B0 = CVar(CLng(&H10)) 'Long
  loc_17BC581:     var_1F4 = CVar(CLng(var_AA)) 'Long
  loc_17BC586:     var_214 = 1
  loc_17BC5A9:     var_248 = CVar(CLng(var_AA)) 'Long
  loc_17BC5AE:     var_268 = &H14
  loc_17BC5D1:     var_2F0 = CVar(CLng(var_AA)) 'Long
  loc_17BC5D6:     var_330 = &H18
  loc_17BC618:     var_440 = IIf((CStr(Me.FGrid.TextMatrix)) = MemVar_1F95078 & "CRED"), CVar(CStr(Me.FGrid.TextMatrix))), CVar(CStr(Me.FGrid.TextMatrix))))
  loc_17BC621:     var_480 = CVar(CLng(var_AA)) 'Long
  loc_17BC629:     var_4A0 = CVar(CLng(&HE)) 'Long
  loc_17BC648:     var_514 = CVar(CLng(var_AA)) 'Long
  loc_17BC64D:     var_534 = 1
  loc_17BC670:     var_5A8 = CVar(CLng(var_AA)) 'Long
  loc_17BC675:     var_5C8 = 2
  loc_17BC698:     var_63C = CVar(CLng(var_AA)) 'Long
  loc_17BC69D:     var_65C = 8
  loc_17BC6CA:     var_6D0 = CVar(CLng(var_AA)) 'Long
  loc_17BC6CF:     var_6F0 = 8
  loc_17BC6F5:     var_390 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17BC727:     var_F58 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17BC738:     Set var_894 = Me.Txt
  loc_17BC73E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_898, var_89C, var_F58, &H11, CVar(CLng(var_AA)), var_390)
  loc_17BC746:     var_6F0 = var_898.Tag
  loc_17BC753:     var_F60 = Val(var_89C)
  loc_17BC771:     var_930 = Me.FGrid.TextMatrix)
  loc_17BC798:     var_9C4 = Me.FGrid.TextMatrix)
  loc_17BC7BF:     var_A58 = Me.FGrid.TextMatrix)
  loc_17BC7F7:     Proc_6_7_F26918(var_B0C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HD)), CVar(CLng(var_AA)), var_A58, CVar(CLng(&HC)), CVar(CLng(var_AA)), var_9C4)
  loc_17BC818:     var_B90 = Me.FGrid.TextMatrix)
  loc_17BC829:     Proc_6_17_EAAE40(var_BB0, CVar(CStr(var_B90)), &H1A, CVar(CLng(var_AA)), CVar(CLng(&HA)), CVar(CLng(var_AA)))
  loc_17BC85A:     Proc_6_7_F26918(var_C54, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_AA)), var_930)
  loc_17BC86D:     Proc_6_7_F26918(var_CE4, Date, CVar(CLng(9)), CVar(CLng(var_AA)))
  loc_17BC880:     Set var_D58 = Me.Txt
  loc_17BC886:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_D5C, var_D60)
  loc_17BC8C0:     Proc_6_39_E7D3A0(var_E14, CVar(CStr(Me.FGrid.TextMatrix))), &H17)
  loc_17BC8D3:     Proc_6_17_EAAE40(var_EA4, global_180, CVar(CLng(var_AA)))
  loc_17BC8E6:     Proc_6_8_EB1974(var_EF4, global_184)
  loc_17BC8FF:     var_124 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, " & "GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_17BC90D:     var_170 = var_124 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,AgAc,BatchNo,LOGSITE_CODE,AU_Name,AU_EntDt) Values ("
  loc_17BC92E:     var_1D4 = var_170 & "'" & var_17C & "'," & CStr(var_AC)
  loc_17BC968:     var_154 = CVar(var_1D4 & ",'" & global_128 & "','" & var_224 & "','" & MemVar_1F95070 & "','") & Trim(CVar(Me.LblVPrefix)) 
  loc_17BC97C:     var_EC = ",'"
  loc_17BC9AF:     var_450 = var_154 & "'," & var_2B0 & var_EC & CVar(Format$(Time, "HH:mm")) & "','','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & var_440 
  loc_17BC9EB:     var_60C = var_450 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_17BCA3D:     var_810 = var_60C & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_390) & "," & CVar(var_F58) & ",'" & CVar(global_152) 
  loc_17BCA81:     var_940 = CVar(CStr(var_930)) 'String
  loc_17BCA98:     var_9E4 = var_810 & "'," & "'" & CVar(global_156) & "','.'," & CVar(var_D5C.Tag) & ",'" & var_940 & "','" & CVar(CStr(var_9C4)) 
  loc_17BCAB5:     var_A98 = var_9E4 & "','" & CVar(CStr(var_A58)) & "'," 
  loc_17BCB15:     var_D34 = var_A98 & var_B0C & "," & var_BB0 & "," & var_C54 & ",'" & CVar(MemVar_1F950C8) & "'," & var_CE4 & ",'A','" & CVar(global_52) 
  loc_17BCB78:     var_F28 = CStr(var_D34 & "','" & CVar(var_D60) & "'," & var_E14 & ",'" & CVar(MemVar_1F95078) & "'," & var_EA4 & "," & var_EF4 & ")")
  loc_17BCB82:     unk_539FE7.Execute var_F28, var_F48, -1
  loc_17BCCD2:     var_AC = (var_AC + 1)
  loc_17BCCD9:     var_DC = CVar(CLng(var_AA)) 'Long
  loc_17BCCDE:     var_FC = 2
  loc_17BCCEB:     Set var_110 = Me.FGrid
  loc_17BCCF1:     var_120 = var_110.TextMatrix)
  loc_17BCD0D:     If (CStr(var_120) = "Room") Then
  loc_17BCD3B:       unk_539FE7.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F95078 & "TOUT" & "'", var_120, -1
  loc_17BCD46:       Set var_9C = var_110
  loc_17BCD6C:       If (var_9C.RecordCount > 0) Then
  loc_17BCD9B:         var_158 = var_9C.Fields.Item("TaxStru")
  loc_17BCDAB:         var_134 = "Select * from taxstru where Code='" & var_158.Value 
  loc_17BCDB4:         var_144 = var_134 & "' Order by Sno" 
  loc_17BCDC2:         unk_539FE7.Execute CStr(var_144), var_154, -1
  loc_17BCDCD:         Set var_A0 = Me.Txt
  loc_17BCDEA:       Else
  loc_17BCE03:         MsgBox("System Defined Revenue is not defined", 0, var_134, var_144, var_154)
  loc_17BCE19:         unk_539FE7.RollbackTrans
  loc_17BCE1E:         Exit Sub
  loc_17BCE1F:       End If
  loc_17BCE23:       var_DC = CVar(CLng(var_AA)) 'Long
  loc_17BCE28:       var_FC = &H16
  loc_17BCE5B:       var_124 = "Select Docid,GuestProf from GuestFolio where LOGSITE_CODE='" & MemVar_1F95078
  loc_17BCE7D:       unk_539FE7.Execute var_124 & "' AND Docid='" & CStr(Me.FGrid.TextMatrix)) & "' ORDER BY VDATE DESC", var_134, -1
  loc_17BCE88:       Set var_C8 = var_158
  loc_17BCEBA:       If (var_C8.RecordCount > 0) Then
  loc_17BCEC3:         var_DC = "GuestProf"
  loc_17BCED7:         var_158 = var_C8.Fields.Item(var_DC)
  loc_17BCEDF:         var_120 = var_158.Value
  loc_17BCEE8:         var_CC = CStr(var_120)
  loc_17BCEF5:       End If
  loc_17BCF09:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_158, var_124, var_158, var_120, var_FC, var_DC)
  loc_17BCF11:       var_15C = var_158.Text
  loc_17BCF24:       Set var_15C = Me.Txt
  loc_17BCF2A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1C4, var_1D4, Me.Txt, var_FC)
  loc_17BCF32:       var_DC = var_1C4.Text
  loc_17BCF52:       Set var_218 = Me.Txt
  loc_17BCF58:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_26C, var_AC)
  loc_17BCF67:       Proc_6_7_F26918(var_2B0, CVar(var_26C))
  loc_17BCFBF:       var_204 = CVar(CLng(var_AA)) 'Long
  loc_17BCFC4:       var_238 = 2
  loc_17BCFE7:       var_268 = CVar(CLng(var_AA)) 'Long
  loc_17BCFEC:       var_2F0 = 8
  loc_17BD019:       var_374 = CVar(CLng(var_AA)) 'Long
  loc_17BD01E:       var_480 = &H12
  loc_17BD031:       var_4E4 = Me.FGrid.TextMatrix)
  loc_17BD072:       var_5EC = Me.FGrid.TextMatrix)
  loc_17BD0B9:       var_6C0 = Me.FGrid.TextMatrix)
  loc_17BD0F5:       var_7D0 = Me.FGrid.TextMatrix)
  loc_17BD121:       var_390 = Val(CStr(Right(CVar(CStr(var_7D0)), 8)))
  loc_17BD132:       Proc_6_7_F26918(var_940, Date, var_390, var_7D0, &H16, CVar(CLng(var_AA)), var_6C0, &H12)
  loc_17BD16C:       Proc_6_17_EAAE40(var_A98, global_180, CVar(CLng(var_AA)), var_5EC, &H12)
  loc_17BD17F:       Proc_6_8_EB1974(var_B0C, global_184, CVar(CLng(var_AA)), var_4E4)
  loc_17BD198:       var_160 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,Comments,PayCode,PayType,AmtCr,AmtDr,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,BookNo,BookType,U_Name,U_EntDt,U_AE,RestCode,FolioNoDocid,LOGSITE_CODE,AU_Name,AU_EntDt)Values " & "('"
  loc_17BD1B2:       var_1C8 = var_160 & var_124 & "'," & CStr(var_AC)
  loc_17BD1F5:       var_290 = CVar(var_1C8 & ",'" & global_128 & "'," & var_1D4 & ",'" & MemVar_1F95070 & "','") & Trim(CVar(Me.LblVPrefix)) & "'," 
  loc_17BD20C:       var_340 = CVar(Format$(Time, "HH:mm")) 'String
  loc_17BD245:       var_3FC = var_290 & var_2B0 & ",'" & var_340 & "','" & CVar(var_CC) & "','" & CVar(var_94) & "','" & var_9C.Fields.Item("Code").Value 
  loc_17BD27D:       var_578 = var_3FC & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & Mid(CVar(CStr(var_4E4)), 3, 5) 
  loc_17BD2BA:       var_850 = var_578 & "','" & LTrim(Left(CVar(CStr(var_5EC)), 2)) & "','" & Right(CVar(CStr(var_6C0)), 5) & "'," & CVar(var_390) & ",'','',0,''," 
  loc_17BD30C:       var_A04 = var_850 & vbNullString & "'" & CVar(MemVar_1F950C8) & "'," & var_940 & ",'A','" & CVar(global_52) & "','" & var_C8.Fields.Item("DocID").Value 
  loc_17BD356:       unk_539FE7.Execute CStr(var_A04 & "','" & CVar(MemVar_1F95078) & "'," & var_A98 & "," & var_B0C & ")"), var_B90, -1
  loc_17BD43C:       var_AC = (var_AC + 1)
  loc_17BD443:       var_DC = CVar(CLng(var_AA)) 'Long
  loc_17BD448:       var_FC = &H12
  loc_17BD47F:       var_B4 = CStr(Right(CVar(CStr(Me.FGrid.TextMatrix))), 5))
  loc_17BD492:       var_DC = CVar(CLng(var_AA)) 'Long
  loc_17BD497:       var_FC = &H12
  loc_17BD4D9:       var_B8 = CStr(LTrim(Left(CVar(CStr(Me.FGrid.TextMatrix))), 2)))
  loc_17BD4EE:       var_DC = CVar(CLng(var_AA)) 'Long
  loc_17BD4F3:       var_FC = &H16
  loc_17BD54A:       var_DC = CVar(CLng(var_AA)) 'Long
  loc_17BD54F:       var_FC = &H12
  loc_17BD58B:       var_B0 = CStr(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 3, 5))
  loc_17BD5A0:       var_DC = CVar(CLng(var_AA)) 'Long
  loc_17BD5A5:       var_FC = 8
  loc_17BD5C3:       var_124 = CStr(Me.FGrid.TextMatrix))
  loc_17BD5CB:       var_168 = Val(var_124)
  loc_17BD5D5:       var_C4 = (var_C4 + var_168)
  loc_17BD5EF:       Set var_110 = Me.Txt
  loc_17BD5F5:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_158, var_1C8, var_C4, var_168, var_FC, var_DC)
  loc_17BD5FD:       var_120 = var_158.Text
  loc_17BD610:       Set var_15C = Me.Txt
  loc_17BD616:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1C4, var_124, var_FC, var_DC)
  loc_17BD61E:       var_120 = var_1C4.Text
  loc_17BD62B:       var_F88 = Val(var_124)
  loc_17BD639:       var_134 = Trim(CVar(Me.LblVPrefix))
  loc_17BD64C:       Set var_218 = Me.Txt
  loc_17BD652:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_26C, var_1D4, var_F88)
  loc_17BD65A:       var_FC = var_26C.Text
  loc_17BD68A:       var_2A0 = Trim(CVar(Format$(Time, "HH:mm")))
  loc_17BD6B1:       var_3B4 = var_9C.Fields.Item("Code").Value
  loc_17BD6BA:       var_FC = CVar(CLng(var_AA)) 'Long
  loc_17BD6BF:       var_190 = 8
  loc_17BD6E5:       var_F90 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17BD6EC:       var_1B0 = CVar(CLng(var_AA)) 'Long
  loc_17BD6F1:       var_1E4 = 8
  loc_17BD717:       var_F98 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17BD728:       var_2E0 = Date
  loc_17BD730:       var_300 = Date
  loc_17BD738:       var_320 = Now
  loc_17BD741:       Set var_4B4 = Me.TopCtrl1
  loc_17BD747:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(Val(CStr(Val(CStr(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))))
  loc_17BD779:       var_3A4 = IIf((CStr(var_340) = "Add"), "A", "E")
  loc_17BD7A0:       var_3C4 = var_C8.Fields.Item("DocID").Value
  loc_17BD7AA:       var_D60 = 0
  loc_17BD7B5:       var_89C = 0
  loc_17BD7C8:       var_7B0 = 0
  loc_17BD7D3:       var_718 = 0
  loc_17BD810:       var_27C = vbNullString
  loc_17BD819:       var_278 = vbNullString
  loc_17BD822:       var_274 = vbNullString
  loc_17BD850:       var_270 = "Room"
  loc_17BD864:       var_224 = vbNullString
  loc_17BD86D:       var_220 = vbNullString
  loc_17BD8B1:       Proc_96_8_1CC4F08(MemVar_1F95078 & "TOUT", var_1C8, var_AC, global_128, CLng(var_F88), MemVar_1F95070, CStr(var_134), CDate(var_1D4))
  loc_17BD929:     End If
  loc_17BD929:   End If
  loc_17BD92C: Next var_394 'Integer
  loc_17BD935: Set var_110 = Me.TopCtrl1
  loc_17BD93B: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17BD954: If (CStr() = "Add") Then
  loc_17BD96B:   var_124 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_17BD991:   var_144 = CVar(var_124 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_128 & "' And VP.Date_From<=") 'String
  loc_17BD9A2:   Set var_110 = Me.Txt
  loc_17BD9A8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_158, var_1C8, var_144)
  loc_17BD9B0:   var_2A0 = var_158.Text
  loc_17BD9BE:   Proc_6_7_F26918(var_134, CVar(var_1C8))
  loc_17BD9C6:   var_154 = -1 & var_134 
  loc_17BD9CF:   var_290 = "HH:mm" & " Order By VP.Date_From DESC" 
  loc_17BD9DD:   unk_539FE7.Execute CStr(var_290), var_15C, 
  loc_17BD9E8:   Set var_90 = var_15C
  loc_17BDA29:   If (Me.Recordset15.RecordCount > 0) Then
  loc_17BDA3A:     Set var_110 = Me.Txt
  loc_17BDA40:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_158)
  loc_17BDA48:     var_124 = var_158.Text
  loc_17BDA55:     var_168 = Val(var_124)
  loc_17BDA5B:     var_DC = "Date_From"
  loc_17BDA81:     Proc_6_7_F26918(var_134, CVar(Me.Recordset15.Fields.Item(var_DC)))
  loc_17BDAB4:     var_1C8 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_168) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_17BDAD3:     var_144 = CVar(var_1C8 & MemVar_1F95078 & "') and V_Type='" & global_128 & "' and Date_From=") 'String
  loc_17BDAD9:     var_154 = var_144 & var_134 
  loc_17BDAE7:     unk_539FE7.Execute CStr(var_154), var_290, -1
  loc_17BDB1B:   End If
  loc_17BDB1B: End If
  loc_17BDB20: Set var_9C = Nothing
  loc_17BDB28: Set var_A0 = Nothing
  loc_17BDB30: Set var_A4 = Nothing
  loc_17BDB39: unk_539FE7.CommitTrans
  loc_17BDB51: Me.Requery -1
  loc_17BDB61: Me.Requery -1
  loc_17BDB85: Set var_110 = Me.Txt
  loc_17BDB8B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_158, var_124, "SearchCode='", 0)
  loc_17BDB93: 1 = var_158.Text
  loc_17BDBAC: Me.Find var_DC & var_124 & "'", var_218, var_168
  loc_17BDBD6: var_124 = "INI"
  loc_17BDBE4: Call Proc_339_69_F8E644(Proc_5_1_100EC1C(var_124, Me))
  loc_17BDBEF: Call Proc_339_73_F70BAC(global_64)
  loc_17BDBF4: Call Proc_339_72_1641738()
  loc_17BDBF9: Exit Sub
  loc_17BDC03: If (CInt(CByte(0)) = 1) Then
  loc_17BDC0C:   unk_539FE7.RollbackTrans
  loc_17BDC11: End If
  loc_17BDC19: Set var_110 = Err()
  loc_17BDC1F: Call 0.Method_arg_2C (var_124)
  loc_17BDC38: MsgBox(CVar(var_124), &H10, var_134, var_144, var_154)
  loc_17BDC4B: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_9 'F36ED4
  'Data Table: 539FB8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F36DCB: Me.DGEmp.Visible = False
  loc_F36DEA: If (Me.RecordCount > 0) Then
  loc_F36E29:   Set var_B4 = Me.Txt
  loc_F36E2F:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F36E37:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F36E6A:   var_B0 = Me.Fields.Item("Code")
  loc_F36E89:   Set var_B4 = Me.Txt
  loc_F36E8F:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F36E97:   var_B8.Tag = CStr(var_B0.Value)
  loc_F36EAD: End If
  loc_F36EB8: Set var_A8 = Me.Txt
  loc_F36EBE: Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&HF))
  loc_F36EC6: var_B0.SetFocus
  loc_F36ED2: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_1F 'E6E264
  'Data Table: 539FB8
  loc_E6E222: Proc_6_153_E91D24(Me.DGEmp, arg_14)
  loc_E6E239: Set var_8C = Me.FGPoint
  loc_E6E255: Proc_6_138_106E830(Me.DGEmp, global_72, CInt(&HF))
  loc_E6E263: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_9 'F4C114
  'Data Table: 539FB8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4C00B: Me.DGCompany.Visible = False
  loc_F4C02A: If (Me.RecordCount > 0) Then
  loc_F4C069:   Set var_B4 = Me.Txt
  loc_F4C06F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F4C077:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4C0AA:   var_B0 = Me.Fields.Item("Code")
  loc_F4C0C9:   Set var_B4 = Me.Txt
  loc_F4C0CF:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F4C0D7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4C0ED: End If
  loc_F4C0F8: Set var_A8 = Me.Txt
  loc_F4C0FE: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HD))
  loc_F4C106: var_B0.SetFocus
  loc_F4C112: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_1F 'E6E0A8
  'Data Table: 539FB8
  loc_E6E066: Proc_6_153_E91D24(Me.DGCompany, arg_14)
  loc_E6E07D: Set var_8C = Me.FGPoint
  loc_E6E099: Proc_6_138_106E830(Me.DGCompany, global_84, CInt(&HD))
  loc_E6E0A7: Exit Sub
End Sub

Private Sub DGAgAc_UnknownEvent_9 'EEAF30
  'Data Table: 539FB8
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EEAE79: Set var_A8 = Me.DGAgAc
  loc_EEAE7F: var_A8.Visible = False
  loc_EEAEA1: If (Me.var_A8.RecordCount > 0) Then
  loc_EEAEC4:   var_B0 = Me.Recordset15.Fields.Item("Name")
  loc_EEAEE3:   Set var_B4 = Me.Txt
  loc_EEAEE9:   Call 0.Method_DGAgAc_UnknownEvent_90 (CInt(4), var_B8)
  loc_EEAEF1:   var_B8.Text = CStr(var_B0.Value)
  loc_EEAF07: End If
  loc_EEAF12: Set var_A8 = Me.Txt
  loc_EEAF18: Call 0.Method_DGAgAc_UnknownEvent_90 (CInt(4))
  loc_EEAF20: var_B0.SetFocus
  loc_EEAF2C: Exit Sub
  loc_EEAF2D: var_B0 = 
End Sub

Private Sub DGAgAc_UnknownEvent_1F 'E7ADA0
  'Data Table: 539FB8
  loc_E7AD5A: Proc_6_153_E91D24(Me.DGAgAc, arg_14)
  loc_E7AD71: Set var_8C = Me.FGPoint
  loc_E7AD91: Proc_6_138_106E830(Me.DGAgAc, global_92, CInt(4))
  loc_E7AD9F: Exit Sub
End Sub

Public Function global_52Get() '53BAB4
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '53BAC3
  global_52 = Value
End Sub

Public Function global_56Get() '53BAD2
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '53BAE1
  global_56 = Value
End Sub

Public Function global_60Get() '53BAF0
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '53BAFF
  global_60 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC23F4
  'Data Table: 539FB8
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC236A: On Error Goto loc_EC23AF
  loc_EC2373: Me.MoveFirst
  loc_EC238D: var_8C = "Searchcode='" & MyValue
  loc_EC239D: Me.Find var_8C & "'", 0, 1
  loc_EC23A9: Call Proc_339_72_1641738(var_A0)
  loc_EC23AE: Exit Sub
  loc_EC23AF: ' Referenced from: EC236A
  loc_EC23B7: Set var_A4 = Err()
  loc_EC23BD: Call 0.Method_arg_2C (var_8C)
  loc_EC23DE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC23F1: Exit Sub
  loc_EC23F2: Exit Sub
End Sub

Public Property Get OpenMode() 'E0A250
  'Data Table: 539FB8
  loc_E0A249: OpenMode = global_116
End Sub

Public Property Let OpenMode(vNewValue) 'E01360
  'Data Table: 539FB8
  loc_E0135A: global_116 = vNewValue
  loc_E0135D: Exit Sub
End Sub

Public Property Get OpenType() 'E0A190
  'Data Table: 539FB8
  loc_E0A189: OpenType = global_120
End Sub

Public Property Let OpenType(vNewValue) 'E01054
  'Data Table: 539FB8
  loc_E0104E: global_120 = vNewValue
  loc_E01051: Exit Sub
End Sub

Public Property Get AdvType() 'E0DF2C
  'Data Table: 539FB8
  loc_E0DF20: var_88 = global_128
  loc_E0DF23: AdvType = 
  loc_E0DF29: WMemStAd
End Sub

Public Property Let AdvType(vNewValue) 'E0DCA4
  'Data Table: 539FB8
  loc_E0DC9C: global_128 = vNewValue
  loc_E0DCA0: Exit Sub
  loc_E0DCA1: WMemStAd
End Sub

Public Property Get IdNo() 'E0CB7C
  'Data Table: 539FB8
  loc_E0CB70: var_88 = global_124
  loc_E0CB73: IdNo = 
End Sub

Public Property Let IdNo(vNewValue) 'E0CA5C
  'Data Table: 539FB8
  loc_E0CA54: global_124 = vNewValue
  loc_E0CA58: Exit Sub
  loc_E0CA59: If  Then Exit Sub
  loc_E0CA59: End If
End Sub

Public Property Get PersonCode() 'E0C81C
  'Data Table: 539FB8
  loc_E0C810: var_88 = global_136
  loc_E0C813: PersonCode = 
  loc_E0C819: WMemStAd
End Sub

Public Property Let PersonCode(vNewValue) 'E0C7D4
  'Data Table: 539FB8
  loc_E0C7CC: global_136 = vNewValue
  loc_E0C7D0: Exit Sub
End Sub

Public Property Get pDocId() 'E0C594
  'Data Table: 539FB8
  loc_E0C588: var_88 = global_132
  loc_E0C58B: pDocId = 
  loc_E0C591: WMemStAd
End Sub

Public Property Let pDocId(vNewValue) 'E0CFFC
  'Data Table: 539FB8
  loc_E0CFF4: global_132 = vNewValue
  loc_E0CFF8: Exit Sub
  loc_E0CFF9: WMemStAd
End Sub

Public Property Get PTableOrRoomNo() 'E0D164
  'Data Table: 539FB8
  loc_E0D158: var_88 = global_140
  loc_E0D15B: PTableOrRoomNo = 
  loc_E0D161: WMemStAd
End Sub

Public Property Let PTableOrRoomNo(vNewValue) 'E0D1F4
  'Data Table: 539FB8
  loc_E0D1EC: global_140 = vNewValue
  loc_E0D1F0: Exit Sub
  loc_E0D1F2: If Not ( = ) Then Exit Sub
  loc_E0D1F2: End If
End Sub

Public Property Get PBillAmt() 'E0D5E4
  'Data Table: 539FB8
  loc_E0D5DA: var_88 = CStr(global_144)
  loc_E0D5DD: PBillAmt = 
End Sub

Public Property Let PBillAmt(vNewValue) 'E0D704
  'Data Table: 539FB8
  loc_E0D6FE: global_144 = CDbl(vNewValue)
  loc_E0D701: Exit Sub
End Sub

Public Sub Proc_339_67_1010FB8
  'Data Table: 539FB8
  Dim var_C4 As Variant
  Dim var_E4 As Long
  Dim var_90 As Double
  Dim var_86 As Integer
  loc_1010DCD: For var_B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B4 'Integer
  loc_1010DD7:   var_C4 = CVar(CLng(var_88)) 'Long
  loc_1010DDC:   var_E4 = 1
  loc_1010E16:   If (CStr(Me.FGrid.TextMatrix)) = MemVar_1F95070 & "MEM") Then
  loc_1010E1D:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_1010E22:     var_E4 = &H18
  loc_1010E40:     var_94 = CStr(Me.FGrid.TextMatrix))
  loc_1010E4D:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_1010E52:     var_E4 = 8
  loc_1010E82:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1010E8E:   End If
  loc_1010E91: Next var_B4 'Integer
  loc_1010E9E: If (var_94 <> vbNullString) Then
  loc_1010EB9:   If (Proc_96_1_F8D0C4(var_94) = 0) Then
  loc_1010EBF:     Proc_96_2_100E504(var_94)
  loc_1010EC9:     If (CDbl(0) < var_90) Then
  loc_1010EED:       MsgBox("Insufficient Ac. Balance.", 0, "Member Detail", var_124, var_134)
  loc_1010F0A:       Me.Global.Unload Me
  loc_1010F14:       var_86 = 0
  loc_1010F1A:     Else
  loc_1010F1C:       var_86 = &HFF
  loc_1010F1F:     End If
  loc_1010F22:   Else
  loc_1010F30:     If (Proc_96_1_F8D0C4(var_94, var_9C) = &HFF) Then
  loc_1010F36:       Proc_96_2_100E504(var_94, var_86)
  loc_1010F4C:       If ((CDbl((var_86 + var_9C)) < var_90) And (var_9C > CDbl(0))) Then
  loc_1010F70:         MsgBox("Insufficient Ac. Balance.", 0, "Member Detail", var_124, var_134)
  loc_1010F8D:         Me.Global.Unload Me
  loc_1010F97:         var_86 = 0
  loc_1010F9D:       Else
  loc_1010F9F:         var_86 = &HFF
  loc_1010FA2:       End If
  loc_1010FA5:     Else
  loc_1010FA7:       var_86 = &HFF
  loc_1010FAA:     End If
  loc_1010FAA:   End If
  loc_1010FAD: Else
  loc_1010FAF:   var_86 = &HFF
  loc_1010FB2: End If
  loc_1010FB2: Proc_339_67_1010FB8 = var_86
End Sub

Public Sub Proc_339_68_DFD7CC
  'Data Table: 539FB8
  loc_DFD7C8: Exit Sub
End Sub

Public Sub Proc_339_69_F8E644(arg_C) 'F8E644
  'Data Table: 539FB8
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  loc_F8E4E2: Set var_8C = Me.Txt
  loc_F8E4E8: Call 0.Method_Proc_339_69_F8E6448 (var_8E, var_86)
  loc_F8E4F5: For var_92 =  To CByte(var_8E): CByte(0) = var_92 'Byte
  loc_F8E50B:   Set var_8C = Me.Txt
  loc_F8E511:   Call 0.Method_Proc_339_69_F8E6440 (CInt(var_86), var_98)
  loc_F8E519:   var_98.Enabled = arg_C
  loc_F8E528: Next var_92 'Byte
  loc_F8E53A: If (global_116 = 1) Then
  loc_F8E54A:   Set var_8C = Me.Txt
  loc_F8E550:   Call 0.Method_Proc_339_69_F8E6440 (CInt(1), var_98)
  loc_F8E558:   var_98.Enabled = False
  loc_F8E564: End If
  loc_F8E571: Set var_8C = Me.Txt
  loc_F8E577: Call 0.Method_Proc_339_69_F8E6440 (CInt(1), var_98)
  loc_F8E57F: var_98.Enabled = False
  loc_F8E598: Set var_8C = Me.Txt
  loc_F8E59E: Call 0.Method_Proc_339_69_F8E6440 (CInt(2), var_98)
  loc_F8E5A6: var_98.Enabled = False
  loc_F8E5BF: Set var_8C = Me.Txt
  loc_F8E5C5: Call 0.Method_Proc_339_69_F8E6440 (CInt(3), var_98)
  loc_F8E5CD: var_98.Enabled = False
  loc_F8E5E6: Set var_8C = Me.Txt
  loc_F8E5EC: Call 0.Method_Proc_339_69_F8E6440 (CInt(0), var_98)
  loc_F8E5F4: var_98.Enabled = False
  loc_F8E60D: Set var_8C = Me.Txt
  loc_F8E613: Call 0.Method_Proc_339_69_F8E6440 (CInt(6), var_98)
  loc_F8E61B: var_98.Enabled = False
  loc_F8E638: Me.GridSel.Enabled = arg_C
  loc_F8E640: Exit Sub
End Sub

Public Sub Proc_339_70_F79E3C
  'Data Table: 539FB8
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_8C As MSHFlexGrid
  loc_F79D02: Set var_8C = Me.Txt
  loc_F79D08: Call 0.Method_Proc_339_70_F79E3C8 (var_8E, var_86)
  loc_F79D15: For var_92 =  To CByte(var_8E): CByte(0) = var_92 'Byte
  loc_F79D2B:   Set var_8C = Me.Txt
  loc_F79D31:   Call 0.Method_Proc_339_70_F79E3C0 (CInt(var_86), var_98)
  loc_F79D39:   var_98.Text = vbNullString
  loc_F79D55:   Set var_8C = Me.Txt
  loc_F79D5B:   Call 0.Method_Proc_339_70_F79E3C0 (CInt(var_86), var_98)
  loc_F79D63:   var_98.Tag = vbNullString
  loc_F79D72: Next var_92 'Byte
  loc_F79DAF: Set var_8C = Me.Txt
  loc_F79DB5: Call 0.Method_Proc_339_70_F79E3C0 (CInt(2), var_98, CStr(Format(MemVar_1F950EC, "dd/MMM/yyyy")))
  loc_F79DBD: var_98.Text = 1
  loc_F79DE6: Me.FGrid.Rows = 1
  loc_F79DEE: var_A8 = "1"
  loc_F79DF8: Set var_8C = Me.FGrid
  loc_F79E1C: Me.FGrid.FixedRows = 1
  loc_F79E2A: global_180 = vbNullString
  loc_F79E37: global_184 = CDate(var_A8)
  loc_F79E3A: Exit Sub
End Sub

Public Sub Proc_339_71_11010E0
  'Data Table: 539FB8
  loc_1100DA2: Me.FrRest.BackColor = CLng(MemVar_1F951B4)
  loc_1100DCF: Me.FrChqDet.Top = (Me.FrRest.Top + CDbl(945))
  loc_1100DEA: Me.FrChqDet.Left = CDbl(1230)
  loc_1100E00: Me.FrChqDet.BackColor = CLng(MemVar_1F951B4)
  loc_1100E2D: Me.FrTxnNo.Top = (Me.FrRest.Top + CDbl(945))
  loc_1100E48: Me.FrTxnNo.Left = CDbl(1230)
  loc_1100E5E: Me.FrTxnNo.BackColor = CLng(MemVar_1F951B4)
  loc_1100E8B: Me.FrCCDet.Top = (Me.FrRest.Top + CDbl(945))
  loc_1100EA6: Me.FrCCDet.Left = CDbl(1230)
  loc_1100EBC: Me.FrCCDet.BackColor = CLng(MemVar_1F951B4)
  loc_1100EE9: Me.FrSendRoom.Top = (Me.FrRest.Top + CDbl(945))
  loc_1100F04: Me.FrSendRoom.Left = CDbl(1230)
  loc_1100F1A: Me.FrSendRoom.BackColor = CLng(MemVar_1F951B4)
  loc_1100F47: Me.FrEmp.Top = (Me.FrRest.Top + CDbl(945))
  loc_1100F62: Me.FrEmp.Left = CDbl(1230)
  loc_1100F78: Me.FrEmp.BackColor = CLng(MemVar_1F951B4)
  loc_1100FA5: Me.FrComp.Top = (Me.FrRest.Top + CDbl(945))
  loc_1100FC0: Me.FrComp.Left = CDbl(1230)
  loc_1100FD6: Me.FrComp.BackColor = CLng(MemVar_1F951B4)
  loc_1101003: Me.FrMember.Top = (Me.FrRest.Top + CDbl(945))
  loc_110101E: Me.FrMember.Left = CDbl(300)
  loc_1101034: Me.FrMember.BackColor = CLng(MemVar_1F951B4)
  loc_110104F: Me.DGRoom.Top = CVar(CDbl(405))
  loc_110106A: Me.DGRoom.Left = CVar(CDbl(5415))
  loc_1101085: Me.DGEmp.Top = CVar(CDbl(405))
  loc_11010A0: Me.DGEmp.Left = CVar(CDbl(5550))
  loc_11010BB: Me.DGCompany.Top = CVar(CDbl(405))
  loc_11010D6: Me.DGCompany.Left = CVar(CDbl(5415))
  loc_11010DE: Exit Sub
End Sub

Public Sub Proc_339_72_1641738
  'Data Table: 539FB8
  Dim Me As Variant
  Dim var_98 As String
  Dim var_A0 As String
  Dim var_A4 As String
  Dim var_AC As String
  Dim var_E8 As Variant
  Dim var_C4 As Variant
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim unk_539FE7 As Connection15
  Dim var_D8 As Variant
  Dim var_140 As Variant
  Dim var_164 As Variant
  Dim var_154 As Variant
  Dim var_12C As Variant
  Dim var_1A8 As Fields15
  Dim var_1DC As Variant
  Dim var_144 As Variant
  Dim var_90 As Integer
  Dim var_8E As Integer
  Dim var_13C As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  loc_1640174: On Error Goto loc_16416F2
  loc_164017D: Proc_183_45_E5CCA8(global_64)
  loc_1640199: If (Me.RecordCount <= 0) Then
  loc_164019C:   Call Proc_339_70_F79E3C()
  loc_16401A4: Else
  loc_16401B8:   var_98 = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VTime,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName, ST.EmpCode, " & "E.Name AS EmpName, ST.Comments, ST.PayCode, P.Name AS PayName,"
  loc_16401C6:   var_A0 = var_98 & "ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, " & "R.Name AS RoomName, ST.FolioNo, ST.CardNo, ST.CardHolder, ST.ChqNo,ST.BatchNo, "
  loc_16401CD:   var_A4 = var_A0 & "ST.ChqDate, ST.ExpDate, ST.TxnNo,CC.Name as CompName,CompCode,Ag.Name As Party,st.AgAc,st.U_AE,st.U_Name,st.U_Entdt,st.AU_Name,st.AU_Entdt,CC.Name as MemName,CompCode as MemCode FROM ((((PayCharge AS ST left JOIN "
  loc_16401DB:   var_AC = var_A4 & "GuestProf AS GP ON ST.GuestProf = GP.Code) left JOIN Employee AS E " & "ON ST.EmpCode = E.Code) left JOIN RevMast AS P ON ST.PayCode = P.Code) "
  loc_16401E9:   var_E8 = CVar(var_AC & "left JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) " & "AND (ST.RoomNo = R.Code))left join SubGroup CC on CC.SubCode=ST.CompCode left join SubGroup Ag on Ag.SubCode=ST.AgAc where ST.Docid='") 'String
  loc_1640230:   unk_539FE7.Execute CStr(var_E8 & Me.Fields.Item("SearchCode").Value & "' And AmtCr>0"), var_13C, -1
  loc_164023B:   Set var_88 = var_140
  loc_16402A7:   var_140 = Me.Recordset15.Fields
  loc_1640310:   var_1A4 = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_140.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_1640358:   Me.LblUser.Caption = CStr(var_140 & CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_Name")), var_1A4)))
  loc_16403D8:   var_144 = Me.Recordset15.Fields.Item("U_AE")
  loc_1640439:   var_1A4 = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_144)) = "E"), "Last Update :   ", "entdt :   "))
  loc_1640453:   var_1A8 = Me.Recordset15.Fields
  loc_164046C:   var_1DC = CVar(Proc_6_38_E69628(CVar(var_1A8.Item("U_EntDt")))) 'String
  loc_1640481:   Me.LblLDt.Caption = CStr(var_1A4 & var_1DC)
  loc_16404ED:   global_100 = CStr(Me.Fields.Item("SearchCode").Value)
  loc_1640515:   If (Me.Recordset15.RecordCount > 0) Then
  loc_164054C:     global_180 = CStr(Me.Recordset15.Fields.Item("AU_Name").Value)
  loc_164058F:     global_184 = CDate(Me.Recordset15.Fields.Item("AU_EntDt").Value)
  loc_16405D8:     Set var_140 = Me.Txt
  loc_16405DE:     Call 0.Method_Proc_339_72_16417380 (CInt(0), var_144)
  loc_16405E6:     var_144.Text = CStr(Me.Recordset15.Fields.Item("DocID").Value)
  loc_1640638:     Set var_140 = Me.Txt
  loc_164063E:     Call 0.Method_Proc_339_72_16417380 (CInt(4), var_144)
  loc_1640646:     var_144.Text = CStr(Me.Recordset15.Fields.Item("Party").Value)
  loc_1640698:     Set var_140 = Me.Txt
  loc_164069E:     Call 0.Method_Proc_339_72_16417380 (CInt(4), var_144)
  loc_16406A6:     var_144.Tag = CStr(Me.Recordset15.Fields.Item("AgAc").Value)
  loc_16406F8:     Set var_140 = Me.Txt
  loc_16406FE:     Call 0.Method_Proc_339_72_16417380 (CInt(1), var_144)
  loc_1640706:     var_144.Text = CStr(Me.Recordset15.Fields.Item("VNo").Value)
  loc_1640758:     Set var_140 = Me.Txt
  loc_164075E:     Call 0.Method_Proc_339_72_16417380 (CInt(2), var_144)
  loc_1640766:     var_144.Text = CStr(Me.Recordset15.Fields.Item("VDate").Value)
  loc_16407B8:     Set var_140 = Me.Txt
  loc_16407BE:     Call 0.Method_Proc_339_72_16417380 (CInt(3), var_144)
  loc_16407C6:     var_144.Text = CStr(Me.Recordset15.Fields.Item("VTIME").Value)
  loc_1640817:     Me.LblVPrefix.Caption = CStr(Me.Recordset15.Fields.Item("vPrefix").Value)
  loc_1640864:     Set var_140 = Me.Txt
  loc_164086A:     Call 0.Method_Proc_339_72_16417380 (CInt(7), var_144)
  loc_1640872:     var_144.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CardNo")))
  loc_1640886:   End If
  loc_1640895:   Me.FGrid.Redraw = False
  loc_16408AA:   Set var_B4 = Me.FGrid
  loc_16408B0:   var_B4.Rows = 1
  loc_16408BA:   var_90 = 1
  loc_16408D4:   If (Me.var_B4.RecordCount > 0) Then
  loc_16408D7:     ' Referenced from:   164100F
  loc_16408E9:     If Not(Me.Recordset15.EOF) Then
  loc_16408EC:       var_C4 = vbNullString
  loc_16408F6:       Set var_B4 = Me.FGrid
  loc_164090B:       Set var_1F8 = Me.FGrid
  loc_1640912:       var_108 = CVar(CLng(var_90)) 'Long
  loc_1640917:       var_154 = 0
  loc_164094E:       var_E8 = CVar(CStr(Me.FGrid.Fields.Item("SNo").Value)) 'String
  loc_1640955:       LateIdCallSt
  loc_16409A8:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PayType")), 2, CVar(CLng(var_90)), var_1F8, var_E8, 2)) 'String
  loc_16409AF:       LateIdCallSt
  loc_1640A08:       LateIdCallSt
  loc_1640A49:       var_98 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PayCode")), var_1F8, CVar(CStr(Me.Recordset15.Fields.Item("PayCode").Value)), 1, CVar(CLng(var_90)), var_1F8)
  loc_1640A65:       If (var_98 = MemVar_1F95070 & "CCAD") Then
  loc_1640A6A:         var_8E = &HFF
  loc_1640A6D:       End If
  loc_1640AAA:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PayName")), 3, CVar(CLng(var_90)), var_8E, var_E8)) 'String
  loc_1640AB1:       LateIdCallSt
  loc_1640AE6:       var_12C = CVar(CLng(var_90)) 'Long
  loc_1640B23:       LateIdCallSt
  loc_1640B75:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CardNo")), CVar(CLng(9)), CVar(CLng(var_90)), var_1F8, CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))), 1, 1)) 'String
  loc_1640B7C:       LateIdCallSt
  loc_1640BCA:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CardHolder")), CVar(CLng(&HA)), CVar(CLng(var_90)), var_1F8, var_E8, 8)) 'String
  loc_1640BD1:       LateIdCallSt
  loc_1640C1F:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ExpDate")), CVar(CLng(&HB)), CVar(CLng(var_90)), var_1F8, var_E8)) 'String
  loc_1640C26:       LateIdCallSt
  loc_1640C73:       Proc_6_39_E7D3A0(var_E8, CVar(Me.Recordset15.Fields.Item("BatchNo")), &H17, CVar(CLng(var_90)), var_1F8, var_E8)
  loc_1640C83:       LateIdCallSt
  loc_1640CD4:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TxnNo")), &H1A, CVar(CLng(var_90)), var_1F8, CVar(CStr(var_E8)))) 'String
  loc_1640CDB:       LateIdCallSt
  loc_1640D29:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqNo")), CVar(CLng(&HC)), CVar(CLng(var_90)), var_1F8, var_E8)) 'String
  loc_1640D30:       LateIdCallSt
  loc_1640D7E:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqDate")), CVar(CLng(&HD)), CVar(CLng(var_90)), var_1F8, var_E8)) 'String
  loc_1640D85:       LateIdCallSt
  loc_1640D9B:       var_108 = CVar(CLng(var_90)) 'Long
  loc_1640DA3:       var_154 = CVar(CLng(&HE)) 'Long
  loc_1640DD6:       var_E8 = CVar(CStr(Me.Recordset15.Fields.Item("Comments").Value)) 'String
  loc_1640DDD:       LateIdCallSt
  loc_1640E2F:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("EmpName")), CVar(CLng(&HF)), CVar(CLng(var_90)), var_1F8, var_E8, CVar(CLng(&HF)), CVar(CLng(var_90)))) 'String
  loc_1640E36:       LateIdCallSt
  loc_1640E84:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("EmpCode")), CVar(CLng(&H10)), CVar(CLng(var_90)), var_1F8, var_E8, var_1F8)) 'String
  loc_1640E8B:       LateIdCallSt
  loc_1640EDA:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CompCode")), &H14, CVar(CLng(var_90)), var_1F8, var_E8)) 'String
  loc_1640EE1:       LateIdCallSt
  loc_1640F30:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CompName")), &H15, CVar(CLng(var_90)), var_1F8, var_E8)) 'String
  loc_1640F37:       LateIdCallSt
  loc_1640F86:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("MemCode")), &H18, CVar(CLng(var_90)), var_1F8, var_E8)) 'String
  loc_1640F8D:       LateIdCallSt
  loc_1640FDC:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("MemName")), &H19, CVar(CLng(var_90)), var_1F8, var_E8)) 'String
  loc_1640FE3:       LateIdCallSt
  loc_1640FF7:       Set var_1F8 = Nothing 
  loc_1641001:       var_90 = (var_90 + 1)
  loc_164100A:       Me.Recordset15.MoveNext
  loc_164100F:       GoTo loc_16408D7
  loc_1641012:     End If
  loc_1641025:     Me.FGrid.FixedRows = 1
  loc_164102D:   End If
  loc_164103B:   Me.FGrid.Redraw = True
  loc_1641049:   If (var_90 = 1) Then
  loc_164105F:     Me.FGrid.Rows = 1
  loc_1641083:     var_D8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0, var_90, var_1F8, var_E8))) 'String
  loc_164108B:     Set var_C8 = Me.FGrid
  loc_16410B8:     Me.FGrid.FixedRows = 1
  loc_16410C0:   End If
  loc_16410C0:   Call Proc_339_83_11B5D00(FGrid.DispID_10000, var_D8, var_E8, var_12C)
  loc_16410E3:   Set var_B4 = Me.Txt
  loc_16410E9:   Call 0.Method_Proc_339_72_16417380 (CInt(4), var_C8, var_98, "Select P.DocId,P.Vno,P.SNo,P.Vdate,P.AmtCr,P.PayType,P.CompCode From (Sale1 S Inner Join PayCharge P on P.DocId=S.DocId) Where IsNull(P.PayType,'') In('Company') And P.CompCode='", var_1DC)
  loc_16410F1:   -1 = var_C8.Tag
  loc_1641101:   var_E8 = CVar(var_1A8 & var_98 & "' And P.DocId+Cast(P.SNo As Varchar) In (Select Docid2+Cast(V_SNo2 As Varchar) From LedgerAdj Where DocId1='") 'String
  loc_164114D:   var_194 = var_E8 & Me.Fields.Item("SearchCode").Value & "' And Logsite_Code='" & CVar(MemVar_1F95078) & "') And P.Logsite_Code='" 
  loc_164116E:   unk_539FE7.Execute CStr(var_194 & CVar(MemVar_1F95078) & "' Order by P.Vno,P.SNo"), var_1F8, var_E8
  loc_1641179:   Set var_88 = var_1A8
  loc_16411BE:   If (Me.Recordset15.RecordCount > 0) Then
  loc_16411C1:     ' Referenced from:   16415EA
  loc_16411D3:     If Not(Me.Recordset15.EOF) Then
  loc_16411DA:       Set var_1FC = Me.GridSel
  loc_16411DD:       var_C4 = vbNullString
  loc_16411FE:       Me.GridSel.CellFontName = "WINGDINGS"
  loc_1641218:       Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1641233:       var_C4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_164123B:       var_12C = CVar(CLng(0)) 'Long
  loc_1641249:       LateIdCallSt
  loc_1641261:       var_D8 = Me.GridSel.Row
  loc_164126A:       var_108 = CVar(CLng(var_D8)) 'Long
  loc_1641272:       var_154 = CVar(CLng(1)) 'Long
  loc_16412A5:       var_F8 = CVar(CStr(Me.var_D8.Fields.Item("VNo").Value)) 'String
  loc_16412AC:       LateIdCallSt
  loc_16412D0:       var_E8 = Me.GridSel.Row
  loc_1641311:       var_F8 = CVar(Proc_6_38_E69628(CVar(Me.var_E8.Fields.Item("DocID")), CVar(CLng(2)), CVar(CLng(var_E8)), var_1FC, var_F8, CVar(CLng(2)), CVar(CLng(var_E8)))) 'String
  loc_1641318:       LateIdCallSt
  loc_164133A:       var_E8 = Me.GridSel.Row
  loc_164137B:       var_F8 = CVar(Proc_6_38_E69628(CVar(Me.var_E8.Fields.Item("SNo")), CVar(CLng(3)), CVar(CLng(var_E8)), var_1FC, var_F8, var_1FC)) 'String
  loc_1641382:       LateIdCallSt
  loc_16413D2:       var_13C = Me.GridSel.Row
  loc_16413DB:       var_12C = CVar(CLng(var_13C)) 'Long
  loc_16413E3:       var_164 = CVar(CLng(4)) 'Long
  loc_1641400:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("VDate")), var_1FC, "dd/mmm/yyyy", "ü")) 'String
  loc_1641416:       LateIdCallSt
  loc_1641460:       Proc_6_39_E7D3A0(var_E8, CVar(Me.var_13C.Fields.Item("AmtCr")), var_1FC, CVar(CStr(Format(var_E8, "dd/mmm/yyyy"))), 1, 1)
  loc_1641478:       var_12C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1641480:       var_164 = CVar(CLng(5)) 'Long
  loc_16414A0:       var_118 = Format(var_E8, "0.00")
  loc_16414B0:       LateIdCallSt
  loc_16414D8:       var_E8 = Me.GridSel.Row
  loc_1641519:       var_F8 = CVar(Proc_6_38_E69628(CVar(Me.var_E8.Fields.Item("PayType")), CVar(CLng(6)), CVar(CLng(var_E8)), var_1FC, CVar(CStr(var_118)), 1, 1)) 'String
  loc_1641520:       LateIdCallSt
  loc_1641542:       var_E8 = Me.GridSel.Row
  loc_1641583:       var_F8 = CVar(Proc_6_38_E69628(CVar(Me.var_E8.Fields.Item("CompCode")), CVar(CLng(7)), CVar(CLng(var_E8)), var_1FC, var_F8, var_164)) 'String
  loc_164158A:       LateIdCallSt
  loc_16415A4:       Set var_1FC = Nothing 
  loc_16415C1:       var_C4 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_16415CA:       Set var_C8 = Me.GridSel
  loc_16415D0:       var_C8.Row = "CompCode"
  loc_16415E5:       Me.var_C8.MoveNext
  loc_16415EA:       GoTo loc_16411C1
  loc_16415ED:     End If
  loc_1641600:     Me.GridSel.FixedRows = 1
  loc_164160B:   Else
  loc_164161E:     Me.GridSel.Rows = 2
  loc_1641639:     Me.GridSel.Row = 1
  loc_1641641:   End If
  loc_164164A:   var_12C = 2
  loc_164166C:   Call Proc_339_77_119819C(CStr(Me.FGrid.TextMatrix)), var_12C, 1, var_1FC, var_F8)
  loc_164167A:   Call Proc_339_80_DFDF84(var_12C, var_164, var_12C)
  loc_164167F:   Call Proc_339_81_1374460(var_12C)
  loc_1641699:   var_98 = "INI"
  loc_16416A7:   Call Proc_339_69_F8E644(Proc_5_1_100EC1C(var_98, Me))
  loc_16416B8:   If (var_8E = &HFF) Then
  loc_16416C4:     Set var_B4 = Me.TopCtrl1
  loc_16416CA:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_16416DB:     Set var_B4 = Me.TopCtrl1
  loc_16416E1:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_16416E9:   End If
  loc_16416E9: End If
  loc_16416EE: Set var_88 = Nothing
  loc_16416F1: Exit Sub
  loc_16416F2: ' Referenced from: 1640174
  loc_16416FA: Set var_B4 = Err()
  loc_1641700: Call 0.Method_arg_2C (var_98, global_64)
  loc_1641721: MsgBox(CVar(var_98), &H40, "Information", var_F8, var_118)
  loc_1641734: Exit Sub
End Sub

Public Sub Proc_339_73_F70BAC
  'Data Table: 539FB8
  loc_F70A80: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_F70A92:   Me.DGPayType.Visible = False
  loc_F70A9A: End If
  loc_F70AB6: If (CBool(Me.DGAgAc.Visible) = &HFF) Then
  loc_F70AC8:   Me.DGAgAc.Visible = False
  loc_F70AD0: End If
  loc_F70AEC: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_F70AFE:   Me.DGEmp.Visible = False
  loc_F70B06: End If
  loc_F70B22: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_F70B34:   Me.DGRoom.Visible = False
  loc_F70B3C: End If
  loc_F70B58: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_F70B6A:   Me.DGCompany.Visible = False
  loc_F70B72: End If
  loc_F70B8E: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F70BA0:   Me.FGPoint.Visible = False
  loc_F70BA8: End If
  loc_F70BA8: Exit Sub
End Sub

Public Sub Proc_339_74_E8FC08(arg_C) 'E8FC08
  'Data Table: 539FB8
  Dim var_10C As TextBox
  loc_E8FB9C: Call Proc_339_73_F70BAC()
  loc_E8FBD8: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8FBDB:   Call TopCtrl1_UnknownEvent_16()
  loc_E8FBE3: Else
  loc_E8FBED:   Set var_108 = Me.Txt
  loc_E8FBF3:   Call 0.Method_Proc_339_74_E8FC080 (arg_C)
  loc_E8FBFB:   var_10C.SetFocus
  loc_E8FC07: End If
  loc_E8FC07: Exit Sub
End Sub

Public Sub Proc_339_75_10EE9C0
  'Data Table: 539FB8
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
  loc_10EE6E4: var_90 = global_128
  loc_10EE6FB: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_10EE72C: Set var_A8 = Me.Txt
  loc_10EE732: Call 0.Method_Proc_339_75_10EE9C00 (CInt(2), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And "))
  loc_10EE741: Proc_6_7_F26918(var_CC, CVar(var_AC), var_130)
  loc_10EE749: var_EC = -1 & var_CC 
  loc_10EE75D: Me.Txt.Execute CStr(var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC"), var_134, 
  loc_10EE768: Set var_8C = var_134
  loc_10EE7A4: If (var_8C.RecordCount > 0) Then
  loc_10EE7E3:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_10EE7E6:     GoTo loc_10EE874
  loc_10EE7E9:   End If
  loc_10EE81A:   global_108 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10EE845:   var_AC = var_8C.Fields.Item("start_srl_no")
  loc_10EE85A:   var_CC = (var_AC.Value + 1)
  loc_10EE863:   global_112 = CLng(var_CC)
  loc_10EE874:   ' Referenced from: 10EE7E6
  loc_10EE89F:   var_BC = Space((5 - Len(var_90)))
  loc_10EE8A7:   var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_AC.Value)
  loc_10EE8BB:   var_EC = Space((5 - Len(global_108)))
  loc_10EE8C3:   var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And ") + var_EC)
  loc_10EE8D0:   var_130 = (var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC" + CVar(global_108))
  loc_10EE8E9:   var_14C = Space((8 - Len(CStr(global_112))))
  loc_10EE8F1:   var_15C = (var_130 + var_14C)
  loc_10EE900:   var_17C = (var_15C + CVar(CStr(global_112)))
  loc_10EE90B:   global_104 = CStr(var_17C)
  loc_10EE941:   Me.LblVPrefix.Caption = global_108
  loc_10EE95A:   Set var_A8 = Me.Txt
  loc_10EE960:   Call 0.Method_Proc_339_75_10EE9C00 (CInt(0), var_AC)
  loc_10EE968:   var_AC.Text = global_104
  loc_10EE98A:   Set var_A8 = Me.Txt
  loc_10EE990:   Call 0.Method_Proc_339_75_10EE9C00 (CInt(1), var_AC)
  loc_10EE998:   var_AC.Text = CStr(global_112)
  loc_10EE9AD:   var_88 = global_104
  loc_10EE9B0: End If
  loc_10EE9B5: Set var_8C = Nothing
  loc_10EE9B8: Proc_339_75_10EE9C0 = global_112
End Sub

Public Sub Proc_339_76_11C0C28
  'Data Table: 539FB8
  Dim var_88 As Long
  Dim var_8C As Frame
  Dim var_A0 As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As String
  Dim var_100 As Variant
  loc_11C07C2: var_88 = global_120
  loc_11C07CE: If Not (var_88 = 5) Then
  loc_11C07DA:   If (var_88 = 6) Then
  loc_11C07DD:   End If
  loc_11C07E9:   Me.FrRest.Visible = True
  loc_11C07F1: End If
  loc_11C0804: Me.FGrid.Cols = &H19
  loc_11C080C: var_A0 = CVar(CLng(9)) 'Long
  loc_11C0811: var_C0 = 0
  loc_11C081D: LateIdCallSt
  loc_11C0828: var_A0 = CVar(CLng(&HA)) 'Long
  loc_11C082D: var_C0 = 0
  loc_11C0839: LateIdCallSt
  loc_11C0844: var_A0 = CVar(CLng(&HB)) 'Long
  loc_11C0849: var_C0 = 0
  loc_11C0855: LateIdCallSt
  loc_11C085D: var_A0 = &H1A
  loc_11C0866: var_C0 = 0
  loc_11C0872: LateIdCallSt
  loc_11C087D: var_A0 = CVar(CLng(&HC)) 'Long
  loc_11C0882: var_C0 = 0
  loc_11C088E: LateIdCallSt
  loc_11C0899: var_A0 = CVar(CLng(&HD)) 'Long
  loc_11C089E: var_C0 = 0
  loc_11C08AA: LateIdCallSt
  loc_11C08B5: var_A0 = CVar(CLng(&HE)) 'Long
  loc_11C08BA: var_C0 = 0
  loc_11C08C6: LateIdCallSt
  loc_11C08D1: var_A0 = CVar(CLng(&HF)) 'Long
  loc_11C08D6: var_C0 = 0
  loc_11C08E2: LateIdCallSt
  loc_11C08ED: var_A0 = CVar(CLng(&H10)) 'Long
  loc_11C08F2: var_C0 = 0
  loc_11C08FE: LateIdCallSt
  loc_11C0906: var_A0 = &H11
  loc_11C090F: var_C0 = 0
  loc_11C091B: LateIdCallSt
  loc_11C0923: var_A0 = 1
  loc_11C092C: var_C0 = 0
  loc_11C0938: LateIdCallSt
  loc_11C0940: var_A0 = 4
  loc_11C0949: var_C0 = 0
  loc_11C0955: LateIdCallSt
  loc_11C095D: var_A0 = 5
  loc_11C0966: var_C0 = 0
  loc_11C0972: LateIdCallSt
  loc_11C097D: var_A0 = CVar(CLng(6)) 'Long
  loc_11C0982: var_C0 = 0
  loc_11C098E: LateIdCallSt
  loc_11C0999: var_A0 = CVar(CLng(7)) 'Long
  loc_11C099E: var_C0 = 0
  loc_11C09AA: LateIdCallSt
  loc_11C09B2: var_A0 = 2
  loc_11C09BB: var_C0 = 0
  loc_11C09C7: LateIdCallSt
  loc_11C09CF: var_A0 = 0
  loc_11C09D8: var_C0 = &HFA
  loc_11C09E4: LateIdCallSt
  loc_11C09EC: var_A0 = 0
  loc_11C09F5: var_C0 = 0
  loc_11C09FE: var_E0 = "SNo"
  loc_11C0A07: LateIdCallSt
  loc_11C0A0F: var_A0 = 0
  loc_11C0A18: var_C0 = &H1F4
  loc_11C0A24: LateIdCallSt
  loc_11C0A2C: var_A0 = 0
  loc_11C0A35: var_C0 = 3
  loc_11C0A3E: var_E0 = "Payment Type"
  loc_11C0A47: LateIdCallSt
  loc_11C0A4F: var_A0 = 3
  loc_11C0A5E: var_C0 = CVar(CInt(1)) 'Integer
  loc_11C0A65: LateIdCallSt
  loc_11C0A6D: var_A0 = 3
  loc_11C0A76: var_C0 = &H1068
  loc_11C0A82: LateIdCallSt
  loc_11C0A8A: var_A0 = 0
  loc_11C0A93: var_C0 = 8
  loc_11C0A9C: var_E0 = "Amount"
  loc_11C0AA5: LateIdCallSt
  loc_11C0AAD: var_A0 = 8
  loc_11C0ABC: var_C0 = CVar(CInt(7)) 'Integer
  loc_11C0AC3: LateIdCallSt
  loc_11C0ACB: var_A0 = 8
  loc_11C0ADA: var_C0 = CVar(CInt(7)) 'Integer
  loc_11C0AE1: LateIdCallSt
  loc_11C0AE9: var_A0 = 8
  loc_11C0AF2: var_C0 = &H4EC
  loc_11C0AFE: LateIdCallSt
  loc_11C0B06: var_A0 = &H12
  loc_11C0B0F: var_C0 = 0
  loc_11C0B1B: LateIdCallSt
  loc_11C0B23: var_A0 = &H13
  loc_11C0B2C: var_C0 = 0
  loc_11C0B38: LateIdCallSt
  loc_11C0B40: var_A0 = &H14
  loc_11C0B49: var_C0 = 0
  loc_11C0B55: LateIdCallSt
  loc_11C0B5D: var_A0 = &H15
  loc_11C0B66: var_C0 = 0
  loc_11C0B72: LateIdCallSt
  loc_11C0B7A: var_A0 = &H18
  loc_11C0B83: var_C0 = 0
  loc_11C0B8F: LateIdCallSt
  loc_11C0B97: var_A0 = &H19
  loc_11C0BA0: var_C0 = 0
  loc_11C0BAC: LateIdCallSt
  loc_11C0BB4: var_A0 = &H16
  loc_11C0BBD: var_C0 = 0
  loc_11C0BC9: LateIdCallSt
  loc_11C0BD1: var_A0 = &H17
  loc_11C0BDA: var_C0 = 0
  loc_11C0BE6: LateIdCallSt
  loc_11C0BF0: Set var_90 = Nothing 
  loc_11C0BF4: var_A0 = 1
  loc_11C0BFD: var_C0 = 0
  loc_11C0C0A: var_100 = CVar(CStr(1)) 'String
  loc_11C0C12: Set var_8C = Me.FGrid
  loc_11C0C18: LateIdCallSt
  loc_11C0C26: Exit Sub
End Sub

Public Sub Proc_339_77_119819C(arg_C) '119819C
  'Data Table: 539FB8
  Dim var_94 As Frame
  Dim var_9C As Variant
  Dim var_A4 As TextBox
  loc_1197DA0: Me.FrTxnNo.Visible = False
  loc_1197DB4: Me.FrChqDet.Visible = False
  loc_1197DC8: Me.FrRem.Visible = False
  loc_1197DDC: Me.FrCCDet.Visible = False
  loc_1197DF0: Me.FrEmp.Visible = False
  loc_1197E04: Me.FrComp.Visible = False
  loc_1197E18: Me.FrMember.Visible = False
  loc_1197E2C: Me.FrSendRoom.Visible = False
  loc_1197E37: var_8C = arg_C
  loc_1197E42: If (var_8C = "Cheque") Then
  loc_1197E51:   Me.FrChqDet.Visible = True
  loc_1197E65:   Me.FrRem.Visible = True
  loc_1197EA3:   Me.FrRem.Top = (Me.FrChqDet.Top + Me.FrChqDet.Height)
  loc_1197EB4: Else
  loc_1197EBC:   If (var_8C = "Credit Card") Then
  loc_1197ECB:     Me.FrCCDet.Visible = True
  loc_1197EDF:     Me.FrRem.Visible = False
  loc_1197EEA:   Else
  loc_1197EF2:     If (var_8C = "Staff") Then
  loc_1197F01:       Me.FrEmp.Visible = True
  loc_1197F15:       Me.FrRem.Visible = True
  loc_1197F53:       Me.FrRem.Top = (Me.FrEmp.Top + Me.FrEmp.Height)
  loc_1197F64:     Else
  loc_1197F6C:       If (var_8C = "Company") Then
  loc_1197F7B:         Me.FrComp.Visible = True
  loc_1197F8F:         Me.FrRem.Visible = True
  loc_1197FCD:         Me.FrRem.Top = (Me.FrComp.Top + Me.FrComp.Height)
  loc_1197FDE:       Else
  loc_1197FE6:         If (var_8C = "Member") Then
  loc_1197FF5:           Me.FrMember.Visible = True
  loc_1198009:           Me.FrRem.Visible = True
  loc_1198047:           Me.FrRem.Top = (Me.FrMember.Top + Me.FrMember.Height)
  loc_1198058:         Else
  loc_1198060:           If (var_8C = "Room") Then
  loc_119806F:             Me.FrSendRoom.Visible = True
  loc_1198083:             Me.FrRem.Visible = False
  loc_119808E:           Else
  loc_1198096:             If (var_8C = "UPI") Then
  loc_11980A5:               Me.FrTxnNo.Visible = True
  loc_11980B9:               Me.FrRem.Visible = True
  loc_11980F1:               Set var_9C = Me.FrRem
  loc_11980F7:               var_9C.Top = (Me.FrTxnNo.Top + Me.FrTxnNo.Height)
  loc_1198108:             Else
  loc_1198114:               Me.FrRem.Visible = True
  loc_119812A:               Set var_94 = Me.Txt
  loc_1198130:               Call 0.Method_Proc_339_77_119819C0 (CInt(6), var_9C)
  loc_119814B:               Set var_A0 = Me.Txt
  loc_1198151:               Call 0.Method_Proc_339_77_119819C0 (CInt(6), var_A4)
  loc_1198186:               Me.FrRem.Top = ((Me.FrRest.Top + var_9C.Top) + var_A4.Height)
  loc_119819A:             End If
  loc_119819A:           End If
  loc_119819A:         End If
  loc_119819A:       End If
  loc_119819A:     End If
  loc_119819A:   End If
  loc_119819A: End If
  loc_119819A: Exit Sub
  loc_119819B: Result  End Sub 'Double
End Sub

Public Sub Proc_339_78_14D3020
  'Data Table: 539FB8
  Dim var_90 As Variant
  Dim var_8C As Variant
  Dim var_AC As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_94 As String
  Dim var_86 As Integer
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim Me As Variant
  loc_14D2272: Set var_8C = Me.Txt
  loc_14D2278: Call 0.Method_Proc_339_78_14D30200 (CInt(6), var_90)
  loc_14D229C: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_14D22AD:   Set var_8C = Me.Txt
  loc_14D22B3:   Call 0.Method_Proc_339_78_14D30200 (CInt(6), var_90)
  loc_14D22BB:   var_90.Text = vbNullString
  loc_14D22C7: End If
  loc_14D22D5: Set var_8C = Me.Txt
  loc_14D22DB: Call 0.Method_Proc_339_78_14D30200 (CInt(6), var_90)
  loc_14D22F5: If (var_90.Visible = &HFF) Then
  loc_14D2303:   Set var_8C = Me.Txt
  loc_14D2309:   Call 0.Method_Proc_339_78_14D30200 (CInt(6))
  loc_14D2311:   var_94 = "Amount"
  loc_14D2332:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14D2335:     Exit Sub
  loc_14D2336:   End If
  loc_14D2336: End If
  loc_14D234F: Set var_8C = Me.Txt
  loc_14D2355: Call 0.Method_Proc_339_78_14D30200 (CInt(&HF), var_90, var_94)
  loc_14D235D: (global_160 = "Staff") = var_90.Text
  loc_14D2375: If (var_90 And (var_94 = vbNullString)) Then
  loc_14D2383:   Set var_8C = Me.Txt
  loc_14D2389:   Call 0.Method_Proc_339_78_14D30200 (CInt(&HF))
  loc_14D2391:   var_94 = "Staff Name"
  loc_14D23B2:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14D23B5:     Exit Sub
  loc_14D23B6:   End If
  loc_14D23B6: End If
  loc_14D23CF: Set var_8C = Me.Txt
  loc_14D23D5: Call 0.Method_Proc_339_78_14D30200 (CInt(&H10), var_90, var_94)
  loc_14D23DD: (global_160 = "Room") = var_90.Text
  loc_14D23F5: If (var_90 And (var_94 = vbNullString)) Then
  loc_14D2403:   Set var_8C = Me.Txt
  loc_14D2409:   Call 0.Method_Proc_339_78_14D30200 (CInt(&H10))
  loc_14D2411:   var_94 = "Room Name"
  loc_14D2432:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14D2435:     Exit Sub
  loc_14D2436:   End If
  loc_14D2436: End If
  loc_14D244F: Set var_8C = Me.Txt
  loc_14D2455: Call 0.Method_Proc_339_78_14D30200 (CInt(&HD), var_90, var_94)
  loc_14D245D: (global_160 = "Company") = var_90.Text
  loc_14D2475: If (var_90 And (var_94 = vbNullString)) Then
  loc_14D2483:   Set var_8C = Me.Txt
  loc_14D2489:   Call 0.Method_Proc_339_78_14D30200 (CInt(&HD))
  loc_14D2491:   var_94 = "Company Name"
  loc_14D24B2:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14D24B5:     Exit Sub
  loc_14D24B6:   End If
  loc_14D24B6: End If
  loc_14D24CF: Set var_8C = Me.Txt
  loc_14D24D5: Call 0.Method_Proc_339_78_14D30200 (CInt(&HE), var_90, var_94)
  loc_14D24DD: (global_160 = "Member") = var_90.Text
  loc_14D24F5: If (var_90 And (var_94 = vbNullString)) Then
  loc_14D2503:   Set var_8C = Me.Txt
  loc_14D2509:   Call 0.Method_Proc_339_78_14D30200 (CInt(&HE))
  loc_14D2511:   var_94 = "Member Name"
  loc_14D2532:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14D2535:     Exit Sub
  loc_14D2536:   End If
  loc_14D2536: End If
  loc_14D2541: If (global_60 = "Y") Then
  loc_14D255D:   Set var_8C = Me.Txt
  loc_14D2563:   Call 0.Method_Proc_339_78_14D30200 (CInt(7), var_90, var_94)
  loc_14D256B:   (global_160 = "Credit Card") = var_90.Text
  loc_14D2583:   If (var_90 And (var_94 = vbNullString)) Then
  loc_14D2591:     Set var_8C = Me.Txt
  loc_14D2597:     Call 0.Method_Proc_339_78_14D30200 (CInt(7))
  loc_14D259F:     var_94 = "Credit Card No."
  loc_14D25C0:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14D25C3:       Exit Sub
  loc_14D25C4:     End If
  loc_14D25C4:   End If
  loc_14D25DD:   Set var_8C = Me.Txt
  loc_14D25E3:   Call 0.Method_Proc_339_78_14D30200 (CInt(8), var_90, var_94)
  loc_14D25EB:   (global_160 = "Credit Card") = var_90.Text
  loc_14D2603:   If (var_90 And (var_94 = vbNullString)) Then
  loc_14D2611:     Set var_8C = Me.Txt
  loc_14D2617:     Call 0.Method_Proc_339_78_14D30200 (CInt(8))
  loc_14D261F:     var_94 = "Holder's Name"
  loc_14D2640:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14D2643:       Exit Sub
  loc_14D2644:     End If
  loc_14D2644:   End If
  loc_14D265D:   Set var_8C = Me.Txt
  loc_14D2663:   Call 0.Method_Proc_339_78_14D30200 (CInt(&HA), var_90, var_94)
  loc_14D266B:   (global_160 = "Credit Card") = var_90.Text
  loc_14D2683:   If (var_90 And (var_94 = vbNullString)) Then
  loc_14D2691:     Set var_8C = Me.Txt
  loc_14D2697:     Call 0.Method_Proc_339_78_14D30200 (CInt(&HA))
  loc_14D269F:     var_94 = "Batch No."
  loc_14D26C0:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14D26C3:       Exit Sub
  loc_14D26C4:     End If
  loc_14D26C4:   End If
  loc_14D26C4: End If
  loc_14D26DD: Set var_8C = Me.Txt
  loc_14D26E3: Call 0.Method_Proc_339_78_14D30200 (CInt(&H11), var_90, var_94)
  loc_14D26EB: (global_160 = "UPI") = var_90.Text
  loc_14D2703: If (var_90 And (var_94 = vbNullString)) Then
  loc_14D2711:   Set var_8C = Me.Txt
  loc_14D2717:   Call 0.Method_Proc_339_78_14D30200 (CInt(&H11))
  loc_14D271F:   var_94 = "Txn. No."
  loc_14D2740:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14D2743:     Exit Sub
  loc_14D2744:   End If
  loc_14D2744: End If
  loc_14D275D: Set var_8C = Me.Txt
  loc_14D2763: Call 0.Method_Proc_339_78_14D30200 (CInt(&HB), var_90, var_94)
  loc_14D276B: (global_160 = "Cheque") = var_90.Text
  loc_14D2783: If (var_90 And (var_94 = vbNullString)) Then
  loc_14D2791:   Set var_8C = Me.Txt
  loc_14D2797:   Call 0.Method_Proc_339_78_14D30200 (CInt(&HB))
  loc_14D279F:   var_94 = "Cheque No."
  loc_14D27C0:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14D27C3:     Exit Sub
  loc_14D27C4:   End If
  loc_14D27C4: End If
  loc_14D27DD: Set var_8C = Me.Txt
  loc_14D27E3: Call 0.Method_Proc_339_78_14D30200 (CInt(&HC), var_90, var_94)
  loc_14D27EB: (global_160 = "Cheque") = var_90.Text
  loc_14D2803: If (var_90 And (var_94 = vbNullString)) Then
  loc_14D2811:   Set var_8C = Me.Txt
  loc_14D2817:   Call 0.Method_Proc_339_78_14D30200 (CInt(&HC))
  loc_14D2840:   If (Proc_6_27_EA61EC(var_90, "Cheque Dt.") = 0) Then
  loc_14D2843:     Exit Sub
  loc_14D2844:   End If
  loc_14D2844: End If
  loc_14D284D: If (global_176 = 0) Then
  loc_14D2869:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14D288C:   var_94 = CStr(Me.FGrid.TextMatrix))
  loc_14D28A5:   If (var_94 <> vbNullString) Then
  loc_14D28C4:     var_AC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0, 3))) 'String
  loc_14D28CC:     Set var_90 = Me.FGrid
  loc_14D28E6:   End If
  loc_14D2900:   var_86 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_14D290C: Else
  loc_14D2920:   var_86 = CInt(CLng(Me.FGrid.Row))
  loc_14D2929: End If
  loc_14D292D: Set var_100 = Me.FGrid
  loc_14D2950: Set var_8C = Me.Txt
  loc_14D2956: Call 0.Method_Proc_339_78_14D30200 (CInt(5), var_90, var_94, 1, CVar(CLng(var_86)), var_86)
  loc_14D295E: var_86 = var_90.Tag
  loc_14D2966: var_AC = CVar(var_94) 'String
  loc_14D296D: LateIdCallSt
  loc_14D2983: var_BC = CVar(CLng(var_86)) 'Long
  loc_14D2988: var_DC = 2
  loc_14D299E: LateIdCallSt
  loc_14D29C6: Set var_8C = Me.Txt
  loc_14D29CC: Call 0.Method_Proc_339_78_14D30200 (CInt(5), var_90, var_94, 3, CVar(CLng(var_86)), var_100, global_160)
  loc_14D29D4: var_DC = var_90.Text
  loc_14D29DC: var_AC = CVar(var_94) 'String
  loc_14D29E3: LateIdCallSt
  loc_14D29F9: var_BC = CVar(CLng(var_86)) 'Long
  loc_14D29FE: var_DC = 4
  loc_14D2A14: LateIdCallSt
  loc_14D2A20: var_BC = CVar(CLng(var_86)) 'Long
  loc_14D2A25: var_DC = 5
  loc_14D2A3B: LateIdCallSt
  loc_14D2A63: Set var_8C = Me.Txt
  loc_14D2A69: Call 0.Method_Proc_339_78_14D30200 (CInt(6), var_90, var_94, 8, CVar(CLng(var_86)), var_100, global_156)
  loc_14D2A71: var_DC = var_90.Text
  loc_14D2A80: LateIdCallSt
  loc_14D2AB1: Set var_8C = Me.Txt
  loc_14D2AB7: Call 0.Method_Proc_339_78_14D30200 (CInt(7), var_90, var_94, CVar(CLng(9)), CVar(CLng(var_86)), var_100, CVar(var_94))
  loc_14D2ABF: var_BC = var_90.Text
  loc_14D2AC7: var_AC = CVar(var_94) 'String
  loc_14D2ACE: LateIdCallSt
  loc_14D2AFF: Set var_8C = Me.Txt
  loc_14D2B05: Call 0.Method_Proc_339_78_14D30200 (CInt(8), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_100)
  loc_14D2B0D: var_AC = var_90.Text
  loc_14D2B15: var_AC = CVar(var_94) 'String
  loc_14D2B1C: LateIdCallSt
  loc_14D2B4D: Set var_8C = Me.Txt
  loc_14D2B53: Call 0.Method_Proc_339_78_14D30200 (CInt(9), var_90, var_94, CVar(CLng(&HB)), CVar(CLng(var_86)), var_100)
  loc_14D2B5B: var_AC = var_90.Text
  loc_14D2B63: var_AC = CVar(var_94) 'String
  loc_14D2B6A: LateIdCallSt
  loc_14D2B9C: Set var_8C = Me.Txt
  loc_14D2BA2: Call 0.Method_Proc_339_78_14D30200 (CInt(&HA), var_90, var_94, &H17, CVar(CLng(var_86)), var_100)
  loc_14D2BAA: var_AC = var_90.Text
  loc_14D2BB2: var_AC = CVar(var_94) 'String
  loc_14D2BB9: LateIdCallSt
  loc_14D2BEB: Set var_8C = Me.Txt
  loc_14D2BF1: Call 0.Method_Proc_339_78_14D30200 (CInt(&H11), var_90, var_94, &H1A, CVar(CLng(var_86)), var_100)
  loc_14D2BF9: var_AC = var_90.Text
  loc_14D2C01: var_AC = CVar(var_94) 'String
  loc_14D2C08: LateIdCallSt
  loc_14D2C39: Set var_8C = Me.Txt
  loc_14D2C3F: Call 0.Method_Proc_339_78_14D30200 (CInt(&HB), var_90, var_94, CVar(CLng(&HC)), CVar(CLng(var_86)), var_100)
  loc_14D2C47: var_AC = var_90.Text
  loc_14D2C4F: var_AC = CVar(var_94) 'String
  loc_14D2C56: LateIdCallSt
  loc_14D2C87: Set var_8C = Me.Txt
  loc_14D2C8D: Call 0.Method_Proc_339_78_14D30200 (CInt(&HC), var_90, var_94, CVar(CLng(&HD)), CVar(CLng(var_86)), var_100)
  loc_14D2C95: var_AC = var_90.Text
  loc_14D2C9D: var_AC = CVar(var_94) 'String
  loc_14D2CA4: LateIdCallSt
  loc_14D2CD5: Set var_8C = Me.Txt
  loc_14D2CDB: Call 0.Method_Proc_339_78_14D30200 (CInt(&H12), var_90, var_94, CVar(CLng(&HE)), CVar(CLng(var_86)), var_100)
  loc_14D2CE3: var_AC = var_90.Text
  loc_14D2CEB: var_AC = CVar(var_94) 'String
  loc_14D2CF2: LateIdCallSt
  loc_14D2D23: Set var_8C = Me.Txt
  loc_14D2D29: Call 0.Method_Proc_339_78_14D30200 (CInt(&HF), var_90, var_94, CVar(CLng(&HF)), CVar(CLng(var_86)), var_100)
  loc_14D2D31: var_AC = var_90.Text
  loc_14D2D39: var_AC = CVar(var_94) 'String
  loc_14D2D40: LateIdCallSt
  loc_14D2D71: Set var_8C = Me.Txt
  loc_14D2D77: Call 0.Method_Proc_339_78_14D30200 (CInt(&HF), var_90, var_94, CVar(CLng(&H10)), CVar(CLng(var_86)), var_100)
  loc_14D2D7F: var_AC = var_90.Tag
  loc_14D2D87: var_AC = CVar(var_94) 'String
  loc_14D2D8E: LateIdCallSt
  loc_14D2DC0: Set var_8C = Me.Txt
  loc_14D2DC6: Call 0.Method_Proc_339_78_14D30200 (CInt(&H10), var_90, var_94, &H12, CVar(CLng(var_86)), var_100)
  loc_14D2DCE: var_AC = var_90.Tag
  loc_14D2DD6: var_AC = CVar(var_94) 'String
  loc_14D2DDD: LateIdCallSt
  loc_14D2E0F: Set var_8C = Me.Txt
  loc_14D2E15: Call 0.Method_Proc_339_78_14D30200 (CInt(&H10), var_90, var_94, &H13, CVar(CLng(var_86)), var_100)
  loc_14D2E1D: var_AC = var_90.Text
  loc_14D2E25: var_AC = CVar(var_94) 'String
  loc_14D2E2C: LateIdCallSt
  loc_14D2E5E: Set var_8C = Me.Txt
  loc_14D2E64: Call 0.Method_Proc_339_78_14D30200 (CInt(&HD), var_90, var_94, &H14, CVar(CLng(var_86)), var_100)
  loc_14D2E6C: var_AC = var_90.Tag
  loc_14D2E74: var_AC = CVar(var_94) 'String
  loc_14D2E7B: LateIdCallSt
  loc_14D2EAD: Set var_8C = Me.Txt
  loc_14D2EB3: Call 0.Method_Proc_339_78_14D30200 (CInt(&HD), var_90, var_94, &H15, CVar(CLng(var_86)), var_100)
  loc_14D2EBB: var_AC = var_90.Text
  loc_14D2EC3: var_AC = CVar(var_94) 'String
  loc_14D2ECA: LateIdCallSt
  loc_14D2EFC: Set var_8C = Me.Txt
  loc_14D2F02: Call 0.Method_Proc_339_78_14D30200 (CInt(&HE), var_90, var_94, &H18, CVar(CLng(var_86)), var_100)
  loc_14D2F0A: var_AC = var_90.Tag
  loc_14D2F12: var_AC = CVar(var_94) 'String
  loc_14D2F19: LateIdCallSt
  loc_14D2F4B: Set var_8C = Me.Txt
  loc_14D2F51: Call 0.Method_Proc_339_78_14D30200 (CInt(&HE), var_90, var_94, &H19, CVar(CLng(var_86)), var_100)
  loc_14D2F59: var_AC = var_90.Text
  loc_14D2F61: var_AC = CVar(var_94) 'String
  loc_14D2F68: LateIdCallSt
  loc_14D2F85: If (global_160 = "Room") Then
  loc_14D2F8C:   var_CC = CVar(CLng(var_86)) 'Long
  loc_14D2F91:   var_EC = &H16
  loc_14D2FB7:   var_90 = Me.Fields.Item("FolioNoDocid")
  loc_14D2FBF:   var_AC = var_90.Value
  loc_14D2FC8:   var_FC = CVar(CStr(var_AC)) 'String
  loc_14D2FCF:   LateIdCallSt
  loc_14D2FE5: End If
  loc_14D2FE7: Set var_100 = Nothing 
  loc_14D2FEB: Call Proc_339_80_DFDF84(var_100, var_FC, var_EC, var_CC, var_100, var_AC)
  loc_14D2FFB: Set var_8C = Me.Txt
  loc_14D3001: Call 0.Method_Proc_339_78_14D30200 (CInt(5), var_90, var_100, global_152)
  loc_14D3009: var_90.SetFocus
  loc_14D301A: global_176 = &HFF
  loc_14D301D: Exit Sub
End Sub

Public Sub Proc_339_79_11AB60C(arg_C) '11AB60C
  'Data Table: 539FB8
  Dim var_8C As TextBox
  loc_11AB1D0: If (arg_C = vbNullString) Then
  loc_11AB1E1:   Set var_88 = Me.Txt
  loc_11AB1E7:   Call 0.Method_Proc_339_79_11AB60C0 (CInt(5), var_8C)
  loc_11AB1EF:   var_8C.Text = vbNullString
  loc_11AB209:   Set var_88 = Me.Txt
  loc_11AB20F:   Call 0.Method_Proc_339_79_11AB60C0 (CInt(6), var_8C)
  loc_11AB217:   var_8C.Text = vbNullString
  loc_11AB231:   Set var_88 = Me.Txt
  loc_11AB237:   Call 0.Method_Proc_339_79_11AB60C0 (CInt(&H12), var_8C)
  loc_11AB23F:   var_8C.Text = vbNullString
  loc_11AB259:   Set var_88 = Me.Txt
  loc_11AB25F:   Call 0.Method_Proc_339_79_11AB60C0 (CInt(7), var_8C)
  loc_11AB267:   var_8C.Text = vbNullString
  loc_11AB281:   Set var_88 = Me.Txt
  loc_11AB287:   Call 0.Method_Proc_339_79_11AB60C0 (CInt(8), var_8C)
  loc_11AB28F:   var_8C.Text = vbNullString
  loc_11AB2A9:   Set var_88 = Me.Txt
  loc_11AB2AF:   Call 0.Method_Proc_339_79_11AB60C0 (CInt(9), var_8C)
  loc_11AB2B7:   var_8C.Text = vbNullString
  loc_11AB2D1:   Set var_88 = Me.Txt
  loc_11AB2D7:   Call 0.Method_Proc_339_79_11AB60C0 (CInt(&HA), var_8C)
  loc_11AB2DF:   var_8C.Text = vbNullString
  loc_11AB2F9:   Set var_88 = Me.Txt
  loc_11AB2FF:   Call 0.Method_Proc_339_79_11AB60C0 (CInt(&H11), var_8C)
  loc_11AB307:   var_8C.Text = vbNullString
  loc_11AB321:   Set var_88 = Me.Txt
  loc_11AB327:   Call 0.Method_Proc_339_79_11AB60C0 (CInt(&HB), var_8C)
  loc_11AB32F:   var_8C.Text = vbNullString
  loc_11AB349:   Set var_88 = Me.Txt
  loc_11AB34F:   Call 0.Method_Proc_339_79_11AB60C0 (CInt(&HC), var_8C)
  loc_11AB357:   var_8C.Text = vbNullString
  loc_11AB371:   Set var_88 = Me.Txt
  loc_11AB377:   Call 0.Method_Proc_339_79_11AB60C0 (CInt(&HD), var_8C)
  loc_11AB37F:   var_8C.Text = vbNullString
  loc_11AB399:   Set var_88 = Me.Txt
  loc_11AB39F:   Call 0.Method_Proc_339_79_11AB60C0 (CInt(&HE), var_8C)
  loc_11AB3A7:   var_8C.Text = vbNullString
  loc_11AB3C1:   Set var_88 = Me.Txt
  loc_11AB3C7:   Call 0.Method_Proc_339_79_11AB60C0 (CInt(&HF), var_8C)
  loc_11AB3CF:   var_8C.Text = vbNullString
  loc_11AB3E9:   Set var_88 = Me.Txt
  loc_11AB3EF:   Call 0.Method_Proc_339_79_11AB60C0 (CInt(&H10), var_8C)
  loc_11AB3F7:   var_8C.Text = vbNullString
  loc_11AB403: End If
  loc_11AB40B: If (arg_C <> "UPI") Then
  loc_11AB41C:   Set var_88 = Me.Txt
  loc_11AB422:   Call 0.Method_Proc_339_79_11AB60C0 (CInt(&H11), var_8C)
  loc_11AB42A:   var_8C.Text = vbNullString
  loc_11AB436: End If
  loc_11AB43E: If (arg_C <> "Cheque") Then
  loc_11AB44F:   Set var_88 = Me.Txt
  loc_11AB455:   Call 0.Method_Proc_339_79_11AB60C0 (CInt(&HB), var_8C)
  loc_11AB45D:   var_8C.Text = vbNullString
  loc_11AB477:   Set var_88 = Me.Txt
  loc_11AB47D:   Call 0.Method_Proc_339_79_11AB60C0 (CInt(&HC), var_8C)
  loc_11AB485:   var_8C.Text = vbNullString
  loc_11AB491: End If
  loc_11AB499: If (arg_C <> "Credit Card") Then
  loc_11AB4AA:   Set var_88 = Me.Txt
  loc_11AB4B0:   Call 0.Method_Proc_339_79_11AB60C0 (CInt(7), var_8C)
  loc_11AB4B8:   var_8C.Text = vbNullString
  loc_11AB4D2:   Set var_88 = Me.Txt
  loc_11AB4D8:   Call 0.Method_Proc_339_79_11AB60C0 (CInt(8), var_8C)
  loc_11AB4E0:   var_8C.Text = vbNullString
  loc_11AB4FA:   Set var_88 = Me.Txt
  loc_11AB500:   Call 0.Method_Proc_339_79_11AB60C0 (CInt(9), var_8C)
  loc_11AB508:   var_8C.Text = vbNullString
  loc_11AB522:   Set var_88 = Me.Txt
  loc_11AB528:   Call 0.Method_Proc_339_79_11AB60C0 (CInt(&HA), var_8C)
  loc_11AB530:   var_8C.Text = vbNullString
  loc_11AB53C: End If
  loc_11AB544: If (arg_C <> "Company") Then
  loc_11AB555:   Set var_88 = Me.Txt
  loc_11AB55B:   Call 0.Method_Proc_339_79_11AB60C0 (CInt(&HD), var_8C)
  loc_11AB563:   var_8C.Text = vbNullString
  loc_11AB56F: End If
  loc_11AB577: If (arg_C <> "Member") Then
  loc_11AB588:   Set var_88 = Me.Txt
  loc_11AB58E:   Call 0.Method_Proc_339_79_11AB60C0 (CInt(&HE), var_8C)
  loc_11AB596:   var_8C.Text = vbNullString
  loc_11AB5A2: End If
  loc_11AB5AA: If (arg_C <> "Staff") Then
  loc_11AB5BB:   Set var_88 = Me.Txt
  loc_11AB5C1:   Call 0.Method_Proc_339_79_11AB60C0 (CInt(&HF), var_8C)
  loc_11AB5C9:   var_8C.Text = vbNullString
  loc_11AB5D5: End If
  loc_11AB5DD: If (arg_C <> "Room") Then
  loc_11AB5EE:   Set var_88 = Me.Txt
  loc_11AB5F4:   Call 0.Method_Proc_339_79_11AB60C0 (CInt(&H10), var_8C)
  loc_11AB5FC:   var_8C.Text = vbNullString
  loc_11AB608: End If
  loc_11AB608: Exit Sub
End Sub

Public Sub Proc_339_80_DFDF84
  'Data Table: 539FB8
  loc_DFDF80: Exit Sub
End Sub

Public Sub Proc_339_81_1374460
  'Data Table: 539FB8
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As MSHFlexGrid
  Dim var_F4 As MSHFlexGrid
  Dim var_F8 As TextBox
  loc_1373BE7: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1373BEC: var_C8 = 1
  loc_1373C23: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1373C2A:   Set var_F4 = Me.FGrid
  loc_1373C6A:   Set var_DC = Me.Txt
  loc_1373C70:   Call 0.Method_Proc_339_81_13744600 (CInt(5), var_F8, CStr(var_F4.TextMatrix)), 1)
  loc_1373C78:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_1373CA3:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1373CA8:   var_C8 = 2
  loc_1373CC5:   global_160 = CStr(var_F4.TextMatrix))
  loc_1373CEE:   var_C8 = 3
  loc_1373D13:   Set var_DC = Me.Txt
  loc_1373D19:   Call 0.Method_Proc_339_81_13744600 (CInt(5), var_F8, CStr(var_F4.TextMatrix)), var_C8, CVar(CLng(Me.FGrid.Row)))
  loc_1373D21:   var_F8.Text = var_C8
  loc_1373D4C:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1373D51:   var_C8 = 4
  loc_1373D6E:   global_152 = CStr(var_F4.TextMatrix))
  loc_1373D92:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1373D97:   var_C8 = 5
  loc_1373DB4:   global_156 = CStr(var_F4.TextMatrix))
  loc_1373DD8:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1373E02:   Set var_DC = Me.Txt
  loc_1373E08:   Call 0.Method_Proc_339_81_13744600 (CInt(6), var_F8, CStr(var_F4.TextMatrix)), 8, var_A8, 8)
  loc_1373E10:   var_F8.Text = var_A8
  loc_1373E43:   var_C8 = CVar(CLng(9)) 'Long
  loc_1373E64:   Set var_DC = Me.Txt
  loc_1373E6A:   Call 0.Method_Proc_339_81_13744600 (CInt(7), var_F8, CStr(var_F4.TextMatrix)), var_C8, CVar(CLng(Me.FGrid.Row)))
  loc_1373E72:   var_F8.Text = var_C8
  loc_1373E9D:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1373EC6:   Set var_DC = Me.Txt
  loc_1373ECC:   Call 0.Method_Proc_339_81_13744600 (CInt(8), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HA)), var_A8)
  loc_1373ED4:   var_F8.Text = var_A8
  loc_1373F28:   Set var_DC = Me.Txt
  loc_1373F2E:   Call 0.Method_Proc_339_81_13744600 (CInt(9), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HB)))
  loc_1373F36:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1373F8B:   Set var_DC = Me.Txt
  loc_1373F91:   Call 0.Method_Proc_339_81_13744600 (CInt(&HA), var_F8, CStr(var_F4.TextMatrix)), &H17)
  loc_1373F99:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1373FEE:   Set var_DC = Me.Txt
  loc_1373FF4:   Call 0.Method_Proc_339_81_13744600 (CInt(&H11), var_F8, CStr(var_F4.TextMatrix)), &H1A)
  loc_1373FFC:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1374050:   Set var_DC = Me.Txt
  loc_1374056:   Call 0.Method_Proc_339_81_13744600 (CInt(&HB), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HC)))
  loc_137405E:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13740B2:   Set var_DC = Me.Txt
  loc_13740B8:   Call 0.Method_Proc_339_81_13744600 (CInt(&HC), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HD)))
  loc_13740C0:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1374114:   Set var_DC = Me.Txt
  loc_137411A:   Call 0.Method_Proc_339_81_13744600 (CInt(&H12), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HE)))
  loc_1374122:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1374176:   Set var_DC = Me.Txt
  loc_137417C:   Call 0.Method_Proc_339_81_13744600 (CInt(&HF), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HF)))
  loc_1374184:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13741D8:   Set var_DC = Me.Txt
  loc_13741DE:   Call 0.Method_Proc_339_81_13744600 (CInt(&HF), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H10)))
  loc_13741E6:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_137423B:   Set var_DC = Me.Txt
  loc_1374241:   Call 0.Method_Proc_339_81_13744600 (CInt(&H10), var_F8, CStr(var_F4.TextMatrix)), &H12)
  loc_1374249:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_137429E:   Set var_DC = Me.Txt
  loc_13742A4:   Call 0.Method_Proc_339_81_13744600 (CInt(&H10), var_F8, CStr(var_F4.TextMatrix)), &H13)
  loc_13742AC:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1374301:   Set var_DC = Me.Txt
  loc_1374307:   Call 0.Method_Proc_339_81_13744600 (CInt(&HD), var_F8, CStr(var_F4.TextMatrix)), &H14)
  loc_137430F:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_1374364:   Set var_DC = Me.Txt
  loc_137436A:   Call 0.Method_Proc_339_81_13744600 (CInt(&HD), var_F8, CStr(var_F4.TextMatrix)), &H15)
  loc_1374372:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13743C7:   Set var_DC = Me.Txt
  loc_13743CD:   Call 0.Method_Proc_339_81_13744600 (CInt(&HE), var_F8, CStr(var_F4.TextMatrix)), &H18)
  loc_13743D5:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_137442A:   Set var_DC = Me.Txt
  loc_1374430:   Call 0.Method_Proc_339_81_13744600 (CInt(&HE), var_F8, CStr(var_F4.TextMatrix)), &H19)
  loc_1374438:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1374455:   global_176 = &HFF
  loc_137445A:   Set var_F4 = Nothing 
  loc_137445E: End If
  loc_137445E: Exit Sub
End Sub

Public Sub Proc_339_82_EE4048
  'Data Table: 539FB8
  loc_EE3F96: On Error Goto loc_EE3FDC
  loc_EE3FAE: Call 0.Method_arg_18C (var_8C)
  loc_EE3FB6: Call var_8C.Show
  loc_EE3FCB: Call 0.Method_arg_188 (var_B0)
  loc_EE3FD3: var_88 = var_B0
  loc_EE3FD6: Proc_339_82_EE4048 = 1
  loc_EE3FDC: ' Referenced from: EE3F96
  loc_EE3FE4: Set var_8C = Err()
  loc_EE3FEA: Call 0.Method_arg_1C (var_B4)
  loc_EE3FFB: If (var_B4 <> 0) Then
  loc_EE4006:   Set var_8C = Err()
  loc_EE400C:   Call 0.Method_arg_2C (var_B0)
  loc_EE402D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE4040: End If
  loc_EE4040: Proc_339_82_EE4048 = 
End Sub

Public Sub Proc_339_83_11B5D00
  'Data Table: 539FB8
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_11B58C6: Me.GridSel.Rows = 1
  loc_11B58DA: Me.GridSel.Cols = 8
  loc_11B58DF: var_98 = 0
  loc_11B58EB: var_BC = CVar(CLng(0)) 'Long
  loc_11B58F0: var_DC = "O"
  loc_11B58F9: LateIdCallSt
  loc_11B5904: var_98 = CVar(CLng(0)) 'Long
  loc_11B5909: var_BC = &H258
  loc_11B5915: LateIdCallSt
  loc_11B591D: var_98 = 0
  loc_11B5929: var_BC = CVar(CLng(1)) 'Long
  loc_11B592E: var_DC = "Bill No"
  loc_11B5937: LateIdCallSt
  loc_11B5942: var_98 = CVar(CLng(1)) 'Long
  loc_11B594D: var_BC = CVar(CInt(1)) 'Integer
  loc_11B5954: LateIdCallSt
  loc_11B595F: var_98 = CVar(CLng(1)) 'Long
  loc_11B596A: var_BC = CVar(CInt(1)) 'Integer
  loc_11B5971: LateIdCallSt
  loc_11B597C: var_98 = CVar(CLng(1)) 'Long
  loc_11B5981: var_BC = &H514
  loc_11B598D: LateIdCallSt
  loc_11B5995: var_98 = 0
  loc_11B59A1: var_BC = CVar(CLng(2)) 'Long
  loc_11B59A6: var_DC = "DocId"
  loc_11B59AF: LateIdCallSt
  loc_11B59BA: var_98 = CVar(CLng(2)) 'Long
  loc_11B59C5: var_BC = CVar(CInt(7)) 'Integer
  loc_11B59CC: LateIdCallSt
  loc_11B59D7: var_98 = CVar(CLng(2)) 'Long
  loc_11B59E2: var_BC = CVar(CInt(7)) 'Integer
  loc_11B59E9: LateIdCallSt
  loc_11B59F4: var_98 = CVar(CLng(2)) 'Long
  loc_11B59F9: var_BC = 0
  loc_11B5A05: LateIdCallSt
  loc_11B5A0D: var_98 = 0
  loc_11B5A19: var_BC = CVar(CLng(3)) 'Long
  loc_11B5A1E: var_DC = "SNo"
  loc_11B5A27: LateIdCallSt
  loc_11B5A32: var_98 = CVar(CLng(3)) 'Long
  loc_11B5A3D: var_BC = CVar(CInt(7)) 'Integer
  loc_11B5A44: LateIdCallSt
  loc_11B5A4F: var_98 = CVar(CLng(3)) 'Long
  loc_11B5A5A: var_BC = CVar(CInt(7)) 'Integer
  loc_11B5A61: LateIdCallSt
  loc_11B5A6C: var_98 = CVar(CLng(3)) 'Long
  loc_11B5A71: var_BC = 0
  loc_11B5A7D: LateIdCallSt
  loc_11B5A85: var_98 = 0
  loc_11B5A91: var_BC = CVar(CLng(4)) 'Long
  loc_11B5A96: var_DC = "Bill Date"
  loc_11B5A9F: LateIdCallSt
  loc_11B5AAA: var_98 = CVar(CLng(4)) 'Long
  loc_11B5AB5: var_BC = CVar(CInt(1)) 'Integer
  loc_11B5ABC: LateIdCallSt
  loc_11B5AC7: var_98 = CVar(CLng(4)) 'Long
  loc_11B5AD2: var_BC = CVar(CInt(1)) 'Integer
  loc_11B5AD9: LateIdCallSt
  loc_11B5AE4: var_98 = CVar(CLng(4)) 'Long
  loc_11B5AE9: var_BC = &H640
  loc_11B5AF5: LateIdCallSt
  loc_11B5AFD: var_98 = 0
  loc_11B5B09: var_BC = CVar(CLng(5)) 'Long
  loc_11B5B0E: var_DC = "Bill Amount"
  loc_11B5B17: LateIdCallSt
  loc_11B5B22: var_98 = CVar(CLng(5)) 'Long
  loc_11B5B2D: var_BC = CVar(CInt(7)) 'Integer
  loc_11B5B34: LateIdCallSt
  loc_11B5B3F: var_98 = CVar(CLng(5)) 'Long
  loc_11B5B4A: var_BC = CVar(CInt(7)) 'Integer
  loc_11B5B51: LateIdCallSt
  loc_11B5B5C: var_98 = CVar(CLng(5)) 'Long
  loc_11B5B61: var_BC = &H640
  loc_11B5B6D: LateIdCallSt
  loc_11B5B75: var_98 = 0
  loc_11B5B81: var_BC = CVar(CLng(6)) 'Long
  loc_11B5B86: var_DC = "PayType"
  loc_11B5B8F: LateIdCallSt
  loc_11B5B9A: var_98 = CVar(CLng(6)) 'Long
  loc_11B5BA5: var_BC = CVar(CInt(1)) 'Integer
  loc_11B5BAC: LateIdCallSt
  loc_11B5BB7: var_98 = CVar(CLng(6)) 'Long
  loc_11B5BC2: var_BC = CVar(CInt(1)) 'Integer
  loc_11B5BC9: LateIdCallSt
  loc_11B5BD4: var_98 = CVar(CLng(6)) 'Long
  loc_11B5BD9: var_BC = 0
  loc_11B5BE5: LateIdCallSt
  loc_11B5BED: var_98 = 0
  loc_11B5BF9: var_BC = CVar(CLng(7)) 'Long
  loc_11B5BFE: var_DC = "CompCode"
  loc_11B5C07: LateIdCallSt
  loc_11B5C12: var_98 = CVar(CLng(7)) 'Long
  loc_11B5C1D: var_BC = CVar(CInt(1)) 'Integer
  loc_11B5C24: LateIdCallSt
  loc_11B5C2F: var_98 = CVar(CLng(7)) 'Long
  loc_11B5C3A: var_BC = CVar(CInt(1)) 'Integer
  loc_11B5C41: LateIdCallSt
  loc_11B5C4C: var_98 = CVar(CLng(7)) 'Long
  loc_11B5C51: var_BC = 0
  loc_11B5C5D: LateIdCallSt
  loc_11B5C65: var_98 = vbNullString
  loc_11B5C6F: Set var_AC = Me.GridSel
  loc_11B5C93: Me.GridSel.FixedRows = 1
  loc_11B5C9D: Set var_88 = Nothing 
  loc_11B5CB1: ReDim Preserve global_172(0 To 0)
  loc_11B5CC8: global_172(0) = 0
  loc_11B5CDC: Me.GridSel.Height = CVar(CDbl(6000))
  loc_11B5CF7: Me.GridSel.Width = CVar(CDbl(6500))
  loc_11B5CFF: Exit Sub
End Sub

Public Sub Proc_339_84_1246720(arg_C) '1246720
  'Data Table: 539FB8
  Dim var_8C As String
  Dim var_90 As String
  Dim unk_539FE7 As Connection15
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_C8 As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_E4 As Variant
  Dim var_10C As Variant
  Dim var_150 As Variant
  Dim var_140 As Variant
  loc_1246213: If (global_52 <> vbNullString) Then
  loc_1246227:   var_88 = " And P.RestCode='" & global_52 & "'"
  loc_1246230: Else
  loc_1246233:   var_88 = " And P.RestCode In (Select Code From Depart Where OutletYN='Y')"
  loc_1246236: End If
  loc_124624A: var_8C = "Select P.DocId,P.Vno,P.SNo,P.Vdate,P.AmtCr,P.PayType,P.CompCode From (Sale1 S Inner Join PayCharge P on P.DocId=S.DocId) Where IsNull(P.PayType,'') In('Company') And P.CompCode='" & arg_C
  loc_1246251: var_90 = var_8C & "' And P.DocId+Cast(P.SNo As Varchar) Not In (Select Docid2+Cast(V_SNo2 As Varchar) From LedgerAdj Where Logsite_Code='"
  loc_1246284: unk_539FE7.Execute var_90 & MemVar_1F95078 & "') " & var_88 & " And P.Logsite_Code='" & MemVar_1F95078 & "' Order by P.Vno,P.SNo", var_C8, -1
  loc_1246295: Set global_192 = var_CC
  loc_12462CD: If (Me.RecordCount = 0) Then
  loc_12462E3:   Me.GridSel.Rows = 2
  loc_12462EB:   Exit Sub
  loc_12462EC: End If
  loc_12462FF: Me.GridSel.Row = 1
  loc_1246307: ' Referenced from: 12466FE
  loc_1246319: If Not(Me.EOF) Then
  loc_1246320:   Set var_EC = Me.GridSel
  loc_1246323:   var_B8 = vbNullString
  loc_1246347:   var_B8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_124634F:   var_FC = CVar(CLng(0)) 'Long
  loc_124635D:   LateIdCallSt
  loc_124637E:   var_E4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1246386:   var_10C = CVar(CLng(1)) 'Long
  loc_12463B9:   var_150 = CVar(CStr(Me.Fields.Item("VNo").Value)) 'String
  loc_12463C0:   LateIdCallSt
  loc_1246425:   var_150 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DocID")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_EC, var_150, CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_124642C:   LateIdCallSt
  loc_124648F:   var_150 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SNo")), CVar(CLng(3)), CVar(CLng(Me.GridSel.Row)), var_EC, var_150, var_EC)) 'String
  loc_1246496:   LateIdCallSt
  loc_12464EF:   var_FC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_12464F7:   var_11C = CVar(CLng(4)) 'Long
  loc_1246514:   var_140 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("VDate")), var_EC, "dd/mmm/yyyy", vbNullString)) 'String
  loc_124652A:   LateIdCallSt
  loc_1246574:   Proc_6_39_E7D3A0(var_140, CVar(Me.Fields.Item("AmtCr")), var_EC, CVar(CStr(Format(var_140, "dd/mmm/yyyy"))), 1, 1)
  loc_124658C:   var_FC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_12465C4:   LateIdCallSt
  loc_124662D:   var_150 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("PayType")), CVar(CLng(6)), CVar(CLng(Me.GridSel.Row)), var_EC, CVar(CStr(Format(Me.GridSel.Row, "0.00"))), 1, 1)) 'String
  loc_1246634:   LateIdCallSt
  loc_1246697:   var_150 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("CompCode")), CVar(CLng(7)), CVar(CLng(Me.GridSel.Row)), var_EC, var_150, CVar(CLng(5)))) 'String
  loc_124669E:   LateIdCallSt
  loc_12466B8:   Set var_EC = Nothing 
  loc_12466D5:   var_B8 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_12466E4:   Me.GridSel.Row = "CompCode"
  loc_12466F9:   Me.MoveNext
  loc_12466FE:   GoTo loc_1246307
  loc_1246701: End If
  loc_1246714: Me.GridSel.FixedRows = 1
  loc_124671C: Exit Sub
End Sub
