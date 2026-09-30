VERSION 5.00
Begin VB.Form hAdvanceDepDialogSecondry
  Caption = "Advance Deposite "
  BackColor = &HC9E2F5&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 6885
  ClientHeight = 6315
  StartUpPosition = 2 'CenterScreen
  Begin CheckBox cmdDelete
    Caption = "De&lete"
    BackColor = &HC9E2F5&
    ForeColor = &HFF0000&
    Left = 5400
    Top = 0
    Width = 1245
    Height = 375
    TabIndex = 59
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin Frame FrRem
    BackColor = &HC9E2F5&
    Left = 240
    Top = 1672
    Width = 4935
    Height = 255
    Visible = 0   'False
    TabIndex = 53
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 23
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 3810
      Height = 255
      TabIndex = 16
      BorderStyle = 0 'None
      MaxLength = 100
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
    Begin Label LblNarr
      Caption = "Narration"
      ForeColor = &H0&
      Left = 0
      Top = 0
      Width = 825
      Height = 240
      TabIndex = 54
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
  End
  Begin Frame FrChqDet
    BackColor = &HC9E2F5&
    Left = 6885
    Top = 2655
    Width = 2595
    Height = 525
    Visible = 0   'False
    TabIndex = 50
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 21
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 1440
      Height = 255
      TabIndex = 14
      BorderStyle = 0 'None
      MaxLength = 20
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
      Index = 22
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 270
      Width = 1440
      Height = 255
      TabIndex = 15
      BorderStyle = 0 'None
      MaxLength = 20
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
    Begin Label LblName
      Caption = "Cheque No."
      Index = 15
      ForeColor = &H0&
      Left = -15
      Top = 0
      Width = 1065
      Height = 240
      TabIndex = 52
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
    Begin Label LblName
      Caption = "Cheque Dt."
      Index = 16
      ForeColor = &H0&
      Left = -15
      Top = 277
      Width = 990
      Height = 240
      TabIndex = 51
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
  End
  Begin Frame FrSendRoom
    BackColor = &HC9E2F5&
    Left = 6900
    Top = 495
    Width = 3150
    Height = 255
    Visible = 0   'False
    TabIndex = 48
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 30
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 1440
      Height = 255
      TabIndex = 7
      BorderStyle = 0 'None
      MaxLength = 20
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
    Begin Label LblName
      Caption = "Room No.#"
      Index = 26
      ForeColor = &H0&
      Left = -15
      Top = 0
      Width = 1020
      Height = 240
      TabIndex = 49
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
  End
  Begin Frame FrEmp
    BackColor = &HC9E2F5&
    Left = 6930
    Top = 1470
    Width = 4935
    Height = 255
    Visible = 0   'False
    TabIndex = 46
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 24
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 3795
      Height = 255
      TabIndex = 13
      BorderStyle = 0 'None
      MaxLength = 20
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
    Begin Label LblName
      Caption = "Staff"
      Index = 22
      ForeColor = &H0&
      Left = -15
      Top = 0
      Width = 390
      Height = 240
      TabIndex = 47
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
  End
  Begin Frame FrComp
    BackColor = &HC9E2F5&
    Left = 6870
    Top = 765
    Width = 4920
    Height = 255
    Visible = 0   'False
    TabIndex = 44
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 31
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 3795
      Height = 255
      TabIndex = 8
      BorderStyle = 0 'None
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
    Begin Label LblName
      Caption = "Company"
      Index = 27
      ForeColor = &H0&
      Left = -15
      Top = 0
      Width = 870
      Height = 240
      TabIndex = 45
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
  End
  Begin Frame FrCCDet
    BackColor = &HC9E2F5&
    Left = 6930
    Top = 1770
    Width = 4095
    Height = 795
    Visible = 0   'False
    TabIndex = 40
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 3
      BackColor = &HFFFFFF&
      Left = 3315
      Top = 540
      Width = 705
      Height = 255
      TabIndex = 12
      BorderStyle = 0 'None
      MaxLength = 20
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
      Index = 18
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 2415
      Height = 255
      TabIndex = 9
      BorderStyle = 0 'None
      MaxLength = 20
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
      Index = 19
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 270
      Width = 2910
      Height = 255
      TabIndex = 10
      BorderStyle = 0 'None
      MaxLength = 20
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
      Index = 20
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 540
      Width = 1275
      Height = 255
      TabIndex = 11
      BorderStyle = 0 'None
      MaxLength = 20
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
    Begin Label LblName
      Caption = "Batch No."
      Index = 1
      ForeColor = &H0&
      Left = 2415
      Top = 540
      Width = 870
      Height = 240
      TabIndex = 58
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
    Begin Label LblName
      Caption = "C.C. No."
      Index = 18
      ForeColor = &H0&
      Left = -15
      Top = 0
      Width = 720
      Height = 240
      TabIndex = 43
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
    Begin Label LblName
      Caption = "Holder"
      Index = 19
      ForeColor = &H0&
      Left = -15
      Top = 270
      Width = 615
      Height = 240
      TabIndex = 42
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
    Begin Label LblName
      Caption = "Exp.Dt."
      Index = 20
      ForeColor = &H0&
      Left = -15
      Top = 540
      Width = 630
      Height = 240
      TabIndex = 41
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
  End
  Begin DataGrid DGCompany
    Left = 5145
    Top = 8010
    Width = 4215
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 35
  End
  Begin DataGrid DGTable
    Left = 6195
    Top = 7530
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 30
  End
  Begin DataGrid DGRoom
    Left = 7590
    Top = 6915
    Width = 2355
    Height = 2430
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 34
  End
  Begin DataGrid DGPayType
    Left = 7275
    Top = 6570
    Width = 4995
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 17
  End
  Begin DataGrid DGEmp
    Left = 7830
    Top = 6150
    Width = 4170
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 28
  End
  Begin Frame FrRest
    BackColor = &HC9E2F5&
    Left = 0
    Top = 915
    Width = 6885
    Height = 1905
    Visible = 0   'False
    TabIndex = 24
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 25
      BackColor = &HFFFFFF&
      Left = 3765
      Top = 450
      Width = 1395
      Height = 255
      TabIndex = 6
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 20
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
      Index = 17
      BackColor = &HFFFFFF&
      Left = 1350
      Top = 450
      Width = 1440
      Height = 255
      TabIndex = 5
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 20
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
      Index = 16
      BackColor = &HFFFFFF&
      Left = 1350
      Top = 1260
      Width = 3810
      Height = 255
      Visible = 0   'False
      TabIndex = 4
      BorderStyle = 0 'None
      MaxLength = 20
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
      Index = 15
      BackColor = &HFFFFFF&
      Left = 1350
      Top = 150
      Width = 3810
      Height = 255
      TabIndex = 3
      BorderStyle = 0 'None
      MaxLength = 20
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
    Begin Label LTxt
      Index = 29
      BackColor = &HDEECDB&
      ForeColor = &H800000&
      Left = 5415
      Top = 1155
      Width = 1275
      Height = 255
      TabIndex = 57
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin Label LblName
      Caption = "Payable Amt"
      Index = 0
      BackColor = &HC7EBEB&
      ForeColor = &H0&
      Left = 5415
      Top = 945
      Width = 1275
      Height = 225
      TabIndex = 56
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin Label LblName
      Caption = "Balance"
      Index = 17
      BackColor = &HC7EBEB&
      ForeColor = &HFF&
      Left = 5415
      Top = 1395
      Width = 1275
      Height = 225
      TabIndex = 33
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin Label LblName
      Caption = "Paid Amount"
      Index = 24
      BackColor = &HC7EBEB&
      ForeColor = &H808000&
      Left = 5415
      Top = 495
      Width = 1275
      Height = 225
      TabIndex = 32
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin Label LblName
      Caption = "Tip"
      Index = 21
      ForeColor = &H0&
      Left = 3135
      Top = 450
      Width = 300
      Height = 240
      TabIndex = 29
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
    Begin Shape Shape5
      BorderColor = &H400040&
      Left = 5280
      Top = 15
      Width = 1575
      Height = 1860
      BorderWidth = 2
      FillColor = &HC0FFC0&
    End
    Begin Shape Shape1
      Index = 1
      BackColor = &HE7F3FA&
      BorderColor = &H400040&
      Left = 75
      Top = 15
      Width = 5175
      Height = 1860
      BorderWidth = 2
      FillColor = &HE7F3FA&
    End
    Begin Label LblName
      Caption = "Amount"
      Index = 14
      ForeColor = &H0&
      Left = 240
      Top = 450
      Width = 675
      Height = 240
      TabIndex = 27
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
    Begin Label LblName
      Caption = "Room/T"
      Index = 12
      ForeColor = &H0&
      Left = 240
      Top = 1290
      Width = 750
      Height = 240
      Visible = 0   'False
      TabIndex = 26
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
    Begin Label LblName
      Caption = "Type"
      Index = 13
      ForeColor = &H0&
      Left = 240
      Top = 150
      Width = 480
      Height = 240
      TabIndex = 25
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
    Begin Label LblName
      Caption = "Bill Amount"
      Index = 23
      BackColor = &HC7EBEB&
      ForeColor = &HC00000&
      Left = 5415
      Top = 45
      Width = 1275
      Height = 225
      TabIndex = 31
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin Label LTxt
      Index = 27
      BackColor = &HDEECDB&
      ForeColor = &H800000&
      Left = 5415
      Top = 705
      Width = 1275
      Height = 255
      TabIndex = 39
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin Label LTxt
      Index = 28
      BackColor = &HDEECDB&
      ForeColor = &H800000&
      Left = 5415
      Top = 1605
      Width = 1275
      Height = 255
      TabIndex = 38
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin Label LTxt
      Index = 26
      BackColor = &HDEECDB&
      ForeColor = &H800000&
      Left = 5415
      Top = 255
      Width = 1275
      Height = 255
      TabIndex = 37
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 900
    Top = 3375
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 22
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    Left = 5430
    Top = 555
    Width = 1155
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 1545
    Top = 555
    Width = 855
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 50
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
    TabIndex = 18
    BorderStyle = 0 'None
    MaxLength = 50
    Locked = -1  'True
    Appearance = 0 'Flat
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 6885
    Height = 375
    TabIndex = 0
  End
  Begin MSHFlexGrid FGrid
    Left = 60
    Top = 2820
    Width = 6780
    Height = 1560
    TabIndex = 23
  End
  Begin MSFlexGrid FGPoint
    Left = 5895
    Top = 4050
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 55
  End
  Begin Label Label1
    Caption = "Press Ctrl+S to Save"
    ForeColor = &HFF0000&
    Left = 240
    Top = 75
    Width = 2970
    Height = 300
    TabIndex = 36
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
    Left = 2475
    Top = 555
    Width = 675
    Height = 240
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
  Begin Label Lbl
    Caption = "Date"
    Index = 37
    ForeColor = &H0&
    Left = 4830
    Top = 555
    Width = 435
    Height = 240
    TabIndex = 20
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
  Begin Label Lbl
    Caption = "Deposit No"
    Index = 36
    ForeColor = &H0&
    Left = 255
    Top = 555
    Width = 1020
    Height = 240
    TabIndex = 19
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
  Begin Shape Shape4
    BorderColor = &H400040&
    Left = 75
    Top = 495
    Width = 6780
    Height = 405
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

Attribute VB_Name = "hAdvanceDepDialogSecondry"

Private global_104 As Long
Private global_108 As Long
Private global_136 As Double
Private global_100 As Integer
Private global_164 As Integer

Private Sub DGPayType_UnknownEvent_9 'F67150
  'Data Table: 512D28
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_BC As TextBox
  loc_F67033: Me.DGPayType.Visible = False
  loc_F6704D: If (global_108 = 6) Then
  loc_F67067:   If (Me.RecordCount > 0) Then
  loc_F670A6:     Set var_B8 = Me.Txt
  loc_F670AC:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(&HF), var_BC)
  loc_F670B4:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F670E7:     var_B4 = Me.Fields.Item("Code")
  loc_F67106:     Set var_B8 = Me.Txt
  loc_F6710C:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(&HF), var_BC)
  loc_F67114:     var_BC.Tag = CStr(var_B4.Value)
  loc_F6712A:   End If
  loc_F67135:   Set var_A8 = Me.Txt
  loc_F6713B:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(&HF), var_B4)
  loc_F67143:   var_B4.SetFocus
  loc_F6714F: End If
  loc_F6714F: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'EA3648
  'Data Table: 512D28
  Dim var_A8 As Variant
  loc_EA35C8: Set var_88 = Me.DGPayType
  loc_EA35F2: var_A8 = CVar(CInt(Fix(((Y - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA35FA: Set var_BC = Me.DGPayType
  loc_EA3636: Proc_6_138_106E830(Me.DGPayType, global_64, CInt(&HF), Me.FGPoint)
  loc_EA3644: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E0B670
  'Data Table: 512D28
  loc_E0B65C: Call Proc_138_81_13ADB64()
  loc_E0B667: Call Proc_138_77_10DFFF0(global_152)
  loc_E0B66C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FDA368
  'Data Table: 512D28
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_A8 As Variant
  loc_FDA1A0: Set var_88 = Me.TopCtrl1
  loc_FDA1A6: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_FDA1BB: If ( = "Browse") Then
  loc_FDA1BE:   Exit Sub
  loc_FDA1BF: End If
  loc_FDA1DC: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FDA1DF:   Exit Sub
  loc_FDA1E0: End If
  loc_FDA1F1: If ((CLng(Button) = &H44) And (Shift = 2)) Then
  loc_FDA213:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FDA24D:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_E8, var_108) = 6) Then
  loc_FDA26F:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FDA285:         var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FDA28E:         Set var_10C = Me.FGrid
  loc_FDA2A9:       Else
  loc_FDA2BC:         Me.FGrid.Rows = 1
  loc_FDA2E0:         var_A8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0))) 'String
  loc_FDA2E8:         Set var_10C = Me.FGrid
  loc_FDA315:         Me.FGrid.FixedRows = 1
  loc_FDA31D:       End If
  loc_FDA31D:     End If
  loc_FDA320:   Else
  loc_FDA341:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_E8, var_108)
  loc_FDA351:   End If
  loc_FDA355:   Set var_88 = Me.FGrid
  loc_FDA366: End If
  loc_FDA366: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_E 'E43B1C
  'Data Table: 512D28
  loc_E43AF2: If (Button = 2) Then
  loc_E43B0D:   Call 0.Method_arg_2BC (Me.popup, var_98, var_A8)
  loc_E43B15:   Call FGrid_UnknownEvent_9()
  loc_E43B1A: End If
  loc_E43B1A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_10 'DFC070
  'Data Table: 512D28
  loc_DFC06C: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1571450
  'Data Table: 512D28
  Dim var_8C As Variant
  Dim var_98 As Variant
  Dim var_9A As Integer
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_CC As Variant
  Dim var_108 As Variant
  Dim var_DC As Variant
  Dim var_88 As Frame
  Dim var_124 As Double
  loc_157036E: Set var_88 = Me.Txt
  loc_1570374: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1570382: Proc_6_74_E23240(var_8C)
  loc_157039D: Set var_88 = Me.Txt
  loc_15703A3: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15703AB: var_8C.SelStart = 0
  loc_15703C4: Set var_88 = Me.Txt
  loc_15703CA: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15703E5: Set var_90 = Me.Txt
  loc_15703EB: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_15703F3: var_98.SelLength = Len(var_8C.Text)
  loc_1570406: Call Proc_138_72_F96BEC(var_8C)
  loc_157040E: var_9A = Index
  loc_1570419: If (var_9A = CInt(&H17)) Then
  loc_1570429:   Set var_88 = Me.Txt
  loc_157042F:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1570465:   var_98 = Me.Fields.Item("PayType")
  loc_1570475:   var_CC = "Cash"
  loc_157049A:   If CBool((var_8C.Text = vbNullString) And (var_98.Value = var_CC)) Then
  loc_15704AA:     Set var_88 = Me.Txt
  loc_15704B0:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15704B8:     var_8C.Text = "CASH PAYMENT RECD"
  loc_15704D3:     Set var_88 = Me.Txt
  loc_15704D9:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15704E1:     var_8C.SelStart = 0
  loc_15704FA:     Set var_88 = Me.Txt
  loc_1570500:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1570508:     var_94 = var_8C.Text
  loc_157051B:     Set var_90 = Me.Txt
  loc_1570521:     Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_1570529:     var_98.SelLength = Len(var_94)
  loc_157053C:   End If
  loc_157053F: Else
  loc_1570547:   If (var_9A = CInt(&HF)) Then
  loc_157056A:     Set var_98 = Me.Txt
  loc_1570570:     Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_108)
  loc_157058B:     Set var_88 = Me.Txt
  loc_1570591:     Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_8C)
  loc_15705A9:     var_AC = CVar(((var_8C.Top + Me.FrRest.Top) + var_108.Height)) 'Single
  loc_15705B8:     Me.DGPayType.Top = "PayType"
  loc_15705EC:     Set var_88 = Me.Txt
  loc_15705F2:     Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_8C)
  loc_1570606:     var_AC = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_1570615:     Me.DGPayType.Left = "PayType"
  loc_157063C:     If (Me.RecordCount > 0) Then
  loc_157064A:       Set var_8C = Me.FGPoint
  loc_1570662:       Proc_6_137_1192FDC(Me.DGPayType, global_64, Index)
  loc_1570670:     End If
  loc_15706BE:     Set var_88 = Me.Txt
  loc_15706C4:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15706CC:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15706E4:     If (var_8C Or (var_94 = vbNullString)) Then
  loc_15706E7:       Exit Sub
  loc_15706E8:     End If
  loc_15706F5:     Set var_88 = Me.Txt
  loc_15706FB:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1570703:     var_94 = var_8C.Text
  loc_1570715:     var_AC = "Name"
  loc_1570750:     If CBool(CVar(var_94) <> Me.Fields.Item(var_AC).Value) Then
  loc_1570759:       Me.MoveFirst
  loc_157077C:       Set var_88 = Me.Txt
  loc_1570782:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_157078A:       0 = var_8C.Text
  loc_15707A3:       Me.Find 1 & var_94 & "'", var_AC, var_9A
  loc_15707B8:     End If
  loc_15707BB:   Else
  loc_15707C3:     If (var_9A = CInt(&H18)) Then
  loc_15707E6:       Set var_98 = Me.Txt
  loc_15707EC:       Call 0.Method_Txt_GotFocus0 (CInt(&H18), var_108)
  loc_1570807:       Set var_88 = Me.Txt
  loc_157080D:       Call 0.Method_Txt_GotFocus0 (CInt(&H18), var_8C)
  loc_1570825:       var_AC = CVar(((var_8C.Top + Me.FrRest.Top) + var_108.Height)) 'Single
  loc_1570834:       Me.DGEmp.Top = var_AC
  loc_1570868:       Set var_88 = Me.Txt
  loc_157086E:       Call 0.Method_Txt_GotFocus0 (CInt(&H18), var_8C)
  loc_1570882:       var_AC = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_1570891:       Me.DGEmp.Left = var_AC
  loc_15708B8:       If (Me.RecordCount > 0) Then
  loc_15708C6:         Set var_8C = Me.FGPoint
  loc_15708DE:         Proc_6_137_1192FDC(Me.DGEmp, global_68)
  loc_15708EC:       End If
  loc_157093A:       Set var_88 = Me.Txt
  loc_1570940:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_1570948:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1570960:       If (Index Or (var_94 = vbNullString)) Then
  loc_1570963:         Exit Sub
  loc_1570964:       End If
  loc_1570971:       Set var_88 = Me.Txt
  loc_1570977:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_157097F:       var_94 = var_8C.Text
  loc_1570991:       var_AC = "Name"
  loc_15709CC:       If CBool(CVar(var_94) <> Me.Fields.Item(var_AC).Value) Then
  loc_15709D5:         Me.MoveFirst
  loc_15709F8:         Set var_88 = Me.Txt
  loc_15709FE:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_1570A06:         0 = var_8C.Text
  loc_1570A1F:         Me.Find 1 & var_94 & "'", var_AC, var_8C
  loc_1570A34:       End If
  loc_1570A37:     Else
  loc_1570A3F:       If (var_9A = CInt(&H10)) Then
  loc_1570A62:         Set var_98 = Me.Txt
  loc_1570A68:         Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_108)
  loc_1570A83:         Set var_88 = Me.Txt
  loc_1570A89:         Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_1570AA1:         var_AC = CVar(((var_8C.Top + Me.FrRest.Top) + var_108.Height)) 'Single
  loc_1570AB0:         Me.DGTable.Top = var_AC
  loc_1570AE4:         Set var_88 = Me.Txt
  loc_1570AEA:         Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_1570AFE:         var_AC = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_1570B0D:         Me.DGTable.Left = var_AC
  loc_1570B34:         If (Me.RecordCount > 0) Then
  loc_1570B42:           Set var_8C = Me.FGPoint
  loc_1570B5A:           Proc_6_137_1192FDC(Me.DGTable, global_72)
  loc_1570B68:         End If
  loc_1570BB6:         Set var_88 = Me.Txt
  loc_1570BBC:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_1570BC4:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1570BDC:         If (Index Or (var_94 = vbNullString)) Then
  loc_1570BDF:           Exit Sub
  loc_1570BE0:         End If
  loc_1570BED:         Set var_88 = Me.Txt
  loc_1570BF3:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1570BFB:         var_94 = var_8C.Text
  loc_1570C03:         var_DC = CVar(var_94) 'String
  loc_1570C48:         If CBool(var_DC <> Me.Fields.Item("Name").Value) Then
  loc_1570C51:           Me.MoveFirst
  loc_1570C76:           Set var_88 = Me.Txt
  loc_1570C7C:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_1570C84:           0 = var_8C.Text
  loc_1570C92:           Proc_6_17_EAAE40(var_DC, CVar(var_94), 1)
  loc_1570CA8:           Me.Find CStr(var_CC & var_DC), var_8C, 
  loc_1570CC0:         End If
  loc_1570CC3:       Else
  loc_1570CCB:         If (var_9A = CInt(&H1E)) Then
  loc_1570CEE:           Set var_98 = Me.Txt
  loc_1570CF4:           Call 0.Method_Txt_GotFocus0 (CInt(&H1E), var_108)
  loc_1570D0F:           Set var_88 = Me.Txt
  loc_1570D15:           Call 0.Method_Txt_GotFocus0 (CInt(&H1E), var_8C)
  loc_1570D2D:           var_AC = CVar(((var_8C.Top + Me.FrSendRoom.Top) + var_108.Height)) 'Single
  loc_1570D3C:           Me.DGRoom.Top = "Name ="
  loc_1570D70:           Set var_88 = Me.Txt
  loc_1570D76:           Call 0.Method_Txt_GotFocus0 (CInt(&H1E), var_8C)
  loc_1570D8A:           var_AC = CVar((var_8C.Left + Me.FrSendRoom.Left)) 'Single
  loc_1570D99:           Me.DGRoom.Left = "Name ="
  loc_1570DC0:           If (Me.RecordCount > 0) Then
  loc_1570DCE:             Set var_8C = Me.FGPoint
  loc_1570DE6:             Proc_6_137_1192FDC(Me.DGRoom, global_76)
  loc_1570DF4:           End If
  loc_1570E42:           Set var_88 = Me.Txt
  loc_1570E48:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_1570E50:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1570E68:           If (Index Or (var_94 = vbNullString)) Then
  loc_1570E6B:             Exit Sub
  loc_1570E6C:           End If
  loc_1570E79:           Set var_88 = Me.Txt
  loc_1570E7F:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1570E87:           var_94 = var_8C.Text
  loc_1570E8F:           var_DC = CVar(var_94) 'String
  loc_1570EA8:           var_90 = Me.Fields
  loc_1570ED4:           If CBool(var_DC <> var_90.Item("Name").Value) Then
  loc_1570EDD:             Me.MoveFirst
  loc_1570F02:             Set var_88 = Me.Txt
  loc_1570F08:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_1570F10:             0 = var_8C.Text
  loc_1570F1E:             Proc_6_17_EAAE40(var_DC, CVar(var_94), 1)
  loc_1570F34:             Me.Find CStr(var_CC & var_DC), var_8C, 
  loc_1570F4C:           End If
  loc_1570F4F:         Else
  loc_1570F57:           If (var_9A = CInt(&H1F)) Then
  loc_1570F68:             Set var_8C = Me.Txt
  loc_1570F6E:             Call 0.Method_Txt_GotFocus0 (CInt(&H1F), var_90)
  loc_1570F94:             var_AC = CVar((Me.FrComp.Top + var_90.Height)) 'Single
  loc_1570FA3:             Me.DGCompany.Top = "Name ="
  loc_1570FE5:             Set var_88 = Me.Txt
  loc_1570FEB:             Call 0.Method_Txt_GotFocus0 (CInt(&H1F), var_8C)
  loc_1571003:             var_AC = CVar(((var_8C.Left + Me.FrRest.Left) + Me.FrComp.Left)) 'Single
  loc_1571012:             Me.DGCompany.Left = "Name ="
  loc_157103B:             If (Me.RecordCount > 0) Then
  loc_1571049:               Set var_8C = Me.FGPoint
  loc_1571061:               Proc_6_137_1192FDC(Me.DGCompany, global_80)
  loc_157106F:             End If
  loc_15710BD:             Set var_88 = Me.Txt
  loc_15710C3:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15710CB:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15710E3:             If (Index Or (var_94 = vbNullString)) Then
  loc_15710E6:               Exit Sub
  loc_15710E7:             End If
  loc_15710F4:             Set var_88 = Me.Txt
  loc_15710FA:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1571102:             var_94 = var_8C.Text
  loc_157110A:             var_DC = CVar(var_94) 'String
  loc_157112B:             var_98 = Me.Fields.Item("Name")
  loc_157114F:             If CBool(var_DC <> var_98.Value) Then
  loc_1571158:               Me.MoveFirst
  loc_157117D:               Set var_88 = Me.Txt
  loc_1571183:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_157118B:               0 = var_8C.Text
  loc_1571199:               Proc_6_17_EAAE40(var_DC, CVar(var_94), 1)
  loc_15711AF:               Me.Find CStr(var_CC & var_DC), var_8C, 
  loc_15711C7:             End If
  loc_15711CA:           Else
  loc_15711D2:             If (var_9A = CInt(&H11)) Then
  loc_15711D9:               Set var_88 = Me.TopCtrl1
  loc_15711DF:               Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_15711F4:               If ( = "Add") Then
  loc_1571205:                 Set var_88 = Me.LTxt
  loc_157120B:                 Call 0.Method_Txt_GotFocus0 (CInt(&H1C), var_8C)
  loc_1571220:                 var_124 = Val(var_8C.Caption)
  loc_1571258:                 Set var_90 = Me.Txt
  loc_157125E:                 Call 0.Method_Txt_GotFocus0 (Index, var_98, CStr(Format(CVar(var_124), "0.00")))
  loc_1571266:                 var_98.Text = 1
  loc_1571286:               End If
  loc_157128A:               Set var_88 = Me.TopCtrl1
  loc_1571290:               Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E(1)
  loc_15712BE:               If CBool((var_124 = "Edit") And (global_164 = 0)) Then
  loc_15712CF:                 Set var_88 = Me.LTxt
  loc_15712D5:                 Call 0.Method_Txt_GotFocus0 (CInt(&H1C), var_8C)
  loc_1571322:                 Set var_90 = Me.Txt
  loc_1571328:                 Call 0.Method_Txt_GotFocus0 (Index, var_98, CStr(Format(CVar(Val(var_8C.Caption)), "0.00")))
  loc_1571330:                 var_98.Text = 1
  loc_1571350:               End If
  loc_157135F:               Set var_88 = Me.Txt
  loc_1571365:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, 0)
  loc_157136D:               var_8C.SelStart = 1
  loc_1571386:               Set var_88 = Me.Txt
  loc_157138C:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15713A7:               Set var_90 = Me.Txt
  loc_15713AD:               Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_15713B5:               var_98.SelLength = Len(var_8C.Text)
  loc_15713CB:             Else
  loc_15713D3:               If (var_9A = CInt(&H19)) Then
  loc_15713E5:                 Set var_88 = Me.Txt
  loc_15713EB:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15713F3:                 var_8C.SelStart = 0
  loc_157140C:                 Set var_88 = Me.Txt
  loc_1571412:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_157142D:                 Set var_90 = Me.Txt
  loc_1571433:                 Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_157143B:                 var_98.SelLength = Len(var_8C.Text)
  loc_157144E:               End If
  loc_157144E:             End If
  loc_157144E:           End If
  loc_157144E:         End If
  loc_157144E:       End If
  loc_157144E:     End If
  loc_157144E:   End If
  loc_157144E: End If
  loc_157144E: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1369D3C
  'Data Table: 512D28
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
  loc_13694EB: var_88 = Shift
  loc_13694F8: If (CLng(Shift) = &H1B) Then
  loc_13694FB:   Call Proc_138_72_F96BEC(var_88)
  loc_1369500:   Exit Sub
  loc_1369501: End If
  loc_1369504: var_8A = KeyCode
  loc_136950F: If (var_8A = CInt(&HF)) Then
  loc_136952F:   Set var_A4 = Me.FGPoint
  loc_136953A:   Set var_A0 = Nothing
  loc_136956C:   Proc_6_69_134A630(Me.DGPayType, Me.Txt, CInt(&HF), global_64, Shift, 0)
  loc_13695DB:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_1369601:     Proc_6_138_106E830(Me.DGPayType, global_64, KeyCode, Me.FGPoint, 1)
  loc_136960F:   End If
  loc_1369612: Else
  loc_136961A:   If (var_8A = CInt(&H18)) Then
  loc_1369645:     Set var_A0 = Nothing
  loc_1369677:     Proc_6_69_134A630(Me.DGEmp, Me.Txt, CInt(&H18), global_68, Shift, 0, 1)
  loc_13696E6:     If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13696ED:       Set var_A0 = Me.DGEmp
  loc_136970C:       Proc_6_138_106E830(var_A0, global_68, KeyCode, Me.FGPoint, var_A0, Me.FGPoint)
  loc_136971A:     End If
  loc_136971D:   Else
  loc_1369725:     If (var_8A = CInt(&H10)) Then
  loc_1369782:       Proc_6_69_134A630(Me.DGTable, Me.Txt, CInt(&H10), global_72, Shift, 0, 1, Nothing)
  loc_13697F1:       If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_1369817:         Proc_6_138_106E830(Me.DGTable, global_72, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1369825:       End If
  loc_1369828:     Else
  loc_1369830:       If (var_8A = CInt(&H1E)) Then
  loc_136988D:         Proc_6_69_134A630(Me.DGRoom, Me.Txt, CInt(&H1E), global_76, Shift, 0, 1, Nothing)
  loc_13698FC:         If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_1369922:           Proc_6_138_106E830(Me.DGRoom, global_76, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1369930:         End If
  loc_1369933:       Else
  loc_136993B:         If (var_8A = CInt(&H1F)) Then
  loc_136995B:           Set var_A4 = Me.FGPoint
  loc_1369998:           Proc_6_69_134A630(Me.DGCompany, Me.Txt, CInt(&H1F), global_80, Shift, 0, 1, Nothing)
  loc_1369A07:           If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_1369A0E:             Set var_A0 = Me.DGCompany
  loc_1369A15:             Set var_94 = Me.FGPoint
  loc_1369A2D:             Proc_6_138_106E830(var_A0, global_80, KeyCode, var_94, var_A4, 0)
  loc_1369A3B:           End If
  loc_1369A3E:         Else
  loc_1369A46:           If (var_8A = CInt(&H17)) Then
  loc_1369A53:             If (CLng(Shift) = &H2D) Then
  loc_1369A59:               Call Proc_138_82_EE4348(var_BC, 0, var_A0)
  loc_1369A6B:               Set var_90 = Me.Txt
  loc_1369A71:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_BC)
  loc_1369A95:               Set var_90 = Me.Txt
  loc_1369A9B:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_BC)
  loc_1369AA3:               0 = var_A4
  loc_1369AB6:               Set var_A0 = Me.Txt
  loc_1369ABC:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4)
  loc_1369AC4:               var_A4.SelStart = Len(var_BC)
  loc_1369AD7:               Exit Sub
  loc_1369AD8:             End If
  loc_1369AD8:           End If
  loc_1369AD8:         End If
  loc_1369AD8:       End If
  loc_1369AD8:     End If
  loc_1369AD8:   End If
  loc_1369AD8: End If
  loc_1369B0F: var_EC = Me.DGPayType.Visible
  loc_1369B26: var_FC = Me.DGEmp.Visible
  loc_1369B64: If (((((CBool(Me.DGTable.Visible) = 0) And (CBool(Me.DGRoom.Visible) = 0)) And (CBool(var_EC) = 0)) And (CBool(var_FC) = 0)) And (CBool(Me.DGCompany.Visible) = 0)) Then
  loc_1369B87:   If (((CLng(Shift) = &H26) And (global_108 = 5)) And (KeyCode = CInt(&HF))) Then
  loc_1369B8A:     Exit Sub
  loc_1369B8B:   End If
  loc_1369BA9:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(3))) Then
  loc_1369BB6:     If (CLng(Shift) = &H28) Then
  loc_1369BB9:       Exit Sub
  loc_1369BBA:     End If
  loc_1369BF1:     If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_1369BF4:       Call Proc_138_78_14AE6F4(var_8A)
  loc_1369BFB:       Shift = 0
  loc_1369BFE:     End If
  loc_1369BFE:     Exit Sub
  loc_1369C02:   Else
  loc_1369C20:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H17))) Then
  loc_1369C2D:       If (CLng(Shift) = &H28) Then
  loc_1369C30:         Exit Sub
  loc_1369C31:       End If
  loc_1369C68:       If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_1369C6B:         Call Proc_138_78_14AE6F4(Shift)
  loc_1369C72:         Shift = 0
  loc_1369C75:       End If
  loc_1369C75:       Exit Sub
  loc_1369C79:     Else
  loc_1369C97:       If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H1E))) Then
  loc_1369CA4:         If (CLng(Shift) = &H28) Then
  loc_1369CA7:           Exit Sub
  loc_1369CA8:         End If
  loc_1369CB4:         Call Txt_Validate(CInt(&H1E))
  loc_1369CF0:         If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_1369CF3:           Call Proc_138_78_14AE6F4(0)
  loc_1369CFA:           Shift = 0
  loc_1369CFD:         End If
  loc_1369CFD:         Exit Sub
  loc_1369CFE:       End If
  loc_1369CFE:     End If
  loc_1369CFE:   End If
  loc_1369D13:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1369D1C:     Proc_6_75_E5335C(Shift, arg_14)
  loc_1369D21:   End If
  loc_1369D2B:   If (CLng(Shift) = &H26) Then
  loc_1369D34:     Proc_6_76_E533C8(Shift, arg_14)
  loc_1369D39:   End If
  loc_1369D39: End If
  loc_1369D39: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EA04E0
  'Data Table: 512D28
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_EA0466: If (arg_10 = &HD) Then
  loc_EA046B:   arg_10 = 0
  loc_EA046E: End If
  loc_EA0471: Proc_6_58_E06050(arg_10)
  loc_EA047C: Proc_6_133_E7FB08(var_94, arg_10)
  loc_EA0485: arg_10 = CInt(var_94)
  loc_EA048E: var_96 = KeyAscii
  loc_EA0499: If Not (var_96 = CInt(&H11)) Then
  loc_EA04A4:   If (var_96 = CInt(&H19)) Then
  loc_EA04A7:   End If
  loc_EA04B1:   Set var_9C = Me.Txt
  loc_EA04B7:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_EA04D2:   Proc_6_42_129B55C(var_A0, arg_10, 8)
  loc_EA04DE: End If
  loc_EA04DE: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1106CA8
  'Data Table: 512D28
  Dim var_86 As Integer
  loc_1106967: var_86 = KeyCode
  loc_1106972: If (var_86 = CInt(&HF)) Then
  loc_1106991:   If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_11069A5:     var_A4 = "Name"
  loc_11069C9:     Proc_6_68_12A2818(Me.DGPayType, Me.Txt, KeyCode, global_64)
  loc_11069FF:     Proc_6_138_106E830(Me.DGPayType, global_64, KeyCode, Me.FGPoint)
  loc_1106A0D:   End If
  loc_1106A10: Else
  loc_1106A18:   If (var_86 = CInt(&H18)) Then
  loc_1106A37:     If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_1106A4B:       var_A4 = "Name"
  loc_1106A6F:       Proc_6_68_12A2818(Me.DGEmp, Me.Txt, KeyCode, global_68, Shift)
  loc_1106AA5:       Proc_6_138_106E830(Me.DGEmp, global_68, KeyCode, Me.FGPoint)
  loc_1106AB3:     End If
  loc_1106AB6:   Else
  loc_1106ABE:     If (var_86 = CInt(&H10)) Then
  loc_1106ADD:       If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_1106B15:         Proc_6_68_12A2818(Me.DGTable, Me.Txt, KeyCode, global_72, Shift)
  loc_1106B4B:         Proc_6_138_106E830(Me.DGTable, global_72, KeyCode, Me.FGPoint, "Name")
  loc_1106B59:       End If
  loc_1106B5C:     Else
  loc_1106B64:       If (var_86 = CInt(&H1E)) Then
  loc_1106B83:         If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_1106BBB:           Proc_6_68_12A2818(Me.DGRoom, Me.Txt, KeyCode, global_76, Shift)
  loc_1106BF1:           Proc_6_138_106E830(Me.DGRoom, global_76, KeyCode, Me.FGPoint, "Name")
  loc_1106BFF:         End If
  loc_1106C02:       Else
  loc_1106C0A:         If (var_86 = CInt(&H1F)) Then
  loc_1106C29:           If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_1106C61:             Proc_6_68_12A2818(Me.DGCompany, Me.Txt, KeyCode, global_80, Shift)
  loc_1106C97:             Proc_6_138_106E830(Me.DGCompany, global_80, KeyCode, Me.FGPoint, "Name")
  loc_1106CA5:           End If
  loc_1106CA5:         End If
  loc_1106CA5:       End If
  loc_1106CA5:     End If
  loc_1106CA5:   End If
  loc_1106CA5: End If
  loc_1106CA5: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E50C74
  'Data Table: 512D28
  loc_E50C52: Set var_88 = Me.Txt
  loc_E50C58: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E50C66: Proc_6_73_E23294(var_8C)
  loc_E50C72: Exit Sub
End Sub

Private Sub Txt_Click() 'DFE228
  'Data Table: 512D28
  loc_DFE224: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '142D444
  'Data Table: 512D28
  Dim var_8A As Integer
  Dim var_94 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_98 As String
  Dim var_B8 As Variant
  Dim var_D4 As TextBox
  Dim var_E4 As Variant
  loc_142C97B: var_8A = Cancel
  loc_142C986: If (var_8A = CInt(1)) Then
  loc_142C997:   Set var_90 = Me.Txt
  loc_142C99D:   Call 0.Method_Txt_Validate0 (CInt(1), var_94)
  loc_142C9A5:   var_98 = var_94.Text
  loc_142C9BC:   If (var_98 <> vbNullString) Then
  loc_142C9C5:     Call Proc_138_74_1156C94(MemVar_1F95044, var_98)
  loc_142C9D0:   Else
  loc_142C9D2:     arg_10 = &HFF
  loc_142C9D5:     Exit Sub
  loc_142C9D6:   End If
  loc_142C9D9: Else
  loc_142C9E1:   If (var_8A = CInt(&H10)) Then
  loc_142C9EE:     Set var_90 = Me.Txt
  loc_142C9F4:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142C9FC:     var_98 = "Table"
  loc_142CA1D:     If (Proc_6_27_EA61EC(var_94, var_98) = 0) Then
  loc_142CA2A:       Set var_90 = Me.Txt
  loc_142CA30:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142CA38:       var_94.SetFocus
  loc_142CA46:       arg_10 = &HFF
  loc_142CA49:       Exit Sub
  loc_142CA4A:     End If
  loc_142CA98:     Set var_90 = Me.Txt
  loc_142CA9E:     Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_142CABE:     If (var_94.Text Or (var_98 = vbNullString)) Then
  loc_142CACE:       Set var_90 = Me.Txt
  loc_142CAD4:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142CADC:       var_94.Text = vbNullString
  loc_142CAF5:       Set var_90 = Me.Txt
  loc_142CAFB:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142CB03:       var_94.Tag = vbNullString
  loc_142CB1A:       If (global_148 = "RO") Then
  loc_142CB23:         global_144 = vbNullString
  loc_142CB27:       End If
  loc_142CB2A:     Else
  loc_142CB65:       Set var_9C = Me.Txt
  loc_142CB6B:       Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_142CB73:       var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_142CBC4:       Set var_9C = Me.Txt
  loc_142CBCA:       Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_142CBD2:       var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_142CBF3:       If (global_148 = "RO") Then
  loc_142CC13:         var_94 = Me.Fields.Item("RoomCat")
  loc_142CC24:         var_98 = CStr(var_94.Value)
  loc_142CC2A:         global_144 = var_98
  loc_142CC3B:       End If
  loc_142CC3B:     End If
  loc_142CC3E:   Else
  loc_142CC46:     If (var_8A = CInt(&H1E)) Then
  loc_142CC97:       Set var_90 = Me.Txt
  loc_142CC9D:       Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98)
  loc_142CCA5:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_142CCBD:       If (var_8A Or (var_98 = vbNullString)) Then
  loc_142CCCD:         Set var_90 = Me.Txt
  loc_142CCD3:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142CCDB:         var_94.Text = vbNullString
  loc_142CCF4:         Set var_90 = Me.Txt
  loc_142CCFA:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142CD02:         var_94.Tag = vbNullString
  loc_142CD11:       Else
  loc_142CD4C:         Set var_9C = Me.Txt
  loc_142CD52:         Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_142CD5A:         var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_142CD8D:         var_94 = Me.Fields.Item("Code")
  loc_142CDAB:         Set var_9C = Me.Txt
  loc_142CDB1:         Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_142CDB9:         var_B8.Tag = CStr(var_94.Value)
  loc_142CDCF:       End If
  loc_142CDD2:     Else
  loc_142CDDA:       If (var_8A = CInt(2)) Then
  loc_142CDEB:         Set var_90 = Me.Txt
  loc_142CDF1:         Call 0.Method_Txt_Validate0 (CInt(2), var_94)
  loc_142CE18:         Set var_9C = Me.Txt
  loc_142CE1E:         Call 0.Method_Txt_Validate0 (CInt(2), var_B8)
  loc_142CE26:         var_B8.Text = Proc_6_34_14EEAAC(var_94.Text)
  loc_142CE43:         Call Proc_138_74_1156C94(MemVar_1F95044)
  loc_142CE59:         Set var_90 = Me.Txt
  loc_142CE5F:         Call 0.Method_Txt_Validate0 (CInt(0), var_94)
  loc_142CE7E:         If (var_94.Text = vbNullString) Then
  loc_142CE83:           arg_10 = &HFF
  loc_142CE86:         End If
  loc_142CE89:       Else
  loc_142CE91:         If Not (var_8A = CInt(&H16)) Then
  loc_142CE9C:           If (var_8A = CInt(&H14)) Then
  loc_142CE9F:           End If
  loc_142CEA9:           Set var_90 = Me.Txt
  loc_142CEAF:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142CECF:           Set var_B8 = Me.Txt
  loc_142CED5:           Call 0.Method_Txt_Validate0 (Cancel, var_D4)
  loc_142CEDD:           var_D4.Text = Proc_6_33_15125B8(var_94, arg_10)
  loc_142CEF3:         Else
  loc_142CEFB:           If (var_8A = CInt(&HF)) Then
  loc_142CF0B:             Set var_90 = Me.Txt
  loc_142CF11:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142CF30:             If (var_94.Text <> vbNullString) Then
  loc_142CF6E:               Set var_9C = Me.Txt
  loc_142CF74:               Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_142CF7C:               var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_142CFCD:               Set var_9C = Me.Txt
  loc_142CFD3:               Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_142CFDB:               var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_142D01C:               var_98 = Proc_6_38_E69628(CVar(Me.Fields.Item("PayType")))
  loc_142D022:               global_152 = var_98
  loc_142D03B:               Me.FrEmp.Visible = False
  loc_142D04F:               Me.FrChqDet.Visible = False
  loc_142D063:               Me.FrCCDet.Visible = False
  loc_142D085:               var_94 = Me.Fields.Item("PayType")
  loc_142D09A:               Call Proc_138_77_10DFFF0(Proc_6_38_E69628(CVar(var_94)))
  loc_142D0AB:             Else
  loc_142D0B8:               Set var_90 = Me.Txt
  loc_142D0BE:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142D0C6:               var_94.Text = vbNullString
  loc_142D0DF:               Set var_90 = Me.Txt
  loc_142D0E5:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142D0ED:               var_94.Tag = vbNullString
  loc_142D0F9:             End If
  loc_142D0FC:           Else
  loc_142D104:             If Not (var_8A = CInt(&H11)) Then
  loc_142D10F:               If (var_8A = CInt(&H19)) Then
  loc_142D112:               End If
  loc_142D11C:               Set var_90 = Me.Txt
  loc_142D122:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142D12E:               Proc_6_40_EA5C80(CVar(var_94))
  loc_142D145:               var_104 = "0.00"
  loc_142D14E:               var_E4 = CVar(var_98) 'Double
  loc_142D155:               var_114 = Format(var_E4, var_104)
  loc_142D15D:               var_98 = CStr(var_114)
  loc_142D16B:               Set var_9C = Me.Txt
  loc_142D171:               Call 0.Method_Txt_Validate0 (Cancel, var_B8, var_98)
  loc_142D179:               var_B8.Text = 1
  loc_142D1A3:               Set var_9C = Me.LTxt
  loc_142D1A9:               Call 0.Method_Txt_Validate0 (CInt(&H1C), var_B8, var_CC)
  loc_142D1B1:               1 = var_B8.Caption
  loc_142D1D7:               Set var_90 = Me.Txt
  loc_142D1DD:               Call 0.Method_Txt_Validate0 (CInt(&H11), var_94, var_98)
  loc_142D1E5:               (Cancel = CInt(&H11)) = var_94.Text
  loc_142D215:               If ((Val(var_CC) And (CDbl(Val(var_98)) > CDbl(Val(var_CC)))) And (global_164 = 0)) Then
  loc_142D231:                 MsgBox("Amount You have entered is greater than Actual amount", &H40, var_E4, var_104, var_114)
  loc_142D243:                 arg_10 = &HFF
  loc_142D246:                 Exit Sub
  loc_142D247:               End If
  loc_142D24A:             Else
  loc_142D252:               If (var_8A = CInt(&H1F)) Then
  loc_142D2A3:                 Set var_90 = Me.Txt
  loc_142D2A9:                 Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98)
  loc_142D2B1:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_142D2C9:                 If (arg_10 Or (var_98 = vbNullString)) Then
  loc_142D2D9:                   Set var_90 = Me.Txt
  loc_142D2DF:                   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142D2E7:                   var_94.Text = vbNullString
  loc_142D300:                   Set var_90 = Me.Txt
  loc_142D306:                   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142D30E:                   var_94.Tag = vbNullString
  loc_142D31D:                 Else
  loc_142D358:                   Set var_9C = Me.Txt
  loc_142D35E:                   Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_142D366:                   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_142D399:                   var_94 = Me.Fields.Item("Code")
  loc_142D3B7:                   Set var_9C = Me.Txt
  loc_142D3BD:                   Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_142D3C5:                   var_B8.Tag = CStr(var_94.Value)
  loc_142D3E6:                   Set var_90 = Me.Txt
  loc_142D3EC:                   Call 0.Method_Txt_Validate0 (CInt(&H17), var_94)
  loc_142D415:                   If (Trim(CVar(var_94)) = vbNullString) Then
  loc_142D426:                     Set var_90 = Me.Txt
  loc_142D42C:                     Call 0.Method_Txt_Validate0 (CInt(&H17), var_94)
  loc_142D434:                     var_94.Text = "AGAINST V.NO "
  loc_142D440:                   End If
  loc_142D440:                 End If
  loc_142D440:               End If
  loc_142D440:             End If
  loc_142D440:           End If
  loc_142D440:         End If
  loc_142D440:       End If
  loc_142D440:     End If
  loc_142D440:   End If
  loc_142D440: End If
  loc_142D440: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'F3405C
  'Data Table: 512D28
  Dim var_88 As String
  Dim var_D4 As TextBox
  Dim var_D8 As Long
  loc_F33F44: On Error Goto loc_F34054
  loc_F33F6A: Call Proc_138_68_FC7444(Proc_5_1_100EC1C("ADD", Me))
  loc_F33F75: Call Proc_138_69_FE5BF8(global_60)
  loc_F33FA2: var_88 = CStr(Format(MemVar_1F950EC, "dd/MMM/yyyy"))
  loc_F33FB1: Set var_8C = Me.Txt
  loc_F33FB7: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(2), var_D4, var_88)
  loc_F33FBF: var_D4.Text = 1
  loc_F33FDB: var_D8 = global_108
  loc_F33FE7: If (var_D8 = 6) Then
  loc_F33FF7:   Set var_8C = Me.Txt
  loc_F33FFD:   Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(&HF), var_D4, &HFF)
  loc_F34005:   var_D4.Enabled = var_D8
  loc_F3401D:   If (global_104 = 2) Then
  loc_F34026:     Call Proc_138_74_1156C94(MemVar_1F95044, var_88)
  loc_F34039:     Set var_8C = Me.Txt
  loc_F3403F:     Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(1), var_D4)
  loc_F34047:     var_D4.SetFocus
  loc_F34053:   End If
  loc_F34053: End If
  loc_F34053: Exit Sub
  loc_F34054: ' Referenced from: F33F44
  loc_F34054: Proc_6_60_E63754(1)
  loc_F34059: Exit Sub
  loc_F3405A: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E5423C
  'Data Table: 512D28
  loc_E54204: On Error Goto loc_E54236
  loc_E5422A: Call Proc_138_68_FC7444(Proc_5_1_100EC1C("EDIT", Me))
  loc_E54235: Exit Sub
  loc_E54236: ' Referenced from: E54204
  loc_E54236: Proc_6_60_E63754(global_60)
  loc_E5423B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '10B35A0
  'Data Table: 512D28
  Dim unk_512D65 As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_10B32F8: On Error Goto loc_10B3550
  loc_10B3332: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F4, var_114) = 6) Then
  loc_10B333E:   unk_512D65.BeginTrans var_118
  loc_10B3354:   var_94 = Me.Bookmark 'Variant
  loc_10B33A0:   var_F4 = "Delete From PAYCHARGEH Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_10B33AE:   unk_512D65.Execute CStr(var_F4), var_114, -1
  loc_10B33F9:   var_160 = 0
  loc_10B340C:   var_158 = 0
  loc_10B3417:   var_154 = 0
  loc_10B342A:   var_14C = 0
  loc_10B3435:   var_148 = 0
  loc_10B3448:   var_140 = 0
  loc_10B3488:   var_124 = "PayChargeH"
  loc_10B3491:   Proc_154_5_10E3BD4(MemVar_1F95044, var_124, "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_10B34BF:   unk_512D65.CommitTrans
  loc_10B34CF:   Me.Requery -1
  loc_10B34EF:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10B34FC:     Me.Bookmark = var_94
  loc_10B3504:   Else
  loc_10B3518:     If (Me.EOF = 0) Then
  loc_10B3521:       Me.MoveLast
  loc_10B3526:     End If
  loc_10B3526:   End If
  loc_10B3526:   Call Proc_138_71_14F7D74(var_140, 0, var_148, var_14C)
  loc_10B3547:   Proc_5_0_1107AD0(&HFF, Me, global_60, 0)
  loc_10B354F: End If
  loc_10B354F: Exit Sub
  loc_10B3550: ' Referenced from: 10B32F8
  loc_10B3556: unk_512D65.RollbackTrans
  loc_10B3563: Set var_11C = Err()
  loc_10B3569: Call 0.Method_arg_2C (var_124, 0, var_154)
  loc_10B358A: MsgBox(CVar(var_124), &H30, " Deletion Error ", var_F4, var_114)
  loc_10B359D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E19B5C
  'Data Table: 512D28
  loc_E19B51: Me.Global.Unload Me
  loc_E19B59: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E36188
  'Data Table: 512D28
  loc_E36178: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36180: Call Proc_138_71_14F7D74(global_60)
  loc_E36185: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E36068
  'Data Table: 512D28
  loc_E36058: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36060: Call Proc_138_71_14F7D74(global_60)
  loc_E36065: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E35FA8
  'Data Table: 512D28
  loc_E35F98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E35FA0: Call Proc_138_71_14F7D74(global_60)
  loc_E35FA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E35F48
  'Data Table: 512D28
  loc_E35F38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E35F40: Call Proc_138_71_14F7D74(global_60)
  loc_E35F45: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '16337B8
  'Data Table: 512D28
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_124 As String
  Dim var_158 As Long
  Dim var_15C As Variant
  Dim var_164 As Variant
  Dim var_170 As Double
  Dim unk_512D65 As Connection15
  Dim var_168 As String
  Dim var_178 As String
  Dim var_AC As Variant
  Dim var_180 As Long
  Dim unk_512D45 As Connection15
  Dim var_98 As Recordset15
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_10C As String
  Dim var_154 As Variant
  Dim var_1A0 As Variant
  Dim var_1B0 As Variant
  Dim var_1C0 As Variant
  Dim var_1E0 As Variant
  Dim var_28C As Variant
  Dim var_300 As Variant
  Dim var_320 As Long
  Dim var_3D4 As Variant
  Dim var_3F4 As Long
  Dim var_418 As Variant
  Dim var_468 As Variant
  Dim var_488 As Long
  Dim var_4AC As Variant
  Dim var_4F4 As Variant
  Dim var_548 As Variant
  Dim var_568 As Long
  Dim var_5E0 As Variant
  Dim var_600 As Variant
  Dim var_718 As Variant
  Dim var_75C As Variant
  Dim var_7F0 As Variant
  Dim var_884 As Variant
  Dim var_1F8 As String
  Dim var_2C0 As Variant
  Dim var_364 As Variant
  Dim var_3B4 As Variant
  Dim var_518 As Variant
  Dim var_528 As Variant
  Dim var_648 As Variant
  Dim var_688 As Variant
  Dim var_810 As Variant
  Dim var_830 As Variant
  Dim var_894 As Variant
  Dim var_ABC As Variant
  Dim var_CC As Recordset15
  Dim var_310 As Variant
  Dim var_330 As Long
  Dim var_3E4 As Long
  Dim var_4F0 As MSHFlexGrid
  Dim var_558 As Long
  Dim var_1E4 As String
  Dim var_204 As String
  Dim var_C4 As Double
  Dim Me As Recordset15
  loc_1632420: On Error Goto loc_1633765
  loc_1632423: var_DC = 1
  loc_163242C: var_FC = 1
  loc_163244A: var_124 = CStr(Me.FGrid.TextMatrix))
  loc_163245B: If (var_124 = vbNullString) Then
  loc_163247F:   MsgBox("Please Fill Payment Details Before Saving..", &H40, "Save Data", var_144, var_154)
  loc_163248F:   Exit Sub
  loc_1632490: End If
  loc_16324A2: If (global_108 = 6) Then
  loc_16324B3:   Set var_110 = Me.LTxt
  loc_16324B9:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&H1A), var_15C, var_124)
  loc_16324C1:   var_158 = var_15C.Caption
  loc_16324DD:   If (CDbl(Val(var_124)) <> CDbl(0)) Then
  loc_16324EE:     Set var_160 = Me.LTxt
  loc_16324F4:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&H1B), var_164, var_168)
  loc_16324FC:     var_FC = var_164.Caption
  loc_1632509:     var_170 = Val(var_168)
  loc_163251A:     Set var_110 = Me.LTxt
  loc_1632520:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&H1A), var_15C, var_124)
  loc_163254D:     If (CDbl(Val(var_124)) <> CDbl(var_15C.Caption)) Then
  loc_1632556:       var_DC = "Bill Sattlement..."
  loc_163256D:       var_124 = "Bill Amount and Received Amount Not Matched" & vbCrLf
  loc_1632590:       If (MsgBox(CVar(var_124 & "Are you want save?"), &H14, var_DC, var_144, var_154) = 7) Then
  loc_1632593:         Exit Sub
  loc_1632594:       End If
  loc_1632594:     End If
  loc_1632594:   End If
  loc_1632594: End If
  loc_1632598: var_86 = CByte(0) 'Byte
  loc_16325A5: unk_512D65.BeginTrans var_174
  loc_16325AE: var_86 = CByte(1) 'Byte
  loc_16325D0: Set var_110 = Me.Txt
  loc_16325D6: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_15C, var_124, "Delete From PAYCHARGEH Where Docid='")
  loc_16325DE: var_120 = var_15C.Text
  loc_16325E7: var_168 = -1 & var_124
  loc_16325F7: unk_512D65.Execute var_168 & "'", var_160, var_DC
  loc_1632636: For var_17C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_AA = var_17C 'Integer
  loc_1632640:   var_DC = CVar(CLng(var_AA)) 'Long
  loc_1632645:   var_FC = 2
  loc_1632652:   Set var_110 = Me.FGrid
  loc_1632658:   var_120 = var_110.TextMatrix)
  loc_1632674:   If (CStr(var_120) <> vbNullString) Then
  loc_163267D:     var_AC = (var_AC + 1)
  loc_1632692:     If (global_108 = 6) Then
  loc_16326AC:       var_124 = "Select Name,ShortName from depart where code='" & global_52
  loc_16326BC:       unk_512D45.Execute var_124 & "'", var_120, -1
  loc_16326C7:       Set var_98 = var_110
  loc_16326EB:       If (var_98.RecordCount > 0) Then
  loc_1632705:         var_110 = var_98.Fields
  loc_163270D:         var_15C = var_110.Item("ShortName")
  loc_163271D:         var_134 = ("(" + var_15C.Value)
  loc_1632726:         var_144 = ("ShortName" + ") ")
  loc_163272A:         var_10C = "BILL NO.- "
  loc_163272F:         var_154 = (var_144 + var_10C)
  loc_1632741:         Set var_160 = Me.Txt
  loc_1632747:         Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_164, var_124, var_154, var_110)
  loc_163274F:         var_180 = var_164.Text
  loc_163275A:         var_1A0 = (var_AC + CVar(var_124))
  loc_1632763:         var_1C0 = (var_1A0 + " ")
  loc_163276C:         var_1E0 = (var_1C0 + vbNullString)
  loc_1632771:         var_94 = CStr(var_1E0)
  loc_1632795:       Else
  loc_1632799:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_16327A1:         var_FC = CVar(CLng(&HE)) 'Long
  loc_16327CA:         var_94 = CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_16327D9:       End If
  loc_16327DE:       Set var_98 = Nothing
  loc_16327E6:       Set var_9C = Nothing
  loc_16327F7:       Set var_110 = Me.Txt
  loc_16327FD:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_15C, var_1E4, var_FC)
  loc_1632805:       var_DC = var_15C.Text
  loc_163281E:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_164, var_204)
  loc_1632826:       var_FC = var_164.Text
  loc_1632846:       Set var_218 = Me.Txt
  loc_163284C:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_21C)
  loc_163285B:       Proc_6_7_F26918(var_1C0, CVar(var_21C))
  loc_163288C:       var_1B0 = CVar(CLng(var_AA)) 'Long
  loc_1632894:       var_28C = CVar(CLng(&H10)) 'Long
  loc_16328B3:       var_300 = CVar(CLng(var_AA)) 'Long
  loc_16328B8:       var_320 = &H14
  loc_16328DB:       var_3D4 = CVar(CLng(var_AA)) 'Long
  loc_16328E0:       var_3F4 = 1
  loc_16328F3:       var_418 = Me.FGrid.TextMatrix)
  loc_163291B:       var_4AC = Me.FGrid.TextMatrix)
  loc_1632935:       Set var_4F0 = Me.LTxt
  loc_163293B:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&H1A), var_4F4, var_4F8, var_4AC, 2, CVar(CLng(var_AA)), var_418)
  loc_1632943:       var_3F4 = var_4F4.Caption
  loc_1632957:       var_548 = CVar(CLng(var_AA)) 'Long
  loc_163295C:       var_568 = 8
  loc_1632989:       var_5E0 = CVar(CLng(var_AA)) 'Long
  loc_163298E:       var_600 = &H11
  loc_16329BB:       var_718 = CVar(CLng(var_AA)) 'Long
  loc_16329D2:       var_75C = Me.FGrid.TextMatrix)
  loc_16329F9:       var_7F0 = Me.FGrid.TextMatrix)
  loc_1632A20:       var_884 = Me.FGrid.TextMatrix)
  loc_1632A58:       Proc_6_7_F26918(var_938, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HD)), CVar(CLng(var_AA)), var_884, CVar(CLng(&HC)), CVar(CLng(var_AA)), var_7F0)
  loc_1632A89:       Proc_6_7_F26918(var_9DC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_AA)), CVar(CLng(&HA)), CVar(CLng(var_AA)))
  loc_1632A9C:       Proc_6_7_F26918(var_A6C, Date, var_75C, CVar(CLng(9)))
  loc_1632ACE:       Proc_6_39_E7D3A0(var_B50, CVar(CStr(Me.FGrid.TextMatrix))), &H17, CVar(CLng(var_AA)))
  loc_1632AE7:       var_124 = "Insert Into PAYCHARGEH (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, " & "GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_1632AF5:       var_178 = var_124 & "RoomType,RoomNo,FPNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,batchno) Values ("
  loc_1632B16:       var_1F8 = var_178 & "'" & var_1E4 & "'," & CStr(var_AC)
  loc_1632B50:       var_154 = CVar(var_1F8 & ",'" & global_116 & "','" & var_204 & "','" & MemVar_1F95070 & "','") & Trim(CVar(Me.LblVPrefix)) 
  loc_1632B9B:       var_364 = var_154 & "'," & var_1C0 & ",'" & CVar(Format$(Time, "HH:mm")) & "','','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1632BEA:       var_518 = var_364 & "','" & CVar(var_94) & "','" & CVar(CStr(var_418)) & "','" & CVar(CStr(var_4AC)) & "'," & CVar(Val(var_4F8)) 
  loc_1632C28:       var_688 = var_518 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(global_144) 
  loc_1632C78:       var_830 = var_688 & "'," & "'" & CVar(global_148) & "','',0,'" & CVar(CStr(var_75C)) & "','" & CVar(CStr(var_7F0)) & "','" 
  loc_1632C80:       var_894 = CVar(CStr(var_884)) 'String
  loc_1632CDC:       var_ABC = var_830 & var_894 & "'," & var_938 & "," & var_9DC & ",'" & CVar(MemVar_1F950C8) & "'," & var_A6C & ",'A','" & CVar(global_52) 
  loc_1632D03:       unk_512D65.Execute CStr(var_ABC & "'," & var_B50 & ")"), var_BA4, -1
  loc_1632E0B:       var_AC = (var_AC + 1)
  loc_1632E12:       var_DC = CVar(CLng(var_AA)) 'Long
  loc_1632E17:       var_FC = 2
  loc_1632E24:       Set var_110 = Me.FGrid
  loc_1632E2A:       var_120 = var_110.TextMatrix)
  loc_1632E46:       If (CStr(var_120) = "Room") Then
  loc_1632E74:         unk_512D45.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F95078 & "TOUT" & "'", var_120, -1
  loc_1632E7F:         Set var_98 = var_110
  loc_1632EA5:         If (var_98.RecordCount > 0) Then
  loc_1632ED4:           var_15C = var_98.Fields.Item("TaxStru")
  loc_1632EE4:           var_134 = "Select * from taxstru where Code='" & var_15C.Value 
  loc_1632EED:           var_144 = var_134 & "' Order by Sno" 
  loc_1632EFB:           unk_512D45.Execute CStr(var_144), var_154, -1
  loc_1632F06:           Set var_A0 = Me.Txt
  loc_1632F23:         Else
  loc_1632F3C:           MsgBox("System Defined Revenue is not defined", 0, var_134, var_144, var_154)
  loc_1632F52:           unk_512D45.RollbackTrans
  loc_1632F57:           Exit Sub
  loc_1632F58:         End If
  loc_1632F5C:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_1632F61:         var_FC = &H16
  loc_1632F7F:         var_124 = CStr(Me.FGrid.TextMatrix))
  loc_1632F87:         var_170 = Val(var_124)
  loc_1632FAC:         unk_512D45.Execute "Select GuestProf from GuestFolio where FolioNo=" & CStr(var_170), var_134, -1
  loc_1632FB7:         Set var_CC = var_15C
  loc_1632FE5:         If (var_CC.RecordCount > 0) Then
  loc_1632FEE:           var_DC = "GuestProf"
  loc_1633002:           var_15C = var_CC.Fields.Item(var_DC)
  loc_1633013:           var_C8 = CStr(var_15C.Value)
  loc_1633020:         End If
  loc_1633034:         Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_15C, var_124, var_15C, var_170, var_FC, var_DC)
  loc_163303C:         var_160 = var_15C.Text
  loc_163304F:         Set var_160 = Me.Txt
  loc_1633055:         Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_164, var_1F8, Me.Txt, var_FC)
  loc_163305D:         var_DC = var_164.Text
  loc_163307D:         Set var_218 = Me.Txt
  loc_1633083:         Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_21C, var_AC)
  loc_1633092:         Proc_6_7_F26918(var_1C0, CVar(var_21C))
  loc_16330EA:         var_310 = CVar(CLng(var_AA)) 'Long
  loc_16330EF:         var_330 = 2
  loc_1633112:         var_3B4 = CVar(CLng(var_AA)) 'Long
  loc_1633117:         var_3E4 = 8
  loc_1633144:         var_468 = CVar(CLng(var_AA)) 'Long
  loc_1633149:         var_488 = &H12
  loc_1633185:         var_528 = CVar(CLng(var_AA)) 'Long
  loc_163318A:         var_558 = &H12
  loc_16331E4:         var_688 = Me.FGrid.TextMatrix)
  loc_1633220:         var_75C = Me.FGrid.TextMatrix)
  loc_163323A:         Proc_6_7_F26918(var_894, Date, var_75C, &H16, CVar(CLng(var_AA)), var_688, &H12, CVar(CLng(var_AA)))
  loc_1633253:         var_168 = "Insert Into PAYCHARGEH (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,Comments,PayCode,PayType,AmtCr,AmtDr,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,BookNo,BookType,U_Name,U_EntDt,U_AE,RestCode)Values " & "('"
  loc_16332A1:         var_144 = CVar(var_168 & var_124 & "'," & CStr(var_AC) & ",'" & global_116 & "'," & var_1F8 & ",'" & MemVar_1F95070 & "','") 'String
  loc_16332E6:         var_2C0 = var_144 & Trim(CVar(Me.LblVPrefix)) & "'," & var_1C0 & ",'" & CVar(Format$(Time, "HH:mm")) & "','" & CVar(var_C8) & "','" 
  loc_163331D:         var_418 = var_2C0 & CVar(var_94) & "','" & var_98.Fields.Item("Code").Value & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," 
  loc_1633348:         var_648 = var_418 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & Mid(CVar(CStr(Me.FGrid.TextMatrix))), 3, 5) & "','" & LTrim(Left(CVar(CStr(Me.FGrid.TextMatrix))), 2)) 
  loc_1633391:         var_810 = var_648 & "','" & Right(CVar(CStr(var_688)), 5) & "'," & CVar(CStr(var_75C)) & ",'','',0,''," & vbNullString & "'" & CVar(MemVar_1F950C8) 
  loc_16333CE:         unk_512D65.Execute CStr(var_810 & "'," & var_894 & ",'A','" & CVar(global_52) & "')"), var_938, -1
  loc_1633496:         var_AC = (var_AC + 1)
  loc_163349D:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_16334A2:         var_FC = &H12
  loc_16334D9:         var_B4 = CStr(Right(CVar(CStr(Me.FGrid.TextMatrix))), 5))
  loc_16334EC:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_16334F1:         var_FC = &H12
  loc_1633533:         var_B8 = CStr(LTrim(Left(CVar(CStr(Me.FGrid.TextMatrix))), 2)))
  loc_1633548:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_163354D:         var_FC = &H16
  loc_1633575:         var_BC = CStr(Val(CStr(Me.FGrid.TextMatrix))))
  loc_1633585:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_163358A:         var_FC = &H12
  loc_16335A9:         var_144 = 5
  loc_16335B7:         var_134 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_16335BD:         var_154 = Mid(var_134, 3, var_144)
  loc_16335C6:         var_B0 = CStr(var_154)
  loc_16335DB:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_16335E0:         var_FC = 8
  loc_16335FE:         var_124 = CStr(Me.FGrid.TextMatrix))
  loc_1633610:         var_C4 = (var_C4 + Val(var_124))
  loc_163361C:       End If
  loc_163361C:     End If
  loc_163361C:   End If
  loc_163361F: Next var_17C 'Integer
  loc_1633629: Set var_98 = Nothing
  loc_1633631: Set var_9C = Nothing
  loc_1633639: Set var_A0 = Nothing
  loc_1633641: Set var_A4 = Nothing
  loc_1633649: Set var_CC = Nothing
  loc_1633652: unk_512D65.CommitTrans
  loc_163365B: var_86 = CByte(0) 'Byte
  loc_1633670: If (OpenMode = 1) Then
  loc_1633680:   Me.Global.Unload Me
  loc_1633688:   Exit Sub
  loc_1633689: End If
  loc_1633694: Me.Requery -1
  loc_16336A4: Me.Requery -1
  loc_16336C8: Set var_110 = Me.Txt
  loc_16336CE: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_15C, var_124, "SearchCode='")
  loc_16336D6: 0 = var_15C.Text
  loc_16336EF: Me.Find 1 & var_124 & "'", var_DC, 
  loc_1633708: Set var_110 = Me.TopCtrl1
  loc_163370E: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_1633723: If ( = "Add") Then
  loc_1633726:   Call TopCtrl1_UnknownEvent_11()
  loc_163372B:   Exit Sub
  loc_163372C: End If
  loc_1633741: var_124 = "INI"
  loc_163374F: Call Proc_138_68_FC7444(Proc_5_1_100EC1C(var_124, Me))
  loc_163375A: Call Proc_138_72_F96BEC(global_60)
  loc_163375F: Call Proc_138_71_14F7D74()
  loc_1633764: Exit Sub
  loc_1633765: ' Referenced from: 1632420
  loc_163376E: If (CInt(var_86) = 1) Then
  loc_1633777:   unk_512D65.RollbackTrans
  loc_163377C: End If
  loc_1633784: Set var_110 = Err()
  loc_163378A: Call 0.Method_arg_2C (var_124)
  loc_16337A3: MsgBox(CVar(var_124), &H10, var_134, var_144, var_154)
  loc_16337B6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EC38FC
  'Data Table: 512D28
  loc_EC3864: On Error Goto loc_EC38F4
  loc_EC389E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC38AD:   Set var_110 = Me
  loc_EC38C4:   Call Proc_138_68_FC7444(Proc_5_1_100EC1C("INI", var_110))
  loc_EC38CF:   Call Proc_138_72_F96BEC(global_60)
  loc_EC38D4:   Call Proc_138_71_14F7D74()
  loc_EC38DC: Else
  loc_EC38E2:   Call 0.Method_arg_1E8 (var_110)
  loc_EC38EA:   Call var_110.SetFocus
  loc_EC38F3: End If
  loc_EC38F3: Exit Sub
  loc_EC38F4: ' Referenced from: EC3864
  loc_EC38F4: Proc_6_60_E63754()
  loc_EC38F9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'DFE534
  'Data Table: 512D28
  loc_DFE530: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1C 'DFE59C
  'Data Table: 512D28
  loc_DFE598: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E6E7A4
  'Data Table: 512D28
  Dim Me As Recordset15
  loc_E6E74B: Me.Requery -1
  loc_E6E75B: Me.Requery -1
  loc_E6E76B: Me.Requery -1
  loc_E6E77B: Me.Requery -1
  loc_E6E78B: Me.Requery -1
  loc_E6E79B: Me.Requery -1
  loc_E6E7A0: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_9 'F42874
  'Data Table: 512D28
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4276B: Me.DGEmp.Visible = False
  loc_F4278A: If (Me.RecordCount > 0) Then
  loc_F427C9:   Set var_B4 = Me.Txt
  loc_F427CF:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H18), var_B8)
  loc_F427D7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4280A:   var_B0 = Me.Fields.Item("Code")
  loc_F42829:   Set var_B4 = Me.Txt
  loc_F4282F:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H18), var_B8)
  loc_F42837:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4284D: End If
  loc_F42858: Set var_A8 = Me.Txt
  loc_F4285E: Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H18))
  loc_F42866: var_B0.SetFocus
  loc_F42872: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_1F 'EA33FC
  'Data Table: 512D28
  Dim var_A8 As Variant
  loc_EA337C: Set var_88 = Me.DGEmp
  loc_EA33A6: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA33AE: Set var_BC = Me.DGEmp
  loc_EA33EA: Proc_6_138_106E830(Me.DGEmp, global_68, CInt(&H18), Me.FGPoint)
  loc_EA33F8: Exit Sub
End Sub

Private Sub Form_Load() '1326E38
  'Data Table: 512D28
  Dim var_94 As Long
  Dim var_D0 As Variant
  Dim var_C0 As String
  Dim var_F4 As String
  Dim unk_512D45 As Connection15
  Dim var_90 As Recordset15
  Dim var_98 As Variant
  Dim var_100 As String
  Dim var_104 As Long
  Dim var_F8 As Variant
  Dim Me As Recordset15
  loc_13266AC: On Error Goto loc_1326DF3
  loc_13266B5: var_94 = global_108
  loc_13266C1: If Not (var_94 = 5) Then
  loc_13266CD:   If (var_94 = 6) Then
  loc_13266D0:   End If
  loc_13266E8:   Proc_6_23_DFC5B8(Me, 6000)
  loc_13266F0: End If
  loc_13266FA: Set var_98 = Me.TopCtrl1
  loc_1326700: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000B("AEDP")
  loc_132670E: Call 0.Method_arg_50 (var_C0, 6975)
  loc_1326716: var_D0 = CVar(var_C0) 'String
  loc_1326724: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000F(var_D0)
  loc_132672D: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_0()
  loc_132674D: global_116 = hAdvanceDepDialogSecondry.AdvType
  loc_1326778: unk_512D45.Execute "Select * from Enviro where Logsite_code='" & MemVar_1F95078 & "'", var_D0, -1
  loc_1326783: Set var_90 = Me.TopCtrl1
  loc_13267CC: If (Proc_6_38_E69628(CVar(var_90.Fields.Item("CreditCardInfoMandatory"))) = "Y") Then
  loc_13267D5:   global_56 = "Y"
  loc_13267D9: End If
  loc_13267E8: var_98 = var_90.Fields
  loc_13267F8: var_D0 = CVar(var_98.Item("AllowRoomSettlement")) 'Address
  loc_1326812: If (Proc_6_38_E69628(var_D0) = "No") Then
  loc_132683E:   var_100 = "SELECT Code,Name,PayType FROM RevMast Where Code <>'" & MemVar_1F95078 & "ROOM' and LogSite_Code in ('" & MemVar_1F95078 & "','HO') and FieldType='P' and paytype='Cash' ORDER BY Name"
  loc_1326847:   unk_512D45.Execute var_100, var_D0, -1
  loc_1326858:   Set global_64 = var_98
  loc_1326874: Else
  loc_132688F:   var_F4 = "SELECT Code,Name,PayType FROM RevMast Where LogSite_Code in ('" & MemVar_1F95078 & "','HO') and FieldType='P' and paytype='Cash' ORDER BY Name"
  loc_1326898:   unk_512D45.Execute var_F4, var_D0, -1
  loc_13268A9:   Set global_64 = var_98
  loc_13268BE: End If
  loc_13268C7: CVarUnk
  loc_13268CC: VerifyVarObj
  loc_13268D8: LateIdStAd
  loc_13268FC: unk_512D45.Execute "SELECT Code,Name FROM Employee ORDER BY Name", var_D0, -1
  loc_1326924: CVarUnk
  loc_1326929: VerifyVarObj
  loc_1326935: LateIdStAd
  loc_1326959: unk_512D45.Execute "Select T.Type+t.RoomCat+space(5-len(T.RoomCat))+Code+space(5-len(Code)) as Code,T.Code As Name,RoomOcc.FolioNO From RoomMast T inner join RoomOcc on RoomOcc.RoomNo=T.Code where T.Type in ('RO') and RoomOcc.ChkoutDate is NULL Order By T.Code", var_D0, -1
  loc_1326981: CVarUnk
  loc_1326986: VerifyVarObj
  loc_1326992: LateIdStAd
  loc_13269B6: unk_512D45.Execute "Select SubCode as Code,Name From SubGroup where CompanyType in ('Corporate','Travel Agency') Order By Name", var_D0, -1
  loc_13269DE: CVarUnk
  loc_13269E3: VerifyVarObj
  loc_13269E9: Set var_98 = Me.DGCompany
  loc_13269EF: LateIdStAd
  loc_1326A09: Call 0.Method_arg_38 (MemVar_1F953B0, var_98, Me.DGRoom, var_98, var_98, Me.DGEmp, var_98, var_98)
  loc_1326A1A: Call 0.Method_arg_3C (MemVar_1F950EC, Me.DGPayType, var_98, var_98)
  loc_1326A2B: Call 0.Method_arg_54 (MemVar_1F9506C, global_64, var_98)
  loc_1326A3C: Call 0.Method_arg_1C (MemVar_1F95070, var_98)
  loc_1326A4D: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_1326A5E: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_1326A6F: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_1326A80: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_1326A91: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_1326AA2: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_1326ABC: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_1326ACA: Set var_98 = MemVar_1F95044
  loc_1326AD9: Call 0.Method_Form_Load8 (var_98)
  loc_1326AEF: Me.DGCompany.Clone
  loc_1326AFA: Set var_F8 = var_98
  loc_1326B09: Call 0.Method_arg_50 (var_F8, -1)
  loc_1326B1B: var_104 = global_108
  loc_1326B27: If (var_104 = 6) Then
  loc_1326B51:   Me.Connection15.Execute "SELECT Distinct Docid as SearchCode FROM PAYCHARGEH Where Vtype='" & global_116 & "'", var_D0, -1
  loc_1326B62:   Set global_60 = var_98
  loc_1326B77: End If
  loc_1326B83: Set var_98 = Me
  loc_1326B9A: Call Proc_138_68_FC7444(Proc_5_1_100EC1C("INI", var_98, global_60, var_98), var_104)
  loc_1326BA5: Call Proc_138_70_116EF90(var_98)
  loc_1326BAA: Call Proc_138_75_11DA70C(var_98)
  loc_1326BBB: If (global_104 = 2) Then
  loc_1326BBE:   Call Proc_138_71_14F7D74()
  loc_1326BC3: End If
  loc_1326BCF: If (global_104 = 1) Then
  loc_1326BDB:   Set var_98 = Me.TopCtrl1
  loc_1326BE1:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010007(False)
  loc_1326BF6:   Set var_98 = Me.Txt
  loc_1326BFC:   Call 0.Method_Form_Load0 (CInt(0), var_F8)
  loc_1326C04:   var_F8.Visible = False
  loc_1326C10:   Call TopCtrl1_UnknownEvent_11()
  loc_1326C2C:   If (Me.RecordCount > 0) Then
  loc_1326C35:     Me.MoveFirst
  loc_1326C62:     Me.Find "SearchCode='" & global_120 & "'", 0, 1
  loc_1326C82:     If (Me.EOF = 0) Then
  loc_1326C8F:       Set var_98 = Me.TopCtrl1
  loc_1326C95:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E("Edit")
  loc_1326C9E:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_0()
  loc_1326CA9:       Call Proc_138_71_14F7D74()
  loc_1326CB4:       Call Proc_138_77_10DFFF0(global_152)
  loc_1326CB9:     End If
  loc_1326CB9:   End If
  loc_1326CCA:   Set var_98 = Me.Txt
  loc_1326CD0:   Call 0.Method_Form_Load0 (CInt(0), var_F8)
  loc_1326CD8:   var_F8.Text = global_120
  loc_1326D18:   Set var_98 = Me.Txt
  loc_1326D1E:   Call 0.Method_Form_Load0 (CInt(1), var_F8)
  loc_1326D26:   var_F8.Text = CStr(Val(CStr(Right(global_120, 8))))
  loc_1326D6A:   Me.LblVPrefix.Caption = CStr(Mid(global_120, 9, 5))
  loc_1326D92:   Set var_98 = Me.LTxt
  loc_1326D98:   Call 0.Method_Form_Load0 (CInt(&H1A), var_F8)
  loc_1326DA0:   var_F8.Caption = PBillAmt
  loc_1326DB5:   var_C0 = hAdvanceDepDialogSecondry.PersonCode
  loc_1326DC8:   Set var_98 = Me.Txt
  loc_1326DCE:   Call 0.Method_Form_Load0 (CInt(&H10), var_F8)
  loc_1326DD6:   var_F8.Text = var_C0
  loc_1326DE5: End If
  loc_1326DE5: Call Proc_138_80_10A83F8()
  loc_1326DEF: Set var_8C = Nothing
  loc_1326DF2: Exit Sub
  loc_1326DF3: ' Referenced from: 13266AC
  loc_1326DFB: Set var_98 = Err()
  loc_1326E01: Call 0.Method_arg_2C (var_C0)
  loc_1326E22: MsgBox(CVar(var_C0), &H40, "Information", var_F0, var_128)
  loc_1326E35: Exit Sub
  loc_1326E36: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E622C8
  'Data Table: 512D28
  loc_E62287: Set global_72 = Nothing
  loc_E62299: Set global_60 = Nothing
  loc_E622AB: Set global_64 = Nothing
  loc_E622BD: Set global_68 = Nothing
  loc_E622C4: Exit Sub
End Sub

Private Sub Form_Activate() 'F6A4B0
  'Data Table: 512D28
  Dim var_90 As Long
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_C8 As TextBox
  Dim var_94 As Frame
  loc_F6A397: If (OpenMode = 1) Then
  loc_F6A39D:   var_88 = OpenType
  loc_F6A3A5:   var_90 = var_88
  loc_F6A3B1:   If Not (var_90 = 5) Then
  loc_F6A3BD:     If (var_90 = 6) Then
  loc_F6A3C0:     End If
  loc_F6A3CB:     Set var_94 = Me.Txt
  loc_F6A3D1:     Call 0.Method_Form_Activate0 (CInt(&HF), var_98)
  loc_F6A3D9:     var_98.SetFocus
  loc_F6A3F3:     Set var_94 = Me.Txt
  loc_F6A3F9:     Call 0.Method_Form_Activate0 (CInt(&HF), var_98, var_88)
  loc_F6A401:     var_90 = var_98.Left
  loc_F6A412:     Set var_BC = Me.DGPayType
  loc_F6A418:     var_BC.Left = CVar(var_88)
  loc_F6A434:     Set var_98 = Me.Txt
  loc_F6A43A:     Call 0.Method_Form_Activate0 (CInt(&HF), var_BC)
  loc_F6A455:     Set var_C4 = Me.Txt
  loc_F6A45B:     Call 0.Method_Form_Activate0 (CInt(&HF), var_C8)
  loc_F6A489:     var_A8 = CVar((((Me.FrRest.Top + var_BC.Top) + var_C8.Height) + CDbl(&HF))) 'Single
  loc_F6A498:     Me.DGPayType.Top = CVar(Me.FrRest.Top)
  loc_F6A4AC:   End If
  loc_F6A4AC: End If
  loc_F6A4AC: Exit Sub
  loc_F6A4AE: DOC
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F00250
  'Data Table: 512D28
  Dim var_B4 As DataGrid
  loc_F00198: If ((OpenMode = 1) And (CLng(KeyCode) = &H1B)) Then
  loc_F001CC:   Set var_B4 = Me.DGEmp
  loc_F001F1:   If (((CBool(Me.DGTable.Visible) = 0) And (CBool(Me.DGPayType.Visible) = 0)) And (CBool(var_B4.Visible) = 0)) Then
  loc_F00201:     Me.var_B4.Unload Me
  loc_F00209:     Exit Sub
  loc_F0020A:   End If
  loc_F0020A: End If
  loc_F00228: If (((CLng(KeyCode) = &H53) And (Shift = 2)) And (global_104 = 1)) Then
  loc_F0022B:   Call TopCtrl1_UnknownEvent_19()
  loc_F00230:   Exit Sub
  loc_F00231: End If
  loc_F00245: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_F0024D: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_9 'F3C994
  'Data Table: 512D28
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3C88B: Me.DGCompany.Visible = False
  loc_F3C8AA: If (Me.RecordCount > 0) Then
  loc_F3C8E9:   Set var_B4 = Me.Txt
  loc_F3C8EF:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H1F), var_B8)
  loc_F3C8F7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3C92A:   var_B0 = Me.Fields.Item("Code")
  loc_F3C949:   Set var_B4 = Me.Txt
  loc_F3C94F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H1F), var_B8)
  loc_F3C957:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3C96D: End If
  loc_F3C978: Set var_A8 = Me.Txt
  loc_F3C97E: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H1F))
  loc_F3C986: var_B0.SetFocus
  loc_F3C992: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_1F 'EA3894
  'Data Table: 512D28
  Dim var_A8 As Variant
  loc_EA3814: Set var_88 = Me.DGCompany
  loc_EA383E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA3846: Set var_BC = Me.DGCompany
  loc_EA3882: Proc_6_138_106E830(Me.DGCompany, global_80, CInt(&H1F), Me.FGPoint)
  loc_EA3890: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F3C834
  'Data Table: 512D28
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3C72B: Me.DGRoom.Visible = False
  loc_F3C74A: If (Me.RecordCount > 0) Then
  loc_F3C789:   Set var_B4 = Me.Txt
  loc_F3C78F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H1E), var_B8)
  loc_F3C797:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3C7CA:   var_B0 = Me.Fields.Item("Code")
  loc_F3C7E9:   Set var_B4 = Me.Txt
  loc_F3C7EF:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H1E), var_B8)
  loc_F3C7F7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3C80D: End If
  loc_F3C818: Set var_A8 = Me.Txt
  loc_F3C81E: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H1E))
  loc_F3C826: var_B0.SetFocus
  loc_F3C832: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_1F 'EA370C
  'Data Table: 512D28
  Dim var_A8 As Variant
  loc_EA368C: Set var_88 = Me.DGRoom
  loc_EA36B6: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA36BE: Set var_BC = Me.DGRoom
  loc_EA36FA: Proc_6_138_106E830(Me.DGRoom, global_76, CInt(&H1E), Me.FGPoint)
  loc_EA3708: Exit Sub
End Sub

Private Sub Del_Click() 'F95284
  'Data Table: 512D28
  Dim var_98 As Variant
  Dim var_A8 As Variant
  loc_F9513F: If (CLng(Me.FGrid.Row) >= 1) Then
  loc_F95179:   If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_E8, var_108) = 6) Then
  loc_F9519B:     If (CLng(Me.FGrid.Rows) > 2) Then
  loc_F951B1:       var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F951BA:       Set var_10C = Me.FGrid
  loc_F951D5:     Else
  loc_F951E8:       Me.FGrid.Rows = 1
  loc_F9520C:       var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0))) 'String
  loc_F95214:       Set var_10C = Me.FGrid
  loc_F95241:       Me.FGrid.FixedRows = 1
  loc_F95249:     End If
  loc_F95249:   End If
  loc_F9524C: Else
  loc_F95262:   var_A8 = "No Entries To Delete"
  loc_F95267:   var_98 = var_A8
  loc_F9526D:   MsgBox(var_98, &H10, "Delete Module", var_E8, var_108)
  loc_F9527D: End If
  loc_F9527D: Call Proc_138_80_10A83F8(FGrid.DispID_10000, var_98)
  loc_F95282: Exit Sub
  loc_F95283: FGrid.DispID_10000 = var_A8
End Sub

Private Sub DGTable_UnknownEvent_9 'F5A820
  'Data Table: 512D28
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5A700: On Error Goto loc_F5A81A
  loc_F5A712: Me.DGTable.Visible = False
  loc_F5A731: If (Me.RecordCount > 0) Then
  loc_F5A770:   Set var_B4 = Me.Txt
  loc_F5A776:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F5A77E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F5A7B1:   var_B0 = Me.Fields.Item("Code")
  loc_F5A7D0:   Set var_B4 = Me.Txt
  loc_F5A7D6:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F5A7DE:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5A7F4: End If
  loc_F5A7FF: Set var_A8 = Me.Txt
  loc_F5A805: Call 0.Method_DGTable_UnknownEvent_90 (CInt(&H10))
  loc_F5A80D: var_B0.SetFocus
  loc_F5A819: Exit Sub
  loc_F5A81A: ' Referenced from: F5A700
  loc_F5A81A: Proc_6_60_E63754(var_B0)
  loc_F5A81F: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'EA37D0
  'Data Table: 512D28
  Dim var_A8 As Variant
  loc_EA3750: Set var_88 = Me.DGTable
  loc_EA377A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA3782: Set var_BC = Me.DGTable
  loc_EA37BE: Proc_6_138_106E830(Me.DGTable, global_72, CInt(&H10), Me.FGPoint)
  loc_EA37CC: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'ED2548
  'Data Table: 512D28
  loc_ED24AC: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_ED24AF:   Call DGTable_UnknownEvent_9()
  loc_ED24B4: End If
  loc_ED24D0: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_ED24D3:   Call DGEmp_UnknownEvent_9()
  loc_ED24D8: End If
  loc_ED24F4: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_ED24F7:   Call DGPayType_UnknownEvent_9()
  loc_ED24FC: End If
  loc_ED2518: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_ED251B:   Call DGRoom_UnknownEvent_9()
  loc_ED2520: End If
  loc_ED253C: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_ED253F:   Call DGCompany_UnknownEvent_9()
  loc_ED2544: End If
  loc_ED2544: Exit Sub
End Sub

Private Sub CmdDelete_Click() 'E5B7FC
  'Data Table: 512D28
  loc_E5B7D3: If (Me.cmdDelete.Value = 1) Then
  loc_E5B7D6:   Call Proc_138_83_F9B1E4()
  loc_E5B7E7:   Me.cmdDelete.Value = 0
  loc_E5B7EF:   Call Proc_138_69_FE5BF8()
  loc_E5B7F4:   Call Form_Load()
  loc_E5B7F9: End If
  loc_E5B7F9: Exit Sub
End Sub

Public Function global_52Get() '514374
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '514383
  global_52 = Value
End Sub

Public Function global_56Get() '514392
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '5143A1
  global_56 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC5094
  'Data Table: 512D28
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC500A: On Error Goto loc_EC504F
  loc_EC5013: Me.MoveFirst
  loc_EC502D: var_8C = "Searchcode='" & MyValue
  loc_EC503D: Me.Find var_8C & "'", 0, 1
  loc_EC5049: Call Proc_138_71_14F7D74(var_A0)
  loc_EC504E: Exit Sub
  loc_EC504F: ' Referenced from: EC500A
  loc_EC5057: Set var_A4 = Err()
  loc_EC505D: Call 0.Method_arg_2C (var_8C)
  loc_EC507E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC5091: Exit Sub
  loc_EC5092: Exit Sub
End Sub

Public Property Get OpenMode() 'E08350
  'Data Table: 512D28
  loc_E08349: OpenMode = global_104
End Sub

Public Property Let OpenMode(vNewValue) 'E02788
  'Data Table: 512D28
  loc_E02782: global_104 = vNewValue
  loc_E02785: Exit Sub
End Sub

Public Property Get OpenType() 'E08250
  'Data Table: 512D28
  loc_E08249: OpenType = global_108
End Sub

Public Property Let OpenType(vNewValue) 'E02698
  'Data Table: 512D28
  loc_E02692: global_108 = vNewValue
  loc_E02695: Exit Sub
End Sub

Public Property Get AdvType() 'E138E4
  'Data Table: 512D28
  loc_E138D8: var_88 = global_116
  loc_E138DB: AdvType = 
End Sub

Public Property Let AdvType(vNewValue) 'E13A04
  'Data Table: 512D28
  loc_E139FC: global_116 = vNewValue
  loc_E13A00: Exit Sub
End Sub

Public Property Get IdNo() 'E13BFC
  'Data Table: 512D28
  loc_E13BF0: var_88 = global_112
  loc_E13BF3: IdNo = 
End Sub

Public Property Let IdNo(vNewValue) 'E13D64
  'Data Table: 512D28
  loc_E13D5C: global_112 = vNewValue
  loc_E13D60: Exit Sub
End Sub

Public Property Get PersonCode() 'E13DF4
  'Data Table: 512D28
  loc_E13DE8: var_88 = global_124
  loc_E13DEB: PersonCode = 
End Sub

Public Property Let PersonCode(vNewValue) 'E13ECC
  'Data Table: 512D28
  loc_E13EC4: global_124 = vNewValue
  loc_E13EC8: Exit Sub
End Sub

Public Property Get pDocId() 'E13F14
  'Data Table: 512D28
  loc_E13F08: var_88 = global_120
  loc_E13F0B: pDocId = 
End Sub

Public Property Let pDocId(vNewValue) 'E13FEC
  'Data Table: 512D28
  loc_E13FE4: global_120 = vNewValue
  loc_E13FE8: Exit Sub
End Sub

Public Property Get PTableOrRoomNo() 'E14154
  'Data Table: 512D28
  loc_E14148: var_88 = global_128
  loc_E1414B: PTableOrRoomNo = 
End Sub

Public Property Let PTableOrRoomNo(vNewValue) 'E1422C
  'Data Table: 512D28
  loc_E14224: global_128 = vNewValue
  loc_E14228: Exit Sub
End Sub

Public Property Get PConnName() 'E230E8
  'Data Table: 512D28
  Dim Me As Connection15
  loc_E230DF: var_88 = Me.ConnectionString
  loc_E230E2: PConnName = 
End Sub

Public Property Let PConnName(vNewValue) 'E18694
  'Data Table: 512D28
  Dim Me As Connection15
  loc_E1868B: Me.ConnectionString = vNewValue
  loc_E18690: Exit Sub
End Sub

Public Property Get PRoomCat() 'E14304
  'Data Table: 512D28
  loc_E142F8: var_88 = global_156
  loc_E142FB: PRoomCat = 
End Sub

Public Property Let PRoomCat(vNewValue) 'E1434C
  'Data Table: 512D28
  loc_E14344: global_156 = vNewValue
  loc_E14348: Exit Sub
End Sub

Public Property Get PRoomtype() 'E14394
  'Data Table: 512D28
  loc_E14388: var_88 = global_160
  loc_E1438B: PRoomtype = 
End Sub

Public Property Let PRoomtype(vNewValue) 'E144FC
  'Data Table: 512D28
  loc_E144F4: global_160 = vNewValue
  loc_E144F8: Exit Sub
End Sub

Public Property Get PBillAmt() 'E1461C
  'Data Table: 512D28
  loc_E14612: var_88 = CStr(global_136)
  loc_E14615: PBillAmt = 
End Sub

Public Property Let PBillAmt(vNewValue) 'E146AC
  'Data Table: 512D28
  loc_E146A6: global_136 = CDbl(vNewValue)
  loc_E146A9: Exit Sub
End Sub

Public Sub Proc_138_68_FC7444(arg_C) 'FC7444
  'Data Table: 512D28
  Dim var_98 As TextBox
  loc_FC7292: Set var_8C = Me.Txt
  loc_FC7298: Call 0.Method_Proc_138_68_FC74448 (var_8E, var_86)
  loc_FC72A8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FC7343:   If (((((((((((((((CInt(var_86) <> 4) And (CInt(var_86) <> 5)) And (CInt(var_86) <> 6)) And (CInt(var_86) <> 7)) And (CInt(var_86) <> 8)) And (CInt(var_86) <> 9)) And (CInt(var_86) <> &HA)) And (CInt(var_86) <> &HB)) And (CInt(var_86) <> &HC)) And (CInt(var_86) <> &HD)) And (CInt(var_86) <> &HE)) And (CInt(var_86) <> &H1A)) And (CInt(var_86) <> &H1B)) And (CInt(var_86) <> &H1C)) And (CInt(var_86) <> &H1D)) Then
  loc_FC7356:     Set var_8C = Me.Txt
  loc_FC735C:     Call 0.Method_Proc_138_68_FC74440 (CInt(var_86), var_98)
  loc_FC7364:     var_98.Enabled = arg_C
  loc_FC7370:   End If
  loc_FC7373: Next var_92 'Byte
  loc_FC7385: If (global_104 = 1) Then
  loc_FC7395:   Set var_8C = Me.Txt
  loc_FC739B:   Call 0.Method_Proc_138_68_FC74440 (CInt(1), var_98)
  loc_FC73A3:   var_98.Enabled = False
  loc_FC73AF: End If
  loc_FC73BC: Set var_8C = Me.Txt
  loc_FC73C2: Call 0.Method_Proc_138_68_FC74440 (CInt(2), var_98)
  loc_FC73CA: var_98.Enabled = False
  loc_FC73E3: Set var_8C = Me.Txt
  loc_FC73E9: Call 0.Method_Proc_138_68_FC74440 (CInt(0), var_98)
  loc_FC73F1: var_98.Enabled = False
  loc_FC7414: If (OpenMode = 1) Then
  loc_FC7424:   Set var_8C = Me.Txt
  loc_FC742A:   Call 0.Method_Proc_138_68_FC74440 (CInt(&H10), var_98)
  loc_FC7432:   var_98.Enabled = False
  loc_FC743E:   GoTo loc_FC7441
  loc_FC7441:   ' Referenced from: FC743E
  loc_FC7441: End If
  loc_FC7441: Exit Sub
End Sub

Public Sub Proc_138_69_FE5BF8
  'Data Table: 512D28
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_8C As MSHFlexGrid
  loc_FE5A1A: Set var_8C = Me.Txt
  loc_FE5A20: Call 0.Method_Proc_138_69_FE5BF8C (var_8E, var_86)
  loc_FE5A30: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FE5ACB:   If (((((((((((((((CInt(var_86) <> 4) And (CInt(var_86) <> 5)) And (CInt(var_86) <> 6)) And (CInt(var_86) <> 7)) And (CInt(var_86) <> 8)) And (CInt(var_86) <> 9)) And (CInt(var_86) <> &HA)) And (CInt(var_86) <> &HB)) And (CInt(var_86) <> &HC)) And (CInt(var_86) <> &HD)) And (CInt(var_86) <> &HE)) And (CInt(var_86) <> &H1A)) And (CInt(var_86) <> &H1B)) And (CInt(var_86) <> &H1C)) And (CInt(var_86) <> &H1D)) Then
  loc_FE5ADE:     Set var_8C = Me.Txt
  loc_FE5AE4:     Call 0.Method_Proc_138_69_FE5BF80 (CInt(var_86), var_98)
  loc_FE5AEC:     var_98.Text = vbNullString
  loc_FE5B08:     Set var_8C = Me.Txt
  loc_FE5B0E:     Call 0.Method_Proc_138_69_FE5BF80 (CInt(var_86), var_98)
  loc_FE5B16:     var_98.Tag = vbNullString
  loc_FE5B22:   End If
  loc_FE5B25: Next var_92 'Byte
  loc_FE5B3E: Me.FGrid.Rows = 1
  loc_FE5B46: var_A8 = "1"
  loc_FE5B50: Set var_8C = Me.FGrid
  loc_FE5B74: Me.FGrid.FixedRows = 1
  loc_FE5B8A: Set var_8C = Me.LTxt
  loc_FE5B90: Call 0.Method_Proc_138_69_FE5BF80 (CInt(&H1A), var_98, vbNullString)
  loc_FE5B98: var_98.Caption = FGrid.DispID_10000
  loc_FE5BB2: Set var_8C = Me.LTxt
  loc_FE5BB8: Call 0.Method_Proc_138_69_FE5BF80 (CInt(&H1B), var_98)
  loc_FE5BC0: var_98.Caption = vbNullString
  loc_FE5BDA: Set var_8C = Me.LTxt
  loc_FE5BE0: Call 0.Method_Proc_138_69_FE5BF80 (CInt(&H1C), var_98)
  loc_FE5BE8: var_98.Caption = vbNullString
  loc_FE5BF4: Exit Sub
End Sub

Public Sub Proc_138_70_116EF90
  'Data Table: 512D28
  Dim var_A0 As Variant
  loc_116EBC7: Me.FrRest.Top = CDbl(915)
  loc_116EBDD: Me.FrRest.Left = CDbl(0)
  loc_116EBFC: If (OpenType = 6) Then
  loc_116EC12:   Me.FGrid.Top = CVar(CDbl(2880))
  loc_116EC1A: End If
  loc_116EC2C: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_116EC59: Me.FrChqDet.Top = (Me.FrRest.Top + CDbl(960))
  loc_116EC74: Me.FrChqDet.Left = CDbl(240)
  loc_116ECA1: Me.FrCCDet.Top = (Me.FrRest.Top + CDbl(960))
  loc_116ECBC: Me.FrCCDet.Left = CDbl(240)
  loc_116ECE6: Me.DGPayType.Top = CVar(CDbl(Me.FGrid.Top))
  loc_116ED17: Me.DGPayType.Height = CVar(CDbl(Me.FGrid.Height))
  loc_116ED54: var_A0 = CVar((Me.FrRest.Top + CDbl(Me.FGrid.Top))) 'Single
  loc_116ED63: Me.DGTable.Top = CVar(CDbl(Me.FGrid.Height))
  loc_116ED96: Me.DGTable.Height = CVar(CDbl(Me.FGrid.Height))
  loc_116EDCA: Me.FrSendRoom.Top = (Me.FrRest.Top + CDbl(960))
  loc_116EDE5: Me.FrSendRoom.Left = CDbl(240)
  loc_116EE12: Me.FrEmp.Top = (Me.FrRest.Top + CDbl(960))
  loc_116EE2D: Me.FrEmp.Left = CDbl(240)
  loc_116EE5A: Me.FrComp.Top = (Me.FrRest.Top + CDbl(960))
  loc_116EE75: Me.FrComp.Left = CDbl(240)
  loc_116EE90: Me.DGRoom.Top = CVar(CDbl(405))
  loc_116EEAB: Me.DGRoom.Left = CVar(CDbl(5415))
  loc_116EEC6: Me.DGEmp.Top = CVar(CDbl(405))
  loc_116EEE1: Me.DGEmp.Left = CVar(CDbl(5550))
  loc_116EEFC: Me.DGCompany.Top = CVar(CDbl(405))
  loc_116EF17: Me.DGCompany.Left = CVar(CDbl(5550))
  loc_116EF2B: If (global_108 = 6) Then
  loc_116EF3D:   Me.FrRem.Width = CDbl(4925)
  loc_116EF45: End If
  loc_116EF6A: Me.FrRem.Top = (Me.FrRest.Top + CDbl(960))
  loc_116EF85: Me.FrRem.Left = CDbl(240)
  loc_116EF8D: Exit Sub
End Sub

Public Sub Proc_138_71_14F7D74
  'Data Table: 512D28
  Dim Me As Recordset15
  Dim var_9C As String
  Dim var_A4 As String
  Dim var_AC As String
  Dim var_B4 As String
  Dim var_EC As Variant
  Dim var_C8 As Variant
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim unk_512D65 As Connection15
  Dim var_148 As Variant
  Dim var_144 As Variant
  Dim var_DC As Variant
  Dim var_8E As Integer
  Dim var_160 As Variant
  Dim var_130 As Variant
  Dim var_170 As Long
  Dim var_1A0 As Variant
  Dim unk_512D45 As Connection15
  Dim var_8C As Recordset15
  loc_14F6F34: On Error Goto loc_14F7D31
  loc_14F6F3D: Proc_183_45_E5CCA8(global_60)
  loc_14F6F59: If (Me.RecordCount <= 0) Then
  loc_14F6F5C:   Call Proc_138_69_FE5BF8()
  loc_14F6F64: Else
  loc_14F6F76:   If (global_108 = 6) Then
  loc_14F6F8D:     var_9C = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName, ST.EmpCode, " & "E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,"
  loc_14F6F9B:     var_A4 = var_9C & "ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, " & "R.Name AS RoomName, ST.FPNo, ST.CardNo, ST.CardHolder, ST.ChqNo, "
  loc_14F6FA9:     var_AC = var_A4 & "ST.ChqDate, ST.ExpDate,CC.Name as CompName,CompCode FROM ((((PAYCHARGEH AS ST LEFT JOIN " & "GuestProf AS GP ON ST.GuestProf = GP.Code) LEFT JOIN Employee AS E "
  loc_14F6FB7:     var_B4 = var_AC & "ON ST.EmpCode = E.Code) LEFT JOIN RevMast AS P ON ST.PayCode = P.Code) " & "LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) "
  loc_14F6FEE:     var_FC = CVar(var_B4 & "AND (ST.RoomNo = R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode where ST.Docid='") & Me.Fields.Item("SearchCode").Value 
  loc_14F7005:     unk_512D65.Execute CStr(var_FC & "' And AmtCr>0"), var_140, -1
  loc_14F7010:     Set var_88 = var_144
  loc_14F703C:   End If
  loc_14F7070:   global_88 = CStr(Me.Fields.Item("SearchCode").Value)
  loc_14F7098:   If (Me.Recordset15.RecordCount > 0) Then
  loc_14F70DD:     Call 0.Method_Proc_138_71_14F7D740 (CInt(0), var_148, CStr(Me.Recordset15.Fields.Item("DocID").Value))
  loc_14F70E5:     var_148.Text = Me.Txt
  loc_14F7118:     var_CC = Me.Recordset15.Fields.Item("VNo")
  loc_14F7137:     Set var_144 = Me.Txt
  loc_14F713D:     Call 0.Method_Proc_138_71_14F7D740 (CInt(1), var_148)
  loc_14F7145:     var_148.Text = CStr(var_CC.Value)
  loc_14F7192:     Set var_B8 = Me.Txt
  loc_14F7198:     Call 0.Method_Proc_138_71_14F7D740 (CInt(2), var_CC, CStr(Format(MemVar_1F950EC, "dd/MMM/yyyy")))
  loc_14F71A0:     var_CC.Text = 1
  loc_14F71F1:     Me.LblVPrefix.Caption = CStr(Me.Recordset15.Fields.Item("vPrefix").Value)
  loc_14F723E:     Set var_144 = Me.Txt
  loc_14F7244:     Call 0.Method_Proc_138_71_14F7D740 (CInt(&H12), var_148)
  loc_14F724C:     var_148.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CardNo")), 1)
  loc_14F7260:   End If
  loc_14F726F:   Me.FGrid.Redraw = False
  loc_14F7284:   Set var_B8 = Me.FGrid
  loc_14F728A:   var_B8.Rows = 1
  loc_14F7294:   var_8E = 1
  loc_14F72AE:   If (Me.var_B8.RecordCount > 0) Then
  loc_14F72B1:     ' Referenced from:   14F7C6D
  loc_14F72C3:     If Not(Me.Recordset15.EOF) Then
  loc_14F72C6:       var_C8 = vbNullString
  loc_14F72D0:       Set var_B8 = Me.FGrid
  loc_14F72E5:       Set var_150 = Me.FGrid
  loc_14F72EC:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_14F72F1:       var_160 = 0
  loc_14F7328:       var_EC = CVar(CStr(Me.FGrid.Fields.Item("SNo").Value)) 'String
  loc_14F732F:       LateIdCallSt
  loc_14F7382:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PayType")), 2, CVar(CLng(var_8E)), var_150, var_EC, 2)) 'String
  loc_14F7389:       LateIdCallSt
  loc_14F73D8:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PayCode")), 1, CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_14F73DF:       LateIdCallSt
  loc_14F742E:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PayName")), 3, CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_14F7435:       LateIdCallSt
  loc_14F7484:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomCat")), 4, CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_14F748B:       LateIdCallSt
  loc_14F74DA:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Roomtype")), 5, CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_14F74E1:       LateIdCallSt
  loc_14F752F:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomNo")), CVar(CLng(6)), CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_14F7536:       LateIdCallSt
  loc_14F7584:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomName")), CVar(CLng(7)), CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_14F758B:       LateIdCallSt
  loc_14F75C0:       var_130 = CVar(CLng(var_8E)) 'Long
  loc_14F75C5:       var_170 = 8
  loc_14F75F6:       var_11C = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_14F75FD:       LateIdCallSt
  loc_14F7617:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_14F761F:       var_160 = CVar(CLng(9)) 'Long
  loc_14F7652:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("CardNo").Value)) 'String
  loc_14F7659:       LateIdCallSt
  loc_14F7673:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_14F767B:       var_160 = CVar(CLng(&HA)) 'Long
  loc_14F76AE:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("CardHolder").Value)) 'String
  loc_14F76B5:       LateIdCallSt
  loc_14F7707:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ExpDate")), CVar(CLng(&HB)), CVar(CLng(var_8E)), var_150, var_EC, CVar(CLng(&HB)), CVar(CLng(var_8E)))) 'String
  loc_14F770E:       LateIdCallSt
  loc_14F775D:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("BatchNo")), &H17, CVar(CLng(var_8E)), var_150, var_EC, var_150)) 'String
  loc_14F7764:       LateIdCallSt
  loc_14F777A:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_14F7782:       var_160 = CVar(CLng(&HC)) 'Long
  loc_14F77B5:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("ChqNo").Value)) 'String
  loc_14F77BC:       LateIdCallSt
  loc_14F780E:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqDate")), CVar(CLng(&HD)), CVar(CLng(var_8E)), var_150, var_EC, CVar(CLng(&HD)), CVar(CLng(var_8E)))) 'String
  loc_14F7815:       LateIdCallSt
  loc_14F782B:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_14F7833:       var_160 = CVar(CLng(&HE)) 'Long
  loc_14F7866:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("Comments").Value)) 'String
  loc_14F786D:       LateIdCallSt
  loc_14F78BF:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("EmpName")), CVar(CLng(&HF)), CVar(CLng(var_8E)), var_150, var_EC, CVar(CLng(&HF)), CVar(CLng(var_8E)))) 'String
  loc_14F78C6:       LateIdCallSt
  loc_14F78DC:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_14F78E4:       var_160 = CVar(CLng(&H10)) 'Long
  loc_14F7917:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("EmpCode").Value)) 'String
  loc_14F791E:       LateIdCallSt
  loc_14F7971:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CompCode")), &H14, CVar(CLng(var_8E)), var_150, var_EC, &H14, CVar(CLng(var_8E)))) 'String
  loc_14F7978:       LateIdCallSt
  loc_14F79C7:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CompName")), &H15, CVar(CLng(var_8E)), var_150, var_EC, var_150)) 'String
  loc_14F79CE:       LateIdCallSt
  loc_14F79E4:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_14F7A20:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("TipAmt").Value)) 'String
  loc_14F7A27:       LateIdCallSt
  loc_14F7A6B:       var_EC = "0.00"
  loc_14F7A92:       Set var_144 = Me.LTxt
  loc_14F7A98:       Call 0.Method_Proc_138_71_14F7D740 (CInt(&H1A), var_148, CStr(Format(CVar(Me.Recordset15.Fields.Item("BillAmount")), var_EC)), 1, 1, var_150, var_EC)
  loc_14F7AA0:       var_148.Caption = &H11
  loc_14F7ACE:       var_EC = CVar("SELECT P.RoomType+P.RoomCat+SPACE(5-LEN(P.RoomCat))+P.RoomNo+SPACE(5-LEN(P.RoomNo)),code " & " FROM PAYCHARGEH AS P LEFT JOIN RoomMast AS R ON (P.RoomNo = R.Code) AND (P.RoomCat = R.RoomCat) AND (P.RoomType = R.Type) Where DocId='") 'String
  loc_14F7AFE:       var_FC = var_EC & Me.Recordset15.Fields.Item("DocID").Value 
  loc_14F7B07:       var_11C = var_FC & "' And SNo=" 
  loc_14F7B3D:       var_1A0 = (Me.Recordset15.Fields.Item("SNo").Value + 1)
  loc_14F7B45:       var_9C = CStr(var_11C & var_1A0)
  loc_14F7B4F:       unk_512D45.Execute var_9C, var_1C0, -1
  loc_14F7B5A:       Set var_8C = var_1C4
  loc_14F7B94:       If (var_8C.RecordCount > 0) Then
  loc_14F7BD8:         var_EC = CVar(Proc_6_38_E69628(var_8C.Fields.Item(0).Value, &H12, CVar(CLng(var_8E)), var_1C4, CVar(CLng(var_8E)))) 'String
  loc_14F7BDF:         LateIdCallSt
  loc_14F7C36:         var_EC = CVar(Proc_6_38_E69628(var_8C.Fields.Item(1).Value, &H13, CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_14F7C3D:         LateIdCallSt
  loc_14F7C53:       End If
  loc_14F7C55:       Set var_150 = Nothing 
  loc_14F7C5F:       var_8E = (var_8E + 1)
  loc_14F7C68:       Me.Recordset15.MoveNext
  loc_14F7C6D:       GoTo loc_14F72B1
  loc_14F7C70:     End If
  loc_14F7C83:     Me.FGrid.FixedRows = 1
  loc_14F7C8B:   End If
  loc_14F7C99:   Me.FGrid.Redraw = True
  loc_14F7CA7:   If (var_8E = 1) Then
  loc_14F7CBD:     Me.FGrid.Rows = 1
  loc_14F7CE1:     var_DC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0, var_8E, var_150, var_EC))) 'String
  loc_14F7CE9:     Set var_CC = Me.FGrid
  loc_14F7D16:     Me.FGrid.FixedRows = 1
  loc_14F7D1E:   End If
  loc_14F7D1E:   Call Proc_138_80_10A83F8(FGrid.DispID_10000, var_DC, var_150, var_EC)
  loc_14F7D23:   Call Proc_138_81_13ADB64(var_EC, var_150)
  loc_14F7D28: End If
  loc_14F7D2D: Set var_88 = Nothing
  loc_14F7D30: Exit Sub
  loc_14F7D31: ' Referenced from: 14F6F34
  loc_14F7D39: Set var_B8 = Err()
  loc_14F7D3F: Call 0.Method_arg_2C (var_9C)
  loc_14F7D60: MsgBox(CVar(var_9C), &H40, "Information", var_FC, var_11C)
  loc_14F7D73: Exit Sub
End Sub

Public Sub Proc_138_72_F96BEC
  'Data Table: 512D28
  loc_F96A8C: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_F96A9E:   Me.DGPayType.Visible = False
  loc_F96AA6: End If
  loc_F96AC2: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_F96AD4:   Me.DGPayType.Visible = False
  loc_F96ADC: End If
  loc_F96AF8: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_F96B0A:   Me.DGEmp.Visible = False
  loc_F96B12: End If
  loc_F96B2E: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_F96B40:   Me.DGTable.Visible = False
  loc_F96B48: End If
  loc_F96B64: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_F96B76:   Me.DGRoom.Visible = False
  loc_F96B7E: End If
  loc_F96B9A: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_F96BAC:   Me.DGCompany.Visible = False
  loc_F96BB4: End If
  loc_F96BD0: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F96BE2:   Me.FGPoint.Visible = False
  loc_F96BEA: End If
  loc_F96BEA: Exit Sub
End Sub

Public Sub Proc_138_73_E92908(arg_C) 'E92908
  'Data Table: 512D28
  Dim var_10C As TextBox
  loc_E9289C: Call Proc_138_72_F96BEC()
  loc_E928D8: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E928DB:   Call TopCtrl1_UnknownEvent_19()
  loc_E928E3: Else
  loc_E928ED:   Set var_108 = Me.Txt
  loc_E928F3:   Call 0.Method_Proc_138_73_E929080 (arg_C)
  loc_E928FB:   var_10C.SetFocus
  loc_E92907: End If
  loc_E92907: Exit Sub
End Sub

Public Sub Proc_138_74_1156C94
  'Data Table: 512D28
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
  loc_1156928: var_90 = global_116
  loc_115693F: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1156970: Set var_A8 = Me.Txt
  loc_1156976: Call 0.Method_Proc_138_74_1156C940 (CInt(2), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And "))
  loc_1156985: Proc_6_7_F26918(var_CC, CVar(var_AC), var_130)
  loc_115698D: var_EC = -1 & var_CC 
  loc_11569A1: Me.Txt.Execute CStr(var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC"), var_134, 
  loc_11569AC: Set var_8C = var_134
  loc_11569E8: If (var_8C.RecordCount > 0) Then
  loc_1156A27:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_1156A2A:     GoTo loc_1156AB7
  loc_1156A2D:   End If
  loc_1156A5E:   global_96 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_1156A89:   var_AC = var_8C.Fields.Item("start_srl_no")
  loc_1156A9E:   var_CC = (var_AC.Value + 1)
  loc_1156AA6:   global_100 = CInt(var_CC)
  loc_1156AB7:   ' Referenced from: 1156A2A
  loc_1156AE2:   var_BC = Space((5 - Len(var_90)))
  loc_1156AEA:   var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_AC.Value)
  loc_1156AFE:   var_EC = Space((5 - Len(global_96)))
  loc_1156B06:   var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And ") + var_EC)
  loc_1156B13:   var_130 = (var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC" + CVar(global_96))
  loc_1156B2C:   var_14C = Space((8 - Len(CStr(global_100))))
  loc_1156B34:   var_15C = (var_130 + var_14C)
  loc_1156B43:   var_17C = (var_15C + CVar(CStr(global_100)))
  loc_1156B4E:   global_92 = CStr(var_17C)
  loc_1156B84:   Me.LblVPrefix.Caption = global_96
  loc_1156B9D:   Set var_A8 = Me.Txt
  loc_1156BA3:   Call 0.Method_Proc_138_74_1156C940 (CInt(0), var_AC)
  loc_1156BAB:   var_AC.Text = global_92
  loc_1156BCD:   Set var_A8 = Me.Txt
  loc_1156BD3:   Call 0.Method_Proc_138_74_1156C940 (CInt(1), var_AC)
  loc_1156BDB:   var_AC.Text = CStr(global_100)
  loc_1156BF0:   var_88 = global_92
  loc_1156BF6: Else
  loc_1156BFC:   global_92 = vbNullString
  loc_1156C0F:   global_100 = 0
  loc_1156C22:   Me.LblVPrefix.Caption = vbNullString
  loc_1156C3B:   Set var_A8 = Me.Txt
  loc_1156C41:   Call 0.Method_Proc_138_74_1156C940 (CInt(0), var_AC, global_92)
  loc_1156C49:   var_AC.Text = global_100
  loc_1156C63:   Set var_A8 = Me.Txt
  loc_1156C69:   Call 0.Method_Proc_138_74_1156C940 (CInt(1), var_AC)
  loc_1156C71:   var_AC.Text = vbNullString
  loc_1156C83:   var_88 = global_92
  loc_1156C86: End If
  loc_1156C8B: Set var_8C = Nothing
  loc_1156C8E: Proc_138_74_1156C94 = global_100
End Sub

Public Sub Proc_138_75_11DA70C
  'Data Table: 512D28
  Dim var_A0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As String
  loc_11DA292: If (global_108 = 6) Then
  loc_11DA2A1:   Me.FrRest.Visible = True
  loc_11DA2A9: End If
  loc_11DA2BC: Me.FGrid.Cols = &H18
  loc_11DA2C4: var_A0 = CVar(CLng(9)) 'Long
  loc_11DA2C9: var_C0 = 0
  loc_11DA2D5: LateIdCallSt
  loc_11DA2E0: var_A0 = CVar(CLng(&HA)) 'Long
  loc_11DA2E5: var_C0 = 0
  loc_11DA2F1: LateIdCallSt
  loc_11DA2FC: var_A0 = CVar(CLng(&HB)) 'Long
  loc_11DA301: var_C0 = 0
  loc_11DA30D: LateIdCallSt
  loc_11DA318: var_A0 = CVar(CLng(&HC)) 'Long
  loc_11DA31D: var_C0 = 0
  loc_11DA329: LateIdCallSt
  loc_11DA334: var_A0 = CVar(CLng(&HD)) 'Long
  loc_11DA339: var_C0 = 0
  loc_11DA345: LateIdCallSt
  loc_11DA350: var_A0 = CVar(CLng(&HE)) 'Long
  loc_11DA355: var_C0 = 0
  loc_11DA361: LateIdCallSt
  loc_11DA36C: var_A0 = CVar(CLng(&HF)) 'Long
  loc_11DA371: var_C0 = 0
  loc_11DA37D: LateIdCallSt
  loc_11DA388: var_A0 = CVar(CLng(&H10)) 'Long
  loc_11DA38D: var_C0 = 0
  loc_11DA399: LateIdCallSt
  loc_11DA3A1: var_A0 = &H11
  loc_11DA3AA: var_C0 = 0
  loc_11DA3B6: LateIdCallSt
  loc_11DA3BE: var_A0 = 1
  loc_11DA3C7: var_C0 = 0
  loc_11DA3D3: LateIdCallSt
  loc_11DA3DB: var_A0 = 4
  loc_11DA3E4: var_C0 = 0
  loc_11DA3F0: LateIdCallSt
  loc_11DA3F8: var_A0 = 5
  loc_11DA401: var_C0 = 0
  loc_11DA40D: LateIdCallSt
  loc_11DA418: var_A0 = CVar(CLng(6)) 'Long
  loc_11DA41D: var_C0 = 0
  loc_11DA429: LateIdCallSt
  loc_11DA434: var_A0 = CVar(CLng(7)) 'Long
  loc_11DA439: var_C0 = 0
  loc_11DA445: LateIdCallSt
  loc_11DA44D: var_A0 = 2
  loc_11DA456: var_C0 = 0
  loc_11DA462: LateIdCallSt
  loc_11DA46A: var_A0 = 0
  loc_11DA473: var_C0 = &HFA
  loc_11DA47F: LateIdCallSt
  loc_11DA487: var_A0 = 0
  loc_11DA490: var_C0 = 0
  loc_11DA499: var_E0 = "SNo"
  loc_11DA4A2: LateIdCallSt
  loc_11DA4AA: var_A0 = 0
  loc_11DA4B3: var_C0 = &H1C2
  loc_11DA4BF: LateIdCallSt
  loc_11DA4C7: var_A0 = 0
  loc_11DA4D0: var_C0 = 3
  loc_11DA4D9: var_E0 = "Payment Type"
  loc_11DA4E2: LateIdCallSt
  loc_11DA4EA: var_A0 = 3
  loc_11DA4F9: var_C0 = CVar(CInt(1)) 'Integer
  loc_11DA500: LateIdCallSt
  loc_11DA508: var_A0 = 3
  loc_11DA511: var_C0 = &HDAC
  loc_11DA51D: LateIdCallSt
  loc_11DA525: var_A0 = 0
  loc_11DA52E: var_C0 = 8
  loc_11DA537: var_E0 = "Amount"
  loc_11DA540: LateIdCallSt
  loc_11DA548: var_A0 = 8
  loc_11DA557: var_C0 = CVar(CInt(7)) 'Integer
  loc_11DA55E: LateIdCallSt
  loc_11DA566: var_A0 = 8
  loc_11DA575: var_C0 = CVar(CInt(7)) 'Integer
  loc_11DA57C: LateIdCallSt
  loc_11DA584: var_A0 = 8
  loc_11DA58D: var_C0 = &H4EC
  loc_11DA599: LateIdCallSt
  loc_11DA5A1: var_A0 = 0
  loc_11DA5AA: var_C0 = &H11
  loc_11DA5B3: var_E0 = "Tip"
  loc_11DA5BC: LateIdCallSt
  loc_11DA5C4: var_A0 = &H11
  loc_11DA5D3: var_C0 = CVar(CInt(7)) 'Integer
  loc_11DA5DA: LateIdCallSt
  loc_11DA5E2: var_A0 = &H11
  loc_11DA5F1: var_C0 = CVar(CInt(7)) 'Integer
  loc_11DA5F8: LateIdCallSt
  loc_11DA600: var_A0 = &H11
  loc_11DA609: var_C0 = &H4EC
  loc_11DA615: LateIdCallSt
  loc_11DA61D: var_A0 = &H12
  loc_11DA626: var_C0 = 0
  loc_11DA632: LateIdCallSt
  loc_11DA63A: var_A0 = &H13
  loc_11DA643: var_C0 = 0
  loc_11DA64F: LateIdCallSt
  loc_11DA657: var_A0 = &H14
  loc_11DA660: var_C0 = 0
  loc_11DA66C: LateIdCallSt
  loc_11DA674: var_A0 = &H15
  loc_11DA67D: var_C0 = 0
  loc_11DA689: LateIdCallSt
  loc_11DA691: var_A0 = &H16
  loc_11DA69A: var_C0 = 0
  loc_11DA6A6: LateIdCallSt
  loc_11DA6AE: var_A0 = &H17
  loc_11DA6B7: var_C0 = 0
  loc_11DA6C3: LateIdCallSt
  loc_11DA6F5: LateIdCallSt
  loc_11DA703: Call Proc_138_76_F2AAC0(Me.FGrid, CVar(CStr(1)), 0, 1, Nothing, 0, 1, Nothing)
  loc_11DA708: Exit Sub
End Sub

Public Sub Proc_138_76_F2AAC0
  'Data Table: 512D28
  Dim Me As Recordset15
  Dim var_B8 As Variant
  loc_F2A9C2: Set global_72 = New 
  loc_F2A9D4: Me.Recordset15.CursorLocation = 3
  loc_F2A9F0: If (OpenType = 6) Then
  loc_F2AA16:   Me.Open "Select T.Code,T.Name As Name From RoomMast T where T.Type in('HL') Order by T.Code", CVar(MemVar_1F95044), 3
  loc_F2AA27:   Set var_8C = Me.LblName
  loc_F2AA2D:   Call 0.Method_Proc_138_76_F2AAC00 (&HC, var_B8, "Party Name")
  loc_F2AA35:   var_B8.Caption = 1
  loc_F2AA51:   Set var_8C = Me.DGTable
  loc_F2AA70:   DGTable.DispID_69.Item(1).Caption = "Party Name"
  loc_F2AA87:   global_144 = "HALL"
  loc_F2AA91:   global_148 = "HS"
  loc_F2AA95: End If
  loc_F2AA9E: CVarUnk
  loc_F2AAA3: VerifyVarObj
  loc_F2AAA9: Set var_8C = Me.DGTable
  loc_F2AAAF: LateIdStAd
  loc_F2AABD: Exit Sub
End Sub

Public Sub Proc_138_77_10DFFF0(arg_C) '10DFFF0
  'Data Table: 512D28
  Dim var_98 As Frame
  Dim var_A0 As Variant
  Dim var_A8 As TextBox
  loc_10DFCEC: Me.FrChqDet.Visible = False
  loc_10DFD00: Me.FrRem.Visible = False
  loc_10DFD14: Me.FrCCDet.Visible = False
  loc_10DFD28: Me.FrEmp.Visible = False
  loc_10DFD3C: Me.FrComp.Visible = False
  loc_10DFD50: Me.FrSendRoom.Visible = False
  loc_10DFD6A: If (global_108 = 6) Then
  loc_10DFD70:   var_90 = arg_C
  loc_10DFD7B:   If (var_90 = "Cheque") Then
  loc_10DFD8A:     Me.FrChqDet.Visible = True
  loc_10DFD9E:     Me.FrRem.Visible = True
  loc_10DFDE0:     Me.FrRem.Top = ((Me.FrChqDet.Top + Me.FrChqDet.Height) + CDbl(&HF))
  loc_10DFDF1:   Else
  loc_10DFDF9:     If (var_90 = "Credit Card") Then
  loc_10DFE08:       Me.FrCCDet.Visible = True
  loc_10DFE1C:       Me.FrRem.Visible = False
  loc_10DFE27:     Else
  loc_10DFE2F:       If (var_90 = "Staff") Then
  loc_10DFE3E:         Me.FrEmp.Visible = True
  loc_10DFE52:         Me.FrRem.Visible = True
  loc_10DFE94:         Me.FrRem.Top = ((Me.FrEmp.Top + Me.FrEmp.Height) + CDbl(&HF))
  loc_10DFEA5:       Else
  loc_10DFEAD:         If (var_90 = "Company") Then
  loc_10DFEBC:           Me.FrComp.Visible = True
  loc_10DFED0:           Me.FrRem.Visible = True
  loc_10DFF0C:           Set var_A0 = Me.FrRem
  loc_10DFF12:           var_A0.Top = ((Me.FrComp.Top + Me.FrComp.Height) + CDbl(&HF))
  loc_10DFF23:         Else
  loc_10DFF2B:           If (var_90 = "Room") Then
  loc_10DFF3A:             Me.FrSendRoom.Visible = True
  loc_10DFF4E:             Me.FrRem.Visible = False
  loc_10DFF59:           Else
  loc_10DFF65:             Me.FrRem.Visible = True
  loc_10DFF7B:             Set var_98 = Me.Txt
  loc_10DFF81:             Call 0.Method_Proc_138_77_10DFFF00 (CInt(&H11), var_A0)
  loc_10DFF9C:             Set var_A4 = Me.Txt
  loc_10DFFA2:             Call 0.Method_Proc_138_77_10DFFF00 (CInt(&H11), var_A8)
  loc_10DFFDB:             Me.FrRem.Top = (((Me.FrRest.Top + var_A0.Top) + var_A8.Height) + CDbl(&HF))
  loc_10DFFEF:           End If
  loc_10DFFEF:         End If
  loc_10DFFEF:       End If
  loc_10DFFEF:     End If
  loc_10DFFEF:   End If
  loc_10DFFEF: End If
  loc_10DFFEF: Exit Sub
End Sub

Public Sub Proc_138_78_14AE6F4
  'Data Table: 512D28
  Dim var_90 As Variant
  Dim var_EC As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_8C As Variant
  Dim var_10C As Variant
  Dim var_BC As Variant
  Dim var_94 As String
  Dim var_86 As Integer
  Dim var_124 As Long
  Dim var_11C As Long
  Dim Me As Variant
  loc_14ADA16: Set var_8C = Me.Txt
  loc_14ADA1C: Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H11), var_90)
  loc_14ADA40: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_14ADA51:   Set var_8C = Me.Txt
  loc_14ADA57:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H11), var_90)
  loc_14ADA5F:   var_90.Text = vbNullString
  loc_14ADA6B: End If
  loc_14ADA79: Set var_8C = Me.Txt
  loc_14ADA7F: Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H11), var_90)
  loc_14ADA99: If (var_90.Visible = &HFF) Then
  loc_14ADAA7:   Set var_8C = Me.Txt
  loc_14ADAAD:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H11))
  loc_14ADAB5:   var_94 = "Amount"
  loc_14ADAD6:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14ADAD9:     Exit Sub
  loc_14ADADA:   End If
  loc_14ADADA: End If
  loc_14ADAF3: Set var_8C = Me.Txt
  loc_14ADAF9: Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H18), var_90, var_94)
  loc_14ADB01: (global_152 = "Staff") = var_90.Text
  loc_14ADB19: If (var_90 And (var_94 = vbNullString)) Then
  loc_14ADB27:   Set var_8C = Me.Txt
  loc_14ADB2D:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H18))
  loc_14ADB35:   var_94 = "Staff Name"
  loc_14ADB56:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14ADB59:     Exit Sub
  loc_14ADB5A:   End If
  loc_14ADB5A: End If
  loc_14ADB73: Set var_8C = Me.Txt
  loc_14ADB79: Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H1E), var_90, var_94)
  loc_14ADB81: (global_152 = "Room") = var_90.Text
  loc_14ADB99: If (var_90 And (var_94 = vbNullString)) Then
  loc_14ADBA7:   Set var_8C = Me.Txt
  loc_14ADBAD:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H1E))
  loc_14ADBB5:   var_94 = "Room Name"
  loc_14ADBD6:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14ADBD9:     Exit Sub
  loc_14ADBDA:   End If
  loc_14ADBDA: End If
  loc_14ADBF3: Set var_8C = Me.Txt
  loc_14ADBF9: Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H1F), var_90, var_94)
  loc_14ADC01: (global_152 = "Company") = var_90.Text
  loc_14ADC19: If (var_90 And (var_94 = vbNullString)) Then
  loc_14ADC27:   Set var_8C = Me.Txt
  loc_14ADC2D:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H1F))
  loc_14ADC35:   var_94 = "Company Name"
  loc_14ADC56:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14ADC59:     Exit Sub
  loc_14ADC5A:   End If
  loc_14ADC5A: End If
  loc_14ADC65: If (global_56 = "Y") Then
  loc_14ADC81:   Set var_8C = Me.Txt
  loc_14ADC87:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H12), var_90, var_94)
  loc_14ADC8F:   (global_152 = "Credit Card") = var_90.Text
  loc_14ADCA7:   If (var_90 And (var_94 = vbNullString)) Then
  loc_14ADCB5:     Set var_8C = Me.Txt
  loc_14ADCBB:     Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H12))
  loc_14ADCC3:     var_94 = "Credit Card No."
  loc_14ADCE4:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14ADCE7:       Exit Sub
  loc_14ADCE8:     End If
  loc_14ADCE8:   End If
  loc_14ADD01:   Set var_8C = Me.Txt
  loc_14ADD07:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H13), var_90, var_94)
  loc_14ADD0F:   (global_152 = "Credit Card") = var_90.Text
  loc_14ADD27:   If (var_90 And (var_94 = vbNullString)) Then
  loc_14ADD35:     Set var_8C = Me.Txt
  loc_14ADD3B:     Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H13))
  loc_14ADD64:     If (Proc_6_27_EA61EC(var_90, "Holder's Name") = 0) Then
  loc_14ADD67:       Exit Sub
  loc_14ADD68:     End If
  loc_14ADD68:   End If
  loc_14ADD82:   Set var_8C = Me.Txt
  loc_14ADD88:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(3), var_90)
  loc_14ADDBB:   If CBool((global_152 = "Credit Card") And (Trim(CVar(var_90)) = vbNullString)) Then
  loc_14ADDC9:     Set var_8C = Me.Txt
  loc_14ADDCF:     Call 0.Method_Proc_138_78_14AE6F40 (CInt(3), var_90)
  loc_14ADDD7:     var_94 = "Batch No"
  loc_14ADDF8:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14ADDFB:       Exit Sub
  loc_14ADDFC:     End If
  loc_14ADDFC:   End If
  loc_14ADDFC: End If
  loc_14ADE15: Set var_8C = Me.Txt
  loc_14ADE1B: Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H15), var_90, var_94)
  loc_14ADE23: (global_152 = "Cheque") = var_90.Text
  loc_14ADE3B: If (var_90 And (var_94 = vbNullString)) Then
  loc_14ADE49:   Set var_8C = Me.Txt
  loc_14ADE4F:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H15))
  loc_14ADE57:   var_94 = "Cheque No."
  loc_14ADE78:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14ADE7B:     Exit Sub
  loc_14ADE7C:   End If
  loc_14ADE7C: End If
  loc_14ADE95: Set var_8C = Me.Txt
  loc_14ADE9B: Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H16), var_90, var_94)
  loc_14ADEA3: (global_152 = "Cheque") = var_90.Text
  loc_14ADEBB: If (var_90 And (var_94 = vbNullString)) Then
  loc_14ADEC9:   Set var_8C = Me.Txt
  loc_14ADECF:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H16))
  loc_14ADEF8:   If (Proc_6_27_EA61EC(var_90, "Cheque Dt.") = 0) Then
  loc_14ADEFB:     Exit Sub
  loc_14ADEFC:   End If
  loc_14ADEFC: End If
  loc_14ADF05: If (global_164 = 0) Then
  loc_14ADF21:   var_CC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14ADF44:   var_94 = CStr(Me.FGrid.TextMatrix))
  loc_14ADF5D:   If (var_94 <> vbNullString) Then
  loc_14ADF7C:     var_AC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0, 3))) 'String
  loc_14ADF84:     Set var_90 = Me.FGrid
  loc_14ADF9E:   End If
  loc_14ADFB8:   var_86 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_14ADFC4: Else
  loc_14ADFD8:   var_86 = CInt(CLng(Me.FGrid.Row))
  loc_14ADFE1: End If
  loc_14ADFEC: var_124 = OpenType
  loc_14ADFF8: If (var_124 = 6) Then
  loc_14ADFFF:   Set var_128 = Me.FGrid
  loc_14AE022:   Set var_8C = Me.Txt
  loc_14AE028:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&HF), var_90, var_94, 1, CVar(CLng(var_86)), var_124)
  loc_14AE030:   var_86 = var_90.Tag
  loc_14AE038:   var_AC = CVar(var_94) 'String
  loc_14AE03F:   LateIdCallSt
  loc_14AE055:   var_CC = CVar(CLng(var_86)) 'Long
  loc_14AE05A:   var_10C = 2
  loc_14AE070:   LateIdCallSt
  loc_14AE098:   Set var_8C = Me.Txt
  loc_14AE09E:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&HF), var_90, var_94, 3, CVar(CLng(var_86)), var_128, global_152)
  loc_14AE0A6:   var_10C = var_90.Text
  loc_14AE0AE:   var_AC = CVar(var_94) 'String
  loc_14AE0B5:   LateIdCallSt
  loc_14AE0CB:   var_CC = CVar(CLng(var_86)) 'Long
  loc_14AE0D0:   var_10C = 4
  loc_14AE0E6:   LateIdCallSt
  loc_14AE0F2:   var_CC = CVar(CLng(var_86)) 'Long
  loc_14AE0F7:   var_10C = 5
  loc_14AE10D:   LateIdCallSt
  loc_14AE134:   Set var_8C = Me.Txt
  loc_14AE13A:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H10), var_90, var_94, CVar(CLng(6)), CVar(CLng(var_86)), var_128, global_148)
  loc_14AE142:   var_10C = var_90.Tag
  loc_14AE151:   LateIdCallSt
  loc_14AE182:   Set var_8C = Me.Txt
  loc_14AE188:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H10), var_90, var_94, CVar(CLng(7)), CVar(CLng(var_86)), var_128, CVar(var_94))
  loc_14AE190:   var_CC = var_90.Text
  loc_14AE198:   var_AC = CVar(var_94) 'String
  loc_14AE19F:   LateIdCallSt
  loc_14AE1D1:   Set var_8C = Me.Txt
  loc_14AE1D7:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H11), var_90, var_94, 8, CVar(CLng(var_86)), var_128)
  loc_14AE1DF:   var_AC = var_90.Text
  loc_14AE1E7:   var_AC = CVar(var_94) 'String
  loc_14AE1EE:   LateIdCallSt
  loc_14AE21F:   Set var_8C = Me.Txt
  loc_14AE225:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H12), var_90, var_94, CVar(CLng(9)), CVar(CLng(var_86)), var_128)
  loc_14AE22D:   var_AC = var_90.Text
  loc_14AE235:   var_AC = CVar(var_94) 'String
  loc_14AE23C:   LateIdCallSt
  loc_14AE26D:   Set var_8C = Me.Txt
  loc_14AE273:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H13), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_128)
  loc_14AE27B:   var_AC = var_90.Text
  loc_14AE283:   var_AC = CVar(var_94) 'String
  loc_14AE28A:   LateIdCallSt
  loc_14AE2BB:   Set var_8C = Me.Txt
  loc_14AE2C1:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H14), var_90, var_94, CVar(CLng(&HB)), CVar(CLng(var_86)), var_128)
  loc_14AE2C9:   var_AC = var_90.Text
  loc_14AE2D1:   var_AC = CVar(var_94) 'String
  loc_14AE2D8:   LateIdCallSt
  loc_14AE30A:   Set var_8C = Me.Txt
  loc_14AE310:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(3), var_90, var_94, &H17, CVar(CLng(var_86)), var_128)
  loc_14AE318:   var_AC = var_90.Text
  loc_14AE320:   var_AC = CVar(var_94) 'String
  loc_14AE327:   LateIdCallSt
  loc_14AE358:   Set var_8C = Me.Txt
  loc_14AE35E:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H15), var_90, var_94, CVar(CLng(&HC)), CVar(CLng(var_86)), var_128)
  loc_14AE366:   var_AC = var_90.Text
  loc_14AE36E:   var_AC = CVar(var_94) 'String
  loc_14AE375:   LateIdCallSt
  loc_14AE3A6:   Set var_8C = Me.Txt
  loc_14AE3AC:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H16), var_90, var_94, CVar(CLng(&HD)), CVar(CLng(var_86)), var_128)
  loc_14AE3B4:   var_AC = var_90.Text
  loc_14AE3BC:   var_AC = CVar(var_94) 'String
  loc_14AE3C3:   LateIdCallSt
  loc_14AE3F4:   Set var_8C = Me.Txt
  loc_14AE3FA:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H17), var_90, var_94, CVar(CLng(&HE)), CVar(CLng(var_86)), var_128)
  loc_14AE402:   var_AC = var_90.Text
  loc_14AE40A:   var_AC = CVar(var_94) 'String
  loc_14AE411:   LateIdCallSt
  loc_14AE442:   Set var_8C = Me.Txt
  loc_14AE448:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H18), var_90, var_94, CVar(CLng(&HF)), CVar(CLng(var_86)), var_128)
  loc_14AE450:   var_AC = var_90.Text
  loc_14AE458:   var_AC = CVar(var_94) 'String
  loc_14AE45F:   LateIdCallSt
  loc_14AE490:   Set var_8C = Me.Txt
  loc_14AE496:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H18), var_90, var_94, CVar(CLng(&H10)), CVar(CLng(var_86)), var_128)
  loc_14AE49E:   var_AC = var_90.Tag
  loc_14AE4A6:   var_AC = CVar(var_94) 'String
  loc_14AE4AD:   LateIdCallSt
  loc_14AE4DF:   Set var_8C = Me.Txt
  loc_14AE4E5:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H19), var_90, var_94, &H11, CVar(CLng(var_86)), var_128)
  loc_14AE4ED:   var_AC = var_90.Text
  loc_14AE4F5:   var_AC = CVar(var_94) 'String
  loc_14AE4FC:   LateIdCallSt
  loc_14AE52E:   Set var_8C = Me.Txt
  loc_14AE534:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H1E), var_90, var_94, &H12, CVar(CLng(var_86)), var_128)
  loc_14AE53C:   var_AC = var_90.Tag
  loc_14AE544:   var_AC = CVar(var_94) 'String
  loc_14AE54B:   LateIdCallSt
  loc_14AE57D:   Set var_8C = Me.Txt
  loc_14AE583:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H1E), var_90, var_94, &H13, CVar(CLng(var_86)), var_128)
  loc_14AE58B:   var_AC = var_90.Text
  loc_14AE593:   var_AC = CVar(var_94) 'String
  loc_14AE59A:   LateIdCallSt
  loc_14AE5CC:   Set var_8C = Me.Txt
  loc_14AE5D2:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H1F), var_90, var_94, &H14, CVar(CLng(var_86)), var_128)
  loc_14AE5DA:   var_AC = var_90.Tag
  loc_14AE5E2:   var_AC = CVar(var_94) 'String
  loc_14AE5E9:   LateIdCallSt
  loc_14AE604:   var_10C = &H15
  loc_14AE61B:   Set var_8C = Me.Txt
  loc_14AE621:   Call 0.Method_Proc_138_78_14AE6F40 (CInt(&H1F), var_90, var_94, var_10C, CVar(CLng(var_86)), var_128)
  loc_14AE629:   var_AC = var_90.Text
  loc_14AE631:   var_AC = CVar(var_94) 'String
  loc_14AE638:   LateIdCallSt
  loc_14AE655:   If (global_152 = "Room") Then
  loc_14AE65C:     var_EC = CVar(CLng(var_86)) 'Long
  loc_14AE661:     var_11C = &H16
  loc_14AE687:     var_90 = Me.Fields.Item("FolioNo")
  loc_14AE68F:     var_AC = var_90.Value
  loc_14AE698:     var_BC = CVar(CStr(var_AC)) 'String
  loc_14AE69F:     LateIdCallSt
  loc_14AE6B5:   End If
  loc_14AE6B7:   Set var_128 = Nothing 
  loc_14AE6BB: End If
  loc_14AE6BB: Call Proc_138_80_10A83F8(var_128, var_BC, var_11C, var_EC, var_128, var_AC)
  loc_14AE6C0: Call Proc_138_79_FFD8DC(var_128, global_144, var_10C)
  loc_14AE6D0: Set var_8C = Me.Txt
  loc_14AE6D6: Call 0.Method_Proc_138_78_14AE6F40 (CInt(&HF), var_90)
  loc_14AE6DE: var_90.SetFocus
  loc_14AE6EF: global_164 = 0
  loc_14AE6F2: Exit Sub
End Sub

Public Sub Proc_138_79_FFD8DC
  'Data Table: 512D28
  Dim var_8C As TextBox
  loc_FFD6DE: Set var_88 = Me.Txt
  loc_FFD6E4: Call 0.Method_Proc_138_79_FFD8DC0 (CInt(&HF), var_8C)
  loc_FFD6EC: var_8C.Text = vbNullString
  loc_FFD706: Set var_88 = Me.Txt
  loc_FFD70C: Call 0.Method_Proc_138_79_FFD8DC0 (CInt(&H11), var_8C)
  loc_FFD714: var_8C.Text = vbNullString
  loc_FFD72E: Set var_88 = Me.Txt
  loc_FFD734: Call 0.Method_Proc_138_79_FFD8DC0 (CInt(&H19), var_8C)
  loc_FFD73C: var_8C.Text = vbNullString
  loc_FFD756: Set var_88 = Me.Txt
  loc_FFD75C: Call 0.Method_Proc_138_79_FFD8DC0 (CInt(&H18), var_8C)
  loc_FFD764: var_8C.Text = vbNullString
  loc_FFD77E: Set var_88 = Me.Txt
  loc_FFD784: Call 0.Method_Proc_138_79_FFD8DC0 (CInt(&H17), var_8C)
  loc_FFD78C: var_8C.Text = vbNullString
  loc_FFD7A6: Set var_88 = Me.Txt
  loc_FFD7AC: Call 0.Method_Proc_138_79_FFD8DC0 (CInt(&H12), var_8C)
  loc_FFD7B4: var_8C.Text = vbNullString
  loc_FFD7CE: Set var_88 = Me.Txt
  loc_FFD7D4: Call 0.Method_Proc_138_79_FFD8DC0 (CInt(&H13), var_8C)
  loc_FFD7DC: var_8C.Text = vbNullString
  loc_FFD7F6: Set var_88 = Me.Txt
  loc_FFD7FC: Call 0.Method_Proc_138_79_FFD8DC0 (CInt(&H14), var_8C)
  loc_FFD804: var_8C.Text = vbNullString
  loc_FFD81E: Set var_88 = Me.Txt
  loc_FFD824: Call 0.Method_Proc_138_79_FFD8DC0 (CInt(3), var_8C)
  loc_FFD82C: var_8C.Text = vbNullString
  loc_FFD846: Set var_88 = Me.Txt
  loc_FFD84C: Call 0.Method_Proc_138_79_FFD8DC0 (CInt(&H15), var_8C)
  loc_FFD854: var_8C.Text = vbNullString
  loc_FFD86E: Set var_88 = Me.Txt
  loc_FFD874: Call 0.Method_Proc_138_79_FFD8DC0 (CInt(&H16), var_8C)
  loc_FFD87C: var_8C.Text = vbNullString
  loc_FFD896: Set var_88 = Me.Txt
  loc_FFD89C: Call 0.Method_Proc_138_79_FFD8DC0 (CInt(&H12), var_8C)
  loc_FFD8A4: var_8C.Text = vbNullString
  loc_FFD8BE: Set var_88 = Me.Txt
  loc_FFD8C4: Call 0.Method_Proc_138_79_FFD8DC0 (CInt(&H14), var_8C)
  loc_FFD8CC: var_8C.Text = vbNullString
  loc_FFD8D8: Exit Sub
End Sub

Public Sub Proc_138_80_10A83F8
  'Data Table: 512D28
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
  loc_10A8152: Set var_8C = Me.LTxt
  loc_10A8158: Call 0.Method_Proc_138_80_10A83F80 (CInt(&H1B), var_90)
  loc_10A8160: var_90.Caption = vbNullString
  loc_10A8191: For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A4 'Integer
  loc_10A81A5:   Set var_8C = Me.LTxt
  loc_10A81AB:   Call 0.Method_Proc_138_80_10A83F80 (CInt(&H1B), var_90)
  loc_10A81C7:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_10A81CC:   var_D8 = 8
  loc_10A81F2:   var_15C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10A8211:   var_110 = CVar((Val(var_90.Caption) + var_15C)) 'Double
  loc_10A822F:   Set var_144 = Me.LTxt
  loc_10A8235:   Call 0.Method_Proc_138_80_10A83F80 (CInt(&H1B), var_148, CStr(Format(var_110, "0.00")), 1, 1)
  loc_10A823D:   var_148.Caption = var_15C
  loc_10A8266: Next var_A4 'Integer
  loc_10A8279: Set var_8C = Me.LTxt
  loc_10A827F: Call 0.Method_Proc_138_80_10A83F80 (CInt(&H1A), var_90)
  loc_10A8287: var_A8 = var_90.Caption
  loc_10A82A5: Set var_EC = Me.LTxt
  loc_10A82AB: Call 0.Method_Proc_138_80_10A83F80 (CInt(&H1B), var_144)
  loc_10A82B3: var_F0 = var_144.Caption
  loc_10A82DF: var_A0 = CVar((Val(var_A8) - Val(var_F0))) 'Double
  loc_10A82FD: Set var_148 = Me.LTxt
  loc_10A8303: Call 0.Method_Proc_138_80_10A83F80 (CInt(&H1C), var_160, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1)
  loc_10A830B: var_160.Caption = 1
  loc_10A833F: Set var_8C = Me.LTxt
  loc_10A8345: Call 0.Method_Proc_138_80_10A83F80 (CInt(&H1B), var_90, var_A8)
  loc_10A834D: var_15C = var_90.Caption
  loc_10A835A: var_154 = Val(var_A8)
  loc_10A836B: Set var_EC = Me.Txt
  loc_10A8371: Call 0.Method_Proc_138_80_10A83F80 (CInt(&H19), var_144, var_F0)
  loc_10A83A5: var_A0 = CVar((var_144.Text + Val(var_F0))) 'Double
  loc_10A83C3: Set var_148 = Me.LTxt
  loc_10A83C9: Call 0.Method_Proc_138_80_10A83F80 (CInt(&H1D), var_160, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1)
  loc_10A83D1: var_160.Caption = 1
  loc_10A83F7: Exit Sub
End Sub

Public Sub Proc_138_81_13ADB64
  'Data Table: 512D28
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As MSHFlexGrid
  Dim var_EC As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_158 As Variant
  Dim var_200 As TextBox
  loc_13AD24F: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AD254: var_C8 = 1
  loc_13AD28B: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_13AD292:   Set var_F4 = Me.FGrid
  loc_13AD2D2:   Set var_DC = Me.Txt
  loc_13AD2D8:   Call 0.Method_Proc_138_81_13ADB640 (CInt(&HF), var_F8, CStr(var_F4.TextMatrix)), 1)
  loc_13AD2E0:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_13AD30B:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AD310:   var_C8 = 2
  loc_13AD32D:   global_152 = CStr(var_F4.TextMatrix))
  loc_13AD356:   var_C8 = 3
  loc_13AD37B:   Set var_DC = Me.Txt
  loc_13AD381:   Call 0.Method_Proc_138_81_13ADB640 (CInt(&HF), var_F8, CStr(var_F4.TextMatrix)), var_C8, CVar(CLng(Me.FGrid.Row)))
  loc_13AD389:   var_F8.Text = var_C8
  loc_13AD3B4:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AD3B9:   var_C8 = 4
  loc_13AD3D6:   global_144 = CStr(var_F4.TextMatrix))
  loc_13AD3FA:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AD3FF:   var_C8 = 5
  loc_13AD41C:   global_148 = CStr(var_F4.TextMatrix))
  loc_13AD440:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AD469:   Set var_DC = Me.Txt
  loc_13AD46F:   Call 0.Method_Proc_138_81_13ADB640 (CInt(&H10), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(6)), var_A8, CVar(CLng(6)))
  loc_13AD477:   var_F8.Tag = var_A8
  loc_13AD4A2:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AD4AA:   var_C8 = CVar(CLng(7)) 'Long
  loc_13AD4E1:   var_158 = var_F4.TextMatrix)
  loc_13AD4F1:   Set var_F8 = Me.FGrid
  loc_13AD54F:   Set var_1FC = Me.Txt
  loc_13AD555:   Call 0.Method_Proc_138_81_13ADB640 (CInt(&H10), var_200, CStr(IIf((CStr(var_F4.TextMatrix)) = vbNullString), CVar(CStr(var_158)), CVar(CStr(var_F4.TextMatrix))))), CVar(CLng(7)), CVar(CLng(var_F8.Row)), var_158, CVar(CLng(6)))
  loc_13AD55D:   var_200.Text = CVar(CLng(Me.FGrid.Row))
  loc_13AD5A5:   var_C8 = 8
  loc_13AD5B1:   var_EC = var_F4.TextMatrix)
  loc_13AD5CA:   Set var_DC = Me.Txt
  loc_13AD5D0:   Call 0.Method_Proc_138_81_13ADB640 (CInt(&H11), var_F8, CStr(var_EC), var_C8, CVar(CLng(Me.FGrid.Row)), var_EC)
  loc_13AD5D8:   var_F8.Text = var_C8
  loc_13AD603:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AD62C:   Set var_DC = Me.Txt
  loc_13AD632:   Call 0.Method_Proc_138_81_13ADB640 (CInt(&H12), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(9)), var_A8)
  loc_13AD63A:   var_F8.Text = var_A8
  loc_13AD68E:   Set var_DC = Me.Txt
  loc_13AD694:   Call 0.Method_Proc_138_81_13ADB640 (CInt(&H13), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HA)))
  loc_13AD69C:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13AD6F0:   Set var_DC = Me.Txt
  loc_13AD6F6:   Call 0.Method_Proc_138_81_13ADB640 (CInt(&H14), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HB)))
  loc_13AD6FE:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13AD753:   Set var_DC = Me.Txt
  loc_13AD759:   Call 0.Method_Proc_138_81_13ADB640 (CInt(3), var_F8, CStr(var_F4.TextMatrix)), &H17)
  loc_13AD761:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13AD7B5:   Set var_DC = Me.Txt
  loc_13AD7BB:   Call 0.Method_Proc_138_81_13ADB640 (CInt(&H15), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HC)))
  loc_13AD7C3:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13AD817:   Set var_DC = Me.Txt
  loc_13AD81D:   Call 0.Method_Proc_138_81_13ADB640 (CInt(&H16), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HD)))
  loc_13AD825:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13AD879:   Set var_DC = Me.Txt
  loc_13AD87F:   Call 0.Method_Proc_138_81_13ADB640 (CInt(&H17), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HE)))
  loc_13AD887:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13AD8DB:   Set var_DC = Me.Txt
  loc_13AD8E1:   Call 0.Method_Proc_138_81_13ADB640 (CInt(&H18), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HF)))
  loc_13AD8E9:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13AD93D:   Set var_DC = Me.Txt
  loc_13AD943:   Call 0.Method_Proc_138_81_13ADB640 (CInt(&H18), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H10)))
  loc_13AD94B:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_13AD9A0:   Set var_DC = Me.Txt
  loc_13AD9A6:   Call 0.Method_Proc_138_81_13ADB640 (CInt(&H19), var_F8, CStr(var_F4.TextMatrix)), &H11)
  loc_13AD9AE:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13ADA03:   Set var_DC = Me.Txt
  loc_13ADA09:   Call 0.Method_Proc_138_81_13ADB640 (CInt(&H1E), var_F8, CStr(var_F4.TextMatrix)), &H12)
  loc_13ADA11:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_13ADA66:   Set var_DC = Me.Txt
  loc_13ADA6C:   Call 0.Method_Proc_138_81_13ADB640 (CInt(&H1E), var_F8, CStr(var_F4.TextMatrix)), &H13)
  loc_13ADA74:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13ADAC9:   Set var_DC = Me.Txt
  loc_13ADACF:   Call 0.Method_Proc_138_81_13ADB640 (CInt(&H1F), var_F8, CStr(var_F4.TextMatrix)), &H14)
  loc_13ADAD7:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_13ADB2C:   Set var_DC = Me.Txt
  loc_13ADB32:   Call 0.Method_Proc_138_81_13ADB640 (CInt(&H1F), var_F8, CStr(var_F4.TextMatrix)), &H15)
  loc_13ADB3A:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13ADB57:   global_164 = &HFF
  loc_13ADB5C:   Set var_F4 = Nothing 
  loc_13ADB60: End If
  loc_13ADB60: Exit Sub
End Sub

Public Sub Proc_138_82_EE4348
  'Data Table: 512D28
  loc_EE4296: On Error Goto loc_EE42DC
  loc_EE42AE: Call 0.Method_arg_18C (var_8C)
  loc_EE42B6: Call var_8C.Show
  loc_EE42CB: Call 0.Method_arg_188 (var_B0)
  loc_EE42D3: var_88 = var_B0
  loc_EE42D6: Proc_138_82_EE4348 = 1
  loc_EE42DC: ' Referenced from: EE4296
  loc_EE42E4: Set var_8C = Err()
  loc_EE42EA: Call 0.Method_arg_1C (var_B4)
  loc_EE42FB: If (var_B4 <> 0) Then
  loc_EE4306:   Set var_8C = Err()
  loc_EE430C:   Call 0.Method_arg_2C (var_B0)
  loc_EE432D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE4340: End If
  loc_EE4340: Proc_138_82_EE4348 = 
End Sub

Public Sub Proc_138_83_F9B1E4
  'Data Table: 512D28
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_150 As Boolean
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_F0 As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim unk_512D65 As Connection15
  Dim Me As Recordset15
  loc_F9B0A5: var_150 = (CLng(Me.FGrid.Rows) > 1)
  loc_F9B0AD: Set var_9C = Me.FGrid
  loc_F9B0C2: var_BC = CVar((CLng(var_9C.Rows) - 1)) 'Long
  loc_F9B0D3: Set var_F0 = Me.FGrid
  loc_F9B0D9: var_100 = var_F0.TextMatrix)
  loc_F9B0E4: var_110 = CVar(CStr(var_100)) 'String
  loc_F9B11A: If CBool(CVar(CLng(&H11)) And (Trim(var_110) = vbNullString)) Then
  loc_F9B11D:   Exit Sub
  loc_F9B11E: End If
  loc_F9B134: var_BC = "Are you sure delete record?"
  loc_F9B139: var_98 = var_BC
  loc_F9B155: If (MsgBox(var_98, &H14, "Delete...", var_100, var_110) = 7) Then
  loc_F9B158:   Exit Sub
  loc_F9B159: End If
  loc_F9B162: unk_512D65.BeginTrans var_164
  loc_F9B185: Set var_88 = Me.Txt
  loc_F9B18B: Call 0.Method_Proc_138_83_F9B1E40 (CInt(0), var_9C, var_168, "Delete From PAYCHARGEH Where Docid='", var_98)
  loc_F9B193: -1 = var_9C.Text
  loc_F9B1AC: unk_512D65.Execute var_F0 & var_168 & "'", var_BC, var_150
  loc_F9B1CC: unk_512D65.CommitTrans
  loc_F9B1DC: Me.Requery -1
  loc_F9B1E1: Exit Sub
End Sub
