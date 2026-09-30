VERSION 5.00
Begin VB.Form MemFacilityBilling
  Caption = "Member Facility Billing"
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
  ClientWidth = 4680
  ClientHeight = 3195
  LockControls = -1  'True
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 4680
    Height = 450
    TabIndex = 61
  End
  Begin CommandButton CmdRefreshCategory
    Caption = "Refresh Category"
    Left = 9435
    Top = 795
    Width = 1725
    Height = 300
    Visible = 0   'False
    TabIndex = 58
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton CmdEditSave
    Caption = "Edit Save"
    Left = 390
    Top = 7755
    Width = 1185
    Height = 345
    Visible = 0   'False
    TabIndex = 57
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
  Begin TextBox TxtOtherCredit
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2910
    Top = 7245
    Width = 1350
    Height = 285
    Enabled = 0   'False
    TabIndex = 54
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin Frame FrAutoBillingYN
    Left = 6765
    Top = 1095
    Width = 5250
    Height = 420
    TabIndex = 51
    BorderStyle = 0 'None
    Begin CommandButton Command1
      Caption = "Auto Billing"
      Left = 3375
      Top = 45
      Width = 1860
      Height = 405
      TabIndex = 53
    End
    Begin ProgressBar ProgressBar1
      Left = 15
      Top = 90
      Width = 3345
      Height = 315
      TabIndex = 52
    End
  End
  Begin Frame FrAutoBilling
    Left = 6750
    Top = 1500
    Width = 7095
    Height = 2865
    Visible = 0   'False
    TabIndex = 40
    Begin DataGrid DGMemType
      Left = 1740
      Top = 735
      Width = 4725
      Height = 2010
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 41
    End
    Begin TextBox Txt
      Index = 10
      BackColor = &HFFFFFF&
      Left = 1725
      Top = 1005
      Width = 1425
      Height = 255
      Enabled = 0   'False
      TabIndex = 44
      BorderStyle = 0 'None
      MaxLength = 11
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
      Index = 9
      BackColor = &HFFFFFF&
      Left = 1725
      Top = 735
      Width = 1425
      Height = 255
      TabIndex = 43
      BorderStyle = 0 'None
      MaxLength = 11
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
      Index = 8
      BackColor = &HFFFFFF&
      Left = 1725
      Top = 465
      Width = 4425
      Height = 255
      TabIndex = 42
      BorderStyle = 0 'None
      MaxLength = 35
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
    Begin CommandButton CmdAutoBilling
      Caption = "Cancel"
      Index = 1
      Left = 4950
      Top = 2205
      Width = 1215
      Height = 360
      TabIndex = 48
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
    Begin CommandButton CmdAutoBilling
      Caption = "Start"
      Index = 0
      Left = 3750
      Top = 2205
      Width = 1200
      Height = 360
      TabIndex = 46
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
    Begin MSFlexGrid FGPoint1
      Left = 315
      Top = 1335
      Width = 1980
      Height = 1440
      Visible = 0   'False
      TabIndex = 45
    End
    Begin Label LblName
      Caption = "Bill Date"
      Index = 7
      ForeColor = &H0&
      Left = 150
      Top = 1020
      Width = 690
      Height = 240
      TabIndex = 50
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
      Caption = "MemberType"
      Index = 9
      ForeColor = &H0&
      Left = 150
      Top = 465
      Width = 1125
      Height = 240
      TabIndex = 49
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
      Caption = "For Month"
      Index = 6
      ForeColor = &H0&
      Left = 150
      Top = 750
      Width = 870
      Height = 240
      TabIndex = 47
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
  End
  Begin TextBox TxtCreditAmt
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2910
    Top = 6930
    Width = 1350
    Height = 285
    Enabled = 0   'False
    TabIndex = 38
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox TxtPreBalance
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2910
    Top = 6615
    Width = 1350
    Height = 285
    Enabled = 0   'False
    TabIndex = 35
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox TxtTaxAmt
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4860
    Top = 6705
    Width = 1050
    Height = 285
    Visible = 0   'False
    TabIndex = 34
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
  Begin TextBox TxtGt
    Index = 1
    ForeColor = &HFF0000&
    Left = 9450
    Top = 6630
    Width = 1185
    Height = 240
    Enabled = 0   'False
    TabIndex = 30
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox TxtPer
    Index = 1
    ForeColor = &HFF0000&
    Left = 8880
    Top = 6630
    Width = 330
    Height = 240
    Visible = 0   'False
    TabIndex = 29
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3960
    Top = 525
    Width = 1170
    Height = 285
    TabIndex = 27
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
    Index = 6
    BackColor = &HFFFFFF&
    Left = 13485
    Top = 5400
    Width = 1050
    Height = 255
    Visible = 0   'False
    TabIndex = 24
    BorderStyle = 0 'None
    MaxLength = 11
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1545
    Top = 525
    Width = 1170
    Height = 285
    TabIndex = 23
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
    Index = 4
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 30
    Width = 2310
    Height = 255
    TabIndex = 22
    BorderStyle = 0 'None
    MaxLength = 21
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGt1
    Index = 1
    ForeColor = &HFF0000&
    Left = 2370
    Top = 1905
    Width = 1185
    Height = 240
    Enabled = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox TxtGt2
    Index = 1
    ForeColor = &HFF0000&
    Left = 5970
    Top = 1905
    Width = 1185
    Height = 240
    Enabled = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox TxtGt3
    Index = 1
    ForeColor = &HFF0000&
    Left = 9495
    Top = 1905
    Width = 1185
    Height = 240
    Enabled = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3960
    Top = 1155
    Width = 1110
    Height = 285
    TabIndex = 3
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1545
    Top = 1155
    Width = 1425
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7665
    Top = 840
    Width = 1425
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1545
    Top = 840
    Width = 5190
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 5745
    Top = 9105
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    Left = 3015
    Top = 11130
    Width = 1845
    Height = 1815
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 105
      Top = 60
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 6
    End
  End
  Begin DataGrid DGMemName
    Left = 10050
    Top = 7485
    Width = 5055
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin MSHFlexGrid FGrid
    Left = 60
    Top = 8325
    Width = 10695
    Height = 2580
    Visible = 0   'False
    TabIndex = 9
  End
  Begin MSHFlexGrid FGCat
    Left = 120
    Top = 4200
    Width = 10680
    Height = 2355
    Visible = 0   'False
    TabIndex = 21
  End
  Begin BtnEnh CmdFill
    Left = 5400
    Top = 1200
    Width = 1350
    Height = 285
    TabIndex = 4
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 10995
    Top = 6705
    Width = 3375
    Height = 285
    TabIndex = 60
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
    Left = 10995
    Top = 6990
    Width = 3330
    Height = 255
    TabIndex = 59
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
  Begin Label LblDrCr1
    Caption = "."
    ForeColor = &H80&
    Left = 4260
    Top = 7260
    Width = 60
    Height = 255
    TabIndex = 56
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblPreBalance
    Caption = "Other Credit"
    Index = 1
    ForeColor = &HFF0000&
    Left = 150
    Top = 7260
    Width = 1155
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
  Begin Label LblCreditAmt
    Caption = "Credit Amt. (During Month)"
    Index = 0
    ForeColor = &HFF0000&
    Left = 150
    Top = 6945
    Width = 2520
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
  Begin Label LblDrCr
    Caption = "."
    ForeColor = &H80&
    Left = 4245
    Top = 6615
    Width = 60
    Height = 255
    TabIndex = 37
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblPreBalance
    Caption = "Previous Balance "
    Index = 0
    ForeColor = &HFF0000&
    Left = 150
    Top = 6630
    Width = 1725
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
  Begin Label LblDummy
    Caption = "Label2"
    Index = 1
    ForeColor = &HFF0000&
    Left = 6885
    Top = 6945
    Width = 750
    Height = 210
    Visible = 0   'False
    TabIndex = 33
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
  Begin Label LblAt
    Caption = "%"
    Index = 1
    ForeColor = &HFF0000&
    Left = 9255
    Top = 6630
    Width = 135
    Height = 225
    Visible = 0   'False
    TabIndex = 32
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCap
    Caption = "Total"
    Index = 1
    ForeColor = &HFF0000&
    Left = 6915
    Top = 6630
    Width = 480
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
    Caption = "Vdate"
    Index = 5
    ForeColor = &HFF0000&
    Left = 3120
    Top = 540
    Width = 555
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 12600
    Top = 5400
    Width = 690
    Height = 240
    Visible = 0   'False
    TabIndex = 26
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Vr No."
    Index = 4
    ForeColor = &HFF0000&
    Left = 105
    Top = 525
    Width = 585
    Height = 240
    TabIndex = 25
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
    Caption = "         Facility Details                                  Revenues                                       POS Bills"
    BackColor = &HFF8080&
    ForeColor = &H80000014&
    Left = 90
    Top = 1515
    Width = 10695
    Height = 285
    TabIndex = 20
  End
  Begin Line Line2
    BorderColor = &HFF0000&
    X1 = 3675
    Y1 = 1875
    X2 = 3675
    Y2 = 6585
  End
  Begin Line Line1
    BorderColor = &HFF0000&
    X1 = 7275
    Y1 = 1875
    X2 = 7275
    Y2 = 6585
  End
  Begin Shape Shape1
    BorderColor = &HFF8080&
    Left = 120
    Top = 1830
    Width = 10680
    Height = 4740
    BorderWidth = 2
  End
  Begin Label LblCap1
    Caption = "Label2"
    Index = 1
    ForeColor = &HFF0000&
    Left = 240
    Top = 1905
    Width = 2130
    Height = 225
    Visible = 0   'False
    TabIndex = 19
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCap2
    Caption = "Label2"
    Index = 1
    ForeColor = &HFF0000&
    Left = 3825
    Top = 1905
    Width = 2145
    Height = 240
    Visible = 0   'False
    TabIndex = 18
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCap3
    Caption = "Label2"
    Index = 1
    ForeColor = &HFF0000&
    Left = 7410
    Top = 1905
    Width = 2085
    Height = 225
    Visible = 0   'False
    TabIndex = 17
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Bill Date"
    Index = 3
    ForeColor = &HFF0000&
    Left = 3120
    Top = 1200
    Width = 810
    Height = 240
    TabIndex = 13
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
    Caption = "Month"
    Index = 2
    ForeColor = &HFF0000&
    Left = 105
    Top = 1215
    Width = 585
    Height = 240
    TabIndex = 12
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
    Caption = "Card No"
    Index = 1
    ForeColor = &HFF0000&
    Left = 6810
    Top = 900
    Width = 765
    Height = 240
    TabIndex = 11
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
    Caption = "Member Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 105
    Top = 840
    Width = 1395
    Height = 240
    TabIndex = 10
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

Attribute VB_Name = "MemFacilityBilling"

Private MasterFormExit As Integer

Private Sub DGMemName_UnknownEvent_9 'F50CB4
  'Data Table: 5571BC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F50BAB: Me.DGMemName.Visible = False
  loc_F50BCA: If (Me.RecordCount > 0) Then
  loc_F50C09:   Set var_B4 = Me.Txt
  loc_F50C0F:   Call 0.Method_DGMemName_UnknownEvent_90 (CInt(0), var_B8)
  loc_F50C17:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F50C4A:   var_B0 = Me.Fields.Item("Code")
  loc_F50C69:   Set var_B4 = Me.Txt
  loc_F50C6F:   Call 0.Method_DGMemName_UnknownEvent_90 (CInt(0), var_B8)
  loc_F50C77:   var_B8.Tag = CStr(var_B0.Value)
  loc_F50C8D: End If
  loc_F50C98: Set var_A8 = Me.Txt
  loc_F50C9E: Call 0.Method_DGMemName_UnknownEvent_90 (CInt(0))
  loc_F50CA6: var_B0.SetFocus
  loc_F50CB2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F10050
  'Data Table: 5571BC
  Dim var_88 As String
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F0FF5C: On Error Goto loc_F10048
  loc_F0FF82: Call Proc_279_52_F634A0(Proc_5_1_100EC1C("ADD", Me))
  loc_F0FF8D: Call Proc_279_50_121FB34(global_104)
  loc_F0FF97: var_88 = CStr(MemVar_1F950EC)
  loc_F0FFA5: Set var_8C = Me.Txt
  loc_F0FFAB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(7), var_94)
  loc_F0FFB3: var_94.Text = var_88
  loc_F0FFC8: Call Proc_279_44_1101798(MemVar_1F95044)
  loc_F0FFDB: Set var_8C = Me.Txt
  loc_F0FFE1: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_94)
  loc_F0FFE9: var_94.Text = var_88
  loc_F10003: Set var_8C = Me.Txt
  loc_F10009: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_F10011: var_94.SetFocus
  loc_F1002A: Me.LblUser.Caption = vbNullString
  loc_F1003F: Me.LblLDt.Caption = vbNullString
  loc_F10047: Exit Sub
  loc_F10048: ' Referenced from: F0FF5C
  loc_F10048: Proc_6_60_E63754(var_88)
  loc_F1004D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9AF58
  'Data Table: 5571BC
  loc_E9AEE0: On Error Goto loc_E9AF51
  loc_E9AF1A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9AF40:   Call Proc_279_52_F634A0(Proc_5_1_100EC1C("INI", Me))
  loc_E9AF4B:   Call Proc_279_51_19910DC(global_104)
  loc_E9AF50: End If
  loc_E9AF50: Exit Sub
  loc_E9AF51: ' Referenced from: E9AEE0
  loc_E9AF51: Proc_6_60_E63754()
  loc_E9AF56: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '115D084
  'Data Table: 5571BC
  Dim var_96 As Integer
  Dim unk_5571D7 As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_115CCD8: On Error Goto loc_115D02A
  loc_115CCE9: If (Proc_183_56_FE8B08(global_104) = &HFF) Then
  loc_115CCEC:   Exit Sub
  loc_115CCED: End If
  loc_115CD24: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_115CD29:   var_96 = 0
  loc_115CD35:   unk_5571D7.BeginTrans var_11C
  loc_115CD3C:   var_96 = &HFF
  loc_115CD50:   var_94 = Me.Bookmark 'Variant
  loc_115CDAA:   unk_5571D7.Execute CStr("Delete From Ledger Where DocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_115CE1C:   unk_5571D7.Execute CStr("Delete From MemBill Where DocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_115CE8E:   unk_5571D7.Execute CStr("Delete From MemBill1 Where DocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_115CF00:   unk_5571D7.Execute CStr("Delete From MemBill2 Where DocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_115CF64:   var_F8 = "Delete From MemSunTran Where DocId='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_115CF68:   var_128 = CStr(var_F8)
  loc_115CF72:   unk_5571D7.Execute var_128, var_118, -1
  loc_115CF94:   unk_5571D7.CommitTrans
  loc_115CF9B:   var_96 = 0
  loc_115CFA9:   Me.Requery -1
  loc_115CFC9:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_115CFD6:     Me.Bookmark = var_94
  loc_115CFDE:   Else
  loc_115CFF2:     If (Me.EOF = 0) Then
  loc_115CFFB:       Me.MoveLast
  loc_115D000:     End If
  loc_115D000:   End If
  loc_115D000:   Call Proc_279_51_19910DC(var_96, var_12C, var_12C, var_12C)
  loc_115D021:   Proc_5_0_1107AD0(&HFF, Me, global_104, 0)
  loc_115D029: End If
  loc_115D029: Exit Sub
  loc_115D02A: ' Referenced from: 115CCD8
  loc_115D030: If (var_96 = &HFF) Then
  loc_115D039:   unk_5571D7.RollbackTrans
  loc_115D03E: End If
  loc_115D046: Set var_120 = Err()
  loc_115D04C: Call 0.Method_arg_2C (var_128, var_12C, var_12C)
  loc_115D06D: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_115D080: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F86D74
  'Data Table: 5571BC
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F86C24: On Error Goto loc_F86D2E
  loc_F86C35: If (Proc_183_55_FE8490(global_104) = &HFF) Then
  loc_F86C38:   Exit Sub
  loc_F86C39: End If
  loc_F86C4E: var_88 = "EDIT"
  loc_F86C5C: Call Proc_279_52_F634A0(Proc_5_1_100EC1C(var_88, Me))
  loc_F86C74: Set var_8C = Me.Txt
  loc_F86C7A: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_94)
  loc_F86C82: var_94.Enabled = False
  loc_F86C9B: Set var_8C = Me.Txt
  loc_F86CA1: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(7), var_94)
  loc_F86CA9: var_94.Enabled = False
  loc_F86CC2: Set var_8C = Me.Txt
  loc_F86CC8: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F86CD0: var_94.Enabled = False
  loc_F86CE9: Set var_8C = Me.Txt
  loc_F86CEF: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F86CF7: var_94.Enabled = False
  loc_F86D10: Me.LblUser.Caption = vbNullString
  loc_F86D25: Me.LblLDt.Caption = vbNullString
  loc_F86D2D: Exit Sub
  loc_F86D2E: ' Referenced from: F86C24
  loc_F86D36: Set var_8C = Err()
  loc_F86D3C: Call 0.Method_arg_2C (var_88)
  loc_F86D5D: MsgBox(CVar(var_88), &H30, " Editing Error ", var_E4, var_104)
  loc_F86D70: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1813C
  'Data Table: 5571BC
  loc_E18131: Me.Global.Unload Me
  loc_E18139: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EE5F48
  'Data Table: 5571BC
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EE5E94: On Error Goto loc_EE5F40
  loc_EE5EAE: If (Me.RecordCount <= 0) Then
  loc_EE5EB7:   var_B8 = "Information"
  loc_EE5ED2:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EE5EE2:   Exit Sub
  loc_EE5EE3: End If
  loc_EE5EEA: var_10C = "Select M.DocId As Code, M.Vno As BillNo,S.Name As MemberName,M.CardNo,M.MthYear As ForMonth, convert(Varchar(11),M.VDate,106) As BillDate From membill M Left Join SubGroup S On M.MemCode=S.SubCode Where M.VPrefix=" & MemVar_1F9512C
  loc_EE5EFF: MemVar_1F950E4 = var_10C & " And (M.LOGSITE_CODE='" & MemVar_1F95078 & "' or M.LOGSITE_CODE='HO') Order By DocId"
  loc_EE5F12: MemVar_1F95120 = Me
  loc_EE5F1F: Proc_6_126_F1C850("700,3000,700,900,1000")
  loc_EE5F3A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EE5F3F: Exit Sub
  loc_EE5F40: ' Referenced from: EE5E94
  loc_EE5F40: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EE5F45: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E30068
  'Data Table: 5571BC
  loc_E30058: Proc_5_0_1107AD0(&HFF, Me)
  loc_E30060: Call Proc_279_51_19910DC(global_104)
  loc_E30065: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E300C8
  'Data Table: 5571BC
  loc_E300B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E300C0: Call Proc_279_51_19910DC(global_104)
  loc_E300C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2FC48
  'Data Table: 5571BC
  Dim TopCtrl1_UnknownEvent_124FF As Double
  loc_E2FC38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2FC40: Call Proc_279_51_19910DC(global_104)
  loc_E2FC45: Exit Sub
  loc_E2FC46: TopCtrl1_UnknownEvent_124FF = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E30128
  'Data Table: 5571BC
  loc_E30118: Proc_5_0_1107AD0(&HFF, Me)
  loc_E30120: Call Proc_279_51_19910DC(global_104)
  loc_E30125: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'F6BDDC
  'Data Table: 5571BC
  Dim unk_5571D7 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Fields15
  Dim var_B0 As Variant
  Dim Me As Recordset15
  loc_F6BCA8: On Error Goto loc_F6BDD4
  loc_F6BCCF: unk_5571D7.Execute "Select * from MemEnviro where LogSite_Code='" & MemVar_1F95078 & "'", var_B0, -1
  loc_F6BD23: If (Proc_6_38_E69628(CVar(var_B4.Fields.Fields.Item("Bill_PrintType"))) = "W") Then
  loc_F6BD61:   Proc_272_1_19C7874(CStr(Me.Fields.Item("SearchCode").Value), "N")
  loc_F6BD7A: Else
  loc_F6BD98:   var_B4 = Me.Fields
  loc_F6BDB5:   Proc_272_2_1705054(CStr(var_B4.Item("SearchCode").Value), "N")
  loc_F6BDCB: End If
  loc_F6BDD0: Set var_88 = Nothing
  loc_F6BDD3: Exit Sub
  loc_F6BDD4: ' Referenced from: F6BCA8
  loc_F6BDD4: Proc_6_60_E63754(var_B4)
  loc_F6BDD9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0B8D4
  'Data Table: 5571BC
  Dim Me As Recordset15
  loc_E0B8CB: Me.Requery -1
  loc_E0B8D0: Exit Sub
  loc_E0B8D1: Result  End Sub 'Currency
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '16AA628
  'Data Table: 5571BC
  Dim var_9C As Variant
  Dim unk_5571D7 As Connection15
  Dim var_94 As TextBox
  Dim var_B8 As String
  Dim var_B0 As Variant
  Dim var_118 As TextBox
  Dim var_160 As Label
  Dim var_1AC As Variant
  Dim var_1F8 As Variant
  Dim var_244 As Variant
  Dim var_290 As Variant
  Dim var_2EC As Variant
  Dim var_338 As TextBox
  Dim var_65C As Double
  Dim var_3D4 As Variant
  Dim var_3B4 As Variant
  Dim var_3A4 As Variant
  Dim var_474 As Variant
  Dim var_59C As TextBox
  Dim var_664 As Double
  Dim var_5E8 As TextBox
  Dim var_66C As Double
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_CC As Variant
  Dim var_12C As Variant
  Dim var_15C As Variant
  Dim var_184 As Variant
  Dim var_194 As Variant
  Dim var_21C As Variant
  Dim var_23C As Variant
  Dim var_278 As Variant
  Dim var_288 As Variant
  Dim var_2B4 As Variant
  Dim var_31C As Variant
  Dim var_35C As Variant
  Dim var_36C As Variant
  Dim var_37C As Variant
  Dim var_404 As Variant
  Dim var_424 As Variant
  Dim var_434 As Variant
  Dim var_444 As Variant
  Dim var_454 As Variant
  Dim var_494 As Variant
  Dim var_4A4 As Variant
  Dim var_4C4 As Variant
  Dim var_504 As Variant
  Dim var_514 As Variant
  Dim var_524 As Variant
  Dim var_534 As Variant
  Dim var_56C As Variant
  Dim var_57C As Variant
  Dim var_5B0 As Variant
  Dim var_61C As Variant
  Dim var_90 As Variant
  Dim var_98 As Variant
  Dim var_11C As String
  Dim var_114 As Variant
  Dim var_E0 As Variant
  Dim var_1A8 As MSHFlexGrid
  Dim var_1F4 As MSHFlexGrid
  Dim var_680 As Variant
  Dim var_240 As MSHFlexGrid
  Dim var_6B0 As Variant
  Dim var_6D0 As Variant
  Dim var_710 As Variant
  Dim var_730 As Variant
  Dim var_28C As MSHFlexGrid
  Dim var_390 As Variant
  Dim var_5A0 As String
  Dim var_770 As Variant
  Dim var_790 As Variant
  Dim var_2D8 As MSHFlexGrid
  Dim var_5EC As String
  Dim var_2DC As MSHFlexGrid
  Dim var_330 As MSHFlexGrid
  Dim var_1B0 As String
  Dim var_484 As Variant
  Dim var_55C As Variant
  Dim var_650 As Variant
  Dim var_D0 As Variant
  Dim var_248 As String
  Dim var_A30 As Double
  Dim var_A38 As Double
  Dim var_8C As Recordset15
  Dim Me As Recordset15
  loc_16A8E4C: On Error Goto loc_16AA5D3
  loc_16A8E53: var_86 = CByte(0) 'Byte
  loc_16A8E62: Set var_90 = Me.Txt
  loc_16A8E68: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_16A8E91: If (Proc_6_27_EA61EC(var_94, "MemName Name") = 0) Then
  loc_16A8E9B:   Call Txt_GotFocus()
  loc_16A8EA0:   Exit Sub
  loc_16A8EA1: End If
  loc_16A8EAC: Set var_90 = Me.Txt
  loc_16A8EB2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_16A8EDB: If (Proc_6_27_EA61EC(var_94, "Card No") = 0) Then
  loc_16A8EE5:   Call Txt_GotFocus()
  loc_16A8EEA:   Exit Sub
  loc_16A8EEB: End If
  loc_16A8EF6: Set var_90 = Me.Txt
  loc_16A8EFC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94, CInt(1))
  loc_16A8F25: If (Proc_6_27_EA61EC(var_94, "For Month") = 0) Then
  loc_16A8F2F:   Call Txt_GotFocus()
  loc_16A8F34:   Exit Sub
  loc_16A8F35: End If
  loc_16A8F40: Set var_90 = Me.Txt
  loc_16A8F46: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_94, CInt(2))
  loc_16A8F57: Set var_98 = var_94
  loc_16A8F6F: If (Proc_6_27_EA61EC(var_98, "Bill Date") = 0) Then
  loc_16A8F72:   Exit Sub
  loc_16A8F73: End If
  loc_16A8F77: Set var_90 = Me.TopCtrl1
  loc_16A8F7D: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C(CInt(0))
  loc_16A8F85: var_9C = CStr(var_94)
  loc_16A8F96: If (var_9C = "Add") Then
  loc_16A8F9C:   Call Proc_279_49_100062C(var_9E)
  loc_16A8FA7:   If (var_9E = &HFF) Then
  loc_16A8FAA:     Exit Sub
  loc_16A8FAB:   End If
  loc_16A8FAB: End If
  loc_16A8FB4: unk_5571D7.BeginTrans var_B4
  loc_16A8FBD: var_86 = CByte(1) 'Byte
  loc_16A8FDF: Set var_90 = Me.Txt
  loc_16A8FE5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94, var_9C, "Delete From Ledger Where DocId='")
  loc_16A8FED: var_B0 = var_94.Text
  loc_16A8FF6: var_B8 = -1 & var_9C
  loc_16A9006: unk_5571D7.Execute var_B8 & "'", var_98, 
  loc_16A903E: Set var_90 = Me.Txt
  loc_16A9044: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94, var_9C, "Delete From MemBill Where DocId='")
  loc_16A904C: var_B0 = var_94.Text
  loc_16A9055: var_B8 = -1 & var_9C
  loc_16A9065: unk_5571D7.Execute var_B8 & "'", var_98, 
  loc_16A909D: Set var_90 = Me.Txt
  loc_16A90A3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94, var_9C, "Delete From MemBill1 Where DocId='")
  loc_16A90AB: var_B0 = var_94.Text
  loc_16A90B4: var_B8 = -1 & var_9C
  loc_16A90C4: unk_5571D7.Execute var_B8 & "'", var_98, 
  loc_16A90FC: Set var_90 = Me.Txt
  loc_16A9102: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94, var_9C, "Delete From MemBill2 Where DocId='")
  loc_16A910A: var_B0 = var_94.Text
  loc_16A9113: var_B8 = -1 & var_9C
  loc_16A9123: unk_5571D7.Execute var_B8 & "'", var_98, 
  loc_16A915B: Set var_90 = Me.Txt
  loc_16A9161: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94, var_9C, "Delete From MemSunTran Where DocId='")
  loc_16A9169: var_B0 = var_94.Text
  loc_16A9172: var_B8 = -1 & var_9C
  loc_16A9182: unk_5571D7.Execute var_B8 & "'", var_98, 
  loc_16A91AA: Set var_90 = Me.Txt
  loc_16A91B0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94)
  loc_16A91B8: var_9C = var_94.Text
  loc_16A91C8: Set var_98 = Me.Txt
  loc_16A91CE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3))
  loc_16A91DD: Proc_6_7_F26918(var_E0, CVar(var_D0))
  loc_16A91F0: Set var_114 = Me.Txt
  loc_16A91F6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_118)
  loc_16A920A: Set var_160 = Me.LblVPrefix
  loc_16A9223: Set var_1A8 = Me.Txt
  loc_16A9229: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1AC)
  loc_16A9244: Set var_1F4 = Me.Txt
  loc_16A924A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1F8)
  loc_16A9265: Set var_240 = Me.Txt
  loc_16A926B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_244)
  loc_16A9273: var_248 = var_244.Tag
  loc_16A9286: Set var_28C = Me.Txt
  loc_16A928C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_290)
  loc_16A92A4: Set var_2D8 = Me.Txt
  loc_16A92AA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2DC)
  loc_16A92C5: Set var_330 = Me.TxtGt
  loc_16A92CB: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_9E)
  loc_16A92DD: Set var_334 = Me.TxtGt
  loc_16A92E3: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_9E, var_338)
  loc_16A92F8: var_65C = Val(var_338.Text)
  loc_16A92FF: Set var_380 = Me.TopCtrl1
  loc_16A9305: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_65C)
  loc_16A9341: var_474 = CVar(Proc_6_15_EF37AC(var_D0)) 'String
  loc_16A9347: Proc_6_7_F26918(var_484)
  loc_16A9357: Set var_538 = Me.Txt
  loc_16A935D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_53C)
  loc_16A936C: Proc_6_7_F26918(var_55C, CVar(var_53C))
  loc_16A9378: Set var_590 = Me.TxtGt
  loc_16A937E: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_592)
  loc_16A9393: Set var_598 = Me.TxtGt
  loc_16A9399: Call 0.Method_TopCtrl1_UnknownEvent_160 ((var_592 - 1), var_59C)
  loc_16A93AE: var_664 = Val(var_59C.Text)
  loc_16A93BD: Set var_5E4 = Me.TxtGt
  loc_16A93C3: Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_5E8, var_5EC)
  loc_16A93EF: var_B8 = "Insert Into MemBill (DocId,vDate,Vno,Vprefix,VType,MemCode,MemCatCode,CardNo,MthYear,NetAmount,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code,BillDate,RoundOff,Amount) " & " Values ('"
  loc_16A93FD: var_F0 = CVar(var_B8 & var_9C & "',") 'String
  loc_16A944F: var_21C = var_F0 & var_E0 & "," & CVar(var_118.Text) & ",'" & CVar(var_160.Caption) & "','" & CVar(var_1AC.Text) & "','" & CVar(var_1F8.Tag) 
  loc_16A94A9: var_404 = var_21C & "','" & CVar(var_248) & "','" & CVar(var_290.Text) & "','" & Trim(CVar(var_2DC)) & "'," & CVar(var_65C) & ",'" & IIf((CStr(var_390) = "Add"), "A", "E") 
  loc_16A9502: var_56C = var_404 & "','" & CVar(MemVar_1F950C8) & "'," & var_484 & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "'," & var_55C 
  loc_16A9541: unk_5571D7.Execute CStr(var_56C & "," & CVar(var_5E8.Text) & "," & CVar(Val(var_5EC)) & ")"), var_650, -1
  loc_16A9626: For var_670 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_670 'Integer
  loc_16A963A:   Set var_90 = Me.Txt
  loc_16A9640:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94, var_9C, 1)
  loc_16A9648:   var_654 = var_94.Text
  loc_16A9659:   var_194 = CVar(CLng(0)) 'Long
  loc_16A9662:   Set var_98 = Me.FGrid
  loc_16A967B:   var_65C = Val(CStr(var_98.TextMatrix)))
  loc_16A968C:   Set var_D0 = Me.Txt
  loc_16A9692:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_114, var_248, var_65C)
  loc_16A969A:   var_194 = var_114.Text
  loc_16A96AA:   Set var_118 = Me.Txt
  loc_16A96B0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_160, CVar(CLng(var_88)))
  loc_16A96BF:   Proc_6_7_F26918(var_F0, CVar(var_160))
  loc_16A96C8:   var_278 = CVar(CLng(var_88)) 'Long
  loc_16A96D0:   var_31C = CVar(CLng(3)) 'Long
  loc_16A96D9:   Set var_1A8 = Me.FGrid
  loc_16A96EF:   var_3A4 = CVar(CLng(var_88)) 'Long
  loc_16A96F7:   var_3D4 = CVar(CLng(4)) 'Long
  loc_16A9716:   var_454 = CVar(CLng(var_88)) 'Long
  loc_16A971E:   var_4C4 = CVar(CLng(5)) 'Long
  loc_16A973D:   var_524 = CVar(CLng(var_88)) 'Long
  loc_16A9745:   var_5B0 = CVar(CLng(7)) 'Long
  loc_16A9764:   var_61C = CVar(CLng(var_88)) 'Long
  loc_16A976C:   var_680 = CVar(CLng(8)) 'Long
  loc_16A978B:   var_6B0 = CVar(CLng(var_88)) 'Long
  loc_16A9793:   var_6D0 = CVar(CLng(9)) 'Long
  loc_16A97BC:   var_710 = CVar(CLng(var_88)) 'Long
  loc_16A97C4:   var_730 = CVar(CLng(&HA)) 'Long
  loc_16A97DE:   var_5A0 = CStr(Me.FGrid.TextMatrix))
  loc_16A97ED:   var_770 = CVar(CLng(var_88)) 'Long
  loc_16A97F5:   var_790 = CVar(CLng(4)) 'Long
  loc_16A982B:   var_404 = Me.FGrid.TextMatrix)
  loc_16A987C:   var_494 = Me.FGrid.TextMatrix)
  loc_16A98A3:   var_514 = Me.FGrid.TextMatrix)
  loc_16A98B3:   Set var_334 = Me.TopCtrl1
  loc_16A98B9:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_514)
  loc_16A98FB:   Proc_6_7_F26918(var_940, CVar(Proc_6_15_EF37AC(CVar(CLng(&HC)), CVar(CLng(var_88)), var_494, CVar(CLng(&HB)), CVar(CLng(var_88)), var_404)), CVar(CLng(&HD)), CVar(CLng(var_88)))
  loc_16A9914:   var_B8 = "Insert Into MemBill1 (DocId,Sno,Vno,vDate,VType,Type,FacilityCode,TaxStru,AcCode,BaseAmt,TaxAmt,OutletCode,AcPosting,AcPostingYN,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('"
  loc_16A9943:   var_100 = CVar(var_B8 & var_9C & "'," & CStr(var_65C) & "," & var_248 & ",") 'String
  loc_16A9985:   var_23C = var_100 & var_F0 & ",'" & CVar(CStr(var_1A8.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_16A99C1:   var_35C = var_23C & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_16A99CA:   var_37C = var_35C & "," 
  loc_16A99E5:   var_474 = var_37C & CVar(Val(var_5A0)) & ",'" & IIf((CStr(Me.FGrid.TextMatrix)) = "Outlet"), CVar(CStr(var_404)), vbNullString) 
  loc_16A9A0A:   var_534 = CVar(CStr(var_514)) 'String
  loc_16A9A30:   var_650 = var_474 & "','" & CVar(CStr(var_494)) & "','" & var_534 & "','" & IIf((CStr(var_56C) = "Add"), "A", "E") & "','" & CVar(MemVar_1F950C8) 
  loc_16A9A7D:   unk_5571D7.Execute CStr(var_650 & "'," & var_940 & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), var_A14, -1
  loc_16A9B56: Next var_670 'Integer
  loc_16A9B80: For var_A18 = 1 To CInt((CLng(Me.FGCat.Rows) - 1)): var_88 = var_A18 'Integer
  loc_16A9B8A:   var_CC = CVar(CLng(var_88)) 'Long
  loc_16A9B92:   var_194 = CVar(CLng(2)) 'Long
  loc_16A9BCE:   If CBool(Trim(CVar(CStr(Me.FGCat.TextMatrix)))) <> vbNullString) Then
  loc_16A9BDF:     Set var_90 = Me.Txt
  loc_16A9BE5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94, var_9C)
  loc_16A9BED:     var_194 = var_94.Text
  loc_16A9C20:     var_65C = Val(CStr(Me.FGCat.TextMatrix)))
  loc_16A9C38:     Set var_D0 = Me.FGCat
  loc_16A9C3E:     var_E0 = var_D0.TextMatrix)
  loc_16A9C51:     var_664 = Val(CStr(var_E0))
  loc_16A9C62:     Set var_114 = Me.Txt
  loc_16A9C68:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_118, var_5A0, var_664, CVar(CLng(1)), CVar(CLng(var_88)))
  loc_16A9C80:     Set var_160 = Me.Txt
  loc_16A9C86:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1A8, CVar(CLng(0)))
  loc_16A9C95:     Proc_6_7_F26918(var_100, CVar(var_1A8), CVar(CLng(var_88)))
  loc_16A9C9E:     var_36C = CVar(CLng(var_88)) 'Long
  loc_16A9CA6:     var_3B4 = CVar(CLng(4)) 'Long
  loc_16A9CAF:     Set var_1AC = Me.FGCat
  loc_16A9CC5:     var_434 = CVar(CLng(var_88)) 'Long
  loc_16A9CCD:     var_4A4 = CVar(CLng(5)) 'Long
  loc_16A9CEC:     var_504 = CVar(CLng(var_88)) 'Long
  loc_16A9CF4:     var_57C = CVar(CLng(6)) 'Long
  loc_16A9CFD:     Set var_1F8 = Me.FGCat
  loc_16A9D2A:     var_288 = Me.FGCat.TextMatrix)
  loc_16A9D3D:     var_66C = Val(CStr(var_288))
  loc_16A9D55:     Set var_244 = Me.FGCat
  loc_16A9D6E:     var_A30 = Val(CStr(var_244.TextMatrix)))
  loc_16A9D9F:     var_A38 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_16A9DA6:     Set var_290 = Me.TopCtrl1
  loc_16A9DAC:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_A38)
  loc_16A9DEE:     Proc_6_7_F26918(var_474, CVar(Proc_6_15_EF37AC(CVar(CLng(&HA)), CVar(CLng(var_88)), var_A30, CVar(CLng(9)), CVar(CLng(var_88)), var_66C)), CVar(CLng(8)), CVar(CLng(var_88)))
  loc_16A9E07:     var_B8 = "Insert Into MemBill2 (DocId,Sno,Sno1,Vno,vDate,VType,FacilityCode,TaxCode,BaseAmt,TaxPer,TaxAmt,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('"
  loc_16A9E63:     var_184 = CVar(var_B8 & var_9C & "'," & CStr(var_118.Text) & "," & CStr(var_664) & "," & var_5A0 & ",") & var_100 & ",'" & CVar(CStr(var_1AC.TextMatrix))) 
  loc_16A9EA8:     var_2B4 = var_184 & "','" & CVar(CStr(Me.FGCat.TextMatrix))) & "','" & CVar(CStr(var_1F8.TextMatrix))) & "'," & CVar(var_66C) & "," 
  loc_16A9EEA:     var_424 = var_2B4 & CVar(var_A30) & "," & CVar(var_A38) & ",'" & IIf((CStr(var_37C) = "Add"), "A", "E") & "','" & CVar(MemVar_1F950C8) 
  loc_16A9EF3:     var_444 = var_424 & "'," 
  loc_16A9F37:     unk_5571D7.Execute CStr(var_444 & var_474 & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), var_534, -1
  loc_16A9FE5:   End If
  loc_16A9FE8: Next var_A18 'Integer
  loc_16A9FF9: Set var_90 = Me.LblCap
  loc_16A9FFF: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_9E, var_88)
  loc_16AA00A: For var_A3C =  To var_9E: 1 = var_A3C 'Integer
  loc_16AA01E:   Set var_90 = Me.Txt
  loc_16AA024:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94)
  loc_16AA03C:   Set var_98 = Me.Txt
  loc_16AA042:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3))
  loc_16AA051:   Proc_6_7_F26918(var_E0, CVar(var_D0))
  loc_16AA064:   Set var_114 = Me.Txt
  loc_16AA06A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_118)
  loc_16AA07E:   Set var_160 = Me.LblVPrefix
  loc_16AA097:   Set var_1A8 = Me.Txt
  loc_16AA09D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1AC)
  loc_16AA0B7:   Set var_1F4 = Me.LblCap
  loc_16AA0BD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_88, var_1F8)
  loc_16AA0D7:   Set var_240 = Me.TxtGt
  loc_16AA0DD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_88, var_244)
  loc_16AA0F2:   var_65C = Val(var_244.Text)
  loc_16AA0F9:   Set var_28C = Me.TopCtrl1
  loc_16AA0FF:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_65C)
  loc_16AA13B:   var_35C = CVar(Proc_6_15_EF37AC(var_D0)) 'String
  loc_16AA141:   Proc_6_7_F26918(var_37C)
  loc_16AA15A:   var_B8 = "Insert Into MemSunTran (DocId,Sno,vDate,Vno,Vprefix,VType,SunCode,SunAmt,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('"
  loc_16AA168:   var_11C = var_B8 & var_94.Text & "',"
  loc_16AA19D:   var_15C = CVar(var_11C & CStr(var_88) & ",") & var_E0 & "," & CVar(var_118.Text) & ",'" 
  loc_16AA1F1:   var_2EC = var_15C & CVar(var_160.Caption) & "','" & CVar(var_1AC.Text) & "','" & CVar(var_1F8.Tag) & "'," & CVar(var_65C) & ",'" & IIf((CStr(var_288) = "Add"), "A", "E") 
  loc_16AA243:   var_424 = var_2EC & "','" & CVar(MemVar_1F950C8) & "'," & var_37C & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')" 
  loc_16AA251:   unk_5571D7.Execute CStr(var_424), var_444, -1
  loc_16AA2DA: Next var_A3C 'Integer
  loc_16AA2E3: Set var_90 = Me.TopCtrl1
  loc_16AA2E9: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_16AA302: If (CStr() = "Add") Then
  loc_16AA319:   var_9C = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_16AA33F:   Set var_90 = Me.Txt
  loc_16AA345:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_94, var_11C, CVar(var_9C & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='MBILL' And VP.Date_From<="))
  loc_16AA34D:   var_12C = var_94.Text
  loc_16AA35B:   Proc_6_7_F26918(var_E0, CVar(var_11C))
  loc_16AA363:   var_100 = -1 & var_E0 
  loc_16AA37A:   unk_5571D7.Execute CStr(CVar(var_11C & CStr(var_88) & ",") & var_E0 & " Order By VP.Date_From DESC"), var_98, 
  loc_16AA385:   Set var_8C = var_98
  loc_16AA3BF:   If (var_8C.RecordCount > 0) Then
  loc_16AA3D0:     Set var_90 = Me.Txt
  loc_16AA3D6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_94)
  loc_16AA3EB:     var_65C = Val(var_94.Text)
  loc_16AA3F4:     var_CC = "V_Type"
  loc_16AA43B:     Proc_6_7_F26918(var_12C, CVar(var_8C.Fields.Item("Date_From")))
  loc_16AA46E:     var_1B0 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_65C) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_16AA47C:     var_E0 = CVar(var_1B0 & MemVar_1F95078 & "') and V_Type='") 'String
  loc_16AA482:     var_F0 = var_E0 & var_8C.Fields.Item(var_CC).Value 
  loc_16AA48B:     var_100 = var_F0 & "' and Date_From=" 
  loc_16AA4A0:     unk_5571D7.Execute CStr(var_100 & var_12C), var_15C, -1
  loc_16AA4DA:   End If
  loc_16AA4DA: End If
  loc_16AA4E0: unk_5571D7.CommitTrans
  loc_16AA4E9: var_86 = CByte(0) 'Byte
  loc_16AA4ED: Call Proc_279_48_174B59C(var_160)
  loc_16AA500: Set var_90 = Me.Txt
  loc_16AA506: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94)
  loc_16AA532: Me.Requery -1
  loc_16AA55F: Me.Find "SearchCode ='" & var_94.Text & "'", 0, 1
  loc_16AA56F: Set var_90 = Me.TopCtrl1
  loc_16AA575: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_CC)
  loc_16AA58E: If (CStr(var_65C) = "Add") Then
  loc_16AA591:   Call TopCtrl1_UnknownEvent_A()
  loc_16AA596:   Exit Sub
  loc_16AA597: End If
  loc_16AA5AC: var_9C = "INI"
  loc_16AA5BA: Call Proc_279_52_F634A0(Proc_5_1_100EC1C(var_9C, Me))
  loc_16AA5C5: Call Proc_279_51_19910DC(global_104)
  loc_16AA5CF: Set var_8C = Nothing
  loc_16AA5D2: Exit Sub
  loc_16AA5D3: ' Referenced from: 16A8E4C
  loc_16AA5DC: If (CInt(var_86) = 1) Then
  loc_16AA5E5:   unk_5571D7.RollbackTrans
  loc_16AA5EA: End If
  loc_16AA5F2: Set var_90 = Err()
  loc_16AA5F8: Call 0.Method_arg_2C (var_9C)
  loc_16AA611: MsgBox(CVar(var_9C), &H10, var_E0, var_F0, var_100)
  loc_16AA624: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E53C9C
  'Data Table: 5571BC
  loc_E53C76: Set var_88 = Me.Txt
  loc_E53C7C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E53C8A: Proc_6_74_E23240(var_8C)
  loc_E53C96: Call Proc_279_53_E555EC(var_8C)
  loc_E53C9B: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FA9138
  'Data Table: 5571BC
  Dim var_86 As Integer
  Dim Txt_KeyDown4FF As Variant
  loc_FA8FBE: If (CLng(Shift) = &H1B) Then
  loc_FA8FC1:   Call Proc_279_53_E555EC()
  loc_FA8FC6:   Exit Sub
  loc_FA8FC7: End If
  loc_FA8FCA: var_86 = KeyCode
  loc_FA8FD5: If (var_86 = CInt(0)) Then
  loc_FA8FF0:   Set var_9C = Nothing
  loc_FA8FFB:   Set var_98 = Nothing
  loc_FA9029:   Proc_6_69_134A630(Me.DGMemName, Me.Txt, KeyCode, global_108, Shift, 0)
  loc_FA9040: Else
  loc_FA9048:   If (var_86 = CInt(8)) Then
  loc_FA9063:     Set var_9C = Nothing
  loc_FA906E:     Set var_98 = Nothing
  loc_FA909C:     Proc_6_69_134A630(Me.DGMemType, Me.Txt, KeyCode, global_112, Shift, 0, 1, var_98)
  loc_FA90B0:   End If
  loc_FA90B0: End If
  loc_FA90EB: If ((CBool(Me.DGMemName.Visible) = 0) And (CBool(Me.DGMemType.Visible) = 0)) Then
  loc_FA9103:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FA910C:     Proc_6_75_E5335C(Shift, arg_14, var_9C, 0, 1)
  loc_FA9111:   End If
  loc_FA9126:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_FA912F:     Proc_6_76_E533C8(Shift, arg_14, var_98)
  loc_FA9134:   End If
  loc_FA9134: End If
  loc_FA9134: Exit Sub
  loc_FA9135: Txt_KeyDown4FF = StrComp(var_86, 0, var_9C)
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E07410
  'Data Table: 5571BC
  Dim var_86 As Integer
  loc_E07403: Proc_6_58_E06050(arg_10)
  loc_E0740B: var_86 = KeyAscii
  loc_E0740E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F1A838
  'Data Table: 5571BC
  Dim var_86 As Integer
  loc_F1A74B: var_86 = KeyCode
  loc_F1A756: If (var_86 = CInt(0)) Then
  loc_F1A775:   If (CBool(Me.DGMemName.Visible) = &HFF) Then
  loc_F1A789:     var_A4 = "Name"
  loc_F1A7AD:     Proc_6_68_12A2818(Me.DGMemName, Me.Txt, KeyCode, global_108)
  loc_F1A7C0:   End If
  loc_F1A7C3: Else
  loc_F1A7CB:   If (var_86 = CInt(8)) Then
  loc_F1A7EA:     If (CBool(Me.DGMemType.Visible) = &HFF) Then
  loc_F1A7FE:       var_A4 = "Name"
  loc_F1A822:       Proc_6_68_12A2818(Me.DGMemType, Me.Txt, KeyCode, global_112, Shift)
  loc_F1A835:     End If
  loc_F1A835:   End If
  loc_F1A835: End If
  loc_F1A835: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E485FC
  'Data Table: 5571BC
  loc_E485DA: Set var_88 = Me.Txt
  loc_E485E0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E485EE: Proc_6_73_E23294(var_8C)
  loc_E485FA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '137796C
  'Data Table: 5571BC
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_AC As String
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  Dim var_130 As TextBox
  loc_13770F3: var_86 = Cancel
  loc_13770FE: If (var_86 = CInt(0)) Then
  loc_137714F:   Set var_94 = Me.Txt
  loc_1377155:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_137715D:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1377175:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_1377185:     Set var_94 = Me.Txt
  loc_137718B:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1377193:     var_98.Text = vbNullString
  loc_13771AC:     Set var_94 = Me.Txt
  loc_13771B2:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13771BA:     var_98.Tag = vbNullString
  loc_13771D4:     Set var_94 = Me.Txt
  loc_13771DA:     Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_13771E2:     var_98.Text = vbNullString
  loc_13771FC:     Set var_94 = Me.Txt
  loc_1377202:     Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_137720A:     var_98.Tag = vbNullString
  loc_1377219:   Else
  loc_1377254:     Set var_B0 = Me.Txt
  loc_137725A:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1377262:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13772B3:     Set var_B0 = Me.Txt
  loc_13772B9:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13772C1:     var_B4.Tag = CStr(Me.Fields.Item("subcode").Value)
  loc_1377313:     Set var_B0 = Me.Txt
  loc_1377319:     Call 0.Method_Txt_Validate0 (CInt(1), var_B4)
  loc_1377321:     var_B4.Text = CStr(Me.Fields.Item("CardNo").Value)
  loc_137733D:     var_AC = "CompanyType"
  loc_1377354:     var_98 = Me.Fields.Item(var_AC)
  loc_1377373:     Set var_B0 = Me.Txt
  loc_1377379:     Call 0.Method_Txt_Validate0 (CInt(1), var_B4)
  loc_1377381:     var_B4.Tag = CStr(var_98.Value)
  loc_1377397:   End If
  loc_137739A: Else
  loc_13773A2:   If (var_86 = CInt(1)) Then
  loc_13773AF:     Set var_94 = Me.Txt
  loc_13773B5:     Call 0.Method_Txt_Validate0 (Cancel)
  loc_13773C4:     var_D4 = Trim(CVar(var_98))
  loc_13773CC:     var_9C = CStr(var_D4)
  loc_13773DA:     Set var_B0 = Me.Txt
  loc_13773E0:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13773E8:     var_B4.Text = var_9C
  loc_1377417:     If (Me.RecordCount > 0) Then
  loc_1377420:       Me.MoveFirst
  loc_1377443:       Set var_94 = Me.Txt
  loc_1377449:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C, "CardNo='")
  loc_1377451:       0 = var_98.Text
  loc_137746A:       Me.Find 1 & var_9C & "'", var_AC, var_98
  loc_13774A8:       If ((Me.EOF = &HFF) Or (Me.BOF = &HFF)) Then
  loc_13774C4:         MsgBox("InValid Card no", &H40, var_D4, var_10C, var_12C)
  loc_13774E2:         Set var_94 = Me.Txt
  loc_13774E8:         Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_13774F0:         var_98.Text = vbNullString
  loc_137750A:         Set var_94 = Me.Txt
  loc_1377510:         Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1377518:         var_98.Tag = vbNullString
  loc_1377531:         Set var_94 = Me.Txt
  loc_1377537:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_137753F:         var_98.Text = vbNullString
  loc_1377558:         Set var_94 = Me.Txt
  loc_137755E:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1377566:         var_98.Tag = vbNullString
  loc_1377575:       Else
  loc_13775B1:         Set var_B0 = Me.Txt
  loc_13775B7:         Call 0.Method_Txt_Validate0 (CInt(0), var_B4)
  loc_13775BF:         var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1377611:         Set var_B0 = Me.Txt
  loc_1377617:         Call 0.Method_Txt_Validate0 (CInt(0), var_B4)
  loc_137761F:         var_B4.Tag = CStr(Me.Fields.Item("subcode").Value)
  loc_1377670:         Set var_B0 = Me.Txt
  loc_1377676:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_137767E:         var_B4.Text = CStr(Me.Fields.Item("CardNo").Value)
  loc_13776B1:         var_98 = Me.Fields.Item("CompanyType")
  loc_13776CF:         Set var_B0 = Me.Txt
  loc_13776D5:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13776DD:         var_B4.Tag = CStr(var_98.Value)
  loc_13776F3:       End If
  loc_13776F3:     End If
  loc_13776F6:   Else
  loc_13776FE:     If (var_86 = CInt(2)) Then
  loc_137770B:       Set var_94 = Me.Txt
  loc_1377711:       Call 0.Method_Txt_Validate0 (Cancel)
  loc_1377731:       Set var_B4 = Me.Txt
  loc_1377737:       Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_137773F:       var_130.Text = Proc_6_120_133AEC8(var_98)
  loc_137775F:       Set var_94 = Me.Txt
  loc_1377765:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_137776D:       var_9C = var_98.Text
  loc_1377799:       If CBool(Trim(CVar(var_9C)) <> vbNullString) Then
  loc_13777AC:         Set var_94 = Me.Txt
  loc_13777B2:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_13777BA:         "01/" = var_98.Text
  loc_13777FF:         Set var_B0 = Me.Txt
  loc_1377805:         Call 0.Method_Txt_Validate0 (CInt(3), var_B4)
  loc_137780D:         var_B4.Text = CStr(DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(var_98 & var_9C)))))
  loc_137782F:       End If
  loc_1377832:     Else
  loc_137783A:       If (var_86 = CInt(9)) Then
  loc_1377847:         Set var_94 = Me.Txt
  loc_137784D:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_137786D:         Set var_B4 = Me.Txt
  loc_1377873:         Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_137787B:         var_130.Text = Proc_6_120_133AEC8(var_98)
  loc_137789B:         Set var_94 = Me.Txt
  loc_13778A1:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13778A9:         var_9C = var_98.Text
  loc_13778D5:         If CBool(Trim(CVar(var_9C)) <> vbNullString) Then
  loc_13778E8:           Set var_94 = Me.Txt
  loc_13778EE:           Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_13778F6:           "01/" = var_98.Text
  loc_137793B:           Set var_B0 = Me.Txt
  loc_1377941:           Call 0.Method_Txt_Validate0 (CInt(&HA), var_B4)
  loc_1377949:           var_B4.Text = CStr(DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(var_98 & var_9C)))))
  loc_137796B:         End If
  loc_137796B:       End If
  loc_137796B:     End If
  loc_137796B:   End If
  loc_137796B: End If
  loc_137796B: Exit Sub
End Sub

Private Sub CmdRefreshCategory_Click() 'F1A334
  'Data Table: 5571BC
  Dim var_8C As TextBox
  Dim unk_5571D7 As Connection15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  Dim var_F4 As TextBox
  loc_F1A295: Set var_88 = Me.Txt
  loc_F1A29B: Call 0.Method_CmdRefreshCategory_Click0 (CInt(0), var_8C, var_90, "Select IsNull(Max(CompanyType),'') From SubGroup Where SubCode='", var_C0, -1)
  loc_F1A2CA: unk_5571D7.Execute var_C8 & var_90 & "' And LogSite_Code='" & MemVar_1F95078 & "'", 0, var_DC
  loc_F1A2DA:  = var_C8.Item()
  loc_F1A2E2:  = var_DC.Value
  loc_F1A2F9: Set var_F0 = Me.Txt
  loc_F1A2FF: Call 0.Method_CmdRefreshCategory_Click0 (CInt(1), var_F4)
  loc_F1A307: var_F4.Tag = CStr(var_8C.Tag.Fields)
  loc_F1A333: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F576DC
  'Data Table: 5571BC
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F575FE: If (Me.ListView.ListItems.Count > 0) Then
  loc_F57605:   Set var_A8 = Me.ListView
  loc_F5764F:   Set var_C0 = Me.TxtGrid
  loc_F57655:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5765D:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5767D: End If
  loc_F57689: Me.FrmList.Visible = False
  loc_F576B9: Set var_9C = Me.TxtGrid
  loc_F576BF: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F576C7: var_A8.SetFocus
  loc_F576DB: Exit Sub
End Sub

Private Sub CmdEditSave_Click() 'E9910C
  'Data Table: 5571BC
  loc_E99098: Call TopCtrl1_UnknownEvent_D()
  loc_E9909D: Call CmdFill_UnknownEvent_9()
  loc_E990A2: Call TopCtrl1_UnknownEvent_16()
  loc_E990AB: Set var_88 = Me.TopCtrl1
  loc_E990B1: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030011()
  loc_E990C3: If (CBool() = &HFF) Then
  loc_E990C6:   Call TopCtrl1_UnknownEvent_12()
  loc_E990CB:   Call CmdEditSave_Click()
  loc_E990D3: Else
  loc_E990D9:   Call 0.Method_arg_50 (var_9C)
  loc_E990FA:   MsgBox("Updation Completed.", &H40, CVar(var_9C), var_DC, var_FC)
  loc_E9910A:   Exit Sub
  loc_E9910B: End If
  loc_E9910B: Exit Sub
End Sub

Private Sub Form_Load() '11FB4DC
  'Data Table: 5571BC
  Dim var_9C As Variant
  Dim var_C4 As Variant
  Dim var_B4 As String
  Dim Me As Recordset15
  Dim unk_5571D7 As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Recordset15
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_D0 As TextBox
  Dim var_FC As DataGrid
  Dim var_100 As TextBox
  Dim .global_94 As Integer
  loc_11FB044: On Error Goto loc_11FB4D3
  loc_11FB04E: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_11FB05D: Set var_B0 = Me.TopCtrl1
  loc_11FB063: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_11FB071: Call 0.Method_arg_50 (var_B4)
  loc_11FB081: Set var_B0 = Me.TopCtrl1
  loc_11FB087: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_B4))
  loc_11FB09C: Set global_108 = New 
  loc_11FB0A7: Set var_8C = New 
  loc_11FB0B5: Me.TopCtrl1.CursorLocation = 3
  loc_11FB0D8: var_B4 = "SELECT SubCode,subgroup.Name,CardNo,CompanyType FROM SUBGROUP INNER JOIN MEMCATMAST ON SUBGROUP.COMPANYTYPE=MEMCATMAST.CODE WHERE ActiveYN=1 And IsNull(FBilling,'')<>'N' And (COMPANYTYPE IS NOT NULL AND COMPANYTYPE<>'') and (SUBGROUP.LOGSITE_CODE='" & MemVar_1F95078
  loc_11FB0E9: Me.Open CVar(var_B4 & "' or SUBGROUP.LOGSITE_CODE='HO') Order by subgroup.Name"), CVar(MemVar_1F95044), 3
  loc_11FB0FD: CVarUnk
  loc_11FB102: VerifyVarObj
  loc_11FB108: Set var_B0 = Me.DGMemName
  loc_11FB10E: LateIdStAd
  loc_11FB138: Me.DGMemName.CursorLocation = 3
  loc_11FB162: var_C4 = CVar("Select  Code, Name From MemCatMast WHERE Corporate='N' And IsNull(FBilling,'')<>'N' AND (  LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  Order by Name") 'String
  loc_11FB16C: Me.Open var_C4, CVar(MemVar_1F951E0), 2
  loc_11FB180: CVarUnk
  loc_11FB185: VerifyVarObj
  loc_11FB18B: Set var_B0 = Me.DGMemType
  loc_11FB191: LateIdStAd
  loc_11FB1C3: unk_5571D7.Execute "Select * from MemEnviro where LogSite_Code='" & MemVar_1F95078 & "'", var_C4, -1
  loc_11FB1CE: Set var_88 = var_B0
  loc_11FB202: unk_5571D7.Execute "Select * from UserPermission where UserName='" & MemVar_1F950C8 & "'", var_C4, -1
  loc_11FB231: If (var_88.RecordCount > 0) Then
  loc_11FB243:   var_B0 = var_B0.Fields
  loc_11FB26D:   If (Proc_6_38_E69628(CVar(var_B0.Item("FacilityBilling")), var_B0, var_B0, var_B0, New, 3) = "Auto") Then
  loc_11FB27C:     Me.FrAutoBillingYN.Visible = True
  loc_11FB28D:     Set var_B0 = Me.CmdFill
  loc_11FB293:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_11FB29E:   Else
  loc_11FB2AA:     Me.FrAutoBillingYN.Visible = False
  loc_11FB2BA:     Set var_B0 = Me.CmdFill
  loc_11FB2C0:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_11FB2C8:   End If
  loc_11FB2D7:   var_B0 = var_88.Fields
  loc_11FB2DF:   var_D0 = var_B0.Item("MemberBillLedgerPostingOnDate")
  loc_11FB2F0:   var_E0 = CVar(Proc_6_38_E69628(CVar(var_D0), -1, var_B0)) 'String
  loc_11FB305:   global_128 = CStr(Ucase(var_E0))
  loc_11FB318: End If
  loc_11FB334: Me.CursorLocation = 3
  loc_11FB36C: var_C4 = CVar("Select DocId As SearchCode,* From MemBill Where VPrefix=" & MemVar_1F9512C & " And (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By DocId") 'String
  loc_11FB376: Me.Open var_C4, CVar(MemVar_1F95044), 3
  loc_11FB3AA: Call Proc_279_52_F634A0(Proc_5_1_100EC1C("INI", Me, New, 1), -1, global_108)
  loc_11FB3B5: Call Proc_279_46_119455C(1)
  loc_11FB3BA: Call Proc_279_51_19910DC(-1)
  loc_11FB3CD: Set var_B0 = Me.Txt
  loc_11FB3D3: Call 0.Method_Form_Load0 (CInt(0), var_D0)
  loc_11FB3F2: Me.DGMemName.Left = CVar(var_D0.Left)
  loc_11FB40E: Set var_FC = Me.Txt
  loc_11FB414: Call 0.Method_Form_Load0 (CInt(0), var_100)
  loc_11FB42F: Set var_B0 = Me.Txt
  loc_11FB435: Call 0.Method_Form_Load0 (CInt(0), var_D0)
  loc_11FB44D: var_9C = CVar(((var_D0.Top + var_100.Height) + CDbl(&H19))) 'Single
  loc_11FB45C: Me.DGMemName.Top = CVar(var_D0.Left)
  loc_11FB47D: Me.LblUser.Left = CDbl(13500)
  loc_11FB494: Me.LblUser.Top = CDbl(7800)
  loc_11FB4AB: Me.LblLDt.Top = CDbl(8160)
  loc_11FB4C2: Me.LblLDt.Left = CDbl(13500)
  loc_11FB4CF: Set var_88 = Nothing
  loc_11FB4D2: Exit Sub
  loc_11FB4D3: ' Referenced from: 11FB044
  loc_11FB4D3: Proc_6_60_E63754()
  loc_11FB4D8: Exit Sub
  loc_11FB4D9: .global_94 = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E44ABC
  'Data Table: 5571BC
  loc_E44A97: Set global_108 = Nothing
  loc_E44AA9: Set global_104 = Nothing
  loc_E44AB5: MasterFormExit = 0
  loc_E44AB8: Exit Sub
End Sub

Private Sub Form_Activate() 'E47E48
  'Data Table: 5571BC
  loc_E47E18: On Error Goto loc_E47E42
  loc_E47E1F: Set var_88 = Me.TopCtrl1
  loc_E47E25: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E47E3A: If (CLng(CInt()) = &H2D) Then
  loc_E47E3D:   Call TopCtrl1_UnknownEvent_15()
  loc_E47E42:   ' Referenced from: E47E18
  loc_E47E42: End If
  loc_E47E42: Proc_6_60_E63754()
  loc_E47E47: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E256DC
  'Data Table: 5571BC
  loc_E256C1: If (MasterFormExit = &HFF) Then
  loc_E256D1:   Me.Global.Unload Me
  loc_E256D9: End If
  loc_E256D9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F127A8
  'Data Table: 5571BC
  Dim var_88 As CommandButton
  loc_F126C0: On Error Goto loc_F1279F
  loc_F126D7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_F1271C: If CBool((Ucase(Chr(CLng(KeyCode))) = "E") And (Shift = 4)) Then
  loc_F1271F:   Call CmdEditSave_Click()
  loc_F12727: Else
  loc_F1272B:   Set var_88 = Me.TopCtrl1
  loc_F12731:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C(Shift)
  loc_F12787:   If CBool(((CStr(0) <> "Browse") And (Shift = 2)) And (Ucase(Chr(CLng(KeyCode))) = "H")) Then
  loc_F12796:     Me.CmdRefreshCategory.Visible = True
  loc_F1279E:   End If
  loc_F1279E: End If
  loc_F1279E: Exit Sub
  loc_F1279F: ' Referenced from: F126C0
  loc_F1279F: Proc_6_60_E63754()
  loc_F127A4: Exit Sub
End Sub

Private Sub CmdFill_UnknownEvent_9 '105655C
  'Data Table: 5571BC
  Dim var_DC As Variant
  Dim var_A0 As TextBox
  loc_105630C: Set var_88 = Me.TopCtrl1
  loc_1056312: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_105632B: If (CStr() = "Browse") Then
  loc_105632E:   Exit Sub
  loc_105632F: End If
  loc_105633A: Set var_88 = Me.Txt
  loc_1056340: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0))
  loc_1056369: If (Proc_6_27_EA61EC(var_A0, "MemName Name") = 0) Then
  loc_1056373:   Call Txt_GotFocus(CInt(0))
  loc_1056378:   Exit Sub
  loc_1056379: End If
  loc_1056384: Set var_88 = Me.Txt
  loc_105638A: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_A0)
  loc_10563B3: If (Proc_6_27_EA61EC(var_A0, "Card No") = 0) Then
  loc_10563BD:   Call Txt_GotFocus(CInt(1))
  loc_10563C2:   Exit Sub
  loc_10563C3: End If
  loc_10563CE: Set var_88 = Me.Txt
  loc_10563D4: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(2), var_A0)
  loc_10563FD: If (Proc_6_27_EA61EC(var_A0, "For Month") = 0) Then
  loc_1056407:   Call Txt_GotFocus(CInt(2))
  loc_105640C:   Exit Sub
  loc_105640D: End If
  loc_1056418: Set var_88 = Me.Txt
  loc_105641E: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(3), var_A0)
  loc_1056447: If (Proc_6_27_EA61EC(var_A0, "Bill Date") = 0) Then
  loc_1056451:   Call Txt_GotFocus(CInt(3))
  loc_1056456:   Exit Sub
  loc_1056457: End If
  loc_1056462: Set var_88 = Me.Txt
  loc_1056468: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(2), var_A0)
  loc_1056477: var_B8 = Trim(CVar(var_A0))
  loc_1056487: Set var_A4 = Me.Txt
  loc_105648D: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(3), var_CC)
  loc_1056495: var_DC = CVar(var_CC) 'Address
  loc_10564AC: var_C8 = Left(var_B8, 3)
  loc_1056503: If (var_A0 > Proc_6_35_F326C4(CStr(Mid(Trim(var_DC), 4, 3)), Proc_6_35_F326C4(CStr(var_C8)))) Then
  loc_105651F:   MsgBox("Bill Date Should be For Billing Month Or Greater", &H40, var_B8, var_C8, var_DC)
  loc_105653A:   Set var_88 = Me.Txt
  loc_1056540:   Call 0.Method_CmdFill_UnknownEvent_90 (CInt(3))
  loc_1056548:   var_A0.SetFocus
  loc_1056554:   Exit Sub
  loc_1056555: End If
  loc_1056555: Call Proc_279_45_1B152A4(var_A0)
  loc_105655A: Exit Sub
End Sub

Private Sub Command1_Click() 'E59C4C
  'Data Table: 5571BC
  Dim var_88 As Frame
  loc_E59C14: Set var_88 = Me.TopCtrl1
  loc_E59C1A: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_E59C33: If (CStr() <> "Add") Then
  loc_E59C36:   Exit Sub
  loc_E59C37: End If
  loc_E59C43: Me.FrAutoBilling.Visible = True
  loc_E59C4B: Exit Sub
End Sub

Private Sub CmdAutoBilling_Click(Index As Integer) 'F0F6B8
  'Data Table: 5571BC
  Dim unk_5571D7 As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_B4 As Variant
  Dim var_E2 As Integer
  loc_F0F600: unk_5571D7.Execute "Select AutoMemberBilling from MemEnviro where LogSite_Code='" & MemVar_1F95078 & "'", var_B4, -1
  loc_F0F60B: Set var_88 = var_B8
  loc_F0F62F: If (var_88.RecordCount > 0) Then
  loc_F0F669:   var_8C = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("AutoMemberBilling"))))))
  loc_F0F678: End If
  loc_F0F67D: Set var_88 = Nothing
  loc_F0F68C: Me.FrAutoBilling.Visible = False
  loc_F0F697: var_E2 = Index
  loc_F0F6A0: If (var_E2 = 0) Then
  loc_F0F6AC:   Call Proc_279_56_12DC1AC(var_8C, var_E2)
  loc_F0F6B4: End If
  loc_F0F6B4: Exit Sub
End Sub

Public Function MasterFormExitGet() '5592AC
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '5592BB
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '5592CA
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '5592D9
  SearchCode = Value
End Sub

Public Function global_60Get() '5592E8
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '5592F7
  global_60 = Value
End Sub

Public Function global_64Get() '559306
  global_64Get = global_64
End Function

Public Sub global_64Put(Value) '559315
  global_64 = Value
End Sub

Public Sub global_64Set(Value) '559324
  global_64 = Value
End Sub

Public Function global_80Get() '559333
  global_80Get = global_80
End Function

Public Sub global_80Put(Value) '559342
  global_80 = Value
End Sub

Public Sub global_80Set(Value) '559351
  global_80 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E93D80
  'Data Table: 5571BC
  Dim Me As Recordset15
  loc_E93D0E: On Error Goto loc_E93D77
  loc_E93D17: Me.MoveFirst
  loc_E93D41: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E93D69: Proc_5_0_1107AD0(&HFF, Me, global_104)
  loc_E93D71: Call Proc_279_51_19910DC(0)
  loc_E93D76: Exit Sub
  loc_E93D77: ' Referenced from: E93D0E
  loc_E93D77: Proc_6_60_E63754(var_A0)
  loc_E93D7C: Exit Sub
End Sub

Public Sub Proc_279_44_1101798
  'Data Table: 5571BC
  Dim var_98 As String
  Dim var_E0 As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_8C As Recordset15
  Dim var_AC As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_94 As Long
  Dim var_134 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  loc_11014A1: var_90 = "MBILL"
  loc_11014B8: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_11014E9: Set var_AC = Me.Txt
  loc_11014EF: Call 0.Method_Proc_279_44_11017980 (CInt(7), var_B0, CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_11014FE: Proc_6_7_F26918(var_D0, CVar(var_B0), var_134)
  loc_1101506: var_F0 = -1 & var_D0 
  loc_110151A: Me.Txt.Execute CStr(var_F0 & " Order By VP.Date_From DESC"), var_138, 
  loc_1101525: Set var_8C = var_138
  loc_1101561: If (var_8C.RecordCount > 0) Then
  loc_11015A0:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_11015A3:     GoTo loc_110162E
  loc_11015A6:   End If
  loc_11015D7:   global_96 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_1101602:   var_B0 = var_8C.Fields.Item("start_srl_no")
  loc_1101617:   var_D0 = (var_B0.Value + 1)
  loc_110161D:   var_94 = CLng(var_D0)
  loc_110162E:   ' Referenced from: 11015A3
  loc_110162E: End If
  loc_1101659: var_C0 = Space((5 - Len(var_90)))
  loc_1101661: var_E0 = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_B0.Value)
  loc_110166E: var_F0 = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + CVar(global_96))
  loc_1101682: var_110 = Space((5 - Len(global_96)))
  loc_110168A: var_134 = (var_F0 + var_F0 & " Order By VP.Date_From DESC")
  loc_11016A0: var_150 = Space((8 - Len(CStr(var_94))))
  loc_11016A8: var_160 = (var_134 + var_150)
  loc_11016B4: var_180 = (var_160 + CVar(CStr(var_94)))
  loc_11016BF: global_100 = CStr(var_180)
  loc_11016F5: Me.LblVPrefix.Caption = global_96
  loc_110170E: Set var_AC = Me.Txt
  loc_1101714: Call 0.Method_Proc_279_44_11017980 (CInt(4), var_B0)
  loc_110171C: var_B0.Text = global_100
  loc_110173B: Set var_AC = Me.Txt
  loc_1101741: Call 0.Method_Proc_279_44_11017980 (CInt(5), var_B0)
  loc_1101749: var_B0.Text = CStr(var_94)
  loc_1101766: Set var_AC = Me.Txt
  loc_110176C: Call 0.Method_Proc_279_44_11017980 (CInt(6), var_B0)
  loc_1101774: var_B0.Text = var_90
  loc_1101786: var_88 = global_100
  loc_110178E: Set var_8C = Nothing
  loc_1101791: Proc_279_44_1101798 = var_94
End Sub

Public Sub Proc_279_45_1B152A4
  'Data Table: 5571BC
  Dim var_12C As String
  Dim var_130 As String
  Dim unk_5571D7 As Connection15
  Dim var_D8 As Recordset15
  Dim var_140 As Variant
  Dim var_154 As Variant
  Dim var_150 As Variant
  Dim var_178 As Variant
  Dim var_15C As Variant
  Dim var_160 As String
  Dim var_164 As Variant
  Dim var_168 As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  Dim var_F4 As Double
  Dim var_FC As Double
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_1B0 As String
  Dim var_1B4 As String
  Dim var_120 As Double
  Dim var_9E As Integer
  Dim var_128 As Double
  Dim var_19C As Variant
  Dim var_1F8 As Variant
  Dim var_208 As Variant
  Dim var_1C4 As Variant
  Dim var_218 As Variant
  Dim var_1D4 As Variant
  Dim var_228 As Variant
  Dim var_238 As Variant
  Dim var_248 As Variant
  Dim var_26C As Variant
  Dim var_268 As Variant
  Dim var_27C As Variant
  Dim var_294 As Variant
  Dim var_258 As Variant
  Dim var_2C4 As Variant
  Dim var_2D4 As Variant
  Dim var_2E4 As Variant
  Dim var_2F4 As Variant
  Dim var_32C As String
  Dim var_280 As Field20
  Dim var_330 As String
  Dim var_338 As String
  Dim var_340 As String
  Dim var_90 As Recordset15
  Dim var_8C As Recordset15
  Dim var_94 As Recordset15
  Dim var_96 As Integer
  Dim var_86 As Integer
  Dim var_37C As Double
  Dim var_A8 As Double
  Dim var_33C As String
  Dim var_9C As Recordset15
  Dim var_C0 As Double
  Dim var_C8 As Double
  Dim var_EC As Double
  Dim var_36C As Double
  Dim var_374 As Double
  Dim var_38C As Integer
  Dim var_E4 As Double
  Dim var_B0 As Double
  loc_1B10C78: var_12C = "Select * from MemEnviro where LogSite_Code='" & MemVar_1F95078
  loc_1B10C88: unk_5571D7.Execute var_12C & "'", var_150, -1
  loc_1B10C93: Set var_D8 = var_154
  loc_1B10CB7: If (var_D8.RecordCount > 0) Then
  loc_1B10CD1:   var_15C = var_D8.Fields.Item("AgeParameter")
  loc_1B10CD9:   var_150 = CVar(var_15C) 'Address
  loc_1B10CE2:   var_CC = Proc_6_38_E69628(var_150)
  loc_1B10CEB: End If
  loc_1B10CF0: Set var_D8 = Nothing
  loc_1B10D26: Call 0.Method_Proc_279_45_1B152A40 (CInt(1), var_15C, var_12C, "Select IsNull(Max(Surcharge),'') from MemCatMast where Code='", var_150, -1)
  loc_1B10D47: unk_5571D7.Execute var_168 & var_12C & "'", 0, var_17C
  loc_1B10D57:  = var_168.Item(Me.Txt)
  loc_1B10D5F:  = var_17C.Value
  loc_1B10D68: var_118 = CStr(var_15C.Tag.Fields)
  loc_1B10D98: Set var_154 = Me.Txt
  loc_1B10D9E: Call 0.Method_Proc_279_45_1B152A40 (CInt(2), var_15C)
  loc_1B10DC3: var_F4 = CDate("01/" & Trim(CVar(Proc_6_38_E69628(CVar(var_15C)))))
  loc_1B10DF2: var_FC = CDate(DateAdd("m", CDbl(&HFF), var_F4))
  loc_1B10E14: var_104 = CDate(DateAdd("m", CDbl(&HFE), var_F4))
  loc_1B10E25: Set var_154 = Me.Txt
  loc_1B10E2B: Call 0.Method_Proc_279_45_1B152A40 (CInt(3), var_15C, var_104)
  loc_1B10E6D: Set var_154 = Me.Txt
  loc_1B10E73: Call 0.Method_Proc_279_45_1B152A40 (CInt(2), var_15C, "15/")
  loc_1B10E7B: var_150 = CVar(var_15C) 'Address
  loc_1B10E8A: var_19C = Trim(CVar(Proc_6_38_E69628(var_150, CDate(Trim(CVar(Proc_6_38_E69628(CVar(var_15C), var_FC)))))))
  loc_1B10E92: var_1AC = var_F4 & var_19C 
  loc_1B10E98: var_10C = CDate(var_1AC)
  loc_1B10EB3: If (var_CC = "Yes") Then
  loc_1B10EE3:   Set var_154 = Me.Txt
  loc_1B10EE9:   Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_15C, var_12C, "Select DOB From SubGroup S Inner Join MemberFamily M On S.SubCode=M.SubCode And M.SNo=1 Where S.SubCode='", var_150, -1)
  loc_1B10F18:   unk_5571D7.Execute var_168 & var_12C & "' And (S.Logsite_Code='" & MemVar_1F95078 & "' Or S.Logsite_Code='HO')", 0, var_17C
  loc_1B10F20:   var_18C = var_15C.Tag.Fields
  loc_1B10F28:    = var_168.Item(var_10C)
  loc_1B10F30:    = var_17C.Value
  loc_1B10F5E:   If IsNull(var_18C) Then
  loc_1B10F74:     var_150 = "Member's Date Of Birth is not defined!"
  loc_1B10F7A:     MsgBox(var_150, &H10, var_18C, var_19C, var_1AC)
  loc_1B10F8A:     Exit Sub
  loc_1B10F8E:   Else
  loc_1B10F9C:     Set var_154 = Me.Txt
  loc_1B10FA2:     Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_15C)
  loc_1B10FAA:     var_12C = var_15C.Tag
  loc_1B10FB5:     var_178 = 0
  loc_1B10FD2:     var_130 = "Select max(DOB) From SubGroup S Inner Join MemberFamily M On S.SubCode=M.SubCode And M.SNo=1 Where S.SubCode='" & var_12C
  loc_1B10FD9:     var_160 = var_130 & "' And (S.Logsite_Code='"
  loc_1B10FF0:     unk_5571D7.Execute var_160 & MemVar_1F95078 & "' Or S.Logsite_Code='HO')", var_150, -1
  loc_1B10FF8:     var_164 = var_164.Fields
  loc_1B11000:     var_178 = var_168.Item(var_168)
  loc_1B11008:     var_17C = var_17C.Value
  loc_1B11012:     var_120 = CDate(var_18C)
  loc_1B11046:     Set var_154 = Me.Txt
  loc_1B1104C:     Call 0.Method_Proc_279_45_1B152A40 (CInt(3), var_15C, var_12C)
  loc_1B11054:     var_120 = var_15C.Text
  loc_1B110B4:     var_128 = CDate(DateAdd("yyyy", CDbl(CInt(DateDiff("yyyy", var_120, CDate(CDate(var_12C)), 1, 1))), var_120))
  loc_1B110C8:     Set var_154 = Me.Txt
  loc_1B110CE:     Call 0.Method_Proc_279_45_1B152A40 (CInt(3), var_15C, var_12C)
  loc_1B110EE:     If (var_15C.Text <= CDate(var_12C)) Then
  loc_1B110F7:       var_9E = (var_9E + 1)
  loc_1B110FA:     End If
  loc_1B110FA:   End If
  loc_1B110FA: End If
  loc_1B11106: Set var_154 = Me.LblCap
  loc_1B1110C: Call 0.Method_Proc_279_45_1B152A48 (var_1D6, var_86, 2)
  loc_1B11117: For var_1DA = var_9E To var_1D6: var_9E = var_1DA 'Integer
  loc_1B11127:   Set var_154 = Me.LblCap
  loc_1B1112D:   Call 0.Method_Proc_279_45_1B152A40 (var_86, var_15C)
  loc_1B1113E:   Me.LblCap.Unload var_15C
  loc_1B11154:   Set var_154 = Me.TxtGt
  loc_1B1115A:   Call 0.Method_Proc_279_45_1B152A40 (var_86, var_15C)
  loc_1B1116B:   Me.TxtGt.Unload var_15C
  loc_1B1117A: Next var_1DA 'Integer
  loc_1B1118B: Set var_154 = Me.LblCap1
  loc_1B11191: Call 0.Method_Proc_279_45_1B152A48 (var_1D6, var_86)
  loc_1B1119C: For var_1DE =  To var_1D6: 2 = var_1DE 'Integer
  loc_1B111AC:   Set var_154 = Me.LblCap1
  loc_1B111B2:   Call 0.Method_Proc_279_45_1B152A40 (var_86)
  loc_1B111C3:   Me.LblCap1.Unload var_15C
  loc_1B111D9:   Set var_154 = Me.TxtGt1
  loc_1B111DF:   Call 0.Method_Proc_279_45_1B152A40 (var_86, var_15C)
  loc_1B111F0:   Me.TxtGt1.Unload var_15C
  loc_1B111FF: Next var_1DE 'Integer
  loc_1B11210: Set var_154 = Me.LblCap2
  loc_1B11216: Call 0.Method_Proc_279_45_1B152A48 (var_1D6, var_86)
  loc_1B11221: For var_1E2 =  To var_1D6: 2 = var_1E2 'Integer
  loc_1B11231:   Set var_154 = Me.LblCap2
  loc_1B11237:   Call 0.Method_Proc_279_45_1B152A40 (var_86)
  loc_1B11248:   Me.LblCap2.Unload var_15C
  loc_1B1125E:   Set var_154 = Me.TxtGt2
  loc_1B11264:   Call 0.Method_Proc_279_45_1B152A40 (var_86, var_15C)
  loc_1B11275:   Me.TxtGt2.Unload var_15C
  loc_1B11284: Next var_1E2 'Integer
  loc_1B11295: Set var_154 = Me.LblCap3
  loc_1B1129B: Call 0.Method_Proc_279_45_1B152A48 (var_1D6, var_86)
  loc_1B112A6: For var_1E6 =  To var_1D6: 2 = var_1E6 'Integer
  loc_1B112B6:   Set var_154 = Me.LblCap3
  loc_1B112BC:   Call 0.Method_Proc_279_45_1B152A40 (var_86)
  loc_1B112CD:   Me.LblCap3.Unload var_15C
  loc_1B112E3:   Set var_154 = Me.TxtGt3
  loc_1B112E9:   Call 0.Method_Proc_279_45_1B152A40 (var_86, var_15C)
  loc_1B112FA:   Me.TxtGt3.Unload var_15C
  loc_1B11309: Next var_1E6 'Integer
  loc_1B1131A: Set var_154 = Me.TxtGt
  loc_1B11320: Call 0.Method_Proc_279_45_1B152A40 (1, var_15C)
  loc_1B11328: var_15C.Text = vbNullString
  loc_1B1133F: Set var_154 = Me.LblCap1
  loc_1B11345: Call 0.Method_Proc_279_45_1B152A40 (1, var_15C)
  loc_1B1134D: var_15C.Visible = False
  loc_1B11364: Set var_154 = Me.TxtGt1
  loc_1B1136A: Call 0.Method_Proc_279_45_1B152A40 (1, var_15C)
  loc_1B11372: var_15C.Visible = False
  loc_1B11389: Set var_154 = Me.LblCap2
  loc_1B1138F: Call 0.Method_Proc_279_45_1B152A40 (1, var_15C)
  loc_1B11397: var_15C.Visible = False
  loc_1B113AE: Set var_154 = Me.TxtGt2
  loc_1B113B4: Call 0.Method_Proc_279_45_1B152A40 (1, var_15C)
  loc_1B113BC: var_15C.Visible = False
  loc_1B113D3: Set var_154 = Me.LblCap3
  loc_1B113D9: Call 0.Method_Proc_279_45_1B152A40 (1, var_15C)
  loc_1B113E1: var_15C.Visible = False
  loc_1B113F8: Set var_154 = Me.TxtGt3
  loc_1B113FE: Call 0.Method_Proc_279_45_1B152A40 (1, var_15C)
  loc_1B11406: var_15C.Visible = False
  loc_1B1141F: var_140 = "Select Max(MB.FCCode) As FcCode,Max(MF.Name) As Facility,Sum(Amount) As Amount,Max(MF.TaxStru) As TaxStru,Max(MF.AcCode) As AcCode from (MemFacilityBilling MB Left Join MemFacilityMast MF On MB.FcCode=MF.Code) Where MthYear='"
  loc_1B1142F: Set var_154 = Me.Txt
  loc_1B11435: Call 0.Method_Proc_279_45_1B152A40 (CInt(2), var_15C, var_140)
  loc_1B11455: var_1AC = var_268 & Trim(CVar(var_15C)) & "' And MemCode='" 
  loc_1B11467: Set var_164 = Me.Txt
  loc_1B1146D: Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_168, var_12C)
  loc_1B11475: var_1AC = var_168.Tag
  loc_1B11480: var_208 = -1 & CVar(var_12C) 
  loc_1B1149C: var_248 = var_208 & "' And (MF.LogSite_Code='" & CVar(MemVar_1F95078) & "' Or MF.LogSite_Code='HO') Group By MB.FcCode Order By Facility" 
  loc_1B114AA: unk_5571D7.Execute CStr(var_248), var_17C, 
  loc_1B114B5: Set var_8C = var_17C
  loc_1B114FB: Set var_154 = Me.Txt
  loc_1B11501: Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_15C, var_12C, "Select max(RestCode) As RestCode,max(Name) As Outlet,Sum(AmtCr) As Amount from PayCharge P Left Join Depart D On P.RestCode=D.Code Where P.CompCode='")
  loc_1B11509: var_324 = var_15C.Tag
  loc_1B11512: var_130 = -1 & var_12C
  loc_1B11519: var_19C = CVar(CStr(var_248) & "' And P.PayType ='Member' And P.RoomType='TB' And SubString(convert(Varchar(11),vdate,106),4,3)+'/'+ SubString(convert(Varchar(11),vdate,106),8,4)='") 'String
  loc_1B11527: Set var_164 = Me.Txt
  loc_1B1152D: Call 0.Method_Proc_279_45_1B152A40 (CInt(2), var_168)
  loc_1B11535: var_150 = CVar(var_168) 'Address
  loc_1B1153C: var_18C = Trim(var_150)
  loc_1B11560: var_218 = var_268 & Trim(CVar(var_15C)) & var_18C & "' And (P.Logsite_Code='" & CVar(MemVar_1F95078) & "' Or P.Logsite_Code='HO') Group By restCode " 
  loc_1B11569: var_228 = var_218 & " Union All Select max(RestCode) As RestCode,'Banquet' As Outlet,Sum(AmtCr) As Amount from PayChargeH P Where P.CompCode='" 
  loc_1B1157B: Set var_17C = Me.Txt
  loc_1B11581: Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_26C, var_160)
  loc_1B11589: var_228 = var_26C.Tag
  loc_1B11598: var_238 = "' And P.PayType ='Member' And P.RoomType='HS' And SubString(convert(Varchar(11),vdate,106),4,3)+'/'+ SubString(convert(Varchar(11),vdate,106),8,4)='"
  loc_1B115AC: Set var_280 = Me.Txt
  loc_1B115B2: Call 0.Method_Proc_279_45_1B152A40 (CInt(2), var_284)
  loc_1B115BA: var_294 = CVar(var_284) 'Address
  loc_1B115D2: var_2C4 = var_328 & CVar(var_160) & "' Or MF.LogSite_Code='HO') Group By MB.FcCode Order By Facility" & Trim(var_294) & "' And (P.Logsite_Code='" 
  loc_1B115DC: var_2E4 = var_2C4 & CVar(MemVar_1F95078) 
  loc_1B115F3: unk_5571D7.Execute CStr(var_2E4 & "' Or P.Logsite_Code='HO') Group By restCode Order By Outlet"), , 
  loc_1B115FE: Set var_94 = var_328
  loc_1B11648: var_178 = 0
  loc_1B1166F: Set var_154 = Me.Txt
  loc_1B11675: Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_15C, var_12C, "Select Count(*) From MemRevenueForPeriod M Where M.MemCode='", var_150, -1)
  loc_1B11686: var_130 = var_26C & var_12C
  loc_1B1168D: var_1B0 = var_130 & "' And Cast(('01/'+'"
  loc_1B1169E: Set var_164 = Me.Txt
  loc_1B116A4: Call 0.Method_Proc_279_45_1B152A40 (CInt(2), var_168, var_160, CStr(var_2E4 & "' Or P.Logsite_Code='HO') Group By restCode Order By Outlet"))
  loc_1B116AC: var_178 = var_168.Text
  loc_1B116B5: var_1B4 = var_280 & var_160
  loc_1B116BC: var_32C = var_1B4 & "') As smalldatetime) Between Cast(('01/'+M.FrMonth) As smalldatetime) And Cast(('01/'+M.ToMonth) As smalldatetime)"
  loc_1B116C5: unk_5571D7.Execute var_32C, var_18C, 
  loc_1B116CD:  = var_15C.Tag.Fields
  loc_1B116D5:  = var_26C.Item()
  loc_1B116DD:  = var_280.Value
  loc_1B116E8: Proc_6_39_E7D3A0(var_328 & CVar(var_160) & Trim(CVar(var_15C)))
  loc_1B11721: If (var_328 & CVar(var_160) & Trim(CVar(var_15C)) > 0) Then
  loc_1B11738:   var_12C = "Select M.* from (Select M1.MemCode,M1.Type,M1.RevCode,M1.Amount,M1.Nature,M1.AppMonth, " & "M2.Description,M2.AcountYN,M2.AcCode,M2.AcPosting,M2.TaxStru,M2.SubsDetails,M2.RefundableYN,M2.SubsChargeYN,M1.LogSite_Code From "
  loc_1B11750:   Set var_154 = Me.Txt
  loc_1B11756:   Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_15C, var_130, var_12C & "((Select * From MemRevenueForPeriod MR Where MR.MemCode='")
  loc_1B1175E:   var_150 = var_15C.Tag
  loc_1B11767:   var_1B0 = -1 & var_130
  loc_1B1176E:   var_32C = CStr(var_2E4 & "' Or P.Logsite_Code='HO') Group By restCode Order By Outlet") & "' And Cast(('01/'+'"
  loc_1B1177F:   Set var_164 = Me.Txt
  loc_1B11785:   Call 0.Method_Proc_279_45_1B152A40 (CInt(2), var_168, var_1B4)
  loc_1B1178D:   var_32C = var_168.Text
  loc_1B117A4:   var_338 = var_280 & var_1B4 & "') As smalldatetime) " & "Between Cast(('01/'+MR.FrMonth) As smalldatetime) And Cast(('01/'+MR.ToMonth) As smalldatetime)) M1 Left Join MembershipRevMast M2 On M1.RevCode=M2.Code) Where SubsDetails='Recurring') M "
  loc_1B117AB:   var_340 = var_338 & "Where M.MemCode='"
  loc_1B117BC:   Set var_17C = Me.Txt
  loc_1B117C2:   Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_26C, var_33C)
  loc_1B117CA:   var_340 = var_26C.Tag
  loc_1B117F1:   unk_5571D7.Execute var_18C & var_33C & "' And (M.Logsite_Code='" & MemVar_1F95078 & "' Or M.Logsite_Code='HO')", , 
  loc_1B117FC:   Set var_90 = var_280
  loc_1B11848:   If (var_90.RecordCount > 0) Then
  loc_1B118AE:     If ((Proc_6_38_E69628(CVar(var_90.Fields.Item("Type"))) = "OutStation") And ((var_8C.RecordCount > 0) Or (var_94.RecordCount > 0))) Then
  loc_1B118B4:       var_B4 = "'"
  loc_1B118B7:       ' Referenced from: 1B11996
  loc_1B118C6:       If Not(var_90.EOF) Then
  loc_1B118E6:         If (var_90.AbsolutePosition = var_90.RecordCount) Then
  loc_1B11919:           var_18C = (CVar(var_B4) + var_90.Fields.Item("RevCode").Value)
  loc_1B11922:           var_19C = (var_18C + "'")
  loc_1B11927:           var_B4 = CStr(var_328 & CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Type"))) & "((Select * From MemRevenueForPeriod MR Where MR.MemCode='") & Trim(CVar(var_90.Fields.Item("RevCode"))))
  loc_1B1193D:         Else
  loc_1B1195D:           var_15C = var_90.Fields.Item("RevCode")
  loc_1B1196D:           var_18C = (CVar(var_B4) + var_15C.Value)
  loc_1B11976:           var_19C = (var_18C + "','")
  loc_1B1197B:           var_B4 = CStr(var_328 & CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Type"))) & "((Select * From MemRevenueForPeriod MR Where MR.MemCode='") & Trim(CVar(var_15C)))
  loc_1B1198E:         End If
  loc_1B11991:         var_90.MoveNext
  loc_1B11996:         GoTo loc_1B118B7
  loc_1B11999:       End If
  loc_1B119AD:       var_12C = "Select M.* from (Select M1.MemCat,M1.RevCode,M1.Amount,M1.Nature,M1.AppMonth, " & "M2.Description,M2.AcountYN,M2.AcCode,M2.AcPosting,M2.TaxStru,M2.SubsDetails,M2.RefundableYN,M2.SubsChargeYN,M1.LogSite_Code From "
  loc_1B119C5:       Set var_154 = Me.Txt
  loc_1B119CB:       Call 0.Method_Proc_279_45_1B152A40 (CInt(1), var_15C, var_130, var_12C & "(MemCatRevWise M1 Left Join MembershipRevMast M2 On M1.RevCode=M2.Code) Where MemCat='")
  loc_1B119D3:       var_27C = var_15C.Tag
  loc_1B119DC:       var_1B0 = -1 & var_130
  loc_1B119EA:       var_330 = CStr(var_2E4 & "' Or P.Logsite_Code='HO') Group By restCode Order By Outlet") & "' And SubsDetails='Recurring' And " & "AppDate=(Select Top 1 AppDate From MemCatRevWise Where MemCat='"
  loc_1B119FB:       Set var_164 = Me.Txt
  loc_1B11A01:       Call 0.Method_Proc_279_45_1B152A40 (CInt(1), var_168, var_32C)
  loc_1B11A09:       var_330 = var_168.Tag
  loc_1B11A27:       Set var_17C = Me.Txt
  loc_1B11A2D:       Call 0.Method_Proc_279_45_1B152A40 (CInt(3), var_26C)
  loc_1B11A3C:       Proc_6_7_F26918(var_18C, CVar(var_26C))
  loc_1B11A60:       var_218 = CVar(var_280 & var_32C & "' And Appdate<=") & var_18C & "Order By AppDate Desc)) M " & "Where (M.Logsite_Code='" & CVar(MemVar_1F95078) 
  loc_1B11A8A:       unk_5571D7.Execute CStr(var_218 & "' Or M.Logsite_Code='HO') And M.RevCode In (" & CVar(var_B4) & ")"), , 
  loc_1B11A95:       Set var_90 = var_280
  loc_1B11AD5:     End If
  loc_1B11AD5:   End If
  loc_1B11AD8: Else
  loc_1B11AEC:   var_12C = "Select M.* from (Select M1.MemCat,M1.RevCode,M1.Amount,M1.Nature,M1.AppMonth, " & "M2.Description,M2.AcountYN,M2.AcCode,M2.AcPosting,M2.TaxStru,M2.SubsDetails,M2.RefundableYN,M2.SubsChargeYN,M1.LogSite_Code From "
  loc_1B11B04:   Set var_154 = Me.Txt
  loc_1B11B0A:   Call 0.Method_Proc_279_45_1B152A40 (CInt(1), var_15C, var_130, var_12C & "(MemCatRevWise M1 Left Join MembershipRevMast M2 On M1.RevCode=M2.Code) Where MemCat='")
  loc_1B11B12:   var_248 = var_15C.Tag
  loc_1B11B1B:   var_1B0 = -1 & var_130
  loc_1B11B29:   var_330 = CStr(var_2E4 & "' Or P.Logsite_Code='HO') Group By restCode Order By Outlet") & "' And SubsDetails='Recurring' And " & "AppDate=(Select Top 1 AppDate From MemCatRevWise Where MemCat='"
  loc_1B11B3A:   Set var_164 = Me.Txt
  loc_1B11B40:   Call 0.Method_Proc_279_45_1B152A40 (CInt(1), var_168, var_32C)
  loc_1B11B48:   var_330 = var_168.Tag
  loc_1B11B66:   Set var_17C = Me.Txt
  loc_1B11B6C:   Call 0.Method_Proc_279_45_1B152A40 (CInt(3), var_26C)
  loc_1B11B7B:   Proc_6_7_F26918(var_18C, CVar(var_26C))
  loc_1B11B9F:   var_218 = CVar(var_280 & var_32C & "' And Appdate<=") & var_18C & "Order By AppDate Desc)) M " & "Where (M.Logsite_Code='" & CVar(MemVar_1F95078) 
  loc_1B11BA8:   var_228 = var_218 & "' Or M.Logsite_Code='HO')" 
  loc_1B11BAC:   var_338 = CStr(var_228)
  loc_1B11BB6:   unk_5571D7.Execute var_338, , 
  loc_1B11BC1:   Set var_90 = var_280
  loc_1B11BFD: End If
  loc_1B11C10: Me.FGrid.Rows = 1
  loc_1B11C2B: Me.FGCat.Rows = 1
  loc_1B11C35: var_96 = 1
  loc_1B11C3A: var_86 = 1
  loc_1B11C51: If (var_8C.RecordCount > 0) Then
  loc_1B11C54:   ' Referenced from: 1B1245B
  loc_1B11C5A:   var_1D6 = var_8C.EOF
  loc_1B11C63:   If Not(var_1D6) Then
  loc_1B11C70:     Set var_154 = Me.LblCap1
  loc_1B11C76:     Call 0.Method_Proc_279_45_1B152A48 (var_1D6, var_86)
  loc_1B11C82:     If (var_86 > var_1D6) Then
  loc_1B11C8F:       Set var_154 = Me.LblCap1
  loc_1B11C95:       Call 0.Method_Proc_279_45_1B152A40 (var_86, var_15C)
  loc_1B11CA6:       Me.LblCap1.Load var_15C
  loc_1B11CBF:       Set var_164 = Me.LblCap1
  loc_1B11CC5:       Call 0.Method_Proc_279_45_1B152A40 (var_86, var_168)
  loc_1B11CE2:       Set var_154 = Me.LblCap1
  loc_1B11CE8:       Call 0.Method_Proc_279_45_1B152A40 ((var_86 - 1), var_15C)
  loc_1B11D0B:       Set var_17C = Me.LblCap1
  loc_1B11D11:       Call 0.Method_Proc_279_45_1B152A40 (var_86, var_26C)
  loc_1B11D19:       var_26C.Top = ((var_15C.Top + var_168.Height) + CDbl(&HF))
  loc_1B11D2D:     End If
  loc_1B11D37:     Set var_154 = Me.TxtGt1
  loc_1B11D3D:     Call 0.Method_Proc_279_45_1B152A48 (var_1D6, var_86)
  loc_1B11D49:     If (var_96 > var_1D6) Then
  loc_1B11D56:       Set var_154 = Me.TxtGt1
  loc_1B11D5C:       Call 0.Method_Proc_279_45_1B152A40 (var_86)
  loc_1B11D6D:       Me.TxtGt1.Load var_15C
  loc_1B11D86:       Set var_164 = Me.TxtGt1
  loc_1B11D8C:       Call 0.Method_Proc_279_45_1B152A40 (var_86, var_168)
  loc_1B11DA9:       Set var_154 = Me.TxtGt1
  loc_1B11DAF:       Call 0.Method_Proc_279_45_1B152A40 ((var_86 - 1), var_15C)
  loc_1B11DD2:       Set var_17C = Me.TxtGt1
  loc_1B11DD8:       Call 0.Method_Proc_279_45_1B152A40 (var_86, var_26C)
  loc_1B11DE0:       var_26C.Top = ((var_15C.Top + var_168.Height) + CDbl(&HF))
  loc_1B11DF4:     End If
  loc_1B11E00:     Set var_154 = Me.LblCap1
  loc_1B11E06:     Call 0.Method_Proc_279_45_1B152A40 (var_86, var_15C)
  loc_1B11E0E:     var_15C.Visible = True
  loc_1B11E26:     Set var_154 = Me.TxtGt1
  loc_1B11E2C:     Call 0.Method_Proc_279_45_1B152A40 (var_86, var_15C)
  loc_1B11E34:     var_15C.Visible = True
  loc_1B11E75:     Set var_164 = Me.LblCap1
  loc_1B11E7B:     Call 0.Method_Proc_279_45_1B152A40 (var_86, var_168)
  loc_1B11E83:     var_168.Tag = Proc_6_38_E69628(CVar(var_8C.Fields.Item("fcCode")))
  loc_1B11ECF:     var_18C = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Facility")))) 'String
  loc_1B11EEB:     Set var_164 = Me.LblCap1
  loc_1B11EF1:     Call 0.Method_Proc_279_45_1B152A40 (var_86, var_168)
  loc_1B11EF9:     var_168.Caption = CStr(StrConv(var_18C, 3, 0))
  loc_1B11F3D:     Proc_6_39_E7D3A0(var_18C, CVar(var_8C.Fields.Item("Amount")))
  loc_1B11F65:     var_12C = CStr(Format(var_18C, "0.00"))
  loc_1B11F73:     Set var_164 = Me.TxtGt1
  loc_1B11F79:     Call 0.Method_Proc_279_45_1B152A40 (var_86, var_168, var_12C)
  loc_1B11F81:     var_168.Text = 1
  loc_1B11FA2:     var_150 = CVar(CStr(var_96)) 'String
  loc_1B11FAA:     Set var_154 = Me.FGrid
  loc_1B11FF7:     var_18C = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Facility")), CVar(CLng(6)), CVar(CLng(var_96)), FGrid.DispID_10000)) 'String
  loc_1B12005:     LateIdCallSt
  loc_1B12041:     Proc_6_39_E7D3A0(var_18C, CVar(var_8C.Fields.Item("Amount")), Me.FGrid, var_18C)
  loc_1B1204A:     var_1C4 = CVar(CLng(var_96)) 'Long
  loc_1B12052:     var_238 = CVar(CLng(9)) 'Long
  loc_1B12089:     LateIdCallSt
  loc_1B120CD:     var_15C = var_8C.Fields.Item("AcCode")
  loc_1B120DE:     var_18C = CVar(Proc_6_38_E69628(CVar(var_15C), CVar(CLng(8)), CVar(CLng(var_96)), Me.FGrid, CVar(CStr(Format(var_18C, "0.00"))), 1)) 'String
  loc_1B120E6:     Set var_164 = Me.FGrid
  loc_1B120EC:     LateIdCallSt
  loc_1B12106:     var_140 = CVar(CLng(var_96)) 'Long
  loc_1B1210E:     var_1C4 = CVar(CLng(&HB)) 'Long
  loc_1B12113:     var_238 = vbNullString
  loc_1B1211D:     Set var_154 = Me.FGrid
  loc_1B12123:     LateIdCallSt
  loc_1B12132:     var_140 = CVar(CLng(var_96)) 'Long
  loc_1B1213A:     var_1C4 = CVar(CLng(&HC)) 'Long
  loc_1B12149:     Set var_154 = Me.FGrid
  loc_1B1214F:     LateIdCallSt
  loc_1B1217F:     Call 0.Method_Proc_279_45_1B152A40 (CInt(4), var_15C, var_12C, CVar(CLng(1)), CVar(CLng(var_96)), Me.Txt, "Y")
  loc_1B12187:     var_1C4 = var_15C.Text
  loc_1B1219D:     LateIdCallSt
  loc_1B121D0:     Set var_154 = Me.Txt
  loc_1B121D6:     Call 0.Method_Proc_279_45_1B152A40 (CInt(5), var_15C, var_12C, CVar(CLng(2)), CVar(CLng(var_96)), Me.FGrid, CVar(var_12C))
  loc_1B121DE:     var_140 = var_15C.Text
  loc_1B121E6:     var_150 = CVar(var_12C) 'String
  loc_1B121EE:     Set var_164 = Me.FGrid
  loc_1B121F4:     LateIdCallSt
  loc_1B1220C:     var_140 = CVar(CLng(var_96)) 'Long
  loc_1B12223:     Set var_154 = Me.FGrid
  loc_1B12229:     LateIdCallSt
  loc_1B12257:     var_154 = var_8C.Fields
  loc_1B12274:     var_18C = CVar(Proc_6_38_E69628(var_154.Item("fcCode").Value, CVar(CLng(5)), CVar(CLng(var_96)), var_154, vbNullString, CVar(CLng(&HD)))) 'String
  loc_1B12282:     LateIdCallSt
  loc_1B122AE:     var_140 = "TaxStru"
  loc_1B122C2:     var_15C = var_8C.Fields.Item(var_140)
  loc_1B122D3:     var_18C = CVar(Proc_6_38_E69628(CVar(var_15C), CVar(CLng(7)), CVar(CLng(var_96)), Me.FGrid, var_18C, var_140)) 'String
  loc_1B122E1:     LateIdCallSt
  loc_1B12316:     Set var_154 = Me.Txt
  loc_1B1231C:     Call 0.Method_Proc_279_45_1B152A40 (CInt(6), var_15C, var_12C, CVar(CLng(3)), CVar(CLng(var_96)), Me.FGrid)
  loc_1B12324:     var_18C = var_15C.Text
  loc_1B1232C:     var_150 = CVar(var_12C) 'String
  loc_1B12334:     Set var_164 = Me.FGrid
  loc_1B1233A:     LateIdCallSt
  loc_1B12352:     var_140 = CVar(CLng(var_96)) 'Long
  loc_1B1235A:     var_1C4 = CVar(CLng(4)) 'Long
  loc_1B1235F:     var_238 = "Facility"
  loc_1B12369:     Set var_154 = Me.FGrid
  loc_1B1236F:     LateIdCallSt
  loc_1B1237E:     var_140 = CVar(CLng(var_96)) 'Long
  loc_1B12386:     var_1C4 = CVar(CLng(7)) 'Long
  loc_1B12395:     var_150 = Me.FGrid.TextMatrix)
  loc_1B123A5:     var_238 = CVar(CLng(var_96)) 'Long
  loc_1B123AD:     var_2D4 = CVar(CLng(9)) 'Long
  loc_1B123B6:     Set var_15C = Me.FGrid
  loc_1B123CF:     var_37C = Val(CStr(var_15C.TextMatrix)))
  loc_1B1241F:     Call Proc_279_55_1843ABC(CStr(var_150), var_96, CSng(Format(CVar(var_37C), "0.00")), vbNullString, 0, 1, 1, var_37C)
  loc_1B12447:     var_96 = (var_96 + 1)
  loc_1B12450:     var_86 = (var_86 + 1)
  loc_1B12456:     var_8C.MoveNext
  loc_1B1245B:     GoTo loc_1B11C54
  loc_1B1245E:   End If
  loc_1B12469:   Set var_154 = Me.LblCap1
  loc_1B1246F:   Call 0.Method_Proc_279_45_1B152A40 (1, var_15C, &HFF, var_86, var_96, var_2D4, var_238)
  loc_1B12477:   var_15C.FontBold = var_150
  loc_1B12495:   Call 0.Method_Proc_279_45_1B152A4C (var_1D6, var_164, &HFF, var_1C4)
  loc_1B124A1:   Set var_15C = Me.LblCap1
  loc_1B124A7:   Call 0.Method_Proc_279_45_1B152A40 (var_1D6, var_140, Me.LblCap1)
  loc_1B124AF:   var_164.FontBold = var_238
  loc_1B124C8:   Set var_154 = Me.TxtGt1
  loc_1B124CE:   Call 0.Method_Proc_279_45_1B152A40 (1, var_15C)
  loc_1B124D6:   var_15C.FontBold = True
  loc_1B124EE:   Set var_154 = Me.TxtGt1
  loc_1B124F4:   Call 0.Method_Proc_279_45_1B152A4C (var_1D6, var_164)
  loc_1B12500:   Set var_15C = Me.TxtGt1
  loc_1B12506:   Call 0.Method_Proc_279_45_1B152A40 (var_1D6, &HFF)
  loc_1B1250E:   var_164.FontBold = var_1C4
  loc_1B1251C: End If
  loc_1B1251E: var_86 = 1
  loc_1B12535: If (var_90.RecordCount > 0) Then
  loc_1B12538:   ' Referenced from: 1B130CD
  loc_1B1253E:   var_1D6 = var_90.EOF
  loc_1B12547:   If Not(var_1D6) Then
  loc_1B12580:     Set var_164 = Me.Txt
  loc_1B12586:     Call 0.Method_Proc_279_45_1B152A40 (CInt(2), var_168)
  loc_1B1258E:     var_18C = CVar(var_168) 'Address
  loc_1B12595:     var_19C = Trim(var_18C)
  loc_1B125C1:     var_26C = var_90.Fields.Item("Nature")
  loc_1B125D2:     var_160 = Proc_6_38_E69628(CVar(var_26C))
  loc_1B1260B:     If (Proc_6_36_11C4410(Proc_6_38_E69628(CVar(var_90.Fields.Item("AppMonth"))), CStr(Left(var_19C, 3))) = &HFF) Then
  loc_1B12634:       Proc_6_39_E7D3A0(var_18C, CVar(var_90.Fields.Item("Amount")))
  loc_1B1263D:       var_A8 = CSng(var_18C)
  loc_1B12652:       If (var_CC = "Yes") Then
  loc_1B1266E:         var_130 = "Select SValue,PerOrAmt From MemAgeRevWise Where " & CStr(CInt(DateDiff("yyyy", var_120, CDate(CDate(var_12C)), 1, 1)))
  loc_1B12675:         var_160 = var_130 & " Between FrAge And ToAge And RevCode='"
  loc_1B126A7:         var_1B0 = Proc_6_38_E69628(var_90.Fields.Item("RevCode").Value, var_160, var_218, -1)
  loc_1B126C3:         Set var_164 = Me.Txt
  loc_1B126C9:         Call 0.Method_Proc_279_45_1B152A40 (CInt(1), var_168, var_32C, var_328 & Proc_6_38_E69628(CVar(var_90.Fields.Item("AppMonth"))) & "' And MemCat='")
  loc_1B126E1:         var_33C = var_160 & var_32C & "' And AppDate=(Select Top 1 AppDate From MemAgeRevWise Where MemCat='"
  loc_1B126F2:         Set var_17C = Me.Txt
  loc_1B126F8:         Call 0.Method_Proc_279_45_1B152A40 (CInt(1), var_26C, var_338)
  loc_1B12700:         var_33C = var_26C.Tag
  loc_1B1271E:         Set var_280 = Me.Txt
  loc_1B12724:         Call 0.Method_Proc_279_45_1B152A40 (CInt(3), var_284)
  loc_1B1272C:         var_18C = CVar(var_284) 'Address
  loc_1B12733:         Proc_6_7_F26918(var_19C, var_18C)
  loc_1B12752:         unk_5571D7.Execute CStr(CVar(var_86 & var_338 & "' And Appdate<=") & var_19C & "Order By AppDate Desc)"), , 
  loc_1B1275D:         Set var_9C = var_328
  loc_1B127B3:         If (var_9C.RecordCount > 0) Then
  loc_1B127EF:           If (Proc_6_38_E69628(CVar(var_9C.Fields.Item("PerOrAmt"))) = "Per") Then
  loc_1B1281F:             Proc_6_39_E7D3A0(var_18C, CVar(var_9C.Fields.Item("SValue")))
  loc_1B12835:             var_A8 = CSng(((CVar(var_168.Tag) * var_18C) / 100))
  loc_1B12845:           Else
  loc_1B1287E:             If (Proc_6_38_E69628(CVar(var_9C.Fields.Item("PerOrAmt"))) = "Amt") Then
  loc_1B12898:               var_15C = var_9C.Fields.Item("SValue")
  loc_1B128A7:               Proc_6_39_E7D3A0(var_18C, CVar(var_15C))
  loc_1B128B0:               var_A8 = CSng(var_18C)
  loc_1B128BD:             End If
  loc_1B128BD:           End If
  loc_1B128BD:         End If
  loc_1B128BD:       End If
  loc_1B128C4:       If (var_A8 <> CDbl(0)) Then
  loc_1B128D1:         Set var_154 = Me.LblCap2
  loc_1B128D7:         Call 0.Method_Proc_279_45_1B152A48 (var_1D6, var_86)
  loc_1B128E3:         If (var_A8 > var_1D6) Then
  loc_1B128F0:           Set var_154 = Me.LblCap2
  loc_1B128F6:           Call 0.Method_Proc_279_45_1B152A40 (var_86, var_15C)
  loc_1B12907:           Me.LblCap2.Load var_15C
  loc_1B12920:           Set var_164 = Me.LblCap2
  loc_1B12926:           Call 0.Method_Proc_279_45_1B152A40 (var_86, var_168)
  loc_1B12943:           Set var_154 = Me.LblCap2
  loc_1B12949:           Call 0.Method_Proc_279_45_1B152A40 ((var_86 - 1), var_15C)
  loc_1B1296C:           Set var_17C = Me.LblCap2
  loc_1B12972:           Call 0.Method_Proc_279_45_1B152A40 (var_86, var_26C)
  loc_1B1297A:           var_26C.Top = ((var_15C.Top + var_168.Height) + CDbl(&HF))
  loc_1B1298E:         End If
  loc_1B12998:         Set var_154 = Me.TxtGt2
  loc_1B1299E:         Call 0.Method_Proc_279_45_1B152A48 (var_1D6, var_86)
  loc_1B129AA:         If (var_A8 > var_1D6) Then
  loc_1B129B7:           Set var_154 = Me.TxtGt2
  loc_1B129BD:           Call 0.Method_Proc_279_45_1B152A40 (var_86)
  loc_1B129CE:           Me.TxtGt2.Load var_15C
  loc_1B129E7:           Set var_164 = Me.TxtGt2
  loc_1B129ED:           Call 0.Method_Proc_279_45_1B152A40 (var_86, var_168)
  loc_1B12A0A:           Set var_154 = Me.TxtGt2
  loc_1B12A10:           Call 0.Method_Proc_279_45_1B152A40 ((var_86 - 1), var_15C)
  loc_1B12A33:           Set var_17C = Me.TxtGt2
  loc_1B12A39:           Call 0.Method_Proc_279_45_1B152A40 (var_86, var_26C)
  loc_1B12A41:           var_26C.Top = ((var_15C.Top + var_168.Height) + CDbl(&HF))
  loc_1B12A55:         End If
  loc_1B12A61:         Set var_154 = Me.LblCap2
  loc_1B12A67:         Call 0.Method_Proc_279_45_1B152A40 (var_86, var_15C)
  loc_1B12A6F:         var_15C.Visible = True
  loc_1B12A87:         Set var_154 = Me.TxtGt2
  loc_1B12A8D:         Call 0.Method_Proc_279_45_1B152A40 (var_86, var_15C)
  loc_1B12A95:         var_15C.Visible = True
  loc_1B12ADD:         Set var_164 = Me.LblCap2
  loc_1B12AE3:         Call 0.Method_Proc_279_45_1B152A40 (var_86, var_168)
  loc_1B12AEB:         var_168.Tag = Proc_6_38_E69628(var_90.Fields.Item("RevCode").Value)
  loc_1B12B18:         var_15C = var_90.Fields.Item("Description")
  loc_1B12B55:         Set var_164 = Me.LblCap2
  loc_1B12B5B:         Call 0.Method_Proc_279_45_1B152A40 (var_86, var_168)
  loc_1B12B63:         var_168.Caption = CStr(StrConv(CVar(Proc_6_38_E69628(CVar(var_15C))), 3, 0))
  loc_1B12BA9:         var_12C = CStr(Format(var_A8, "0.00"))
  loc_1B12BB7:         Set var_154 = Me.TxtGt2
  loc_1B12BBD:         Call 0.Method_Proc_279_45_1B152A40 (var_86, var_15C, var_12C)
  loc_1B12BC5:         var_15C.Text = 1
  loc_1B12BE0:         var_150 = CVar(CStr(var_96)) 'String
  loc_1B12BE8:         Set var_154 = Me.FGrid
  loc_1B12C35:         var_18C = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Description")), CVar(CLng(6)), CVar(CLng(var_96)), FGrid.DispID_10000)) 'String
  loc_1B12C3D:         Set var_164 = Me.FGrid
  loc_1B12C43:         LateIdCallSt
  loc_1B12C5D:         var_1C4 = CVar(CLng(var_96)) 'Long
  loc_1B12C9B:         Set var_154 = Me.FGrid
  loc_1B12CA1:         LateIdCallSt
  loc_1B12CD5:         var_154 = var_90.Fields
  loc_1B12CEE:         var_18C = CVar(Proc_6_38_E69628(CVar(var_154.Item("AcCode")), CVar(CLng(8)), CVar(CLng(var_96)), var_154, CVar(CStr(Format(var_A8, "0.00"))), 1, 1)) 'String
  loc_1B12CFC:         LateIdCallSt
  loc_1B12D4B:         var_18C = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ACPosting")), CVar(CLng(&HB)), CVar(CLng(var_96)), Me.FGrid, var_18C, CVar(CLng(9)))) 'String
  loc_1B12D59:         LateIdCallSt
  loc_1B12D97:         var_15C = var_90.Fields.Item("AcountYN")
  loc_1B12DA8:         var_18C = CVar(Proc_6_38_E69628(CVar(var_15C), CVar(CLng(&HC)), CVar(CLng(var_96)), Me.FGrid, var_18C)) 'String
  loc_1B12DB6:         LateIdCallSt
  loc_1B12DEB:         Set var_154 = Me.Txt
  loc_1B12DF1:         Call 0.Method_Proc_279_45_1B152A40 (CInt(4), var_15C, var_12C, CVar(CLng(1)), CVar(CLng(var_96)), Me.FGrid)
  loc_1B12DF9:         var_18C = var_15C.Text
  loc_1B12E01:         var_150 = CVar(var_12C) 'String
  loc_1B12E0F:         LateIdCallSt
  loc_1B12E42:         Set var_154 = Me.Txt
  loc_1B12E48:         Call 0.Method_Proc_279_45_1B152A40 (CInt(5), var_15C, var_12C, CVar(CLng(2)), CVar(CLng(var_96)), Me.FGrid)
  loc_1B12E50:         var_150 = var_15C.Text
  loc_1B12E58:         var_150 = CVar(var_12C) 'String
  loc_1B12E60:         Set var_164 = Me.FGrid
  loc_1B12E66:         LateIdCallSt
  loc_1B12E7E:         var_140 = CVar(CLng(var_96)) 'Long
  loc_1B12E95:         Set var_154 = Me.FGrid
  loc_1B12E9B:         LateIdCallSt
  loc_1B12EC9:         var_154 = var_90.Fields
  loc_1B12EE6:         var_18C = CVar(Proc_6_38_E69628(var_154.Item("RevCode").Value, CVar(CLng(5)), CVar(CLng(var_96)), var_154, vbNullString, CVar(CLng(&HD)))) 'String
  loc_1B12EF4:         LateIdCallSt
  loc_1B12F20:         var_140 = "TaxStru"
  loc_1B12F34:         var_15C = var_90.Fields.Item(var_140)
  loc_1B12F45:         var_18C = CVar(Proc_6_38_E69628(CVar(var_15C), CVar(CLng(7)), CVar(CLng(var_96)), Me.FGrid, var_18C, var_140)) 'String
  loc_1B12F53:         LateIdCallSt
  loc_1B12F88:         Set var_154 = Me.Txt
  loc_1B12F8E:         Call 0.Method_Proc_279_45_1B152A40 (CInt(6), var_15C, var_12C, CVar(CLng(3)), CVar(CLng(var_96)), Me.FGrid)
  loc_1B12F96:         var_18C = var_15C.Text
  loc_1B12F9E:         var_150 = CVar(var_12C) 'String
  loc_1B12FA6:         Set var_164 = Me.FGrid
  loc_1B12FAC:         LateIdCallSt
  loc_1B12FC4:         var_140 = CVar(CLng(var_96)) 'Long
  loc_1B12FCC:         var_1C4 = CVar(CLng(4)) 'Long
  loc_1B12FD1:         var_238 = "Revenue"
  loc_1B12FDB:         Set var_154 = Me.FGrid
  loc_1B12FE1:         LateIdCallSt
  loc_1B12FF0:         var_140 = CVar(CLng(var_96)) 'Long
  loc_1B12FF8:         var_1C4 = CVar(CLng(7)) 'Long
  loc_1B13007:         var_150 = Me.FGrid.TextMatrix)
  loc_1B13017:         var_238 = CVar(CLng(var_96)) 'Long
  loc_1B1301F:         var_2D4 = CVar(CLng(9)) 'Long
  loc_1B13028:         Set var_15C = Me.FGrid
  loc_1B13041:         var_37C = Val(CStr(var_15C.TextMatrix)))
  loc_1B13091:         Call Proc_279_55_1843ABC(CStr(var_150), var_96, CSng(Format(CVar(var_37C), "0.00")), vbNullString, 0, 1, 1, var_37C)
  loc_1B130B9:         var_96 = (var_96 + 1)
  loc_1B130C2:         var_86 = (var_86 + 1)
  loc_1B130C5:       End If
  loc_1B130C5:     End If
  loc_1B130C8:     var_90.MoveNext
  loc_1B130CD:     GoTo loc_1B12538
  loc_1B130D0:   End If
  loc_1B130DB:   Set var_154 = Me.LblCap2
  loc_1B130E1:   Call 0.Method_Proc_279_45_1B152A40 (1, var_15C, &HFF, var_86, var_96, var_2D4, var_238)
  loc_1B130E9:   var_15C.FontBold = var_150
  loc_1B13107:   Call 0.Method_Proc_279_45_1B152A4C (var_1D6, var_164, &HFF, var_1C4)
  loc_1B13113:   Set var_15C = Me.LblCap2
  loc_1B13119:   Call 0.Method_Proc_279_45_1B152A40 (var_1D6, var_140, Me.LblCap2)
  loc_1B13121:   var_164.FontBold = var_238
  loc_1B1313A:   Set var_154 = Me.TxtGt2
  loc_1B13140:   Call 0.Method_Proc_279_45_1B152A40 (1, var_15C)
  loc_1B13148:   var_15C.FontBold = True
  loc_1B13160:   Set var_154 = Me.TxtGt2
  loc_1B13166:   Call 0.Method_Proc_279_45_1B152A4C (var_1D6, var_164)
  loc_1B13172:   Set var_15C = Me.TxtGt2
  loc_1B13178:   Call 0.Method_Proc_279_45_1B152A40 (var_1D6, &HFF)
  loc_1B13180:   var_164.FontBold = var_1C4
  loc_1B1318E: End If
  loc_1B13190: var_86 = 1
  loc_1B131A7: If (var_94.RecordCount > 0) Then
  loc_1B131AA:   ' Referenced from: 1B13922
  loc_1B131B0:   var_1D6 = var_94.EOF
  loc_1B131B9:   If Not(var_1D6) Then
  loc_1B131C6:     Set var_154 = Me.LblCap3
  loc_1B131CC:     Call 0.Method_Proc_279_45_1B152A48 (var_1D6, var_86)
  loc_1B131D8:     If (var_86 > var_1D6) Then
  loc_1B131E5:       Set var_154 = Me.LblCap3
  loc_1B131EB:       Call 0.Method_Proc_279_45_1B152A40 (var_86)
  loc_1B131FC:       Me.LblCap3.Load var_15C
  loc_1B13215:       Set var_164 = Me.LblCap3
  loc_1B1321B:       Call 0.Method_Proc_279_45_1B152A40 (var_86, var_168)
  loc_1B13238:       Set var_154 = Me.LblCap3
  loc_1B1323E:       Call 0.Method_Proc_279_45_1B152A40 ((var_86 - 1), var_15C)
  loc_1B13261:       Set var_17C = Me.LblCap3
  loc_1B13267:       Call 0.Method_Proc_279_45_1B152A40 (var_86, var_26C)
  loc_1B1326F:       var_26C.Top = ((var_15C.Top + var_168.Height) + CDbl(&HF))
  loc_1B13283:     End If
  loc_1B1328D:     Set var_154 = Me.TxtGt3
  loc_1B13293:     Call 0.Method_Proc_279_45_1B152A48 (var_1D6, var_86)
  loc_1B1329F:     If (var_15C > var_1D6) Then
  loc_1B132AC:       Set var_154 = Me.TxtGt3
  loc_1B132B2:       Call 0.Method_Proc_279_45_1B152A40 (var_86)
  loc_1B132C3:       Me.TxtGt3.Load var_15C
  loc_1B132DC:       Set var_164 = Me.TxtGt3
  loc_1B132E2:       Call 0.Method_Proc_279_45_1B152A40 (var_86, var_168)
  loc_1B132FF:       Set var_154 = Me.TxtGt3
  loc_1B13305:       Call 0.Method_Proc_279_45_1B152A40 ((var_86 - 1), var_15C)
  loc_1B13328:       Set var_17C = Me.TxtGt3
  loc_1B1332E:       Call 0.Method_Proc_279_45_1B152A40 (var_86, var_26C)
  loc_1B13336:       var_26C.Top = ((var_15C.Top + var_168.Height) + CDbl(&HF))
  loc_1B1334A:     End If
  loc_1B13356:     Set var_154 = Me.LblCap3
  loc_1B1335C:     Call 0.Method_Proc_279_45_1B152A40 (var_86, var_15C)
  loc_1B13364:     var_15C.Visible = True
  loc_1B1337C:     Set var_154 = Me.TxtGt3
  loc_1B13382:     Call 0.Method_Proc_279_45_1B152A40 (var_86, var_15C)
  loc_1B1338A:     var_15C.Visible = True
  loc_1B133D2:     Set var_164 = Me.LblCap3
  loc_1B133D8:     Call 0.Method_Proc_279_45_1B152A40 (var_86, var_168)
  loc_1B133E0:     var_168.Tag = Proc_6_38_E69628(var_94.Fields.Item("RestCode").Value)
  loc_1B1342E:     var_18C = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("Outlet")))) 'String
  loc_1B1344A:     Set var_164 = Me.LblCap3
  loc_1B13450:     Call 0.Method_Proc_279_45_1B152A40 (var_86, var_168)
  loc_1B13458:     var_168.Caption = CStr(StrConv(var_18C, 3, 0))
  loc_1B1349C:     Proc_6_39_E7D3A0(var_18C, CVar(var_94.Fields.Item("Amount")))
  loc_1B134C4:     var_12C = CStr(Format(var_18C, "0.00"))
  loc_1B134D2:     Set var_164 = Me.TxtGt3
  loc_1B134D8:     Call 0.Method_Proc_279_45_1B152A40 (var_86, var_168, var_12C)
  loc_1B134E0:     var_168.Text = 1
  loc_1B13501:     var_150 = CVar(CStr(var_96)) 'String
  loc_1B13509:     Set var_154 = Me.FGrid
  loc_1B13556:     var_18C = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("Outlet")), CVar(CLng(6)), CVar(CLng(var_96)), FGrid.DispID_10000)) 'String
  loc_1B13564:     LateIdCallSt
  loc_1B13591:     var_15C = var_94.Fields.Item("Amount")
  loc_1B135A0:     Proc_6_39_E7D3A0(var_18C, CVar(var_15C), Me.FGrid, var_18C)
  loc_1B135A9:     var_1C4 = CVar(CLng(var_96)) 'Long
  loc_1B135B1:     var_238 = CVar(CLng(9)) 'Long
  loc_1B135DA:     var_1F8 = CVar(CStr(Format(var_18C, "0.00"))) 'String
  loc_1B135E2:     Set var_164 = Me.FGrid
  loc_1B135E8:     LateIdCallSt
  loc_1B13608:     var_140 = CVar(CLng(var_96)) 'Long
  loc_1B13610:     var_1C4 = CVar(CLng(8)) 'Long
  loc_1B13615:     var_238 = vbNullString
  loc_1B1361F:     Set var_154 = Me.FGrid
  loc_1B13625:     LateIdCallSt
  loc_1B13634:     var_140 = CVar(CLng(var_96)) 'Long
  loc_1B1363C:     var_1C4 = CVar(CLng(&HB)) 'Long
  loc_1B13641:     var_238 = vbNullString
  loc_1B1364B:     Set var_154 = Me.FGrid
  loc_1B13651:     LateIdCallSt
  loc_1B13660:     var_140 = CVar(CLng(var_96)) 'Long
  loc_1B13668:     var_1C4 = CVar(CLng(&HC)) 'Long
  loc_1B13677:     Set var_154 = Me.FGrid
  loc_1B1367D:     LateIdCallSt
  loc_1B136AD:     Call 0.Method_Proc_279_45_1B152A40 (CInt(4), var_15C, var_12C, CVar(CLng(1)), CVar(CLng(var_96)), Me.Txt, "N")
  loc_1B136B5:     var_1C4 = var_15C.Text
  loc_1B136CB:     LateIdCallSt
  loc_1B136FE:     Set var_154 = Me.Txt
  loc_1B13704:     Call 0.Method_Proc_279_45_1B152A40 (CInt(5), var_15C, var_12C, CVar(CLng(2)), CVar(CLng(var_96)), Me.FGrid, CVar(var_12C))
  loc_1B1370C:     var_140 = var_15C.Text
  loc_1B13714:     var_150 = CVar(var_12C) 'String
  loc_1B13722:     LateIdCallSt
  loc_1B13761:     var_15C = var_94.Fields.Item("RestCode")
  loc_1B13776:     var_18C = CVar(Proc_6_38_E69628(var_15C.Value, CVar(CLng(&HD)), CVar(CLng(var_96)), Me.FGrid, var_15C.Value)) 'String
  loc_1B1377E:     Set var_164 = Me.FGrid
  loc_1B13784:     LateIdCallSt
  loc_1B137A0:     var_140 = CVar(CLng(var_96)) 'Long
  loc_1B137A8:     var_1C4 = CVar(CLng(5)) 'Long
  loc_1B137AD:     var_238 = vbNullString
  loc_1B137B7:     Set var_154 = Me.FGrid
  loc_1B137BD:     LateIdCallSt
  loc_1B137CC:     var_140 = CVar(CLng(var_96)) 'Long
  loc_1B137D4:     var_1C4 = CVar(CLng(7)) 'Long
  loc_1B137E3:     Set var_154 = Me.FGrid
  loc_1B137E9:     LateIdCallSt
  loc_1B13819:     Call 0.Method_Proc_279_45_1B152A40 (CInt(6), var_15C, var_12C, CVar(CLng(3)), CVar(CLng(var_96)), Me.Txt, vbNullString)
  loc_1B13821:     var_1C4 = var_15C.Text
  loc_1B13829:     var_150 = CVar(var_12C) 'String
  loc_1B13831:     Set var_164 = Me.FGrid
  loc_1B13837:     LateIdCallSt
  loc_1B1384F:     var_140 = CVar(CLng(var_96)) 'Long
  loc_1B13857:     var_1C4 = CVar(CLng(4)) 'Long
  loc_1B1385C:     var_238 = "Outlet"
  loc_1B13866:     Set var_154 = Me.FGrid
  loc_1B1386C:     LateIdCallSt
  loc_1B1387A:     var_140 = "Amount"
  loc_1B13886:     var_154 = var_94.Fields
  loc_1B1388E:     var_15C = var_154.Item(var_140)
  loc_1B13896:     var_150 = CVar(var_15C) 'Address
  loc_1B1389D:     Proc_6_39_E7D3A0(var_18C, var_150, var_154, var_238, var_1C4, var_140, var_164)
  loc_1B138EE:     Call Proc_279_55_1843ABC(MemVar_1F95078 & "TMPA", var_96, CSng(Format(var_18C, "0.00")), vbNullString, 0, 1, 1)
  loc_1B1390E:     var_96 = (var_96 + 1)
  loc_1B13917:     var_86 = (var_86 + 1)
  loc_1B1391D:     var_94.MoveNext
  loc_1B13922:     GoTo loc_1B131AA
  loc_1B13925:   End If
  loc_1B13930:   Set var_154 = Me.LblCap3
  loc_1B13936:   Call 0.Method_Proc_279_45_1B152A40 (1, var_15C, &HFF, var_86, var_96, var_150)
  loc_1B1393E:   var_15C.FontBold = var_140
  loc_1B1395C:   Call 0.Method_Proc_279_45_1B152A4C (var_1D6, var_164, &HFF, Me.LblCap3)
  loc_1B13968:   Set var_15C = Me.LblCap3
  loc_1B1396E:   Call 0.Method_Proc_279_45_1B152A40 (var_1D6, var_238, var_1C4)
  loc_1B13976:   var_164.FontBold = var_140
  loc_1B1398F:   Set var_154 = Me.TxtGt3
  loc_1B13995:   Call 0.Method_Proc_279_45_1B152A40 (1, var_15C)
  loc_1B1399D:   var_15C.FontBold = True
  loc_1B139B5:   Set var_154 = Me.TxtGt3
  loc_1B139BB:   Call 0.Method_Proc_279_45_1B152A4C (var_1D6, var_164)
  loc_1B139C7:   Set var_15C = Me.TxtGt3
  loc_1B139CD:   Call 0.Method_Proc_279_45_1B152A40 (var_1D6, &HFF)
  loc_1B139D5:   var_164.FontBold = var_164
  loc_1B139E3: End If
  loc_1B139F1: Set var_154 = Me.Txt
  loc_1B139F7: Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_15C)
  loc_1B139FF: var_12C = var_15C.Tag
  loc_1B13A3D: var_238 = 0
  loc_1B13A64: var_1AC = CVar("Select isnull(Sum(AmtCr),0) From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_12C)) & "' And V_Type In ('CNT') And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_1B13A81: unk_5571D7.Execute CStr(Format("MMM/yyyy", "0.00") & Format(var_F4, "MMM/yyyy") & "')"), var_218, -1
  loc_1B13A89: var_164 = var_164.Fields
  loc_1B13A91: var_238 = var_168.Item(var_168)
  loc_1B13A99: var_17C = var_17C.Value
  loc_1B13AA2: var_C0 = CSng(var_228)
  loc_1B13ADE: Set var_154 = Me.Txt
  loc_1B13AE4: Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_15C, var_12C, var_C0)
  loc_1B13AEC: var_228 = var_15C.Tag
  loc_1B13B2A: var_238 = 0
  loc_1B13B51: var_1AC = CVar("Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_12C), 1) & "' And V_Type In ('CNT') And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_1B13B60: var_208 = Format("MMM/yyyy", "0.00") & Format(var_F4, "MMM/yyyy") & "')" 
  loc_1B13B6E: unk_5571D7.Execute CStr(var_208), var_218, -1
  loc_1B13B76: var_164 = var_164.Fields
  loc_1B13B7E: var_238 = var_168.Item(var_168)
  loc_1B13B86: var_17C = var_17C.Value
  loc_1B13BCC: var_18C = "0.00"
  loc_1B13BD9: var_150 = CVar((var_C0 - CSng(var_228))) 'Double
  loc_1B13BE8: var_12C = CStr(Format(CVar(var_12C), var_18C))
  loc_1B13BF6: Me.TxtOtherCredit.Text = var_12C
  loc_1B13C37: Set var_154 = Me.Txt
  loc_1B13C3D: Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_15C, var_12C, "Select max(MeshAc) From SubGroup S Where S.SubCode='", CVar(var_12C), -1, var_164)
  loc_1B13C45: var_168 = var_15C.Tag
  loc_1B13C6C: unk_5571D7.Execute 0 & var_12C & "' And (S.Logsite_Code='" & MemVar_1F95078 & "' Or S.Logsite_Code='HO')", var_17C, var_18C
  loc_1B13C74: 1 = var_164.Fields
  loc_1B13C7C: var_C8 = var_168.Item(1)
  loc_1B13C84:  = var_17C.Value
  loc_1B13CCC: If (Trim(CVar(Proc_6_38_E69628(var_18C))) = vbNullString) Then
  loc_1B13CDD:   Set var_154 = Me.Txt
  loc_1B13CE3:   Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_15C)
  loc_1B13CEB:   var_12C = var_15C.Tag
  loc_1B13D01:   var_140 = var_F4
  loc_1B13D09:   Proc_6_7_F26918(var_18C)
  loc_1B13D14:   var_1D4 = 0
  loc_1B13D3B:   var_19C = CVar("Select isnull(Sum(AmtCr),0) From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_12C)) & "' And V_date<") 'String
  loc_1B13D58:   unk_5571D7.Execute CStr(var_19C & var_18C & vbNullString), var_208, -1
  loc_1B13D60:   var_164 = var_164.Fields
  loc_1B13D68:   var_1D4 = var_168.Item(var_168)
  loc_1B13D70:   var_17C = var_17C.Value
  loc_1B13D79:   var_C0 = CSng(var_218)
  loc_1B13DB3:   Set var_154 = Me.Txt
  loc_1B13DB9:   Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_15C, var_12C)
  loc_1B13DC1:   var_C0 = var_15C.Tag
  loc_1B13DDF:   Proc_6_7_F26918(var_18C, var_F4)
  loc_1B13DEA:   var_1D4 = 0
  loc_1B13E11:   var_19C = CVar("Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_12C), var_218) & "' And V_date<") 'String
  loc_1B13E2E:   unk_5571D7.Execute CStr(var_19C & var_18C & vbNullString), var_208, -1
  loc_1B13E36:   var_164 = var_164.Fields
  loc_1B13E3E:   var_1D4 = var_168.Item(var_168)
  loc_1B13E46:   var_17C = var_17C.Value
  loc_1B13E4F:   var_C8 = CSng(var_218)
  loc_1B13E89:   Set var_154 = Me.Txt
  loc_1B13E8F:   Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_15C, var_12C)
  loc_1B13E97:   var_C8 = var_15C.Tag
  loc_1B13ED5:   var_238 = 0
  loc_1B13EF5:   var_160 = "Select isnull(Sum(AmtCr),0) From Ledger Where isnull(AmtCr,0)<>0 And V_Type Not In ('HPOST','MBILL','CNT') And SubCode='" & Proc_6_38_E69628(CVar(var_12C), var_218)
  loc_1B13EFC:   var_1AC = CVar(var_160 & "' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_1B13F0B:   var_208 = Format(var_F4, "MMM/yyyy") & "MMM/yyyy" & Format(var_F4, "MMM/yyyy") & "')" 
  loc_1B13F19:   unk_5571D7.Execute CStr(var_208), var_218, -1
  loc_1B13F21:   var_164 = var_164.Fields
  loc_1B13F29:   var_238 = var_168.Item(var_168)
  loc_1B13F31:   var_17C = var_17C.Value
  loc_1B13F3A:   var_EC = CSng(var_228)
  loc_1B13F84:   var_150 = CVar((var_C8 - var_C0)) 'Double
  loc_1B13FA1:   Me.TxtPreBalance.Tag = CStr(Format(CVar(var_12C), "0.00"))
  loc_1B13FCF:   var_36C = Val(Me.TxtPreBalance.Tag)
  loc_1B13FD9:   Set var_15C = Me.TxtPreBalance
  loc_1B13FEC:   var_374 = Val(var_15C.Tag)
  loc_1B1404C:   Me.LblDrCr.Caption = CStr(IIf((CDbl(var_36C) = CDbl(0)), vbNullString, IIf((CDbl(var_374) > CDbl(0)), " Dr", " Cr")))
  loc_1B14091:   var_150 = CVar(Abs((var_C8 - var_C0))) 'Double
  loc_1B140AE:   Me.TxtPreBalance.Text = CStr(Format(" Dr", "0.00"))
  loc_1B140F8:   Me.TxtCreditAmt.Text = CStr(Format(var_EC, "0.00"))
  loc_1B14123:   If ((var_118 <> "N") And (CDbl(((var_C8 - var_C0) - var_EC)) > CDbl(0))) Then
  loc_1B14135:     var_18C = "0.00"
  loc_1B14146:     var_150 = CVar(((var_C8 - var_C0) - var_EC)) 'Double
  loc_1B1417E:     Call Proc_279_55_1843ABC(MemVar_1F95078 & "TPRB", var_96, CSng(Format("0.00", var_18C)), vbNullString, 0, 1, 1, 1)
  loc_1B14193:   End If
  loc_1B141A0:   var_12C = Me.TxtTaxAmt.Text
  loc_1B141B8:   If (CDbl(Val(var_12C)) > CDbl(0)) Then
  loc_1B141C1:     var_96 = (var_96 + 1)
  loc_1B141C4:   End If
  loc_1B141D2:   Set var_154 = Me.Txt
  loc_1B141D8:   Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_15C, var_12C, var_96, 1, 1)
  loc_1B141E0:   1 = var_15C.Tag
  loc_1B141FE:   Proc_6_7_F26918(var_18C, var_FC)
  loc_1B14209:   var_1D4 = 0
  loc_1B14230:   var_19C = CVar("Select isnull(Sum(AmtCr),0) From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_12C), var_374, var_36C) & "' And V_date<") 'String
  loc_1B1424D:   unk_5571D7.Execute CStr(var_19C & var_18C & vbNullString), var_208, -1
  loc_1B14255:   var_164 = var_164.Fields
  loc_1B1425D:   var_1D4 = var_168.Item(var_168)
  loc_1B14265:   var_17C = var_17C.Value
  loc_1B1426E:   var_C0 = CSng(var_218)
  loc_1B142A8:   Set var_154 = Me.Txt
  loc_1B142AE:   Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_15C, var_12C, var_C0)
  loc_1B142B6:   var_218 = var_15C.Tag
  loc_1B142D4:   Proc_6_7_F26918(var_18C, var_FC)
  loc_1B142DF:   var_1D4 = 0
  loc_1B14306:   var_19C = CVar("Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_12C), 1) & "' And V_date<") 'String
  loc_1B14323:   unk_5571D7.Execute CStr(var_19C & var_18C & vbNullString), var_208, -1
  loc_1B1432B:   var_164 = var_164.Fields
  loc_1B14333:   var_1D4 = var_168.Item(var_168)
  loc_1B1433B:   var_17C = var_17C.Value
  loc_1B14344:   var_C8 = CSng(var_218)
  loc_1B1437E:   Set var_154 = Me.Txt
  loc_1B14384:   Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_15C, var_12C)
  loc_1B1438C:   var_C8 = var_15C.Tag
  loc_1B143D3:   var_218 = "MMM/yyyy"
  loc_1B143EF:   var_2F4 = 0
  loc_1B1440F:   var_160 = "Select isnull(Sum(AmtCr),0) From Ledger Where isnull(AmtCr,0)<>0 And V_Type Not In ('HPOST','MBILL','CNT') And SubCode='" & Proc_6_38_E69628(CVar(var_12C), var_218)
  loc_1B14416:   var_1AC = CVar(var_160 & "' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_1B14425:   var_208 = Format(var_F4, "MMM/yyyy") & "MMM/yyyy" & Format(var_F4, "MMM/yyyy") & "','" 
  loc_1B14443:   unk_5571D7.Execute CStr(var_208 & Format(var_FC, var_218) & "')"), var_27C, -1
  loc_1B1444B:   var_164 = var_164.Fields
  loc_1B14453:   var_2F4 = var_168.Item(var_168)
  loc_1B1445B:   var_17C = var_17C.Value
  loc_1B14464:   var_EC = CSng(var_294)
  loc_1B144B3:   If ((var_118 <> "N") And (CDbl(((var_C8 - var_C0) - var_EC)) > CDbl(0))) Then
  loc_1B144C5:     var_18C = "0.00"
  loc_1B144D6:     var_150 = CVar(((var_C8 - var_C0) - var_EC)) 'Double
  loc_1B1450E:     Call Proc_279_55_1843ABC(MemVar_1F95078 & "TPR1", var_96, CSng(Format(CVar(var_12C), var_18C)), vbNullString, 0, 1, 1)
  loc_1B14523:   End If
  loc_1B14530:   var_12C = Me.TxtTaxAmt.Text
  loc_1B14548:   If (CDbl(Val(var_12C)) > CDbl(0)) Then
  loc_1B14551:     var_96 = (var_96 + 1)
  loc_1B14554:   End If
  loc_1B14562:   Set var_154 = Me.Txt
  loc_1B14568:   Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_15C, var_12C, var_96, var_EC, var_294)
  loc_1B14570:   1 = var_15C.Tag
  loc_1B1458E:   Proc_6_7_F26918(var_18C, var_104)
  loc_1B14599:   var_1D4 = 0
  loc_1B145C0:   var_19C = CVar("Select isnull(Sum(AmtCr),0) From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_12C), 1, 1) & "' And V_date<") 'String
  loc_1B145DD:   unk_5571D7.Execute CStr(var_19C & var_18C & vbNullString), var_208, -1
  loc_1B145E5:   var_164 = var_164.Fields
  loc_1B145ED:   var_1D4 = var_168.Item(var_168)
  loc_1B145F5:   var_17C = var_17C.Value
  loc_1B145FE:   var_C0 = CSng(var_218)
  loc_1B14638:   Set var_154 = Me.Txt
  loc_1B1463E:   Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_15C, var_12C, var_C0)
  loc_1B14646:   var_218 = var_15C.Tag
  loc_1B14664:   Proc_6_7_F26918(var_18C, var_104)
  loc_1B1466F:   var_1D4 = 0
  loc_1B14696:   var_19C = CVar("Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_12C), 1) & "' And V_date<") 'String
  loc_1B146B3:   unk_5571D7.Execute CStr(var_19C & var_18C & vbNullString), var_208, -1
  loc_1B146BB:   var_164 = var_164.Fields
  loc_1B146C3:   var_1D4 = var_168.Item(var_168)
  loc_1B146CB:   var_17C = var_17C.Value
  loc_1B146D4:   var_C8 = CSng(var_218)
  loc_1B1470E:   Set var_154 = Me.Txt
  loc_1B14714:   Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_15C, var_12C)
  loc_1B1471C:   var_C8 = var_15C.Tag
  loc_1B14763:   var_218 = "MMM/yyyy"
  loc_1B14774:   var_228 = Format(var_FC, var_218)
  loc_1B147A4:   var_38C = 0
  loc_1B147C4:   var_160 = "Select isnull(Sum(AmtCr),0) From Ledger Where isnull(AmtCr,0)<>0 And V_Type Not In ('HPOST','MBILL','CNT') And SubCode='" & Proc_6_38_E69628(CVar(var_12C), var_218)
  loc_1B147CB:   var_1AC = CVar(var_160 & "' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_1B147DA:   var_208 = Format(var_F4, "MMM/yyyy") & "MMM/yyyy" & Format(var_F4, "MMM/yyyy") & "','" 
  loc_1B147E1:   var_248 = var_208 & var_228 
  loc_1B147EA:   var_268 = var_248 & "','" 
  loc_1B14808:   unk_5571D7.Execute CStr(var_268 & Format(var_104, "MMM/yyyy") & "')"), var_2C4, -1
  loc_1B14810:   var_164 = var_164.Fields
  loc_1B14818:   var_38C = var_168.Item(var_168)
  loc_1B14820:   var_17C = var_17C.Value
  loc_1B14829:   var_EC = CSng(var_2E4)
  loc_1B14880:   If ((var_118 <> "N") And (CDbl(((var_C8 - var_C0) - var_EC)) > CDbl(0))) Then
  loc_1B14892:     var_18C = "0.00"
  loc_1B148A3:     var_150 = CVar(((var_C8 - var_C0) - var_EC)) 'Double
  loc_1B148DB:     Call Proc_279_55_1843ABC(MemVar_1F95078 & "TPR2", var_96, CSng(Format(CVar(var_12C), var_18C)), vbNullString, 0, 1, 1, var_EC)
  loc_1B148F0:   End If
  loc_1B148FD:   var_12C = Me.TxtTaxAmt.Text
  loc_1B14915:   If (CDbl(Val(var_12C)) > CDbl(0)) Then
  loc_1B1491E:     var_96 = (var_96 + 1)
  loc_1B14921:   End If
  loc_1B1492F:   Set var_154 = Me.Txt
  loc_1B14935:   Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_15C, var_12C, var_96, var_2E4, 1)
  loc_1B1493D:   1 = var_15C.Tag
  loc_1B1495B:   Proc_6_7_F26918(var_18C, var_104)
  loc_1B14966:   var_1D4 = 0
  loc_1B1498D:   var_19C = CVar("Select isnull(Sum(AmtCr),0) From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_12C), 1, 1) & "' And V_date<") 'String
  loc_1B149AA:   unk_5571D7.Execute CStr(var_19C & var_18C & vbNullString), var_208, -1
  loc_1B149B2:   var_164 = var_164.Fields
  loc_1B149BA:   var_1D4 = var_168.Item(var_168)
  loc_1B149C2:   var_17C = var_17C.Value
  loc_1B149CB:   var_C0 = CSng(var_218)
  loc_1B14A05:   Set var_154 = Me.Txt
  loc_1B14A0B:   Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_15C, var_12C, var_C0)
  loc_1B14A13:   var_218 = var_15C.Tag
  loc_1B14A31:   Proc_6_7_F26918(var_18C, var_104)
  loc_1B14A3C:   var_1D4 = 0
  loc_1B14A63:   var_19C = CVar("Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_12C), 1) & "' And V_date<") 'String
  loc_1B14A80:   unk_5571D7.Execute CStr(var_19C & var_18C & vbNullString), var_208, -1
  loc_1B14A88:   var_164 = var_164.Fields
  loc_1B14A90:   var_1D4 = var_168.Item(var_168)
  loc_1B14A98:   var_17C = var_17C.Value
  loc_1B14AA1:   var_C8 = CSng(var_218)
  loc_1B14ADB:   Set var_154 = Me.Txt
  loc_1B14AE1:   Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_15C, var_12C)
  loc_1B14AE9:   var_C8 = var_15C.Tag
  loc_1B14B07:   Proc_6_7_F26918(var_18C, var_104)
  loc_1B14B17:   Proc_6_7_F26918(var_208, var_10C)
  loc_1B14B22:   var_238 = 0
  loc_1B14B42:   var_160 = "Select isnull(Sum(AmtCr),0) From Ledger Where isnull(AmtCr,0)<>0 And V_Type Not In ('HPOST','CNT') And SubCode='" & Proc_6_38_E69628(CVar(var_12C), var_218)
  loc_1B14B6D:   unk_5571D7.Execute CStr(CVar(var_160 & "' And V_Date Between ") & var_18C & " And " & var_208), var_228, -1
  loc_1B14B75:   var_164 = var_164.Fields
  loc_1B14B7D:   var_238 = var_168.Item(var_168)
  loc_1B14B85:   var_17C = var_17C.Value
  loc_1B14B8E:   var_EC = CSng(var_248)
  loc_1B14BCE:   If (CDbl(((var_C8 - var_C0) - var_EC)) <= CDbl(0)) Then
  loc_1B14BDD:     var_E4 = Abs(((var_C8 - var_C0) - var_EC))
  loc_1B14BE0:   End If
  loc_1B14BEE:   Set var_154 = Me.Txt
  loc_1B14BF4:   Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_15C, var_12C, var_E4)
  loc_1B14BFC:   var_EC = var_15C.Tag
  loc_1B14C1A:   Proc_6_7_F26918(var_18C, var_104)
  loc_1B14C2A:   Proc_6_7_F26918(var_208, var_FC)
  loc_1B14C35:   var_258 = 0
  loc_1B14C5C:   var_19C = CVar("Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_12C), var_248) & "' And V_date>=") 'String
  loc_1B14C72:   var_218 = var_19C & var_18C & " And  V_date<" & var_208 
  loc_1B14C7B:   var_228 = var_218 & vbNullString 
  loc_1B14C89:   unk_5571D7.Execute CStr(var_228), var_248, -1
  loc_1B14C91:   var_164 = var_164.Fields
  loc_1B14C99:   var_258 = var_168.Item(var_168)
  loc_1B14CA1:   var_17C = var_17C.Value
  loc_1B14CAA:   var_C8 = CSng(var_268)
  loc_1B14CF1:   If ((var_118 <> "N") And (CDbl((var_C8 - var_E4)) > CDbl(0))) Then
  loc_1B14D03:     var_18C = "0.00"
  loc_1B14D10:     var_150 = CVar((var_C8 - var_E4)) 'Double
  loc_1B14D48:     Call Proc_279_55_1843ABC(MemVar_1F95078 & "TPR3", var_96, CSng(Format(CVar(var_12C), var_18C)), vbNullString, 0)
  loc_1B14D5D:   End If
  loc_1B14D6A:   var_12C = Me.TxtTaxAmt.Text
  loc_1B14D82:   If (CDbl(Val(var_12C)) > CDbl(0)) Then
  loc_1B14D8B:     var_96 = (var_96 + 1)
  loc_1B14D8E:   End If
  loc_1B14D9C:   Set var_154 = Me.Txt
  loc_1B14DA2:   Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_15C, var_12C, var_96, 1)
  loc_1B14DAA:   1 = var_15C.Tag
  loc_1B14DC8:   Proc_6_7_F26918(var_18C, var_104)
  loc_1B14DD3:   var_1D4 = 0
  loc_1B14DFA:   var_19C = CVar("Select isnull(Sum(AmtCr),0) From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_12C), var_C8) & "' And V_date<") 'String
  loc_1B14E17:   unk_5571D7.Execute CStr(var_19C & var_18C & vbNullString), var_208, -1
  loc_1B14E1F:   var_164 = var_164.Fields
  loc_1B14E27:   var_1D4 = var_168.Item(var_168)
  loc_1B14E2F:   var_17C = var_17C.Value
  loc_1B14E38:   var_C0 = CSng(var_218)
  loc_1B14E72:   Set var_154 = Me.Txt
  loc_1B14E78:   Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_15C, var_12C, var_C0)
  loc_1B14E80:   var_218 = var_15C.Tag
  loc_1B14E9E:   Proc_6_7_F26918(var_18C, var_104)
  loc_1B14EA9:   var_1D4 = 0
  loc_1B14ED0:   var_19C = CVar("Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_12C), var_268) & "' And V_date<") 'String
  loc_1B14EED:   unk_5571D7.Execute CStr(var_19C & var_18C & vbNullString), var_208, -1
  loc_1B14EF5:   var_164 = var_164.Fields
  loc_1B14EFD:   var_1D4 = var_168.Item(var_168)
  loc_1B14F05:   var_17C = var_17C.Value
  loc_1B14F0E:   var_C8 = CSng(var_218)
  loc_1B14F48:   Set var_154 = Me.Txt
  loc_1B14F4E:   Call 0.Method_Proc_279_45_1B152A40 (CInt(0), var_15C, var_12C)
  loc_1B14F56:   var_C8 = var_15C.Tag
  loc_1B14F74:   Proc_6_7_F26918(var_18C, var_104)
  loc_1B14F84:   Proc_6_7_F26918(var_208, var_10C)
  loc_1B14F8F:   var_238 = 0
  loc_1B14FAF:   var_160 = "Select isnull(Sum(AmtCr),0) From Ledger Where isnull(AmtCr,0)<>0 And V_Type Not In ('HPOST','CNT') And SubCode='" & Proc_6_38_E69628(CVar(var_12C), var_218)
  loc_1B14FDA:   unk_5571D7.Execute CStr(CVar(var_160 & "' And V_Date Between ") & var_18C & " And " & var_208), var_228, -1
  loc_1B14FE2:   var_164 = var_164.Fields
  loc_1B14FEA:   var_238 = var_168.Item(var_168)
  loc_1B14FF2:   var_17C = var_17C.Value
  loc_1B14FFB:   var_EC = CSng(var_248)
  loc_1B15044:   If ((var_118 <> "N") And (CDbl(((var_C8 - var_C0) - var_EC)) > CDbl(0))) Then
  loc_1B15067:     var_150 = CVar(((var_C8 - var_C0) - var_EC)) 'Double
  loc_1B1509F:     Call Proc_279_55_1843ABC(MemVar_1F95078 & "TPR4", var_96, CSng(Format(CVar(var_12C), "0.00")), vbNullString, 0)
  loc_1B150B4:   End If
  loc_1B150D9:   If (CDbl(Val(Me.TxtTaxAmt.Text)) > CDbl(0)) Then
  loc_1B150E2:     var_96 = (var_96 + 1)
  loc_1B150E5:   End If
  loc_1B150E5: End If
  loc_1B1510A: For var_390 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_390 'Integer
  loc_1B15114:   var_140 = CVar(CLng(var_86)) 'Long
  loc_1B1511C:   var_1C4 = CVar(CLng(9)) 'Long
  loc_1B15148:   var_B0 = (var_B0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1B15157: Next var_390 'Integer
  loc_1B151AD: Call Proc_279_55_1843ABC(MemVar_1F95078 & "TMBA", var_96, CSng(Format(var_B0, "0.00")), vbNullString)
  loc_1B151E5: If (CDbl(Val(Me.TxtTaxAmt.Text)) > CDbl(0)) Then
  loc_1B151EE:   var_96 = (var_96 + 1)
  loc_1B151F1: End If
  loc_1B15210: If (CLng(Me.FGrid.Rows) = 1) Then
  loc_1B15213:   var_140 = "1"
  loc_1B1521D:   Set var_154 = Me.FGrid
  loc_1B1522E: End If
  loc_1B15241: Me.FGrid.FixedRows = 1
  loc_1B15268: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_1B1526B:   var_140 = 1
  loc_1B1527E:   Me.FGCat.FixedRows = var_140
  loc_1B15286: End If
  loc_1B15286: Call Proc_279_54_14E76B0(FGrid.DispID_10000, var_140, var_96)
  loc_1B15290: Set var_8C = Nothing
  loc_1B15298: Set var_90 = Nothing
  loc_1B152A0: Set var_9C = Nothing
  loc_1B152A3: Exit Sub
End Sub

Public Sub Proc_279_46_119455C
  'Data Table: 5571BC
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  Dim var_100 As MSHFlexGrid
  loc_1194154: On Error Goto loc_1194554
  loc_119415B: Set var_88 = Me.FGrid
  loc_119416A: var_88.Cols = &HE
  loc_119417B: var_88.Rows = 2
  loc_119418C: var_88.FixedCols = 1
  loc_11941A5: global_84 = CStr(CLng(var_88.BackColor))
  loc_11941B2: var_98 = CVar(CLng(0)) 'Long
  loc_11941B7: var_CC = &H1F4
  loc_11941C3: LateIdCallSt
  loc_11941CB: var_98 = 0
  loc_11941D7: var_CC = CVar(CLng(0)) 'Long
  loc_11941DC: var_EC = "SNo"
  loc_11941E5: LateIdCallSt
  loc_11941F0: var_98 = CVar(CLng(6)) 'Long
  loc_11941F5: var_CC = &H7D0
  loc_1194201: LateIdCallSt
  loc_1194209: var_98 = 0
  loc_1194215: var_CC = CVar(CLng(6)) 'Long
  loc_119421A: var_EC = "Description"
  loc_1194223: LateIdCallSt
  loc_119422E: var_98 = CVar(CLng(9)) 'Long
  loc_1194233: var_CC = &H3E8
  loc_119423F: LateIdCallSt
  loc_1194247: var_98 = 0
  loc_1194253: var_CC = CVar(CLng(9)) 'Long
  loc_1194258: var_EC = "BaseAmt"
  loc_1194261: LateIdCallSt
  loc_119426C: var_98 = CVar(CLng(8)) 'Long
  loc_1194271: var_CC = &H3E8
  loc_119427D: LateIdCallSt
  loc_1194285: var_98 = 0
  loc_1194291: var_CC = CVar(CLng(8)) 'Long
  loc_1194296: var_EC = "AcCode"
  loc_119429F: LateIdCallSt
  loc_11942AA: var_98 = CVar(CLng(&HB)) 'Long
  loc_11942AF: var_CC = &H5DC
  loc_11942BB: LateIdCallSt
  loc_11942C3: var_98 = 0
  loc_11942CF: var_CC = CVar(CLng(&HB)) 'Long
  loc_11942D4: var_EC = "AcPosting"
  loc_11942DD: LateIdCallSt
  loc_11942E8: var_98 = CVar(CLng(&HC)) 'Long
  loc_11942ED: var_CC = &H44C
  loc_11942F9: LateIdCallSt
  loc_1194301: var_98 = 0
  loc_119430D: var_CC = CVar(CLng(&HC)) 'Long
  loc_1194312: var_EC = "AcPostingYN"
  loc_119431B: LateIdCallSt
  loc_1194323: var_98 = 0
  loc_119432F: var_CC = CVar(CLng(1)) 'Long
  loc_1194334: var_EC = "Docid"
  loc_119433D: LateIdCallSt
  loc_1194348: var_98 = CVar(CLng(1)) 'Long
  loc_119434D: var_CC = &H3E8
  loc_1194359: LateIdCallSt
  loc_1194361: var_98 = 0
  loc_119436D: var_CC = CVar(CLng(2)) 'Long
  loc_1194372: var_EC = "Bill No"
  loc_119437B: LateIdCallSt
  loc_1194386: var_98 = CVar(CLng(2)) 'Long
  loc_119438B: var_CC = &H3E8
  loc_1194397: LateIdCallSt
  loc_119439F: var_98 = 0
  loc_11943AB: var_CC = CVar(CLng(&HD)) 'Long
  loc_11943B0: var_EC = "OutletCode"
  loc_11943B9: LateIdCallSt
  loc_11943C4: var_98 = CVar(CLng(&HD)) 'Long
  loc_11943C9: var_CC = &H3E8
  loc_11943D5: LateIdCallSt
  loc_11943DD: var_98 = 0
  loc_11943E9: var_CC = CVar(CLng(5)) 'Long
  loc_11943EE: var_EC = "FacilityCode"
  loc_11943F7: LateIdCallSt
  loc_1194402: var_98 = CVar(CLng(5)) 'Long
  loc_1194407: var_CC = &H3E8
  loc_1194413: LateIdCallSt
  loc_119441B: var_98 = 0
  loc_1194427: var_CC = CVar(CLng(7)) 'Long
  loc_119442C: var_EC = "TaxStruCode"
  loc_1194435: LateIdCallSt
  loc_1194440: var_98 = CVar(CLng(7)) 'Long
  loc_1194445: var_CC = &H3E8
  loc_1194451: LateIdCallSt
  loc_1194459: var_98 = 0
  loc_1194465: var_CC = CVar(CLng(4)) 'Long
  loc_119446A: var_EC = "Type"
  loc_1194473: LateIdCallSt
  loc_119447E: var_98 = CVar(CLng(4)) 'Long
  loc_1194483: var_CC = &H3E8
  loc_119448F: LateIdCallSt
  loc_1194497: var_98 = 0
  loc_11944A3: var_CC = CVar(CLng(3)) 'Long
  loc_11944A8: var_EC = "VType"
  loc_11944B1: LateIdCallSt
  loc_11944BC: var_98 = CVar(CLng(4)) 'Long
  loc_11944C1: var_CC = &H3E8
  loc_11944CD: LateIdCallSt
  loc_11944D5: var_98 = 0
  loc_11944E1: var_CC = CVar(CLng(&HA)) 'Long
  loc_11944E6: var_EC = "Tax Amt"
  loc_11944EF: LateIdCallSt
  loc_11944FA: var_98 = CVar(CLng(&HA)) 'Long
  loc_11944FF: var_CC = &H3E8
  loc_119450B: LateIdCallSt
  loc_1194515: Set var_88 = Nothing 
  loc_1194523: var_98 = CVar(CLng(7)) 'Long
  loc_1194528: var_CC = &H7D0
  loc_1194534: LateIdCallSt
  loc_119453C: var_98 = &HB
  loc_1194548: Me.FGCat.Cols = var_98
  loc_119454F: Set var_100 = Nothing 
  loc_1194553: Exit Sub
  loc_1194554: ' Referenced from: 1194154
  loc_1194554: Proc_6_60_E63754(var_100, var_CC, var_98, var_88, var_CC, var_98, var_88)
  loc_1194559: Exit Sub
End Sub

Public Sub Proc_279_47_DFDEE8
  'Data Table: 5571BC
  Dim arg_B3D As Boolean
  loc_DFDEE4: Exit Sub
  loc_DFDEE5: arg_B3D = True
End Sub

Public Sub Proc_279_48_174B59C
  'Data Table: 5571BC
  Dim var_B0 As Variant
  Dim var_A8 As Double
  Dim var_9E As Integer
  Dim var_B8 As String
  Dim var_BC As String
  Dim unk_5571D7 As Connection15
  Dim var_88 As Recordset15
  Dim var_E0 As Variant
  Dim var_EC As Variant
  Dim var_DC As Variant
  Dim var_120 As Variant
  Dim var_94 As Double
  Dim var_150 As Label
  Dim var_124 As Variant
  Dim var_12C As Variant
  Dim var_134 As TextBox
  Dim var_13C As String
  Dim var_AC As Fields15
  Dim var_F0 As Variant
  Dim var_128 As Variant
  Dim var_188 As TextBox
  Dim var_190 As TextBox
  Dim var_18C As Label
  Dim var_100 As Variant
  Dim var_20C As Integer
  Dim var_B4 As String
  Dim var_1AC As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_138 As String
  loc_17498C3: If (global_128 = "VOUCHER DATE") Then
  loc_17498D4:   Set var_AC = Me.Txt
  loc_17498DA:   Call 0.Method_Proc_279_48_174B59C0 (CInt(7), var_B0)
  loc_17498EC:   var_A8 = CDate(var_B0.Text)
  loc_17498FC: Else
  loc_174990A:   Set var_AC = Me.Txt
  loc_1749910:   Call 0.Method_Proc_279_48_174B59C0 (CInt(3), var_B0)
  loc_1749918:   var_B4 = var_B0.Text
  loc_1749922:   var_A8 = CDate(var_B4)
  loc_174992F: End If
  loc_1749931: var_9E = 1
  loc_1749952: Set var_AC = Me.Txt
  loc_1749958: Call 0.Method_Proc_279_48_174B59C0 (CInt(4), var_B0, var_B4, "Select Sum(BaseAmt) as BaseAmt  from MemBill1 where Type='Outlet' and Docid='", var_DC)
  loc_1749960: -1 = var_B0.Text
  loc_1749979: unk_5571D7.Execute var_E0 & var_B4 & "'", var_9E, var_A8
  loc_1749984: Set var_88 = var_E0
  loc_17499B0: If (var_88.RecordCount > 0) Then
  loc_17499BA:   Set var_AC = Me.TxtGt
  loc_17499C0:   Call 0.Method_Proc_279_48_174B59C8 (var_E6)
  loc_17499D2:   Set var_B0 = Me.TxtGt
  loc_17499D8:   Call 0.Method_Proc_279_48_174B59C0 (var_E6, var_E0)
  loc_1749A00:   var_EC = var_88.Fields
  loc_1749A17:   Proc_6_39_E7D3A0(var_100, CVar(var_EC.Item("BaseAmt")))
  loc_1749A1F:   var_120 = (CVar(Val(var_E0.Text)) - var_100)
  loc_1749A24:   var_94 = CSng(var_120)
  loc_1749A3F: Else
  loc_1749A46:   Set var_AC = Me.TxtGt
  loc_1749A4C:   Call 0.Method_Proc_279_48_174B59C8 (var_E6, var_94)
  loc_1749A5E:   Set var_B0 = Me.TxtGt
  loc_1749A64:   Call 0.Method_Proc_279_48_174B59C0 (var_E6, var_E0)
  loc_1749A79:   var_94 = Val(var_E0.Text)
  loc_1749A88: End If
  loc_1749A96: Set var_AC = Me.Txt
  loc_1749A9C: Call 0.Method_Proc_279_48_174B59C0 (CInt(4), var_B0, var_140)
  loc_1749AB7: Set var_E0 = Me.Txt
  loc_1749ABD: Call 0.Method_Proc_279_48_174B59C0 (CInt(5), var_EC)
  loc_1749AEA: Set var_F0 = Me.Txt
  loc_1749AF0: Call 0.Method_Proc_279_48_174B59C0 (CInt(0), var_124)
  loc_1749AF8: var_B4 = var_124.Tag
  loc_1749B0B: Set var_128 = Me.Txt
  loc_1749B11: Call 0.Method_Proc_279_48_174B59C0 (CInt(5), var_12C)
  loc_1749B2C: Set var_130 = Me.Txt
  loc_1749B32: Call 0.Method_Proc_279_48_174B59C0 (CInt(2), var_134)
  loc_1749B3A: var_138 = var_134.Text
  loc_1749B4C: var_184 = 0
  loc_1749B57: var_180 = 0
  loc_1749B62: var_17C = 0
  loc_1749B6B: var_178 = "A"
  loc_1749B8B: var_13C = "Against bill no : " & var_12C.Text & " For "
  loc_1749B99: var_168 = vbNullString
  loc_1749BDA: Proc_6_141_12E23F4(MemVar_1F95044, var_140, var_9E, "MBILL", CLng(var_EC.Text), Me.LblVPrefix.Caption, MemVar_1F95070, var_A8)
  loc_1749C22: var_9E = (var_9E + 1)
  loc_1749C43: Set var_AC = Me.Txt
  loc_1749C49: Call 0.Method_Proc_279_48_174B59C0 (CInt(4), var_B0, var_B4, "Select Sum(TaxAmt) as BaseAmt,max(Accode) as AcCode from MemBILL2 Inner join Revmast on revmast.code=Membill2.TaxCode Where Docid='", Now, -1, var_E0)
  loc_1749C51: var_9E = var_B0.Text
  loc_1749C6A: unk_5571D7.Execute var_B4 & var_B4 & "' Group By TaxCode", CDbl(0), var_B0.Text
  loc_1749C75: Set var_88 = var_E0
  loc_1749C8D: ' Referenced from: 174A132
  loc_1749C9C: If Not(var_88.EOF) Then
  loc_1749CB6:   var_B0 = var_88.Fields.Item("BaseAmt")
  loc_1749CC5:   Proc_6_39_E7D3A0(var_100, CVar(var_B0), var_168)
  loc_1749CDF:   If (var_100 > 0) Then
  loc_1749CF0:     Set var_AC = Me.Txt
  loc_1749CF6:     Call 0.Method_Proc_279_48_174B59C0 (CInt(4), var_B0, var_140)
  loc_1749CFE:     var_13C & var_138 = var_B0.Text
  loc_1749D11:     Set var_E0 = Me.Txt
  loc_1749D17:     Call 0.Method_Proc_279_48_174B59C0 (CInt(5), var_EC)
  loc_1749D1F:     var_14C = var_EC.Text
  loc_1749D58:     var_100 = var_88.Fields.Item("AcCode").Value
  loc_1749D7F:     var_120 = var_88.Fields.Item("BaseAmt").Value
  loc_1749D92:     Set var_130 = Me.Txt
  loc_1749D98:     Call 0.Method_Proc_279_48_174B59C0 (CInt(0), var_134)
  loc_1749DA0:     var_B4 = var_134.Tag
  loc_1749DB3:     Set var_150 = Me.Txt
  loc_1749DB9:     Call 0.Method_Proc_279_48_174B59C0 (CInt(5), var_188)
  loc_1749DD4:     Set var_18C = Me.Txt
  loc_1749DDA:     Call 0.Method_Proc_279_48_174B59C0 (CInt(2), var_190)
  loc_1749DE2:     var_138 = var_190.Text
  loc_1749DEA:     var_DC = Now
  loc_1749DF4:     var_184 = 0
  loc_1749DFF:     var_180 = 0
  loc_1749E0A:     var_17C = 0
  loc_1749E13:     var_178 = "A"
  loc_1749E33:     var_13C = "Against bill no : " & var_188.Text & " For "
  loc_1749E86:     Proc_6_141_12E23F4(MemVar_1F95044, var_140, var_9E, "MBILL", CLng(var_14C), Me.LblVPrefix.Caption, MemVar_1F95070, var_A8)
  loc_1749EDC:     var_9E = (var_9E + 1)
  loc_1749EE2:   Else
  loc_1749EF9:     var_B0 = var_88.Fields.Item("BaseAmt")
  loc_1749F08:     Proc_6_39_E7D3A0(var_100, CVar(var_B0), var_9E, CStr(var_100), CSng(var_120), CDbl(0))
  loc_1749F22:     If (var_100 < 0) Then
  loc_1749F33:       Set var_AC = Me.Txt
  loc_1749F39:       Call 0.Method_Proc_279_48_174B59C0 (CInt(4), var_B0, var_140, var_B4)
  loc_1749F41:       var_13C & var_138 = var_B0.Text
  loc_1749F54:       Set var_E0 = Me.Txt
  loc_1749F5A:       Call 0.Method_Proc_279_48_174B59C0 (CInt(5), var_EC, var_14C)
  loc_1749F62:       MemVar_1F950C8 = var_EC.Text
  loc_1749F9B:       var_1BC = var_88.Fields.Item("AcCode").Value
  loc_1749FBF:       var_DC = CVar(var_88.Fields.Item("BaseAmt")) 'Address
  loc_1749FC6:       Proc_6_39_E7D3A0(var_100, var_DC)
  loc_1749FD9:       Set var_130 = Me.Txt
  loc_1749FDF:       Call 0.Method_Proc_279_48_174B59C0 (CInt(0), var_134, var_B4)
  loc_1749FE7:       CDate(var_DC) = var_134.Tag
  loc_1749FFA:       Set var_150 = Me.Txt
  loc_174A000:       Call 0.Method_Proc_279_48_174B59C0 (CInt(5), var_188)
  loc_174A01B:       Set var_18C = Me.Txt
  loc_174A021:       Call 0.Method_Proc_279_48_174B59C0 (CInt(2), var_190)
  loc_174A029:       var_138 = var_190.Text
  loc_174A031:       var_1AC = Now
  loc_174A03B:       var_184 = 0
  loc_174A046:       var_180 = 0
  loc_174A051:       var_17C = 0
  loc_174A05A:       var_178 = "A"
  loc_174A07A:       var_13C = "Against bill no :   " & var_188.Text & " For "
  loc_174A08F:       var_120 = Abs(var_100)
  loc_174A0D1:       Proc_6_141_12E23F4(MemVar_1F95044, var_140, var_9E, "MBILL", CLng(var_14C), Me.LblVPrefix.Caption, MemVar_1F95070, var_A8)
  loc_174A127:       var_9E = (var_9E + 1)
  loc_174A12A:     End If
  loc_174A12A:   End If
  loc_174A12D:   var_88.MoveNext
  loc_174A132:   GoTo loc_1749C8D
  loc_174A135: End If
  loc_174A153: Set var_AC = Me.Txt
  loc_174A159: Call 0.Method_Proc_279_48_174B59C0 (CInt(4), var_B0, var_B4, "Select BaseAmt,MEMBILL1.AcCode,FacilityCode,Name from MemBill1 Left join MemFacilityMast on MemFacilitymast.code=Membill1.Facilitycode where Type='Facility' and Docid='", var_DC, -1, var_E0)
  loc_174A161: var_9E = var_B0.Text
  loc_174A17A: unk_5571D7.Execute CStr(var_1BC) & var_B4 & "'", CDbl(0), CSng(var_120)
  loc_174A185: Set var_88 = var_E0
  loc_174A19D: ' Referenced from: 174A642
  loc_174A1AC: If Not(var_88.EOF) Then
  loc_174A1C6:   var_B0 = var_88.Fields.Item("BaseAmt")
  loc_174A1D5:   Proc_6_39_E7D3A0(var_100, CVar(var_B0), var_B4)
  loc_174A1EF:   If (var_100 > 0) Then
  loc_174A200:     Set var_AC = Me.Txt
  loc_174A206:     Call 0.Method_Proc_279_48_174B59C0 (CInt(4), var_B0, var_140)
  loc_174A20E:     var_13C & var_138 = var_B0.Text
  loc_174A221:     Set var_E0 = Me.Txt
  loc_174A227:     Call 0.Method_Proc_279_48_174B59C0 (CInt(5), var_EC)
  loc_174A22F:     var_14C = var_EC.Text
  loc_174A268:     var_100 = var_88.Fields.Item("AcCode").Value
  loc_174A28F:     var_120 = var_88.Fields.Item("BaseAmt").Value
  loc_174A2A2:     Set var_130 = Me.Txt
  loc_174A2A8:     Call 0.Method_Proc_279_48_174B59C0 (CInt(0), var_134)
  loc_174A2B0:     var_B4 = var_134.Tag
  loc_174A2C3:     Set var_150 = Me.Txt
  loc_174A2C9:     Call 0.Method_Proc_279_48_174B59C0 (CInt(5), var_188)
  loc_174A2E4:     Set var_18C = Me.Txt
  loc_174A2EA:     Call 0.Method_Proc_279_48_174B59C0 (CInt(2), var_190)
  loc_174A2F2:     var_138 = var_190.Text
  loc_174A2FA:     var_DC = Now
  loc_174A304:     var_184 = 0
  loc_174A30F:     var_180 = 0
  loc_174A31A:     var_17C = 0
  loc_174A323:     var_178 = "A"
  loc_174A343:     var_13C = "Against bill no : " & var_188.Text & " For "
  loc_174A396:     Proc_6_141_12E23F4(MemVar_1F95044, var_140, var_9E, "MBILL", CLng(var_14C), Me.LblVPrefix.Caption, MemVar_1F95070, var_A8)
  loc_174A3EC:     var_9E = (var_9E + 1)
  loc_174A3F2:   Else
  loc_174A409:     var_B0 = var_88.Fields.Item("BaseAmt")
  loc_174A418:     Proc_6_39_E7D3A0(var_100, CVar(var_B0), var_9E, CStr(var_100), CSng(var_120), CDbl(0))
  loc_174A432:     If (var_100 < 0) Then
  loc_174A443:       Set var_AC = Me.Txt
  loc_174A449:       Call 0.Method_Proc_279_48_174B59C0 (CInt(4), var_B0, var_140, var_B4)
  loc_174A451:       var_13C & var_138 = var_B0.Text
  loc_174A464:       Set var_E0 = Me.Txt
  loc_174A46A:       Call 0.Method_Proc_279_48_174B59C0 (CInt(5), var_EC, var_14C)
  loc_174A472:       MemVar_1F950C8 = var_EC.Text
  loc_174A4AB:       var_1BC = var_88.Fields.Item("AcCode").Value
  loc_174A4CF:       var_DC = CVar(var_88.Fields.Item("BaseAmt")) 'Address
  loc_174A4D6:       Proc_6_39_E7D3A0(var_100, var_DC)
  loc_174A4E9:       Set var_130 = Me.Txt
  loc_174A4EF:       Call 0.Method_Proc_279_48_174B59C0 (CInt(0), var_134, var_B4)
  loc_174A4F7:       CDate(var_DC) = var_134.Tag
  loc_174A50A:       Set var_150 = Me.Txt
  loc_174A510:       Call 0.Method_Proc_279_48_174B59C0 (CInt(5), var_188)
  loc_174A52B:       Set var_18C = Me.Txt
  loc_174A531:       Call 0.Method_Proc_279_48_174B59C0 (CInt(2), var_190)
  loc_174A539:       var_138 = var_190.Text
  loc_174A541:       var_1AC = Now
  loc_174A54B:       var_184 = 0
  loc_174A556:       var_180 = 0
  loc_174A561:       var_17C = 0
  loc_174A56A:       var_178 = "A"
  loc_174A58A:       var_13C = "Against bill no :   " & var_188.Text & " For "
  loc_174A59F:       var_120 = Abs(var_100)
  loc_174A5E1:       Proc_6_141_12E23F4(MemVar_1F95044, var_140, var_9E, "MBILL", CLng(var_14C), Me.LblVPrefix.Caption, MemVar_1F95070, var_A8)
  loc_174A637:       var_9E = (var_9E + 1)
  loc_174A63A:     End If
  loc_174A63A:   End If
  loc_174A63D:   var_88.MoveNext
  loc_174A642:   GoTo loc_174A19D
  loc_174A645: End If
  loc_174A663: Set var_AC = Me.Txt
  loc_174A669: Call 0.Method_Proc_279_48_174B59C0 (CInt(4), var_B0, var_B4, "Select BaseAmt,MEMBILL1.AcCode,FacilityCode from MemBill1 Left join MembershipRevMast on MembershipRevMast.code=Membill1.Facilitycode where Type='Revenue' and Docid='", var_DC, -1, var_E0)
  loc_174A671: var_9E = var_B0.Text
  loc_174A68A: unk_5571D7.Execute CStr(var_1BC) & var_B4 & "'", CDbl(0), CSng(var_120)
  loc_174A695: Set var_88 = var_E0
  loc_174A6AD: ' Referenced from: 174AB52
  loc_174A6BC: If Not(var_88.EOF) Then
  loc_174A6D6:   var_B0 = var_88.Fields.Item("BaseAmt")
  loc_174A6E5:   Proc_6_39_E7D3A0(var_100, CVar(var_B0), var_B4)
  loc_174A6FF:   If (var_100 > 0) Then
  loc_174A710:     Set var_AC = Me.Txt
  loc_174A716:     Call 0.Method_Proc_279_48_174B59C0 (CInt(4), var_B0, var_140)
  loc_174A71E:     var_13C & var_138 = var_B0.Text
  loc_174A731:     Set var_E0 = Me.Txt
  loc_174A737:     Call 0.Method_Proc_279_48_174B59C0 (CInt(5), var_EC)
  loc_174A73F:     var_14C = var_EC.Text
  loc_174A778:     var_100 = var_88.Fields.Item("AcCode").Value
  loc_174A79F:     var_120 = var_88.Fields.Item("BaseAmt").Value
  loc_174A7B2:     Set var_130 = Me.Txt
  loc_174A7B8:     Call 0.Method_Proc_279_48_174B59C0 (CInt(0), var_134)
  loc_174A7C0:     var_B4 = var_134.Tag
  loc_174A7D3:     Set var_150 = Me.Txt
  loc_174A7D9:     Call 0.Method_Proc_279_48_174B59C0 (CInt(5), var_188)
  loc_174A7F4:     Set var_18C = Me.Txt
  loc_174A7FA:     Call 0.Method_Proc_279_48_174B59C0 (CInt(2), var_190)
  loc_174A802:     var_138 = var_190.Text
  loc_174A80A:     var_DC = Now
  loc_174A814:     var_184 = 0
  loc_174A81F:     var_180 = 0
  loc_174A82A:     var_17C = 0
  loc_174A833:     var_178 = "A"
  loc_174A853:     var_13C = "Against bill no : " & var_188.Text & " For "
  loc_174A8A6:     Proc_6_141_12E23F4(MemVar_1F95044, var_140, var_9E, "MBILL", CLng(var_14C), Me.LblVPrefix.Caption, MemVar_1F95070, var_A8)
  loc_174A8FC:     var_9E = (var_9E + 1)
  loc_174A902:   Else
  loc_174A919:     var_B0 = var_88.Fields.Item("BaseAmt")
  loc_174A928:     Proc_6_39_E7D3A0(var_100, CVar(var_B0), var_9E, CStr(var_100), CSng(var_120), CDbl(0))
  loc_174A942:     If (var_100 < 0) Then
  loc_174A953:       Set var_AC = Me.Txt
  loc_174A959:       Call 0.Method_Proc_279_48_174B59C0 (CInt(4), var_B0, var_140, var_B4)
  loc_174A961:       var_13C & var_138 = var_B0.Text
  loc_174A974:       Set var_E0 = Me.Txt
  loc_174A97A:       Call 0.Method_Proc_279_48_174B59C0 (CInt(5), var_EC, var_14C)
  loc_174A982:       MemVar_1F950C8 = var_EC.Text
  loc_174A9BB:       var_1BC = var_88.Fields.Item("AcCode").Value
  loc_174A9D7:       var_12C = var_88.Fields.Item("BaseAmt")
  loc_174A9DF:       var_DC = CVar(var_12C) 'Address
  loc_174A9E6:       Proc_6_39_E7D3A0(var_100, var_DC)
  loc_174A9F9:       Set var_130 = Me.Txt
  loc_174A9FF:       Call 0.Method_Proc_279_48_174B59C0 (CInt(0), var_134, var_B4)
  loc_174AA07:       CDate(var_DC) = var_134.Tag
  loc_174AA1A:       Set var_150 = Me.Txt
  loc_174AA20:       Call 0.Method_Proc_279_48_174B59C0 (CInt(5), var_188)
  loc_174AA3B:       Set var_18C = Me.Txt
  loc_174AA41:       Call 0.Method_Proc_279_48_174B59C0 (CInt(2), var_190)
  loc_174AA49:       var_138 = var_190.Text
  loc_174AA51:       var_1AC = Now
  loc_174AA5B:       var_184 = 0
  loc_174AA66:       var_180 = 0
  loc_174AA71:       var_17C = 0
  loc_174AA7A:       var_178 = "A"
  loc_174AA9A:       var_13C = "Against bill no :   " & var_188.Text & " For "
  loc_174AAAF:       var_120 = Abs(var_100)
  loc_174AAF1:       Proc_6_141_12E23F4(MemVar_1F95044, var_140, var_9E, "MBILL", CLng(var_14C), Me.LblVPrefix.Caption, MemVar_1F95070, var_A8)
  loc_174AB47:       var_9E = (var_9E + 1)
  loc_174AB4A:     End If
  loc_174AB4A:   End If
  loc_174AB4D:   var_88.MoveNext
  loc_174AB52:   GoTo loc_174A6AD
  loc_174AB55: End If
  loc_174AB73: Set var_AC = Me.Txt
  loc_174AB79: Call 0.Method_Proc_279_48_174B59C0 (CInt(4), var_B0, var_B4, "Select IsNull(RoundOff,0) As RoundOff,MemBill.MemCode from MemBill Left join SubGroup on SubGroup.SubCode=Membill.MemCode Where Docid='", var_DC, -1, var_E0)
  loc_174AB81: var_9E = var_B0.Text
  loc_174AB9A: unk_5571D7.Execute CStr(var_1BC) & var_B4 & "'", CDbl(0), CSng(var_120)
  loc_174ABA5: Set var_88 = var_E0
  loc_174ABBD: ' Referenced from: 174AFF9
  loc_174ABCC: If Not(var_88.EOF) Then
  loc_174ABE9:   var_B0 = var_88.Fields.Item("RoundOff")
  loc_174AC0B:   If (var_B0.Value > 0) Then
  loc_174AC1C:     Set var_AC = Me.Txt
  loc_174AC22:     Call 0.Method_Proc_279_48_174B59C0 (CInt(4), var_B0, var_140)
  loc_174AC2A:     var_B4 = var_B0.Text
  loc_174AC3D:     Set var_E0 = Me.Txt
  loc_174AC43:     Call 0.Method_Proc_279_48_174B59C0 (CInt(5), var_EC, var_14C)
  loc_174AC4B:     var_13C & var_138 = var_EC.Text
  loc_174AC84:     var_100 = var_88.Fields.Item("RoundOff").Value
  loc_174AC97:     Set var_128 = Me.Txt
  loc_174AC9D:     Call 0.Method_Proc_279_48_174B59C0 (CInt(0), var_12C)
  loc_174ACA5:     var_B4 = var_12C.Tag
  loc_174ACB8:     Set var_130 = Me.Txt
  loc_174ACBE:     Call 0.Method_Proc_279_48_174B59C0 (CInt(5), var_134)
  loc_174ACD9:     Set var_150 = Me.Txt
  loc_174ACDF:     Call 0.Method_Proc_279_48_174B59C0 (CInt(2), var_188)
  loc_174ACE7:     var_138 = var_188.Text
  loc_174ACEF:     var_DC = Now
  loc_174ACF9:     var_184 = 0
  loc_174AD04:     var_180 = 0
  loc_174AD0F:     var_17C = 0
  loc_174AD18:     var_178 = "A"
  loc_174AD38:     var_13C = "Against bill no : " & var_134.Text & " For "
  loc_174AD8E:     Proc_6_141_12E23F4(MemVar_1F95044, var_140, var_9E, "MBILL", CLng(var_14C), Me.LblVPrefix.Caption, MemVar_1F95070, var_A8)
  loc_174ADDB:   Else
  loc_174ADF5:     var_B0 = var_88.Fields.Item("RoundOff")
  loc_174AE17:     If (var_B0.Value < 0) Then
  loc_174AE28:       Set var_AC = Me.Txt
  loc_174AE2E:       Call 0.Method_Proc_279_48_174B59C0 (CInt(4), var_B0, var_140, MemVar_1F95070 & "ROFF", CSng(var_100), CDbl(0))
  loc_174AE36:       var_B4 = var_B0.Text
  loc_174AE49:       Set var_E0 = Me.Txt
  loc_174AE4F:       Call 0.Method_Proc_279_48_174B59C0 (CInt(5), var_EC, var_14C, var_13C & var_138)
  loc_174AE57:       MemVar_1F950C8 = var_EC.Text
  loc_174AE88:       var_124 = var_88.Fields.Item("RoundOff")
  loc_174AE90:       var_DC = var_124.Value
  loc_174AEA3:       Set var_128 = Me.Txt
  loc_174AEA9:       Call 0.Method_Proc_279_48_174B59C0 (CInt(0), var_12C, var_B4)
  loc_174AEB1:       CDate(var_DC) = var_12C.Tag
  loc_174AEC4:       Set var_130 = Me.Txt
  loc_174AECA:       Call 0.Method_Proc_279_48_174B59C0 (CInt(5), var_134)
  loc_174AEE5:       Set var_150 = Me.Txt
  loc_174AEEB:       Call 0.Method_Proc_279_48_174B59C0 (CInt(2), var_188)
  loc_174AEF3:       var_138 = var_188.Text
  loc_174AEFB:       var_120 = Now
  loc_174AF05:       var_184 = 0
  loc_174AF10:       var_180 = 0
  loc_174AF1B:       var_17C = 0
  loc_174AF24:       var_178 = "A"
  loc_174AF44:       var_13C = "Against bill no :   " & var_134.Text & " For "
  loc_174AF59:       var_100 = Abs(var_DC)
  loc_174AF8B:       var_148 = "MBILL"
  loc_174AF9E:       Proc_6_141_12E23F4(MemVar_1F95044, var_140, var_9E, var_148, CLng(var_14C), Me.LblVPrefix.Caption, MemVar_1F95070, var_A8)
  loc_174AFE8:     End If
  loc_174AFE8:   End If
  loc_174AFEE:   var_9E = (var_9E + 1)
  loc_174AFF4:   var_88.MoveNext
  loc_174AFF9:   GoTo loc_174ABBD
  loc_174AFFC: End If
  loc_174B01A: Set var_AC = Me.Txt
  loc_174B020: Call 0.Method_Proc_279_48_174B59C0 (CInt(4), var_B0, var_B4, "Select NetAmount,MemBill.MemCode,MeshAc,Vdate from MemBill Left join SubGroup on SubGroup.SubCode=Membill.MemCode Where Docid='", var_DC, -1, var_E0)
  loc_174B028: var_9E = var_B0.Text
  loc_174B041: unk_5571D7.Execute MemVar_1F95070 & "ROFF" & var_B4 & "'", CDbl(0), CSng(var_100)
  loc_174B04C: Set var_88 = var_E0
  loc_174B078: If (var_88.RecordCount > 0) Then
  loc_174B0A9:   var_120 = Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("meshAc")), var_B4)))
  loc_174B0C5:   If CBool(var_120 <> vbNullString) Then
  loc_174B0C8:     ' Referenced from: 174B590
  loc_174B0D7:     If Not(var_88.EOF) Then
  loc_174B0F1:       var_B0 = var_88.Fields.Item("MemCode")
  loc_174B11C:       var_EC = var_88.Fields.Item("VDate")
  loc_174B12B:       Proc_6_7_F26918(var_120, CVar(var_EC))
  loc_174B136:       var_20C = 0
  loc_174B156:       var_B8 = "Select isnull(Sum(AmtDr),0)-isnull(Sum(AmtCr),0) As CreditAmt From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_B0), var_13C & var_138)
  loc_174B16C:       var_1DC = CVar(MemVar_1F95070 & "ROFF" & Proc_6_38_E69628(CVar(var_B0), var_13C & var_138) & "' And V_date<=") & var_120 & vbNullString 
  loc_174B17A:       unk_5571D7.Execute CStr(var_1DC), var_1FC, -1
  loc_174B182:       var_F0 = var_F0.Fields
  loc_174B18A:       var_20C = var_124.Item(var_124)
  loc_174B192:       var_128 = var_128.Value
  loc_174B19D:       Proc_6_39_E7D3A0(var_22C, var_21C)
  loc_174B1DD:       If (CSng(var_22C) > CDbl(0)) Then
  loc_174B1E6:         var_9E = (var_9E + 1)
  loc_174B1F7:         Set var_AC = Me.Txt
  loc_174B1FD:         Call 0.Method_Proc_279_48_174B59C0 (CInt(4), var_B0, var_13C, var_9E)
  loc_174B218:         Set var_E0 = Me.Txt
  loc_174B21E:         Call 0.Method_Proc_279_48_174B59C0 (CInt(5), var_EC, var_148)
  loc_174B226:         var_21C = var_EC.Text
  loc_174B299:         Set var_130 = Me.Txt
  loc_174B29F:         Call 0.Method_Proc_279_48_174B59C0 (CInt(5), var_134)
  loc_174B2A7:         var_B4 = var_134.Text
  loc_174B2BA:         Set var_150 = Me.Txt
  loc_174B2C0:         Call 0.Method_Proc_279_48_174B59C0 (CInt(2), var_188)
  loc_174B2C8:         var_BC = var_188.Text
  loc_174B2DA:         var_180 = 0
  loc_174B2E5:         var_17C = 0
  loc_174B2F0:         var_178 = 0
  loc_174B2F9:         var_16C = "A"
  loc_174B368:         Proc_6_141_12E23F4(MemVar_1F95044, var_13C, var_9E, "MBILL", CLng(var_148), Me.LblVPrefix.Caption, MemVar_1F95070, var_A8)
  loc_174B3BA:         var_9E = (var_9E + 1)
  loc_174B3CB:         Set var_AC = Me.Txt
  loc_174B3D1:         Call 0.Method_Proc_279_48_174B59C0 (CInt(4), var_B0, var_13C, var_9E, CStr(var_88.Fields.Item("MemCode").Value), var_B0.Text)
  loc_174B3D9:         CDbl(0) = var_B0.Text
  loc_174B3EC:         Set var_E0 = Me.Txt
  loc_174B3F2:         Call 0.Method_Proc_279_48_174B59C0 (CInt(5), var_EC, var_148, CStr(var_88.Fields.Item("meshAc").Value))
  loc_174B3FA:         var_138 & var_BC = var_EC.Text
  loc_174B433:         var_100 = var_88.Fields.Item("meshAc").Value
  loc_174B45A:         var_120 = var_88.Fields.Item("MemCode").Value
  loc_174B46D:         Set var_130 = Me.Txt
  loc_174B473:         Call 0.Method_Proc_279_48_174B59C0 (CInt(5), var_134, var_B4)
  loc_174B47B:         MemVar_1F950C8 = var_134.Text
  loc_174B48E:         Set var_150 = Me.Txt
  loc_174B494:         Call 0.Method_Proc_279_48_174B59C0 (CInt(2), var_188, var_BC)
  loc_174B49C:         CDate(Now) = var_188.Text
  loc_174B4A4:         var_DC = Now
  loc_174B4AE:         var_180 = 0
  loc_174B4B9:         var_17C = 0
  loc_174B4C4:         var_178 = 0
  loc_174B4CD:         var_16C = "A"
  loc_174B4ED:         var_138 = "Against bill no : " & var_B4 & " For "
  loc_174B53C:         Proc_6_141_12E23F4(MemVar_1F95044, var_13C, var_9E, "MBILL", CLng(var_148), Me.LblVPrefix.Caption, MemVar_1F95070, var_A8)
  loc_174B588:       End If
  loc_174B58B:       var_88.MoveNext
  loc_174B590:       GoTo loc_174B0C8
  loc_174B593:     End If
  loc_174B593:   End If
  loc_174B593: End If
  loc_174B598: Set var_88 = Nothing
  loc_174B59B: Exit Sub
End Sub

Public Sub Proc_279_49_100062C
  'Data Table: 5571BC
  Dim Me As Recordset15
  Dim var_94 As String
  Dim var_9C As TextBox
  Dim var_A8 As String
  Dim var_C0 As Variant
  Dim var_110 As Variant
  Dim unk_5571D7 As Connection15
  Dim var_90 As Recordset15
  Dim var_98 As Fields15
  loc_1000470: If (Me.RecordCount = 0) Then
  loc_1000473:   Proc_279_49_100062C = 0
  loc_1000479: End If
  loc_100048D: var_94 = "Select Vno From MemBill Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_10004A5: Set var_98 = Me.Txt
  loc_10004AB: Call 0.Method_Proc_279_49_100062C0 (CInt(0), var_9C, var_A0, var_94 & "' or LOGSITE_CODE='HO') and (MemCode='")
  loc_10004BC: var_A8 = -1 & var_A0
  loc_10004D1: Set var_AC = Me.Txt
  loc_10004D7: Call 0.Method_Proc_279_49_100062C0 (CInt(2), var_B0)
  loc_10004E6: var_D0 = Trim(CVar(var_B0))
  loc_10004F7: var_110 = CVar(var_A8 & "' And MthYear='") & var_D0 & "')" 
  loc_1000505: unk_5571D7.Execute CStr(var_110), var_138, 
  loc_1000510: Set var_90 = var_138
  loc_100054E: If (var_90.RecordCount > 0) Then
  loc_1000568:   var_9C = var_90.Fields.Item("VNo")
  loc_1000570:   var_C0 = CVar(var_9C) 'Address
  loc_1000577:   Proc_6_39_E7D3A0(var_D0)
  loc_100059E:   MsgBox("Duplicate Entry Against Voucher No. " & var_D0, &H40, "Information", var_110, var_9C.Tag)
  loc_10005C0:   Set var_98 = Me.Txt
  loc_10005C6:   Call 0.Method_Proc_279_49_100062C0 (CInt(0), var_9C)
  loc_10005CE:   var_9C.SetFocus
  loc_10005DF:   Proc_279_49_100062C = &HFF
  loc_10005E5: End If
  loc_10005EB: Call Proc_279_44_1101798(MemVar_1F95044, var_94)
  loc_10005FE: Set var_98 = Me.Txt
  loc_1000604: Call 0.Method_Proc_279_49_100062C0 (CInt(4), var_9C)
  loc_100060C: var_9C.Text = var_94
  loc_1000620: Set var_90 = Nothing
  loc_1000623: Proc_279_49_100062C = var_C0
End Sub

Public Sub Proc_279_50_121FB34
  'Data Table: 5571BC
  Dim var_98 As Variant
  Dim var_8C As Variant
  Dim var_EC As Variant
  loc_121F642: Set var_8C = Me.Txt
  loc_121F648: Call 0.Method_Proc_279_50_121FB34C (var_8E, var_86)
  loc_121F658: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_121F66E:   Set var_8C = Me.Txt
  loc_121F674:   Call 0.Method_Proc_279_50_121FB340 (CInt(var_86), var_98)
  loc_121F67C:   var_98.Text = vbNullString
  loc_121F698:   Set var_8C = Me.Txt
  loc_121F69E:   Call 0.Method_Proc_279_50_121FB340 (CInt(var_86), var_98)
  loc_121F6A6:   var_98.Tag = vbNullString
  loc_121F6B5: Next var_92 'Byte
  loc_121F6C8: Me.TxtPreBalance.Text = vbNullString
  loc_121F6DD: Me.TxtPreBalance.Tag = vbNullString
  loc_121F6F2: Me.TxtCreditAmt.Text = vbNullString
  loc_121F707: Me.LblDrCr.Caption = vbNullString
  loc_121F71D: Set var_8C = Me.LblCap
  loc_121F723: Call 0.Method_Proc_279_50_121FB348 (var_8E, var_86)
  loc_121F730: For var_9C =  To CByte(var_8E): CByte(2) = var_9C 'Byte
  loc_121F743:   Set var_8C = Me.LblCap
  loc_121F749:   Call 0.Method_Proc_279_50_121FB340 (CInt(var_86))
  loc_121F75A:   Me.LblCap.Unload var_98
  loc_121F773:   Set var_8C = Me.TxtGt
  loc_121F779:   Call 0.Method_Proc_279_50_121FB340 (CInt(var_86), var_98)
  loc_121F78A:   Me.TxtGt.Unload var_98
  loc_121F799: Next var_9C 'Byte
  loc_121F7AD: Set var_8C = Me.LblCap1
  loc_121F7B3: Call 0.Method_Proc_279_50_121FB348 (var_8E, var_86)
  loc_121F7C0: For var_A4 =  To CByte(var_8E): CByte(2) = var_A4 'Byte
  loc_121F7D3:   Set var_8C = Me.LblCap1
  loc_121F7D9:   Call 0.Method_Proc_279_50_121FB340 (CInt(var_86))
  loc_121F7EA:   Me.LblCap1.Unload var_98
  loc_121F803:   Set var_8C = Me.TxtGt1
  loc_121F809:   Call 0.Method_Proc_279_50_121FB340 (CInt(var_86), var_98)
  loc_121F81A:   Me.TxtGt1.Unload var_98
  loc_121F829: Next var_A4 'Byte
  loc_121F83D: Set var_8C = Me.LblCap2
  loc_121F843: Call 0.Method_Proc_279_50_121FB348 (var_8E, var_86)
  loc_121F850: For var_A8 =  To CByte(var_8E): CByte(2) = var_A8 'Byte
  loc_121F863:   Set var_8C = Me.LblCap2
  loc_121F869:   Call 0.Method_Proc_279_50_121FB340 (CInt(var_86))
  loc_121F87A:   Me.LblCap2.Unload var_98
  loc_121F893:   Set var_8C = Me.TxtGt2
  loc_121F899:   Call 0.Method_Proc_279_50_121FB340 (CInt(var_86), var_98)
  loc_121F8AA:   Me.TxtGt2.Unload var_98
  loc_121F8B9: Next var_A8 'Byte
  loc_121F8CD: Set var_8C = Me.LblCap3
  loc_121F8D3: Call 0.Method_Proc_279_50_121FB348 (var_8E, var_86)
  loc_121F8E0: For var_AC =  To CByte(var_8E): CByte(2) = var_AC 'Byte
  loc_121F8F3:   Set var_8C = Me.LblCap3
  loc_121F8F9:   Call 0.Method_Proc_279_50_121FB340 (CInt(var_86))
  loc_121F90A:   Me.LblCap3.Unload var_98
  loc_121F923:   Set var_8C = Me.TxtGt3
  loc_121F929:   Call 0.Method_Proc_279_50_121FB340 (CInt(var_86), var_98)
  loc_121F93A:   Me.TxtGt3.Unload var_98
  loc_121F949: Next var_AC 'Byte
  loc_121F95B: Set var_8C = Me.TxtGt
  loc_121F961: Call 0.Method_Proc_279_50_121FB340 (1, var_98)
  loc_121F969: var_98.Text = vbNullString
  loc_121F980: Set var_8C = Me.LblCap1
  loc_121F986: Call 0.Method_Proc_279_50_121FB340 (1, var_98)
  loc_121F98E: var_98.Visible = False
  loc_121F9A5: Set var_8C = Me.TxtGt1
  loc_121F9AB: Call 0.Method_Proc_279_50_121FB340 (1, var_98)
  loc_121F9B3: var_98.Visible = False
  loc_121F9CA: Set var_8C = Me.LblCap2
  loc_121F9D0: Call 0.Method_Proc_279_50_121FB340 (1, var_98)
  loc_121F9D8: var_98.Visible = False
  loc_121F9EF: Set var_8C = Me.TxtGt2
  loc_121F9F5: Call 0.Method_Proc_279_50_121FB340 (1, var_98)
  loc_121F9FD: var_98.Visible = False
  loc_121FA14: Set var_8C = Me.LblCap3
  loc_121FA1A: Call 0.Method_Proc_279_50_121FB340 (1, var_98)
  loc_121FA22: var_98.Visible = False
  loc_121FA39: Set var_8C = Me.TxtGt3
  loc_121FA3F: Call 0.Method_Proc_279_50_121FB340 (1, var_98)
  loc_121FA47: var_98.Visible = False
  loc_121FA66: Me.FGrid.Rows = 1
  loc_121FA83: var_EC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_121FA8B: Set var_98 = Me.FGrid
  loc_121FABA: Me.FGrid.FixedRows = 1
  loc_121FAD5: Me.FGCat.Rows = 1
  loc_121FAF2: var_EC = CVar(CStr(CLng(Me.FGCat.Rows))) 'String
  loc_121FAFA: Set var_98 = Me.FGCat
  loc_121FB29: Me.FGCat.FixedRows = 1
  loc_121FB31: Exit Sub
End Sub

Public Sub Proc_279_51_19910DC
  'Data Table: 5571BC
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_BC As Variant
  Dim var_D0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1A4 As String
  Dim unk_5571D7 As Connection15
  Dim var_1B4 As String
  Dim var_1C4 As Variant
  Dim var_1C8 As Variant
  Dim var_1DC As Variant
  Dim var_25C As Variant
  Dim var_2AC As String
  Dim var_2C0 As Variant
  Dim var_2D4 As Variant
  Dim var_314 As Variant
  Dim var_394 As Variant
  Dim var_88 As Recordset15
  Dim var_E0 As Variant
  Dim var_3BC As String
  Dim var_1EC As Variant
  Dim var_3B8 As Variant
  Dim var_8C As Recordset15
  Dim var_96 As Integer
  Dim var_98 As Integer
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_3D0 As MSHFlexGrid
  Dim var_90 As Recordset15
  Dim var_AC As Double
  Dim var_A4 As Double
  Dim var_B4 As Double
  Dim var_3E0 As Double
  Dim var_3E8 As Double
  Dim var_94 As Recordset15
  loc_198E254: On Error Goto loc_19910D3
  loc_198E26E: If (Me.RecordCount > 0) Then
  loc_198E271:   Call Proc_279_50_121FB34()
  loc_198E2B5:   var_100 = "Select S.Name As MemName,M.* From membill M Left Join SubGroup S On M.MemCode=S.SubCode Where M.DocId='" & Me.Fields.Item("SearchCode").Value 
  loc_198E2E4:   var_1A0 = var_100 & "' And M.Site_Code='" & CVar(MemVar_1F95070) & "' And (M.LogSite_Code='" & CVar(MemVar_1F95078) & "' Or M.LogSite_Code='HO')" 
  loc_198E2F2:   unk_5571D7.Execute CStr(var_1A0), var_1C4, -1
  loc_198E2FD:   Set var_88 = var_1C8
  loc_198E35E:   var_100 = "Select MF.Name As Facility,M1.* From membill1 M1 Left Join MemFacilityMast MF On M1.FacilityCode=MF.Code Where M1.DocId='" & Me.Fields.Item("SearchCode").Value 
  loc_198E384:   var_180 = var_100 & "' And M1.Type='Facility' And M1.Site_Code='" & CVar(MemVar_1F95070) & "' And (M1.LogSite_Code='" & CVar(MemVar_1F95078) 
  loc_198E391:   var_1B4 = "Select MR.Description As Facility,M1.* From membill1 M1 Left Join MembershipRevMast MR On M1.FacilityCode=MR.Code Where M1.DocId='"
  loc_198E396:   var_1C4 = var_180 & "' Or M1.LogSite_Code='HO') union " & var_1B4 
  loc_198E3AF:   var_1C8 = Me.Fields
  loc_198E3E3:   var_25C = var_1C4 & var_1C8.Item("SearchCode").Value & "' And M1.Type='Revenue' And M1.Site_Code='" & CVar(MemVar_1F95070) & "' And (M1.LogSite_Code='" 
  loc_198E3FA:   var_2AC = "Select Case When IsNull(D.Name,'')='' Then 'Banquet' Else D.Name End As Facility,M1.* From membill1 M1 Left Join Depart D On M1.OutletCode=D.Code Where M1.DocId='"
  loc_198E439:   var_314 = var_25C & CVar(MemVar_1F95078) & "' Or M1.LogSite_Code='HO') union " & var_2AC & Me.Fields.Item("SearchCode").Value & "' And M1.Type='Outlet' And M1.Site_Code='" 
  loc_198E45F:   var_394 = var_314 & CVar(MemVar_1F95070) & "' And (M1.LogSite_Code='" & CVar(MemVar_1F95078) & "' Or M1.LogSite_Code='HO') Order by sno" 
  loc_198E46D:   unk_5571D7.Execute CStr(var_394), var_3B4, -1
  loc_198E478:   Set var_8C = var_3B8
  loc_198E501:   var_100 = "Select R.Name As TaxName,M2.* From membill2 M2 Left Join RevMast R On M2.TaxCode=R.Code Where M2.DocId='" & Me.Fields.Item("SearchCode").Value 
  loc_198E530:   var_1A0 = var_100 & "' And M2.Site_Code='" & CVar(MemVar_1F95070) & "' And (M2.LogSite_Code='" & CVar(MemVar_1F95078) & "' Or M2.LogSite_Code='HO') Order By Sno,Sno1" 
  loc_198E53E:   unk_5571D7.Execute CStr(var_1A0), var_1C4, -1
  loc_198E549:   Set var_90 = var_1C8
  loc_198E5AA:   var_100 = "Select R.Name As SunName,MS.* From memSunTran MS Left Join RevMast R On MS.SunCode=R.Code Where MS.DocId='" & Me.Fields.Item("SearchCode").Value 
  loc_198E5D9:   var_1A0 = var_100 & "' And MS.Site_Code='" & CVar(MemVar_1F95070) & "' And (MS.LogSite_Code='" & CVar(MemVar_1F95078) & "' Or MS.LogSite_Code='HO') Order By Sno" 
  loc_198E5E7:   unk_5571D7.Execute CStr(var_1A0), var_1C4, -1
  loc_198E5F2:   Set var_94 = var_1C8
  loc_198E628:   If (var_88.RecordCount > 0) Then
  loc_198E665:     var_1C8 = var_88.Fields
  loc_198E6CE:     var_1A0 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE")), var_1C8, var_1C8) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_1C8.Item("U_AE")), var_3B8) = "E"), "Modified By : ", "User : "))
  loc_198E713:     Me.LblUser.Caption = CStr(var_1C8 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_1A0)))
  loc_198E78D:     var_1DC = var_88.Fields.Item("U_AE")
  loc_198E7EE:     var_1A0 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_1DC)) = "E"), "Last Update : ", "entdt : "))
  loc_198E80D:     var_2D4 = var_88.Fields.Item("U_EntDt")
  loc_198E815:     var_1C4 = CVar(var_2D4) 'Address
  loc_198E81E:     var_1EC = CVar(Proc_6_38_E69628(var_1C4)) 'String
  loc_198E833:     Me.LblLDt.Caption = CStr(var_1A0 & var_1EC)
  loc_198E8A1:     Set var_1C8 = Me.Txt
  loc_198E8A7:     Call 0.Method_Proc_279_51_19910DC0 (CInt(4), var_1DC)
  loc_198E8AF:     var_1DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("DocID")))
  loc_198E8F9:     Set var_1C8 = Me.Txt
  loc_198E8FF:     Call 0.Method_Proc_279_51_19910DC0 (CInt(0), var_1DC)
  loc_198E907:     var_1DC.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("MemCode")))
  loc_198E91E:     var_CC = "MemName"
  loc_198E932:     var_D0 = var_88.Fields.Item(var_CC)
  loc_198E943:     var_1A4 = Proc_6_38_E69628(CVar(var_D0))
  loc_198E951:     Set var_1C8 = Me.Txt
  loc_198E957:     Call 0.Method_Proc_279_51_19910DC0 (CInt(0), var_1DC)
  loc_198E95F:     var_1DC.Text = var_1A4
  loc_198E98A:     If (Me.RecordCount > 0) Then
  loc_198E993:       Me.MoveFirst
  loc_198E9B7:       Set var_BC = Me.Txt
  loc_198E9BD:       Call 0.Method_Proc_279_51_19910DC0 (CInt(0), var_D0, var_1A4, "SubCode='")
  loc_198E9C5:       0 = var_D0.Tag
  loc_198E9DE:       Me.Find 1 & var_1A4 & "'", var_CC, 
  loc_198E9F3:     End If
  loc_198EA29:     Set var_1C8 = Me.Txt
  loc_198EA2F:     Call 0.Method_Proc_279_51_19910DC0 (CInt(1), var_1DC)
  loc_198EA37:     var_1DC.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("MemCatcode")))
  loc_198EA81:     Set var_1C8 = Me.Txt
  loc_198EA87:     Call 0.Method_Proc_279_51_19910DC0 (CInt(1), var_1DC)
  loc_198EA8F:     var_1DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CardNo")))
  loc_198EAD9:     Set var_1C8 = Me.Txt
  loc_198EADF:     Call 0.Method_Proc_279_51_19910DC0 (CInt(2), var_1DC)
  loc_198EAE7:     var_1DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")))
  loc_198EB26:     var_100 = "dd/MMM/yyyy"
  loc_198EB4D:     Set var_1C8 = Me.Txt
  loc_198EB53:     Call 0.Method_Proc_279_51_19910DC0 (CInt(3), var_1DC, CStr(Format(CVar(var_88.Fields.Item("VDate")), var_100)))
  loc_198EB5B:     var_1DC.Text = 1
  loc_198EB9B:     Proc_6_39_E7D3A0(var_100, CVar(var_88.Fields.Item("VNo")))
  loc_198EBB2:     Set var_1C8 = Me.Txt
  loc_198EBB8:     Call 0.Method_Proc_279_51_19910DC0 (CInt(5), var_1DC)
  loc_198EBC0:     var_1DC.Text = CStr(var_100)
  loc_198EC0D:     Me.LblVPrefix.Caption = Proc_6_38_E69628(CVar(var_88.Fields.Item("vPrefix")))
  loc_198EC55:     Set var_1C8 = Me.Txt
  loc_198EC5B:     Call 0.Method_Proc_279_51_19910DC0 (CInt(6), var_1DC)
  loc_198EC63:     var_1DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("vType")))
  loc_198ECCD:     Set var_1C8 = Me.Txt
  loc_198ECD3:     Call 0.Method_Proc_279_51_19910DC0 (CInt(7), var_1DC, Proc_6_38_E69628(Format(CVar(var_88.Fields.Item("Billdate")), "dd/MMM/yyyy"), 1))
  loc_198ECDB:     var_1DC.Text = 1
  loc_198ECFB:     var_B8 = var_8C.RecordCount
  loc_198ED09:     If (var_B8 > 0) Then
  loc_198ED0E:       var_96 = 1
  loc_198ED13:       var_98 = 1
  loc_198ED18:       var_9A = 1
  loc_198ED1D:       var_9C = 1
  loc_198ED33:       Me.FGrid.Rows = 1
  loc_198ED3B:       ' Referenced from: 198FD1E
  loc_198ED41:       var_3CA = var_8C.EOF
  loc_198ED4A:       If Not(var_3CA) Then
  loc_198ED51:         Set var_3D0 = Me.FGrid
  loc_198ED54:         var_CC = vbNullString
  loc_198ED79:         var_CC = "Facility"
  loc_198ED9E:         var_100 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_CC)), CVar(CLng(6)), CVar(CLng(var_96)), FGrid.DispID_10000, var_CC)) 'String
  loc_198EDA5:         LateIdCallSt
  loc_198EDEE:         Proc_6_39_E7D3A0(var_100, CVar(var_8C.Fields.Item("SNo")), CVar(CLng(0)), CVar(CLng(var_96)), var_3D0, var_100)
  loc_198EDFE:         LateIdCallSt
  loc_198EE49:         Proc_6_39_E7D3A0(var_100, CVar(var_8C.Fields.Item("VNo")), CVar(CLng(2)), CVar(CLng(var_96)), var_3D0, CVar(CStr(var_100)))
  loc_198EE59:         LateIdCallSt
  loc_198EEA6:         var_100 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("DocID")), CVar(CLng(1)), CVar(CLng(var_96)), var_3D0, CVar(CStr(var_100)))) 'String
  loc_198EEAD:         LateIdCallSt
  loc_198EEF8:         var_100 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("vType")), CVar(CLng(3)), CVar(CLng(var_96)), var_3D0, var_100)) 'String
  loc_198EEFF:         LateIdCallSt
  loc_198EF4A:         var_100 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Type")), CVar(CLng(4)), CVar(CLng(var_96)), var_3D0, var_100)) 'String
  loc_198EF51:         LateIdCallSt
  loc_198EF67:         var_CC = CVar(CLng(var_96)) 'Long
  loc_198EF90:         If (CStr(var_3D0.TextMatrix)) = "Outlet") Then
  loc_198EFAA:           var_CC = "OutletCode"
  loc_198EFD3:           var_100 = CVar(Proc_6_38_E69628(var_8C.Fields.Item(var_CC).Value, CVar(CLng(&HD)), CVar(CLng(var_96)), CVar(CLng(4)), var_CC, var_3D0)) 'String
  loc_198EFDA:           LateIdCallSt
  loc_198EFF3:         Else
  loc_198F033:           var_100 = CVar(Proc_6_38_E69628(var_8C.Fields.Item("FacilityCode").Value, CVar(CLng(5)), CVar(CLng(var_96)), var_3D0, var_100, var_100)) 'String
  loc_198F03A:           LateIdCallSt
  loc_198F050:         End If
  loc_198F089:         var_100 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("TaxStru")), CVar(CLng(7)), CVar(CLng(var_96)), var_3D0, var_100)) 'String
  loc_198F090:         LateIdCallSt
  loc_198F0DB:         var_100 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("AcCode")), CVar(CLng(8)), CVar(CLng(var_96)), var_3D0, var_100)) 'String
  loc_198F0E2:         LateIdCallSt
  loc_198F11A:         Proc_6_39_E7D3A0(var_100, CVar(var_8C.Fields.Item("BaseAmt")), var_3D0, var_100, var_9C)
  loc_198F123:         var_110 = CVar(CLng(var_96)) 'Long
  loc_198F12B:         var_150 = CVar(CLng(9)) 'Long
  loc_198F15B:         LateIdCallSt
  loc_198F199:         Proc_6_39_E7D3A0(var_100, CVar(var_8C.Fields.Item("TaxAmt")), var_3D0, CVar(CStr(Format(var_100, "0.00"))), 1, 1)
  loc_198F1A2:         var_110 = CVar(CLng(var_96)) 'Long
  loc_198F1AA:         var_150 = CVar(CLng(&HA)) 'Long
  loc_198F1DA:         LateIdCallSt
  loc_198F22B:         var_100 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ACPosting")), CVar(CLng(&HB)), CVar(CLng(var_96)), var_3D0, CVar(CStr(Format(var_100, "0.00"))), 1, 1)) 'String
  loc_198F232:         LateIdCallSt
  loc_198F26C:         var_D0 = var_8C.Fields.Item("AcPostingYN")
  loc_198F284:         LateIdCallSt
  loc_198F2A2:         var_110 = CVar(CLng(4)) 'Long
  loc_198F2C3:         If (CStr(var_3D0.TextMatrix)) = "Facility") Then
  loc_198F2D0:           Set var_BC = Me.LblCap1
  loc_198F2D6:           Call 0.Method_Proc_279_51_19910DC8 (var_3CA, var_98, var_110, CVar(CLng(var_96)), var_3D0, CVar(Proc_6_38_E69628(CVar(var_D0), CVar(CLng(&HC)), CVar(CLng(var_96)), var_3D0, var_100, var_150)))
  loc_198F2E2:           If (var_110 > var_3CA) Then
  loc_198F2EF:             Set var_BC = Me.LblCap1
  loc_198F2F5:             Call 0.Method_Proc_279_51_19910DC0 (var_98, var_D0, var_150)
  loc_198F306:             Me.LblCap1.Load var_D0
  loc_198F31F:             Set var_1C8 = Me.LblCap1
  loc_198F325:             Call 0.Method_Proc_279_51_19910DC0 (var_98, var_1DC, var_3D4)
  loc_198F32D:             var_110 = var_1DC.Height
  loc_198F342:             Set var_BC = Me.LblCap1
  loc_198F348:             Call 0.Method_Proc_279_51_19910DC0 ((var_98 - 1), var_D0, var_B8)
  loc_198F350:             var_9A = var_D0.Top
  loc_198F36B:             Set var_2C0 = Me.LblCap1
  loc_198F371:             Call 0.Method_Proc_279_51_19910DC0 (var_98, var_2D4)
  loc_198F379:             var_2D4.Top = ((var_B8 + var_3D4) + CDbl(&HF))
  loc_198F38D:           End If
  loc_198F397:           Set var_BC = Me.TxtGt1
  loc_198F39D:           Call 0.Method_Proc_279_51_19910DC8 (var_3CA, var_98)
  loc_198F3A9:           If (var_98 > var_3CA) Then
  loc_198F3B6:             Set var_BC = Me.TxtGt1
  loc_198F3BC:             Call 0.Method_Proc_279_51_19910DC0 (var_98)
  loc_198F3CD:             Me.TxtGt1.Load var_D0
  loc_198F3E6:             Set var_1C8 = Me.TxtGt1
  loc_198F3EC:             Call 0.Method_Proc_279_51_19910DC0 (var_98, var_1DC)
  loc_198F3F4:             var_3D4 = var_1DC.Height
  loc_198F409:             Set var_BC = Me.TxtGt1
  loc_198F40F:             Call 0.Method_Proc_279_51_19910DC0 ((var_98 - 1), var_D0)
  loc_198F432:             Set var_2C0 = Me.TxtGt1
  loc_198F438:             Call 0.Method_Proc_279_51_19910DC0 (var_98, var_2D4)
  loc_198F440:             var_2D4.Top = ((var_D0.Top + var_3D4) + CDbl(&HF))
  loc_198F454:           End If
  loc_198F460:           Set var_BC = Me.LblCap1
  loc_198F466:           Call 0.Method_Proc_279_51_19910DC0 (var_98, var_D0)
  loc_198F46E:           var_D0.Visible = True
  loc_198F486:           Set var_BC = Me.TxtGt1
  loc_198F48C:           Call 0.Method_Proc_279_51_19910DC0 (var_98, var_D0)
  loc_198F494:           var_D0.Visible = True
  loc_198F4DC:           Set var_1C8 = Me.LblCap1
  loc_198F4E2:           Call 0.Method_Proc_279_51_19910DC0 (var_98, var_1DC)
  loc_198F4EA:           var_1DC.Tag = Proc_6_38_E69628(var_8C.Fields.Item("FacilityCode").Value)
  loc_198F538:           var_100 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Facility")))) 'String
  loc_198F554:           Set var_1C8 = Me.LblCap1
  loc_198F55A:           Call 0.Method_Proc_279_51_19910DC0 (var_98, var_1DC)
  loc_198F562:           var_1DC.Caption = CStr(StrConv(var_100, 3, 0))
  loc_198F597:           var_D0 = var_8C.Fields.Item("BaseAmt")
  loc_198F5A6:           Proc_6_39_E7D3A0(var_100, CVar(var_D0))
  loc_198F5DC:           Set var_1C8 = Me.TxtGt1
  loc_198F5E2:           Call 0.Method_Proc_279_51_19910DC0 (var_98, var_1DC, CStr(Format(var_100, "0.00")))
  loc_198F5EA:           var_1DC.Text = 1
  loc_198F60C:           var_98 = (var_98 + 1)
  loc_198F612:         Else
  loc_198F63F:           If (CStr(TxtGt1.DispID_41) = "Revenue") Then
  loc_198F64C:             Set var_BC = Me.LblCap2
  loc_198F652:             Call 0.Method_Proc_279_51_19910DC8 (var_3CA, var_9A, CVar(CLng(4)), CVar(CLng(var_96)))
  loc_198F65E:             If (var_98 > var_3CA) Then
  loc_198F66B:               Set var_BC = Me.LblCap2
  loc_198F671:               Call 0.Method_Proc_279_51_19910DC0 (var_9A, var_D0)
  loc_198F682:               Me.LblCap2.Load var_D0
  loc_198F69B:               Set var_1C8 = Me.LblCap2
  loc_198F6A1:               Call 0.Method_Proc_279_51_19910DC0 (var_9A, var_1DC, var_3D4)
  loc_198F6A9:               1 = var_1DC.Height
  loc_198F6BE:               Set var_BC = Me.LblCap2
  loc_198F6C4:               Call 0.Method_Proc_279_51_19910DC0 ((var_9A - 1), var_D0)
  loc_198F6E7:               Set var_2C0 = Me.LblCap2
  loc_198F6ED:               Call 0.Method_Proc_279_51_19910DC0 (var_9A, var_2D4)
  loc_198F6F5:               var_2D4.Top = ((var_D0.Top + var_3D4) + CDbl(&HF))
  loc_198F709:             End If
  loc_198F713:             Set var_BC = Me.TxtGt2
  loc_198F719:             Call 0.Method_Proc_279_51_19910DC8 (var_3CA, var_9A)
  loc_198F725:             If (var_D0 > var_3CA) Then
  loc_198F732:               Set var_BC = Me.TxtGt2
  loc_198F738:               Call 0.Method_Proc_279_51_19910DC0 (var_9A)
  loc_198F749:               Me.TxtGt2.Load var_D0
  loc_198F762:               Set var_1C8 = Me.TxtGt2
  loc_198F768:               Call 0.Method_Proc_279_51_19910DC0 (var_9A, var_1DC)
  loc_198F770:               var_3D4 = var_1DC.Height
  loc_198F785:               Set var_BC = Me.TxtGt2
  loc_198F78B:               Call 0.Method_Proc_279_51_19910DC0 ((var_9A - 1), var_D0)
  loc_198F7AE:               Set var_2C0 = Me.TxtGt2
  loc_198F7B4:               Call 0.Method_Proc_279_51_19910DC0 (var_9A, var_2D4)
  loc_198F7BC:               var_2D4.Top = ((var_D0.Top + var_3D4) + CDbl(&HF))
  loc_198F7D0:             End If
  loc_198F7DC:             Set var_BC = Me.LblCap2
  loc_198F7E2:             Call 0.Method_Proc_279_51_19910DC0 (var_9A, var_D0)
  loc_198F7EA:             var_D0.Visible = True
  loc_198F802:             Set var_BC = Me.TxtGt2
  loc_198F808:             Call 0.Method_Proc_279_51_19910DC0 (var_9A, var_D0)
  loc_198F810:             var_D0.Visible = True
  loc_198F858:             Set var_1C8 = Me.LblCap2
  loc_198F85E:             Call 0.Method_Proc_279_51_19910DC0 (var_9A, var_1DC)
  loc_198F866:             var_1DC.Tag = Proc_6_38_E69628(var_8C.Fields.Item("FacilityCode").Value)
  loc_198F8B4:             var_100 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Facility")))) 'String
  loc_198F8D0:             Set var_1C8 = Me.LblCap2
  loc_198F8D6:             Call 0.Method_Proc_279_51_19910DC0 (var_9A, var_1DC)
  loc_198F8DE:             var_1DC.Caption = CStr(StrConv(var_100, 3, 0))
  loc_198F913:             var_D0 = var_8C.Fields.Item("BaseAmt")
  loc_198F922:             Proc_6_39_E7D3A0(var_100, CVar(var_D0))
  loc_198F958:             Set var_1C8 = Me.TxtGt2
  loc_198F95E:             Call 0.Method_Proc_279_51_19910DC0 (var_9A, var_1DC, CStr(Format(var_100, "0.00")))
  loc_198F966:             var_1DC.Text = 1
  loc_198F988:             var_9A = (var_9A + 1)
  loc_198F98E:           Else
  loc_198F9BB:             If (CStr(TxtGt2.DispID_41) = "Outlet") Then
  loc_198F9C8:               Set var_BC = Me.LblCap3
  loc_198F9CE:               Call 0.Method_Proc_279_51_19910DC8 (var_3CA, var_9C, CVar(CLng(4)), CVar(CLng(var_96)))
  loc_198F9DA:               If (var_9A > var_3CA) Then
  loc_198F9E7:                 Set var_BC = Me.LblCap3
  loc_198F9ED:                 Call 0.Method_Proc_279_51_19910DC0 (var_9C, var_D0)
  loc_198F9FE:                 Me.LblCap3.Load var_D0
  loc_198FA17:                 Set var_1C8 = Me.LblCap3
  loc_198FA1D:                 Call 0.Method_Proc_279_51_19910DC0 (var_9C, var_1DC, var_3D4)
  loc_198FA25:                 1 = var_1DC.Height
  loc_198FA3A:                 Set var_BC = Me.LblCap3
  loc_198FA40:                 Call 0.Method_Proc_279_51_19910DC0 ((var_9C - 1), var_D0)
  loc_198FA63:                 Set var_2C0 = Me.LblCap3
  loc_198FA69:                 Call 0.Method_Proc_279_51_19910DC0 (var_9C, var_2D4)
  loc_198FA71:                 var_2D4.Top = ((var_D0.Top + var_3D4) + CDbl(&HF))
  loc_198FA85:               End If
  loc_198FA8F:               Set var_BC = Me.TxtGt3
  loc_198FA95:               Call 0.Method_Proc_279_51_19910DC8 (var_3CA, var_9C)
  loc_198FAA1:               If (var_D0 > var_3CA) Then
  loc_198FAAE:                 Set var_BC = Me.TxtGt3
  loc_198FAB4:                 Call 0.Method_Proc_279_51_19910DC0 (var_9C)
  loc_198FAC5:                 Me.TxtGt3.Load var_D0
  loc_198FADE:                 Set var_1C8 = Me.TxtGt3
  loc_198FAE4:                 Call 0.Method_Proc_279_51_19910DC0 (var_9C, var_1DC)
  loc_198FB01:                 Set var_BC = Me.TxtGt3
  loc_198FB07:                 Call 0.Method_Proc_279_51_19910DC0 ((var_9C - 1), var_D0)
  loc_198FB2A:                 Set var_2C0 = Me.TxtGt3
  loc_198FB30:                 Call 0.Method_Proc_279_51_19910DC0 (var_9C, var_2D4)
  loc_198FB38:                 var_2D4.Top = ((var_D0.Top + var_1DC.Height) + CDbl(&HF))
  loc_198FB4C:               End If
  loc_198FB58:               Set var_BC = Me.LblCap3
  loc_198FB5E:               Call 0.Method_Proc_279_51_19910DC0 (var_9C, var_D0)
  loc_198FB66:               var_D0.Visible = True
  loc_198FB7E:               Set var_BC = Me.TxtGt3
  loc_198FB84:               Call 0.Method_Proc_279_51_19910DC0 (var_9C, var_D0)
  loc_198FB8C:               var_D0.Visible = True
  loc_198FBD4:               Set var_1C8 = Me.LblCap3
  loc_198FBDA:               Call 0.Method_Proc_279_51_19910DC0 (var_9C, var_1DC)
  loc_198FBE2:               var_1DC.Tag = Proc_6_38_E69628(var_8C.Fields.Item("OutletCode").Value)
  loc_198FC30:               var_100 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Facility")))) 'String
  loc_198FC4C:               Set var_1C8 = Me.LblCap3
  loc_198FC52:               Call 0.Method_Proc_279_51_19910DC0 (var_9C, var_1DC)
  loc_198FC5A:               var_1DC.Caption = CStr(StrConv(var_100, 3, 0))
  loc_198FC9E:               Proc_6_39_E7D3A0(var_100, CVar(var_8C.Fields.Item("BaseAmt")))
  loc_198FCD4:               Set var_1C8 = Me.TxtGt3
  loc_198FCDA:               Call 0.Method_Proc_279_51_19910DC0 (var_9C, var_1DC, CStr(Format(var_100, "0.00")))
  loc_198FCE2:               var_1DC.Text = 1
  loc_198FD04:               var_9C = (var_9C + 1)
  loc_198FD07:             End If
  loc_198FD07:           End If
  loc_198FD07:         End If
  loc_198FD09:         Set var_3D0 = Nothing 
  loc_198FD13:         var_96 = (var_96 + 1)
  loc_198FD19:         var_8C.MoveNext
  loc_198FD1E:         GoTo loc_198ED3B
  loc_198FD21:       End If
  loc_198FD21:     End If
  loc_198FD21:     var_CC = 0
  loc_198FD2B:     Set var_BC = Me.FGrid
  loc_198FD58:     If (CLng(Me.FGrid.Rows) = 1) Then
  loc_198FD5B:       var_CC = "1"
  loc_198FD65:       Set var_BC = Me.FGrid
  loc_198FD76:     End If
  loc_198FD89:     Me.FGrid.FixedRows = 1
  loc_198FDA5:     If (var_90.RecordCount > 0) Then
  loc_198FDAA:       var_96 = 1
  loc_198FDC0:       Me.FGCat.Rows = 1
  loc_198FDC8:       ' Referenced from: 199023C
  loc_198FDD7:       If Not(var_90.EOF) Then
  loc_198FDDE:         Set var_3D8 = Me.FGCat
  loc_198FDE1:         var_CC = vbNullString
  loc_198FE06:         var_CC = "SNo"
  loc_198FE29:         Proc_6_39_E7D3A0(var_100, CVar(var_90.Fields.Item(var_CC)), CVar(CLng(0)), CVar(CLng(var_96)), FGCat.DispID_10000, var_CC, var_96)
  loc_198FE39:         LateIdCallSt
  loc_198FE84:         Proc_6_39_E7D3A0(var_100, CVar(var_90.Fields.Item("Sno1")), CVar(CLng(1)), CVar(CLng(var_96)), var_3D8, CVar(CStr(var_100)), FGrid.DispID_10000)
  loc_198FE94:         LateIdCallSt
  loc_198FEBC:         var_CC = "DocID"
  loc_198FEE1:         var_100 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item(var_CC)), CVar(CLng(2)), CVar(CLng(var_96)), var_3D8, CVar(CStr(var_100)), var_CC)) 'String
  loc_198FEE8:         LateIdCallSt
  loc_198FF31:         Proc_6_39_E7D3A0(var_100, CVar(var_90.Fields.Item("VNo")), CVar(CLng(3)), CVar(CLng(var_96)), var_3D8, var_100)
  loc_198FF41:         LateIdCallSt
  loc_198FF8E:         var_100 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("vType")), CVar(CLng(4)), CVar(CLng(var_96)), var_3D8, CVar(CStr(var_100)))) 'String
  loc_198FF95:         LateIdCallSt
  loc_198FFE7:         var_100 = CVar(Proc_6_38_E69628(var_90.Fields.Item("FacilityCode").Value, CVar(CLng(5)), CVar(CLng(var_96)), var_3D8, var_100)) 'String
  loc_198FFEE:         LateIdCallSt
  loc_199003D:         var_100 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("TaxCode")), CVar(CLng(6)), CVar(CLng(var_96)), var_3D8, var_100)) 'String
  loc_1990044:         LateIdCallSt
  loc_199008F:         var_100 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("TaxName")), CVar(CLng(7)), CVar(CLng(var_96)), var_3D8, var_100)) 'String
  loc_1990096:         LateIdCallSt
  loc_19900CE:         Proc_6_39_E7D3A0(var_100, CVar(var_90.Fields.Item("BaseAmt")), var_3D8, var_100, FGrid.DispID_2E)
  loc_19900D7:         var_110 = CVar(CLng(var_96)) 'Long
  loc_19900DF:         var_150 = CVar(CLng(8)) 'Long
  loc_199010F:         LateIdCallSt
  loc_199014D:         Proc_6_39_E7D3A0(var_100, CVar(var_90.Fields.Item("TaxPer")), var_3D8, CVar(CStr(Format(var_100, "0.00"))), 1, 1)
  loc_1990156:         var_110 = CVar(CLng(var_96)) 'Long
  loc_199018E:         LateIdCallSt
  loc_19901CC:         Proc_6_39_E7D3A0(var_100, CVar(var_90.Fields.Item("TaxAmt")), var_3D8, CVar(CStr(Format(var_100, "0.00"))), 1, 1, CVar(CLng(9)))
  loc_19901D5:         var_110 = CVar(CLng(var_96)) 'Long
  loc_19901DD:         var_150 = CVar(CLng(&HA)) 'Long
  loc_1990206:         var_160 = CVar(CStr(Format(var_100, "0.00"))) 'String
  loc_199020D:         LateIdCallSt
  loc_1990227:         Set var_3D8 = Nothing 
  loc_1990231:         var_96 = (var_96 + 1)
  loc_1990237:         var_90.MoveNext
  loc_199023C:         GoTo loc_198FDC8
  loc_199023F:       End If
  loc_199023F:     End If
  loc_199023F:     var_CC = 0
  loc_1990249:     Set var_BC = Me.FGCat
  loc_1990276:     If (CLng(Me.FGCat.Rows) = 1) Then
  loc_1990279:       var_CC = "1"
  loc_1990283:       Set var_BC = Me.FGCat
  loc_1990294:     End If
  loc_19902A7:     Me.FGCat.FixedRows = 1
  loc_19902AF:   End If
  loc_19902B2:   var_CC = "MemCode"
  loc_1990313:   var_150 = 0
  loc_1990333:   var_3BC = "Select isnull(Sum(AmtCr),0) From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_88.Fields.Item(var_CC)), FGCat.DispID_10000, var_CC, FGCat.DispID_2E, var_CC, var_96, var_3D8)
  loc_199033A:   var_160 = CVar(var_3BC & "' And V_Type In ('CNT') And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_1990357:   unk_5571D7.Execute CStr(var_160 & Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")), var_160, 1, 1))) & "')"), var_1C4, -1
  loc_199035F:   var_2C0 = var_2C0.Fields
  loc_199036F:   var_3B8 = var_3B8.Value
  loc_1990378:   var_AC = CSng(var_1EC)
  loc_1990401:   var_140 = Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")), var_2D4.Item(var_2D4))))
  loc_199040C:   var_150 = 0
  loc_199042C:   var_3BC = "Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_88.Fields.Item("MemCode")), var_AC, var_1EC)
  loc_1990433:   var_160 = CVar(var_3BC & "' And V_Type In ('CNT') And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_199043D:   var_110 = "')"
  loc_1990450:   unk_5571D7.Execute CStr(var_160 & var_140 & var_110), var_1C4, -1
  loc_1990458:   var_2C0 = var_2C0.Fields
  loc_1990460:   var_150 = var_2D4.Item(var_2D4)
  loc_1990468:   var_3B8 = var_3B8.Value
  loc_1990471:   var_A4 = CSng(var_1EC)
  loc_19904BD:   var_E0 = CVar((var_AC - var_A4)) 'Double
  loc_19904DA:   Me.TxtOtherCredit.Text = CStr(Format(CVar(var_88.Fields.Item("MemCode")), "0.00"))
  loc_199054E:   Proc_6_7_F26918(var_140, CVar(var_110 & Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")), "01/", var_1EC)))
  loc_1990559:   var_150 = 0
  loc_1990579:   var_3BC = "Select isnull(Sum(AmtCr),0) From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_88.Fields.Item("MemCode")), 1, 1, var_A4)
  loc_199059D:   unk_5571D7.Execute CStr(CVar(var_3BC & "' And V_date<") & var_140 & vbNullString), var_1C4, -1
  loc_19905A5:   var_2C0 = var_2C0.Fields
  loc_19905AD:   var_150 = var_2D4.Item(var_2D4)
  loc_19905B5:   var_3B8 = var_3B8.Value
  loc_19905BE:   var_AC = CSng(var_1EC)
  loc_1990650:   Proc_6_7_F26918(var_140, CVar(var_1EC & Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")), "01/")))
  loc_199065B:   var_150 = 0
  loc_1990682:   var_160 = CVar("Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_88.Fields.Item("MemCode")), var_AC) & "' And V_date<") 'String
  loc_199069F:   unk_5571D7.Execute CStr(var_160 & var_140 & vbNullString), var_1C4, -1
  loc_19906A7:   var_2C0 = var_2C0.Fields
  loc_19906AF:   var_150 = var_2D4.Item(var_2D4)
  loc_19906B7:   var_3B8 = var_3B8.Value
  loc_19906C0:   var_A4 = CSng(var_1EC)
  loc_1990734:   var_1DC = var_88.Fields.Item("MthYear")
  loc_1990756:   var_150 = 0
  loc_1990776:   var_3BC = "Select isnull(Sum(AmtCr),0) From Ledger Where isnull(AmtCr,0)<>0 And V_Type Not In ('HPOST','MBILL','CNT') And SubCode='" & Proc_6_38_E69628(CVar(var_88.Fields.Item("MemCode")), var_A4)
  loc_199077D:   var_160 = CVar(var_3BC & "' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_199079A:   unk_5571D7.Execute CStr(var_160 & Trim(CVar(Proc_6_38_E69628(CVar(var_1DC), var_1EC))) & "')"), var_1C4, -1
  loc_19907A2:   var_2C0 = var_2C0.Fields
  loc_19907AA:   var_150 = var_2D4.Item(var_2D4)
  loc_19907B2:   var_3B8 = var_3B8.Value
  loc_19907BB:   var_B4 = CSng(var_1EC)
  loc_1990807:   var_E0 = CVar((var_A4 - var_AC)) 'Double
  loc_1990824:   Me.TxtPreBalance.Tag = CStr(Format(CVar(var_88.Fields.Item("MemCode")), "0.00"))
  loc_1990852:   var_3E0 = Val(Me.TxtPreBalance.Tag)
  loc_199085C:   Set var_D0 = Me.TxtPreBalance
  loc_199086F:   var_3E8 = Val(var_D0.Tag)
  loc_1990872:   var_110 = " Cr"
  loc_19908CF:   Me.LblDrCr.Caption = CStr(IIf((CDbl(var_3E0) = CDbl(0)), vbNullString, IIf((CDbl(var_3E8) > CDbl(0)), " Dr", var_110)))
  loc_1990914:   var_E0 = CVar(Abs((var_A4 - var_AC))) 'Double
  loc_1990931:   Me.TxtPreBalance.Text = CStr(Format(" Dr", "0.00"))
  loc_199097B:   Me.TxtCreditAmt.Text = CStr(Format(var_B4, "0.00"))
  loc_19909A1:   If (var_94.RecordCount > 0) Then
  loc_19909A6:     var_96 = 1
  loc_19909A9:     ' Referenced from: 19910A2
  loc_19909AF:     var_3CA = var_94.EOF
  loc_19909B8:     If Not(var_3CA) Then
  loc_19909C5:       Set var_BC = Me.LblDummy
  loc_19909CB:       Call 0.Method_Proc_279_51_19910DC8 (var_3CA, var_96, var_96, 1, 1, 1, 1)
  loc_19909D7:       If (var_3E8 > var_3CA) Then
  loc_19909E4:         Set var_BC = Me.LblDummy
  loc_19909EA:         Call 0.Method_Proc_279_51_19910DC0 (var_96, var_D0, var_3E0, 1)
  loc_19909FB:         Me.LblDummy.Load var_D0
  loc_1990A13:         Set var_BC = Me.LblDummy
  loc_1990A19:         Call 0.Method_Proc_279_51_19910DC0 (var_96, var_D0, 0, 1)
  loc_1990A21:         var_D0.Visible = var_B4
  loc_1990A2D:       End If
  loc_1990A37:       Set var_BC = Me.LblCap
  loc_1990A3D:       Call 0.Method_Proc_279_51_19910DC8 (var_3CA, var_96)
  loc_1990A49:       If (var_1EC > var_3CA) Then
  loc_1990A56:         Set var_BC = Me.LblCap
  loc_1990A5C:         Call 0.Method_Proc_279_51_19910DC0 (var_96, var_D0)
  loc_1990A6D:         Me.LblCap.Load var_D0
  loc_1990A86:         Set var_1C8 = Me.LblCap
  loc_1990A8C:         Call 0.Method_Proc_279_51_19910DC0 (var_96, var_1DC)
  loc_1990AA9:         Set var_BC = Me.LblCap
  loc_1990AAF:         Call 0.Method_Proc_279_51_19910DC0 ((var_96 - 1), var_D0)
  loc_1990AD2:         Set var_2C0 = Me.LblCap
  loc_1990AD8:         Call 0.Method_Proc_279_51_19910DC0 (var_96, var_2D4)
  loc_1990AE0:         var_2D4.Top = ((var_D0.Top + var_1DC.Height) + CDbl(&HF))
  loc_1990AF4:       End If
  loc_1990AFE:       Set var_BC = Me.TxtGt
  loc_1990B04:       Call 0.Method_Proc_279_51_19910DC8 (var_3CA, var_96)
  loc_1990B10:       If (var_110 > var_3CA) Then
  loc_1990B1D:         Set var_BC = Me.TxtGt
  loc_1990B23:         Call 0.Method_Proc_279_51_19910DC0 (var_96)
  loc_1990B34:         Me.TxtGt.Load var_D0
  loc_1990B4D:         Set var_1C8 = Me.TxtGt
  loc_1990B53:         Call 0.Method_Proc_279_51_19910DC0 (var_96, var_1DC)
  loc_1990B70:         Set var_BC = Me.TxtGt
  loc_1990B76:         Call 0.Method_Proc_279_51_19910DC0 ((var_96 - 1), var_D0)
  loc_1990B99:         Set var_2C0 = Me.TxtGt
  loc_1990B9F:         Call 0.Method_Proc_279_51_19910DC0 (var_96, var_2D4)
  loc_1990BA7:         var_2D4.Top = ((var_D0.Top + var_1DC.Height) + CDbl(&HF))
  loc_1990BBB:       End If
  loc_1990BFF:       If (Proc_6_38_E69628(CVar(var_94.Fields.Item("SunCode"))) = MemVar_1F95070 & "TOT") Then
  loc_1990C19:         var_D0 = var_94.Fields.Item("SunCode")
  loc_1990C37:         Set var_1C8 = Me.LblCap
  loc_1990C3D:         Call 0.Method_Proc_279_51_19910DC0 (var_96, var_1DC)
  loc_1990C45:         var_1DC.Tag = Proc_6_38_E69628(CVar(var_D0))
  loc_1990C87:         Set var_BC = Me.LblCap
  loc_1990C8D:         Call 0.Method_Proc_279_51_19910DC0 (var_96, var_D0)
  loc_1990C95:         var_D0.Caption = CStr(StrConv("Total", 3, 0))
  loc_1990D0A:         Set var_1C8 = Me.TxtGt
  loc_1990D10:         Call 0.Method_Proc_279_51_19910DC0 (var_96, var_1DC, CStr(Format(CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("SunAmt")))), "0.00")))
  loc_1990D18:         var_1DC.Text = 1
  loc_1990D3B:       Else
  loc_1990D7F:         If (Proc_6_38_E69628(CVar(var_94.Fields.Item("SunCode")), 1) = MemVar_1F95070 & "NET") Then
  loc_1990D99:           var_D0 = var_94.Fields.Item("SunCode")
  loc_1990DB7:           Set var_1C8 = Me.LblCap
  loc_1990DBD:           Call 0.Method_Proc_279_51_19910DC0 (var_96, var_1DC)
  loc_1990DC5:           var_1DC.Tag = Proc_6_38_E69628(CVar(var_D0))
  loc_1990E07:           Set var_BC = Me.LblCap
  loc_1990E0D:           Call 0.Method_Proc_279_51_19910DC0 (var_96, var_D0)
  loc_1990E15:           var_D0.Caption = CStr(StrConv("Net Amount", 3, 0))
  loc_1990E8A:           Set var_1C8 = Me.TxtGt
  loc_1990E90:           Call 0.Method_Proc_279_51_19910DC0 (var_96, var_1DC, CStr(Format(CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("SunAmt")))), "0.00")))
  loc_1990E98:           var_1DC.Text = 1
  loc_1990EBB:         Else
  loc_1990EF0:           Set var_1C8 = Me.LblCap
  loc_1990EF6:           Call 0.Method_Proc_279_51_19910DC0 (var_96, var_1DC)
  loc_1990EFE:           var_1DC.Tag = Proc_6_38_E69628(CVar(var_94.Fields.Item("SunCode")), 1)
  loc_1990F66:           Set var_1C8 = Me.LblCap
  loc_1990F6C:           Call 0.Method_Proc_279_51_19910DC0 (var_96, var_1DC)
  loc_1990F74:           var_1DC.Caption = CStr(StrConv(CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("SunName")))), 3, 0))
  loc_1990FA9:           var_D0 = var_94.Fields.Item("SunAmt")
  loc_1990FF1:           Set var_1C8 = Me.TxtGt
  loc_1990FF7:           Call 0.Method_Proc_279_51_19910DC0 (var_96, var_1DC, CStr(Format(CVar(Proc_6_38_E69628(CVar(var_D0))), "0.00")))
  loc_1990FFF:           var_1DC.Text = 1
  loc_199101F:         End If
  loc_199101F:       End If
  loc_199102B:       Set var_BC = Me.LblDummy
  loc_1991031:       Call 0.Method_Proc_279_51_19910DC0 (var_96, var_D0, 0)
  loc_1991039:       var_D0.Visible = True
  loc_1991051:       Set var_BC = Me.LblCap
  loc_1991057:       Call 0.Method_Proc_279_51_19910DC0 (var_96, var_D0)
  loc_199105F:       var_D0.Visible = True
  loc_1991077:       Set var_BC = Me.TxtGt
  loc_199107D:       Call 0.Method_Proc_279_51_19910DC0 (var_96, var_D0)
  loc_1991085:       var_D0.Visible = True
  loc_1991097:       var_96 = (var_96 + 1)
  loc_199109D:       var_94.MoveNext
  loc_19910A2:       GoTo loc_19909A9
  loc_19910A5:     End If
  loc_19910A5:   End If
  loc_19910A8: Else
  loc_19910A8:   Call Proc_279_50_121FB34(var_96)
  loc_19910AD: End If
  loc_19910AD: Call Proc_279_53_E555EC(var_D0)
  loc_19910B7: Set var_88 = Nothing
  loc_19910BF: Set var_8C = Nothing
  loc_19910C7: Set var_90 = Nothing
  loc_19910CF: Set var_94 = Nothing
  loc_19910D2: Exit Sub
  loc_19910D3: ' Referenced from: 198E254
  loc_19910D3: Proc_6_60_E63754()
  loc_19910D8: Exit Sub
End Sub

Public Sub Proc_279_52_F634A0(arg_C) 'F634A0
  'Data Table: 5571BC
  Dim var_98 As TextBox
  Dim var_8C As CommandButton
  Dim arg_2FFE As Integer
  loc_F63376: Set var_8C = Me.Txt
  loc_F6337C: Call 0.Method_Proc_279_52_F634A0C (var_8E, var_86)
  loc_F6338C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F633A2:   Set var_8C = Me.Txt
  loc_F633A8:   Call 0.Method_Proc_279_52_F634A00 (CInt(var_86), var_98)
  loc_F633B0:   var_98.Enabled = arg_C
  loc_F633BF: Next var_92 'Byte
  loc_F633D2: Set var_8C = Me.Txt
  loc_F633D8: Call 0.Method_Proc_279_52_F634A00 (CInt(4), var_98)
  loc_F633E0: var_98.Enabled = False
  loc_F633F9: Set var_8C = Me.Txt
  loc_F633FF: Call 0.Method_Proc_279_52_F634A00 (CInt(5), var_98)
  loc_F63407: var_98.Enabled = False
  loc_F63420: Set var_8C = Me.Txt
  loc_F63426: Call 0.Method_Proc_279_52_F634A00 (CInt(3), var_98)
  loc_F6342E: var_98.Enabled = False
  loc_F63447: Set var_8C = Me.Txt
  loc_F6344D: Call 0.Method_Proc_279_52_F634A00 (CInt(7), var_98)
  loc_F63455: var_98.Enabled = False
  loc_F6346E: Set var_8C = Me.Txt
  loc_F63474: Call 0.Method_Proc_279_52_F634A00 (CInt(&HA), var_98)
  loc_F6347C: var_98.Enabled = False
  loc_F63494: Me.CmdRefreshCategory.Visible = False
  loc_F6349C: Exit Sub
  loc_F6349D: arg_2FFE = 
End Sub

Public Sub Proc_279_53_E555EC
  'Data Table: 5571BC
  loc_E555D0: If (CBool(Me.DGMemName.Visible) = &HFF) Then
  loc_E555E2:   Me.DGMemName.Visible = False
  loc_E555EA: End If
  loc_E555EA: Exit Sub
End Sub

Public Sub Proc_279_54_14E76B0
  'Data Table: 5571BC
  Dim unk_5571D7 As Connection15
  Dim var_E0 As Variant
  Dim var_DC As Variant
  Dim var_CC As Variant
  Dim var_104 As Variant
  Dim var_11C As Double
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_120 As Variant
  Dim var_86 As Integer
  Dim var_9C As Recordset15
  Dim var_15C As Variant
  Dim var_14C As Field20
  Dim var_17C As Variant
  Dim var_1B0 As Variant
  Dim var_1C0 As Variant
  Dim var_1F0 As Variant
  Dim var_130 As Variant
  loc_14E68DC: unk_5571D7.Execute "Select Code,RoundOff from RevMast Where (LogSite_Code='" & MemVar_1F95078 & "' Or LogSite_Code='HO') Order By Name", var_DC, -1
  loc_14E68E7: Set var_9C = var_E0
  loc_14E691C: For var_E4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8A = var_E4 'Integer
  loc_14E6926:   var_CC = CVar(CLng(var_8A)) 'Long
  loc_14E692E:   var_104 = CVar(CLng(9)) 'Long
  loc_14E695A:   var_AC = (var_AC + Val(CStr(Me.FGrid.TextMatrix))))
  loc_14E696A:   var_CC = CVar(CLng(var_8A)) 'Long
  loc_14E6972:   var_104 = CVar(CLng(9)) 'Long
  loc_14E699E:   var_B4 = (var_B4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_14E69AD: Next var_E4 'Integer
  loc_14E69C5: Set var_E0 = Me.LblCap
  loc_14E69CB: Call 0.Method_Proc_279_54_14E76B00 (1, var_120)
  loc_14E69D3: var_120.Tag = MemVar_1F95070 & "TOT"
  loc_14E69EE: Set var_E0 = Me.LblCap
  loc_14E69F4: Call 0.Method_Proc_279_54_14E76B00 (1, var_120)
  loc_14E69FC: var_120.Caption = "Total"
  loc_14E6A3D: Set var_E0 = Me.TxtGt
  loc_14E6A43: Call 0.Method_Proc_279_54_14E76B00 (1, var_120, CStr(Format(var_AC, "0.00")))
  loc_14E6A4B: var_120.Text = 1
  loc_14E6A63: var_86 = 2
  loc_14E6A66: ' Referenced from: 14E7009
  loc_14E6A6C: var_132 = var_9C.EOF
  loc_14E6A75: If Not(var_132) Then
  loc_14E6A7B:   var_A4 = vbNullString
  loc_14E6A81:   var_AC = CDbl(0)
  loc_14E6AA9:   For var_136 = 1 To CInt((CLng(Me.FGCat.Rows) - 1)): var_8A = var_136 'Integer
  loc_14E6AB3:     var_CC = CVar(CLng(var_8A)) 'Long
  loc_14E6ABB:     var_104 = CVar(CLng(6)) 'Long
  loc_14E6AD5:     var_15C = CVar(CStr(Me.FGCat.TextMatrix))) 'String
  loc_14E6AEB:     var_120 = var_9C.Fields
  loc_14E6AFB:     var_130 = var_120.Item("Code").Value
  loc_14E6B0B:     var_17C = CVar(CLng(var_8A)) 'Long
  loc_14E6B1C:     Set var_1B0 = Me.FGCat
  loc_14E6B5F:     If CBool(CVar(CLng(&HA)) And (CDbl(Val(CStr(var_1B0.TextMatrix)))) <> CDbl(0))) Then
  loc_14E6B66:       var_CC = CVar(CLng(var_8A)) 'Long
  loc_14E6B6E:       var_104 = CVar(CLng(&HA)) 'Long
  loc_14E6B96:       var_AC = (var_AC + CDbl(CStr(Me.FGCat.TextMatrix))))
  loc_14E6BA6:       var_CC = CVar(CLng(var_8A)) 'Long
  loc_14E6BAE:       var_104 = CVar(CLng(6)) 'Long
  loc_14E6BC8:       var_98 = CStr(Me.FGCat.TextMatrix))
  loc_14E6BD5:       var_CC = CVar(CLng(var_8A)) 'Long
  loc_14E6BDD:       var_104 = CVar(CLng(7)) 'Long
  loc_14E6BF7:       var_A4 = CStr(Me.FGCat.TextMatrix))
  loc_14E6C00:     End If
  loc_14E6C03:   Next var_136 'Integer
  loc_14E6C10:   If (var_A4 <> vbNullString) Then
  loc_14E6C1D:     Set var_E0 = Me.LblDummy
  loc_14E6C23:     Call 0.Method_Proc_279_54_14E76B08 (var_132)
  loc_14E6C2F:     If (var_86 > var_132) Then
  loc_14E6C3C:       Set var_E0 = Me.LblDummy
  loc_14E6C42:       Call 0.Method_Proc_279_54_14E76B00 (var_86)
  loc_14E6C53:       Me.LblDummy.Load var_120
  loc_14E6C6B:       Set var_E0 = Me.LblDummy
  loc_14E6C71:       Call 0.Method_Proc_279_54_14E76B00 (var_86, var_120)
  loc_14E6C79:       var_120.Visible = False
  loc_14E6C85:     End If
  loc_14E6C8F:     Set var_E0 = Me.LblCap
  loc_14E6C95:     Call 0.Method_Proc_279_54_14E76B08 (var_132, var_86)
  loc_14E6CA1:     If (var_120 > var_132) Then
  loc_14E6CAE:       Set var_E0 = Me.LblCap
  loc_14E6CB4:       Call 0.Method_Proc_279_54_14E76B00 (var_86)
  loc_14E6CC5:       Me.LblCap.Load var_120
  loc_14E6CDE:       Set var_14C = Me.LblCap
  loc_14E6CE4:       Call 0.Method_Proc_279_54_14E76B00 (var_86, var_1B0)
  loc_14E6D01:       Set var_E0 = Me.LblCap
  loc_14E6D07:       Call 0.Method_Proc_279_54_14E76B00 ((var_86 - 1), var_120)
  loc_14E6D2A:       Set var_1EC = Me.LblCap
  loc_14E6D30:       Call 0.Method_Proc_279_54_14E76B00 (var_86, var_1F0)
  loc_14E6D38:       var_1F0.Top = ((var_120.Top + var_1B0.Height) + CDbl(&HF))
  loc_14E6D4C:     End If
  loc_14E6D56:     Set var_E0 = Me.TxtGt
  loc_14E6D5C:     Call 0.Method_Proc_279_54_14E76B08 (var_132, var_86)
  loc_14E6D68:     If (var_120 > var_132) Then
  loc_14E6D75:       Set var_E0 = Me.TxtGt
  loc_14E6D7B:       Call 0.Method_Proc_279_54_14E76B00 (var_86)
  loc_14E6D8C:       Me.TxtGt.Load var_120
  loc_14E6DA5:       Set var_14C = Me.TxtGt
  loc_14E6DAB:       Call 0.Method_Proc_279_54_14E76B00 (var_86, var_1B0)
  loc_14E6DC8:       Set var_E0 = Me.TxtGt
  loc_14E6DCE:       Call 0.Method_Proc_279_54_14E76B00 ((var_86 - 1), var_120)
  loc_14E6DF1:       Set var_1EC = Me.TxtGt
  loc_14E6DF7:       Call 0.Method_Proc_279_54_14E76B00 (var_86, var_1F0)
  loc_14E6DFF:       var_1F0.Top = ((var_120.Top + var_1B0.Height) + CDbl(&HF))
  loc_14E6E13:     End If
  loc_14E6E20:     Set var_E0 = Me.LblCap
  loc_14E6E26:     Call 0.Method_Proc_279_54_14E76B00 (var_86, var_120)
  loc_14E6E2E:     var_120.Tag = var_98
  loc_14E6E65:     Set var_E0 = Me.LblCap
  loc_14E6E6B:     Call 0.Method_Proc_279_54_14E76B00 (var_86, var_120)
  loc_14E6E73:     var_120.Caption = CStr(StrConv(var_A4, 3, 0))
  loc_14E6E9C:     var_120 = var_9C.Fields.Item("RoundOff")
  loc_14E6ECA:     Proc_6_142_14A62A0(var_AC, CByte(0), "S")
  loc_14E6ECF:     var_11C = 2
  loc_14E6EFF:     var_1C0 = (CVar(var_AC) + IIf((Proc_6_38_E69628(CVar(var_120)) = "Yes"), CVar(var_11C), 0))
  loc_14E6F04:     var_AC = CSng(var_1B0.TextMatrix))
  loc_14E6F29:     var_B4 = (var_B4 + var_AC)
  loc_14E6F62:     Set var_E0 = Me.TxtGt
  loc_14E6F68:     Call 0.Method_Proc_279_54_14E76B00 (var_86, var_120, CStr(Format(var_AC, "0.00")), 1, 1)
  loc_14E6F70:     var_120.Text = var_B4
  loc_14E6F92:     Set var_E0 = Me.LblDummy
  loc_14E6F98:     Call 0.Method_Proc_279_54_14E76B00 (var_86, var_120, 0)
  loc_14E6FA0:     var_120.Visible = var_AC
  loc_14E6FB8:     Set var_E0 = Me.LblCap
  loc_14E6FBE:     Call 0.Method_Proc_279_54_14E76B00 (var_86, var_120, &HFF)
  loc_14E6FC6:     var_120.Visible = var_11C
  loc_14E6FDE:     Set var_E0 = Me.TxtGt
  loc_14E6FE4:     Call 0.Method_Proc_279_54_14E76B00 (var_86, var_120)
  loc_14E6FEC:     var_120.Visible = True
  loc_14E6FFE:     var_86 = (var_86 + 1)
  loc_14E7001:   End If
  loc_14E7004:   var_9C.MoveNext
  loc_14E7009:   GoTo loc_14E6A66
  loc_14E700C: End If
  loc_14E7016: Set var_E0 = Me.LblDummy
  loc_14E701C: Call 0.Method_Proc_279_54_14E76B08 (var_132, var_86)
  loc_14E7028: If (var_86 > var_132) Then
  loc_14E7035:   Set var_E0 = Me.LblDummy
  loc_14E703B:   Call 0.Method_Proc_279_54_14E76B00 (var_86, var_120)
  loc_14E704C:   Me.LblDummy.Load var_120
  loc_14E7064:   Set var_E0 = Me.LblDummy
  loc_14E706A:   Call 0.Method_Proc_279_54_14E76B00 (var_86, var_120)
  loc_14E7072:   var_120.Visible = False
  loc_14E707E: End If
  loc_14E7088: Set var_E0 = Me.LblCap
  loc_14E708E: Call 0.Method_Proc_279_54_14E76B08 (var_132, var_86)
  loc_14E709A: If (var_120 > var_132) Then
  loc_14E70A7:   Set var_E0 = Me.LblCap
  loc_14E70AD:   Call 0.Method_Proc_279_54_14E76B00 (var_86)
  loc_14E70BE:   Me.LblCap.Load var_120
  loc_14E70D7:   Set var_14C = Me.LblCap
  loc_14E70DD:   Call 0.Method_Proc_279_54_14E76B00 (var_86, var_1B0)
  loc_14E70FA:   Set var_E0 = Me.LblCap
  loc_14E7100:   Call 0.Method_Proc_279_54_14E76B00 ((var_86 - 1), var_120)
  loc_14E7123:   Set var_1EC = Me.LblCap
  loc_14E7129:   Call 0.Method_Proc_279_54_14E76B00 (var_86, var_1F0)
  loc_14E7131:   var_1F0.Top = ((var_120.Top + var_1B0.Height) + CDbl(&HF))
  loc_14E7145: End If
  loc_14E714F: Set var_E0 = Me.TxtGt
  loc_14E7155: Call 0.Method_Proc_279_54_14E76B08 (var_132, var_86)
  loc_14E7161: If (var_120 > var_132) Then
  loc_14E716E:   Set var_E0 = Me.TxtGt
  loc_14E7174:   Call 0.Method_Proc_279_54_14E76B00 (var_86)
  loc_14E7185:   Me.TxtGt.Load var_120
  loc_14E719E:   Set var_14C = Me.TxtGt
  loc_14E71A4:   Call 0.Method_Proc_279_54_14E76B00 (var_86, var_1B0)
  loc_14E71C1:   Set var_E0 = Me.TxtGt
  loc_14E71C7:   Call 0.Method_Proc_279_54_14E76B00 ((var_86 - 1), var_120)
  loc_14E71EA:   Set var_1EC = Me.TxtGt
  loc_14E71F0:   Call 0.Method_Proc_279_54_14E76B00 (var_86, var_1F0)
  loc_14E71F8:   var_1F0.Top = ((var_120.Top + var_1B0.Height) + CDbl(&HF))
  loc_14E720C: End If
  loc_14E7220: Set var_E0 = Me.LblCap
  loc_14E7226: Call 0.Method_Proc_279_54_14E76B00 (var_86, var_120)
  loc_14E722E: var_120.Tag = MemVar_1F95070 & "ROFF"
  loc_14E724A: Set var_E0 = Me.LblCap
  loc_14E7250: Call 0.Method_Proc_279_54_14E76B00 (var_86, var_120)
  loc_14E7258: var_120.Caption = "Round Off"
  loc_14E727E: Proc_6_142_14A62A0(var_B4, CByte(0), "S")
  loc_14E7283: var_11C = 2
  loc_14E72BB: Set var_E0 = Me.TxtGt
  loc_14E72C1: Call 0.Method_Proc_279_54_14E76B00 (var_86, var_120, CStr(Format(CVar(var_11C), "0.00")), 1)
  loc_14E72C9: var_120.Text = 1
  loc_14E72F1: Set var_E0 = Me.LblDummy
  loc_14E72F7: Call 0.Method_Proc_279_54_14E76B00 (var_86, var_120, 0)
  loc_14E72FF: var_120.Visible = var_11C
  loc_14E7317: Set var_E0 = Me.LblCap
  loc_14E731D: Call 0.Method_Proc_279_54_14E76B00 (var_86, var_120)
  loc_14E7325: var_120.Visible = True
  loc_14E733D: Set var_E0 = Me.TxtGt
  loc_14E7343: Call 0.Method_Proc_279_54_14E76B00 (var_86, var_120)
  loc_14E734B: var_120.Visible = True
  loc_14E735D: var_86 = (var_86 + 1)
  loc_14E736A: Set var_E0 = Me.LblDummy
  loc_14E7370: Call 0.Method_Proc_279_54_14E76B08 (var_132, var_86)
  loc_14E737C: If (var_86 > var_132) Then
  loc_14E7389:   Set var_E0 = Me.LblDummy
  loc_14E738F:   Call 0.Method_Proc_279_54_14E76B00 (var_86, var_120)
  loc_14E73A0:   Me.LblDummy.Load var_120
  loc_14E73B8:   Set var_E0 = Me.LblDummy
  loc_14E73BE:   Call 0.Method_Proc_279_54_14E76B00 (var_86, var_120)
  loc_14E73C6:   var_120.Visible = False
  loc_14E73D2: End If
  loc_14E73DC: Set var_E0 = Me.LblCap
  loc_14E73E2: Call 0.Method_Proc_279_54_14E76B08 (var_132, var_86)
  loc_14E73EE: If (var_120 > var_132) Then
  loc_14E73FB:   Set var_E0 = Me.LblCap
  loc_14E7401:   Call 0.Method_Proc_279_54_14E76B00 (var_86)
  loc_14E7412:   Me.LblCap.Load var_120
  loc_14E742B:   Set var_14C = Me.LblCap
  loc_14E7431:   Call 0.Method_Proc_279_54_14E76B00 (var_86, var_1B0)
  loc_14E744E:   Set var_E0 = Me.LblCap
  loc_14E7454:   Call 0.Method_Proc_279_54_14E76B00 ((var_86 - 1), var_120)
  loc_14E7477:   Set var_1EC = Me.LblCap
  loc_14E747D:   Call 0.Method_Proc_279_54_14E76B00 (var_86, var_1F0)
  loc_14E7485:   var_1F0.Top = ((var_120.Top + var_1B0.Height) + CDbl(&HF))
  loc_14E7499: End If
  loc_14E74A3: Set var_E0 = Me.TxtGt
  loc_14E74A9: Call 0.Method_Proc_279_54_14E76B08 (var_132, var_86)
  loc_14E74B5: If (var_120 > var_132) Then
  loc_14E74C2:   Set var_E0 = Me.TxtGt
  loc_14E74C8:   Call 0.Method_Proc_279_54_14E76B00 (var_86)
  loc_14E74D9:   Me.TxtGt.Load var_120
  loc_14E74F2:   Set var_14C = Me.TxtGt
  loc_14E74F8:   Call 0.Method_Proc_279_54_14E76B00 (var_86, var_1B0)
  loc_14E7515:   Set var_E0 = Me.TxtGt
  loc_14E751B:   Call 0.Method_Proc_279_54_14E76B00 ((var_86 - 1), var_120)
  loc_14E753E:   Set var_1EC = Me.TxtGt
  loc_14E7544:   Call 0.Method_Proc_279_54_14E76B00 (var_86, var_1F0)
  loc_14E754C:   var_1F0.Top = ((var_120.Top + var_1B0.Height) + CDbl(&HF))
  loc_14E7560: End If
  loc_14E7574: Set var_E0 = Me.LblCap
  loc_14E757A: Call 0.Method_Proc_279_54_14E76B00 (var_86, var_120)
  loc_14E7582: var_120.Tag = MemVar_1F95070 & "NET"
  loc_14E759E: Set var_E0 = Me.LblCap
  loc_14E75A4: Call 0.Method_Proc_279_54_14E76B00 (var_86, var_120)
  loc_14E75AC: var_120.Caption = "Net Amount"
  loc_14E75D2: Proc_6_142_14A62A0(var_B4, CByte(0), "S")
  loc_14E75D7: var_11C = 2
  loc_14E75F6: var_DC = CVar((var_B4 + var_11C)) 'Double
  loc_14E7613: Set var_E0 = Me.TxtGt
  loc_14E7619: Call 0.Method_Proc_279_54_14E76B00 (var_86, var_120, CStr(Format(CVar(var_11C), "0.00")), 1)
  loc_14E7621: var_120.Text = 1
  loc_14E7649: Set var_E0 = Me.LblDummy
  loc_14E764F: Call 0.Method_Proc_279_54_14E76B00 (var_86, var_120, 0)
  loc_14E7657: var_120.Visible = var_11C
  loc_14E766F: Set var_E0 = Me.LblCap
  loc_14E7675: Call 0.Method_Proc_279_54_14E76B00 (var_86, var_120)
  loc_14E767D: var_120.Visible = True
  loc_14E7695: Set var_E0 = Me.TxtGt
  loc_14E769B: Call 0.Method_Proc_279_54_14E76B00 (var_86, var_120)
  loc_14E76A3: var_120.Visible = True
  loc_14E76AF: Exit Sub
End Sub

Public Sub Proc_279_55_1843ABC(arg_C, arg_10, arg_14) '1843ABC
  'Data Table: 5571BC
  Dim var_E4 As String
  Dim unk_5571D7 As Connection15
  Dim var_DA As Integer
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_D2 As Integer
  Dim var_F8 As Variant
  Dim var_10C As Variant
  Dim var_108 As Variant
  Dim var_140 As Variant
  Dim var_170 As Variant
  Dim var_130 As Variant
  Dim var_D0 As Double
  Dim var_194 As Double
  Dim var_1A4 As Variant
  Dim var_150 As Variant
  Dim var_1C4 As Variant
  Dim var_204 As Variant
  Dim var_1B4 As Variant
  Dim var_264 As Variant
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_274 As Variant
  Dim var_12C As MSHFlexGrid
  Dim var_180 As Double
  Dim var_9C As Double
  loc_184162C: var_E4 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_184163C: unk_5571D7.Execute var_E4 & "'", var_108, -1
  loc_1841647: Set var_8C = var_10C
  loc_18416D7: If (((((((MemVar_1F95078 & "TPRB" = arg_C) Or (MemVar_1F95078 & "TPR1" = arg_C)) Or (MemVar_1F95078 & "TPR2" = arg_C)) Or (MemVar_1F95078 & "TPR3" = arg_C)) Or (MemVar_1F95078 & "TPR4" = arg_C)) Or (MemVar_1F95078 & "TMBA" = arg_C)) Or (MemVar_1F95078 & "TMPA" = arg_C)) Then
  loc_18416DC:   var_DA = &HFF
  loc_18416E2: Else
  loc_18416E4:   var_DA = 0
  loc_18416E7: End If
  loc_18416EA: var_94 = arg_14
  loc_18416EF: var_86 = 1
  loc_18416F5: var_A8 = var_94
  loc_18416FB: var_B0 = var_94
  loc_1841701: var_B8 = CDbl(0)
  loc_1841718: If (var_8C.RecordCount > 0) Then
  loc_184171B:   ' Referenced from: 1843A8E
  loc_184172A:   If Not(var_8C.EOF) Then
  loc_1841731:     Set var_12C = Me.FGCat
  loc_1841748:     If (var_8C.RecordCount > 0) Then
  loc_1841751:       var_D2 = (var_D2 + 1)
  loc_184178A:       var_160 = Trim(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Nature")), var_D2, var_B8, var_B0, var_A8))) 'Variant
  loc_18417A3:       If (var_160 = "On Base Amt") Then
  loc_18417E6:         If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_1841828:           var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_1C)) / CDbl(&H64))
  loc_184183B:         Else
  loc_184185D:           var_140 = var_8C.Fields.Item("Rate").Value
  loc_184189B:           Proc_6_142_14A62A0(((Val(CStr(var_140)) * (var_A8 + arg_1C)) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_140)), var_D0)
  loc_18418A0:           var_194 = var_86
  loc_18418CE:           var_E4 = CStr(var_8C.Fields.Item("Rate").Value)
  loc_18418E6:           var_D0 = (((Val(var_E4) * (var_A8 + arg_1C)) / CDbl(&H64)) + var_194)
  loc_1841904:         End If
  loc_184192A:         Proc_6_39_E7D3A0(var_140, CVar(var_8C.Fields.Item("Rate")), var_D0, var_194)
  loc_1841944:         If (var_140 > 0) Then
  loc_184194E:           If (var_D0 <> CDbl(0)) Then
  loc_1841951:             var_F8 = vbNullString
  loc_184197B:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841983:             var_1A4 = CVar(CLng(0)) 'Long
  loc_184198D:             var_140 = CVar(CStr(arg_10)) 'String
  loc_1841994:             LateIdCallSt
  loc_18419BF:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18419C7:             var_1A4 = CVar(CLng(1)) 'Long
  loc_18419D1:             var_140 = CVar(CStr(var_86)) 'String
  loc_18419D8:             LateIdCallSt
  loc_18419F0:             If (var_DA = 0) Then
  loc_1841A0C:               var_1C4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841A47:               var_204 = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(1)), CVar(CLng(arg_10)), CVar(CLng(2)), var_1C4, var_12C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(1)))) 'String
  loc_1841A4E:               LateIdCallSt
  loc_1841A81:               var_1C4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841ABC:               var_204 = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(2)), CVar(CLng(arg_10)), CVar(CLng(3)), var_1C4, var_12C, var_204)) 'String
  loc_1841AC3:               LateIdCallSt
  loc_1841AF6:               var_1C4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841B31:               var_204 = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(3)), CVar(CLng(arg_10)), CVar(CLng(4)), var_1C4, var_12C, var_204)) 'String
  loc_1841B38:               LateIdCallSt
  loc_1841B56:               Set var_130 = Me.FGCat
  loc_1841B6B:               var_1C4 = CVar((CLng(var_130.Rows) - 1)) 'Long
  loc_1841BA6:               var_204 = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(arg_10)), CVar(CLng(5)), var_1C4, var_12C, var_204)) 'String
  loc_1841BAD:               LateIdCallSt
  loc_1841BCA:             Else
  loc_1841BE3:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841BFE:               Set var_10C = Me.Txt
  loc_1841C04:               Call 0.Method_Proc_279_55_1843ABC0 (CInt(4), var_130, var_E4, CVar(CLng(2)), CVar(CLng(arg_10)), var_12C, var_204)
  loc_1841C0C:               var_F8 = var_130.Text
  loc_1841C1B:               LateIdCallSt
  loc_1841C4C:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841C67:               Set var_10C = Me.Txt
  loc_1841C6D:               Call 0.Method_Proc_279_55_1843ABC0 (CInt(5), var_130, var_E4, CVar(CLng(3)), var_F8, var_12C, CVar(var_E4))
  loc_1841C75:               var_12C = var_130.Text
  loc_1841C7D:               var_140 = CVar(var_E4) 'String
  loc_1841C84:               LateIdCallSt
  loc_1841CB5:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841CD0:               Set var_10C = Me.Txt
  loc_1841CD6:               Call 0.Method_Proc_279_55_1843ABC0 (CInt(6), var_130, var_E4, CVar(CLng(4)), var_F8, var_12C)
  loc_1841CDE:               var_140 = var_130.Text
  loc_1841CE6:               var_140 = CVar(var_E4) 'String
  loc_1841CED:               LateIdCallSt
  loc_1841D1E:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841D26:               var_1A4 = CVar(CLng(5)) 'Long
  loc_1841D35:               LateIdCallSt
  loc_1841D43:             End If
  loc_1841D5C:             var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841D64:             var_1B4 = CVar(CLng(6)) 'Long
  loc_1841D94:             var_150 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1841D9B:             LateIdCallSt
  loc_1841DCE:             var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841DD6:             var_1B4 = CVar(CLng(7)) 'Long
  loc_1841E06:             var_150 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1841E0D:             LateIdCallSt
  loc_1841E40:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841E48:             var_1A4 = CVar(CLng(8)) 'Long
  loc_1841E56:             var_140 = CVar(CStr((var_A8 + arg_1C))) 'String
  loc_1841E5D:             LateIdCallSt
  loc_1841E88:             var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841E90:             var_1B4 = CVar(CLng(9)) 'Long
  loc_1841EC0:             var_150 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1841EC7:             LateIdCallSt
  loc_1841F25:             var_1D4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841F2D:             var_1F4 = CVar(CLng(&HA)) 'Long
  loc_1841F71:             var_274 = CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2))))) 'String
  loc_1841F78:             LateIdCallSt
  loc_1841F9C:           End If
  loc_1841FB5:           var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841FBD:           var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1841FE2:           var_9C = (var_9C + Val(CStr(var_12C.TextMatrix))))
  loc_184200B:           var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842013:           var_1A4 = CVar(CLng(&HA)) 'Long
  loc_184202E:           var_180 = Val(CStr(var_12C.TextMatrix)))
  loc_1842038:           var_94 = (var_94 + var_180)
  loc_184204F:           var_B0 = (var_B0 + var_D0)
  loc_1842055:           var_B8 = var_D0
  loc_1842058:         End If
  loc_184205B:       Else
  loc_1842066:         If (var_160 = "On Running Total") Then
  loc_18420A9:           If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_18420E7:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_18420FA:           Else
  loc_184211C:             var_140 = var_8C.Fields.Item("Rate").Value
  loc_1842156:             Proc_6_142_14A62A0(((Val(CStr(var_140)) * var_B0) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_140)), var_D0, var_B8, var_B0)
  loc_184215B:             var_194 = var_94
  loc_1842189:             var_E4 = CStr(var_8C.Fields.Item("Rate").Value)
  loc_184219D:             var_D0 = (((Val(var_E4) * var_B0) / CDbl(&H64)) + var_194)
  loc_18421BB:           End If
  loc_18421E1:           Proc_6_39_E7D3A0(var_140, CVar(var_8C.Fields.Item("Rate")), var_D0, var_194, var_180)
  loc_18421FB:           If (var_140 > 0) Then
  loc_1842205:             If (var_D0 <> CDbl(0)) Then
  loc_1842208:               var_F8 = vbNullString
  loc_1842232:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184223A:               var_1A4 = CVar(CLng(0)) 'Long
  loc_1842244:               var_140 = CVar(CStr(arg_10)) 'String
  loc_184224B:               LateIdCallSt
  loc_1842276:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184227E:               var_1A4 = CVar(CLng(1)) 'Long
  loc_1842288:               var_140 = CVar(CStr(var_86)) 'String
  loc_184228F:               LateIdCallSt
  loc_18422A7:               If (var_DA = 0) Then
  loc_18422C3:                 var_1C4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18422FE:                 var_204 = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(1)), CVar(CLng(arg_10)), CVar(CLng(2)), var_D0, var_12C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(1)))) 'String
  loc_1842305:                 LateIdCallSt
  loc_1842338:                 var_1C4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842373:                 var_204 = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(2)), CVar(CLng(arg_10)), CVar(CLng(3)), var_D0, var_12C, var_204)) 'String
  loc_184237A:                 LateIdCallSt
  loc_18423AD:                 var_1C4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18423E8:                 var_204 = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(3)), CVar(CLng(arg_10)), CVar(CLng(4)), var_D0, var_12C, var_204)) 'String
  loc_18423EF:                 LateIdCallSt
  loc_184240D:                 Set var_130 = Me.FGCat
  loc_1842422:                 var_1C4 = CVar((CLng(var_130.Rows) - 1)) 'Long
  loc_184245D:                 var_204 = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(arg_10)), CVar(CLng(5)), var_D0, var_12C, var_204)) 'String
  loc_1842464:                 LateIdCallSt
  loc_1842481:               Else
  loc_184249A:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18424B5:                 Set var_10C = Me.Txt
  loc_18424BB:                 Call 0.Method_Proc_279_55_1843ABC0 (CInt(4), var_130, var_E4, CVar(CLng(2)), CVar(CLng(arg_10)), var_12C, var_204)
  loc_18424C3:                 var_F8 = var_130.Text
  loc_18424D2:                 LateIdCallSt
  loc_1842503:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184251E:                 Set var_10C = Me.Txt
  loc_1842524:                 Call 0.Method_Proc_279_55_1843ABC0 (CInt(5), var_130, var_E4, CVar(CLng(3)), var_F8, var_12C, CVar(var_E4))
  loc_184252C:                 var_12C = var_130.Text
  loc_1842534:                 var_140 = CVar(var_E4) 'String
  loc_184253B:                 LateIdCallSt
  loc_184256C:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842587:                 Set var_10C = Me.Txt
  loc_184258D:                 Call 0.Method_Proc_279_55_1843ABC0 (CInt(6), var_130, var_E4, CVar(CLng(4)), var_F8, var_12C)
  loc_1842595:                 var_140 = var_130.Text
  loc_184259D:                 var_140 = CVar(var_E4) 'String
  loc_18425A4:                 LateIdCallSt
  loc_18425D5:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18425DD:                 var_1A4 = CVar(CLng(5)) 'Long
  loc_18425EC:                 LateIdCallSt
  loc_18425FA:               End If
  loc_1842613:               var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184261B:               var_1B4 = CVar(CLng(6)) 'Long
  loc_184264B:               var_150 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1842652:               LateIdCallSt
  loc_1842685:               var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184268D:               var_1B4 = CVar(CLng(7)) 'Long
  loc_18426BD:               var_150 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_18426C4:               LateIdCallSt
  loc_18426F7:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18426FF:               var_1A4 = CVar(CLng(8)) 'Long
  loc_1842709:               var_140 = CVar(CStr(var_B0)) 'String
  loc_1842710:               LateIdCallSt
  loc_184273B:               var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842743:               var_1B4 = CVar(CLng(9)) 'Long
  loc_1842773:               var_150 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_184277A:               LateIdCallSt
  loc_18427D8:               var_1D4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18427E0:               var_1F4 = CVar(CLng(&HA)) 'Long
  loc_1842824:               var_274 = CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2))))) 'String
  loc_184282B:               LateIdCallSt
  loc_184284F:             End If
  loc_1842868:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842870:             var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1842895:             var_9C = (var_9C + Val(CStr(var_12C.TextMatrix))))
  loc_18428BE:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18428C6:             var_1A4 = CVar(CLng(&HA)) 'Long
  loc_18428EB:             var_94 = (var_94 + Val(CStr(var_12C.TextMatrix))))
  loc_1842902:             var_B0 = (var_B0 + var_D0)
  loc_1842908:             var_B8 = var_D0
  loc_184290B:           End If
  loc_184290E:         Else
  loc_1842919:           If (var_160 = "On Prev. Tax Amt") Then
  loc_184295C:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_184299A:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_18429AD:             Else
  loc_1842A09:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1842A3C:               var_E4 = CStr(var_8C.Fields.Item("Rate").Value)
  loc_1842A50:               var_D0 = (((Val(var_E4) * var_B8) / CDbl(&H64)) + var_94)
  loc_1842A6E:             End If
  loc_1842A75:             If (var_D0 <> CDbl(0)) Then
  loc_1842A78:               var_F8 = vbNullString
  loc_1842AA2:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842AAA:               var_1A4 = CVar(CLng(0)) 'Long
  loc_1842AB4:               var_140 = CVar(CStr(arg_10)) 'String
  loc_1842ABB:               LateIdCallSt
  loc_1842AE6:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842AEE:               var_1A4 = CVar(CLng(1)) 'Long
  loc_1842AF8:               var_140 = CVar(CStr(var_86)) 'String
  loc_1842AFF:               LateIdCallSt
  loc_1842B17:               If (var_DA = 0) Then
  loc_1842B33:                 var_1C4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842B6E:                 var_204 = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(1)), CVar(CLng(arg_10)), CVar(CLng(2)), var_D0, var_12C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(1)))) 'String
  loc_1842B75:                 LateIdCallSt
  loc_1842BA8:                 var_1C4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842BE3:                 var_204 = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(2)), CVar(CLng(arg_10)), CVar(CLng(3)), var_D0, var_12C, var_204)) 'String
  loc_1842BEA:                 LateIdCallSt
  loc_1842C1D:                 var_1C4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842C58:                 var_204 = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(3)), CVar(CLng(arg_10)), CVar(CLng(4)), var_D0, var_12C, var_204)) 'String
  loc_1842C5F:                 LateIdCallSt
  loc_1842C7D:                 Set var_130 = Me.FGCat
  loc_1842C92:                 var_1C4 = CVar((CLng(var_130.Rows) - 1)) 'Long
  loc_1842CCD:                 var_204 = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(arg_10)), CVar(CLng(5)), var_D0, var_12C, var_204)) 'String
  loc_1842CD4:                 LateIdCallSt
  loc_1842CF1:               Else
  loc_1842D0A:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842D25:                 Set var_10C = Me.Txt
  loc_1842D2B:                 Call 0.Method_Proc_279_55_1843ABC0 (CInt(4), var_130, var_E4, CVar(CLng(2)), CVar(CLng(arg_10)), var_12C, var_204)
  loc_1842D33:                 var_F8 = var_130.Text
  loc_1842D42:                 LateIdCallSt
  loc_1842D73:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842D8E:                 Set var_10C = Me.Txt
  loc_1842D94:                 Call 0.Method_Proc_279_55_1843ABC0 (CInt(5), var_130, var_E4, CVar(CLng(3)), var_F8, var_12C, CVar(var_E4))
  loc_1842D9C:                 var_12C = var_130.Text
  loc_1842DA4:                 var_140 = CVar(var_E4) 'String
  loc_1842DAB:                 LateIdCallSt
  loc_1842DDC:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842DF7:                 Set var_10C = Me.Txt
  loc_1842DFD:                 Call 0.Method_Proc_279_55_1843ABC0 (CInt(6), var_130, var_E4, CVar(CLng(4)), var_F8, var_12C)
  loc_1842E05:                 var_140 = var_130.Text
  loc_1842E0D:                 var_140 = CVar(var_E4) 'String
  loc_1842E14:                 LateIdCallSt
  loc_1842E45:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842E4D:                 var_1A4 = CVar(CLng(5)) 'Long
  loc_1842E5C:                 LateIdCallSt
  loc_1842E6A:               End If
  loc_1842E83:               var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842E8B:               var_1B4 = CVar(CLng(6)) 'Long
  loc_1842EBB:               var_150 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1842EC2:               LateIdCallSt
  loc_1842EF5:               var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842EFD:               var_1B4 = CVar(CLng(7)) 'Long
  loc_1842F2D:               var_150 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1842F34:               LateIdCallSt
  loc_1842F67:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842F6F:               var_1A4 = CVar(CLng(8)) 'Long
  loc_1842F79:               var_140 = CVar(CStr(var_B8)) 'String
  loc_1842F80:               LateIdCallSt
  loc_1842FAB:               var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842FB3:               var_1B4 = CVar(CLng(9)) 'Long
  loc_1842FE3:               var_150 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1842FEA:               LateIdCallSt
  loc_1843044:               var_1D4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184304C:               var_1F4 = CVar(CLng(&HA)) 'Long
  loc_1843090:               var_264 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_1843097:               LateIdCallSt
  loc_18430BB:             End If
  loc_18430D4:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18430DC:             var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1843101:             var_9C = (var_9C + Val(CStr(var_12C.TextMatrix))))
  loc_184312A:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1843132:             var_1A4 = CVar(CLng(&HA)) 'Long
  loc_184314D:             var_180 = Val(CStr(var_12C.TextMatrix)))
  loc_1843157:             var_94 = (var_94 + var_180)
  loc_184316E:             var_B0 = (var_B0 + var_D0)
  loc_1843174:             var_B8 = var_D0
  loc_184317A:           Else
  loc_18431BA:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_18431F8:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_184320B:             Else
  loc_184322D:               var_140 = var_8C.Fields.Item("Rate").Value
  loc_1843267:               Proc_6_142_14A62A0(((Val(CStr(var_140)) * var_A8) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_140)), var_D0, var_B8, var_B0)
  loc_184326C:               var_194 = var_94
  loc_184329A:               var_E4 = CStr(var_8C.Fields.Item("Rate").Value)
  loc_18432AE:               var_D0 = (((Val(var_E4) * var_A8) / CDbl(&H64)) + var_194)
  loc_18432CC:             End If
  loc_18432F2:             Proc_6_39_E7D3A0(var_140, CVar(var_8C.Fields.Item("Rate")), var_D0, var_194, var_180)
  loc_184330C:             If (var_140 > 0) Then
  loc_1843316:               If (var_D0 <> CDbl(0)) Then
  loc_1843319:                 var_F8 = vbNullString
  loc_1843343:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184334B:                 var_1A4 = CVar(CLng(0)) 'Long
  loc_1843355:                 var_140 = CVar(CStr(arg_10)) 'String
  loc_184335C:                 LateIdCallSt
  loc_1843387:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184338F:                 var_1A4 = CVar(CLng(1)) 'Long
  loc_1843399:                 var_140 = CVar(CStr(var_86)) 'String
  loc_18433A0:                 LateIdCallSt
  loc_18433B8:                 If (var_DA = 0) Then
  loc_18433D4:                   var_1C4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184340F:                   var_204 = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(1)), CVar(CLng(arg_10)), CVar(CLng(2)), var_D0, var_12C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(1)))) 'String
  loc_1843416:                   LateIdCallSt
  loc_1843449:                   var_1C4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1843484:                   var_204 = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(2)), CVar(CLng(arg_10)), CVar(CLng(3)), var_D0, var_12C, var_204)) 'String
  loc_184348B:                   LateIdCallSt
  loc_18434BE:                   var_1C4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18434F9:                   var_204 = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(3)), CVar(CLng(arg_10)), CVar(CLng(4)), var_D0, var_12C, var_204)) 'String
  loc_1843500:                   LateIdCallSt
  loc_184351E:                   Set var_130 = Me.FGCat
  loc_1843533:                   var_1C4 = CVar((CLng(var_130.Rows) - 1)) 'Long
  loc_184356E:                   var_204 = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(arg_10)), CVar(CLng(5)), var_D0, var_12C, var_204)) 'String
  loc_1843575:                   LateIdCallSt
  loc_1843592:                 Else
  loc_18435AB:                   var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18435C6:                   Set var_10C = Me.Txt
  loc_18435CC:                   Call 0.Method_Proc_279_55_1843ABC0 (CInt(4), var_130, var_E4, CVar(CLng(2)), CVar(CLng(arg_10)), var_12C, var_204)
  loc_18435D4:                   var_F8 = var_130.Text
  loc_18435E3:                   LateIdCallSt
  loc_1843614:                   var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184362F:                   Set var_10C = Me.Txt
  loc_1843635:                   Call 0.Method_Proc_279_55_1843ABC0 (CInt(5), var_130, var_E4, CVar(CLng(3)), var_F8, var_12C, CVar(var_E4))
  loc_184363D:                   var_12C = var_130.Text
  loc_1843645:                   var_140 = CVar(var_E4) 'String
  loc_184364C:                   LateIdCallSt
  loc_184367D:                   var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1843698:                   Set var_10C = Me.Txt
  loc_184369E:                   Call 0.Method_Proc_279_55_1843ABC0 (CInt(6), var_130, var_E4, CVar(CLng(4)), var_F8, var_12C)
  loc_18436A6:                   var_140 = var_130.Text
  loc_18436AE:                   var_140 = CVar(var_E4) 'String
  loc_18436B5:                   LateIdCallSt
  loc_18436E6:                   var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18436EE:                   var_1A4 = CVar(CLng(5)) 'Long
  loc_18436FD:                   LateIdCallSt
  loc_184370B:                 End If
  loc_1843724:                 var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184372C:                 var_1B4 = CVar(CLng(6)) 'Long
  loc_184375C:                 var_150 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1843763:                 LateIdCallSt
  loc_1843796:                 var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184379E:                 var_1B4 = CVar(CLng(7)) 'Long
  loc_18437CE:                 var_150 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_18437D5:                 LateIdCallSt
  loc_1843808:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1843810:                 var_1A4 = CVar(CLng(8)) 'Long
  loc_184381A:                 var_140 = CVar(CStr(var_A8)) 'String
  loc_1843821:                 LateIdCallSt
  loc_184384C:                 var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1843854:                 var_1B4 = CVar(CLng(9)) 'Long
  loc_1843884:                 var_150 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_184388B:                 LateIdCallSt
  loc_18438E9:                 var_1D4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18438F1:                 var_1F4 = CVar(CLng(&HA)) 'Long
  loc_1843935:                 var_274 = CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2))))) 'String
  loc_184393C:                 LateIdCallSt
  loc_1843960:               End If
  loc_1843979:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1843981:               var_1A4 = CVar(CLng(&HA)) 'Long
  loc_18439A6:               var_9C = (var_9C + Val(CStr(var_12C.TextMatrix))))
  loc_18439CF:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18439D7:               var_1A4 = CVar(CLng(&HA)) 'Long
  loc_18439FC:               var_94 = (var_94 + Val(CStr(var_12C.TextMatrix))))
  loc_1843A13:               var_B0 = (var_B0 + var_D0)
  loc_1843A19:               var_B8 = var_D0
  loc_1843A1C:             End If
  loc_1843A1C:           End If
  loc_1843A1C:         End If
  loc_1843A1C:       End If
  loc_1843A1C:     End If
  loc_1843A22:     var_86 = (var_86 + 1)
  loc_1843A27:     Set var_12C = Nothing 
  loc_1843A31:     If (var_DA = 0) Then
  loc_1843A38:       var_F8 = CVar(CLng(arg_10)) 'Long
  loc_1843A40:       var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1843A4A:       var_108 = CVar(CStr(var_9C)) 'String
  loc_1843A52:       Set var_10C = Me.FGrid
  loc_1843A58:       LateIdCallSt
  loc_1843A69:     Else
  loc_1843A7B:       Me.TxtTaxAmt.Text = CStr(var_9C)
  loc_1843A86:     End If
  loc_1843A89:     var_8C.MoveNext
  loc_1843A8E:     GoTo loc_184171B
  loc_1843A91:   End If
  loc_1843A96:   Set var_8C = Nothing
  loc_1843A9E:   Set var_C4 = Nothing
  loc_1843AA6:   Set var_C0 = Nothing
  loc_1843AAE:   Set var_D8 = Nothing
  loc_1843AB6:   Set var_E0 = Nothing
  loc_1843AB9: End If
  loc_1843AB9: Exit Sub
End Sub

Public Sub Proc_279_56_12DC1AC(arg_C) '12DC1AC
  'Data Table: 5571BC
  Dim var_A0 As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_A8 As String
  Dim var_138 As String
  Dim var_150 As String
  Dim unk_5571D7 As Connection15
  Dim var_9C As Variant
  Dim var_88 As Recordset15
  Dim var_96 As Integer
  Dim var_158 As TextBox
  Dim var_164 As Double
  Dim var_A4 As TextBox
  Dim var_15C As TextBox
  loc_12DBB3B: Set var_9C = Me.Txt
  loc_12DBB41: Call 0.Method_Proc_279_56_12DC1AC0 (CInt(8))
  loc_12DBB6A: If (Proc_6_27_EA61EC(var_A0, "Member Type") = 0) Then
  loc_12DBB74:   Call Txt_GotFocus(CInt(8))
  loc_12DBB79:   Exit Sub
  loc_12DBB7A: End If
  loc_12DBB85: Set var_9C = Me.Txt
  loc_12DBB8B: Call 0.Method_Proc_279_56_12DC1AC0 (CInt(9), var_A0)
  loc_12DBBB4: If (Proc_6_27_EA61EC(var_A0, "For Month") = 0) Then
  loc_12DBBBE:   Call Txt_GotFocus(CInt(9))
  loc_12DBBC3:   Exit Sub
  loc_12DBBC4: End If
  loc_12DBBCF: Set var_9C = Me.Txt
  loc_12DBBD5: Call 0.Method_Proc_279_56_12DC1AC0 (CInt(&HA), var_A0)
  loc_12DBBFE: If (Proc_6_27_EA61EC(var_A0, "Bill Date") = 0) Then
  loc_12DBC01:   Exit Sub
  loc_12DBC02: End If
  loc_12DBC10: Set var_9C = Me.Txt
  loc_12DBC16: Call 0.Method_Proc_279_56_12DC1AC0 (CInt(8), var_A0)
  loc_12DBC26: var_8C = var_A0.Tag
  loc_12DBC3B: Set var_9C = Me.Txt
  loc_12DBC41: Call 0.Method_Proc_279_56_12DC1AC0 (CInt(9), var_A0)
  loc_12DBC59: var_90 = CStr(Trim(CVar(var_A0)))
  loc_12DBC71: Set var_9C = Me.Txt
  loc_12DBC77: Call 0.Method_Proc_279_56_12DC1AC0 (CInt(&HA), var_A0)
  loc_12DBC86: var_CC = Trim(CVar(var_A0))
  loc_12DBC8F: var_94 = CStr(var_CC)
  loc_12DBCA5: If (MemVar_1F950EC < CDate(var_94)) Then
  loc_12DBCBB:   var_BC = "Only Previous Months Billing is Possible."
  loc_12DBCC1:   MsgBox(var_BC, &H40, var_CC, var_10C, var_12C)
  loc_12DBCD1:   Exit Sub
  loc_12DBCD2: End If
  loc_12DBCE6: var_A8 = "SELECT SubCode,subgroup.Name,CardNo,CompanyType FROM SUBGROUP INNER JOIN MEMCATMAST ON SUBGROUP.COMPANYTYPE=MEMCATMAST.CODE WHERE ActiveYN=1 And (COMPANYTYPE IS NOT NULL AND COMPANYTYPE<>'') And SUBGROUP.COMPANYTYPE='" & var_8C
  loc_12DBCFB: var_138 = var_A8 & "' and (SUBGROUP.LOGSITE_CODE='" & MemVar_1F95078 & "' or SUBGROUP.LOGSITE_CODE='HO') And SubGroup.subcode Not In(Select MemCode From MemBill Where (LOGSITE_CODE='"
  loc_12DBD25: var_150 = var_138 & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and (MemCatCode='" & var_8C & "' And MthYear='" & var_90 & "')) Order by subgroup.ConPerson"
  loc_12DBD2E: unk_5571D7.Execute var_150, var_BC, -1
  loc_12DBD39: Set var_88 = var_9C
  loc_12DBD6B: Me.ProgressBar1.Max = CVar(CDbl(1))
  loc_12DBD85: Me.ProgressBar1.Value = CVar(CDbl(0))
  loc_12DBDA1: If (var_88.RecordCount > 0) Then
  loc_12DBDC2:   Me.ProgressBar1.Max = CVar(CDbl(var_88.RecordCount))
  loc_12DBDD9:   var_96 = CInt(var_88.RecordCount)
  loc_12DBDDF: Else
  loc_12DBDEE:   var_96 = CInt(var_88.RecordCount)
  loc_12DBE03:   Me.ProgressBar1.Value = CVar(CDbl(1))
  loc_12DBE0B:   ' Referenced from:   12DC14B
  loc_12DBE0B: End If
  loc_12DBE1A: If Not(var_88.EOF) Then
  loc_12DBE2C:   var_9C = var_88.Fields
  loc_12DBE53:   Set var_A4 = Me.Txt
  loc_12DBE59:   Call 0.Method_Proc_279_56_12DC1AC0 (CInt(0), var_158, Proc_6_38_E69628(CVar(var_9C.Item("Name")), var_96, var_96))
  loc_12DBE61:   var_158.Text = var_9C
  loc_12DBEAB:   Set var_A4 = Me.Txt
  loc_12DBEB1:   Call 0.Method_Proc_279_56_12DC1AC0 (CInt(0), var_158)
  loc_12DBEB9:   var_158.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("subcode")))
  loc_12DBF03:   Set var_A4 = Me.Txt
  loc_12DBF09:   Call 0.Method_Proc_279_56_12DC1AC0 (CInt(1), var_158)
  loc_12DBF11:   var_158.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CardNo")))
  loc_12DBF3C:   var_A0 = var_88.Fields.Item("CompanyType")
  loc_12DBF5B:   Set var_A4 = Me.Txt
  loc_12DBF61:   Call 0.Method_Proc_279_56_12DC1AC0 (CInt(1), var_158)
  loc_12DBF69:   var_158.Tag = Proc_6_38_E69628(CVar(var_A0))
  loc_12DBF8B:   Set var_9C = Me.Txt
  loc_12DBF91:   Call 0.Method_Proc_279_56_12DC1AC0 (CInt(2), var_A0)
  loc_12DBF99:   var_A0.Text = var_90
  loc_12DBFB3:   Set var_9C = Me.Txt
  loc_12DBFB9:   Call 0.Method_Proc_279_56_12DC1AC0 (CInt(3), var_A0)
  loc_12DBFC1:   var_A0.Text = var_94
  loc_12DBFCD:   Call CmdFill_UnknownEvent_9()
  loc_12DBFDA:   If (arg_C = "All") Then
  loc_12DBFDD:     Call TopCtrl1_UnknownEvent_16()
  loc_12DBFE5:   Else
  loc_12DC003:     If (Ucase(MemVar_1F95070) = "VV") Then
  loc_12DC012:       Set var_9C = Me.TxtGt
  loc_12DC018:       Call 0.Method_Proc_279_56_12DC1AC0 (1, var_A0)
  loc_12DC03D:       If Not((CDbl(Val(var_A0.Text)) = CDbl(0))) Then
  loc_12DC040:         Call TopCtrl1_UnknownEvent_16()
  loc_12DC048:       Else
  loc_12DC04E:         var_96 = (var_96 - 1)
  loc_12DC051:       End If
  loc_12DC054:     Else
  loc_12DC0C0:       Set var_158 = Me.TxtGt
  loc_12DC0C6:       Call 0.Method_Proc_279_56_12DC1AC0 (1, var_15C, var_138, ((CDbl((Val(Me.TxtPreBalance.Tag) - Val(Me.TxtCreditAmt.Text))) <= CDbl(0)) And (CDbl(Val(Me.TxtOtherCredit.Text)) = CDbl(0))))
  loc_12DC0CE:       var_164 = var_15C.Text
  loc_12DC0FA:       If Not((var_96 And (CDbl(Val(var_138)) = CDbl(0)))) Then
  loc_12DC0FD:         Call TopCtrl1_UnknownEvent_16()
  loc_12DC105:       Else
  loc_12DC10B:         var_96 = (var_96 - 1)
  loc_12DC10E:       End If
  loc_12DC10E:     End If
  loc_12DC10E:   End If
  loc_12DC111:   var_88.MoveNext
  loc_12DC12D:   var_DC = CVar((CDbl(Me.ProgressBar1.Value) + CDbl(1))) 'Single
  loc_12DC13C:   Me.ProgressBar1.Value = MemVar_1F95070
  loc_12DC14B:   GoTo loc_12DBE0B
  loc_12DC14E: End If
  loc_12DC188: MsgBox(CVar("Process Completed." & vbCrLf & "No. Of Bills " & CStr(var_96) & " generated under this process."), &H40, "Member Auto Billing", var_10C, var_12C)
  loc_12DC1A8: Set var_88 = Nothing
  loc_12DC1AB: Exit Sub
End Sub
