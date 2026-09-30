VERSION 5.00
Begin VB.Form FaTaxVoucher
  Caption = "Expense Voucher"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  Icon = "FaTaxVoucher.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 12720
  ClientHeight = 8475
  LockControls = -1  'True
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin Frame FrPayable
    Caption = "Invoice Type"
    ForeColor = &H80&
    Left = 11160
    Top = 1755
    Width = 1080
    Height = 240
    TabIndex = 63
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin CheckBox ChkPayable
      Caption = "Payable"
      ForeColor = &HFF&
      Left = 15
      Top = -15
      Width = 1080
      Height = 255
      TabIndex = 64
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 12720
    Height = 450
    TabIndex = 62
  End
  Begin DataGrid DGItem
    Left = 3270
    Top = 2205
    Width = 6180
    Height = 2880
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 23
  End
  Begin DataGrid DGPartyBillNo
    Left = 16725
    Top = 435
    Width = 3630
    Height = 2880
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 58
  End
  Begin TextBox TxtBarCode
    Left = 10890
    Top = 1020
    Width = 2850
    Height = 315
    Visible = 0   'False
    TabIndex = 56
    MaxLength = 30
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Frame FrInVoiceType
    Caption = "Invoice Type"
    ForeColor = &H80&
    Left = 4770
    Top = 1725
    Width = 4995
    Height = 300
    TabIndex = 54
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin OptionButton Opt
      Caption = "Other"
      Index = 2
      ForeColor = &H8000&
      Left = 4035
      Top = 30
      Width = 1485
      Height = 240
      TabIndex = 10
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
    Begin OptionButton Opt
      Caption = "Tax Invoice"
      Index = 1
      ForeColor = &H8000&
      Left = 2070
      Top = 30
      Width = 1485
      Height = 240
      TabIndex = 9
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
    Begin OptionButton Opt
      Caption = "Sale Invoice"
      Index = 0
      ForeColor = &H8000&
      Left = 60
      Top = 30
      Width = 1485
      Height = 240
      TabIndex = 8
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
  Begin TextBox Txt
    Index = 12
    ForeColor = &HC00000&
    Left = 1080
    Top = 5985
    Width = 6750
    Height = 840
    TabIndex = 52
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
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
  Begin Frame FrTrans
    Caption = "Import Purchase Data :"
    Left = 7260
    Top = 10005
    Width = 7350
    Height = 4185
    Visible = 0   'False
    TabIndex = 47
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton CmdExit
      Caption = "E&xit"
      Left = 4920
      Top = 3600
      Width = 1650
      Height = 375
      TabIndex = 51
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
    Begin CommandButton Command3
      Caption = "Re&fresh"
      Left = 3030
      Top = 3600
      Width = 1650
      Height = 375
      TabIndex = 50
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
    Begin CheckBox Check1
      Caption = "All"
      BackColor = &H808080&
      ForeColor = &HFFFFFF&
      Left = 570
      Top = 570
      Width = 915
      Height = 195
      TabIndex = 49
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
      Left = 450
      Top = 510
      Width = 6495
      Height = 3000
      TabIndex = 48
    End
  End
  Begin CommandButton CmdImport
    Caption = "Import"
    Left = 120
    Top = 6945
    Width = 1395
    Height = 315
    Visible = 0   'False
    TabIndex = 46
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
  Begin DataGrid DGSaleAc
    Left = 3630
    Top = 8685
    Width = 3585
    Height = 3030
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 45
  End
  Begin TextBox Txt
    Index = 11
    ForeColor = &HC00000&
    Left = 10905
    Top = 1380
    Width = 2130
    Height = 285
    TabIndex = 12
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
  Begin DataGrid DGTaxStru
    Left = 3315
    Top = 8040
    Width = 3585
    Height = 3030
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 43
  End
  Begin DataGrid DgMR
    Left = 2985
    Top = 7695
    Width = 4695
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 35
  End
  Begin DataGrid DGVType
    Left = 2685
    Top = 7470
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 37
  End
  Begin DataGrid DGParty
    Left = -30
    Top = 8625
    Width = 11805
    Height = 5640
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 36
  End
  Begin DataGrid DGIndent
    Left = 2370
    Top = 7185
    Width = 4695
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 41
  End
  Begin DataGrid DGGod
    Left = 2070
    Top = 6960
    Width = 3585
    Height = 3030
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 39
  End
  Begin CommandButton Command1
    Caption = "Edit Save"
    Left = 9285
    Top = 15
    Width = 1230
    Height = 315
    Visible = 0   'False
    TabIndex = 42
    BeginProperty Font
      Name = "System"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 10
    ForeColor = &HC00000&
    Left = 3630
    Top = 1695
    Width = 1050
    Height = 285
    Visible = 0   'False
    TabIndex = 5
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
    Index = 9
    Left = 12825
    Top = 8385
    Width = 1125
    Height = 240
    Visible = 0   'False
    TabIndex = 38
    BorderStyle = 0 'None
    MaxLength = 12
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
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
    ForeColor = &HC00000&
    Left = 1185
    Top = 1065
    Width = 3495
    Height = 285
    TabIndex = 0
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
    Index = 2
    ForeColor = &HC00000&
    Left = 5460
    Top = 1065
    Width = 1230
    Height = 285
    TabIndex = 1
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
    Index = 3
    ForeColor = &HC00000&
    Left = 8595
    Top = 1065
    Width = 1230
    Height = 285
    TabIndex = 2
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
  Begin TextBox Txt
    Index = 4
    ForeColor = &HC00000&
    Left = 1185
    Top = 1380
    Width = 3495
    Height = 285
    TabIndex = 3
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
    Index = 5
    ForeColor = &HC00000&
    Left = 5460
    Top = 1380
    Width = 2625
    Height = 285
    TabIndex = 6
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
    Index = 6
    ForeColor = &HC00000&
    Left = 8595
    Top = 1380
    Width = 1230
    Height = 285
    TabIndex = 7
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
  Begin TextBox Txt
    Index = 7
    ForeColor = &HC00000&
    Left = 1185
    Top = 1695
    Width = 1050
    Height = 285
    Visible = 0   'False
    TabIndex = 4
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
    Index = 8
    ForeColor = &HC00000&
    Left = 1185
    Top = 1380
    Width = 3495
    Height = 285
    TabIndex = 11
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
  Begin DataGrid DGRest
    Left = 1755
    Top = 6990
    Width = 5910
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 24
  End
  Begin TextBox Txt
    Index = 0
    Left = 7605
    Top = 45
    Width = 1125
    Height = 240
    Visible = 0   'False
    TabIndex = 26
    BorderStyle = 0 'None
    MaxLength = 21
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGCat
    Left = -150
    Top = 7515
    Width = 9150
    Height = 2355
    Visible = 0   'False
    TabIndex = 22
  End
  Begin TextBox TxtGt
    Index = 1
    ForeColor = &HC00000&
    Left = 13455
    Top = 6015
    Width = 1125
    Height = 255
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
  Begin TextBox TxtPer
    Index = 1
    ForeColor = &HC00000&
    Left = 12870
    Top = 6015
    Width = 405
    Height = 255
    Visible = 0   'False
    TabIndex = 15
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
  Begin Frame FrmList
    Left = 18060
    Top = 3720
    Width = 2520
    Height = 1830
    Visible = 0   'False
    TabIndex = 17
    BeginProperty Font
      Name = "System"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 45
      Top = 30
      Width = 2415
      Height = 1800
      TabIndex = 18
    End
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 855
    Top = 2430
    Width = 1005
    Height = 240
    Visible = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 15
    Top = 2085
    Width = 12045
    Height = 3855
    TabIndex = 13
  End
  Begin MSFlexGrid FGPoint
    Left = 7050
    Top = 9000
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 25
  End
  Begin CommonDialog CDlg
  End
  Begin Image BillImage
    Left = 13260
    Top = 600
    Width = 1095
    Height = 1350
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
    ToolTipText = "Guest"
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 1170
    Top = 7170
    Width = 2880
    Height = 255
    TabIndex = 61
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
    Left = 4575
    Top = 7215
    Width = 2790
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 59
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
    Caption = "Bar Code"
    Index = 11
    ForeColor = &HC00000&
    Left = 9960
    Top = 1065
    Width = 885
    Height = 240
    Visible = 0   'False
    TabIndex = 57
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
  Begin Label LblInvoiceNo
    ForeColor = &H80&
    Left = 9780
    Top = 1755
    Width = 1080
    Height = 285
    TabIndex = 55
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
    Caption = "Remark"
    Index = 6
    ForeColor = &HC00000&
    Left = 225
    Top = 5970
    Width = 735
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
  Begin Label Label1
    Caption = "GSTIN"
    Index = 5
    ForeColor = &HC00000&
    Left = 10215
    Top = 1395
    Width = 600
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
    Caption = "Indent. No."
    Index = 4
    ForeColor = &HC00000&
    Left = 2655
    Top = 1725
    Width = 1035
    Height = 240
    Visible = 0   'False
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
  Begin Label Label1
    Caption = "Vr. No."
    Index = 8
    ForeColor = &HC00000&
    Left = 4740
    Top = 1065
    Width = 645
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
  Begin Label Label1
    Caption = "Type "
    Index = 3
    ForeColor = &HC00000&
    Left = 60
    Top = 1080
    Width = 525
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
    Caption = "Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 8160
    Top = 1080
    Width = 435
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 14085
    Top = 8670
    Width = 645
    Height = 210
    Visible = 0   'False
    TabIndex = 31
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
  Begin Label Label1
    Caption = "Bill No."
    Index = 1
    ForeColor = &HC00000&
    Left = 4740
    Top = 1395
    Width = 690
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
  Begin Label Label1
    Caption = "Date"
    Index = 7
    ForeColor = &HC00000&
    Left = 8160
    Top = 1395
    Width = 435
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
  Begin Label Label1
    Caption = "Party Name"
    Index = 10
    ForeColor = &HC00000&
    Left = 60
    Top = 1410
    Width = 1110
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
  Begin Label Label1
    Caption = "M.R.No."
    Index = 0
    ForeColor = &HC00000&
    Left = 60
    Top = 1725
    Width = 735
    Height = 240
    Visible = 0   'False
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
  Begin Label LblDummy
    Caption = "Label2"
    Index = 1
    ForeColor = &HC00000&
    Left = 10815
    Top = 6750
    Width = 180
    Height = 210
    Visible = 0   'False
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
  Begin Label LblAt
    Caption = "%"
    Index = 1
    ForeColor = &HC00000&
    Left = 13290
    Top = 6015
    Width = 150
    Height = 240
    Visible = 0   'False
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
  Begin Label LblCap
    Caption = "Total"
    Index = 1
    ForeColor = &HC00000&
    Left = 11025
    Top = 6765
    Width = 480
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
  Begin Label Lbl
    Caption = "Bill Image"
    Index = 43
    ForeColor = &H0&
    Left = 13380
    Top = 1650
    Width = 840
    Height = 240
    TabIndex = 65
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
End

Attribute VB_Name = "FaTaxVoucher"

Private global_52 As Integer
Private global_144 As Integer
Private global_146 As Integer
Private global_248 As Integer
Private global_250 As Integer
Private global_120 As Integer
Private global_208 As Double
Private global_96 As Integer

Private Sub TxtPer_GotFocus(Index As Integer) 'ECF074
  'Data Table: 598690
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECEFD6: Set var_88 = Me.TxtPer
  loc_ECEFDC: Call 0.Method_TxtPer_GotFocus0 (Index)
  loc_ECEFEA: Proc_6_74_E23240(var_8C)
  loc_ECEFF6: Call Proc_338_94_FDFE34(var_8C)
  loc_ECF00A: Set var_88 = Me.TxtPer
  loc_ECF010: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECF018: var_8C.SelStart = 0
  loc_ECF031: Set var_88 = Me.TxtPer
  loc_ECF037: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECF052: Set var_90 = Me.TxtPer
  loc_ECF058: Call 0.Method_TxtPer_GotFocus0 (Index, var_98)
  loc_ECF060: var_98.SelLength = Len(var_8C.Text)
  loc_ECF073: Exit Sub
End Sub

Private Sub TxtPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E5C610
  'Data Table: 598690
  loc_E5C5DD: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5C5E6:   Proc_6_75_E5335C(Shift)
  loc_E5C5EB: End If
  loc_E5C600: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5C609:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5C60E: End If
  loc_E5C60E: Exit Sub
End Sub

Private Sub TxtPer_KeyPress(KeyAscii As Integer) 'E57ED0
  'Data Table: 598690
  loc_E57EA2: Set var_88 = Me.TxtPer
  loc_E57EA8: Call 0.Method_TxtPer_KeyPress0 (KeyAscii)
  loc_E57EC3: Proc_6_42_129B55C(var_8C, arg_10, 8)
  loc_E57ECF: Exit Sub
End Sub

Private Sub TxtPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E01504
  'Data Table: 598690
  loc_E014FE: Call Proc_338_101_17C1F88(KeyCode)
  loc_E01503: Exit Sub
End Sub

Private Sub TxtPer_LostFocus(Index As Integer) 'E4C07C
  'Data Table: 598690
  loc_E4C05A: Set var_88 = Me.TxtPer
  loc_E4C060: Call 0.Method_TxtPer_LostFocus0 (Index)
  loc_E4C06E: Proc_6_73_E23294(var_8C)
  loc_E4C07A: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_9 'F3E3B4
  'Data Table: 598690
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3E2AB: Me.DGParty.Visible = False
  loc_F3E2CA: If (Me.RecordCount > 0) Then
  loc_F3E309:   Set var_B4 = Me.Txt
  loc_F3E30F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(4), var_B8)
  loc_F3E317:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3E34A:   var_B0 = Me.Fields.Item("Code")
  loc_F3E369:   Set var_B4 = Me.Txt
  loc_F3E36F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(4), var_B8)
  loc_F3E377:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3E38D: End If
  loc_F3E398: Set var_A8 = Me.Txt
  loc_F3E39E: Call 0.Method_DGParty_UnknownEvent_90 (CInt(4))
  loc_F3E3A6: var_B0.SetFocus
  loc_F3E3B2: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_1F 'EA5050
  'Data Table: 598690
  Dim var_A8 As Variant
  loc_EA4FD0: Set var_88 = Me.DGParty
  loc_EA4FFA: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA5002: Set var_BC = Me.DGParty
  loc_EA503E: Proc_6_138_106E830(Me.DGParty, global_64, CInt(4), Me.FGPoint)
  loc_EA504C: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EF92A8
  'Data Table: 598690
  Dim FGPoint_UnknownEvent_900 As Variant
  loc_EF91E8: If (CBool(Me.DgMR.Visible) = &HFF) Then
  loc_EF91EB:   Call DgMR_UnknownEvent_9()
  loc_EF91F0: End If
  loc_EF920C: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EF920F:   Call DGItem_UnknownEvent_9()
  loc_EF9214: End If
  loc_EF9230: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_EF9233:   Call DGParty_UnknownEvent_9()
  loc_EF9238: End If
  loc_EF9254: If (CBool(Me.DGPartyBillNo.Visible) = &HFF) Then
  loc_EF9257:   Call DGPartyBillNo_UnknownEvent_9()
  loc_EF925C: End If
  loc_EF9278: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EF927B:   Call DGVType_UnknownEvent_9()
  loc_EF9280: End If
  loc_EF929C: If (CBool(Me.DGGod.Visible) = &HFF) Then
  loc_EF929F:   Call DGGod_UnknownEvent_9()
  loc_EF92A4: End If
  loc_EF92A4: Exit Sub
  loc_EF92A5: FGPoint_UnknownEvent_900 = 
End Sub

Private Sub DGVType_UnknownEvent_9 'FD7558
  'Data Table: 598690
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_FD7398: On Error Goto loc_FD7550
  loc_FD73AA: Me.DGVType.Visible = False
  loc_FD73C9: If (Me.RecordCount > 0) Then
  loc_FD741B:   Set var_CC = Me.Txt
  loc_FD7421:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)), var_D0)
  loc_FD7429:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD7481:   Set var_B4 = Me.DGVType
  loc_FD7498:   Set var_CC = Me.Txt
  loc_FD749E:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FD74A6:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD74FE:   global_124 = CStr(Trim(CVar(Me.Fields.Item("NCat"))))
  loc_FD750F: End If
  loc_FD752D: Set var_B0 = Me.Txt
  loc_FD7533: Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)))
  loc_FD753B: var_B4.SetFocus
  loc_FD754F: Exit Sub
  loc_FD7550: ' Referenced from: FD7398
  loc_FD7550: Proc_6_60_E63754(var_B4)
  loc_FD7555: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_1F 'EA4F8C
  'Data Table: 598690
  Dim var_A8 As Variant
  loc_EA4F0C: Set var_88 = Me.DGVType
  loc_EA4F36: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA4F3E: Set var_BC = Me.DGVType
  loc_EA4F7A: Proc_6_138_106E830(Me.DGVType, global_80, CInt(1), Me.FGPoint)
  loc_EA4F88: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '14FE5D8
  'Data Table: 598690
  Dim var_8C As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_C4 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_90 As Variant
  Dim var_110 As String
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim var_108 As TextBox
  Dim Me As Variant
  Dim var_124 As String
  Dim var_138 As String
  Dim unk_5986AD As Connection15
  loc_14FD75E: Set var_88 = Me.TxtGrid
  loc_14FD764: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_14FD772: Proc_6_74_E23240(var_8C)
  loc_14FD77E: Call Proc_338_94_FDFE34(var_8C)
  loc_14FD791: Set var_88 = Me.TxtGrid
  loc_14FD797: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_14FD79F: var_8C.MaxLength = 0
  loc_14FD7B7: If (Index = 0) Then
  loc_14FD7CD:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FD7D6:   Set var_8C = Me.FGrid
  loc_14FD80C:   Set var_108 = Me.TxtGrid
  loc_14FD812:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_14FD81A:   var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_14FD84B:   var_114 = CLng(Me.FGrid.Col)
  loc_14FD85B:   If (var_114 = CLng(1)) Then
  loc_14FD86C:     Set var_88 = Me.TxtGrid
  loc_14FD872:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, 4)
  loc_14FD87A:     var_8C.MaxLength = var_114
  loc_14FD889:   Else
  loc_14FD890:     If (var_114 = CLng(2)) Then
  loc_14FD89F:       Set var_88 = Me.TxtGrid
  loc_14FD8A5:       Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, var_118)
  loc_14FD8AD:       var_C4 = var_8C.Left
  loc_14FD8C4:       Me.DGItem.Left = CVar(var_118)
  loc_14FD8DE:       Set var_90 = Me.TxtGrid
  loc_14FD8E4:       Call 0.Method_TxtGrid_GotFocus0 (0, var_108)
  loc_14FD8EC:       var_11C = var_108.Height
  loc_14FD8FD:       Set var_88 = Me.TxtGrid
  loc_14FD903:       Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_14FD917:       var_C4 = CVar((var_8C.Top + var_11C)) 'Single
  loc_14FD920:       Set var_10C = Me.DGItem
  loc_14FD926:       var_10C.Top = CVar(var_8C.Top)
  loc_14FD94F:       If (Me.RecordCount > 0) Then
  loc_14FD95D:         Set var_8C = Me.FGPoint
  loc_14FD975:         Proc_6_137_1192FDC(Me.DGItem, global_60, Index)
  loc_14FD983:       End If
  loc_14FD98C:       var_118 = Me.RecordCount
  loc_14FD9A3:       var_11E = Me.EOF
  loc_14FD9B7:       var_120 = Me.BOF
  loc_14FD9D7:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FDA13:       If (CVar(CLng(&HC)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_14FDA16:         Exit Sub
  loc_14FDA17:       End If
  loc_14FDA1D:       Me.MoveFirst
  loc_14FDA35:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FDA3D:       var_E4 = CVar(CLng(&HC)) 'Long
  loc_14FDA81:       Me.Find "Code='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_14FDAB0:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FDAB8:       var_E4 = CVar(CLng(&HC)) 'Long
  loc_14FDAC1:       Set var_8C = Me.FGrid
  loc_14FDAC7:       var_B4 = var_8C.TextMatrix)
  loc_14FDAD8:       var_148 = Trim(CVar(CStr(var_B4)))
  loc_14FDAE1:       var_110 = CStr(var_148)
  loc_14FDAE7:       global_168 = var_110
  loc_14FDB09:       var_11E = Me.EOF
  loc_14FDB14:       If (var_11E = &HFF) Then
  loc_14FDB1D:         Me.MoveFirst
  loc_14FDB22:       End If
  loc_14FDB25:     Else
  loc_14FDB2C:       If (var_114 = CLng(9)) Then
  loc_14FDB3E:         Set var_88 = Me.TxtGrid
  loc_14FDB44:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0, var_E4, var_C4, var_138, var_B4)
  loc_14FDB4C:         var_8C.MaxLength = var_E4
  loc_14FDB61:         If (global_146 = 0) Then
  loc_14FDB73:           Set var_88 = Me.TxtGrid
  loc_14FDB79:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0, var_C4)
  loc_14FDB81:           var_8C.SelStart = var_C4
  loc_14FDB9A:           Set var_88 = Me.TxtGrid
  loc_14FDBA0:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110)
  loc_14FDBA8:           ((var_118 = 0) Or ((var_11E = &HFF) Or (var_120 = &HFF))) = var_8C.Text
  loc_14FDBBB:           Set var_90 = Me.TxtGrid
  loc_14FDBC1:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, Len(var_110))
  loc_14FDBC9:           var_108.SelLength = var_8C
  loc_14FDBDC:         End If
  loc_14FDBDF:       Else
  loc_14FDBE6:         If (var_114 = CLng(&HB)) Then
  loc_14FDBF8:           Set var_88 = Me.TxtGrid
  loc_14FDBFE:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_14FDC06:           var_8C.MaxLength = 0
  loc_14FDC1B:           If (global_146 = 0) Then
  loc_14FDC2D:             Set var_88 = Me.TxtGrid
  loc_14FDC33:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_14FDC3B:             var_8C.SelStart = 0
  loc_14FDC54:             Set var_88 = Me.TxtGrid
  loc_14FDC5A:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_14FDC75:             Set var_90 = Me.TxtGrid
  loc_14FDC7B:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_14FDC83:             var_108.SelLength = Len(var_8C.Text)
  loc_14FDC96:           End If
  loc_14FDC99:         Else
  loc_14FDCA0:           If (var_114 = CLng(&H16)) Then
  loc_14FDCAD:             var_A4 = Me.DGGod.Width
  loc_14FDCC2:             Set var_108 = Me.TxtGrid
  loc_14FDCC8:             Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, var_11C)
  loc_14FDCE1:             Set var_88 = Me.TxtGrid
  loc_14FDCE7:             Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_14FDD01:             var_C4 = CVar((var_8C.Left - (CDbl(var_10C.Width) - var_11C))) 'Single
  loc_14FDD10:             Me.DGGod.Left = var_C4
  loc_14FDD33:             Set var_90 = Me.TxtGrid
  loc_14FDD39:             Call 0.Method_TxtGrid_GotFocus0 (0, var_108)
  loc_14FDD41:             var_11C = var_108.Height
  loc_14FDD52:             Set var_88 = Me.TxtGrid
  loc_14FDD58:             Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_14FDD6C:             var_C4 = CVar((var_8C.Top + var_11C)) 'Single
  loc_14FDD75:             Set var_10C = Me.DGGod
  loc_14FDD7B:             var_10C.Top = var_C4
  loc_14FDDA0:             var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FDDA8:             var_E4 = CVar(CLng(&HC)) 'Long
  loc_14FDDC8:             global_168 = CStr(Me.FGrid.TextMatrix))
  loc_14FDDF4:             If (Me.RecordCount > 0) Then
  loc_14FDE1A:               Proc_6_137_1192FDC(Me.DGGod, global_84, Index, Me.FGPoint)
  loc_14FDE28:             End If
  loc_14FDE31:             var_118 = Me.RecordCount
  loc_14FDE69:             If ((var_118 = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_14FDE6C:               Exit Sub
  loc_14FDE6D:             End If
  loc_14FDE80:             var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FDE88:             var_E4 = CVar(CLng(&H16)) 'Long
  loc_14FDEBB:             If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_14FDEC4:               Me.MoveFirst
  loc_14FDEED:               Set var_8C = Me.FGrid
  loc_14FDF04:               Proc_6_17_EAAE40(var_148, CVar(CStr(var_8C.TextMatrix))), CVar(CLng(&H17)), CVar(CLng(Me.FGrid.Row)), CVar(CLng(&H17)))
  loc_14FDF2D:               Me.Find CStr("Code =" & var_148), 0, 1
  loc_14FDF5D:               If (Me.EOF = &HFF) Then
  loc_14FDF66:                 Me.MoveFirst
  loc_14FDF6B:               End If
  loc_14FDF6B:             End If
  loc_14FDF6E:           Else
  loc_14FDF75:             If (var_114 = CLng(&H19)) Then
  loc_14FDF82:               var_A4 = Me.DGTaxStru.Width
  loc_14FDF97:               Set var_108 = Me.TxtGrid
  loc_14FDF9D:               Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, var_11C, var_A4, var_16C)
  loc_14FDFA5:               var_C4 = var_10C.Width
  loc_14FDFB6:               Set var_88 = Me.TxtGrid
  loc_14FDFBC:               Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, var_118)
  loc_14FDFC4:               var_E4 = var_8C.Left
  loc_14FDFD6:               var_C4 = CVar((var_118 - (CDbl(var_A4) - var_11C))) 'Single
  loc_14FDFE5:               Me.DGTaxStru.Left = var_C4
  loc_14FE008:               Set var_90 = Me.TxtGrid
  loc_14FE00E:               Call 0.Method_TxtGrid_GotFocus0 (0, var_108, var_11C)
  loc_14FE016:               var_C4 = var_108.Height
  loc_14FE027:               Set var_88 = Me.TxtGrid
  loc_14FE02D:               Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_14FE041:               var_C4 = CVar((var_8C.Top + var_11C)) 'Single
  loc_14FE04A:               Set var_10C = Me.DGTaxStru
  loc_14FE050:               var_10C.Top = var_C4
  loc_14FE066:               Set var_88 = Me.FGrid
  loc_14FE06C:               var_A4 = var_88.Row
  loc_14FE075:               var_C4 = CVar(CLng(var_A4)) 'Long
  loc_14FE07D:               var_E4 = CVar(CLng(&HC)) 'Long
  loc_14FE09D:               global_168 = CStr(Me.FGrid.TextMatrix))
  loc_14FE0C6:               var_110 = "SELECT Distinct TaxStru.Code as Code, TaxStru.Name as name FROM TaxStru INNER JOIN ItemCatMast ON TaxStru.Code = ItemCatMast.TaxStru where (TaxStru.LOGSITE_CODE='" & MemVar_1F95078
  loc_14FE0CD:               var_124 = var_110 & "' or TaxStru.LOGSITE_CODE='HO') And IsNull(ItemCatMast.TaxstruType,'')='Registered' And ItemCatMast.RestCode='"
  loc_14FE0E4:               unk_5986AD.Execute var_124 & MemVar_1F95078 & "PURC' order by taxstru.name ", var_A4, -1
  loc_14FE0F5:               Set global_216 = var_88
  loc_14FE11A:               CVarUnk
  loc_14FE11F:               VerifyVarObj
  loc_14FE125:               Set var_88 = Me.DGTaxStru
  loc_14FE12B:               LateIdStAd
  loc_14FE153:               If (Me.DGTaxStru.RecordCount > 0) Then
  loc_14FE17D:                 Proc_6_137_1192FDC(Me.DGTaxStru, global_216, Index, Me.FGPoint, Me.DGTaxStru)
  loc_14FE18B:               End If
  loc_14FE197:               var_118 = global_216.RecordCount
  loc_14FE1D5:               If ((var_118 = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) Then
  loc_14FE1D8:                 Exit Sub
  loc_14FE1D9:               End If
  loc_14FE1EC:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FE1F4:               var_E4 = CVar(CLng(&H1A)) 'Long
  loc_14FE203:               var_B4 = Me.FGrid.TextMatrix)
  loc_14FE227:               If (CStr(var_B4) <> vbNullString) Then
  loc_14FE233:                 Me.var_B4.MoveFirst
  loc_14FE25C:                 Set var_8C = Me.FGrid
  loc_14FE262:                 var_B4 = var_8C.TextMatrix)
  loc_14FE273:                 Proc_6_17_EAAE40(var_148, CVar(CStr(var_B4)), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)))
  loc_14FE29F:                 Me.var_B4.Find CStr("Code =" & var_148), 0, 1
  loc_14FE2D2:                 If (Me.Recordset15.EOF = &HFF) Then
  loc_14FE2DE:                   Me.Recordset15.MoveFirst
  loc_14FE2E3:                 End If
  loc_14FE2E3:               End If
  loc_14FE2E6:             Else
  loc_14FE2ED:               If (var_114 = CLng(&H1B)) Then
  loc_14FE2FA:                 var_A4 = Me.DGSaleAc.Width
  loc_14FE30F:                 Set var_108 = Me.TxtGrid
  loc_14FE315:                 Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, var_11C, var_A4, var_16C)
  loc_14FE31D:                 global_216 = var_10C.Width
  loc_14FE334:                 Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, var_118, Me.TxtGrid)
  loc_14FE33C:                 var_E4 = var_8C.Left
  loc_14FE34E:                 var_C4 = CVar((var_118 - (CDbl(var_A4) - var_11C))) 'Single
  loc_14FE35D:                 Me.DGSaleAc.Left = CVar(CLng(Me.FGrid.Row))
  loc_14FE380:                 Set var_90 = Me.TxtGrid
  loc_14FE386:                 Call 0.Method_TxtGrid_GotFocus0 (0, var_108, var_11C)
  loc_14FE38E:                 var_C4 = var_108.Height
  loc_14FE39F:                 Set var_88 = Me.TxtGrid
  loc_14FE3A5:                 Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_14FE3B9:                 var_C4 = CVar((var_8C.Top + var_11C)) 'Single
  loc_14FE3C8:                 Me.DGSaleAc.Top = var_C4
  loc_14FE3ED:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FE3F5:                 var_E4 = CVar(CLng(&HC)) 'Long
  loc_14FE404:                 var_B4 = Me.FGrid.TextMatrix)
  loc_14FE415:                 global_168 = CStr(var_B4)
  loc_14FE444:                 If (Me.var_B4.RecordCount > 0) Then
  loc_14FE46E:                   Proc_6_137_1192FDC(Me.DGSaleAc, global_220, Index, Me.FGPoint)
  loc_14FE47C:                 End If
  loc_14FE4C6:                 If ((global_220.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) Then
  loc_14FE4C9:                   Exit Sub
  loc_14FE4CA:                 End If
  loc_14FE4DD:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FE4E5:                 var_E4 = CVar(CLng(&H1C)) 'Long
  loc_14FE4F4:                 var_B4 = Me.FGrid.TextMatrix)
  loc_14FE518:                 If (CStr(var_B4) <> vbNullString) Then
  loc_14FE524:                   Me.var_B4.MoveFirst
  loc_14FE553:                   var_B4 = Me.FGrid.TextMatrix)
  loc_14FE564:                   Proc_6_17_EAAE40(var_148, CVar(CStr(var_B4)), CVar(CLng(&H1C)), CVar(CLng(Me.FGrid.Row)), CVar(CLng(&H1C)))
  loc_14FE590:                   Me.var_B4.Find CStr("Code =" & var_148), 0, 1
  loc_14FE5C3:                   If (Me.Recordset15.EOF = &HFF) Then
  loc_14FE5CF:                     Me.Recordset15.MoveFirst
  loc_14FE5D4:                   End If
  loc_14FE5D4:                 End If
  loc_14FE5D4:               End If
  loc_14FE5D4:             End If
  loc_14FE5D4:           End If
  loc_14FE5D4:         End If
  loc_14FE5D4:       End If
  loc_14FE5D4:     End If
  loc_14FE5D4:   End If
  loc_14FE5D4: End If
  loc_14FE5D4: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1439358
  'Data Table: 598690
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_94 As String
  loc_1438867: var_86 = Shift
  loc_1438876: If (KeyCode = 0) Then
  loc_1438883:   If (CLng(Shift) = &H1B) Then
  loc_1438893:     Set var_8C = Me.TxtGrid
  loc_1438899:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_14388A1:     var_88 = var_90.Tag
  loc_14388B3:     Set var_98 = Me.TxtGrid
  loc_14388B9:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_14388C1:     var_9C.Text = var_94
  loc_14388DD:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_14388E2:     Call Proc_338_94_FDFE34(arg_14)
  loc_14388EB:     Set var_8C = Me.FGrid
  loc_1438908:     Set var_8C = Me.TxtGrid
  loc_143890E:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_1438916:     var_90.Visible = FGrid.DispID_8001
  loc_1438922:     Exit Sub
  loc_1438923:   End If
  loc_1438936:   var_B0 = CLng(Me.FGrid.Col)
  loc_1438946:   If (var_B0 = CLng(&H16)) Then
  loc_1438966:     Set var_9C = Me.FGPoint
  loc_1438971:     Set var_98 = Nothing
  loc_143899F:     Proc_6_69_134A630(Me.DGGod, Me.TxtGrid, KeyCode, global_84, Shift, &HFF)
  loc_1438A0E:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1438A15:       Set var_98 = Me.DGGod
  loc_1438A34:       Proc_6_138_106E830(var_98, global_84, KeyCode, Me.FGPoint, 1)
  loc_1438A42:     End If
  loc_1438A4C:     If (CLng(Shift) = &HD) Then
  loc_1438A55:       Call Proc_338_89_1AE1714(KeyCode, var_B2, var_98, var_9C)
  loc_1438A60:       If (var_B2 = &HFF) Then
  loc_1438AAD:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_146, CByte((CInt(&H16) + 1)))
  loc_1438ABD:       End If
  loc_1438ABD:     End If
  loc_1438AC0:   Else
  loc_1438AC7:     If (var_B0 = CLng(&H19)) Then
  loc_1438B24:       Proc_6_69_134A630(Me.DGTaxStru, Me.TxtGrid, KeyCode, global_216, Shift, &HFF, 1, Nothing)
  loc_1438B96:       If ((Me.FGPoint.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1438BC0:         Proc_6_138_106E830(Me.DGTaxStru, global_216, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1438BCE:       End If
  loc_1438BD8:       If (CLng(Shift) = &HD) Then
  loc_1438BE1:         Call Proc_338_89_1AE1714(KeyCode, var_B2, 0, 0)
  loc_1438BEC:         If (var_B2 = &HFF) Then
  loc_1438C39:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_146, CByte((CInt(&H19) + 1)), 0)
  loc_1438C49:         End If
  loc_1438C49:       End If
  loc_1438C4C:     Else
  loc_1438C53:       If (var_B0 = CLng(&H1B)) Then
  loc_1438CB0:         Proc_6_69_134A630(Me.DGSaleAc, Me.TxtGrid, KeyCode, global_220, Shift, &HFF, 1, Nothing)
  loc_1438D22:         If ((Me.FGPoint.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1438D4C:           Proc_6_138_106E830(Me.DGSaleAc, global_220, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1438D5A:         End If
  loc_1438D64:         If (CLng(Shift) = &HD) Then
  loc_1438D6D:           Call Proc_338_89_1AE1714(KeyCode, var_B2, &H1B, 0)
  loc_1438D78:           If (var_B2 = &HFF) Then
  loc_1438DC5:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_146, CByte((CInt(&H1B) + 1)), 0)
  loc_1438DD5:           End If
  loc_1438DD5:         End If
  loc_1438DD8:       Else
  loc_1438DDF:         If (var_B0 = CLng(2)) Then
  loc_1438DED:           If (global_100 = "Yes") Then
  loc_1438E0D:             Set var_9C = Me.FGPoint
  loc_1438E46:             Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF, 1, Nothing)
  loc_1438E5F:           Else
  loc_1438E7C:             Set var_9C = Me.FGPoint
  loc_1438EB5:             Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF, 2, Nothing)
  loc_1438ECB:           End If
  loc_1438F24:           If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1438F4A:             Proc_6_138_106E830(Me.DGItem, global_60, KeyCode, Me.FGPoint, var_9C, 0)
  loc_1438F58:           End If
  loc_1438F62:           If (CLng(Shift) = &HD) Then
  loc_1438F6B:             Call Proc_338_89_1AE1714(KeyCode, var_B2, var_9C, 0)
  loc_1438F76:             If (var_B2 = &HFF) Then
  loc_1438FC3:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_146, CByte((CInt(&HB) + 1)), 0)
  loc_1438FD3:             End If
  loc_1438FD3:           End If
  loc_1438FD6:         Else
  loc_1438FDD:           If (var_B0 = CLng(9)) Then
  loc_1438FE6:             Call Proc_338_89_1AE1714(KeyCode, var_B2, 5, 0)
  loc_1438FF1:             If (var_B2 = &HFF) Then
  loc_143903E:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_146, CByte((CInt(&H16) + 1)), 0)
  loc_143904E:             End If
  loc_1439051:           Else
  loc_1439058:             If (var_B0 = CLng(&HB)) Then
  loc_1439061:               Call Proc_338_89_1AE1714(KeyCode, var_B2, &HB, 0)
  loc_143906C:               If (var_B2 = &HFF) Then
  loc_14390B9:                 Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_146, CByte((CInt(&HB) + 1)), 0)
  loc_14390C9:               End If
  loc_14390CC:             Else
  loc_14390D3:               If (var_B0 = CLng(5)) Then
  loc_1439116:                 If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_146 = &HFF))) Then
  loc_143911F:                   Call Proc_338_89_1AE1714(KeyCode, var_B2, 0, 0)
  loc_143912A:                   If (var_B2 = &HFF) Then
  loc_1439177:                     Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_146, CByte((CInt(&H16) + 1)), 0)
  loc_1439187:                   End If
  loc_1439187:                 End If
  loc_143918A:               Else
  loc_1439191:                 If (var_B0 = CLng(6)) Then
  loc_14391D4:                   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_146 = &HFF))) Then
  loc_14391DD:                     Call Proc_338_89_1AE1714(KeyCode, var_B2, &HB, 0)
  loc_14391E8:                     If (var_B2 = &HFF) Then
  loc_1439235:                       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_146, CByte((CInt(9) + 1)), 0)
  loc_1439245:                     End If
  loc_1439245:                   End If
  loc_1439248:                 Else
  loc_143924F:                   If (var_B0 = CLng(1)) Then
  loc_143925C:                     If (CLng(Shift) = &HD) Then
  loc_1439265:                       Call Proc_338_89_1AE1714(KeyCode, var_B2, &H16, 0)
  loc_1439270:                       If (var_B2 = &HFF) Then
  loc_14392BD:                         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_146, CByte((CInt(5) + 1)), 0)
  loc_14392E0:                         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14392E8:                         var_FC = CVar(CLng(1)) 'Long
  loc_143931B:                         If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1439330:                           Me.FGrid.Col = CVar(CLng(1))
  loc_143933B:                         Else
  loc_143934D:                           Me.FGrid.Col = CVar(CLng(5))
  loc_1439355:                         End If
  loc_1439355:                       End If
  loc_1439355:                     End If
  loc_1439355:                   End If
  loc_1439355:                 End If
  loc_1439355:               End If
  loc_1439355:             End If
  loc_1439355:           End If
  loc_1439355:         End If
  loc_1439355:       End If
  loc_1439355:     End If
  loc_1439355:   End If
  loc_1439355: End If
  loc_1439355: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '1298990
  'Data Table: 598690
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim var_B4 As TextBox
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_8C As Long
  Dim arg_10 As Integer
  loc_1298393: Proc_6_58_E06050(arg_10)
  loc_12983A4: If (KeyAscii = 0) Then
  loc_12983BA:   var_A8 = CLng(Me.FGrid.Col)
  loc_12983CA:   If (var_A8 = CLng(&H16)) Then
  loc_12983E9:     If (CBool(Me.DGGod.Visible) = &HFF) Then
  loc_12983FB:       var_AC = "Name"
  loc_1298416:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_84, arg_10)
  loc_1298448:       Proc_6_138_106E830(Me.DGGod, global_84, KeyAscii, Me.FGPoint)
  loc_1298456:     End If
  loc_1298459:   Else
  loc_1298460:     If (var_A8 = CLng(&H19)) Then
  loc_129847F:       If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_12984B0:         Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_216, arg_10, "Name")
  loc_12984E6:         Proc_6_138_106E830(Me.DGTaxStru, global_216, KeyAscii, Me.FGPoint, 0)
  loc_12984F4:       End If
  loc_12984F7:     Else
  loc_12984FE:       If (var_A8 = CLng(&H1B)) Then
  loc_129851D:         If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_129854E:           Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_220, arg_10, "Name")
  loc_1298584:           Proc_6_138_106E830(Me.DGSaleAc, global_220, KeyAscii, Me.FGPoint, 0)
  loc_1298592:         End If
  loc_1298595:       Else
  loc_129859C:         If (var_A8 = CLng(1)) Then
  loc_12985BA:           If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_12985CF:             Me.FGrid.Col = CVar(CLng(2))
  loc_12985F3:             If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_12985FA:               Set var_B4 = Me.TxtGrid
  loc_1298605:               var_AC = "Name"
  loc_1298620:               Proc_6_89_1470B00(var_B4, KeyAscii, global_60, arg_10, var_AC)
  loc_129862F:             End If
  loc_129862F:           End If
  loc_1298632:         Else
  loc_1298639:           If (var_A8 = CLng(2)) Then
  loc_1298658:             If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_1298666:               If (global_100 = "Yes") Then
  loc_1298675:                 Set var_94 = Me.TxtGrid
  loc_129867B:                 Call 0.Method_TxtGrid_KeyPress0 (0, var_B4, var_AC, 0)
  loc_129868D:                 var_86 = CInt(Len(var_B4.Text))
  loc_129869D:                 var_88 = arg_10
  loc_12986A4:                 Set var_B4 = Me.TxtGrid
  loc_12986AF:                 var_AC = "BarCode"
  loc_12986CA:                 Proc_6_89_1470B00(var_B4, KeyAscii, global_60, arg_10, var_AC, 0)
  loc_12986E5:                 Set var_94 = Me.TxtGrid
  loc_12986EB:                 Call 0.Method_TxtGrid_KeyPress0 (0, var_B4, var_AC, var_88)
  loc_129870B:                 If (Len(var_AC) = CLng(var_B4.Text)) Then
  loc_1298725:                   If (Me.AbsolutePosition > 0) Then
  loc_1298739:                     var_8C = Me.AbsolutePosition
  loc_129873F:                   Else
  loc_1298744:                     var_8C = 1
  loc_1298747:                   End If
  loc_129874A:                   arg_10 = var_88
  loc_1298777:                   Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_60, arg_10, "Name", 0)
  loc_129879D:                   If (Me.AbsolutePosition <= 0) Then
  loc_12987A9:                     Me.AbsolutePosition = var_8C
  loc_12987AE:                   End If
  loc_12987AE:                 End If
  loc_12987B1:               Else
  loc_12987DB:                 Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_60, arg_10, "Name", 0)
  loc_12987EA:               End If
  loc_12987F5:               Set var_B4 = Me.FGPoint
  loc_129880D:               Proc_6_138_106E830(Me.DGItem, global_60, KeyAscii, var_B4, arg_10)
  loc_129881B:             End If
  loc_129881E:           Else
  loc_1298825:             If (var_A8 = CLng(5)) Then
  loc_1298832:               Set var_94 = Me.TxtGrid
  loc_1298838:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_B4, var_8C, var_8C)
  loc_1298853:               Proc_6_42_129B55C(var_B4, arg_10, 8, 3)
  loc_1298862:             Else
  loc_1298869:               If Not (var_A8 = CLng(9)) Then
  loc_1298873:                 If (var_A8 = CLng(6)) Then
  loc_1298876:                 End If
  loc_1298880:                 Set var_94 = Me.TxtGrid
  loc_1298886:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_B4, 0)
  loc_12988A1:                 Proc_6_42_129B55C(var_B4, arg_10, 8)
  loc_12988B0:               Else
  loc_12988B7:                 If (var_A8 = CLng(&HB)) Then
  loc_12988C4:                   Set var_94 = Me.TxtGrid
  loc_12988CA:                   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_B4, 5)
  loc_12988E5:                   Proc_6_42_129B55C(var_B4, arg_10, 8)
  loc_12988F4:                 Else
  loc_12988FB:                   If (var_A8 = CLng(1)) Then
  loc_1298919:                     If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_129892E:                       Me.FGrid.Col = CVar(CLng(2))
  loc_1298952:                       If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_129897F:                         Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_60, arg_10, "Name")
  loc_129898E:                       End If
  loc_129898E:                     End If
  loc_129898E:                   End If
  loc_129898E:                 End If
  loc_129898E:               End If
  loc_129898E:             End If
  loc_129898E:           End If
  loc_129898E:         End If
  loc_129898E:       End If
  loc_129898E:     End If
  loc_129898E:   End If
  loc_129898E: End If
  loc_129898E: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '1216E64
  'Data Table: 598690
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As Variant
  Dim var_180 As Double
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_178 As MSHFlexGrid
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_BC As Variant
  Dim var_A8 As String
  loc_12169A4: On Error Goto loc_1216E5E
  loc_12169B3: If (KeyCode = 0) Then
  loc_12169C9:   var_A0 = CLng(Me.FGrid.Col)
  loc_12169D9:   If (var_A0 = CLng(2)) Then
  loc_12169FF:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_1216A10:       Call TxtGrid_KeyDown(KeyCode, global_144)
  loc_1216A20:       If (global_100 = "Yes") Then
  loc_1216A4D:         Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_60, Shift, "BarCode")
  loc_1216A5F:       Else
  loc_1216A89:         Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_60, Shift, "Name")
  loc_1216A98:       End If
  loc_1216A98:     End If
  loc_1216A9B:   Else
  loc_1216AA2:     If (var_A0 = CLng(&H16)) Then
  loc_1216AC8:       If ((Shift <> &HD) And (CBool(Me.DGGod.Visible) = 0)) Then
  loc_1216AD9:         Call TxtGrid_KeyDown(KeyCode, global_144)
  loc_1216AE2:         Set var_AC = Me.TxtGrid
  loc_1216AED:         var_A8 = "Name"
  loc_1216B08:         Proc_6_89_1470B00(var_AC, KeyCode, global_84, Shift, var_A8, &HFF)
  loc_1216B17:       End If
  loc_1216B1A:     Else
  loc_1216B21:       If (var_A0 = CLng(5)) Then
  loc_1216B31:         Set var_8C = Me.TxtGrid
  loc_1216B37:         Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, 0, &HFF)
  loc_1216B3F:         &HFF = var_AC.Text
  loc_1216B62:         var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1216B7A:         var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1216BA7:         var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.000"))) 'String
  loc_1216BAF:         Set var_178 = Me.FGrid
  loc_1216BB5:         LateIdCallSt
  loc_1216BEF:         var_144 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1216BF7:         var_174 = CVar(CLng(6)) 'Long
  loc_1216C2F:         var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1216C37:         var_1C4 = CVar(CLng(7)) 'Long
  loc_1216C4F:         var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1216C57:         var_124 = CVar(CLng(5)) 'Long
  loc_1216C60:         Set var_AC = Me.FGrid
  loc_1216C71:         var_A8 = CStr(var_AC.TextMatrix))
  loc_1216C7F:         var_164 = CVar(CStr((Val(var_A8) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_1216C87:         Set var_1E8 = Me.FGrid
  loc_1216C8D:         LateIdCallSt
  loc_1216CBD:       Else
  loc_1216CC4:         If (var_A0 = CLng(6)) Then
  loc_1216CD4:           Set var_8C = Me.TxtGrid
  loc_1216CDA:           Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, var_1E8, var_164, var_124, var_BC)
  loc_1216CE2:           var_1C4 = var_AC.Text
  loc_1216D05:           var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1216D1D:           var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1216D4A:           var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00000"))) 'String
  loc_1216D52:           Set var_178 = Me.FGrid
  loc_1216D58:           LateIdCallSt
  loc_1216D92:           var_144 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1216D9A:           var_174 = CVar(CLng(6)) 'Long
  loc_1216DBC:           var_180 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1216DD2:           var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1216DDA:           var_1C4 = CVar(CLng(7)) 'Long
  loc_1216DF2:           var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1216DFA:           var_124 = CVar(CLng(5)) 'Long
  loc_1216E22:           var_164 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * var_180))) 'String
  loc_1216E2A:           Set var_1E8 = Me.FGrid
  loc_1216E30:           LateIdCallSt
  loc_1216E5D:         End If
  loc_1216E5D:       End If
  loc_1216E5D:     End If
  loc_1216E5D:   End If
  loc_1216E5D: End If
  loc_1216E5D: Exit Sub
  loc_1216E5E: ' Referenced from: 12169A4
  loc_1216E5E: Proc_6_60_E63754(var_1E8, var_164, var_124, var_BC, var_1C4, var_1A4, var_180, var_174)
  loc_1216E63: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E22670
  'Data Table: 598690
  Dim arg_10 As Integer
  loc_E22658: If (Cancel = 0) Then
  loc_E22661:   Call Proc_338_89_1AE1714(Cancel, var_88)
  loc_E2266A:   arg_10 = Not(var_88)
  loc_E2266D: End If
  loc_E2266D: Exit Sub
End Sub

Private Sub Command3_Click() 'E5D4E0
  'Data Table: 598690
  loc_E5D498: On Error Goto loc_E5D4D9
  loc_E5D4C4: Call Proc_338_85_11C3AAC(global_244, CByte(Me.Check1.Value))
  loc_E5D4D2: If (var_A0 = 0) Then
  loc_E5D4D5:   GoTo loc_E5D4D9
  loc_E5D4D8: End If
  loc_E5D4D8: Exit Sub
  loc_E5D4D9: ' Referenced from: E5D4D5
  loc_E5D4D9: ' Referenced from: E5D498
  loc_E5D4D9: Proc_6_60_E63754(var_A0)
  loc_E5D4DE: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F109B8
  'Data Table: 598690
  Dim var_A4 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F108E0: Set var_A4 = Me.ListView
  loc_F1092A: Set var_BC = Me.Txt
  loc_F10930: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F10938: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F10964: Me.FrmList.Visible = False
  loc_F10994: Set var_9C = Me.Txt
  loc_F1099A: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A4)
  loc_F109A2: var_A4.SetFocus
  loc_F109B6: Exit Sub
End Sub

Private Sub DgMR_UnknownEvent_9 'F58930
  'Data Table: 598690
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F58810: On Error Goto loc_F5892A
  loc_F58822: Me.DgMR.Visible = False
  loc_F58841: If (Me.RecordCount > 0) Then
  loc_F58880:   Set var_B4 = Me.Txt
  loc_F58886:   Call 0.Method_DgMR_UnknownEvent_90 (CInt(7), var_B8)
  loc_F5888E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F588C1:   var_B0 = Me.Fields.Item("Code")
  loc_F588E0:   Set var_B4 = Me.Txt
  loc_F588E6:   Call 0.Method_DgMR_UnknownEvent_90 (CInt(7), var_B8)
  loc_F588EE:   var_B8.Tag = CStr(var_B0.Value)
  loc_F58904: End If
  loc_F5890F: Set var_A8 = Me.Txt
  loc_F58915: Call 0.Method_DgMR_UnknownEvent_90 (CInt(7))
  loc_F5891D: var_B0.SetFocus
  loc_F58929: Exit Sub
  loc_F5892A: ' Referenced from: F58810
  loc_F5892A: Proc_6_60_E63754(var_B0)
  loc_F5892F: Exit Sub
End Sub

Private Sub DgMR_UnknownEvent_1F 'EA4EC8
  'Data Table: 598690
  Dim var_A8 As Variant
  loc_EA4E48: Set var_88 = Me.DgMR
  loc_EA4E72: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA4E7A: Set var_BC = Me.DgMR
  loc_EA4EB6: Proc_6_138_106E830(Me.DgMR, global_76, CInt(7), Me.FGPoint)
  loc_EA4EC4: Exit Sub
End Sub

Private Sub DGGod_UnknownEvent_9 'FEBCD4
  'Data Table: 598690
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FEBAF8: On Error Goto loc_FEBCCD
  loc_FEBB0A: Me.DGGod.Visible = False
  loc_FEBB29: If (Me.RecordCount > 0) Then
  loc_FEBB66:   Set var_B4 = Me.TxtGrid
  loc_FEBB6C:   Call 0.Method_DGGod_UnknownEvent_90 (0, var_B8)
  loc_FEBB74:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FEBB9D:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FEBBA5:   var_EC = CVar(CLng(&H16)) 'Long
  loc_FEBBD8:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FEBBE0:   Set var_B8 = Me.FGrid
  loc_FEBBE6:   LateIdCallSt
  loc_FEBC15:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FEBC1D:   var_EC = CVar(CLng(&H17)) 'Long
  loc_FEBC3F:   var_B0 = Me.Fields.Item("Code")
  loc_FEBC50:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FEBC58:   Set var_B8 = Me.FGrid
  loc_FEBC5E:   LateIdCallSt
  loc_FEBC7A: End If
  loc_FEBC86: Set var_A8 = Me.TxtGrid
  loc_FEBC8C: Call 0.Method_DGGod_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FEBC94: var_A4 = var_B0.Visible
  loc_FEBCA6: If (var_12E = &HFF) Then
  loc_FEBCB2:   Set var_A8 = Me.TxtGrid
  loc_FEBCB8:   Call 0.Method_DGGod_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FEBCC0:   var_B0.SetFocus
  loc_FEBCCC: End If
  loc_FEBCCC: Exit Sub
  loc_FEBCCD: ' Referenced from: FEBAF8
  loc_FEBCCD: Proc_6_60_E63754(var_11C, var_EC)
  loc_FEBCD2: Exit Sub
End Sub

Private Sub DGGod_UnknownEvent_1F 'E9FB20
  'Data Table: 598690
  Dim var_A8 As Variant
  loc_E9FAA4: Set var_88 = Me.DGGod
  loc_E9FACE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9FAD6: Set var_BC = Me.DGGod
  loc_E9FB10: Proc_6_138_106E830(Me.DGGod, global_84, 0, Me.FGPoint)
  loc_E9FB1E: Exit Sub
End Sub

Private Sub Command1_Click() 'E955E8
  'Data Table: 598690
  loc_E95578: Call TopCtrl1_UnknownEvent_D()
  loc_E9557D: Call TopCtrl1_UnknownEvent_16()
  loc_E95586: Set var_88 = Me.TopCtrl1
  loc_E9558C: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030011()
  loc_E9559E: If (CBool() = &HFF) Then
  loc_E955A1:   Call TopCtrl1_UnknownEvent_12()
  loc_E955A6:   Call Command1_Click()
  loc_E955AE: Else
  loc_E955B4:   Call 0.Method_arg_50 (var_9C)
  loc_E955D5:   MsgBox("Updation Completed.", &H40, CVar(var_9C), var_DC, var_FC)
  loc_E955E5:   Exit Sub
  loc_E955E6: End If
  loc_E955E6: Exit Sub
End Sub

Private Sub BillImage_Click() 'EAA1C4
  'Data Table: 598690
  Dim var_88 As Image
  loc_EAA144: Set var_88 = Me.TopCtrl1
  loc_EAA14A: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_EAA186: If ((CStr() = "Browse") And (Me.BillImage.Tag <> vbNullString)) Then
  loc_EAA1A4:   FrmImage.ImagePath = Me.BillImage.Tag
  loc_EAA1BD:   Call 0.Method_arg_2B0 (var_B4)
  loc_EAA1C2: End If
  loc_EAA1C2: Exit Sub
End Sub

Private Sub BillImage_DblClick() '105EC08
  'Data Table: 598690
  Dim var_9C As String
  Dim var_C4 As Variant
  Dim var_88 As CommonDialog
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_D4 As String
  loc_105E9C0: On Error Goto loc_105EBA9
  loc_105E9C7: Set var_88 = Me.TopCtrl1
  loc_105E9CD: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_105E9E1: Set var_A0 = Me.TopCtrl1
  loc_105E9E7: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005((CStr() <> "Add"))
  loc_105EA0D: If ( And (CStr() <> "Edit")) Then
  loc_105EA10:   Exit Sub
  loc_105EA11: End If
  loc_105EA21: Me.CDlg.Filter = "*.*"
  loc_105EA39: Me.CDlg.Action = 1
  loc_105EA4B: Me.CDlg.FileName = 
  loc_105EA53: var_9C = CStr()
  loc_105EA60: Me.BillImage.Tag = var_9C
  loc_105EA7C: Me.CDlg.FileName = 
  loc_105EA84: var_B0 = CVar(CStr()) 'String
  loc_105EA8A: var_E4 = Trim(var_B0)
  loc_105EA93: Set var_A0 = Me.CDlg
  loc_105EA99: var_A0.FileName = 
  loc_105EAB7: var_F4 = Right(var_E4, 3)
  loc_105EAF2: var_D4 = "AVI"
  loc_105EB20: If CBool((Ucase(var_F4) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_D4)) Then
  loc_105EB31:   var_C4 = "Invalid Format"
  loc_105EB3C:   MsgBox(var_C4, &H40, var_B0, var_E4, var_F4)
  loc_105EB4F: Else
  loc_105EB66:   Set var_88 = Me.CDlg
  loc_105EB6C:   var_88.FileName = var_C4
  loc_105EB74:   var_B0 = CVar(CStr(var_D4)) 'String
  loc_105EB7E:   Me.var_88.LoadPicture var_B0, var_194, var_1A4, var_A0, 
  loc_105EB93:   Me.BillImage.Picture = var_A0
  loc_105EBA8: End If
  loc_105EBA8: Exit Sub
  loc_105EBA9: ' Referenced from: 105E9C0
  loc_105EBB1: Set var_88 = Err()
  loc_105EBB7: Call 0.Method_arg_1C (var_1B0)
  loc_105EBC8: If (var_1B0 <> 0) Then
  loc_105EBE1:   Set var_88 = Err()
  loc_105EBE7:   Call 0.Method_arg_2C (var_9C, 0, var_B0)
  loc_105EBF2:   MsgBox(CVar(var_9C), var_E4, var_F4, , )
  loc_105EC05: End If
  loc_105EC05: Exit Sub
  loc_105EC06: CExtInstUnk
End Sub

Private Sub DGSaleAc_UnknownEvent_9 'FF2E9C
  'Data Table: 598690
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FF2CB4: On Error Goto loc_FF2E95
  loc_FF2CC0: Set var_A8 = Me.DGSaleAc
  loc_FF2CC6: var_A8.Visible = False
  loc_FF2CE8: If (Me.var_A8.RecordCount > 0) Then
  loc_FF2D28:   Set var_B4 = Me.TxtGrid
  loc_FF2D2E:   Call 0.Method_DGSaleAc_UnknownEvent_90 (0, var_B8)
  loc_FF2D36:   var_B8.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_FF2D56:   var_C8 = Me.FGrid.Row
  loc_FF2D5F:   var_A4 = CVar(CLng(var_C8)) 'Long
  loc_FF2D67:   var_EC = CVar(CLng(&H1B)) 'Long
  loc_FF2D9D:   var_11C = CVar(CStr(Me.var_C8.Fields.Item("Name").Value)) 'String
  loc_FF2DA5:   Set var_B8 = Me.FGrid
  loc_FF2DAB:   LateIdCallSt
  loc_FF2DD1:   var_C8 = Me.FGrid.Row
  loc_FF2DDA:   var_A4 = CVar(CLng(var_C8)) 'Long
  loc_FF2DE2:   var_EC = CVar(CLng(&H1C)) 'Long
  loc_FF2E07:   var_B0 = Me.var_C8.Fields.Item("Code")
  loc_FF2E18:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FF2E20:   Set var_B8 = Me.FGrid
  loc_FF2E26:   LateIdCallSt
  loc_FF2E42: End If
  loc_FF2E4E: Set var_A8 = Me.TxtGrid
  loc_FF2E54: Call 0.Method_DGSaleAc_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FF2E5C: var_A4 = var_B0.Visible
  loc_FF2E6E: If (var_12E = &HFF) Then
  loc_FF2E7A:   Set var_A8 = Me.TxtGrid
  loc_FF2E80:   Call 0.Method_DGSaleAc_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FF2E88:   var_B0.SetFocus
  loc_FF2E94: End If
  loc_FF2E94: Exit Sub
  loc_FF2E95: ' Referenced from: FF2CB4
  loc_FF2E95: Proc_6_60_E63754(var_11C, var_EC)
  loc_FF2E9A: Exit Sub
End Sub

Private Sub Form_Load() '1567950
  'Data Table: 598690
  Dim var_A0 As Variant
  Dim var_C8 As Variant
  Dim var_B4 As Variant
  Dim var_D8 As TextBox
  Dim var_CC As Variant
  Dim var_D4 As Variant
  Dim var_B8 As String
  Dim var_E4 As String
  Dim unk_598722 As Connection15
  Dim var_F4 As Variant
  Dim unk_5986AD As Connection15
  Dim var_8C As Recordset15
  Dim var_B0 As Variant
  Dim var_90 As Recordset15
  Dim Me As Recordset15
  Dim var_88 As Recordset15
  Dim var_134 As Variant
  Dim var_148 As String
  loc_15668C8: On Error Goto loc_156794A
  loc_15668D5: Set var_B4 = Me.TopCtrl1
  loc_15668DB: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000B("AEDP")
  loc_15668E9: Call 0.Method_arg_50 (var_B8)
  loc_15668F1: var_C8 = CVar(var_B8) 'String
  loc_15668F9: Set var_B4 = Me.TopCtrl1
  loc_15668FF: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030007(var_C8)
  loc_156691A: ReDim Preserve global_192(0 To 0)
  loc_1566934: ReDim Preserve global_196(0 To 0)
  loc_1566950: Me.DGParty.Left = CVar(CDbl(&HF))
  loc_1566966: Set var_D4 = Me.Txt
  loc_156696C: Call 0.Method_Form_Load0 (CInt(4), var_D8)
  loc_1566987: Set var_B4 = Me.Txt
  loc_156698D: Call 0.Method_Form_Load0 (CInt(4), var_CC)
  loc_15669A5: var_A0 = CVar(((var_CC.Top + var_D8.Height) + CDbl(&H1E))) 'Single
  loc_15669B4: Me.DGParty.Top = CVar(CDbl(&HF))
  loc_15669D4: Set var_B4 = Me.Txt
  loc_15669DA: Call 0.Method_Form_Load0 (CInt(5), var_CC)
  loc_15669F9: Me.DGPartyBillNo.Left = CVar(var_CC.Left)
  loc_1566A15: Set var_D4 = Me.Txt
  loc_1566A1B: Call 0.Method_Form_Load0 (CInt(5), var_D8)
  loc_1566A36: Set var_B4 = Me.Txt
  loc_1566A3C: Call 0.Method_Form_Load0 (CInt(5), var_CC)
  loc_1566A54: var_A0 = CVar(((var_CC.Top + var_D8.Height) + CDbl(&H1E))) 'Single
  loc_1566A63: Me.DGPartyBillNo.Top = CVar(var_CC.Left)
  loc_1566A83: Set var_B4 = Me.Txt
  loc_1566A89: Call 0.Method_Form_Load0 (CInt(1), var_CC)
  loc_1566AA8: Me.DGVType.Left = CVar(var_CC.Left)
  loc_1566AC4: Set var_D4 = Me.Txt
  loc_1566ACA: Call 0.Method_Form_Load0 (CInt(1), var_D8)
  loc_1566AEB: Call 0.Method_Form_Load0 (CInt(1), var_CC)
  loc_1566B03: var_A0 = CVar(((var_CC.Top + var_D8.Height) + CDbl(&H1E))) 'Single
  loc_1566B12: Me.DGVType.Top = CVar(var_CC.Left)
  loc_1566B2A: global_232 = MemVar_1F951AC
  loc_1566B55: unk_598722.Execute "Select * from PrinterSetup where RestCode='" & global_56 & "'", var_C8, -1
  loc_1566B66: Set global_184 = Me.Txt
  loc_1566B81: If (MemVar_1F950B8 <> 1) Then
  loc_1566B88:   Set var_B4 = Me.TopCtrl1
  loc_1566B8E:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000B(var_B4)
  loc_1566BB8:   var_F4 = CVar(Replace(CStr(var_C8), "D", "*", 1, -1, 0)) 'String
  loc_1566BC0:   Set var_CC = Me.TopCtrl1
  loc_1566BC6:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000B(var_F4)
  loc_1566BDC: End If
  loc_1566C03: unk_5986AD.Execute "Select RateInclTax from depart where code='" & global_56 & "'", var_C8, -1
  loc_1566C0E: Set var_8C = var_B4
  loc_1566C32: If (var_8C.RecordCount > 0) Then
  loc_1566C44:   var_B4 = var_8C.Fields
  loc_1566C54:   var_C8 = CVar(var_B4.Item("RateInclTax")) 'Address
  loc_1566C66:   global_128 = Proc_6_38_E69628(var_C8)
  loc_1566C72: End If
  loc_1566C77: Set var_8C = Nothing
  loc_1566C87: global_56 = MemVar_1F95070 & "PURC"
  loc_1566C9B: var_B0 = "Select E.ImportOptionInPurchase,E.AcFieldAlterable,E.AddModifyEntryInBackDate,E.PurChaseGodown,G.Name PurChaseGodownName,E.BarCodeFeatureInPurchase,E.ItemRateInPurchaseBillBasedOn From Enviro E Left Join GodownMast G On E.PurChaseGodown=G.Code WHERE E.LOGSITE_CODE="
  loc_1566CAB: Proc_6_17_EAAE40(var_C8, MemVar_1F95078, var_B0, var_134)
  loc_1566CB3: var_F4 = -1 & var_C8 
  loc_1566CCA: unk_5986AD.Execute CStr(var_F4 & vbNullString), var_B4, var_B4
  loc_1566CD5: Set var_90 = var_B4
  loc_1566CFD: If (var_90.RecordCount > 0) Then
  loc_1566D3D:   global_256 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("AddModifyEntryInBackDate"))))))
  loc_1566D7E:   global_252 = Proc_6_38_E69628(CVar(var_90.Fields.Item("AcFieldAlterable")))
  loc_1566DB9:   global_224 = Proc_6_38_E69628(CVar(var_90.Fields.Item("PurchaseGodown")))
  loc_1566DF4:   global_228 = Proc_6_38_E69628(CVar(var_90.Fields.Item("PurchaseGodownName")))
  loc_1566E3E:   global_180 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ItemRateInPurchaseBillBasedOn"))))))
  loc_1566E7F:   global_100 = Proc_6_38_E69628(CVar(var_90.Fields.Item("BarCodeFeatureInPurchase")))
  loc_1566EC5:   If (Proc_6_38_E69628(CVar(var_90.Fields.Item("ImportOptionInPurchase"))) = "Yes") Then
  loc_1566ED4:     Me.CmdImport.Visible = True
  loc_1566EDC:   End If
  loc_1566EDC: End If
  loc_1566EE6: Set global_64 = New 
  loc_1566EF8: Me.CursorLocation = 3
  loc_1566F10: If (OpenAs = "Expense") Then
  loc_1566F31:   var_B8 = "Select SubCode As Code,Name,(Add1+' '+Add2) As Address,C.CityName,GSTIN TINNo,Nature From SubGroup Left Join City C on SubGroup.CityCode=C.CityCode Where ActiveYN=1 and (Subgroup.LOGSITE_CODE='" & MemVar_1F95078
  loc_1566F42:   Me.Open CVar(OpenAs & "' or Subgroup.LOGSITE_CODE='HO') and Nature in ('Customer','Supplier','Cash') Order by Name"), CVar(MemVar_1F95044), 3
  loc_1566F50: Else
  loc_1566F6E:   var_B8 = "Select SubCode As Code,Name,(Add1+' '+Add2) As Address,C.CityName,GSTIN TINNo,Nature From SubGroup Left Join City C on SubGroup.CityCode=C.CityCode Where ActiveYN=1 and (Subgroup.LOGSITE_CODE='" & MemVar_1F95078
  loc_1566F7F:   Me.Open CVar(OpenAs & "' or Subgroup.LOGSITE_CODE='HO') and Nature in ('Supplier','Cash') Order by Name"), CVar(MemVar_1F95044), 3
  loc_1566F8A: End If
  loc_1566F93: CVarUnk
  loc_1566F98: VerifyVarObj
  loc_1566F9E: Set var_B4 = Me.DGParty
  loc_1566FA4: LateIdStAd
  loc_1566FCE: Me.DGParty.CursorLocation = 3
  loc_1566FF1: var_B8 = "Select PartyBillNo As PartyBillNoCd,PartyBillNo As PartyBillNoNm,Party from purch1 Where (purch1.LOGSITE_CODE='" & MemVar_1F95078
  loc_1567002: Me.Open CVar(var_B8 & "' or purch1.LOGSITE_CODE='HO') "), CVar(MemVar_1F95044), 3
  loc_1567016: CVarUnk
  loc_156701B: VerifyVarObj
  loc_1567027: LateIdStAd
  loc_156703F: Set global_80 = New 
  loc_1567051: Me.DGPartyBillNo.CursorLocation = 3
  loc_1567069: If (OpenAs = "Expense") Then
  loc_1567072:   Call 0.Method_arg_54 ("Expense Voucher", Me.DGPartyBillNo, New, 1, -1, Me.DGPartyBillNo)
  loc_1567077: End If
  loc_156708A: If (OpenAs = "Expense") Then
  loc_15670B2:   var_E4 = "Select V_Type As Code,Description As Name,NCat,ContraType From Voucher_Type Where LogSite_Code='" & MemVar_1F95078 & "' and Site_Code='"
  loc_15670CA:   Me.Open CVar(var_E4 & MemVar_1F95070 & "' and Ncat In ('EXR','EXC','CRN') Order by Description"), CVar(MemVar_1F95044), 3
  loc_15670DE: Else
  loc_1567103:   var_E4 = "Select V_Type As Code,Description As Name,NCat,ContraType From Voucher_Type Where LogSite_Code='" & MemVar_1F95078 & "' and Site_Code='"
  loc_1567111:   var_C8 = CVar(var_E4 & MemVar_1F95070 & "' and Category in('PurchBill') Order by Description") 'String
  loc_156711B:   Me.Open var_C8, CVar(MemVar_1F95044), 3
  loc_156712C: End If
  loc_1567135: CVarUnk
  loc_156713A: VerifyVarObj
  loc_1567146: LateIdStAd
  loc_1567178: unk_5986AD.Execute "Select ShortName,Code From Depart Where Code='" & MemVar_1F951A8 & "'", var_C8, -1
  loc_1567183: Set var_88 = Me.DGVType
  loc_15671A7: If (var_88.RecordCount > 0) Then
  loc_15671DB:   global_236 = CStr(var_88.Fields.Item("ShortName").Value)
  loc_15671FE:   var_B4 = var_88.Fields
  loc_1567206:   var_CC = var_B4.Item("Code")
  loc_156720E:   var_C8 = var_CC.Value
  loc_156721D:   global_240 = CStr(var_C8)
  loc_156722E: End If
  loc_1567238: Set global_72 = New 
  loc_156724A: Me.CursorLocation = 3
  loc_1567262: If (OpenAs = "Expense") Then
  loc_1567270:   Proc_6_7_F26918(var_C8, MemVar_1F950F4, var_B4, var_B4, global_80, 1, -1)
  loc_156728C:   var_B0 = "Select DISTINCT P.DocId as SearchCode,P.DocID,P.LogSite_Code,P.Site_Code From Purch1 P Inner JOIN VOUCHER_TYPE V ON (P.VTYPE=V.V_TYPE And P.logSite_Code=V.LogSite_Code) WHERE P.VDATE>="
  loc_15672BB:   Me.Open var_B0 & var_C8 & " AND P.LogSite_Code='" & CVar(MemVar_1F95078) & "' aND v.Ncat In ('EXR','EXC','CRN') ORDER BY P.DOCID", CVar(MemVar_1F95044), 3
  loc_15672D0: Else
  loc_15672DB:   Proc_6_7_F26918(var_C8, MemVar_1F950F4, 1, -1, 1)
  loc_15672F7:   var_B0 = "Select DISTINCT P.DocId as SearchCode,P.DocID,P.LogSite_Code,P.Site_Code From Purch1 P Inner JOIN VOUCHER_TYPE V ON (P.VTYPE=V.V_TYPE And P.logSite_Code=V.LogSite_Code) WHERE P.VDATE>="
  loc_15672FF:   var_F4 = var_B0 & var_C8 
  loc_1567326:   Me.Open var_F4 & " AND P.LogSite_Code='" & CVar(MemVar_1F95078) & "' aND v.category in('PurchBill') ORDER BY P.DOCID", CVar(MemVar_1F95044), 3
  loc_1567338: End If
  loc_1567342: Set global_60 = New 
  loc_1567354: Me.Recordset15.CursorLocation = 3
  loc_1567364: If (global_100 = "Yes") Then
  loc_1567385:   var_B8 = "Select I.Code,I.BarCode,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.ConvRatio,I.Unit,I.IssueUnit,I.SChrgApp,IG.Name as ItemGroup,DispCode,IC.taxStru,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp,IC.taxStru,I.DiscApp as IDiscApp,I.Purchrate as IPurchRate,TS.Name as TaxStruName,IC.AcName As SaleAcCode,SG.Name As SaleAcName From (((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left Join Depart D On D.Code=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode) Left Join (Select Distinct Code,Name From Taxstru Where LOGSITE_CODE='" & MemVar_1F95078
  loc_156738C:   var_E4 = var_B8 & "' or LOGSITE_CODE='HO') TS on TS.Code=IC.TaxStru left Join SubGroup SG On SG.SubCode=IC.AcName Where (I.LOGSITE_CODE='"
  loc_156739A:   var_C8 = CVar(var_E4 & MemVar_1F95078 & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' And IC.CatType='Expense/Income' And I.ActiveYN<>'No' Order by I.BarCode") 'String
  loc_15673A4:   Me.Open var_C8, CVar(MemVar_1F95044), 3
  loc_15673B8: Else
  loc_15673D6:   var_B8 = "Select I.Code,I.BarCode,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.ConvRatio,I.Unit,I.IssueUnit,I.SChrgApp,IG.Name as ItemGroup,DispCode,IC.taxStru,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp,IC.taxStru,I.DiscApp as IDiscApp,I.Purchrate as IPurchRate,TS.Name as TaxStruName,IC.AcName As SaleAcCode,SG.Name As SaleAcName From (((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left Join Depart D On D.Code=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode) Left Join (Select Distinct Code,Name From Taxstru Where LOGSITE_CODE='" & MemVar_1F95078
  loc_15673DD:   var_E4 = var_B8 & "' or LOGSITE_CODE='HO') TS on TS.Code=IC.TaxStru left Join SubGroup SG On SG.SubCode=IC.AcName Where (I.LOGSITE_CODE='"
  loc_15673EB:   var_C8 = CVar(var_E4 & MemVar_1F95078 & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' And IC.CatType='Expense/Income' And I.ActiveYN<>'No' Order by I.Name") 'String
  loc_15673F5:   Me.Open var_C8, CVar(MemVar_1F95044), 3
  loc_1567406: End If
  loc_156740F: CVarUnk
  loc_1567414: VerifyVarObj
  loc_156741A: Set var_B4 = Me.DGItem
  loc_1567420: LateIdStAd
  loc_1567438: Set global_84 = New 
  loc_156744A: Me.DGItem.CursorLocation = 3
  loc_1567474: var_C8 = CVar("Select Code,Name From Godownmast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_156747E: Me.Open var_C8, CVar(MemVar_1F95044), 3
  loc_1567492: CVarUnk
  loc_1567497: VerifyVarObj
  loc_156749D: Set var_B4 = Me.DGGod
  loc_15674A3: LateIdStAd
  loc_15674BB: Set global_216 = New 
  loc_15674D0: Me.DGGod.CursorLocation = 3
  loc_15674F3: var_B8 = "SELECT Distinct TaxStru.Code as Code, TaxStru.Name as name FROM TaxStru INNER JOIN ItemCatMast ON TaxStru.Code = ItemCatMast.TaxStru where (TaxStru.LOGSITE_CODE='" & MemVar_1F95078
  loc_15674FA: var_E4 = var_B8 & "' or TaxStru.LOGSITE_CODE='HO') and ItemCatMast.RestCode='"
  loc_1567515: Me.Recordset15.Open CVar(var_E4 & MemVar_1F95078 & "PURC' order by taxstru.name "), CVar(MemVar_1F95044), 2
  loc_1567532: CVarUnk
  loc_1567537: VerifyVarObj
  loc_156753D: Set var_B4 = Me.DGTaxStru
  loc_1567543: LateIdStAd
  loc_1567570: Me.DGTaxStru.CursorLocation = 3
  loc_156759A: var_C8 = CVar("Select SubCode As Code,Name From ViewSubGroup Where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND Left(MainGrCodeS,3) IN ('230','240','280','040') Order by Name") 'String
  loc_15675A7: Me.Recordset15.Open var_C8, CVar(MemVar_1F95044), 2
  loc_15675BE: CVarUnk
  loc_15675C3: VerifyVarObj
  loc_15675C9: Set var_B4 = Me.DGSaleAc
  loc_15675CF: LateIdStAd
  loc_1567610: Call 0.Method_arg_50 (var_E4, "SELECT COUNT(*) FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F95078 & "' and ENAME='", var_C8, -1, var_B4, var_CC, 0, var_D4)
  loc_1567637: unk_5986AD.Execute var_F4 & var_E4 & "' AND UNAME='" & MemVar_1F950C8 & "'", var_B4, New
  loc_156763F: 3 = var_B4.Fields
  loc_1567647: var_B4 = var_CC.Item(-1)
  loc_156764F: global_216 = var_D4.Value
  loc_1567680: If (var_F4 > 0) Then
  loc_15676C9:   Call 0.Method_arg_50 (var_E4, "SELECT DOCID FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F95078 & "' and ENAME='", var_C8, -1, var_B4, var_CC, 0)
  loc_15676F0:   unk_5986AD.Execute var_D4 & var_E4 & "' AND UNAME='" & MemVar_1F950C8 & "'", var_F4, "SearchCode='"
  loc_15676F8:   0 = var_B4.Fields
  loc_1567700:   var_148 = var_CC.Item(1)
  loc_1567708:    = var_D4.Value
  loc_1567727:   Me.Find CStr(var_F4 & "'"), , 
  loc_1567753: End If
  loc_156776A: If (Me.RecordCount > 0) Then
  loc_1567781:   If (Me.EOF = &HFF) Then
  loc_156778A:     Me.MoveLast
  loc_156778F:   End If
  loc_156778F: End If
  loc_156779A: If (global_100 = "Yes") Then
  loc_15677A9:   Me.TxtBarCode.Visible = True
  loc_15677BC:   Set var_B4 = Me.Label1
  loc_15677C2:   Call 0.Method_Form_Load0 (&HB, var_CC)
  loc_15677CA:   var_CC.Visible = True
  loc_15677D6: End If
  loc_15677DF: Call 0.Method_arg_160 (var_B4)
  loc_15677ED: Call 0.Method_arg_164 (var_B4)
  loc_1567818: Call Proc_338_93_FECC18(Proc_5_1_100EC1C("INI", Me))
  loc_1567832: Me.LblUser.Left = CDbl(500)
  loc_1567849: Me.LblUser.Top = CDbl(7800)
  loc_1567860: Me.LblLDt.Top = CDbl(8160)
  loc_1567877: Me.LblLDt.Left = CDbl(500)
  loc_1567886: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_156789E: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_15678B4: Me.FrInVoiceType.BackColor = CLng(MemVar_1F951B4)
  loc_15678CB: Set var_B4 = Me.Opt
  loc_15678D1: Call 0.Method_Form_Load0 (CInt(0), var_CC)
  loc_15678D9: var_CC.BackColor = CLng(MemVar_1F951B4)
  loc_15678F4: Set var_B4 = Me.Opt
  loc_15678FA: Call 0.Method_Form_Load0 (CInt(1), var_CC)
  loc_1567902: var_CC.BackColor = CLng(MemVar_1F951B4)
  loc_156791D: Set var_B4 = Me.Opt
  loc_1567923: Call 0.Method_Form_Load0 (CInt(2), var_CC)
  loc_156792B: var_CC.BackColor = CLng(MemVar_1F951B4)
  loc_1567937: Call Proc_338_87_148C3DC(global_72)
  loc_156793C: Call Proc_338_90_1A00AE0()
  loc_1567946: Set var_90 = Nothing
  loc_1567949: Exit Sub
  loc_156794A: ' Referenced from: 15668C8
  loc_156794A: Proc_6_60_E63754()
  loc_156794F: Exit Sub
End Sub

Private Sub Form_Resize() 'ED1908
  'Data Table: 598690
  Dim var_8C As Label
  loc_ED1866: Call 0.Method_arg_50 (var_88)
  loc_ED1878: Me.LblFormCaption.Caption = var_88
  loc_ED1891: Me.LblFormCaption.Left = CDbl(0)
  loc_ED189D: Set var_A0 = Me.TopCtrl1
  loc_ED18A3: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010006()
  loc_ED18B0: Set var_8C = Me.TopCtrl1
  loc_ED18B6: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010004()
  loc_ED18D0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED18EB: Call 0.Method_arg_100 (var_B8)
  loc_ED18FD: Me.LblFormCaption.Width = var_B8
  loc_ED1905: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'EAFE18
  'Data Table: 598690
  loc_EAFD8B: Set global_60 = Nothing
  loc_EAFD9D: Set global_76 = Nothing
  loc_EAFDA9: global_52 = 0
  loc_EAFDB7: Set global_184 = Nothing
  loc_EAFDC9: Set global_64 = Nothing
  loc_EAFDDB: Set global_80 = Nothing
  loc_EAFDED: Set global_84 = Nothing
  loc_EAFDFF: Set global_216 = Nothing
  loc_EAFE14: Exit Sub
End Sub

Private Sub Form_Activate() 'F30FC0
  'Data Table: 598690
  Dim var_D0 As Integer
  Dim var_8C As String
  Dim unk_5986AD As Connection15
  Dim var_BC As Variant
  Dim var_C0 As Fields15
  Dim var_D4 As Field20
  loc_F30ED2: var_D0 = 0
  loc_F30EEF: var_8C = "Select Count(*) From SundryType WHERE (LOGSITE_CODE='" & MemVar_1F95078
  loc_F30F0D: unk_5986AD.Execute var_8C & "') and V_Type='" & MemVar_1F95078 & "PURC'", var_B8, -1
  loc_F30F15: var_BC = var_BC.Fields
  loc_F30F1D: var_D0 = var_C0.Item(var_C0)
  loc_F30F25: var_D4 = var_D4.Value
  loc_F30F50: If (var_E4 <= 0) Then
  loc_F30F6C:   MsgBox("Voucher wise Sundry not defined", 0, var_E4, var_104, var_124)
  loc_F30F89:   Me.Global.Unload Me
  loc_F30F91:   Exit Sub
  loc_F30F92: End If
  loc_F30F98: Call 0.Method_arg_50 (var_8C)
  loc_F30FAA: Me.LblFormCaption.Caption = var_8C
  loc_F30FBA: Set var_88 = Nothing
  loc_F30FBD: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E24D3C
  'Data Table: 598690
  loc_E24D21: If (global_52 = &HFF) Then
  loc_E24D31:   Me.Global.Unload Me
  loc_E24D39: End If
  loc_E24D39: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'EDFC3C
  'Data Table: 598690
  loc_EDFB88: On Error Goto loc_EDFC34
  loc_EDFBB9: If (((global_100 = "Yes") And (Shift = 1)) And (Me.TxtBarCode.Visible = &HFF)) Then
  loc_EDFBC6:   Me.TxtBarCode.SetFocus
  loc_EDFBCE: End If
  loc_EDFBE6: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_EDFC2B: If CBool((Ucase(Chr(CLng(KeyCode))) = "E") And (Shift = 4)) Then
  loc_EDFC2E:   Call Command1_Click()
  loc_EDFC33: End If
  loc_EDFC33: Exit Sub
  loc_EDFC34: ' Referenced from: EDFB88
  loc_EDFC34: Proc_6_60_E63754(Shift)
  loc_EDFC39: Exit Sub
End Sub

Private Sub TxtGt_GotFocus(Index As Integer) 'ED0B30
  'Data Table: 598690
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ED0A92: Set var_88 = Me.TxtGt
  loc_ED0A98: Call 0.Method_TxtGt_GotFocus0 (Index)
  loc_ED0AA6: Proc_6_74_E23240(var_8C)
  loc_ED0AB2: Call Proc_338_94_FDFE34(var_8C)
  loc_ED0AC6: Set var_88 = Me.TxtGt
  loc_ED0ACC: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ED0AD4: var_8C.SelStart = 0
  loc_ED0AED: Set var_88 = Me.TxtGt
  loc_ED0AF3: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ED0B0E: Set var_90 = Me.TxtGt
  loc_ED0B14: Call 0.Method_TxtGt_GotFocus0 (Index, var_98)
  loc_ED0B1C: var_98.SelLength = Len(var_8C.Text)
  loc_ED0B2F: Exit Sub
End Sub

Private Sub TxtGt_KeyDown(KeyCode As Integer, Shift As Integer) 'F60524
  'Data Table: 598690
  Dim var_88 As DataGrid
  loc_F6045D: var_C6 = Me.FrmList.Visible
  loc_F60498: If (((((CBool(Me.DGItem.Visible) = 0) And (CBool(Me.DGParty.Visible) = 0)) And (CBool(Me.DGPartyBillNo.Visible) = 0)) And (var_C6 = 0)) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_F604BA:   Set var_88 = Me.TxtGt
  loc_F604C0:   Call 0.Method_TxtGt_KeyDown8 (var_C6, KeyCode)
  loc_F604D0:   If ( And (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) = (var_C6 - 1))) Then
  loc_F604D6:     Call Proc_338_95_F0C0BC(KeyCode)
  loc_F604DB:     Exit Sub
  loc_F604DC:   End If
  loc_F604DC: End If
  loc_F604F1: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F604FA:   Proc_6_75_E5335C(Shift)
  loc_F604FF: End If
  loc_F60514: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F6051D:   Proc_6_76_E533C8(Shift, arg_14)
  loc_F60522: End If
  loc_F60522: Exit Sub
End Sub

Private Sub TxtGt_KeyPress(KeyAscii As Integer) 'F7B400
  'Data Table: 598690
  Dim var_8C As Variant
  Dim arg_10 As Integer
  Dim var_FC As TextBox
  loc_F7B2D2: Set var_88 = Me.TxtGt
  loc_F7B2D8: Call 0.Method_TxtGt_KeyPress0 (KeyAscii)
  loc_F7B2F3: Proc_6_42_129B55C(var_8C, arg_10, 8)
  loc_F7B2FF: On Error Goto loc_F7B3FE
  loc_F7B30F: Set var_88 = Me.LblCap
  loc_F7B315: Call 0.Method_TxtGt_KeyPress0 (KeyAscii, var_8C, var_98)
  loc_F7B31D: 2 = var_8C.Tag
  loc_F7B354: If (Trim(CVar(var_98)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_F7B35D:   If (arg_10 = &H2D) Then
  loc_F7B362:     arg_10 = 0
  loc_F7B365:   End If
  loc_F7B372:   Set var_88 = Me.TxtGt
  loc_F7B378:   Call 0.Method_TxtGt_KeyPress0 (KeyAscii, var_8C, var_98)
  loc_F7B380:   arg_10 = var_8C.Text
  loc_F7B3D0:   Set var_90 = Me.TxtPer
  loc_F7B3D6:   Call 0.Method_TxtGt_KeyPress0 (KeyAscii, var_FC, CStr(Format(CVar(((Val(var_98) * CDbl(&H64)) / global_208)), "0.00")), 1)
  loc_F7B3DE:   var_FC.Text = 1
  loc_F7B3FE:   ' Referenced from: F7B2FF
  loc_F7B3FE: End If
  loc_F7B3FE: Exit Sub
End Sub

Private Sub TxtGt_LostFocus(Index As Integer) 'E4C354
  'Data Table: 598690
  loc_E4C332: Set var_88 = Me.TxtGt
  loc_E4C338: Call 0.Method_TxtGt_LostFocus0 (Index)
  loc_E4C346: Proc_6_73_E23294(var_8C)
  loc_E4C352: Exit Sub
End Sub

Private Sub TxtGt_Validate(Cancel As Boolean) 'E016E4
  'Data Table: 598690
  loc_E016DE: Call Proc_338_101_17C1F88(Cancel)
  loc_E016E3: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E62EC4
  'Data Table: 598690
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E62E8F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E62EA2: Set var_A8 = Me.TxtGrid
  loc_E62EA8: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E62EB0: var_AC.Visible = False
  loc_E62EBC: Call Proc_338_94_FDFE34()
  loc_E62EC1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E66C38
  'Data Table: 598690
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E66BF4: Set var_88 = Me.TxtGrid
  loc_E66BFA: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E66C14: If (var_8C.Visible = 0) Then
  loc_E66C2D:   Me.FGrid.BackColorSel = CVar(CLng(global_104))
  loc_E66C35: End If
  loc_E66C35: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E00EF4
  'Data Table: 598690
  Dim arg_1860 As Integer
  loc_E00EEC: Call Proc_338_88_F7163C()
  loc_E00EF1: Exit Sub
  loc_E00EF2: arg_1860 = 
End Sub

Private Sub FGrid_UnknownEvent_A '12BE9C0
  'Data Table: 598690
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_12BE364: Set var_88 = Me.TopCtrl1
  loc_12BE36A: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_12BE3AF: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_12BE3B8:   Call Form_KeyDown(Cancel, arg_10)
  loc_12BE3BD: End If
  loc_12BE3C1: Set var_88 = Me.TopCtrl1
  loc_12BE3C7: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_12BE3E0: If (CStr() = "Browse") Then
  loc_12BE3E3:   Exit Sub
  loc_12BE3E4: End If
  loc_12BE458: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_12BE471:   Me.FGrid.CellBackColor = CVar(CLng(global_104))
  loc_12BE481:   var_9C = "+{Tab}"
  loc_12BE487:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_12BE491:   Cancel = 0
  loc_12BE497: Else
  loc_12BE4A1:   var_B0 = Me.FGrid.Rows
  loc_12BE4EE:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_12BE507:     Me.FGrid.CellBackColor = CVar(CLng(global_104))
  loc_12BE51D:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_12BE527:     Cancel = 0
  loc_12BE52A:   End If
  loc_12BE52A: End If
  loc_12BE530: global_144 = Cancel
  loc_12BE556: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_12BE57A: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_12BE590:   var_EC = CLng(Me.FGrid.Col)
  loc_12BE5A0:   If (var_EC = CLng(2)) Then
  loc_12BE5B6:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BE5CE:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BE5D3:     var_11C = vbNullString
  loc_12BE5DD:     Set var_B4 = Me.FGrid
  loc_12BE5E3:     LateIdCallSt
  loc_12BE60E:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BE616:     var_FC = CVar(CLng(&HC)) 'Long
  loc_12BE61B:     var_11C = vbNullString
  loc_12BE625:     Set var_A0 = Me.FGrid
  loc_12BE62B:     LateIdCallSt
  loc_12BE650:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BE658:     var_FC = CVar(CLng(5)) 'Long
  loc_12BE65D:     var_11C = vbNullString
  loc_12BE667:     Set var_A0 = Me.FGrid
  loc_12BE66D:     LateIdCallSt
  loc_12BE682:   Else
  loc_12BE689:     If Not (var_EC = CLng(1)) Then
  loc_12BE693:       If (var_EC = CLng(5)) Then
  loc_12BE696:       End If
  loc_12BE6A9:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BE6C1:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BE6C6:       var_11C = vbNullString
  loc_12BE6D0:       Set var_B4 = Me.FGrid
  loc_12BE6D6:       LateIdCallSt
  loc_12BE6F1:     Else
  loc_12BE6F8:       If (var_EC = CLng(9)) Then
  loc_12BE70E:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BE716:         var_FC = CVar(CLng(&HE)) 'Long
  loc_12BE749:         If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_12BE75F:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BE777:           var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BE77C:           var_11C = vbNullString
  loc_12BE786:           Set var_B4 = Me.FGrid
  loc_12BE78C:           LateIdCallSt
  loc_12BE7A4:         End If
  loc_12BE7A7:       Else
  loc_12BE7AE:         If (var_EC = CLng(&HB)) Then
  loc_12BE7C4:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BE7CC:           var_FC = CVar(CLng(&HE)) 'Long
  loc_12BE7FF:           If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_12BE815:             var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BE82D:             var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BE832:             var_11C = vbNullString
  loc_12BE83C:             Set var_B4 = Me.FGrid
  loc_12BE842:             LateIdCallSt
  loc_12BE85A:           End If
  loc_12BE85D:         Else
  loc_12BE864:           If (var_EC = CLng(&H19)) Then
  loc_12BE87A:             var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BE892:             var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BE897:             var_11C = vbNullString
  loc_12BE8A1:             Set var_B4 = Me.FGrid
  loc_12BE8A7:             LateIdCallSt
  loc_12BE8D2:             var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BE8DA:             var_FC = CVar(CLng(&H1A)) 'Long
  loc_12BE8DF:             var_11C = vbNullString
  loc_12BE8E9:             Set var_A0 = Me.FGrid
  loc_12BE8EF:             LateIdCallSt
  loc_12BE904:           Else
  loc_12BE90B:             If (var_EC = CLng(&H1B)) Then
  loc_12BE921:               var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BE939:               var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BE93E:               var_11C = vbNullString
  loc_12BE948:               Set var_B4 = Me.FGrid
  loc_12BE94E:               LateIdCallSt
  loc_12BE979:               var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BE981:               var_FC = CVar(CLng(&H1C)) 'Long
  loc_12BE986:               var_11C = vbNullString
  loc_12BE990:               Set var_A0 = Me.FGrid
  loc_12BE996:               LateIdCallSt
  loc_12BE9A8:             End If
  loc_12BE9A8:           End If
  loc_12BE9A8:         End If
  loc_12BE9A8:       End If
  loc_12BE9A8:     End If
  loc_12BE9A8:   End If
  loc_12BE9A8: End If
  loc_12BE9AE: If (Cancel = &HD) Then
  loc_12BE9B6:   global_146 = 0
  loc_12BE9B9: End If
  loc_12BE9BB: Cancel = 0
  loc_12BE9BE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E11BA8
  'Data Table: 598690
  loc_E11B99: Call FGrid_UnknownEvent_C()
  loc_E11BA3: global_146 = 0
  loc_E11BA6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '125CC78
  'Data Table: 598690
  Dim var_8C As MSHFlexGrid
  Dim var_A4 As Long
  Dim var_CE As Integer
  Dim var_E0 As Variant
  Dim var_100 As Variant
  loc_125C718: Set var_8C = Me.TopCtrl1
  loc_125C71E: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_125C737: If (CStr() = "Browse") Then
  loc_125C73A:   Exit Sub
  loc_125C73B: End If
  loc_125C74E: var_A4 = CLng(Me.FGrid.Col)
  loc_125C75E: If (var_A4 = CLng(&H16)) Then
  loc_125C792:   var_CE = Asc(CStr(Ucase(Chr(CLng(Cancel)))))
  loc_125C7C8:   Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0)
  loc_125C7E7: Else
  loc_125C7EE:   If (var_A4 = CLng(2)) Then
  loc_125C858:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Asc(CStr(Ucase(Chr(CLng(Cancel))))))
  loc_125C877:   Else
  loc_125C87E:     If (var_A4 = CLng(9)) Then
  loc_125C8BF:       Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Cancel, 0)
  loc_125C8D4:     Else
  loc_125C8DB:       If (var_A4 = CLng(&HB)) Then
  loc_125C91C:         Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Cancel, 0)
  loc_125C931:       Else
  loc_125C938:         If (var_A4 = CLng(5)) Then
  loc_125C979:           Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Cancel, 0)
  loc_125C98E:         Else
  loc_125C995:           If (var_A4 = CLng(6)) Then
  loc_125C9AB:             var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_125C9B3:             var_100 = CVar(CLng(&HE)) 'Long
  loc_125C9F5:             If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_125CA0B:               var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_125CA13:               var_100 = CVar(CLng(6)) 'Long
  loc_125CA8A:               Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Cancel, 0, Val(CStr(Me.FGrid.TextMatrix))))
  loc_125CA9C:             End If
  loc_125CA9F:           Else
  loc_125CAA6:             If (var_A4 = CLng(1)) Then
  loc_125CAC4:               If (((Cancel >= &H41) And (Cancel <= &H5A)) Or ((Cancel >= &H61) And (Cancel <= &H7A))) Then
  loc_125CAD9:                 Me.FGrid.Col = CVar(CLng(2))
  loc_125CAE1:               End If
  loc_125CB1F:               Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Cancel, 0, var_100)
  loc_125CB34:             Else
  loc_125CB3B:               If (var_A4 = CLng(&H19)) Then
  loc_125CBA5:                 Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Asc(CStr(Ucase(Chr(CLng(Cancel))))), 0, Asc(CStr(Ucase(Chr(CLng(Cancel))))))
  loc_125CBC4:               Else
  loc_125CBCB:                 If (var_A4 = CLng(&H1B)) Then
  loc_125CBD9:                   If (global_252 = "Yes") Then
  loc_125CC43:                     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Asc(CStr(Ucase(Chr(CLng(Cancel))))), 0, Asc(CStr(Ucase(Chr(CLng(Cancel))))))
  loc_125CC5F:                   End If
  loc_125CC5F:                 End If
  loc_125CC5F:               End If
  loc_125CC5F:             End If
  loc_125CC5F:           End If
  loc_125CC5F:         End If
  loc_125CC5F:       End If
  loc_125CC5F:     End If
  loc_125CC5F:   End If
  loc_125CC5F: End If
  loc_125CC69: If (CLng(Cancel) <> &HD) Then
  loc_125CC71:   global_146 = &HFF
  loc_125CC74: End If
  loc_125CC74: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FF3E20
  'Data Table: 598690
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  loc_FF3C40: Set var_90 = Me.TopCtrl1
  loc_FF3C46: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_FF3C5F: If (CStr() = "Browse") Then
  loc_FF3C62:   Exit Sub
  loc_FF3C63: End If
  loc_FF3C80: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FF3C83:   Exit Sub
  loc_FF3C84: End If
  loc_FF3C95: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FF3CB7:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FF3CF1:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FF3D13:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FF3D29:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FF3D32:         Set var_118 = Me.FGrid
  loc_FF3D4D:       Else
  loc_FF3D60:         Me.FGrid.Rows = 1
  loc_FF3D86:         var_A0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_FF3D8E:         Set var_118 = Me.FGrid
  loc_FF3DBB:         Me.FGrid.FixedRows = 1
  loc_FF3DC3:       End If
  loc_FF3DC8:       Call Proc_338_101_17C1F88(&H32, FGrid.DispID_10000, var_A0)
  loc_FF3DCD:     End If
  loc_FF3DD0:   Else
  loc_FF3DF1:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_FF3E01:   End If
  loc_FF3E05:   Set var_90 = Me.FGrid
  loc_FF3E16: End If
  loc_FF3E1B: Set var_8C = Nothing
  loc_FF3E1E: Exit Sub
  loc_FF3E1F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E44BE4
  'Data Table: 598690
  Dim var_8C As TextBox
  loc_E44BB8: Call Proc_338_94_FDFE34()
  loc_E44BC8: Set var_88 = Me.TxtGrid
  loc_E44BCE: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E44BD6: var_8C.Visible = False
  loc_E44BE2: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_9 'FF3544
  'Data Table: 598690
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FF335C: On Error Goto loc_FF353D
  loc_FF3368: Set var_A8 = Me.DGTaxStru
  loc_FF336E: var_A8.Visible = False
  loc_FF3390: If (Me.var_A8.RecordCount > 0) Then
  loc_FF33D0:   Set var_B4 = Me.TxtGrid
  loc_FF33D6:   Call 0.Method_DGTaxStru_UnknownEvent_90 (0, var_B8)
  loc_FF33DE:   var_B8.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_FF33FE:   var_C8 = Me.FGrid.Row
  loc_FF3407:   var_A4 = CVar(CLng(var_C8)) 'Long
  loc_FF340F:   var_EC = CVar(CLng(&H19)) 'Long
  loc_FF3445:   var_11C = CVar(CStr(Me.var_C8.Fields.Item("Name").Value)) 'String
  loc_FF344D:   Set var_B8 = Me.FGrid
  loc_FF3453:   LateIdCallSt
  loc_FF3479:   var_C8 = Me.FGrid.Row
  loc_FF3482:   var_A4 = CVar(CLng(var_C8)) 'Long
  loc_FF348A:   var_EC = CVar(CLng(&H1A)) 'Long
  loc_FF34AF:   var_B0 = Me.var_C8.Fields.Item("Code")
  loc_FF34C0:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FF34C8:   Set var_B8 = Me.FGrid
  loc_FF34CE:   LateIdCallSt
  loc_FF34EA: End If
  loc_FF34F6: Set var_A8 = Me.TxtGrid
  loc_FF34FC: Call 0.Method_DGTaxStru_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FF3504: var_A4 = var_B0.Visible
  loc_FF3516: If (var_12E = &HFF) Then
  loc_FF3522:   Set var_A8 = Me.TxtGrid
  loc_FF3528:   Call 0.Method_DGTaxStru_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FF3530:   var_B0.SetFocus
  loc_FF353C: End If
  loc_FF353C: Exit Sub
  loc_FF353D: ' Referenced from: FF335C
  loc_FF353D: Proc_6_60_E63754(var_11C, var_EC)
  loc_FF3542: Exit Sub
End Sub

Private Sub DGPartyBillNo_UnknownEvent_9 'F3BBD4
  'Data Table: 598690
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3BACB: Me.DGPartyBillNo.Visible = False
  loc_F3BAEA: If (Me.RecordCount > 0) Then
  loc_F3BB29:   Set var_B4 = Me.Txt
  loc_F3BB2F:   Call 0.Method_DGPartyBillNo_UnknownEvent_90 (CInt(5), var_B8)
  loc_F3BB37:   var_B8.Text = CStr(Me.Fields.Item("PartyBillNoCd").Value)
  loc_F3BB6A:   var_B0 = Me.Fields.Item("PartyBillNoNm")
  loc_F3BB89:   Set var_B4 = Me.Txt
  loc_F3BB8F:   Call 0.Method_DGPartyBillNo_UnknownEvent_90 (CInt(5), var_B8)
  loc_F3BB97:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3BBAD: End If
  loc_F3BBB8: Set var_A8 = Me.Txt
  loc_F3BBBE: Call 0.Method_DGPartyBillNo_UnknownEvent_90 (CInt(5))
  loc_F3BBC6: var_B0.SetFocus
  loc_F3BBD2: Exit Sub
End Sub

Private Sub DGPartyBillNo_UnknownEvent_1F 'EA5114
  'Data Table: 598690
  Dim var_A8 As Variant
  loc_EA5094: Set var_88 = Me.DGPartyBillNo
  loc_EA50BE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA50C6: Set var_BC = Me.DGPartyBillNo
  loc_EA5102: Proc_6_138_106E830(Me.DGPartyBillNo, global_68, CInt(5), Me.FGPoint)
  loc_EA5110: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '101C640
  'Data Table: 598690
  Dim var_9C As Variant
  Dim var_90 As String
  Dim var_94 As Variant
  loc_101C41C: On Error Goto loc_101C639
  loc_101C442: Call Proc_338_93_FECC18(Proc_5_1_100EC1C("ADD", Me))
  loc_101C44D: Call Proc_338_92_10247E8(global_72)
  loc_101C45F: Set var_94 = Me.Opt
  loc_101C465: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_9C)
  loc_101C46D: var_9C.Enabled = True
  loc_101C486: Set var_94 = Me.Opt
  loc_101C48C: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_9C)
  loc_101C494: var_9C.Enabled = True
  loc_101C4AD: Set var_94 = Me.Opt
  loc_101C4B3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_9C)
  loc_101C4BB: var_9C.Enabled = True
  loc_101C4D4: Set var_94 = Me.Opt
  loc_101C4DA: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_9C)
  loc_101C4E2: var_9C.Value = True
  loc_101C4F5: Call Opt_GotFocus()
  loc_101C4FF: var_90 = CStr(MemVar_1F950EC)
  loc_101C50D: Set var_94 = Me.Txt
  loc_101C513: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_9C)
  loc_101C51B: var_9C.Text = var_90
  loc_101C53C: Me.FGrid.Col = CVar(CLng(1))
  loc_101C54A: Call Proc_338_96_10E9EB0(MemVar_1F95044, var_90)
  loc_101C55D: Set var_94 = Me.Txt
  loc_101C563: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_9C)
  loc_101C588: Set var_94 = Me.Txt
  loc_101C58E: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_9C)
  loc_101C5A4: Call Proc_338_100_17D48A8(CDate(var_90))
  loc_101C5B7: Set var_94 = Me.TopCtrl1
  loc_101C5BD: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(CInt(1))
  loc_101C5D6: If (CStr() = "Add") Then
  loc_101C5E4:   Set var_94 = Me.Txt
  loc_101C5EA:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_101C5F2:   var_9C.SetFocus
  loc_101C5FE: End If
  loc_101C603: Set var_8C = Nothing
  loc_101C60B: Set var_88 = Nothing
  loc_101C61B: Me.LblUser.Caption = vbNullString
  loc_101C630: Me.LblLDt.Caption = vbNullString
  loc_101C638: Exit Sub
  loc_101C639: ' Referenced from: 101C41C
  loc_101C639: Proc_6_60_E63754(var_9C)
  loc_101C63E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9FA58
  'Data Table: 598690
  loc_E9F9E0: On Error Goto loc_E9FA51
  loc_E9FA1A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9FA40:   Call Proc_338_93_FECC18(Proc_5_1_100EC1C("INI", Me))
  loc_E9FA4B:   Call Proc_338_90_1A00AE0(global_72)
  loc_E9FA50: End If
  loc_E9FA50: Exit Sub
  loc_E9FA51: ' Referenced from: E9F9E0
  loc_E9FA51: Proc_6_60_E63754()
  loc_E9FA56: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '13E7910
  'Data Table: 598690
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_120 As Variant
  Dim unk_5986AD As Connection15
  Dim var_F8 As Variant
  Dim var_124 As String
  Dim var_12C As String
  Dim var_B8 As Variant
  loc_13E6F34: On Error Goto loc_13E78C1
  loc_13E6F45: If (Proc_183_56_FE8B08(global_72) = &HFF) Then
  loc_13E6F48:   Exit Sub
  loc_13E6F49: End If
  loc_13E6F80: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F8, var_118) = 6) Then
  loc_13E6F94:   var_94 = Me.Bookmark 'Variant
  loc_13E6FCA:   var_134 = "Guest Folio"
  loc_13E7012:   If (Proc_6_108_101061C(MemVar_1F95044, "PayCharge", "DocID", CStr(Me.Fields.Item("SearchCode").Value)) = 0) Then
  loc_13E7015:     Exit Sub
  loc_13E7016:   End If
  loc_13E701F:   unk_5986AD.BeginTrans var_130
  loc_13E707A:   unk_5986AD.Execute CStr("Delete From Purch2 where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_13E70EC:   unk_5986AD.Execute CStr("Delete From Purch1 where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_13E715E:   unk_5986AD.Execute CStr("Delete From Sale2 where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_13E71A9:   var_120 = Me.Fields.Item("SearchCode")
  loc_13E71B1:   var_B8 = var_120.Value
  loc_13E71C2:   var_F8 = "Delete From SunTran where docid='" & var_B8 & "'" 
  loc_13E71C6:   var_124 = CStr(var_F8)
  loc_13E71D0:   unk_5986AD.Execute var_124, var_118, -1
  loc_13E720A:   Set var_11C = Me.Txt
  loc_13E7210:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_120, var_124, "Delete From Stock Where DocID='", var_B8, -1, var_13C)
  loc_13E7218:   var_13C = var_120.Text
  loc_13E7231:   unk_5986AD.Execute var_13C & var_124 & "'", var_13C, var_13C
  loc_13E7269:   Set var_11C = Me.Txt
  loc_13E726F:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_120, var_124, "Delete From Ledger where DocID='", var_B8)
  loc_13E7277:   -1 = var_120.Text
  loc_13E7287:   var_12C = var_13C & var_124 & "'"
  loc_13E7290:   unk_5986AD.Execute var_12C, 0, var_134
  loc_13E72D9:   var_168 = 0
  loc_13E72EC:   var_160 = 0
  loc_13E72F7:   var_15C = 0
  loc_13E730A:   var_154 = 0
  loc_13E7315:   var_150 = 0
  loc_13E7328:   var_148 = 0
  loc_13E7371:   Proc_154_5_10E3BD4(MemVar_1F95044, "PURCH1", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13E73C8:   var_168 = 0
  loc_13E73DB:   var_160 = 0
  loc_13E73E6:   var_15C = 0
  loc_13E73F9:   var_154 = 0
  loc_13E7404:   var_150 = 0
  loc_13E7417:   var_148 = 0
  loc_13E7460:   Proc_154_5_10E3BD4(MemVar_1F95044, "PURCH2", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13E74B7:   var_168 = 0
  loc_13E74CA:   var_160 = 0
  loc_13E74D5:   var_15C = 0
  loc_13E74E8:   var_154 = 0
  loc_13E74F3:   var_150 = 0
  loc_13E7506:   var_148 = 0
  loc_13E754F:   Proc_154_5_10E3BD4(MemVar_1F95044, "SALE2", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13E7594:   var_120 = Me.Fields.Item("SearchCode")
  loc_13E75A6:   var_168 = 0
  loc_13E75B9:   var_160 = 0
  loc_13E75C4:   var_15C = 0
  loc_13E75D7:   var_154 = 0
  loc_13E763E:   Proc_154_5_10E3BD4(MemVar_1F95044, "SUNTRAN", "DocId", &HC8, CStr(var_120.Value), 0, 0, 0)
  loc_13E7674:   Set var_11C = Me.Txt
  loc_13E767A:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_120, var_12C, 0, 0, 0)
  loc_13E7682:   var_154 = var_120.Text
  loc_13E768C:   var_16C = 0
  loc_13E769F:   var_168 = 0
  loc_13E76AA:   var_160 = 0
  loc_13E76BD:   var_15C = 0
  loc_13E7723:   Proc_154_5_10E3BD4(MemVar_1F95044, "STOCK", "DocId", &HC8, var_12C, 0, 0, 0)
  loc_13E7756:   Set var_11C = Me.Txt
  loc_13E775C:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_120, var_12C, 0, 0, 0)
  loc_13E7764:   var_15C = var_120.Text
  loc_13E776E:   var_16C = 0
  loc_13E7781:   var_168 = 0
  loc_13E778C:   var_160 = 0
  loc_13E779F:   var_15C = 0
  loc_13E77AA:   var_154 = 0
  loc_13E77BD:   var_150 = 0
  loc_13E77FC:   var_124 = "LEDGER"
  loc_13E7805:   Proc_154_5_10E3BD4(MemVar_1F95044, var_124, "DocId", &HC8, var_12C, 0, 0, 0)
  loc_13E7830:   unk_5986AD.CommitTrans
  loc_13E7840:   Me.Requery -1
  loc_13E7860:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_13E786D:     Me.Bookmark = var_94
  loc_13E7875:   Else
  loc_13E7889:     If (Me.EOF = 0) Then
  loc_13E7892:       Me.MoveLast
  loc_13E7897:     End If
  loc_13E7897:   End If
  loc_13E7897:   Call Proc_338_90_1A00AE0(var_150, 0, var_154, var_15C)
  loc_13E78B8:   Proc_5_0_1107AD0(&HFF, Me, global_72, 0)
  loc_13E78C0: End If
  loc_13E78C0: Exit Sub
  loc_13E78C1: ' Referenced from: 13E6F34
  loc_13E78C7: unk_5986AD.RollbackTrans
  loc_13E78D4: Set var_11C = Err()
  loc_13E78DA: Call 0.Method_arg_2C (var_124, 0, var_160)
  loc_13E78FB: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F8, var_118)
  loc_13E790E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '119A430
  'Data Table: 598690
  Dim var_90 As TextBox
  Dim var_C4 As Variant
  Dim var_94 As String
  Dim var_10C As String
  Dim var_124 As String
  Dim unk_5986AD As Connection15
  Dim var_8C As Variant
  Dim var_B4 As Variant
  loc_119A048: On Error Goto loc_119A428
  loc_119A06B: Set var_8C = Me.Txt
  loc_119A071: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_90)
  loc_119A079: var_94 = var_90.Text
  loc_119A092: If (((global_256 = "No") And (MemVar_1F950B8 <> 1)) And (CDate(var_94) < MemVar_1F950EC)) Then
  loc_119A09B:   Call 0.Method_arg_50 (var_94)
  loc_119A0B6:   var_B4 = "Back Date Entry Blocked."
  loc_119A0BC:   MsgBox(var_B4, &H10, CVar(var_94), var_E4, var_104)
  loc_119A0CC:   Exit Sub
  loc_119A0CD: End If
  loc_119A0DB: If (Proc_183_55_FE8490(global_72) = &HFF) Then
  loc_119A0DE:   Exit Sub
  loc_119A0DF: End If
  loc_119A102: Call Proc_338_93_FECC18(Proc_5_1_100EC1C("EDIT", Me))
  loc_119A124: If ((global_124 = "PBC") Or (global_124 = "EXC")) Then
  loc_119A131:   Set global_76 = New 
  loc_119A143:   Me.Recordset15.CursorLocation = 3
  loc_119A14F:   var_94 = "Select Distinct M.Docid as Code ,ltrim(Right(max(M.DocId),8)) as Name,Max(M.Vtype) as V_type,Max(M.VDate) as V_Date,Max(SG.Name) As PartyName " & "From ((Stock M Left Join Purch2 P2 on (M.Docid = P2.ContraDocid and M.Sno = P2.ContraSno)) "
  loc_119A156:   var_10C = var_94 & "Left Join SubGroup SG on M.PartyCode=SG.SubCode)Left Join Voucher_Type V on (M.Vtype=V.V_Type and M.LogSite_Code=V.LogSite_Code) "
  loc_119A179:   var_124 = var_10C & "where V.LogSite_Code='" & MemVar_1F95078 & "' and V.Site_Code='" & MemVar_1F95070 & "' and V.Ncat in ('MRE') and M.Partycode='"
  loc_119A190:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_90, var_120)
  loc_119A198:   var_124 = var_90.Tag
  loc_119A1A8:   var_88 = global_72 & var_120 & "'    Group By M.Docid,M.Sno Having Max(M.AccQty) - Sum(isnull(P2.AccQty,0)) > 0 "
  loc_119A1DD:   unk_5986AD.Execute var_88, var_B4, -1
  loc_119A1EE:   Set global_76 = Me.Txt
  loc_119A205:   CVarUnk
  loc_119A20A:   VerifyVarObj
  loc_119A210:   Set var_8C = Me.DgMR
  loc_119A216:   LateIdStAd
  loc_119A224: End If
  loc_119A224: Call Proc_338_109_1131C2C(var_8C, global_76)
  loc_119A237: Set var_8C = Me.Txt
  loc_119A23D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_90)
  loc_119A251: Call Proc_338_108_E44480(var_90.Text)
  loc_119A274: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_90)
  loc_119A28A: Call Proc_338_100_17D48A8(CDate(var_90.Text))
  loc_119A299: Call Proc_338_90_1A00AE0(Me.Txt)
  loc_119A2AB: Set var_8C = Me.Txt
  loc_119A2B1: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_90)
  loc_119A2B9: var_90.Enabled = False
  loc_119A2D2: Set var_8C = Me.Txt
  loc_119A2D8: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(7), var_90)
  loc_119A2E0: var_90.Enabled = False
  loc_119A2F9: Set var_8C = Me.Txt
  loc_119A2FF: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_90)
  loc_119A307: var_90.Enabled = False
  loc_119A321: Set var_8C = Me.Txt
  loc_119A327: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(7), var_90)
  loc_119A34B: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_119A35B:   Set var_8C = Me.Txt
  loc_119A361:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_90)
  loc_119A369:   var_90.Enabled = True
  loc_119A375: End If
  loc_119A387: Me.FGrid.Col = CVar(CLng(1))
  loc_119A3AA: var_C4 = CVar(CStr((CLng(Me.FGrid.Rows) - 1))) 'String
  loc_119A3B2: Set var_90 = Me.FGrid
  loc_119A3D2: Set var_8C = Me.FGrid
  loc_119A3F5: Me.FGrid.Col = CVar(CLng(2))
  loc_119A40A: Me.LblUser.Caption = vbNullString
  loc_119A41F: Me.LblLDt.Caption = vbNullString
  loc_119A427: Exit Sub
  loc_119A428: ' Referenced from: 119A048
  loc_119A428: Proc_6_60_E63754(FGrid.DispID_8001, FGrid.DispID_10000)
  loc_119A42D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19520
  'Data Table: 598690
  loc_E19515: Me.Global.Unload Me
  loc_E1951D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F8B340
  'Data Table: 598690
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim MemVar_1F950E4 As String
  loc_F8B1E8: On Error Goto loc_F8B33A
  loc_F8B202: If (Me.RecordCount <= 0) Then
  loc_F8B220:   var_A8 = "No Records To Search."
  loc_F8B226:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F8B236:   Exit Sub
  loc_F8B237: End If
  loc_F8B24A: If (OpenAs = "Expense") Then
  loc_F8B254:   var_10C = "Select DISTINCT P.Docid as SearchCode,P.VNo as [No] ,CONVERT(VARCHAR(11),P.VDate) as [Date],S.Name as PartyName,P.PARTYBILLNO,P.CashParty" & " From (Purch1 P Left Join Voucher_Type V On (P.VType= V.V_Type and P.LogSite_Code=V.LogSite_Code)) "
  loc_F8B269:   Proc_6_7_F26918(var_A8, MemVar_1F950F4)
  loc_F8B284:   var_11C = CVar(var_10C & " Left join SubGroup S on S.SubCode=P.Party Where P.VDATE>=") & var_A8 & " AND V.LogSite_Code='" & CVar(MemVar_1F95078) 
  loc_F8B292:   MemVar_1F950E4 = CStr(var_11C & "' aND  V.Ncat In ('EXR','EXC','CRN') Order By [Date],SearchCode")
  loc_F8B2AB: Else
  loc_F8B2B2:   var_10C = "Select DISTINCT P.Docid as SearchCode,P.VNo as [No] ,CONVERT(VARCHAR(11),P.VDate) as [Date],S.Name as PartyName,P.PARTYBILLNO,P.CashParty" & " From (Purch1 P Left Join Voucher_Type V On (P.VType= V.V_Type and P.LogSite_Code=V.LogSite_Code)) "
  loc_F8B2C7:   Proc_6_7_F26918(var_A8, MemVar_1F950F4)
  loc_F8B2D3:   var_B8 = " AND V.LogSite_Code='"
  loc_F8B2EB:   var_12C = CVar(var_10C & " Left join SubGroup S on S.SubCode=P.Party Where P.VDATE>=") & var_A8 & var_B8 & CVar(MemVar_1F95078) & "' aND  V.Category  in('PurchBill') Order By [Date],SearchCode" 
  loc_F8B2F0:   MemVar_1F950E4 = CStr(var_12C)
  loc_F8B306: End If
  loc_F8B30F: Proc_6_126_F1C850("700,1100,4000,1500,3500", MemVar_1F950E4)
  loc_F8B31D: MemVar_1F95120 = Me
  loc_F8B334: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F8B339: Exit Sub
  loc_F8B33A: ' Referenced from: F8B1E8
  loc_F8B33A: Proc_6_60_E63754(MemVar_1F950E4)
  loc_F8B33F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E33608
  'Data Table: 598690
  loc_E335F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33600: Call Proc_338_90_1A00AE0(global_72)
  loc_E33605: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E333C8
  'Data Table: 598690
  Dim arg_18FF As Double
  loc_E333B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E333C0: Call Proc_338_90_1A00AE0(global_72)
  loc_E333C5: Exit Sub
  loc_E333C6: arg_18FF = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E33368
  'Data Table: 598690
  loc_E33358: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33360: Call Proc_338_90_1A00AE0(global_72)
  loc_E33365: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E332A8
  'Data Table: 598690
  Dim arg_18FF As Double
  loc_E33298: Proc_5_0_1107AD0(&HFF, Me)
  loc_E332A0: Call Proc_338_90_1A00AE0(global_72)
  loc_E332A5: Exit Sub
  loc_E332A6: arg_18FF = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1460994
  'Data Table: 598690
  Dim Me As Recordset15
  Dim var_C8 As String
  Dim var_CC As String
  Dim var_D4 As String
  Dim var_D8 As String
  Dim var_E8 As TextBox
  Dim unk_5986AD As Connection15
  Dim var_A0 As Recordset15
  Dim var_124 As Variant
  Dim var_104 As Variant
  Dim var_166 As Integer
  Dim var_A4 As Recordset15
  Dim var_E4 As Fields15
  Dim var_114 As Variant
  Dim var_164 As Variant
  Dim var_134 As String
  Dim var_BE As Integer
  loc_145FE2C: On Error Goto loc_146098C
  loc_145FE46: If (Me.RecordCount <= 0) Then
  loc_145FE49:   Exit Sub
  loc_145FE4A: End If
  loc_145FE51: var_C8 = "Select P2.Docid,P2.VNo,P2.VDate,P2.VType As V_Type,CASE WHEN P2.RecdQty=0 THEN P2.IssQty ELSE P2.RecdQty END as Qty,CASE WHEN ISNULL(P2.RecdUnit,'')='' THEN P2.IssueUnit ELSE P2.RecdUnit END As Unit,P2.ItemRate,P2.Amount," & " P1.CashParty as PartyName,P1.PartyBillNo,P1.PartyBillDt,P1.Total,P1.DiscPer,P1.DiscAmt,P1.AddAmt,P1.DedAmt,P1.RoundOff,P1.NetAmt,P1.PartyBillDt,I.Name as ItemName,G.Name as GodName,P2.ContraDocId,V.Description,SG.Name As SaleAcName,"
  loc_145FE58: var_CC = var_C8 & " P1.TINNO,IsNull(SG1.ConPrefix,'') ConPrefix,IsNull(SG1.ConPerSon,'') ConPerSon,REPLACE(REPLACE(LTrim(RTrim(IsNull(SG1.Add1,'')))+', '+LTrim(RTrim(IsNull(SG1.Add2,'')))+', '+LTrim(RTrim(IsNull(SG1.Add3,'')))+', '+LTrim(RTrim(IsNull(City.CityName,''))),',,',','),', ,',',') PartyAddress,P2.Rate,IsNull(P1.InvoiceType,'') InvoiceType,IsNull(P1.InvoiceNo,0) InvoiceNo,TS.Name As TaxStruct,P1.Payable,IsNull(P1.Remark,'') As Remark From ((((((Purch2 as P2 Left Join Purch1 as P1 on P2.DocID=P1.DocID)"
  loc_145FE66: var_D4 = var_CC & " Left Join GodownMast as G on P2.Godcode=G.Code)" & " Left Join ItemMast as I on P2.Item=I.Code And I.ItemType='Store') left Join (Select Code,Max(Name) Name From TaxStru Group By Code) TS on TS.Code=P2.TaxStru"
  loc_145FE6D: var_D8 = var_D4 & " Left Join Voucher_Type as V on (P2.VType=V.V_Type and P2.LogSite_Code=V.LogSite_Code) left Join SubGroup SG On SG.SubCode=P2.AcCode) left Join SubGroup SG1 On SG1.SubCode=P1.Party) left Join City On City.CityCode=SG1.CityCode) "
  loc_145FE93: Set var_E4 = Me.Txt
  loc_145FE99: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_E8)
  loc_145FEB1: var_88 = var_D8 & " Where V.LogSite_Code='" & MemVar_1F95078 & "' and P2.DocID='" & var_E8.Text & "'"
  loc_145FEE3: Set var_E4 = Me.Txt
  loc_145FEE9: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_E8)
  loc_145FEF1: var_C8 = var_E8.Text
  loc_145FF01: var_8C = "Select S.* From SunTran S Where S.DocId='" & var_C8 & "' Order By SNo"
  loc_145FF23: If ((var_88 = vbNullString) Or (var_8C = vbNullString)) Then
  loc_145FF26:   Exit Sub
  loc_145FF27: End If
  loc_145FF3D: unk_5986AD.Execute var_88, var_114, -1
  loc_145FF48: Set var_A0 = var_E4
  loc_145FF67: unk_5986AD.Execute var_8C, var_114, -1
  loc_145FF72: Set var_A4 = var_E4
  loc_145FF8F: If (var_A0.RecordCount <= 0) Then
  loc_145FF98:   Call 0.Method_arg_50 (var_C8, var_E4)
  loc_145FFB9:   MsgBox("** No Records Found to Print **", &H40, CVar(var_C8), var_144, var_164)
  loc_145FFC9:   Exit Sub
  loc_145FFCA: End If
  loc_145FFDD: If (OpenAs = "Expense") Then
  loc_145FFF6:   Set var_E4 = var_A0 
  loc_146000C:   Set var_A0 = var_E4
  loc_1460012:   var_104 = CVar(CreateFieldDefFile(var_E4, MemVar_1F950B4 & "\ExpenseVoucher.ttx")) 'Integer
  loc_1460015:   var_9C = var_104 'Variant
  loc_146003A:   Call 0.Method_arg_1C (MemVar_1F950B4 & "\ExpenseVoucher.RPT", var_104, var_E4)
  loc_1460045:   MemVar_1F951E8 = var_E4
  loc_1460052: Else
  loc_1460068:   Set var_E4 = var_A0 
  loc_1460074:   var_166 = CreateFieldDefFile(var_E4, MemVar_1F950B4 & "\PurchBill.ttx", &HFF)
  loc_146007E:   Set var_A0 = var_E4
  loc_1460084:   var_104 = CVar(var_166) 'Integer
  loc_1460087:   var_9C = var_104 'Variant
  loc_14600A3:   var_C8 = MemVar_1F950B4 & "\PurchRetBill.RPT"
  loc_14600AC:   Call 0.Method_arg_1C (var_C8, var_104, var_E4, var_166)
  loc_14600B7:   MemVar_1F951E8 = var_E4
  loc_14600C1: End If
  loc_14600C7: var_C4 = var_A4.RecordCount
  loc_14600D5: If (var_C4 > 0) Then
  loc_14600D8:   ' Referenced from: 1460853
  loc_14600DE:   var_166 = var_A4.EOF
  loc_14600E7:   If Not(var_166) Then
  loc_1460110:     var_124 = Trim(CVar(var_A4.Fields.Item("SunCode")))
  loc_146013E:     If (Ucase(var_124) = CVar(MemVar_1F95078 & "NET")) Then
  loc_1460181:       var_E4 = var_A4.Fields
  loc_1460189:       var_E8 = var_E4.Item("Amount")
  loc_1460198:       Proc_6_39_E7D3A0(var_124, CVar(var_E8))
  loc_14601C1:       var_B8 = CStr(Format(var_124, "0.00"))
  loc_14601E3:       Call 0.Method_arg_90 (var_E4, var_C4, var_AA, 1)
  loc_14601EB:       Call 0.Method_arg_24 (1, 1)
  loc_14601F7:       For var_17C = var_E4 To CInt(var_C4): &HFF = var_17C 'Integer
  loc_1460210:         Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_1460218:         Call 0.Method_arg_20 (var_C8)
  loc_1460220:         Call 0.Method_arg_30 (var_E4)
  loc_1460236:         var_18C = Ucase(CVar(var_C8)) 'Variant
  loc_146024C:         var_114 = "lblNetAmount"
  loc_1460266:         If (var_18C = Ucase(var_114)) Then
  loc_1460274:           Proc_6_17_EAAE40(var_114)
  loc_1460290:           Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_1460298:           Call 0.Method_arg_20 (CStr(var_114))
  loc_14602A0:           Call 0.Method_arg_38 (Proc_6_38_E69628(CVar(var_A4.Fields.Item("DispName")), var_166))
  loc_14602B5:         Else
  loc_14602BD:           var_114 = "NetAmount"
  loc_14602D7:           If (var_18C = Ucase(var_114)) Then
  loc_14602E5:             Proc_6_17_EAAE40(var_114)
  loc_14602ED:             var_C8 = CStr(var_114)
  loc_1460301:             Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_1460309:             Call 0.Method_arg_20 (var_C8)
  loc_1460311:             Call 0.Method_arg_38 (var_B8)
  loc_1460323:           End If
  loc_1460323:         End If
  loc_1460326:       Next var_17C 'Integer
  loc_146032E:     Else
  loc_1460354:       var_124 = Trim(CVar(var_A4.Fields.Item("SunCode")))
  loc_1460382:       If (Ucase(var_124) = CVar(MemVar_1F95078 & "TOT")) Then
  loc_14603C5:         var_E4 = var_A4.Fields
  loc_14603CD:         var_E8 = var_E4.Item("Amount")
  loc_14603D5:         var_114 = CVar(var_E8) 'Address
  loc_14603DC:         Proc_6_39_E7D3A0(var_124)
  loc_1460405:         var_B8 = CStr(Format(var_124, "0.00"))
  loc_1460427:         Call 0.Method_arg_90 (var_E4, var_C4, var_AA, 1)
  loc_146042F:         Call 0.Method_arg_24 (1, 1)
  loc_146043B:         For var_190 =  To CInt(var_C4):   var_114 = var_190 'Integer
  loc_1460454:           Call 0.Method_arg_90 (var_E4, CLng(var_AA))
  loc_146045C:           Call 0.Method_arg_20 (var_E8)
  loc_1460464:           Call 0.Method_arg_30 (var_C8)
  loc_146047A:           var_1A0 = Ucase(CVar(var_C8)) 'Variant
  loc_1460490:           var_114 = "lblTotal"
  loc_14604AA:           If (var_1A0 = Ucase(var_114)) Then
  loc_14604B8:             Proc_6_17_EAAE40(var_114)
  loc_14604D4:             Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_14604DC:             Call 0.Method_arg_20 (CStr(var_114))
  loc_14604E4:             Call 0.Method_arg_38 (Proc_6_38_E69628(CVar(var_A4.Fields.Item("DispName"))))
  loc_14604F9:           Else
  loc_1460501:             var_114 = "Total"
  loc_146050A:             var_124 = Ucase(var_114)
  loc_146051B:             If (var_1A0 = var_124) Then
  loc_1460529:               Proc_6_17_EAAE40(var_114)
  loc_1460531:               var_C8 = CStr(var_114)
  loc_1460545:               Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_146054D:               Call 0.Method_arg_20 (var_C8)
  loc_1460555:               Call 0.Method_arg_38 (var_B8)
  loc_1460567:             End If
  loc_1460567:           End If
  loc_146056A:         Next var_190 'Integer
  loc_1460572:       Else
  loc_14605C2:         var_114 = CVar(var_A4.Fields.Item("SValue")) 'Address
  loc_14605C9:         Proc_6_39_E7D3A0(var_124)
  loc_14605F2:         var_BC = CStr(Format(var_124, "0.00"))
  loc_1460612:         var_E4 = var_A4.Fields
  loc_146061A:         var_E8 = var_E4.Item("Amount")
  loc_1460622:         var_114 = CVar(var_E8) 'Address
  loc_1460629:         Proc_6_39_E7D3A0(var_124, var_114, 1)
  loc_1460638:         var_134 = "0.00"
  loc_1460652:         var_B8 = CStr(Format(var_124, var_134))
  loc_1460669:         var_BE = (var_BE + 1)
  loc_146067D:         Call 0.Method_arg_90 (var_E4, var_C4, var_AA, 1, var_BE)
  loc_1460685:         Call 0.Method_arg_24 (1, 1)
  loc_1460691:         For var_1A4 = var_114 To CInt(var_C4):     1 = var_1A4 'Integer
  loc_14606AA:           Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_14606B2:           Call 0.Method_arg_20 (var_C8)
  loc_14606BA:           Call 0.Method_arg_30 (var_114)
  loc_14606D0:           var_1B4 = Ucase(CVar(var_C8)) 'Variant
  loc_14606ED:           var_114 = CVar("lblSunName" & CStr(var_BE)) 'String
  loc_1460707:           If (var_1B4 = Ucase(var_114)) Then
  loc_1460715:             Proc_6_17_EAAE40(var_114)
  loc_1460731:             Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_1460739:             Call 0.Method_arg_20 (CStr(var_114))
  loc_1460741:             Call 0.Method_arg_38 (Proc_6_38_E69628(CVar(var_A4.Fields.Item("DispName"))))
  loc_1460756:           Else
  loc_1460765:             var_114 = CVar("SunPer" & CStr(var_BE)) 'String
  loc_146077F:             If (var_1B4 = Ucase(var_114)) Then
  loc_146078D:               Proc_6_17_EAAE40(var_114)
  loc_14607A9:               Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_14607B1:               Call 0.Method_arg_20 (CStr(var_114))
  loc_14607B9:               Call 0.Method_arg_38 (var_BC)
  loc_14607CE:             Else
  loc_14607DD:               var_114 = CVar("SunAmt" & CStr(var_BE)) 'String
  loc_14607F7:               If (var_1B4 = Ucase(var_114)) Then
  loc_1460805:                 Proc_6_17_EAAE40(var_114)
  loc_146080D:                 var_C8 = CStr(var_114)
  loc_1460821:                 Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_1460829:                 Call 0.Method_arg_20 (var_C8)
  loc_1460831:                 Call 0.Method_arg_38 (var_B8)
  loc_1460843:               End If
  loc_1460843:             End If
  loc_1460843:           End If
  loc_1460846:         Next var_1A4 'Integer
  loc_146084B:       End If
  loc_146084B:     End If
  loc_146084E:     var_A4.MoveNext
  loc_1460853:     GoTo loc_14600D8
  loc_1460856:   End If
  loc_1460856: End If
  loc_1460867: Call 0.Method_arg_90 (var_E4, var_C4)
  loc_146086F: Call 0.Method_arg_24 (var_AA)
  loc_146087B: For var_1B8 =  To CInt(var_C4): 1 = var_1B8 'Integer
  loc_1460894:   Call 0.Method_arg_90 (var_E4, CLng(var_AA))
  loc_146089C:   Call 0.Method_arg_20 (var_E8)
  loc_14608A4:   Call 0.Method_arg_30 (var_C8)
  loc_14608BE:   If (var_C8 = "Title") Then
  loc_14608D4:     Call 0.Method_arg_90 (var_E4, CLng(var_AA))
  loc_14608DC:     Call 0.Method_arg_20 (var_E8)
  loc_14608E4:     Call 0.Method_arg_38 ("'Purchase Bill'")
  loc_14608F0:   End If
  loc_14608F3: Next var_1B8 'Integer
  loc_1460911: Call 0.Method_arg_64 (var_E4, CVar(var_A0))
  loc_1460919: Call 0.Method_arg_2C (var_134)
  loc_1460927: Call 0.Method_arg_150 (var_154)
  loc_1460932: Call 0.Method_arg_50 (var_C8)
  loc_146093C: Set var_E8 = Nothing
  loc_1460956: Set var_E4 = MemVar_1F951E8 
  loc_1460962: Proc_6_99_1484404(var_E4, 0, var_C8)
  loc_146096D: MemVar_1F951E8 = var_E4
  loc_1460980: Set var_A0 = Nothing
  loc_1460988: Set var_B0 = Nothing
  loc_146098B: Exit Sub
  loc_146098C: ' Referenced from: 145FE2C
  loc_146098C: Proc_6_60_E63754(&HFF)
  loc_1460991: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E64F9C
  'Data Table: 598690
  Dim Me As Recordset15
  loc_E64F53: Me.Requery -1
  loc_E64F63: Me.Requery -1
  loc_E64F76: Me.Recordset15.Requery -1
  loc_E64F86: Me.Requery -1
  loc_E64F96: Me.Requery -1
  loc_E64F9B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1C01128
  'Data Table: 598690
  Dim var_184 As Variant
  Dim var_170 As String
  Dim var_200 As Variant
  Dim var_208 As Variant
  Dim var_210 As Variant
  Dim var_21C As Variant
  Dim var_224 As Variant
  Dim var_1B4 As Variant
  Dim var_194 As Variant
  Dim var_1F4 As Variant
  Dim var_1A4 As Variant
  Dim var_1FC As Variant
  Dim var_1C4 As Variant
  Dim var_250 As Variant
  Dim var_136 As Variant
  Dim var_260 As Variant
  Dim var_2A0 As Variant
  Dim var_2B0 As Variant
  Dim var_2C0 As Variant
  Dim var_2E0 As Variant
  Dim var_204 As Variant
  Dim var_1F8 As String
  Dim var_310 As Variant
  Dim var_320 As Variant
  Dim var_330 As Variant
  Dim var_370 As Variant
  Dim var_3A0 As Variant
  Dim var_3C0 As Variant
  Dim var_1D4 As Variant
  Dim var_270 As Variant
  Dim var_3B0 As Variant
  Dim var_228 As String
  Dim unk_5986AD As Connection15
  Dim var_14C As Recordset15
  Dim var_88 As Variant
  Dim var_3D0 As Double
  Dim var_A4 As Variant
  Dim var_AC As Variant
  Dim var_3D8 As String
  Dim var_3DC As String
  Dim var_20C As Variant
  Dim var_B4 As Variant
  Dim var_CC As Variant
  Dim var_BC As Variant
  Dim var_C4 As Variant
  Dim var_DC As Variant
  Dim var_E4 As Variant
  Dim var_FC As Variant
  Dim var_D4 As Variant
  Dim var_EC As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_10C As Variant
  Dim var_118 As Double
  Dim var_120 As Double
  Dim var_128 As Variant
  Dim Me As Recordset15
  Dim var_134 As Variant
  Dim var_8A As Variant
  Dim var_218 As Variant
  Dim var_220 As Variant
  Dim var_43C As Variant
  Dim var_BF0 As Double
  Dim var_6DC As Variant
  Dim var_BF8 As Double
  Dim var_808 As Variant
  Dim var_7E8 As Variant
  Dim var_7C8 As String
  Dim var_860 As Variant
  Dim var_914 As Variant
  Dim var_9AC As Variant
  Dim var_A04 As Variant
  Dim var_A54 As Variant
  Dim var_A98 As Variant
  Dim var_C00 As Double
  Dim var_B2C As Image
  Dim var_B50 As Variant
  Dim var_3E8 As String
  Dim var_3EC As String
  Dim var_400 As Variant
  Dim var_290 As Variant
  Dim var_434 As Variant
  Dim var_460 As Variant
  Dim var_2D0 As Variant
  Dim var_470 As Variant
  Dim var_2F0 As Variant
  Dim var_4B0 As Variant
  Dim var_340 As Variant
  Dim var_4C0 As Variant
  Dim var_4D0 As Variant
  Dim var_360 As Variant
  Dim var_4E0 As Variant
  Dim var_4F0 As Variant
  Dim var_510 As Variant
  Dim var_520 As Variant
  Dim var_530 As Variant
  Dim var_560 As Variant
  Dim var_570 As Variant
  Dim var_580 As Variant
  Dim var_5B0 As Variant
  Dim var_5C0 As Variant
  Dim var_5E0 As Variant
  Dim var_5F0 As Variant
  Dim var_610 As Variant
  Dim var_620 As Variant
  Dim var_650 As Variant
  Dim var_660 As Variant
  Dim var_690 As Variant
  Dim var_6B0 As Variant
  Dim var_6C0 As Variant
  Dim var_710 As Variant
  Dim var_720 As Variant
  Dim var_740 As Variant
  Dim var_750 As Variant
  Dim var_760 As Variant
  Dim var_790 As Variant
  Dim var_7A0 As Variant
  Dim var_7B0 As Variant
  Dim var_838 As Variant
  Dim var_858 As Variant
  Dim var_894 As Variant
  Dim var_8DC As Variant
  Dim var_8EC As Variant
  Dim var_954 As Variant
  Dim var_964 As Variant
  Dim var_974 As Variant
  Dim var_984 As Variant
  Dim var_A24 As Variant
  Dim var_A34 As Variant
  Dim var_AAC As Variant
  Dim var_ABC As Variant
  Dim var_ADC As Variant
  Dim var_B10 As Variant
  Dim var_B20 As Variant
  Dim var_BB0 As Variant
  Dim var_438 As Variant
  Dim var_6D8 As Variant
  Dim var_7B4 As Variant
  Dim var_85C As MSHFlexGrid
  Dim var_900 As MSHFlexGrid
  Dim var_904 As Variant
  Dim var_998 As MSHFlexGrid
  Dim var_1440 As Double
  Dim var_99C As MSHFlexGrid
  Dim var_1448 As Double
  Dim var_C70 As Variant
  Dim var_C90 As Variant
  Dim var_9F0 As MSHFlexGrid
  Dim var_CD4 As Variant
  Dim var_CF4 As Variant
  Dim var_9F4 As MSHFlexGrid
  Dim var_1458 As Double
  Dim var_D38 As Variant
  Dim var_D58 As Variant
  Dim var_1460 As Double
  Dim var_1468 As Double
  Dim var_8CC As Variant
  Dim var_1470 As Double
  Dim var_EB8 As Variant
  Dim var_E98 As Variant
  Dim var_ED8 As Variant
  Dim var_EF8 As Variant
  Dim var_BE8 As MSHFlexGrid
  Dim var_F28 As Variant
  Dim var_F7C As Variant
  Dim var_F9C As Variant
  Dim var_FE4 As Variant
  Dim var_1004 As Variant
  Dim var_1480 As Double
  Dim var_1488 As Double
  Dim var_1490 As Double
  Dim var_1498 As Double
  Dim var_404 As String
  Dim var_A9C As String
  Dim var_B30 As String
  Dim var_C0C As String
  Dim var_C10 As String
  Dim var_C18 As String
  Dim var_C28 As String
  Dim var_770 As Variant
  Dim var_C60 As Variant
  Dim var_780 As Variant
  Dim var_7C4 As Variant
  Dim var_818 As Variant
  Dim var_A14 As Variant
  Dim var_A64 As Variant
  Dim var_B90 As Variant
  Dim var_BE4 As Variant
  Dim var_10B4 As Variant
  Dim var_1268 As Variant
  Dim var_13E0 As Variant
  Dim var_6D4 As MSHFlexGrid
  Dim var_C1C As String
  Dim var_C2C As String
  Dim var_C30 As String
  Dim var_BD4 As Variant
  Dim var_C08 As String
  Dim var_3F0 As String
  loc_1BFB7E8: On Error Goto loc_1C010DB
  loc_1BFB7FC: Call 0.Method_arg_38 (MemVar_1F95218, var_170)
  loc_1BFB80A: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_170)
  loc_1BFB816: If Not(var_172) Then
  loc_1BFB834:   MsgBox("InValid Picture Path in Analysis.ini", &H40, var_1B4, var_1D4, var_1F4)
  loc_1BFB846:   Exit Sub
  loc_1BFB847: End If
  loc_1BFB85F: Call 0.Method_arg_38 (MemVar_1F95218 & "\PurchBill", var_1F8)
  loc_1BFB86D: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_1F8, var_172)
  loc_1BFB87D: If Not(var_172) Then
  loc_1BFB895:   Call 0.Method_arg_74 (MemVar_1F95218 & "\PurchBill", var_1FC)
  loc_1BFB8A0: End If
  loc_1BFB8B0: Set var_1FC = Me.Opt
  loc_1BFB8B6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200)
  loc_1BFB8BE: var_172 = var_200.Value
  loc_1BFB8D1: Set var_204 = Me.Opt
  loc_1BFB8D7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_208)
  loc_1BFB8F2: Set var_20C = Me.Opt
  loc_1BFB8F8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_210)
  loc_1BFB900: var_212 = var_210.Value
  loc_1BFB913: Set var_218 = Me.Opt
  loc_1BFB919: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_21C)
  loc_1BFB934: Set var_220 = Me.Opt
  loc_1BFB93A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_224)
  loc_1BFB96B: var_1F4 = CVar(var_208.Caption) 'String
  loc_1BFB984: var_140 = CStr(IIf((var_172 = &HFF), var_1F4, IIf((var_212 = &HFF), CVar(var_21C.Caption), CVar(var_224.Caption))))
  loc_1BFB9D4: If (((global_124 = "PBR") Or (global_124 = "EXR")) Or (global_124 = "PRR")) Then
  loc_1BFB9D7: End If
  loc_1BFB9E6: Set var_1FC = Me.Txt
  loc_1BFB9EC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_200)
  loc_1BFBA15: If (Proc_6_27_EA61EC(var_200, "Voucher Date") = 0) Then
  loc_1BFBA1A:   Exit Sub
  loc_1BFBA1B: End If
  loc_1BFBA24: Set var_1FC = Me.TxtGt
  loc_1BFBA2A: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_172)
  loc_1BFBA3D: Call TxtGt_Validate((var_172 + 1))
  loc_1BFBA52: Set var_1FC = Me.Txt
  loc_1BFBA58: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_200)
  loc_1BFBA81: If (Proc_6_27_EA61EC(var_200, "Voucher No") = 0) Then
  loc_1BFBA86:   Exit Sub
  loc_1BFBA87: End If
  loc_1BFBAAE: For var_23E = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_23E 'Integer
  loc_1BFBABA:   var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFBAC2:   var_1C4 = CVar(CLng(2)) 'Long
  loc_1BFBAFE:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_1BFBB05:     var_136 = &HFF
  loc_1BFBB08:   End If
  loc_1BFBB0E:   var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFBB16:   var_1C4 = CVar(CLng(2)) 'Long
  loc_1BFBB30:   var_1B4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1BFBB36:   var_1D4 = Trim(var_1B4)
  loc_1BFBB3E:   var_250 = vbNullString
  loc_1BFBB4C:   var_260 = CVar(CLng(var_92)) 'Long
  loc_1BFBB5D:   Set var_200 = Me.FGrid
  loc_1BFBB7F:   var_2B0 = CVar(CLng(9)) And (CDbl(Val(CStr(var_200.TextMatrix)))) <> CDbl(0))
  loc_1BFBB87:   var_2C0 = CVar(CLng(var_92)) 'Long
  loc_1BFBBBA:   var_320 = CVar(CLng(&HA)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))
  loc_1BFBBC2:   var_330 = CVar(CLng(var_92)) 'Long
  loc_1BFBBD3:   Set var_208 = Me.FGrid
  loc_1BFBBFC:   var_3C0 = CVar(CLng(&H17)) And (Trim(CVar(CStr(var_208.TextMatrix)))) = vbNullString)
  loc_1BFBC2B:   If CBool(var_3C0) Then
  loc_1BFBC46:     var_170 = CStr(var_92)
  loc_1BFBC54:     MsgBox(CVar("Invalid record on row no." & var_170 & vbNullString), 0, var_1B4, var_1D4, var_1F4)
  loc_1BFBC80:     Me.FGrid.Row = CVar(CLng(var_92))
  loc_1BFBC9C:     Me.FGrid.Col = CVar(CLng(2))
  loc_1BFBCAA:     Set var_1FC = Me.FGrid
  loc_1BFBCBD:     Exit Sub
  loc_1BFBCBE:   End If
  loc_1BFBCC5: Next var_23E 'Integer
  loc_1BFBCD2: If (var_136 = 0) Then
  loc_1BFBCEA:   var_194 = "No Item Found In Grid."
  loc_1BFBCF0:   MsgBox(var_194, &H10, var_1B4, var_1D4, var_1F4)
  loc_1BFBD06:   Set var_1FC = Me.FGrid
  loc_1BFBD19:   Exit Sub
  loc_1BFBD1A: End If
  loc_1BFBD33: If ((global_124 = "PBR") Or (global_124 = "EXR")) Then
  loc_1BFBD55:   Proc_6_7_F26918(var_194, MemVar_1F950F4, "Select Count(*) from Purch1 where VDATE BETWEEN ", var_3C0)
  loc_1BFBD5D:   var_1B4 = -1 & var_194 
  loc_1BFBD66:   var_1D4 = var_1B4 & " AND " 
  loc_1BFBD75:   Proc_6_7_F26918(var_1F4, MemVar_1F950FC, var_1D4)
  loc_1BFBD86:   var_2B0 = var_20C & var_1F4 & " AND Vtype in (Select Vtype from Voucher_type where NCAT='PBR') and PartyBillNo='" 
  loc_1BFBD98:   Set var_1FC = Me.Txt
  loc_1BFBD9E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_200, var_170)
  loc_1BFBDA6:   var_2B0 = var_200.Text
  loc_1BFBDCC:   Set var_204 = Me.Txt
  loc_1BFBDD2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_208)
  loc_1BFBDFC:   unk_5986AD.Execute CStr(FGrid.DispID_8001 & CVar(var_170) & "' and Party='" & CVar(var_208.Tag) & "'"), , 
  loc_1BFBE3D:   Set var_1FC = Me.TopCtrl1
  loc_1BFBE43:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1BFBE5C:   If (CStr() = "Add") Then
  loc_1BFBE73:     var_1FC = var_20C.Fields
  loc_1BFBE9D:     If (var_1FC.Item(0).Value > 0) Then
  loc_1BFBEB5:       var_194 = "Duplicate Party Bill No"
  loc_1BFBEBB:       MsgBox(var_194, 0, var_1B4, var_1D4, var_1F4)
  loc_1BFBED0:     Else
  loc_1BFBED2:     End If
  loc_1BFBED4:   End If
  loc_1BFBEE3:   If (global_232 = "Room Service") Then
  loc_1BFBF05:     Proc_6_17_EAAE40(var_194, MemVar_1F95078, "Select RoomPayType From enviro WHERE LOGSITE_CODE=")
  loc_1BFBF1B:     unk_5986AD.Execute CStr(var_1D4 & var_194), -1, var_1FC
  loc_1BFBF26:     Set var_88 = var_1FC
  loc_1BFBF4E:     If (var_88.RecordCount > 0) Then
  loc_1BFBF65:       var_1FC = var_88.Fields
  loc_1BFBF99:       If (Proc_6_38_E69628(var_1FC.Item(0).Value) = vbNullString) Then
  loc_1BFBFB9:         var_194 = "Please define Room Payment Type From Enviro"
  loc_1BFBFBF:         MsgBox(var_194, &H40, "HMS", var_1D4, var_1F4)
  loc_1BFBFD1:         Exit Sub
  loc_1BFBFD2:       End If
  loc_1BFBFD4:     End If
  loc_1BFBFD9:   Else
  loc_1BFBFFA:     Proc_6_17_EAAE40(var_194, MemVar_1F95078, "Select CashPurchAc From enviro WHERE LOGSITE_CODE=")
  loc_1BFC010:     unk_5986AD.Execute CStr(var_1D4 & var_194), -1, var_1FC
  loc_1BFC01B:     Set var_88 = var_1FC
  loc_1BFC043:     If (var_88.RecordCount > 0) Then
  loc_1BFC062:       var_200 = var_88.Fields.Item(0)
  loc_1BFC077:       var_148 = Proc_6_38_E69628(var_200.Value)
  loc_1BFC08E:       If (var_148 = vbNullString) Then
  loc_1BFC0B4:         MsgBox("Please define Cash Payment Type From Enviro", &H40, "HMS", var_1D4, var_1F4)
  loc_1BFC0C6:         Exit Sub
  loc_1BFC0C7:       End If
  loc_1BFC0C9:     End If
  loc_1BFC0CB:   End If
  loc_1BFC0F4:   For var_3C8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_92 = var_3C8 'Integer
  loc_1BFC100:     var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFC108:     var_1C4 = CVar(CLng(0)) 'Long
  loc_1BFC112:     var_194 = CVar(CStr(var_92)) 'String
  loc_1BFC11A:     Set var_1FC = Me.FGrid
  loc_1BFC120:     LateIdCallSt
  loc_1BFC134:     var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFC13C:     var_1C4 = CVar(CLng(&H12)) 'Long
  loc_1BFC16C:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_1BFC175:       var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFC17D:       var_1C4 = CVar(CLng(&HB)) 'Long
  loc_1BFC1A9:       var_A4 = (var_A4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1BFC1B8:     Else
  loc_1BFC1C0:       var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFC1C8:       var_1C4 = CVar(CLng(&HB)) 'Long
  loc_1BFC1D7:       var_194 = Me.FGrid.TextMatrix)
  loc_1BFC1E2:       var_170 = CStr(var_194)
  loc_1BFC1F4:       var_AC = (var_AC + Val(var_170))
  loc_1BFC200:     End If
  loc_1BFC207:   Next var_3C8 'Integer
  loc_1BFC21A:   Set var_1FC = Me.TxtGt
  loc_1BFC220:   Call 0.Method_TopCtrl1_UnknownEvent_168 (var_172, var_92)
  loc_1BFC22B:   For var_3D4 =  To var_172:   1 = var_3D4 'Integer
  loc_1BFC25F:     Set var_1FC = Me.LblCap
  loc_1BFC265:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, "Select Nature from SundryType Where SundryCode='", var_194, -1)
  loc_1BFC294:     unk_5986AD.Execute var_208 & var_170 & "' And V_Type='" & MemVar_1F95078 & "PURC' ORDER BY aPPDATE DESC", 0, var_20C
  loc_1BFC2A4:      = var_208.Item()
  loc_1BFC2AC:      = var_20C.Value
  loc_1BFC2E2:     var_3E0 = Proc_6_38_E69628(var_200.Tag.Fields)
  loc_1BFC2EF:     If (var_3E0 = "Addition") Then
  loc_1BFC301:       Set var_1FC = Me.TxtGt
  loc_1BFC307:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200)
  loc_1BFC30F:       var_170 = var_200.Text
  loc_1BFC326:       var_B4 = (var_B4 + Val(var_170))
  loc_1BFC342:       Set var_1FC = Me.TxtPer
  loc_1BFC348:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170)
  loc_1BFC350:       var_B4 = var_200.Text
  loc_1BFC367:       var_CC = (var_CC + Val(var_170))
  loc_1BFC377:     Else
  loc_1BFC381:       If (var_3E0 = "Deduction") Then
  loc_1BFC393:         Set var_1FC = Me.TxtGt
  loc_1BFC399:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170)
  loc_1BFC3A1:         var_CC = var_200.Text
  loc_1BFC3B8:         var_BC = (var_BC + Val(var_170))
  loc_1BFC3D4:         Set var_1FC = Me.TxtPer
  loc_1BFC3DA:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_BC)
  loc_1BFC3E2:         var_3D0 = var_200.Text
  loc_1BFC3F9:         var_C4 = (var_C4 + Val(var_170))
  loc_1BFC409:       Else
  loc_1BFC413:         If (var_3E0 = "Discount") Then
  loc_1BFC425:           Set var_1FC = Me.TxtGt
  loc_1BFC42B:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_C4)
  loc_1BFC433:           var_3D0 = var_200.Text
  loc_1BFC44A:           var_DC = (var_DC + Val(var_170))
  loc_1BFC466:           Set var_1FC = Me.TxtPer
  loc_1BFC46C:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_DC)
  loc_1BFC474:           var_3D0 = var_200.Text
  loc_1BFC48B:           var_E4 = (var_E4 + Val(var_170))
  loc_1BFC49B:         Else
  loc_1BFC4A5:           If (var_3E0 = "Luxury Tax") Then
  loc_1BFC4B7:             Set var_1FC = Me.TxtGt
  loc_1BFC4BD:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_E4)
  loc_1BFC4C5:             var_3D0 = var_200.Text
  loc_1BFC4DC:             var_FC = (var_FC + Val(var_170))
  loc_1BFC4F8:             Set var_1FC = Me.TxtPer
  loc_1BFC4FE:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_FC)
  loc_1BFC506:             var_3D0 = var_200.Text
  loc_1BFC51D:             var_D4 = (var_D4 + Val(var_170))
  loc_1BFC52D:           Else
  loc_1BFC537:             If (var_3E0 = "Round Off") Then
  loc_1BFC549:               Set var_1FC = Me.TxtGt
  loc_1BFC54F:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_D4)
  loc_1BFC557:               var_3D0 = var_200.Text
  loc_1BFC56E:               var_EC = (var_EC + Val(var_170))
  loc_1BFC58A:               Set var_1FC = Me.TxtPer
  loc_1BFC590:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_EC)
  loc_1BFC598:               var_3D0 = var_200.Text
  loc_1BFC5AF:               var_F4 = (var_F4 + Val(var_170))
  loc_1BFC5BF:             Else
  loc_1BFC5C9:               If (var_3E0 = "Sale Tax") Then
  loc_1BFC5DB:                 Set var_1FC = Me.TxtGt
  loc_1BFC5E1:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_F4)
  loc_1BFC5E9:                 var_3D0 = var_200.Text
  loc_1BFC600:                 var_FC = (var_FC + Val(var_170))
  loc_1BFC61C:                 Set var_1FC = Me.TxtPer
  loc_1BFC622:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_FC)
  loc_1BFC62A:                 var_3D0 = var_200.Text
  loc_1BFC641:                 var_D4 = (var_D4 + Val(var_170))
  loc_1BFC651:               Else
  loc_1BFC65B:                 If (var_3E0 = "Service Charge") Then
  loc_1BFC66D:                   Set var_1FC = Me.TxtGt
  loc_1BFC673:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_D4)
  loc_1BFC67B:                   var_3D0 = var_200.Text
  loc_1BFC692:                   var_104 = (var_104 + Val(var_170))
  loc_1BFC6AE:                   Set var_1FC = Me.TxtPer
  loc_1BFC6B4:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_104)
  loc_1BFC6BC:                   var_3D0 = var_200.Text
  loc_1BFC6D3:                   var_10C = (var_10C + Val(var_170))
  loc_1BFC6E3:                 Else
  loc_1BFC6ED:                   If (var_3E0 = "Service Tax") Then
  loc_1BFC6FF:                     Set var_1FC = Me.TxtGt
  loc_1BFC705:                     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_10C)
  loc_1BFC70D:                     var_3D0 = var_200.Text
  loc_1BFC724:                     var_FC = (var_FC + Val(var_170))
  loc_1BFC740:                     Set var_1FC = Me.TxtPer
  loc_1BFC746:                     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_FC)
  loc_1BFC74E:                     var_3D0 = var_200.Text
  loc_1BFC765:                     var_D4 = (var_D4 + Val(var_170))
  loc_1BFC775:                   Else
  loc_1BFC77F:                     If (var_3E0 = "CGST") Then
  loc_1BFC791:                       Set var_1FC = Me.TxtGt
  loc_1BFC797:                       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_D4)
  loc_1BFC79F:                       var_3D0 = var_200.Text
  loc_1BFC7B6:                       var_118 = (var_118 + Val(var_170))
  loc_1BFC7C6:                     Else
  loc_1BFC7D0:                       If (var_3E0 = "SGST") Then
  loc_1BFC7E2:                         Set var_1FC = Me.TxtGt
  loc_1BFC7E8:                         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_118)
  loc_1BFC7F0:                         var_3D0 = var_200.Text
  loc_1BFC807:                         var_120 = (var_120 + Val(var_170))
  loc_1BFC817:                       Else
  loc_1BFC821:                         If (var_3E0 = "IGST") Then
  loc_1BFC833:                           Set var_1FC = Me.TxtGt
  loc_1BFC839:                           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_120)
  loc_1BFC841:                           var_3D0 = var_200.Text
  loc_1BFC858:                           var_128 = (var_128 + Val(var_170))
  loc_1BFC865:                         End If
  loc_1BFC865:                       End If
  loc_1BFC865:                     End If
  loc_1BFC865:                   End If
  loc_1BFC865:                 End If
  loc_1BFC865:               End If
  loc_1BFC865:             End If
  loc_1BFC865:           End If
  loc_1BFC865:         End If
  loc_1BFC865:       End If
  loc_1BFC865:     End If
  loc_1BFC86C:   Next var_3D4 'Integer
  loc_1BFC876:   var_9C = vbNullString
  loc_1BFC87E:   Call Proc_338_91_12611D0(var_172)
  loc_1BFC889:   If (var_172 = 0) Then
  loc_1BFC88E:     Exit Sub
  loc_1BFC88F:   End If
  loc_1BFC89C:   Set var_1FC = Me.TxtGrid
  loc_1BFC8A2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_200)
  loc_1BFC8AA:   var_200.Visible = False
  loc_1BFC8B8:   Call Proc_338_94_FDFE34()
  loc_1BFC8CD:   Set var_1FC = Me.Txt
  loc_1BFC8D3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_200)
  loc_1BFC8FB:   If (Proc_6_91_EF38D0(CDate(var_200.Text)) = 0) Then
  loc_1BFC90B:     Set var_1FC = Me.Txt
  loc_1BFC911:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3))
  loc_1BFC919:     var_200.SetFocus
  loc_1BFC927:     Exit Sub
  loc_1BFC928:   End If
  loc_1BFC92E:   Set var_1FC = Me.TopCtrl1
  loc_1BFC934:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_200)
  loc_1BFC93C:   var_170 = CStr()
  loc_1BFC94D:   If (var_170 = "Add") Then
  loc_1BFC958:     var_1A4 = 0
  loc_1BFC97F:     Set var_1FC = Me.Txt
  loc_1BFC985:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_170, "Select Count(*) From Purch1 Where DocID='", var_194, -1)
  loc_1BFC9A6:     unk_5986AD.Execute var_208 & var_170 & "'", var_1A4, var_20C
  loc_1BFC9B6:      = var_208.Item()
  loc_1BFC9BE:      = var_20C.Value
  loc_1BFC9EB:     If (var_200.Text.Fields > 0) Then
  loc_1BFC9F6:       Call Proc_338_96_10E9EB0(MemVar_1F95044)
  loc_1BFCA09:       Set var_1FC = Me.Txt
  loc_1BFCA0F:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200)
  loc_1BFCA17:       var_200.Text = var_170
  loc_1BFCA28:       Exit Sub
  loc_1BFCA29:     End If
  loc_1BFCA2E:   Else
  loc_1BFCA47:     var_1FC = Me.Fields
  loc_1BFCA66:     global_108 = CStr(var_1FC.Item("DocID").Value)
  loc_1BFCA77:   End If
  loc_1BFCA81:   Call Proc_338_99_EAA35C(var_134, var_1FC)
  loc_1BFCA89:   Set var_134 = var_1FC
  loc_1BFCAB3:   For var_3E4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_92 = var_3E4 'Integer
  loc_1BFCABF:     var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFCAC7:     var_1C4 = CVar(CLng(2)) 'Long
  loc_1BFCAE7:     var_1D4 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1BFCAEF:     var_250 = vbNullString
  loc_1BFCAFD:     var_260 = CVar(CLng(var_92)) 'Long
  loc_1BFCB0E:     Set var_200 = Me.FGrid
  loc_1BFCB4D:     If CBool(CVar(CLng(&HB)) And (CDbl(Val(CStr(var_200.TextMatrix)))) <> CDbl(0))) Then
  loc_1BFCB58:       var_3C4 = var_134.RecordCount
  loc_1BFCB66:       If (var_3C4 > 0) Then
  loc_1BFCB6E:         var_134.MoveFirst
  loc_1BFCB81:         var_1C4 = CVar(CLng(&HE)) 'Long
  loc_1BFCBEA:         var_134.Find "V_NO=" & CStr(Val(CStr(Trim(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))), 0, 1
  loc_1BFCC0E:         var_172 = var_134.EOF
  loc_1BFCC16:         If var_172 Then
  loc_1BFCC26:           var_134.AddNew CVar(CLng(var_92)), var_1A4
  loc_1BFCC31:           var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFCC39:           var_1C4 = CVar(CLng(&HE)) 'Long
  loc_1BFCC7F:           var_260 = CVar(Val(CStr(Trim(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))) 'Double
  loc_1BFCC8D:           var_134.Collect = "V_NO"
  loc_1BFCCB0:           var_134.Update var_184, var_1A4
  loc_1BFCCB5:         End If
  loc_1BFCCBA:       Else
  loc_1BFCCC9:         var_134.AddNew var_184, var_1A4
  loc_1BFCCDC:         var_1C4 = CVar(CLng(&HE)) 'Long
  loc_1BFCCEB:         var_194 = Me.FGrid.TextMatrix)
  loc_1BFCD00:         var_1B4 = CVar(CStr(var_194)) 'String
  loc_1BFCD22:         var_260 = CVar(Val(CStr(Trim(Right(var_1B4, 8))))) 'Double
  loc_1BFCD30:         var_134.Collect = "V_NO"
  loc_1BFCD53:         var_134.Update CVar(CLng(var_92)), var_1A4
  loc_1BFCD58:       End If
  loc_1BFCD5A:     End If
  loc_1BFCD61:   Next var_3E4 'Integer
  loc_1BFCD6C:   Set var_1FC = Me.TopCtrl1
  loc_1BFCD72:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1BFCD8B:   If (CStr() = "Add") Then
  loc_1BFCD96:     var_1A4 = 0
  loc_1BFCDB3:     var_170 = "Select IsNull(Max(InvoiceNo),0)+1 From Purch1 Where LOGsite_code='" & MemVar_1F95078
  loc_1BFCDD1:     unk_5986AD.Execute CStr() & "' And InvoiceType='" & var_140 & "'", var_194, -1
  loc_1BFCDD9:     var_1FC = var_1FC.Fields
  loc_1BFCDE1:     var_1A4 = var_200.Item(var_200)
  loc_1BFCDE9:     var_204 = var_204.Value
  loc_1BFCDFA:     Set var_208 = Me.LblInvoiceNo
  loc_1BFCE00:     var_208.Caption = CStr(var_1B4)
  loc_1BFCE26:   End If
  loc_1BFCE2C:   var_8A = &HFF
  loc_1BFCE3A:   unk_5986AD.BeginTrans var_3C4
  loc_1BFCE5F:   Set var_1FC = Me.Txt
  loc_1BFCE65:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, CStr(), "Delete From Sale2 Where DocID='", var_194)
  loc_1BFCE6D:   -1 = var_200.Text
  loc_1BFCE86:   unk_5986AD.Execute var_204 & CStr() & "'", var_8A, var_1B4
  loc_1BFCEC0:   Set var_1FC = Me.Txt
  loc_1BFCEC6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, CStr(), "Delete From Purch1 Where DocID='")
  loc_1BFCECE:   var_194 = var_200.Text
  loc_1BFCED7:   var_1F8 = -1 & CStr()
  loc_1BFCEE7:   unk_5986AD.Execute var_204 & CStr() & "'", var_204, 
  loc_1BFCF21:   Set var_1FC = Me.Txt
  loc_1BFCF27:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, CStr(), "Delete From Purch2 Where DocID='")
  loc_1BFCF2F:   var_194 = var_200.Text
  loc_1BFCF38:   var_1F8 = -1 & CStr()
  loc_1BFCF48:   unk_5986AD.Execute var_204 & CStr() & "'", var_204, 
  loc_1BFCF82:   Set var_1FC = Me.Txt
  loc_1BFCF88:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, CStr(), "Delete From SunTran Where DocID='")
  loc_1BFCF90:   var_194 = var_200.Text
  loc_1BFCF99:   var_1F8 = -1 & CStr()
  loc_1BFCFA9:   unk_5986AD.Execute var_204 & CStr() & "'", var_204, 
  loc_1BFCFE3:   Set var_1FC = Me.Txt
  loc_1BFCFE9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, CStr(), "Delete From Stock Where DocID='")
  loc_1BFCFF1:   var_194 = var_200.Text
  loc_1BFCFFA:   var_1F8 = -1 & CStr()
  loc_1BFD001:   var_228 = var_204 & CStr() & "'"
  loc_1BFD00A:   unk_5986AD.Execute var_228, var_204, 
  loc_1BFD032:   Call 0.Method_arg_38 (MemVar_1F95218)
  loc_1BFD048:   var_3D8 = CStr() & "\PurchBill\" & global_132
  loc_1BFD059:   Set var_1FC = Me.Txt
  loc_1BFD05F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_200, var_228)
  loc_1BFD067:   var_3D8 = Me.Txt.Text
  loc_1BFD077:   var_144 = CStr() & var_228 & ".jpg"
  loc_1BFD094:   Set var_200 = Me.BillImage
  loc_1BFD0B2:   If (Proc_142_3_E98110(var_200) = &HFF) Then
  loc_1BFD0C4:     Me.BillImage.Tag = var_144
  loc_1BFD0CC:   End If
  loc_1BFD0DC:   Set var_1FC = Me.Txt
  loc_1BFD0E2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200)
  loc_1BFD0FD:   Set var_204 = Me.Txt
  loc_1BFD103:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_208)
  loc_1BFD118:   var_3D0 = Val(var_208.Text)
  loc_1BFD126:   Set var_20C = Me.Txt
  loc_1BFD12C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_210)
  loc_1BFD13B:   Proc_6_7_F26918(var_1B4, CVar(var_210))
  loc_1BFD14D:   var_3F0 = Me.LblVPrefix.Caption
  loc_1BFD160:   Set var_21C = Me.Txt
  loc_1BFD166:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_220, var_404)
  loc_1BFD17A:   Set var_224 = Me.TxtGt
  loc_1BFD180:   Call 0.Method_TopCtrl1_UnknownEvent_164 (var_172)
  loc_1BFD192:   Set var_438 = Me.TxtGt
  loc_1BFD198:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_172, var_43C)
  loc_1BFD1AD:   var_BF0 = Val(var_43C.Text)
  loc_1BFD1B7:   Set var_6D4 = Me.TxtGt
  loc_1BFD1BD:   Call 0.Method_TopCtrl1_UnknownEvent_168 (var_212, var_BF0)
  loc_1BFD1CF:   Set var_6D8 = Me.TxtGt
  loc_1BFD1D5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_212, var_6DC)
  loc_1BFD1EA:   var_BF8 = Val(var_6DC.Text)
  loc_1BFD1FB:   Proc_6_7_F26918(var_780, Date)
  loc_1BFD204:   Set var_7B4 = Me.TopCtrl1
  loc_1BFD20A:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_BF8)
  loc_1BFD24F:   Set var_85C = Me.Txt
  loc_1BFD255:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_860)
  loc_1BFD26D:   Set var_8A8 = Me.Txt
  loc_1BFD273:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_8AC)
  loc_1BFD282:   Proc_6_7_F26918(var_8CC, CVar(var_8AC))
  loc_1BFD292:   Set var_900 = Me.Txt
  loc_1BFD298:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_904)
  loc_1BFD2B7:   Set var_998 = Me.Txt
  loc_1BFD2BD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_99C)
  loc_1BFD2C5:   var_9AC = CVar(var_99C) 'Address
  loc_1BFD2DC:   Set var_9F0 = Me.Txt
  loc_1BFD2E2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_9F4)
  loc_1BFD2F1:   Proc_6_17_EAAE40(var_A14, CVar(var_9F4))
  loc_1BFD301:   Proc_6_17_EAAE40(var_A64, var_140)
  loc_1BFD382:   Proc_6_17_EAAE40(var_B90, IIf((Me.BillImage.Visible = &HFF), CVar(Me.BillImage.Tag), vbNullString))
  loc_1BFD39B:   var_1F8 = "Insert Into Purch1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,Party,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,CGST,SGST,IGST,AddAmt,DedAmt,RoundOff,NetAmt,U_Name,U_EntDt,U_AE,DelFlag,PartyBillNo,PartyBillDt,CashParty,LogSite_Code,TinNo,Remark,InvoiceType,InvoiceNo,Payable,BillImagePath) Values (" & "'"
  loc_1BFD3EB:   var_370 = CVar(var_1F8 & var_200.Text & "'," & CStr(var_220.Tag) & ",") & var_1B4 & ",'" & CVar(global_132) & "','" & CVar(var_3F0) 
  loc_1BFD444:   var_460 = var_370 & "','" & CVar(MemVar_1F95070) & "','" & CVar(global_56) & "','" & CVar(var_404) & "'," & CVar(var_BF0) & "," 
  loc_1BFD4B3:   var_530 = var_460 & CVar(var_E4) & "," & CVar(var_DC) & "," & CVar(var_AC) & "," & CVar(var_A4) & "," & CVar(var_FC) & ", " & CVar(var_104) 
  loc_1BFD52B:   var_6B0 = var_530 & "," & CVar(var_118) & "," & CVar(var_120) & "," & CVar(var_128) & "," & CVar(var_B4) & "," & CVar(var_BC) & "," & CVar(var_EC) 
  loc_1BFD572:   var_838 = var_6B0 & "," & CVar(var_BF8) & ", '" & CVar(MemVar_1F950C8) & "'," & var_780 & ",'" & IIf((CStr(var_7C4) = "Add"), "A", "E") 
  loc_1BFD5AE:   var_954 = var_838 & "','N','" & CVar(var_860.Text) & "'," & var_8CC & ",'" & Trim(CVar(var_904)) & "','" 
  loc_1BFD5FC:   var_ABC = var_954 & CVar(MemVar_1F95078) & "','" & Trim(var_9AC) & "'," & var_A14 & "," & var_A64 & "," & CVar(Val(Me.LblInvoiceNo.Caption)) 
  loc_1BFD636:   unk_5986AD.Execute CStr(var_ABC & "," & CVar(Me.ChkPayable.Value) & "," & var_B90 & ")"), var_BE4, -1
  loc_1BFD773:   For var_C04 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_92 = var_C04 'Integer
  loc_1BFD77F:     var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFD7A7:     var_1D4 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1BFD7CE:     Set var_200 = Me.FGrid
  loc_1BFD80D:     If CBool(CVar(CLng(5)) And (CDbl(Val(CStr(var_200.TextMatrix)))) <> CDbl(0))) Then
  loc_1BFD829:       If ((global_124 = "PRR") Or (global_124 = "PRC")) Then
  loc_1BFD83C:         Set var_1FC = Me.Txt
  loc_1BFD842:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_3F0, CVar(CLng(var_92)), (var_1D4 <> vbNullString), CVar(CLng(2)))
  loc_1BFD84A:         var_184 = var_200.Text
  loc_1BFD853:         var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFD87D:         var_3D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFD8A0:         Set var_20C = Me.Txt
  loc_1BFD8A6:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_210, var_C1C, var_3D0, CVar(CLng(0)))
  loc_1BFD8AE:         var_184 = var_210.Text
  loc_1BFD8BB:         var_BF0 = Val(var_C1C)
  loc_1BFD8C9:         Set var_218 = Me.Txt
  loc_1BFD8CF:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_21C, var_BF0, 1)
  loc_1BFD8DE:         Proc_6_7_F26918(var_1D4, CVar(var_21C), var_BE8)
  loc_1BFD8EF:         var_2A0 = CVar(CLng(&H17)) 'Long
  loc_1BFD8FE:         var_370 = Me.FGrid.TextMatrix)
  loc_1BFD918:         Set var_224 = Me.Txt
  loc_1BFD91E:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_438, var_C2C, var_370)
  loc_1BFD926:         var_2A0 = var_438.Text
  loc_1BFD936:         Set var_43C = Me.Txt
  loc_1BFD93C:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_6D4, CVar(CLng(var_92)))
  loc_1BFD941:         var_2E0 = 1
  loc_1BFD993:         Set var_6DC = Me.Txt
  loc_1BFD999:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_7B4, var_C30, CVar(CLng(&H18)))
  loc_1BFD9A1:         var_2E0 = var_7B4.Tag
  loc_1BFD9AA:         var_3A0 = CVar(CLng(var_92)) 'Long
  loc_1BFD9B2:         var_520 = CVar(CLng(&HC)) 'Long
  loc_1BFD9D1:         var_580 = CVar(CLng(var_92)) 'Long
  loc_1BFD9D9:         var_5C0 = CVar(CLng(&H14)) 'Long
  loc_1BFD9F8:         var_620 = CVar(CLng(var_92)) 'Long
  loc_1BFDA00:         var_660 = CVar(CLng(&H15)) 'Long
  loc_1BFDA1F:         var_6C0 = CVar(CLng(var_92)) 'Long
  loc_1BFDA27:         var_710 = CVar(CLng(8)) 'Long
  loc_1BFDA46:         var_7A0 = CVar(CLng(var_92)) 'Long
  loc_1BFDA4E:         var_7E8 = CVar(CLng(7)) 'Long
  loc_1BFDA77:         var_8EC = CVar(CLng(var_92)) 'Long
  loc_1BFDA7F:         var_964 = CVar(CLng(&HA)) 'Long
  loc_1BFDAA8:         var_A54 = CVar(CLng(var_92)) 'Long
  loc_1BFDAB0:         var_AAC = CVar(CLng(9)) 'Long
  loc_1BFDAD9:         var_B40 = CVar(CLng(var_92)) 'Long
  loc_1BFDAE1:         var_BB0 = CVar(CLng(&HB)) 'Long
  loc_1BFDB0A:         var_C70 = CVar(CLng(var_92)) 'Long
  loc_1BFDB12:         var_C90 = CVar(CLng(&H11)) 'Long
  loc_1BFDB3B:         var_CD4 = CVar(CLng(var_92)) 'Long
  loc_1BFDB43:         var_CF4 = CVar(CLng(&H12)) 'Long
  loc_1BFDB6C:         var_D38 = CVar(CLng(var_92)) 'Long
  loc_1BFDB74:         var_D58 = CVar(CLng(&HF)) 'Long
  loc_1BFDB96:         var_1460 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFDBC7:         var_1468 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFDBF8:         var_1470 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFDC09:         Proc_6_7_F26918(var_954, Date, var_1470, CVar(CLng(&H13)), CVar(CLng(var_92)), var_1468, CVar(CLng(&H10)), CVar(CLng(var_92)))
  loc_1BFDC12:         Set var_B2C = Me.TopCtrl1
  loc_1BFDC18:         Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_1460)
  loc_1BFDC53:         var_ED8 = CVar(CLng(var_92)) 'Long
  loc_1BFDC5B:         var_EF8 = CVar(CLng(&H1E)) 'Long
  loc_1BFDC7A:         var_F28 = CVar(CLng(var_92)) 'Long
  loc_1BFDC82:         var_F48 = CVar(CLng(&HE)) 'Long
  loc_1BFDCA1:         var_F7C = CVar(CLng(var_92)) 'Long
  loc_1BFDCA9:         var_F9C = CVar(CLng(&HD)) 'Long
  loc_1BFDCD2:         var_FE4 = CVar(CLng(var_92)) 'Long
  loc_1BFDCDA:         var_1004 = CVar(CLng(&H20)) 'Long
  loc_1BFDCFC:         var_1480 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFDD03:         var_104C = CVar(CLng(var_92)) 'Long
  loc_1BFDD2D:         var_1488 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFDD5E:         var_1490 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFDD8F:         var_1498 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFDDC0:         var_149C = Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(4)), CVar(CLng(var_92)), var_1498, CVar(CLng(5)), CVar(CLng(var_92)), var_1490, CVar(CLng(6)))
  loc_1BFDDF1:         var_14A0 = Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1A)), CVar(CLng(var_92)), CVar(CLng(var_92)), var_1488)
  loc_1BFDE47:         var_228 = "Insert Into Purch2(" & "DocId,SNo,VType,VPrefix,Site_Code," & "VNo,VDate,RestCode,GodCode,RoomNo,PartyCode," & "Item,DiscApp,RoundOff,UNIT,"
  loc_1BFDE5C:         var_3E8 = var_228 & "QtyIss," & "Rate,ItemRate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,Total," & "U_Name,U_EntDt,U_AE,DepartCode,ContraDocId,ContraSno,"
  loc_1BFDE78:         var_7C8 = var_3E8 & "DelFlag,PostVal,LandVal,ConvRatio,IssQty,IssueUnit,LogSite_Code,TaxStru,AcCode) Values (" & "'" & var_3F0 & "',"
  loc_1BFDEC4:         var_C28 = var_7C8 & CStr(var_3D0) & ",'" & global_132 & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F95070 & "'," & CStr(var_BF0)
  loc_1BFDF0B:         var_434 = CVar(var_C28 & ",") & var_1D4 & ",'" & CVar(global_56) & "','" & CVar(CStr(var_370)) & "','" & IIf((var_C2C <> vbNullString), CVar(var_6D4), CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_1BFDF46:         var_4F0 = var_434 & "','" & CVar(var_C30) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BFDF82:         var_650 = var_4F0 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1BFDFBE:         var_770 = var_650 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1BFDFFA:         var_858 = var_770 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_1460) 
  loc_1BFE055:         var_A04 = var_858 & "," & CVar(var_1468) & "," & CVar(var_1470) & ",'" & CVar(MemVar_1F950C8) & "'," & var_954 & ",'" & IIf((CStr(var_9AC) = "Add"), "A", "E") 
  loc_1BFE091:         var_B50 = var_A04 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1BFE0F4:         var_1268 = var_B50 & ",'N'," & CVar(var_1480) & "," & CVar(var_1488) & "," & CVar(var_1490) & "," & CVar(var_1498) & ",'" & CVar(var_149C) 
  loc_1BFE12A:         var_13E0 = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1C)), CVar(CLng(var_92)), CVar(CLng(&H21)))) 'String
  loc_1BFE144:         unk_5986AD.Execute CStr(var_1268 & "','" & CVar(MemVar_1F95078) & "','" & CVar(var_14A0) & "','" & var_13E0 & "')"), var_1434, -1
  loc_1BFE2EB:       Else
  loc_1BFE2FD:         Set var_1FC = Me.Txt
  loc_1BFE303:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_3F0, var_1438)
  loc_1BFE30B:         var_104C = var_200.Text
  loc_1BFE314:         var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFE33E:         var_3D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFE348:         Set var_208 = Me.LblVPrefix
  loc_1BFE361:         Set var_20C = Me.Txt
  loc_1BFE367:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_210, var_C1C, var_3D0, CVar(CLng(0)))
  loc_1BFE36F:         var_184 = var_210.Text
  loc_1BFE37C:         var_BF0 = Val(var_C1C)
  loc_1BFE38A:         Set var_218 = Me.Txt
  loc_1BFE390:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_21C, var_BF0)
  loc_1BFE398:         var_1B4 = CVar(var_21C) 'Address
  loc_1BFE39F:         Proc_6_7_F26918(var_1D4, var_1B4, var_1480)
  loc_1BFE3B0:         var_2A0 = CVar(CLng(&H17)) 'Long
  loc_1BFE3B9:         Set var_220 = Me.FGrid
  loc_1BFE3BF:         var_370 = var_220.TextMatrix)
  loc_1BFE3D9:         Set var_224 = Me.Txt
  loc_1BFE3DF:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_438, var_C2C, var_370)
  loc_1BFE3E7:         var_2A0 = var_438.Text
  loc_1BFE3F7:         Set var_43C = Me.Txt
  loc_1BFE3FD:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_6D4, CVar(CLng(var_92)))
  loc_1BFE402:         var_2E0 = 1
  loc_1BFE41D:         var_3C0 = Me.FGrid.TextMatrix)
  loc_1BFE454:         Set var_6DC = Me.Txt
  loc_1BFE45A:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_7B4, var_C30, CVar(CLng(&H18)))
  loc_1BFE462:         var_2E0 = var_7B4.Tag
  loc_1BFE46B:         var_3A0 = CVar(CLng(var_92)) 'Long
  loc_1BFE473:         var_520 = CVar(CLng(&HC)) 'Long
  loc_1BFE492:         var_580 = CVar(CLng(var_92)) 'Long
  loc_1BFE49A:         var_5C0 = CVar(CLng(&H14)) 'Long
  loc_1BFE4B9:         var_620 = CVar(CLng(var_92)) 'Long
  loc_1BFE4C1:         var_660 = CVar(CLng(&H15)) 'Long
  loc_1BFE4E0:         var_6C0 = CVar(CLng(var_92)) 'Long
  loc_1BFE4E8:         var_710 = CVar(CLng(8)) 'Long
  loc_1BFE507:         var_7A0 = CVar(CLng(var_92)) 'Long
  loc_1BFE50F:         var_7E8 = CVar(CLng(7)) 'Long
  loc_1BFE538:         var_8EC = CVar(CLng(var_92)) 'Long
  loc_1BFE540:         var_964 = CVar(CLng(&HA)) 'Long
  loc_1BFE569:         var_A54 = CVar(CLng(var_92)) 'Long
  loc_1BFE571:         var_AAC = CVar(CLng(9)) 'Long
  loc_1BFE59A:         var_B40 = CVar(CLng(var_92)) 'Long
  loc_1BFE5A2:         var_BB0 = CVar(CLng(&HB)) 'Long
  loc_1BFE5CB:         var_C70 = CVar(CLng(var_92)) 'Long
  loc_1BFE5D3:         var_C90 = CVar(CLng(&H11)) 'Long
  loc_1BFE5FC:         var_CD4 = CVar(CLng(var_92)) 'Long
  loc_1BFE604:         var_CF4 = CVar(CLng(&H12)) 'Long
  loc_1BFE62D:         var_D38 = CVar(CLng(var_92)) 'Long
  loc_1BFE635:         var_D58 = CVar(CLng(&HF)) 'Long
  loc_1BFE63E:         Set var_A98 = Me.FGrid
  loc_1BFE657:         var_1460 = Val(CStr(var_A98.TextMatrix)))
  loc_1BFE688:         var_1468 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFE6B9:         var_1470 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFE6CA:         Proc_6_7_F26918(var_954, Date, var_1470, CVar(CLng(&H13)), CVar(CLng(var_92)), var_1468, CVar(CLng(&H10)), CVar(CLng(var_92)))
  loc_1BFE6D3:         Set var_B2C = Me.TopCtrl1
  loc_1BFE6D9:         Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_1460)
  loc_1BFE6F2:         var_9BC = "A"
  loc_1BFE714:         var_ED8 = CVar(CLng(var_92)) 'Long
  loc_1BFE71C:         var_EF8 = CVar(CLng(&H1E)) 'Long
  loc_1BFE73B:         var_F28 = CVar(CLng(var_92)) 'Long
  loc_1BFE743:         var_F48 = CVar(CLng(&HE)) 'Long
  loc_1BFE762:         var_F7C = CVar(CLng(var_92)) 'Long
  loc_1BFE76A:         var_F9C = CVar(CLng(&HD)) 'Long
  loc_1BFE779:         var_B20 = Me.FGrid.TextMatrix)
  loc_1BFE793:         var_FE4 = CVar(CLng(var_92)) 'Long
  loc_1BFE79B:         var_1004 = CVar(CLng(&H20)) 'Long
  loc_1BFE7C4:         var_104C = CVar(CLng(var_92)) 'Long
  loc_1BFE7EE:         var_1488 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFE81F:         var_1490 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFE850:         var_1498 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFE881:         var_149C = Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(4)), CVar(CLng(var_92)), var_1498, CVar(CLng(5)), CVar(CLng(var_92)), var_1490, CVar(CLng(6)))
  loc_1BFE8B2:         var_14A0 = Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1A)), CVar(CLng(var_92)), CVar(CLng(var_92)), var_1488)
  loc_1BFE908:         var_228 = "Insert Into Purch2(" & "DocId,SNo,VType,VPrefix,Site_Code," & "VNo,VDate,RestCode,GodCode,RoomNo,PartyCode," & "Item,DiscApp,RoundOff,UNIT,"
  loc_1BFE91D:         var_3E8 = var_228 & "QtyRec," & "Rate,ItemRate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,Total," & "U_Name,U_EntDt,U_AE,DepartCode,ContraDocId,ContraSno,"
  loc_1BFE939:         var_7C8 = var_3E8 & "DelFlag,PostVal,LandVal,ConvRatio,recdQty,RecdUnit,LogSite_Code,TaxStru,AcCode) Values (" & "'" & var_3F0 & "',"
  loc_1BFE94C:         var_B30 = var_7C8 & CStr(var_3D0) & ",'"
  loc_1BFE964:         var_C10 = var_B30 & global_132 & "','" & var_208.Caption
  loc_1BFE972:         var_C18 = var_C10 & "','" & MemVar_1F95070
  loc_1BFE9C5:         var_3B0 = CVar(var_C18 & "'," & CStr(var_BF0) & ",") & var_1D4 & ",'" & CVar(global_56) & "','" & CVar(CStr(var_370)) & "','" 
  loc_1BFE9F3:         var_4B0 = var_3B0 & IIf((var_C2C <> vbNullString), CVar(var_6D4), CVar(CStr(var_3C0))) & "','" & CVar(var_C30) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BFEA2F:         var_5F0 = var_4B0 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BFEA6B:         var_720 = var_5F0 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1BFEAA7:         var_818 = var_720 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1BFEB06:         var_974 = var_818 & "," & CVar(var_1460) & "," & CVar(var_1468) & "," & CVar(var_1470) & ",'" & CVar(MemVar_1F950C8) & "'," & var_954 
  loc_1BFEB3E:         var_ADC = var_974 & ",'" & IIf((CStr(var_9AC) = "Add"), var_9BC, "E") & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BFEB83:         var_10B4 = var_ADC & "'," & CVar(Val(CStr(var_B20))) & ",'N'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_1488) & "," 
  loc_1BFEBDB:         var_134C = var_10B4 & CVar(var_1490) & "," & CVar(var_1498) & ",'" & CVar(var_149C) & "','" & CVar(MemVar_1F95078) & "','" & CVar(var_14A0) 
  loc_1BFEBEB:         var_13E0 = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1C)), CVar(CLng(var_92)), CVar(CLng(&H21)))) 'String
  loc_1BFEC05:         unk_5986AD.Execute CStr(var_134C & "','" & var_13E0 & "')"), var_1434, -1
  loc_1BFEDA9:       End If
  loc_1BFEDB1:       var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFEDEC:       var_1F8 = "Select IsNull(LPurDate,'01/Jan/1900') From ItemMast Where Code='" & CStr(Me.FGrid.TextMatrix))
  loc_1BFEDFC:       unk_5986AD.Execute var_1F8 & "' And ItemType='Store'", var_1B4, -1
  loc_1BFEE07:       Set var_88 = var_200
  loc_1BFEE37:       If (var_88.RecordCount > 0) Then
  loc_1BFEE42:         var_184 = 0
  loc_1BFEE56:         var_200 = var_88.Fields.Item(var_184)
  loc_1BFEE6B:         var_1B4 = CVar(Proc_6_38_E69628(var_200.Value, var_200, var_200.Value, CVar(CLng(&HC)), var_184)) 'String
  loc_1BFEE7E:         Set var_204 = Me.Txt
  loc_1BFEE84:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_208, IsDate(var_1B4), var_1438)
  loc_1BFEEA8:         If (var_104C And IsDate(CVar(var_208))) Then
  loc_1BFEEBB:           Set var_204 = Me.Txt
  loc_1BFEEC1:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_208, var_1F8)
  loc_1BFEEC9:           var_1480 = var_208.Text
  loc_1BFEEE8:           var_200 = var_88.Fields.Item(0)
  loc_1BFEF1D:           If (CDate(Proc_6_38_E69628(var_200.Value, var_1004)) <= CDate(var_1F8)) Then
  loc_1BFEF26:             var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFEF59:             If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1BFEF69:               Set var_1FC = Me.Txt
  loc_1BFEF6F:               Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_200, CVar(CLng(&HC)))
  loc_1BFEF7E:               Proc_6_7_F26918(var_1B4, CVar(var_200))
  loc_1BFEF87:               var_1C4 = CVar(CLng(var_92)) 'Long
  loc_1BFEF8F:               var_250 = CVar(CLng(&HB)) 'Long
  loc_1BFEFB8:               var_270 = CVar(CLng(var_92)) 'Long
  loc_1BFEFC0:               var_290 = CVar(CLng(5)) 'Long
  loc_1BFEFE9:               var_2E0 = CVar(CLng(var_92)) 'Long
  loc_1BFEFF1:               var_310 = CVar(CLng(&HC)) 'Long
  loc_1BFEFFA:               Set var_20C = Me.FGrid
  loc_1BFF000:               var_370 = var_20C.TextMatrix)
  loc_1BFF021:               var_1D4 = "Update ItemMast Set LPurDate=" & var_1B4 
  loc_1BFF042:               var_320 = var_1D4 & ",LPurRate=" & CVar((Val(CStr(Me.FGrid.TextMatrix))) / Val(CStr(Me.FGrid.TextMatrix))))) & " Where COde='" 
  loc_1BFF064:               unk_5986AD.Execute CStr(var_320 & CVar(CStr(var_370)) & "' And ItemType='Store'"), var_3C0, -1
  loc_1BFF09C:             End If
  loc_1BFF09C:           End If
  loc_1BFF09E:         End If
  loc_1BFF0A0:       End If
  loc_1BFF0DB:       If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1BFF0F7:         If ((global_124 = "PRR") Or (global_124 = "PRC")) Then
  loc_1BFF10A:           Set var_1FC = Me.Txt
  loc_1BFF110:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_3F0, CVar(CLng(&HE)), CVar(CLng(var_92)), var_210, var_370)
  loc_1BFF118:           var_310 = var_200.Text
  loc_1BFF15C:           Set var_208 = Me.Txt
  loc_1BFF162:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_20C, var_B30, Val(CStr(Me.FGrid.TextMatrix))), CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1BFF16A:           var_2E0 = var_20C.Text
  loc_1BFF177:           var_BF0 = Val(var_B30)
  loc_1BFF185:           Set var_210 = Me.Txt
  loc_1BFF18B:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_218, var_BF0, var_BF0)
  loc_1BFF19A:           Proc_6_7_F26918(var_1D4, CVar(var_218), var_290)
  loc_1BFF1AD:           Set var_21C = Me.Txt
  loc_1BFF1B3:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_220, var_C10)
  loc_1BFF1BB:           var_270 = var_220.Tag
  loc_1BFF1E0:           Set var_438 = Me.Txt
  loc_1BFF1E6:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_43C, var_C18)
  loc_1BFF1F7:           var_2D0 = CVar(CLng(var_92)) 'Long
  loc_1BFF1FF:           var_2F0 = CVar(CLng(&H17)) 'Long
  loc_1BFF21E:           var_340 = CVar(CLng(var_92)) 'Long
  loc_1BFF226:           var_360 = CVar(CLng(&HC)) 'Long
  loc_1BFF245:           var_520 = CVar(CLng(var_92)) 'Long
  loc_1BFF24D:           var_560 = CVar(CLng(5)) 'Long
  loc_1BFF276:           var_5E0 = CVar(CLng(var_92)) 'Long
  loc_1BFF27E:           var_620 = CVar(CLng(5)) 'Long
  loc_1BFF2A7:           var_710 = CVar(CLng(var_92)) 'Long
  loc_1BFF2AF:           var_750 = CVar(CLng(7)) 'Long
  loc_1BFF2D8:           var_808 = CVar(CLng(var_92)) 'Long
  loc_1BFF2E0:           var_894 = CVar(CLng(5)) 'Long
  loc_1BFF309:           var_984 = CVar(CLng(var_92)) 'Long
  loc_1BFF311:           var_A34 = CVar(CLng(9)) 'Long
  loc_1BFF33A:           var_ACC = CVar(CLng(var_92)) 'Long
  loc_1BFF342:           var_B10 = CVar(CLng(&HA)) 'Long
  loc_1BFF36B:           var_BD4 = CVar(CLng(var_92)) 'Long
  loc_1BFF373:           var_C60 = CVar(CLng(4)) 'Long
  loc_1BFF392:           var_C90 = CVar(CLng(var_92)) 'Long
  loc_1BFF3A9:           var_7C4 = Me.FGrid.TextMatrix)
  loc_1BFF3E3:           var_1460 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFF414:           var_1468 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFF41A:           Proc_6_104_ED68A8(var_974, var_1468, CVar(CLng(6)), CVar(CLng(var_92)), var_1460, CVar(CLng(&HB)), CVar(CLng(var_92)), var_7C4)
  loc_1BFF423:           Set var_9F0 = Me.TopCtrl1
  loc_1BFF429:           Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(CVar(CLng(8)))
  loc_1BFF464:           var_E98 = CVar(CLng(var_92)) 'Long
  loc_1BFF46C:           var_EB8 = CVar(CLng(&H21)) 'Long
  loc_1BFF48E:           var_1470 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFF4AC:           var_1F8 = "Insert Into Stock(" & "DocId,SNo,VNo,VDate,VType,VPrefix,Site_Code," & "PartyCode,GodownCode,Item,ChalQty,RecdQty,RejQty,"
  loc_1BFF4C1:           var_3DC = var_1F8 & "QtyIss,IssQty,Rate,ItemRate,IssueUnit,Unit," & "Amount,Specification,ConvRatio," & "ContraDocid,ContraSNo, "
  loc_1BFF4F0:           var_A9C = var_3DC & "U_Name,U_EntDt,U_AE,DepartCode,LandVal,LogSite_Code) " & "Values(" & "'" & var_3F0 & "'," & CStr(var_43C.Tag)
  loc_1BFF53F:           var_3B0 = CVar(var_A9C & "," & CStr(var_BF0) & ",") & var_1D4 & ",'" & CVar(var_C10) & "','" & CVar(Me.LblVPrefix.Caption) & "','" 
  loc_1BFF58D:           var_4C0 = var_3B0 & CVar(MemVar_1F95070) & "'," & "'" & CVar(var_C18) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BFF5D0:           var_5B0 = var_4C0 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & 0 & "," 
  loc_1BFF601:           var_690 = var_5B0 & vbNullString & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," 
  loc_1BFF634:           var_790 = var_690 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BFF68B:           var_8DC = var_790 & "','" & CVar(CStr(var_7C4)) & "'," & vbNullString & CVar(var_1460) & ",''," & CVar(var_1468) & "," & "''," 
  loc_1BFF6D9:           var_A24 = var_8DC & 0 & "," & "'" & CVar(MemVar_1F950C8) & "'," & var_974 & ",'" & IIf((CStr(var_9BC) = "Add"), "A", "E") & "','" 
  loc_1BFF721:           unk_5986AD.Execute CStr(var_A24 & CVar(MemVar_1F95070) & "PURC'," & CVar(var_1470) & ",'" & CVar(MemVar_1F95078) & "')"), var_B20, -1
  loc_1BFF84C:         Else
  loc_1BFF85E:           Set var_1FC = Me.Txt
  loc_1BFF864:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_3F0, var_A98, var_1470, var_EB8, var_E98)
  loc_1BFF86C:           var_C90 = var_200.Text
  loc_1BFF89F:           var_3D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFF8B0:           Set var_208 = Me.Txt
  loc_1BFF8B6:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_20C, var_B30, var_3D0, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1BFF8BE:           var_770 = var_20C.Text
  loc_1BFF8CB:           var_BF0 = Val(var_B30)
  loc_1BFF8D9:           Set var_210 = Me.Txt
  loc_1BFF8DF:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_218, var_BF0, var_C60)
  loc_1BFF8EE:           Proc_6_7_F26918(var_1D4, CVar(var_218), var_BD4)
  loc_1BFF901:           Set var_21C = Me.Txt
  loc_1BFF907:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_220, var_C10)
  loc_1BFF90F:           var_1458 = var_220.Tag
  loc_1BFF934:           Set var_438 = Me.Txt
  loc_1BFF93A:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_43C, var_C18)
  loc_1BFF942:           var_B10 = var_43C.Tag
  loc_1BFF94B:           var_2D0 = CVar(CLng(var_92)) 'Long
  loc_1BFF953:           var_2F0 = CVar(CLng(&H17)) 'Long
  loc_1BFF972:           var_340 = CVar(CLng(var_92)) 'Long
  loc_1BFF97A:           var_360 = CVar(CLng(&HC)) 'Long
  loc_1BFF999:           var_520 = CVar(CLng(var_92)) 'Long
  loc_1BFF9A1:           var_560 = CVar(CLng(5)) 'Long
  loc_1BFF9CA:           var_5E0 = CVar(CLng(var_92)) 'Long
  loc_1BFF9D2:           var_620 = CVar(CLng(5)) 'Long
  loc_1BFF9DB:           Set var_7B4 = Me.FGrid
  loc_1BFF9FB:           var_710 = CVar(CLng(var_92)) 'Long
  loc_1BFFA03:           var_750 = CVar(CLng(7)) 'Long
  loc_1BFFA2C:           var_808 = CVar(CLng(var_92)) 'Long
  loc_1BFFA34:           var_894 = CVar(CLng(5)) 'Long
  loc_1BFFA3D:           Set var_860 = Me.FGrid
  loc_1BFFA43:           var_650 = var_860.TextMatrix)
  loc_1BFFA5D:           var_984 = CVar(CLng(var_92)) 'Long
  loc_1BFFA65:           var_A34 = CVar(CLng(9)) 'Long
  loc_1BFFA8E:           var_ACC = CVar(CLng(var_92)) 'Long
  loc_1BFFA96:           var_B10 = CVar(CLng(&HA)) 'Long
  loc_1BFFA9F:           Set var_8AC = Me.FGrid
  loc_1BFFABF:           var_BD4 = CVar(CLng(var_92)) 'Long
  loc_1BFFAC7:           var_C60 = CVar(CLng(4)) 'Long
  loc_1BFFAE6:           var_C90 = CVar(CLng(var_92)) 'Long
  loc_1BFFAF7:           Set var_904 = Me.FGrid
  loc_1BFFAFD:           var_7C4 = var_904.TextMatrix)
  loc_1BFFB37:           var_1460 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFFB68:           var_1468 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFFB6E:           Proc_6_104_ED68A8(var_974, var_1468, CVar(CLng(6)), CVar(CLng(var_92)), var_1460, CVar(CLng(&HB)), CVar(CLng(var_92)), var_7C4)
  loc_1BFFB77:           Set var_9F0 = Me.TopCtrl1
  loc_1BFFB7D:           Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(CVar(CLng(8)))
  loc_1BFFBB8:           var_E98 = CVar(CLng(var_92)) 'Long
  loc_1BFFBC0:           var_EB8 = CVar(CLng(&H21)) 'Long
  loc_1BFFC00:           var_1F8 = "Insert Into Stock(" & "DocId,SNo,VNo,VDate,VType,VPrefix,Site_Code," & "PartyCode,GodownCode,Item,ChalQty,RecdQty,RejQty,"
  loc_1BFFC15:           var_3DC = var_1F8 & "QtyRec,AccQty,Rate,ItemRate,RecdUnit,Unit," & "Amount,Specification,ConvRatio," & "ContraDocid,ContraSNo, "
  loc_1BFFC44:           var_A9C = var_3DC & "U_Name,U_EntDt,U_AE,DepartCode,LandVal,LogSite_Code) " & "Values(" & "'" & var_3F0 & "'," & CStr(var_3D0)
  loc_1BFFC5E:           var_1F4 = CVar(var_A9C & "," & CStr(var_BF0) & ",") 'String
  loc_1BFFCA6:           var_400 = var_1F4 & var_1D4 & ",'" & CVar(var_C10) & "','" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F95070) & "'," 
  loc_1BFFCE1:           var_4C0 = var_400 & "'" & CVar(var_C18) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BFFCEA:           var_4D0 = var_4C0 & "'," 
  loc_1BFFCFE:           var_510 = var_4D0 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," 
  loc_1BFFD38:           var_610 = var_510 & CVar(Val(CStr(var_7B4.TextMatrix)))) & "," & 0 & "," & vbNullString & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1BFFD74:           var_740 = var_610 & "," & CVar(Val(CStr(var_650))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(var_8AC.TextMatrix)))) 
  loc_1BFFD91:           var_7B0 = var_740 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" 
  loc_1BFFDF1:           var_914 = var_7B0 & CVar(CStr(var_7C4)) & "'," & vbNullString & CVar(var_1460) & ",''," & CVar(var_1468) & "," & "''," & 0 & "," 
  loc_1BFFE37:           var_A44 = var_914 & "'" & CVar(MemVar_1F950C8) & "'," & var_974 & ",'" & IIf((CStr(var_9BC) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95070) 
  loc_1BFFE75:           unk_5986AD.Execute CStr(var_A44 & "PURC'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(MemVar_1F95078) & "')"), var_B20, -1
  loc_1BFFF9D:         End If
  loc_1BFFFA2:       Else
  loc_1BFFFAA:         var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFFFB2:         var_1C4 = CVar(CLng(&H21)) 'Long
  loc_1BFFFD7:         var_250 = 1
  loc_1BFFFE3:         var_270 = CVar(CLng(&HE)) 'Long
  loc_1BFFFFE:         var_290 = 1
  loc_1C0000A:         var_2C0 = CVar(CLng(&HD)) 'Long
  loc_1C00057:         var_3EC = "Update Stock Set LandVal=" & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & " Where DocId='" & CStr(Me.FGrid.TextMatrix)) & "' And SNo="
  loc_1C0006B:         unk_5986AD.Execute var_3EC & CStr(Me.FGrid.TextMatrix)), var_1F4, -1
  loc_1C0009B:       End If
  loc_1C0009D:     End If
  loc_1C000A4:   Next var_C04 'Integer
  loc_1C000D0:   For var_14A8 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)):   var_92 = var_14A8 'Integer
  loc_1C000DC:     var_184 = CVar(CLng(var_92)) 'Long
  loc_1C000E4:     var_1C4 = CVar(CLng(2)) 'Long
  loc_1C0012B:     Set var_200 = Me.FGCat
  loc_1C0013C:     var_170 = CStr(var_200.TextMatrix))
  loc_1C0016A:     If CBool(CVar(CLng(6)) And (CDbl(Val(var_170)) <> CDbl(0))) Then
  loc_1C0017D:       Set var_1FC = Me.Txt
  loc_1C00183:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_170, CVar(CLng(var_92)))
  loc_1C0018B:       (Trim(CVar(CStr(Me.FGCat.TextMatrix)))) <> vbNullString) = var_200.Text
  loc_1C001BE:       var_3D0 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1C001D6:       Set var_208 = Me.FGCat
  loc_1C001DC:       var_1B4 = var_208.TextMatrix)
  loc_1C001EF:       var_BF0 = Val(CStr(var_1B4))
  loc_1C001FF:       var_A9C = Me.LblVPrefix.Caption
  loc_1C00212:       Set var_210 = Me.Txt
  loc_1C00218:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_218, var_C10, var_BF0, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1C0022D:       var_BF8 = Val(var_C10)
  loc_1C0023B:       Set var_21C = Me.Txt
  loc_1C00241:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_220, var_BF8, CVar(CLng(1)))
  loc_1C00250:       Proc_6_7_F26918(var_1F4, CVar(var_220), CVar(CLng(var_92)))
  loc_1C00259:       var_2D0 = CVar(CLng(var_92)) 'Long
  loc_1C00261:       var_2F0 = CVar(CLng(2)) 'Long
  loc_1C0026A:       Set var_224 = Me.FGCat
  loc_1C00280:       var_340 = CVar(CLng(var_92)) 'Long
  loc_1C00288:       var_360 = CVar(CLng(4)) 'Long
  loc_1C002AA:       var_C00 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1C002C2:       Set var_43C = Me.FGCat
  loc_1C002DB:       var_1440 = Val(CStr(var_43C.TextMatrix)))
  loc_1C0030C:       var_1448 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1C0031D:       Proc_6_7_F26918(var_4D0, Date, var_1448, CVar(CLng(6)), CVar(CLng(var_92)), var_1440, CVar(CLng(5)), CVar(CLng(var_92)))
  loc_1C00326:       Set var_6D8 = Me.TopCtrl1
  loc_1C0032C:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_C00)
  loc_1C0035E:       var_570 = IIf((CStr(var_510) = "Add"), "A", "E")
  loc_1C00377:       var_1F8 = "Insert Into Sale2(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,LogSite_Code) Values (" & "'"
  loc_1C003CA:       var_C08 = var_1F8 & var_170 & "'," & CStr(var_218.Text) & "," & CStr(var_BF0) & ",'" & global_132 & "','" & var_A9C & "','"
  loc_1C003D1:       var_C0C = var_C08 & MemVar_1F95070
  loc_1C0041B:       var_3B0 = CVar(var_C0C & "'," & CStr(var_BF8) & ",") & var_1F4 & ",'" & CVar(global_56) & "','" & CVar(CStr(var_224.TextMatrix))) 
  loc_1C0047A:       var_4E0 = var_3B0 & "'," & CVar(var_C00) & "," & CVar(var_1440) & "," & CVar(var_1448) & ",'" & CVar(MemVar_1F950C8) & "'," & var_4D0 
  loc_1C004B4:       unk_5986AD.Execute CStr(var_4E0 & ",'" & var_570 & "','N','" & CVar(MemVar_1F95078) & "')"), var_610, -1
  loc_1C00560:     End If
  loc_1C00567:   Next var_14A8 'Integer
  loc_1C0057A:   Set var_1FC = Me.TxtGt
  loc_1C00580:   Call 0.Method_TopCtrl1_UnknownEvent_168 (var_172, var_92)
  loc_1C0058B:   For var_14AC =  To var_172:   1 = var_14AC 'Integer
  loc_1C005A0:     Set var_1FC = Me.TxtGt
  loc_1C005A6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200)
  loc_1C005C0:     If (var_200.Visible = &HFF) Then
  loc_1C005D3:       Set var_1FC = Me.Txt
  loc_1C005D9:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200)
  loc_1C005F4:       Set var_204 = Me.Txt
  loc_1C005FA:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_208)
  loc_1C0061D:       Set var_20C = Me.Txt
  loc_1C00623:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_210)
  loc_1C00632:       Proc_6_7_F26918(var_1B4, CVar(var_210))
  loc_1C00644:       Set var_218 = Me.LblCap
  loc_1C0064A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_21C)
  loc_1C00664:       Set var_220 = Me.TxtPer
  loc_1C0066A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_224)
  loc_1C0067F:       var_BF0 = Val(var_224.Tag)
  loc_1C0068F:       Set var_438 = Me.LblCap
  loc_1C00695:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_43C, var_A9C)
  loc_1C006AF:       Set var_6D4 = Me.LblAt
  loc_1C006B5:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_6D8)
  loc_1C006CF:       Set var_6DC = Me.TxtGt
  loc_1C006D5:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_7B4)
  loc_1C006EF:       Set var_85C = Me.TxtPer
  loc_1C006F5:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_860)
  loc_1C0070A:       var_BF8 = Val(var_860.Text)
  loc_1C0071A:       Set var_8A8 = Me.TxtGt
  loc_1C00720:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_8AC, var_C0C)
  loc_1C00735:       var_C00 = Val(var_C0C)
  loc_1C00745:       Set var_900 = Me.LblDummy
  loc_1C0074B:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_904, var_C10)
  loc_1C00760:       var_1440 = Val(var_C10)
  loc_1C00771:       Proc_6_7_F26918(var_510, Date)
  loc_1C0077A:       Set var_998 = Me.TopCtrl1
  loc_1C00780:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_1440)
  loc_1C007C2:       Set var_99C = Me.Txt
  loc_1C007C8:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_9F0)
  loc_1C007D7:       Proc_6_7_F26918(var_650, CVar(var_9F0))
  loc_1C007E9:       Set var_9F4 = Me.LblDummy
  loc_1C007EF:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_A98)
  loc_1C00810:       var_1F8 = "Insert Into SunTran (DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LogSite_Code) Values ('" & var_200.Text
  loc_1C0082A:       var_3E8 = var_1F8 & "'," & CStr(var_92) & ",'"
  loc_1C00870:       var_320 = CVar(var_3E8 & global_132 & "'," & CStr(Val(var_208.Text)) & ",") & var_1B4 & ",'" & CVar(var_21C.Tag) & "'," 
  loc_1C008C8:       var_470 = var_320 & CVar(var_43C.Caption) & ",'" & CVar(var_A9C) & "','" & CVar(var_6D8.Tag) & "','" & CVar(var_7B4.Tag) & "'," & CVar(var_8AC.Text) 
  loc_1C00923:       var_5F0 = var_470 & "," & CVar(var_904.Caption) & "," & CVar(var_1440) & ",'" & CVar(MemVar_1F950C8) & "'," & var_510 & ",'" & IIf((CStr(var_570) = "Add"), "A", "E") 
  loc_1C0096C:       var_760 = var_5F0 & "'," & var_650 & ",'" & CVar(var_A98.Tag) & "','" & CVar(MemVar_1F95070) & "PURC','N','" & CVar(MemVar_1F95070) 
  loc_1C00996:       unk_5986AD.Execute CStr(var_760 & "','" & CVar(MemVar_1F95078) & "')"), var_7B0, -1
  loc_1C00A62:     End If
  loc_1C00A69:   Next var_14AC 'Integer
  loc_1C00A74:   Set var_1FC = Me.TopCtrl1
  loc_1C00A7A:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1C00A93:   If (CStr() = "Add") Then
  loc_1C00AAC:     var_170 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1C00AD2:     var_1D4 = CVar(var_170 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_132 & "' And VP.Date_From<=") 'String
  loc_1C00AE3:     Set var_1FC = Me.Txt
  loc_1C00AE9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_200, var_3E8, var_1D4)
  loc_1C00AF1:     var_2B0 = var_200.Text
  loc_1C00AFF:     Proc_6_7_F26918(var_1B4, CVar(var_3E8))
  loc_1C00B07:     var_1F4 = -1 & var_1B4 
  loc_1C00B1E:     unk_5986AD.Execute CStr(CVar(var_3E8 & global_132 & "'," & CStr(Val(var_208.Text)) & ",") & var_1B4 & " Order By VP.Date_From DESC"), var_204, 
  loc_1C00B29:     Set var_88 = var_204
  loc_1C00B5B:     var_3C4 = var_88.RecordCount
  loc_1C00B69:     If (var_3C4 > 0) Then
  loc_1C00B7C:       Set var_1FC = Me.Txt
  loc_1C00B82:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_200)
  loc_1C00B97:       var_3D0 = Val(var_200.Text)
  loc_1C00BAC:       var_204 = var_88.Fields
  loc_1C00BBC:       var_194 = var_204.Item("V_Type").Value
  loc_1C00BE7:       Proc_6_7_F26918(var_2B0, CVar(var_88.Fields.Item("Date_From")))
  loc_1C00C0C:       var_3D8 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_3D0) & " Where (SITE_CODE='"
  loc_1C00C37:       var_1F4 = CVar(var_3D8 & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "') and V_Type='") & var_194 & "' and Date_From=" 
  loc_1C00C4C:       unk_5986AD.Execute CStr(var_1F4 & var_2B0), var_320, -1
  loc_1C00C86:     End If
  loc_1C00C88:   End If
  loc_1C00C90:   Set var_1FC = Me.TopCtrl1
  loc_1C00C96:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_218)
  loc_1C00CAF:   If (CStr(var_3D0) = "Add") Then
  loc_1C00CD7:     var_170 = "SELECT COUNT(*) FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F95078
  loc_1C00CF5:     Call 0.Method_arg_50 (var_3D8, var_170 & "' and UNAME='" & MemVar_1F950C8 & "' AND ENAME='", var_194, -1, var_1FC)
  loc_1C00D05:     var_3EC = var_200 & var_3D8 & "' "
  loc_1C00D0E:     unk_5986AD.Execute var_3EC, 0, var_204
  loc_1C00D16:     var_1B4 = var_1FC.Fields
  loc_1C00D1E:      = var_200.Item()
  loc_1C00D26:      = var_204.Value
  loc_1C00D57:     If (var_1B4 > 0) Then
  loc_1C00D7A:       Set var_1FC = Me.Txt
  loc_1C00D80:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_170, "UPDATE LASTVOU  SET DOCID='")
  loc_1C00D88:       var_194 = var_200.Text
  loc_1C00D91:       var_1F8 = -1 & var_170
  loc_1C00DA6:       var_3DC = var_170 & "' and UNAME='" & "' WHERE LogSite_Code='" & MemVar_1F95078 & "' and UNAME='"
  loc_1C00DBD:       Call 0.Method_arg_50 (var_3EC, var_3DC & MemVar_1F950C8 & "' AND ENAME='")
  loc_1C00DD6:       unk_5986AD.Execute var_204 & var_3EC & "'  ", , 
  loc_1C00E01:     Else
  loc_1C00E29:       Call 0.Method_arg_50 ("INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "' and UNAME='", "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "','", var_320)
  loc_1C00E32:       var_3D8 = -1 & "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "' and UNAME='"
  loc_1C00E39:       var_3E8 = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "' and UNAME='" & "' WHERE LogSite_Code='" & MemVar_1F95078 & "','"
  loc_1C00E4A:       Set var_1FC = Me.Txt
  loc_1C00E50:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_3DC)
  loc_1C00E58:       var_3E8 = var_200.Text
  loc_1C00E87:       Proc_6_7_F26918(var_1B4, Date)
  loc_1C00E93:       var_184 = ",'A','"
  loc_1C00EB9:       unk_5986AD.Execute CStr(CVar(var_204 & var_3DC & "','" & MemVar_1F95070 & "',") & var_1B4 & var_184 & CVar(MemVar_1F95078) & "')"), , 
  loc_1C00EF1:     End If
  loc_1C00EF3:   End If
  loc_1C00EFD:   unk_5986AD.CommitTrans
  loc_1C00F0D:   unk_5986AD.BeginTrans var_3C4
  loc_1C00F14:   Call Proc_338_111_1B8EC3C()
  loc_1C00F21:   unk_5986AD.CommitTrans
  loc_1C00F2C:   Set var_1FC = Me.TopCtrl1
  loc_1C00F32:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1C00F4B:   If (CStr() = "Add") Then
  loc_1C00F59:     unk_5986AD.BeginTrans var_3C4
  loc_1C00F60:     Call Proc_338_111_1B8EC3C()
  loc_1C00F6D:     unk_5986AD.CommitTrans
  loc_1C00F72:   End If
  loc_1C00F78:   var_8A = 0
  loc_1C00F8B:   Set var_1FC = Me.Txt
  loc_1C00F91:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200)
  loc_1C00FAF:   var_8A = 0
  loc_1C00FBF:   Me.Requery -1
  loc_1C00FEB:   Me.Find "SearchCode ='" & var_200.Text & "'", 0, 1
  loc_1C00FFD:   Set var_1FC = Me.TopCtrl1
  loc_1C01003:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_184)
  loc_1C0101C:   If (CStr(var_8A) = "Add") Then
  loc_1C0102A:     var_3C4 = Me.State
  loc_1C01038:     If (var_3C4 <> 0) Then
  loc_1C01048:       Me.Requery -1
  loc_1C0104D:     End If
  loc_1C0104D:   End If
  loc_1C01072:   Call Proc_338_93_FECC18(Proc_5_1_100EC1C("INI", Me), global_72)
  loc_1C0107F:   Call Proc_338_90_1A00AE0(var_8A)
  loc_1C01089:   Call 0.Method_arg_2A0 ()
  loc_1C010AB:   If (Me.FrTrans.Visible = &HFF) Then
  loc_1C010BC:     Me.FrTrans.Visible = False
  loc_1C010C4:   End If
  loc_1C010C4: End If
  loc_1C010CB: Set var_88 = Nothing
  loc_1C010D5: Set var_14C = Nothing
  loc_1C010DA: Exit Sub
  loc_1C010DB: ' Referenced from: 1BFB7E8
  loc_1C010E5: Set var_1FC = Err()
  loc_1C010EB: Call 0.Method_arg_1C (var_3C4)
  loc_1C010FC: If (var_3C4 = &H5B) Then
  loc_1C01101:   Resume Next
  loc_1C01105: End If
  loc_1C0110D: If (var_8A = &HFF) Then
  loc_1C01118:   unk_5986AD.RollbackTrans
  loc_1C0111D: End If
  loc_1C0111F: Proc_6_60_E63754()
  loc_1C01126: Exit Sub
End Sub

Private Sub TxtBarCode_KeyDown(KeyCode As Integer, Shift As Integer) 'E0D090
  'Data Table: 598690
  loc_E0D082: If (CLng(KeyCode) = &HD) Then
  loc_E0D08A:   Call TxtBarCode_Validate(&HFF)
  loc_E0D08F: End If
  loc_E0D08F: Exit Sub
End Sub

Private Sub TxtBarCode_Validate(Cancel As Boolean) '1504F54
  'Data Table: 598690
  Dim var_9C As String
  Dim var_A0 As Variant
  Dim var_88 As Variant
  Dim var_C4 As Variant
  Dim var_B4 As Variant
  Dim var_98 As Variant
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_106 As Integer
  Dim var_F4 As Variant
  Dim var_D4 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_104 As Variant
  Dim var_204 As Double
  Dim var_15C As Variant
  Dim var_20C As Double
  Dim var_1CC As Variant
  Dim var_E4 As Variant
  Dim var_210 As TextBox
  Dim var_148 As Variant
  Dim unk_5986AD As Connection15
  Dim var_10C As Recordset15
  loc_1504098: Set var_88 = Me.TopCtrl1
  loc_150409E: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_15040A6: var_9C = CStr()
  loc_15040DA: If ((var_9C = "Browse") And (Me.TxtBarCode.Text <> vbNullString)) Then
  loc_15040EA:   Me.TxtBarCode.Text = vbNullString
  loc_15040F8:   Call 0.Method_arg_50 (var_9C)
  loc_1504119:   MsgBox("Not Applicable In Browse Mode !", &H10, CVar(var_9C), var_E4, var_104)
  loc_1504129:   Exit Sub
  loc_150412A: End If
  loc_150414C: If (Trim(CVar(Me.TxtBarCode)) = vbNullString) Then
  loc_150414F:   Exit Sub
  loc_1504150: End If
  loc_150415B: var_C4 = Trim(CVar(Me.TxtBarCode))
  loc_1504164: var_110 = CStr(var_C4)
  loc_150417B: Me.TxtBarCode.Text = vbNullString
  loc_150419A: If (Me.RecordCount = 0) Then
  loc_150419D:   Exit Sub
  loc_150419E: End If
  loc_15041A4: Me.MoveFirst
  loc_15041CE: Me.Find "BarCode='" & var_110 & "'", 0, 1
  loc_15041EE: If (Me.EOF = &HFF) Then
  loc_150420A:   MsgBox("Item Not Found!", &H10, var_C4, var_E4, var_104)
  loc_150421D: Else
  loc_1504237:   var_106 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_1504244:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_150424C:   var_F4 = CVar(CLng(&HC)) 'Long
  loc_1504277:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_150427A:     var_B4 = vbNullString
  loc_1504284:     Set var_88 = Me.FGrid
  loc_15042AF:     var_106 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_15042B8:   End If
  loc_15042CB:   Me.FGrid.TopRow = CVar(CLng(var_106))
  loc_15042D7:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_15042DF:   var_128 = CVar(CLng(2)) 'Long
  loc_1504312:   var_C4 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_150431A:   Set var_14C = Me.FGrid
  loc_1504320:   LateIdCallSt
  loc_150433C:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_1504344:   var_128 = CVar(CLng(&HC)) 'Long
  loc_1504377:   var_C4 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_150437F:   Set var_14C = Me.FGrid
  loc_1504385:   LateIdCallSt
  loc_15043A1:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_15043A9:   var_128 = CVar(CLng(1)) 'Long
  loc_15043DC:   var_C4 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_15043E4:   Set var_14C = Me.FGrid
  loc_15043EA:   LateIdCallSt
  loc_1504406:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_150440E:   var_128 = CVar(CLng(4)) 'Long
  loc_1504441:   var_C4 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1504449:   Set var_14C = Me.FGrid
  loc_150444F:   LateIdCallSt
  loc_150446B:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_1504473:   var_128 = CVar(CLng(8)) 'Long
  loc_15044A6:   var_C4 = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_15044AE:   Set var_14C = Me.FGrid
  loc_15044B4:   LateIdCallSt
  loc_15044EF:   var_F4 = CVar(CLng(var_106)) 'Long
  loc_15044F7:   var_138 = CVar(CLng(6)) 'Long
  loc_1504524:   var_104 = CVar(CStr(Format(CVar(Me.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_150452C:   Set var_14C = Me.FGrid
  loc_1504532:   LateIdCallSt
  loc_1504550:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1504558:   var_F4 = CVar(CLng(0)) 'Long
  loc_1504562:   var_98 = CVar(CStr(var_106)) 'String
  loc_150456A:   Set var_88 = Me.FGrid
  loc_1504570:   LateIdCallSt
  loc_1504582:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_150458A:   var_F4 = CVar(CLng(5)) 'Long
  loc_15045BA:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_15045C1:     var_B4 = CVar(CLng(var_106)) 'Long
  loc_15045C9:     var_F4 = CVar(CLng(5)) 'Long
  loc_15045CE:     var_138 = "1.000"
  loc_15045D8:     Set var_88 = Me.FGrid
  loc_15045DE:     LateIdCallSt
  loc_15045E9:   End If
  loc_15045ED:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_15045F5:   var_F4 = CVar(CLng(5)) 'Long
  loc_150460F:   var_9C = CStr(Me.FGrid.TextMatrix))
  loc_1504617:   var_204 = Val(var_9C)
  loc_150461E:   var_138 = CVar(CLng(var_106)) 'Long
  loc_1504626:   var_15C = CVar(CLng(6)) 'Long
  loc_1504640:   var_A4 = CStr(Me.FGrid.TextMatrix))
  loc_1504648:   var_20C = Val(var_A4)
  loc_1504657:   var_1CC = CVar(CLng(7)) 'Long
  loc_1504690:   Set var_14C = Me.FGrid
  loc_1504696:   LateIdCallSt
  loc_15046FB:   Call 0.Method_TxtBarCode_Validate0 (CInt(3), var_210, var_A4, Me.Txt, CVar(CStr(Format(CVar((var_204 * var_20C)), "0.000"))), 1, 1)
  loc_1504703:   var_1CC = var_210.Text
  loc_150471A:   Call Proc_338_106_1064244(CStr(Me.Fields.Item("Code").Value), var_A4, var_204, CVar(CLng(var_106)), var_20C)
  loc_150472B:   var_148 = CVar(CLng(9)) 'Long
  loc_1504766:   LateIdCallSt
  loc_15047AC:   var_A0 = Me.Fields.Item("Code")
  loc_15047C7:   Set var_14C = Me.Txt
  loc_15047CD:   Call 0.Method_TxtBarCode_Validate0 (CInt(3), var_210, var_A4, Me.FGrid, CVar(CStr(Format(CVar(var_204), "0.00000"))), 1, 1)
  loc_15047D5:   var_148 = var_210.Text
  loc_15047EC:   Call Proc_338_106_1064244(CStr(var_A0.Value), var_A4, var_204, CVar(CLng(var_106)))
  loc_15047F5:   var_128 = CVar(CLng(var_106)) 'Long
  loc_15047FD:   var_148 = CVar(CLng(&HA)) 'Long
  loc_1504838:   LateIdCallSt
  loc_1504880:   Set var_88 = Me.Txt
  loc_1504886:   Call 0.Method_TxtBarCode_Validate0 (CInt(7), var_A0, var_9C, CVar(CLng(&H18)), CVar(CLng(var_106)), Me.FGrid, CVar(CStr(Format(CVar(var_204), "0.00000"))))
  loc_150488E:   1 = var_A0.Tag
  loc_1504896:   var_98 = CVar(var_9C) 'String
  loc_15048A4:   LateIdCallSt
  loc_15048F4:   var_C4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H14)), CVar(CLng(var_106)), Me.FGrid, CVar(Me.Fields.Item("DiscApp")), 1)) 'String
  loc_1504902:   LateIdCallSt
  loc_1504954:   var_C4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1504962:   LateIdCallSt
  loc_15049B4:   var_C4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H1A)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_15049C2:   LateIdCallSt
  loc_1504A14:   var_C4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStruName")), CVar(CLng(&H19)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1504A22:   LateIdCallSt
  loc_1504A74:   var_C4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1504A82:   LateIdCallSt
  loc_1504AD4:   var_C4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1504AE2:   LateIdCallSt
  loc_1504B34:   var_C4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1E)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1504B3C:   Set var_14C = Me.FGrid
  loc_1504B42:   LateIdCallSt
  loc_1504B5C:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1504B64:   var_F4 = CVar(CLng(&H17)) 'Long
  loc_1504BA0:   If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1504BA7:     var_B4 = CVar(CLng(var_106)) 'Long
  loc_1504BAF:     var_F4 = CVar(CLng(&H17)) 'Long
  loc_1504BC2:     Set var_88 = Me.FGrid
  loc_1504BC8:     LateIdCallSt
  loc_1504BD7:     var_B4 = CVar(CLng(var_106)) 'Long
  loc_1504BDF:     var_F4 = CVar(CLng(&H16)) 'Long
  loc_1504BF2:     Set var_88 = Me.FGrid
  loc_1504BF8:     LateIdCallSt
  loc_1504C03:   End If
  loc_1504C07:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1504C0F:   var_F4 = CVar(CLng(5)) 'Long
  loc_1504C38:   var_138 = CVar(CLng(var_106)) 'Long
  loc_1504C40:   var_15C = CVar(CLng(&HA)) 'Long
  loc_1504C62:   var_20C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1504CB0:   LateIdCallSt
  loc_1504D13:   var_C4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H1D)), CVar(CLng(var_106)), Me.FGrid, CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_20C)), "0.00"))), 1, 1)) 'String
  loc_1504D21:   LateIdCallSt
  loc_1504D73:   var_C4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("IDiscApp")), CVar(CLng(&H14)), CVar(CLng(var_106)), Me.FGrid, var_C4, CVar(CLng(&HB)))) 'String
  loc_1504D81:   LateIdCallSt
  loc_1504DD3:   var_C4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1504DE1:   LateIdCallSt
  loc_1504E33:   var_C4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1F)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1504E3B:   Set var_14C = Me.FGrid
  loc_1504E41:   LateIdCallSt
  loc_1504E92:   var_9C = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_C4, -1, var_14C, var_14C)
  loc_1504EA6:   unk_5986AD.Execute var_C4 & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(var_106)), var_20C
  loc_1504EB1:   Set var_10C = var_14C
  loc_1504EDF:   If (var_10C.RecordCount > 0) Then
  loc_1504F19:     Proc_6_39_E7D3A0(var_C4, CVar(var_10C.Fields.Item("Rate")), CVar(CLng(&H11)), CVar(CLng(var_106)))
  loc_1504F22:     var_E4 = CVar(CStr(var_C4)) 'String
  loc_1504F2A:     Set var_14C = Me.FGrid
  loc_1504F30:     LateIdCallSt
  loc_1504F48:   End If
  loc_1504F4D:   Call Proc_338_101_17C1F88(&H32, var_14C, var_E4)
  loc_1504F52: End If
  loc_1504F52: Exit Sub
End Sub

Private Sub CmdImport_Click() '124830C
  'Data Table: 598690
  Dim var_9C As String
  Dim var_BC As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim MemVar_1F95230 As String
  Dim var_104 As Connection15
  Dim var_108 As Recordset15
  Dim var_88 As Variant
  Dim var_EC As Variant
  Dim var_140 As Variant
  Dim var_128 As Variant
  Dim var_DC As Variant
  Dim var_178 As Variant
  loc_1247DEC: On Error Goto loc_1248305
  loc_1247DF3: Set var_88 = Me.TopCtrl1
  loc_1247DF9: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1247E01: var_9C = CStr()
  loc_1247E12: If (var_9C <> "Add") Then
  loc_1247E1B:   Call 0.Method_arg_50 (var_9C)
  loc_1247E29:   var_BC = CVar(var_9C) 'String
  loc_1247E3C:   MsgBox("Import Only In Add Mode.", &H40, var_BC, var_DC, var_FC)
  loc_1247E4C:   Exit Sub
  loc_1247E4D: End If
  loc_1247E6B: If (Trim(MemVar_1F95230) = vbNullString) Then
  loc_1247E71:   MemVar_1F95230 = "C:\Analysis\Transfer"
  loc_1247E81:   Call 0.Method_CmdImport_Click8 ("C:\Analysis")
  loc_1247E8C:   If (var_116 = 0) Then
  loc_1247E9B:     Call 0.Method_arg_74 ("C:\Analysis", var_88)
  loc_1247EAF:     Call 0.Method_CmdImport_Click8 ("C:\Analysis\Transfer", var_116)
  loc_1247EBA:     If (var_116 = 0) Then
  loc_1247EC9:       Call 0.Method_arg_74 ("C:\Analysis\Transfer", var_88)
  loc_1247ED1:     End If
  loc_1247ED1:   End If
  loc_1247ED1: End If
  loc_1247EDD: Call 0.Method_CmdImport_Click8 (MemVar_1F95230, var_116)
  loc_1247EE8: If (var_116 = 0) Then
  loc_1247F04:   MsgBox("Transfer Location Not Exits", &H40, var_BC, var_DC, var_FC)
  loc_1247F14: End If
  loc_1247F38: MemVar_1F95230 = Replace(MemVar_1F95230 & "\", "\\", "\", 1, -1, 0)
  loc_1247F4D: Set var_104 = New 
  loc_1247F58: Me.Connection15.CursorLocation = 3
  loc_1247F65: var_104.IsolationLevel = &H10
  loc_1247F72: var_104.CommandTimeout = 0
  loc_1247F8F: var_104.Open "Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source=" & MemVar_1F95230 & "SaleTransfer.mdb", vbNullString, vbNullString, -1
  loc_1247FAF: Set var_108 = New 
  loc_1247FCC: var_AC = CVar("Select Vno,Vdate,NetAmt as BillAmount,DocId From Sale1 S Where S.LOGSITE_CODE='" & MemVar_1F95078 & "' Order by S.Vno") 'String
  loc_1247FD3: Me.Recordset15.Open var_AC, CVar(var_104), 3
  loc_1247FD8: Call Proc_338_84_118B8E0(1, -1)
  loc_1247FF1: If (var_108.RecordCount = 0) Then
  loc_1248007:   Me.GridSel.Rows = 2
  loc_124800F:   Exit Sub
  loc_1248010: End If
  loc_1248023: Me.GridSel.Row = 1
  loc_124802B: ' Referenced from: 12482D2
  loc_124803A: If Not(var_108.EOF) Then
  loc_1248041:   Set var_130 = Me.GridSel
  loc_1248044:   var_AC = vbNullString
  loc_1248068:   var_AC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1248070:   var_EC = CVar(CLng(0)) 'Long
  loc_124807E:   LateIdCallSt
  loc_124809F:   var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_12480A7:   var_128 = CVar(CLng(1)) 'Long
  loc_12480D7:   var_DC = CVar(CStr(var_108.Fields.Item("VNo").Value)) 'String
  loc_12480DE:   LateIdCallSt
  loc_1248140:   var_DC = CVar(Proc_6_38_E69628(CVar(var_108.Fields.Item("DocID")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_130, var_DC, CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_1248147:   LateIdCallSt
  loc_124819D:   var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_12481A5:   var_140 = CVar(CLng(3)) 'Long
  loc_12481C2:   var_BC = CVar(Proc_6_38_E69628(CVar(var_108.Fields.Item("VDate")), var_130, "dd/mmm/yyyy", var_130, vbNullString)) 'String
  loc_12481D8:   LateIdCallSt
  loc_124821F:   Proc_6_39_E7D3A0(var_BC, CVar(var_108.Fields.Item("BillAmount")), var_130, CVar(CStr(Format(var_BC, "dd/mmm/yyyy"))), 1, 1)
  loc_1248237:   var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_124823F:   var_140 = CVar(CLng(4)) 'Long
  loc_1248268:   var_178 = CVar(CStr(Format(var_BC, "0.00"))) 'String
  loc_124826F:   LateIdCallSt
  loc_124828F:   Set var_130 = Nothing 
  loc_12482AC:   var_AC = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_12482BB:   Me.GridSel.Row = "BillAmount"
  loc_12482CD:   var_108.MoveNext
  loc_12482D2:   GoTo loc_124802B
  loc_12482D5: End If
  loc_12482E8: Me.GridSel.FixedRows = 1
  loc_12482FC: Me.FrTrans.Visible = True
  loc_1248304: Exit Sub
  loc_1248305: ' Referenced from: 1247DEC
  loc_1248305: Proc_6_60_E63754(var_130, var_178, 1, 1, var_140, var_EC)
  loc_124830A: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '111C270
  'Data Table: 598690
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_14C As Variant
  loc_111BF2F: Me.DGItem.Visible = False
  loc_111BF4E: If (Me.RecordCount > 0) Then
  loc_111BF8B:   Set var_B4 = Me.TxtGrid
  loc_111BF91:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_111BF99:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_111BFC2:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_111BFCA:   var_EC = CVar(CLng(2)) 'Long
  loc_111BFFD:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_111C005:   Set var_B8 = Me.FGrid
  loc_111C00B:   LateIdCallSt
  loc_111C03A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_111C042:   var_EC = CVar(CLng(&HC)) 'Long
  loc_111C075:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_111C083:   LateIdCallSt
  loc_111C0EA:   var_11C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Unit")), CVar(CLng(4)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_11C, CVar(CLng(4)))) 'String
  loc_111C0F2:   Set var_B8 = Me.FGrid
  loc_111C0F8:   LateIdCallSt
  loc_111C125:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_111C12D:   var_EC = CVar(CLng(1)) 'Long
  loc_111C160:   var_11C = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_111C168:   Set var_B8 = Me.FGrid
  loc_111C16E:   LateIdCallSt
  loc_111C1A4:   var_B0 = Me.Fields.Item("IPurchRate")
  loc_111C1BC:   var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_111C1C4:   var_FC = CVar(CLng(9)) 'Long
  loc_111C1F1:   var_14C = CVar(CStr(Format(CVar(var_B0), "0.00000"))) 'String
  loc_111C1F9:   Set var_B8 = Me.FGrid
  loc_111C1FF:   LateIdCallSt
  loc_111C21D: End If
  loc_111C229: Set var_A8 = Me.TxtGrid
  loc_111C22F: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_15E, var_B8, var_14C, 1, 1)
  loc_111C237: var_FC = var_B0.Visible
  loc_111C249: If (var_15E = &HFF) Then
  loc_111C255:   Set var_A8 = Me.TxtGrid
  loc_111C25B:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_DC, var_B8)
  loc_111C263:   var_B0.SetFocus
  loc_111C26F: End If
  loc_111C26F: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_1F 'E9F160
  'Data Table: 598690
  Dim var_A8 As Variant
  loc_E9F0E4: Set var_88 = Me.DGItem
  loc_E9F10E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9F116: Set var_BC = Me.DGItem
  loc_E9F150: Proc_6_138_106E830(Me.DGItem, global_60, 0, Me.FGPoint)
  loc_E9F15E: Exit Sub
End Sub

Private Sub Opt_GotFocus(Index As Integer) 'F2C5D8
  'Data Table: 598690
  Dim var_9C As String
  Dim var_A0 As OptionButton
  Dim unk_5986AD As Connection15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  loc_F2C4F8: Set var_88 = Me.TopCtrl1
  loc_F2C4FE: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_F2C517: If (CStr() = "Add") Then
  loc_F2C53D:   var_9C = "Select IsNull(Max(InvoiceNo),0)+1 From Purch1 Where LOGsite_code='" & MemVar_1F95078
  loc_F2C554:   Set var_88 = Me.Opt
  loc_F2C55A:   Call 0.Method_Opt_GotFocus0 (Index, var_A0, var_A4, CStr() & "' And InvoiceType='", var_98, -1)
  loc_F2C57B:   unk_5986AD.Execute var_C8 & var_A4 & "'", 0, var_DC
  loc_F2C58B:    = var_C8.Item()
  loc_F2C593:    = var_DC.Value
  loc_F2C5AA:   Me.LblInvoiceNo.Caption = CStr(var_A0.Caption.Fields)
  loc_F2C5D6: End If
  loc_F2C5D6: Exit Sub
End Sub

Private Sub Opt_KeyDown(KeyCode As Integer, Shift As Integer) 'E222D4
  'Data Table: 598690
  loc_E222C5: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E222CE:   Proc_6_75_E5335C(Shift)
  loc_E222D3: End If
  loc_E222D3: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '133E82C
  'Data Table: 598690
  Dim var_92 As Integer
  Dim var_88 As DataGrid
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_133E05E: Set var_88 = Me.Txt
  loc_133E064: Call 0.Method_Txt_GotFocus0 (Index)
  loc_133E072: Proc_6_74_E23240(var_8C)
  loc_133E07E: Call Proc_338_94_FDFE34(var_8C)
  loc_133E086: var_92 = Index
  loc_133E091: If (var_92 = CInt(1)) Then
  loc_133E0A7:   Me.DGVType.Tag = CVar(CStr(Index))
  loc_133E0C9:   If (Me.RecordCount > 0) Then
  loc_133E0D7:     Set var_8C = Me.FGPoint
  loc_133E0EF:     Proc_6_137_1192FDC(Me.DGVType, global_80, Index)
  loc_133E0FD:   End If
  loc_133E14B:   Set var_88 = Me.Txt
  loc_133E151:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0)
  loc_133E159:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_133E171:   If (var_8C Or (var_C0 = vbNullString)) Then
  loc_133E174:     Exit Sub
  loc_133E175:   End If
  loc_133E182:   Set var_88 = Me.Txt
  loc_133E188:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_133E190:   var_C0 = var_8C.Text
  loc_133E198:   var_D4 = CVar(var_C0) 'String
  loc_133E1DD:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_133E1E6:     Me.MoveFirst
  loc_133E20B:     Set var_88 = Me.Txt
  loc_133E211:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "Name =")
  loc_133E219:     0 = var_8C.Text
  loc_133E227:     Proc_6_17_EAAE40(var_D4, CVar(var_C0), 1)
  loc_133E23D:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_133E255:   End If
  loc_133E258: Else
  loc_133E260:   If (var_92 = CInt(7)) Then
  loc_133E27A:     If (Me.State <> 0) Then
  loc_133E294:       If (Me.RecordCount > 0) Then
  loc_133E2A2:         Set var_8C = Me.FGPoint
  loc_133E2BA:         Proc_6_137_1192FDC(Me.DgMR, global_76)
  loc_133E2C8:       End If
  loc_133E316:       Set var_88 = Me.Txt
  loc_133E31C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0)
  loc_133E324:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_133E33C:       If (Index Or (var_C0 = vbNullString)) Then
  loc_133E33F:         Exit Sub
  loc_133E340:       End If
  loc_133E34D:       Set var_88 = Me.Txt
  loc_133E353:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_133E35B:       var_C0 = var_8C.Text
  loc_133E363:       var_D4 = CVar(var_C0) 'String
  loc_133E3A8:       If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_133E3B1:         Me.MoveFirst
  loc_133E3D6:         Set var_88 = Me.Txt
  loc_133E3DC:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "Name =")
  loc_133E3E4:         0 = var_8C.Text
  loc_133E3F2:         Proc_6_17_EAAE40(var_D4, CVar(var_C0), 1)
  loc_133E408:         Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_133E420:       End If
  loc_133E420:     End If
  loc_133E423:   Else
  loc_133E42B:     If (var_92 = CInt(4)) Then
  loc_133E445:       If (Me.RecordCount > 0) Then
  loc_133E453:         Set var_8C = Me.FGPoint
  loc_133E46B:         Proc_6_137_1192FDC(Me.DGParty, global_64)
  loc_133E479:       End If
  loc_133E4C7:       Set var_88 = Me.Txt
  loc_133E4CD:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0)
  loc_133E4D5:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_133E4ED:       If (Index Or (var_C0 = vbNullString)) Then
  loc_133E4F0:         Exit Sub
  loc_133E4F1:       End If
  loc_133E4FE:       Set var_88 = Me.Txt
  loc_133E504:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_133E50C:       var_C0 = var_8C.Text
  loc_133E514:       var_D4 = CVar(var_C0) 'String
  loc_133E559:       If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_133E562:         Me.MoveFirst
  loc_133E587:         Set var_88 = Me.Txt
  loc_133E58D:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "Name =")
  loc_133E595:         0 = var_8C.Text
  loc_133E5A3:         Proc_6_17_EAAE40(var_D4, CVar(var_C0), 1)
  loc_133E5B9:         Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_133E5D1:       End If
  loc_133E5D4:     Else
  loc_133E5DC:       If (var_92 = CInt(5)) Then
  loc_133E5ED:         Set var_88 = Me.Txt
  loc_133E5F3:         Call 0.Method_Txt_GotFocus0 (CInt(1), var_8C)
  loc_133E612:         If (var_8C.Text Like "*Return*") Then
  loc_133E624:           Me.Filter = 0
  loc_133E63A:           Set var_88 = Me.Txt
  loc_133E640:           Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_133E648:           var_C0 = var_8C.Tag
  loc_133E662:           Me.Filter = CVar("Party='" & var_C0 & "'")
  loc_133E683:           Me.Requery -1
  loc_133E69F:           If (Me.RecordCount > 0) Then
  loc_133E6AD:             Set var_8C = Me.FGPoint
  loc_133E6C5:             Proc_6_137_1192FDC(Me.DGPartyBillNo, global_68)
  loc_133E6D3:           End If
  loc_133E721:           Set var_88 = Me.Txt
  loc_133E727:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0)
  loc_133E72F:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_133E747:           If (Index Or (var_C0 = vbNullString)) Then
  loc_133E74A:             Exit Sub
  loc_133E74B:           End If
  loc_133E758:           Set var_88 = Me.Txt
  loc_133E75E:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_133E766:           var_C0 = var_8C.Text
  loc_133E76E:           var_D4 = CVar(var_C0) 'String
  loc_133E7B3:           If CBool(var_D4 <> Me.Fields.Item("PartyBillNoNm").Value) Then
  loc_133E7BC:             Me.MoveFirst
  loc_133E7E1:             Set var_88 = Me.Txt
  loc_133E7E7:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "PartyBillNoNm =")
  loc_133E7EF:             0 = var_8C.Text
  loc_133E7FD:             Proc_6_17_EAAE40(var_D4, CVar(var_C0), 1)
  loc_133E813:             Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_133E82B:           End If
  loc_133E82B:         End If
  loc_133E82B:       End If
  loc_133E82B:     End If
  loc_133E82B:   End If
  loc_133E82B: End If
  loc_133E82B: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '129EEA0
  'Data Table: 598690
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_E8 As String
  Dim var_90 As Variant
  Dim var_9C As DataGrid
  Dim var_A0 As DataGrid
  loc_129E8A7: var_86 = Shift
  loc_129E8B4: If (CLng(Shift) = &H1B) Then
  loc_129E8B7:   Call Proc_338_94_FDFE34(var_86)
  loc_129E8BC:   Exit Sub
  loc_129E8BD: End If
  loc_129E8C0: var_88 = KeyCode
  loc_129E8CB: If (var_88 = CInt(1)) Then
  loc_129E928:   Proc_6_69_134A630(Me.DGVType, Me.Txt, CInt(1), global_80, Shift, &HFF)
  loc_129E955:   If (Me.RecordCount > 0) Then
  loc_129E98A:     var_E8 = CStr(Trim(CVar(Me.Fields.Item("NCat"))))
  loc_129E990:     global_124 = var_E8
  loc_129E9A1:     Call Proc_338_109_1131C2C(1, Nothing, Me.FGPoint)
  loc_129E9A6:   End If
  loc_129E9FF:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_129EA0D:     Set var_90 = Me.FGPoint
  loc_129EA25:     Proc_6_138_106E830(Me.DGVType, global_80, KeyCode)
  loc_129EA33:   End If
  loc_129EA36: Else
  loc_129EA3E:   If (var_88 = CInt(7)) Then
  loc_129EA58:     If (Me.State <> 0) Then
  loc_129EA78:       Set var_A0 = Me.FGPoint
  loc_129EA83:       Set var_9C = Nothing
  loc_129EAB5:       Proc_6_69_134A630(Me.DgMR, Me.Txt, CInt(7), global_76, Shift, 0, 1)
  loc_129EB24:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_129EB2B:         Set var_9C = Me.DgMR
  loc_129EB4A:         Proc_6_138_106E830(var_9C, global_76, KeyCode, Me.FGPoint, var_9C)
  loc_129EB58:       End If
  loc_129EB58:     End If
  loc_129EB5B:   Else
  loc_129EB63:     If (var_88 = CInt(4)) Then
  loc_129EB83:       Set var_A0 = Me.FGPoint
  loc_129EBC0:       Proc_6_69_134A630(Me.DGParty, Me.Txt, CInt(4), global_64, Shift, &HFF, 1, Nothing)
  loc_129EC2F:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_129EC3D:         Set var_90 = Me.FGPoint
  loc_129EC55:         Proc_6_138_106E830(Me.DGParty, global_64, KeyCode, var_90, var_A0, 0)
  loc_129EC63:       End If
  loc_129EC66:     Else
  loc_129EC6E:       If (var_88 = CInt(5)) Then
  loc_129EC7F:         Set var_8C = Me.Txt
  loc_129EC85:         Call 0.Method_Txt_KeyDown0 (CInt(1), var_90, var_E8, var_A0)
  loc_129EC8D:         0 = var_90.Text
  loc_129ECA4:         If (var_E8 Like "*Return*") Then
  loc_129ECC4:           Set var_A0 = Me.FGPoint
  loc_129ECCF:           Set var_9C = Nothing
  loc_129ED01:           Proc_6_69_134A630(Me.DGPartyBillNo, Me.Txt, CInt(5), global_68, Shift, &HFF, 1)
  loc_129ED70:           If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_129ED77:             Set var_9C = Me.DGPartyBillNo
  loc_129ED96:             Proc_6_138_106E830(var_9C, global_68, KeyCode, Me.FGPoint, var_9C)
  loc_129EDA4:           End If
  loc_129EDA4:         End If
  loc_129EDA4:       End If
  loc_129EDA4:     End If
  loc_129EDA4:   End If
  loc_129EDA4: End If
  loc_129EDBE: Set var_90 = Me.DGItem
  loc_129EDEC: Set var_A0 = Me.DGPartyBillNo
  loc_129EE4B: If ((((((CBool(Me.DGVType.Visible) = 0) And (CBool(var_90.Visible) = 0)) And (CBool(Me.DGParty.Visible) = 0)) And (CBool(var_A0.Visible) = 0)) And (CBool(Me.DgMR.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_129EE63:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_129EE6C:     Proc_6_75_E5335C(Shift, arg_14, var_A0, 0)
  loc_129EE71:   End If
  loc_129EE79:   If (KeyCode <> CInt(7)) Then
  loc_129EE91:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_129EE9A:       Proc_6_76_E533C8(Shift, arg_14, var_90)
  loc_129EE9F:     End If
  loc_129EE9F:   End If
  loc_129EE9F: End If
  loc_129EE9F: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '10D55E8
  'Data Table: 598690
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_B8 As TextBox
  loc_10D52DC: On Error Goto loc_10D55E0
  loc_10D52E2: Proc_6_58_E06050(arg_10)
  loc_10D52EA: var_86 = KeyAscii
  loc_10D52F5: If (var_86 = CInt(1)) Then
  loc_10D5314:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_10D532A:     Me.DGVType.Tag = CVar(CStr(KeyAscii))
  loc_10D5344:     var_B0 = "Name"
  loc_10D535F:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_80, arg_10)
  loc_10D5379:     Set var_B8 = Me.FGPoint
  loc_10D5391:     Proc_6_138_106E830(Me.DGVType, global_80, KeyAscii, var_B8)
  loc_10D539F:   End If
  loc_10D53A2: Else
  loc_10D53AA:   If (var_86 = CInt(2)) Then
  loc_10D53B7:     Set var_8C = Me.Txt
  loc_10D53BD:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, var_B0)
  loc_10D53D8:     Proc_6_42_129B55C(var_B8, arg_10, 8)
  loc_10D53E7:   Else
  loc_10D53EF:     If (var_86 = CInt(7)) Then
  loc_10D540E:       If (CBool(Me.DgMR.Visible) = &HFF) Then
  loc_10D543B:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_10D546D:         Proc_6_138_106E830(Me.DgMR, global_76, KeyAscii, Me.FGPoint)
  loc_10D547B:       End If
  loc_10D547E:     Else
  loc_10D5486:       If (var_86 = CInt(4)) Then
  loc_10D54A5:         If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_10D54B7:           var_B0 = "Name"
  loc_10D54D2:           Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, arg_10, var_B0)
  loc_10D54EC:           Set var_B8 = Me.FGPoint
  loc_10D5504:           Proc_6_138_106E830(Me.DGParty, global_64, KeyAscii, var_B8, 0)
  loc_10D5512:         End If
  loc_10D5515:       Else
  loc_10D551D:         If (var_86 = CInt(5)) Then
  loc_10D552E:           Set var_8C = Me.Txt
  loc_10D5534:           Call 0.Method_Txt_KeyPress0 (CInt(1), var_B8, var_B0, 0)
  loc_10D553C:           0 = var_B8.Text
  loc_10D5553:           If (var_B0 Like "*Return*") Then
  loc_10D5572:             If (CBool(Me.DGPartyBillNo.Visible) = &HFF) Then
  loc_10D5584:               var_B0 = "PartyBillNoNm"
  loc_10D559F:               Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, arg_10)
  loc_10D55D1:               Proc_6_138_106E830(Me.DGPartyBillNo, global_68, KeyAscii, Me.FGPoint)
  loc_10D55DF:             End If
  loc_10D55DF:           End If
  loc_10D55DF:         End If
  loc_10D55DF:       End If
  loc_10D55DF:     End If
  loc_10D55DF:   End If
  loc_10D55DF: End If
  loc_10D55DF: Exit Sub
  loc_10D55E0: ' Referenced from: 10D52DC
  loc_10D55E0: Proc_6_60_E63754(var_B0, 0)
  loc_10D55E5: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E7DB90
  'Data Table: 598690
  Dim var_8C As TextBox
  loc_E7DB3A: Set var_88 = Me.Txt
  loc_E7DB40: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E7DB4E: Proc_6_73_E23294(var_8C)
  loc_E7DB62: If (Index = CInt(1)) Then
  loc_E7DB72:   Set var_88 = Me.Txt
  loc_E7DB78:   Call 0.Method_Txt_LostFocus0 (CInt(1), var_8C)
  loc_E7DB80:   var_8C.Enabled = False
  loc_E7DB8C: End If
  loc_E7DB8C: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1823494
  'Data Table: 598690
  Dim var_A0 As Integer
  Dim var_A8 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim var_B0 As String
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_F0 As String
  Dim var_F4 As String
  Dim unk_5986AD As Connection15
  Dim var_88 As Recordset15
  Dim var_EC As Variant
  Dim var_130 As Variant
  Dim var_160 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Variant
  Dim var_110 As Variant
  Dim var_AC As Variant
  Dim var_1B4 As Variant
  Dim var_120 As Variant
  Dim var_1BC As String
  Dim var_9C As Recordset15
  Dim var_8E As Integer
  Dim var_1D4 As Variant
  Dim var_1E4 As Variant
  Dim var_180 As Variant
  Dim var_98 As Integer
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_94 As Recordset15
  Dim var_B6 As Integer
  Dim var_214 As Variant
  Dim var_274 As Variant
  Dim var_294 As Variant
  loc_18210BC: On Error Goto loc_182348C
  loc_18210C2: var_A0 = Cancel
  loc_18210CD: If (var_A0 = CInt(1)) Then
  loc_18210DB:   Set var_A4 = Me.Txt
  loc_18210E1:   Call 0.Method_Txt_Validate0 (CInt(1), var_A8)
  loc_18210E9:   var_B0 = "Voucher Type"
  loc_182110A:   If (Proc_6_27_EA61EC(var_A8, var_B0) = 0) Then
  loc_1821118:     Set var_A4 = Me.Txt
  loc_182111E:     Call 0.Method_Txt_Validate0 (CInt(1), var_A8)
  loc_1821126:     var_A8.SetFocus
  loc_1821134:     arg_10 = &HFF
  loc_1821137:     Exit Sub
  loc_1821138:   End If
  loc_1821186:   Set var_A4 = Me.Txt
  loc_182118C:   Call 0.Method_Txt_Validate0 (Cancel, var_A8, var_B0)
  loc_1821194:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A8.Text
  loc_18211AC:   If (arg_10 Or (var_B0 = vbNullString)) Then
  loc_18211BC:     Set var_A4 = Me.Txt
  loc_18211C2:     Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_18211CA:     var_A8.Text = vbNullString
  loc_18211E3:     Set var_A4 = Me.Txt
  loc_18211E9:     Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_18211F1:     var_A8.Tag = vbNullString
  loc_1821203:     global_124 = vbNullString
  loc_182120D:     global_188 = vbNullString
  loc_1821214:   Else
  loc_182124F:     Set var_AC = Me.Txt
  loc_1821255:     Call 0.Method_Txt_Validate0 (Cancel, var_CC)
  loc_182125D:     var_CC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_18212AE:     Set var_AC = Me.Txt
  loc_18212B4:     Call 0.Method_Txt_Validate0 (Cancel, var_CC)
  loc_18212BC:     var_CC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_18212FB:     var_EC = Trim(CVar(Me.Fields.Item("NCat")))
  loc_182130A:     global_124 = CStr(var_EC)
  loc_182133D:     var_DC = CVar(Me.Fields.Item("ContraType")) 'Address
  loc_182134C:     global_188 = Proc_6_38_E69628(var_DC)
  loc_182137C:     If (((global_124 = "PRC") Or (global_124 = "PBC")) Or (global_124 = "EXC")) Then
  loc_182137F:     End If
  loc_1821389:     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_A0)
  loc_18213A2:     If (CStr() = "Add") Then
  loc_18213C0:       var_F0 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE logSite_Code='" & MemVar_1F95078 & "' and Site_Code='"
  loc_18213C7:       var_F4 = var_F0 & MemVar_1F95070
  loc_18213E8:       unk_5986AD.Execute var_F4 & "' and NCAT='" & global_124 & "' Order by Description", var_DC, -1
  loc_18213F3:       Set var_88 = Me.TopCtrl1
  loc_182141F:       If (var_88.RecordCount > 0) Then
  loc_182143C:         var_A8 = var_88.Fields.Item(0)
  loc_182144D:         var_B0 = CStr(var_A8.Value)
  loc_1821453:         global_132 = var_B0
  loc_1821467:       Else
  loc_1821480:         MsgBox("Sundry setting Not Configured for Purchase Department", 0, var_EC, var_130, var_150)
  loc_182149D:         Me.Global.Unload Me
  loc_18214A5:         Exit Sub
  loc_18214A6:       End If
  loc_18214AC:       Call Proc_338_96_10E9EB0(MemVar_1F95044, var_B0)
  loc_18214BF:       Set var_A4 = Me.Txt
  loc_18214C5:       Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_18214CD:       var_A8.Text = var_B0
  loc_18214DC:     End If
  loc_18214DC:     Call Proc_338_109_1131C2C(var_A4)
  loc_18214EF:     Set var_A4 = Me.Txt
  loc_18214F5:     Call 0.Method_Txt_Validate0 (CInt(1), var_A8)
  loc_1821509:     Call Proc_338_108_E44480(var_A8.Text)
  loc_1821518:   End If
  loc_182151B: Else
  loc_1821523:   If (var_A0 = CInt(2)) Then
  loc_1821531:     Set var_A4 = Me.Txt
  loc_1821537:     Call 0.Method_Txt_Validate0 (CInt(2))
  loc_182153F:     var_B0 = "Vr. No"
  loc_1821560:     If (Proc_6_27_EA61EC(var_A8, var_B0) = 0) Then
  loc_182156E:       Set var_A4 = Me.Txt
  loc_1821574:       Call 0.Method_Txt_Validate0 (CInt(2), var_A8)
  loc_182157C:       var_A8.SetFocus
  loc_182158A:       arg_10 = &HFF
  loc_182158D:       Exit Sub
  loc_182158E:     End If
  loc_182159C:     Set var_A4 = Me.Txt
  loc_18215A2:     Call 0.Method_Txt_Validate0 (CInt(2), var_A8, var_B0)
  loc_18215AA:     arg_10 = var_A8.Text
  loc_18215C2:     If (CDbl(var_B0) = CDbl(0)) Then
  loc_18215DE:       MsgBox("Vr. No Can Not Be 0", 0, var_EC, var_130, var_150)
  loc_18215F8:       Set var_A4 = Me.Txt
  loc_18215FE:       Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1821606:       var_A8.SetFocus
  loc_1821614:       arg_10 = &HFF
  loc_1821617:       Exit Sub
  loc_1821618:     End If
  loc_182161C:     Set var_A4 = Me.TopCtrl1
  loc_1821622:     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(arg_10)
  loc_182163B:     If (CStr(var_A8) = "Add") Then
  loc_182166F:       var_DC = Space((5 - Len(global_132)))
  loc_1821677:       var_130 = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & global_132) + "Vr. No Can Not Be 0")
  loc_182168B:       var_150 = Space((5 - Len(global_116)))
  loc_1821693:       var_160 = (var_130 + var_150)
  loc_18216A0:       var_170 = (var_160 + CVar(global_116))
  loc_18216B7:       Set var_A4 = Me.Txt
  loc_18216BD:       Call 0.Method_Txt_Validate0 (CInt(2), var_A8, var_F4)
  loc_18216C5:       8 = var_A8.Text
  loc_18216D2:       var_180 = Space((var_170 - Len(var_F4)))
  loc_18216DA:       var_190 = ( + var_180)
  loc_18216EC:       Set var_AC = Me.Txt
  loc_18216F2:       Call 0.Method_Txt_Validate0 (CInt(2), var_CC)
  loc_1821705:       var_1B0 = (var_190 + CVar(var_CC.Text))
  loc_1821752:       Set var_A4 = Me.Txt
  loc_1821758:       Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_1821760:       var_A8.Text = CStr(var_1B0)
  loc_182177C:       Me.LblVPrefix.Caption = global_116
  loc_1821784:     End If
  loc_1821788:     Set var_A4 = Me.TopCtrl1
  loc_182178E:     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1821796:     var_B0 = CStr()
  loc_18217A7:     If (var_B0 = "Add") Then
  loc_18217D7:       Set var_A4 = Me.Txt
  loc_18217DD:       Call 0.Method_Txt_Validate0 (CInt(0), var_A8, var_B0, "Select Count(*) From Purch1 Where DocID='", "Vr. No Can Not Be 0", -1)
  loc_18217EE:       var_F0 = var_CC & var_B0
  loc_18217FE:       unk_5986AD.Execute var_F0 & "'", 0, var_1B4
  loc_182180E:        = var_CC.Item()
  loc_1821816:        = var_1B4.Value
  loc_1821843:       If (var_A8.Text.Fields > 0) Then
  loc_182184C:         Call 0.Method_arg_50 (var_B0)
  loc_182186D:         MsgBox("Duplicate Voucher No.", &H40, CVar(var_B0), var_130, var_150)
  loc_1821883:         Call Proc_338_96_10E9EB0(MemVar_1F95044)
  loc_1821893:         If (var_B0 = vbNullString) Then
  loc_18218A0:           Set var_A4 = Me.Txt
  loc_18218A6:           Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_18218AE:           var_A8.SetFocus
  loc_18218BC:           arg_10 = &HFF
  loc_18218BF:           Exit Sub
  loc_18218C0:         End If
  loc_18218C6:         Call Proc_338_96_10E9EB0(MemVar_1F95044, var_B0)
  loc_18218D9:         Set var_A4 = Me.Txt
  loc_18218DF:         Call 0.Method_Txt_Validate0 (CInt(0), var_A8, var_B0)
  loc_18218E7:         var_A8.Text = arg_10
  loc_18218F8:         arg_10 = &HFF
  loc_18218FB:         Exit Sub
  loc_18218FC:       End If
  loc_18218FC:     End If
  loc_18218FF:   Else
  loc_1821907:     If (var_A0 = CInt(3)) Then
  loc_1821918:       Set var_A4 = Me.Txt
  loc_182191E:       Call 0.Method_Txt_Validate0 (CInt(3), var_A8, var_B0)
  loc_1821926:       arg_10 = var_A8.Text
  loc_182193C:       var_130 = Len(Trim(CVar(var_B0)))
  loc_1821956:       If (var_130 = 0) Then
  loc_182196C:         Set var_A4 = Me.Txt
  loc_1821972:         Call 0.Method_Txt_Validate0 (CInt(3), var_A8)
  loc_182197A:         var_A8.Text = CStr(MemVar_1F950EC)
  loc_182198C:       Else
  loc_1821996:         Set var_A4 = Me.Txt
  loc_182199C:         Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_18219BC:         Set var_CC = Me.Txt
  loc_18219C2:         Call 0.Method_Txt_Validate0 (Cancel, var_1B4)
  loc_18219CA:         var_1B4.Text = Proc_6_33_15125B8(var_A8)
  loc_18219DD:       End If
  loc_18219EA:       Set var_A4 = Me.Txt
  loc_18219F0:       Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_18219F8:       var_B0 = var_A8.Text
  loc_1821A13:       Set var_AC = Me.Txt
  loc_1821A19:       Call 0.Method_Txt_Validate0 (Cancel, var_CC, var_F0)
  loc_1821A21:       (CDate(var_B0) >= MemVar_1F950F4) = var_CC.Text
  loc_1821A43:       If Not((var_B0 And (CDate(var_F0) <= MemVar_1F950FC))) Then
  loc_1821A67:         MsgBox("V.Date Not Between Current Fin. Year", 0, "Date Validate", var_130, var_150)
  loc_1821A81:         Set var_A4 = Me.Txt
  loc_1821A87:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_1821A8F:         var_A8.SetFocus
  loc_1821A9D:         arg_10 = &HFF
  loc_1821AA0:         Exit Sub
  loc_1821AA1:       End If
  loc_1821AC1:       Set var_A4 = Me.Txt
  loc_1821AC7:       Call 0.Method_Txt_Validate0 (CInt(3), var_A8, var_B0)
  loc_1821ACF:       ((global_256 = "No") And (MemVar_1F950B8 <> 1)) = var_A8.Text
  loc_1821AE8:       If (arg_10 And (CDate(var_B0) < MemVar_1F950EC)) Then
  loc_1821B06:         var_DC = "Back Date Entry Blocked."
  loc_1821B0C:         MsgBox(var_DC, &H10, "Date Validate", var_130, var_150)
  loc_1821B26:         Set var_A4 = Me.Txt
  loc_1821B2C:         Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1821B34:         var_A8.SetFocus
  loc_1821B42:         arg_10 = &HFF
  loc_1821B45:         Exit Sub
  loc_1821B46:       End If
  loc_1821B4A:       Set var_A4 = Me.TopCtrl1
  loc_1821B50:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(arg_10)
  loc_1821B58:       var_B0 = CStr(var_A8)
  loc_1821B6E:       Set var_A8 = Me.Txt
  loc_1821B74:       Call 0.Method_Txt_Validate0 (CInt(2), var_AC)
  loc_1821B9D:       If ((var_B0 = "Add") And (var_AC.Text = vbNullString)) Then
  loc_1821BA6:         Call Proc_338_96_10E9EB0(MemVar_1F95044)
  loc_1821BB9:         Set var_A4 = Me.Txt
  loc_1821BBF:         Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_1821BC7:         var_A8.Text = var_B0
  loc_1821BD6:       End If
  loc_1821BD9:     Else
  loc_1821BE1:       If (var_A0 = CInt(8)) Then
  loc_1821BEF:         Set var_A4 = Me.Txt
  loc_1821BF5:         Call 0.Method_Txt_Validate0 (CInt(8), var_A8)
  loc_1821C1E:         If (Proc_6_27_EA61EC(var_A8, "Party Name") = 0) Then
  loc_1821C2C:           Set var_A4 = Me.Txt
  loc_1821C32:           Call 0.Method_Txt_Validate0 (CInt(8), var_A8)
  loc_1821C3A:           var_A8.SetFocus
  loc_1821C48:           arg_10 = &HFF
  loc_1821C4B:           Exit Sub
  loc_1821C4C:         End If
  loc_1821C6F:         If (((global_124 = "PRC") Or (global_124 = "PBC")) Or (global_124 = "EXC")) Then
  loc_1821C8F:           Proc_6_17_EAAE40(var_DC, MemVar_1F95078, "Select CashPurchAc From Enviro  WHERE LOGSITE_CODE=", var_130)
  loc_1821C97:           var_EC = -1 & var_DC 
  loc_1821CA5:           unk_5986AD.Execute CStr("Date Validate"), var_A4, arg_10
  loc_1821CB0:           Set var_88 = var_A4
  loc_1821CD6:           If (var_88.RecordCount > 0) Then
  loc_1821CF3:             var_A8 = var_88.Fields.Item("CashPurchAc")
  loc_1821CFB:             var_DC = var_A8.Value
  loc_1821D12:             Set var_AC = Me.Txt
  loc_1821D18:             Call 0.Method_Txt_Validate0 (CInt(4), var_CC)
  loc_1821D20:             var_CC.Tag = CStr(var_DC)
  loc_1821D44:             Set var_A4 = Me.Txt
  loc_1821D4A:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_A8)
  loc_1821D52:             var_A8.Tag = vbNullString
  loc_1821D6B:             Set var_A4 = Me.Txt
  loc_1821D71:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_A8)
  loc_1821D79:             var_A8.Enabled = True
  loc_1821D85:           End If
  loc_1821D85:         End If
  loc_1821D9C:         If ((global_124 = "PBC") Or (global_124 = "EXC")) Then
  loc_1821DA9:           Set global_76 = New 
  loc_1821DBB:           Me.Recordset15.CursorLocation = 3
  loc_1821DC7:           var_B0 = "Select Distinct M.Docid as Code ,ltrim(Right(max(M.DocId),8)) as Name,Max(M.Vtype) as V_type,Max(M.VDate) as V_Date,Max(SG.Name) As PartyName " & "From ((Stock M Left Join Purch2 P2 on (M.Docid = P2.ContraDocid and M.Sno = P2.ContraSno)) "
  loc_1821DCE:           var_F0 = var_B0 & "Left Join SubGroup SG on M.PartyCode=SG.SubCode)Left Join Voucher_Type V on (M.Vtype=V.V_Type and M.LogSite_Code=V.LogSite_Code) "
  loc_1821DF1:           var_1BC = var_F0 & "where V.LogSite_Code='" & MemVar_1F95078 & "' and V.Site_Code='" & MemVar_1F95070 & "' and V.Ncat in ('MRE') and M.Partycode='"
  loc_1821E08:           Call 0.Method_Txt_Validate0 (CInt(4), var_A8, var_1B8)
  loc_1821E10:           var_1BC = var_A8.Tag
  loc_1821E20:           var_8C = var_B0 & var_1B8 & "'    Group By M.Docid,M.Sno Having Max(M.AccQty) - Sum(isnull(P2.AccQty,0)) > 0 "
  loc_1821E55:           unk_5986AD.Execute var_8C, var_DC, -1
  loc_1821E66:           Set global_76 = Me.Txt
  loc_1821E7D:           CVarUnk
  loc_1821E82:           VerifyVarObj
  loc_1821E88:           Set var_A4 = Me.DgMR
  loc_1821E8E:           LateIdStAd
  loc_1821E9C:         End If
  loc_1821E9F:       Else
  loc_1821EA7:         If (var_A0 = CInt(4)) Then
  loc_1821EBB:           Call 0.Method_Txt_Validate0 (CInt(4), var_A8, Me.Txt)
  loc_1821EC3:           var_B0 = "Party Name"
  loc_1821EE4:           If (Proc_6_27_EA61EC(var_A8, var_B0) = 0) Then
  loc_1821EF2:             Set var_A4 = Me.Txt
  loc_1821EF8:             Call 0.Method_Txt_Validate0 (CInt(4), var_A8)
  loc_1821F00:             var_A8.SetFocus
  loc_1821F0E:             arg_10 = &HFF
  loc_1821F11:             Exit Sub
  loc_1821F12:           End If
  loc_1821F60:           Set var_A4 = Me.Txt
  loc_1821F66:           Call 0.Method_Txt_Validate0 (Cancel, var_A8, var_B0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1821F6E:           arg_10 = var_A8.Text
  loc_1821F86:           If (global_76 Or (var_B0 = vbNullString)) Then
  loc_1821F96:             Set var_A4 = Me.Txt
  loc_1821F9C:             Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1821FA4:             var_A8.Text = vbNullString
  loc_1821FBD:             Set var_A4 = Me.Txt
  loc_1821FC3:             Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1821FCB:             var_A8.Tag = vbNullString
  loc_1821FDA:           Else
  loc_1822015:             Set var_AC = Me.Txt
  loc_182201B:             Call 0.Method_Txt_Validate0 (Cancel, var_CC)
  loc_1822023:             var_CC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1822074:             Set var_AC = Me.Txt
  loc_182207A:             Call 0.Method_Txt_Validate0 (Cancel, var_CC)
  loc_1822082:             var_CC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_18220D4:             Set var_AC = Me.Txt
  loc_18220DA:             Call 0.Method_Txt_Validate0 (CInt(8), var_CC)
  loc_18220E2:             var_CC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1822112:             var_A8 = Me.Fields.Item("TINNo")
  loc_182211A:             var_DC = CVar(var_A8) 'Address
  loc_1822131:             Set var_AC = Me.Txt
  loc_1822137:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_CC)
  loc_182213F:             var_CC.Text = Proc_6_38_E69628(var_DC)
  loc_1822160:             Set var_A4 = Me.Txt
  loc_1822166:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_A8)
  loc_182216E:             var_A8.Enabled = False
  loc_182217A:           End If
  loc_182219D:           If (((global_124 = "PBR") Or (global_124 = "EXR")) Or (global_124 = "CRN")) Then
  loc_18221A7:             var_B0 = "Select Distinct M.Docid as Code ,ltrim(Right(max(M.DocId),8)) as Name,Max(M.Vtype) as V_type,Max(M.VDate) as V_Date,Max(SG.Name) As PartyName " & "From ((Stock M Left Join Purch2 P2 on (M.Docid = P2.ContraDocid and M.Sno = P2.ContraSno)) "
  loc_18221AE:             var_F0 = var_B0 & "Left Join SubGroup SG on M.PartyCode=SG.SubCode)Left Join Voucher_Type V on (M.Vtype=V.V_Type and M.LogSite_Code=V.LogSite_Code) "
  loc_18221D1:             var_1BC = var_F0 & "where V.LogSite_Code='" & MemVar_1F95078 & "' and V.Site_Code='" & MemVar_1F95070 & "' and V.Ncat in ('MRE') and M.Partycode='"
  loc_18221E2:             Set var_A4 = Me.Txt
  loc_18221E8:             Call 0.Method_Txt_Validate0 (CInt(4), var_A8, var_1B8)
  loc_18221F0:             var_1BC = var_A8.Tag
  loc_1822200:             var_8C = var_A4 & var_1B8 & "'  Group By M.Docid,M.Sno Having Max(M.AccQty) - Sum(isnull(P2.recdQty,0)) > 0 "
  loc_1822235:             unk_5986AD.Execute var_8C, var_DC, -1
  loc_1822246:             Set global_76 = var_A4
  loc_182225D:             CVarUnk
  loc_1822262:             VerifyVarObj
  loc_1822268:             Set var_A4 = Me.DgMR
  loc_182226E:             LateIdStAd
  loc_182227C:           End If
  loc_182227F:         Else
  loc_1822287:           If (var_A0 = CInt(7)) Then
  loc_182228E:             Set var_9C = New 
  loc_1822299:             Me.Recordset15.CursorLocation = 3
  loc_18222C1:             If (((global_124 = "PBR") Or (global_124 = "EXR")) Or (global_124 = "CRN")) Then
  loc_18222CB:               var_B0 = "Select Max(S.DocId) as DocID,Max(S.Item) as Item,Max(S.RecdUnit) as RecdUnit,max(S.Unit) as Unit,Max(I.ConvRatio) as ConvRatio,Max(S.AccQty) - Sum(isnull(P2.RecdQty,0)) as RecdQty,Max(S.Rate) AS Rate,Max(S.ItemRate) AS ItemRate,Max(S.SNo) as SNo,Max(I.RateEdit) as RateEdit,Max(I.SChrgApp) as SChrgApp,Max(S.GodownCode) as GodownCode,Max(S.RoomNo) as RoomNo,Max(G.Name) as GodName,Max(I.NAME) AS ITEMNAME,Max(DispCode) as DispCode,Max(IC.RoundOff) as ROff,Max(IC.Code) as TaxCode,Max(I.DiscApp) as IDiscApp,Max(IC.taxStru) as taxStru,Max(I.Kitchen) as Kitchen,Max(D.Code) as DepartCode,Max(D.ShortName) as DepartName,Max(MemInvNo)as MemInvNo,Max(MemInvDate) as MemInvDate " & "From (((((((Stock S Left Join Purch2 P2 on (S.Docid = P2.ContraDocid and S.Sno = P2.ContraSno)) "
  loc_18222D2:               var_F0 = var_B0 & "Left Join SubGroup SG on S.PartyCode=SG.SubCode)Left Join Voucher_Type V on (S.Vtype=V.V_Type and S.LogSite_Code=V.LogSite_Code)) LEFT JOIN ITEMMAST I ON S.ITEM=I.CODE And I.ItemType='Store')Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D On D.Code=I.RestCode)Left join GodownMast G on G.Code=S.GodownCode)Left Join GIN N On N.DocId=S.DocId "
  loc_18222F5:               var_1BC = var_F0 & "where V.LogSite_Code='" & MemVar_1F95078 & "' and V.Site_Code='" & MemVar_1F95070 & "' and S.DocID='"
  loc_1822306:               Set var_A4 = Me.Txt
  loc_182230C:               Call 0.Method_Txt_Validate0 (CInt(7), var_A8, var_1B8, var_1BC)
  loc_1822314:               var_A4 = var_A8.Tag
  loc_1822324:               var_8C = global_76 & var_1B8 & "' Group By S.Docid,S.Sno Having Max(S.AccQty) - Sum(isnull(P2.RecdQty,0)) > 0 "
  loc_1822346:             Else
  loc_182234D:               var_B0 = "Select Max(S.DocId) as DocID,Max(S.Item) as Item,Max(S.RecdUnit) as RecdUnit,max(S.Unit) as Unit,Max(I.ConvRatio) as ConvRatio,Max(S.AccQty) - Sum(isnull(P2.recdQty,0)) as RecdQty,Max(S.Rate) AS Rate,Max(S.ItemRate) AS ItemRate,Max(S.SNo) as SNo,Max(I.RateEdit) as RateEdit,Max(I.SChrgApp) as SChrgApp,Max(S.GodownCode) as GodownCode,Max(S.RoomNo) as RoomNo,Max(G.Name) as GodName,Max(I.NAME) AS ITEMNAME,Max(DispCode) as DispCode,Max(IC.RoundOff) as ROff,Max(IC.Code) as TaxCode,Max(I.DiscApp) as IDiscApp,Max(IC.taxStru) as taxStru,Max(I.Kitchen) as Kitchen,Max(D.Code) as DepartCode,Max(D.ShortName) as DepartName,Max(MemInvNo)as MemInvNo,Max(MemInvDate) as MemInvDate " & "From (((((((Stock S Left Join Purch2 P2 on (S.Docid = P2.ContraDocid and S.Sno = P2.ContraSno)) "
  loc_1822354:               var_F0 = var_B0 & "Left Join SubGroup SG on S.PartyCode=SG.SubCode)Left Join Voucher_Type V on (S.Vtype=V.V_Type and S.LogSite_Code=V.LogSite_Code)) LEFT JOIN ITEMMAST I ON S.ITEM=I.CODE And I.ItemType='Store')Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D On D.Code=I.RestCode)Left join GodownMast G on G.Code=S.GodownCode)Left Join GIN N On N.DocId=S.DocId "
  loc_1822377:               var_1BC = var_F0 & "where V.LogSite_Code='" & MemVar_1F95078 & "' and V.Site_Code='" & MemVar_1F95070 & "' and S.DocID='"
  loc_182238E:               Call 0.Method_Txt_Validate0 (CInt(7), var_A8, var_1B8)
  loc_1822396:               var_1BC = var_A8.Tag
  loc_18223A6:               var_8C = Me.Txt & var_1B8 & "' Group By S.Docid,S.Sno Having Max(S.AccQty) - Sum(isnull(P2.QtyRec,0)) > 0 "
  loc_18223C5:             End If
  loc_18223CD:             If (var_8C <> vbNullString) Then
  loc_18223F1:               var_9C.Open CVar(var_8C), CVar(MemVar_1F95044), 2
  loc_182240A:               If (var_9C.RecordCount > 0) Then
  loc_182241C:                 Me.FGrid.Redraw = False
  loc_182243E:                 var_8E = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_1822447:                 ' Referenced from:           182331A
  loc_1822456:                 If Not(var_9C.EOF) Then
  loc_182247E:                   For var_1C4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):           var_9E = var_1C4 'Integer
  loc_1822488:                     var_C8 = CVar(CLng(var_9E)) 'Long
  loc_1822490:                     var_120 = CVar(CLng(&HE)) 'Long
  loc_18224AA:                     var_130 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_18224D0:                     var_EC = var_9C.Fields.Item("DocID").Value
  loc_18224E0:                     var_1E4 = CVar(CLng(var_9E)) 'Long
  loc_18224F1:                     Set var_CC = Me.FGrid
  loc_1822558:                     If CBool(CVar(CLng(&HD)) And (CVar(CStr(var_CC.TextMatrix))) = var_9C.Fields.Item("SNo").Value)) Then
  loc_182255D:                       var_98 = &HFF
  loc_1822560:                     End If
  loc_1822563:                   Next var_1C4 'Integer
  loc_182256E:                   If (var_98 = &HFF) Then
  loc_1822573:                     var_98 = 0
  loc_1822579:                   Else
  loc_1822579:                     var_C8 = vbNullString
  loc_1822583:                     Set var_A4 = Me.FGrid
  loc_1822597:                     var_C8 = "MemInvNo"
  loc_18225D9:                     Set var_AC = Me.Txt
  loc_18225DF:                     Call 0.Method_Txt_Validate0 (CInt(5), var_CC, CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item(var_C8)), FGrid.DispID_10000)))))
  loc_18225E7:                     var_CC.Text = var_C8
  loc_1822637:                     Set var_AC = Me.Txt
  loc_182263D:                     Call 0.Method_Txt_Validate0 (CInt(6), var_CC)
  loc_1822645:                     var_CC.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("MemInvDate")))
  loc_182265D:                     Set var_22C = Me.FGrid
  loc_1822664:                     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_182266C:                     var_120 = CVar(CLng(0)) 'Long
  loc_1822676:                     var_DC = CVar(CStr(var_8E)) 'String
  loc_182267D:                     LateIdCallSt
  loc_182268C:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_1822694:                     var_140 = CVar(CLng(&HC)) 'Long
  loc_18226C8:                     var_130 = CVar(CStr(Trim(CVar(var_9C.Fields.Item("Item"))))) 'String
  loc_18226CF:                     LateIdCallSt
  loc_18226E7:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_18226EF:                     var_140 = CVar(CLng(1)) 'Long
  loc_182271F:                     var_EC = CVar(CStr(var_9C.Fields.Item("DispCode").Value)) 'String
  loc_1822726:                     LateIdCallSt
  loc_1822740:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_1822748:                     var_140 = CVar(CLng(2)) 'Long
  loc_1822778:                     var_EC = CVar(CStr(var_9C.Fields.Item("ItemName").Value)) 'String
  loc_182277F:                     LateIdCallSt
  loc_1822799:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_18227A1:                     var_140 = CVar(CLng(4)) 'Long
  loc_18227D1:                     var_EC = CVar(CStr(var_9C.Fields.Item("RecdUnit").Value)) 'String
  loc_18227D8:                     LateIdCallSt
  loc_18227F2:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_18227FA:                     var_140 = CVar(CLng(8)) 'Long
  loc_182282A:                     var_EC = CVar(CStr(var_9C.Fields.Item("Unit").Value)) 'String
  loc_1822831:                     LateIdCallSt
  loc_1822867:                     var_120 = CVar(CLng(var_8E)) 'Long
  loc_182286F:                     var_1D4 = CVar(CLng(5)) 'Long
  loc_182289C:                     var_150 = CVar(CStr(Format(CVar(var_9C.Fields.Item("RecdQty")), "0.000"))) 'String
  loc_18228A3:                     LateIdCallSt
  loc_18228D9:                     var_120 = CVar(CLng(var_8E)) 'Long
  loc_18228E1:                     var_1D4 = CVar(CLng(&H22)) 'Long
  loc_182290E:                     var_150 = CVar(CStr(Format(CVar(var_9C.Fields.Item("RecdQty")), "0.000"))) 'String
  loc_1822915:                     LateIdCallSt
  loc_182294B:                     var_120 = CVar(CLng(var_8E)) 'Long
  loc_1822953:                     var_1D4 = CVar(CLng(9)) 'Long
  loc_1822980:                     var_150 = CVar(CStr(Format(CVar(var_9C.Fields.Item("Rate")), "0.00000"))) 'String
  loc_1822987:                     LateIdCallSt
  loc_18229BD:                     var_120 = CVar(CLng(var_8E)) 'Long
  loc_18229C5:                     var_1D4 = CVar(CLng(&HA)) 'Long
  loc_18229F2:                     var_150 = CVar(CStr(Format(CVar(var_9C.Fields.Item("ItemRate")), "0.00000"))) 'String
  loc_18229F9:                     LateIdCallSt
  loc_1822A48:                     var_AC = var_9C.Fields
  loc_1822A50:                     var_CC = var_AC.Item("Rate")
  loc_1822A61:                     var_140 = CVar(CLng(var_8E)) 'Long
  loc_1822A69:                     var_1E4 = CVar(CLng(&HB)) 'Long
  loc_1822AA0:                     var_180 = CVar(CStr(Format((var_9C.Fields.Item("RecdQty").Value * var_CC.Value), "0.00"))) 'String
  loc_1822AA7:                     LateIdCallSt
  loc_1822AE9:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_1822AF1:                     var_140 = CVar(CLng(3)) 'Long
  loc_1822B18:                     var_130 = CVar(CStr(Val(CStr(Right(CVar(var_9C.Fields.Item("DocID")), 8))))) 'String
  loc_1822B1F:                     LateIdCallSt
  loc_1822B3A:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_1822B42:                     var_140 = CVar(CLng(&HE)) 'Long
  loc_1822B72:                     var_EC = CVar(CStr(var_9C.Fields.Item("DocID").Value)) 'String
  loc_1822B79:                     LateIdCallSt
  loc_1822B93:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_1822B9B:                     var_140 = CVar(CLng(&HD)) 'Long
  loc_1822BCB:                     var_EC = CVar(CStr(var_9C.Fields.Item("SNo").Value)) 'String
  loc_1822BD2:                     LateIdCallSt
  loc_1822C21:                     var_EC = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("RateEdit")), CVar(CLng(&H1D)), CVar(CLng(var_8E)), var_22C, var_EC, CVar(CLng(&H1D)), CVar(CLng(var_8E)))) 'String
  loc_1822C28:                     LateIdCallSt
  loc_1822C73:                     var_EC = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("IDiscApp")), CVar(CLng(&H14)), CVar(CLng(var_8E)), var_22C, var_EC, var_22C)) 'String
  loc_1822C7A:                     LateIdCallSt
  loc_1822CC5:                     var_EC = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Roff")), CVar(CLng(&H15)), CVar(CLng(var_8E)), var_22C, var_EC)) 'String
  loc_1822CCC:                     LateIdCallSt
  loc_1822D17:                     var_EC = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("TaxStru")), CVar(CLng(&H1A)), CVar(CLng(var_8E)), var_22C, var_EC)) 'String
  loc_1822D1E:                     LateIdCallSt
  loc_1822D3C:                     var_140 = CVar(CLng(&H1F)) 'Long
  loc_1822D69:                     var_EC = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("SChrgApp")), var_140, CVar(CLng(var_8E)), var_22C, var_EC)) 'String
  loc_1822D70:                     LateIdCallSt
  loc_1822DBA:                     var_B0 = Proc_6_38_E69628(CVar(var_9C.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_EC, -1, var_AC, var_22C)
  loc_1822DCE:                     unk_5986AD.Execute var_EC & CStr(Right(CVar(var_9C.Fields.Item("DocID")), 8)) & "'", var_EC, var_140
  loc_1822DD9:                     Set var_94 = var_AC
  loc_1822E07:                     If (var_94.RecordCount > 0) Then
  loc_1822E41:                       Proc_6_39_E7D3A0(var_EC, CVar(var_94.Fields.Item("Rate")), CVar(CLng(&H11)), CVar(CLng(var_8E)))
  loc_1822E4A:                       var_130 = CVar(CStr(var_EC)) 'String
  loc_1822E52:                       Set var_AC = Me.FGrid
  loc_1822E58:                       LateIdCallSt
  loc_1822E74:                       var_110 = CVar(CLng(var_8E)) 'Long
  loc_1822EA9:                       var_EC = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("Name")), CVar(CLng(&H19)), var_110, var_AC)) 'String
  loc_1822EB0:                       LateIdCallSt
  loc_1822EC2:                     End If
  loc_1822EFA:                     var_B0 = Proc_6_38_E69628(CVar(var_9C.Fields.Item("TaxCode")), "Select IM.AcName As SaleAcCode,SG.Name As SaleAcName from ItemCatMast IM inner join Subgroup SG On IM.AcName=SG.SubCode where IM.Code='", var_EC, -1, var_AC, var_22C)
  loc_1822F0E:                     unk_5986AD.Execute var_EC & CStr(Right(CVar(var_9C.Fields.Item("DocID")), 8)) & "'", var_130, var_110
  loc_1822F19:                     Set var_94 = var_AC
  loc_1822F47:                     If (var_94.RecordCount > 0) Then
  loc_1822F4E:                       var_110 = CVar(CLng(var_8E)) 'Long
  loc_1822F81:                       Proc_6_39_E7D3A0(var_EC, CVar(var_94.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)))
  loc_1822F8A:                       var_130 = CVar(CStr(var_EC)) 'String
  loc_1822F91:                       LateIdCallSt
  loc_1822FDE:                       var_EC = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(var_8E)), var_22C)) 'String
  loc_1822FE5:                       LateIdCallSt
  loc_1822FF7:                     End If
  loc_1823030:                     var_EC = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Godowncode")), CVar(CLng(&H17)), CVar(CLng(var_8E)), var_22C, var_EC)) 'String
  loc_1823037:                     LateIdCallSt
  loc_182304D:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_1823082:                     var_EC = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("RoomNo")), CVar(CLng(&H18)), var_110, var_22C, var_EC)) 'String
  loc_1823089:                     LateIdCallSt
  loc_18230D1:                     Set var_AC = Me.Txt
  loc_18230D7:                     Call 0.Method_Txt_Validate0 (CInt(7), var_CC, Proc_6_38_E69628(CVar(var_9C.Fields.Item("RoomNo")), var_22C, var_EC, var_130))
  loc_18230DF:                     var_CC.Tag = var_110
  loc_182312C:                     var_EC = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("GodName")), CVar(CLng(&H16)), CVar(CLng(var_8E)))) 'String
  loc_1823133:                     LateIdCallSt
  loc_1823165:                     var_120 = CVar(CLng(var_8E)) 'Long
  loc_182316D:                     var_1D4 = CVar(CLng(6)) 'Long
  loc_182319A:                     var_150 = CVar(CStr(Format(CVar(var_9C.Fields.Item("ConvRatio")), "0.000"))) 'String
  loc_18231A1:                     LateIdCallSt
  loc_18231D1:                     var_A8 = var_9C.Fields.Item("RecdQty")
  loc_1823214:                     var_1B4 = var_9C.Fields
  loc_182322D:                     var_B6 = IsNull(CVar(var_1B4.Item("ConvRatio")))
  loc_182326C:                     var_150 = (var_9C.Fields.Item("ConvRatio").Value = 0) Or var_B6
  loc_1823283:                     var_214 = CVar(CLng(var_8E)) 'Long
  loc_182328B:                     var_274 = CVar(CLng(7)) 'Long
  loc_18232C2:                     var_294 = CVar(CStr(Format((var_A8.Value * IIf(var_150, 1, CVar(var_9C.Fields.Item("ConvRatio")))), "0.000"))) 'String
  loc_18232C9:                     LateIdCallSt
  loc_18232FD:                     Set var_22C = Nothing 
  loc_1823307:                     var_8E = (var_8E + 1)
  loc_182330A:                   End If
  loc_182330D:                   var_9C.MoveNext
  loc_1823316:                   var_96 = CByte(0) 'Byte
  loc_182331A:                   GoTo loc_1822447
  loc_182331D:                 End If
  loc_1823330:                 Me.FGrid.FixedRows = 1
  loc_1823338:               End If
  loc_182333B:             Else
  loc_1823348:               Set var_A4 = Me.Txt
  loc_182334E:               Call 0.Method_Txt_Validate0 (Cancel, var_A8, vbNullString, var_8E, var_22C, var_294, 1)
  loc_1823356:               var_A8.Text = 1
  loc_1823362:             End If
  loc_1823370:             Me.FGrid.Redraw = True
  loc_182337E:             If (var_8E = 1) Then
  loc_1823394:               Me.FGrid.Rows = 1
  loc_18233BA:               var_DC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), var_274, var_214))) 'String
  loc_18233C2:               Set var_A8 = Me.FGrid
  loc_18233EF:               Me.FGrid.FixedRows = 1
  loc_18233F7:             End If
  loc_18233FD:             Call Proc_338_101_17C1F88(Cancel, FGrid.DispID_10000, var_DC, var_B6)
  loc_1823405:           Else
  loc_182340D:             If (var_A0 = CInt(6)) Then
  loc_182341A:               Set var_A4 = Me.Txt
  loc_1823420:               Call 0.Method_Txt_Validate0 (Cancel, var_A8, var_22C)
  loc_1823440:               Set var_CC = Me.Txt
  loc_1823446:               Call 0.Method_Txt_Validate0 (Cancel, var_1B4)
  loc_182344E:               var_1B4.Text = Proc_6_33_15125B8(var_A8, var_150)
  loc_1823461:             End If
  loc_1823461:           End If
  loc_1823461:         End If
  loc_1823461:       End If
  loc_1823461:     End If
  loc_1823461:   End If
  loc_1823461: End If
  loc_1823473: Me.FGrid.Col = CVar(CLng(2))
  loc_1823480: Set var_94 = Nothing
  loc_1823488: Set var_88 = Nothing
  loc_182348B: Exit Sub
  loc_182348C: ' Referenced from: 18210BC
  loc_182348C: Proc_6_60_E63754(1)
  loc_1823491: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E5D5D4
  'Data Table: 598690
  loc_E5D5AF: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5D5B2:   Exit Sub
  loc_E5D5B3: End If
  loc_E5D5CA: global_248 = CInt(CLng(Me.GridSel.Row))
  loc_E5D5D3: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 'FF75D0
  'Data Table: 598690
  Dim var_8C As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_10C As String
  Dim var_86 As Integer
  loc_FF7401: If ((CLng(Me.GridSel.Col) <> 0) Or (global_248 = 0)) Then
  loc_FF7404:   Exit Sub
  loc_FF7405: End If
  loc_FF7461: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_FF7464:   Exit Sub
  loc_FF7465: End If
  loc_FF746E: global_250 = global_248
  loc_FF7496: For var_BA = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_88 = var_BA 'Integer
  loc_FF74AF:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_FF74CA:   Me.GridSel.Col = 0
  loc_FF74E2:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_FF74FC:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_FF7508:   var_CC = CVar(CLng(var_88)) 'Long
  loc_FF750D:   var_EC = 0
  loc_FF7516:   var_10C = vbNullString
  loc_FF7520:   Set var_8C = Me.GridSel
  loc_FF7526:   LateIdCallSt
  loc_FF7534: Next var_BA 'Integer
  loc_FF7540: var_CC = CVar(CLng(global_248)) 'Long
  loc_FF7545: var_EC = 0
  loc_FF754E: var_10C = "ü"
  loc_FF7558: Set var_8C = Me.GridSel
  loc_FF755E: LateIdCallSt
  loc_FF757F: Me.GridSel.Row = CVar(CLng(global_248))
  loc_FF7598: var_86 = CInt((UBound(global_244, 1) + 1))
  loc_FF75AA: ReDim Preserve global_244(0 To CLng(var_86))
  loc_FF75C4: global_244(CLng(var_86)) = global_248
  loc_FF75CD: Exit Sub
  loc_FF75CE: Set arg_184C = 0
End Sub

Private Sub CmdExit_Click() 'E4D87C
  'Data Table: 598690
  loc_E4D863: If (Me.FrTrans.Visible = &HFF) Then
  loc_E4D872:   Me.FrTrans.Visible = False
  loc_E4D87A: End If
  loc_E4D87A: Exit Sub
End Sub

Public Function global_52Get() '59B108
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '59B117
  global_52 = Value
End Sub

Public Function global_56Get() '59B126
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '59B135
  global_56 = Value
End Sub

Public Property Let OpenAs(vNewValue) 'E11D9C
  'Data Table: 598690
  loc_E11D94: global_260 = vNewValue
  loc_E11D98: Exit Sub
End Sub

Public Property Get OpenAs() 'E113C4
  'Data Table: 598690
  loc_E113B8: var_88 = global_260
  loc_E113BB: OpenAs = 
End Sub

Public Sub FindMove(mDocId) 'E6EBA8
  'Data Table: 598690
  Dim Me As Recordset15
  Dim arg_1814 As Variant
  loc_E6EB52: Me.MoveFirst
  loc_E6EB7C: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E6EB9C: If (Me.EOF = 0) Then
  loc_E6EB9F:   Call Proc_338_90_1A00AE0(var_9C)
  loc_E6EBA4: End If
  loc_E6EBA4: Exit Sub
  loc_E6EBA5: arg_1814 = ( - )
End Sub

Public Sub SEARCHBACK(MyValue) 'E96678
  'Data Table: 598690
  Dim Me As Recordset15
  loc_E96606: On Error Goto loc_E9666F
  loc_E9660F: Me.MoveFirst
  loc_E96639: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96661: Proc_5_0_1107AD0(&HFF, Me, global_72)
  loc_E96669: Call Proc_338_90_1A00AE0(0)
  loc_E9666E: Exit Sub
  loc_E9666F: ' Referenced from: E96606
  loc_E9666F: Proc_6_60_E63754(var_A0)
  loc_E96674: Exit Sub
End Sub

Public Sub Proc_338_83_E85E74(arg_C) 'E85E74
  'Data Table: 598690
  loc_E85E12: For var_90 = 1 To CInt(Len(arg_C)): var_88 = var_90 'Integer
  loc_E85E57:   If Not(((Asc(CStr(Mid(arg_C, CLng(var_88), 1))) >= &H30) And (Asc(CStr(Mid(arg_C, CLng(var_88), 1))) <= &H39))) Then
  loc_E85E5A:     GoTo loc_E85E65
  loc_E85E5D:   End If
  loc_E85E60: Next var_90 'Integer
  loc_E85E65: ' Referenced from: E85E5A
  loc_E85E6B: Proc_338_83_E85E74 = var_88
  loc_E85E71: Exit Sub
End Sub

Public Sub Proc_338_84_118B8E0
  'Data Table: 598690
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_118B4FE: Me.GridSel.Rows = 1
  loc_118B512: Me.GridSel.Cols = 5
  loc_118B517: var_98 = 0
  loc_118B523: var_BC = CVar(CLng(0)) 'Long
  loc_118B528: var_DC = vbNullString
  loc_118B531: LateIdCallSt
  loc_118B53C: var_98 = CVar(CLng(0)) 'Long
  loc_118B541: var_BC = &H258
  loc_118B54D: LateIdCallSt
  loc_118B555: var_98 = 0
  loc_118B561: var_BC = CVar(CLng(1)) 'Long
  loc_118B566: var_DC = "Bill No"
  loc_118B56F: LateIdCallSt
  loc_118B57A: var_98 = CVar(CLng(1)) 'Long
  loc_118B585: var_BC = CVar(CInt(1)) 'Integer
  loc_118B58C: LateIdCallSt
  loc_118B597: var_98 = CVar(CLng(1)) 'Long
  loc_118B5A2: var_BC = CVar(CInt(1)) 'Integer
  loc_118B5A9: LateIdCallSt
  loc_118B5B4: var_98 = CVar(CLng(1)) 'Long
  loc_118B5B9: var_BC = &H5DC
  loc_118B5C5: LateIdCallSt
  loc_118B5CD: var_98 = 0
  loc_118B5D9: var_BC = CVar(CLng(2)) 'Long
  loc_118B5DE: var_DC = "DocId"
  loc_118B5E7: LateIdCallSt
  loc_118B5F2: var_98 = CVar(CLng(2)) 'Long
  loc_118B5FD: var_BC = CVar(CInt(7)) 'Integer
  loc_118B604: LateIdCallSt
  loc_118B60F: var_98 = CVar(CLng(2)) 'Long
  loc_118B61A: var_BC = CVar(CInt(7)) 'Integer
  loc_118B621: LateIdCallSt
  loc_118B62C: var_98 = CVar(CLng(2)) 'Long
  loc_118B631: var_BC = 0
  loc_118B63D: LateIdCallSt
  loc_118B645: var_98 = 0
  loc_118B651: var_BC = CVar(CLng(3)) 'Long
  loc_118B656: var_DC = "Bill Date"
  loc_118B65F: LateIdCallSt
  loc_118B66A: var_98 = CVar(CLng(3)) 'Long
  loc_118B675: var_BC = CVar(CInt(1)) 'Integer
  loc_118B67C: LateIdCallSt
  loc_118B687: var_98 = CVar(CLng(3)) 'Long
  loc_118B692: var_BC = CVar(CInt(1)) 'Integer
  loc_118B699: LateIdCallSt
  loc_118B6A4: var_98 = CVar(CLng(3)) 'Long
  loc_118B6A9: var_BC = &H7D0
  loc_118B6B5: LateIdCallSt
  loc_118B6BD: var_98 = 0
  loc_118B6C9: var_BC = CVar(CLng(4)) 'Long
  loc_118B6CE: var_DC = "Bill Amount"
  loc_118B6D7: LateIdCallSt
  loc_118B6E2: var_98 = CVar(CLng(4)) 'Long
  loc_118B6ED: var_BC = CVar(CInt(7)) 'Integer
  loc_118B6F4: LateIdCallSt
  loc_118B6FF: var_98 = CVar(CLng(4)) 'Long
  loc_118B70A: var_BC = CVar(CInt(7)) 'Integer
  loc_118B711: LateIdCallSt
  loc_118B71C: var_98 = CVar(CLng(4)) 'Long
  loc_118B721: var_BC = &H7D0
  loc_118B72D: LateIdCallSt
  loc_118B735: var_98 = vbNullString
  loc_118B73F: Set var_AC = Me.GridSel
  loc_118B763: Me.GridSel.FixedRows = 1
  loc_118B76D: Set var_88 = Nothing 
  loc_118B781: ReDim Preserve global_244(0 To 0)
  loc_118B798: global_244(0) = 0
  loc_118B7AC: Me.GridSel.Height = CVar(CDbl(3000))
  loc_118B7C7: Me.GridSel.Width = CVar(CDbl(6500))
  loc_118B7CF: var_98 = 0
  loc_118B800: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H32))
  loc_118B80F: var_98 = 0
  loc_118B840: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &HA))
  loc_118B871: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&H1E))
  loc_118B8A2: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&H1E))
  loc_118B8C1: Me.Check1.Value = CInt(0)
  loc_118B8D5: Me.Check1.Visible = False
  loc_118B8DD: Exit Sub
End Sub

Public Sub Proc_338_85_11C3AAC(arg_C, arg_10) '11C3AAC
  'Data Table: 598690
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_94 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_8C As Integer
  Dim var_B8 As Variant
  Dim var_D8 As Long
  loc_11C3656: var_86 = &HFF
  loc_11C365B: var_88 = 0
  loc_11C3667: If (CInt(arg_10) = 1) Then
  loc_11C368F:   For var_A8 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_8A = var_A8 'Integer
  loc_11C3698:     var_8C = var_8A
  loc_11C369F:     var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C36A4:     var_D8 = 2
  loc_11C36D3:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11C36DA:       var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C3739:       Call Proc_338_86_159C904(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)), var_146, Me.GridSel.TextMatrix), 1, CVar(CLng(var_8C)), Me.GridSel.TextMatrix), 2)
  loc_11C3759:       If (var_146 = 0) Then
  loc_11C3761:         Proc_338_85_11C3AAC = 0
  loc_11C3767:       End If
  loc_11C3769:       var_88 = &HFF
  loc_11C3791:       For var_14A = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_8E = var_14A 'Integer
  loc_11C37AA:         Me.GridSel.Row = CVar(CLng(var_8C))
  loc_11C37C5:         Me.GridSel.Col = CVar(CLng(var_8E))
  loc_11C37E0:         Me.GridSel.CellBackColor = &H80FF
  loc_11C37EB:       Next var_14A 'Integer
  loc_11C37F0:     End If
  loc_11C37F3:   Next var_A8 'Integer
  loc_11C37F8:   Exit For
  loc_11C37FB: End If
  loc_11C3803: CRefVarAry
  loc_11C380B: For var_14E = 0 To CInt(UBound(arg_C, 1)): var_8A = var_14E 'Integer
  loc_11C382C:   If (arg_C(var_8A) = 0) Then
  loc_11C382F:     GoTo loc_11C39D9
  loc_11C3832:   End If
  loc_11C3843:   var_8C = CInt(arg_C(var_8A))
  loc_11C384D:   var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C3852:   var_D8 = 0
  loc_11C3881:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_11C3888:     var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C388D:     var_D8 = 2
  loc_11C38BC:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11C38C3:       var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C3922:       Call Proc_338_86_159C904(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)), var_146, Me.GridSel.TextMatrix), 1, CVar(CLng(var_8C)), Me.GridSel.TextMatrix), 2)
  loc_11C3942:       If (var_146 = 0) Then
  loc_11C394A:         Proc_338_85_11C3AAC = 0
  loc_11C3950:       End If
  loc_11C3952:       var_88 = &HFF
  loc_11C397A:       For var_152 = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_8E = var_152 'Integer
  loc_11C3993:         Me.GridSel.Row = CVar(CLng(var_8C))
  loc_11C39AE:         Me.GridSel.Col = CVar(CLng(var_8E))
  loc_11C39C9:         Me.GridSel.CellBackColor = &H80FF
  loc_11C39D4:       Next var_152 'Integer
  loc_11C39D9:       ' Referenced from: 11C382F
  loc_11C39D9:     End If
  loc_11C39D9:   End If
  loc_11C39DC: Next var_14E 'Integer
  loc_11C39E1: ' Referenced from: 11C37F8
  loc_11C39F1: If ((var_88 = 0) And (CInt(arg_10) = 0)) Then
  loc_11C39F6:   var_86 = 0
  loc_11C39F9:   var_B8 = 0
  loc_11C3A02:   var_D8 = 1
  loc_11C3A15:   var_A4 = Me.GridSel.TextMatrix)
  loc_11C3A3D:   MsgBox(CVar("Select " & CStr(var_A4)), &H40, var_164, var_174, var_184)
  loc_11C3A68:   Me.GridSel.Row = 1
  loc_11C3A83:   Me.GridSel.Col = 0
  loc_11C3A8F:   Set var_94 = Me.GridSel
  loc_11C3AA0: End If
  loc_11C3AA0: Proc_338_85_11C3AAC = GridSel.DispID_8001
  loc_11C3AA6: Proc_338_85_11C3AAC = var_A4
End Sub

Public Sub Proc_338_86_159C904(arg_C) '159C904
  'Data Table: 598690
  Dim var_90 As Connection15
  Dim var_C0 As String
  Dim var_C4 As String
  Dim var_E8 As Variant
  Dim var_D8 As Variant
  Dim var_108 As Variant
  Dim unk_5986AD As Connection15
  Dim var_A0 As Recordset15
  Dim var_12C As Variant
  Dim var_F8 As Variant
  Dim var_94 As Recordset15
  Dim var_AA As Integer
  Dim var_134 As Variant
  Dim var_128 As Variant
  Dim var_14C As Variant
  Dim var_98 As Recordset15
  Dim var_16C As Variant
  Dim var_13C As Fields15
  Dim var_170 As Variant
  Dim var_1C8 As Variant
  Dim var_118 As Variant
  Dim var_15C As Variant
  Dim var_180 As Variant
  Dim var_190 As Variant
  Dim var_1B4 As Recordset15
  Dim var_1B8 As Fields15
  Dim var_1CC As Field20
  Dim var_250 As MSHFlexGrid
  Dim var_2A8 As Double
  Dim var_260 As Variant
  Dim var_280 As Variant
  Dim var_1A0 As Variant
  Dim var_B0 As Recordset15
  Dim var_B2 As Integer
  Dim var_9C As Recordset15
  loc_159B79E: Set var_90 = New 
  loc_159B7A9: Me.Connection15.CursorLocation = 3
  loc_159B7B6: var_90.IsolationLevel = &H10
  loc_159B7C3: var_90.CommandTimeout = 0
  loc_159B7E0: var_90.Open "Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source=" & MemVar_1F95230 & "SaleTransfer.mdb", vbNullString, vbNullString, -1
  loc_159B83C: Set var_94 = New 
  loc_159B860: Me.Recordset15.Open CVar("Select * From Stock S Where S.LOGSITE_CODE='" & MemVar_1F95078 & "' And DocId='" & arg_C & "' Order by S.Sno"), CVar(var_90), 3
  loc_159B869: Set var_9C = New 
  loc_159B886: var_D8 = CVar("Select * From SunTran S Where S.LOGSITE_CODE='" & MemVar_1F95078 & "' And DocId='" & arg_C & "' Order by S.Sno") 'String
  loc_159B88D: Me.Recordset15.Open var_D8, CVar(var_90), 3
  loc_159B8AF: Proc_6_17_EAAE40(var_F8, MemVar_1F95078, "Select E.PurChaseGodown,G.Name from Enviro E Left Join GodownMast G On E.PurChaseGodown=G.Code WHERE E.LOGSITE_CODE=", var_128, -1)
  loc_159B8C5: unk_5986AD.Execute CStr(var_12C & var_F8), 1, -1
  loc_159B8D0: Set var_A0 = var_12C
  loc_159B8F6: If (var_A0.RecordCount > 0) Then
  loc_159B921:   var_B8 = Proc_6_38_E69628(CVar(var_A0.Fields.Item("PurchaseGodown")), 1)
  loc_159B952:   var_BC = Proc_6_38_E69628(CVar(var_A0.Fields.Item("Name")))
  loc_159B95B: End If
  loc_159B960: Set var_A0 = Nothing
  loc_159B977: If (var_94.RecordCount > 0) Then
  loc_159B989:   Me.FGrid.Redraw = False
  loc_159B9A4:   Me.FGrid.Rows = 1
  loc_159B9B0:   Set var_13C = Me.FGrid
  loc_159B9CA:   var_F8 = CVar(CStr(Proc_6_127_F25B10(var_13C, CInt(0)))) 'String
  loc_159B9D2:   Set var_134 = Me.FGrid
  loc_159B9FF:   Me.FGrid.FixedRows = 1
  loc_159BA21:   var_AA = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_159BA2A:   ' Referenced from: 159C6AC
  loc_159BA39:   If Not(var_94.EOF) Then
  loc_159BA50:     var_C0 = "Select I.Code,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.ConvRatio,I.Unit,I.IssueUnit,I.SChrgApp,IG.Name as ItemGroup,DispCode,IC.taxStru,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp,IC.taxStru,I.DiscApp as IDiscApp,I.Purchrate as IPurchRate,TS.Name as TaxStruName,IC.AcName As SaleAcCode,SG.Name As SaleAcName From (((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left Join Depart D On D.Code=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode) Left Join Taxstru TS on TS.Code=IC.TaxStru left Join SubGroup SG On SG.SubCode=IC.AcName Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_159BA57:     var_108 = CVar(var_C0 & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' And (I.GravyItem<>'Yes' or I.GravyItem is NULL) And I.DispCode <>9999 And I.ActiveYN<>'No' And I.Code='") 'String
  loc_159BA9B:     unk_5986AD.Execute CStr(var_108 & var_94.Fields.Item("Item").Value & "'"), var_15C, -1
  loc_159BAA6:     Set var_98 = var_13C
  loc_159BADA:     If (var_98.RecordCount = 0) Then
  loc_159BB16:       var_13C = var_94.Fields
  loc_159BB1E:       var_170 = var_13C.Item("RestCode")
  loc_159BB31:       var_1C8 = 0
  loc_159BB68:       var_190 = "Select Max(Name) From ItemMast Where Code='" & var_94.Fields.Item("Item").Value & "' And RestCode='" & var_170.Value & "'" 
  loc_159BB76:       unk_5986AD.Execute CStr(var_190), var_1B0, -1
  loc_159BB7E:       var_1B4 = var_1B4.Fields
  loc_159BB86:       var_1C8 = var_1B8.Item(var_1B8)
  loc_159BB8E:       var_1CC = var_1CC.Value
  loc_159BBC1:       MsgBox(CVar(Proc_6_38_E69628(var_1DC, var_1DC, var_13C, var_AA) & " Is Not Present In Purchase Item."), &H40, "Purchase Transfer", var_22C, var_24C)
  loc_159BBFB:       Proc_338_86_159C904 = FGrid.DispID_10000
  loc_159BC01:     End If
  loc_159BC01:     var_D8 = vbNullString
  loc_159BC0B:     Set var_12C = Me.FGrid
  loc_159BC1F:     var_D8 = "VNo"
  loc_159BC3B:     var_F8 = CVar(var_94.Fields.Item(var_D8)) 'Address
  loc_159BC61:     Set var_13C = Me.Txt
  loc_159BC67:     Call 0.Method_Proc_338_86_159C9040 (CInt(5), var_170, CStr(Trim(CVar(Proc_6_38_E69628(var_F8, FGrid.DispID_10000, var_D8)))))
  loc_159BC6F:     var_170.Text = var_F8
  loc_159BCBF:     Set var_13C = Me.Txt
  loc_159BCC5:     Call 0.Method_Proc_338_86_159C9040 (CInt(6), var_170)
  loc_159BCE5:     Set var_250 = Me.FGrid
  loc_159BCEC:     var_D8 = CVar(CLng(var_AA)) 'Long
  loc_159BCF4:     var_118 = CVar(CLng(0)) 'Long
  loc_159BCFE:     var_F8 = CVar(CStr(var_AA)) 'String
  loc_159BD05:     LateIdCallSt
  loc_159BD14:     var_E8 = CVar(CLng(var_AA)) 'Long
  loc_159BD1C:     var_16C = CVar(CLng(2)) 'Long
  loc_159BD4C:     var_108 = CVar(CStr(var_98.Fields.Item("Name").Value)) 'String
  loc_159BD53:     LateIdCallSt
  loc_159BD6D:     var_E8 = CVar(CLng(var_AA)) 'Long
  loc_159BD75:     var_16C = CVar(CLng(&HC)) 'Long
  loc_159BDA5:     var_108 = CVar(CStr(var_98.Fields.Item("Code").Value)) 'String
  loc_159BDAC:     LateIdCallSt
  loc_159BDC6:     var_E8 = CVar(CLng(var_AA)) 'Long
  loc_159BDCE:     var_16C = CVar(CLng(1)) 'Long
  loc_159BDFE:     var_108 = CVar(CStr(var_98.Fields.Item("DispCode").Value)) 'String
  loc_159BE05:     LateIdCallSt
  loc_159BE1F:     var_E8 = CVar(CLng(var_AA)) 'Long
  loc_159BE27:     var_16C = CVar(CLng(4)) 'Long
  loc_159BE57:     var_108 = CVar(CStr(var_98.Fields.Item("Unit").Value)) 'String
  loc_159BE5E:     LateIdCallSt
  loc_159BE78:     var_E8 = CVar(CLng(var_AA)) 'Long
  loc_159BE80:     var_16C = CVar(CLng(8)) 'Long
  loc_159BEB0:     var_108 = CVar(CStr(var_98.Fields.Item("IssueUnit").Value)) 'String
  loc_159BEB7:     LateIdCallSt
  loc_159BEED:     var_118 = CVar(CLng(var_AA)) 'Long
  loc_159BEF5:     var_180 = CVar(CLng(6)) 'Long
  loc_159BF22:     var_14C = CVar(CStr(Format(CVar(var_98.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_159BF29:     LateIdCallSt
  loc_159BF5F:     var_118 = CVar(CLng(var_AA)) 'Long
  loc_159BF67:     var_180 = CVar(CLng(5)) 'Long
  loc_159BF94:     var_14C = CVar(CStr(Format(CVar(var_94.Fields.Item("QtyIss")), "0.000"))) 'String
  loc_159BF9B:     LateIdCallSt
  loc_159BFB5:     var_D8 = CVar(CLng(var_AA)) 'Long
  loc_159BFBD:     var_118 = CVar(CLng(5)) 'Long
  loc_159BFD8:     var_2A8 = Val(CStr(var_250.TextMatrix)))
  loc_159BFDF:     var_180 = CVar(CLng(var_AA)) 'Long
  loc_159BFE7:     var_1C8 = CVar(CLng(6)) 'Long
  loc_159BFFA:     var_C4 = CStr(var_250.TextMatrix))
  loc_159C009:     var_260 = CVar(CLng(var_AA)) 'Long
  loc_159C011:     var_280 = CVar(CLng(7)) 'Long
  loc_159C042:     var_190 = CVar(CStr(Format(CVar((var_2A8 * Val(var_C4))), "0.000"))) 'String
  loc_159C049:     LateIdCallSt
  loc_159C08F:     var_180 = CVar(CLng(9)) 'Long
  loc_159C0C3:     LateIdCallSt
  loc_159C10E:     Set var_13C = Me.Txt
  loc_159C114:     Call 0.Method_Proc_338_86_159C9040 (CInt(3), var_170, var_C4, var_250, CVar(CStr(Format(CVar(var_94.Fields.Item("Rate")), "0.00000"))), 1, 1)
  loc_159C11C:     var_180 = Proc_6_38_E69628(CVar(var_94.Fields.Item("VDate")))
  loc_159C133:     Call Proc_338_106_1064244(CStr(var_98.Fields.Item("Code").Value), var_C4, var_2A8, CVar(CLng(var_AA)), var_250)
  loc_159C13C:     var_16C = CVar(CLng(var_AA)) 'Long
  loc_159C144:     var_1A0 = CVar(CLng(&HA)) 'Long
  loc_159C171:     var_15C = CVar(CStr(Format(CVar(var_2A8), "0.00000"))) 'String
  loc_159C178:     LateIdCallSt
  loc_159C1A3:     var_D8 = CVar(CLng(var_AA)) 'Long
  loc_159C1B9:     LateIdCallSt
  loc_159C1D5:     var_D8 = "DiscApp"
  loc_159C1FA:     var_108 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item(var_D8)), CVar(CLng(&H14)), CVar(CLng(var_AA)), var_250, vbNullString, CVar(CLng(&H18)), var_D8)) 'String
  loc_159C201:     LateIdCallSt
  loc_159C24C:     var_108 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(var_AA)), var_250, var_108, var_250)) 'String
  loc_159C253:     LateIdCallSt
  loc_159C29E:     var_108 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("TaxStru")), CVar(CLng(&H1A)), CVar(CLng(var_AA)), var_250, var_108)) 'String
  loc_159C2A5:     LateIdCallSt
  loc_159C2F0:     var_108 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("TaxStruName")), CVar(CLng(&H19)), CVar(CLng(var_AA)), var_250, var_108)) 'String
  loc_159C2F7:     LateIdCallSt
  loc_159C342:     var_108 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(var_AA)), var_250, var_108)) 'String
  loc_159C349:     LateIdCallSt
  loc_159C394:     var_108 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)), CVar(CLng(var_AA)), var_250, var_108)) 'String
  loc_159C39B:     LateIdCallSt
  loc_159C3E6:     var_108 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("Kitchen")), CVar(CLng(&H1E)), CVar(CLng(var_AA)), var_250, var_108)) 'String
  loc_159C3ED:     LateIdCallSt
  loc_159C41F:     var_118 = CVar(CLng(var_AA)) 'Long
  loc_159C45B:     LateIdCallSt
  loc_159C4AA:     var_108 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("RateEdit")), CVar(CLng(&H1D)), CVar(CLng(var_AA)), var_250, CVar(CStr(Format(CVar(var_94.Fields.Item("Amount")), "0.00"))), 1, 1)) 'String
  loc_159C4B1:     LateIdCallSt
  loc_159C4FC:     var_108 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("IDiscApp")), CVar(CLng(&H14)), CVar(CLng(var_AA)), var_250, var_108, CVar(CLng(&HB)))) 'String
  loc_159C503:     LateIdCallSt
  loc_159C54E:     var_108 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("SChrgApp")), CVar(CLng(&H1F)), CVar(CLng(var_AA)), var_250, var_108)) 'String
  loc_159C555:     LateIdCallSt
  loc_159C56B:     var_D8 = CVar(CLng(var_AA)) 'Long
  loc_159C573:     var_118 = CVar(CLng(&H17)) 'Long
  loc_159C582:     LateIdCallSt
  loc_159C58E:     var_D8 = CVar(CLng(var_AA)) 'Long
  loc_159C596:     var_118 = CVar(CLng(&H16)) 'Long
  loc_159C5A5:     LateIdCallSt
  loc_159C5C0:     var_D8 = "TaxStru"
  loc_159C5E5:     var_C0 = Proc_6_38_E69628(CVar(var_98.Fields.Item(var_D8)), "Select * from taxStru where code='", var_108, -1, var_13C, var_250, var_BC)
  loc_159C5F9:     unk_5986AD.Execute var_118 & CStr(var_250.TextMatrix)) & "'", var_D8, var_250
  loc_159C604:     Set var_B0 = var_13C
  loc_159C632:     If (var_B0.RecordCount > 0) Then
  loc_159C65D:       var_134 = var_B0.Fields.Item("Rate")
  loc_159C66C:       Proc_6_39_E7D3A0(var_108, CVar(var_134), CVar(CLng(&H11)), CVar(CLng(var_AA)))
  loc_159C675:       var_128 = CVar(CStr(var_108)) 'String
  loc_159C67C:       LateIdCallSt
  loc_159C690:     End If
  loc_159C692:     Set var_250 = Nothing 
  loc_159C69C:     var_AA = (var_AA + 1)
  loc_159C6A2:     var_94.MoveNext
  loc_159C6A9:     var_B2 = 0
  loc_159C6AC:     GoTo loc_159BA2A
  loc_159C6AF:     ' Referenced from: 159C831
  loc_159C6AF:   End If
  loc_159C6B5:   var_136 = var_9C.EOF
  loc_159C6BE:   If Not(var_136) Then
  loc_159C6CD:     Set var_12C = Me.LblCap
  loc_159C6D3:     Call 0.Method_Proc_338_86_159C904C (var_136, var_AA, 1, var_B2, var_AA)
  loc_159C6DE:     For var_2B4 = var_128 To var_136: var_250 = var_2B4 'Integer
  loc_159C6F1:       Set var_12C = Me.LblCap
  loc_159C6F7:       Call 0.Method_Proc_338_86_159C9040 (var_AA, var_134, CStr(var_250.TextMatrix)), var_128)
  loc_159C6FF:       var_B8 = var_134.Tag
  loc_159C725:       var_170 = var_9C.Fields.Item("SunCode")
  loc_159C749:       If (CVar(CStr(var_250.TextMatrix))) = var_170.Value) Then
  loc_159C784:         Set var_13C = Me.TxtPer
  loc_159C78A:         Call 0.Method_Proc_338_86_159C9040 (var_AA, var_170, CStr(var_9C.Fields.Item("SValue").Value))
  loc_159C792:         var_170.Text = var_118
  loc_159C7F9:         Set var_13C = Me.TxtGt
  loc_159C7FF:         Call 0.Method_Proc_338_86_159C9040 (var_AA, var_170, CStr(Format(CVar(var_9C.Fields.Item("Amount")), "0.00")))
  loc_159C807:         var_170.Text = 1
  loc_159C821:       End If
  loc_159C824:     Next var_2B4 'Integer
  loc_159C82C:     var_9C.MoveNext
  loc_159C831:     GoTo loc_159C6AF
  loc_159C834:   End If
  loc_159C847:   Me.FGrid.FixedRows = 1
  loc_159C84F: End If
  loc_159C85D: Me.FGrid.Redraw = True
  loc_159C86B: If (var_AA = 1) Then
  loc_159C881:   Me.FGrid.Rows = 1
  loc_159C8A7:   var_F8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_159C8AF:   Set var_134 = Me.FGrid
  loc_159C8DC:   Me.FGrid.FixedRows = 1
  loc_159C8E4: End If
  loc_159C8E9: Call Proc_338_101_17C1F88(&H32, FGrid.DispID_10000)
  loc_159C8F3: Set var_94 = Nothing
  loc_159C8FB: Set var_9C = Nothing
  loc_159C8FE: Proc_338_86_159C904 = var_F8
End Sub

Public Sub Proc_338_87_148C3DC
  'Data Table: 598690
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_C0 As Variant
  Dim var_C8 As TextBox
  Dim var_E4 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_118 As String
  Dim var_12C As MSHFlexGrid
  loc_148B77E: Me.FGrid.Left = CVar(CDbl(&H64))
  loc_148B799: Me.FGrid.Top = CVar(CDbl(2030))
  loc_148B7B4: Me.FGrid.Width = CVar(CDbl(11500))
  loc_148B7CF: Me.DGItem.Left = CVar(CDbl(3000))
  loc_148B7EA: Me.DGItem.Top = CVar(CDbl(1000))
  loc_148B7FD: If (global_100 <> "Yes") Then
  loc_148B811:   Set var_A8 = Me.DGItem
  loc_148B830:   DGItem.DispID_69.Item(1).Width = CDbl(0)
  loc_148B859:   var_94 = CVar((CDbl(Me.DGItem.Width) - CDbl(2500))) 'Single
  loc_148B862:   Set var_BC = Me.DGItem
  loc_148B868:   var_BC.Width = 1
  loc_148B877: End If
  loc_148B885: Set var_A8 = Me.Txt
  loc_148B88B: Call 0.Method_Proc_338_87_148C3DC0 (CInt(7), var_BC)
  loc_148B8AA: Me.DgMR.Left = CVar(var_BC.Left)
  loc_148B8C6: Set var_C0 = Me.Txt
  loc_148B8CC: Call 0.Method_Proc_338_87_148C3DC0 (CInt(7), var_C8)
  loc_148B8E7: Set var_A8 = Me.Txt
  loc_148B8ED: Call 0.Method_Proc_338_87_148C3DC0 (CInt(7), var_BC)
  loc_148B905: var_94 = CVar(((var_BC.Top + var_C8.Height) + CDbl(&H1E))) 'Single
  loc_148B914: Me.DgMR.Top = CVar(var_BC.Left)
  loc_148B939: Me.DGRest.Left = CVar(CDbl(3000))
  loc_148B954: Me.DGRest.Top = CVar(CDbl(1000))
  loc_148B988: var_94 = CVar((CDbl(Me.FGrid.Left) + CDbl(Me.FGrid.Width))) 'Single
  loc_148B997: Me.DGGod.Left = CVar(CDbl(1000))
  loc_148B9CE: Me.DGGod.Top = CVar(CDbl(Me.FGrid.Top))
  loc_148B9E1: Set var_E4 = Me.FGrid
  loc_148B9F8: global_104 = CStr(CLng(var_E4.BackColor))
  loc_148BA0E: var_E4.Cols = &H23
  loc_148BA16: var_94 = CVar(CLng(0)) 'Long
  loc_148BA1B: var_F8 = &H190
  loc_148BA27: LateIdCallSt
  loc_148BA2F: var_94 = 0
  loc_148BA3B: var_F8 = CVar(CLng(&HD)) 'Long
  loc_148BA40: var_118 = "KSNo"
  loc_148BA49: LateIdCallSt
  loc_148BA54: var_94 = CVar(CLng(&HD)) 'Long
  loc_148BA59: var_F8 = 0
  loc_148BA65: LateIdCallSt
  loc_148BA6D: var_94 = 0
  loc_148BA79: var_F8 = CVar(CLng(1)) 'Long
  loc_148BA7E: var_118 = "Item Code"
  loc_148BA87: LateIdCallSt
  loc_148BA92: var_94 = CVar(CLng(1)) 'Long
  loc_148BA9D: var_F8 = CVar(CInt(1)) 'Integer
  loc_148BAA4: LateIdCallSt
  loc_148BAAF: var_94 = CVar(CLng(1)) 'Long
  loc_148BAB4: var_F8 = 0
  loc_148BAC0: LateIdCallSt
  loc_148BAC8: var_94 = 0
  loc_148BAD4: var_F8 = CVar(CLng(2)) 'Long
  loc_148BAD9: var_118 = "Item Name"
  loc_148BAE2: LateIdCallSt
  loc_148BAED: var_94 = CVar(CLng(2)) 'Long
  loc_148BAF8: var_F8 = CVar(CInt(1)) 'Integer
  loc_148BAFF: LateIdCallSt
  loc_148BB0A: var_94 = CVar(CLng(2)) 'Long
  loc_148BB0F: var_F8 = &HC80
  loc_148BB1B: LateIdCallSt
  loc_148BB23: var_94 = 0
  loc_148BB2F: var_F8 = CVar(CLng(3)) 'Long
  loc_148BB34: var_118 = "MR.No"
  loc_148BB3D: LateIdCallSt
  loc_148BB48: var_94 = CVar(CLng(3)) 'Long
  loc_148BB53: var_F8 = CVar(CInt(7)) 'Integer
  loc_148BB5A: LateIdCallSt
  loc_148BB65: var_94 = CVar(CLng(3)) 'Long
  loc_148BB70: var_F8 = CVar(CInt(7)) 'Integer
  loc_148BB77: LateIdCallSt
  loc_148BB82: var_94 = CVar(CLng(3)) 'Long
  loc_148BB87: var_F8 = 0
  loc_148BB93: LateIdCallSt
  loc_148BB9B: var_94 = 0
  loc_148BBA7: var_F8 = CVar(CLng(4)) 'Long
  loc_148BBAC: var_118 = "Unit"
  loc_148BBB5: LateIdCallSt
  loc_148BBC0: var_94 = CVar(CLng(4)) 'Long
  loc_148BBCB: var_F8 = CVar(CInt(1)) 'Integer
  loc_148BBD2: LateIdCallSt
  loc_148BBDD: var_94 = CVar(CLng(4)) 'Long
  loc_148BBE2: var_F8 = 0
  loc_148BBEE: LateIdCallSt
  loc_148BBF6: var_94 = 0
  loc_148BC02: var_F8 = CVar(CLng(5)) 'Long
  loc_148BC07: var_118 = "Qty"
  loc_148BC10: LateIdCallSt
  loc_148BC1B: var_94 = CVar(CLng(5)) 'Long
  loc_148BC26: var_F8 = CVar(CInt(7)) 'Integer
  loc_148BC2D: LateIdCallSt
  loc_148BC38: var_94 = CVar(CLng(5)) 'Long
  loc_148BC43: var_F8 = CVar(CInt(7)) 'Integer
  loc_148BC4A: LateIdCallSt
  loc_148BC55: var_94 = CVar(CLng(5)) 'Long
  loc_148BC5A: var_F8 = &H384
  loc_148BC66: LateIdCallSt
  loc_148BC6E: var_94 = 0
  loc_148BC7A: var_F8 = CVar(CLng(6)) 'Long
  loc_148BC7F: var_118 = "Con.Ratio"
  loc_148BC88: LateIdCallSt
  loc_148BC93: var_94 = CVar(CLng(6)) 'Long
  loc_148BC9E: var_F8 = CVar(CInt(7)) 'Integer
  loc_148BCA5: LateIdCallSt
  loc_148BCB0: var_94 = CVar(CLng(6)) 'Long
  loc_148BCBB: var_F8 = CVar(CInt(7)) 'Integer
  loc_148BCC2: LateIdCallSt
  loc_148BCCD: var_94 = CVar(CLng(6)) 'Long
  loc_148BCD2: var_F8 = 0
  loc_148BCDE: LateIdCallSt
  loc_148BCE6: var_94 = 0
  loc_148BCF2: var_F8 = CVar(CLng(7)) 'Long
  loc_148BCF7: var_118 = "Wt Qty"
  loc_148BD00: LateIdCallSt
  loc_148BD0B: var_94 = CVar(CLng(7)) 'Long
  loc_148BD16: var_F8 = CVar(CInt(7)) 'Integer
  loc_148BD1D: LateIdCallSt
  loc_148BD28: var_94 = CVar(CLng(7)) 'Long
  loc_148BD33: var_F8 = CVar(CInt(7)) 'Integer
  loc_148BD3A: LateIdCallSt
  loc_148BD45: var_94 = CVar(CLng(7)) 'Long
  loc_148BD4A: var_F8 = 0
  loc_148BD56: LateIdCallSt
  loc_148BD5E: var_94 = 0
  loc_148BD6A: var_F8 = CVar(CLng(8)) 'Long
  loc_148BD6F: var_118 = "Wt.Unit"
  loc_148BD78: LateIdCallSt
  loc_148BD83: var_94 = CVar(CLng(8)) 'Long
  loc_148BD8E: var_F8 = CVar(CInt(1)) 'Integer
  loc_148BD95: LateIdCallSt
  loc_148BDA0: var_94 = CVar(CLng(8)) 'Long
  loc_148BDA5: var_F8 = 0
  loc_148BDB1: LateIdCallSt
  loc_148BDB9: var_94 = 0
  loc_148BDC5: var_F8 = CVar(CLng(9)) 'Long
  loc_148BDCA: var_118 = "Rate"
  loc_148BDD3: LateIdCallSt
  loc_148BDDE: var_94 = CVar(CLng(9)) 'Long
  loc_148BDE9: var_F8 = CVar(CInt(7)) 'Integer
  loc_148BDF0: LateIdCallSt
  loc_148BDFB: var_94 = CVar(CLng(9)) 'Long
  loc_148BE06: var_F8 = CVar(CInt(7)) 'Integer
  loc_148BE0D: LateIdCallSt
  loc_148BE18: var_94 = CVar(CLng(9)) 'Long
  loc_148BE1D: var_F8 = &H4B0
  loc_148BE29: LateIdCallSt
  loc_148BE31: var_94 = 0
  loc_148BE3D: var_F8 = CVar(CLng(&HA)) 'Long
  loc_148BE42: var_118 = "Rate1"
  loc_148BE4B: LateIdCallSt
  loc_148BE56: var_94 = CVar(CLng(&HA)) 'Long
  loc_148BE61: var_F8 = CVar(CInt(7)) 'Integer
  loc_148BE68: LateIdCallSt
  loc_148BE73: var_94 = CVar(CLng(&HA)) 'Long
  loc_148BE7E: var_F8 = CVar(CInt(7)) 'Integer
  loc_148BE85: LateIdCallSt
  loc_148BE90: var_94 = CVar(CLng(&HA)) 'Long
  loc_148BE95: var_F8 = 0
  loc_148BEA1: LateIdCallSt
  loc_148BEA9: var_94 = 0
  loc_148BEB5: var_F8 = CVar(CLng(&HB)) 'Long
  loc_148BEBA: var_118 = "Amount"
  loc_148BEC3: LateIdCallSt
  loc_148BECE: var_94 = CVar(CLng(&HB)) 'Long
  loc_148BED9: var_F8 = CVar(CInt(7)) 'Integer
  loc_148BEE0: LateIdCallSt
  loc_148BEEB: var_94 = CVar(CLng(&HB)) 'Long
  loc_148BEF6: var_F8 = CVar(CInt(7)) 'Integer
  loc_148BEFD: LateIdCallSt
  loc_148BF08: var_94 = CVar(CLng(&HB)) 'Long
  loc_148BF0D: var_F8 = &H44C
  loc_148BF19: LateIdCallSt
  loc_148BF24: var_94 = CVar(CLng(&HE)) 'Long
  loc_148BF29: var_F8 = 0
  loc_148BF35: LateIdCallSt
  loc_148BF40: var_94 = CVar(CLng(&HC)) 'Long
  loc_148BF45: var_F8 = 0
  loc_148BF51: LateIdCallSt
  loc_148BF5C: var_94 = CVar(CLng(&HF)) 'Long
  loc_148BF61: var_F8 = 0
  loc_148BF6D: LateIdCallSt
  loc_148BF78: var_94 = CVar(CLng(&H10)) 'Long
  loc_148BF7D: var_F8 = 0
  loc_148BF89: LateIdCallSt
  loc_148BF94: var_94 = CVar(CLng(&H11)) 'Long
  loc_148BF99: var_F8 = 0
  loc_148BFA5: LateIdCallSt
  loc_148BFB0: var_94 = CVar(CLng(&H12)) 'Long
  loc_148BFB5: var_F8 = 0
  loc_148BFC1: LateIdCallSt
  loc_148BFCC: var_94 = CVar(CLng(&H13)) 'Long
  loc_148BFD1: var_F8 = 0
  loc_148BFDD: LateIdCallSt
  loc_148BFE8: var_94 = CVar(CLng(&H15)) 'Long
  loc_148BFED: var_F8 = 0
  loc_148BFF9: LateIdCallSt
  loc_148C004: var_94 = CVar(CLng(&H14)) 'Long
  loc_148C009: var_F8 = 0
  loc_148C015: LateIdCallSt
  loc_148C020: var_94 = CVar(CLng(&H19)) 'Long
  loc_148C025: var_F8 = &H578
  loc_148C031: LateIdCallSt
  loc_148C03C: var_94 = CVar(CLng(&H1A)) 'Long
  loc_148C041: var_F8 = 0
  loc_148C04D: LateIdCallSt
  loc_148C058: var_94 = CVar(CLng(&H1B)) 'Long
  loc_148C05D: var_F8 = &HBB8
  loc_148C069: LateIdCallSt
  loc_148C074: var_94 = CVar(CLng(&H1C)) 'Long
  loc_148C079: var_F8 = 0
  loc_148C085: LateIdCallSt
  loc_148C090: var_94 = CVar(CLng(&H1D)) 'Long
  loc_148C095: var_F8 = 0
  loc_148C0A1: LateIdCallSt
  loc_148C0AC: var_94 = CVar(CLng(&H1E)) 'Long
  loc_148C0B1: var_F8 = 0
  loc_148C0BD: LateIdCallSt
  loc_148C0C5: var_94 = 0
  loc_148C0D1: var_F8 = CVar(CLng(&HC)) 'Long
  loc_148C0D6: var_118 = "Item Code"
  loc_148C0DF: LateIdCallSt
  loc_148C0E7: var_94 = 0
  loc_148C0F3: var_F8 = CVar(CLng(&HF)) 'Long
  loc_148C0F8: var_118 = "Disc %"
  loc_148C101: LateIdCallSt
  loc_148C109: var_94 = 0
  loc_148C115: var_F8 = CVar(CLng(&H10)) 'Long
  loc_148C11A: var_118 = "Disc Amt."
  loc_148C123: LateIdCallSt
  loc_148C12B: var_94 = 0
  loc_148C137: var_F8 = CVar(CLng(&H11)) 'Long
  loc_148C13C: var_118 = "Tax %"
  loc_148C145: LateIdCallSt
  loc_148C14D: var_94 = 0
  loc_148C159: var_F8 = CVar(CLng(&H12)) 'Long
  loc_148C15E: var_118 = "Tax Amt"
  loc_148C167: LateIdCallSt
  loc_148C16F: var_94 = 0
  loc_148C17B: var_F8 = CVar(CLng(&H13)) 'Long
  loc_148C180: var_118 = "Total"
  loc_148C189: LateIdCallSt
  loc_148C191: var_94 = 0
  loc_148C19D: var_F8 = CVar(CLng(&H15)) 'Long
  loc_148C1A2: var_118 = "R Off"
  loc_148C1AB: LateIdCallSt
  loc_148C1B3: var_94 = 0
  loc_148C1BF: var_F8 = CVar(CLng(&H14)) 'Long
  loc_148C1C4: var_118 = "Disc Y/N"
  loc_148C1CD: LateIdCallSt
  loc_148C1D5: var_94 = 0
  loc_148C1E1: var_F8 = CVar(CLng(&H19)) 'Long
  loc_148C1E6: var_118 = "Tax Structure"
  loc_148C1EF: LateIdCallSt
  loc_148C1F7: var_94 = 0
  loc_148C203: var_F8 = CVar(CLng(&H1A)) 'Long
  loc_148C208: var_118 = "Tax Cat Code"
  loc_148C211: LateIdCallSt
  loc_148C219: var_94 = 0
  loc_148C225: var_F8 = CVar(CLng(&H1B)) 'Long
  loc_148C22A: var_118 = "A/C Name"
  loc_148C233: LateIdCallSt
  loc_148C23B: var_94 = 0
  loc_148C247: var_F8 = CVar(CLng(&H1C)) 'Long
  loc_148C24C: var_118 = "A/C Code"
  loc_148C255: LateIdCallSt
  loc_148C25D: var_94 = 0
  loc_148C269: var_F8 = CVar(CLng(&H16)) 'Long
  loc_148C26E: var_118 = "Godown"
  loc_148C277: LateIdCallSt
  loc_148C282: var_94 = CVar(CLng(&H16)) 'Long
  loc_148C28D: var_F8 = CVar(CInt(1)) 'Integer
  loc_148C294: LateIdCallSt
  loc_148C29F: var_94 = CVar(CLng(&H16)) 'Long
  loc_148C2AA: var_F8 = CVar(CInt(1)) 'Integer
  loc_148C2B1: LateIdCallSt
  loc_148C2BC: var_94 = CVar(CLng(&H16)) 'Long
  loc_148C2C1: var_F8 = 0
  loc_148C2CD: LateIdCallSt
  loc_148C2D8: var_94 = CVar(CLng(&H17)) 'Long
  loc_148C2DD: var_F8 = 0
  loc_148C2E9: LateIdCallSt
  loc_148C2F4: var_94 = CVar(CLng(&H18)) 'Long
  loc_148C2F9: var_F8 = 0
  loc_148C305: LateIdCallSt
  loc_148C310: var_94 = CVar(CLng(&H1F)) 'Long
  loc_148C315: var_F8 = 0
  loc_148C321: LateIdCallSt
  loc_148C32C: var_94 = CVar(CLng(&H20)) 'Long
  loc_148C331: var_F8 = 0
  loc_148C33D: LateIdCallSt
  loc_148C348: var_94 = CVar(CLng(&H21)) 'Long
  loc_148C34D: var_F8 = 0
  loc_148C359: LateIdCallSt
  loc_148C364: var_94 = CVar(CLng(&H22)) 'Long
  loc_148C369: var_F8 = 0
  loc_148C375: LateIdCallSt
  loc_148C37F: Set var_E4 = Nothing 
  loc_148C387: Set var_12C = Me.FGCat
  loc_148C39E: global_104 = CStr(CLng(var_12C.BackColor))
  loc_148C3AB: var_94 = CVar(CLng(3)) 'Long
  loc_148C3B0: var_F8 = &H7D0
  loc_148C3BC: LateIdCallSt
  loc_148C3D0: var_12C.Cols = 7
  loc_148C3D7: Set var_12C = Nothing 
  loc_148C3DB: Exit Sub
End Sub

Public Sub Proc_338_88_F7163C
  'Data Table: 598690
  Dim var_88 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  loc_F71500: Set var_88 = Me.TopCtrl1
  loc_F71506: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_F7151F: If (CStr() = "Browse") Then
  loc_F71522:   Exit Sub
  loc_F71523: End If
  loc_F71562: If ((CLng(Me.FGrid.Row) > 0) And (CLng(Me.FGrid.Col) = CLng(9))) Then
  loc_F71578:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F71580:   var_E0 = CVar(CLng(&HE)) 'Long
  loc_F715B3:   If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_F715BF:     Call FGrid_UnknownEvent_C()
  loc_F715C9:     global_146 = 0
  loc_F715CF:   Else
  loc_F715E2:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F715EA:     var_E0 = CVar(CLng(9)) 'Long
  loc_F71622:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_F7162E:       Call FGrid_UnknownEvent_C()
  loc_F71638:       global_146 = 0
  loc_F7163B:     End If
  loc_F7163B:   End If
  loc_F7163B: End If
  loc_F7163B: Exit Sub
End Sub

Public Sub Proc_338_89_1AE1714(arg_C) '1AE1714
  'Data Table: 598690
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_B4 As Long
  Dim Me As Recordset15
  Dim var_BC As Variant
  Dim var_E0 As Double
  Dim var_C4 As String
  Dim var_D8 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_C0 As String
  Dim var_148 As MSHFlexGrid
  Dim var_158 As Variant
  Dim var_168 As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim var_190 As MSHFlexGrid
  Dim var_1A0 As Variant
  Dim var_1B0 As Variant
  Dim var_1E4 As MSHFlexGrid
  Dim var_1F4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_92 As Integer
  Dim var_134 As Variant
  Dim unk_5986AD As Connection15
  Dim var_98 As Recordset15
  Dim var_24C As Double
  Dim var_204 As Variant
  loc_1ADD590: If (arg_C = 0) Then
  loc_1ADD5B6:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_1ADD5D0:     If (Me.RecordCount > 0) Then
  loc_1ADD5D9:       Me.MoveFirst
  loc_1ADD5DE:     End If
  loc_1ADD5F5:     If (Me.RecordCount > 0) Then
  loc_1ADD604:       Set var_A0 = Me.TxtGrid
  loc_1ADD60A:       Call 0.Method_Proc_338_89_1AE17140 (0, var_BC, var_C0)
  loc_1ADD612:       var_B4 = var_BC.Text
  loc_1ADD61F:       var_E0 = Val(var_C0)
  loc_1ADD645:       Me.Find "DispCode=" & CStr(var_E0), 0, 1
  loc_1ADD65A:     End If
  loc_1ADD6A8:     Set var_A0 = Me.TxtGrid
  loc_1ADD6AE:     Call 0.Method_Proc_338_89_1AE17140 (arg_C, var_BC, var_C0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1ADD6B6:     var_D8 = var_BC.Text
  loc_1ADD6CE:     If (var_E0 Or (var_C0 = vbNullString)) Then
  loc_1ADD6E4:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADD6EC:       var_104 = CVar(CLng(2)) 'Long
  loc_1ADD6F1:       var_124 = vbNullString
  loc_1ADD6FB:       Set var_BC = Me.FGrid
  loc_1ADD701:       LateIdCallSt
  loc_1ADD726:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADD72E:       var_104 = CVar(CLng(&HC)) 'Long
  loc_1ADD733:       var_124 = vbNullString
  loc_1ADD73D:       Set var_BC = Me.FGrid
  loc_1ADD743:       LateIdCallSt
  loc_1ADD768:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADD770:       var_104 = CVar(CLng(1)) 'Long
  loc_1ADD775:       var_124 = vbNullString
  loc_1ADD77F:       Set var_BC = Me.FGrid
  loc_1ADD785:       LateIdCallSt
  loc_1ADD7AA:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADD7B2:       var_104 = CVar(CLng(4)) 'Long
  loc_1ADD7B7:       var_124 = vbNullString
  loc_1ADD7C1:       Set var_BC = Me.FGrid
  loc_1ADD7C7:       LateIdCallSt
  loc_1ADD7EC:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADD7F4:       var_104 = CVar(CLng(1)) 'Long
  loc_1ADD7F9:       var_124 = vbNullString
  loc_1ADD803:       Set var_BC = Me.FGrid
  loc_1ADD809:       LateIdCallSt
  loc_1ADD82E:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADD836:       var_104 = CVar(CLng(9)) 'Long
  loc_1ADD83B:       var_124 = vbNullString
  loc_1ADD845:       Set var_BC = Me.FGrid
  loc_1ADD84B:       LateIdCallSt
  loc_1ADD870:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADD878:       var_104 = CVar(CLng(&HA)) 'Long
  loc_1ADD87D:       var_124 = vbNullString
  loc_1ADD887:       Set var_BC = Me.FGrid
  loc_1ADD88D:       LateIdCallSt
  loc_1ADD8B2:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADD8BA:       var_104 = CVar(CLng(&H18)) 'Long
  loc_1ADD8BF:       var_124 = vbNullString
  loc_1ADD8C9:       Set var_BC = Me.FGrid
  loc_1ADD8CF:       LateIdCallSt
  loc_1ADD8F4:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADD8FC:       var_104 = CVar(CLng(&H14)) 'Long
  loc_1ADD901:       var_124 = vbNullString
  loc_1ADD90B:       Set var_BC = Me.FGrid
  loc_1ADD911:       LateIdCallSt
  loc_1ADD936:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADD93E:       var_104 = CVar(CLng(&H15)) 'Long
  loc_1ADD943:       var_124 = vbNullString
  loc_1ADD94D:       Set var_BC = Me.FGrid
  loc_1ADD953:       LateIdCallSt
  loc_1ADD978:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADD980:       var_104 = CVar(CLng(&H1A)) 'Long
  loc_1ADD985:       var_124 = vbNullString
  loc_1ADD98F:       Set var_BC = Me.FGrid
  loc_1ADD995:       LateIdCallSt
  loc_1ADD9BA:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADD9C2:       var_104 = CVar(CLng(&H19)) 'Long
  loc_1ADD9C7:       var_124 = vbNullString
  loc_1ADD9D1:       Set var_BC = Me.FGrid
  loc_1ADD9D7:       LateIdCallSt
  loc_1ADD9FC:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADDA04:       var_104 = CVar(CLng(&H1C)) 'Long
  loc_1ADDA09:       var_124 = vbNullString
  loc_1ADDA13:       Set var_BC = Me.FGrid
  loc_1ADDA19:       LateIdCallSt
  loc_1ADDA3E:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADDA46:       var_104 = CVar(CLng(&H1B)) 'Long
  loc_1ADDA4B:       var_124 = vbNullString
  loc_1ADDA55:       Set var_BC = Me.FGrid
  loc_1ADDA5B:       LateIdCallSt
  loc_1ADDA80:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADDA88:       var_104 = CVar(CLng(&H1E)) 'Long
  loc_1ADDA8D:       var_124 = vbNullString
  loc_1ADDA97:       Set var_BC = Me.FGrid
  loc_1ADDA9D:       LateIdCallSt
  loc_1ADDAB2:     Else
  loc_1ADDACB:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADDAD3:       var_104 = CVar(CLng(&HC)) 'Long
  loc_1ADDAED:       var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1ADDB0B:       var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADDB13:       var_168 = CVar(CLng(&HC)) 'Long
  loc_1ADDB2D:       var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_1ADDB98:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(&HC)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1ADDBAE:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADDBB6:         var_114 = CVar(CLng(2)) 'Long
  loc_1ADDBE9:         var_158 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1ADDBF1:         Set var_17C = Me.FGrid
  loc_1ADDBF7:         LateIdCallSt
  loc_1ADDC26:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADDC2E:         var_114 = CVar(CLng(&HC)) 'Long
  loc_1ADDC61:         var_158 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1ADDC69:         Set var_17C = Me.FGrid
  loc_1ADDC6F:         LateIdCallSt
  loc_1ADDC9E:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADDCA6:         var_114 = CVar(CLng(1)) 'Long
  loc_1ADDCD9:         var_158 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1ADDCE1:         Set var_17C = Me.FGrid
  loc_1ADDCE7:         LateIdCallSt
  loc_1ADDD16:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADDD1E:         var_114 = CVar(CLng(4)) 'Long
  loc_1ADDD51:         var_158 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1ADDD59:         Set var_17C = Me.FGrid
  loc_1ADDD5F:         LateIdCallSt
  loc_1ADDD8E:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADDD96:         var_114 = CVar(CLng(8)) 'Long
  loc_1ADDDC9:         var_158 = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_1ADDDD1:         Set var_17C = Me.FGrid
  loc_1ADDDD7:         LateIdCallSt
  loc_1ADDE07:         var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1ADDE14:         var_D8 = CVar(CLng(var_92)) 'Long
  loc_1ADDE1C:         var_104 = CVar(CLng(0)) 'Long
  loc_1ADDE26:         var_B0 = CVar(CStr(var_92)) 'String
  loc_1ADDE2E:         Set var_A0 = Me.FGrid
  loc_1ADDE34:         LateIdCallSt
  loc_1ADDE46:         var_D8 = CVar(CLng(var_92)) 'Long
  loc_1ADDE4E:         var_104 = CVar(CLng(5)) 'Long
  loc_1ADDE68:         var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1ADDE7E:         If (CDbl(Val(var_C0)) = CDbl(0)) Then
  loc_1ADDE85:           var_D8 = CVar(CLng(var_92)) 'Long
  loc_1ADDE8D:           var_104 = CVar(CLng(5)) 'Long
  loc_1ADDE92:           var_124 = "1.000"
  loc_1ADDE9C:           Set var_A0 = Me.FGrid
  loc_1ADDEA2:           LateIdCallSt
  loc_1ADDEAD:         End If
  loc_1ADDEB3:         var_D8 = "Code"
  loc_1ADDEC2:         var_A0 = Me.Fields
  loc_1ADDEE5:         Set var_148 = Me.Txt
  loc_1ADDEEB:         Call 0.Method_Proc_338_89_1AE17140 (CInt(3), var_17C, var_C4, var_A0, var_124, var_104, var_D8)
  loc_1ADDEF3:         var_104 = var_17C.Text
  loc_1ADDF0A:         Call Proc_338_106_1064244(CStr(var_A0.Item(var_D8).Value), var_C4, var_E0, var_D8, var_A0)
  loc_1ADDF2A:         var_134 = CVar(CLng(9)) 'Long
  loc_1ADDF65:         LateIdCallSt
  loc_1ADDFAF:         var_BC = Me.Fields.Item("Code")
  loc_1ADDFCA:         Set var_148 = Me.Txt
  loc_1ADDFD0:         Call 0.Method_Proc_338_89_1AE17140 (CInt(3), var_17C, var_C4, Me.FGrid, CVar(CStr(Format(CVar(var_E0), "0.00000"))), 1, 1)
  loc_1ADDFD8:         var_134 = var_17C.Text
  loc_1ADDFEF:         Call Proc_338_106_1064244(CStr(var_BC.Value), var_C4, var_E0, CVar(CLng(Me.FGrid.Row)))
  loc_1ADE007:         var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE00F:         var_134 = CVar(CLng(&HA)) 'Long
  loc_1ADE03C:         var_1F4 = CVar(CStr(Format(CVar(var_E0), "0.00000"))) 'String
  loc_1ADE044:         Set var_1E4 = Me.FGrid
  loc_1ADE04A:         LateIdCallSt
  loc_1ADE077:       End If
  loc_1ADE0A5:       Set var_A0 = Me.Txt
  loc_1ADE0AB:       Call 0.Method_Proc_338_89_1AE17140 (CInt(7), var_BC, var_C0, CVar(CLng(&H18)), CVar(CLng(Me.FGrid.Row)), var_1E4, var_1F4)
  loc_1ADE0B3:       1 = var_BC.Tag
  loc_1ADE0BB:       var_144 = CVar(var_C0) 'String
  loc_1ADE0C9:       LateIdCallSt
  loc_1ADE0ED:       var_144 = Me.FGrid.Row
  loc_1ADE12E:       var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H14)), CVar(CLng(var_144)), Me.FGrid, var_144, 1)) 'String
  loc_1ADE13C:       LateIdCallSt
  loc_1ADE1A1:       var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADE1AF:       LateIdCallSt
  loc_1ADE214:       var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADE222:       LateIdCallSt
  loc_1ADE287:       var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStruName")), CVar(CLng(&H19)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADE295:       LateIdCallSt
  loc_1ADE2FA:       var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADE308:       LateIdCallSt
  loc_1ADE36D:       var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADE37B:       LateIdCallSt
  loc_1ADE399:       Set var_148 = Me.FGrid
  loc_1ADE3E0:       var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1E)), CVar(CLng(var_148.Row)), Me.FGrid, var_158)) 'String
  loc_1ADE3E8:       Set var_17C = Me.FGrid
  loc_1ADE3EE:       LateIdCallSt
  loc_1ADE41B:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE423:       var_104 = CVar(CLng(&H17)) 'Long
  loc_1ADE432:       var_144 = Me.FGrid.TextMatrix)
  loc_1ADE465:       If (Trim(CVar(CStr(var_144))) = vbNullString) Then
  loc_1ADE47B:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE483:         var_104 = CVar(CLng(&H17)) 'Long
  loc_1ADE496:         Set var_BC = Me.FGrid
  loc_1ADE49C:         LateIdCallSt
  loc_1ADE4C1:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE4C9:         var_104 = CVar(CLng(&H16)) 'Long
  loc_1ADE4DC:         Set var_BC = Me.FGrid
  loc_1ADE4E2:         LateIdCallSt
  loc_1ADE4F4:       End If
  loc_1ADE507:       var_D8 = "TaxStru"
  loc_1ADE51E:       var_BC = Me.Fields.Item(var_D8)
  loc_1ADE52F:       var_C0 = Proc_6_38_E69628(CVar(var_BC), "Select * from taxStru where code='", var_144, -1, var_148, var_BC, global_228)
  loc_1ADE533:       var_C4 = var_104 & var_C0
  loc_1ADE543:       unk_5986AD.Execute var_C4 & "'", var_D8, var_BC
  loc_1ADE54E:       Set var_98 = var_148
  loc_1ADE57C:       If (var_98.RecordCount > 0) Then
  loc_1ADE5B6:         var_BC = var_98.Fields.Item("Rate")
  loc_1ADE5C5:         Proc_6_39_E7D3A0(var_144, CVar(var_BC), CVar(CLng(&H11)), CVar(CLng(Me.FGrid.Row)))
  loc_1ADE5CE:         var_18C = CVar(CStr(var_144)) 'String
  loc_1ADE5D6:         Set var_17C = Me.FGrid
  loc_1ADE5DC:         LateIdCallSt
  loc_1ADE5F8:       End If
  loc_1ADE5FD:       Call Proc_338_101_17C1F88(&H32, var_17C, var_18C)
  loc_1ADE602:     End If
  loc_1ADE605:   Else
  loc_1ADE60C:     If (var_B4 = CLng(2)) Then
  loc_1ADE65D:       Set var_A0 = Me.TxtGrid
  loc_1ADE663:       Call 0.Method_Proc_338_89_1AE17140 (arg_C, var_BC, var_C0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1ADE66B:       global_224 = var_BC.Text
  loc_1ADE683:       If (var_104 Or (var_C0 = vbNullString)) Then
  loc_1ADE699:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE6A1:         var_104 = CVar(CLng(2)) 'Long
  loc_1ADE6A6:         var_124 = vbNullString
  loc_1ADE6B0:         Set var_BC = Me.FGrid
  loc_1ADE6B6:         LateIdCallSt
  loc_1ADE6DB:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE6E3:         var_104 = CVar(CLng(&HC)) 'Long
  loc_1ADE6E8:         var_124 = vbNullString
  loc_1ADE6F2:         Set var_BC = Me.FGrid
  loc_1ADE6F8:         LateIdCallSt
  loc_1ADE71D:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE725:         var_104 = CVar(CLng(1)) 'Long
  loc_1ADE72A:         var_124 = vbNullString
  loc_1ADE734:         Set var_BC = Me.FGrid
  loc_1ADE73A:         LateIdCallSt
  loc_1ADE75F:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE767:         var_104 = CVar(CLng(4)) 'Long
  loc_1ADE76C:         var_124 = vbNullString
  loc_1ADE776:         Set var_BC = Me.FGrid
  loc_1ADE77C:         LateIdCallSt
  loc_1ADE7A1:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE7A9:         var_104 = CVar(CLng(1)) 'Long
  loc_1ADE7AE:         var_124 = vbNullString
  loc_1ADE7B8:         Set var_BC = Me.FGrid
  loc_1ADE7BE:         LateIdCallSt
  loc_1ADE7E3:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE7EB:         var_104 = CVar(CLng(9)) 'Long
  loc_1ADE7F0:         var_124 = vbNullString
  loc_1ADE7FA:         Set var_BC = Me.FGrid
  loc_1ADE800:         LateIdCallSt
  loc_1ADE825:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE82D:         var_104 = CVar(CLng(&HA)) 'Long
  loc_1ADE832:         var_124 = vbNullString
  loc_1ADE83C:         Set var_BC = Me.FGrid
  loc_1ADE842:         LateIdCallSt
  loc_1ADE867:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE86F:         var_104 = CVar(CLng(&H18)) 'Long
  loc_1ADE874:         var_124 = vbNullString
  loc_1ADE87E:         Set var_BC = Me.FGrid
  loc_1ADE884:         LateIdCallSt
  loc_1ADE8A9:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE8B1:         var_104 = CVar(CLng(&H1E)) 'Long
  loc_1ADE8B6:         var_124 = vbNullString
  loc_1ADE8C0:         Set var_BC = Me.FGrid
  loc_1ADE8C6:         LateIdCallSt
  loc_1ADE8EB:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE8F3:         var_104 = CVar(CLng(6)) 'Long
  loc_1ADE8F8:         var_124 = vbNullString
  loc_1ADE902:         Set var_BC = Me.FGrid
  loc_1ADE908:         LateIdCallSt
  loc_1ADE92D:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE935:         var_104 = CVar(CLng(&H19)) 'Long
  loc_1ADE93A:         var_124 = vbNullString
  loc_1ADE944:         Set var_BC = Me.FGrid
  loc_1ADE94A:         LateIdCallSt
  loc_1ADE96F:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE977:         var_104 = CVar(CLng(&H1A)) 'Long
  loc_1ADE97C:         var_124 = vbNullString
  loc_1ADE986:         Set var_BC = Me.FGrid
  loc_1ADE98C:         LateIdCallSt
  loc_1ADE9B1:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE9B9:         var_104 = CVar(CLng(&H1B)) 'Long
  loc_1ADE9BE:         var_124 = vbNullString
  loc_1ADE9C8:         Set var_BC = Me.FGrid
  loc_1ADE9CE:         LateIdCallSt
  loc_1ADE9F3:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE9FB:         var_104 = CVar(CLng(&H1C)) 'Long
  loc_1ADEA00:         var_124 = vbNullString
  loc_1ADEA0A:         Set var_BC = Me.FGrid
  loc_1ADEA10:         LateIdCallSt
  loc_1ADEA25:       Else
  loc_1ADEA33:         Set var_A0 = Me.Txt
  loc_1ADEA39:         Call 0.Method_Proc_338_89_1AE17140 (CInt(7), var_BC, var_C0, var_BC, var_124, var_104, var_D8)
  loc_1ADEA41:         var_BC = var_BC.Text
  loc_1ADEA5D:         If (CDbl(Val(var_C0)) = CDbl(0)) Then
  loc_1ADEA74:           var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1ADEA90:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADEA98:           var_114 = CVar(CLng(2)) 'Long
  loc_1ADEACB:           var_158 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1ADEAD3:           Set var_17C = Me.FGrid
  loc_1ADEAD9:           LateIdCallSt
  loc_1ADEB08:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADEB10:           var_114 = CVar(CLng(&HC)) 'Long
  loc_1ADEB43:           var_158 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1ADEB4B:           Set var_17C = Me.FGrid
  loc_1ADEB51:           LateIdCallSt
  loc_1ADEB80:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADEB88:           var_114 = CVar(CLng(1)) 'Long
  loc_1ADEBBB:           var_158 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1ADEBC3:           Set var_17C = Me.FGrid
  loc_1ADEBC9:           LateIdCallSt
  loc_1ADEBF8:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADEC00:           var_114 = CVar(CLng(4)) 'Long
  loc_1ADEC33:           var_158 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1ADEC3B:           Set var_17C = Me.FGrid
  loc_1ADEC41:           LateIdCallSt
  loc_1ADEC70:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADEC78:           var_114 = CVar(CLng(8)) 'Long
  loc_1ADECAB:           var_158 = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_1ADECB3:           Set var_17C = Me.FGrid
  loc_1ADECB9:           LateIdCallSt
  loc_1ADED07:           var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADED0F:           var_124 = CVar(CLng(6)) 'Long
  loc_1ADED3C:           var_1A0 = CVar(CStr(Format(CVar(Me.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_1ADED44:           Set var_17C = Me.FGrid
  loc_1ADED4A:           LateIdCallSt
  loc_1ADED7C:           var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1ADED89:           var_D8 = CVar(CLng(var_92)) 'Long
  loc_1ADED91:           var_104 = CVar(CLng(0)) 'Long
  loc_1ADED9B:           var_B0 = CVar(CStr(var_92)) 'String
  loc_1ADEDA3:           Set var_A0 = Me.FGrid
  loc_1ADEDA9:           LateIdCallSt
  loc_1ADEDBB:           var_D8 = CVar(CLng(var_92)) 'Long
  loc_1ADEDC3:           var_104 = CVar(CLng(5)) 'Long
  loc_1ADEDDD:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1ADEDF3:           If (CDbl(Val(var_C0)) = CDbl(0)) Then
  loc_1ADEDFA:             var_D8 = CVar(CLng(var_92)) 'Long
  loc_1ADEE02:             var_104 = CVar(CLng(5)) 'Long
  loc_1ADEE07:             var_124 = "1.000"
  loc_1ADEE11:             Set var_A0 = Me.FGrid
  loc_1ADEE17:             LateIdCallSt
  loc_1ADEE22:           End If
  loc_1ADEE28:           var_D8 = "Code"
  loc_1ADEE37:           var_A0 = Me.Fields
  loc_1ADEE5A:           Set var_148 = Me.Txt
  loc_1ADEE60:           Call 0.Method_Proc_338_89_1AE17140 (CInt(3), var_17C, var_C4, var_A0, var_124, var_104, var_D8)
  loc_1ADEE68:           var_104 = var_17C.Text
  loc_1ADEE7F:           Call Proc_338_106_1064244(CStr(var_A0.Item(var_D8).Value), var_C4, var_E0, var_D8, var_A0)
  loc_1ADEE9F:           var_134 = CVar(CLng(9)) 'Long
  loc_1ADEEDA:           LateIdCallSt
  loc_1ADEF24:           var_BC = Me.Fields.Item("Code")
  loc_1ADEF3F:           Set var_148 = Me.Txt
  loc_1ADEF45:           Call 0.Method_Proc_338_89_1AE17140 (CInt(3), var_17C, var_C4, Me.FGrid, CVar(CStr(Format(CVar(var_E0), "0.00000"))), 1, 1)
  loc_1ADEF4D:           var_134 = var_17C.Text
  loc_1ADEF64:           Call Proc_338_106_1064244(CStr(var_BC.Value), var_C4, var_E0, CVar(CLng(Me.FGrid.Row)))
  loc_1ADEF7C:           var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADEF84:           var_134 = CVar(CLng(&HA)) 'Long
  loc_1ADEFBF:           LateIdCallSt
  loc_1ADF01A:           Set var_A0 = Me.Txt
  loc_1ADF020:           Call 0.Method_Proc_338_89_1AE17140 (CInt(7), var_BC, var_C0, CVar(CLng(&H18)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(var_E0), "0.00000"))))
  loc_1ADF028:           1 = var_BC.Tag
  loc_1ADF030:           var_144 = CVar(var_C0) 'String
  loc_1ADF03E:           LateIdCallSt
  loc_1ADF062:           var_144 = Me.FGrid.Row
  loc_1ADF0A3:           var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H14)), CVar(CLng(var_144)), Me.FGrid, var_144, 1)) 'String
  loc_1ADF0B1:           LateIdCallSt
  loc_1ADF116:           var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADF124:           LateIdCallSt
  loc_1ADF189:           var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADF197:           LateIdCallSt
  loc_1ADF1FC:           var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStruName")), CVar(CLng(&H19)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADF20A:           LateIdCallSt
  loc_1ADF26F:           var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADF27D:           LateIdCallSt
  loc_1ADF2E2:           var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADF2F0:           LateIdCallSt
  loc_1ADF355:           var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1E)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADF35D:           Set var_17C = Me.FGrid
  loc_1ADF363:           LateIdCallSt
  loc_1ADF390:           var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADF398:           var_104 = CVar(CLng(&H17)) 'Long
  loc_1ADF3DA:           If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1ADF3F0:             var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADF3F8:             var_104 = CVar(CLng(&H17)) 'Long
  loc_1ADF40B:             Set var_BC = Me.FGrid
  loc_1ADF411:             LateIdCallSt
  loc_1ADF436:             var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADF43E:             var_104 = CVar(CLng(&H16)) 'Long
  loc_1ADF451:             Set var_BC = Me.FGrid
  loc_1ADF457:             LateIdCallSt
  loc_1ADF469:           End If
  loc_1ADF46D:           var_D8 = CVar(CLng(var_92)) 'Long
  loc_1ADF475:           var_104 = CVar(CLng(5)) 'Long
  loc_1ADF497:           var_E0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1ADF4AD:           var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADF4B5:           var_168 = CVar(CLng(&HA)) 'Long
  loc_1ADF4D7:           var_24C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1ADF534:           LateIdCallSt
  loc_1ADF5AE:           var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H1D)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar((var_E0 * var_24C)), "0.00"))), 1, 1)) 'String
  loc_1ADF5BC:           LateIdCallSt
  loc_1ADF621:           var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("IDiscApp")), CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158, CVar(CLng(&HB)))) 'String
  loc_1ADF62F:           LateIdCallSt
  loc_1ADF694:           var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADF6A2:           LateIdCallSt
  loc_1ADF6C0:           Set var_148 = Me.FGrid
  loc_1ADF6C6:           var_144 = var_148.Row
  loc_1ADF707:           var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1F)), CVar(CLng(var_144)), Me.FGrid, var_158)) 'String
  loc_1ADF715:           LateIdCallSt
  loc_1ADF76A:           var_C0 = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_144, -1, var_148, Me.FGrid)
  loc_1ADF77E:           unk_5986AD.Execute var_158 & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(Me.FGrid.Row)), var_24C
  loc_1ADF789:           Set var_98 = var_148
  loc_1ADF7B7:           If (var_98.RecordCount > 0) Then
  loc_1ADF800:             Proc_6_39_E7D3A0(var_144, CVar(var_98.Fields.Item("Rate")), CVar(CLng(&H11)), CVar(CLng(Me.FGrid.Row)))
  loc_1ADF809:             var_18C = CVar(CStr(var_144)) 'String
  loc_1ADF811:             Set var_17C = Me.FGrid
  loc_1ADF817:             LateIdCallSt
  loc_1ADF833:           End If
  loc_1ADF838:           Call Proc_338_101_17C1F88(&H32, var_17C, var_18C)
  loc_1ADF840:         Else
  loc_1ADF859:           var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADF861:           var_104 = CVar(CLng(&HC)) 'Long
  loc_1ADF87B:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1ADF8BB:           var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_1ADF902:           Set var_250 = Me.TopCtrl1
  loc_1ADF908:           Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005((CVar(CLng(&HC)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString)))
  loc_1ADF947:           If (CVar(CLng(Me.FGrid.Row)) Or ((CVar(CLng(&HC)) = var_C4) And (CStr(CVar(CLng(Me.FGrid.Row))) = "Add"))) Then
  loc_1ADF95E:             var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1ADF97A:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADF982:             var_114 = CVar(CLng(2)) 'Long
  loc_1ADF9B5:             var_158 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1ADF9BD:             Set var_17C = Me.FGrid
  loc_1ADF9C3:             LateIdCallSt
  loc_1ADF9F2:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADF9FA:             var_114 = CVar(CLng(&HC)) 'Long
  loc_1ADFA2D:             var_158 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1ADFA35:             Set var_17C = Me.FGrid
  loc_1ADFA3B:             LateIdCallSt
  loc_1ADFA6A:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADFA72:             var_114 = CVar(CLng(1)) 'Long
  loc_1ADFAA5:             var_158 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1ADFAAD:             Set var_17C = Me.FGrid
  loc_1ADFAB3:             LateIdCallSt
  loc_1ADFAE2:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADFAEA:             var_114 = CVar(CLng(4)) 'Long
  loc_1ADFB1D:             var_158 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1ADFB25:             Set var_17C = Me.FGrid
  loc_1ADFB2B:             LateIdCallSt
  loc_1ADFB5A:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADFB62:             var_114 = CVar(CLng(8)) 'Long
  loc_1ADFB95:             var_158 = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_1ADFB9D:             Set var_17C = Me.FGrid
  loc_1ADFBA3:             LateIdCallSt
  loc_1ADFBF1:             var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADFBF9:             var_124 = CVar(CLng(6)) 'Long
  loc_1ADFC26:             var_1A0 = CVar(CStr(Format(CVar(Me.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_1ADFC2E:             Set var_17C = Me.FGrid
  loc_1ADFC34:             LateIdCallSt
  loc_1ADFC66:             var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1ADFC73:             var_D8 = CVar(CLng(var_92)) 'Long
  loc_1ADFC7B:             var_104 = CVar(CLng(0)) 'Long
  loc_1ADFC85:             var_B0 = CVar(CStr(var_92)) 'String
  loc_1ADFC8D:             Set var_A0 = Me.FGrid
  loc_1ADFC93:             LateIdCallSt
  loc_1ADFCA5:             var_D8 = CVar(CLng(var_92)) 'Long
  loc_1ADFCAD:             var_104 = CVar(CLng(5)) 'Long
  loc_1ADFCC7:             var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1ADFCDD:             If (CDbl(Val(var_C0)) = CDbl(0)) Then
  loc_1ADFCE4:               var_D8 = CVar(CLng(var_92)) 'Long
  loc_1ADFCEC:               var_104 = CVar(CLng(5)) 'Long
  loc_1ADFCF1:               var_124 = "1.000"
  loc_1ADFCFB:               Set var_A0 = Me.FGrid
  loc_1ADFD01:               LateIdCallSt
  loc_1ADFD0C:             End If
  loc_1ADFD12:             var_D8 = "Code"
  loc_1ADFD21:             var_A0 = Me.Fields
  loc_1ADFD44:             Set var_148 = Me.Txt
  loc_1ADFD4A:             Call 0.Method_Proc_338_89_1AE17140 (CInt(3), var_17C, var_C4, var_A0, var_124, var_104, var_D8)
  loc_1ADFD52:             var_104 = var_17C.Text
  loc_1ADFD69:             Call Proc_338_106_1064244(CStr(var_A0.Item(var_D8).Value), var_C4, var_E0, var_D8, var_A0)
  loc_1ADFD89:             var_134 = CVar(CLng(9)) 'Long
  loc_1ADFDC4:             LateIdCallSt
  loc_1ADFE0E:             var_BC = Me.Fields.Item("Code")
  loc_1ADFE29:             Set var_148 = Me.Txt
  loc_1ADFE2F:             Call 0.Method_Proc_338_89_1AE17140 (CInt(3), var_17C, var_C4, Me.FGrid, CVar(CStr(Format(CVar(var_E0), "0.00000"))), 1, 1)
  loc_1ADFE37:             var_134 = var_17C.Text
  loc_1ADFE4E:             Call Proc_338_106_1064244(CStr(var_BC.Value), var_C4, var_E0, CVar(CLng(Me.FGrid.Row)))
  loc_1ADFE66:             var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADFE6E:             var_134 = CVar(CLng(&HA)) 'Long
  loc_1ADFEA9:             LateIdCallSt
  loc_1ADFF04:             Set var_A0 = Me.Txt
  loc_1ADFF0A:             Call 0.Method_Proc_338_89_1AE17140 (CInt(7), var_BC, var_C0, CVar(CLng(&H18)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(var_E0), "0.00000"))))
  loc_1ADFF12:             1 = var_BC.Tag
  loc_1ADFF1A:             var_144 = CVar(var_C0) 'String
  loc_1ADFF28:             LateIdCallSt
  loc_1ADFF4C:             var_144 = Me.FGrid.Row
  loc_1ADFF8D:             var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H14)), CVar(CLng(var_144)), Me.FGrid, var_144, 1)) 'String
  loc_1ADFF9B:             LateIdCallSt
  loc_1AE0000:             var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AE000E:             LateIdCallSt
  loc_1AE0073:             var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AE0081:             LateIdCallSt
  loc_1AE00E6:             var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStruName")), CVar(CLng(&H19)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AE00F4:             LateIdCallSt
  loc_1AE0159:             var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AE0167:             LateIdCallSt
  loc_1AE01CC:             var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AE01DA:             LateIdCallSt
  loc_1AE023F:             var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1E)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AE0247:             Set var_17C = Me.FGrid
  loc_1AE024D:             LateIdCallSt
  loc_1AE027A:             var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AE0282:             var_104 = CVar(CLng(&H17)) 'Long
  loc_1AE02C4:             If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1AE02DA:               var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AE02E2:               var_104 = CVar(CLng(&H17)) 'Long
  loc_1AE02F5:               Set var_BC = Me.FGrid
  loc_1AE02FB:               LateIdCallSt
  loc_1AE0320:               var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AE0328:               var_104 = CVar(CLng(&H16)) 'Long
  loc_1AE033B:               Set var_BC = Me.FGrid
  loc_1AE0341:               LateIdCallSt
  loc_1AE0353:             End If
  loc_1AE0357:             var_D8 = CVar(CLng(var_92)) 'Long
  loc_1AE035F:             var_104 = CVar(CLng(5)) 'Long
  loc_1AE0397:             var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AE039F:             var_168 = CVar(CLng(&HA)) 'Long
  loc_1AE03C1:             var_24C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1AE041E:             LateIdCallSt
  loc_1AE0498:             var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H1D)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_24C)), "0.00"))), 1, 1)) 'String
  loc_1AE04A6:             LateIdCallSt
  loc_1AE050B:             var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("IDiscApp")), CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158, CVar(CLng(&HB)))) 'String
  loc_1AE0519:             LateIdCallSt
  loc_1AE057E:             var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AE058C:             LateIdCallSt
  loc_1AE05AA:             Set var_148 = Me.FGrid
  loc_1AE05B0:             var_144 = var_148.Row
  loc_1AE05F1:             var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1F)), CVar(CLng(var_144)), Me.FGrid, var_158)) 'String
  loc_1AE05FF:             LateIdCallSt
  loc_1AE0654:             var_C0 = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_144, -1, var_148, Me.FGrid)
  loc_1AE0658:             var_C4 = var_158 & CStr(Me.FGrid.TextMatrix))
  loc_1AE0668:             unk_5986AD.Execute var_C4 & "'", CVar(CLng(Me.FGrid.Row)), var_24C
  loc_1AE0673:             Set var_98 = var_148
  loc_1AE06A1:             If (var_98.RecordCount > 0) Then
  loc_1AE06DB:               var_BC = var_98.Fields.Item("Rate")
  loc_1AE06EA:               Proc_6_39_E7D3A0(var_144, CVar(var_BC), CVar(CLng(&H11)), CVar(CLng(Me.FGrid.Row)))
  loc_1AE06F3:               var_18C = CVar(CStr(var_144)) 'String
  loc_1AE06FB:               Set var_17C = Me.FGrid
  loc_1AE0701:               LateIdCallSt
  loc_1AE071D:             End If
  loc_1AE0722:             Call Proc_338_101_17C1F88(&H32, var_17C, var_18C)
  loc_1AE0727:           End If
  loc_1AE0727:         End If
  loc_1AE0727:       End If
  loc_1AE072A:     Else
  loc_1AE0731:       If Not (var_B4 = CLng(5)) Then
  loc_1AE073B:         If (var_B4 = CLng(6)) Then
  loc_1AE073E:         End If
  loc_1AE0748:         Set var_A0 = Me.TxtGrid
  loc_1AE074E:         Call 0.Method_Proc_338_89_1AE17140 (arg_C, var_BC, var_168)
  loc_1AE0766:         If Not(IsNumeric(CVar(var_BC))) Then
  loc_1AE077A:           Set var_A0 = Me.TxtGrid
  loc_1AE0780:           Call 0.Method_Proc_338_89_1AE17140 (arg_C, var_BC, CStr(0))
  loc_1AE0788:           var_BC.Text = var_124
  loc_1AE0797:         End If
  loc_1AE07A1:         var_158 = Me.FGrid.Row
  loc_1AE07AA:         var_124 = CVar(CLng(var_158)) 'Long
  loc_1AE07B2:         var_168 = CVar(CLng(&H22)) 'Long
  loc_1AE07C1:         var_18C = Me.FGrid.TextMatrix)
  loc_1AE07EA:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AE07FB:         Set var_BC = Me.FGrid
  loc_1AE0801:         var_144 = var_BC.TextMatrix)
  loc_1AE080C:         var_C0 = CStr(var_144)
  loc_1AE0825:         Set var_148 = Me.TxtGrid
  loc_1AE082B:         Call 0.Method_Proc_338_89_1AE17140 (0, var_17C, var_C4, (CDbl(Val(var_C0)) > CDbl(0)), CVar(CLng(&H22)))
  loc_1AE0833:         var_D8 = var_17C.Text
  loc_1AE086A:         If (Val(CStr(var_18C)) And (CDbl(Val(var_C4)) > CDbl(Val(CStr(var_18C))))) Then
  loc_1AE0886:           MsgBox("Quantity Can't be greater the MRN Quantity ", 0, var_144, var_158, var_18C)
  loc_1AE089B:           Proc_338_89_1AE1714 = 0
  loc_1AE08A1:         End If
  loc_1AE08BE:         If (CLng(Me.FGrid.Col) = CLng(6)) Then
  loc_1AE08CD:           Set var_A0 = Me.TxtGrid
  loc_1AE08D3:           Call 0.Method_Proc_338_89_1AE17140 (0, var_BC, var_C0)
  loc_1AE08DB:           var_168 = var_BC.Text
  loc_1AE08E8:           var_E0 = Val(var_C0)
  loc_1AE0900:           If (global_200 <> CDbl(var_E0)) Then
  loc_1AE0932:             If (MsgBox("Proceed with Changed Conversion Factor ?", &H24, var_144, var_158, var_18C) = 7) Then
  loc_1AE093D:               var_C0 = CStr(global_200)
  loc_1AE0949:               Set var_A0 = Me.TxtGrid
  loc_1AE094F:               Call 0.Method_Proc_338_89_1AE17140 (0, var_BC, var_C0)
  loc_1AE0957:               var_BC.Text = var_E0
  loc_1AE0966:             End If
  loc_1AE0966:           End If
  loc_1AE0966:         End If
  loc_1AE0983:         If (CLng(Me.FGrid.Col) = CLng(6)) Then
  loc_1AE0992:           Set var_A0 = Me.TxtGrid
  loc_1AE0998:           Call 0.Method_Proc_338_89_1AE17140 (0, var_BC, var_C0)
  loc_1AE09A0:           var_124 = var_BC.Text
  loc_1AE09B8:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AE09D0:           var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1AE09FC:           var_1F4 = CVar(CStr(Format(CVar(var_C0), "0.00000"))) 'String
  loc_1AE0A04:           Set var_190 = Me.FGrid
  loc_1AE0A0A:           LateIdCallSt
  loc_1AE0A31:         Else
  loc_1AE0A3D:           Set var_A0 = Me.TxtGrid
  loc_1AE0A43:           Call 0.Method_Proc_338_89_1AE17140 (0, var_BC, var_C0, var_190, var_1F4)
  loc_1AE0A4B:           1 = var_BC.Text
  loc_1AE0A63:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AE0A7B:           var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1AE0AA7:           var_1F4 = CVar(CStr(Format(CVar(var_C0), "0.000"))) 'String
  loc_1AE0AAF:           Set var_190 = Me.FGrid
  loc_1AE0AB5:           LateIdCallSt
  loc_1AE0AD9:         End If
  loc_1AE0ADE:         Call Proc_338_101_17C1F88(&H32, var_190, var_1F4, 1, 1, var_114)
  loc_1AE0AE6:       Else
  loc_1AE0AED:         If (var_B4 = CLng(9)) Then
  loc_1AE0AFA:           Set var_A0 = Me.TxtGrid
  loc_1AE0B00:           Call 0.Method_Proc_338_89_1AE17140 (arg_C, var_BC, var_F4, 1)
  loc_1AE0B18:           If Not(IsNumeric(CVar(var_BC))) Then
  loc_1AE0B1F:             var_C0 = CStr(0)
  loc_1AE0B2C:             Set var_A0 = Me.TxtGrid
  loc_1AE0B32:             Call 0.Method_Proc_338_89_1AE17140 (arg_C, var_BC, var_C0)
  loc_1AE0B3A:             var_BC.Text = var_114
  loc_1AE0B49:           End If
  loc_1AE0B56:           Set var_A0 = Me.TxtGrid
  loc_1AE0B5C:           Call 0.Method_Proc_338_89_1AE17140 (arg_C, var_BC, var_C0)
  loc_1AE0B64:           var_F4 = var_BC.Text
  loc_1AE0B87:           var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AE0B9F:           var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1AE0BDA:           LateIdCallSt
  loc_1AE0C06:           Call Proc_338_101_17C1F88(&H32, Me.FGrid, CVar(CStr(Format(CVar(Val(var_C0)), "0.00000"))), 1, 1)
  loc_1AE0C0E:         Else
  loc_1AE0C15:           If (var_B4 = CLng(&HB)) Then
  loc_1AE0C22:             Set var_A0 = Me.TxtGrid
  loc_1AE0C28:             Call 0.Method_Proc_338_89_1AE17140 (arg_C, var_BC, var_124)
  loc_1AE0C40:             If Not(IsNumeric(CVar(var_BC))) Then
  loc_1AE0C47:               var_C0 = CStr(0)
  loc_1AE0C54:               Set var_A0 = Me.TxtGrid
  loc_1AE0C5A:               Call 0.Method_Proc_338_89_1AE17140 (arg_C, var_BC, var_C0)
  loc_1AE0C62:               var_BC.Text = var_104
  loc_1AE0C71:             End If
  loc_1AE0C7E:             Set var_A0 = Me.TxtGrid
  loc_1AE0C84:             Call 0.Method_Proc_338_89_1AE17140 (arg_C, var_BC, var_C0)
  loc_1AE0C8C:             var_E0 = var_BC.Text
  loc_1AE0CAF:             var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AE0CC7:             var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1AE0D02:             LateIdCallSt
  loc_1AE0D4D:             Set var_BC = Me.FGrid
  loc_1AE0D5E:             var_C0 = CStr(var_BC.TextMatrix))
  loc_1AE0D7C:             If (CDbl(Val(var_C0)) <> CDbl(0)) Then
  loc_1AE0D8C:               Set var_A0 = Me.TxtGrid
  loc_1AE0D92:               Call 0.Method_Proc_338_89_1AE17140 (arg_C, var_BC, var_C0, CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(Val(var_C0)), "0.00"))))
  loc_1AE0D9A:               1 = var_BC.Text
  loc_1AE0DBD:               var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AE0DC5:               var_104 = CVar(CLng(5)) 'Long
  loc_1AE0DE7:               var_24C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1AE0DFD:               var_168 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AE0E05:               var_1B0 = CVar(CLng(9)) 'Long
  loc_1AE0E36:               var_204 = CVar(CStr(Format(CVar((Val(var_C0) / var_24C)), "0.00000"))) 'String
  loc_1AE0E3E:               Set var_1E4 = Me.FGrid
  loc_1AE0E44:               LateIdCallSt
  loc_1AE0E73:             End If
  loc_1AE0E78:             Call Proc_338_101_17C1F88(&H32, var_1E4, var_204, 1, 1, var_1B0, var_168, var_24C)
  loc_1AE0E80:           Else
  loc_1AE0E87:             If (var_B4 = CLng(&H16)) Then
  loc_1AE0ED8:               Set var_A0 = Me.TxtGrid
  loc_1AE0EDE:               Call 0.Method_Proc_338_89_1AE17140 (arg_C, var_BC, var_C0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_104, var_D8)
  loc_1AE0EE6:               var_E0 = var_BC.Text
  loc_1AE0EFE:               If (1 Or (var_C0 = vbNullString)) Then
  loc_1AE0F14:                 var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AE0F1C:                 var_104 = CVar(CLng(&H16)) 'Long
  loc_1AE0F21:                 var_124 = vbNullString
  loc_1AE0F2B:                 Set var_BC = Me.FGrid
  loc_1AE0F31:                 LateIdCallSt
  loc_1AE0F56:                 var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AE0F5E:                 var_104 = CVar(CLng(&H17)) 'Long
  loc_1AE0F63:                 var_124 = vbNullString
  loc_1AE0F6D:                 Set var_BC = Me.FGrid
  loc_1AE0F73:                 LateIdCallSt
  loc_1AE0F88:               Else
  loc_1AE0F9B:                 var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AE0FA3:                 var_114 = CVar(CLng(&H16)) 'Long
  loc_1AE0FD6:                 var_158 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1AE0FDE:                 Set var_17C = Me.FGrid
  loc_1AE0FE4:                 LateIdCallSt
  loc_1AE1013:                 var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AE101B:                 var_114 = CVar(CLng(&H17)) 'Long
  loc_1AE104E:                 var_158 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1AE1056:                 Set var_17C = Me.FGrid
  loc_1AE105C:                 LateIdCallSt
  loc_1AE1078:               End If
  loc_1AE10AD:               var_158 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1AE10B3:               var_18C = Trim(var_158)
  loc_1AE10D5:               If (var_18C = vbNullString) Then
  loc_1AE10DE:                 Call 0.Method_arg_50 (var_C0, CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)), var_17C, var_158, var_114, var_F4, var_17C)
  loc_1AE10FF:                 MsgBox("Godown Required", &H40, CVar(var_C0), var_158, var_18C)
  loc_1AE1114:                 Proc_338_89_1AE1714 = 0
  loc_1AE111A:               End If
  loc_1AE114E:               global_224 = CStr(Me.Fields.Item("Code").Value)
  loc_1AE117C:               var_BC = Me.Fields.Item("Name")
  loc_1AE118D:               var_C0 = CStr(var_BC.Value)
  loc_1AE1193:               global_228 = var_C0
  loc_1AE11A7:             Else
  loc_1AE11AE:               If (var_B4 = CLng(&H19)) Then
  loc_1AE1208:                 Set var_A0 = Me.TxtGrid
  loc_1AE120E:                 Call 0.Method_Proc_338_89_1AE17140 (arg_C, var_BC, var_C0, ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))), var_158, var_114)
  loc_1AE1216:                 var_F4 = var_BC.Text
  loc_1AE122E:                 If (var_BC Or (var_C0 = vbNullString)) Then
  loc_1AE1244:                   var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AE124C:                   var_104 = CVar(CLng(&H19)) 'Long
  loc_1AE1251:                   var_124 = vbNullString
  loc_1AE125B:                   Set var_BC = Me.FGrid
  loc_1AE1261:                   LateIdCallSt
  loc_1AE1286:                   var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AE128E:                   var_104 = CVar(CLng(&H1A)) 'Long
  loc_1AE1293:                   var_124 = vbNullString
  loc_1AE129D:                   Set var_BC = Me.FGrid
  loc_1AE12A3:                   LateIdCallSt
  loc_1AE12B8:                 Else
  loc_1AE12C2:                   var_B0 = Me.FGrid.Row
  loc_1AE12CB:                   var_F4 = CVar(CLng(var_B0)) 'Long
  loc_1AE12D3:                   var_114 = CVar(CLng(&H19)) 'Long
  loc_1AE1309:                   var_158 = CVar(CStr(Me.var_B0.Fields.Item("Name").Value)) 'String
  loc_1AE1311:                   Set var_17C = Me.FGrid
  loc_1AE1317:                   LateIdCallSt
  loc_1AE133D:                   var_B0 = Me.FGrid.Row
  loc_1AE1346:                   var_F4 = CVar(CLng(var_B0)) 'Long
  loc_1AE134E:                   var_114 = CVar(CLng(&H1A)) 'Long
  loc_1AE1384:                   var_158 = CVar(CStr(Me.var_B0.Fields.Item("Code").Value)) 'String
  loc_1AE138C:                   Set var_17C = Me.FGrid
  loc_1AE1392:                   LateIdCallSt
  loc_1AE13AE:                 End If
  loc_1AE13D2:                 Set var_BC = Me.FGrid
  loc_1AE13E3:                 var_158 = CVar(CStr(var_BC.TextMatrix))) 'String
  loc_1AE13E9:                 var_18C = Trim(var_158)
  loc_1AE13F1:                 var_124 = vbNullString
  loc_1AE140B:                 If (var_18C = var_124) Then
  loc_1AE1414:                   Call 0.Method_arg_50 (var_C0, CVar(CLng(&H19)), CVar(CLng(Me.FGrid.Row)), var_17C, var_158, var_114, var_F4, var_17C)
  loc_1AE1435:                   MsgBox("Tax Structure is  Required", &H40, CVar(var_C0), var_158, var_18C)
  loc_1AE144A:                   Proc_338_89_1AE1714 = 0
  loc_1AE1450:                 End If
  loc_1AE1455:                 Call Proc_338_101_17C1F88(&H32, var_158, var_114, var_F4)
  loc_1AE145D:               Else
  loc_1AE1464:                 If (var_B4 = CLng(&H1B)) Then
  loc_1AE14BE:                   Set var_A0 = Me.TxtGrid
  loc_1AE14C4:                   Call 0.Method_Proc_338_89_1AE17140 (arg_C, var_BC, var_C0, ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))))
  loc_1AE14CC:                   var_BC = var_BC.Text
  loc_1AE14E4:                   If (var_124 Or (var_C0 = vbNullString)) Then
  loc_1AE14FA:                     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AE1502:                     var_104 = CVar(CLng(&H1B)) 'Long
  loc_1AE1507:                     var_124 = vbNullString
  loc_1AE1511:                     Set var_BC = Me.FGrid
  loc_1AE1517:                     LateIdCallSt
  loc_1AE153C:                     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AE1544:                     var_104 = CVar(CLng(&H1C)) 'Long
  loc_1AE1549:                     var_124 = vbNullString
  loc_1AE1553:                     Set var_BC = Me.FGrid
  loc_1AE1559:                     LateIdCallSt
  loc_1AE156E:                   Else
  loc_1AE1578:                     var_B0 = Me.FGrid.Row
  loc_1AE1581:                     var_F4 = CVar(CLng(var_B0)) 'Long
  loc_1AE1589:                     var_114 = CVar(CLng(&H1B)) 'Long
  loc_1AE15BF:                     var_158 = CVar(CStr(Me.var_B0.Fields.Item("Name").Value)) 'String
  loc_1AE15C7:                     Set var_17C = Me.FGrid
  loc_1AE15CD:                     LateIdCallSt
  loc_1AE15F3:                     var_B0 = Me.FGrid.Row
  loc_1AE15FC:                     var_F4 = CVar(CLng(var_B0)) 'Long
  loc_1AE1604:                     var_114 = CVar(CLng(&H1C)) 'Long
  loc_1AE163A:                     var_158 = CVar(CStr(Me.var_B0.Fields.Item("Code").Value)) 'String
  loc_1AE1642:                     Set var_17C = Me.FGrid
  loc_1AE1648:                     LateIdCallSt
  loc_1AE1664:                   End If
  loc_1AE1699:                   var_158 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1AE169F:                   var_18C = Trim(var_158)
  loc_1AE16C1:                   If (var_18C = vbNullString) Then
  loc_1AE16CA:                     Call 0.Method_arg_50 (var_C0, CVar(CLng(&H1B)), CVar(CLng(Me.FGrid.Row)), var_17C, var_158, var_114, var_F4, var_17C)
  loc_1AE16EB:                     MsgBox("A/C Name is  Required", &H40, CVar(var_C0), var_158, var_18C)
  loc_1AE1700:                     Proc_338_89_1AE1714 = 0
  loc_1AE1706:                   End If
  loc_1AE1706:                 End If
  loc_1AE1706:               End If
  loc_1AE1706:             End If
  loc_1AE1706:           End If
  loc_1AE1706:         End If
  loc_1AE1706:       End If
  loc_1AE1706:     End If
  loc_1AE1706:   End If
  loc_1AE1706: End If
  loc_1AE170B: Proc_338_89_1AE1714 = &HFF
End Sub

Public Sub Proc_338_90_1A00AE0
  'Data Table: 598690
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim var_BC As Variant
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_114 As String
  Dim unk_5986AD As Connection15
  Dim var_88 As Recordset15
  Dim var_D0 As Variant
  Dim var_138 As Variant
  Dim var_150 As Variant
  Dim var_124 As Variant
  Dim var_140 As String
  Dim var_1A4 As Fields15
  Dim var_1EC As String
  Dim var_1FC As Recordset15
  Dim var_13C As Variant
  Dim var_134 As Variant
  Dim var_160 As Variant
  Dim var_1F4 As String
  Dim var_1F8 As String
  Dim var_190 As Variant
  Dim var_1B8 As Variant
  Dim var_8E As Integer
  Dim var_A2 As Integer
  Dim var_9E As Integer
  Dim var_8C As Recordset15
  loc_19FD7A4: On Error Goto loc_1A00A8B
  loc_19FD7BE: If (Me.RecordCount > 0) Then
  loc_19FD800:   var_F0 = "Select P.*,S.Name as PartyName From Purch1 P Left Join SubGroup S on S.SubCode=P.Party Where P.Docid='" & Me.Fields.Item("DocID").Value 
  loc_19FD817:   unk_5986AD.Execute CStr(var_F0 & "'"), var_134, -1
  loc_19FD822:   Set var_88 = var_138
  loc_19FD876:   var_138 = var_88.Fields
  loc_19FD8DF:   var_1A0 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_138.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_19FD924:   Me.LblUser.Caption = CStr(var_138 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_1A0)))
  loc_19FD99E:   var_13C = var_88.Fields.Item("U_AE")
  loc_19FD9B2:   var_150 = "entdt : "
  loc_19FD9CB:   var_140 = Proc_6_38_E69628(CVar(var_13C))
  loc_19FD9FF:   var_1A0 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((var_140 = "E"), "Last Update : ", var_150))
  loc_19FDA1E:   var_1B8 = var_88.Fields.Item("U_EntDt")
  loc_19FDA44:   Me.LblLDt.Caption = CStr(var_1A0 & CVar(Proc_6_38_E69628(CVar(var_1B8))))
  loc_19FDA7F:   Set var_1FC = var_88 
  loc_19FDABC:   Set var_138 = Me.Txt
  loc_19FDAC2:   Call 0.Method_Proc_338_90_1A00AE00 (CInt(0), var_13C)
  loc_19FDACA:   var_13C.Text = CStr(var_1FC.Fields.Item("DocID").Value)
  loc_19FDB06:   var_F0 = Trim(CVar(var_1FC.Fields.Item("vType")))
  loc_19FDB15:   global_132 = CStr(var_F0)
  loc_19FDB5F:   Set var_138 = Me.Txt
  loc_19FDB65:   Call 0.Method_Proc_338_90_1A00AE00 (CInt(1), var_13C)
  loc_19FDB6D:   var_13C.Tag = CStr(var_1FC.Fields.Item("vType").Value)
  loc_19FDBB9:   Set var_138 = Me.Txt
  loc_19FDBBF:   Call 0.Method_Proc_338_90_1A00AE00 (CInt(4), var_13C)
  loc_19FDBC7:   var_13C.Tag = Proc_6_38_E69628(CVar(var_1FC.Fields.Item("Party")))
  loc_19FDC11:   Set var_138 = Me.Txt
  loc_19FDC17:   Call 0.Method_Proc_338_90_1A00AE00 (CInt(4), var_13C)
  loc_19FDC1F:   var_13C.Text = Proc_6_38_E69628(CVar(var_1FC.Fields.Item("PartyName")))
  loc_19FDC69:   Set var_138 = Me.Txt
  loc_19FDC6F:   Call 0.Method_Proc_338_90_1A00AE00 (CInt(8), var_13C)
  loc_19FDC77:   var_13C.Text = Proc_6_38_E69628(CVar(var_1FC.Fields.Item("CashParty")))
  loc_19FDCC1:   Set var_138 = Me.Txt
  loc_19FDCC7:   Call 0.Method_Proc_338_90_1A00AE00 (CInt(5), var_13C)
  loc_19FDCCF:   var_13C.Text = Proc_6_38_E69628(CVar(var_1FC.Fields.Item("PartyBillNo")))
  loc_19FDD19:   Set var_138 = Me.Txt
  loc_19FDD1F:   Call 0.Method_Proc_338_90_1A00AE00 (CInt(6), var_13C)
  loc_19FDD27:   var_13C.Text = Proc_6_38_E69628(CVar(var_1FC.Fields.Item("PartyBillDt")))
  loc_19FDD71:   Set var_138 = Me.Txt
  loc_19FDD77:   Call 0.Method_Proc_338_90_1A00AE00 (CInt(&HB), var_13C)
  loc_19FDD7F:   var_13C.Text = Proc_6_38_E69628(CVar(var_1FC.Fields.Item("TINNo")))
  loc_19FDDC9:   Set var_138 = Me.Txt
  loc_19FDDCF:   Call 0.Method_Proc_338_90_1A00AE00 (CInt(&HC), var_13C)
  loc_19FDDD7:   var_13C.Text = Proc_6_38_E69628(CVar(var_1FC.Fields.Item("Remark")))
  loc_19FDE0A:   var_D0 = CVar(var_1FC.Fields.Item("InvoiceNo")) 'Address
  loc_19FDE11:   Proc_6_39_E7D3A0(var_F0)
  loc_19FDE27:   Me.LblInvoiceNo.Caption = CStr(var_F0)
  loc_19FDE54:   var_C0 = var_1FC.Fields.Item("Payable")
  loc_19FDE63:   Proc_6_39_E7D3A0(var_F0, CVar(var_C0))
  loc_19FDE70:   Set var_138 = Me.ChkPayable
  loc_19FDE76:   var_138.Value = CInt(var_F0)
  loc_19FDE96:   Set var_AC = Me.Opt
  loc_19FDE9C:   Call 0.Method_Proc_338_90_1A00AE00 (CInt(0), var_C0)
  loc_19FDEA4:   var_C0.Enabled = False
  loc_19FDEBD:   Set var_AC = Me.Opt
  loc_19FDEC3:   Call 0.Method_Proc_338_90_1A00AE00 (CInt(1), var_C0)
  loc_19FDECB:   var_C0.Enabled = False
  loc_19FDEE4:   Set var_AC = Me.Opt
  loc_19FDEEA:   Call 0.Method_Proc_338_90_1A00AE00 (CInt(2), var_C0)
  loc_19FDEF2:   var_C0.Enabled = False
  loc_19FDF15:   var_C0 = var_1FC.Fields.Item("InvoiceType")
  loc_19FDF26:   var_200 = Proc_6_38_E69628(CVar(var_C0))
  loc_19FDF37:   If (var_200 = "Sale Invoice") Then
  loc_19FDF47:     Set var_AC = Me.Opt
  loc_19FDF4D:     Call 0.Method_Proc_338_90_1A00AE00 (CInt(0), var_C0)
  loc_19FDF55:     var_C0.Value = True
  loc_19FDF64:   Else
  loc_19FDF6C:     If (var_200 = "Tax Invoice") Then
  loc_19FDF7C:       Set var_AC = Me.Opt
  loc_19FDF82:       Call 0.Method_Proc_338_90_1A00AE00 (CInt(1), var_C0)
  loc_19FDF8A:       var_C0.Value = True
  loc_19FDF99:     Else
  loc_19FDFA6:       Set var_AC = Me.Opt
  loc_19FDFAC:       Call 0.Method_Proc_338_90_1A00AE00 (CInt(2), var_C0)
  loc_19FDFB4:       var_C0.Value = True
  loc_19FDFC0:     End If
  loc_19FDFC0:   End If
  loc_19FDFEC:   Set var_AC = Me.Txt
  loc_19FDFF2:   Call 0.Method_Proc_338_90_1A00AE00 (CInt(1), var_C0, var_140, CVar("Select NCAT,Description  From Voucher_Type Where LogSite_Code='" & MemVar_1F95078 & "' and V_Type='"))
  loc_19FDFFA:   var_190 = var_C0.Tag
  loc_19FE002:   var_D0 = CVar(var_140) 'String
  loc_19FE010:   var_134 = -1 & Trim(var_D0) 
  loc_19FE027:   unk_5986AD.Execute CStr(var_150 & "'"), var_138, var_D0
  loc_19FE032:   Set var_94 = var_138
  loc_19FE06B:   If (Me.Recordset15.RecordCount > 0) Then
  loc_19FE097:     var_F0 = Trim(CVar(Me.Recordset15.Fields.Item("NCat")))
  loc_19FE0AA:     global_124 = Proc_6_38_E69628(var_F0)
  loc_19FE0D5:     var_C0 = Me.Recordset15.Fields.Item("Description")
  loc_19FE0DD:     var_D0 = CVar(var_C0) 'Address
  loc_19FE0F4:     Set var_138 = Me.Txt
  loc_19FE0FA:     Call 0.Method_Proc_338_90_1A00AE00 (CInt(1), var_13C)
  loc_19FE102:     var_13C.Text = Proc_6_38_E69628(var_D0)
  loc_19FE116:   End If
  loc_19FE11C:   var_E0 = 0
  loc_19FE15A:   unk_5986AD.Execute "Select NCAT From Voucher_Type Where LogSite_Code='" & MemVar_1F95078 & "' and V_Type='" & global_132 & "'", var_D0, -1
  loc_19FE162:   var_AC = var_AC.Fields
  loc_19FE16A:   var_E0 = var_C0.Item(var_C0)
  loc_19FE172:   var_138 = var_138.Value
  loc_19FE18C:   global_124 = CStr(Trim(var_F0))
  loc_19FE1AF:   Call Proc_338_109_1131C2C(var_F0)
  loc_19FE1ED:   Set var_138 = Me.Txt
  loc_19FE1F3:   Call 0.Method_Proc_338_90_1A00AE00 (CInt(2), var_13C)
  loc_19FE1FB:   var_13C.Text = CStr(var_1FC.Fields.Item("VNo").Value)
  loc_19FE228:   var_C0 = var_1FC.Fields.Item("VDate")
  loc_19FE263:   Set var_138 = Me.Txt
  loc_19FE269:   Call 0.Method_Proc_338_90_1A00AE00 (CInt(3), var_13C, CStr(Format(CVar(var_C0), "DD/MMM/YYYY")))
  loc_19FE271:   var_13C.Text = 1
  loc_19FE28B:   Call Proc_338_109_1131C2C(1)
  loc_19FE29B:   Set var_AC = Me.Txt
  loc_19FE2A1:   Call 0.Method_Proc_338_90_1A00AE00 (CInt(3))
  loc_19FE2D3:   Call Proc_338_100_17D48A8(CDate(Format(CVar(var_C0), "DD/MMM/YYYY")), 1)
  loc_19FE320:   Me.LblVPrefix.Caption = CStr(Trim(CVar(var_1FC.Fields.Item("vPrefix"))))
  loc_19FE345:   var_AC = var_88.Fields
  loc_19FE35E:   var_124 = IsNull(CVar(var_AC.Item("BillImagePath")))
  loc_19FE365:   var_E0 = "BillImagePath"
  loc_19FE390:   var_100 = vbNullString
  loc_19FE3B2:   If CBool(var_124 Or (Trim(CVar(var_88.Fields.Item(var_E0))) = var_100)) Then
  loc_19FE3D3:     Me.Global.LoadPicture var_BC, var_E0, var_100, var_124, var_150
  loc_19FE3E8:     Me.BillImage.Picture = var_AC
  loc_19FE401:     Me.BillImage.Tag = vbNullString
  loc_19FE40C:   Else
  loc_19FE43A:     var_100 = "BillImagePath"
  loc_19FE456:     var_190 = CVar(var_88.Fields.Item(var_100)) 'Address
  loc_19FE45D:     var_1A0 = Trim(var_190)
  loc_19FE478:     var_134 = Ucase(Right(Trim(CVar(var_88.Fields.Item("BillImagePath"))), 3))
  loc_19FE480:     var_E0 = "DAT"
  loc_19FE4A8:     var_124 = "AVI"
  loc_19FE4D2:     If CBool((var_134 = var_E0) Or (Ucase(Right(var_1A0, 3)) = var_124)) Then
  loc_19FE4E1:       Me.BillImage.Visible = False
  loc_19FE4EC:     Else
  loc_19FE524:       Me.BillImage.Tag = CStr(var_88.Fields.Item("BillImagePath").Value)
  loc_19FE541:       var_BC = "BillImagePath"
  loc_19FE54D:       var_AC = var_88.Fields
  loc_19FE555:       var_C0 = var_AC.Item(var_BC)
  loc_19FE56F:       Call 0.Method_Proc_338_90_1A00AE04 (CStr(var_C0.Value), var_21A, var_AC)
  loc_19FE584:       If var_21A Then
  loc_19FE5A1:         Set var_AC = Me.BillImage
  loc_19FE5B9:         Me.Global.LoadPicture CVar(Me.BillImage.Tag), var_BC, var_E0, var_100, var_124
  loc_19FE5CE:         Me.BillImage.Picture = var_C0
  loc_19FE5E3:         Set var_AC = Me.BillImage
  loc_19FE5E9:         var_AC.Refresh
  loc_19FE5F4:       Else
  loc_19FE612:         Me.Global.LoadPicture var_BC, var_E0, var_100, var_124, var_150
  loc_19FE621:         Set var_138 = Me.BillImage
  loc_19FE627:         var_138.Picture = var_AC
  loc_19FE633:       End If
  loc_19FE633:     End If
  loc_19FE633:   End If
  loc_19FE635:   Set var_1FC = Nothing 
  loc_19FE68F:   unk_5986AD.Execute CStr("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_134, -1
  loc_19FE69A:   Set var_88 = var_138
  loc_19FE6C8:   If (var_88.RecordCount > 0) Then
  loc_19FE6DD:     var_AC = var_88.Fields
  loc_19FE6FB:     Call Proc_338_100_17D48A8(CDate(var_AC.Item("SunAppDate").Value), var_138, var_AC)
  loc_19FE70A:     ' Referenced from: 19FEBA3
  loc_19FE719:     If Not(var_88.EOF) Then
  loc_19FE736:       var_C0 = var_88.Fields.Item("SunCode")
  loc_19FE77C:       Set var_1A4 = Me.LblCap
  loc_19FE782:       Call 0.Method_Proc_338_90_1A00AE00 (CInt(var_88.Fields.Item("SNo").Value), var_1B8, CStr(var_C0.Value))
  loc_19FE78A:       var_1B8.Tag = var_C0
  loc_19FE808:       Set var_1A4 = Me.TxtPer
  loc_19FE80E:       Call 0.Method_Proc_338_90_1A00AE00 (CInt(var_88.Fields.Item("SNo").Value), var_1B8, CStr(var_88.Fields.Item("Limit").Value))
  loc_19FE816:       var_1B8.Tag = 1
  loc_19FE894:       Set var_1A4 = Me.LblCap
  loc_19FE89A:       Call 0.Method_Proc_338_90_1A00AE00 (CInt(var_88.Fields.Item("SNo").Value), var_1B8)
  loc_19FE8A2:       var_1B8.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_19FE920:       Set var_1A4 = Me.LblAt
  loc_19FE926:       Call 0.Method_Proc_338_90_1A00AE00 (CInt(var_88.Fields.Item("SNo").Value), var_1B8)
  loc_19FE92E:       var_1B8.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_19FE9AC:       Set var_1A4 = Me.TxtGt
  loc_19FE9B2:       Call 0.Method_Proc_338_90_1A00AE00 (CInt(var_88.Fields.Item("SNo").Value), var_1B8)
  loc_19FE9BA:       var_1B8.Tag = CStr(var_88.Fields.Item("CalcFormula").Value)
  loc_19FEA38:       Set var_1A4 = Me.TxtPer
  loc_19FEA3E:       Call 0.Method_Proc_338_90_1A00AE00 (CInt(var_88.Fields.Item("SNo").Value), var_1B8)
  loc_19FEA46:       var_1B8.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_19FEAA2:       var_134 = var_88.Fields.Item("SNo").Value
  loc_19FEAB6:       var_F0 = "0.00"
  loc_19FEADD:       Set var_1A4 = Me.TxtGt
  loc_19FEAE3:       Call 0.Method_Proc_338_90_1A00AE00 (CInt(var_134), var_1B8, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_F0)))
  loc_19FEAEB:       var_1B8.Text = 1
  loc_19FEB31:       Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("BaseAmount")))
  loc_19FEB52:       var_138 = var_88.Fields
  loc_19FEB6F:       Set var_1A4 = Me.LblDummy
  loc_19FEB75:       Call 0.Method_Proc_338_90_1A00AE00 (CInt(var_138.Item("SNo").Value), var_1B8, CStr(var_F0))
  loc_19FEB7D:       var_1B8.Caption = 1
  loc_19FEB9E:       var_88.MoveNext
  loc_19FEBA3:       GoTo loc_19FE70A
  loc_19FEBA6:     End If
  loc_19FEBA6:   End If
  loc_19FEBB5:   Me.FGrid.Redraw = False
  loc_19FEBD0:   Me.FGrid.Rows = 1
  loc_19FEBDA:   var_8E = 1
  loc_19FEBEA:   var_E0 = "Select DISTINCT S.*,I.Name as ItemName,DispCode,S.DiscApp as DApp,S.RoundOff as ROff,s.TaxStru as TaxCode,RateEdit,D.Code as DepartCode,D.ShortName as DepartName,G.Name as GodownName,TaxStru.Name as TaxStructure,S.AcCode As SaleAcCode,SG.Name As SaleAcName From (((((Purch2 S Left Join ItemMast I On S.Item=I.Code And I.ItemType='Store') left join Sale2 S2 on (S2.docid=S.docid and S2.sno=S.sno)) Left join  ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D on D.Code=I.RestCode)Left Join GodownMast G on G.Code=S.GodCode) left Join TaxStru on TaxStru.Code=S.TaxStru left Join SubGroup SG On SG.SubCode=S.AcCode Where S.DocId='"
  loc_19FEC33:   unk_5986AD.Execute CStr(var_E0 & Me.Fields.Item("SearchCode").Value & "' Order By S.SNo"), var_134, -1
  loc_19FEC3E:   Set var_88 = var_138
  loc_19FEC6C:   If (var_88.RecordCount > 0) Then
  loc_19FEC7C:     ReDim Preserve var_9C(0 To 0)
  loc_19FEC86:     ' Referenced from: 1A00457
  loc_19FEC95:     If Not(var_88.EOF) Then
  loc_19FEC98:       var_BC = vbNullString
  loc_19FECA2:       Set var_AC = Me.FGrid
  loc_19FECC0:       For var_21E = 0 To CInt(UBound(var_9C, 1)): var_A0 = var_21E 'Integer
  loc_19FECD1:         var_BC = "RoomNo"
  loc_19FED04:         If (var_BC = Proc_6_38_E69628(CVar(var_88.Fields.Item(var_BC)), var_9C(CLng(var_A0)), 0, FGrid.DispID_10000)) Then
  loc_19FED09:           var_A2 = &HFF
  loc_19FED0C:         End If
  loc_19FED0F:       Next var_21E 'Integer
  loc_19FED1A:       If (var_A2 = 0) Then
  loc_19FED29:         ReDim Preserve var_9C(0 To CLng(var_9E))
  loc_19FED65:         var_9C(CLng(var_9E)) = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomNo")))
  loc_19FED75:         var_9E = (var_9E + 1)
  loc_19FED78:       End If
  loc_19FED7A:       var_A2 = 0
  loc_19FED81:       Set var_224 = Me.FGrid
  loc_19FED88:       var_E0 = CVar(CLng(var_8E)) 'Long
  loc_19FED90:       var_124 = CVar(CLng(0)) 'Long
  loc_19FEDC0:       var_F0 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_19FEDC7:       LateIdCallSt
  loc_19FEDE1:       var_E0 = CVar(CLng(var_8E)) 'Long
  loc_19FEDE9:       var_124 = CVar(CLng(&HC)) 'Long
  loc_19FEE19:       var_F0 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_19FEE20:       LateIdCallSt
  loc_19FEE6F:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DispCode")), CVar(CLng(1)), CVar(CLng(var_8E)), var_224, var_F0, CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_19FEE76:       LateIdCallSt
  loc_19FEEC1:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(2)), CVar(CLng(var_8E)), var_224, var_F0, var_224)) 'String
  loc_19FEEC8:       LateIdCallSt
  loc_19FEEFA:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_19FEF02:       var_150 = CVar(CLng(9)) 'Long
  loc_19FEF2F:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("ItemRate")), "0.00000"))) 'String
  loc_19FEF36:       LateIdCallSt
  loc_19FEF6C:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_19FEF74:       var_150 = CVar(CLng(&HA)) 'Long
  loc_19FEFA1:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00000"))) 'String
  loc_19FEFA8:       LateIdCallSt
  loc_19FEFDE:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_19FEFE6:       var_150 = CVar(CLng(&HB)) 'Long
  loc_19FF013:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_19FF01A:       LateIdCallSt
  loc_19FF050:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_19FF058:       var_150 = CVar(CLng(&HF)) 'Long
  loc_19FF085:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscPer")), "0.00"))) 'String
  loc_19FF08C:       LateIdCallSt
  loc_19FF0C2:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_19FF0CA:       var_150 = CVar(CLng(&H10)) 'Long
  loc_19FF0F7:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscAmt")), "0.00"))) 'String
  loc_19FF0FE:       LateIdCallSt
  loc_19FF134:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_19FF13C:       var_150 = CVar(CLng(&H12)) 'Long
  loc_19FF169:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))) 'String
  loc_19FF170:       LateIdCallSt
  loc_19FF1E2:       LateIdCallSt
  loc_19FF231:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DApp")), CVar(CLng(&H14)), CVar(CLng(var_8E)), var_224, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_19FF238:       LateIdCallSt
  loc_19FF283:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Roff")), CVar(CLng(&H15)), CVar(CLng(var_8E)), var_224, var_F0, CVar(CLng(&H13)))) 'String
  loc_19FF28A:       LateIdCallSt
  loc_19FF2D5:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TaxStructure")), CVar(CLng(&H19)), CVar(CLng(var_8E)), var_224, var_F0)) 'String
  loc_19FF2DC:       LateIdCallSt
  loc_19FF327:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TaxCode")), CVar(CLng(&H1A)), CVar(CLng(var_8E)), var_224, var_F0)) 'String
  loc_19FF32E:       LateIdCallSt
  loc_19FF379:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(var_8E)), var_224, var_F0)) 'String
  loc_19FF380:       LateIdCallSt
  loc_19FF3CB:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)), CVar(CLng(var_8E)), var_224, var_F0)) 'String
  loc_19FF3D2:       LateIdCallSt
  loc_19FF41D:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RateEdit")), CVar(CLng(&H1D)), CVar(CLng(var_8E)), var_224, var_F0)) 'String
  loc_19FF424:       LateIdCallSt
  loc_19FF465:       var_E0 = CVar(CLng(var_8E)) 'Long
  loc_19FF46D:       var_124 = CVar(CLng(3)) 'Long
  loc_19FF488:       var_114 = CStr(Right(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ContraDocId")), var_224, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ContraDocId")), var_224, var_F0, CVar(CLng(var_8E)))), CVar(CLng(var_8E)))), 8))
  loc_19FF49A:       LateIdCallSt
  loc_19FF4F0:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ContraDocId")), CVar(CLng(&HE)), CVar(CLng(var_8E)), var_224, CVar(CStr(Val(var_114))), CVar(CLng(&HE)))) 'String
  loc_19FF4F7:       LateIdCallSt
  loc_19FF540:       Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("ContraSNo")), CVar(CLng(&HD)), CVar(CLng(var_8E)), var_224, var_F0)
  loc_19FF550:       LateIdCallSt
  loc_19FF59D:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("GodownName")), CVar(CLng(&H16)), CVar(CLng(var_8E)), var_224, CVar(CStr(var_F0)))) 'String
  loc_19FF5A4:       LateIdCallSt
  loc_19FF5EF:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("GodCode")), CVar(CLng(&H17)), CVar(CLng(var_8E)), var_224, var_F0)) 'String
  loc_19FF5F6:       LateIdCallSt
  loc_19FF63F:       Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RoomNo")), CVar(CLng(&H18)), CVar(CLng(var_8E)), var_224, var_F0)
  loc_19FF64F:       LateIdCallSt
  loc_19FF69A:       Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("PostVal")), CVar(CLng(&H20)), CVar(CLng(var_8E)), var_224, CVar(CStr(var_F0)))
  loc_19FF6AA:       LateIdCallSt
  loc_19FF6C2:       var_E0 = CVar(CLng(var_8E)) 'Long
  loc_19FF6F5:       Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("LandVal")), CVar(CLng(&H21)), var_E0, var_224, CVar(CStr(var_F0)))
  loc_19FF705:       LateIdCallSt
  loc_19FF752:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("ContraDocId")), var_224, CVar(CStr(var_F0)), var_E0) <> vbNullString) Then
  loc_19FF76C:         If ((global_124 = "PRR") Or (global_124 = "PRC")) Then
  loc_19FF7B4:           var_110 = "Select ConvRatio,QtyIss,IssueUnit,Unit From Stock Where DocId='" & var_88.Fields.Item("ContraDocId").Value & "' And Sno=" 
  loc_19FF7F0:           unk_5986AD.Execute CStr(var_110 & var_88.Fields.Item("ContraSNo").Value), var_190, -1
  loc_19FF7FB:           Set var_8C = var_1A4
  loc_19FF831:           If (var_8C.RecordCount > 0) Then
  loc_19FF854:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_19FF85C:             var_150 = CVar(CLng(6)) 'Long
  loc_19FF889:             var_134 = CVar(CStr(Format(CVar(var_8C.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_19FF890:             LateIdCallSt
  loc_19FF8C6:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_19FF8CE:             var_150 = CVar(CLng(7)) 'Long
  loc_19FF8FB:             var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyIss")), "0.000"))) 'String
  loc_19FF902:             LateIdCallSt
  loc_19FF938:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_19FF974:             LateIdCallSt
  loc_19FF9C3:             var_F0 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Unit")), CVar(CLng(8)), CVar(CLng(var_8E)), var_224, CVar(CStr(Format(CVar(var_8C.Fields.Item("QtyIss")), "0.000"))), 1, 1)) 'String
  loc_19FF9CA:             LateIdCallSt
  loc_19FFA15:             var_F0 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("IssueUnit")), CVar(CLng(4)), CVar(CLng(var_8E)), var_224, var_F0, CVar(CLng(5)))) 'String
  loc_19FFA1C:             LateIdCallSt
  loc_19FFA2E:           End If
  loc_19FFA31:         Else
  loc_19FFA76:           var_110 = "Select ConvRatio,QtyRec,RecdUnit,Unit From Stock Where DocId='" & var_88.Fields.Item("ContraDocId").Value & "' And Sno=" 
  loc_19FFAB2:           unk_5986AD.Execute CStr(var_110 & var_88.Fields.Item("ContraSNo").Value), var_190, -1
  loc_19FFABD:           Set var_8C = var_1A4
  loc_19FFAF3:           If (var_8C.RecordCount > 0) Then
  loc_19FFB16:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_19FFB1E:             var_150 = CVar(CLng(6)) 'Long
  loc_19FFB4B:             var_134 = CVar(CStr(Format(CVar(var_8C.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_19FFB52:             LateIdCallSt
  loc_19FFB88:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_19FFB90:             var_150 = CVar(CLng(7)) 'Long
  loc_19FFBBD:             var_134 = CVar(CStr(Format(CVar(var_8C.Fields.Item("QtyRec")), "0.000"))) 'String
  loc_19FFBC4:             LateIdCallSt
  loc_19FFBFA:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_19FFC36:             LateIdCallSt
  loc_19FFC85:             var_F0 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Unit")), CVar(CLng(8)), CVar(CLng(var_8E)), var_224, CVar(CStr(Format(CVar(var_88.Fields.Item("RecdQty")), "0.000"))), 1, 1)) 'String
  loc_19FFC8C:             LateIdCallSt
  loc_19FFCD7:             var_F0 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("RecdUnit")), CVar(CLng(4)), CVar(CLng(var_8E)), var_224, var_F0, CVar(CLng(5)))) 'String
  loc_19FFCDE:             LateIdCallSt
  loc_19FFCF0:           End If
  loc_19FFCF0:         End If
  loc_19FFCF3:       Else
  loc_19FFD0A:         If ((global_124 = "PRR") Or (global_124 = "PRC")) Then
  loc_19FFD55:           var_110 = "Select ConvRatio,IssQty,IssueUnit,Unit From Stock Where DocId='" & Me.Fields.Item("SearchCode").Value & "' And Sno=" 
  loc_19FFD91:           unk_5986AD.Execute CStr(var_110 & var_88.Fields.Item("SNo").Value), var_190, -1
  loc_19FFD9C:           Set var_8C = var_1A4
  loc_19FFDD2:           If (var_8C.RecordCount > 0) Then
  loc_19FFDF5:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_19FFE11:             var_F0 = "0.00000"
  loc_19FFE31:             LateIdCallSt
  loc_19FFE6D:             Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("QtyIss")), var_224, CVar(CStr(Format(CVar(var_8C.Fields.Item("ConvRatio")), var_F0))), 1, 1, CVar(CLng(6)))
  loc_19FFE76:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_19FFE7E:             var_150 = CVar(CLng(7)) 'Long
  loc_19FFEA7:             var_160 = CVar(CStr(Format(var_F0, "0.000"))) 'String
  loc_19FFEAE:             LateIdCallSt
  loc_19FFEE6:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_19FFF22:             LateIdCallSt
  loc_19FFF71:             var_F0 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Unit")), CVar(CLng(8)), CVar(CLng(var_8E)), var_224, CVar(CStr(Format(CVar(var_8C.Fields.Item("IssQty")), "0.000"))), 1, 1)) 'String
  loc_19FFF78:             LateIdCallSt
  loc_19FFFC3:             var_F0 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("IssueUnit")), CVar(CLng(4)), CVar(CLng(var_8E)), var_224, var_F0, CVar(CLng(5)))) 'String
  loc_19FFFCA:             LateIdCallSt
  loc_19FFFDC:           End If
  loc_19FFFDF:         Else
  loc_1A00027:           var_110 = "Select ConvRatio,QtyRec,RecdUnit,Unit From Stock Where DocId='" & Me.Fields.Item("SearchCode").Value & "' And Sno=" 
  loc_1A00063:           unk_5986AD.Execute CStr(var_110 & var_88.Fields.Item("SNo").Value), var_190, -1
  loc_1A0006E:           Set var_8C = var_1A4
  loc_1A000A4:           If (var_8C.RecordCount > 0) Then
  loc_1A000C7:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A000CF:             var_150 = CVar(CLng(6)) 'Long
  loc_1A000FC:             var_134 = CVar(CStr(Format(CVar(var_8C.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_1A00103:             LateIdCallSt
  loc_1A00139:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A00141:             var_150 = CVar(CLng(7)) 'Long
  loc_1A0016E:             var_134 = CVar(CStr(Format(CVar(var_8C.Fields.Item("QtyRec")), "0.000"))) 'String
  loc_1A00175:             LateIdCallSt
  loc_1A001AB:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A001D7:             var_110 = Format(CVar(var_88.Fields.Item("RecdQty")), "0.000")
  loc_1A001E7:             LateIdCallSt
  loc_1A00236:             var_F0 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Unit")), CVar(CLng(8)), CVar(CLng(var_8E)), var_224, CVar(CStr(var_110)), 1, 1)) 'String
  loc_1A0023D:             LateIdCallSt
  loc_1A00288:             var_F0 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("RecdUnit")), CVar(CLng(4)), CVar(CLng(var_8E)), var_224, var_F0, CVar(CLng(5)))) 'String
  loc_1A0028F:             LateIdCallSt
  loc_1A002A1:           End If
  loc_1A002A1:         End If
  loc_1A002A1:       End If
  loc_1A002D0:       If ((((global_124 = "PBR") Or (global_124 = "EXR")) Or (global_124 = "PBC")) Or (global_124 = "EXC")) Then
  loc_1A002E7:         var_114 = "Select max(IsNull(M.AccQty,0)) - Sum(IsNull(P2.QtyRec,0)) as BalQty " & "From (Stock M Left Join Purch2 P2 on (M.Docid = P2.ContraDocid and M.Sno = P2.ContraSno)) "
  loc_1A002F5:         var_1EC = CStr(var_110 & var_88.Fields.Item("SNo").Value) & "Left Join SubGroup SG on M.PartyCode=SG.SubCode " & "where M.DocId='"
  loc_1A00320:         var_1F4 = Proc_6_38_E69628(CVar(var_88.Fields.Item("ContraDocId")), var_1EC, var_1A0, -1, var_1A4, var_224)
  loc_1A00324:         var_1F8 = var_F0 & "Select NCAT From Voucher_Type Where LogSite_Code='" & MemVar_1F95078 & "' and V_Type='" & global_132 & "'"
  loc_1A0032B:         var_134 = CVar(var_1F8 & "' And M.Sno=") 'String
  loc_1A00345:         var_13C = var_88.Fields.Item("ContraSNo")
  loc_1A0034D:         var_F0 = CVar(var_13C) 'Address
  loc_1A00354:         Proc_6_39_E7D3A0(var_110, var_F0, var_134, var_100)
  loc_1A00360:         var_100 = "  Group By M.Docid,M.Sno Having Max(M.AccQty) - Sum(isnull(P2.QtyRec,0)) > 0 "
  loc_1A00373:         unk_5986AD.Execute CStr(var_224 & var_110 & var_100), var_134, 1
  loc_1A0037E:         Set var_8C = var_1A4
  loc_1A003BE:         If (var_8C.RecordCount > 0) Then
  loc_1A003D8:           var_C0 = var_8C.Fields.Item("BalQty")
  loc_1A003E7:           Proc_6_39_E7D3A0(var_F0, CVar(var_C0))
  loc_1A003F0:           var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A003F8:           var_150 = CVar(CLng(&H22)) 'Long
  loc_1A00421:           var_160 = CVar(CStr(Format(var_F0, "0.000"))) 'String
  loc_1A00428:           LateIdCallSt
  loc_1A00440:         End If
  loc_1A00440:       End If
  loc_1A00442:       Set var_224 = Nothing 
  loc_1A0044C:       var_8E = (var_8E + 1)
  loc_1A00452:       var_88.MoveNext
  loc_1A00457:       GoTo loc_19FEC86
  loc_1A0045A:     End If
  loc_1A0046D:     Me.FGrid.FixedRows = 1
  loc_1A00483:     Set var_AC = Me.Txt
  loc_1A00489:     Call 0.Method_Proc_338_90_1A00AE00 (CInt(7), var_C0, vbNullString, var_8E, var_224, var_160)
  loc_1A004AA:     For var_22C = 0 To CInt(UBound(var_9C, 1)): var_9E = var_22C 'Integer
  loc_1A004BE:       Set var_AC = Me.Txt
  loc_1A004C4:       Call 0.Method_Proc_338_90_1A00AE00 (CInt(7), var_C0, CStr("0.000" & var_88.Fields.Item("SNo").Value), 0)
  loc_1A004CC:       1 = 1
  loc_1A004F2:       Set var_138 = Me.Txt
  loc_1A004F8:       Call 0.Method_Proc_338_90_1A00AE00 (CInt(7), var_13C, CStr("0.000" & var_88.Fields.Item("SNo").Value) & var_9C(CLng(var_9E)) & ",")
  loc_1A00500:       var_13C.Text = var_150
  loc_1A0051C:     Next var_22C 'Integer
  loc_1A0052C:     Set var_AC = Me.Txt
  loc_1A00532:     Call 0.Method_Proc_338_90_1A00AE00 (CInt(7))
  loc_1A00542:     Set var_138 = Me.Txt
  loc_1A00548:     Call 0.Method_Proc_338_90_1A00AE00 (CInt(7), var_13C)
  loc_1A00568:     var_134 = (Len(Trim(CVar(var_13C))) - 1)
  loc_1A0057B:     var_160 = CVar(var_C0) 'Address
  loc_1A00599:     Set var_1A4 = Me.Txt
  loc_1A0059F:     Call 0.Method_Proc_338_90_1A00AE00 (CInt(7), var_1B8)
  loc_1A005A7:     var_1B8.Text = CStr(Mid(var_160, 1, Format(Trim(CVar(var_13C)), "0.000")))
  loc_1A005C7:   End If
  loc_1A005D5:   Me.FGrid.Redraw = True
  loc_1A005F1:   var_F0 = CVar("SELECT S.SNo1, S.Sno, S.TaxCode, RM.Name, S.BaseValue, S.TaxPer, S.TaxAmt " & " FROM Sale2 AS S LEFT JOIN RevMast AS RM ON S.TaxCode = RM.Code Where S.DocId='") 'String
  loc_1A0062A:   var_134 = var_F0 & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1A00638:   unk_5986AD.Execute CStr(var_134), var_160, -1
  loc_1A00643:   Set var_88 = var_138
  loc_1A00672:   Me.FGCat.Rows = 1
  loc_1A00680:   var_A8 = var_88.RecordCount
  loc_1A0068E:   If (var_A8 > 0) Then
  loc_1A00691:     ' Referenced from: 1A009E7
  loc_1A006A0:     If Not(var_88.EOF) Then
  loc_1A006A7:       Set var_230 = Me.FGCat
  loc_1A006AA:       var_BC = vbNullString
  loc_1A006D4:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A006DC:       var_124 = CVar(CLng(0)) 'Long
  loc_1A0070C:       var_110 = CVar(CStr(var_88.Fields.Item("Sno1").Value)) 'String
  loc_1A00713:       LateIdCallSt
  loc_1A00746:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A0074E:       var_124 = CVar(CLng(1)) 'Long
  loc_1A0077E:       var_110 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1A00785:       LateIdCallSt
  loc_1A007B8:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A007C0:       var_124 = CVar(CLng(2)) 'Long
  loc_1A007F0:       var_110 = CVar(CStr(var_88.Fields.Item("TaxCode").Value)) 'String
  loc_1A007F7:       LateIdCallSt
  loc_1A0082A:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A00832:       var_124 = CVar(CLng(3)) 'Long
  loc_1A00862:       var_110 = CVar(CStr(var_88.Fields.Item("Name").Value)) 'String
  loc_1A00869:       LateIdCallSt
  loc_1A0089C:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A008A4:       var_124 = CVar(CLng(4)) 'Long
  loc_1A008D4:       var_110 = CVar(CStr(var_88.Fields.Item("BaseValue").Value)) 'String
  loc_1A008DB:       LateIdCallSt
  loc_1A0090E:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A00916:       var_124 = CVar(CLng(5)) 'Long
  loc_1A00946:       var_110 = CVar(CStr(var_88.Fields.Item("TaxPer").Value)) 'String
  loc_1A0094D:       LateIdCallSt
  loc_1A00980:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A00988:       var_124 = CVar(CLng(6)) 'Long
  loc_1A009AF:       var_F0 = var_88.Fields.Item("TaxAmt").Value
  loc_1A009B8:       var_110 = CVar(CStr(var_F0)) 'String
  loc_1A009BF:       LateIdCallSt
  loc_1A009DB:       Set var_230 = Nothing 
  loc_1A009E2:       var_88.MoveNext
  loc_1A009E7:       GoTo loc_1A00691
  loc_1A009EA:     End If
  loc_1A009EA:   End If
  loc_1A009F0:   If (var_8E = 1) Then
  loc_1A00A06:     Me.FGrid.Rows = 1
  loc_1A00A2C:     var_D0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), var_230, var_110, var_124, "'", var_230, var_110))) 'String
  loc_1A00A34:     Set var_C0 = Me.FGrid
  loc_1A00A61:     Me.FGrid.FixedRows = 1
  loc_1A00A69:   End If
  loc_1A00A6C: Else
  loc_1A00A6C:   Call Proc_338_92_10247E8(FGrid.DispID_10000, var_D0, var_124, "'", var_230)
  loc_1A00A71: End If
  loc_1A00A71: Call Proc_338_94_FDFE34(var_110, var_124)
  loc_1A00A7B: Set var_88 = Nothing
  loc_1A00A83: Set var_94 = Nothing
  loc_1A00A8A: Exit Sub
  loc_1A00A8B: ' Referenced from: 19FD7A4
  loc_1A00A93: Set var_AC = Err()
  loc_1A00A99: Call 0.Method_arg_1C (var_A8, "'")
  loc_1A00AAA: If (var_A8 = &HBCD) Then
  loc_1A00AC6:   MsgBox("Record is Deleted by somebody", &H40, var_F0, var_110, var_134)
  loc_1A00AD6:   Exit Sub
  loc_1A00AD7: End If
  loc_1A00AD7: Proc_6_60_E63754(var_230)
  loc_1A00ADC: Exit Sub
End Sub

Public Sub Proc_338_91_12611D0
  'Data Table: 598690
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_5986AD As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_108 As Variant
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  loc_1260C75: Set var_9C = Me.TopCtrl1
  loc_1260C7B: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(&HFF)
  loc_1260C83: var_B0 = CStr()
  loc_1260C94: If (var_B0 = "Add") Then
  loc_1260CC4:   Set var_9C = Me.Txt
  loc_1260CCA:   Call 0.Method_Proc_338_91_12611D00 (CInt(0), var_B4, var_B0, "Select Count(*) From Purch1 Where DocID='", var_AC, -1)
  loc_1260CEB:   unk_5986AD.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_1260CFB:    = var_D4.Item()
  loc_1260D03:    = var_E8.Value
  loc_1260D30:   If (var_B4.Text.Fields > 0) Then
  loc_1260D39:     Call 0.Method_arg_50 (var_B0)
  loc_1260D5A:     MsgBox("Duplicate Bill No.", &H40, CVar(var_B0), var_118, var_128)
  loc_1260D70:     Call Proc_338_96_10E9EB0(MemVar_1F95044)
  loc_1260D83:     Set var_9C = Me.Txt
  loc_1260D89:     Call 0.Method_Proc_338_91_12611D00 (CInt(0), var_B4)
  loc_1260D91:     var_B4.Text = var_B0
  loc_1260DA5:     Proc_338_91_12611D0 = 0
  loc_1260DAB:   End If
  loc_1260DAB: End If
  loc_1260DD0: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_1260DDA:   var_CC = CVar(CLng(var_88)) 'Long
  loc_1260DE2:   var_108 = CVar(CLng(2)) 'Long
  loc_1260E02:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1260E1E:   If CBool(var_118 <> vbNullString) Then
  loc_1260E25:     var_CC = CVar(CLng(var_88)) 'Long
  loc_1260E2D:     var_108 = CVar(CLng(5)) 'Long
  loc_1260E5D:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1260E85:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_1260EAB:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_1260EB7:       Set var_9C = Me.FGrid
  loc_1260ECD:       Proc_338_91_12611D0 = 0
  loc_1260ED3:     End If
  loc_1260ED7:     var_CC = CVar(CLng(var_88)) 'Long
  loc_1260EDF:     var_108 = CVar(CLng(9)) 'Long
  loc_1260F0F:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1260F37:       MsgBox(CVar("Rate Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_1260F5D:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_1260F69:       Set var_9C = Me.FGrid
  loc_1260F7F:       Proc_338_91_12611D0 = 0
  loc_1260F85:     End If
  loc_1260F89:     var_CC = CVar(CLng(var_88)) 'Long
  loc_1260F91:     var_108 = CVar(CLng(&H16)) 'Long
  loc_1260FB1:     var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1260FCD:     If (var_118 = vbNullString) Then
  loc_1260FF5:       MsgBox(CVar("Godown Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_126101B:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_1261027:       Set var_9C = Me.FGrid
  loc_126103D:       Proc_338_91_12611D0 = 0
  loc_1261043:     End If
  loc_1261047:     var_CC = CVar(CLng(var_88)) 'Long
  loc_126104F:     var_108 = CVar(CLng(&H1A)) 'Long
  loc_126106F:     var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_126108B:     If (var_118 = vbNullString) Then
  loc_12610B3:       MsgBox(CVar("Tax Structure Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_12610D9:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_12610E5:       Set var_9C = Me.FGrid
  loc_12610FB:       Proc_338_91_12611D0 = 0
  loc_1261101:     End If
  loc_1261105:     var_CC = CVar(CLng(var_88)) 'Long
  loc_126110D:     var_108 = CVar(CLng(&H1C)) 'Long
  loc_126112D:     var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1261149:     If (var_118 = vbNullString) Then
  loc_1261171:       MsgBox(CVar("A/C Name Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_1261197:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_12611A3:       Set var_9C = Me.FGrid
  loc_12611B9:       Proc_338_91_12611D0 = 0
  loc_12611BF:     End If
  loc_12611BF:   End If
  loc_12611C2: Next var_12C 'Integer
  loc_12611C7: Proc_338_91_12611D0 = 
  loc_12611CD: DOC
End Sub

Public Sub Proc_338_92_10247E8
  'Data Table: 598690
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  loc_10245BD: Me.LblVPrefix.Caption = vbNullString
  loc_10245D3: Set var_8C = Me.Txt
  loc_10245D9: Call 0.Method_Proc_338_92_10247E8C (var_8E, var_86)
  loc_10245E9: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_10245FF:   Set var_8C = Me.Txt
  loc_1024605:   Call 0.Method_Proc_338_92_10247E80 (CInt(var_86), var_98)
  loc_102460D:   var_98.Text = vbNullString
  loc_1024629:   Set var_8C = Me.Txt
  loc_102462F:   Call 0.Method_Proc_338_92_10247E80 (CInt(var_86), var_98)
  loc_1024637:   var_98.Tag = vbNullString
  loc_1024646: Next var_92 'Byte
  loc_102465F: Me.FGrid.Rows = 1
  loc_1024685: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_102468D: Set var_98 = Me.FGrid
  loc_10246BA: Me.FGrid.FixedRows = 1
  loc_10246D0: Set var_8C = Me.TxtPer
  loc_10246D6: Call 0.Method_Proc_338_92_10247E8C (var_8E, var_86, CByte(1))
  loc_10246E3: For var_D0 = var_C8 To CByte(var_8E): FGrid.DispID_10000 = var_D0 'Byte
  loc_10246F9:   Set var_8C = Me.TxtPer
  loc_10246FF:   Call 0.Method_Proc_338_92_10247E80 (CInt(var_86), var_98, vbNullString)
  loc_1024707:   var_98.Text = var_C8
  loc_1024716: Next var_D0 'Byte
  loc_102472A: Set var_8C = Me.TxtGt
  loc_1024730: Call 0.Method_Proc_338_92_10247E8C (var_8E, var_86)
  loc_102473D: For var_D4 =  To CByte(var_8E): CByte(1) = var_D4 'Byte
  loc_1024753:   Set var_8C = Me.TxtGt
  loc_1024759:   Call 0.Method_Proc_338_92_10247E80 (CInt(var_86), var_98)
  loc_1024761:   var_98.Text = vbNullString
  loc_1024770: Next var_D4 'Byte
  loc_1024794: Me.Global.LoadPicture var_A8, var_B8, var_E4, var_F4, var_104
  loc_10247A9: Me.BillImage.Picture = var_8C
  loc_10247C2: Me.BillImage.Tag = vbNullString
  loc_10247DD: Me.FGCat.Rows = 0
  loc_10247E5: Exit Sub
End Sub

Public Sub Proc_338_93_FECC18(arg_C) 'FECC18
  'Data Table: 598690
  Dim var_98 As TextBox
  Dim var_8C As Frame
  loc_FECA3A: Set var_8C = Me.Txt
  loc_FECA40: Call 0.Method_Proc_338_93_FECC18C (var_8E, var_86)
  loc_FECA50: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FECA66:   Set var_8C = Me.Txt
  loc_FECA6C:   Call 0.Method_Proc_338_93_FECC180 (CInt(var_86), var_98)
  loc_FECA74:   var_98.Enabled = arg_C
  loc_FECA83: Next var_92 'Byte
  loc_FECA97: Set var_8C = Me.TxtPer
  loc_FECA9D: Call 0.Method_Proc_338_93_FECC18C (var_8E, var_86)
  loc_FECAAA: For var_9C =  To CByte(var_8E): CByte(1) = var_9C 'Byte
  loc_FECAC0:   Set var_8C = Me.TxtPer
  loc_FECAC6:   Call 0.Method_Proc_338_93_FECC180 (CInt(var_86), var_98)
  loc_FECACE:   var_98.Enabled = arg_C
  loc_FECADD: Next var_9C 'Byte
  loc_FECAF1: Set var_8C = Me.TxtGt
  loc_FECAF7: Call 0.Method_Proc_338_93_FECC18C (var_8E, var_86)
  loc_FECB04: For var_A0 =  To CByte(var_8E): CByte(1) = var_A0 'Byte
  loc_FECB1A:   Set var_8C = Me.TxtGt
  loc_FECB20:   Call 0.Method_Proc_338_93_FECC180 (CInt(var_86), var_98)
  loc_FECB28:   var_98.Enabled = arg_C
  loc_FECB37: Next var_A0 'Byte
  loc_FECB4A: Me.FrInVoiceType.Enabled = arg_C
  loc_FECB5F: Me.FrPayable.Enabled = arg_C
  loc_FECB74: Set var_8C = Me.Txt
  loc_FECB7A: Call 0.Method_Proc_338_93_FECC180 (CInt(0), var_98)
  loc_FECB82: var_98.Enabled = False
  loc_FECB9B: Set var_8C = Me.Txt
  loc_FECBA1: Call 0.Method_Proc_338_93_FECC180 (CInt(2), var_98)
  loc_FECBA9: var_98.Enabled = False
  loc_FECBB9: Set var_8C = Me.TopCtrl1
  loc_FECBBF: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_FECBD8: If (CStr() = "Edit") Then
  loc_FECBE8:   Set var_8C = Me.Txt
  loc_FECBEE:   Call 0.Method_Proc_338_93_FECC180 (CInt(1), var_98)
  loc_FECBF6:   var_98.Enabled = False
  loc_FECC0E:   Me.FrInVoiceType.Enabled = False
  loc_FECC16: End If
  loc_FECC16: Exit Sub
End Sub

Public Sub Proc_338_94_FDFE34
  'Data Table: 598690
  loc_FDFC68: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_FDFC7A:   Me.DGItem.Visible = False
  loc_FDFC82: End If
  loc_FDFC9E: If (CBool(Me.DgMR.Visible) = &HFF) Then
  loc_FDFCB0:   Me.DgMR.Visible = False
  loc_FDFCB8: End If
  loc_FDFCD4: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_FDFCE6:   Me.FGPoint.Visible = False
  loc_FDFCEE: End If
  loc_FDFD0A: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_FDFD1C:   Me.DGParty.Visible = False
  loc_FDFD24: End If
  loc_FDFD40: If (CBool(Me.DGPartyBillNo.Visible) = &HFF) Then
  loc_FDFD52:   Me.DGPartyBillNo.Visible = False
  loc_FDFD5A: End If
  loc_FDFD76: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_FDFD88:   Me.DGVType.Visible = False
  loc_FDFD90: End If
  loc_FDFDAC: If (CBool(Me.DGGod.Visible) = &HFF) Then
  loc_FDFDBE:   Me.DGGod.Visible = False
  loc_FDFDC6: End If
  loc_FDFDE2: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_FDFDF4:   Me.DGTaxStru.Visible = False
  loc_FDFDFC: End If
  loc_FDFE18: If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_FDFE2A:   Me.DGSaleAc.Visible = False
  loc_FDFE32: End If
  loc_FDFE32: Exit Sub
End Sub

Public Sub Proc_338_95_F0C0BC
  'Data Table: 598690
  loc_F0BFE0: Call Proc_338_94_FDFE34()
  loc_F0BFF0: Set var_88 = Me.Txt
  loc_F0BFF6: Call 0.Method_Proc_338_95_F0C0BC0 (CInt(3))
  loc_F0C01F: If (Proc_6_27_EA61EC(var_8C, "Invoice Date") = 0) Then
  loc_F0C022:   Exit Sub
  loc_F0C023: End If
  loc_F0C02E: Set var_88 = Me.Txt
  loc_F0C034: Call 0.Method_Proc_338_95_F0C0BC0 (CInt(2), var_8C)
  loc_F0C05D: If (Proc_6_27_EA61EC(var_8C, "Invoice No") = 0) Then
  loc_F0C060:   Exit Sub
  loc_F0C061: End If
  loc_F0C098: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0C09B:   Call TopCtrl1_UnknownEvent_16()
  loc_F0C0A3: Else
  loc_F0C0A7:   Call 0.Method_arg_1E8 (var_88)
  loc_F0C0AF:   Call var_88.SetFocus
  loc_F0C0B8: End If
  loc_F0C0B8: Exit Sub
End Sub

Public Sub Proc_338_96_10E9EB0
  'Data Table: 598690
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
  loc_10E9BD8: var_90 = global_132
  loc_10E9BEF: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_10E9C20: Set var_A8 = Me.Txt
  loc_10E9C26: Call 0.Method_Proc_338_96_10E9EB00 (CInt(3), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10E9C35: Proc_6_7_F26918(var_CC, CVar(var_AC), var_130)
  loc_10E9C3D: var_EC = -1 & var_CC 
  loc_10E9C51: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_10E9C5C: Set var_8C = var_134
  loc_10E9C98: If (var_8C.RecordCount > 0) Then
  loc_10E9CD7:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_10E9D0B:     global_116 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10E9D36:     var_AC = var_8C.Fields.Item("start_srl_no")
  loc_10E9D4B:     var_CC = (var_AC.Value + 1)
  loc_10E9D53:     global_120 = CInt(var_CC)
  loc_10E9D64:   End If
  loc_10E9D64: End If
  loc_10E9D8F: var_BC = Space((5 - Len(var_90)))
  loc_10E9D97: var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_AC.Value)
  loc_10E9DAB: var_EC = Space((5 - Len(global_116)))
  loc_10E9DB3: var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_10E9DC0: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_116))
  loc_10E9DD9: var_14C = Space((8 - Len(CStr(global_120))))
  loc_10E9DE1: var_15C = (var_130 + var_14C)
  loc_10E9DF0: var_17C = (var_15C + CVar(CStr(global_120)))
  loc_10E9DFB: global_108 = CStr(var_17C)
  loc_10E9E31: Me.LblVPrefix.Caption = global_116
  loc_10E9E4A: Set var_A8 = Me.Txt
  loc_10E9E50: Call 0.Method_Proc_338_96_10E9EB00 (CInt(0), var_AC)
  loc_10E9E58: var_AC.Text = global_108
  loc_10E9E7A: Set var_A8 = Me.Txt
  loc_10E9E80: Call 0.Method_Proc_338_96_10E9EB00 (CInt(2), var_AC)
  loc_10E9E88: var_AC.Text = CStr(global_120)
  loc_10E9E9D: var_88 = global_108
  loc_10E9EA5: Set var_8C = Nothing
  loc_10E9EA8: Proc_338_96_10E9EB0 = global_120
End Sub

Public Sub Proc_338_97_10B7498(arg_C, arg_10, arg_14) '10B7498
  'Data Table: 598690
  Dim unk_5986AD As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10B7206: If (arg_C = "RSBIL") Then
  loc_10B722D:   unk_5986AD.Execute "Select Distinct DocId,V_Type,V_No From Purch1 Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10B7238:   Set var_8C = var_C4
  loc_10B724B:   var_94 = "ALACARTE Sale Bill Entry"
  loc_10B7251: Else
  loc_10B7256:   Proc_338_97_10B7498 = &HFF
  loc_10B725C: End If
  loc_10B7270: If (var_8C.RecordCount > 0) Then
  loc_10B7273:   ' Referenced from: 10B73EC
  loc_10B7282:   If Not(var_8C.EOF) Then
  loc_10B728D:     If (var_90 = vbNullString) Then
  loc_10B72D0:       var_D4 = "V.Type :-> " & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10B72D7:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10B7309:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10B732E:     Else
  loc_10B736A:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10B738A:       var_10C = CVar(var_120 & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10B73B7:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10B73BC:       var_90 = CStr(var_11C)
  loc_10B73E4:     End If
  loc_10B73E7:     var_8C.MoveNext
  loc_10B73EC:     GoTo loc_10B7273
  loc_10B73EF:   End If
  loc_10B73F5:   Call 0.Method_arg_50 (var_138)
  loc_10B7451:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This Purchase GIN," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10B7454:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10B7483:   Set var_8C = Nothing
  loc_10B7486:   Proc_338_97_10B7498 = 0
  loc_10B748C: End If
  loc_10B7491: Proc_338_97_10B7498 = &HFF
End Sub

Public Sub Proc_338_98_FBEF2C
  'Data Table: 598690
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBEDAF: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_FBEDB4:   var_92 = 2 'Byte
  loc_FBEDB8: End If
  loc_FBEDC1: Set var_98 = Me.TxtGrid
  loc_FBEDC7: Call 0.Method_Proc_338_98_FBEF2C0 (0, var_B0)
  loc_FBEDEA: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBEE1E: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBEE42:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBEE45:     GoTo loc_FBEF17
  loc_FBEE48:   End If
  loc_FBEE4C:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBEE76:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBEE80:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBEEB5:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBEED9:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBEEF2:     Set var_98 = Me.TxtGrid
  loc_FBEEF8:     Call 0.Method_Proc_338_98_FBEF2C0 (0, var_B0, CVar(CLng(var_92)))
  loc_FBEF00:     var_B0.SetFocus
  loc_FBEF11:     Proc_338_98_FBEF2C = 0
  loc_FBEF17:     ' Referenced from: FBEE45
  loc_FBEF17:   End If
  loc_FBEF1A: Next var_D4 'Integer
  loc_FBEF24: Proc_338_98_FBEF2C = &HFF
End Sub

Public Sub Proc_338_99_EAA35C(arg_C) 'EAA35C
  'Data Table: 598690
  Dim var_8C As Recordset15
  loc_EAA2D6: IStAdFunc
  loc_EAA2DD: Set var_8C = arg_C 
  loc_EAA305: Me.Recordset15.Fields.Append "V_NO", 3, &HB
  loc_EAA315: var_8C.CursorType = 3
  loc_EAA322: var_8C.LockType = 3
  loc_EAA341: var_8C.Open var_A0, var_B0, -1
  loc_EAA348: Set var_8C = Nothing 
  loc_EAA34F: Set var_88 = arg_C 
  loc_EAA353: Proc_338_99_EAA35C = -1
End Sub

Public Sub Proc_338_100_17D48A8(arg_C) '17D48A8
  'Data Table: 598690
  Dim var_94 As Variant
  Dim var_8A As Integer
  Dim var_AC As Variant
  Dim var_C0 As String
  Dim var_E4 As Variant
  Dim var_114 As Variant
  Dim unk_5986AD As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_140 As Variant
  Dim var_B0 As Fields15
  Dim var_148 As Variant
  Dim var_138 As Boolean
  Dim var_144 As Fields15
  Dim var_190 As Variant
  Dim var_1A4 As TextBox
  loc_17D27C8: Set var_90 = Me.TxtGt
  loc_17D27CE: Call 0.Method_Proc_338_100_17D48A80 (1, var_94)
  loc_17D27D6: var_96 = var_94.TabIndex
  loc_17D27DE: var_8A = var_96
  loc_17D27F4: Set var_90 = Me.TxtPer
  loc_17D27FA: Call 0.Method_Proc_338_100_17D48A8C (var_96, var_8C)
  loc_17D2805: For var_9A = var_8A To var_96: 2 = var_9A 'Integer
  loc_17D2817:   Set var_90 = Me.TxtPer
  loc_17D281D:   Call 0.Method_Proc_338_100_17D48A80 (var_8C, var_94)
  loc_17D2825:   var_94.Visible = False
  loc_17D283B:   Set var_90 = Me.TxtPer
  loc_17D2841:   Call 0.Method_Proc_338_100_17D48A80 (var_8C, var_94)
  loc_17D2858:   If IsObject(CVar(var_94)) Then
  loc_17D2865:     Set var_90 = Me.TxtPer
  loc_17D286B:     Call 0.Method_Proc_338_100_17D48A80 (var_8C, var_94)
  loc_17D287C:     Me.TxtPer.Unload var_94
  loc_17D2888:   End If
  loc_17D288B: Next var_9A 'Integer
  loc_17D289C: Set var_90 = Me.TxtGt
  loc_17D28A2: Call 0.Method_Proc_338_100_17D48A8C (var_96, var_8C)
  loc_17D28AD: For var_B4 =  To var_96: 2 = var_B4 'Integer
  loc_17D28BF:   Set var_90 = Me.TxtGt
  loc_17D28C5:   Call 0.Method_Proc_338_100_17D48A80 (var_8C, var_94)
  loc_17D28CD:   var_94.Visible = False
  loc_17D28E3:   Set var_90 = Me.TxtGt
  loc_17D28E9:   Call 0.Method_Proc_338_100_17D48A80 (var_8C)
  loc_17D2900:   If IsObject(CVar(var_94)) Then
  loc_17D290D:     Set var_90 = Me.TxtGt
  loc_17D2913:     Call 0.Method_Proc_338_100_17D48A80 (var_8C, var_94)
  loc_17D2924:     Me.TxtGt.Unload var_94
  loc_17D2930:   End If
  loc_17D2933: Next var_B4 'Integer
  loc_17D2944: Set var_90 = Me.LblCap
  loc_17D294A: Call 0.Method_Proc_338_100_17D48A8C (var_96, var_8C)
  loc_17D2955: For var_B8 =  To var_96: 2 = var_B8 'Integer
  loc_17D2967:   Set var_90 = Me.LblCap
  loc_17D296D:   Call 0.Method_Proc_338_100_17D48A80 (var_8C, var_94)
  loc_17D2975:   var_94.Visible = False
  loc_17D298B:   Set var_90 = Me.LblCap
  loc_17D2991:   Call 0.Method_Proc_338_100_17D48A80 (var_8C)
  loc_17D2999:   var_AC = CVar(var_94) 'Address
  loc_17D29A8:   If IsObject(var_AC) Then
  loc_17D29B5:     Set var_90 = Me.LblCap
  loc_17D29BB:     Call 0.Method_Proc_338_100_17D48A80 (var_8C, var_94)
  loc_17D29CC:     Me.LblCap.Unload var_94
  loc_17D29D8:   End If
  loc_17D29DB: Next var_B8 'Integer
  loc_17D29E4: Set var_90 = Me.TopCtrl1
  loc_17D29EA: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_17D2A03: If (CStr() = "Add") Then
  loc_17D2A21:   var_C0 = "Select * From SundryType WHERE V_Type='" & MemVar_1F95078 & "PURC' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE V_Type='"
  loc_17D2A3D:   Proc_6_7_F26918(var_AC, arg_C, CVar(var_C0 & MemVar_1F95078 & "PURC' aND AppDate<="))
  loc_17D2A5C:   unk_5986AD.Execute CStr(var_138 & var_AC & "  Order by AppDate Desc) Order by SNO"), -1, var_90
  loc_17D2A67:   Set var_88 = var_90
  loc_17D2A88: Else
  loc_17D2AA3:   var_C0 = "Select * From SundryType WHERE V_Type='" & MemVar_1F95078 & "PURC' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE V_Type='"
  loc_17D2ABF:   Proc_6_7_F26918(var_AC, arg_C, CVar(var_C0 & MemVar_1F95078 & "PURC' aND AppDate="))
  loc_17D2ADE:   unk_5986AD.Execute CStr(var_138 & var_AC & "  Order by AppDate Desc) Order by SNO"), -1, var_90
  loc_17D2AE9:   Set var_88 = var_90
  loc_17D2B07: End If
  loc_17D2B1B: If (var_88.RecordCount > 0) Then
  loc_17D2B57:   Set var_B0 = Me.Txt
  loc_17D2B5D:   Call 0.Method_Proc_338_100_17D48A80 (CInt(9), var_140)
  loc_17D2B65:   var_140.Text = CStr(var_88.Fields.Item("AppDate").Value)
  loc_17D2B7B:   ' Referenced from: 17D48A3
  loc_17D2B81:   var_96 = var_88.EOF
  loc_17D2B8A:   If Not(var_96) Then
  loc_17D2BC9:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_17D2BFD:       Set var_B0 = Me.LblDummy
  loc_17D2C03:       Call 0.Method_Proc_338_100_17D48A88 (var_96)
  loc_17D2C1D:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_17D2C52:         Set var_B0 = Me.LblDummy
  loc_17D2C58:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17D2C69:         Me.LblDummy.Load var_140
  loc_17D2C7C:       End If
  loc_17D2CC7:       var_140 = var_88.Fields.Item("SNo")
  loc_17D2CDC:       Set var_144 = Me.LblDummy
  loc_17D2CE2:       Call 0.Method_Proc_338_100_17D48A80 (CInt(var_140.Value), var_148)
  loc_17D2CEA:       var_148.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_17D2D39:       Set var_B0 = Me.TxtPer
  loc_17D2D3F:       Call 0.Method_Proc_338_100_17D48A88 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17D2D59:       If (var_140 > CVar(var_96)) Then
  loc_17D2D8E:         Set var_B0 = Me.TxtPer
  loc_17D2D94:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17D2DA5:         Me.TxtPer.Load var_140
  loc_17D2DB8:       End If
  loc_17D2DFD:       If (var_88.Fields.Item("SNo").Value > CVar(UBound(global_192, 1))) Then
  loc_17D2E37:         ReDim Preserve global_192(0 To CLng(var_88.Fields.Item("SNo").Value))
  loc_17D2E4B:       End If
  loc_17D2E90:       If (var_88.Fields.Item("SNo").Value > CVar(UBound(global_196, 1))) Then
  loc_17D2ECA:         ReDim Preserve global_196(0 To CLng(var_88.Fields.Item("SNo").Value))
  loc_17D2EDE:       End If
  loc_17D2F42:       global_192(CLng(var_88.Fields.Item("SNo").Value)) = CStr(Trim(CVar(var_88.Fields.Item("PostYn"))))
  loc_17D2FA0:       var_140 = var_88.Fields.Item("SNo")
  loc_17D2FB8:       global_196(CLng(var_140.Value)) = CStr(var_88.Fields.Item("Nature").Value)
  loc_17D3006:       Set var_B0 = Me.TxtPer
  loc_17D300C:       Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D3014:       var_140.TabIndex = (var_8A + 1)
  loc_17D302D:       var_8A = (var_8A + 1)
  loc_17D3071:       var_140 = var_88.Fields.Item("SNo")
  loc_17D30B1:       Set var_144 = Me.TxtPer
  loc_17D30B7:       Call 0.Method_Proc_338_100_17D48A80 (CInt(var_140.Value), var_148, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_17D30BF:       var_148.Visible = var_8A
  loc_17D311E:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17D317D:         var_114 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D3186:         Set var_18C = Me.TxtPer
  loc_17D318C:         Call 0.Method_Proc_338_100_17D48A80 (CInt(True), var_190)
  loc_17D31CE:         var_E4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D31D7:         Set var_B0 = Me.TxtPer
  loc_17D31DD:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("Nature").Value), var_140)
  loc_17D3201:         Set var_1A0 = Me.TxtPer
  loc_17D3207:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_17D320F:         var_1A4.Top = ((var_140.Top + var_190.Height) + CDbl(&HF))
  loc_17D3238:       End If
  loc_17D3274:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17D32D3:         var_E4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D32DC:         Set var_B0 = Me.TxtPer
  loc_17D32E2:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("Nature").Value), var_140)
  loc_17D32FD:         Set var_18C = Me.TxtPer
  loc_17D3303:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_17D330B:         var_190.Left = var_140.Left
  loc_17D332A:       End If
  loc_17D3387:       var_148 = var_88.Fields.Item("SNo")
  loc_17D33D4:       Set var_18C = Me.TxtPer
  loc_17D33DA:       Call 0.Method_Proc_338_100_17D48A80 (CInt(var_148.Value), var_190)
  loc_17D33E2:       var_190.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_17D3455:       var_140 = var_88.Fields.Item("SNo")
  loc_17D346A:       Set var_144 = Me.TxtPer
  loc_17D3470:       Call 0.Method_Proc_338_100_17D48A80 (CInt(var_140.Value), var_148)
  loc_17D3478:       var_148.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_17D34CF:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D3506:         Set var_B0 = Me.TxtPer
  loc_17D350C:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D3514:         var_140.FontBold = True
  loc_17D352A:       Else
  loc_17D355E:         Set var_B0 = Me.TxtPer
  loc_17D3564:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D356C:         var_140.FontBold = False
  loc_17D357F:       End If
  loc_17D35B8:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D35EF:         Set var_B0 = Me.TxtPer
  loc_17D35F5:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D35FD:         var_140.Enabled = False
  loc_17D3613:       Else
  loc_17D3647:         Set var_B0 = Me.TxtPer
  loc_17D364D:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D3655:         var_140.Enabled = True
  loc_17D3668:       End If
  loc_17D366C:       Set var_90 = Me.TopCtrl1
  loc_17D3672:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_140)
  loc_17D368B:       If (CStr() = "Browse") Then
  loc_17D36C2:         Set var_B0 = Me.TxtPer
  loc_17D36C8:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D36D0:         var_140.Enabled = False
  loc_17D36E3:       End If
  loc_17D371F:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_17D3756:         Set var_B0 = Me.TxtPer
  loc_17D375C:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D3764:         var_140.Enabled = False
  loc_17D3777:       End If
  loc_17D37A8:       Set var_B0 = Me.LblCap
  loc_17D37AE:       Call 0.Method_Proc_338_100_17D48A88 (var_96)
  loc_17D37C8:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_17D37FD:         Set var_B0 = Me.LblCap
  loc_17D3803:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17D3814:         Me.LblCap.Load var_140
  loc_17D3827:       End If
  loc_17D385B:       Set var_B0 = Me.LblCap
  loc_17D3861:       Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D3869:       var_140.Visible = True
  loc_17D38D8:       Set var_B0 = Me.TxtPer
  loc_17D38DE:       Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D38F9:       Set var_18C = Me.LblCap
  loc_17D38FF:       Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_17D3907:       var_190.Top = var_140.Top
  loc_17D3962:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17D39A6:         var_148 = var_88.Fields.Item("SNo")
  loc_17D39C1:         var_E4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D39CA:         Set var_B0 = Me.LblCap
  loc_17D39D0:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D39EB:         Set var_18C = Me.LblCap
  loc_17D39F1:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_148.Value), var_190)
  loc_17D39F9:         var_190.Left = var_140.Left
  loc_17D3A18:       End If
  loc_17D3A78:       Set var_144 = Me.LblCap
  loc_17D3A7E:       Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_17D3A86:       var_148.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_17D3AEF:       var_140 = var_88.Fields.Item("SNo")
  loc_17D3B04:       Set var_144 = Me.LblCap
  loc_17D3B0A:       Call 0.Method_Proc_338_100_17D48A80 (CInt(var_140.Value), var_148)
  loc_17D3B12:       var_148.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_17D3B69:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D3BA0:         Set var_B0 = Me.LblCap
  loc_17D3BA6:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D3BAE:         var_140.FontBold = True
  loc_17D3BC4:       Else
  loc_17D3BF8:         Set var_B0 = Me.LblCap
  loc_17D3BFE:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D3C06:         var_140.FontBold = False
  loc_17D3C19:       End If
  loc_17D3C4A:       Set var_B0 = Me.LblAt
  loc_17D3C50:       Call 0.Method_Proc_338_100_17D48A88 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17D3C6A:       If (var_140 > CVar(var_96)) Then
  loc_17D3C9F:         Set var_B0 = Me.LblAt
  loc_17D3CA5:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17D3CB6:         Me.LblAt.Load var_140
  loc_17D3CC9:       End If
  loc_17D3D0A:       var_140 = var_88.Fields.Item("SNo")
  loc_17D3D4A:       Set var_144 = Me.LblAt
  loc_17D3D50:       Call 0.Method_Proc_338_100_17D48A80 (CInt(var_140.Value), var_148)
  loc_17D3D58:       var_148.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_17D3DBC:       var_148 = var_88.Fields.Item("SNo")
  loc_17D3DD7:       Set var_B0 = Me.TxtPer
  loc_17D3DDD:       Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D3DF8:       Set var_18C = Me.LblAt
  loc_17D3DFE:       Call 0.Method_Proc_338_100_17D48A80 (CInt(var_148.Value), var_190)
  loc_17D3E06:       var_190.Top = var_140.Top
  loc_17D3E5E:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D3E95:         Set var_B0 = Me.LblAt
  loc_17D3E9B:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D3EA3:         var_140.FontBold = True
  loc_17D3EB9:       Else
  loc_17D3EED:         Set var_B0 = Me.LblAt
  loc_17D3EF3:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D3EFB:         var_140.FontBold = False
  loc_17D3F0E:       End If
  loc_17D3F59:       var_140 = var_88.Fields.Item("SNo")
  loc_17D3F6E:       Set var_144 = Me.LblAt
  loc_17D3F74:       Call 0.Method_Proc_338_100_17D48A80 (CInt(var_140.Value), var_148)
  loc_17D3F7C:       var_148.Tag = CStr(var_88.Fields.Item("RoundOff").Value)
  loc_17D3FD6:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17D4035:         var_E4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D403E:         Set var_B0 = Me.LblAt
  loc_17D4044:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("RoundOff").Value), var_140)
  loc_17D405F:         Set var_18C = Me.LblAt
  loc_17D4065:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_17D406D:         var_190.Left = var_140.Left
  loc_17D408C:       End If
  loc_17D40BD:       Set var_B0 = Me.TxtGt
  loc_17D40C3:       Call 0.Method_Proc_338_100_17D48A88 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17D40DD:       If (var_140 > CVar(var_96)) Then
  loc_17D4112:         Set var_B0 = Me.TxtGt
  loc_17D4118:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17D4129:         Me.TxtGt.Load var_140
  loc_17D413C:       End If
  loc_17D4174:       Set var_B0 = Me.TxtGt
  loc_17D417A:       Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D4182:       var_140.TabIndex = (var_8A + 1)
  loc_17D419B:       var_8A = (var_8A + 1)
  loc_17D41D2:       Set var_B0 = Me.TxtGt
  loc_17D41D8:       Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140, &HFF)
  loc_17D41E0:       var_140.Visible = var_8A
  loc_17D424F:       Set var_B0 = Me.TxtPer
  loc_17D4255:       Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D4270:       Set var_18C = Me.TxtGt
  loc_17D4276:       Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_17D427E:       var_190.Top = var_140.Top
  loc_17D42D9:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17D4338:         var_E4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D4341:         Set var_B0 = Me.TxtGt
  loc_17D4347:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D4362:         Set var_18C = Me.TxtGt
  loc_17D4368:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_17D4370:         var_190.Left = var_140.Left
  loc_17D438F:       End If
  loc_17D43EC:       var_148 = var_88.Fields.Item("SNo")
  loc_17D4439:       Set var_18C = Me.TxtGt
  loc_17D443F:       Call 0.Method_Proc_338_100_17D48A80 (CInt(var_148.Value), var_190)
  loc_17D4447:       var_190.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_17D44B7:       var_140 = var_88.Fields.Item("SNo")
  loc_17D44CC:       Set var_144 = Me.TxtGt
  loc_17D44D2:       Call 0.Method_Proc_338_100_17D48A80 (CInt(var_140.Value), var_148)
  loc_17D44DA:       var_148.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")))
  loc_17D452F:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D4566:         Set var_B0 = Me.TxtGt
  loc_17D456C:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D4574:         var_140.FontBold = True
  loc_17D458A:       Else
  loc_17D45BE:         Set var_B0 = Me.TxtGt
  loc_17D45C4:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D45CC:         var_140.FontBold = False
  loc_17D45DF:       End If
  loc_17D4618:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D464F:         Set var_B0 = Me.TxtGt
  loc_17D4655:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D465D:         var_140.Enabled = False
  loc_17D4673:       Else
  loc_17D46A7:         Set var_B0 = Me.TxtGt
  loc_17D46AD:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D46B5:         var_140.Enabled = True
  loc_17D46C8:       End If
  loc_17D46FD:       Set var_B0 = Me.LblCap
  loc_17D4703:       Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D4734:       If (var_140.Tag = MemVar_1F95070 & "ROFF") Then
  loc_17D476B:         Set var_B0 = Me.TxtGt
  loc_17D4771:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D4779:         var_140.Enabled = False
  loc_17D478C:       End If
  loc_17D4790:       Set var_90 = Me.TopCtrl1
  loc_17D4796:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_140)
  loc_17D47AF:       If (CStr() = "Browse") Then
  loc_17D47E6:         Set var_B0 = Me.TxtGt
  loc_17D47EC:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D47F4:         var_140.Enabled = False
  loc_17D4807:       End If
  loc_17D4843:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_17D487A:         Set var_B0 = Me.TxtGt
  loc_17D4880:         Call 0.Method_Proc_338_100_17D48A80 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D4888:         var_140.Enabled = False
  loc_17D489B:       End If
  loc_17D489B:     End If
  loc_17D489E:     var_88.MoveNext
  loc_17D48A3:     GoTo loc_17D2B7B
  loc_17D48A6:   End If
  loc_17D48A6: End If
  loc_17D48A6: Exit Sub
End Sub

Public Sub Proc_338_101_17C1F88(arg_C) '17C1F88
  'Data Table: 598690
  Dim var_1A4 As Variant
  Dim var_C0 As String
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_D8 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_168 As Variant
  Dim unk_5986AD As Connection15
  Dim var_190 As Variant
  Dim var_194 As Variant
  Dim var_1A8 As Variant
  Dim var_B4 As Variant
  Dim var_2A8 As Double
  Dim var_1E0 As Variant
  Dim var_E8 As Variant
  Dim var_C8 As String
  Dim var_2B0 As Double
  Dim var_200 As Variant
  Dim var_220 As Variant
  Dim var_2B8 As Double
  Dim var_260 As Variant
  Dim var_280 As Variant
  Dim var_240 As Variant
  Dim var_18C As Variant
  Dim var_2D4 As Double
  Dim var_2C4 As Variant
  Dim var_2E8 As Variant
  Dim var_90 As Double
  Dim var_B0 As Recordset15
  Dim var_9C As Double
  Dim var_A8 As Double
  loc_17BFFA2: global_208 = CDbl(0)
  loc_17BFFB1: Set var_B4 = Me.TxtGt
  loc_17BFFB7: Call 0.Method_Proc_338_101_17C1F888 (var_B6, var_86)
  loc_17BFFC2: For var_BA = global_208 To var_B6: 1 = var_BA 'Integer
  loc_17C0002:   Set var_B4 = Me.LblCap
  loc_17C0008:   Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4, var_C8, CVar("Select IsNull(Max(Nature),'') from SundryType Where LOGSITE_CODE='" & MemVar_1F95078 & "' AND SundryCode='"), var_18C, -1)
  loc_17C0050:   unk_5986AD.Execute CStr(var_194 & Trim(CVar(var_C8)) & "' And V_Type='" & CVar(MemVar_1F95078) & "PURC'"), 0, var_1A8
  loc_17C0060:    = var_194.Item(global_208)
  loc_17C0068:    = var_1A8.Value
  loc_17C0075:   var_A0 = Proc_6_38_E69628(var_C4.Tag.Fields)
  loc_17C00A9:   If (var_A0 = "Addition") Then
  loc_17C00AC:     GoTo loc_17C0184
  loc_17C00AF:   End If
  loc_17C00B7:   If (var_A0 = "Deduction") Then
  loc_17C00BA:     GoTo loc_17C0184
  loc_17C00BD:   End If
  loc_17C00C5:   If (var_A0 = "Discount") Then
  loc_17C00D5:     Set var_B4 = Me.TxtGt
  loc_17C00DB:     Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4)
  loc_17C00E3:     var_C4.Text = vbNullString
  loc_17C00F4:     var_92 = CByte(var_86) 'Byte
  loc_17C00FB:   Else
  loc_17C011E:     If ((((var_A0 = "Sale Tax") Or (var_A0 = "CGST")) Or (var_A0 = "SGST")) Or (var_A0 = "IGST")) Then
  loc_17C012E:       Set var_B4 = Me.TxtGt
  loc_17C0134:       Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4)
  loc_17C013C:       var_C4.Text = vbNullString
  loc_17C014D:       var_94 = CByte(var_86) 'Byte
  loc_17C0157:       global_96 = var_86
  loc_17C015D:     Else
  loc_17C016A:       Set var_B4 = Me.TxtGt
  loc_17C0170:       Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4)
  loc_17C0178:       var_C4.Text = vbNullString
  loc_17C0184:     End If
  loc_17C0184:   End If
  loc_17C0184:   ' Referenced from: 17C00BA
  loc_17C0184:   ' Referenced from: 17C00AC
  loc_17C0187: Next var_BA 'Integer
  loc_17C019F: Me.FGCat.Rows = 1
  loc_17C01B3: Set var_B4 = Me.TxtGt
  loc_17C01B9: Call 0.Method_Proc_338_101_17C1F888 (var_B6, var_86)
  loc_17C01C4: For var_1BC =  To var_B6: 2 = var_1BC 'Integer
  loc_17C01D7:   Set var_B4 = Me.LblCap
  loc_17C01DD:   Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4)
  loc_17C0217:   Set var_190 = Me.LblCap
  loc_17C021D:   Call 0.Method_Proc_338_101_17C1F880 (var_86, var_194)
  loc_17C026A:   If CBool((Trim(CVar(var_C4.Tag)) = CVar(MemVar_1F95078 & "DIS")) And (Trim(CVar(var_194.Tag)) <> CVar(MemVar_1F95078 & "ADD"))) Then
  loc_17C027A:     Set var_B4 = Me.TxtGt
  loc_17C0280:     Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4)
  loc_17C0288:     var_C4.Text = vbNullString
  loc_17C029E:     If (var_94 > var_92) Then
  loc_17C02C6:       For var_1C0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_1C0 'Integer
  loc_17C02D9:         Set var_B4 = Me.LblCap
  loc_17C02DF:         Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4)
  loc_17C031A:         If (Trim(CVar(var_C4.Tag)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_17C0321:           var_118 = CVar(CLng(var_88)) 'Long
  loc_17C0329:           var_158 = CVar(CLng(&H14)) 'Long
  loc_17C0343:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_17C0354:           If (var_C0 = "Y") Then
  loc_17C035B:             var_118 = CVar(CLng(var_88)) 'Long
  loc_17C0375:             Set var_B4 = Me.TxtPer
  loc_17C037B:             Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4, var_C0, CVar(CLng(&HF)))
  loc_17C0383:             var_118 = var_C4.Text
  loc_17C0392:             var_D8 = CVar(CStr(Val(var_C0))) 'String
  loc_17C039A:             Set var_190 = Me.FGrid
  loc_17C03A0:             LateIdCallSt
  loc_17C03B7:           End If
  loc_17C03B7:         End If
  loc_17C03BB:         var_118 = CVar(CLng(var_88)) 'Long
  loc_17C03C3:         var_158 = CVar(CLng(5)) 'Long
  loc_17C03EC:         var_1A4 = CVar(CLng(var_88)) 'Long
  loc_17C03F4:         var_1E0 = CVar(CLng(9)) 'Long
  loc_17C041D:         var_200 = CVar(CLng(var_88)) 'Long
  loc_17C0425:         var_220 = CVar(CLng(&HF)) 'Long
  loc_17C044E:         var_260 = CVar(CLng(var_88)) 'Long
  loc_17C0456:         var_280 = CVar(CLng(&H10)) 'Long
  loc_17C047F:         var_108 = CVar((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_17C048F:         var_168 = CVar(CStr(Format(var_108, "0.00"))) 'String
  loc_17C0497:         Set var_194 = Me.FGrid
  loc_17C049D:         LateIdCallSt
  loc_17C04CE:         var_118 = CVar(CLng(var_88)) 'Long
  loc_17C04D6:         var_158 = CVar(CLng(&HF)) 'Long
  loc_17C0506:         If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_17C050D:           var_118 = CVar(CLng(var_88)) 'Long
  loc_17C0515:           var_158 = CVar(CLng(5)) 'Long
  loc_17C053E:           var_1A4 = CVar(CLng(var_88)) 'Long
  loc_17C0546:           var_1E0 = CVar(CLng(9)) 'Long
  loc_17C057C:           global_208 = (global_208 + (Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))
  loc_17C0594:         End If
  loc_17C0598:         var_1A4 = CVar(CLng(var_88)) 'Long
  loc_17C05A0:         var_1E0 = CVar(CLng(5)) 'Long
  loc_17C05C9:         var_200 = CVar(CLng(var_88)) 'Long
  loc_17C05D1:         var_220 = CVar(CLng(&HB)) 'Long
  loc_17C05DA:         var_118 = CVar(CLng(var_88)) 'Long
  loc_17C05E2:         var_158 = CVar(CLng(9)) 'Long
  loc_17C0612:         Set var_190 = Me.FGrid
  loc_17C0618:         LateIdCallSt
  loc_17C0645:         var_158 = CVar(CLng(&HB)) 'Long
  loc_17C0676:         Set var_C4 = Me.LblDummy
  loc_17C067C:         Call 0.Method_Proc_338_101_17C1F880 (var_86, var_190, CStr(Val(CStr(Me.FGrid.TextMatrix)))), var_158, CVar(CLng(var_88)), var_190, CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))))
  loc_17C0684:         var_190.Caption = var_158
  loc_17C06A0:         var_118 = CVar(CLng(var_88)) 'Long
  loc_17C06A8:         var_158 = CVar(CLng(&HB)) 'Long
  loc_17C06C2:         var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_17C06D1:         var_1A4 = CVar(CLng(var_88)) 'Long
  loc_17C06D9:         var_1E0 = CVar(CLng(&H10)) 'Long
  loc_17C06E2:         Set var_C4 = Me.FGrid
  loc_17C0702:         var_200 = CVar(CLng(var_88)) 'Long
  loc_17C070A:         var_220 = CVar(CLng(&H12)) 'Long
  loc_17C072C:         var_2B8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17C073B:         var_280 = CVar(CLng(&H13)) 'Long
  loc_17C0760:         var_108 = CVar(((Val(var_C0) - Val(CStr(var_C4.TextMatrix)))) + var_2B8)) 'Double
  loc_17C077E:         LateIdCallSt
  loc_17C07B8:         Set var_B4 = Me.LblCap
  loc_17C07BE:         Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4, var_C0, Me.FGrid, CVar(CStr(Format(var_108, "0.00"))), 1, 1)
  loc_17C07C6:         var_280 = var_C4.Tag
  loc_17C07F9:         If (Trim(CVar(var_C0)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_17C0809:           Set var_B4 = Me.TxtGt
  loc_17C080F:           Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4, var_C0, CVar(CLng(var_88)), var_2B8)
  loc_17C0817:           var_220 = var_C4.Text
  loc_17C082B:           var_118 = CVar(CLng(var_88)) 'Long
  loc_17C0855:           var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17C0874:           var_E8 = CVar((Val(var_C0) + var_2B0)) 'Double
  loc_17C0891:           Set var_194 = Me.TxtGt
  loc_17C0897:           Call 0.Method_Proc_338_101_17C1F880 (var_86, var_1A8, CStr(Format(Trim(CVar(var_C0)), "0.00")), 1, 1, var_2B0)
  loc_17C089F:           var_1A8.Text = CVar(CLng(&H10))
  loc_17C08C5:         End If
  loc_17C08C8:       Next var_1C0 'Integer
  loc_17C08D0:     Else
  loc_17C08F5:       For var_2BC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_88 = var_2BC 'Integer
  loc_17C0908:         Set var_B4 = Me.LblCap
  loc_17C090E:         Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4)
  loc_17C0949:         If (Trim(CVar(var_C4.Tag)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_17C0950:           var_118 = CVar(CLng(var_88)) 'Long
  loc_17C0958:           var_158 = CVar(CLng(&H14)) 'Long
  loc_17C0972:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_17C0983:           If (var_C0 = "Y") Then
  loc_17C098A:             var_118 = CVar(CLng(var_88)) 'Long
  loc_17C09A4:             Set var_B4 = Me.TxtPer
  loc_17C09AA:             Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4, var_C0, CVar(CLng(&HF)))
  loc_17C09B2:             var_118 = var_C4.Text
  loc_17C09C1:             var_D8 = CVar(CStr(Val(var_C0))) 'String
  loc_17C09C9:             Set var_190 = Me.FGrid
  loc_17C09CF:             LateIdCallSt
  loc_17C09E6:           End If
  loc_17C09E6:         End If
  loc_17C0A23:         Set var_C4 = Me.LblDummy
  loc_17C0A29:         Call 0.Method_Proc_338_101_17C1F880 (var_86, var_190, CStr(Val(CStr(Me.FGrid.TextMatrix)))), CVar(CLng(&HB)), CVar(CLng(var_88)))
  loc_17C0A31:         var_190.Caption = var_190
  loc_17C0A4D:         var_118 = CVar(CLng(var_88)) 'Long
  loc_17C0A55:         var_158 = CVar(CLng(&HB)) 'Long
  loc_17C0A7E:         var_1A4 = CVar(CLng(var_88)) 'Long
  loc_17C0A86:         var_1E0 = CVar(CLng(&HF)) 'Long
  loc_17C0A8F:         Set var_C4 = Me.FGrid
  loc_17C0AAF:         var_220 = CVar(CLng(var_88)) 'Long
  loc_17C0AB7:         var_240 = CVar(CLng(&H10)) 'Long
  loc_17C0AEC:         var_148 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(var_C4.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_17C0AF4:         Set var_190 = Me.FGrid
  loc_17C0AFA:         LateIdCallSt
  loc_17C0B25:         var_118 = CVar(CLng(var_88)) 'Long
  loc_17C0B2D:         var_158 = CVar(CLng(&HF)) 'Long
  loc_17C0B5D:         If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_17C0B64:           var_118 = CVar(CLng(var_88)) 'Long
  loc_17C0B6C:           var_158 = CVar(CLng(&HB)) 'Long
  loc_17C0B86:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_17C0B8E:           var_2A8 = Val(var_C0)
  loc_17C0B9E:           global_208 = (global_208 + var_2A8)
  loc_17C0BAA:         End If
  loc_17C0BB7:         Set var_B4 = Me.LblCap
  loc_17C0BBD:         Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4, var_C0, global_208, var_2A8, var_158, var_118)
  loc_17C0BC5:         var_158 = var_C4.Tag
  loc_17C0BF8:         If (Trim(CVar(var_C0)) = CVar(MemVar_1F95070 & "DIS")) Then
  loc_17C0C08:           Set var_B4 = Me.TxtGt
  loc_17C0C0E:           Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4, var_C0, var_118, var_190)
  loc_17C0C16:           var_148 = var_C4.Text
  loc_17C0C2A:           var_118 = CVar(CLng(var_88)) 'Long
  loc_17C0C54:           var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17C0C73:           var_E8 = CVar((Val(var_C0) + var_2B0)) 'Double
  loc_17C0C90:           Set var_194 = Me.TxtGt
  loc_17C0C96:           Call 0.Method_Proc_338_101_17C1F880 (var_86, var_1A8, CStr(Format(Trim(CVar(var_C0)), "0.00")), 1, 1, var_2B0)
  loc_17C0C9E:           var_1A8.Text = CVar(CLng(&H10))
  loc_17C0CC4:         End If
  loc_17C0CC7:       Next var_2BC 'Integer
  loc_17C0CCC:     End If
  loc_17C0CCC:   End If
  loc_17C0CCF: Next var_1BC 'Integer
  loc_17C0CF9: For var_2C0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2C0 'Integer
  loc_17C0D03:   var_118 = CVar(CLng(var_86)) 'Long
  loc_17C0D0B:   var_158 = CVar(CLng(5)) 'Long
  loc_17C0D34:   var_1A4 = CVar(CLng(var_86)) 'Long
  loc_17C0D3C:   var_1E0 = CVar(CLng(9)) 'Long
  loc_17C0D65:   var_220 = CVar(CLng(var_86)) 'Long
  loc_17C0D6D:   var_240 = CVar(CLng(&HB)) 'Long
  loc_17C0D9E:   var_148 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_17C0DA6:   Set var_190 = Me.FGrid
  loc_17C0DAC:   LateIdCallSt
  loc_17C0DE6:   var_118 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17C0DEE:   var_158 = CVar(CLng(6)) 'Long
  loc_17C0E26:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <= CDbl(0)) Then
  loc_17C0E3C:     var_118 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17C0E44:     var_158 = CVar(CLng(6)) 'Long
  loc_17C0E4D:     var_E8 = CVar(CStr(1)) 'String
  loc_17C0E55:     Set var_C4 = Me.FGrid
  loc_17C0E5B:     LateIdCallSt
  loc_17C0E71:   End If
  loc_17C0E84:   var_118 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17C0E8C:   var_158 = CVar(CLng(6)) 'Long
  loc_17C0E95:   Set var_C4 = Me.FGrid
  loc_17C0EA6:   var_C0 = CStr(var_C4.TextMatrix))
  loc_17C0EC4:   var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17C0ECC:   var_1E0 = CVar(CLng(5)) 'Long
  loc_17C0EF5:   Set var_1A8 = Me.FGrid
  loc_17C0F04:   var_220 = CVar(CLng(var_1A8.Row)) 'Long
  loc_17C0F0C:   var_240 = CVar(CLng(7)) 'Long
  loc_17C0F45:   Set var_2C4 = Me.FGrid
  loc_17C0F4B:   LateIdCallSt
  loc_17C0F8A:   Set var_B4 = Me.TxtGt
  loc_17C0F90:   Call 0.Method_Proc_338_101_17C1F880 (1, var_C4, var_C0, var_2C4, CVar(CStr(Format(CVar((Val(var_C0) * Val(CStr(Me.FGrid.TextMatrix))))), "0.000"))), 1, 1)
  loc_17C0F98:   var_240 = var_C4.Text
  loc_17C0FA5:   var_2A8 = Val(var_C0)
  loc_17C0FD6:   var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17C0FF5:   var_E8 = CVar((var_2A8 + var_2B0)) 'Double
  loc_17C1011:   Set var_194 = Me.TxtGt
  loc_17C1017:   Call 0.Method_Proc_338_101_17C1F880 (1, var_1A8, CStr(Format(var_C4.TextMatrix), "0.00")), 1, 1, var_2B0, CVar(CLng(&HB)))
  loc_17C101F:   var_1A8.Text = CVar(CLng(var_86))
  loc_17C1048: Next var_2C0 'Integer
  loc_17C1060: Me.FGCat.Rows = 1
  loc_17C108D: For var_2C8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2C8 'Integer
  loc_17C109D:   If (var_94 > var_92) Then
  loc_17C10A4:     var_118 = CVar(CLng(var_86)) 'Long
  loc_17C10AC:     var_158 = CVar(CLng(&H1A)) 'Long
  loc_17C10CB:     var_1A4 = CVar(CLng(var_86)) 'Long
  loc_17C10D3:     var_1E0 = CVar(CLng(9)) 'Long
  loc_17C10FC:     var_200 = CVar(CLng(var_86)) 'Long
  loc_17C1104:     var_220 = CVar(CLng(5)) 'Long
  loc_17C113E:     Set var_194 = Me.FGrid
  loc_17C1157:     var_2D4 = Val(CStr(var_194.TextMatrix)))
  loc_17C117A:     var_128 = CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) - var_2D4)) 'Double
  loc_17C1199:     Call Proc_338_105_1716BB0(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00")), 1, 1, var_2D4, CVar(CLng(&H10)), CVar(CLng(var_86)))
  loc_17C11C8:   Else
  loc_17C11CC:     var_118 = CVar(CLng(var_86)) 'Long
  loc_17C11D4:     var_158 = CVar(CLng(&H1A)) 'Long
  loc_17C11F3:     var_1A4 = CVar(CLng(var_86)) 'Long
  loc_17C11FB:     var_1E0 = CVar(CLng(9)) 'Long
  loc_17C1204:     Set var_C4 = Me.FGrid
  loc_17C124E:     var_2B8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17C128C:     Call Proc_338_105_1716BB0(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(CVar((Val(CStr(var_C4.TextMatrix))) * var_2B8)), "0.00")), 1, 1, var_2B8, CVar(CLng(5)), CVar(CLng(var_86)))
  loc_17C12B2:   End If
  loc_17C12B5: Next var_2C8 'Integer
  loc_17C12BE: Set var_B4 = Me.TopCtrl1
  loc_17C12C4: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_17C12DD: If (CStr() = "Add") Then
  loc_17C12EC:   Set var_B4 = Me.TxtGt
  loc_17C12F2:   Call 0.Method_Proc_338_101_17C1F888 (var_B6, var_86)
  loc_17C12FD:   For var_2D8 =  To var_B6: 2 = var_2D8 'Integer
  loc_17C1310:     Set var_B4 = Me.TxtPer
  loc_17C1316:     Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4)
  loc_17C131E:     var_B6 = var_C4.Visible
  loc_17C133A:     Set var_190 = Me.LblCap
  loc_17C1340:     Call 0.Method_Proc_338_101_17C1F880 (var_86, var_194)
  loc_17C1348:     var_C0 = var_194.Tag
  loc_17C137E:     Set var_1A8 = Me.LblCap
  loc_17C1384:     Call 0.Method_Proc_338_101_17C1F880 (var_86, var_2C4)
  loc_17C13B1:     var_2E8 = (var_B6 = &HFF) And (Trim(CVar(var_C0)) = CVar(MemVar_1F95078 & "SCH")) And (Trim(CVar(var_2C4.Tag)) <> CVar(MemVar_1F95078 & "ADD"))
  loc_17C13D7:     If CBool(var_2E8) Then
  loc_17C13E0:       Call Proc_338_102_119BE44(var_86)
  loc_17C13E8:       var_90 = var_2A8
  loc_17C13F8:       Set var_B4 = Me.TxtPer
  loc_17C13FE:       Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4, var_C0)
  loc_17C1406:       var_90 = var_C4.Text
  loc_17C1413:       var_2A8 = Val(var_C0)
  loc_17C1445:       var_C8 = CStr(Format(CVar(((var_90 * var_2A8) / CDbl(&H64))), "0.00"))
  loc_17C1453:       Set var_190 = Me.TxtGt
  loc_17C1459:       Call 0.Method_Proc_338_101_17C1F880 (var_86, var_194, var_C8, 1)
  loc_17C1461:       var_194.Text = 1
  loc_17C1493:       Set var_B4 = Me.LblDummy
  loc_17C1499:       Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4, CStr(var_90))
  loc_17C14A1:       var_C4.Caption = var_2A8
  loc_17C14B0:     End If
  loc_17C14B3:   Next var_2D8 'Integer
  loc_17C14B8: End If
  loc_17C14D7: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_17C14ED:   Me.FGCat.FixedRows = 1
  loc_17C14F5: End If
  loc_17C1523: For var_2EC = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_88 = var_2EC 'Integer
  loc_17C1535:   Set var_B4 = Me.TxtGt
  loc_17C153B:   Call 0.Method_Proc_338_101_17C1F888 (var_B6, var_86, 1)
  loc_17C1546:   For var_2F0 = CDbl(0) To var_B6: 0 = var_2F0 'Integer
  loc_17C1559:     Set var_B4 = Me.LblDummy
  loc_17C155F:     Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4)
  loc_17C1581:     var_118 = CVar(CLng(var_88)) 'Long
  loc_17C15B8:     Set var_194 = Me.LblCap
  loc_17C15BE:     Call 0.Method_Proc_338_101_17C1F880 (var_86, var_1A8, var_C8, (CVar(CLng(2)) = CVar(CStr(Me.FGCat.TextMatrix)))))
  loc_17C15C6:     var_118 = var_1A8.Tag
  loc_17C160F:     If CBool(Trim(CVar(var_C4.Tag)) And (Trim(CVar(var_C8)) <> CVar(MemVar_1F95078 & "ADD"))) Then
  loc_17C161F:       Set var_B4 = Me.TxtGt
  loc_17C1625:       Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4)
  loc_17C162D:       var_C0 = var_C4.Text
  loc_17C163A:       var_2A8 = Val(var_C0)
  loc_17C1641:       var_118 = CVar(CLng(var_88)) 'Long
  loc_17C1649:       var_158 = CVar(CLng(6)) 'Long
  loc_17C166B:       var_2B0 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_17C168A:       var_E8 = CVar((var_2A8 + var_2B0)) 'Double
  loc_17C16A7:       Set var_194 = Me.TxtGt
  loc_17C16AD:       Call 0.Method_Proc_338_101_17C1F880 (var_86, var_1A8, CStr(Format(Trim(CVar(var_C4.Tag)), "0.00")), 1, 1)
  loc_17C16B5:       var_1A8.Text = var_2B0
  loc_17C16DE:     Else
  loc_17C16EB:       Set var_B4 = Me.TxtPer
  loc_17C16F1:       Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4, var_B6, var_158)
  loc_17C16F9:       var_118 = var_C4.Visible
  loc_17C170B:       If (var_B6 = &HFF) Then
  loc_17C1714:         Call Proc_338_102_119BE44(var_86, var_2A8)
  loc_17C171C:         var_90 = var_2A8
  loc_17C172C:         Set var_B4 = Me.TxtPer
  loc_17C1732:         Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4, var_C0)
  loc_17C173A:         var_90 = var_C4.Text
  loc_17C1747:         var_2A8 = Val(var_C0)
  loc_17C1787:         Set var_190 = Me.TxtGt
  loc_17C178D:         Call 0.Method_Proc_338_101_17C1F880 (var_86, var_194, CStr(Format(CVar(((var_90 * var_2A8) / CDbl(&H64))), "0.00")), 1)
  loc_17C1795:         var_194.Text = 1
  loc_17C17C7:         Set var_B4 = Me.LblDummy
  loc_17C17CD:         Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4, CStr(var_90))
  loc_17C17D5:         var_C4.Caption = var_2A8
  loc_17C17E4:       End If
  loc_17C17E4:     End If
  loc_17C17E7:   Next var_2F0 'Integer
  loc_17C17EF: Next var_2EC 'Integer
  loc_17C1800: Set var_B4 = Me.TxtGt
  loc_17C1806: Call 0.Method_Proc_338_101_17C1F888 (var_B6, var_86)
  loc_17C1811: For var_2F4 =  To var_B6: 2 = var_2F4 'Integer
  loc_17C1824:   Set var_B4 = Me.LblCap
  loc_17C182A:   Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4)
  loc_17C183A:   var_D8 = CVar(var_C4.Tag) 'String
  loc_17C1865:   If (Trim(var_D8) = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_17C186E:     Call Proc_338_102_119BE44(var_86)
  loc_17C1876:     var_90 = var_2A8
  loc_17C1891:     Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4, CStr(var_90))
  loc_17C1899:     var_C4.Caption = var_90
  loc_17C18BE:     unk_5986AD.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Purchase Bill'", var_D8, -1
  loc_17C18C9:     Set var_B0 = Me.LblDummy
  loc_17C18E6:     If (var_B0.RecordCount > 0) Then
  loc_17C18F8:       var_B4 = var_B0.Fields
  loc_17C1900:       var_C4 = var_B4.Item("RoundOffType")
  loc_17C192C:       Proc_6_85_12628F0(var_90, CByte(2), CStr(Left(CVar(var_C4), 1)))
  loc_17C1969:       Set var_190 = Me.TxtGt
  loc_17C196F:       Call 0.Method_Proc_338_101_17C1F880 (var_86, var_194, CStr(Format(CVar(var_B4), "0.00")), 1)
  loc_17C1977:       var_194.Text = 1
  loc_17C199C:     Else
  loc_17C199F:       var_C0 = "S"
  loc_17C19B0:       Proc_6_85_12628F0(var_90, CByte(2), var_C0)
  loc_17C19DF:       var_C8 = CStr(Format(CVar(var_2A8), "0.00"))
  loc_17C19ED:       Set var_B4 = Me.TxtGt
  loc_17C19F3:       Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4, var_C8, 1)
  loc_17C19FB:       var_C4.Text = 1
  loc_17C1A17:     End If
  loc_17C1A1A:   Else
  loc_17C1A21:     If (var_86 <> arg_C) Then
  loc_17C1A31:       Set var_B4 = Me.LblCap
  loc_17C1A37:       Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4, var_C0)
  loc_17C1A3F:       var_2A8 = var_C4.Tag
  loc_17C1A71:       Set var_190 = Me.LblCap
  loc_17C1A77:       Call 0.Method_Proc_338_101_17C1F880 (var_86, var_194, var_C8)
  loc_17C1A7F:       (Trim(CVar(var_C0)) = CVar(MemVar_1F95078 & "TOT")) = var_194.Tag
  loc_17C1AC4:       If CBool(var_2A8 Or (Trim(CVar(var_C8)) = CVar(MemVar_1F95078 & "NET"))) Then
  loc_17C1ACD:         Call Proc_338_102_119BE44(var_86)
  loc_17C1B07:         Set var_B4 = Me.TxtGt
  loc_17C1B0D:         Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4, CStr(Format(CVar(var_2A8), "0.00")))
  loc_17C1B15:         var_C4.Text = 1
  loc_17C1B2D:       End If
  loc_17C1B2D:     End If
  loc_17C1B2D:   End If
  loc_17C1B30: Next var_2F4 'Integer
  loc_17C1B41: Set var_B4 = Me.TxtGt
  loc_17C1B47: Call 0.Method_Proc_338_101_17C1F888 (var_B6, var_86)
  loc_17C1B52: For var_2FC =  To var_B6: 1 = var_2FC 'Integer
  loc_17C1B63:   var_300 = global_196(CLng(var_86))
  loc_17C1B6E:   If Not (var_300 = "Addition") Then
  loc_17C1B79:     If Not (var_300 = "Deduction") Then
  loc_17C1B84:       If Not (var_300 = "Discount") Then
  loc_17C1B8F:         If Not (var_300 = "Luxury Tax") Then
  loc_17C1B9A:           If Not (var_300 = "Sale Tax") Then
  loc_17C1BA5:             If Not (var_300 = "Service Charge") Then
  loc_17C1BB0:               If (var_300 = "Service Tax") Then
  loc_17C1BB3:               End If
  loc_17C1BB3:             End If
  loc_17C1BB3:           End If
  loc_17C1BB3:         End If
  loc_17C1BB3:       End If
  loc_17C1BB3:     End If
  loc_17C1BC3:     If (global_192(CLng(var_86)) = "No") Then
  loc_17C1BCD:       Set var_B4 = Me.TxtGt
  loc_17C1BD3:       Call 0.Method_Proc_338_101_17C1F888 (var_B6)
  loc_17C1BE5:       Set var_C4 = Me.TxtGt
  loc_17C1BEB:       Call 0.Method_Proc_338_101_17C1F880 (var_B6, var_190)
  loc_17C1BFF:       Set var_194 = Me.TxtGt
  loc_17C1C05:       Call 0.Method_Proc_338_101_17C1F888 (var_302)
  loc_17C1C17:       Set var_1A8 = Me.TxtGt
  loc_17C1C1D:       Call 0.Method_Proc_338_101_17C1F880 (var_302, var_2C4)
  loc_17C1C55:       var_F8 = Mid(CVar(var_190.Tag), (InStr(1, var_2C4.Tag, CStr(var_86), 0) - 1), 1)
  loc_17C1C5D:       var_138 = "-"
  loc_17C1C84:       If (Format(CVar(var_2A8), "0.00") = "0.00") Then
  loc_17C1C94:         Set var_B4 = Me.TxtGt
  loc_17C1C9A:         Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4)
  loc_17C1CA2:         var_C0 = var_C4.Text
  loc_17C1CB9:         var_9C = (var_9C - Val(var_C0))
  loc_17C1CC9:       Else
  loc_17C1CD6:         Set var_B4 = Me.TxtGt
  loc_17C1CDC:         Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4, var_C0)
  loc_17C1CE4:         var_9C = var_C4.Text
  loc_17C1CFB:         var_9C = (var_9C + Val(var_C0))
  loc_17C1D08:       End If
  loc_17C1D08:     End If
  loc_17C1D0F:     Set var_B4 = Me.TxtGt
  loc_17C1D15:     Call 0.Method_Proc_338_101_17C1F888 (var_B6, var_9C)
  loc_17C1D27:     Set var_C4 = Me.TxtGt
  loc_17C1D2D:     Call 0.Method_Proc_338_101_17C1F880 (var_B6, var_190, var_C0)
  loc_17C1D35:     var_2A8 = var_190.Tag
  loc_17C1D41:     Set var_194 = Me.TxtGt
  loc_17C1D47:     Call 0.Method_Proc_338_101_17C1F888 (var_302)
  loc_17C1D59:     Set var_1A8 = Me.TxtGt
  loc_17C1D5F:     Call 0.Method_Proc_338_101_17C1F880 (var_302, var_2C4)
  loc_17C1D97:     var_F8 = Mid(CVar(var_C0), (InStr(1, var_2C4.Tag, CStr(var_86), 0) - 1), 1)
  loc_17C1D9F:     var_138 = "-"
  loc_17C1DC6:     If (Format(CVar(var_2A8), "0.00") = "0.00") Then
  loc_17C1DD6:       Set var_B4 = Me.TxtGt
  loc_17C1DDC:       Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4)
  loc_17C1DE4:       var_C0 = var_C4.Text
  loc_17C1DFB:       var_A8 = (var_A8 - Val(var_C0))
  loc_17C1E0B:     Else
  loc_17C1E18:       Set var_B4 = Me.TxtGt
  loc_17C1E1E:       Call 0.Method_Proc_338_101_17C1F880 (var_86, var_C4, var_C0)
  loc_17C1E26:       var_A8 = var_C4.Text
  loc_17C1E3D:       var_A8 = (var_A8 + Val(var_C0))
  loc_17C1E4A:     End If
  loc_17C1E4A:   End If
  loc_17C1E4D: Next var_2FC 'Integer
  loc_17C1E6C: Set var_C4 = Me.TxtGt
  loc_17C1E72: Call 0.Method_Proc_338_101_17C1F888 (var_B6)
  loc_17C1E84: Set var_190 = Me.TxtGt
  loc_17C1E8A: Call 0.Method_Proc_338_101_17C1F880 (var_B6, var_194)
  loc_17C1E92: var_C0 = var_194.Text
  loc_17C1ED1: Call Proc_338_110_10B260C(CByte((CLng(Me.FGrid.Rows) - 1)), CByte(1), &HB, var_9C)
  loc_17C1EF1: var_D8 = Me.FGrid.Rows
  loc_17C1F01: Set var_C4 = Me.TxtGt
  loc_17C1F07: Call 0.Method_Proc_338_101_17C1F888 (var_B6, var_D8, Val(var_C0))
  loc_17C1F19: Set var_190 = Me.TxtGt
  loc_17C1F1F: Call 0.Method_Proc_338_101_17C1F880 (var_B6, var_194, var_C0)
  loc_17C1F27: &H20 = var_194.Text
  loc_17C1F66: Call Proc_338_110_10B260C(CByte((CLng(var_D8) - 1)), CByte(1), &HB, var_A8, Val(var_C0))
  loc_17C1F81: Set var_B0 = Nothing
  loc_17C1F84: Exit Sub
End Sub

Public Sub Proc_338_102_119BE44(arg_C) '119BE44
  'Data Table: 598690
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_B0 As String
  Dim var_13C As Double
  Dim var_A0 As Double
  Dim var_8C As Double
  Dim var_92 As Integer
  Dim var_17C As TextBox
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  loc_119BA65: Set var_A8 = Me.TxtGt
  loc_119BA6B: Call 0.Method_Proc_338_102_119BE440 (arg_C, var_AC)
  loc_119BA8A: var_90 = CStr(Trim(CVar(var_AC.Tag)))
  loc_119BAA8: Set var_A8 = Me.LblCap
  loc_119BAAE: Call 0.Method_Proc_338_102_119BE440 (arg_C, var_AC)
  loc_119BAE9: If (Trim(CVar(var_AC.Tag)) = CVar(MemVar_1F95070 & "SCH")) Then
  loc_119BB11:   For var_F4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_F4 'Integer
  loc_119BB1B:     var_104 = CVar(CLng(var_A2)) 'Long
  loc_119BB23:     var_124 = CVar(CLng(&H1F)) 'Long
  loc_119BB4E:     If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_119BB55:       var_104 = CVar(CLng(var_A2)) 'Long
  loc_119BB5D:       var_124 = CVar(CLng(&HB)) 'Long
  loc_119BB89:       var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_119BB95:     End If
  loc_119BB98:   Next var_F4 'Integer
  loc_119BB9D: End If
  loc_119BBA7: If (Len(var_90) > 0) Then
  loc_119BBD9:   Set var_A8 = Me.LblCap
  loc_119BBDF:   Call 0.Method_Proc_338_102_119BE440 (arg_C, var_AC)
  loc_119BC24:   If CBool((Left(var_90, 1) = "1") And (Trim(CVar(var_AC.Tag)) = CVar(MemVar_1F95070 & "SCH"))) Then
  loc_119BC2A:     var_8C = var_A0
  loc_119BC30:   Else
  loc_119BC62:     Set var_A8 = Me.TxtGt
  loc_119BC68:     Call 0.Method_Proc_338_102_119BE440 (CInt(Val(CStr(Left(var_90, 1)))), var_AC, var_170)
  loc_119BC70:     var_13C = var_AC.Text
  loc_119BC7D:     var_8C = Val(var_170)
  loc_119BC91:   End If
  loc_119BC97:   Call Proc_338_83_E85E74(var_90)
  loc_119BCBC:   var_90 = CStr(Mid(var_90, CLng(var_172), CVar(Len(var_90))))
  loc_119BCC6:   ' Referenced from: 119BE3B
  loc_119BCD0:   If (Len(var_90) > 0) Then
  loc_119BCF8:     Call Proc_338_83_E85E74(var_90)
  loc_119BD17:     var_D0 = Mid(var_90, CLng((var_172 + 1)), CVar(Len(var_90)))
  loc_119BD20:     var_90 = CStr(Mid(var_90, CLng(var_172), CVar(Len(var_90))))
  loc_119BD30:     Call Proc_338_83_E85E74(var_90)
  loc_119BD47:     var_C0 = Left(var_90, CLng((var_172 - 1)))
  loc_119BD4F:     var_B0 = CStr(CVar(Len(var_90)))
  loc_119BD59:     var_92 = CInt(Val(var_B0))
  loc_119BD68:     Call Proc_338_83_E85E74(var_90)
  loc_119BD8D:     var_90 = CStr(Mid(var_90, CLng(var_172), CVar(Len(var_90))))
  loc_119BDA4:     Set var_A8 = Me.TxtGt
  loc_119BDAA:     Call 0.Method_Proc_338_102_119BE440 (var_92, var_AC, var_B0, var_172, var_92)
  loc_119BDB2:     var_172 = var_AC.Text
  loc_119BDBF:     var_13C = Val(var_B0)
  loc_119BDD6:     Set var_178 = Me.TxtGt
  loc_119BDDC:     Call 0.Method_Proc_338_102_119BE440 (var_92, var_17C, var_170, CVar(var_8C), var_13C)
  loc_119BDF2:     var_D0 = CVar(-Val(var_170)) 'Double
  loc_119BE05:     var_104 = (CStr(Left(var_90, 1)) = "+")
  loc_119BE14:     var_F0 = (var_17C.Text + IIf(var_90, CVar(var_13C), Mid(var_90, CLng(var_17C.Text), CVar(Len(var_90)))))
  loc_119BE19:     var_8C = CSng(Trim(CVar(var_AC.Tag)))
  loc_119BE3B:     GoTo loc_119BCC6
  loc_119BE3E:   End If
  loc_119BE3E: End If
  loc_119BE3E: Proc_338_102_119BE44 = var_8C
End Sub

Public Sub Proc_338_103_103B69C(arg_C, arg_10, arg_14) '103B69C
  'Data Table: 598690
  Dim var_8A As Integer
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Variant
  Dim var_1D0 As Variant
  Dim var_F0 As Variant
  loc_103B47D: var_88 = vbNullString
  loc_103B494: arg_C = CStr(Trim(arg_C))
  loc_103B4A0: var_8A = CInt(Len(arg_C))
  loc_103B4A6: var_C0 = arg_10
  loc_103B4B1: If (var_C0 = "A") Then
  loc_103B4E6:   var_E0 = (Chr(&H12) + Chr(&HE))
  loc_103B4FA:   var_100 = (var_E0 + Chr(&H1B))
  loc_103B503:   var_110 = (var_100 + "G")
  loc_103B510:   var_130 = (CVar(Int((CDbl(arg_14) / CDbl(2)))) - CVar(var_8A))
  loc_103B52A:   var_170 = (var_110 + Space(CLng((var_130 / 2))))
  loc_103B534:   var_190 = (var_170 + CVar(arg_C))
  loc_103B548:   var_1B0 = (var_190 + Chr(&H1B))
  loc_103B551:   var_1D0 = (var_1B0 + "H")
  loc_103B556:   var_88 = CStr(var_1D0)
  loc_103B577: Else
  loc_103B57F:   If (var_C0 = "D") Then
  loc_103B5B4:     var_E0 = (Chr(&HE) + Chr(&HF))
  loc_103B5C1:     var_F0 = (CVar(Int((CDbl(arg_14) / CDbl(2)))) - CVar(var_8A))
  loc_103B5DB:     var_130 = (var_E0 + Space(CLng((Chr(&H1B) / 2))))
  loc_103B5E5:     var_150 = (var_130 + CVar(arg_C))
  loc_103B5EA:     var_88 = CStr((var_130 / 2))
  loc_103B5FF:   Else
  loc_103B607:     If (var_C0 = "E") Then
  loc_103B634:       var_E0 = (Chr(&H12) + Chr(&HF))
  loc_103B641:       var_F0 = (CVar(arg_14) - CVar(var_8A))
  loc_103B65B:       var_130 = (var_E0 + Space(CLng((Chr(&H1B) / 2))))
  loc_103B665:       var_150 = (var_130 + CVar(arg_C))
  loc_103B679:       var_170 = ((var_130 / 2) + Chr(&H12))
  loc_103B67E:       var_88 = CStr(var_170)
  loc_103B694:     End If
  loc_103B694:   End If
  loc_103B694: End If
  loc_103B694: Proc_338_103_103B69C = var_8A
End Sub

Public Sub Proc_338_104_1271408(arg_C, arg_10, arg_14) '1271408
  'Data Table: 598690
  Dim var_E8 As String
  Dim var_13C As Variant
  Dim var_16C As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_26C As Variant
  Dim unk_5986AD As Connection15
  Dim var_E4 As Variant
  Dim var_19C As Variant
  Dim var_24C As Variant
  Dim var_18C As Variant
  Dim var_A0 As Recordset15
  Dim var_270 As Fields15
  Dim var_D4 As Variant
  Dim var_290 As Double
  Dim arg_10 As Integer
  loc_1270EC9: var_90 = vbNullString
  loc_1270ECF: var_94 = vbNullString
  loc_1270ED5: var_98 = vbNullString
  loc_1270EDB: var_9C = vbNullString
  loc_1270EE6: If (MemVar_1F953C4 = "Y") Then
  loc_1270EF0:   var_E8 = vbNullString & "DATE "
  loc_1270F21:   var_8C = 1 & CStr(Format(MemVar_1F950EC, "dd/MM/yy"))
  loc_1270F34: End If
  loc_1270F3C: If (MemVar_1F953C8 = "Y") Then
  loc_1270F4E:   var_D4 = "dd/MM/yy"
  loc_1270FA0:   var_16C = (CVar(arg_14) - IIf((MemVar_1F953C4 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F950EC, var_D4)))), 0))
  loc_1270FC7:   var_1BC = (" PAGE NO " + Trim(Str(arg_C)))
  loc_1270FCF:   var_1DC = (var_16C - Len(var_1BC))
  loc_1270FE0:   var_20C = (CVar(var_8C) + Space(CLng(var_1DC)))
  loc_1270FE9:   var_22C = (var_20C + " PAGE NO ")
  loc_127100B:   var_26C = (var_22C + Trim(Str(arg_C)))
  loc_1271010:   var_8C = CStr(var_26C)
  loc_127103D: End If
  loc_127106A: unk_5986AD.Execute "Select R.HEADER1,R.HEADER2 From DEPART R  Where R.CODE='" & global_56 & "'", var_D4, -1
  loc_1271075: Set var_A0 = var_270
  loc_127108C: If (MemVar_1F953CC = "K") Then
  loc_1271099:   If (Len(MemVar_1F95130) <= &H28) Then
  loc_12710B2:     var_E4 = (CVar(var_90) + Chr(&HF))
  loc_12710C6:     var_13C = (Format(MemVar_1F950EC, Chr(&HF)) + Chr(&HE))
  loc_12710DA:     var_16C = (0 + Chr(&H1B))
  loc_12710EE:     var_19C = (var_16C + Chr(&H45))
  loc_12710F8:     var_1BC = (Trim(Str(arg_C)) + CVar(MemVar_1F95130))
  loc_127110C:     var_1DC = (var_1BC + Chr(&H1B))
  loc_1271120:     var_20C = (var_1DC + Chr(&H46))
  loc_1271134:     var_24C = (var_20C + Chr(&HE))
  loc_1271139:     var_90 = CStr(Str(arg_C))
  loc_1271160:   Else
  loc_1271176:     var_E4 = (CVar(var_90) + Chr(&H12))
  loc_127118A:     var_13C = (Format(MemVar_1F950EC, Chr(&H12)) + Chr(&HE))
  loc_127119E:     var_16C = (0 + Chr(&HF))
  loc_12711A8:     var_18C = (var_16C + CVar(MemVar_1F95130))
  loc_12711BC:     var_1BC = (Chr(&H45) + Chr(&H12))
  loc_12711C1:     var_90 = CStr(var_1BC)
  loc_12711D9:   End If
  loc_12711ED:   If (var_A0.RecordCount > 0) Then
  loc_12711FF:     var_270 = var_A0.Fields
  loc_1271229:     If (Proc_6_38_E69628(CVar(var_270.Item("Header1")), var_270, 1) <> vbNullString) Then
  loc_1271260:       var_290 = Val(CStr(arg_14))
  loc_1271281:       Call Proc_338_103_103B69C(CStr(var_A0.Fields.Item("Header1").Value), "D", CInt(var_290))
  loc_127128A:       var_94 = var_288 & var_288
  loc_12712A2:     End If
  loc_12712DB:     If (Proc_6_38_E69628(CVar(var_A0.Fields.Item("Header2")), var_94, var_290) <> vbNullString) Then
  loc_1271333:       Call Proc_338_103_103B69C(CStr(var_A0.Fields.Item("Header2").Value), "D", CInt(Val(CStr(arg_14))))
  loc_127133C:       var_98 = var_288 & var_288
  loc_1271354:     End If
  loc_1271354:   End If
  loc_1271354: End If
  loc_127135E: If (Len(var_8C) > 0) Then
  loc_1271366:   Print 1, var_8C
  loc_1271372:   arg_10 = (arg_10 + 1)
  loc_1271375: End If
  loc_127137F: If (Len(var_90) > 0) Then
  loc_1271387:   Print 1, var_90
  loc_1271393:   arg_10 = (arg_10 + 1)
  loc_1271396: End If
  loc_12713A0: If (Len(var_94) > 0) Then
  loc_12713A8:   Print 1, var_94
  loc_12713B4:   arg_10 = (arg_10 + 1)
  loc_12713B7: End If
  loc_12713C1: If (Len(var_98) > 0) Then
  loc_12713C9:   Print 1, var_98
  loc_12713D5:   arg_10 = (arg_10 + 1)
  loc_12713D8: End If
  loc_12713E2: If (Len(var_9C) > 0) Then
  loc_12713EA:   Print 1, var_9C
  loc_12713F6:   arg_10 = (arg_10 + 1)
  loc_12713F9: End If
  loc_12713FF: Proc_338_104_1271408 = arg_10
End Sub

Public Sub Proc_338_105_1716BB0(arg_C, arg_10, arg_14) '1716BB0
  'Data Table: 598690
  Dim var_D8 As String
  Dim unk_5986AD As Connection15
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_EC As Variant
  Dim var_D2 As Integer
  Dim var_100 As Variant
  Dim var_FC As Variant
  Dim var_130 As Variant
  Dim var_11C As Variant
  Dim var_C0 As Recordset15
  Dim var_140 As Variant
  Dim var_178 As Variant
  Dim var_18C As Variant
  Dim var_1C0 As Variant
  Dim var_1E0 As Variant
  Dim var_D0 As Double
  Dim var_1F4 As Double
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_160 As Variant
  Dim var_10C As MSHFlexGrid
  Dim var_1E8 As Double
  Dim var_9C As Double
  Dim var_260 As Double
  Dim var_1B0 As Variant
  loc_1715000: var_D8 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_1715010: unk_5986AD.Execute var_D8 & "'", var_FC, -1
  loc_171501B: Set var_8C = var_100
  loc_171502E: var_94 = arg_14
  loc_1715033: var_86 = 1
  loc_1715039: var_A8 = var_94
  loc_171503F: var_B0 = var_94
  loc_1715045: var_B8 = CDbl(0)
  loc_171505C: If (var_8C.RecordCount > 0) Then
  loc_171505F:   ' Referenced from: 1716B93
  loc_171506E:   If Not(var_8C.EOF) Then
  loc_1715075:     Set var_10C = Me.FGCat
  loc_1715078:     var_EC = vbNullString
  loc_171509D:     If (var_8C.RecordCount > 0) Then
  loc_17150A6:       var_D2 = (var_D2 + 1)
  loc_17150AC:       var_EC = "Nature"
  loc_17150DF:       var_150 = Trim(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_EC)), var_D2, FGCat.DispID_10000, var_EC, var_B8))) 'Variant
  loc_17150F8:       If (var_150 = "On Base Amt") Then
  loc_1715123:         var_130 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CondApp")), var_B0, var_A8)) 'String
  loc_1715145:         If (Trim(var_130) = "Room Rate") Then
  loc_1715153:           If (global_232 = "Room Service") Then
  loc_171517C:             Proc_6_39_E7D3A0(var_130, CVar(var_8C.Fields.Item("Limit")), var_86)
  loc_17151AA:             Proc_6_39_E7D3A0(var_160, CVar(var_C0.Fields.Item("RoomRate")), var_130)
  loc_17151DC:             Proc_6_39_E7D3A0(var_1B0, CVar(var_8C.Fields.Item("Rate")))
  loc_171520C:             If CBool((var_94 <= var_160) And (var_1B0 > 0)) Then
  loc_171524B:               If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1715289:                 var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_171529C:               Else
  loc_17152CF:                 var_1F4 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_17152F8:                 Proc_6_142_14A62A0(((var_1F4 * var_A8) / CDbl(&H64)), CByte(0), "U", 2)
  loc_17152FD:                 var_D0 = var_1F4
  loc_1715311:               End If
  loc_1715318:               If (var_D0 > CDbl(0)) Then
  loc_1715334:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171533C:                 var_18C = CVar(CLng(0)) 'Long
  loc_1715346:                 var_130 = CVar(CStr(var_86)) 'String
  loc_171534D:                 LateIdCallSt
  loc_1715378:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715380:                 var_18C = CVar(CLng(1)) 'Long
  loc_171538A:                 var_130 = CVar(CStr(arg_10)) 'String
  loc_1715391:                 LateIdCallSt
  loc_17153BC:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17153C4:                 var_1C0 = CVar(CLng(2)) 'Long
  loc_17153F4:                 var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_17153FB:                 LateIdCallSt
  loc_171542E:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715436:                 var_1C0 = CVar(CLng(3)) 'Long
  loc_1715466:                 var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_171546D:                 LateIdCallSt
  loc_17154A0:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17154A8:                 var_18C = CVar(CLng(4)) 'Long
  loc_17154B2:                 var_130 = CVar(CStr(var_A8)) 'String
  loc_17154B9:                 LateIdCallSt
  loc_17154E4:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17154EC:                 var_1C0 = CVar(CLng(5)) 'Long
  loc_171551C:                 var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1715523:                 LateIdCallSt
  loc_171557D:                 var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715585:                 var_234 = CVar(CLng(6)) 'Long
  loc_171558A:                 var_178 = 2
  loc_17155C9:                 var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_178))))) 'String
  loc_17155D0:                 LateIdCallSt
  loc_17155F7:               Else
  loc_17155FD:                 var_86 = (var_86 - 1)
  loc_1715613:                 var_EC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1715629:               End If
  loc_1715642:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171564A:               var_18C = CVar(CLng(6)) 'Long
  loc_171566F:               var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_1715698:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17156A0:               var_18C = CVar(CLng(6)) 'Long
  loc_17156BB:               var_1E8 = Val(CStr(var_10C.TextMatrix)))
  loc_17156C5:               var_94 = (var_94 + var_1E8)
  loc_17156DC:               var_B0 = (var_B0 + var_D0)
  loc_17156E2:               var_B8 = var_D0
  loc_17156EC:               var_B0 = (var_B0 + var_D0)
  loc_17156F2:               var_B8 = var_D0
  loc_17156F5:             End If
  loc_17156F5:           End If
  loc_17156F8:         Else
  loc_1715734:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1715772:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_1715785:           Else
  loc_17157A7:             var_130 = var_8C.Fields.Item("Rate").Value
  loc_17157E1:             Proc_6_142_14A62A0(((Val(CStr(var_130)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_130)), var_D0, var_B8, var_B0)
  loc_17157E6:             var_260 = var_B8
  loc_1715828:             var_D0 = (((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)) + var_260)
  loc_1715846:           End If
  loc_171586C:           Proc_6_39_E7D3A0(var_130, CVar(var_8C.Fields.Item("Limit")), var_D0, var_260, var_B0)
  loc_17158A6:           Proc_6_39_E7D3A0(var_178, CVar(var_8C.Fields.Item("Rate")), (var_130 <= CVar(var_94)), var_94)
  loc_17158D0:           If CBool(var_1E8 And (var_178 > 0)) Then
  loc_17158DA:             If (var_D0 > CDbl(0)) Then
  loc_17158F6:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17158FE:               var_18C = CVar(CLng(0)) 'Long
  loc_1715908:               var_130 = CVar(CStr(var_86)) 'String
  loc_171590F:               LateIdCallSt
  loc_171593A:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715942:               var_18C = CVar(CLng(1)) 'Long
  loc_171594C:               var_130 = CVar(CStr(arg_10)) 'String
  loc_1715953:               LateIdCallSt
  loc_171597E:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715986:               var_1C0 = CVar(CLng(2)) 'Long
  loc_17159B6:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_17159BD:               LateIdCallSt
  loc_17159F0:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17159F8:               var_1C0 = CVar(CLng(3)) 'Long
  loc_1715A28:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1715A2F:               LateIdCallSt
  loc_1715A62:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715A6A:               var_18C = CVar(CLng(4)) 'Long
  loc_1715A74:               var_130 = CVar(CStr(var_A8)) 'String
  loc_1715A7B:               LateIdCallSt
  loc_1715AA6:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715AAE:               var_1C0 = CVar(CLng(5)) 'Long
  loc_1715ADE:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1715AE5:               LateIdCallSt
  loc_1715B3F:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715B47:               var_234 = CVar(CLng(6)) 'Long
  loc_1715B8B:               var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_1715B92:               LateIdCallSt
  loc_1715BB6:             End If
  loc_1715BCF:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715BD7:             var_18C = CVar(CLng(6)) 'Long
  loc_1715BFC:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_1715C25:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715C2D:             var_18C = CVar(CLng(6)) 'Long
  loc_1715C35:             var_130 = var_10C.TextMatrix)
  loc_1715C48:             var_1E8 = Val(CStr(var_130))
  loc_1715C52:             var_94 = (var_94 + var_1E8)
  loc_1715C69:             var_B0 = (var_B0 + var_D0)
  loc_1715C6F:             var_B8 = var_D0
  loc_1715C72:           End If
  loc_1715C72:         End If
  loc_1715C75:       Else
  loc_1715C80:         If (var_150 = "On Running Total") Then
  loc_1715CBF:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1715CFD:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_1715D10:           Else
  loc_1715D6C:             Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1715D71:             var_D0 = var_94
  loc_1715D85:           End If
  loc_1715DAB:           Proc_6_39_E7D3A0(var_130, CVar(var_8C.Fields.Item("Rate")), var_D0, var_1E8, var_18C)
  loc_1715DC5:           If (var_130 > 0) Then
  loc_1715DCF:             If (var_D0 > CDbl(0)) Then
  loc_1715DEB:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715DF3:               var_18C = CVar(CLng(0)) 'Long
  loc_1715DFD:               var_130 = CVar(CStr(var_86)) 'String
  loc_1715E04:               LateIdCallSt
  loc_1715E2F:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715E37:               var_18C = CVar(CLng(1)) 'Long
  loc_1715E41:               var_130 = CVar(CStr(arg_10)) 'String
  loc_1715E48:               LateIdCallSt
  loc_1715E73:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715E7B:               var_1C0 = CVar(CLng(2)) 'Long
  loc_1715EAB:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1715EB2:               LateIdCallSt
  loc_1715EE5:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715EED:               var_1C0 = CVar(CLng(3)) 'Long
  loc_1715F1D:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1715F24:               LateIdCallSt
  loc_1715F57:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715F5F:               var_18C = CVar(CLng(4)) 'Long
  loc_1715F69:               var_130 = CVar(CStr(var_B0)) 'String
  loc_1715F70:               LateIdCallSt
  loc_1715F9B:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715FA3:               var_1C0 = CVar(CLng(5)) 'Long
  loc_1715FD3:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1715FDA:               LateIdCallSt
  loc_1716034:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171603C:               var_234 = CVar(CLng(6)) 'Long
  loc_1716080:               var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_1716087:               LateIdCallSt
  loc_17160AB:             End If
  loc_17160C4:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17160CC:             var_18C = CVar(CLng(6)) 'Long
  loc_17160F1:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_171611A:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1716122:             var_18C = CVar(CLng(6)) 'Long
  loc_1716147:             var_94 = (var_94 + Val(CStr(var_10C.TextMatrix))))
  loc_171615E:             var_B0 = (var_B0 + var_D0)
  loc_1716164:             var_B8 = var_D0
  loc_1716167:           End If
  loc_171616A:         Else
  loc_1716175:           If (var_150 = "On Prev. Tax Amt") Then
  loc_17161B4:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_17161F2:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_1716205:             Else
  loc_1716261:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1716266:               var_D0 = var_94
  loc_171627A:             End If
  loc_1716281:             If (var_D0 > CDbl(0)) Then
  loc_171629D:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17162A5:               var_18C = CVar(CLng(0)) 'Long
  loc_17162AF:               var_130 = CVar(CStr(var_86)) 'String
  loc_17162B6:               LateIdCallSt
  loc_17162E1:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17162E9:               var_18C = CVar(CLng(1)) 'Long
  loc_17162F3:               var_130 = CVar(CStr(arg_10)) 'String
  loc_17162FA:               LateIdCallSt
  loc_1716325:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171632D:               var_1C0 = CVar(CLng(2)) 'Long
  loc_171635D:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1716364:               LateIdCallSt
  loc_1716397:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171639F:               var_1C0 = CVar(CLng(3)) 'Long
  loc_17163CF:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_17163D6:               LateIdCallSt
  loc_1716409:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1716411:               var_18C = CVar(CLng(4)) 'Long
  loc_171641B:               var_130 = CVar(CStr(var_B8)) 'String
  loc_1716422:               LateIdCallSt
  loc_171644D:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1716455:               var_1C0 = CVar(CLng(5)) 'Long
  loc_1716485:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171648C:               LateIdCallSt
  loc_17164E6:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17164EE:               var_234 = CVar(CLng(6)) 'Long
  loc_17164F3:               var_178 = 2
  loc_1716532:               var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_178))))) 'String
  loc_1716539:               LateIdCallSt
  loc_171655D:             End If
  loc_1716576:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171657E:             var_18C = CVar(CLng(6)) 'Long
  loc_17165A3:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_17165CC:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17165D4:             var_18C = CVar(CLng(6)) 'Long
  loc_17165DC:             var_130 = var_10C.TextMatrix)
  loc_17165EF:             var_1E8 = Val(CStr(var_130))
  loc_17165F9:             var_94 = (var_94 + var_1E8)
  loc_1716610:             var_B0 = (var_B0 + var_D0)
  loc_1716616:             var_B8 = var_D0
  loc_171661C:           Else
  loc_1716658:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1716696:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_17166A9:             Else
  loc_1716705:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_171670A:               var_D0 = var_94
  loc_171671E:             End If
  loc_1716721:             var_EC = "Limit"
  loc_1716744:             Proc_6_39_E7D3A0(var_130, CVar(var_8C.Fields.Item(var_EC)), var_D0, var_1E8, var_18C)
  loc_171677E:             Proc_6_39_E7D3A0(var_178, CVar(var_8C.Fields.Item("Rate")), (var_130 <= CVar(var_94)), var_EC)
  loc_17167A8:             If CBool(var_9C And (var_178 > 0)) Then
  loc_17167B2:               If (var_D0 > CDbl(0)) Then
  loc_17167CE:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17167D6:                 var_18C = CVar(CLng(0)) 'Long
  loc_17167E0:                 var_130 = CVar(CStr(var_86)) 'String
  loc_17167E7:                 LateIdCallSt
  loc_1716812:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171681A:                 var_18C = CVar(CLng(1)) 'Long
  loc_1716824:                 var_130 = CVar(CStr(arg_10)) 'String
  loc_171682B:                 LateIdCallSt
  loc_1716856:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171685E:                 var_1C0 = CVar(CLng(2)) 'Long
  loc_171688E:                 var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1716895:                 LateIdCallSt
  loc_17168C8:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17168D0:                 var_1C0 = CVar(CLng(3)) 'Long
  loc_1716900:                 var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1716907:                 LateIdCallSt
  loc_171693A:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1716942:                 var_18C = CVar(CLng(4)) 'Long
  loc_171694C:                 var_130 = CVar(CStr(var_A8)) 'String
  loc_1716953:                 LateIdCallSt
  loc_171697E:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1716986:                 var_1C0 = CVar(CLng(5)) 'Long
  loc_17169B6:                 var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_17169BD:                 LateIdCallSt
  loc_1716A17:                 var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1716A1F:                 var_234 = CVar(CLng(6)) 'Long
  loc_1716A63:                 var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_1716A6A:                 LateIdCallSt
  loc_1716A8E:               End If
  loc_1716AA7:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1716AAF:               var_18C = CVar(CLng(6)) 'Long
  loc_1716AD4:               var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_1716AFD:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1716B05:               var_18C = CVar(CLng(6)) 'Long
  loc_1716B2A:               var_94 = (var_94 + Val(CStr(var_10C.TextMatrix))))
  loc_1716B41:               var_B0 = (var_B0 + var_D0)
  loc_1716B47:               var_B8 = var_D0
  loc_1716B4A:             End If
  loc_1716B4A:           End If
  loc_1716B4A:         End If
  loc_1716B4A:       End If
  loc_1716B4A:     End If
  loc_1716B50:     var_86 = (var_86 + 1)
  loc_1716B55:     Set var_10C = Nothing 
  loc_1716B5D:     var_EC = CVar(CLng(arg_10)) 'Long
  loc_1716B65:     var_18C = CVar(CLng(&H12)) 'Long
  loc_1716B6F:     var_FC = CVar(CStr(var_9C)) 'String
  loc_1716B77:     Set var_100 = Me.FGrid
  loc_1716B7D:     LateIdCallSt
  loc_1716B8E:     var_8C.MoveNext
  loc_1716B93:     GoTo loc_171505F
  loc_1716B96:   End If
  loc_1716B9B:   Set var_8C = Nothing
  loc_1716BA3:   Set var_C4 = Nothing
  loc_1716BAB:   Set var_C0 = Nothing
  loc_1716BAE: End If
  loc_1716BAE: Exit Sub
End Sub

Public Sub Proc_338_106_1064244(arg_C, arg_10) '1064244
  'Data Table: 598690
  Dim var_9C As String
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_5986AD As Connection15
  Dim var_CC As TextBox
  Dim var_D4 As String
  Dim var_E4 As Variant
  Dim var_90 As Recordset15
  Dim var_C8 As Fields15
  Dim var_C4 As Variant
  Dim var_8C As Double
  loc_1063FF2: var_94 = global_180
  loc_1063FFD: If (var_94 = "Last Purchase Rate") Then
  loc_106401B:   var_9C = "Select CASE WHEN LPurRate<=0 THEN PurchRate ELSE LPurRate END As Rate From ItemMast Where Code='" & arg_C & "' And RestCode='"
  loc_106402C:   var_A4 = var_9C & global_56 & "'"
  loc_1064035:   unk_5986AD.Execute var_A4, var_C4, -1
  loc_1064040:   Set var_90 = var_C8
  loc_1064057: Else
  loc_106405F:   If (var_94 = "Party Wise Last Pur Rate") Then
  loc_1064087:     var_A0 = "Select Top 1 ItemRate As Rate From Purch2 Where VType In ('PBPB','PBPC') And Item='" & arg_C & "' And RestCode='" & global_56
  loc_106409F:     Set var_C8 = Me.Txt
  loc_10640A5:     Call 0.Method_Proc_338_106_10642440 (CInt(4), var_CC, var_A4, var_A0 & "' And PartyCode='")
  loc_10640AD:     var_138 = var_CC.Tag
  loc_10640B6:     var_D4 = -1 & var_A4
  loc_10640BD:     var_E4 = CVar(var_D4 & "' And DelFlag='N' And Vdate<=") 'String
  loc_10640CB:     Proc_6_7_F26918(var_C4, arg_10, var_E4)
  loc_10640EA:     unk_5986AD.Execute CStr(var_13C & var_C4 & " Order By VDate Desc,Vno Desc"), var_C8, 
  loc_1064133:     If (var_13C.RecordCount = 0) Then
  loc_1064151:       var_9C = "Select CASE WHEN LPurRate<=0 THEN PurchRate ELSE LPurRate END As Rate From ItemMast Where Code='" & arg_C & "' And RestCode='"
  loc_106416B:       unk_5986AD.Execute var_9C & global_56 & "'", var_C4, -1
  loc_1064176:       Set var_90 = var_C8
  loc_106418A:     End If
  loc_106418D:   Else
  loc_10641C2:     unk_5986AD.Execute "Select PurchRate As Rate From ItemMast Where Code='" & arg_C & "' And RestCode='" & global_56 & "'", var_C4, -1
  loc_10641CD:     Set var_90 = var_C8
  loc_10641E1:   End If
  loc_10641E1: End If
  loc_10641F5: If (var_90.RecordCount > 0) Then
  loc_106421E:   Proc_6_39_E7D3A0(var_E4, CVar(var_90.Fields.Item("Rate")))
  loc_1064227:   var_8C = CSng(var_E4)
  loc_1064237: Else
  loc_106423A:   var_8C = CDbl(0)
  loc_106423D: End If
  loc_106423D: Proc_338_106_1064244 = var_8C
End Sub

Public Sub Proc_338_107_DFCE0C
  'Data Table: 598690
  loc_DFCE08: Exit Sub
End Sub

Public Sub Proc_338_108_E44480(arg_C) 'E44480
  'Data Table: 598690
  Dim Me As Recordset15
  loc_E4445B: Me.Filter = 0
  loc_E44468: If (arg_C = "Credit Note") Then
  loc_E44477:   Me.Filter = "Nature='Customer'"
  loc_E4447C: End If
  loc_E4447C: Exit Sub
End Sub

Public Sub Proc_338_109_1131C2C
  'Data Table: 598690
  Dim var_94 As Variant
  Dim var_A8 As String
  Dim unk_5986AD As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_104 As TextBox
  Dim var_108 As String
  loc_11318EF: If (((global_124 = "PBC") Or (global_124 = "EXC")) Or (global_124 = "PRC")) Then
  loc_11318FF:   Set var_90 = Me.Txt
  loc_1131905:   Call 0.Method_Proc_338_109_1131C2C0 (CInt(8), var_94)
  loc_113190D:   var_94.Visible = True
  loc_1131926:   Set var_90 = Me.Txt
  loc_113192C:   Call 0.Method_Proc_338_109_1131C2C0 (CInt(4), var_94)
  loc_1131934:   var_94.Visible = False
  loc_1131944:   Set var_90 = Me.TopCtrl1
  loc_113194A:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1131963:   If (CStr() <> "Browse") Then
  loc_1131973:     Set var_90 = Me.Txt
  loc_1131979:     Call 0.Method_Proc_338_109_1131C2C0 (CInt(&HB), var_94)
  loc_1131981:     var_94.Enabled = True
  loc_113198D:   End If
  loc_11319B0:   If (((global_124 = "PRC") Or (global_124 = "PBC")) Or (global_124 = "EXC")) Then
  loc_11319D0:     Proc_6_17_EAAE40(var_A4, MemVar_1F95078, "Select CashPurchAc From Enviro WHERE LOGSITE_CODE=")
  loc_11319E6:     unk_5986AD.Execute CStr(var_F8 & var_A4), -1, var_90
  loc_11319F1:     Set var_88 = var_90
  loc_1131A17:     If (var_88.RecordCount > 0) Then
  loc_1131A34:       var_94 = var_88.Fields.Item("CashPurchAc")
  loc_1131A3C:       var_A4 = var_94.Value
  loc_1131A53:       Set var_100 = Me.Txt
  loc_1131A59:       Call 0.Method_Proc_338_109_1131C2C0 (CInt(4), var_104)
  loc_1131A61:       var_104.Tag = CStr(var_A4)
  loc_1131A77:     End If
  loc_1131A77:   End If
  loc_1131A8E:   If ((global_124 = "PBC") Or (global_124 = "EXC")) Then
  loc_1131A9B:     Set global_76 = New 
  loc_1131AAD:     Me.Recordset15.CursorLocation = 3
  loc_1131AB9:     var_A8 = "Select Distinct M.Docid as Code ,ltrim(Right(max(M.DocId),8)) as Name,Max(M.Vtype) as V_type,Max(M.VDate) as V_Date,Max(SG.Name) As PartyName " & "From ((Stock M Left Join Purch2 P2 on (M.Docid = P2.ContraDocid and M.Sno = P2.ContraSno)) "
  loc_1131AC0:     var_108 = var_A8 & "Left Join SubGroup SG on M.PartyCode=SG.SubCode)Left Join Voucher_Type V on (M.Vtype=V.V_Type and M.logSite_Code=V.LogSite_Code) "
  loc_1131ADE:     Call 0.Method_Proc_338_109_1131C2C0 (CInt(4), var_94)
  loc_1131AF6:     var_8C = var_108 & "where V.Ncat in ('MRE') and M.Partycode='" & var_94.Tag & "'    Group By M.Docid,M.Sno Having Max(M.AccQty) - Sum(isnull(P2.RecdQty,0)) > 0 "
  loc_1131B23:     unk_5986AD.Execute var_8C, var_A4, -1
  loc_1131B34:     Set global_76 = Me.Txt
  loc_1131B4B:     CVarUnk
  loc_1131B50:     VerifyVarObj
  loc_1131B56:     Set var_90 = Me.DgMR
  loc_1131B5C:     LateIdStAd
  loc_1131B6A:   End If
  loc_1131B6D: Else
  loc_1131B80:   Call 0.Method_Proc_338_109_1131C2C0 (CInt(8), var_94, 0)
  loc_1131B88:   var_94.Visible = Me.Txt
  loc_1131BA1:   Set var_90 = Me.Txt
  loc_1131BA7:   Call 0.Method_Proc_338_109_1131C2C0 (CInt(4), var_94, &HFF)
  loc_1131BAF:   var_94.Visible = global_76
  loc_1131BC8:   Set var_90 = Me.Txt
  loc_1131BCE:   Call 0.Method_Proc_338_109_1131C2C0 (CInt(&HB), var_94)
  loc_1131BD6:   var_94.Enabled = False
  loc_1131BE2: End If
  loc_1131BF9: If ((global_124 = "PRR") Or (global_124 = "PRC")) Then
  loc_1131C09:   Set var_90 = Me.Txt
  loc_1131C0F:   Call 0.Method_Proc_338_109_1131C2C0 (CInt(7), var_94)
  loc_1131C17:   var_94.Enabled = False
  loc_1131C23: End If
  loc_1131C28: Set var_88 = Nothing
  loc_1131C2B: Exit Sub
End Sub

Public Sub Proc_338_110_10B260C(arg_C, arg_10, arg_14, arg_18) '10B260C
  'Data Table: 598690
  Dim var_A8 As Double
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_104 As MSHFlexGrid
  Dim var_114 As Variant
  Dim var_BC As Double
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim var_1CC As Variant
  Dim var_9C As Double
  Dim var_B4 As Double
  Dim var_1AC As Variant
  loc_10B2347: var_A8 = CDbl(0)
  loc_10B235C: For var_C0 = CInt(arg_10) To (CInt(arg_C) - 1): var_9E = var_C0 'Integer
  loc_10B2366:   var_D0 = CVar(CLng(var_9E)) 'Long
  loc_10B2370:   var_F0 = CVar(CLng(arg_14)) 'Long
  loc_10B239C:   var_A8 = (var_A8 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_10B23AB: Next var_C0 'Integer
  loc_10B23B3: var_BC = arg_18
  loc_10B23DF: For var_124 = CInt(arg_10) To CInt((CLng(Me.FGrid.Rows) - 1)): var_AA = var_124 'Integer
  loc_10B23F2:   If (var_AA <> (CInt(arg_C) - 1)) Then
  loc_10B23FC:     If (var_A8 <> CDbl(0)) Then
  loc_10B2403:       var_D0 = CVar(CLng(var_AA)) 'Long
  loc_10B240D:       var_F0 = CVar(CLng(arg_14)) 'Long
  loc_10B2436:       var_134 = CVar(CLng(var_AA)) 'Long
  loc_10B2440:       var_154 = CVar(CLng(arg_14)) 'Long
  loc_10B24A0:       var_1CC = (CVar(Val(CStr(Me.FGrid.TextMatrix)))) + Round(CVar(((arg_18 * Val(CStr(Me.FGrid.TextMatrix)))) / var_A8)), 2))
  loc_10B24B0:       var_9C = CSng(Format(var_1CC, "00.00"))
  loc_10B24D6:       var_D0 = CVar(CLng(var_AA)) 'Long
  loc_10B24E0:       var_F0 = CVar(CLng(arg_20)) 'Long
  loc_10B24EA:       var_114 = CVar(CStr(var_9C)) 'String
  loc_10B24F2:       Set var_104 = Me.FGrid
  loc_10B24F8:       LateIdCallSt
  loc_10B2506:     End If
  loc_10B250D:     var_B4 = (var_B4 + var_9C)
  loc_10B2517:     If (var_A8 > CDbl(0)) Then
  loc_10B251E:       var_D0 = CVar(CLng(var_AA)) 'Long
  loc_10B2528:       var_F0 = CVar(CLng(arg_14)) 'Long
  loc_10B2573:       var_1AC = (CVar(var_BC) - Round(CVar(((arg_18 * Val(CStr(Me.FGrid.TextMatrix)))) / var_A8)), 2))
  loc_10B2578:       var_BC = CSng(Round(CVar(((arg_18 * Val(CStr(Me.FGrid.TextMatrix)))) / var_A8)), 2))
  loc_10B258A:     End If
  loc_10B258D:   Else
  loc_10B2591:     var_D0 = CVar(CLng(var_AA)) 'Long
  loc_10B259B:     var_F0 = CVar(CLng(arg_14)) 'Long
  loc_10B25C1:     var_9C = (Val(CStr(Me.FGrid.TextMatrix))) + var_BC)
  loc_10B25D1:     var_D0 = CVar(CLng(var_AA)) 'Long
  loc_10B25DB:     var_F0 = CVar(CLng(arg_20)) 'Long
  loc_10B25E5:     var_114 = CVar(CStr(var_9C)) 'String
  loc_10B25ED:     Set var_104 = Me.FGrid
  loc_10B25F3:     LateIdCallSt
  loc_10B2601:   End If
  loc_10B2604: Next var_124 'Integer
  loc_10B2609: Exit Sub
End Sub

Public Sub Proc_338_111_1B8EC3C
  'Data Table: 598690
  Dim var_B4 As Variant
  Dim var_B8 As String
  Dim var_110 As Variant
  Dim var_D0 As Variant
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_140 As Variant
  Dim var_148 As TextBox
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_1A4 As Variant
  Dim var_1E4 As Variant
  Dim var_F0 As Variant
  Dim var_AC As String
  Dim unk_5986AD As Connection15
  Dim var_A4 As Recordset15
  Dim var_B0 As Variant
  Dim var_C0 As TextBox
  Dim var_14C As String
  Dim var_A6 As Integer
  Dim var_1EC As String
  Dim var_1F0 As String
  Dim var_1F4 As String
  Dim var_88 As Recordset15
  Dim var_100 As Variant
  Dim var_94 As Double
  Dim var_8C As Recordset15
  Dim var_21C As Variant
  Dim var_194 As TextBox
  Dim var_210 As Variant
  Dim var_26C As Label
  Dim var_260 As Variant
  Dim var_264 As Label
  Dim var_20C As Fields15
  Dim var_268 As TextBox
  loc_1B89AAF: var_AC = OpenAs
  loc_1B89ABF: If (var_AC = "Expense") Then
  loc_1B89AC5:   var_98 = "Expense Voucher :"
  loc_1B89AD3:   Set var_BC = Me.Txt
  loc_1B89AD9:   Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3))
  loc_1B89AE9:   Set var_190 = Me.Txt
  loc_1B89AEF:   Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(6), var_194)
  loc_1B89B05:   Set var_B0 = Me.Txt
  loc_1B89B0B:   Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_B4, var_AC)
  loc_1B89B13:   "Cr.No." = var_B4.Text
  loc_1B89B23:   var_110 = CVar(var_C0 & var_AC & " Dt.: ") 'String
  loc_1B89B3E:   var_D0 = CVar(var_C0) 'Address
  loc_1B89B45:   var_100 = Format(var_D0, "dd/mm/yy")
  loc_1B89B4D:   var_120 = (1 + var_100)
  loc_1B89B56:   var_140 = (var_120 + " Agst. Invoice/Bill of Supply No.")
  loc_1B89B68:   Set var_144 = Me.Txt
  loc_1B89B6E:   Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(5), var_148, var_14C)
  loc_1B89B76:   var_140 = var_148.Text
  loc_1B89B81:   var_16C = (1 + CVar(var_14C))
  loc_1B89B8A:   var_18C = (var_16C + " Dt.: ")
  loc_1B89BB5:   var_1E4 = (1 + Format(CVar(var_194), "dd/mm/yy"))
  loc_1B89BBA:   var_9C = CStr(var_1E4)
  loc_1B89BF3: Else
  loc_1B89BF6:   var_98 = "Purchase Bill :"
  loc_1B89BFC:   var_9C = "Purchase Return For :"
  loc_1B89BFF: End If
  loc_1B89C22: If (((global_124 = "PBC") Or (global_124 = "EXC")) Or (global_124 = "PRC")) Then
  loc_1B89C42:   Proc_6_17_EAAE40(var_D0, MemVar_1F95078, "Select CashPurchAc from Enviro WHERE LOGSITE_CODE=", var_100, -1)
  loc_1B89C4A:   var_F0 = var_B0 & var_D0 
  loc_1B89C58:   unk_5986AD.Execute CStr(var_F0), 1, var_18C
  loc_1B89C63:   Set var_A4 = var_B0
  loc_1B89C89:   If (var_A4.RecordCount > 0) Then
  loc_1B89CA3:     var_B4 = var_A4.Fields.Item("CashPurchAc")
  loc_1B89CB4:     var_AC = Proc_6_38_E69628(CVar(var_B4))
  loc_1B89CC2:     Set var_BC = Me.Txt
  loc_1B89CC8:     Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(4), var_C0)
  loc_1B89CD0:     var_C0.Tag = var_AC
  loc_1B89CE4:   End If
  loc_1B89CE4: End If
  loc_1B89D02: Set var_B0 = Me.Txt
  loc_1B89D08: Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_AC, "Delete From Ledger where DocID='")
  loc_1B89D10: var_D0 = var_B4.Text
  loc_1B89D19: var_B8 = -1 & var_AC
  loc_1B89D29: unk_5986AD.Execute var_C0 & var_AC & "'", var_BC, var_110
  loc_1B89D45: var_A6 = 1
  loc_1B89D5C: var_AC = "SELECT Sum(SunTran.Amount) AS RevAmt,max(SUNCODE) as SundryCode FROM (SunTran LEFT JOIN RevMast ON SunTran.RevCode = RevMast.Code) LEFT JOIN Depart ON SunTran.RestCode = Depart.Code Where SUNCODE='" & MemVar_1F95078
  loc_1B89D74: Set var_B0 = Me.Txt
  loc_1B89D7A: Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_C0 & var_AC, var_AC & "NET' and DocID='")
  loc_1B89D82: var_D0 = var_B4.Text
  loc_1B89D8B: var_1EC = -1 & var_C0 & var_AC
  loc_1B89D9B: unk_5986AD.Execute var_1EC & "' Group By RestCode,Revcode Order by RestCode", var_BC, var_A6
  loc_1B89DA6: Set var_8C = var_BC
  loc_1B89DD6: var_AC = " SELECT Sum(S.Amount) AS RevAmt, S.RevCode, Max(S.Vdate) AS VDate, Max(R.Name) AS Revenue, Max(S.SunCode) AS SundryCode, Max(R.ACCode) AS ACode, Max(R.PayableAc) AS PCode, Max(R.UnregisteredAc) AS UCode, Max(R.FieldType) AS FieldType,Max(ST.CalcSign) as CSign " & " FROM ((SunTran AS S LEFT JOIN RevMast AS R ON S.RevCode = R.Code) LEFT JOIN Depart AS D ON S.RestCode = D.Code) LEFT JOIN SundryType AS ST ON S.SunAppDate = ST.AppDate AND ST.V_Type=S.RestCode  and s.SunCode=st.sundrycode "
  loc_1B89DDD: var_14C = var_AC & " WHERE (((S.RevCode) Is Not Null And (S.RevCode)<>'') AND ((S.DocId)='"
  loc_1B89DEE: Set var_B0 = Me.Txt
  loc_1B89DF4: Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_C0 & var_AC, var_14C)
  loc_1B89DFC: var_D0 = var_B4.Text
  loc_1B89E05: var_1EC = -1 & var_C0 & var_AC
  loc_1B89E0C: var_1F0 = var_1EC & "')) "
  loc_1B89E1C: unk_5986AD.Execute var_1F0 & " GROUP BY S.RevCode, S.RestCode ORDER BY S.RestCode", var_BC, 
  loc_1B89E27: Set var_88 = var_BC
  loc_1B89E75: If ((Me.ChkPayable.Value = 1) And (var_88.RecordCount > 0)) Then
  loc_1B89E78:   ' Referenced from: 1B8A086
  loc_1B89E87:   If Not(var_88.EOF) Then
  loc_1B89EC3:     If (Proc_6_38_E69628(CVar(var_88.Fields.Item("FIELDTYPE"))) = "T") Then
  loc_1B89EE5:       var_D0 = CVar(var_88.Fields.Item("RevAmt")) 'Address
  loc_1B89EEC:       Proc_6_39_E7D3A0(var_F0)
  loc_1B89F06:       If CBool(var_F0 <> 0) Then
  loc_1B89F42:         If (Proc_6_38_E69628(CVar(var_88.Fields.Item("pCode"))) = vbNullString) Then
  loc_1B89F86:           MsgBox("Please Define Payable A/C for :" & var_88.Fields.Item("Revenue").Value, 0, var_100, var_110, var_120)
  loc_1B89F9F:         End If
  loc_1B89FD8:         If (Proc_6_38_E69628(CVar(var_88.Fields.Item("uCode"))) = vbNullString) Then
  loc_1B8A018:           var_F0 = "Please Define Unregistered A/C for :" & var_88.Fields.Item("Revenue").Value 
  loc_1B8A01C:           MsgBox(var_F0, 0, var_100, var_110, var_120)
  loc_1B8A035:         End If
  loc_1B8A035:       End If
  loc_1B8A062:       Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8A06A:       var_100 = (CVar(var_94) + var_F0)
  loc_1B8A06F:       var_94 = CSng(var_100)
  loc_1B8A07E:     End If
  loc_1B8A081:     var_88.MoveNext
  loc_1B8A086:     GoTo loc_1B89E78
  loc_1B8A089:   End If
  loc_1B8A089: End If
  loc_1B8A09D: If (var_8C.RecordCount > 0) Then
  loc_1B8A0B7:   var_B4 = var_8C.Fields.Item("RevAmt")
  loc_1B8A0C6:   Proc_6_39_E7D3A0(var_F0, CVar(var_B4))
  loc_1B8A0D5:   var_100 = (var_F0 - CVar(var_94))
  loc_1B8A0EB:   If (var_100 > 0) Then
  loc_1B8A111:     If (((global_124 = "PRR") Or (global_124 = "PRC")) Or (global_124 = "CRN")) Then
  loc_1B8A122:       Set var_B0 = Me.Txt
  loc_1B8A128:       Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_14C)
  loc_1B8A130:       var_94 = var_B4.Text
  loc_1B8A143:       Set var_BC = Me.Txt
  loc_1B8A149:       Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0)
  loc_1B8A151:       var_AC = var_C0.Tag
  loc_1B8A164:       Set var_144 = Me.Txt
  loc_1B8A16A:       Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148)
  loc_1B8A172:       var_1F4 = var_148.Text
  loc_1B8A197:       Set var_190 = Me.Txt
  loc_1B8A19D:       Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194)
  loc_1B8A1B8:       Set var_20C = Me.Txt
  loc_1B8A1BE:       Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(4), var_210)
  loc_1B8A1C6:       var_B8 = var_210.Tag
  loc_1B8A1F1:       Proc_6_39_E7D3A0(var_F0, CVar(var_8C.Fields.Item("RevAmt")))
  loc_1B8A1F9:       var_110 = Now
  loc_1B8A203:       var_25C = 0
  loc_1B8A20E:       var_258 = 0
  loc_1B8A219:       var_254 = 0
  loc_1B8A222:       var_250 = "A"
  loc_1B8A23A:       var_244 = vbNullString
  loc_1B8A251:       var_100 = (var_F0 - CVar(var_94))
  loc_1B8A28D:       Proc_6_140_12DA4E8(MemVar_1F95044, var_14C, var_A6, var_AC, CLng(var_1F4), Me.LblVPrefix.Caption, MemVar_1F95070, var_194.Text)
  loc_1B8A2D2:     Else
  loc_1B8A2E0:       Set var_B0 = Me.Txt
  loc_1B8A2E6:       Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_1F0, var_B8, CSng(var_100), CDbl(0))
  loc_1B8A2EE:       var_244 = var_B4.Text
  loc_1B8A301:       Set var_BC = Me.Txt
  loc_1B8A307:       Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC, var_9C)
  loc_1B8A30F:       MemVar_1F950C8 = var_C0.Tag
  loc_1B8A322:       Set var_144 = Me.Txt
  loc_1B8A328:       Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_224)
  loc_1B8A330:       CDate(var_110) = var_148.Text
  loc_1B8A355:       Set var_190 = Me.Txt
  loc_1B8A35B:       Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194)
  loc_1B8A376:       Set var_20C = Me.Txt
  loc_1B8A37C:       Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(4), var_210)
  loc_1B8A384:       var_B8 = var_210.Tag
  loc_1B8A3AF:       Proc_6_39_E7D3A0(var_F0, CVar(var_8C.Fields.Item("RevAmt")))
  loc_1B8A3C2:       Set var_21C = Me.Txt
  loc_1B8A3C8:       Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(5), var_260)
  loc_1B8A3D0:       var_14C = var_260.Text
  loc_1B8A3E0:       Set var_264 = Me.Txt
  loc_1B8A3E6:       Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(6), var_268)
  loc_1B8A412:       var_18C = Now
  loc_1B8A41C:       var_278 = 0
  loc_1B8A427:       var_274 = 0
  loc_1B8A432:       var_270 = 0
  loc_1B8A43B:       var_25C = "A"
  loc_1B8A461:       var_16C = (CVar(var_98 & var_14C & " Dt.:   ") + Format(CVar(var_268), "dd/mm/yy"))
  loc_1B8A46D:       var_254 = vbNullString
  loc_1B8A47D:       var_100 = (var_F0 - CVar(var_94))
  loc_1B8A4C0:       Proc_6_140_12DA4E8(MemVar_1F95044, var_1F0, var_A6, var_AC, CLng(var_224), Me.LblVPrefix.Caption, MemVar_1F95070, var_194.Text)
  loc_1B8A518:     End If
  loc_1B8A51B:   Else
  loc_1B8A532:     var_B4 = var_8C.Fields.Item("RevAmt")
  loc_1B8A541:     Proc_6_39_E7D3A0(var_F0, CVar(var_B4), var_B8, CDbl(0), CSng(var_100))
  loc_1B8A550:     var_100 = (var_F0 - CVar(var_94))
  loc_1B8A566:     If (var_100 < 0) Then
  loc_1B8A58C:       If (((global_124 = "PRR") Or (global_124 = "PRC")) Or (global_124 = "CRN")) Then
  loc_1B8A59D:         Set var_B0 = Me.Txt
  loc_1B8A5A3:         Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_14C, var_254)
  loc_1B8A5AB:         CStr(var_16C) = var_B4.Text
  loc_1B8A5BE:         Set var_BC = Me.Txt
  loc_1B8A5C4:         Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC)
  loc_1B8A5CC:         MemVar_1F950C8 = var_C0.Tag
  loc_1B8A5DF:         Set var_144 = Me.Txt
  loc_1B8A5E5:         Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_1F4)
  loc_1B8A5ED:         CDate(var_18C) = var_148.Text
  loc_1B8A5FF:         var_220 = Me.LblVPrefix.Caption
  loc_1B8A612:         Set var_190 = Me.Txt
  loc_1B8A618:         Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194)
  loc_1B8A633:         Set var_20C = Me.Txt
  loc_1B8A639:         Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(4), var_210)
  loc_1B8A641:         var_B8 = var_210.Tag
  loc_1B8A66C:         Proc_6_39_E7D3A0(var_F0, CVar(var_8C.Fields.Item("RevAmt")))
  loc_1B8A674:         var_120 = Now
  loc_1B8A67E:         var_25C = 0
  loc_1B8A689:         var_258 = 0
  loc_1B8A694:         var_254 = 0
  loc_1B8A69D:         var_250 = "A"
  loc_1B8A6B5:         var_244 = vbNullString
  loc_1B8A6C5:         var_100 = (var_F0 - CVar(var_94))
  loc_1B8A6C9:         var_110 = Abs(var_100)
  loc_1B8A70C:         Proc_6_140_12DA4E8(MemVar_1F95044, var_14C, var_A6, var_AC, CLng(var_1F4), var_220, MemVar_1F95070, var_194.Text)
  loc_1B8A751:       Else
  loc_1B8A75F:         Set var_B0 = Me.Txt
  loc_1B8A765:         Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_1F0, var_B8, CDbl(0), CSng(var_110))
  loc_1B8A76D:         var_244 = var_B4.Text
  loc_1B8A780:         Set var_BC = Me.Txt
  loc_1B8A786:         Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC, var_9C)
  loc_1B8A78E:         MemVar_1F950C8 = var_C0.Tag
  loc_1B8A7A1:         Set var_144 = Me.Txt
  loc_1B8A7A7:         Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_224)
  loc_1B8A7AF:         CDate(var_120) = var_148.Text
  loc_1B8A7D4:         Set var_190 = Me.Txt
  loc_1B8A7DA:         Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194)
  loc_1B8A7F5:         Set var_20C = Me.Txt
  loc_1B8A7FB:         Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(4), var_210)
  loc_1B8A803:         var_B8 = var_210.Tag
  loc_1B8A82E:         Proc_6_39_E7D3A0(var_F0, CVar(var_8C.Fields.Item("RevAmt")))
  loc_1B8A841:         Set var_21C = Me.Txt
  loc_1B8A847:         Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(5), var_260)
  loc_1B8A85F:         Set var_264 = Me.Txt
  loc_1B8A865:         Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(6), var_268)
  loc_1B8A891:         var_1A4 = Now
  loc_1B8A89B:         var_278 = 0
  loc_1B8A8A6:         var_274 = 0
  loc_1B8A8B1:         var_270 = 0
  loc_1B8A8BA:         var_25C = "A"
  loc_1B8A8D3:         var_1EC = var_98 & var_260.Text
  loc_1B8A8E0:         var_18C = (CVar(var_1EC & " Dt.:     ") + Format(CVar(var_268), "dd/mm/yy"))
  loc_1B8A8EC:         var_254 = vbNullString
  loc_1B8A903:         var_100 = (var_F0 - CVar(var_94))
  loc_1B8A907:         var_110 = Abs(var_100)
  loc_1B8A943:         Proc_6_140_12DA4E8(MemVar_1F95044, var_1F0, var_A6, var_AC, CLng(var_224), Me.LblVPrefix.Caption, MemVar_1F95070, var_194.Text)
  loc_1B8A99B:       End If
  loc_1B8A99B:     End If
  loc_1B8A99B:   End If
  loc_1B8A9A1:   var_A6 = (var_A6 + 1)
  loc_1B8A9A4: End If
  loc_1B8A9B8: If (var_88.RecordCount > 0) Then
  loc_1B8A9BE:   var_88.MoveFirst
  loc_1B8A9C3:   ' Referenced from: 1B8E22A
  loc_1B8A9D2:   If Not(var_88.EOF) Then
  loc_1B8AA15:     var_AC = Proc_6_38_E69628(CVar(var_88.Fields.Item("FIELDTYPE")), (Me.ChkPayable.Value = 1), var_A6, var_B8, CSng(var_110), CDbl(0))
  loc_1B8AA2B:     If (var_254 And (var_AC = "T")) Then
  loc_1B8AA54:       Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")), CStr(var_18C))
  loc_1B8AA6E:       If (var_F0 > 0) Then
  loc_1B8AA8B:         var_B4 = var_88.Fields.Item("CSign")
  loc_1B8AA9B:         var_130 = "-"
  loc_1B8AAAD:         If (var_B4.Value = 0) Then
  loc_1B8AAD3:           If (((global_124 = "PRR") Or (global_124 = "PRC")) Or (global_124 = "CRN")) Then
  loc_1B8AAE4:             Set var_B0 = Me.Txt
  loc_1B8AAEA:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_B8)
  loc_1B8AAF2:             MemVar_1F950C8 = var_B4.Text
  loc_1B8AB05:             Set var_BC = Me.Txt
  loc_1B8AB0B:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC)
  loc_1B8AB13:             CDate(var_1A4) = var_C0.Tag
  loc_1B8AB26:             Set var_144 = Me.Txt
  loc_1B8AB2C:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148)
  loc_1B8AB34:             var_1F0 = var_148.Text
  loc_1B8AB59:             Set var_190 = Me.Txt
  loc_1B8AB5F:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194)
  loc_1B8AB67:             var_224 = var_194.Text
  loc_1B8ABB9:             Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8ABF2:             var_258 = 0
  loc_1B8ABFD:             var_254 = 0
  loc_1B8AC08:             var_250 = 0
  loc_1B8AC11:             var_244 = "A"
  loc_1B8AC71:             Proc_6_140_12DA4E8(MemVar_1F95044, var_B8, var_A6, var_AC, CLng(var_1F0), Me.LblVPrefix.Caption, MemVar_1F95070, var_224)
  loc_1B8ACC1:             var_A6 = (var_A6 + 1)
  loc_1B8ACD2:             Set var_B0 = Me.Txt
  loc_1B8ACD8:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_B8, var_A6, CStr(var_88.Fields.Item("uCode").Value), CSng(var_F0))
  loc_1B8ACE0:             CDbl(0) = var_B4.Text
  loc_1B8ACF3:             Set var_BC = Me.Txt
  loc_1B8ACF9:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1B8AD01:             var_9C = var_C0.Tag
  loc_1B8AD14:             Set var_144 = Me.Txt
  loc_1B8AD1A:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_1F0)
  loc_1B8AD22:             MemVar_1F950C8 = var_148.Text
  loc_1B8AD47:             Set var_190 = Me.Txt
  loc_1B8AD4D:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194, var_224)
  loc_1B8AD55:             CDate(Now) = var_194.Text
  loc_1B8AD7C:             var_110 = var_88.Fields.Item("pCode").Value
  loc_1B8ADA7:             Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8ADCE:             var_120 = var_88.Fields.Item("uCode").Value
  loc_1B8ADD6:             var_100 = Now
  loc_1B8ADE0:             var_258 = 0
  loc_1B8ADEB:             var_254 = 0
  loc_1B8ADF6:             var_250 = 0
  loc_1B8ADFF:             var_244 = "A"
  loc_1B8AE5F:             Proc_6_140_12DA4E8(MemVar_1F95044, var_B8, var_A6, var_AC, CLng(var_1F0), Me.LblVPrefix.Caption, MemVar_1F95070, var_224)
  loc_1B8AEAF:             var_A6 = (var_A6 + 1)
  loc_1B8AEB5:           Else
  loc_1B8AEC3:             Set var_B0 = Me.Txt
  loc_1B8AEC9:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_1EC, var_A6, CStr(var_110), CDbl(0))
  loc_1B8AED1:             CSng(var_F0) = var_B4.Text
  loc_1B8AEE4:             Set var_BC = Me.Txt
  loc_1B8AEEA:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC, CStr(var_120))
  loc_1B8AEF2:             var_9C = var_C0.Tag
  loc_1B8AF05:             Set var_144 = Me.Txt
  loc_1B8AF0B:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_220)
  loc_1B8AF13:             MemVar_1F950C8 = var_148.Text
  loc_1B8AF38:             Set var_190 = Me.Txt
  loc_1B8AF3E:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194, var_22C)
  loc_1B8AF46:             CDate(var_100) = var_194.Text
  loc_1B8AF98:             Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8AFD2:             Set var_264 = Me.Txt
  loc_1B8AFD8:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(5), var_268)
  loc_1B8AFF0:             Set var_26C = Me.Txt
  loc_1B8AFF6:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(6), var_27C)
  loc_1B8B02C:             var_274 = 0
  loc_1B8B037:             var_270 = 0
  loc_1B8B042:             var_25C = 0
  loc_1B8B04B:             var_258 = "A"
  loc_1B8B071:             var_15C = (CVar(var_98 & var_268.Text & " Dt.:   ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B8B0C5:             Proc_6_140_12DA4E8(MemVar_1F95044, var_1EC, var_A6, var_AC, CLng(var_220), Me.LblVPrefix.Caption, MemVar_1F95070, var_22C)
  loc_1B8B12B:             var_A6 = (var_A6 + 1)
  loc_1B8B13C:             Set var_B0 = Me.Txt
  loc_1B8B142:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_1EC, var_A6, CStr(var_88.Fields.Item("uCode").Value), CDbl(0))
  loc_1B8B14A:             CSng(var_F0) = var_B4.Text
  loc_1B8B15D:             Set var_BC = Me.Txt
  loc_1B8B163:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1B8B16B:             CStr(Format(CVar(var_268), "dd/mm/yy")) = var_C0.Tag
  loc_1B8B17E:             Set var_144 = Me.Txt
  loc_1B8B184:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_220)
  loc_1B8B18C:             MemVar_1F950C8 = var_148.Text
  loc_1B8B19E:             var_224 = Me.LblVPrefix.Caption
  loc_1B8B1B1:             Set var_190 = Me.Txt
  loc_1B8B1B7:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194, var_22C)
  loc_1B8B1BF:             CDate(Now) = var_194.Text
  loc_1B8B1E6:             var_18C = var_88.Fields.Item("pCode").Value
  loc_1B8B211:             Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8B238:             var_1A4 = var_88.Fields.Item("uCode").Value
  loc_1B8B24B:             Set var_264 = Me.Txt
  loc_1B8B251:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(5), var_268)
  loc_1B8B259:             var_B8 = var_268.Text
  loc_1B8B269:             Set var_26C = Me.Txt
  loc_1B8B26F:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(6), var_27C)
  loc_1B8B29B:             var_16C = Now
  loc_1B8B2A5:             var_274 = 0
  loc_1B8B2B0:             var_270 = 0
  loc_1B8B2BB:             var_25C = 0
  loc_1B8B2C4:             var_258 = "A"
  loc_1B8B2EA:             var_15C = (CVar(var_98 & var_B8 & " Dt.:   ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B8B33E:             Proc_6_140_12DA4E8(MemVar_1F95044, var_1EC, var_A6, var_AC, CLng(var_220), var_224, MemVar_1F95070, var_22C)
  loc_1B8B3A4:             var_A6 = (var_A6 + 1)
  loc_1B8B3A7:           End If
  loc_1B8B3AA:         Else
  loc_1B8B3CD:           If (((global_124 = "PRR") Or (global_124 = "PRC")) Or (global_124 = "CRN")) Then
  loc_1B8B3DE:             Set var_B0 = Me.Txt
  loc_1B8B3E4:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_B8, var_A6, CStr(var_18C), CSng(var_F0))
  loc_1B8B3EC:             CDbl(0) = var_B4.Text
  loc_1B8B3FF:             Set var_BC = Me.Txt
  loc_1B8B405:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC, CStr(var_1A4))
  loc_1B8B40D:             CStr(Format(CVar(var_268), "dd/mm/yy")) = var_C0.Tag
  loc_1B8B420:             Set var_144 = Me.Txt
  loc_1B8B426:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_1F0)
  loc_1B8B42E:             MemVar_1F950C8 = var_148.Text
  loc_1B8B453:             Set var_190 = Me.Txt
  loc_1B8B459:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194, var_224)
  loc_1B8B461:             CDate(var_16C) = var_194.Text
  loc_1B8B4B3:             Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8B4EC:             var_258 = 0
  loc_1B8B4F7:             var_254 = 0
  loc_1B8B502:             var_250 = 0
  loc_1B8B50B:             var_244 = "A"
  loc_1B8B56B:             Proc_6_140_12DA4E8(MemVar_1F95044, var_B8, var_A6, var_AC, CLng(var_1F0), Me.LblVPrefix.Caption, MemVar_1F95070, var_224)
  loc_1B8B5BB:             var_A6 = (var_A6 + 1)
  loc_1B8B5CC:             Set var_B0 = Me.Txt
  loc_1B8B5D2:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_B8, var_A6, CStr(var_88.Fields.Item("uCode").Value), CDbl(0))
  loc_1B8B5DA:             CSng(var_F0) = var_B4.Text
  loc_1B8B5ED:             Set var_BC = Me.Txt
  loc_1B8B5F3:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1B8B5FB:             var_9C = var_C0.Tag
  loc_1B8B60E:             Set var_144 = Me.Txt
  loc_1B8B614:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_1F0)
  loc_1B8B61C:             MemVar_1F950C8 = var_148.Text
  loc_1B8B641:             Set var_190 = Me.Txt
  loc_1B8B647:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194, var_224)
  loc_1B8B64F:             CDate(Now) = var_194.Text
  loc_1B8B676:             var_110 = var_88.Fields.Item("pCode").Value
  loc_1B8B6A1:             Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8B6C8:             var_120 = var_88.Fields.Item("uCode").Value
  loc_1B8B6D0:             var_100 = Now
  loc_1B8B6DA:             var_258 = 0
  loc_1B8B6E5:             var_254 = 0
  loc_1B8B6F0:             var_250 = 0
  loc_1B8B6F9:             var_244 = "A"
  loc_1B8B759:             Proc_6_140_12DA4E8(MemVar_1F95044, var_B8, var_A6, var_AC, CLng(var_1F0), Me.LblVPrefix.Caption, MemVar_1F95070, var_224)
  loc_1B8B7A9:             var_A6 = (var_A6 + 1)
  loc_1B8B7AF:           Else
  loc_1B8B7BD:             Set var_B0 = Me.Txt
  loc_1B8B7C3:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_1EC, var_A6, CStr(var_110), CSng(var_F0))
  loc_1B8B7CB:             CDbl(0) = var_B4.Text
  loc_1B8B7DE:             Set var_BC = Me.Txt
  loc_1B8B7E4:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC, CStr(var_120))
  loc_1B8B7EC:             var_9C = var_C0.Tag
  loc_1B8B7FF:             Set var_144 = Me.Txt
  loc_1B8B805:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_220)
  loc_1B8B80D:             MemVar_1F950C8 = var_148.Text
  loc_1B8B832:             Set var_190 = Me.Txt
  loc_1B8B838:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194, var_22C)
  loc_1B8B840:             CDate(var_100) = var_194.Text
  loc_1B8B892:             Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8B8CC:             Set var_264 = Me.Txt
  loc_1B8B8D2:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(5), var_268)
  loc_1B8B8EA:             Set var_26C = Me.Txt
  loc_1B8B8F0:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(6), var_27C)
  loc_1B8B926:             var_274 = 0
  loc_1B8B931:             var_270 = 0
  loc_1B8B93C:             var_25C = 0
  loc_1B8B945:             var_258 = "A"
  loc_1B8B96B:             var_15C = (CVar(var_98 & var_268.Text & " Dt.:     ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B8B9BF:             Proc_6_140_12DA4E8(MemVar_1F95044, var_1EC, var_A6, var_AC, CLng(var_220), Me.LblVPrefix.Caption, MemVar_1F95070, var_22C)
  loc_1B8BA25:             var_A6 = (var_A6 + 1)
  loc_1B8BA36:             Set var_B0 = Me.Txt
  loc_1B8BA3C:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_1EC, var_A6, CStr(var_88.Fields.Item("uCode").Value), CSng(var_F0))
  loc_1B8BA44:             CDbl(0) = var_B4.Text
  loc_1B8BA57:             Set var_BC = Me.Txt
  loc_1B8BA5D:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1B8BA65:             CStr(Format(CVar(var_268), "dd/mm/yy")) = var_C0.Tag
  loc_1B8BA78:             Set var_144 = Me.Txt
  loc_1B8BA7E:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_220)
  loc_1B8BA86:             MemVar_1F950C8 = var_148.Text
  loc_1B8BAAB:             Set var_190 = Me.Txt
  loc_1B8BAB1:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194, var_22C)
  loc_1B8BAB9:             CDate(Now) = var_194.Text
  loc_1B8BAE0:             var_18C = var_88.Fields.Item("pCode").Value
  loc_1B8BB0B:             Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8BB32:             var_1A4 = var_88.Fields.Item("uCode").Value
  loc_1B8BB45:             Set var_264 = Me.Txt
  loc_1B8BB4B:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(5), var_268)
  loc_1B8BB53:             var_B8 = var_268.Text
  loc_1B8BB63:             Set var_26C = Me.Txt
  loc_1B8BB69:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(6), var_27C)
  loc_1B8BB95:             var_16C = Now
  loc_1B8BB9F:             var_274 = 0
  loc_1B8BBAA:             var_270 = 0
  loc_1B8BBB5:             var_25C = 0
  loc_1B8BBBE:             var_258 = "A"
  loc_1B8BBE4:             var_15C = (CVar(var_98 & var_B8 & " Dt.:     ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B8BC38:             Proc_6_140_12DA4E8(MemVar_1F95044, var_1EC, var_A6, var_AC, CLng(var_220), Me.LblVPrefix.Caption, MemVar_1F95070, var_22C)
  loc_1B8BC9E:             var_A6 = (var_A6 + 1)
  loc_1B8BCA1:           End If
  loc_1B8BCA1:         End If
  loc_1B8BCA4:       Else
  loc_1B8BCCA:         Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")), var_A6, CStr(var_18C), CDbl(0), CSng(var_F0))
  loc_1B8BCE4:         If (var_F0 < 0) Then
  loc_1B8BD01:           var_B4 = var_88.Fields.Item("CSign")
  loc_1B8BD11:           var_130 = "-"
  loc_1B8BD23:           If (var_B4.Value = 0) Then
  loc_1B8BD49:             If (((global_124 = "PRR") Or (global_124 = "PRC")) Or (global_124 = "CRN")) Then
  loc_1B8BD5A:               Set var_B0 = Me.Txt
  loc_1B8BD60:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_B8, CStr(var_1A4))
  loc_1B8BD68:               CStr(Format(CVar(var_268), "dd/mm/yy")) = var_B4.Text
  loc_1B8BD7B:               Set var_BC = Me.Txt
  loc_1B8BD81:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC)
  loc_1B8BD89:               MemVar_1F950C8 = var_C0.Tag
  loc_1B8BD9C:               Set var_144 = Me.Txt
  loc_1B8BDA2:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_1F0)
  loc_1B8BDAA:               CDate(var_16C) = var_148.Text
  loc_1B8BDCF:               Set var_190 = Me.Txt
  loc_1B8BDD5:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194)
  loc_1B8BDDD:               var_224 = var_194.Text
  loc_1B8BE2F:               Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8BE68:               var_258 = 0
  loc_1B8BE73:               var_254 = 0
  loc_1B8BE7E:               var_250 = 0
  loc_1B8BE87:               var_244 = "A"
  loc_1B8BEEB:               Proc_6_140_12DA4E8(MemVar_1F95044, var_B8, var_A6, var_AC, CLng(var_1F0), Me.LblVPrefix.Caption, MemVar_1F95070, var_224)
  loc_1B8BF3B:               var_A6 = (var_A6 + 1)
  loc_1B8BF4C:               Set var_B0 = Me.Txt
  loc_1B8BF52:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_B8, var_A6, CStr(var_88.Fields.Item("uCode").Value), CDbl(0))
  loc_1B8BF5A:               CSng(Abs(var_F0)) = var_B4.Text
  loc_1B8BF6D:               Set var_BC = Me.Txt
  loc_1B8BF73:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1B8BF7B:               var_9C = var_C0.Tag
  loc_1B8BF8E:               Set var_144 = Me.Txt
  loc_1B8BF94:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_1F0)
  loc_1B8BF9C:               MemVar_1F950C8 = var_148.Text
  loc_1B8BFC1:               Set var_190 = Me.Txt
  loc_1B8BFC7:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194, var_224)
  loc_1B8BFCF:               CDate(Now) = var_194.Text
  loc_1B8BFF6:               var_120 = var_88.Fields.Item("pCode").Value
  loc_1B8C021:               Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8C048:               var_140 = var_88.Fields.Item("uCode").Value
  loc_1B8C050:               var_110 = Now
  loc_1B8C05A:               var_258 = 0
  loc_1B8C065:               var_254 = 0
  loc_1B8C070:               var_250 = 0
  loc_1B8C079:               var_244 = "A"
  loc_1B8C0A0:               var_100 = Abs(var_F0)
  loc_1B8C0DD:               Proc_6_140_12DA4E8(MemVar_1F95044, var_B8, var_A6, var_AC, CLng(var_1F0), Me.LblVPrefix.Caption, MemVar_1F95070, var_224)
  loc_1B8C12D:               var_A6 = (var_A6 + 1)
  loc_1B8C133:             Else
  loc_1B8C141:               Set var_B0 = Me.Txt
  loc_1B8C147:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_1EC, var_A6, CStr(var_120), CSng(var_100))
  loc_1B8C14F:               CDbl(0) = var_B4.Text
  loc_1B8C162:               Set var_BC = Me.Txt
  loc_1B8C168:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC, CStr(var_140))
  loc_1B8C170:               var_9C = var_C0.Tag
  loc_1B8C183:               Set var_144 = Me.Txt
  loc_1B8C189:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_220)
  loc_1B8C191:               MemVar_1F950C8 = var_148.Text
  loc_1B8C1B6:               Set var_190 = Me.Txt
  loc_1B8C1BC:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194, var_22C)
  loc_1B8C1C4:               CDate(var_110) = var_194.Text
  loc_1B8C216:               Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8C250:               Set var_264 = Me.Txt
  loc_1B8C256:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(5), var_268)
  loc_1B8C26E:               Set var_26C = Me.Txt
  loc_1B8C274:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(6), var_27C)
  loc_1B8C2AA:               var_274 = 0
  loc_1B8C2B5:               var_270 = 0
  loc_1B8C2C0:               var_25C = 0
  loc_1B8C2C9:               var_258 = "A"
  loc_1B8C2EF:               var_16C = (CVar(var_98 & var_268.Text & " Dt.:     ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B8C347:               Proc_6_140_12DA4E8(MemVar_1F95044, var_1EC, var_A6, var_AC, CLng(var_220), Me.LblVPrefix.Caption, MemVar_1F95070, var_22C)
  loc_1B8C3AD:               var_A6 = (var_A6 + 1)
  loc_1B8C3BE:               Set var_B0 = Me.Txt
  loc_1B8C3C4:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_1EC, var_A6, CStr(var_88.Fields.Item("uCode").Value), CSng(Abs(var_F0)))
  loc_1B8C3CC:               CDbl(0) = var_B4.Text
  loc_1B8C3DF:               Set var_BC = Me.Txt
  loc_1B8C3E5:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1B8C3ED:               CStr(var_16C) = var_C0.Tag
  loc_1B8C400:               Set var_144 = Me.Txt
  loc_1B8C406:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_220)
  loc_1B8C40E:               MemVar_1F950C8 = var_148.Text
  loc_1B8C420:               var_224 = Me.LblVPrefix.Caption
  loc_1B8C433:               Set var_190 = Me.Txt
  loc_1B8C439:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194, var_22C)
  loc_1B8C441:               CDate(Now) = var_194.Text
  loc_1B8C468:               var_1A4 = var_88.Fields.Item("pCode").Value
  loc_1B8C493:               Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8C4BA:               var_1C4 = var_88.Fields.Item("uCode").Value
  loc_1B8C4CD:               Set var_264 = Me.Txt
  loc_1B8C4D3:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(5), var_268)
  loc_1B8C4DB:               var_B8 = var_268.Text
  loc_1B8C4EB:               Set var_26C = Me.Txt
  loc_1B8C4F1:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(6), var_27C)
  loc_1B8C51D:               var_18C = Now
  loc_1B8C527:               var_274 = 0
  loc_1B8C532:               var_270 = 0
  loc_1B8C53D:               var_25C = 0
  loc_1B8C546:               var_258 = "A"
  loc_1B8C56C:               var_16C = (CVar(var_98 & var_B8 & " Dt.:     ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B8C580:               var_100 = Abs(var_F0)
  loc_1B8C5C4:               Proc_6_140_12DA4E8(MemVar_1F95044, var_1EC, var_A6, var_AC, CLng(var_220), var_224, MemVar_1F95070, var_22C)
  loc_1B8C62A:               var_A6 = (var_A6 + 1)
  loc_1B8C62D:             End If
  loc_1B8C630:           Else
  loc_1B8C653:             If (((global_124 = "PRR") Or (global_124 = "PRC")) Or (global_124 = "CRN")) Then
  loc_1B8C664:               Set var_B0 = Me.Txt
  loc_1B8C66A:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_B8, var_A6, CStr(var_1A4), CDbl(0))
  loc_1B8C672:               CSng(var_100) = var_B4.Text
  loc_1B8C685:               Set var_BC = Me.Txt
  loc_1B8C68B:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC, CStr(var_1C4))
  loc_1B8C693:               CStr(var_16C) = var_C0.Tag
  loc_1B8C6A6:               Set var_144 = Me.Txt
  loc_1B8C6AC:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_1F0)
  loc_1B8C6B4:               MemVar_1F950C8 = var_148.Text
  loc_1B8C6D9:               Set var_190 = Me.Txt
  loc_1B8C6DF:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194, var_224)
  loc_1B8C6E7:               CDate(var_18C) = var_194.Text
  loc_1B8C739:               Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8C772:               var_258 = 0
  loc_1B8C77D:               var_254 = 0
  loc_1B8C788:               var_250 = 0
  loc_1B8C791:               var_244 = "A"
  loc_1B8C7F5:               Proc_6_140_12DA4E8(MemVar_1F95044, var_B8, var_A6, var_AC, CLng(var_1F0), Me.LblVPrefix.Caption, MemVar_1F95070, var_224)
  loc_1B8C845:               var_A6 = (var_A6 + 1)
  loc_1B8C856:               Set var_B0 = Me.Txt
  loc_1B8C85C:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_B8, var_A6, CStr(var_88.Fields.Item("uCode").Value), CSng(Abs(var_F0)))
  loc_1B8C864:               CDbl(0) = var_B4.Text
  loc_1B8C877:               Set var_BC = Me.Txt
  loc_1B8C87D:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1B8C885:               var_9C = var_C0.Tag
  loc_1B8C898:               Set var_144 = Me.Txt
  loc_1B8C89E:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_1F0)
  loc_1B8C8A6:               MemVar_1F950C8 = var_148.Text
  loc_1B8C8B8:               var_1F4 = Me.LblVPrefix.Caption
  loc_1B8C8CB:               Set var_190 = Me.Txt
  loc_1B8C8D1:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194, var_224)
  loc_1B8C8D9:               CDate(Now) = var_194.Text
  loc_1B8C900:               var_120 = var_88.Fields.Item("pCode").Value
  loc_1B8C92B:               Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8C952:               var_140 = var_88.Fields.Item("uCode").Value
  loc_1B8C95A:               var_110 = Now
  loc_1B8C964:               var_258 = 0
  loc_1B8C96F:               var_254 = 0
  loc_1B8C97A:               var_250 = 0
  loc_1B8C983:               var_244 = "A"
  loc_1B8C9A3:               var_100 = Abs(var_F0)
  loc_1B8C9E7:               Proc_6_140_12DA4E8(MemVar_1F95044, var_B8, var_A6, var_AC, CLng(var_1F0), var_1F4, MemVar_1F95070, var_224)
  loc_1B8CA37:               var_A6 = (var_A6 + 1)
  loc_1B8CA3D:             Else
  loc_1B8CA4B:               Set var_B0 = Me.Txt
  loc_1B8CA51:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_1EC, var_A6, CStr(var_120), CDbl(0))
  loc_1B8CA59:               CSng(var_100) = var_B4.Text
  loc_1B8CA6C:               Set var_BC = Me.Txt
  loc_1B8CA72:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC, CStr(var_140))
  loc_1B8CA7A:               var_9C = var_C0.Tag
  loc_1B8CA8D:               Set var_144 = Me.Txt
  loc_1B8CA93:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_220)
  loc_1B8CA9B:               MemVar_1F950C8 = var_148.Text
  loc_1B8CAC0:               Set var_190 = Me.Txt
  loc_1B8CAC6:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194, var_22C)
  loc_1B8CACE:               CDate(var_110) = var_194.Text
  loc_1B8CB20:               Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8CB5A:               Set var_264 = Me.Txt
  loc_1B8CB60:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(5), var_268)
  loc_1B8CB78:               Set var_26C = Me.Txt
  loc_1B8CB7E:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(6), var_27C)
  loc_1B8CBB4:               var_274 = 0
  loc_1B8CBBF:               var_270 = 0
  loc_1B8CBCA:               var_25C = 0
  loc_1B8CBD3:               var_258 = "A"
  loc_1B8CBF9:               var_16C = (CVar(var_98 & var_268.Text & " Dt.:       ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B8CC51:               Proc_6_140_12DA4E8(MemVar_1F95044, var_1EC, var_A6, var_AC, CLng(var_220), Me.LblVPrefix.Caption, MemVar_1F95070, var_22C)
  loc_1B8CCB7:               var_A6 = (var_A6 + 1)
  loc_1B8CCC8:               Set var_B0 = Me.Txt
  loc_1B8CCCE:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_1EC, var_A6, CStr(var_88.Fields.Item("uCode").Value), CDbl(0))
  loc_1B8CCD6:               CSng(Abs(var_F0)) = var_B4.Text
  loc_1B8CCE9:               Set var_BC = Me.Txt
  loc_1B8CCEF:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1B8CCF7:               CStr(var_16C) = var_C0.Tag
  loc_1B8CD0A:               Set var_144 = Me.Txt
  loc_1B8CD10:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_220)
  loc_1B8CD18:               MemVar_1F950C8 = var_148.Text
  loc_1B8CD2A:               var_224 = Me.LblVPrefix.Caption
  loc_1B8CD3D:               Set var_190 = Me.Txt
  loc_1B8CD43:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194, var_22C)
  loc_1B8CD4B:               CDate(Now) = var_194.Text
  loc_1B8CD72:               var_1A4 = var_88.Fields.Item("pCode").Value
  loc_1B8CD9D:               Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8CDBC:               var_260 = var_88.Fields.Item("uCode")
  loc_1B8CDC4:               var_1C4 = var_260.Value
  loc_1B8CDD7:               Set var_264 = Me.Txt
  loc_1B8CDDD:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(5), var_268)
  loc_1B8CDF5:               Set var_26C = Me.Txt
  loc_1B8CDFB:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(6), var_27C)
  loc_1B8CE27:               var_18C = Now
  loc_1B8CE31:               var_274 = 0
  loc_1B8CE3C:               var_270 = 0
  loc_1B8CE47:               var_25C = 0
  loc_1B8CE50:               var_258 = "A"
  loc_1B8CE69:               var_14C = var_98 & var_268.Text
  loc_1B8CE76:               var_16C = (CVar(var_14C & " Dt.:       ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B8CE91:               var_100 = Abs(var_F0)
  loc_1B8CECE:               Proc_6_140_12DA4E8(MemVar_1F95044, var_1EC, var_A6, var_AC, CLng(var_220), var_224, MemVar_1F95070, var_22C)
  loc_1B8CF34:               var_A6 = (var_A6 + 1)
  loc_1B8CF37:             End If
  loc_1B8CF37:           End If
  loc_1B8CF3D:           var_A6 = (var_A6 + 1)
  loc_1B8CF40:         End If
  loc_1B8CF40:       End If
  loc_1B8CF43:     Else
  loc_1B8CF69:       Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")), var_A6, var_A6, CStr(var_1A4), CSng(var_100))
  loc_1B8CF83:       If (var_F0 > 0) Then
  loc_1B8CFA0:         var_B4 = var_88.Fields.Item("CSign")
  loc_1B8CFB0:         var_130 = "-"
  loc_1B8CFC2:         If (var_B4.Value = 0) Then
  loc_1B8CFE8:           If (((global_124 = "PRR") Or (global_124 = "PRC")) Or (global_124 = "CRN")) Then
  loc_1B8CFF9:             Set var_B0 = Me.Txt
  loc_1B8CFFF:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_14C, CDbl(0), CStr(var_1C4))
  loc_1B8D007:             CStr(var_16C) = var_B4.Text
  loc_1B8D01A:             Set var_BC = Me.Txt
  loc_1B8D020:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC)
  loc_1B8D028:             MemVar_1F950C8 = var_C0.Tag
  loc_1B8D03B:             Set var_144 = Me.Txt
  loc_1B8D041:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_1F4)
  loc_1B8D049:             CDate(var_18C) = var_148.Text
  loc_1B8D06E:             Set var_190 = Me.Txt
  loc_1B8D074:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194)
  loc_1B8D0A3:             var_110 = var_88.Fields.Item("ACode").Value
  loc_1B8D0CE:             Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8D0E1:             Set var_21C = Me.Txt
  loc_1B8D0E7:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(4), var_260)
  loc_1B8D0EF:             var_B8 = var_260.Tag
  loc_1B8D0F7:             var_100 = Now
  loc_1B8D101:             var_25C = 0
  loc_1B8D10C:             var_258 = 0
  loc_1B8D117:             var_254 = 0
  loc_1B8D120:             var_250 = "A"
  loc_1B8D17F:             Proc_6_140_12DA4E8(MemVar_1F95044, var_14C, var_A6, var_AC, CLng(var_1F4), Me.LblVPrefix.Caption, MemVar_1F95070, var_194.Text)
  loc_1B8D1CA:           Else
  loc_1B8D1D8:             Set var_B0 = Me.Txt
  loc_1B8D1DE:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_1F0, CStr(var_110), CSng(var_F0), CDbl(0))
  loc_1B8D1E6:             var_B8 = var_B4.Text
  loc_1B8D1F9:             Set var_BC = Me.Txt
  loc_1B8D1FF:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC, var_9C)
  loc_1B8D207:             MemVar_1F950C8 = var_C0.Tag
  loc_1B8D21A:             Set var_144 = Me.Txt
  loc_1B8D220:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_224)
  loc_1B8D228:             CDate(var_100) = var_148.Text
  loc_1B8D24D:             Set var_190 = Me.Txt
  loc_1B8D253:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194)
  loc_1B8D282:             var_18C = var_88.Fields.Item("ACode").Value
  loc_1B8D2AD:             Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8D2C0:             Set var_21C = Me.Txt
  loc_1B8D2C6:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(4), var_260)
  loc_1B8D2CE:             var_B8 = var_260.Tag
  loc_1B8D2E1:             Set var_264 = Me.Txt
  loc_1B8D2E7:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(5), var_268)
  loc_1B8D2EF:             var_14C = var_268.Text
  loc_1B8D2FF:             Set var_26C = Me.Txt
  loc_1B8D305:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(6), var_27C)
  loc_1B8D331:             var_16C = Now
  loc_1B8D33B:             var_278 = 0
  loc_1B8D346:             var_274 = 0
  loc_1B8D351:             var_270 = 0
  loc_1B8D35A:             var_25C = "A"
  loc_1B8D380:             var_15C = (CVar(var_98 & var_14C & " Dt.:     ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B8D3D3:             Proc_6_140_12DA4E8(MemVar_1F95044, var_1F0, var_A6, var_AC, CLng(var_224), Me.LblVPrefix.Caption, MemVar_1F95070, var_194.Text)
  loc_1B8D431:           End If
  loc_1B8D434:         Else
  loc_1B8D457:           If (((global_124 = "PRR") Or (global_124 = "PRC")) Or (global_124 = "CRN")) Then
  loc_1B8D468:             Set var_B0 = Me.Txt
  loc_1B8D46E:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_14C, CStr(var_18C), CDbl(0), CSng(var_F0))
  loc_1B8D476:             var_B8 = var_B4.Text
  loc_1B8D489:             Set var_BC = Me.Txt
  loc_1B8D48F:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC, CStr(CVar(var_14C & " Dt.:       ")))
  loc_1B8D497:             MemVar_1F950C8 = var_C0.Tag
  loc_1B8D4AA:             Set var_144 = Me.Txt
  loc_1B8D4B0:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_1F4)
  loc_1B8D4B8:             CDate(var_16C) = var_148.Text
  loc_1B8D4DD:             Set var_190 = Me.Txt
  loc_1B8D4E3:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194)
  loc_1B8D512:             var_110 = var_88.Fields.Item("ACode").Value
  loc_1B8D53D:             Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8D550:             Set var_21C = Me.Txt
  loc_1B8D556:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(4), var_260)
  loc_1B8D55E:             var_B8 = var_260.Tag
  loc_1B8D566:             var_100 = Now
  loc_1B8D570:             var_25C = 0
  loc_1B8D57B:             var_258 = 0
  loc_1B8D586:             var_254 = 0
  loc_1B8D58F:             var_250 = "A"
  loc_1B8D5EE:             Proc_6_140_12DA4E8(MemVar_1F95044, var_14C, var_A6, var_AC, CLng(var_1F4), Me.LblVPrefix.Caption, MemVar_1F95070, var_194.Text)
  loc_1B8D639:           Else
  loc_1B8D647:             Set var_B0 = Me.Txt
  loc_1B8D64D:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_1F0, CStr(var_110), CDbl(0), CSng(var_F0))
  loc_1B8D655:             var_B8 = var_B4.Text
  loc_1B8D668:             Set var_BC = Me.Txt
  loc_1B8D66E:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC, var_9C)
  loc_1B8D676:             MemVar_1F950C8 = var_C0.Tag
  loc_1B8D689:             Set var_144 = Me.Txt
  loc_1B8D68F:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_224)
  loc_1B8D697:             CDate(var_100) = var_148.Text
  loc_1B8D6BC:             Set var_190 = Me.Txt
  loc_1B8D6C2:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194)
  loc_1B8D6F1:             var_18C = var_88.Fields.Item("ACode").Value
  loc_1B8D71C:             Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8D72F:             Set var_21C = Me.Txt
  loc_1B8D735:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(4), var_260)
  loc_1B8D73D:             var_B8 = var_260.Tag
  loc_1B8D750:             Set var_264 = Me.Txt
  loc_1B8D756:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(5), var_268)
  loc_1B8D75E:             var_14C = var_268.Text
  loc_1B8D76E:             Set var_26C = Me.Txt
  loc_1B8D774:             Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(6), var_27C)
  loc_1B8D7A0:             var_16C = Now
  loc_1B8D7AA:             var_278 = 0
  loc_1B8D7B5:             var_274 = 0
  loc_1B8D7C0:             var_270 = 0
  loc_1B8D7C9:             var_25C = "A"
  loc_1B8D7EF:             var_15C = (CVar(var_98 & var_14C & " Dt.:       ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B8D842:             Proc_6_140_12DA4E8(MemVar_1F95044, var_1F0, var_A6, var_AC, CLng(var_224), Me.LblVPrefix.Caption, MemVar_1F95070, var_194.Text)
  loc_1B8D8A0:           End If
  loc_1B8D8A0:         End If
  loc_1B8D8A6:         var_A6 = (var_A6 + 1)
  loc_1B8D8AC:       Else
  loc_1B8D8D2:         Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")), var_A6, CStr(var_18C), CSng(var_F0), CDbl(0))
  loc_1B8D8EC:         If (var_F0 < 0) Then
  loc_1B8D909:           var_B4 = var_88.Fields.Item("CSign")
  loc_1B8D919:           var_130 = "-"
  loc_1B8D92B:           If (var_B4.Value = 0) Then
  loc_1B8D951:             If (((global_124 = "PRR") Or (global_124 = "PRC")) Or (global_124 = "CRN")) Then
  loc_1B8D962:               Set var_B0 = Me.Txt
  loc_1B8D968:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_14C, var_B8)
  loc_1B8D970:               CStr(CVar(var_14C & " Dt.:       ")) = var_B4.Text
  loc_1B8D983:               Set var_BC = Me.Txt
  loc_1B8D989:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC)
  loc_1B8D991:               MemVar_1F950C8 = var_C0.Tag
  loc_1B8D9A4:               Set var_144 = Me.Txt
  loc_1B8D9AA:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_1F4)
  loc_1B8D9B2:               CDate(var_16C) = var_148.Text
  loc_1B8D9D7:               Set var_190 = Me.Txt
  loc_1B8D9DD:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194)
  loc_1B8DA0C:               var_120 = var_88.Fields.Item("ACode").Value
  loc_1B8DA37:               Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8DA4A:               Set var_21C = Me.Txt
  loc_1B8DA50:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(4), var_260)
  loc_1B8DA58:               var_B8 = var_260.Tag
  loc_1B8DA60:               var_110 = Now
  loc_1B8DA6A:               var_25C = 0
  loc_1B8DA75:               var_258 = 0
  loc_1B8DA80:               var_254 = 0
  loc_1B8DA89:               var_250 = "A"
  loc_1B8DAA8:               var_100 = Abs(var_F0)
  loc_1B8DAEC:               Proc_6_140_12DA4E8(MemVar_1F95044, var_14C, var_A6, var_AC, CLng(var_1F4), Me.LblVPrefix.Caption, MemVar_1F95070, var_194.Text)
  loc_1B8DB37:             Else
  loc_1B8DB45:               Set var_B0 = Me.Txt
  loc_1B8DB4B:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_1F0, CStr(var_120), CDbl(0), CSng(var_100))
  loc_1B8DB53:               var_B8 = var_B4.Text
  loc_1B8DB66:               Set var_BC = Me.Txt
  loc_1B8DB6C:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC, var_9C)
  loc_1B8DB74:               MemVar_1F950C8 = var_C0.Tag
  loc_1B8DB87:               Set var_144 = Me.Txt
  loc_1B8DB8D:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_224)
  loc_1B8DB95:               CDate(var_110) = var_148.Text
  loc_1B8DBBA:               Set var_190 = Me.Txt
  loc_1B8DBC0:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194)
  loc_1B8DBEF:               var_1A4 = var_88.Fields.Item("ACode").Value
  loc_1B8DC1A:               Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8DC2D:               Set var_21C = Me.Txt
  loc_1B8DC33:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(4), var_260)
  loc_1B8DC3B:               var_B8 = var_260.Tag
  loc_1B8DC4E:               Set var_264 = Me.Txt
  loc_1B8DC54:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(5), var_268)
  loc_1B8DC5C:               var_14C = var_268.Text
  loc_1B8DC6C:               Set var_26C = Me.Txt
  loc_1B8DC72:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(6), var_27C)
  loc_1B8DC9E:               var_18C = Now
  loc_1B8DCA8:               var_278 = 0
  loc_1B8DCB3:               var_274 = 0
  loc_1B8DCBE:               var_270 = 0
  loc_1B8DCC7:               var_25C = "A"
  loc_1B8DCED:               var_16C = (CVar(var_98 & var_14C & " Dt.:       ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B8DD07:               var_100 = Abs(var_F0)
  loc_1B8DD44:               Proc_6_140_12DA4E8(MemVar_1F95044, var_1F0, var_A6, var_AC, CLng(var_224), Me.LblVPrefix.Caption, MemVar_1F95070, var_194.Text)
  loc_1B8DDA2:             End If
  loc_1B8DDA5:           Else
  loc_1B8DDC8:             If (((global_124 = "PRR") Or (global_124 = "PRC")) Or (global_124 = "CRN")) Then
  loc_1B8DDD9:               Set var_B0 = Me.Txt
  loc_1B8DDDF:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_14C, CStr(var_1A4), CSng(var_100), CDbl(0))
  loc_1B8DDE7:               var_B8 = var_B4.Text
  loc_1B8DDFA:               Set var_BC = Me.Txt
  loc_1B8DE00:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC, CStr(var_16C))
  loc_1B8DE08:               MemVar_1F950C8 = var_C0.Tag
  loc_1B8DE1B:               Set var_144 = Me.Txt
  loc_1B8DE21:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_1F4)
  loc_1B8DE29:               CDate(var_18C) = var_148.Text
  loc_1B8DE4E:               Set var_190 = Me.Txt
  loc_1B8DE54:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194)
  loc_1B8DE83:               var_120 = var_88.Fields.Item("ACode").Value
  loc_1B8DEAE:               Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8DEC1:               Set var_21C = Me.Txt
  loc_1B8DEC7:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(4), var_260)
  loc_1B8DECF:               var_B8 = var_260.Tag
  loc_1B8DED7:               var_110 = Now
  loc_1B8DEE1:               var_25C = 0
  loc_1B8DEEC:               var_258 = 0
  loc_1B8DEF7:               var_254 = 0
  loc_1B8DF00:               var_250 = "A"
  loc_1B8DF26:               var_100 = Abs(var_F0)
  loc_1B8DF63:               Proc_6_140_12DA4E8(MemVar_1F95044, var_14C, var_A6, var_AC, CLng(var_1F4), Me.LblVPrefix.Caption, MemVar_1F95070, var_194.Text)
  loc_1B8DFAE:             Else
  loc_1B8DFBC:               Set var_B0 = Me.Txt
  loc_1B8DFC2:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_1F0, CStr(var_120), CSng(var_100), CDbl(0))
  loc_1B8DFCA:               var_B8 = var_B4.Text
  loc_1B8DFDD:               Set var_BC = Me.Txt
  loc_1B8DFE3:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC, var_9C)
  loc_1B8DFEB:               MemVar_1F950C8 = var_C0.Tag
  loc_1B8DFFE:               Set var_144 = Me.Txt
  loc_1B8E004:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_224)
  loc_1B8E00C:               CDate(var_110) = var_148.Text
  loc_1B8E031:               Set var_190 = Me.Txt
  loc_1B8E037:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194)
  loc_1B8E066:               var_1A4 = var_88.Fields.Item("ACode").Value
  loc_1B8E08A:               var_D0 = CVar(var_88.Fields.Item("RevAmt")) 'Address
  loc_1B8E091:               Proc_6_39_E7D3A0(var_F0, var_D0)
  loc_1B8E0A4:               Set var_21C = Me.Txt
  loc_1B8E0AA:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(4), var_260)
  loc_1B8E0B2:               var_B8 = var_260.Tag
  loc_1B8E0C5:               Set var_264 = Me.Txt
  loc_1B8E0CB:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(5), var_268)
  loc_1B8E0E3:               Set var_26C = Me.Txt
  loc_1B8E0E9:               Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(6), var_27C)
  loc_1B8E115:               var_18C = Now
  loc_1B8E11F:               var_278 = 0
  loc_1B8E12A:               var_274 = 0
  loc_1B8E135:               var_270 = 0
  loc_1B8E13E:               var_25C = "A"
  loc_1B8E164:               var_16C = (CVar(var_98 & var_268.Text & " Dt.:         ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B8E177:               var_100 = Abs(var_F0)
  loc_1B8E1BB:               Proc_6_140_12DA4E8(MemVar_1F95044, var_1F0, var_A6, var_AC, CLng(var_224), Me.LblVPrefix.Caption, MemVar_1F95070, var_194.Text)
  loc_1B8E219:             End If
  loc_1B8E219:           End If
  loc_1B8E21F:           var_A6 = (var_A6 + 1)
  loc_1B8E222:         End If
  loc_1B8E222:       End If
  loc_1B8E222:     End If
  loc_1B8E225:     var_88.MoveNext
  loc_1B8E22A:     GoTo loc_1B8A9C3
  loc_1B8E22D:   End If
  loc_1B8E22D: End If
  loc_1B8E241: var_B8 = "SELECT Sum(PostVal) as Amount, AcCode as AccName " & " FROM Purch2 Where DocID='"
  loc_1B8E252: Set var_B0 = Me.Txt
  loc_1B8E258: Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_AC, var_B8, var_D0, -1, var_BC)
  loc_1B8E260: var_A6 = var_B4.Text
  loc_1B8E269: var_14C = CStr(var_1A4) & var_AC
  loc_1B8E279: unk_5986AD.Execute var_14C & "' Group By AcCode ", CDbl(0), CSng(var_100)
  loc_1B8E284: Set var_88 = var_BC
  loc_1B8E2B2: If (var_88.RecordCount > 0) Then
  loc_1B8E2B5:   ' Referenced from: 1B8EC27
  loc_1B8E2C4:   If Not(var_88.EOF) Then
  loc_1B8E2DE:     var_B4 = var_88.Fields.Item("Amount")
  loc_1B8E2ED:     Proc_6_39_E7D3A0(var_F0, CVar(var_B4), var_B8)
  loc_1B8E307:     If (var_F0 > 0) Then
  loc_1B8E32D:       If (((global_124 = "PRR") Or (global_124 = "PRC")) Or (global_124 = "CRN")) Then
  loc_1B8E33E:         Set var_B0 = Me.Txt
  loc_1B8E344:         Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_14C)
  loc_1B8E34C:         CStr(var_16C) = var_B4.Text
  loc_1B8E35F:         Set var_BC = Me.Txt
  loc_1B8E365:         Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0)
  loc_1B8E36D:         var_AC = var_C0.Tag
  loc_1B8E380:         Set var_144 = Me.Txt
  loc_1B8E386:         Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148)
  loc_1B8E38E:         var_1F4 = var_148.Text
  loc_1B8E3B3:         Set var_190 = Me.Txt
  loc_1B8E3B9:         Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194)
  loc_1B8E3E8:         var_110 = var_88.Fields.Item("ACCNAME").Value
  loc_1B8E413:         Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("Amount")))
  loc_1B8E426:         Set var_21C = Me.Txt
  loc_1B8E42C:         Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(4), var_260)
  loc_1B8E434:         var_B8 = var_260.Tag
  loc_1B8E43C:         var_100 = Now
  loc_1B8E446:         var_25C = 0
  loc_1B8E451:         var_258 = 0
  loc_1B8E45C:         var_254 = 0
  loc_1B8E465:         var_250 = "A"
  loc_1B8E4C4:         Proc_6_140_12DA4E8(MemVar_1F95044, var_14C, var_A6, var_AC, CLng(var_1F4), Me.LblVPrefix.Caption, MemVar_1F95070, var_194.Text)
  loc_1B8E50F:       Else
  loc_1B8E51D:         Set var_B0 = Me.Txt
  loc_1B8E523:         Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_1F0, CStr(var_110), CDbl(0), CSng(var_F0))
  loc_1B8E52B:         var_B8 = var_B4.Text
  loc_1B8E53E:         Set var_BC = Me.Txt
  loc_1B8E544:         Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC, var_9C)
  loc_1B8E54C:         MemVar_1F950C8 = var_C0.Tag
  loc_1B8E55F:         Set var_144 = Me.Txt
  loc_1B8E565:         Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_224)
  loc_1B8E56D:         CDate(var_100) = var_148.Text
  loc_1B8E592:         Set var_190 = Me.Txt
  loc_1B8E598:         Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194)
  loc_1B8E5C7:         var_18C = var_88.Fields.Item("ACCNAME").Value
  loc_1B8E5F2:         Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("Amount")))
  loc_1B8E605:         Set var_21C = Me.Txt
  loc_1B8E60B:         Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(4), var_260)
  loc_1B8E613:         var_B8 = var_260.Tag
  loc_1B8E626:         Set var_264 = Me.Txt
  loc_1B8E62C:         Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(5), var_268)
  loc_1B8E634:         var_14C = var_268.Text
  loc_1B8E644:         Set var_26C = Me.Txt
  loc_1B8E64A:         Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(6), var_27C)
  loc_1B8E676:         var_16C = Now
  loc_1B8E680:         var_278 = 0
  loc_1B8E68B:         var_274 = 0
  loc_1B8E696:         var_270 = 0
  loc_1B8E69F:         var_25C = "A"
  loc_1B8E6B8:         var_1EC = var_98 & var_14C
  loc_1B8E6C5:         var_15C = (CVar(var_1EC & " Dt.:   ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B8E718:         Proc_6_140_12DA4E8(MemVar_1F95044, var_1F0, var_A6, var_AC, CLng(var_224), Me.LblVPrefix.Caption, MemVar_1F95070, var_194.Text)
  loc_1B8E776:       End If
  loc_1B8E77C:       var_A6 = (var_A6 + 1)
  loc_1B8E782:     Else
  loc_1B8E799:       var_B4 = var_88.Fields.Item("Amount")
  loc_1B8E7A8:       Proc_6_39_E7D3A0(var_F0, CVar(var_B4), var_A6, CStr(var_18C), CSng(var_F0), CDbl(0))
  loc_1B8E7C2:       If (var_F0 < 0) Then
  loc_1B8E7E8:         If (((global_124 = "PRR") Or (global_124 = "PRC")) Or (global_124 = "CRN")) Then
  loc_1B8E7F9:           Set var_B0 = Me.Txt
  loc_1B8E7FF:           Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_14C, var_B8)
  loc_1B8E807:           CStr(CVar(var_98 & var_268.Text & " Dt.:         ")) = var_B4.Text
  loc_1B8E81A:           Set var_BC = Me.Txt
  loc_1B8E820:           Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC)
  loc_1B8E828:           MemVar_1F950C8 = var_C0.Tag
  loc_1B8E83B:           Set var_144 = Me.Txt
  loc_1B8E841:           Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_1F4)
  loc_1B8E849:           CDate(var_16C) = var_148.Text
  loc_1B8E85B:           var_220 = Me.LblVPrefix.Caption
  loc_1B8E86E:           Set var_190 = Me.Txt
  loc_1B8E874:           Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194)
  loc_1B8E8A3:           var_120 = var_88.Fields.Item("ACCNAME").Value
  loc_1B8E8CE:           Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("Amount")))
  loc_1B8E8E1:           Set var_21C = Me.Txt
  loc_1B8E8E7:           Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(4), var_260)
  loc_1B8E8EF:           var_B8 = var_260.Tag
  loc_1B8E8F7:           var_110 = Now
  loc_1B8E901:           var_25C = 0
  loc_1B8E90C:           var_258 = 0
  loc_1B8E917:           var_254 = 0
  loc_1B8E920:           var_250 = "A"
  loc_1B8E946:           var_100 = Abs(var_F0)
  loc_1B8E983:           Proc_6_140_12DA4E8(MemVar_1F95044, var_14C, var_A6, var_AC, CLng(var_1F4), var_220, MemVar_1F95070, var_194.Text)
  loc_1B8E9CE:         Else
  loc_1B8E9DC:           Set var_B0 = Me.Txt
  loc_1B8E9E2:           Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(0), var_B4, var_1EC, CStr(var_120), CSng(var_100), CDbl(0))
  loc_1B8E9EA:           var_B8 = var_B4.Text
  loc_1B8E9FD:           Set var_BC = Me.Txt
  loc_1B8EA03:           Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(1), var_C0, var_AC, var_9C)
  loc_1B8EA0B:           MemVar_1F950C8 = var_C0.Tag
  loc_1B8EA1E:           Set var_144 = Me.Txt
  loc_1B8EA24:           Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(2), var_148, var_220)
  loc_1B8EA2C:           CDate(var_110) = var_148.Text
  loc_1B8EA51:           Set var_190 = Me.Txt
  loc_1B8EA57:           Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(3), var_194)
  loc_1B8EA86:           var_1A4 = var_88.Fields.Item("ACCNAME").Value
  loc_1B8EAB1:           Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("Amount")))
  loc_1B8EAC4:           Set var_21C = Me.Txt
  loc_1B8EACA:           Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(5), var_260)
  loc_1B8EAE2:           Set var_264 = Me.Txt
  loc_1B8EAE8:           Call 0.Method_Proc_338_111_1B8EC3C0 (CInt(6), var_268)
  loc_1B8EB14:           var_18C = Now
  loc_1B8EB1E:           var_274 = 0
  loc_1B8EB29:           var_270 = 0
  loc_1B8EB34:           var_25C = 0
  loc_1B8EB3D:           var_258 = "A"
  loc_1B8EB63:           var_16C = (CVar(var_98 & var_260.Text & " Dt.:     ") + Format(CVar(var_268), "dd/mm/yy"))
  loc_1B8EB6F:           var_250 = vbNullString
  loc_1B8EB78:           var_100 = Abs(var_F0)
  loc_1B8EBBC:           Proc_6_140_12DA4E8(MemVar_1F95044, var_1EC, var_A6, var_AC, CLng(var_220), Me.LblVPrefix.Caption, MemVar_1F95070, var_194.Text)
  loc_1B8EC16:         End If
  loc_1B8EC1C:         var_A6 = (var_A6 + 1)
  loc_1B8EC1F:       End If
  loc_1B8EC1F:     End If
  loc_1B8EC22:     var_88.MoveNext
  loc_1B8EC27:     GoTo loc_1B8E2B5
  loc_1B8EC2A:   End If
  loc_1B8EC2A: End If
  loc_1B8EC2F: Set var_8C = Nothing
  loc_1B8EC37: Set var_88 = Nothing
  loc_1B8EC3A: Exit Sub
End Sub
